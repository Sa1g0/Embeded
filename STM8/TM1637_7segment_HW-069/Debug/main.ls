   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  68                     ; 11 void main(void)
  68                     ; 12 {	
  70                     	switch	.text
  71  0000               _main:
  73  0000 5203          	subw	sp,#3
  74       00000003      OFST:	set	3
  77                     ; 13 	int i = 0;
  79  0002 5f            	clrw	x
  80  0003 1f02          	ldw	(OFST-1,sp),x
  82                     ; 14 	char j = OFF;
  84  0005 a60a          	ld	a,#10
  85  0007 6b01          	ld	(OFST-2,sp),a
  87                     ; 15 	clock_config();
  89  0009 cd0122        	call	_clock_config
  91                     ; 16 	GPIO_setup();
  93  000c cd0121        	call	_GPIO_setup
  95                     ; 17 	tm1637_init();	
  97  000f cd0000        	call	_tm1637_init
  99  0012               L33:
 100                     ; 23 			for(i; i <= 9999; i+=4)
 103  0012 2036          	jra	L34
 104  0014               L73:
 105                     ; 25 				if(i%100 == 0)
 107  0014 1e02          	ldw	x,(OFST-1,sp)
 108  0016 a664          	ld	a,#100
 109  0018 cd0000        	call	c_smodx
 111  001b a30000        	cpw	x,#0
 112  001e 2604          	jrne	L74
 113                     ; 26 				j = OFF;
 115  0020 a60a          	ld	a,#10
 116  0022 6b01          	ld	(OFST-2,sp),a
 118  0024               L74:
 119                     ; 27 				if(i%99 == 0)
 121  0024 1e02          	ldw	x,(OFST-1,sp)
 122  0026 a663          	ld	a,#99
 123  0028 cd0000        	call	c_smodx
 125  002b a30000        	cpw	x,#0
 126  002e 2604          	jrne	L15
 127                     ; 28 				j = ON;
 129  0030 a6ff          	ld	a,#255
 130  0032 6b01          	ld	(OFST-2,sp),a
 132  0034               L15:
 133                     ; 29 				display_string(j, i);
 135  0034 1e02          	ldw	x,(OFST-1,sp)
 136  0036 89            	pushw	x
 137  0037 7b03          	ld	a,(OFST+0,sp)
 138  0039 cd0000        	call	_display_string
 140  003c 85            	popw	x
 141                     ; 30 				delay_ms(1);
 143  003d ae0001        	ldw	x,#1
 144  0040 cd0000        	call	_delay_ms
 146                     ; 23 			for(i; i <= 9999; i+=4)
 148  0043 1e02          	ldw	x,(OFST-1,sp)
 149  0045 1c0004        	addw	x,#4
 150  0048 1f02          	ldw	(OFST-1,sp),x
 152  004a               L34:
 155  004a 9c            	rvf
 156  004b 1e02          	ldw	x,(OFST-1,sp)
 157  004d a32710        	cpw	x,#10000
 158  0050 2fc2          	jrslt	L73
 159                     ; 32 			i=0;
 161  0052 5f            	clrw	x
 162  0053 1f02          	ldw	(OFST-1,sp),x
 164                     ; 33 			for(i; i <= 10; i++)
 167  0055 202f          	jra	L75
 168  0057               L35:
 169                     ; 35 				display_by_segment(OFF, 1, OFF, 1, OFF);
 171  0057 4b0a          	push	#10
 172  0059 4b01          	push	#1
 173  005b 4b0a          	push	#10
 174  005d ae0a01        	ldw	x,#2561
 175  0060 cd0000        	call	_display_by_segment
 177  0063 5b03          	addw	sp,#3
 178                     ; 36 				delay_ms(300);
 180  0065 ae012c        	ldw	x,#300
 181  0068 cd0000        	call	_delay_ms
 183                     ; 37 				display_by_segment(OFF, OFF, 1, OFF, 1);
 185  006b 4b01          	push	#1
 186  006d 4b0a          	push	#10
 187  006f 4b01          	push	#1
 188  0071 ae0a0a        	ldw	x,#2570
 189  0074 cd0000        	call	_display_by_segment
 191  0077 5b03          	addw	sp,#3
 192                     ; 38 				delay_ms(300);
 194  0079 ae012c        	ldw	x,#300
 195  007c cd0000        	call	_delay_ms
 197                     ; 33 			for(i; i <= 10; i++)
 199  007f 1e02          	ldw	x,(OFST-1,sp)
 200  0081 1c0001        	addw	x,#1
 201  0084 1f02          	ldw	(OFST-1,sp),x
 203  0086               L75:
 206  0086 9c            	rvf
 207  0087 1e02          	ldw	x,(OFST-1,sp)
 208  0089 a3000b        	cpw	x,#11
 209  008c 2fc9          	jrslt	L35
 210                     ; 40 			i=0;
 212  008e 5f            	clrw	x
 213  008f 1f02          	ldw	(OFST-1,sp),x
 215                     ; 41 			for(i; i <= 10; i++)
 218  0091 2057          	jra	L76
 219  0093               L36:
 220                     ; 43 				display_by_segment(OFF, 1, OFF, OFF, OFF);
 222  0093 4b0a          	push	#10
 223  0095 4b0a          	push	#10
 224  0097 4b0a          	push	#10
 225  0099 ae0a01        	ldw	x,#2561
 226  009c cd0000        	call	_display_by_segment
 228  009f 5b03          	addw	sp,#3
 229                     ; 44 				delay_ms(200);
 231  00a1 ae00c8        	ldw	x,#200
 232  00a4 cd0000        	call	_delay_ms
 234                     ; 45 				display_by_segment(OFF, OFF, 1, OFF, OFF);
 236  00a7 4b0a          	push	#10
 237  00a9 4b0a          	push	#10
 238  00ab 4b01          	push	#1
 239  00ad ae0a0a        	ldw	x,#2570
 240  00b0 cd0000        	call	_display_by_segment
 242  00b3 5b03          	addw	sp,#3
 243                     ; 46 				delay_ms(200);
 245  00b5 ae00c8        	ldw	x,#200
 246  00b8 cd0000        	call	_delay_ms
 248                     ; 47 				display_by_segment(OFF, OFF, OFF, 1, OFF);
 250  00bb 4b0a          	push	#10
 251  00bd 4b01          	push	#1
 252  00bf 4b0a          	push	#10
 253  00c1 ae0a0a        	ldw	x,#2570
 254  00c4 cd0000        	call	_display_by_segment
 256  00c7 5b03          	addw	sp,#3
 257                     ; 48 				delay_ms(200);
 259  00c9 ae00c8        	ldw	x,#200
 260  00cc cd0000        	call	_delay_ms
 262                     ; 49 				display_by_segment(OFF, OFF, OFF, OFF, 1);
 264  00cf 4b01          	push	#1
 265  00d1 4b0a          	push	#10
 266  00d3 4b0a          	push	#10
 267  00d5 ae0a0a        	ldw	x,#2570
 268  00d8 cd0000        	call	_display_by_segment
 270  00db 5b03          	addw	sp,#3
 271                     ; 50 				delay_ms(200);
 273  00dd ae00c8        	ldw	x,#200
 274  00e0 cd0000        	call	_delay_ms
 276                     ; 41 			for(i; i <= 10; i++)
 278  00e3 1e02          	ldw	x,(OFST-1,sp)
 279  00e5 1c0001        	addw	x,#1
 280  00e8 1f02          	ldw	(OFST-1,sp),x
 282  00ea               L76:
 285  00ea 9c            	rvf
 286  00eb 1e02          	ldw	x,(OFST-1,sp)
 287  00ed a3000b        	cpw	x,#11
 288  00f0 2fa1          	jrslt	L36
 289                     ; 52 			i=0;
 291  00f2 5f            	clrw	x
 292  00f3 1f02          	ldw	(OFST-1,sp),x
 294                     ; 54 			display_by_segment(OFF, 4, 0, 90, 91);
 296  00f5 4b5b          	push	#91
 297  00f7 4b5a          	push	#90
 298  00f9 4b00          	push	#0
 299  00fb ae0a04        	ldw	x,#2564
 300  00fe cd0000        	call	_display_by_segment
 302  0101 5b03          	addw	sp,#3
 303                     ; 55 			delay_ms(2000);
 305  0103 ae07d0        	ldw	x,#2000
 306  0106 cd0000        	call	_delay_ms
 308                     ; 56 			display_by_segment(OFF, 93, 94, 94, OFF);
 310  0109 4b0a          	push	#10
 311  010b 4b5e          	push	#94
 312  010d 4b5e          	push	#94
 313  010f ae0a5d        	ldw	x,#2653
 314  0112 cd0000        	call	_display_by_segment
 316  0115 5b03          	addw	sp,#3
 317                     ; 57 			delay_ms(2000);
 319  0117 ae07d0        	ldw	x,#2000
 320  011a cd0000        	call	_delay_ms
 323  011d ac120012      	jpf	L33
 346                     ; 63 void GPIO_setup(void)
 346                     ; 64 {
 347                     	switch	.text
 348  0121               _GPIO_setup:
 352                     ; 66 }
 355  0121 81            	ret
 388                     ; 68 void clock_config(void)
 388                     ; 69 {
 389                     	switch	.text
 390  0122               _clock_config:
 394                     ; 70 	CLK_DeInit();
 396  0122 cd0000        	call	_CLK_DeInit
 398                     ; 72   CLK_HSECmd(DISABLE);
 400  0125 4f            	clr	a
 401  0126 cd0000        	call	_CLK_HSECmd
 403                     ; 74   CLK_LSICmd(DISABLE);
 405  0129 4f            	clr	a
 406  012a cd0000        	call	_CLK_LSICmd
 408                     ; 76   CLK_HSICmd(ENABLE);
 410  012d a601          	ld	a,#1
 411  012f cd0000        	call	_CLK_HSICmd
 414  0132               L511:
 415                     ; 78   while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE);
 417  0132 ae0102        	ldw	x,#258
 418  0135 cd0000        	call	_CLK_GetFlagStatus
 420  0138 4d            	tnz	a
 421  0139 27f7          	jreq	L511
 422                     ; 80   CLK_ClockSwitchCmd(ENABLE);
 424  013b a601          	ld	a,#1
 425  013d cd0000        	call	_CLK_ClockSwitchCmd
 427                     ; 82   CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 429  0140 4f            	clr	a
 430  0141 cd0000        	call	_CLK_HSIPrescalerConfig
 432                     ; 84   CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 434  0144 a680          	ld	a,#128
 435  0146 cd0000        	call	_CLK_SYSCLKConfig
 437                     ; 86   CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI,
 437                     ; 87 
 437                     ; 88   DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);
 439  0149 4b01          	push	#1
 440  014b 4b00          	push	#0
 441  014d ae01e1        	ldw	x,#481
 442  0150 cd0000        	call	_CLK_ClockSwitchConfig
 444  0153 85            	popw	x
 445                     ; 90   CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, DISABLE);
 447  0154 5f            	clrw	x
 448  0155 cd0000        	call	_CLK_PeripheralClockConfig
 450                     ; 92   CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
 452  0158 ae0100        	ldw	x,#256
 453  015b cd0000        	call	_CLK_PeripheralClockConfig
 455                     ; 94   CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, DISABLE);
 457  015e ae1300        	ldw	x,#4864
 458  0161 cd0000        	call	_CLK_PeripheralClockConfig
 460                     ; 96   CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
 462  0164 ae1200        	ldw	x,#4608
 463  0167 cd0000        	call	_CLK_PeripheralClockConfig
 465                     ; 98   CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, DISABLE);
 467  016a ae0300        	ldw	x,#768
 468  016d cd0000        	call	_CLK_PeripheralClockConfig
 470                     ; 100   CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, DISABLE);
 472  0170 ae0700        	ldw	x,#1792
 473  0173 cd0000        	call	_CLK_PeripheralClockConfig
 475                     ; 102   CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, DISABLE);
 477  0176 ae0500        	ldw	x,#1280
 478  0179 cd0000        	call	_CLK_PeripheralClockConfig
 480                     ; 105 }
 483  017c 81            	ret
 496                     	xdef	_main
 497                     	xdef	_clock_config
 498                     	xdef	_GPIO_setup
 499                     	xref	_display_string
 500                     	xref	_display_by_segment
 501                     	xref	_tm1637_init
 502                     	xref	_delay_ms
 503                     	xref	_CLK_GetFlagStatus
 504                     	xref	_CLK_SYSCLKConfig
 505                     	xref	_CLK_HSIPrescalerConfig
 506                     	xref	_CLK_ClockSwitchConfig
 507                     	xref	_CLK_PeripheralClockConfig
 508                     	xref	_CLK_ClockSwitchCmd
 509                     	xref	_CLK_LSICmd
 510                     	xref	_CLK_HSICmd
 511                     	xref	_CLK_HSECmd
 512                     	xref	_CLK_DeInit
 513                     	xref.b	c_x
 532                     	xref	c_smodx
 533                     	end
