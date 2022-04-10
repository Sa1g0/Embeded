

#include "stm8s.h"
#include "stm8s_delay.h"
#include "TM1637.h"

void GPIO_setup(void);
void clock_config(void);


void main(void)
{	
	int i = 0;
	char j = OFF;
	clock_config();
	GPIO_setup();
	tm1637_init();	
	
	/* MAIN LOOP */
	while(TRUE)
	{
		/*Some demo code*/
			for(i; i <= 9999; i+=4)
			{
				if(i%100 == 0)
				j = OFF;
				if(i%99 == 0)
				j = ON;
				display_string(j, i);
				delay_ms(1);
			}
			i=0;
			for(i; i <= 10; i++)
			{
				display_by_segment(OFF, 1, OFF, 1, OFF);
				delay_ms(300);
				display_by_segment(OFF, OFF, 1, OFF, 1);
				delay_ms(300);
			}
			i=0;
			for(i; i <= 10; i++)
			{
				display_by_segment(OFF, 1, OFF, OFF, OFF);
				delay_ms(200);
				display_by_segment(OFF, OFF, 1, OFF, OFF);
				delay_ms(200);
				display_by_segment(OFF, OFF, OFF, 1, OFF);
				delay_ms(200);
				display_by_segment(OFF, OFF, OFF, OFF, 1);
				delay_ms(200);
			}
			i=0;
			
			display_by_segment(OFF, 4, 0, 90, 91);
			delay_ms(2000);
			display_by_segment(OFF, 93, 94, 94, OFF);
			delay_ms(2000);
	}
}



void GPIO_setup(void)
{

}
	
void clock_config(void)
{
	CLK_DeInit();

  CLK_HSECmd(DISABLE);

  CLK_LSICmd(DISABLE);

  CLK_HSICmd(ENABLE);

  while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);

  CLK_ClockSwitchCmd(ENABLE);

  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

  CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);

  CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI,

  DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);

  CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);

  CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);

  CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, DISABLE);

  CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);

  CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, DISABLE);

  CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);

  CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);


}
