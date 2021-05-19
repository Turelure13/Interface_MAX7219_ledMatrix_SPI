/*
******************************************************************************
* Module     : MAX7219.C
* Author     : Daniel Binon (SEMI)
* Date		 : 06-2018
* Description: Demonstration MAX7219 LED Display Driver Routines
*
*  The communicates with the MAX7219 using three signals: DATA, CLK, and LOAD using SPI.
*  SPI : DATA (SDO) = RC7, CLK (SCL) = RB1, LOAD (CS) = RD0
*
******************************************************************************/
#include <18F4550.h>

#fuses HS,NOWDT,NOPROTECT,NOLVP,NODEBUG,USBDIV,VREGEN
#use delay(clock=24M)
#use fast_io(D)
#USE SPI (MASTER, SPI1, BAUD=1000000, MODE=0, BITS=16, LOAD_ACTIVE=1, STREAM=SPI_1, MSB_FIRST,IDLE=1)

#include "max7219.c"
#include "..\include\LCD420_S3.c"			// Driver gestion écran LCD Simius V3

//#define Chip_Select PIN_D0
//#define Chip_Select_Direction tris_d(0)

byte VR[8];                           	//Video RAM used to draw the screen before sending to the 8x8 matrix x 4 max
int delaytime = 50;

int x=5 ,y=0;                         	// starting position of ball one
int xdir=1, ydir=1;                 	//the director ball one will go

int x1=0 ,y1=3;                    		//starting poistion of ball two
int x1dir=1, y1dir=-1;          		//its starting position


//clear the "screen" - its the video ram thats getting cleared
void grx_cls()
{
   byte x;
   for (x=0;x<8; x++)
  	VR[x] = 0;
}

//send it to the hardware
void grx_display()
{
   byte Addr, Row=255;
   for (Addr = 0; Addr < 8; Addr++)
   	send7219(Addr, VR[row++]);
}

//light up that LED at x,y position
void grx_setxy(byte x,y)
{
   byte temp;
   temp = 1;
   temp <<=x;
   VR[y]|=temp;        // read row X at column Y
}

//turn off that LED at x,y position
void grx_unsetxy(byte x,y)
{
    byte temp;
    temp = 1;
    temp <<=x;
    temp = 255 - temp;
    VR[y]&=temp;     // read row X at column Y
}

//Write CHAR to the screen
void grx_WriteChar(byte myChar)
{
    byte Column, Start_Byte;
    Start_Byte = (myChar - 65) * 6; // 65 represents the letter "A" in ASCII code.

    // We are using only columns from 2 through 7 FOR displaying the character.
    for (Column = 7; Column > 1; Column--)
 		VR[Column]=Alphabet[Start_Byte++];
}

//scroll left the contents in the video ram
void grx_scroll(byte x,clip,dir)
{
    byte scroll,edge;
    edge=VR[7];                 //save last row

   for (scroll=7;scroll>0;scroll--)
  		VR[scroll]=VR[scroll-1];
   VR[0]=edge;                 //put in the first row
}

//anitmate the bouncing balls.
void bouncing()
{
    grx_setxy(x,y);      			//draw the ball one
    grx_setxy(x1,y1);  				//draw ball two
    grx_display();        			//display it
    Delay_ms(5) ;
    grx_unsetxy(x,y);   			//turn them off
    grx_unsetxy(x1,y1);
    x= x + xdir;     		      	//new position
    y =y + ydir;
    if (x>=7||x<=0) xdir=-xdir;    	//check if they hit the edges if so change direction.
    if (y>=7||y<=0) ydir=-ydir;
    x1= x1 + x1dir;     			//same for ball two
    y1 =y1 + y1dir;
    if (x1>=7||x1<=0) x1dir=-x1dir;
   	if (y1>=7||y1<=0) y1dir=-y1dir;
}

//demo scrolling left
void demo_1(){

    grx_WriteChar('Y');
    grx_display(); //display it
	delay_ms(500);
	for (byte x=0;x<30;x++)
	{
	    grx_scroll(1,0,0);
    	delay_ms(5);
    	grx_display(); //display it
		Delay_ms(50);
	}
    grx_cls(); // clear RAM
    grx_display(); //display it
}

//demo anitmate the bouncing balls.
void demo_2()
{
	for (byte x=0;x<50;x++)
	{
   		bouncing();
		Delay_ms(30);
	}
}

void writeSimiusOnMatrix() {
  /* here is the data for the characters */
  byte a[5]={0B01111110,
		     0B10001000,
			 0B10001000,
			 0B10001000,
			 0B01111110};
  byte r[5]={0B00111110,
			 0B00010000,
			 0B00100000,
			 0B00100000,
			 0B00010000};
  byte d[5]={0B00011100,
		     0B00100010,
			 0B00100010,
			 0B00010010,
		 	 0B11111110};
  byte u[5]={0B00111100,0B00000010,0B00000010,0B00000100,0B00111110};
  byte i[5]={0B00000000,0B00100010,0B10111110,0B00000010,0B00000000};
  byte n[5]={0B00111110,0B00010000,0B00100000,0B00100000,0B00011110};
  byte o[5]={0B00011100,0B00100010,0B00100010,0B00100010,0B00011100};
  int16 deltime = 2000;

  /* now display them one by one with a small delay */
  setRow(0,0,a[4]);
  setRow(0,1,a[3]);
  setRow(0,2,a[2]);
  setRow(0,3,a[1]);
  setRow(0,4,a[0]);
  delay_ms(deltime);
  setRow(0,0,r[4]);
  setRow(0,1,r[3]);
  setRow(0,2,r[2]);
  setRow(0,3,r[1]);
  setRow(0,4,r[0]);
  delay_ms(deltime);
  setRow(0,0,d[4]);
  setRow(0,1,d[3]);
  setRow(0,2,d[2]);
  setRow(0,3,d[1]);
  setRow(0,4,d[0]);
  delay_ms(deltime);
  setRow(0,0,u[4]);
  setRow(0,1,u[3]);
  setRow(0,2,u[2]);
  setRow(0,3,u[1]);
  setRow(0,4,u[0]);
  delay_ms(deltime);
  setRow(0,0,i[4]);
  setRow(0,1,i[3]);
  setRow(0,2,i[2]);
  setRow(0,3,i[1]);
  setRow(0,4,i[0]);
  delay_ms(deltime);
  setRow(0,0,n[4]);
  setRow(0,1,n[3]);
  setRow(0,2,n[2]);
  setRow(0,3,n[1]);
  setRow(0,4,n[0]);
  delay_ms(deltime);
  setRow(0,0,o[4]);
  setRow(0,1,o[3]);
  setRow(0,2,o[2]);
  setRow(0,3,o[1]);
  setRow(0,4,o[0]);
  delay_ms(deltime);
  setRow(0,0,0);
  setRow(0,1,0);
  setRow(0,2,0);
  setRow(0,3,0);
  setRow(0,4,0);
  delay_ms(deltime);
}
void demo_3(){

  int16 deltime = 1000;
  setRow(0,0,0x00);
  setRow(0,1,0x26);
  setRow(0,2,0x49);
  setRow(0,3,0X49);
  setRow(0,4,0x49);
  setRow(0,5,0x49);
  setRow(0,6,0x32);
  setRow(0,7,0x00);
  delay_ms(deltime);
  setRow(0,0,0x00);
  setRow(0,1,0x20);
  setRow(0,2,0X40);
  setRow(0,3,0x7D);
  setRow(0,4,0x00);
  setRow(0,5,0x00);
  setRow(0,6,0x00);
  setRow(0,7,0x00);
  delay_ms(deltime);
  setRow(0,0,0x00);
  setRow(0,1,0x7F);
  setRow(0,2,0X02);
  setRow(0,3,0x04);
  setRow(0,4,0x04);
  setRow(0,5,0x02);
  setRow(0,6,0x7F);
  setRow(0,7,0x00);
  delay_ms(deltime);
  setRow(0,0,0x00);
  setRow(0,1,0x20);
  setRow(0,2,0X40);
  setRow(0,3,0x7D);
  setRow(0,4,0x00);
  setRow(0,5,0x00);
  setRow(0,6,0x00);
  setRow(0,7,0x00);
  delay_ms(deltime);
  setRow(0,0,0x00);
  setRow(0,1,0x38);
  setRow(0,2,0X40);
  setRow(0,3,0x40);
  setRow(0,4,0x40);
  setRow(0,5,0x20);
  setRow(0,6,0x7C);
  setRow(0,7,0x00);
  delay_ms(deltime);
  setRow(0,0,0x00);
  setRow(0,1,0x26);
  setRow(0,2,0x49);
  setRow(0,3,0X49);
  setRow(0,4,0x49);
  setRow(0,5,0x49);
  setRow(0,6,0x32);
  setRow(0,7,0x00);
  delay_ms(deltime);

  setColumn(1,0,0x00);
  setColumn(1,1,0x26);
  setColumn(1,2,0x49);
  setColumn(1,3,0X49);
  setColumn(1,4,0x49);
  setColumn(1,5,0x49);
  setColumn(1,6,0x32);
  setColumn(1,7,0x00);
  delay_ms(deltime);
  setColumn(10,0,0x00);
  setColumn(1,1,0x20);
  setColumn(1,2,0X40);
  setColumn(1,3,0x7D);
  setColumn(1,4,0x00);
  setColumn(1,5,0x00);
  setColumn(1,6,0x00);
  setColumn(1,7,0x00);
  delay_ms(deltime);
  setColumn(1,0,0x00);
  setColumn(1,1,0x7F);
  setColumn(1,2,0X02);
  setColumn(1,3,0x04);
  setColumn(1,4,0x04);
  setColumn(1,5,0x02);
  setColumn(1,6,0x7F);
  setColumn(1,7,0x00);
  delay_ms(deltime);
  setColumn(1,0,0x00);
  setColumn(1,1,0x20);
  setColumn(1,2,0X40);
  setColumn(1,3,0x7D);
  setColumn(1,4,0x00);
  setColumn(1,5,0x00);
  setColumn(1,6,0x00);
  setColumn(1,7,0x00);
  delay_ms(deltime);
  setColumn(1,0,0x00);
  setColumn(1,1,0x38);
  setColumn(1,2,0X40);
  setColumn(1,3,0x40);
  setColumn(1,4,0x40);
  setColumn(1,5,0x20);
  setColumn(1,6,0x7C);
  setColumn(1,7,0x00);
  delay_ms(deltime);
  setColumn(1,0,0x00);
  setColumn(1,1,0x26);
  setColumn(1,2,0x49);
  setColumn(1,3,0X49);
  setColumn(1,4,0x49);
  setColumn(1,5,0x49);
  setColumn(1,6,0x32);
  setColumn(1,7,0x00);
  delay_ms(deltime);
}

/*
  This function lights up a some Leds in a row.
 The pattern will be repeated on every row.
 The pattern will blink along with the row-number.
 row number 4 (index==3) will blink 4 times etc.
 */
void rows() {
  for(int row=0;row<8;row++) {
    delay_ms(delaytime);
    setRow(0,row,0B10100000);
    delay_ms(delaytime);
    setRow(0,row,0);
    for(int i=0;i<row;i++) {
      delay_ms(delaytime);
      setRow(0,row,0B10100000);
      delay_ms(delaytime);
      setRow(0,row,0);
    }
  }
}
/*
  This function lights up a some Leds in a column.
 The pattern will be repeated on every column.
 The pattern will blink along with the column-number.
 column number 4 (index==3) will blink 4 times etc.
 */
void columns() {
  for(int col=0;col<8;col++) {
    delay_ms(delaytime);
    setColumn(0,col,0B10100000);
    delay_ms(delaytime);
    setColumn(0,col,0);
    for(int i=0;i<col;i++) {
      delay_ms(delaytime);
      setColumn(0,col,0B10100000);
      delay_ms(delaytime);
      setColumn(0,col,0);
    }
  }
}

/* 
 This function will light up every Led on the matrix.
 The led will blink along with the row-number.
 row number 4 (index==3) will blink 4 times etc.
 */
void single() {
  for(int row=0;row<8;row++) {
    for(int col=0;col<8;col++) {
      delay_ms(delaytime);
      setLed(0,row,col,true);
      delay_ms(delaytime);
      for(int i=0;i<col;i++) {
        setLed(0,row,col,false);
        delay_ms(delaytime);
        setLed(0,row,col,true);
        delay_ms(delaytime);
      }
    }
  }
}

void init(){

	lcd_init();
	LCD_PUTC("\f* MATRICE LED *");
	LCD_PUTC("\n*  & MAX7219  *");
    Delay_ms(100);
    InitMax7219();		// Init Max7219
	setIntensity(2);
    grx_cls(); 			// clear RAM
    grx_display(); 		//display it
}

// Here we have the main function.
void main()
{
	init();
	while(true) {

		Demo_1();
		//Demo_2();
    	grx_cls(); 			// clear RAM
    	grx_display(); 		//display it
		//writeSimiusOnMatrix();
		demo_3();
  		//rows();
  		//columns();
  		//single();
	}
}