#include "tm1637.h"

//*** Pin declaration. Assign corect pin in TM1637.h 
void tm1637_gpio(void)
{
	GPIO_DeInit(GPIO_SELECT);
	GPIO_Init(GPIO_SELECT, CLK_PIN, GPIO_MODE_OUT_OD_LOW_SLOW);
	GPIO_Init(GPIO_SELECT, DIO_PIN, GPIO_MODE_OUT_OD_LOW_SLOW);	
}

//*** Init pins and set state to high
void tm1637_init(void)
{
	tm1637_gpio();
	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);
}

//*** Switch to high state and slow down clock
void tm1637_clk_h(void)
{
	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
}

//*** Switch to low state and slow down clock
void tm1637_clk_l(void)
{
	GPIO_WriteLow(GPIO_SELECT, CLK_PIN);
	GPIO_WriteLow(GPIO_SELECT, CLK_PIN);
	GPIO_WriteLow(GPIO_SELECT, CLK_PIN);
}

//*** Switch to high state and slow down clock
void tm1637_dio_h(void)
{
	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);
	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);
	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);	
}

//*** Switch to low state and slow down clock
void tm1637_dio_l(void)
{
	GPIO_WriteLow(GPIO_SELECT, DIO_PIN);
	GPIO_WriteLow(GPIO_SELECT, DIO_PIN);
	GPIO_WriteLow(GPIO_SELECT, DIO_PIN);
}

//*** DIO goes low while CLK remains high indicates Start of data transfer
void tm1637_start_bit(void)
{
	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);
	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);
	tm1637_dio_l();
	tm1637_clk_l();	
}

//*** DIO goes high while CLK remains high indicates Stop of data transfer
void tm1637_stop_bit(void)
{
	tm1637_clk_l();	
	tm1637_dio_l();
	tm1637_clk_h();
	tm1637_dio_h();
}

//*** Acknowledge on 8th clock failing edge. Re-initializing DIO as input and waiting for pin to be pulled low by TM1637 as a sign of acknowledgement. Pin is released on failing edge of 9th clock.
void tm1637_ack(void)
{
		GPIO_Init(GPIO_SELECT, DIO_PIN, GPIO_MODE_IN_FL_NO_IT);
		while (GPIO_ReadInputPin(GPIO_SELECT, DIO_PIN) != 0)
		{
			_asm ("nop");			
		}
		tm1637_clk_h();
		tm1637_dio_l();
		GPIO_Init(GPIO_SELECT, DIO_PIN, GPIO_MODE_OUT_OD_LOW_SLOW);			
}




		
//*** Set data - start bit, ACK, stop bit required. Sets IC - in this case (WRITE - 0x40) Write with auto-increment.
void tm1637_send_command1(char n[8])
{
	int i=0;
		
	tm1637_start_bit();	
	for (i; i <= 7; i++)
	{			
		if (n[i] == 1)
		{
			tm1637_dio_h();
		} else
		{
			tm1637_dio_l();
		}		
		tm1637_clk_h();
		tm1637_clk_l();			
	}
	tm1637_ack();
	tm1637_stop_bit();
}

//*** Set Address -unlike command1 does not need stop bit .In auto-increment mode need to give only the first register address (G1-0xC0)
void tm1637_send_command2(char n[8])
{
	int i=0;
	
	tm1637_start_bit();	
	for (i; i <= 7; i++)
	{			
		if (n[i] == 1)
		{
			tm1637_dio_h();
		} else
		{
			tm1637_dio_l();
		}		
		tm1637_clk_h();
		tm1637_clk_l();			
	}
	tm1637_ack();
	
}

//*** Sending 4 bytes of data ended by ACK for each grid. Colon is turn on by last bit of 2'nd grid.
void tm1637_send_data(char n[8])
{
	int i=0;
	
	tm1637_clk_l();
	for (i; i <= 7; i++)
	{			
		if (n[i] == 1)
		{
			tm1637_dio_h();
		} else
		{
			tm1637_dio_l();
		}		
		tm1637_clk_h();
		tm1637_clk_l();			
	}
	tm1637_ack();
	
	
}

//*** Translation of numbers to corresponding hex code required to light up particular segments 
char translate(char n)
{
		char ret;
        
        switch (n)
        {
            case 1 : 
            ret = 0x06;
            break;
            case 2 : 
            ret = 0x5B;
            break;
						case 3 : 
            ret = 0x4F;
            break;
            case 4 : 
            ret = 0x66;
            break;
						case 5 : 
            ret = 0x6D;
            break;
            case 6 : 
            ret = 0x7D;
            break;
						case 7 : 
            ret = 0x07;
            break;
            case 8 : 
            ret = 0x7F;
            break;
						case 9 : 
            ret = 0x6F;
            break;
            case 0 : 
            ret = 0x3F;
            break;
						case 90 :    // Degree  
            ret = 0x63;		
						break;
						case 91 :              
            ret = 0x39;  // C       			Signs to be used only with display_by_segment();
						break;
						case 92 :             
            ret = 0x71;    // F       
						break;
						case 93 :             
            ret = 0x79;    // E      
						break;
						case 94 :             
            ret = 0x50;    // r       
						break;
            default:
            ret = 0x00;		
						break;
        }
    return ret;    
}
	

/*
Best used when input is single variable for each grid, there is a need to ommit some grids in between or sign other than 0-9 digit will be displayed. 

COLON: ON or OFF as HW-069 comes with colon between 2'nd and 3'rd grid for time based operations.
GRID1-4: From left to right. Can be either OFF or takes number from 0-9 displaying correspondingly. Numbers from 90 up represents special characters found in translate() function.
*/
void display_by_segment(char COLON, char GRID1, char GRID2, char GRID3, char GRID4)
{
	
	int j =7;
	char a[8];
	char b[8];
	char c[8];
	char d[8];
	char e[8];
	char f[8];
	char g[8];
	
	
	for (j; j >= 0; j--)
		{
				a[j] = (WRITE >> j) & 1;
				b[j] = (DISPLAY_ON >> j) & 1;
				c[j] = (translate(GRID1) >> j) & 1;
				d[j] = (translate(GRID2) >> j) & 1;  //Re-write stored HEX to bool tab
				e[j] = (translate(GRID3) >> j) & 1;
				f[j] = (translate(GRID4) >> j) & 1;
				g[j] = (G1 >> j) & 1;
				
								
		}
		
		if (COLON == ON)
		{																									//Check if colon should be on and change highest bit of 2'nd grid to 1 if so
			d[7] = d[7] ^1;
		}
		
		
		tm1637_send_command1(a);
		tm1637_send_command2(g);
		tm1637_send_data(c);
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_send_data(d);
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();															//*** Building protocol frame. By sending command1(set mode), command2(set address), 4 bytes of data ended with stop bit, command1(display controll)
		tm1637_send_data(e);
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_send_data(f);
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
	  tm1637_stop_bit();
		tm1637_send_command1(b);
		

	
}

/*
Best used when displaying single variable in range of 0-9999.

COLON: Same as above
x: any number from 0-9999 will be displayed correspondingly. if number of digits is less than 4, empty grids will be left from left side.
*/
void display_string(char COLON, unsigned int x)
{
	
	int j =7;
	char a[8];
	char b[8];
	char c[8];
	char d[8];
	char e[8];
	char f[8];
	char g[8];
	long y = 0;
	int k=1;
  unsigned char data[4]={0x0A, 0x0A, 0x0A, 0x0A};
	char i = 0;
	char n = 0;
	
	y = x;
	do
	{
			y /= 10;
			n++;
	}while(y != 0);
    
	while(n > 0)
	{
			i=n;
			for(i;i > 0; i--)																	//Check how many digits inserted and store them in a array. Array first filled with OFF representations in case number given is les than 4 digit. This will pass OFF byte for all grids that does not display anything.
			{
						k=k*10;  
			}
        
			data[4-n] = (x % k)/(k/10);
			n--;
			k=1;
	}
	
	
	
	
	
	for (j; j >= 0; j--)
		{
				a[j] = (WRITE >> j) & 1;
				b[j] = (DISPLAY_ON >> j) & 1;
				c[j] = (translate(data[0]) >> j) & 1;
				d[j] = (translate(data[1]) >> j) & 1;
				e[j] = (translate(data[2]) >> j) & 1;    //Re-write stored HEX to bool tab
				f[j] = (translate(data[3]) >> j) & 1;
				g[j] = (G1 >> j) & 1;
				
								
		}
		
		if (COLON == ON)
		{
			d[7] = d[7] ^1;
		}
		
		
		tm1637_send_command1(a);
		tm1637_send_command2(g);
		tm1637_send_data(c);
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_send_data(d);
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();																		//*** Building protocol frame. By sending command1(set mode), command2(set address), 4 bytes of data ended with stop bit, command1(display controll)
		tm1637_send_data(e);
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_send_data(f);
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
		tm1637_clk_l();
	  tm1637_stop_bit();
		tm1637_send_command1(b);
	
}





