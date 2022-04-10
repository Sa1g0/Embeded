#include "stm8s.h"


#define GPIO_SELECT GPIOB
#define CLK_PIN GPIO_PIN_4 // Open-drain pins of STM8S003F3P6
#define DIO_PIN GPIO_PIN_5

#define ON 0xFF
#define OFF 0x0A
#define G1 0xC0 //*** Address of first register. Only this one is required while using auto-increment mode.
#define WRITE 0x40 //*** Sets command to use write in auto-increment mode
#define DISPLAY_ON 0x8B //*** Turns on display


void tm1637_gpio(void);
void tm1637_clk_h(void);
void tm1637_clk_l(void);
void tm1637_dio_h(void);
void tm1637_dio_l(void);
void tm1637_init(void);
void tm1637_start_bit(void);
void tm1637_stop_bit(void);
void tm1637_ack(void);
char tm1637_hex_to_bin(char data);
void tm1637_send_command1(char n[8]);
void tm1637_send_command2(char n[8]);
void tm1637_send_data(char n[8]);
char translate(char n);
void display_by_segment(char COLON, char GRID1, char GRID2, char GRID3, char GRID4);
void display_string(char COLON, unsigned int n);