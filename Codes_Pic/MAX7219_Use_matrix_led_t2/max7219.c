/*
******************************************************************************* Module     : MAX7219.C
* Author     : Joe DiMeglio
* Description: MAX7219 LED Display Driver Routines
*
*  The host communicates with the MAX7219 using three signals: DATA, CLK, and LOAD using SPI.
*
******************************************************************************/
// CONSTANTS //
#define Chip_Select             PIN_D0       //this is the pin on the PIC that connects to LOAD
#define Chip_Select_Direction   TRIS_D
#define scanLimitAmount         0x07

// - Mode Selection
#define nop       0x00
#define OP_DIGIT0 1
#define OP_DIGIT1 2
#define OP_DIGIT2 3
#define OP_DIGIT3 4
#define OP_DIGIT4 5
#define OP_DIGIT5 6
#define OP_DIGIT6 7
#define OP_DIGIT7 8
#define decode    0x09
#define brightness 0x0A
#define OP_INTENSITY   10
#define scanLimit  0x0B
#define OP_SCANLIMIT   11
#define shutDown   0x0C
#define dispTest   0x0F

// FOR more space, we don't need byte 0 and byte 7.
// We have stripped them out, IF/when we have a need and a bigger PIC,
// then we can put them back IF we want.
// Here we define row values FOR each of the six columns corresponding to the
// Alphabet, from  A through Z.
const byte Alphabet[156]=
{
   0x7f, 0x88, 0x88, 0x88, 0x88, 0x7f, // A
   0xff, 0x91, 0x91, 0x91, 0x91, 0x6e, // B
   0x7e, 0x81, 0x81, 0x81, 0x81, 0x42, // C
   0xff, 0x81, 0x81, 0x81, 0x81, 0x7e, // D
   0x81, 0xff, 0x91, 0x91, 0x91, 0x91, // E
   0x81, 0xff, 0x91, 0x90, 0x90, 0x80, // F
   0x7e, 0x81, 0x81, 0x89, 0x89, 0x4e, // G
   0xff, 0x10, 0x10, 0x10, 0x10, 0xff, // H
   0x00, 0x81, 0xff, 0xff, 0x81, 0x00, // I
   0x06, 0x01, 0x81, 0xfe, 0x80, 0x00, // J
   0x81, 0xff, 0x99, 0x24, 0xc3, 0x81, // K
   0x81, 0xff, 0x81, 0x01, 0x01, 0x03, // L
   0xff, 0x60, 0x18, 0x18, 0x60, 0xff, // M
   0xff, 0x60, 0x10, 0x08, 0x06, 0xff, // N
   0x7e, 0x81, 0x81, 0x81, 0x81, 0x7e, // O
   0x81, 0xff, 0x89, 0x88, 0x88, 0x70, // P
   0x7e, 0x81, 0x85, 0x89, 0x87, 0x7e, // Q
   0xff, 0x98, 0x98, 0x94, 0x93, 0x61, // R
   0x62, 0x91, 0x91, 0x91, 0x91, 0x4e, // S
   0xc0, 0x81, 0xff, 0xff, 0x81, 0xc0, // T
   0xfe, 0x01, 0x01, 0x01, 0x01, 0xfe, // U
   0xfc, 0x02, 0x01, 0x01, 0x02, 0xfc, // V
   0xff, 0x02, 0x04, 0x04, 0x02, 0xff, // W
   0xc3, 0x24, 0x18, 0x18, 0x24, 0xc3, // X
   0xc0, 0x20, 0x1f, 0x1f, 0x20, 0xc0, // Y
   0xc3, 0x85, 0x89, 0x91, 0xa1, 0xc3 // Z
};

const byte Symbols[114] =
 {
    0x00, 0x3c, 0x42, 0x81, 0x00, 0x00, // (
    0x00, 0x00, 0x81, 0x42, 0x3c, 0x00, // )
    0x00, 0x00, 0xff, 0x81, 0x00, 0x00, // [
    0x00, 0x00, 0x81, 0xff, 0x00, 0x00, // ]
    0x00, 0x18, 0xe7, 0x81, 0x00, 0x00, //
    0x00, 0x00, 0x81, 0xe7, 0x18, 0x00, //
    0x00, 0x18, 0x24, 0x42, 0x81, 0x00, // <
    0x00, 0x81, 0x42, 0x24, 0x18, 0x00, // >
    0x00, 0x03, 0x0c, 0x30, 0xc0, 0x00, // /
    0x00, 0xc0, 0x30, 0x0c, 0x03, 0x00, // \
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //
    0x00, 0x00, 0xfd, 0xfd, 0x00, 0x00, // !
    0x60, 0x80, 0x8d, 0x8d, 0x90, 0x60, // ?
    0x42, 0x24, 0xff, 0xff, 0x24, 0x42, // *
    0x24, 0xff, 0x24, 0x24, 0xff, 0x24, // #
    0x62, 0x91, 0xff, 0xff, 0x91, 0x4e, // $
    0x66, 0x99, 0x99, 0x66, 0x09, 0x00, // &
    0x42, 0xa4, 0x48, 0x12, 0x25, 0x42, // %
    0x20, 0x3f, 0x20, 0x20, 0x3e, 0x21 // pi
 };
/*
 * Segments to be switched on for characters and digits on
 * 7-Segment Displays
 */
const byte charTable[128] = {
    0B01111110,0B00110000,0B01101101,0B01111001,
	0B00110011,0B01011011,0B01011111,0B01110000,
    0B01111111,0B01111011,0B01110111,0B00011111,
	0B00001101,0B00111101,0B01001111,0B01000111,
    0B00000000,0B00000000,0B00000000,0B00000000,
	0B00000000,0B00000000,0B00000000,0B00000000,
    0B00000000,0B00000000,0B00000000,0B00000000,
	0B00000000,0B00000000,0B00000000,0B00000000,
    0B00000000,0B00000000,0B00000000,0B00000000,
	0B00000000,0B00000000,0B00000000,0B00000000,
    0B00000000,0B00000000,0B00000000,0B00000000,
	0B10000000,0B00000001,0B10000000,0B00000000,
    0B01111110,0B00110000,0B01101101,0B01111001,
	0B00110011,0B01011011,0B01011111,0B01110000,
    0B01111111,0B01111011,0B00000000,0B00000000,
	0B00000000,0B00000000,0B00000000,0B00000000,
    0B00000000,0B01110111,0B00011111,0B00001101,
	0B00111101,0B01001111,0B01000111,0B00000000,
    0B00110111,0B00000000,0B00000000,0B00000000,
	0B00001110,0B00000000,0B00000000,0B00000000,
    0B01100111,0B00000000,0B00000000,0B00000000,
	0B00000000,0B00000000,0B00000000,0B00000000,
    0B00000000,0B00000000,0B00000000,0B00000000,
	0B00000000,0B00000000,0B00000000,0B00001000,
    0B00000000,0B01110111,0B00011111,0B00001101,
	0B00111101,0B01001111,0B01000111,0B00000000,
    0B00110111,0B00000000,0B00000000,0B00000000,
	0B00001110,0B00000000,0B00000000,0B00000000,
    0B01100111,0B00000000,0B00000000,0B00000000,
	0B00000000,0B00000000,0B00000000,0B00000000,
    0B00000000,0B00000000,0B00000000,0B00000000,
	0B00000000,0B00000000,0B00000000,0B00000000
};

byte spidata[16];
byte maxDevices=8;
byte status[64];

 // latch the bits into the MAX
 void pulseCS()
 {
    output_bit(Chip_Select, 1);
    delay_us (2) ;
    output_bit(Chip_Select, 0);
 }

 //send data to MAX
 void send7219(byte address, byte data)
 {
    //make a 16 bit variable address byte high, data byte low
    Int16 SerialData;
    SerialData = make16 (address, data);   
	output_bit(Chip_Select, 1);
    spi_xfer(SerialData); //transfer using spi software
	output_bit(Chip_Select, 0);
    //pulseCS();
 }

void spi_Transfer(int addr, byte opcode, byte data) {
    //Create an array with the data to shift out
    int offset=addr*2;
    int maxbytes=maxDevices*2;

    for(int8 i=0;i<maxbytes;i++)
		spidata[i]=(byte)0;
    //put our device data into the array
    spidata[offset+1]=opcode;
    spidata[offset]=data;
    //enable the line 
	output_bit(Chip_Select, 1);
    //Now shift out the data 
    for(i=maxbytes;i>0;i=i-2)
		//spi_xfer(spidata[i-1]);
		spi_xfer(make16(spidata[i-1],spidata[i-2]));
    //latch the data onto the display
	output_bit(Chip_Select, 0);
}

//void spiTransfer(int addr, byte opcode, byte data) {
//
//	send7219(opcode, data);
//}


 //Init MAX
 void InitMax7219()
 {
    output_bit(Chip_Select, 0);  // Set RD0 pin as hight
    set_tris_d(0x00) ;   
   
    //configure properly
    send7219(decode, 0x00);                 //no decoding (MSB)
    send7219(brightness, 0x05);             //Segment luminosity intensity
    send7219(scanLimit, scanLimitAmount);   //Scan all 7 digits
    send7219(shutDown, 0x01);               //No Shutdown reg.
    send7219(dispTest, 0x00);               // No test
 }

//Segment luminosity intensity
void setIntensity(byte intensity)
{
	send7219(brightness,intensity);
}

 // This is clear matrix function.
 void Clear7219_()
 {
    byte Addr;
    for (Addr = 1; Addr < scanLimitAmount+1; Addr++)
    {
       send7219(Addr, 0x00) ;
    }
 }

 //Write CHAR to the screen
 void WriteChar7219(byte myChar)
 {
    byte Column, Start_Byte;
   
    Start_Byte = (myChar - 65) * 6; // 65 represents the letter "A" in ASCII code.
   
    // We are using only columns from 2 through 7 FOR displaying the character.
    for (Column = 7; Column > 1; Column--)
    {
       send7219(Column, Alphabet[Start_Byte++]);
    }
 }

void setScanLimit(int addr, int limit) {
    if(addr>=maxDevices)
        return;
    if(limit>=0 && limit<8)
        spi_Transfer(addr, OP_SCANLIMIT,limit);
}

void setIntensity2(int addr, int intensity) {
    if(addr>=maxDevices)
        return;
    if(intensity>=0 && intensity<16)	
        spi_Transfer(addr, OP_INTENSITY,intensity);
}

void clearDisplay(int addr) {
    int offset;

    if(addr>=maxDevices)
        return;
    offset=addr*8;
    for(int i=0;i<8;i++) {
        status[offset+i]=0;
        spi_Transfer(addr, i+1,status[offset+i]);
    }
}

void setLed(int addr, int row, int column, boolean state) {
    int offset;
    byte val=0x00;

    if(addr>=maxDevices)
		return;
    if(row>7 || column>7)
		return;
    offset=addr*8;
    val=0b10000000 >> column;
    if(state)
		status[offset+row]=status[offset+row]|val;
    else {
		val=~val;
		status[offset+row]=status[offset+row]&val;
    }
    spi_Transfer(addr, row+1,status[offset+row]);
}

void setRow(int addr, int row, byte value) {
    int offset;

    if(addr>=maxDevices)
		return;
    if(row>7)
		return;
    offset=addr*8;
    status[offset+row]=value;
    spi_Transfer(addr, row+1,status[offset+row]);
}
    
void setColumn(int addr, int col, byte value) {
    byte val;

    if(addr>=maxDevices)
		return;
    if(col>7) 
		return;
    for(int row=0;row<8;row++) {
	val=value >> (7-row);
	val=val & 0x01;
	setLed(addr,row,col,val);
    }
}

void setDigit(int addr, int digit, byte value, boolean dp) {
    int offset;
    byte v;

    if(addr>=maxDevices)
		return;
    if(digit>7 || value>15)
		return;
    offset=addr*8;
    v=charTable[value];
    if(dp)
		v|=0b10000000;
    status[offset+digit]=v;
    spi_Transfer(addr, digit+1,v);
}

void setChar(int addr, int digit, char value, boolean dp) {
    int offset;
    byte index,v;

    if(addr>=maxDevices)
		return;
    if(digit>7)
 		return;
    offset=addr*8;
    index=(byte)value;
    if(index >127) {
	//nothing define we use the space char
	value=32;
    }
    v=charTable[index];
    if(dp)
	v|=0b10000000;
    status[offset+digit]=v;
    spi_Transfer(addr, digit+1,v);
}