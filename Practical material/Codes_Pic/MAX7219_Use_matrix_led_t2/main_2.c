/*
******************************************************************************
* Module     : MAIN2.C -> use Library MaxMatrix.c
* Author     : Daniel Binon (SEMI)
* Date		 : 12-2018
* Description: Demonstration MAX7219 LED Display Driver Routines
*
*  The communicates with the MAX7219 using three signals: DATA, CLK, and LOAD using Pin (no SPI).
*  PIN (standart) : DATA (SDO) = RC7, CLK (SCL) = RB1, LOAD (CS) = RD0, VCC (+5V), GND
*
******************************************************************************/
#include <18F4550.h>

#fuses HS,NOWDT,NOPROTECT,NOLVP,NODEBUG,USBDIV,VREGEN
#use delay(clock=24M)
#use rs232(baud=115200,parity=N,xmit=PIN_C6,rcv=PIN_C7,bits=8,stream=RS232)
/*****************************************************************************/
#include "MaxMatrix.c"						// Library for manage the MAC7219 and LED matrix
#include "..\include\LCD420_S3.c"			// Driver gestion écran LCD Simius V3
/*****************************************************************************/
#DEFINE SDO PIN_D2							// Using Pin for control the Max7219
#DEFINE CS PIN_D0
#DEFINE CLK PIN_D1
#DEFINE nbrDev 2							// numbre of device module
/*****************************************************************************/
#DEFINE BUFFER_SIZE 32						// Buffer maxi de lecture RS232
#DEFINE bkbhit (next_in!=next_out)	
#DEFINE DATA_HEAD '#'						// Attention code for Serial
/*****************************************************************************/
// Table of font for ascii carateres
const unsigned char CH[95][7] = {
3, 8, 0B00000000, 0B00000000, 0B00000000, 0B00000000, 0B00000000, // space
1, 8, 0B01011111, 0B00000000, 0B00000000, 0B00000000, 0B00000000, // !
3, 8, 0B00000011, 0B00000000, 0B00000011, 0B00000000, 0B00000000, // "
5, 8, 0B00010100, 0B00111110, 0B00010100, 0B00111110, 0B00010100, // #
4, 8, 0B00100100, 0B01101010, 0B00101011, 0B00010010, 0B00000000, // $
5, 8, 0B01100011, 0B00010011, 0B00001000, 0B01100100, 0B01100011, // %
5, 8, 0B00110110, 0B01001001, 0B01010110, 0B00100000, 0B01010000, // &
1, 8, 0B00000011, 0B00000000, 0B00000000, 0B00000000, 0B00000000, // '
3, 8, 0B00011100, 0B00100010, 0B01000001, 0B00000000, 0B00000000, // (
3, 8, 0B01000001, 0B00100010, 0B00011100, 0B00000000, 0B00000000, // )
5, 8, 0B00101000, 0B00011000, 0B00001110, 0B00011000, 0B00101000, // *
5, 8, 0B00001000, 0B00001000, 0B00111110, 0B00001000, 0B00001000, // +
2, 8, 0B10110000, 0B01110000, 0B00000000, 0B00000000, 0B00000000, // ,
4, 8, 0B00001000, 0B00001000, 0B00001000, 0B00001000, 0B00000000, // -
2, 8, 0B01100000, 0B01100000, 0B00000000, 0B00000000, 0B00000000, // .
4, 8, 0B01100000, 0B00011000, 0B00000110, 0B00000001, 0B00000000, // /
4, 8, 0B00111110, 0B01000001, 0B01000001, 0B00111110, 0B00000000, // 0
3, 8, 0B01000010, 0B01111111, 0B01000000, 0B00000000, 0B00000000, // 1
4, 8, 0B01100010, 0B01010001, 0B01001001, 0B01000110, 0B00000000, // 2
4, 8, 0B00100010, 0B01000001, 0B01001001, 0B00110110, 0B00000000, // 3
4, 8, 0B00011000, 0B00010100, 0B00010010, 0B01111111, 0B00000000, // 4
4, 8, 0B00100111, 0B01000101, 0B01000101, 0B00111001, 0B00000000, // 5
4, 8, 0B00111110, 0B01001001, 0B01001001, 0B00110000, 0B00000000, // 6
4, 8, 0B01100001, 0B00010001, 0B00001001, 0B00000111, 0B00000000, // 7
4, 8, 0B00110110, 0B01001001, 0B01001001, 0B00110110, 0B00000000, // 8
4, 8, 0B00000110, 0B01001001, 0B01001001, 0B00111110, 0B00000000, // 9
2, 8, 0B01010000, 0B00000000, 0B00000000, 0B00000000, 0B00000000, // :
2, 8, 0B10000000, 0B01010000, 0B00000000, 0B00000000, 0B00000000, // ;
3, 8, 0B00010000, 0B00101000, 0B01000100, 0B00000000, 0B00000000, // <
3, 8, 0B00010100, 0B00010100, 0B00010100, 0B00000000, 0B00000000, // =
3, 8, 0B01000100, 0B00101000, 0B00010000, 0B00000000, 0B00000000, // >
4, 8, 0B00000010, 0B01011001, 0B00001001, 0B00000110, 0B00000000, // ?
5, 8, 0B00111110, 0B01001001, 0B01010101, 0B01011101, 0B00001110, // @
4, 8, 0B01111110, 0B00010001, 0B00010001, 0B01111110, 0B00000000, // A
4, 8, 0B01111111, 0B01001001, 0B01001001, 0B00110110, 0B00000000, // B
4, 8, 0B00111110, 0B01000001, 0B01000001, 0B00100010, 0B00000000, // C
4, 8, 0B01111111, 0B01000001, 0B01000001, 0B00111110, 0B00000000, // D
4, 8, 0B01111111, 0B01001001, 0B01001001, 0B01000001, 0B00000000, // E
4, 8, 0B01111111, 0B00001001, 0B00001001, 0B00000001, 0B00000000, // F
4, 8, 0B00111110, 0B01000001, 0B01001001, 0B01111010, 0B00000000, // G
4, 8, 0B01111111, 0B00001000, 0B00001000, 0B01111111, 0B00000000, // H
3, 8, 0B01000001, 0B01111111, 0B01000001, 0B00000000, 0B00000000, // I
4, 8, 0B00110000, 0B01000000, 0B01000001, 0B00111111, 0B00000000, // J
4, 8, 0B01111111, 0B00001000, 0B00010100, 0B01100011, 0B00000000, // K
4, 8, 0B01111111, 0B01000000, 0B01000000, 0B01000000, 0B00000000, // L
5, 8, 0B01111111, 0B00000010, 0B00001100, 0B00000010, 0B01111111, // M
5, 8, 0B01111111, 0B00000100, 0B00001000, 0B00010000, 0B01111111, // N
4, 8, 0B00111110, 0B01000001, 0B01000001, 0B00111110, 0B00000000, // O
4, 8, 0B01111111, 0B00001001, 0B00001001, 0B00000110, 0B00000000, // P
4, 8, 0B00111110, 0B01000001, 0B01000001, 0B10111110, 0B00000000, // Q
4, 8, 0B01111111, 0B00001001, 0B00001001, 0B01110110, 0B00000000, // R
4, 8, 0B01000110, 0B01001001, 0B01001001, 0B00110010, 0B00000000, // S
5, 8, 0B00000001, 0B00000001, 0B01111111, 0B00000001, 0B00000001, // T
4, 8, 0B00111111, 0B01000000, 0B01000000, 0B00111111, 0B00000000, // U
5, 8, 0B00001111, 0B00110000, 0B01000000, 0B00110000, 0B00001111, // V
5, 8, 0B00111111, 0B01000000, 0B00111000, 0B01000000, 0B00111111, // W
5, 8, 0B01100011, 0B00010100, 0B00001000, 0B00010100, 0B01100011, // X
5, 8, 0B00000111, 0B00001000, 0B01110000, 0B00001000, 0B00000111, // Y
4, 8, 0B01100001, 0B01010001, 0B01001001, 0B01000111, 0B00000000, // Z
2, 8, 0B01111111, 0B01000001, 0B00000000, 0B00000000, 0B00000000, // [
4, 8, 0B00000001, 0B00000110, 0B00011000, 0B01100000, 0B00000000, // \ backslash
2, 8, 0B01000001, 0B01111111, 0B00000000, 0B00000000, 0B00000000, // ]
3, 8, 0B00000010, 0B00000001, 0B00000010, 0B00000000, 0B00000000, // hat
4, 8, 0B01000000, 0B01000000, 0B01000000, 0B01000000, 0B00000000, // _
2, 8, 0B00000001, 0B00000010, 0B00000000, 0B00000000, 0B00000000, // `
4, 8, 0B00100000, 0B01010100, 0B01010100, 0B01111000, 0B00000000, // a
4, 8, 0B01111111, 0B01000100, 0B01000100, 0B00111000, 0B00000000, // b
4, 8, 0B00111000, 0B01000100, 0B01000100, 0B00101000, 0B00000000, // c
4, 8, 0B00111000, 0B01000100, 0B01000100, 0B01111111, 0B00000000, // d
4, 8, 0B00111000, 0B01010100, 0B01010100, 0B00011000, 0B00000000, // e
3, 8, 0B00000100, 0B01111110, 0B00000101, 0B00000000, 0B00000000, // f
4, 8, 0B10011000, 0B10100100, 0B10100100, 0B01111000, 0B00000000, // g
4, 8, 0B01111111, 0B00000100, 0B00000100, 0B01111000, 0B00000000, // h
3, 8, 0B01000100, 0B01111101, 0B01000000, 0B00000000, 0B00000000, // i
4, 8, 0B01000000, 0B10000000, 0B10000100, 0B01111101, 0B00000000, // j
4, 8, 0B01111111, 0B00010000, 0B00101000, 0B01000100, 0B00000000, // k
3, 8, 0B01000001, 0B01111111, 0B01000000, 0B00000000, 0B00000000, // l
5, 8, 0B01111100, 0B00000100, 0B01111100, 0B00000100, 0B01111000, // m
4, 8, 0B01111100, 0B00000100, 0B00000100, 0B01111000, 0B00000000, // n
4, 8, 0B00111000, 0B01000100, 0B01000100, 0B00111000, 0B00000000, // o
4, 8, 0B11111100, 0B00100100, 0B00100100, 0B00011000, 0B00000000, // p
4, 8, 0B00011000, 0B00100100, 0B00100100, 0B11111100, 0B00000000, // q
4, 8, 0B01111100, 0B00001000, 0B00000100, 0B00000100, 0B00000000, // r
4, 8, 0B01001000, 0B01010100, 0B01010100, 0B00100100, 0B00000000, // s
3, 8, 0B00000100, 0B00111111, 0B01000100, 0B00000000, 0B00000000, // t
4, 8, 0B00111100, 0B01000000, 0B01000000, 0B01111100, 0B00000000, // u
5, 8, 0B00011100, 0B00100000, 0B01000000, 0B00100000, 0B00011100, // v
5, 8, 0B00111100, 0B01000000, 0B00111100, 0B01000000, 0B00111100, // w
5, 8, 0B01000100, 0B00101000, 0B00010000, 0B00101000, 0B01000100, // x
4, 8, 0B10011100, 0B10100000, 0B10100000, 0B01111100, 0B00000000, // y
3, 8, 0B01100100, 0B01010100, 0B01001100, 0B00000000, 0B00000000, // z
3, 8, 0B00001000, 0B00110110, 0B01000001, 0B00000000, 0B00000000, // {
1, 8, 0B01111111, 0B00000000, 0B00000000, 0B00000000, 0B00000000, // |
3, 8, 0B01000001, 0B00110110, 0B00001000, 0B00000000, 0B00000000, // }
4, 8, 0B00001000, 0B00000100, 0B00001000, 0B00000100, 0B00000000  // ~
};
/*****************************************************************************/
byte buffer[10];

// Strings for test 
char string1[] = " A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ";
char string2[] = " a b c d e f g h i j k l m n o p q r s t u v w x y z ";
char string3[] = " 1 2 3 4 5 6 7 8 9 0 - = ";
char string4[] = " ! @ # $ % & * ( ) _ + ";
char string5[] = " ' , . ; ~ ] [ | < > : ^ } ` { / ?        ";
char string6[] = " * Service d'Electronique & Microelectronique *      ";
/*****************************************************************************/
BYTE bufferSer[BUFFER_SIZE];
BYTE next_in = 0;
BYTE next_out = 0;
Byte Intensity = 15;							// the default intensity
Byte Speed = 100;								// the default Speed
/*****************************************************************************/
#int_rda										// Serial interruption (receive)
void serial_isr() {
   int t;

   bufferSer[next_in]=getc();						
   t=next_in;
   next_in=(next_in+1) % BUFFER_SIZE;
   if(next_in==next_out)
     next_in=t;           						
}
/*****************************************************************************/
BYTE bgetc() {									// Read buffer serial
   BYTE c;

   while(!bkbhit) ;								
   c=bufferSer[next_out];						
   next_out=(next_out+1) % BUFFER_SIZE;			
   return(c);
}
/*****************************************************************************/
void init(){									// initialisation routine

	lcd_init();
	LCD_PUTC("\f* MATRICE LED *");
	LCD_PUTC("\n*  & MAX7219  *");
    Delay_ms(100);
	MaxMatrix(SDO,CS,CLK,nbrDev);				// Pin definition for module MAX7219
	initMax();									// Initialisation modules
	setIntensity(intensity);					// Set the intensity light of LED matrix
	enable_interrupts(int_rda);
	enable_interrupts(GLOBAL);
}
/*****************************************************************************/
void printCharWithShift(char c, int shift_speed) {	// Print char with shift left caractere

	if (c < 32) return;
  	c -= 32;
  	memcpy(buffer, CH[c], 7);
  	writeSprite(32, 0, buffer);
  	setColumn(32 + buffer[0], 0);
  	for (int i=0; i<buffer[0]+1; i++) 
  	{
    	delay_ms(shift_speed);
    	shiftLeft(false, false);
  	}
}
/*****************************************************************************/
void printStringWithShift(char *s, int shift_speed){	// Print String with shift left caractere

	while (*s != 0){
    	printCharWithShift(*s, shift_speed);
    	s++;
  	}
}
/*****************************************************************************/
void printString(char* s) {							// Print String to the module MAX7219
	int col = 0;

  	while (*s != 0)
  	{
    	if (*s < 32) continue;
    	char c = *s - 32;
    	memcpy(buffer, CH + 7*c, 7);
    	writeSprite(col, 0, buffer);
    	setColumn(col + buffer[0], 0);
    	col += buffer[0] + 1;
    	s++;
  	}
}
/*****************************************************************************/
void selfTest(){									// Run the Selftest in the LED Matrix

	clear();										// Clear the Led Matrix
	Putc(10);Putc(13);
	Printf("Print SelfTest...");
	Putc(10);Putc(10);Putc(13);
	printStringWithShift(string1, 20);				// Print the first message....
	printStringWithShift(string2, 30);
	printStringWithShift(string3, 40);
	printStringWithShift(string4, 30);
	printStringWithShift(string5, 20);
}
/*****************************************************************************/
void DefaultTexte(){								// Run the Default text in the LED Matrix

	clear();										// Clear the Led Matrix
	Putc(10);Putc(13);
	Printf("Print Default Text (SEMI)...");
	Putc(10);Putc(10);Putc(13);
	printStringWithShift(string6, Speed);			// Print the default message....
}
/*****************************************************************************/
// This routine is the same as that of Arduino

signed int16 map(signed int16 x, signed int16 in_min, signed int16 in_max, signed int16 out_min, signed int16 out_max)
{
  return (((x - in_min) * (out_max - out_min)) / (in_max - in_min)) + out_min;
}
/*****************************************************************************/
void Set_Intensity(byte intens){		// Setting intensity for the MAX7219 (0 to 9)
	int value;

	if (intens>9){
		Putc(10);Putc(13);
		Printf("Wrong Intensity Value !!!");
		Putc(10);Putc(10);Putc(13);
		return;
	}
	value=map(intens,0,9,1,31);						// the real value is min = 1 & max = 31
	Putc(10);Putc(13);
	Printf("Intensity -> %u (%u)",value,intens);
	Putc(10);Putc(10);Putc(13);
	setIntensity(value);
}
/*****************************************************************************/
void Set_Speed(byte spd){				// Setting the velocity displament shift text (0 to 9)

	if (spd>9){
		Putc(10);Putc(13);
		Printf("Wrong Speed Value !!!");
		Putc(10);Putc(10);Putc(13);
		return;
	}
	speed=map(spd,0,9,100,1);						// the real value is min = 100 & max = 1
	Putc(10);Putc(13);
	Printf("Speed -> %u (%u)",speed,spd);
	Putc(10);Putc(10);Putc(13);
}
/*****************************************************************************/
void Enter_text(){						// Routine for enter the text manually (text user)
	byte i=0;
	boolean end=false;
	byte bufferTxt[]="                                                       ";

	clear();										// Clear the Led Matrix
	Putc(10);Putc(13);
	Printf("Enter text and press 'return' in the end (max. 45 caracteres) ");
	Putc(10);Putc(10);Putc(13);
	while (!end){
		while (bkbhit){								// Read the text by the terminal
			delay_ms(5);
			bufferTxt[i]=bgetc();
			if ((i>45)||(bufferTxt[i]==13)){		// end of text ('Enter' pressed)
				Putc(10);
				end=true;
				break;
			}
			putc(bufferTxt[i]);
			i++;
		}
	}
	for(byte x=0;x<7;x++) {							// Juste add some blank (just to look pretty)
		bufferTxt[i]=' ';
		i++;
	}
	bufferTxt[i+1]='\0';							// end of string
	printStringWithShift(bufferTxt, Speed);
	Putc(13);Putc(10);
}
/*****************************************************************************/
void Help(){							// Print the help menu to the terminal

	Putc(13);Putc(10);Putc(10);
	Printf("******************************************");Putc(13);Putc(10);
	Printf("* HELP For Programme  Max7219 Led Matrix *");Putc(13);Putc(10);
	Printf("******************************************");Putc(13);Putc(10);
	Printf("* #I = Set Intensity (0 - 9)             *");Putc(13);Putc(10);
	Printf("* #S = Set Speed (0 - 9)                 *");Putc(13);Putc(10);
	Printf("* #M = Enter Text (Max 45 caracteres)    *");Putc(13);Putc(10);
	Printf("* #T = Run SelfTest                      *");Putc(13);Putc(10);
	Printf("* #D = Run Default Text (SEMI)           *");Putc(13);Putc(10);
	Printf("* #H = This Help Page                    *");Putc(13);Putc(10);
	Printf("******************************************");Putc(13);Putc(10);
	Putc(10);Putc(10);
}
/*****************************************************************************/
void lect_cmds(){							// Read the commands coming to serial port (terminal)
	byte data[3];

	while (bkbhit) {
		data[0]=bgetc();
		if (data[0] == DATA_HEAD) {
			Putc(data[0]);
			data[1]=bgetc();
			Putc(data[1]);
			switch (data[1]) {
				
				case 'I':											// Intensity Setting
					data[2]=bgetc();
					Putc(data[2]);putc(10);Putc(13);
					Set_Intensity(data[2]-48);
					break;

				case 'S':											// Speed Setting
					data[2]=bgetc();
					Putc(data[2]);putc(10);Putc(13);
					Set_Speed(data[2]-48);
					break;

				case 'M':											// User Message
					Enter_text();
					break;

				case 'T':											// Selft Test
					SelfTest();
					break;

				case 'D':											// Default Message
					DefaultTexte();
					break;

				case 'H':											// Help Menu
					Help();
					break;

				default :
					while (bkbhit) {
						bgetc();									// emptying buffer isn't OK
					}
					break;
			}
		}
	}
}
/*****************************************************************************/
// Here we have the main function.
void main()
{
	init();
	Help();
	while(true) {
		lect_cmds();
	}
}