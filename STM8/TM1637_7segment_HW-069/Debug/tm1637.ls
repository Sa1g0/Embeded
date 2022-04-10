   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  44                     ; 4 void tm1637_gpio(void)
  44                     ; 5 {
  46                     	switch	.text
  47  0000               _tm1637_gpio:
  51                     ; 6 	GPIO_DeInit(GPIO_SELECT);
  53  0000 ae5005        	ldw	x,#20485
  54  0003 cd0000        	call	_GPIO_DeInit
  56                     ; 7 	GPIO_Init(GPIO_SELECT, CLK_PIN, GPIO_MODE_OUT_OD_LOW_SLOW);
  58  0006 4b80          	push	#128
  59  0008 4b10          	push	#16
  60  000a ae5005        	ldw	x,#20485
  61  000d cd0000        	call	_GPIO_Init
  63  0010 85            	popw	x
  64                     ; 8 	GPIO_Init(GPIO_SELECT, DIO_PIN, GPIO_MODE_OUT_OD_LOW_SLOW);	
  66  0011 4b80          	push	#128
  67  0013 4b20          	push	#32
  68  0015 ae5005        	ldw	x,#20485
  69  0018 cd0000        	call	_GPIO_Init
  71  001b 85            	popw	x
  72                     ; 9 }
  75  001c 81            	ret
 100                     ; 12 void tm1637_init(void)
 100                     ; 13 {
 101                     	switch	.text
 102  001d               _tm1637_init:
 106                     ; 14 	tm1637_gpio();
 108  001d ade1          	call	_tm1637_gpio
 110                     ; 15 	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
 112  001f 4b10          	push	#16
 113  0021 ae5005        	ldw	x,#20485
 114  0024 cd0000        	call	_GPIO_WriteHigh
 116  0027 84            	pop	a
 117                     ; 16 	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);
 119  0028 4b20          	push	#32
 120  002a ae5005        	ldw	x,#20485
 121  002d cd0000        	call	_GPIO_WriteHigh
 123  0030 84            	pop	a
 124                     ; 17 }
 127  0031 81            	ret
 151                     ; 20 void tm1637_clk_h(void)
 151                     ; 21 {
 152                     	switch	.text
 153  0032               _tm1637_clk_h:
 157                     ; 22 	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
 159  0032 4b10          	push	#16
 160  0034 ae5005        	ldw	x,#20485
 161  0037 cd0000        	call	_GPIO_WriteHigh
 163  003a 84            	pop	a
 164                     ; 23 	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
 166  003b 4b10          	push	#16
 167  003d ae5005        	ldw	x,#20485
 168  0040 cd0000        	call	_GPIO_WriteHigh
 170  0043 84            	pop	a
 171                     ; 24 	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
 173  0044 4b10          	push	#16
 174  0046 ae5005        	ldw	x,#20485
 175  0049 cd0000        	call	_GPIO_WriteHigh
 177  004c 84            	pop	a
 178                     ; 25 	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
 180  004d 4b10          	push	#16
 181  004f ae5005        	ldw	x,#20485
 182  0052 cd0000        	call	_GPIO_WriteHigh
 184  0055 84            	pop	a
 185                     ; 26 	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
 187  0056 4b10          	push	#16
 188  0058 ae5005        	ldw	x,#20485
 189  005b cd0000        	call	_GPIO_WriteHigh
 191  005e 84            	pop	a
 192                     ; 27 	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
 194  005f 4b10          	push	#16
 195  0061 ae5005        	ldw	x,#20485
 196  0064 cd0000        	call	_GPIO_WriteHigh
 198  0067 84            	pop	a
 199                     ; 28 }
 202  0068 81            	ret
 226                     ; 31 void tm1637_clk_l(void)
 226                     ; 32 {
 227                     	switch	.text
 228  0069               _tm1637_clk_l:
 232                     ; 33 	GPIO_WriteLow(GPIO_SELECT, CLK_PIN);
 234  0069 4b10          	push	#16
 235  006b ae5005        	ldw	x,#20485
 236  006e cd0000        	call	_GPIO_WriteLow
 238  0071 84            	pop	a
 239                     ; 34 	GPIO_WriteLow(GPIO_SELECT, CLK_PIN);
 241  0072 4b10          	push	#16
 242  0074 ae5005        	ldw	x,#20485
 243  0077 cd0000        	call	_GPIO_WriteLow
 245  007a 84            	pop	a
 246                     ; 35 	GPIO_WriteLow(GPIO_SELECT, CLK_PIN);
 248  007b 4b10          	push	#16
 249  007d ae5005        	ldw	x,#20485
 250  0080 cd0000        	call	_GPIO_WriteLow
 252  0083 84            	pop	a
 253                     ; 36 }
 256  0084 81            	ret
 280                     ; 39 void tm1637_dio_h(void)
 280                     ; 40 {
 281                     	switch	.text
 282  0085               _tm1637_dio_h:
 286                     ; 41 	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);
 288  0085 4b20          	push	#32
 289  0087 ae5005        	ldw	x,#20485
 290  008a cd0000        	call	_GPIO_WriteHigh
 292  008d 84            	pop	a
 293                     ; 42 	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);
 295  008e 4b20          	push	#32
 296  0090 ae5005        	ldw	x,#20485
 297  0093 cd0000        	call	_GPIO_WriteHigh
 299  0096 84            	pop	a
 300                     ; 43 	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);	
 302  0097 4b20          	push	#32
 303  0099 ae5005        	ldw	x,#20485
 304  009c cd0000        	call	_GPIO_WriteHigh
 306  009f 84            	pop	a
 307                     ; 44 }
 310  00a0 81            	ret
 334                     ; 47 void tm1637_dio_l(void)
 334                     ; 48 {
 335                     	switch	.text
 336  00a1               _tm1637_dio_l:
 340                     ; 49 	GPIO_WriteLow(GPIO_SELECT, DIO_PIN);
 342  00a1 4b20          	push	#32
 343  00a3 ae5005        	ldw	x,#20485
 344  00a6 cd0000        	call	_GPIO_WriteLow
 346  00a9 84            	pop	a
 347                     ; 50 	GPIO_WriteLow(GPIO_SELECT, DIO_PIN);
 349  00aa 4b20          	push	#32
 350  00ac ae5005        	ldw	x,#20485
 351  00af cd0000        	call	_GPIO_WriteLow
 353  00b2 84            	pop	a
 354                     ; 51 	GPIO_WriteLow(GPIO_SELECT, DIO_PIN);
 356  00b3 4b20          	push	#32
 357  00b5 ae5005        	ldw	x,#20485
 358  00b8 cd0000        	call	_GPIO_WriteLow
 360  00bb 84            	pop	a
 361                     ; 52 }
 364  00bc 81            	ret
 390                     ; 55 void tm1637_start_bit(void)
 390                     ; 56 {
 391                     	switch	.text
 392  00bd               _tm1637_start_bit:
 396                     ; 57 	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
 398  00bd 4b10          	push	#16
 399  00bf ae5005        	ldw	x,#20485
 400  00c2 cd0000        	call	_GPIO_WriteHigh
 402  00c5 84            	pop	a
 403                     ; 58 	GPIO_WriteHigh(GPIO_SELECT, CLK_PIN);
 405  00c6 4b10          	push	#16
 406  00c8 ae5005        	ldw	x,#20485
 407  00cb cd0000        	call	_GPIO_WriteHigh
 409  00ce 84            	pop	a
 410                     ; 59 	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);
 412  00cf 4b20          	push	#32
 413  00d1 ae5005        	ldw	x,#20485
 414  00d4 cd0000        	call	_GPIO_WriteHigh
 416  00d7 84            	pop	a
 417                     ; 60 	GPIO_WriteHigh(GPIO_SELECT, DIO_PIN);
 419  00d8 4b20          	push	#32
 420  00da ae5005        	ldw	x,#20485
 421  00dd cd0000        	call	_GPIO_WriteHigh
 423  00e0 84            	pop	a
 424                     ; 61 	tm1637_dio_l();
 426  00e1 adbe          	call	_tm1637_dio_l
 428                     ; 62 	tm1637_clk_l();	
 430  00e3 ad84          	call	_tm1637_clk_l
 432                     ; 63 }
 435  00e5 81            	ret
 462                     ; 66 void tm1637_stop_bit(void)
 462                     ; 67 {
 463                     	switch	.text
 464  00e6               _tm1637_stop_bit:
 468                     ; 68 	tm1637_clk_l();	
 470  00e6 ad81          	call	_tm1637_clk_l
 472                     ; 69 	tm1637_dio_l();
 474  00e8 adb7          	call	_tm1637_dio_l
 476                     ; 70 	tm1637_clk_h();
 478  00ea cd0032        	call	_tm1637_clk_h
 480                     ; 71 	tm1637_dio_h();
 482  00ed ad96          	call	_tm1637_dio_h
 484                     ; 72 }
 487  00ef 81            	ret
 515                     ; 75 void tm1637_ack(void)
 515                     ; 76 {
 516                     	switch	.text
 517  00f0               _tm1637_ack:
 521                     ; 77 		GPIO_Init(GPIO_SELECT, DIO_PIN, GPIO_MODE_IN_FL_NO_IT);
 523  00f0 4b00          	push	#0
 524  00f2 4b20          	push	#32
 525  00f4 ae5005        	ldw	x,#20485
 526  00f7 cd0000        	call	_GPIO_Init
 528  00fa 85            	popw	x
 530  00fb 2001          	jra	L321
 531  00fd               L121:
 532                     ; 80 			_asm ("nop");			
 535  00fd 9d            nop
 537  00fe               L321:
 538                     ; 78 		while (GPIO_ReadInputPin(GPIO_SELECT, DIO_PIN) != 0)
 540  00fe 4b20          	push	#32
 541  0100 ae5005        	ldw	x,#20485
 542  0103 cd0000        	call	_GPIO_ReadInputPin
 544  0106 5b01          	addw	sp,#1
 545  0108 4d            	tnz	a
 546  0109 26f2          	jrne	L121
 547                     ; 82 		tm1637_clk_h();
 549  010b cd0032        	call	_tm1637_clk_h
 551                     ; 83 		tm1637_dio_l();
 553  010e ad91          	call	_tm1637_dio_l
 555                     ; 84 		GPIO_Init(GPIO_SELECT, DIO_PIN, GPIO_MODE_OUT_OD_LOW_SLOW);			
 557  0110 4b80          	push	#128
 558  0112 4b20          	push	#32
 559  0114 ae5005        	ldw	x,#20485
 560  0117 cd0000        	call	_GPIO_Init
 562  011a 85            	popw	x
 563                     ; 85 }
 566  011b 81            	ret
 618                     ; 92 void tm1637_send_command1(char n[8])
 618                     ; 93 {
 619                     	switch	.text
 620  011c               _tm1637_send_command1:
 622  011c 89            	pushw	x
 623  011d 89            	pushw	x
 624       00000002      OFST:	set	2
 627                     ; 94 	int i=0;
 629  011e 5f            	clrw	x
 630  011f 1f01          	ldw	(OFST-1,sp),x
 632                     ; 96 	tm1637_start_bit();	
 634  0121 ad9a          	call	_tm1637_start_bit
 636                     ; 97 	for (i; i <= 7; i++)
 639  0123 201f          	jra	L551
 640  0125               L151:
 641                     ; 99 		if (n[i] == 1)
 643  0125 1e01          	ldw	x,(OFST-1,sp)
 644  0127 72fb03        	addw	x,(OFST+1,sp)
 645  012a f6            	ld	a,(x)
 646  012b a101          	cp	a,#1
 647  012d 2605          	jrne	L161
 648                     ; 101 			tm1637_dio_h();
 650  012f cd0085        	call	_tm1637_dio_h
 653  0132 2003          	jra	L361
 654  0134               L161:
 655                     ; 104 			tm1637_dio_l();
 657  0134 cd00a1        	call	_tm1637_dio_l
 659  0137               L361:
 660                     ; 106 		tm1637_clk_h();
 662  0137 cd0032        	call	_tm1637_clk_h
 664                     ; 107 		tm1637_clk_l();			
 666  013a cd0069        	call	_tm1637_clk_l
 668                     ; 97 	for (i; i <= 7; i++)
 670  013d 1e01          	ldw	x,(OFST-1,sp)
 671  013f 1c0001        	addw	x,#1
 672  0142 1f01          	ldw	(OFST-1,sp),x
 674  0144               L551:
 677  0144 9c            	rvf
 678  0145 1e01          	ldw	x,(OFST-1,sp)
 679  0147 a30008        	cpw	x,#8
 680  014a 2fd9          	jrslt	L151
 681                     ; 109 	tm1637_ack();
 683  014c ada2          	call	_tm1637_ack
 685                     ; 110 	tm1637_stop_bit();
 687  014e ad96          	call	_tm1637_stop_bit
 689                     ; 111 }
 692  0150 5b04          	addw	sp,#4
 693  0152 81            	ret
 744                     ; 114 void tm1637_send_command2(char n[8])
 744                     ; 115 {
 745                     	switch	.text
 746  0153               _tm1637_send_command2:
 748  0153 89            	pushw	x
 749  0154 89            	pushw	x
 750       00000002      OFST:	set	2
 753                     ; 116 	int i=0;
 755  0155 5f            	clrw	x
 756  0156 1f01          	ldw	(OFST-1,sp),x
 758                     ; 118 	tm1637_start_bit();	
 760  0158 cd00bd        	call	_tm1637_start_bit
 762                     ; 119 	for (i; i <= 7; i++)
 765  015b 201f          	jra	L312
 766  015d               L702:
 767                     ; 121 		if (n[i] == 1)
 769  015d 1e01          	ldw	x,(OFST-1,sp)
 770  015f 72fb03        	addw	x,(OFST+1,sp)
 771  0162 f6            	ld	a,(x)
 772  0163 a101          	cp	a,#1
 773  0165 2605          	jrne	L712
 774                     ; 123 			tm1637_dio_h();
 776  0167 cd0085        	call	_tm1637_dio_h
 779  016a 2003          	jra	L122
 780  016c               L712:
 781                     ; 126 			tm1637_dio_l();
 783  016c cd00a1        	call	_tm1637_dio_l
 785  016f               L122:
 786                     ; 128 		tm1637_clk_h();
 788  016f cd0032        	call	_tm1637_clk_h
 790                     ; 129 		tm1637_clk_l();			
 792  0172 cd0069        	call	_tm1637_clk_l
 794                     ; 119 	for (i; i <= 7; i++)
 796  0175 1e01          	ldw	x,(OFST-1,sp)
 797  0177 1c0001        	addw	x,#1
 798  017a 1f01          	ldw	(OFST-1,sp),x
 800  017c               L312:
 803  017c 9c            	rvf
 804  017d 1e01          	ldw	x,(OFST-1,sp)
 805  017f a30008        	cpw	x,#8
 806  0182 2fd9          	jrslt	L702
 807                     ; 131 	tm1637_ack();
 809  0184 cd00f0        	call	_tm1637_ack
 811                     ; 133 }
 814  0187 5b04          	addw	sp,#4
 815  0189 81            	ret
 864                     ; 136 void tm1637_send_data(char n[8])
 864                     ; 137 {
 865                     	switch	.text
 866  018a               _tm1637_send_data:
 868  018a 89            	pushw	x
 869  018b 89            	pushw	x
 870       00000002      OFST:	set	2
 873                     ; 138 	int i=0;
 875  018c 5f            	clrw	x
 876  018d 1f01          	ldw	(OFST-1,sp),x
 878                     ; 140 	tm1637_clk_l();
 880  018f cd0069        	call	_tm1637_clk_l
 882                     ; 141 	for (i; i <= 7; i++)
 885  0192 201f          	jra	L152
 886  0194               L542:
 887                     ; 143 		if (n[i] == 1)
 889  0194 1e01          	ldw	x,(OFST-1,sp)
 890  0196 72fb03        	addw	x,(OFST+1,sp)
 891  0199 f6            	ld	a,(x)
 892  019a a101          	cp	a,#1
 893  019c 2605          	jrne	L552
 894                     ; 145 			tm1637_dio_h();
 896  019e cd0085        	call	_tm1637_dio_h
 899  01a1 2003          	jra	L752
 900  01a3               L552:
 901                     ; 148 			tm1637_dio_l();
 903  01a3 cd00a1        	call	_tm1637_dio_l
 905  01a6               L752:
 906                     ; 150 		tm1637_clk_h();
 908  01a6 cd0032        	call	_tm1637_clk_h
 910                     ; 151 		tm1637_clk_l();			
 912  01a9 cd0069        	call	_tm1637_clk_l
 914                     ; 141 	for (i; i <= 7; i++)
 916  01ac 1e01          	ldw	x,(OFST-1,sp)
 917  01ae 1c0001        	addw	x,#1
 918  01b1 1f01          	ldw	(OFST-1,sp),x
 920  01b3               L152:
 923  01b3 9c            	rvf
 924  01b4 1e01          	ldw	x,(OFST-1,sp)
 925  01b6 a30008        	cpw	x,#8
 926  01b9 2fd9          	jrslt	L542
 927                     ; 153 	tm1637_ack();
 929  01bb cd00f0        	call	_tm1637_ack
 931                     ; 156 }
 934  01be 5b04          	addw	sp,#4
 935  01c0 81            	ret
 978                     .const:	section	.text
 979  0000               L04:
 980  0000 0215          	dc.w	L303
 981  0002 01df          	dc.w	L162
 982  0004 01e5          	dc.w	L362
 983  0006 01eb          	dc.w	L562
 984  0008 01f1          	dc.w	L762
 985  000a 01f7          	dc.w	L172
 986  000c 01fd          	dc.w	L372
 987  000e 0203          	dc.w	L572
 988  0010 0209          	dc.w	L772
 989  0012 020f          	dc.w	L103
 990                     ; 159 char translate(char n)
 990                     ; 160 {
 991                     	switch	.text
 992  01c1               _translate:
 994  01c1 88            	push	a
 995       00000001      OFST:	set	1
 998                     ; 163         switch (n)
1001                     ; 212 						break;
1002  01c2 a10a          	cp	a,#10
1003  01c4 2407          	jruge	L63
1004  01c6 5f            	clrw	x
1005  01c7 97            	ld	xl,a
1006  01c8 58            	sllw	x
1007  01c9 de0000        	ldw	x,(L04,x)
1008  01cc fc            	jp	(x)
1009  01cd               L63:
1010  01cd a05a          	sub	a,#90
1011  01cf 274a          	jreq	L503
1012  01d1 4a            	dec	a
1013  01d2 274d          	jreq	L703
1014  01d4 4a            	dec	a
1015  01d5 2750          	jreq	L113
1016  01d7 4a            	dec	a
1017  01d8 2753          	jreq	L313
1018  01da 4a            	dec	a
1019  01db 2756          	jreq	L513
1020  01dd 205a          	jra	L713
1021  01df               L162:
1022                     ; 165             case 1 : 
1022                     ; 166             ret = 0x06;
1024  01df a606          	ld	a,#6
1025  01e1 6b01          	ld	(OFST+0,sp),a
1027                     ; 167             break;
1029  01e3 2056          	jra	L543
1030  01e5               L362:
1031                     ; 168             case 2 : 
1031                     ; 169             ret = 0x5B;
1033  01e5 a65b          	ld	a,#91
1034  01e7 6b01          	ld	(OFST+0,sp),a
1036                     ; 170             break;
1038  01e9 2050          	jra	L543
1039  01eb               L562:
1040                     ; 171 						case 3 : 
1040                     ; 172             ret = 0x4F;
1042  01eb a64f          	ld	a,#79
1043  01ed 6b01          	ld	(OFST+0,sp),a
1045                     ; 173             break;
1047  01ef 204a          	jra	L543
1048  01f1               L762:
1049                     ; 174             case 4 : 
1049                     ; 175             ret = 0x66;
1051  01f1 a666          	ld	a,#102
1052  01f3 6b01          	ld	(OFST+0,sp),a
1054                     ; 176             break;
1056  01f5 2044          	jra	L543
1057  01f7               L172:
1058                     ; 177 						case 5 : 
1058                     ; 178             ret = 0x6D;
1060  01f7 a66d          	ld	a,#109
1061  01f9 6b01          	ld	(OFST+0,sp),a
1063                     ; 179             break;
1065  01fb 203e          	jra	L543
1066  01fd               L372:
1067                     ; 180             case 6 : 
1067                     ; 181             ret = 0x7D;
1069  01fd a67d          	ld	a,#125
1070  01ff 6b01          	ld	(OFST+0,sp),a
1072                     ; 182             break;
1074  0201 2038          	jra	L543
1075  0203               L572:
1076                     ; 183 						case 7 : 
1076                     ; 184             ret = 0x07;
1078  0203 a607          	ld	a,#7
1079  0205 6b01          	ld	(OFST+0,sp),a
1081                     ; 185             break;
1083  0207 2032          	jra	L543
1084  0209               L772:
1085                     ; 186             case 8 : 
1085                     ; 187             ret = 0x7F;
1087  0209 a67f          	ld	a,#127
1088  020b 6b01          	ld	(OFST+0,sp),a
1090                     ; 188             break;
1092  020d 202c          	jra	L543
1093  020f               L103:
1094                     ; 189 						case 9 : 
1094                     ; 190             ret = 0x6F;
1096  020f a66f          	ld	a,#111
1097  0211 6b01          	ld	(OFST+0,sp),a
1099                     ; 191             break;
1101  0213 2026          	jra	L543
1102  0215               L303:
1103                     ; 192             case 0 : 
1103                     ; 193             ret = 0x3F;
1105  0215 a63f          	ld	a,#63
1106  0217 6b01          	ld	(OFST+0,sp),a
1108                     ; 194             break;
1110  0219 2020          	jra	L543
1111  021b               L503:
1112                     ; 195 						case 90 :    // Degree  
1112                     ; 196             ret = 0x63;		
1114  021b a663          	ld	a,#99
1115  021d 6b01          	ld	(OFST+0,sp),a
1117                     ; 197 						break;
1119  021f 201a          	jra	L543
1120  0221               L703:
1121                     ; 198 						case 91 :              
1121                     ; 199             ret = 0x39;  // C       			Signs to be used only with display_by_segment();
1123  0221 a639          	ld	a,#57
1124  0223 6b01          	ld	(OFST+0,sp),a
1126                     ; 200 						break;
1128  0225 2014          	jra	L543
1129  0227               L113:
1130                     ; 201 						case 92 :             
1130                     ; 202             ret = 0x71;    // F       
1132  0227 a671          	ld	a,#113
1133  0229 6b01          	ld	(OFST+0,sp),a
1135                     ; 203 						break;
1137  022b 200e          	jra	L543
1138  022d               L313:
1139                     ; 204 						case 93 :             
1139                     ; 205             ret = 0x79;    // E      
1141  022d a679          	ld	a,#121
1142  022f 6b01          	ld	(OFST+0,sp),a
1144                     ; 206 						break;
1146  0231 2008          	jra	L543
1147  0233               L513:
1148                     ; 207 						case 94 :             
1148                     ; 208             ret = 0x50;    // r       
1150  0233 a650          	ld	a,#80
1151  0235 6b01          	ld	(OFST+0,sp),a
1153                     ; 209 						break;
1155  0237 2002          	jra	L543
1156  0239               L713:
1157                     ; 210             default:
1157                     ; 211             ret = 0x00;		
1159  0239 0f01          	clr	(OFST+0,sp)
1161                     ; 212 						break;
1163  023b               L543:
1164                     ; 214     return ret;    
1166  023b 7b01          	ld	a,(OFST+0,sp)
1169  023d 5b01          	addw	sp,#1
1170  023f 81            	ret
1325                     ; 224 void display_by_segment(char COLON, char GRID1, char GRID2, char GRID3, char GRID4)
1325                     ; 225 {
1326                     	switch	.text
1327  0240               _display_by_segment:
1329  0240 89            	pushw	x
1330  0241 523c          	subw	sp,#60
1331       0000003c      OFST:	set	60
1334                     ; 227 	int j =7;
1336  0243 ae0007        	ldw	x,#7
1337  0246 1f3b          	ldw	(OFST-1,sp),x
1339                     ; 237 	for (j; j >= 0; j--)
1342  0248 ac400340      	jpf	L154
1343  024c               L544:
1344                     ; 239 				a[j] = (WRITE >> j) & 1;
1346  024c 7b3c          	ld	a,(OFST+0,sp)
1347  024e 5f            	clrw	x
1348  024f 4d            	tnz	a
1349  0250 2a01          	jrpl	L44
1350  0252 53            	cplw	x
1351  0253               L44:
1352  0253 97            	ld	xl,a
1353  0254 a640          	ld	a,#64
1354  0256 5d            	tnzw	x
1355  0257 2704          	jreq	L64
1356  0259               L05:
1357  0259 47            	sra	a
1358  025a 5a            	decw	x
1359  025b 26fc          	jrne	L05
1360  025d               L64:
1361  025d a401          	and	a,#1
1362  025f 96            	ldw	x,sp
1363  0260 1c0003        	addw	x,#OFST-57
1364  0263 1f01          	ldw	(OFST-59,sp),x
1366  0265 1e3b          	ldw	x,(OFST-1,sp)
1367  0267 72fb01        	addw	x,(OFST-59,sp)
1368  026a f7            	ld	(x),a
1369                     ; 240 				b[j] = (DISPLAY_ON >> j) & 1;
1371  026b 7b3c          	ld	a,(OFST+0,sp)
1372  026d 5f            	clrw	x
1373  026e 4d            	tnz	a
1374  026f 2a01          	jrpl	L25
1375  0271 53            	cplw	x
1376  0272               L25:
1377  0272 97            	ld	xl,a
1378  0273 a68b          	ld	a,#139
1379  0275 5d            	tnzw	x
1380  0276 2704          	jreq	L45
1381  0278               L65:
1382  0278 44            	srl	a
1383  0279 5a            	decw	x
1384  027a 26fc          	jrne	L65
1385  027c               L45:
1386  027c a401          	and	a,#1
1387  027e 96            	ldw	x,sp
1388  027f 1c000b        	addw	x,#OFST-49
1389  0282 1f01          	ldw	(OFST-59,sp),x
1391  0284 1e3b          	ldw	x,(OFST-1,sp)
1392  0286 72fb01        	addw	x,(OFST-59,sp)
1393  0289 f7            	ld	(x),a
1394                     ; 241 				c[j] = (translate(GRID1) >> j) & 1;
1396  028a 7b3e          	ld	a,(OFST+2,sp)
1397  028c cd01c1        	call	_translate
1399  028f 88            	push	a
1400  0290 7b3d          	ld	a,(OFST+1,sp)
1401  0292 5f            	clrw	x
1402  0293 4d            	tnz	a
1403  0294 2a01          	jrpl	L06
1404  0296 53            	cplw	x
1405  0297               L06:
1406  0297 97            	ld	xl,a
1407  0298 84            	pop	a
1408  0299 5d            	tnzw	x
1409  029a 2704          	jreq	L26
1410  029c               L46:
1411  029c 44            	srl	a
1412  029d 5a            	decw	x
1413  029e 26fc          	jrne	L46
1414  02a0               L26:
1415  02a0 a401          	and	a,#1
1416  02a2 96            	ldw	x,sp
1417  02a3 1c0013        	addw	x,#OFST-41
1418  02a6 1f01          	ldw	(OFST-59,sp),x
1420  02a8 1e3b          	ldw	x,(OFST-1,sp)
1421  02aa 72fb01        	addw	x,(OFST-59,sp)
1422  02ad f7            	ld	(x),a
1423                     ; 242 				d[j] = (translate(GRID2) >> j) & 1;  //Re-write stored HEX to bool tab
1425  02ae 7b41          	ld	a,(OFST+5,sp)
1426  02b0 cd01c1        	call	_translate
1428  02b3 88            	push	a
1429  02b4 7b3d          	ld	a,(OFST+1,sp)
1430  02b6 5f            	clrw	x
1431  02b7 4d            	tnz	a
1432  02b8 2a01          	jrpl	L66
1433  02ba 53            	cplw	x
1434  02bb               L66:
1435  02bb 97            	ld	xl,a
1436  02bc 84            	pop	a
1437  02bd 5d            	tnzw	x
1438  02be 2704          	jreq	L07
1439  02c0               L27:
1440  02c0 44            	srl	a
1441  02c1 5a            	decw	x
1442  02c2 26fc          	jrne	L27
1443  02c4               L07:
1444  02c4 a401          	and	a,#1
1445  02c6 96            	ldw	x,sp
1446  02c7 1c0033        	addw	x,#OFST-9
1447  02ca 1f01          	ldw	(OFST-59,sp),x
1449  02cc 1e3b          	ldw	x,(OFST-1,sp)
1450  02ce 72fb01        	addw	x,(OFST-59,sp)
1451  02d1 f7            	ld	(x),a
1452                     ; 243 				e[j] = (translate(GRID3) >> j) & 1;
1454  02d2 7b42          	ld	a,(OFST+6,sp)
1455  02d4 cd01c1        	call	_translate
1457  02d7 88            	push	a
1458  02d8 7b3d          	ld	a,(OFST+1,sp)
1459  02da 5f            	clrw	x
1460  02db 4d            	tnz	a
1461  02dc 2a01          	jrpl	L47
1462  02de 53            	cplw	x
1463  02df               L47:
1464  02df 97            	ld	xl,a
1465  02e0 84            	pop	a
1466  02e1 5d            	tnzw	x
1467  02e2 2704          	jreq	L67
1468  02e4               L001:
1469  02e4 44            	srl	a
1470  02e5 5a            	decw	x
1471  02e6 26fc          	jrne	L001
1472  02e8               L67:
1473  02e8 a401          	and	a,#1
1474  02ea 96            	ldw	x,sp
1475  02eb 1c001b        	addw	x,#OFST-33
1476  02ee 1f01          	ldw	(OFST-59,sp),x
1478  02f0 1e3b          	ldw	x,(OFST-1,sp)
1479  02f2 72fb01        	addw	x,(OFST-59,sp)
1480  02f5 f7            	ld	(x),a
1481                     ; 244 				f[j] = (translate(GRID4) >> j) & 1;
1483  02f6 7b43          	ld	a,(OFST+7,sp)
1484  02f8 cd01c1        	call	_translate
1486  02fb 88            	push	a
1487  02fc 7b3d          	ld	a,(OFST+1,sp)
1488  02fe 5f            	clrw	x
1489  02ff 4d            	tnz	a
1490  0300 2a01          	jrpl	L201
1491  0302 53            	cplw	x
1492  0303               L201:
1493  0303 97            	ld	xl,a
1494  0304 84            	pop	a
1495  0305 5d            	tnzw	x
1496  0306 2704          	jreq	L401
1497  0308               L601:
1498  0308 44            	srl	a
1499  0309 5a            	decw	x
1500  030a 26fc          	jrne	L601
1501  030c               L401:
1502  030c a401          	and	a,#1
1503  030e 96            	ldw	x,sp
1504  030f 1c0023        	addw	x,#OFST-25
1505  0312 1f01          	ldw	(OFST-59,sp),x
1507  0314 1e3b          	ldw	x,(OFST-1,sp)
1508  0316 72fb01        	addw	x,(OFST-59,sp)
1509  0319 f7            	ld	(x),a
1510                     ; 245 				g[j] = (G1 >> j) & 1;
1512  031a 7b3c          	ld	a,(OFST+0,sp)
1513  031c 5f            	clrw	x
1514  031d 4d            	tnz	a
1515  031e 2a01          	jrpl	L011
1516  0320 53            	cplw	x
1517  0321               L011:
1518  0321 97            	ld	xl,a
1519  0322 a6c0          	ld	a,#192
1520  0324 5d            	tnzw	x
1521  0325 2704          	jreq	L211
1522  0327               L411:
1523  0327 44            	srl	a
1524  0328 5a            	decw	x
1525  0329 26fc          	jrne	L411
1526  032b               L211:
1527  032b a401          	and	a,#1
1528  032d 96            	ldw	x,sp
1529  032e 1c002b        	addw	x,#OFST-17
1530  0331 1f01          	ldw	(OFST-59,sp),x
1532  0333 1e3b          	ldw	x,(OFST-1,sp)
1533  0335 72fb01        	addw	x,(OFST-59,sp)
1534  0338 f7            	ld	(x),a
1535                     ; 237 	for (j; j >= 0; j--)
1537  0339 1e3b          	ldw	x,(OFST-1,sp)
1538  033b 1d0001        	subw	x,#1
1539  033e 1f3b          	ldw	(OFST-1,sp),x
1541  0340               L154:
1544  0340 9c            	rvf
1545  0341 1e3b          	ldw	x,(OFST-1,sp)
1546  0343 2f03          	jrslt	L611
1547  0345 cc024c        	jp	L544
1548  0348               L611:
1549                     ; 250 		if (COLON == ON)
1551  0348 7b3d          	ld	a,(OFST+1,sp)
1552  034a a1ff          	cp	a,#255
1553  034c 2606          	jrne	L554
1554                     ; 252 			d[7] = d[7] ^1;
1556  034e 7b3a          	ld	a,(OFST-2,sp)
1557  0350 a801          	xor	a,#1
1558  0352 6b3a          	ld	(OFST-2,sp),a
1560  0354               L554:
1561                     ; 256 		tm1637_send_command1(a);
1563  0354 96            	ldw	x,sp
1564  0355 1c0003        	addw	x,#OFST-57
1565  0358 cd011c        	call	_tm1637_send_command1
1567                     ; 257 		tm1637_send_command2(g);
1569  035b 96            	ldw	x,sp
1570  035c 1c002b        	addw	x,#OFST-17
1571  035f cd0153        	call	_tm1637_send_command2
1573                     ; 258 		tm1637_send_data(c);
1575  0362 96            	ldw	x,sp
1576  0363 1c0013        	addw	x,#OFST-41
1577  0366 cd018a        	call	_tm1637_send_data
1579                     ; 259 		tm1637_clk_l();
1581  0369 cd0069        	call	_tm1637_clk_l
1583                     ; 260 		tm1637_clk_l();
1585  036c cd0069        	call	_tm1637_clk_l
1587                     ; 261 		tm1637_clk_l();
1589  036f cd0069        	call	_tm1637_clk_l
1591                     ; 262 		tm1637_clk_l();
1593  0372 cd0069        	call	_tm1637_clk_l
1595                     ; 263 		tm1637_send_data(d);
1597  0375 96            	ldw	x,sp
1598  0376 1c0033        	addw	x,#OFST-9
1599  0379 cd018a        	call	_tm1637_send_data
1601                     ; 264 		tm1637_clk_l();
1603  037c cd0069        	call	_tm1637_clk_l
1605                     ; 265 		tm1637_clk_l();
1607  037f cd0069        	call	_tm1637_clk_l
1609                     ; 266 		tm1637_clk_l();
1611  0382 cd0069        	call	_tm1637_clk_l
1613                     ; 267 		tm1637_clk_l();															//*** Building protocol frame. By sending command1(set mode), command2(set address), 4 bytes of data ended with stop bit, command1(display controll)
1615  0385 cd0069        	call	_tm1637_clk_l
1617                     ; 268 		tm1637_send_data(e);
1619  0388 96            	ldw	x,sp
1620  0389 1c001b        	addw	x,#OFST-33
1621  038c cd018a        	call	_tm1637_send_data
1623                     ; 269 		tm1637_clk_l();
1625  038f cd0069        	call	_tm1637_clk_l
1627                     ; 270 		tm1637_clk_l();
1629  0392 cd0069        	call	_tm1637_clk_l
1631                     ; 271 		tm1637_clk_l();
1633  0395 cd0069        	call	_tm1637_clk_l
1635                     ; 272 		tm1637_clk_l();
1637  0398 cd0069        	call	_tm1637_clk_l
1639                     ; 273 		tm1637_send_data(f);
1641  039b 96            	ldw	x,sp
1642  039c 1c0023        	addw	x,#OFST-25
1643  039f cd018a        	call	_tm1637_send_data
1645                     ; 274 		tm1637_clk_l();
1647  03a2 cd0069        	call	_tm1637_clk_l
1649                     ; 275 		tm1637_clk_l();
1651  03a5 cd0069        	call	_tm1637_clk_l
1653                     ; 276 		tm1637_clk_l();
1655  03a8 cd0069        	call	_tm1637_clk_l
1657                     ; 277 		tm1637_clk_l();
1659  03ab cd0069        	call	_tm1637_clk_l
1661                     ; 278 	  tm1637_stop_bit();
1663  03ae cd00e6        	call	_tm1637_stop_bit
1665                     ; 279 		tm1637_send_command1(b);
1667  03b1 96            	ldw	x,sp
1668  03b2 1c000b        	addw	x,#OFST-49
1669  03b5 cd011c        	call	_tm1637_send_command1
1671                     ; 283 }
1674  03b8 5b3e          	addw	sp,#62
1675  03ba 81            	ret
1678                     	switch	.const
1679  0014               L754_data:
1680  0014 0a            	dc.b	10
1681  0015 0a            	dc.b	10
1682  0016 0a            	dc.b	10
1683  0017 0a            	dc.b	10
1855                     	switch	.const
1856  0018               L221:
1857  0018 0000000a      	dc.l	10
1858                     ; 291 void display_string(char COLON, unsigned int x)
1858                     ; 292 {
1859                     	switch	.text
1860  03bb               _display_string:
1862  03bb 88            	push	a
1863  03bc 5248          	subw	sp,#72
1864       00000048      OFST:	set	72
1867                     ; 294 	int j =7;
1869  03be ae0007        	ldw	x,#7
1870  03c1 1f47          	ldw	(OFST-1,sp),x
1872                     ; 302 	long y = 0;
1874                     ; 303 	int k=1;
1876  03c3 ae0001        	ldw	x,#1
1877  03c6 1f45          	ldw	(OFST-3,sp),x
1879                     ; 304   unsigned char data[4]={0x0A, 0x0A, 0x0A, 0x0A};
1881  03c8 96            	ldw	x,sp
1882  03c9 1c003f        	addw	x,#OFST-9
1883  03cc 90ae0014      	ldw	y,#L754_data
1884  03d0 a604          	ld	a,#4
1885  03d2 cd0000        	call	c_xymov
1887                     ; 305 	char i = 0;
1889                     ; 306 	char n = 0;
1891  03d5 0f43          	clr	(OFST-5,sp)
1893                     ; 308 	y = x;
1895  03d7 1e4c          	ldw	x,(OFST+4,sp)
1896  03d9 cd0000        	call	c_uitolx
1898  03dc 96            	ldw	x,sp
1899  03dd 1c003b        	addw	x,#OFST-13
1900  03e0 cd0000        	call	c_rtol
1903  03e3               L765:
1904                     ; 311 			y /= 10;
1906  03e3 96            	ldw	x,sp
1907  03e4 1c003b        	addw	x,#OFST-13
1908  03e7 cd0000        	call	c_ltor
1910  03ea ae0018        	ldw	x,#L221
1911  03ed cd0000        	call	c_ldiv
1913  03f0 96            	ldw	x,sp
1914  03f1 1c003b        	addw	x,#OFST-13
1915  03f4 cd0000        	call	c_rtol
1918                     ; 312 			n++;
1920  03f7 0c43          	inc	(OFST-5,sp)
1922                     ; 313 	}while(y != 0);
1924  03f9 96            	ldw	x,sp
1925  03fa 1c003b        	addw	x,#OFST-13
1926  03fd cd0000        	call	c_lzmp
1928  0400 26e1          	jrne	L765
1930  0402 2045          	jra	L775
1931  0404               L575:
1932                     ; 317 			i=n;
1934  0404 7b43          	ld	a,(OFST-5,sp)
1935  0406 6b44          	ld	(OFST-4,sp),a
1937                     ; 318 			for(i;i > 0; i--)																	//Check how many digits inserted and store them in a array. Array first filled with OFF representations in case number given is les than 4 digit. This will pass OFF byte for all grids that does not display anything.
1940  0408 200b          	jra	L706
1941  040a               L306:
1942                     ; 320 						k=k*10;  
1944  040a 1e45          	ldw	x,(OFST-3,sp)
1945  040c a60a          	ld	a,#10
1946  040e cd0000        	call	c_bmulx
1948  0411 1f45          	ldw	(OFST-3,sp),x
1950                     ; 318 			for(i;i > 0; i--)																	//Check how many digits inserted and store them in a array. Array first filled with OFF representations in case number given is les than 4 digit. This will pass OFF byte for all grids that does not display anything.
1952  0413 0a44          	dec	(OFST-4,sp)
1954  0415               L706:
1957  0415 0d44          	tnz	(OFST-4,sp)
1958  0417 26f1          	jrne	L306
1959                     ; 323 			data[4-n] = (x % k)/(k/10);
1961  0419 96            	ldw	x,sp
1962  041a 1c003f        	addw	x,#OFST-9
1963  041d 1f01          	ldw	(OFST-71,sp),x
1965  041f a600          	ld	a,#0
1966  0421 97            	ld	xl,a
1967  0422 a604          	ld	a,#4
1968  0424 1043          	sub	a,(OFST-5,sp)
1969  0426 2401          	jrnc	L421
1970  0428 5a            	decw	x
1971  0429               L421:
1972  0429 02            	rlwa	x,a
1973  042a 72fb01        	addw	x,(OFST-71,sp)
1974  042d 89            	pushw	x
1975  042e 1e4e          	ldw	x,(OFST+6,sp)
1976  0430 1647          	ldw	y,(OFST-1,sp)
1977  0432 65            	divw	x,y
1978  0433 51            	exgw	x,y
1979  0434 1647          	ldw	y,(OFST-1,sp)
1980  0436 a60a          	ld	a,#10
1981  0438 cd0000        	call	c_sdivy
1983  043b 65            	divw	x,y
1984  043c 9085          	popw	y
1985  043e 01            	rrwa	x,a
1986  043f 90f7          	ld	(y),a
1987  0441 02            	rlwa	x,a
1988                     ; 324 			n--;
1990  0442 0a43          	dec	(OFST-5,sp)
1992                     ; 325 			k=1;
1994  0444 ae0001        	ldw	x,#1
1995  0447 1f45          	ldw	(OFST-3,sp),x
1997  0449               L775:
1998                     ; 315 	while(n > 0)
2000  0449 0d43          	tnz	(OFST-5,sp)
2001  044b 26b7          	jrne	L575
2002                     ; 332 	for (j; j >= 0; j--)
2005  044d ac450545      	jpf	L716
2006  0451               L316:
2007                     ; 334 				a[j] = (WRITE >> j) & 1;
2009  0451 7b48          	ld	a,(OFST+0,sp)
2010  0453 5f            	clrw	x
2011  0454 4d            	tnz	a
2012  0455 2a01          	jrpl	L621
2013  0457 53            	cplw	x
2014  0458               L621:
2015  0458 97            	ld	xl,a
2016  0459 a640          	ld	a,#64
2017  045b 5d            	tnzw	x
2018  045c 2704          	jreq	L031
2019  045e               L231:
2020  045e 47            	sra	a
2021  045f 5a            	decw	x
2022  0460 26fc          	jrne	L231
2023  0462               L031:
2024  0462 a401          	and	a,#1
2025  0464 96            	ldw	x,sp
2026  0465 1c0003        	addw	x,#OFST-69
2027  0468 1f01          	ldw	(OFST-71,sp),x
2029  046a 1e47          	ldw	x,(OFST-1,sp)
2030  046c 72fb01        	addw	x,(OFST-71,sp)
2031  046f f7            	ld	(x),a
2032                     ; 335 				b[j] = (DISPLAY_ON >> j) & 1;
2034  0470 7b48          	ld	a,(OFST+0,sp)
2035  0472 5f            	clrw	x
2036  0473 4d            	tnz	a
2037  0474 2a01          	jrpl	L431
2038  0476 53            	cplw	x
2039  0477               L431:
2040  0477 97            	ld	xl,a
2041  0478 a68b          	ld	a,#139
2042  047a 5d            	tnzw	x
2043  047b 2704          	jreq	L631
2044  047d               L041:
2045  047d 44            	srl	a
2046  047e 5a            	decw	x
2047  047f 26fc          	jrne	L041
2048  0481               L631:
2049  0481 a401          	and	a,#1
2050  0483 96            	ldw	x,sp
2051  0484 1c000b        	addw	x,#OFST-61
2052  0487 1f01          	ldw	(OFST-71,sp),x
2054  0489 1e47          	ldw	x,(OFST-1,sp)
2055  048b 72fb01        	addw	x,(OFST-71,sp)
2056  048e f7            	ld	(x),a
2057                     ; 336 				c[j] = (translate(data[0]) >> j) & 1;
2059  048f 7b3f          	ld	a,(OFST-9,sp)
2060  0491 cd01c1        	call	_translate
2062  0494 88            	push	a
2063  0495 7b49          	ld	a,(OFST+1,sp)
2064  0497 5f            	clrw	x
2065  0498 4d            	tnz	a
2066  0499 2a01          	jrpl	L241
2067  049b 53            	cplw	x
2068  049c               L241:
2069  049c 97            	ld	xl,a
2070  049d 84            	pop	a
2071  049e 5d            	tnzw	x
2072  049f 2704          	jreq	L441
2073  04a1               L641:
2074  04a1 44            	srl	a
2075  04a2 5a            	decw	x
2076  04a3 26fc          	jrne	L641
2077  04a5               L441:
2078  04a5 a401          	and	a,#1
2079  04a7 96            	ldw	x,sp
2080  04a8 1c0013        	addw	x,#OFST-53
2081  04ab 1f01          	ldw	(OFST-71,sp),x
2083  04ad 1e47          	ldw	x,(OFST-1,sp)
2084  04af 72fb01        	addw	x,(OFST-71,sp)
2085  04b2 f7            	ld	(x),a
2086                     ; 337 				d[j] = (translate(data[1]) >> j) & 1;
2088  04b3 7b40          	ld	a,(OFST-8,sp)
2089  04b5 cd01c1        	call	_translate
2091  04b8 88            	push	a
2092  04b9 7b49          	ld	a,(OFST+1,sp)
2093  04bb 5f            	clrw	x
2094  04bc 4d            	tnz	a
2095  04bd 2a01          	jrpl	L051
2096  04bf 53            	cplw	x
2097  04c0               L051:
2098  04c0 97            	ld	xl,a
2099  04c1 84            	pop	a
2100  04c2 5d            	tnzw	x
2101  04c3 2704          	jreq	L251
2102  04c5               L451:
2103  04c5 44            	srl	a
2104  04c6 5a            	decw	x
2105  04c7 26fc          	jrne	L451
2106  04c9               L251:
2107  04c9 a401          	and	a,#1
2108  04cb 96            	ldw	x,sp
2109  04cc 1c0033        	addw	x,#OFST-21
2110  04cf 1f01          	ldw	(OFST-71,sp),x
2112  04d1 1e47          	ldw	x,(OFST-1,sp)
2113  04d3 72fb01        	addw	x,(OFST-71,sp)
2114  04d6 f7            	ld	(x),a
2115                     ; 338 				e[j] = (translate(data[2]) >> j) & 1;    //Re-write stored HEX to bool tab
2117  04d7 7b41          	ld	a,(OFST-7,sp)
2118  04d9 cd01c1        	call	_translate
2120  04dc 88            	push	a
2121  04dd 7b49          	ld	a,(OFST+1,sp)
2122  04df 5f            	clrw	x
2123  04e0 4d            	tnz	a
2124  04e1 2a01          	jrpl	L651
2125  04e3 53            	cplw	x
2126  04e4               L651:
2127  04e4 97            	ld	xl,a
2128  04e5 84            	pop	a
2129  04e6 5d            	tnzw	x
2130  04e7 2704          	jreq	L061
2131  04e9               L261:
2132  04e9 44            	srl	a
2133  04ea 5a            	decw	x
2134  04eb 26fc          	jrne	L261
2135  04ed               L061:
2136  04ed a401          	and	a,#1
2137  04ef 96            	ldw	x,sp
2138  04f0 1c001b        	addw	x,#OFST-45
2139  04f3 1f01          	ldw	(OFST-71,sp),x
2141  04f5 1e47          	ldw	x,(OFST-1,sp)
2142  04f7 72fb01        	addw	x,(OFST-71,sp)
2143  04fa f7            	ld	(x),a
2144                     ; 339 				f[j] = (translate(data[3]) >> j) & 1;
2146  04fb 7b42          	ld	a,(OFST-6,sp)
2147  04fd cd01c1        	call	_translate
2149  0500 88            	push	a
2150  0501 7b49          	ld	a,(OFST+1,sp)
2151  0503 5f            	clrw	x
2152  0504 4d            	tnz	a
2153  0505 2a01          	jrpl	L461
2154  0507 53            	cplw	x
2155  0508               L461:
2156  0508 97            	ld	xl,a
2157  0509 84            	pop	a
2158  050a 5d            	tnzw	x
2159  050b 2704          	jreq	L661
2160  050d               L071:
2161  050d 44            	srl	a
2162  050e 5a            	decw	x
2163  050f 26fc          	jrne	L071
2164  0511               L661:
2165  0511 a401          	and	a,#1
2166  0513 96            	ldw	x,sp
2167  0514 1c0023        	addw	x,#OFST-37
2168  0517 1f01          	ldw	(OFST-71,sp),x
2170  0519 1e47          	ldw	x,(OFST-1,sp)
2171  051b 72fb01        	addw	x,(OFST-71,sp)
2172  051e f7            	ld	(x),a
2173                     ; 340 				g[j] = (G1 >> j) & 1;
2175  051f 7b48          	ld	a,(OFST+0,sp)
2176  0521 5f            	clrw	x
2177  0522 4d            	tnz	a
2178  0523 2a01          	jrpl	L271
2179  0525 53            	cplw	x
2180  0526               L271:
2181  0526 97            	ld	xl,a
2182  0527 a6c0          	ld	a,#192
2183  0529 5d            	tnzw	x
2184  052a 2704          	jreq	L471
2185  052c               L671:
2186  052c 44            	srl	a
2187  052d 5a            	decw	x
2188  052e 26fc          	jrne	L671
2189  0530               L471:
2190  0530 a401          	and	a,#1
2191  0532 96            	ldw	x,sp
2192  0533 1c002b        	addw	x,#OFST-29
2193  0536 1f01          	ldw	(OFST-71,sp),x
2195  0538 1e47          	ldw	x,(OFST-1,sp)
2196  053a 72fb01        	addw	x,(OFST-71,sp)
2197  053d f7            	ld	(x),a
2198                     ; 332 	for (j; j >= 0; j--)
2200  053e 1e47          	ldw	x,(OFST-1,sp)
2201  0540 1d0001        	subw	x,#1
2202  0543 1f47          	ldw	(OFST-1,sp),x
2204  0545               L716:
2207  0545 9c            	rvf
2208  0546 1e47          	ldw	x,(OFST-1,sp)
2209  0548 2f03          	jrslt	L002
2210  054a cc0451        	jp	L316
2211  054d               L002:
2212                     ; 345 		if (COLON == ON)
2214  054d 7b49          	ld	a,(OFST+1,sp)
2215  054f a1ff          	cp	a,#255
2216  0551 2606          	jrne	L326
2217                     ; 347 			d[7] = d[7] ^1;
2219  0553 7b3a          	ld	a,(OFST-14,sp)
2220  0555 a801          	xor	a,#1
2221  0557 6b3a          	ld	(OFST-14,sp),a
2223  0559               L326:
2224                     ; 351 		tm1637_send_command1(a);
2226  0559 96            	ldw	x,sp
2227  055a 1c0003        	addw	x,#OFST-69
2228  055d cd011c        	call	_tm1637_send_command1
2230                     ; 352 		tm1637_send_command2(g);
2232  0560 96            	ldw	x,sp
2233  0561 1c002b        	addw	x,#OFST-29
2234  0564 cd0153        	call	_tm1637_send_command2
2236                     ; 353 		tm1637_send_data(c);
2238  0567 96            	ldw	x,sp
2239  0568 1c0013        	addw	x,#OFST-53
2240  056b cd018a        	call	_tm1637_send_data
2242                     ; 354 		tm1637_clk_l();
2244  056e cd0069        	call	_tm1637_clk_l
2246                     ; 355 		tm1637_clk_l();
2248  0571 cd0069        	call	_tm1637_clk_l
2250                     ; 356 		tm1637_clk_l();
2252  0574 cd0069        	call	_tm1637_clk_l
2254                     ; 357 		tm1637_clk_l();
2256  0577 cd0069        	call	_tm1637_clk_l
2258                     ; 358 		tm1637_send_data(d);
2260  057a 96            	ldw	x,sp
2261  057b 1c0033        	addw	x,#OFST-21
2262  057e cd018a        	call	_tm1637_send_data
2264                     ; 359 		tm1637_clk_l();
2266  0581 cd0069        	call	_tm1637_clk_l
2268                     ; 360 		tm1637_clk_l();
2270  0584 cd0069        	call	_tm1637_clk_l
2272                     ; 361 		tm1637_clk_l();
2274  0587 cd0069        	call	_tm1637_clk_l
2276                     ; 362 		tm1637_clk_l();																		//*** Building protocol frame. By sending command1(set mode), command2(set address), 4 bytes of data ended with stop bit, command1(display controll)
2278  058a cd0069        	call	_tm1637_clk_l
2280                     ; 363 		tm1637_send_data(e);
2282  058d 96            	ldw	x,sp
2283  058e 1c001b        	addw	x,#OFST-45
2284  0591 cd018a        	call	_tm1637_send_data
2286                     ; 364 		tm1637_clk_l();
2288  0594 cd0069        	call	_tm1637_clk_l
2290                     ; 365 		tm1637_clk_l();
2292  0597 cd0069        	call	_tm1637_clk_l
2294                     ; 366 		tm1637_clk_l();
2296  059a cd0069        	call	_tm1637_clk_l
2298                     ; 367 		tm1637_clk_l();
2300  059d cd0069        	call	_tm1637_clk_l
2302                     ; 368 		tm1637_send_data(f);
2304  05a0 96            	ldw	x,sp
2305  05a1 1c0023        	addw	x,#OFST-37
2306  05a4 cd018a        	call	_tm1637_send_data
2308                     ; 369 		tm1637_clk_l();
2310  05a7 cd0069        	call	_tm1637_clk_l
2312                     ; 370 		tm1637_clk_l();
2314  05aa cd0069        	call	_tm1637_clk_l
2316                     ; 371 		tm1637_clk_l();
2318  05ad cd0069        	call	_tm1637_clk_l
2320                     ; 372 		tm1637_clk_l();
2322  05b0 cd0069        	call	_tm1637_clk_l
2324                     ; 373 	  tm1637_stop_bit();
2326  05b3 cd00e6        	call	_tm1637_stop_bit
2328                     ; 374 		tm1637_send_command1(b);
2330  05b6 96            	ldw	x,sp
2331  05b7 1c000b        	addw	x,#OFST-61
2332  05ba cd011c        	call	_tm1637_send_command1
2334                     ; 376 }
2337  05bd 5b49          	addw	sp,#73
2338  05bf 81            	ret
2351                     	xdef	_display_string
2352                     	xdef	_display_by_segment
2353                     	xdef	_translate
2354                     	xdef	_tm1637_send_data
2355                     	xdef	_tm1637_send_command2
2356                     	xdef	_tm1637_send_command1
2357                     	xdef	_tm1637_ack
2358                     	xdef	_tm1637_stop_bit
2359                     	xdef	_tm1637_start_bit
2360                     	xdef	_tm1637_init
2361                     	xdef	_tm1637_dio_l
2362                     	xdef	_tm1637_dio_h
2363                     	xdef	_tm1637_clk_l
2364                     	xdef	_tm1637_clk_h
2365                     	xdef	_tm1637_gpio
2366                     	xref	_GPIO_ReadInputPin
2367                     	xref	_GPIO_WriteLow
2368                     	xref	_GPIO_WriteHigh
2369                     	xref	_GPIO_Init
2370                     	xref	_GPIO_DeInit
2371                     	xref.b	c_x
2372                     	xref.b	c_y
2391                     	xref	c_sdivy
2392                     	xref	c_bmulx
2393                     	xref	c_lzmp
2394                     	xref	c_ldiv
2395                     	xref	c_ltor
2396                     	xref	c_rtol
2397                     	xref	c_uitolx
2398                     	xref	c_xymov
2399                     	end
