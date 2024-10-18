
bin/kernel：     文件格式 elf64-sw_64


Disassembly of section .text:

ffffffff80910000 <kern_entry>:
ffffffff80910000:	00 00 60 13 	br	$r27,ffffffff80910004 <kern_entry+0x4>
ffffffff80910004:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910008:	fc 3f bd fb 	ldi	$r29,16380($r29)
ffffffff8091000c:	f0 80 dd 8f 	ldl	sp,-32528($r29)
ffffffff80910010:	28 80 7d 8f 	ldl	$r27,-32728($r29)
ffffffff80910014:	02 00 5b 07 	call	ra,($r27),ffffffff80910020 <kern_init>
	...

ffffffff80910020 <kern_init>:
ffffffff80910020:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910024:	e0 3f bd fb 	ldi	$r29,16352($r29)
ffffffff80910028:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff8091002c:	30 80 10 8e 	ldl	$r16,-32720($r16)
ffffffff80910030:	00 00 5d fe 	ldih	$r18,0($r29)
ffffffff80910034:	78 80 52 8e 	ldl	$r18,-32648($r18)
ffffffff80910038:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091003c:	51 07 ff 43 	clr	$r17
ffffffff80910040:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910044:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80910048:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091004c:	32 01 50 42 	subl	$r18,$r16,$r18
ffffffff80910050:	ef 04 5b 07 	call	ra,($r27),ffffffff80911410 <memset>
ffffffff80910054:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910058:	ac 3f bd fb 	ldi	$r29,16300($r29)
ffffffff8091005c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910060:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910064:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff80910068:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091006c:	a0 dd 31 fa 	ldi	$r17,-8800($r17)
ffffffff80910070:	b3 dd 10 fa 	ldi	$r16,-8781($r16)
ffffffff80910074:	3a 00 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910078:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091007c:	88 3f bd fb 	ldi	$r29,16264($r29)
ffffffff80910080:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910084:	00 80 7b 8f 	ldl	$r27,-32768($r27)
ffffffff80910088:	91 00 5b 07 	call	ra,($r27),ffffffff809102d0 <print_kerninfo>
ffffffff8091008c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910090:	74 3f bd fb 	ldi	$r29,16244($r29)
ffffffff80910094:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910098:	00 81 7b 8f 	ldl	$r27,-32512($r27)
ffffffff8091009c:	d0 00 5b 07 	call	ra,($r27),ffffffff809103e0 <trap_init>
ffffffff809100a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100a4:	60 3f bd fb 	ldi	$r29,16224($r29)
ffffffff809100a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100ac:	d0 80 7b 8f 	ldl	$r27,-32560($r27)
ffffffff809100b0:	3f 03 5b 07 	call	ra,($r27),ffffffff80910db0 <pmm_init>
ffffffff809100b4:	ff ff ff 13 	br	ffffffff809100b4 <kern_init+0x94>
ffffffff809100b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809100bc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809100c0 <clock_set_next_event>:
ffffffff809100c0:	02 00 1f fe 	ldih	$r16,2
ffffffff809100c4:	a0 86 10 fa 	ldi	$r16,-31072($r16)
ffffffff809100c8:	3b 00 00 02 	sys_call	0x3b
ffffffff809100cc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809100d0 <intr_disable>:
ffffffff809100d0:	07 00 1f fa 	ldi	$r16,7
ffffffff809100d4:	35 00 00 02 	sys_call	0x35
ffffffff809100d8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809100dc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809100e0 <cputch>:
ffffffff809100e0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809100e4:	20 3f bd fb 	ldi	$r29,16160($r29)
ffffffff809100e8:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809100ec:	b8 dd 21 8c 	ldl	$r1,-8776($r1)
ffffffff809100f0:	00 00 01 a2 	stb	$r16,0($r1)
ffffffff809100f4:	00 00 31 88 	ldw	$r1,0($r17)
ffffffff809100f8:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff809100fc:	00 00 31 a8 	stw	$r1,0($r17)
ffffffff80910100:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910104:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910108:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091010c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910110 <vcprintf>:
ffffffff80910110:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910114:	f0 3e bd fb 	ldi	$r29,16112($r29)
ffffffff80910118:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091011c:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80910120:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80910124:	54 07 f2 43 	mov	$r18,$r20
ffffffff80910128:	52 07 f0 43 	mov	$r16,$r18
ffffffff8091012c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910130:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910134:	53 07 f1 43 	mov	$r17,$r19
ffffffff80910138:	10 00 fe ab 	stw	$r31,16(sp)
ffffffff8091013c:	10 00 3e fa 	ldi	$r17,16(sp)
ffffffff80910140:	e0 c0 10 fa 	ldi	$r16,-16160($r16)
ffffffff80910144:	0e 05 5b 07 	call	ra,($r27),ffffffff80911580 <vprintfmt>
ffffffff80910148:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091014c:	10 00 1e 88 	ldw	$r0,16(sp)
ffffffff80910150:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910154:	b8 3e bd fb 	ldi	$r29,16056($r29)
ffffffff80910158:	30 00 de fb 	ldi	sp,48(sp)
ffffffff8091015c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910160 <cprintf>:
ffffffff80910160:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910164:	a0 3e bd fb 	ldi	$r29,16032($r29)
ffffffff80910168:	60 ff de fb 	ldi	sp,-160(sp)
ffffffff8091016c:	08 00 5f f8 	ldi	$r2,8
ffffffff80910170:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910174:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80910178:	28 00 5e a8 	stw	$r2,40(sp)
ffffffff8091017c:	48 00 3e be 	fstd	$f17,72(sp)
ffffffff80910180:	50 00 5e be 	fstd	$f18,80(sp)
ffffffff80910184:	70 00 3e f8 	ldi	$r1,112(sp)
ffffffff80910188:	28 00 5e 8c 	ldl	$r2,40(sp)
ffffffff8091018c:	58 00 7e be 	fstd	$f19,88(sp)
ffffffff80910190:	60 00 9e be 	fstd	$f20,96(sp)
ffffffff80910194:	80 00 5e ae 	stl	$r18,128(sp)
ffffffff80910198:	68 00 be be 	fstd	$f21,104(sp)
ffffffff8091019c:	52 07 f0 43 	mov	$r16,$r18
ffffffff809101a0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809101a4:	e0 c0 10 fa 	ldi	$r16,-16160($r16)
ffffffff809101a8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809101ac:	78 00 3e ae 	stl	$r17,120(sp)
ffffffff809101b0:	88 00 7e ae 	stl	$r19,136(sp)
ffffffff809101b4:	30 00 3e fa 	ldi	$r17,48(sp)
ffffffff809101b8:	53 07 e1 43 	mov	$r1,$r19
ffffffff809101bc:	90 00 9e ae 	stl	$r20,144(sp)
ffffffff809101c0:	98 00 be ae 	stl	$r21,152(sp)
ffffffff809101c4:	54 07 e2 43 	mov	$r2,$r20
ffffffff809101c8:	20 00 3e ac 	stl	$r1,32(sp)
ffffffff809101cc:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff809101d0:	18 00 5e ac 	stl	$r2,24(sp)
ffffffff809101d4:	30 00 fe ab 	stw	$r31,48(sp)
ffffffff809101d8:	e9 04 5b 07 	call	ra,($r27),ffffffff80911580 <vprintfmt>
ffffffff809101dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809101e0:	30 00 1e 88 	ldw	$r0,48(sp)
ffffffff809101e4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809101e8:	24 3e bd fb 	ldi	$r29,15908($r29)
ffffffff809101ec:	a0 00 de fb 	ldi	sp,160(sp)
ffffffff809101f0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809101f4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809101fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910200 <__panic>:
ffffffff80910200:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910204:	00 3e bd fb 	ldi	$r29,15872($r29)
ffffffff80910208:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091020c:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff80910210:	20 81 41 88 	ldw	$r2,-32480($r1)
ffffffff80910214:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80910218:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff8091021c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910220:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80910224:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910228:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff8091022c:	49 07 f2 43 	mov	$r18,$r9
ffffffff80910230:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80910234:	78 00 be ae 	stl	$r21,120(sp)
ffffffff80910238:	04 00 40 c0 	beq	$r2,ffffffff8091024c <__panic+0x4c>
ffffffff8091023c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910240:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80910244:	a2 ff 5b 07 	call	ra,($r27),ffffffff809100d0 <intr_disable>
ffffffff80910248:	ff ff ff 13 	br	ffffffff80910248 <__panic+0x48>
ffffffff8091024c:	01 00 5f f8 	ldi	$r2,1
ffffffff80910250:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910254:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910258:	52 07 f1 43 	mov	$r17,$r18
ffffffff8091025c:	51 07 f0 43 	mov	$r16,$r17
ffffffff80910260:	20 81 41 a8 	stw	$r2,-32480($r1)
ffffffff80910264:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff80910268:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091026c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80910270:	18 00 3f f8 	ldi	$r1,24
ffffffff80910274:	c0 dd 10 fa 	ldi	$r16,-8768($r16)
ffffffff80910278:	18 00 3e a8 	stw	$r1,24(sp)
ffffffff8091027c:	b8 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910280:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910284:	80 3d bd fb 	ldi	$r29,15744($r29)
ffffffff80910288:	10 00 3e 8e 	ldl	$r17,16(sp)
ffffffff8091028c:	18 00 5e 8e 	ldl	$r18,24(sp)
ffffffff80910290:	50 07 e9 43 	mov	$r9,$r16
ffffffff80910294:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910298:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff8091029c:	9c ff 5b 07 	call	ra,($r27),ffffffff80910110 <vcprintf>
ffffffff809102a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102a4:	60 3d bd fb 	ldi	$r29,15712($r29)
ffffffff809102a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102ac:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809102b0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102b4:	b6 dd 10 fa 	ldi	$r16,-8778($r16)
ffffffff809102b8:	a9 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809102bc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102c0:	44 3d bd fb 	ldi	$r29,15684($r29)
ffffffff809102c4:	dd ff ff 13 	br	ffffffff8091023c <__panic+0x3c>
ffffffff809102c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809102cc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809102d0 <print_kerninfo>:
ffffffff809102d0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809102d4:	30 3d bd fb 	ldi	$r29,15664($r29)
ffffffff809102d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102dc:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809102e0:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff809102e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102e8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809102ec:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809102f0:	dc dd 10 fa 	ldi	$r16,-8740($r16)
ffffffff809102f4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809102f8:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff809102fc:	78 80 29 8d 	ldl	$r9,-32648($r9)
ffffffff80910300:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80910304:	28 80 4a 8d 	ldl	$r10,-32728($r10)
ffffffff80910308:	95 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff8091030c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910310:	f4 3c bd fb 	ldi	$r29,15604($r29)
ffffffff80910314:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910318:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff8091031c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910320:	51 07 ea 43 	mov	$r10,$r17
ffffffff80910324:	f5 dd 10 fa 	ldi	$r16,-8715($r16)
ffffffff80910328:	8d ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff8091032c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910330:	d4 3c bd fb 	ldi	$r29,15572($r29)
ffffffff80910334:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff80910338:	88 80 31 8e 	ldl	$r17,-32632($r17)
ffffffff8091033c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910340:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910344:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910348:	12 de 10 fa 	ldi	$r16,-8686($r16)
ffffffff8091034c:	84 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910350:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910354:	b0 3c bd fb 	ldi	$r29,15536($r29)
ffffffff80910358:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff8091035c:	30 80 31 8e 	ldl	$r17,-32720($r17)
ffffffff80910360:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910364:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910368:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091036c:	2f de 10 fa 	ldi	$r16,-8657($r16)
ffffffff80910370:	7b ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910374:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910378:	8c 3c bd fb 	ldi	$r29,15500($r29)
ffffffff8091037c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910380:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910384:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910388:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091038c:	4c de 10 fa 	ldi	$r16,-8628($r16)
ffffffff80910390:	73 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910394:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910398:	ff 03 29 fa 	ldi	$r17,1023($r9)
ffffffff8091039c:	6c 3c bd fb 	ldi	$r29,15468($r29)
ffffffff809103a0:	31 01 2a 42 	subl	$r17,$r10,$r17
ffffffff809103a4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103a8:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809103ac:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103b0:	ff 03 31 f8 	ldi	$r1,1023($r17)
ffffffff809103b4:	69 de 10 fa 	ldi	$r16,-8599($r16)
ffffffff809103b8:	31 12 21 46 	sellt	$r17,$r1,$r17,$r17
ffffffff809103bc:	51 49 21 4a 	sra	$r17,0xa,$r17
ffffffff809103c0:	67 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809103c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103c8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809103cc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809103d0:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809103d4:	3c 3c bd fb 	ldi	$r29,15420($r29)
ffffffff809103d8:	20 00 de fb 	ldi	sp,32(sp)
ffffffff809103dc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809103e0 <trap_init>:
ffffffff809103e0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809103e4:	20 3c bd fb 	ldi	$r29,15392($r29)
ffffffff809103e8:	50 07 fd 43 	mov	$r29,$r16
ffffffff809103ec:	37 00 00 02 	sys_call	0x37
ffffffff809103f0:	51 07 ff 43 	clr	$r17
ffffffff809103f4:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff809103f8:	40 80 10 8e 	ldl	$r16,-32704($r16)
ffffffff809103fc:	34 00 00 02 	sys_call	0x34
ffffffff80910400:	02 00 3f fa 	ldi	$r17,2
ffffffff80910404:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910408:	c0 80 10 8e 	ldl	$r16,-32576($r16)
ffffffff8091040c:	34 00 00 02 	sys_call	0x34
ffffffff80910410:	03 00 3f fa 	ldi	$r17,3
ffffffff80910414:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910418:	b8 80 10 8e 	ldl	$r16,-32584($r16)
ffffffff8091041c:	34 00 00 02 	sys_call	0x34
ffffffff80910420:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910424:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910428:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091042c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910430 <print_regs>:
ffffffff80910430:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910434:	d0 3b bd fb 	ldi	$r29,15312($r29)
ffffffff80910438:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091043c:	00 00 30 8e 	ldl	$r17,0($r16)
ffffffff80910440:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910444:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910448:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff8091044c:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910450:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910454:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910458:	93 de 10 fa 	ldi	$r16,-8557($r16)
ffffffff8091045c:	40 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910460:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910464:	a0 3b bd fb 	ldi	$r29,15264($r29)
ffffffff80910468:	08 00 29 8e 	ldl	$r17,8($r9)
ffffffff8091046c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910470:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910474:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910478:	a8 de 10 fa 	ldi	$r16,-8536($r16)
ffffffff8091047c:	38 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910480:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910484:	80 3b bd fb 	ldi	$r29,15232($r29)
ffffffff80910488:	10 00 29 8e 	ldl	$r17,16($r9)
ffffffff8091048c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910490:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910494:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910498:	bd de 10 fa 	ldi	$r16,-8515($r16)
ffffffff8091049c:	30 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809104a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104a4:	60 3b bd fb 	ldi	$r29,15200($r29)
ffffffff809104a8:	18 00 29 8e 	ldl	$r17,24($r9)
ffffffff809104ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104b0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809104b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104b8:	d2 de 10 fa 	ldi	$r16,-8494($r16)
ffffffff809104bc:	28 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809104c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104c4:	40 3b bd fb 	ldi	$r29,15168($r29)
ffffffff809104c8:	20 00 29 8e 	ldl	$r17,32($r9)
ffffffff809104cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104d0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809104d4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104d8:	e7 de 10 fa 	ldi	$r16,-8473($r16)
ffffffff809104dc:	20 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809104e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104e4:	20 3b bd fb 	ldi	$r29,15136($r29)
ffffffff809104e8:	28 00 29 8e 	ldl	$r17,40($r9)
ffffffff809104ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104f0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809104f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104f8:	fc de 10 fa 	ldi	$r16,-8452($r16)
ffffffff809104fc:	18 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910500:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910504:	00 3b bd fb 	ldi	$r29,15104($r29)
ffffffff80910508:	30 00 29 8e 	ldl	$r17,48($r9)
ffffffff8091050c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910510:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910514:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910518:	11 df 10 fa 	ldi	$r16,-8431($r16)
ffffffff8091051c:	10 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910520:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910524:	e0 3a bd fb 	ldi	$r29,15072($r29)
ffffffff80910528:	38 00 29 8e 	ldl	$r17,56($r9)
ffffffff8091052c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910530:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910534:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910538:	26 df 10 fa 	ldi	$r16,-8410($r16)
ffffffff8091053c:	08 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910540:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910544:	c0 3a bd fb 	ldi	$r29,15040($r29)
ffffffff80910548:	40 00 29 8e 	ldl	$r17,64($r9)
ffffffff8091054c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910550:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910554:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910558:	3b df 10 fa 	ldi	$r16,-8389($r16)
ffffffff8091055c:	00 ff 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910560:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910564:	a0 3a bd fb 	ldi	$r29,15008($r29)
ffffffff80910568:	48 00 29 8e 	ldl	$r17,72($r9)
ffffffff8091056c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910570:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910574:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910578:	50 df 10 fa 	ldi	$r16,-8368($r16)
ffffffff8091057c:	f8 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910580:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910584:	80 3a bd fb 	ldi	$r29,14976($r29)
ffffffff80910588:	50 00 29 8e 	ldl	$r17,80($r9)
ffffffff8091058c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910590:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910594:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910598:	65 df 10 fa 	ldi	$r16,-8347($r16)
ffffffff8091059c:	f0 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809105a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105a4:	60 3a bd fb 	ldi	$r29,14944($r29)
ffffffff809105a8:	58 00 29 8e 	ldl	$r17,88($r9)
ffffffff809105ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105b0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809105b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105b8:	7a df 10 fa 	ldi	$r16,-8326($r16)
ffffffff809105bc:	e8 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809105c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105c4:	40 3a bd fb 	ldi	$r29,14912($r29)
ffffffff809105c8:	60 00 29 8e 	ldl	$r17,96($r9)
ffffffff809105cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105d0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809105d4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105d8:	8f df 10 fa 	ldi	$r16,-8305($r16)
ffffffff809105dc:	e0 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809105e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105e4:	20 3a bd fb 	ldi	$r29,14880($r29)
ffffffff809105e8:	68 00 29 8e 	ldl	$r17,104($r9)
ffffffff809105ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105f0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809105f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105f8:	a4 df 10 fa 	ldi	$r16,-8284($r16)
ffffffff809105fc:	d8 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910600:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910604:	00 3a bd fb 	ldi	$r29,14848($r29)
ffffffff80910608:	70 00 29 8e 	ldl	$r17,112($r9)
ffffffff8091060c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910610:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910614:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910618:	b9 df 10 fa 	ldi	$r16,-8263($r16)
ffffffff8091061c:	d0 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910620:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910624:	e0 39 bd fb 	ldi	$r29,14816($r29)
ffffffff80910628:	78 00 29 8e 	ldl	$r17,120($r9)
ffffffff8091062c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910630:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910634:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910638:	ce df 10 fa 	ldi	$r16,-8242($r16)
ffffffff8091063c:	c8 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910640:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910644:	c0 39 bd fb 	ldi	$r29,14784($r29)
ffffffff80910648:	08 01 29 8e 	ldl	$r17,264($r9)
ffffffff8091064c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910650:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910654:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910658:	e3 df 10 fa 	ldi	$r16,-8221($r16)
ffffffff8091065c:	c0 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910660:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910664:	a0 39 bd fb 	ldi	$r29,14752($r29)
ffffffff80910668:	10 01 29 8e 	ldl	$r17,272($r9)
ffffffff8091066c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910670:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910674:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910678:	f8 df 10 fa 	ldi	$r16,-8200($r16)
ffffffff8091067c:	b8 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910680:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910684:	80 39 bd fb 	ldi	$r29,14720($r29)
ffffffff80910688:	18 01 29 8e 	ldl	$r17,280($r9)
ffffffff8091068c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910690:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910694:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910698:	0d e0 10 fa 	ldi	$r16,-8179($r16)
ffffffff8091069c:	b0 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809106a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106a4:	60 39 bd fb 	ldi	$r29,14688($r29)
ffffffff809106a8:	98 00 29 8e 	ldl	$r17,152($r9)
ffffffff809106ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106b0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809106b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106b8:	22 e0 10 fa 	ldi	$r16,-8158($r16)
ffffffff809106bc:	a8 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809106c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106c4:	40 39 bd fb 	ldi	$r29,14656($r29)
ffffffff809106c8:	a0 00 29 8e 	ldl	$r17,160($r9)
ffffffff809106cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106d0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809106d4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106d8:	37 e0 10 fa 	ldi	$r16,-8137($r16)
ffffffff809106dc:	a0 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809106e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106e4:	20 39 bd fb 	ldi	$r29,14624($r29)
ffffffff809106e8:	a8 00 29 8e 	ldl	$r17,168($r9)
ffffffff809106ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106f0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809106f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106f8:	4c e0 10 fa 	ldi	$r16,-8116($r16)
ffffffff809106fc:	98 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910700:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910704:	00 39 bd fb 	ldi	$r29,14592($r29)
ffffffff80910708:	b0 00 29 8e 	ldl	$r17,176($r9)
ffffffff8091070c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910710:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910714:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910718:	61 e0 10 fa 	ldi	$r16,-8095($r16)
ffffffff8091071c:	90 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910720:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910724:	e0 38 bd fb 	ldi	$r29,14560($r29)
ffffffff80910728:	b8 00 29 8e 	ldl	$r17,184($r9)
ffffffff8091072c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910730:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910734:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910738:	76 e0 10 fa 	ldi	$r16,-8074($r16)
ffffffff8091073c:	88 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910740:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910744:	c0 38 bd fb 	ldi	$r29,14528($r29)
ffffffff80910748:	c0 00 29 8e 	ldl	$r17,192($r9)
ffffffff8091074c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910750:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910754:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910758:	8b e0 10 fa 	ldi	$r16,-8053($r16)
ffffffff8091075c:	80 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910760:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910764:	a0 38 bd fb 	ldi	$r29,14496($r29)
ffffffff80910768:	c8 00 29 8e 	ldl	$r17,200($r9)
ffffffff8091076c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910770:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910774:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910778:	a0 e0 10 fa 	ldi	$r16,-8032($r16)
ffffffff8091077c:	78 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910780:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910784:	80 38 bd fb 	ldi	$r29,14464($r29)
ffffffff80910788:	d0 00 29 8e 	ldl	$r17,208($r9)
ffffffff8091078c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910790:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910794:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910798:	b5 e0 10 fa 	ldi	$r16,-8011($r16)
ffffffff8091079c:	70 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809107a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107a4:	60 38 bd fb 	ldi	$r29,14432($r29)
ffffffff809107a8:	d8 00 29 8e 	ldl	$r17,216($r9)
ffffffff809107ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107b0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809107b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107b8:	ca e0 10 fa 	ldi	$r16,-7990($r16)
ffffffff809107bc:	68 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809107c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107c4:	40 38 bd fb 	ldi	$r29,14400($r29)
ffffffff809107c8:	e0 00 29 8e 	ldl	$r17,224($r9)
ffffffff809107cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107d0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809107d4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107d8:	df e0 10 fa 	ldi	$r16,-7969($r16)
ffffffff809107dc:	60 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809107e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107e4:	20 38 bd fb 	ldi	$r29,14368($r29)
ffffffff809107e8:	00 01 29 8e 	ldl	$r17,256($r9)
ffffffff809107ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107f0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809107f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107f8:	f4 e0 10 fa 	ldi	$r16,-7948($r16)
ffffffff809107fc:	58 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910800:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910804:	00 38 bd fb 	ldi	$r29,14336($r29)
ffffffff80910808:	f8 00 29 8e 	ldl	$r17,248($r9)
ffffffff8091080c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910810:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910814:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910818:	09 e1 10 fa 	ldi	$r16,-7927($r16)
ffffffff8091081c:	50 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910820:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910824:	e0 37 bd fb 	ldi	$r29,14304($r29)
ffffffff80910828:	f0 00 29 8e 	ldl	$r17,240($r9)
ffffffff8091082c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910830:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910834:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910838:	1e e1 10 fa 	ldi	$r16,-7906($r16)
ffffffff8091083c:	48 fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910840:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910844:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910848:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091084c:	c0 37 bd fb 	ldi	$r29,14272($r29)
ffffffff80910850:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910854:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910858:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091085c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910860 <do_entIF>:
ffffffff80910860:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910864:	a0 37 bd fb 	ldi	$r29,14240($r29)
ffffffff80910868:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff8091086c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910870:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910874:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910878:	49 07 f0 43 	mov	$r16,$r9
ffffffff8091087c:	24 00 20 c0 	beq	$r1,ffffffff80910910 <do_entIF+0xb0>
ffffffff80910880:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff80910884:	12 00 20 c4 	bne	$r1,ffffffff809108d0 <do_entIF+0x70>
ffffffff80910888:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091088c:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80910890:	e7 fe 5b 07 	call	ra,($r27),ffffffff80910430 <print_regs>
ffffffff80910894:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910898:	6c 37 bd fb 	ldi	$r29,14188($r29)
ffffffff8091089c:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff809108a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108a4:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809108a8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809108ac:	33 e1 10 fa 	ldi	$r16,-7885($r16)
ffffffff809108b0:	2b fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809108b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108b8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809108bc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809108c0:	4c 37 bd fb 	ldi	$r29,14156($r29)
ffffffff809108c4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809108c8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809108cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809108d0:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff809108d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108d8:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809108dc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809108e0:	5e e1 10 fa 	ldi	$r16,-7842($r16)
ffffffff809108e4:	1e fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809108e8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108ec:	f8 00 49 8c 	ldl	$r2,248($r9)
ffffffff809108f0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809108f4:	ff 43 3f fc 	ldih	$r1,17407
ffffffff809108f8:	18 37 bd fb 	ldi	$r29,14104($r29)
ffffffff809108fc:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910900:	5f 07 21 f8 	ldi	$r1,1887($r1)
ffffffff80910904:	00 00 22 a8 	stw	$r1,0($r2)
ffffffff80910908:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091090c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910910:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910914:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910918:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff8091091c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910920:	48 e1 10 fa 	ldi	$r16,-7864($r16)
ffffffff80910924:	0e fe 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910928:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091092c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910930:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910934:	d8 36 bd fb 	ldi	$r29,14040($r29)
ffffffff80910938:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091093c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910940 <interrupt_handler>:
ffffffff80910940:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910944:	c0 36 bd fb 	ldi	$r29,14016($r29)
ffffffff80910948:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff8091094c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910950:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910954:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910958:	49 07 f0 43 	mov	$r16,$r9
ffffffff8091095c:	01 25 21 48 	cmpeq	$r1,0x9,$r1
ffffffff80910960:	1f 00 20 c0 	beq	$r1,ffffffff809109e0 <interrupt_handler+0xa0>
ffffffff80910964:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910968:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff8091096c:	d4 fd 5b 07 	call	ra,($r27),ffffffff809100c0 <clock_set_next_event>
ffffffff80910970:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910974:	90 36 bd fb 	ldi	$r29,13968($r29)
ffffffff80910978:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff8091097c:	d8 80 63 8c 	ldl	$r3,-32552($r3)
ffffffff80910980:	00 00 43 8c 	ldl	$r2,0($r3)
ffffffff80910984:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff80910988:	00 00 43 ac 	stl	$r2,0($r3)
ffffffff8091098c:	ff ff 7d fc 	ldih	$r3,-1($r29)
ffffffff80910990:	21 69 40 48 	srl	$r2,0x3,$r1
ffffffff80910994:	c8 e1 63 8c 	ldl	$r3,-7736($r3)
ffffffff80910998:	21 03 23 40 	umulh	$r1,$r3,$r1
ffffffff8091099c:	23 89 20 48 	srl	$r1,0x4,$r3
ffffffff809109a0:	41 01 60 48 	s4addl	$r3,0,$r1
ffffffff809109a4:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109a8:	43 01 20 48 	s4addl	$r1,0,$r3
ffffffff809109ac:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109b0:	43 01 20 48 	s4addl	$r1,0,$r3
ffffffff809109b4:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109b8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809109bc:	21 01 41 40 	subl	$r2,$r1,$r1
ffffffff809109c0:	1b 00 20 c0 	beq	$r1,ffffffff80910a30 <interrupt_handler+0xf0>
ffffffff809109c4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809109c8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809109cc:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809109d0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809109d4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809109d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809109dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809109e0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809109e4:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff809109e8:	91 fe 5b 07 	call	ra,($r27),ffffffff80910430 <print_regs>
ffffffff809109ec:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809109f0:	14 36 bd fb 	ldi	$r29,13844($r29)
ffffffff809109f4:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff809109f8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809109fc:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910a00:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a04:	33 e1 10 fa 	ldi	$r16,-7885($r16)
ffffffff80910a08:	d5 fd 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910a0c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a10:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a14:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a18:	f4 35 bd fb 	ldi	$r29,13812($r29)
ffffffff80910a1c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a20:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910a24:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a28:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a2c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a30:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a34:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910a38:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a3c:	e8 03 3f fa 	ldi	$r17,1000
ffffffff80910a40:	70 e1 10 fa 	ldi	$r16,-7824($r16)
ffffffff80910a44:	c6 fd 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910a48:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a4c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a50:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a54:	b8 35 bd fb 	ldi	$r29,13752($r29)
ffffffff80910a58:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a5c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910a60 <exception_handler>:
ffffffff80910a60:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910a64:	a0 35 bd fb 	ldi	$r29,13728($r29)
ffffffff80910a68:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910a6c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910a70:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910a74:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910a78:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910a7c:	02 45 20 48 	cmpeq	$r1,0x2,$r2
ffffffff80910a80:	1c 00 40 c4 	bne	$r2,ffffffff80910af4 <exception_handler+0x94>
ffffffff80910a84:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff80910a88:	09 00 20 c0 	beq	$r1,ffffffff80910ab0 <exception_handler+0x50>
ffffffff80910a8c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a90:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a94:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a98:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a9c:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80910aa0:	6f ff fb 0f 	jmp	$r31,($r27),ffffffff80910860 <do_entIF>
ffffffff80910aa4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910aa8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910aac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ab0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ab4:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80910ab8:	5d fe 5b 07 	call	ra,($r27),ffffffff80910430 <print_regs>
ffffffff80910abc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910ac0:	44 35 bd fb 	ldi	$r29,13636($r29)
ffffffff80910ac4:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff80910ac8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910acc:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910ad0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910ad4:	33 e1 10 fa 	ldi	$r16,-7885($r16)
ffffffff80910ad8:	a1 fd 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910adc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910ae0:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910ae4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910ae8:	24 35 bd fb 	ldi	$r29,13604($r29)
ffffffff80910aec:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910af0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910af4:	f0 00 50 8e 	ldl	$r18,240($r16)
ffffffff80910af8:	90 00 70 8e 	ldl	$r19,144($r16)
ffffffff80910afc:	55 00 3f f8 	ldi	$r1,85
ffffffff80910b00:	80 00 30 8e 	ldl	$r17,128($r16)
ffffffff80910b04:	f8 00 90 8e 	ldl	$r20,248($r16)
ffffffff80910b08:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b0c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b10:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910b14:	7a e1 10 fa 	ldi	$r16,-7814($r16)
ffffffff80910b18:	12 07 41 4a 	and	$r18,0x8,$r18
ffffffff80910b1c:	13 25 60 4a 	cmpeq	$r19,0x1,$r19
ffffffff80910b20:	21 60 49 4e 	seleq	$r18,0x4b,$r1,$r1
ffffffff80910b24:	52 07 e1 43 	mov	$r1,$r18
ffffffff80910b28:	52 00 3f f8 	ldi	$r1,82
ffffffff80910b2c:	21 f4 6a 4e 	selne	$r19,0x57,$r1,$r1
ffffffff80910b30:	53 07 e1 43 	mov	$r1,$r19
ffffffff80910b34:	8a fd 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910b38:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b3c:	c8 34 bd fb 	ldi	$r29,13512($r29)
ffffffff80910b40:	71 00 3f fa 	ldi	$r17,113
ffffffff80910b44:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b48:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff80910b4c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910b50:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b54:	a0 e1 52 fa 	ldi	$r18,-7776($r18)
ffffffff80910b58:	b7 e1 10 fa 	ldi	$r16,-7753($r16)
ffffffff80910b5c:	a8 fd 5b 07 	call	ra,($r27),ffffffff80910200 <__panic>
ffffffff80910b60:	5f 07 ff 43 	nop	
ffffffff80910b64:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b68:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b6c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910b70 <trap>:
ffffffff80910b70:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910b74:	90 34 bd fb 	ldi	$r29,13456($r29)
ffffffff80910b78:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910b7c:	04 00 20 c0 	beq	$r1,ffffffff80910b90 <trap+0x20>
ffffffff80910b80:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b84:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff80910b88:	b5 ff fb 0f 	jmp	$r31,($r27),ffffffff80910a60 <exception_handler>
ffffffff80910b8c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b90:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b94:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80910b98:	69 ff fb 0f 	jmp	$r31,($r27),ffffffff80910940 <interrupt_handler>
ffffffff80910b9c:	5f 07 ff 43 	nop	

ffffffff80910ba0 <entInt>:
ffffffff80910ba0:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910ba4:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910ba8:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910bac:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910bb0:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910bb4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910bb8:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910bbc:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910bc0:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910bc4:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910bc8:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910bcc:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910bd0:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910bd4:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910bd8:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910bdc:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910be0:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910be4:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910be8:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910bec:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910bf0:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910bf4:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910bf8:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910bfc:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910c00:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910c04:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910c08:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910c0c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910c10:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910c14:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910c18:	00 00 1f fa 	ldi	$r16,0
ffffffff80910c1c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910c20:	e0 80 5d 8f 	ldl	ra,-32544($r29)
ffffffff80910c24:	50 07 fe 43 	mov	sp,$r16
ffffffff80910c28:	b0 80 7d 8f 	ldl	$r27,-32592($r29)
ffffffff80910c2c:	d0 ff fb 07 	call	$r31,($r27),ffffffff80910b70 <trap>

ffffffff80910c30 <entMM>:
ffffffff80910c30:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910c34:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910c38:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910c3c:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910c40:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910c44:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910c48:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910c4c:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910c50:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910c54:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910c58:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910c5c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910c60:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910c64:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910c68:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910c6c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910c70:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910c74:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910c78:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910c7c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910c80:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910c84:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910c88:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910c8c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910c90:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910c94:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910c98:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910c9c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910ca0:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910ca4:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910ca8:	02 00 1f fa 	ldi	$r16,2
ffffffff80910cac:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910cb0:	e0 80 5d 8f 	ldl	ra,-32544($r29)
ffffffff80910cb4:	50 07 fe 43 	mov	sp,$r16
ffffffff80910cb8:	b0 80 7d 8f 	ldl	$r27,-32592($r29)
ffffffff80910cbc:	ac ff fb 07 	call	$r31,($r27),ffffffff80910b70 <trap>

ffffffff80910cc0 <entIF>:
ffffffff80910cc0:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910cc4:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910cc8:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910ccc:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910cd0:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910cd4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910cd8:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910cdc:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910ce0:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910ce4:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910ce8:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910cec:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910cf0:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910cf4:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910cf8:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910cfc:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910d00:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910d04:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910d08:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910d0c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910d10:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910d14:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910d18:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910d1c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910d20:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910d24:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910d28:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910d2c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910d30:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910d34:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910d38:	03 00 1f fa 	ldi	$r16,3
ffffffff80910d3c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910d40:	e0 80 5d 8f 	ldl	ra,-32544($r29)
ffffffff80910d44:	50 07 fe 43 	mov	sp,$r16
ffffffff80910d48:	b0 80 7d 8f 	ldl	$r27,-32592($r29)
ffffffff80910d4c:	88 ff fb 07 	call	$r31,($r27),ffffffff80910b70 <trap>

ffffffff80910d50 <__trapret>:
ffffffff80910d50:	00 00 1e 8c 	ldl	$r0,0(sp)
ffffffff80910d54:	08 00 3e 8c 	ldl	$r1,8(sp)
ffffffff80910d58:	10 00 5e 8c 	ldl	$r2,16(sp)
ffffffff80910d5c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80910d60:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80910d64:	28 00 be 8c 	ldl	$r5,40(sp)
ffffffff80910d68:	30 00 de 8c 	ldl	$r6,48(sp)
ffffffff80910d6c:	38 00 fe 8c 	ldl	$r7,56(sp)
ffffffff80910d70:	40 00 1e 8d 	ldl	$r8,64(sp)
ffffffff80910d74:	98 00 7e 8e 	ldl	$r19,152(sp)
ffffffff80910d78:	a0 00 9e 8e 	ldl	$r20,160(sp)
ffffffff80910d7c:	a8 00 be 8e 	ldl	$r21,168(sp)
ffffffff80910d80:	b0 00 de 8e 	ldl	$r22,176(sp)
ffffffff80910d84:	b8 00 fe 8e 	ldl	$r23,184(sp)
ffffffff80910d88:	c0 00 1e 8f 	ldl	$r24,192(sp)
ffffffff80910d8c:	c8 00 3e 8f 	ldl	$r25,200(sp)
ffffffff80910d90:	d0 00 5e 8f 	ldl	ra,208(sp)
ffffffff80910d94:	d8 00 7e 8f 	ldl	$r27,216(sp)
ffffffff80910d98:	e0 00 9e 8f 	ldl	$r28,224(sp)
ffffffff80910d9c:	f0 00 de fb 	ldi	sp,240(sp)
ffffffff80910da0:	3f 00 00 02 	sys_call	0x3f
ffffffff80910da4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910da8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910dac:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910db0 <pmm_init>:
ffffffff80910db0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910db4:	50 32 bd fb 	ldi	$r29,12880($r29)
ffffffff80910db8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910dbc:	68 80 21 8c 	ldl	$r1,-32664($r1)
ffffffff80910dc0:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff80910dc4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910dc8:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910dcc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910dd0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910dd4:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff80910dd8:	38 80 29 8d 	ldl	$r9,-32712($r9)
ffffffff80910ddc:	d0 e1 10 fa 	ldi	$r16,-7728($r16)
ffffffff80910de0:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910de4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910de8:	00 00 21 8e 	ldl	$r17,0($r1)
ffffffff80910dec:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80910df0:	58 80 4a 8d 	ldl	$r10,-32680($r10)
ffffffff80910df4:	00 00 29 ac 	stl	$r1,0($r9)
ffffffff80910df8:	d9 fc 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910dfc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e00:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff80910e04:	04 32 bd fb 	ldi	$r29,12804($r29)
ffffffff80910e08:	08 00 61 8f 	ldl	$r27,8($r1)
ffffffff80910e0c:	00 00 5b 07 	call	ra,($r27),ffffffff80910e10 <pmm_init+0x60>
ffffffff80910e10:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e14:	f0 31 bd fb 	ldi	$r29,12784($r29)
ffffffff80910e18:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910e1c:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910e20:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910e24:	e7 e1 10 fa 	ldi	$r16,-7705($r16)
ffffffff80910e28:	cd fc 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910e2c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e30:	d4 31 bd fb 	ldi	$r29,12756($r29)
ffffffff80910e34:	ff ff 3f f8 	ldi	$r1,-1
ffffffff80910e38:	00 20 7f fe 	ldih	$r19,8192
ffffffff80910e3c:	51 07 ff 43 	clr	$r17
ffffffff80910e40:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910e44:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910e48:	01 89 26 48 	sll	$r1,0x34,$r1
ffffffff80910e4c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910e50:	52 07 f3 43 	mov	$r19,$r18
ffffffff80910e54:	00 00 2a ac 	stl	$r1,0($r10)
ffffffff80910e58:	f4 e1 10 fa 	ldi	$r16,-7692($r16)
ffffffff80910e5c:	c0 fc 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910e60:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e64:	a0 31 bd fb 	ldi	$r29,12704($r29)
ffffffff80910e68:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910e6c:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910e70:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910e74:	1d e2 10 fa 	ldi	$r16,-7651($r16)
ffffffff80910e78:	b9 fc 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910e7c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e80:	84 31 bd fb 	ldi	$r29,12676($r29)
ffffffff80910e84:	00 20 3f fe 	ldih	$r17,8192
ffffffff80910e88:	52 07 ff 43 	clr	$r18
ffffffff80910e8c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910e90:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910e94:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910e98:	ff ff 71 fa 	ldi	$r19,-1($r17)
ffffffff80910e9c:	33 e2 10 fa 	ldi	$r16,-7629($r16)
ffffffff80910ea0:	af fc 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff80910ea4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910ea8:	5c 31 bd fb 	ldi	$r29,12636($r29)
ffffffff80910eac:	01 00 3f fc 	ldih	$r1,1
ffffffff80910eb0:	47 07 ff 43 	clr	$r7
ffffffff80910eb4:	45 07 ff 43 	clr	$r5
ffffffff80910eb8:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80910ebc:	70 80 42 8c 	ldl	$r2,-32656($r2)
ffffffff80910ec0:	00 00 dd fc 	ldih	$r6,0($r29)
ffffffff80910ec4:	00 00 9d fc 	ldih	$r4,0($r29)
ffffffff80910ec8:	08 81 84 8c 	ldl	$r4,-32504($r4)
ffffffff80910ecc:	28 81 26 ac 	stl	$r1,-32472($r6)
ffffffff80910ed0:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80910ed4:	02 07 41 40 	and	$r2,$r1,$r2
ffffffff80910ed8:	41 07 e2 43 	mov	$r2,$r1
ffffffff80910edc:	00 00 44 ac 	stl	$r2,0($r4)
ffffffff80910ee0:	04 00 e0 13 	br	ffffffff80910ef4 <pmm_init+0x144>
ffffffff80910ee4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ee8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910eec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ef0:	00 00 24 8c 	ldl	$r1,0($r4)
ffffffff80910ef4:	01 01 27 40 	addl	$r1,$r7,$r1
ffffffff80910ef8:	08 00 c1 fa 	ldi	$r22,8($r1)
ffffffff80910efc:	00 00 76 20 	lldw	$r3,0($r22)
ffffffff80910f00:	01 00 1f f9 	ldi	$r8,1
ffffffff80910f04:	20 10 1f 19 	wr_f	$r8
ffffffff80910f08:	43 27 60 48 	or	$r3,0x1,$r3
ffffffff80910f0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f10:	00 80 76 20 	lstw	$r3,0($r22)
ffffffff80910f14:	00 10 1f 19 	rd_f	$r8
ffffffff80910f18:	7a 00 00 c1 	beq	$r8,ffffffff80911104 <pmm_init+0x354>
ffffffff80910f1c:	28 81 66 8c 	ldl	$r3,-32472($r6)
ffffffff80910f20:	01 00 a5 f8 	ldi	$r5,1($r5)
ffffffff80910f24:	48 00 e7 f8 	ldi	$r7,72($r7)
ffffffff80910f28:	61 05 a3 40 	cmpult	$r5,$r3,$r1
ffffffff80910f2c:	f0 ff 3f c4 	bne	$r1,ffffffff80910ef0 <pmm_init+0x140>
ffffffff80910f30:	81 01 60 48 	s8addl	$r3,0,$r1
ffffffff80910f34:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff80910f38:	00 80 7f fc 	ldih	$r3,-32768
ffffffff80910f3c:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80910f40:	ff ff 63 f8 	ldi	$r3,-1($r3)
ffffffff80910f44:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80910f48:	83 05 23 40 	cmpule	$r1,$r3,$r3
ffffffff80910f4c:	50 00 60 c4 	bne	$r3,ffffffff80911090 <pmm_init+0x2e0>
ffffffff80910f50:	01 00 7f f8 	ldi	$r3,1
ffffffff80910f54:	03 e9 63 48 	sll	$r3,0x1f,$r3
ffffffff80910f58:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff80910f5c:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80910f60:	15 00 20 c0 	beq	$r1,ffffffff80910fb8 <pmm_init+0x208>
ffffffff80910f64:	83 01 20 48 	s8addl	$r1,0,$r3
ffffffff80910f68:	45 07 ff 43 	clr	$r5
ffffffff80910f6c:	01 01 61 40 	addl	$r3,$r1,$r1
ffffffff80910f70:	83 01 20 48 	s8addl	$r1,0,$r3
ffffffff80910f74:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f78:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f7c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f80:	00 00 24 8c 	ldl	$r1,0($r4)
ffffffff80910f84:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80910f88:	08 00 c1 fa 	ldi	$r22,8($r1)
ffffffff80910f8c:	00 00 f6 20 	lldw	$r7,0($r22)
ffffffff80910f90:	01 00 1f f9 	ldi	$r8,1
ffffffff80910f94:	20 10 1f 19 	wr_f	$r8
ffffffff80910f98:	47 27 e0 48 	or	$r7,0x1,$r7
ffffffff80910f9c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910fa0:	00 80 f6 20 	lstw	$r7,0($r22)
ffffffff80910fa4:	00 10 1f 19 	rd_f	$r8
ffffffff80910fa8:	57 00 00 c1 	beq	$r8,ffffffff80911108 <pmm_init+0x358>
ffffffff80910fac:	48 00 a5 f8 	ldi	$r5,72($r5)
ffffffff80910fb0:	01 05 65 40 	cmpeq	$r3,$r5,$r1
ffffffff80910fb4:	f2 ff 3f c0 	beq	$r1,ffffffff80910f80 <pmm_init+0x1d0>
ffffffff80910fb8:	28 81 66 8c 	ldl	$r3,-32472($r6)
ffffffff80910fbc:	81 01 60 48 	s8addl	$r3,0,$r1
ffffffff80910fc0:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff80910fc4:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80910fc8:	ff 1f 21 f8 	ldi	$r1,8191($r1)
ffffffff80910fcc:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80910fd0:	00 e0 5f f8 	ldi	$r2,-8192
ffffffff80910fd4:	01 07 22 40 	and	$r1,$r2,$r1
ffffffff80910fd8:	00 80 5f fc 	ldih	$r2,-32768
ffffffff80910fdc:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff80910fe0:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff80910fe4:	36 00 40 c4 	bne	$r2,ffffffff809110c0 <pmm_init+0x310>
ffffffff80910fe8:	01 00 5f f8 	ldi	$r2,1
ffffffff80910fec:	00 20 3f fe 	ldih	$r17,8192
ffffffff80910ff0:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff80910ff4:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80910ff8:	22 a9 21 48 	srl	$r1,0xd,$r2
ffffffff80910ffc:	21 01 21 42 	subl	$r17,$r1,$r1
ffffffff80911000:	83 05 62 40 	cmpule	$r3,$r2,$r3
ffffffff80911004:	31 a9 21 48 	srl	$r1,0xd,$r17
ffffffff80911008:	35 00 60 c4 	bne	$r3,ffffffff809110e0 <pmm_init+0x330>
ffffffff8091100c:	00 00 69 8c 	ldl	$r3,0($r9)
ffffffff80911010:	81 01 40 48 	s8addl	$r2,0,$r1
ffffffff80911014:	00 00 04 8e 	ldl	$r16,0($r4)
ffffffff80911018:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff8091101c:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911020:	10 00 63 8f 	ldl	$r27,16($r3)
ffffffff80911024:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80911028:	00 00 5b 07 	call	ra,($r27),ffffffff8091102c <pmm_init+0x27c>
ffffffff8091102c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911030:	d4 2f bd fb 	ldi	$r29,12244($r29)
ffffffff80911034:	07 00 1f fa 	ldi	$r16,7
ffffffff80911038:	35 00 00 02 	sys_call	0x35
ffffffff8091103c:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff80911040:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80911044:	00 00 5b 07 	call	ra,($r27),ffffffff80911048 <pmm_init+0x298>
ffffffff80911048:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091104c:	b8 2f bd fb 	ldi	$r29,12216($r29)
ffffffff80911050:	42 07 e0 43 	mov	$r0,$r2
ffffffff80911054:	50 07 ff 43 	clr	$r16
ffffffff80911058:	35 00 00 02 	sys_call	0x35
ffffffff8091105c:	10 00 40 c4 	bne	$r2,ffffffff809110a0 <pmm_init+0x2f0>
ffffffff80911060:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911064:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff80911068:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091106c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911070:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911074:	77 00 3f fa 	ldi	$r17,119
ffffffff80911078:	88 e2 73 fa 	ldi	$r19,-7544($r19)
ffffffff8091107c:	9c e2 52 fa 	ldi	$r18,-7524($r18)
ffffffff80911080:	b1 e2 10 fa 	ldi	$r16,-7503($r16)
ffffffff80911084:	5e fc 5b 07 	call	ra,($r27),ffffffff80910200 <__panic>
ffffffff80911088:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091108c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911090:	00 00 6a 8c 	ldl	$r3,0($r10)
ffffffff80911094:	21 01 23 40 	subl	$r1,$r3,$r1
ffffffff80911098:	b0 ff ff 13 	br	ffffffff80910f5c <pmm_init+0x1ac>
ffffffff8091109c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809110a4:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809110a8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809110ac:	bf e2 10 fa 	ldi	$r16,-7489($r16)
ffffffff809110b0:	2b fc 5b 07 	call	ra,($r27),ffffffff80910160 <cprintf>
ffffffff809110b4:	ff ff ff 13 	br	ffffffff809110b4 <pmm_init+0x304>
ffffffff809110b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110c0:	00 00 4a 8c 	ldl	$r2,0($r10)
ffffffff809110c4:	00 20 3f fe 	ldih	$r17,8192
ffffffff809110c8:	21 01 22 40 	subl	$r1,$r2,$r1
ffffffff809110cc:	22 a9 21 48 	srl	$r1,0xd,$r2
ffffffff809110d0:	21 01 21 42 	subl	$r17,$r1,$r1
ffffffff809110d4:	83 05 62 40 	cmpule	$r3,$r2,$r3
ffffffff809110d8:	31 a9 21 48 	srl	$r1,0xd,$r17
ffffffff809110dc:	cb ff 7f c0 	beq	$r3,ffffffff8091100c <pmm_init+0x25c>
ffffffff809110e0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809110e4:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff809110e8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809110ec:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809110f0:	66 00 3f fa 	ldi	$r17,102
ffffffff809110f4:	5b e2 52 fa 	ldi	$r18,-7589($r18)
ffffffff809110f8:	7a e2 10 fa 	ldi	$r16,-7558($r16)
ffffffff809110fc:	40 fc 5b 07 	call	ra,($r27),ffffffff80910200 <__panic>
ffffffff80911100:	5f 07 ff 43 	nop	
ffffffff80911104:	7d ff ff 13 	br	ffffffff80910efc <pmm_init+0x14c>
ffffffff80911108:	a0 ff ff 13 	br	ffffffff80910f8c <pmm_init+0x1dc>
ffffffff8091110c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911110 <default_init>:
ffffffff80911110:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911114:	f0 2e bd fb 	ldi	$r29,12016($r29)
ffffffff80911118:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091111c:	f8 80 21 8c 	ldl	$r1,-32520($r1)
ffffffff80911120:	08 00 21 ac 	stl	$r1,8($r1)
ffffffff80911124:	00 00 21 ac 	stl	$r1,0($r1)
ffffffff80911128:	10 00 e1 ab 	stw	$r31,16($r1)
ffffffff8091112c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80911130 <default_nr_free_pages>:
ffffffff80911130:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911134:	d0 2e bd fb 	ldi	$r29,11984($r29)
ffffffff80911138:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091113c:	f8 80 21 8c 	ldl	$r1,-32520($r1)
ffffffff80911140:	10 00 01 88 	ldw	$r0,16($r1)
ffffffff80911144:	20 ed 01 48 	zapnot	$r0,0xf,$r0
ffffffff80911148:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091114c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911150 <default_check>:
ffffffff80911150:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911154:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911158:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091115c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911160 <default_init_memmap>:
ffffffff80911160:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911164:	a0 2e bd fb 	ldi	$r29,11936($r29)
ffffffff80911168:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091116c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911170:	5d 00 20 c2 	beq	$r17,ffffffff809112e8 <default_init_memmap+0x188>
ffffffff80911174:	83 01 20 4a 	s8addl	$r17,0,$r3
ffffffff80911178:	03 01 71 40 	addl	$r3,$r17,$r3
ffffffff8091117c:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff80911180:	03 01 03 42 	addl	$r16,$r3,$r3
ffffffff80911184:	01 05 03 42 	cmpeq	$r16,$r3,$r1
ffffffff80911188:	0d 00 20 c4 	bne	$r1,ffffffff809111c0 <default_init_memmap+0x60>
ffffffff8091118c:	08 00 30 88 	ldw	$r1,8($r16)
ffffffff80911190:	4b 00 20 d8 	blbc	$r1,ffffffff809112c0 <default_init_memmap+0x160>
ffffffff80911194:	41 07 f0 43 	mov	$r16,$r1
ffffffff80911198:	03 00 e0 13 	br	ffffffff809111a8 <default_init_memmap+0x48>
ffffffff8091119c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111a0:	08 00 41 88 	ldw	$r2,8($r1)
ffffffff809111a4:	46 00 40 d8 	blbc	$r2,ffffffff809112c0 <default_init_memmap+0x160>
ffffffff809111a8:	18 00 e1 ab 	stw	$r31,24($r1)
ffffffff809111ac:	08 00 e1 af 	stl	$r31,8($r1)
ffffffff809111b0:	48 00 21 f8 	ldi	$r1,72($r1)
ffffffff809111b4:	b8 ff e1 ab 	stw	$r31,-72($r1)
ffffffff809111b8:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff809111bc:	f8 ff 5f c0 	beq	$r2,ffffffff809111a0 <default_init_memmap+0x40>
ffffffff809111c0:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff809111c4:	18 00 30 aa 	stw	$r17,24($r16)
ffffffff809111c8:	08 00 70 f8 	ldi	$r3,8($r16)
ffffffff809111cc:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff809111d0:	01 00 5f f8 	ldi	$r2,1
ffffffff809111d4:	20 10 5f 18 	wr_f	$r2
ffffffff809111d8:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff809111dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111e0:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff809111e4:	00 10 5f 18 	rd_f	$r2
ffffffff809111e8:	47 00 40 c0 	beq	$r2,ffffffff80911308 <default_init_memmap+0x1a8>
ffffffff809111ec:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff809111f0:	f8 80 63 8c 	ldl	$r3,-32520($r3)
ffffffff809111f4:	10 00 43 88 	ldw	$r2,16($r3)
ffffffff809111f8:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff809111fc:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff80911200:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff80911204:	10 00 23 aa 	stw	$r17,16($r3)
ffffffff80911208:	25 00 40 c4 	bne	$r2,ffffffff809112a0 <default_init_memmap+0x140>
ffffffff8091120c:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80911210:	00 00 c3 8c 	ldl	$r6,0($r3)
ffffffff80911214:	47 07 ff 43 	clr	$r7
ffffffff80911218:	20 00 b0 f8 	ldi	$r5,32($r16)
ffffffff8091121c:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80911220:	0a 00 40 c4 	bne	$r2,ffffffff8091124c <default_init_memmap+0xec>
ffffffff80911224:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911228:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091122c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911230:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911234:	04 05 43 40 	cmpeq	$r2,$r3,$r4
ffffffff80911238:	0d 00 80 c4 	bne	$r4,ffffffff80911270 <default_init_memmap+0x110>
ffffffff8091123c:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911240:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80911244:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80911248:	f9 ff 5f c0 	beq	$r2,ffffffff80911230 <default_init_memmap+0xd0>
ffffffff8091124c:	2c 00 e0 c4 	bne	$r7,ffffffff80911300 <default_init_memmap+0x1a0>
ffffffff80911250:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff80911254:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff80911258:	08 00 a2 ac 	stl	$r5,8($r2)
ffffffff8091125c:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80911260:	20 00 50 ac 	stl	$r2,32($r16)
ffffffff80911264:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911268:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091126c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911270:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff80911274:	46 07 e5 43 	mov	$r5,$r6
ffffffff80911278:	28 00 70 ac 	stl	$r3,40($r16)
ffffffff8091127c:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80911280:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911284:	01 05 43 40 	cmpeq	$r2,$r3,$r1
ffffffff80911288:	1b 00 20 c4 	bne	$r1,ffffffff809112f8 <default_init_memmap+0x198>
ffffffff8091128c:	01 00 ff f8 	ldi	$r7,1
ffffffff80911290:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911294:	ea ff ff 13 	br	ffffffff80911240 <default_init_memmap+0xe0>
ffffffff80911298:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091129c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112a0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809112a4:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff809112a8:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff809112ac:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff809112b0:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff809112b4:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff809112b8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809112bc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809112c0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809112c4:	47 00 3f fa 	ldi	$r17,71
ffffffff809112c8:	e4 e2 73 fa 	ldi	$r19,-7452($r19)
ffffffff809112cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809112d0:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff809112d4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809112d8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809112dc:	9c e2 52 fa 	ldi	$r18,-7524($r18)
ffffffff809112e0:	ce e2 10 fa 	ldi	$r16,-7474($r16)
ffffffff809112e4:	c6 fb 5b 07 	call	ra,($r27),ffffffff80910200 <__panic>
ffffffff809112e8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809112ec:	44 00 3f fa 	ldi	$r17,68
ffffffff809112f0:	c8 e2 73 fa 	ldi	$r19,-7480($r19)
ffffffff809112f4:	f5 ff ff 13 	br	ffffffff809112cc <default_init_memmap+0x16c>
ffffffff809112f8:	00 00 a3 ac 	stl	$r5,0($r3)
ffffffff809112fc:	d9 ff ff 13 	br	ffffffff80911264 <default_init_memmap+0x104>
ffffffff80911300:	00 00 c3 ac 	stl	$r6,0($r3)
ffffffff80911304:	d2 ff ff 13 	br	ffffffff80911250 <default_init_memmap+0xf0>
ffffffff80911308:	b0 ff ff 13 	br	ffffffff809111cc <default_init_memmap+0x6c>
ffffffff8091130c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911310 <default_free_pages>:
ffffffff80911310:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911314:	f0 2c bd fb 	ldi	$r29,11504($r29)
ffffffff80911318:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091131c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911320:	03 00 20 c2 	beq	$r17,ffffffff80911330 <default_free_pages+0x20>
ffffffff80911324:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911328:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091132c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911330:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911334:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff80911338:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091133c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911340:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911344:	6a 00 3f fa 	ldi	$r17,106
ffffffff80911348:	c8 e2 73 fa 	ldi	$r19,-7480($r19)
ffffffff8091134c:	9c e2 52 fa 	ldi	$r18,-7524($r18)
ffffffff80911350:	ce e2 10 fa 	ldi	$r16,-7474($r16)
ffffffff80911354:	aa fb 5b 07 	call	ra,($r27),ffffffff80910200 <__panic>
ffffffff80911358:	5f 07 ff 43 	nop	
ffffffff8091135c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911360 <default_alloc_pages>:
ffffffff80911360:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911364:	a0 2c bd fb 	ldi	$r29,11424($r29)
ffffffff80911368:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091136c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911370:	04 00 00 c2 	beq	$r16,ffffffff80911384 <default_alloc_pages+0x24>
ffffffff80911374:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911378:	40 07 ff 43 	clr	$r0
ffffffff8091137c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911380:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911384:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911388:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff8091138c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911390:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911394:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911398:	60 00 3f fa 	ldi	$r17,96
ffffffff8091139c:	c8 e2 73 fa 	ldi	$r19,-7480($r19)
ffffffff809113a0:	9c e2 52 fa 	ldi	$r18,-7524($r18)
ffffffff809113a4:	ce e2 10 fa 	ldi	$r16,-7474($r16)
ffffffff809113a8:	95 fb 5b 07 	call	ra,($r27),ffffffff80910200 <__panic>
ffffffff809113ac:	5f 07 ff 43 	nop	

ffffffff809113b0 <strnlen>:
ffffffff809113b0:	13 00 20 c2 	beq	$r17,ffffffff80911400 <strnlen+0x50>
ffffffff809113b4:	00 00 50 80 	ldbu	$r2,0($r16)
ffffffff809113b8:	01 00 30 f8 	ldi	$r1,1($r16)
ffffffff809113bc:	10 00 40 c0 	beq	$r2,ffffffff80911400 <strnlen+0x50>
ffffffff809113c0:	11 01 11 42 	addl	$r16,$r17,$r17
ffffffff809113c4:	04 00 e0 13 	br	ffffffff809113d8 <strnlen+0x28>
ffffffff809113c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809113cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809113d0:	ff ff 41 80 	ldbu	$r2,-1($r1)
ffffffff809113d4:	06 00 40 c0 	beq	$r2,ffffffff809113f0 <strnlen+0x40>
ffffffff809113d8:	02 05 31 40 	cmpeq	$r1,$r17,$r2
ffffffff809113dc:	20 01 30 40 	subl	$r1,$r16,$r0
ffffffff809113e0:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff809113e4:	fa ff 5f c0 	beq	$r2,ffffffff809113d0 <strnlen+0x20>
ffffffff809113e8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809113ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809113f0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809113f4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809113f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809113fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911400:	40 07 ff 43 	clr	$r0
ffffffff80911404:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911408:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091140c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911410 <memset>:
ffffffff80911410:	ff ff 52 f8 	ldi	$r2,-1($r18)
ffffffff80911414:	16 00 40 c2 	beq	$r18,ffffffff80911470 <memset+0x60>
ffffffff80911418:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff8091141c:	41 07 f0 43 	mov	$r16,$r1
ffffffff80911420:	0c 00 60 c4 	bne	$r3,ffffffff80911454 <memset+0x44>
ffffffff80911424:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911428:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091142c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911430:	50 00 e1 9b 	fillde	80($r1)
ffffffff80911434:	00 00 21 a2 	stb	$r17,0($r1)
ffffffff80911438:	fc ff 42 f8 	ldi	$r2,-4($r2)
ffffffff8091143c:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff80911440:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80911444:	fd ff 21 a2 	stb	$r17,-3($r1)
ffffffff80911448:	fe ff 21 a2 	stb	$r17,-2($r1)
ffffffff8091144c:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80911450:	f7 ff 7f c0 	beq	$r3,ffffffff80911430 <memset+0x20>
ffffffff80911454:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff80911458:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff8091145c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911460:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80911464:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80911468:	03 05 22 40 	cmpeq	$r1,$r2,$r3
ffffffff8091146c:	fc ff 7f c0 	beq	$r3,ffffffff80911460 <memset+0x50>
ffffffff80911470:	40 07 f0 43 	mov	$r16,$r0
ffffffff80911474:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911478:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091147c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911480 <printnum>:
ffffffff80911480:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911484:	80 2b bd fb 	ldi	$r29,11136($r29)
ffffffff80911488:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091148c:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80911490:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80911494:	39 ed 61 4a 	zapnot	$r19,0xf,$r25
ffffffff80911498:	58 07 f2 43 	mov	$r18,$r24
ffffffff8091149c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809114a0:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809114a4:	81 05 32 43 	cmpule	$r25,$r18,$r1
ffffffff809114a8:	29 20 80 4a 	subw	$r20,0x1,$r9
ffffffff809114ac:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809114b0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809114b4:	4b 07 f0 43 	mov	$r16,$r11
ffffffff809114b8:	4c 07 f1 43 	mov	$r17,$r12
ffffffff809114bc:	28 00 be ad 	stl	$r13,40(sp)
ffffffff809114c0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809114c4:	4d 07 f5 43 	mov	$r21,$r13
ffffffff809114c8:	03 02 fb 06 	call	$r23,($r27),ffffffff80911cd8 <__remlu>
ffffffff809114cc:	0a 00 fb 43 	addw	$r31,$r27,$r10
ffffffff809114d0:	1f 00 20 c4 	bne	$r1,ffffffff80911550 <printnum+0xd0>
ffffffff809114d4:	0a 00 20 cd 	ble	$r9,ffffffff80911500 <printnum+0x80>
ffffffff809114d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809114dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809114e0:	29 20 20 49 	subw	$r9,0x1,$r9
ffffffff809114e4:	51 07 ec 43 	mov	$r12,$r17
ffffffff809114e8:	50 07 ed 43 	mov	$r13,$r16
ffffffff809114ec:	5b 07 eb 43 	mov	$r11,$r27
ffffffff809114f0:	00 00 5b 07 	call	ra,($r27),ffffffff809114f4 <printnum+0x74>
ffffffff809114f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809114f8:	0c 2b bd fb 	ldi	$r29,11020($r29)
ffffffff809114fc:	f8 ff 3f c5 	bne	$r9,ffffffff809114e0 <printnum+0x60>
ffffffff80911500:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80911504:	2a ed 41 49 	zapnot	$r10,0xf,$r10
ffffffff80911508:	51 07 ec 43 	mov	$r12,$r17
ffffffff8091150c:	5b 07 eb 43 	mov	$r11,$r27
ffffffff80911510:	40 e3 21 f8 	ldi	$r1,-7360($r1)
ffffffff80911514:	0a 01 41 41 	addl	$r10,$r1,$r10
ffffffff80911518:	00 00 0a 82 	ldbu	$r16,0($r10)
ffffffff8091151c:	50 0d f0 43 	sextb	$r16,$r16
ffffffff80911520:	00 00 5b 07 	call	ra,($r27),ffffffff80911524 <printnum+0xa4>
ffffffff80911524:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911528:	dc 2a bd fb 	ldi	$r29,10972($r29)
ffffffff8091152c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911530:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911534:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911538:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff8091153c:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80911540:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80911544:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80911548:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091154c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911550:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911554:	80 80 7b 8f 	ldl	$r27,-32640($r27)
ffffffff80911558:	54 07 e9 43 	mov	$r9,$r20
ffffffff8091155c:	a8 01 fb 06 	call	$r23,($r27),ffffffff80911c00 <__divlu>
ffffffff80911560:	52 07 fb 43 	mov	$r27,$r18
ffffffff80911564:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911568:	18 81 7b 8f 	ldl	$r27,-32488($r27)
ffffffff8091156c:	c4 ff 5b 07 	call	ra,($r27),ffffffff80911480 <printnum>
ffffffff80911570:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911574:	90 2a bd fb 	ldi	$r29,10896($r29)
ffffffff80911578:	e1 ff ff 13 	br	ffffffff80911500 <printnum+0x80>
ffffffff8091157c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911580 <vprintfmt>:
ffffffff80911580:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911584:	80 2a bd fb 	ldi	$r29,10880($r29)
ffffffff80911588:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff8091158c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911590:	ff ff 7d fd 	ldih	$r11,-1($r29)
ffffffff80911594:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911598:	49 07 f1 43 	mov	$r17,$r9
ffffffff8091159c:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809115a0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809115a4:	4a 07 f0 43 	mov	$r16,$r10
ffffffff809115a8:	0c 00 f4 43 	addw	$r31,$r20,$r12
ffffffff809115ac:	38 00 fe ad 	stl	fp,56(sp)
ffffffff809115b0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809115b4:	4f 07 f2 43 	mov	$r18,fp
ffffffff809115b8:	64 e3 6b f9 	ldi	$r11,-7324($r11)
ffffffff809115bc:	28 00 be ad 	stl	$r13,40(sp)
ffffffff809115c0:	30 00 de ad 	stl	$r14,48(sp)
ffffffff809115c4:	40 00 7e ae 	stl	$r19,64(sp)
ffffffff809115c8:	48 00 9e ae 	stl	$r20,72(sp)
ffffffff809115cc:	50 00 7e ae 	stl	$r19,80(sp)
ffffffff809115d0:	00 00 0f 82 	ldbu	$r16,0(fp)
ffffffff809115d4:	01 00 cf f9 	ldi	$r14,1(fp)
ffffffff809115d8:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff809115dc:	0b 00 40 c4 	bne	$r2,ffffffff8091160c <vprintfmt+0x8c>
ffffffff809115e0:	1b 00 00 c2 	beq	$r16,ffffffff80911650 <vprintfmt+0xd0>
ffffffff809115e4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809115e8:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809115ec:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809115f0:	00 00 5b 07 	call	ra,($r27),ffffffff809115f4 <vprintfmt+0x74>
ffffffff809115f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809115f8:	0c 2a bd fb 	ldi	$r29,10764($r29)
ffffffff809115fc:	11 00 ee 27 	fillcs	17($r14)
ffffffff80911600:	ff ff 0e 82 	ldbu	$r16,-1($r14)
ffffffff80911604:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff80911608:	f5 ff 5f c0 	beq	$r2,ffffffff809115e0 <vprintfmt+0x60>
ffffffff8091160c:	ff ff 9f f8 	ldi	$r4,-1
ffffffff80911610:	20 00 bf fa 	ldi	$r21,32
ffffffff80911614:	45 07 ff 43 	clr	$r5
ffffffff80911618:	48 07 ff 43 	clr	$r8
ffffffff8091161c:	4d 07 e4 43 	mov	$r4,$r13
ffffffff80911620:	00 00 ce 80 	ldbu	$r6,0($r14)
ffffffff80911624:	01 00 ee f9 	ldi	fp,1($r14)
ffffffff80911628:	22 60 c4 48 	subw	$r6,0x23,$r2
ffffffff8091162c:	02 e7 5f 48 	and	$r2,0xff,$r2
ffffffff80911630:	87 a5 4a 48 	cmpule	$r2,0x55,$r7
ffffffff80911634:	f2 00 e0 c0 	beq	$r7,ffffffff80911a00 <vprintfmt+0x480>
ffffffff80911638:	42 01 40 48 	s4addl	$r2,0,$r2
ffffffff8091163c:	02 01 4b 40 	addl	$r2,$r11,$r2
ffffffff80911640:	00 00 42 88 	ldw	$r2,0($r2)
ffffffff80911644:	02 01 a2 43 	addl	$r29,$r2,$r2
ffffffff80911648:	00 00 e2 0f 	jmp	$r31,($r2),ffffffff8091164c <vprintfmt+0xcc>
ffffffff8091164c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911650:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911654:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911658:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091165c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911660:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80911664:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80911668:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff8091166c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80911670:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80911674:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911678:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091167c:	30 00 bf fa 	ldi	$r21,48
ffffffff80911680:	e7 ff ff 13 	br	ffffffff80911620 <vprintfmt+0xa0>
ffffffff80911684:	01 00 4e 80 	ldbu	$r2,1($r14)
ffffffff80911688:	24 00 c6 48 	subw	$r6,0x30,$r4
ffffffff8091168c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80911690:	46 0d e2 43 	sextb	$r2,$r6
ffffffff80911694:	22 00 c6 48 	subw	$r6,0x30,$r2
ffffffff80911698:	06 00 e6 43 	addw	$r31,$r6,$r6
ffffffff8091169c:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff809116a0:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff809116a4:	c8 00 40 c0 	beq	$r2,ffffffff809119c8 <vprintfmt+0x448>
ffffffff809116a8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809116ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809116b0:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809116b4:	00 00 6e 80 	ldbu	$r3,0($r14)
ffffffff809116b8:	42 01 80 48 	s4addl	$r4,0,$r2
ffffffff809116bc:	04 00 82 40 	addw	$r4,$r2,$r4
ffffffff809116c0:	04 01 84 40 	addl	$r4,$r4,$r4
ffffffff809116c4:	43 0d e3 43 	sextb	$r3,$r3
ffffffff809116c8:	04 00 86 40 	addw	$r4,$r6,$r4
ffffffff809116cc:	22 00 66 48 	subw	$r3,0x30,$r2
ffffffff809116d0:	24 00 86 48 	subw	$r4,0x30,$r4
ffffffff809116d4:	06 00 e3 43 	addw	$r31,$r3,$r6
ffffffff809116d8:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff809116dc:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff809116e0:	f3 ff 5f c4 	bne	$r2,ffffffff809116b0 <vprintfmt+0x130>
ffffffff809116e4:	b8 00 e0 13 	br	ffffffff809119c8 <vprintfmt+0x448>
ffffffff809116e8:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff809116ec:	51 07 e9 43 	mov	$r9,$r17
ffffffff809116f0:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809116f4:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff809116f8:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff809116fc:	00 00 01 8a 	ldw	$r16,0($r1)
ffffffff80911700:	00 00 5b 07 	call	ra,($r27),ffffffff80911704 <vprintfmt+0x184>
ffffffff80911704:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911708:	fc 28 bd fb 	ldi	$r29,10492($r29)
ffffffff8091170c:	b0 ff ff 13 	br	ffffffff809115d0 <vprintfmt+0x50>
ffffffff80911710:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80911714:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80911718:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff8091171c:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80911720:	e0 00 20 c4 	bne	$r1,ffffffff80911aa4 <vprintfmt+0x524>
ffffffff80911724:	00 00 cc 8d 	ldl	$r14,0($r12)
ffffffff80911728:	52 07 ee 43 	mov	$r14,$r18
ffffffff8091172c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80911730:	0a 00 7f fa 	ldi	$r19,10
ffffffff80911734:	2e 00 c0 d5 	bge	$r14,ffffffff809117f0 <vprintfmt+0x270>
ffffffff80911738:	60 00 be ae 	stl	$r21,96(sp)
ffffffff8091173c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911740:	2d 00 1f fa 	ldi	$r16,45
ffffffff80911744:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80911748:	00 00 5b 07 	call	ra,($r27),ffffffff8091174c <vprintfmt+0x1cc>
ffffffff8091174c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911750:	b4 28 bd fb 	ldi	$r29,10420($r29)
ffffffff80911754:	32 01 ee 43 	negl	$r14,$r18
ffffffff80911758:	0a 00 7f fa 	ldi	$r19,10
ffffffff8091175c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80911760:	23 00 e0 13 	br	ffffffff809117f0 <vprintfmt+0x270>
ffffffff80911764:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80911768:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff8091176c:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80911770:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff80911774:	21 01 e2 43 	negl	$r2,$r1
ffffffff80911778:	21 04 42 44 	selge	$r2,$r2,$r1,$r1
ffffffff8091177c:	13 00 e1 43 	addw	$r31,$r1,$r19
ffffffff80911780:	41 c5 60 4a 	cmple	$r19,0x6,$r1
ffffffff80911784:	af 00 20 c0 	beq	$r1,ffffffff80911a44 <vprintfmt+0x4c4>
ffffffff80911788:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff8091178c:	81 01 60 4a 	s8addl	$r19,0,$r1
ffffffff80911790:	20 e5 42 f8 	ldi	$r2,-6880($r2)
ffffffff80911794:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80911798:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091179c:	a9 00 20 c0 	beq	$r1,ffffffff80911a44 <vprintfmt+0x4c4>
ffffffff809117a0:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809117a4:	53 07 e1 43 	mov	$r1,$r19
ffffffff809117a8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809117ac:	50 07 ea 43 	mov	$r10,$r16
ffffffff809117b0:	ae e2 52 fa 	ldi	$r18,-7506($r18)
ffffffff809117b4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809117b8:	a8 80 7b 8f 	ldl	$r27,-32600($r27)
ffffffff809117bc:	f8 00 5b 07 	call	ra,($r27),ffffffff80911ba0 <printfmt>
ffffffff809117c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117c4:	40 28 bd fb 	ldi	$r29,10304($r29)
ffffffff809117c8:	81 ff ff 13 	br	ffffffff809115d0 <vprintfmt+0x50>
ffffffff809117cc:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff809117d0:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff809117d4:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff809117d8:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff809117dc:	c0 00 20 c4 	bne	$r1,ffffffff80911ae0 <vprintfmt+0x560>
ffffffff809117e0:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff809117e4:	08 00 7f fa 	ldi	$r19,8
ffffffff809117e8:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809117ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809117f0:	54 07 ed 43 	mov	$r13,$r20
ffffffff809117f4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809117f8:	50 07 ea 43 	mov	$r10,$r16
ffffffff809117fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911800:	18 81 7b 8f 	ldl	$r27,-32488($r27)
ffffffff80911804:	1e ff 5b 07 	call	ra,($r27),ffffffff80911480 <printnum>
ffffffff80911808:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091180c:	f8 27 bd fb 	ldi	$r29,10232($r29)
ffffffff80911810:	6f ff ff 13 	br	ffffffff809115d0 <vprintfmt+0x50>
ffffffff80911814:	08 20 00 49 	addw	$r8,0x1,$r8
ffffffff80911818:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091181c:	80 ff ff 13 	br	ffffffff80911620 <vprintfmt+0xa0>
ffffffff80911820:	60 00 be ae 	stl	$r21,96(sp)
ffffffff80911824:	30 00 1f fa 	ldi	$r16,48
ffffffff80911828:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091182c:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80911830:	00 00 5b 07 	call	ra,($r27),ffffffff80911834 <vprintfmt+0x2b4>
ffffffff80911834:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911838:	cc 27 bd fb 	ldi	$r29,10188($r29)
ffffffff8091183c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911840:	78 00 1f fa 	ldi	$r16,120
ffffffff80911844:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80911848:	00 00 5b 07 	call	ra,($r27),ffffffff8091184c <vprintfmt+0x2cc>
ffffffff8091184c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911850:	b4 27 bd fb 	ldi	$r29,10164($r29)
ffffffff80911854:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80911858:	10 00 7f fa 	ldi	$r19,16
ffffffff8091185c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80911860:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80911864:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80911868:	00 00 41 8e 	ldl	$r18,0($r1)
ffffffff8091186c:	e0 ff ff 13 	br	ffffffff809117f0 <vprintfmt+0x270>
ffffffff80911870:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80911874:	06 a5 a5 4a 	cmpeq	$r21,0x2d,$r6
ffffffff80911878:	21 05 ed 43 	cmplt	$r31,$r13,$r1
ffffffff8091187c:	ff ff 7d ff 	ldih	$r27,-1($r29)
ffffffff80911880:	06 05 c0 48 	cmpeq	$r6,0,$r6
ffffffff80911884:	51 e3 7b fb 	ldi	$r27,-7343($r27)
ffffffff80911888:	01 07 26 40 	and	$r1,$r6,$r1
ffffffff8091188c:	02 01 6c 40 	addl	$r3,$r12,$r2
ffffffff80911890:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80911894:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80911898:	42 00 5b 44 	seleq	$r2,$r27,$r2,$r2
ffffffff8091189c:	96 00 20 c4 	bne	$r1,ffffffff80911af8 <vprintfmt+0x578>
ffffffff809118a0:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff809118a4:	41 0d e1 43 	sextb	$r1,$r1
ffffffff809118a8:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff809118ac:	19 00 00 c2 	beq	$r16,ffffffff80911914 <vprintfmt+0x394>
ffffffff809118b0:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff809118b4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809118b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809118bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809118c0:	03 00 80 c8 	blt	$r4,ffffffff809118d0 <vprintfmt+0x350>
ffffffff809118c4:	24 20 80 48 	subw	$r4,0x1,$r4
ffffffff809118c8:	01 00 c4 f8 	ldi	$r6,1($r4)
ffffffff809118cc:	11 00 c0 c0 	beq	$r6,ffffffff80911914 <vprintfmt+0x394>
ffffffff809118d0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809118d4:	65 00 a0 c4 	bne	$r5,ffffffff80911a6c <vprintfmt+0x4ec>
ffffffff809118d8:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff809118dc:	68 00 be ac 	stl	$r5,104(sp)
ffffffff809118e0:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809118e4:	00 00 5b 07 	call	ra,($r27),ffffffff809118e8 <vprintfmt+0x368>
ffffffff809118e8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809118ec:	18 27 bd fb 	ldi	$r29,10008($r29)
ffffffff809118f0:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff809118f4:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff809118f8:	f6 ff 2e 80 	ldbu	$r1,-10($r14)
ffffffff809118fc:	00 00 ee 27 	fillcs	0($r14)
ffffffff80911900:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff80911904:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80911908:	41 0d e1 43 	sextb	$r1,$r1
ffffffff8091190c:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80911910:	eb ff 1f c6 	bne	$r16,ffffffff809118c0 <vprintfmt+0x340>
ffffffff80911914:	2e ff bf cd 	ble	$r13,ffffffff809115d0 <vprintfmt+0x50>
ffffffff80911918:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091191c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911920:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff80911924:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911928:	20 00 1f fa 	ldi	$r16,32
ffffffff8091192c:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80911930:	00 00 5b 07 	call	ra,($r27),ffffffff80911934 <vprintfmt+0x3b4>
ffffffff80911934:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911938:	cc 26 bd fb 	ldi	$r29,9932($r29)
ffffffff8091193c:	f8 ff bf c5 	bne	$r13,ffffffff80911920 <vprintfmt+0x3a0>
ffffffff80911940:	23 ff ff 13 	br	ffffffff809115d0 <vprintfmt+0x50>
ffffffff80911944:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80911948:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff8091194c:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80911950:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80911954:	5c 00 20 c4 	bne	$r1,ffffffff80911ac8 <vprintfmt+0x548>
ffffffff80911958:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff8091195c:	0a 00 7f fa 	ldi	$r19,10
ffffffff80911960:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80911964:	a2 ff ff 13 	br	ffffffff809117f0 <vprintfmt+0x270>
ffffffff80911968:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff8091196c:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80911970:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80911974:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80911978:	4d 00 20 c4 	bne	$r1,ffffffff80911ab0 <vprintfmt+0x530>
ffffffff8091197c:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80911980:	10 00 7f fa 	ldi	$r19,16
ffffffff80911984:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80911988:	99 ff ff 13 	br	ffffffff809117f0 <vprintfmt+0x270>
ffffffff8091198c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80911990:	01 00 bf f8 	ldi	$r5,1
ffffffff80911994:	22 ff ff 13 	br	ffffffff80911620 <vprintfmt+0xa0>
ffffffff80911998:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091199c:	25 00 1f fa 	ldi	$r16,37
ffffffff809119a0:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809119a4:	00 00 5b 07 	call	ra,($r27),ffffffff809119a8 <vprintfmt+0x428>
ffffffff809119a8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809119ac:	58 26 bd fb 	ldi	$r29,9816($r29)
ffffffff809119b0:	07 ff ff 13 	br	ffffffff809115d0 <vprintfmt+0x50>
ffffffff809119b4:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff809119b8:	4e 07 ef 43 	mov	fp,$r14
ffffffff809119bc:	02 01 2c 40 	addl	$r1,$r12,$r2
ffffffff809119c0:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff809119c4:	00 00 82 88 	ldw	$r4,0($r2)
ffffffff809119c8:	42 07 ed 43 	mov	$r13,$r2
ffffffff809119cc:	ff ff 7f f8 	ldi	$r3,-1
ffffffff809119d0:	42 10 a4 45 	sellt	$r13,$r4,$r2,$r2
ffffffff809119d4:	84 10 a3 45 	sellt	$r13,$r3,$r4,$r4
ffffffff809119d8:	4d 07 e2 43 	mov	$r2,$r13
ffffffff809119dc:	10 ff ff 13 	br	ffffffff80911620 <vprintfmt+0xa0>
ffffffff809119e0:	4e 07 ef 43 	mov	fp,$r14
ffffffff809119e4:	2d 00 bf fa 	ldi	$r21,45
ffffffff809119e8:	0d ff ff 13 	br	ffffffff80911620 <vprintfmt+0xa0>
ffffffff809119ec:	54 07 ed 43 	mov	$r13,$r20
ffffffff809119f0:	4e 07 ef 43 	mov	fp,$r14
ffffffff809119f4:	94 12 80 4e 	sellt	$r20,0,$r20,$r20
ffffffff809119f8:	0d 00 f4 43 	addw	$r31,$r20,$r13
ffffffff809119fc:	08 ff ff 13 	br	ffffffff80911620 <vprintfmt+0xa0>
ffffffff80911a00:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911a04:	25 00 1f fa 	ldi	$r16,37
ffffffff80911a08:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80911a0c:	4f 07 ee 43 	mov	$r14,fp
ffffffff80911a10:	00 00 5b 07 	call	ra,($r27),ffffffff80911a14 <vprintfmt+0x494>
ffffffff80911a14:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a18:	ec 25 bd fb 	ldi	$r29,9708($r29)
ffffffff80911a1c:	ff ff 2e 80 	ldbu	$r1,-1($r14)
ffffffff80911a20:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff80911a24:	ea fe 3f c4 	bne	$r1,ffffffff809115d0 <vprintfmt+0x50>
ffffffff80911a28:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911a2c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911a30:	ff ff ef f9 	ldi	fp,-1(fp)
ffffffff80911a34:	ff ff 2f 80 	ldbu	$r1,-1(fp)
ffffffff80911a38:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff80911a3c:	fc ff 3f c0 	beq	$r1,ffffffff80911a30 <vprintfmt+0x4b0>
ffffffff80911a40:	e3 fe ff 13 	br	ffffffff809115d0 <vprintfmt+0x50>
ffffffff80911a44:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911a48:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911a4c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911a50:	58 e3 52 fa 	ldi	$r18,-7336($r18)
ffffffff80911a54:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a58:	a8 80 7b 8f 	ldl	$r27,-32600($r27)
ffffffff80911a5c:	50 00 5b 07 	call	ra,($r27),ffffffff80911ba0 <printfmt>
ffffffff80911a60:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a64:	a0 25 bd fb 	ldi	$r29,9632($r29)
ffffffff80911a68:	d9 fe ff 13 	br	ffffffff809115d0 <vprintfmt+0x50>
ffffffff80911a6c:	21 00 24 48 	subw	$r1,0x20,$r1
ffffffff80911a70:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80911a74:	81 c5 2b 48 	cmpule	$r1,0x5e,$r1
ffffffff80911a78:	97 ff 3f c4 	bne	$r1,ffffffff809118d8 <vprintfmt+0x358>
ffffffff80911a7c:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80911a80:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80911a84:	3f 00 1f fa 	ldi	$r16,63
ffffffff80911a88:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80911a8c:	00 00 5b 07 	call	ra,($r27),ffffffff80911a90 <vprintfmt+0x510>
ffffffff80911a90:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a94:	70 25 bd fb 	ldi	$r29,9584($r29)
ffffffff80911a98:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80911a9c:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80911aa0:	95 ff ff 13 	br	ffffffff809118f8 <vprintfmt+0x378>
ffffffff80911aa4:	1f ff 1f c5 	bne	$r8,ffffffff80911724 <vprintfmt+0x1a4>
ffffffff80911aa8:	00 00 cc 89 	ldw	$r14,0($r12)
ffffffff80911aac:	1e ff ff 13 	br	ffffffff80911728 <vprintfmt+0x1a8>
ffffffff80911ab0:	b2 ff 1f c5 	bne	$r8,ffffffff8091197c <vprintfmt+0x3fc>
ffffffff80911ab4:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80911ab8:	10 00 7f fa 	ldi	$r19,16
ffffffff80911abc:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80911ac0:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80911ac4:	4a ff ff 13 	br	ffffffff809117f0 <vprintfmt+0x270>
ffffffff80911ac8:	a3 ff 1f c5 	bne	$r8,ffffffff80911958 <vprintfmt+0x3d8>
ffffffff80911acc:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80911ad0:	0a 00 7f fa 	ldi	$r19,10
ffffffff80911ad4:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80911ad8:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80911adc:	44 ff ff 13 	br	ffffffff809117f0 <vprintfmt+0x270>
ffffffff80911ae0:	3f ff 1f c5 	bne	$r8,ffffffff809117e0 <vprintfmt+0x260>
ffffffff80911ae4:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80911ae8:	08 00 7f fa 	ldi	$r19,8
ffffffff80911aec:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80911af0:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80911af4:	3e ff ff 13 	br	ffffffff809117f0 <vprintfmt+0x270>
ffffffff80911af8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911afc:	60 80 7b 8f 	ldl	$r27,-32672($r27)
ffffffff80911b00:	51 07 e4 43 	mov	$r4,$r17
ffffffff80911b04:	50 07 e2 43 	mov	$r2,$r16
ffffffff80911b08:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff80911b0c:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80911b10:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80911b14:	60 00 be ae 	stl	$r21,96(sp)
ffffffff80911b18:	25 fe 5b 07 	call	ra,($r27),ffffffff809113b0 <strnlen>
ffffffff80911b1c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911b20:	2d 00 a0 41 	subw	$r13,$r0,$r13
ffffffff80911b24:	e4 24 bd fb 	ldi	$r29,9444($r29)
ffffffff80911b28:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff80911b2c:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80911b30:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80911b34:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80911b38:	10 00 a0 cd 	ble	$r13,ffffffff80911b7c <vprintfmt+0x5fc>
ffffffff80911b3c:	0e 00 f5 43 	addw	$r31,$r21,$r14
ffffffff80911b40:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff80911b44:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80911b48:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911b4c:	50 07 ee 43 	mov	$r14,$r16
ffffffff80911b50:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80911b54:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80911b58:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff80911b5c:	00 00 5b 07 	call	ra,($r27),ffffffff80911b60 <vprintfmt+0x5e0>
ffffffff80911b60:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911b64:	a0 24 bd fb 	ldi	$r29,9376($r29)
ffffffff80911b68:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff80911b6c:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80911b70:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80911b74:	f2 ff bf c5 	bne	$r13,ffffffff80911b40 <vprintfmt+0x5c0>
ffffffff80911b78:	4d 07 ff 43 	clr	$r13
ffffffff80911b7c:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80911b80:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80911b84:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80911b88:	91 fe 1f c2 	beq	$r16,ffffffff809115d0 <vprintfmt+0x50>
ffffffff80911b8c:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80911b90:	4b ff ff 13 	br	ffffffff809118c0 <vprintfmt+0x340>
ffffffff80911b94:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b98:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b9c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911ba0 <printfmt>:
ffffffff80911ba0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911ba4:	60 24 bd fb 	ldi	$r29,9312($r29)
ffffffff80911ba8:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff80911bac:	18 00 5f f8 	ldi	$r2,24
ffffffff80911bb0:	18 00 5e a8 	stw	$r2,24(sp)
ffffffff80911bb4:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80911bb8:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff80911bbc:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80911bc0:	18 00 9e 8e 	ldl	$r20,24(sp)
ffffffff80911bc4:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff80911bc8:	53 07 e1 43 	mov	$r1,$r19
ffffffff80911bcc:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff80911bd0:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911bd4:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80911bd8:	78 00 be ae 	stl	$r21,120(sp)
ffffffff80911bdc:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80911be0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911be4:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80911be8:	65 fe 5b 07 	call	ra,($r27),ffffffff80911580 <vprintfmt>
ffffffff80911bec:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911bf0:	14 24 bd fb 	ldi	$r29,9236($r29)
ffffffff80911bf4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911bf8:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80911bfc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80911c00 <__divlu>:
ffffffff80911c00:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80911c04:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80911c08:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80911c0c:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80911c10:	42 07 18 43 	or	$r24,$r24,$r2
ffffffff80911c14:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff80911c18:	5b 07 ff 43 	clr	$r27
ffffffff80911c1c:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80911c20:	40 27 e0 4b 	mov	0x1,$r0
ffffffff80911c24:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80911c28:	0d 00 20 c0 	beq	$r1,ffffffff80911c60 <__divlu+0x60>
ffffffff80911c2c:	7c 05 22 40 	cmpult	$r1,$r2,$r28
ffffffff80911c30:	03 00 20 c8 	blt	$r1,ffffffff80911c40 <__divlu+0x40>
ffffffff80911c34:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff80911c38:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff80911c3c:	fb ff 9f c7 	bne	$r28,ffffffff80911c2c <__divlu+0x2c>
ffffffff80911c40:	04 01 60 43 	addl	$r27,$r0,$r4
ffffffff80911c44:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80911c48:	9c 05 22 40 	cmpule	$r1,$r2,$r28
ffffffff80911c4c:	23 01 41 40 	subl	$r2,$r1,$r3
ffffffff80911c50:	7b 17 84 47 	selne	$r28,$r4,$r27,$r27
ffffffff80911c54:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80911c58:	42 14 83 47 	selne	$r28,$r3,$r2,$r2
ffffffff80911c5c:	f8 ff 1f c4 	bne	$r0,ffffffff80911c40 <__divlu+0x40>
ffffffff80911c60:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80911c64:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80911c68:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff80911c6c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80911c70:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80911c74:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80911c78:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80911c7c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911c80 <__divl>:
ffffffff80911c80:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80911c84:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80911c88:	de ff 9f d7 	bge	$r28,ffffffff80911c04 <__divlu+0x4>
ffffffff80911c8c:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80911c90:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80911c94:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80911c98:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80911c9c:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80911ca0:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80911ca4:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80911ca8:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80911cac:	d4 ff ff 16 	bsr	$r23,ffffffff80911c00 <__divlu>
ffffffff80911cb0:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80911cb4:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80911cb8:	9c 07 19 43 	xor	$r24,$r25,$r28
ffffffff80911cbc:	23 01 fb 43 	negl	$r27,$r3
ffffffff80911cc0:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80911cc4:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80911cc8:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80911ccc:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80911cd0:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80911cd4:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911cd8 <__remlu>:
ffffffff80911cd8:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff80911cdc:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80911ce0:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80911ce4:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80911ce8:	5b 07 18 43 	or	$r24,$r24,$r27
ffffffff80911cec:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff80911cf0:	42 07 ff 43 	clr	$r2
ffffffff80911cf4:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80911cf8:	40 27 e0 4b 	mov	0x1,$r0
ffffffff80911cfc:	0b 00 20 c0 	beq	$r1,ffffffff80911d2c <__remlu+0x54>
ffffffff80911d00:	7c 05 3b 40 	cmpult	$r1,$r27,$r28
ffffffff80911d04:	03 00 20 c8 	blt	$r1,ffffffff80911d14 <__remlu+0x3c>
ffffffff80911d08:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff80911d0c:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff80911d10:	fb ff 9f c7 	bne	$r28,ffffffff80911d00 <__remlu+0x28>
ffffffff80911d14:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80911d18:	9c 05 3b 40 	cmpule	$r1,$r27,$r28
ffffffff80911d1c:	23 01 61 43 	subl	$r27,$r1,$r3
ffffffff80911d20:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80911d24:	7b 17 83 47 	selne	$r28,$r3,$r27,$r27
ffffffff80911d28:	fa ff 1f c4 	bne	$r0,ffffffff80911d14 <__remlu+0x3c>
ffffffff80911d2c:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80911d30:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80911d34:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff80911d38:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80911d3c:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80911d40:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80911d44:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911d48 <__reml>:
ffffffff80911d48:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff80911d4c:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80911d50:	e2 ff 9f d7 	bge	$r28,ffffffff80911cdc <__remlu+0x4>
ffffffff80911d54:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80911d58:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80911d5c:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80911d60:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80911d64:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80911d68:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80911d6c:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80911d70:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80911d74:	d8 ff ff 16 	bsr	$r23,ffffffff80911cd8 <__remlu>
ffffffff80911d78:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80911d7c:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80911d80:	5c 07 18 43 	or	$r24,$r24,$r28
ffffffff80911d84:	23 01 fb 43 	negl	$r27,$r3
ffffffff80911d88:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80911d8c:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80911d90:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80911d94:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80911d98:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80911d9c:	00 00 fe ff 	ldih	$r31,0(sp)
