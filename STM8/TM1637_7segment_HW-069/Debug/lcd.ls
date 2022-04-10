   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  48                     ; 4 void LCD_init(void)
  48                     ; 5 
  48                     ; 6 {                      
  50                     	switch	.text
  51  0000               _LCD_init:
  55                     ; 8     PCF8574_init();
  57  0000 cd0000        	call	_PCF8574_init
  59                     ; 10     delay_ms(100);
  61  0003 ae0064        	ldw	x,#100
  62  0006 cd0000        	call	_delay_ms
  64                     ; 12     bl_state = BL_ON;
  66  0009 35010000      	mov	_bl_state,#1
  67                     ; 14     data_value = 0x04;
  69  000d 35040000      	mov	_data_value,#4
  70                     ; 16     PCF8574_write(data_value);
  72  0011 a604          	ld	a,#4
  73  0013 cd0000        	call	_PCF8574_write
  75                     ; 18     delay_ms(10);
  77  0016 ae000a        	ldw	x,#10
  78  0019 cd0000        	call	_delay_ms
  80                     ; 20     LCD_send(0x33, CMD);
  82  001c ae3300        	ldw	x,#13056
  83  001f ad3b          	call	_LCD_send
  85                     ; 22     LCD_send(0x32, CMD);
  87  0021 ae3200        	ldw	x,#12800
  88  0024 ad36          	call	_LCD_send
  90                     ; 24     LCD_send((_4_pin_interface | _2_row_display | _5x7_dots), CMD);        
  92  0026 ae2800        	ldw	x,#10240
  93  0029 ad31          	call	_LCD_send
  95                     ; 26     LCD_send((display_on | cursor_off | blink_off), CMD);    
  97  002b ae0c00        	ldw	x,#3072
  98  002e ad2c          	call	_LCD_send
 100                     ; 28     LCD_send((clear_display), CMD);        
 102  0030 ae0100        	ldw	x,#256
 103  0033 ad27          	call	_LCD_send
 105                     ; 30     LCD_send((cursor_direction_inc | display_no_shift), CMD);       
 107  0035 ae0600        	ldw	x,#1536
 108  0038 ad22          	call	_LCD_send
 110                     ; 32 }  
 113  003a 81            	ret
 139                     ; 34 void LCD_toggle_EN(void)
 139                     ; 35 
 139                     ; 36 {
 140                     	switch	.text
 141  003b               _LCD_toggle_EN:
 145                     ; 38     data_value |= 0x04;
 147  003b 72140000      	bset	_data_value,#2
 148                     ; 40     PCF8574_write(data_value);
 150  003f b600          	ld	a,_data_value
 151  0041 cd0000        	call	_PCF8574_write
 153                     ; 42     delay_ms(dly);
 155  0044 ae0002        	ldw	x,#2
 156  0047 cd0000        	call	_delay_ms
 158                     ; 44     data_value &= 0xF9;
 160  004a b600          	ld	a,_data_value
 161  004c a4f9          	and	a,#249
 162  004e b700          	ld	_data_value,a
 163                     ; 46     PCF8574_write(data_value);
 165  0050 b600          	ld	a,_data_value
 166  0052 cd0000        	call	_PCF8574_write
 168                     ; 48     delay_ms(dly);
 170  0055 ae0002        	ldw	x,#2
 171  0058 cd0000        	call	_delay_ms
 173                     ; 50 }
 176  005b 81            	ret
 224                     ; 52 void LCD_send(unsigned char value, unsigned char mode)
 224                     ; 53 
 224                     ; 54 {
 225                     	switch	.text
 226  005c               _LCD_send:
 228  005c 89            	pushw	x
 229       00000000      OFST:	set	0
 232                     ; 56     switch(mode)
 234  005d 9f            	ld	a,xl
 236                     ; 76            break;
 237  005e 4d            	tnz	a
 238  005f 2705          	jreq	L13
 239  0061 4a            	dec	a
 240  0062 270a          	jreq	L33
 241  0064 200c          	jra	L56
 242  0066               L13:
 243                     ; 64             data_value &= 0xF4;
 245  0066 b600          	ld	a,_data_value
 246  0068 a4f4          	and	a,#244
 247  006a b700          	ld	_data_value,a
 248                     ; 66             break;
 250  006c 2004          	jra	L56
 251  006e               L33:
 252                     ; 74            data_value |= 0x01;
 254  006e 72100000      	bset	_data_value,#0
 255                     ; 76            break;
 257  0072               L56:
 258                     ; 82     switch(bl_state)
 260  0072 b600          	ld	a,_bl_state
 262                     ; 102           break;
 263  0074 4d            	tnz	a
 264  0075 2709          	jreq	L73
 265  0077 4a            	dec	a
 266  0078 260a          	jrne	L17
 267                     ; 90           data_value |= 0x08;
 269  007a 72160000      	bset	_data_value,#3
 270                     ; 92           break;
 272  007e 2004          	jra	L17
 273  0080               L73:
 274                     ; 100           data_value &= 0xF7;
 276  0080 72170000      	bres	_data_value,#3
 277                     ; 102           break;
 279  0084               L17:
 280                     ; 108     PCF8574_write(data_value);
 282  0084 b600          	ld	a,_data_value
 283  0086 cd0000        	call	_PCF8574_write
 285                     ; 110     LCD_4bit_send(value);
 287  0089 7b01          	ld	a,(OFST+1,sp)
 288  008b ad08          	call	_LCD_4bit_send
 290                     ; 112     delay_ms(dly);
 292  008d ae0002        	ldw	x,#2
 293  0090 cd0000        	call	_delay_ms
 295                     ; 114 }
 298  0093 85            	popw	x
 299  0094 81            	ret
 345                     ; 116 void LCD_4bit_send(unsigned char lcd_data)      
 345                     ; 117 
 345                     ; 118 {
 346                     	switch	.text
 347  0095               _LCD_4bit_send:
 349  0095 88            	push	a
 350  0096 88            	push	a
 351       00000001      OFST:	set	1
 354                     ; 120     unsigned char temp = 0x00;
 356                     ; 122     temp = (lcd_data & 0xF0);
 358  0097 a4f0          	and	a,#240
 359  0099 6b01          	ld	(OFST+0,sp),a
 361                     ; 124     data_value &= 0x0F;
 363  009b b600          	ld	a,_data_value
 364  009d a40f          	and	a,#15
 365  009f b700          	ld	_data_value,a
 366                     ; 126     data_value |= temp;
 368  00a1 b600          	ld	a,_data_value
 369  00a3 1a01          	or	a,(OFST+0,sp)
 370  00a5 b700          	ld	_data_value,a
 371                     ; 128     PCF8574_write(data_value);
 373  00a7 b600          	ld	a,_data_value
 374  00a9 cd0000        	call	_PCF8574_write
 376                     ; 130     LCD_toggle_EN();
 378  00ac ad8d          	call	_LCD_toggle_EN
 380                     ; 132     temp = (lcd_data & 0x0F);
 382  00ae 7b02          	ld	a,(OFST+1,sp)
 383  00b0 a40f          	and	a,#15
 384  00b2 6b01          	ld	(OFST+0,sp),a
 386                     ; 134     temp <<= 0x04;
 388  00b4 7b01          	ld	a,(OFST+0,sp)
 389  00b6 4e            	swap	a
 390  00b7 a4f0          	and	a,#240
 391  00b9 6b01          	ld	(OFST+0,sp),a
 393                     ; 136     data_value &= 0x0F;
 395  00bb b600          	ld	a,_data_value
 396  00bd a40f          	and	a,#15
 397  00bf b700          	ld	_data_value,a
 398                     ; 138     data_value |= temp;
 400  00c1 b600          	ld	a,_data_value
 401  00c3 1a01          	or	a,(OFST+0,sp)
 402  00c5 b700          	ld	_data_value,a
 403                     ; 140     PCF8574_write(data_value);
 405  00c7 b600          	ld	a,_data_value
 406  00c9 cd0000        	call	_PCF8574_write
 408                     ; 142     LCD_toggle_EN();
 410  00cc cd003b        	call	_LCD_toggle_EN
 412                     ; 144 } 
 415  00cf 85            	popw	x
 416  00d0 81            	ret
 452                     ; 146 void LCD_putstr(char *lcd_string)
 452                     ; 147 
 452                     ; 148 {
 453                     	switch	.text
 454  00d1               _LCD_putstr:
 456  00d1 89            	pushw	x
 457       00000000      OFST:	set	0
 460  00d2               L331:
 461                     ; 154         LCD_putchar(*lcd_string++);
 463  00d2 1e01          	ldw	x,(OFST+1,sp)
 464  00d4 1c0001        	addw	x,#1
 465  00d7 1f01          	ldw	(OFST+1,sp),x
 466  00d9 1d0001        	subw	x,#1
 467  00dc f6            	ld	a,(x)
 468  00dd ad07          	call	_LCD_putchar
 470                     ; 156     }while(*lcd_string != '\0') ;
 472  00df 1e01          	ldw	x,(OFST+1,sp)
 473  00e1 7d            	tnz	(x)
 474  00e2 26ee          	jrne	L331
 475                     ; 158 }
 478  00e4 85            	popw	x
 479  00e5 81            	ret
 514                     ; 160 void LCD_putchar(char char_data)
 514                     ; 161 
 514                     ; 162 {
 515                     	switch	.text
 516  00e6               _LCD_putchar:
 520                     ; 164     if((char_data >= 0x20) && (char_data <= 0x7F))
 522  00e6 a120          	cp	a,#32
 523  00e8 250b          	jrult	L751
 525  00ea a180          	cp	a,#128
 526  00ec 2407          	jruge	L751
 527                     ; 168        LCD_send(char_data, DAT);
 529  00ee ae0001        	ldw	x,#1
 530  00f1 95            	ld	xh,a
 531  00f2 cd005c        	call	_LCD_send
 533  00f5               L751:
 534                     ; 172 }
 537  00f5 81            	ret
 561                     ; 174 void LCD_clear_home(void)
 561                     ; 175 
 561                     ; 176 {
 562                     	switch	.text
 563  00f6               _LCD_clear_home:
 567                     ; 178     LCD_send(clear_display, CMD);
 569  00f6 ae0100        	ldw	x,#256
 570  00f9 cd005c        	call	_LCD_send
 572                     ; 180     LCD_send(goto_home, CMD);
 574  00fc ae0200        	ldw	x,#512
 575  00ff cd005c        	call	_LCD_send
 577                     ; 182 }
 580  0102 81            	ret
 624                     ; 184 void LCD_goto(unsigned char x_pos,unsigned char y_pos)
 624                     ; 185 
 624                     ; 186 {                                                   
 625                     	switch	.text
 626  0103               _LCD_goto:
 628  0103 89            	pushw	x
 629       00000000      OFST:	set	0
 632                     ; 188     if(y_pos == 0)   
 634  0104 9f            	ld	a,xl
 635  0105 4d            	tnz	a
 636  0106 260a          	jrne	L312
 637                     ; 192         LCD_send((0x80 | x_pos), CMD);
 639  0108 9e            	ld	a,xh
 640  0109 aa80          	or	a,#128
 641  010b 5f            	clrw	x
 642  010c 95            	ld	xh,a
 643  010d cd005c        	call	_LCD_send
 646  0110 2009          	jra	L512
 647  0112               L312:
 648                     ; 200         LCD_send((0x80 | 0x40 | x_pos), CMD);
 650  0112 7b01          	ld	a,(OFST+1,sp)
 651  0114 aac0          	or	a,#192
 652  0116 5f            	clrw	x
 653  0117 95            	ld	xh,a
 654  0118 cd005c        	call	_LCD_send
 656  011b               L512:
 657                     ; 204 }
 660  011b 85            	popw	x
 661  011c 81            	ret
 674                     	xref	_delay_ms
 675                     	xdef	_LCD_goto
 676                     	xdef	_LCD_clear_home
 677                     	xdef	_LCD_putchar
 678                     	xdef	_LCD_putstr
 679                     	xdef	_LCD_4bit_send
 680                     	xdef	_LCD_send
 681                     	xdef	_LCD_toggle_EN
 682                     	xdef	_LCD_init
 683                     	xref.b	_data_value
 684                     	xref.b	_bl_state
 685                     	xref	_PCF8574_write
 686                     	xref	_PCF8574_init
 705                     	end
