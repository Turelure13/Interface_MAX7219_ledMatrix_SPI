/*
 * Library MaxMatrix (Same as Arduino)
 * 
 * 
 */
/*****************************************************************************/
#define max7219_reg_noop        0x00
#define max7219_reg_digit0      0x01
#define max7219_reg_digit1      0x02
#define max7219_reg_digit2      0x03
#define max7219_reg_digit3      0x04
#define max7219_reg_digit4      0x05
#define max7219_reg_digit5      0x06
#define max7219_reg_digit6      0x07
#define max7219_reg_digit7      0x08
#define max7219_reg_decodeMode  0x09
#define max7219_reg_intensity   0x0a
#define max7219_reg_scanLimit   0x0b
#define max7219_reg_shutdown    0x0c
#define max7219_reg_displayTest 0x0f
#define LOW 0
#define HIGH 1
#define LSBFIRST 0
#define MSBFIRST 1
/*****************************************************************************/
// Arduino routine
#define bitRead(value, bit) (((value) >> (bit)) & 0x01)
#define bitSet(value, bit) ((value) |= (1UL << (bit)))
#define bitClear(value, bit) ((value) &= ~(1UL << (bit)))
#define bitWrite(value, bit, bitvalue) (bitvalue ? bitSet(value, bit) : bitClear(value, bit))
/*****************************************************************************/
    byte data;
    byte load;
    byte clock;
    byte num;
    byte buffer_[80];
/*****************************************************************************/
// Manage output and intern buffer
void MaxMatrix(byte _data, byte _load, byte _clock, byte _num) 
{
	data = _data;
	load = _load;
	clock = _clock;
	num = _num;
	for (int i=0; i<80; i++)
		buffer_[i] = 0;
}
/*****************************************************************************/
// routine for serial output (Data & Clk + direction choice)
void shiftOut(byte Datapin, byte clkpin, byte dir, byte value)
{
	byte i;

	for (i=0; i<8; i++){
		if (dir == LSBFIRST)
			output_bit(datapin, !!(value & (1<<i)));
		else
			output_bit(datapin, !!(value & (1<<(7-i))));

		output_bit(clkpin,HIGH);
		output_bit(clkpin,LOW);
	}
}
/*****************************************************************************/
// Send the command to the Max7219
void setCommand(byte command, byte value)
{
	output_bit(load, LOW);    
	for (int i=0; i<num; i++) 
	{
		shiftOut(data, clock, MSBFIRST, command);
		shiftOut(data, clock, MSBFIRST, value);
	}
	output_bit(load, LOW);
	output_bit(load, HIGH);
}
/*****************************************************************************/
void setColumnAll(byte col, byte value)
{
	output_bit(load, LOW);    
	for (int i=0; i<num; i++) 
	{
		shiftOut(data, clock, MSBFIRST, col + 1);
		shiftOut(data, clock, MSBFIRST, value);
		buffer_[col * i] = value;
	}
	output_bit(load, LOW);
	output_bit(load, HIGH);
}
/*****************************************************************************/
// command for clear the LED Matrix
void clear()
{
	for (int i=0; i<8; i++) 
		setColumnAll(i,0);
		
	for (i=0; i<80; i++)
		buffer_[i] = 0;
}
/*****************************************************************************/
// command for the setting intensity
void setIntensity(byte intensity)
{
	setCommand(max7219_reg_intensity, intensity);
}
/*****************************************************************************/
// command for initialize the Max7219 ans config the output 
void initMax()
{
	output_drive(data);
	output_drive(clock);
	output_drive(load);
	output_bit(clock,HIGH); 

	setCommand(max7219_reg_scanLimit, 0x07);      
	setCommand(max7219_reg_decodeMode, 0x00);  // using an led matrix (not digits)
	setCommand(max7219_reg_shutdown, 0x01);    // not in shutdown mode
	setCommand(max7219_reg_displayTest, 0x00); // no display test
	
	// empty registers, turn all LEDs off
	clear();
	
	setIntensity(0x0f);    // the first 0x0f is the value you can set
}
/*****************************************************************************/
void setColumn(byte col, byte value)
{
	int n = col / 8;
	int c = col % 8;
	output_bit(load, LOW);    
	for (int i=0; i<num; i++) 
	{
		if (i == n)
		{
			shiftOut(data, clock, MSBFIRST, c + 1);
			shiftOut(data, clock, MSBFIRST, value);
		}
		else
		{
			shiftOut(data, clock, MSBFIRST, 0);
			shiftOut(data, clock, MSBFIRST, 0);
		}
	}
	output_bit(load, LOW);
	output_bit(load, HIGH);
	
	buffer_[col] = value;
}
/*****************************************************************************/
void setDot(byte col, byte row, byte value)
{
    bitWrite(buffer_[col], row, value);

	int n = col / 8;
	int c = col % 8;
	output_bit(load, LOW);    
	for (int i=0; i<num; i++) 
	{
		if (i == n)
		{
			shiftOut(data, clock, MSBFIRST, c + 1);
			shiftOut(data, clock, MSBFIRST, buffer_[col]);
		}
		else
		{
			shiftOut(data, clock, MSBFIRST, 0);
			shiftOut(data, clock, MSBFIRST, 0);
		}
	}
	output_bit(load, LOW);
	output_bit(load, HIGH);
}
/*****************************************************************************/
void writeSprite(int x, int y, byte *sprite)
{
	int w = sprite[0];
	int h = sprite[1];
	int c,r,i,j;
	
	if (h == 8 && y == 0)
		for (i=0; i<w; i++)
		{
			c = x + i;
			if (c>=0 && c<80)
				setColumn(c, sprite[i+2]);
		}
	else
		for (i=0; i<w; i++)
			for (j=0; j<h; j++)
			{
				c = x + i;
				r = y + j;
				if (c>=0 && c<80 && r>=0 && r<8)
					setDot(c, r, bitRead(sprite[i+2], j));
			}
}
/*****************************************************************************/
void reload()
{
	for (int i=0; i<8; i++)
	{
		int col = i;
		output_bit(load, LOW);    
		for (int j=0; j<num; j++) 
		{
			shiftOut(data, clock, MSBFIRST, i + 1);
			shiftOut(data, clock, MSBFIRST, buffer_[col]);
			col += 8;
		}
		output_bit(load, LOW);
		output_bit(load, HIGH);
	}
}
/*****************************************************************************/
void shiftLeft(boolean rotate, boolean fill_zero)
{
	byte old = buffer_[0];
	int i;
	for (i=0; i<80; i++)
		buffer_[i] = buffer_[i+1];
	if (rotate) buffer_[num*8-1] = old;
	else if (fill_zero) buffer_[num*8-1] = 0;
	
	reload();
}
/*****************************************************************************/
void shiftRight(boolean rotate, boolean fill_zero)
{
	int last = num*8-1;
	byte old = buffer_[last];
	int i;
	for (i=79; i>0; i--)
		buffer_[i] = buffer_[i-1];
	if (rotate) buffer_[0] = old;
	else if (fill_zero) buffer_[0] = 0;
	
	reload();
}
/*****************************************************************************/
void shiftUp(boolean rotate)
{
	for (int i=0; i<num*8; i++)
	{
		boolean b = buffer_[i] & 1;
		buffer_[i] >>= 1;
		if (rotate) bitWrite(buffer_[i], 7, b);
	}
	reload();
}
/*****************************************************************************/
void shiftDown(boolean rotate)
{
	for (int i=0; i<num*8; i++)
	{
		boolean b = buffer_[i] & 128;
		buffer_[i] <<= 1;
		if (rotate) bitWrite(buffer_[i], 0, b);
	}
	reload();
}
/*****************************************************************************/

