
bin/kernel：     文件格式 elf64-sw_64


Disassembly of section .text:

ffffffff80910000 <kern_entry>:
ffffffff80910000:	00 00 60 13 	br	$r27,ffffffff80910004 <kern_entry+0x4>
ffffffff80910004:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910008:	fc 7f bd fb 	ldi	$r29,32764($r29)
ffffffff8091000c:	b8 81 dd 8f 	ldl	sp,-32328($r29)
ffffffff80910010:	70 80 7d 8f 	ldl	$r27,-32656($r29)
ffffffff80910014:	02 00 5b 07 	call	ra,($r27),ffffffff80910020 <kern_init>
	...

ffffffff80910020 <kern_init>:
ffffffff80910020:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910024:	e0 7f bd fb 	ldi	$r29,32736($r29)
ffffffff80910028:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff8091002c:	88 80 10 8e 	ldl	$r16,-32632($r16)
ffffffff80910030:	00 00 5d fe 	ldih	$r18,0($r29)
ffffffff80910034:	f8 80 52 8e 	ldl	$r18,-32520($r18)
ffffffff80910038:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091003c:	51 07 ff 43 	clr	$r17
ffffffff80910040:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910044:	38 81 7b 8f 	ldl	$r27,-32456($r27)
ffffffff80910048:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091004c:	32 01 50 42 	subl	$r18,$r16,$r18
ffffffff80910050:	37 11 5b 07 	call	ra,($r27),ffffffff80914530 <memset>
ffffffff80910054:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910058:	ac 7f bd fb 	ldi	$r29,32684($r29)
ffffffff8091005c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910060:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910064:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910068:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff8091006c:	d3 ce 10 fa 	ldi	$r16,-12589($r16)
ffffffff80910070:	c0 ce 31 fa 	ldi	$r17,-12608($r17)
ffffffff80910074:	46 00 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910078:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091007c:	88 7f bd fb 	ldi	$r29,32648($r29)
ffffffff80910080:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910084:	00 80 7b 8f 	ldl	$r27,-32768($r27)
ffffffff80910088:	9d 00 5b 07 	call	ra,($r27),ffffffff80910300 <print_kerninfo>
ffffffff8091008c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910090:	74 7f bd fb 	ldi	$r29,32628($r29)
ffffffff80910094:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910098:	e0 81 7b 8f 	ldl	$r27,-32288($r27)
ffffffff8091009c:	dc 00 5b 07 	call	ra,($r27),ffffffff80910410 <trap_init>
ffffffff809100a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100a4:	60 7f bd fb 	ldi	$r29,32608($r29)
ffffffff809100a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100ac:	88 81 7b 8f 	ldl	$r27,-32376($r27)
ffffffff809100b0:	13 0d 5b 07 	call	ra,($r27),ffffffff80913500 <pmm_init>
ffffffff809100b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100b8:	4c 7f bd fb 	ldi	$r29,32588($r29)
ffffffff809100bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100c0:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff809100c4:	fe 03 5b 07 	call	ra,($r27),ffffffff809110c0 <vmm_init>
ffffffff809100c8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100cc:	38 7f bd fb 	ldi	$r29,32568($r29)
ffffffff809100d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100d4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809100d8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809100dc:	d8 ce 10 fa 	ldi	$r16,-12584($r16)
ffffffff809100e0:	2b 00 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809100e4:	ff ff ff 13 	br	ffffffff809100e4 <kern_init+0xc4>
ffffffff809100e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809100ec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809100f0 <clock_set_next_event>:
ffffffff809100f0:	02 00 1f fe 	ldih	$r16,2
ffffffff809100f4:	a0 86 10 fa 	ldi	$r16,-31072($r16)
ffffffff809100f8:	3b 00 00 02 	sys_call	0x3b
ffffffff809100fc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910100 <intr_disable>:
ffffffff80910100:	07 00 1f fa 	ldi	$r16,7
ffffffff80910104:	35 00 00 02 	sys_call	0x35
ffffffff80910108:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091010c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910110 <cputch>:
ffffffff80910110:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910114:	f0 7e bd fb 	ldi	$r29,32496($r29)
ffffffff80910118:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff8091011c:	e0 ce 21 8c 	ldl	$r1,-12576($r1)
ffffffff80910120:	00 00 01 a2 	stb	$r16,0($r1)
ffffffff80910124:	00 00 31 88 	ldw	$r1,0($r17)
ffffffff80910128:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff8091012c:	00 00 31 a8 	stw	$r1,0($r17)
ffffffff80910130:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910134:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910138:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091013c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910140 <vcprintf>:
ffffffff80910140:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910144:	c0 7e bd fb 	ldi	$r29,32448($r29)
ffffffff80910148:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091014c:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff80910150:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80910154:	54 07 f2 43 	mov	$r18,$r20
ffffffff80910158:	52 07 f0 43 	mov	$r16,$r18
ffffffff8091015c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910160:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910164:	53 07 f1 43 	mov	$r17,$r19
ffffffff80910168:	10 00 fe ab 	stw	$r31,16(sp)
ffffffff8091016c:	10 00 3e fa 	ldi	$r17,16(sp)
ffffffff80910170:	10 81 10 fa 	ldi	$r16,-32496($r16)
ffffffff80910174:	4a 11 5b 07 	call	ra,($r27),ffffffff809146a0 <vprintfmt>
ffffffff80910178:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091017c:	10 00 1e 88 	ldw	$r0,16(sp)
ffffffff80910180:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910184:	88 7e bd fb 	ldi	$r29,32392($r29)
ffffffff80910188:	30 00 de fb 	ldi	sp,48(sp)
ffffffff8091018c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910190 <cprintf>:
ffffffff80910190:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910194:	70 7e bd fb 	ldi	$r29,32368($r29)
ffffffff80910198:	60 ff de fb 	ldi	sp,-160(sp)
ffffffff8091019c:	08 00 5f f8 	ldi	$r2,8
ffffffff809101a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809101a4:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff809101a8:	28 00 5e a8 	stw	$r2,40(sp)
ffffffff809101ac:	48 00 3e be 	fstd	$f17,72(sp)
ffffffff809101b0:	50 00 5e be 	fstd	$f18,80(sp)
ffffffff809101b4:	70 00 3e f8 	ldi	$r1,112(sp)
ffffffff809101b8:	28 00 5e 8c 	ldl	$r2,40(sp)
ffffffff809101bc:	58 00 7e be 	fstd	$f19,88(sp)
ffffffff809101c0:	60 00 9e be 	fstd	$f20,96(sp)
ffffffff809101c4:	80 00 5e ae 	stl	$r18,128(sp)
ffffffff809101c8:	68 00 be be 	fstd	$f21,104(sp)
ffffffff809101cc:	52 07 f0 43 	mov	$r16,$r18
ffffffff809101d0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809101d4:	10 81 10 fa 	ldi	$r16,-32496($r16)
ffffffff809101d8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809101dc:	78 00 3e ae 	stl	$r17,120(sp)
ffffffff809101e0:	88 00 7e ae 	stl	$r19,136(sp)
ffffffff809101e4:	30 00 3e fa 	ldi	$r17,48(sp)
ffffffff809101e8:	53 07 e1 43 	mov	$r1,$r19
ffffffff809101ec:	90 00 9e ae 	stl	$r20,144(sp)
ffffffff809101f0:	98 00 be ae 	stl	$r21,152(sp)
ffffffff809101f4:	54 07 e2 43 	mov	$r2,$r20
ffffffff809101f8:	20 00 3e ac 	stl	$r1,32(sp)
ffffffff809101fc:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80910200:	18 00 5e ac 	stl	$r2,24(sp)
ffffffff80910204:	30 00 fe ab 	stw	$r31,48(sp)
ffffffff80910208:	25 11 5b 07 	call	ra,($r27),ffffffff809146a0 <vprintfmt>
ffffffff8091020c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910210:	30 00 1e 88 	ldw	$r0,48(sp)
ffffffff80910214:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910218:	f4 7d bd fb 	ldi	$r29,32244($r29)
ffffffff8091021c:	a0 00 de fb 	ldi	sp,160(sp)
ffffffff80910220:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910224:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910228:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091022c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910230 <__panic>:
ffffffff80910230:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910234:	d0 7d bd fb 	ldi	$r29,32208($r29)
ffffffff80910238:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091023c:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff80910240:	20 82 41 88 	ldw	$r2,-32224($r1)
ffffffff80910244:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80910248:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff8091024c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910250:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80910254:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910258:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff8091025c:	49 07 f2 43 	mov	$r18,$r9
ffffffff80910260:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80910264:	78 00 be ae 	stl	$r21,120(sp)
ffffffff80910268:	04 00 40 c0 	beq	$r2,ffffffff8091027c <__panic+0x4c>
ffffffff8091026c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910270:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80910274:	a2 ff 5b 07 	call	ra,($r27),ffffffff80910100 <intr_disable>
ffffffff80910278:	ff ff ff 13 	br	ffffffff80910278 <__panic+0x48>
ffffffff8091027c:	01 00 5f f8 	ldi	$r2,1
ffffffff80910280:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910284:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910288:	52 07 f1 43 	mov	$r17,$r18
ffffffff8091028c:	51 07 f0 43 	mov	$r16,$r17
ffffffff80910290:	20 82 41 a8 	stw	$r2,-32224($r1)
ffffffff80910294:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff80910298:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091029c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff809102a0:	18 00 3f f8 	ldi	$r1,24
ffffffff809102a4:	e8 ce 10 fa 	ldi	$r16,-12568($r16)
ffffffff809102a8:	18 00 3e a8 	stw	$r1,24(sp)
ffffffff809102ac:	b8 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809102b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102b4:	50 7d bd fb 	ldi	$r29,32080($r29)
ffffffff809102b8:	10 00 3e 8e 	ldl	$r17,16(sp)
ffffffff809102bc:	18 00 5e 8e 	ldl	$r18,24(sp)
ffffffff809102c0:	50 07 e9 43 	mov	$r9,$r16
ffffffff809102c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102c8:	a8 81 7b 8f 	ldl	$r27,-32344($r27)
ffffffff809102cc:	9c ff 5b 07 	call	ra,($r27),ffffffff80910140 <vcprintf>
ffffffff809102d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102d4:	30 7d bd fb 	ldi	$r29,32048($r29)
ffffffff809102d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102dc:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809102e0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102e4:	dc ce 10 fa 	ldi	$r16,-12580($r16)
ffffffff809102e8:	a9 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809102ec:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102f0:	14 7d bd fb 	ldi	$r29,32020($r29)
ffffffff809102f4:	dd ff ff 13 	br	ffffffff8091026c <__panic+0x3c>
ffffffff809102f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809102fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910300 <print_kerninfo>:
ffffffff80910300:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910304:	00 7d bd fb 	ldi	$r29,32000($r29)
ffffffff80910308:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091030c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910310:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff80910314:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910318:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091031c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910320:	04 cf 10 fa 	ldi	$r16,-12540($r16)
ffffffff80910324:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910328:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff8091032c:	f8 80 29 8d 	ldl	$r9,-32520($r9)
ffffffff80910330:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80910334:	70 80 4a 8d 	ldl	$r10,-32656($r10)
ffffffff80910338:	95 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff8091033c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910340:	c4 7c bd fb 	ldi	$r29,31940($r29)
ffffffff80910344:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910348:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091034c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910350:	51 07 ea 43 	mov	$r10,$r17
ffffffff80910354:	1d cf 10 fa 	ldi	$r16,-12515($r16)
ffffffff80910358:	8d ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff8091035c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910360:	a4 7c bd fb 	ldi	$r29,31908($r29)
ffffffff80910364:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff80910368:	08 81 31 8e 	ldl	$r17,-32504($r17)
ffffffff8091036c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910370:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910374:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910378:	3a cf 10 fa 	ldi	$r16,-12486($r16)
ffffffff8091037c:	84 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910380:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910384:	80 7c bd fb 	ldi	$r29,31872($r29)
ffffffff80910388:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff8091038c:	88 80 31 8e 	ldl	$r17,-32632($r17)
ffffffff80910390:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910394:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910398:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091039c:	57 cf 10 fa 	ldi	$r16,-12457($r16)
ffffffff809103a0:	7b ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809103a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103a8:	5c 7c bd fb 	ldi	$r29,31836($r29)
ffffffff809103ac:	51 07 e9 43 	mov	$r9,$r17
ffffffff809103b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103b4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809103b8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103bc:	74 cf 10 fa 	ldi	$r16,-12428($r16)
ffffffff809103c0:	73 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809103c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103c8:	ff 03 29 fa 	ldi	$r17,1023($r9)
ffffffff809103cc:	3c 7c bd fb 	ldi	$r29,31804($r29)
ffffffff809103d0:	31 01 2a 42 	subl	$r17,$r10,$r17
ffffffff809103d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103d8:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809103dc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103e0:	ff 03 31 f8 	ldi	$r1,1023($r17)
ffffffff809103e4:	91 cf 10 fa 	ldi	$r16,-12399($r16)
ffffffff809103e8:	31 12 21 46 	sellt	$r17,$r1,$r17,$r17
ffffffff809103ec:	51 49 21 4a 	sra	$r17,0xa,$r17
ffffffff809103f0:	67 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809103f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103f8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809103fc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910400:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80910404:	0c 7c bd fb 	ldi	$r29,31756($r29)
ffffffff80910408:	20 00 de fb 	ldi	sp,32(sp)
ffffffff8091040c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910410 <trap_init>:
ffffffff80910410:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910414:	f0 7b bd fb 	ldi	$r29,31728($r29)
ffffffff80910418:	50 07 fd 43 	mov	$r29,$r16
ffffffff8091041c:	37 00 00 02 	sys_call	0x37
ffffffff80910420:	51 07 ff 43 	clr	$r17
ffffffff80910424:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910428:	98 80 10 8e 	ldl	$r16,-32616($r16)
ffffffff8091042c:	34 00 00 02 	sys_call	0x34
ffffffff80910430:	02 00 3f fa 	ldi	$r17,2
ffffffff80910434:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910438:	70 81 10 8e 	ldl	$r16,-32400($r16)
ffffffff8091043c:	34 00 00 02 	sys_call	0x34
ffffffff80910440:	03 00 3f fa 	ldi	$r17,3
ffffffff80910444:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910448:	68 81 10 8e 	ldl	$r16,-32408($r16)
ffffffff8091044c:	34 00 00 02 	sys_call	0x34
ffffffff80910450:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910454:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910458:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091045c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910460 <print_regs>:
ffffffff80910460:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910464:	a0 7b bd fb 	ldi	$r29,31648($r29)
ffffffff80910468:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091046c:	00 00 30 8e 	ldl	$r17,0($r16)
ffffffff80910470:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910474:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910478:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff8091047c:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910480:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910484:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910488:	bb cf 10 fa 	ldi	$r16,-12357($r16)
ffffffff8091048c:	40 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910490:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910494:	70 7b bd fb 	ldi	$r29,31600($r29)
ffffffff80910498:	08 00 29 8e 	ldl	$r17,8($r9)
ffffffff8091049c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809104a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104a8:	d0 cf 10 fa 	ldi	$r16,-12336($r16)
ffffffff809104ac:	38 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809104b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104b4:	50 7b bd fb 	ldi	$r29,31568($r29)
ffffffff809104b8:	10 00 29 8e 	ldl	$r17,16($r9)
ffffffff809104bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809104c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104c8:	e5 cf 10 fa 	ldi	$r16,-12315($r16)
ffffffff809104cc:	30 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809104d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104d4:	30 7b bd fb 	ldi	$r29,31536($r29)
ffffffff809104d8:	18 00 29 8e 	ldl	$r17,24($r9)
ffffffff809104dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809104e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104e8:	fa cf 10 fa 	ldi	$r16,-12294($r16)
ffffffff809104ec:	28 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809104f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104f4:	10 7b bd fb 	ldi	$r29,31504($r29)
ffffffff809104f8:	20 00 29 8e 	ldl	$r17,32($r9)
ffffffff809104fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910500:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910504:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910508:	0f d0 10 fa 	ldi	$r16,-12273($r16)
ffffffff8091050c:	20 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910510:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910514:	f0 7a bd fb 	ldi	$r29,31472($r29)
ffffffff80910518:	28 00 29 8e 	ldl	$r17,40($r9)
ffffffff8091051c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910520:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910524:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910528:	24 d0 10 fa 	ldi	$r16,-12252($r16)
ffffffff8091052c:	18 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910530:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910534:	d0 7a bd fb 	ldi	$r29,31440($r29)
ffffffff80910538:	30 00 29 8e 	ldl	$r17,48($r9)
ffffffff8091053c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910540:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910544:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910548:	39 d0 10 fa 	ldi	$r16,-12231($r16)
ffffffff8091054c:	10 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910550:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910554:	b0 7a bd fb 	ldi	$r29,31408($r29)
ffffffff80910558:	38 00 29 8e 	ldl	$r17,56($r9)
ffffffff8091055c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910560:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910564:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910568:	4e d0 10 fa 	ldi	$r16,-12210($r16)
ffffffff8091056c:	08 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910570:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910574:	90 7a bd fb 	ldi	$r29,31376($r29)
ffffffff80910578:	40 00 29 8e 	ldl	$r17,64($r9)
ffffffff8091057c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910580:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910584:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910588:	63 d0 10 fa 	ldi	$r16,-12189($r16)
ffffffff8091058c:	00 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910590:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910594:	70 7a bd fb 	ldi	$r29,31344($r29)
ffffffff80910598:	48 00 29 8e 	ldl	$r17,72($r9)
ffffffff8091059c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809105a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105a8:	78 d0 10 fa 	ldi	$r16,-12168($r16)
ffffffff809105ac:	f8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809105b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105b4:	50 7a bd fb 	ldi	$r29,31312($r29)
ffffffff809105b8:	50 00 29 8e 	ldl	$r17,80($r9)
ffffffff809105bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809105c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105c8:	8d d0 10 fa 	ldi	$r16,-12147($r16)
ffffffff809105cc:	f0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809105d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105d4:	30 7a bd fb 	ldi	$r29,31280($r29)
ffffffff809105d8:	58 00 29 8e 	ldl	$r17,88($r9)
ffffffff809105dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809105e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105e8:	a2 d0 10 fa 	ldi	$r16,-12126($r16)
ffffffff809105ec:	e8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809105f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105f4:	10 7a bd fb 	ldi	$r29,31248($r29)
ffffffff809105f8:	60 00 29 8e 	ldl	$r17,96($r9)
ffffffff809105fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910600:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910604:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910608:	b7 d0 10 fa 	ldi	$r16,-12105($r16)
ffffffff8091060c:	e0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910610:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910614:	f0 79 bd fb 	ldi	$r29,31216($r29)
ffffffff80910618:	68 00 29 8e 	ldl	$r17,104($r9)
ffffffff8091061c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910620:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910624:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910628:	cc d0 10 fa 	ldi	$r16,-12084($r16)
ffffffff8091062c:	d8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910630:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910634:	d0 79 bd fb 	ldi	$r29,31184($r29)
ffffffff80910638:	70 00 29 8e 	ldl	$r17,112($r9)
ffffffff8091063c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910640:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910644:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910648:	e1 d0 10 fa 	ldi	$r16,-12063($r16)
ffffffff8091064c:	d0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910650:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910654:	b0 79 bd fb 	ldi	$r29,31152($r29)
ffffffff80910658:	78 00 29 8e 	ldl	$r17,120($r9)
ffffffff8091065c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910660:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910664:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910668:	f6 d0 10 fa 	ldi	$r16,-12042($r16)
ffffffff8091066c:	c8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910670:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910674:	90 79 bd fb 	ldi	$r29,31120($r29)
ffffffff80910678:	08 01 29 8e 	ldl	$r17,264($r9)
ffffffff8091067c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910680:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910684:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910688:	0b d1 10 fa 	ldi	$r16,-12021($r16)
ffffffff8091068c:	c0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910690:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910694:	70 79 bd fb 	ldi	$r29,31088($r29)
ffffffff80910698:	10 01 29 8e 	ldl	$r17,272($r9)
ffffffff8091069c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809106a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106a8:	20 d1 10 fa 	ldi	$r16,-12000($r16)
ffffffff809106ac:	b8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809106b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106b4:	50 79 bd fb 	ldi	$r29,31056($r29)
ffffffff809106b8:	18 01 29 8e 	ldl	$r17,280($r9)
ffffffff809106bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809106c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106c8:	35 d1 10 fa 	ldi	$r16,-11979($r16)
ffffffff809106cc:	b0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809106d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106d4:	30 79 bd fb 	ldi	$r29,31024($r29)
ffffffff809106d8:	98 00 29 8e 	ldl	$r17,152($r9)
ffffffff809106dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809106e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106e8:	4a d1 10 fa 	ldi	$r16,-11958($r16)
ffffffff809106ec:	a8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809106f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106f4:	10 79 bd fb 	ldi	$r29,30992($r29)
ffffffff809106f8:	a0 00 29 8e 	ldl	$r17,160($r9)
ffffffff809106fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910700:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910704:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910708:	5f d1 10 fa 	ldi	$r16,-11937($r16)
ffffffff8091070c:	a0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910710:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910714:	f0 78 bd fb 	ldi	$r29,30960($r29)
ffffffff80910718:	a8 00 29 8e 	ldl	$r17,168($r9)
ffffffff8091071c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910720:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910724:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910728:	74 d1 10 fa 	ldi	$r16,-11916($r16)
ffffffff8091072c:	98 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910730:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910734:	d0 78 bd fb 	ldi	$r29,30928($r29)
ffffffff80910738:	b0 00 29 8e 	ldl	$r17,176($r9)
ffffffff8091073c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910740:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910744:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910748:	89 d1 10 fa 	ldi	$r16,-11895($r16)
ffffffff8091074c:	90 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910750:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910754:	b0 78 bd fb 	ldi	$r29,30896($r29)
ffffffff80910758:	b8 00 29 8e 	ldl	$r17,184($r9)
ffffffff8091075c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910760:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910764:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910768:	9e d1 10 fa 	ldi	$r16,-11874($r16)
ffffffff8091076c:	88 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910770:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910774:	90 78 bd fb 	ldi	$r29,30864($r29)
ffffffff80910778:	c0 00 29 8e 	ldl	$r17,192($r9)
ffffffff8091077c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910780:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910784:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910788:	b3 d1 10 fa 	ldi	$r16,-11853($r16)
ffffffff8091078c:	80 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910790:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910794:	70 78 bd fb 	ldi	$r29,30832($r29)
ffffffff80910798:	c8 00 29 8e 	ldl	$r17,200($r9)
ffffffff8091079c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809107a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107a8:	c8 d1 10 fa 	ldi	$r16,-11832($r16)
ffffffff809107ac:	78 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809107b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107b4:	50 78 bd fb 	ldi	$r29,30800($r29)
ffffffff809107b8:	d0 00 29 8e 	ldl	$r17,208($r9)
ffffffff809107bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809107c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107c8:	dd d1 10 fa 	ldi	$r16,-11811($r16)
ffffffff809107cc:	70 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809107d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107d4:	30 78 bd fb 	ldi	$r29,30768($r29)
ffffffff809107d8:	d8 00 29 8e 	ldl	$r17,216($r9)
ffffffff809107dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809107e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107e8:	f2 d1 10 fa 	ldi	$r16,-11790($r16)
ffffffff809107ec:	68 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809107f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107f4:	10 78 bd fb 	ldi	$r29,30736($r29)
ffffffff809107f8:	e0 00 29 8e 	ldl	$r17,224($r9)
ffffffff809107fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910800:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910804:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910808:	07 d2 10 fa 	ldi	$r16,-11769($r16)
ffffffff8091080c:	60 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910810:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910814:	f0 77 bd fb 	ldi	$r29,30704($r29)
ffffffff80910818:	00 01 29 8e 	ldl	$r17,256($r9)
ffffffff8091081c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910820:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910824:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910828:	1c d2 10 fa 	ldi	$r16,-11748($r16)
ffffffff8091082c:	58 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910830:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910834:	d0 77 bd fb 	ldi	$r29,30672($r29)
ffffffff80910838:	f8 00 29 8e 	ldl	$r17,248($r9)
ffffffff8091083c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910840:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910844:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910848:	31 d2 10 fa 	ldi	$r16,-11727($r16)
ffffffff8091084c:	50 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910850:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910854:	b0 77 bd fb 	ldi	$r29,30640($r29)
ffffffff80910858:	f0 00 29 8e 	ldl	$r17,240($r9)
ffffffff8091085c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910860:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910864:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910868:	46 d2 10 fa 	ldi	$r16,-11706($r16)
ffffffff8091086c:	48 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910870:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910874:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910878:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091087c:	90 77 bd fb 	ldi	$r29,30608($r29)
ffffffff80910880:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910884:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910888:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091088c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910890 <do_entIF>:
ffffffff80910890:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910894:	70 77 bd fb 	ldi	$r29,30576($r29)
ffffffff80910898:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff8091089c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809108a0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809108a4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809108a8:	49 07 f0 43 	mov	$r16,$r9
ffffffff809108ac:	24 00 20 c0 	beq	$r1,ffffffff80910940 <do_entIF+0xb0>
ffffffff809108b0:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff809108b4:	12 00 20 c4 	bne	$r1,ffffffff80910900 <do_entIF+0x70>
ffffffff809108b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108bc:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff809108c0:	e7 fe 5b 07 	call	ra,($r27),ffffffff80910460 <print_regs>
ffffffff809108c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108c8:	3c 77 bd fb 	ldi	$r29,30524($r29)
ffffffff809108cc:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff809108d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108d4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809108d8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809108dc:	5b d2 10 fa 	ldi	$r16,-11685($r16)
ffffffff809108e0:	2b fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809108e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108e8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809108ec:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809108f0:	1c 77 bd fb 	ldi	$r29,30492($r29)
ffffffff809108f4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809108f8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809108fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910900:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910904:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910908:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091090c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910910:	86 d2 10 fa 	ldi	$r16,-11642($r16)
ffffffff80910914:	1e fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910918:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091091c:	f8 00 49 8c 	ldl	$r2,248($r9)
ffffffff80910920:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910924:	ff 43 3f fc 	ldih	$r1,17407
ffffffff80910928:	e8 76 bd fb 	ldi	$r29,30440($r29)
ffffffff8091092c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910930:	5f 07 21 f8 	ldi	$r1,1887($r1)
ffffffff80910934:	00 00 22 a8 	stw	$r1,0($r2)
ffffffff80910938:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091093c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910940:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910944:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910948:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091094c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910950:	70 d2 10 fa 	ldi	$r16,-11664($r16)
ffffffff80910954:	0e fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910958:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091095c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910960:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910964:	a8 76 bd fb 	ldi	$r29,30376($r29)
ffffffff80910968:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091096c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910970 <interrupt_handler>:
ffffffff80910970:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910974:	90 76 bd fb 	ldi	$r29,30352($r29)
ffffffff80910978:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff8091097c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910980:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910984:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910988:	49 07 f0 43 	mov	$r16,$r9
ffffffff8091098c:	01 25 21 48 	cmpeq	$r1,0x9,$r1
ffffffff80910990:	1f 00 20 c0 	beq	$r1,ffffffff80910a10 <interrupt_handler+0xa0>
ffffffff80910994:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910998:	a8 80 7b 8f 	ldl	$r27,-32600($r27)
ffffffff8091099c:	d4 fd 5b 07 	call	ra,($r27),ffffffff809100f0 <clock_set_next_event>
ffffffff809109a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809109a4:	60 76 bd fb 	ldi	$r29,30304($r29)
ffffffff809109a8:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff809109ac:	90 81 63 8c 	ldl	$r3,-32368($r3)
ffffffff809109b0:	00 00 43 8c 	ldl	$r2,0($r3)
ffffffff809109b4:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff809109b8:	00 00 43 ac 	stl	$r2,0($r3)
ffffffff809109bc:	ff ff 7d fc 	ldih	$r3,-1($r29)
ffffffff809109c0:	21 69 40 48 	srl	$r2,0x3,$r1
ffffffff809109c4:	d0 d2 63 8c 	ldl	$r3,-11568($r3)
ffffffff809109c8:	21 03 23 40 	umulh	$r1,$r3,$r1
ffffffff809109cc:	23 89 20 48 	srl	$r1,0x4,$r3
ffffffff809109d0:	41 01 60 48 	s4addl	$r3,0,$r1
ffffffff809109d4:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109d8:	43 01 20 48 	s4addl	$r1,0,$r3
ffffffff809109dc:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109e0:	43 01 20 48 	s4addl	$r1,0,$r3
ffffffff809109e4:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109e8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809109ec:	21 01 41 40 	subl	$r2,$r1,$r1
ffffffff809109f0:	1b 00 20 c0 	beq	$r1,ffffffff80910a60 <interrupt_handler+0xf0>
ffffffff809109f4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809109f8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809109fc:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a00:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910a04:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a08:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a10:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a14:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80910a18:	91 fe 5b 07 	call	ra,($r27),ffffffff80910460 <print_regs>
ffffffff80910a1c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a20:	e4 75 bd fb 	ldi	$r29,30180($r29)
ffffffff80910a24:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff80910a28:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a2c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910a30:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a34:	5b d2 10 fa 	ldi	$r16,-11685($r16)
ffffffff80910a38:	d5 fd 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910a3c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a40:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a44:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a48:	c4 75 bd fb 	ldi	$r29,30148($r29)
ffffffff80910a4c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a50:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910a54:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a58:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a5c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a60:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a64:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910a68:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a6c:	e8 03 3f fa 	ldi	$r17,1000
ffffffff80910a70:	98 d2 10 fa 	ldi	$r16,-11624($r16)
ffffffff80910a74:	c6 fd 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910a78:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a7c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a80:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a84:	88 75 bd fb 	ldi	$r29,30088($r29)
ffffffff80910a88:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a8c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910a90 <exception_handler>:
ffffffff80910a90:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910a94:	70 75 bd fb 	ldi	$r29,30064($r29)
ffffffff80910a98:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910a9c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910aa0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910aa4:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910aa8:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910aac:	02 45 20 48 	cmpeq	$r1,0x2,$r2
ffffffff80910ab0:	1b 00 40 c4 	bne	$r2,ffffffff80910b20 <exception_handler+0x90>
ffffffff80910ab4:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff80910ab8:	11 00 20 c4 	bne	$r1,ffffffff80910b00 <exception_handler+0x70>
ffffffff80910abc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ac0:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80910ac4:	66 fe 5b 07 	call	ra,($r27),ffffffff80910460 <print_regs>
ffffffff80910ac8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910acc:	38 75 bd fb 	ldi	$r29,30008($r29)
ffffffff80910ad0:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff80910ad4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ad8:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910adc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910ae0:	5b d2 10 fa 	ldi	$r16,-11685($r16)
ffffffff80910ae4:	aa fd 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910ae8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910aec:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910af0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910af4:	18 75 bd fb 	ldi	$r29,29976($r29)
ffffffff80910af8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910afc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910b00:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910b04:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910b08:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910b0c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b10:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910b14:	5e ff fb 0f 	jmp	$r31,($r27),ffffffff80910890 <do_entIF>
ffffffff80910b18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b1c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b20:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910b24:	e8 81 21 8c 	ldl	$r1,-32280($r1)
ffffffff80910b28:	00 00 01 8e 	ldl	$r16,0($r1)
ffffffff80910b2c:	0b 00 00 c2 	beq	$r16,ffffffff80910b5c <exception_handler+0xcc>
ffffffff80910b30:	80 00 49 8e 	ldl	$r18,128($r9)
ffffffff80910b34:	88 00 29 8e 	ldl	$r17,136($r9)
ffffffff80910b38:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b3c:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff80910b40:	0f 03 5b 07 	call	ra,($r27),ffffffff80911780 <do_pgfault>
ffffffff80910b44:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b48:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910b4c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910b50:	bc 74 bd fb 	ldi	$r29,29884($r29)
ffffffff80910b54:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910b58:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910b5c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b60:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80910b64:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910b68:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b6c:	75 00 3f fa 	ldi	$r17,117
ffffffff80910b70:	a2 d2 52 fa 	ldi	$r18,-11614($r18)
ffffffff80910b74:	b9 d2 10 fa 	ldi	$r16,-11591($r16)
ffffffff80910b78:	ad fd 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80910b7c:	5f 07 ff 43 	nop	

ffffffff80910b80 <trap>:
ffffffff80910b80:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910b84:	80 74 bd fb 	ldi	$r29,29824($r29)
ffffffff80910b88:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910b8c:	04 00 20 c0 	beq	$r1,ffffffff80910ba0 <trap+0x20>
ffffffff80910b90:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b94:	f8 81 7b 8f 	ldl	$r27,-32264($r27)
ffffffff80910b98:	bd ff fb 0f 	jmp	$r31,($r27),ffffffff80910a90 <exception_handler>
ffffffff80910b9c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ba0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ba4:	78 81 7b 8f 	ldl	$r27,-32392($r27)
ffffffff80910ba8:	71 ff fb 0f 	jmp	$r31,($r27),ffffffff80910970 <interrupt_handler>
ffffffff80910bac:	5f 07 ff 43 	nop	

ffffffff80910bb0 <entInt>:
ffffffff80910bb0:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910bb4:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910bb8:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910bbc:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910bc0:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910bc4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910bc8:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910bcc:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910bd0:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910bd4:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910bd8:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910bdc:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910be0:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910be4:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910be8:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910bec:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910bf0:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910bf4:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910bf8:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910bfc:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910c00:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910c04:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910c08:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910c0c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910c10:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910c14:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910c18:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910c1c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910c20:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910c24:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910c28:	00 00 1f fa 	ldi	$r16,0
ffffffff80910c2c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910c30:	a0 81 5d 8f 	ldl	ra,-32352($r29)
ffffffff80910c34:	50 07 fe 43 	mov	sp,$r16
ffffffff80910c38:	58 81 7d 8f 	ldl	$r27,-32424($r29)
ffffffff80910c3c:	d0 ff fb 07 	call	$r31,($r27),ffffffff80910b80 <trap>

ffffffff80910c40 <entMM>:
ffffffff80910c40:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910c44:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910c48:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910c4c:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910c50:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910c54:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910c58:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910c5c:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910c60:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910c64:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910c68:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910c6c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910c70:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910c74:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910c78:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910c7c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910c80:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910c84:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910c88:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910c8c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910c90:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910c94:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910c98:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910c9c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910ca0:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910ca4:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910ca8:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910cac:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910cb0:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910cb4:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910cb8:	02 00 1f fa 	ldi	$r16,2
ffffffff80910cbc:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910cc0:	a0 81 5d 8f 	ldl	ra,-32352($r29)
ffffffff80910cc4:	50 07 fe 43 	mov	sp,$r16
ffffffff80910cc8:	58 81 7d 8f 	ldl	$r27,-32424($r29)
ffffffff80910ccc:	ac ff fb 07 	call	$r31,($r27),ffffffff80910b80 <trap>

ffffffff80910cd0 <entIF>:
ffffffff80910cd0:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910cd4:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910cd8:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910cdc:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910ce0:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910ce4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910ce8:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910cec:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910cf0:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910cf4:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910cf8:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910cfc:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910d00:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910d04:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910d08:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910d0c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910d10:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910d14:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910d18:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910d1c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910d20:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910d24:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910d28:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910d2c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910d30:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910d34:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910d38:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910d3c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910d40:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910d44:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910d48:	03 00 1f fa 	ldi	$r16,3
ffffffff80910d4c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910d50:	a0 81 5d 8f 	ldl	ra,-32352($r29)
ffffffff80910d54:	50 07 fe 43 	mov	sp,$r16
ffffffff80910d58:	58 81 7d 8f 	ldl	$r27,-32424($r29)
ffffffff80910d5c:	88 ff fb 07 	call	$r31,($r27),ffffffff80910b80 <trap>

ffffffff80910d60 <__trapret>:
ffffffff80910d60:	00 00 1e 8c 	ldl	$r0,0(sp)
ffffffff80910d64:	08 00 3e 8c 	ldl	$r1,8(sp)
ffffffff80910d68:	10 00 5e 8c 	ldl	$r2,16(sp)
ffffffff80910d6c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80910d70:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80910d74:	28 00 be 8c 	ldl	$r5,40(sp)
ffffffff80910d78:	30 00 de 8c 	ldl	$r6,48(sp)
ffffffff80910d7c:	38 00 fe 8c 	ldl	$r7,56(sp)
ffffffff80910d80:	40 00 1e 8d 	ldl	$r8,64(sp)
ffffffff80910d84:	98 00 7e 8e 	ldl	$r19,152(sp)
ffffffff80910d88:	a0 00 9e 8e 	ldl	$r20,160(sp)
ffffffff80910d8c:	a8 00 be 8e 	ldl	$r21,168(sp)
ffffffff80910d90:	b0 00 de 8e 	ldl	$r22,176(sp)
ffffffff80910d94:	b8 00 fe 8e 	ldl	$r23,184(sp)
ffffffff80910d98:	c0 00 1e 8f 	ldl	$r24,192(sp)
ffffffff80910d9c:	c8 00 3e 8f 	ldl	$r25,200(sp)
ffffffff80910da0:	d0 00 5e 8f 	ldl	ra,208(sp)
ffffffff80910da4:	d8 00 7e 8f 	ldl	$r27,216(sp)
ffffffff80910da8:	e0 00 9e 8f 	ldl	$r28,224(sp)
ffffffff80910dac:	f0 00 de fb 	ldi	sp,240(sp)
ffffffff80910db0:	3f 00 00 02 	sys_call	0x3f
ffffffff80910db4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910db8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910dbc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910dc0 <check_vma_overlap.isra.0.part.1>:
ffffffff80910dc0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910dc4:	40 72 bd fb 	ldi	$r29,29248($r29)
ffffffff80910dc8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910dcc:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80910dd0:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910dd4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80910dd8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910ddc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910de0:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910de4:	79 00 3f fa 	ldi	$r17,121
ffffffff80910de8:	d8 d2 73 fa 	ldi	$r19,-11560($r19)
ffffffff80910dec:	f6 d2 52 fa 	ldi	$r18,-11530($r18)
ffffffff80910df0:	0b d3 10 fa 	ldi	$r16,-11509($r16)
ffffffff80910df4:	0e fd 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80910df8:	5f 07 ff 43 	nop	
ffffffff80910dfc:	00 00 00 00 	sys_call/b	0

ffffffff80910e00 <mm_create>:
ffffffff80910e00:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910e04:	00 72 bd fb 	ldi	$r29,29184($r29)
ffffffff80910e08:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910e0c:	c0 81 7b 8f 	ldl	$r27,-32320($r27)
ffffffff80910e10:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910e14:	30 00 1f fa 	ldi	$r16,48
ffffffff80910e18:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910e1c:	e0 0c 5b 07 	call	ra,($r27),ffffffff809141a0 <kmalloc>
ffffffff80910e20:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e24:	e0 71 bd fb 	ldi	$r29,29152($r29)
ffffffff80910e28:	06 00 00 c0 	beq	$r0,ffffffff80910e44 <mm_create+0x44>
ffffffff80910e2c:	08 00 00 ac 	stl	$r0,8($r0)
ffffffff80910e30:	00 00 00 ac 	stl	$r0,0($r0)
ffffffff80910e34:	10 00 e0 af 	stl	$r31,16($r0)
ffffffff80910e38:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff80910e3c:	20 00 e0 ab 	stw	$r31,32($r0)
ffffffff80910e40:	28 00 e0 af 	stl	$r31,40($r0)
ffffffff80910e44:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910e48:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910e4c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910e50 <find_vma>:
ffffffff80910e50:	17 00 00 c2 	beq	$r16,ffffffff80910eb0 <find_vma+0x60>
ffffffff80910e54:	10 00 10 8c 	ldl	$r0,16($r16)
ffffffff80910e58:	03 00 00 c0 	beq	$r0,ffffffff80910e68 <find_vma+0x18>
ffffffff80910e5c:	08 00 20 8c 	ldl	$r1,8($r0)
ffffffff80910e60:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80910e64:	16 00 20 c4 	bne	$r1,ffffffff80910ec0 <find_vma+0x70>
ffffffff80910e68:	40 07 f0 43 	mov	$r16,$r0
ffffffff80910e6c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910e70:	08 00 00 8c 	ldl	$r0,8($r0)
ffffffff80910e74:	01 05 00 42 	cmpeq	$r16,$r0,$r1
ffffffff80910e78:	0d 00 20 c4 	bne	$r1,ffffffff80910eb0 <find_vma+0x60>
ffffffff80910e7c:	e8 ff 20 8c 	ldl	$r1,-24($r0)
ffffffff80910e80:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80910e84:	fa ff 3f c0 	beq	$r1,ffffffff80910e70 <find_vma+0x20>
ffffffff80910e88:	f0 ff 20 8c 	ldl	$r1,-16($r0)
ffffffff80910e8c:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80910e90:	f7 ff 3f c4 	bne	$r1,ffffffff80910e70 <find_vma+0x20>
ffffffff80910e94:	e0 ff 00 f8 	ldi	$r0,-32($r0)
ffffffff80910e98:	05 00 00 c0 	beq	$r0,ffffffff80910eb0 <find_vma+0x60>
ffffffff80910e9c:	10 00 10 ac 	stl	$r0,16($r16)
ffffffff80910ea0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910ea4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ea8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910eac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910eb0:	40 07 ff 43 	clr	$r0
ffffffff80910eb4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910eb8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ebc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ec0:	10 00 20 8c 	ldl	$r1,16($r0)
ffffffff80910ec4:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80910ec8:	e7 ff 3f c4 	bne	$r1,ffffffff80910e68 <find_vma+0x18>
ffffffff80910ecc:	10 00 10 ac 	stl	$r0,16($r16)
ffffffff80910ed0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910ed4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ed8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910edc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910ee0 <insert_vma_struct>:
ffffffff80910ee0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910ee4:	20 71 bd fb 	ldi	$r29,28960($r29)
ffffffff80910ee8:	08 00 b1 8c 	ldl	$r5,8($r17)
ffffffff80910eec:	10 00 d1 8c 	ldl	$r6,16($r17)
ffffffff80910ef0:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910ef4:	42 07 f0 43 	mov	$r16,$r2
ffffffff80910ef8:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910efc:	61 05 a6 40 	cmpult	$r5,$r6,$r1
ffffffff80910f00:	07 00 20 c4 	bne	$r1,ffffffff80910f20 <insert_vma_struct+0x40>
ffffffff80910f04:	30 00 e0 13 	br	ffffffff80910fc8 <insert_vma_struct+0xe8>
ffffffff80910f08:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f10:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff80910f14:	64 05 a3 40 	cmpult	$r5,$r3,$r4
ffffffff80910f18:	1d 00 80 c4 	bne	$r4,ffffffff80910f90 <insert_vma_struct+0xb0>
ffffffff80910f1c:	42 07 e1 43 	mov	$r1,$r2
ffffffff80910f20:	08 00 22 8c 	ldl	$r1,8($r2)
ffffffff80910f24:	03 05 01 42 	cmpeq	$r16,$r1,$r3
ffffffff80910f28:	f9 ff 7f c0 	beq	$r3,ffffffff80910f10 <insert_vma_struct+0x30>
ffffffff80910f2c:	03 05 50 40 	cmpeq	$r2,$r16,$r3
ffffffff80910f30:	41 07 f0 43 	mov	$r16,$r1
ffffffff80910f34:	35 00 60 c4 	bne	$r3,ffffffff8091100c <insert_vma_struct+0x12c>
ffffffff80910f38:	f0 ff 82 8c 	ldl	$r4,-16($r2)
ffffffff80910f3c:	e8 ff 62 8c 	ldl	$r3,-24($r2)
ffffffff80910f40:	63 05 64 40 	cmpult	$r3,$r4,$r3
ffffffff80910f44:	2e 00 60 c0 	beq	$r3,ffffffff80911000 <insert_vma_struct+0x120>
ffffffff80910f48:	65 05 a4 40 	cmpult	$r5,$r4,$r5
ffffffff80910f4c:	28 00 a0 c4 	bne	$r5,ffffffff80910ff0 <insert_vma_struct+0x110>
ffffffff80910f50:	03 05 01 42 	cmpeq	$r16,$r1,$r3
ffffffff80910f54:	1a 00 60 c0 	beq	$r3,ffffffff80910fc0 <insert_vma_struct+0xe0>
ffffffff80910f58:	20 00 70 88 	ldw	$r3,32($r16)
ffffffff80910f5c:	00 00 11 ae 	stl	$r16,0($r17)
ffffffff80910f60:	20 00 91 f8 	ldi	$r4,32($r17)
ffffffff80910f64:	00 00 81 ac 	stl	$r4,0($r1)
ffffffff80910f68:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910f6c:	08 00 82 ac 	stl	$r4,8($r2)
ffffffff80910f70:	28 00 31 ac 	stl	$r1,40($r17)
ffffffff80910f74:	20 00 51 ac 	stl	$r2,32($r17)
ffffffff80910f78:	01 20 60 48 	addw	$r3,0x1,$r1
ffffffff80910f7c:	20 00 30 a8 	stw	$r1,32($r16)
ffffffff80910f80:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910f84:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910f88:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f8c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f90:	04 05 50 40 	cmpeq	$r2,$r16,$r4
ffffffff80910f94:	e8 ff 9f c0 	beq	$r4,ffffffff80910f38 <insert_vma_struct+0x58>
ffffffff80910f98:	86 05 c3 40 	cmpule	$r6,$r3,$r6
ffffffff80910f9c:	14 00 c0 c0 	beq	$r6,ffffffff80910ff0 <insert_vma_struct+0x110>
ffffffff80910fa0:	f0 ff 81 8c 	ldl	$r4,-16($r1)
ffffffff80910fa4:	83 05 83 40 	cmpule	$r4,$r3,$r3
ffffffff80910fa8:	eb ff 7f c0 	beq	$r3,ffffffff80910f58 <insert_vma_struct+0x78>
ffffffff80910fac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80910fb0:	7b 00 3f fa 	ldi	$r17,123
ffffffff80910fb4:	54 d3 73 fa 	ldi	$r19,-11436($r19)
ffffffff80910fb8:	06 00 e0 13 	br	ffffffff80910fd4 <insert_vma_struct+0xf4>
ffffffff80910fbc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910fc0:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff80910fc4:	f4 ff ff 13 	br	ffffffff80910f98 <insert_vma_struct+0xb8>
ffffffff80910fc8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80910fcc:	82 00 3f fa 	ldi	$r17,130
ffffffff80910fd0:	19 d3 73 fa 	ldi	$r19,-11495($r19)
ffffffff80910fd4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910fd8:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80910fdc:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910fe0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910fe4:	f6 d2 52 fa 	ldi	$r18,-11530($r18)
ffffffff80910fe8:	0b d3 10 fa 	ldi	$r16,-11509($r16)
ffffffff80910fec:	90 fc 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80910ff0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80910ff4:	7a 00 3f fa 	ldi	$r17,122
ffffffff80910ff8:	35 d3 73 fa 	ldi	$r19,-11467($r19)
ffffffff80910ffc:	f5 ff ff 13 	br	ffffffff80910fd4 <insert_vma_struct+0xf4>
ffffffff80911000:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911004:	00 82 7b 8f 	ldl	$r27,-32256($r27)
ffffffff80911008:	6d ff 5b 07 	call	ra,($r27),ffffffff80910dc0 <check_vma_overlap.isra.0.part.1>
ffffffff8091100c:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911010:	d1 ff ff 13 	br	ffffffff80910f58 <insert_vma_struct+0x78>
ffffffff80911014:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911018:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091101c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911020 <mm_destroy>:
ffffffff80911020:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911024:	e0 6f bd fb 	ldi	$r29,28640($r29)
ffffffff80911028:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091102c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911030:	49 07 f0 43 	mov	$r16,$r9
ffffffff80911034:	08 00 10 8e 	ldl	$r16,8($r16)
ffffffff80911038:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091103c:	01 05 30 41 	cmpeq	$r9,$r16,$r1
ffffffff80911040:	11 00 20 c4 	bne	$r1,ffffffff80911088 <mm_destroy+0x68>
ffffffff80911044:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911048:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091104c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911050:	08 00 30 8c 	ldl	$r1,8($r16)
ffffffff80911054:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff80911058:	30 00 3f fa 	ldi	$r17,48
ffffffff8091105c:	e0 ff 10 fa 	ldi	$r16,-32($r16)
ffffffff80911060:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911064:	68 80 7b 8f 	ldl	$r27,-32664($r27)
ffffffff80911068:	08 00 22 ac 	stl	$r1,8($r2)
ffffffff8091106c:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80911070:	93 0c 5b 07 	call	ra,($r27),ffffffff809142c0 <kfree>
ffffffff80911074:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911078:	08 00 09 8e 	ldl	$r16,8($r9)
ffffffff8091107c:	8c 6f bd fb 	ldi	$r29,28556($r29)
ffffffff80911080:	01 05 30 41 	cmpeq	$r9,$r16,$r1
ffffffff80911084:	f2 ff 3f c0 	beq	$r1,ffffffff80911050 <mm_destroy+0x30>
ffffffff80911088:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091108c:	68 80 7b 8f 	ldl	$r27,-32664($r27)
ffffffff80911090:	50 07 e9 43 	mov	$r9,$r16
ffffffff80911094:	30 00 3f fa 	ldi	$r17,48
ffffffff80911098:	89 0c 5b 07 	call	ra,($r27),ffffffff809142c0 <kfree>
ffffffff8091109c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809110a0:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809110a4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809110a8:	64 6f bd fb 	ldi	$r29,28516($r29)
ffffffff809110ac:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809110b0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809110b4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110bc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809110c0 <vmm_init>:
ffffffff809110c0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809110c4:	40 6f bd fb 	ldi	$r29,28480($r29)
ffffffff809110c8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809110cc:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff809110d0:	c0 ff de fb 	ldi	sp,-64(sp)
ffffffff809110d4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809110d8:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809110dc:	32 00 3f f9 	ldi	$r9,50
ffffffff809110e0:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809110e4:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809110e8:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809110ec:	28 00 be ad 	stl	$r13,40(sp)
ffffffff809110f0:	30 00 de ad 	stl	$r14,48(sp)
ffffffff809110f4:	38 00 fe ad 	stl	fp,56(sp)
ffffffff809110f8:	99 05 5b 07 	call	ra,($r27),ffffffff80912760 <nr_free_pages>
ffffffff809110fc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911100:	04 6f bd fb 	ldi	$r29,28420($r29)
ffffffff80911104:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80911108:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091110c:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80911110:	93 05 5b 07 	call	ra,($r27),ffffffff80912760 <nr_free_pages>
ffffffff80911114:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911118:	ec 6e bd fb 	ldi	$r29,28396($r29)
ffffffff8091111c:	4c 07 e0 43 	mov	$r0,$r12
ffffffff80911120:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911124:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80911128:	00 00 5b 07 	call	ra,($r27),ffffffff8091112c <vmm_init+0x6c>
ffffffff8091112c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911130:	d4 6e bd fb 	ldi	$r29,28372($r29)
ffffffff80911134:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911138:	4a 07 e0 43 	mov	$r0,$r10
ffffffff8091113c:	c5 00 3f fa 	ldi	$r17,197
ffffffff80911140:	72 d3 73 fa 	ldi	$r19,-11406($r19)
ffffffff80911144:	0e 00 00 c4 	bne	$r0,ffffffff80911180 <vmm_init+0xc0>
ffffffff80911148:	19 00 e0 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff8091114c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911150:	08 00 20 ad 	stl	$r9,8($r0)
ffffffff80911154:	10 00 a0 ad 	stl	$r13,16($r0)
ffffffff80911158:	fb ff 29 f9 	ldi	$r9,-5($r9)
ffffffff8091115c:	51 07 e0 43 	mov	$r0,$r17
ffffffff80911160:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911164:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff80911168:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091116c:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80911170:	5b ff 5b 07 	call	ra,($r27),ffffffff80910ee0 <insert_vma_struct>
ffffffff80911174:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911178:	8c 6e bd fb 	ldi	$r29,28300($r29)
ffffffff8091117c:	14 00 20 c1 	beq	$r9,ffffffff809111d0 <vmm_init+0x110>
ffffffff80911180:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911184:	c0 81 7b 8f 	ldl	$r27,-32320($r27)
ffffffff80911188:	30 00 1f fa 	ldi	$r16,48
ffffffff8091118c:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff80911190:	03 0c 5b 07 	call	ra,($r27),ffffffff809141a0 <kmalloc>
ffffffff80911194:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911198:	6c 6e bd fb 	ldi	$r29,28268($r29)
ffffffff8091119c:	ec ff 1f c4 	bne	$r0,ffffffff80911150 <vmm_init+0x90>
ffffffff809111a0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809111a4:	cc 00 3f fa 	ldi	$r17,204
ffffffff809111a8:	68 d5 73 fa 	ldi	$r19,-10904($r19)
ffffffff809111ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809111b4:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff809111b8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809111bc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809111c0:	f6 d2 52 fa 	ldi	$r18,-11530($r18)
ffffffff809111c4:	0b d3 10 fa 	ldi	$r16,-11509($r16)
ffffffff809111c8:	19 fc 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff809111cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111d0:	37 00 3f f9 	ldi	$r9,55
ffffffff809111d4:	0f 00 e0 13 	br	ffffffff80911214 <vmm_init+0x154>
ffffffff809111d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111e0:	08 00 20 ad 	stl	$r9,8($r0)
ffffffff809111e4:	10 00 a0 ad 	stl	$r13,16($r0)
ffffffff809111e8:	51 07 e0 43 	mov	$r0,$r17
ffffffff809111ec:	50 07 ea 43 	mov	$r10,$r16
ffffffff809111f0:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff809111f4:	05 00 29 f9 	ldi	$r9,5($r9)
ffffffff809111f8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809111fc:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80911200:	37 ff 5b 07 	call	ra,($r27),ffffffff80910ee0 <insert_vma_struct>
ffffffff80911204:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911208:	fc 6d bd fb 	ldi	$r29,28156($r29)
ffffffff8091120c:	07 fe 29 f8 	ldi	$r1,-505($r9)
ffffffff80911210:	0f 00 20 c0 	beq	$r1,ffffffff80911250 <vmm_init+0x190>
ffffffff80911214:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911218:	c0 81 7b 8f 	ldl	$r27,-32320($r27)
ffffffff8091121c:	30 00 1f fa 	ldi	$r16,48
ffffffff80911220:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff80911224:	de 0b 5b 07 	call	ra,($r27),ffffffff809141a0 <kmalloc>
ffffffff80911228:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091122c:	d8 6d bd fb 	ldi	$r29,28120($r29)
ffffffff80911230:	eb ff 1f c4 	bne	$r0,ffffffff809111e0 <vmm_init+0x120>
ffffffff80911234:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911238:	d2 00 3f fa 	ldi	$r17,210
ffffffff8091123c:	68 d5 73 fa 	ldi	$r19,-10904($r19)
ffffffff80911240:	db ff ff 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff80911244:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911248:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091124c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911250:	08 00 2a 8c 	ldl	$r1,8($r10)
ffffffff80911254:	07 00 5f f8 	ldi	$r2,7
ffffffff80911258:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091125c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911260:	03 05 41 41 	cmpeq	$r10,$r1,$r3
ffffffff80911264:	2c 01 60 c4 	bne	$r3,ffffffff80911718 <vmm_init+0x658>
ffffffff80911268:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff8091126c:	fe ff 82 f8 	ldi	$r4,-2($r2)
ffffffff80911270:	03 05 64 40 	cmpeq	$r3,$r4,$r3
ffffffff80911274:	1c 01 60 c0 	beq	$r3,ffffffff809116e8 <vmm_init+0x628>
ffffffff80911278:	f0 ff 61 8c 	ldl	$r3,-16($r1)
ffffffff8091127c:	03 05 62 40 	cmpeq	$r3,$r2,$r3
ffffffff80911280:	19 01 60 c0 	beq	$r3,ffffffff809116e8 <vmm_init+0x628>
ffffffff80911284:	05 00 42 f8 	ldi	$r2,5($r2)
ffffffff80911288:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff8091128c:	05 fe 62 f8 	ldi	$r3,-507($r2)
ffffffff80911290:	f3 ff 7f c4 	bne	$r3,ffffffff80911260 <vmm_init+0x1a0>
ffffffff80911294:	05 00 3f f9 	ldi	$r9,5
ffffffff80911298:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091129c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112a0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809112a4:	50 07 ea 43 	mov	$r10,$r16
ffffffff809112a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809112ac:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff809112b0:	00 00 5b 07 	call	ra,($r27),ffffffff809112b4 <vmm_init+0x1f4>
ffffffff809112b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809112b8:	4c 6d bd fb 	ldi	$r29,27980($r29)
ffffffff809112bc:	4f 07 e0 43 	mov	$r0,fp
ffffffff809112c0:	1d 01 00 c0 	beq	$r0,ffffffff80911738 <vmm_init+0x678>
ffffffff809112c4:	01 00 29 fa 	ldi	$r17,1($r9)
ffffffff809112c8:	50 07 ea 43 	mov	$r10,$r16
ffffffff809112cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809112d0:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff809112d4:	00 00 5b 07 	call	ra,($r27),ffffffff809112d8 <vmm_init+0x218>
ffffffff809112d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809112dc:	28 6d bd fb 	ldi	$r29,27944($r29)
ffffffff809112e0:	4e 07 e0 43 	mov	$r0,$r14
ffffffff809112e4:	10 01 00 c0 	beq	$r0,ffffffff80911728 <vmm_init+0x668>
ffffffff809112e8:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff809112ec:	50 07 ea 43 	mov	$r10,$r16
ffffffff809112f0:	51 07 ed 43 	mov	$r13,$r17
ffffffff809112f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809112f8:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff809112fc:	00 00 5b 07 	call	ra,($r27),ffffffff80911300 <vmm_init+0x240>
ffffffff80911300:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911304:	00 6d bd fb 	ldi	$r29,27904($r29)
ffffffff80911308:	13 01 00 c4 	bne	$r0,ffffffff80911758 <vmm_init+0x698>
ffffffff8091130c:	03 00 29 fa 	ldi	$r17,3($r9)
ffffffff80911310:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911314:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911318:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff8091131c:	00 00 5b 07 	call	ra,($r27),ffffffff80911320 <vmm_init+0x260>
ffffffff80911320:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911324:	e0 6c bd fb 	ldi	$r29,27872($r29)
ffffffff80911328:	07 01 00 c4 	bne	$r0,ffffffff80911748 <vmm_init+0x688>
ffffffff8091132c:	04 00 29 fa 	ldi	$r17,4($r9)
ffffffff80911330:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911334:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911338:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff8091133c:	00 00 5b 07 	call	ra,($r27),ffffffff80911340 <vmm_init+0x280>
ffffffff80911340:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911344:	c0 6c bd fb 	ldi	$r29,27840($r29)
ffffffff80911348:	07 01 00 c4 	bne	$r0,ffffffff80911768 <vmm_init+0x6a8>
ffffffff8091134c:	08 00 2f 8c 	ldl	$r1,8(fp)
ffffffff80911350:	01 05 29 40 	cmpeq	$r1,$r9,$r1
ffffffff80911354:	e8 00 20 c0 	beq	$r1,ffffffff809116f8 <vmm_init+0x638>
ffffffff80911358:	10 00 6f 8c 	ldl	$r3,16(fp)
ffffffff8091135c:	0d 05 6d 40 	cmpeq	$r3,$r13,$r13
ffffffff80911360:	e5 00 a0 c1 	beq	$r13,ffffffff809116f8 <vmm_init+0x638>
ffffffff80911364:	08 00 4e 8c 	ldl	$r2,8($r14)
ffffffff80911368:	02 05 49 40 	cmpeq	$r2,$r9,$r2
ffffffff8091136c:	e6 00 40 c0 	beq	$r2,ffffffff80911708 <vmm_init+0x648>
ffffffff80911370:	10 00 2e 8c 	ldl	$r1,16($r14)
ffffffff80911374:	01 05 23 40 	cmpeq	$r1,$r3,$r1
ffffffff80911378:	e3 00 20 c0 	beq	$r1,ffffffff80911708 <vmm_init+0x648>
ffffffff8091137c:	05 00 29 f9 	ldi	$r9,5($r9)
ffffffff80911380:	07 fe 29 f8 	ldi	$r1,-505($r9)
ffffffff80911384:	c6 ff 3f c4 	bne	$r1,ffffffff809112a0 <vmm_init+0x1e0>
ffffffff80911388:	04 00 3f f9 	ldi	$r9,4
ffffffff8091138c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911390:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911394:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911398:	0d 00 e9 43 	addw	$r31,$r9,$r13
ffffffff8091139c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809113a0:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff809113a4:	00 00 5b 07 	call	ra,($r27),ffffffff809113a8 <vmm_init+0x2e8>
ffffffff809113a8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809113ac:	58 6c bd fb 	ldi	$r29,27736($r29)
ffffffff809113b0:	17 00 00 c0 	beq	$r0,ffffffff80911410 <vmm_init+0x350>
ffffffff809113b4:	10 00 60 8e 	ldl	$r19,16($r0)
ffffffff809113b8:	08 00 40 8e 	ldl	$r18,8($r0)
ffffffff809113bc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809113c0:	51 07 ed 43 	mov	$r13,$r17
ffffffff809113c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809113c8:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809113cc:	64 d4 10 fa 	ldi	$r16,-11164($r16)
ffffffff809113d0:	6f fb 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809113d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809113d8:	2c 6c bd fb 	ldi	$r29,27692($r29)
ffffffff809113dc:	f4 00 3f fa 	ldi	$r17,244
ffffffff809113e0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809113e4:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff809113e8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809113ec:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809113f0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809113f4:	89 d4 73 fa 	ldi	$r19,-11127($r19)
ffffffff809113f8:	f6 d2 52 fa 	ldi	$r18,-11530($r18)
ffffffff809113fc:	0b d3 10 fa 	ldi	$r16,-11509($r16)
ffffffff80911400:	8b fb 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80911404:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911408:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091140c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911410:	ff ff 29 f9 	ldi	$r9,-1($r9)
ffffffff80911414:	01 00 29 f8 	ldi	$r1,1($r9)
ffffffff80911418:	dd ff 3f c4 	bne	$r1,ffffffff80911390 <vmm_init+0x2d0>
ffffffff8091141c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911420:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911424:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911428:	fd fe 5b 07 	call	ra,($r27),ffffffff80911020 <mm_destroy>
ffffffff8091142c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911430:	d4 6b bd fb 	ldi	$r29,27604($r29)
ffffffff80911434:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911438:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff8091143c:	c8 04 5b 07 	call	ra,($r27),ffffffff80912760 <nr_free_pages>
ffffffff80911440:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911444:	c0 6b bd fb 	ldi	$r29,27584($r29)
ffffffff80911448:	0c 05 80 41 	cmpeq	$r12,$r0,$r12
ffffffff8091144c:	f9 00 3f fa 	ldi	$r17,249
ffffffff80911450:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911454:	9d d4 73 fa 	ldi	$r19,-11107($r19)
ffffffff80911458:	55 ff 9f c1 	beq	$r12,ffffffff809111b0 <vmm_init+0xf0>
ffffffff8091145c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911460:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80911464:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911468:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff8091146c:	e8 81 4a 8d 	ldl	$r10,-32280($r10)
ffffffff80911470:	c4 d4 10 fa 	ldi	$r16,-11068($r16)
ffffffff80911474:	46 fb 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80911478:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091147c:	88 6b bd fb 	ldi	$r29,27528($r29)
ffffffff80911480:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911484:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80911488:	b5 04 5b 07 	call	ra,($r27),ffffffff80912760 <nr_free_pages>
ffffffff8091148c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911490:	74 6b bd fb 	ldi	$r29,27508($r29)
ffffffff80911494:	49 07 e0 43 	mov	$r0,$r9
ffffffff80911498:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091149c:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff809114a0:	00 00 5b 07 	call	ra,($r27),ffffffff809114a4 <vmm_init+0x3e4>
ffffffff809114a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809114a8:	5c 6b bd fb 	ldi	$r29,27484($r29)
ffffffff809114ac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809114b0:	00 00 0a ac 	stl	$r0,0($r10)
ffffffff809114b4:	4d 07 e0 43 	mov	$r0,$r13
ffffffff809114b8:	08 01 3f fa 	ldi	$r17,264
ffffffff809114bc:	e3 d4 73 fa 	ldi	$r19,-11037($r19)
ffffffff809114c0:	3b ff 1f c0 	beq	$r0,ffffffff809111b0 <vmm_init+0xf0>
ffffffff809114c4:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809114c8:	10 81 21 8c 	ldl	$r1,-32496($r1)
ffffffff809114cc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809114d0:	0b 01 3f fa 	ldi	$r17,267
ffffffff809114d4:	94 dc 73 fa 	ldi	$r19,-9068($r19)
ffffffff809114d8:	00 00 c1 8d 	ldl	$r14,0($r1)
ffffffff809114dc:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff809114e0:	18 00 c0 ad 	stl	$r14,24($r0)
ffffffff809114e4:	32 ff 3f c4 	bne	$r1,ffffffff809111b0 <vmm_init+0xf0>
ffffffff809114e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809114ec:	c0 81 7b 8f 	ldl	$r27,-32320($r27)
ffffffff809114f0:	30 00 1f fa 	ldi	$r16,48
ffffffff809114f4:	2a 0b 5b 07 	call	ra,($r27),ffffffff809141a0 <kmalloc>
ffffffff809114f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809114fc:	08 6b bd fb 	ldi	$r29,27400($r29)
ffffffff80911500:	4c 07 e0 43 	mov	$r0,$r12
ffffffff80911504:	74 00 00 c0 	beq	$r0,ffffffff809116d8 <vmm_init+0x618>
ffffffff80911508:	80 00 3f fc 	ldih	$r1,128
ffffffff8091150c:	51 07 e0 43 	mov	$r0,$r17
ffffffff80911510:	50 07 ed 43 	mov	$r13,$r16
ffffffff80911514:	08 00 e0 af 	stl	$r31,8($r0)
ffffffff80911518:	10 00 20 ac 	stl	$r1,16($r0)
ffffffff8091151c:	02 00 3f f8 	ldi	$r1,2
ffffffff80911520:	18 00 20 ac 	stl	$r1,24($r0)
ffffffff80911524:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911528:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff8091152c:	6c fe 5b 07 	call	ra,($r27),ffffffff80910ee0 <insert_vma_struct>
ffffffff80911530:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911534:	d0 6a bd fb 	ldi	$r29,27344($r29)
ffffffff80911538:	00 01 3f fa 	ldi	$r17,256
ffffffff8091153c:	50 07 ed 43 	mov	$r13,$r16
ffffffff80911540:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911544:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff80911548:	00 00 5b 07 	call	ra,($r27),ffffffff8091154c <vmm_init+0x48c>
ffffffff8091154c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911550:	b4 6a bd fb 	ldi	$r29,27316($r29)
ffffffff80911554:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911558:	0c 05 80 41 	cmpeq	$r12,$r0,$r12
ffffffff8091155c:	00 01 3f f8 	ldi	$r1,256
ffffffff80911560:	14 01 3f fa 	ldi	$r17,276
ffffffff80911564:	fb d4 73 fa 	ldi	$r19,-11013($r19)
ffffffff80911568:	11 ff 9f c1 	beq	$r12,ffffffff809111b0 <vmm_init+0xf0>
ffffffff8091156c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911570:	00 00 21 a0 	stb	$r1,0($r1)
ffffffff80911574:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80911578:	9c fe 41 f8 	ldi	$r2,-356($r1)
ffffffff8091157c:	fc ff 5f c4 	bne	$r2,ffffffff80911570 <vmm_init+0x4b0>
ffffffff80911580:	00 01 3f f8 	ldi	$r1,256
ffffffff80911584:	56 13 7f f8 	ldi	$r3,4950
ffffffff80911588:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091158c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911590:	00 00 41 80 	ldbu	$r2,0($r1)
ffffffff80911594:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80911598:	9c fe 81 f8 	ldi	$r4,-356($r1)
ffffffff8091159c:	42 0d e2 43 	sextb	$r2,$r2
ffffffff809115a0:	23 00 62 40 	subw	$r3,$r2,$r3
ffffffff809115a4:	fa ff 9f c4 	bne	$r4,ffffffff80911590 <vmm_init+0x4d0>
ffffffff809115a8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809115ac:	1e 01 3f fa 	ldi	$r17,286
ffffffff809115b0:	15 d5 73 fa 	ldi	$r19,-10987($r19)
ffffffff809115b4:	fe fe 7f c4 	bne	$r3,ffffffff809111b0 <vmm_init+0xf0>
ffffffff809115b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115bc:	48 81 7b 8f 	ldl	$r27,-32440($r27)
ffffffff809115c0:	51 07 ff 43 	clr	$r17
ffffffff809115c4:	50 07 ee 43 	mov	$r14,$r16
ffffffff809115c8:	4d 07 5b 07 	call	ra,($r27),ffffffff80913300 <page_remove>
ffffffff809115cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809115d0:	18 00 ed af 	stl	$r31,24($r13)
ffffffff809115d4:	34 6a bd fb 	ldi	$r29,27188($r29)
ffffffff809115d8:	50 07 ed 43 	mov	$r13,$r16
ffffffff809115dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115e0:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff809115e4:	8e fe 5b 07 	call	ra,($r27),ffffffff80911020 <mm_destroy>
ffffffff809115e8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809115ec:	18 6a bd fb 	ldi	$r29,27160($r29)
ffffffff809115f0:	00 00 ea af 	stl	$r31,0($r10)
ffffffff809115f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115f8:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff809115fc:	58 04 5b 07 	call	ra,($r27),ffffffff80912760 <nr_free_pages>
ffffffff80911600:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911604:	00 6a bd fb 	ldi	$r29,27136($r29)
ffffffff80911608:	09 05 20 41 	cmpeq	$r9,$r0,$r9
ffffffff8091160c:	34 01 3f fa 	ldi	$r17,308
ffffffff80911610:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911614:	9d d4 73 fa 	ldi	$r19,-11107($r19)
ffffffff80911618:	e5 fe 3f c1 	beq	$r9,ffffffff809111b0 <vmm_init+0xf0>
ffffffff8091161c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911620:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80911624:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911628:	1e d5 10 fa 	ldi	$r16,-10978($r16)
ffffffff8091162c:	d8 fa 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80911630:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911634:	d0 69 bd fb 	ldi	$r29,27088($r29)
ffffffff80911638:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091163c:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80911640:	47 04 5b 07 	call	ra,($r27),ffffffff80912760 <nr_free_pages>
ffffffff80911644:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911648:	bc 69 bd fb 	ldi	$r29,27068($r29)
ffffffff8091164c:	0b 05 60 41 	cmpeq	$r11,$r0,$r11
ffffffff80911650:	ba 00 3f fa 	ldi	$r17,186
ffffffff80911654:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911658:	9d d4 73 fa 	ldi	$r19,-11107($r19)
ffffffff8091165c:	d4 fe 7f c1 	beq	$r11,ffffffff809111b0 <vmm_init+0xf0>
ffffffff80911660:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911664:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80911668:	3d 04 5b 07 	call	ra,($r27),ffffffff80912760 <nr_free_pages>
ffffffff8091166c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911670:	94 69 bd fb 	ldi	$r29,27028($r29)
ffffffff80911674:	51 07 e0 43 	mov	$r0,$r17
ffffffff80911678:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091167c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80911680:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911684:	3a d5 10 fa 	ldi	$r16,-10950($r16)
ffffffff80911688:	c1 fa 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff8091168c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911690:	74 69 bd fb 	ldi	$r29,26996($r29)
ffffffff80911694:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911698:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091169c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809116a0:	50 d5 10 fa 	ldi	$r16,-10928($r16)
ffffffff809116a4:	ba fa 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809116a8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809116ac:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809116b0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809116b4:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809116b8:	58 69 bd fb 	ldi	$r29,26968($r29)
ffffffff809116bc:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809116c0:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff809116c4:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff809116c8:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff809116cc:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff809116d0:	40 00 de fb 	ldi	sp,64(sp)
ffffffff809116d4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809116d8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809116dc:	0f 01 3f fa 	ldi	$r17,271
ffffffff809116e0:	68 d5 73 fa 	ldi	$r19,-10904($r19)
ffffffff809116e4:	b2 fe ff 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff809116e8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809116ec:	db 00 3f fa 	ldi	$r17,219
ffffffff809116f0:	94 d3 73 fa 	ldi	$r19,-11372($r19)
ffffffff809116f4:	ae fe ff 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff809116f8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809116fc:	eb 00 3f fa 	ldi	$r17,235
ffffffff80911700:	0a d4 73 fa 	ldi	$r19,-11254($r19)
ffffffff80911704:	aa fe ff 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff80911708:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091170c:	ec 00 3f fa 	ldi	$r17,236
ffffffff80911710:	37 d4 73 fa 	ldi	$r19,-11209($r19)
ffffffff80911714:	a6 fe ff 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff80911718:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091171c:	d9 00 3f fa 	ldi	$r17,217
ffffffff80911720:	7d d3 73 fa 	ldi	$r19,-11395($r19)
ffffffff80911724:	a2 fe ff 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff80911728:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091172c:	e3 00 3f fa 	ldi	$r17,227
ffffffff80911730:	d6 d3 73 fa 	ldi	$r19,-11306($r19)
ffffffff80911734:	9e fe ff 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff80911738:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091173c:	e1 00 3f fa 	ldi	$r17,225
ffffffff80911740:	c9 d3 73 fa 	ldi	$r19,-11319($r19)
ffffffff80911744:	9a fe ff 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff80911748:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091174c:	e7 00 3f fa 	ldi	$r17,231
ffffffff80911750:	f0 d3 73 fa 	ldi	$r19,-11280($r19)
ffffffff80911754:	96 fe ff 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff80911758:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091175c:	e5 00 3f fa 	ldi	$r17,229
ffffffff80911760:	e3 d3 73 fa 	ldi	$r19,-11293($r19)
ffffffff80911764:	92 fe ff 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff80911768:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091176c:	e9 00 3f fa 	ldi	$r17,233
ffffffff80911770:	fd d3 73 fa 	ldi	$r19,-11267($r19)
ffffffff80911774:	8e fe ff 13 	br	ffffffff809111b0 <vmm_init+0xf0>
ffffffff80911778:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091177c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911780 <do_pgfault>:
ffffffff80911780:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911784:	80 68 bd fb 	ldi	$r29,26752($r29)
ffffffff80911788:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff8091178c:	51 07 f2 43 	mov	$r18,$r17
ffffffff80911790:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911794:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911798:	4b 07 f0 43 	mov	$r16,$r11
ffffffff8091179c:	4c 07 f2 43 	mov	$r18,$r12
ffffffff809117a0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809117a4:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809117a8:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809117ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809117b0:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff809117b4:	00 00 5b 07 	call	ra,($r27),ffffffff809117b8 <do_pgfault+0x38>
ffffffff809117b8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117bc:	48 68 bd fb 	ldi	$r29,26696($r29)
ffffffff809117c0:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff809117c4:	24 82 22 88 	ldw	$r1,-32220($r2)
ffffffff809117c8:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff809117cc:	24 82 22 a8 	stw	$r1,-32220($r2)
ffffffff809117d0:	03 00 00 c0 	beq	$r0,ffffffff809117e0 <do_pgfault+0x60>
ffffffff809117d4:	08 00 20 8c 	ldl	$r1,8($r0)
ffffffff809117d8:	81 05 2c 40 	cmpule	$r1,$r12,$r1
ffffffff809117dc:	08 00 20 c4 	bne	$r1,ffffffff80911800 <do_pgfault+0x80>
ffffffff809117e0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809117e4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809117e8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809117ec:	51 07 ec 43 	mov	$r12,$r17
ffffffff809117f0:	74 d5 10 fa 	ldi	$r16,-10892($r16)
ffffffff809117f4:	66 fa 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809117f8:	ff ff ff 13 	br	ffffffff809117f8 <do_pgfault+0x78>
ffffffff809117fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911800:	18 00 40 8d 	ldl	$r10,24($r0)
ffffffff80911804:	01 00 3f fc 	ldih	$r1,1
ffffffff80911808:	18 00 0b 8e 	ldl	$r16,24($r11)
ffffffff8091180c:	00 e0 3f f9 	ldi	$r9,-8192
ffffffff80911810:	00 cc 41 f8 	ldi	$r2,-13312($r1)
ffffffff80911814:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911818:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff8091181c:	00 88 21 f8 	ldi	$r1,-30720($r1)
ffffffff80911820:	09 07 89 41 	and	$r12,$r9,$r9
ffffffff80911824:	01 00 5f fa 	ldi	$r18,1
ffffffff80911828:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091182c:	0a 47 40 49 	and	$r10,0x2,$r10
ffffffff80911830:	42 00 41 45 	seleq	$r10,$r1,$r2,$r2
ffffffff80911834:	4a 07 e2 43 	mov	$r2,$r10
ffffffff80911838:	dd 03 5b 07 	call	ra,($r27),ffffffff809127b0 <get_pte>
ffffffff8091183c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911840:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff80911844:	c4 67 bd fb 	ldi	$r29,26564($r29)
ffffffff80911848:	08 00 20 c0 	beq	$r1,ffffffff8091186c <do_pgfault+0xec>
ffffffff8091184c:	40 07 ff 43 	clr	$r0
ffffffff80911850:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911854:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911858:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091185c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911860:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80911864:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80911868:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091186c:	18 00 0b 8e 	ldl	$r16,24($r11)
ffffffff80911870:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911874:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80911878:	52 07 ea 43 	mov	$r10,$r18
ffffffff8091187c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911880:	07 0a 5b 07 	call	ra,($r27),ffffffff809140a0 <pgdir_alloc_page>
ffffffff80911884:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911888:	7c 67 bd fb 	ldi	$r29,26492($r29)
ffffffff8091188c:	ef ff 1f c4 	bne	$r0,ffffffff8091184c <do_pgfault+0xcc>
ffffffff80911890:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911894:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80911898:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091189c:	a4 d5 10 fa 	ldi	$r16,-10844($r16)
ffffffff809118a0:	3b fa 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809118a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809118a8:	5c 67 bd fb 	ldi	$r29,26460($r29)
ffffffff809118ac:	fc ff 1f f8 	ldi	$r0,-4
ffffffff809118b0:	e7 ff ff 13 	br	ffffffff80911850 <do_pgfault+0xd0>
ffffffff809118b4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809118b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809118bc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809118c0 <default_init>:
ffffffff809118c0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809118c4:	40 67 bd fb 	ldi	$r29,26432($r29)
ffffffff809118c8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809118cc:	d0 81 21 8c 	ldl	$r1,-32304($r1)
ffffffff809118d0:	08 00 21 ac 	stl	$r1,8($r1)
ffffffff809118d4:	00 00 21 ac 	stl	$r1,0($r1)
ffffffff809118d8:	10 00 e1 ab 	stw	$r31,16($r1)
ffffffff809118dc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809118e0 <default_nr_free_pages>:
ffffffff809118e0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809118e4:	20 67 bd fb 	ldi	$r29,26400($r29)
ffffffff809118e8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809118ec:	d0 81 21 8c 	ldl	$r1,-32304($r1)
ffffffff809118f0:	10 00 01 88 	ldw	$r0,16($r1)
ffffffff809118f4:	20 ed 01 48 	zapnot	$r0,0xf,$r0
ffffffff809118f8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809118fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911900 <default_free_pages>:
ffffffff80911900:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911904:	00 67 bd fb 	ldi	$r29,26368($r29)
ffffffff80911908:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091190c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911910:	99 00 20 c2 	beq	$r17,ffffffff80911b78 <default_free_pages+0x278>
ffffffff80911914:	84 01 20 4a 	s8addl	$r17,0,$r4
ffffffff80911918:	04 01 91 40 	addl	$r4,$r17,$r4
ffffffff8091191c:	84 01 80 48 	s8addl	$r4,0,$r4
ffffffff80911920:	04 01 04 42 	addl	$r16,$r4,$r4
ffffffff80911924:	01 05 04 42 	cmpeq	$r16,$r4,$r1
ffffffff80911928:	12 00 20 c4 	bne	$r1,ffffffff80911974 <default_free_pages+0x74>
ffffffff8091192c:	08 00 50 88 	ldw	$r2,8($r16)
ffffffff80911930:	41 29 40 48 	sra	$r2,0x1,$r1
ffffffff80911934:	41 07 22 40 	or	$r1,$r2,$r1
ffffffff80911938:	85 00 20 dc 	blbs	$r1,ffffffff80911b50 <default_free_pages+0x250>
ffffffff8091193c:	41 07 f0 43 	mov	$r16,$r1
ffffffff80911940:	07 00 e0 13 	br	ffffffff80911960 <default_free_pages+0x60>
ffffffff80911944:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911948:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091194c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911950:	08 00 61 88 	ldw	$r3,8($r1)
ffffffff80911954:	42 29 60 48 	sra	$r3,0x1,$r2
ffffffff80911958:	42 07 43 40 	or	$r2,$r3,$r2
ffffffff8091195c:	7c 00 40 dc 	blbs	$r2,ffffffff80911b50 <default_free_pages+0x250>
ffffffff80911960:	08 00 e1 af 	stl	$r31,8($r1)
ffffffff80911964:	00 00 e1 ab 	stw	$r31,0($r1)
ffffffff80911968:	48 00 21 f8 	ldi	$r1,72($r1)
ffffffff8091196c:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff80911970:	f7 ff 5f c0 	beq	$r2,ffffffff80911950 <default_free_pages+0x50>
ffffffff80911974:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80911978:	08 00 d0 f8 	ldi	$r6,8($r16)
ffffffff8091197c:	18 00 30 aa 	stw	$r17,24($r16)
ffffffff80911980:	08 00 70 f8 	ldi	$r3,8($r16)
ffffffff80911984:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff80911988:	01 00 5f f8 	ldi	$r2,1
ffffffff8091198c:	20 10 5f 18 	wr_f	$r2
ffffffff80911990:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff80911994:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911998:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff8091199c:	00 10 5f 18 	rd_f	$r2
ffffffff809119a0:	79 00 40 c0 	beq	$r2,ffffffff80911b88 <default_free_pages+0x288>
ffffffff809119a4:	00 00 9d fc 	ldih	$r4,0($r29)
ffffffff809119a8:	d0 81 84 8c 	ldl	$r4,-32304($r4)
ffffffff809119ac:	10 00 44 88 	ldw	$r2,16($r4)
ffffffff809119b0:	08 00 24 8c 	ldl	$r1,8($r4)
ffffffff809119b4:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff809119b8:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff809119bc:	10 00 24 aa 	stw	$r17,16($r4)
ffffffff809119c0:	07 00 40 c0 	beq	$r2,ffffffff809119e0 <default_free_pages+0xe0>
ffffffff809119c4:	3a 00 e0 13 	br	ffffffff80911ab0 <default_free_pages+0x1b0>
ffffffff809119c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809119cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809119d0:	08 00 61 8c 	ldl	$r3,8($r1)
ffffffff809119d4:	05 05 64 40 	cmpeq	$r3,$r4,$r5
ffffffff809119d8:	3d 00 a0 c4 	bne	$r5,ffffffff80911ad0 <default_free_pages+0x1d0>
ffffffff809119dc:	41 07 e3 43 	mov	$r3,$r1
ffffffff809119e0:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff809119e4:	63 05 02 42 	cmpult	$r16,$r2,$r3
ffffffff809119e8:	45 07 e2 43 	mov	$r2,$r5
ffffffff809119ec:	f8 ff 7f c0 	beq	$r3,ffffffff809119d0 <default_free_pages+0xd0>
ffffffff809119f0:	00 00 61 8c 	ldl	$r3,0($r1)
ffffffff809119f4:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff809119f8:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff809119fc:	08 00 43 ac 	stl	$r2,8($r3)
ffffffff80911a00:	02 05 64 40 	cmpeq	$r3,$r4,$r2
ffffffff80911a04:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80911a08:	20 00 70 ac 	stl	$r3,32($r16)
ffffffff80911a0c:	0d 00 40 c4 	bne	$r2,ffffffff80911a44 <default_free_pages+0x144>
ffffffff80911a10:	f8 ff e3 88 	ldw	$r7,-8($r3)
ffffffff80911a14:	e0 ff 43 f8 	ldi	$r2,-32($r3)
ffffffff80911a18:	25 ed e1 48 	zapnot	$r7,0xf,$r5
ffffffff80911a1c:	81 01 a0 48 	s8addl	$r5,0,$r1
ffffffff80911a20:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80911a24:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911a28:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80911a2c:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff80911a30:	35 00 20 c4 	bne	$r1,ffffffff80911b08 <default_free_pages+0x208>
ffffffff80911a34:	28 00 30 8c 	ldl	$r1,40($r16)
ffffffff80911a38:	04 05 24 40 	cmpeq	$r1,$r4,$r4
ffffffff80911a3c:	e0 ff a1 f8 	ldi	$r5,-32($r1)
ffffffff80911a40:	18 00 80 c4 	bne	$r4,ffffffff80911aa4 <default_free_pages+0x1a4>
ffffffff80911a44:	18 00 90 88 	ldw	$r4,24($r16)
ffffffff80911a48:	23 ed 81 48 	zapnot	$r4,0xf,$r3
ffffffff80911a4c:	82 01 60 48 	s8addl	$r3,0,$r2
ffffffff80911a50:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80911a54:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80911a58:	02 01 02 42 	addl	$r16,$r2,$r2
ffffffff80911a5c:	05 05 a2 40 	cmpeq	$r5,$r2,$r5
ffffffff80911a60:	10 00 a0 c0 	beq	$r5,ffffffff80911aa4 <default_free_pages+0x1a4>
ffffffff80911a64:	f8 ff 41 88 	ldw	$r2,-8($r1)
ffffffff80911a68:	04 00 44 40 	addw	$r2,$r4,$r4
ffffffff80911a6c:	18 00 90 a8 	stw	$r4,24($r16)
ffffffff80911a70:	e8 ff 81 f8 	ldi	$r4,-24($r1)
ffffffff80911a74:	00 00 44 20 	lldw	$r2,0($r4)
ffffffff80911a78:	01 00 7f f8 	ldi	$r3,1
ffffffff80911a7c:	20 10 7f 18 	wr_f	$r3
ffffffff80911a80:	22 47 40 48 	bic	$r2,0x2,$r2
ffffffff80911a84:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911a88:	00 80 44 20 	lstw	$r2,0($r4)
ffffffff80911a8c:	00 10 7f 18 	rd_f	$r3
ffffffff80911a90:	3e 00 60 c0 	beq	$r3,ffffffff80911b8c <default_free_pages+0x28c>
ffffffff80911a94:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff80911a98:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80911a9c:	08 00 22 ac 	stl	$r1,8($r2)
ffffffff80911aa0:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80911aa4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911aa8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911aac:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911ab0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911ab4:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff80911ab8:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80911abc:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80911ac0:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80911ac4:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff80911ac8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911acc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911ad0:	43 07 e1 43 	mov	$r1,$r3
ffffffff80911ad4:	20 00 b0 f8 	ldi	$r5,32($r16)
ffffffff80911ad8:	f8 ff e3 88 	ldw	$r7,-8($r3)
ffffffff80911adc:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff80911ae0:	00 00 a4 ac 	stl	$r5,0($r4)
ffffffff80911ae4:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80911ae8:	28 00 90 ac 	stl	$r4,40($r16)
ffffffff80911aec:	25 ed e1 48 	zapnot	$r7,0xf,$r5
ffffffff80911af0:	81 01 a0 48 	s8addl	$r5,0,$r1
ffffffff80911af4:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80911af8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911afc:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80911b00:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff80911b04:	cb ff 3f c0 	beq	$r1,ffffffff80911a34 <default_free_pages+0x134>
ffffffff80911b08:	18 00 30 88 	ldw	$r1,24($r16)
ffffffff80911b0c:	07 00 27 40 	addw	$r1,$r7,$r7
ffffffff80911b10:	f8 ff e3 a8 	stw	$r7,-8($r3)
ffffffff80911b14:	00 00 e6 f8 	ldi	$r7,0($r6)
ffffffff80911b18:	00 00 27 20 	lldw	$r1,0($r7)
ffffffff80911b1c:	01 00 bf f8 	ldi	$r5,1
ffffffff80911b20:	20 10 bf 18 	wr_f	$r5
ffffffff80911b24:	21 47 20 48 	bic	$r1,0x2,$r1
ffffffff80911b28:	00 80 27 20 	lstw	$r1,0($r7)
ffffffff80911b2c:	00 10 bf 18 	rd_f	$r5
ffffffff80911b30:	17 00 a0 c0 	beq	$r5,ffffffff80911b90 <default_free_pages+0x290>
ffffffff80911b34:	28 00 30 8c 	ldl	$r1,40($r16)
ffffffff80911b38:	20 00 b0 8c 	ldl	$r5,32($r16)
ffffffff80911b3c:	50 07 e2 43 	mov	$r2,$r16
ffffffff80911b40:	08 00 25 ac 	stl	$r1,8($r5)
ffffffff80911b44:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff80911b48:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff80911b4c:	ba ff ff 13 	br	ffffffff80911a38 <default_free_pages+0x138>
ffffffff80911b50:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911b54:	8a 00 3f fa 	ldi	$r17,138
ffffffff80911b58:	e7 d5 73 fa 	ldi	$r19,-10777($r19)
ffffffff80911b5c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911b60:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80911b64:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911b68:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911b6c:	f6 d2 52 fa 	ldi	$r18,-11530($r18)
ffffffff80911b70:	d1 d5 10 fa 	ldi	$r16,-10799($r16)
ffffffff80911b74:	ae f9 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80911b78:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911b7c:	87 00 3f fa 	ldi	$r17,135
ffffffff80911b80:	cb d5 73 fa 	ldi	$r19,-10805($r19)
ffffffff80911b84:	f5 ff ff 13 	br	ffffffff80911b5c <default_free_pages+0x25c>
ffffffff80911b88:	7e ff ff 13 	br	ffffffff80911984 <default_free_pages+0x84>
ffffffff80911b8c:	b9 ff ff 13 	br	ffffffff80911a74 <default_free_pages+0x174>
ffffffff80911b90:	e1 ff ff 13 	br	ffffffff80911b18 <default_free_pages+0x218>
ffffffff80911b94:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b98:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b9c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911ba0 <default_init_memmap>:
ffffffff80911ba0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911ba4:	60 64 bd fb 	ldi	$r29,25696($r29)
ffffffff80911ba8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80911bac:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911bb0:	5d 00 20 c2 	beq	$r17,ffffffff80911d28 <default_init_memmap+0x188>
ffffffff80911bb4:	83 01 20 4a 	s8addl	$r17,0,$r3
ffffffff80911bb8:	03 01 71 40 	addl	$r3,$r17,$r3
ffffffff80911bbc:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff80911bc0:	03 01 03 42 	addl	$r16,$r3,$r3
ffffffff80911bc4:	01 05 03 42 	cmpeq	$r16,$r3,$r1
ffffffff80911bc8:	0d 00 20 c4 	bne	$r1,ffffffff80911c00 <default_init_memmap+0x60>
ffffffff80911bcc:	08 00 30 88 	ldw	$r1,8($r16)
ffffffff80911bd0:	4b 00 20 d8 	blbc	$r1,ffffffff80911d00 <default_init_memmap+0x160>
ffffffff80911bd4:	41 07 f0 43 	mov	$r16,$r1
ffffffff80911bd8:	03 00 e0 13 	br	ffffffff80911be8 <default_init_memmap+0x48>
ffffffff80911bdc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911be0:	08 00 41 88 	ldw	$r2,8($r1)
ffffffff80911be4:	46 00 40 d8 	blbc	$r2,ffffffff80911d00 <default_init_memmap+0x160>
ffffffff80911be8:	18 00 e1 ab 	stw	$r31,24($r1)
ffffffff80911bec:	08 00 e1 af 	stl	$r31,8($r1)
ffffffff80911bf0:	48 00 21 f8 	ldi	$r1,72($r1)
ffffffff80911bf4:	b8 ff e1 ab 	stw	$r31,-72($r1)
ffffffff80911bf8:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff80911bfc:	f8 ff 5f c0 	beq	$r2,ffffffff80911be0 <default_init_memmap+0x40>
ffffffff80911c00:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80911c04:	18 00 30 aa 	stw	$r17,24($r16)
ffffffff80911c08:	08 00 70 f8 	ldi	$r3,8($r16)
ffffffff80911c0c:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff80911c10:	01 00 5f f8 	ldi	$r2,1
ffffffff80911c14:	20 10 5f 18 	wr_f	$r2
ffffffff80911c18:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff80911c1c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911c20:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff80911c24:	00 10 5f 18 	rd_f	$r2
ffffffff80911c28:	47 00 40 c0 	beq	$r2,ffffffff80911d48 <default_init_memmap+0x1a8>
ffffffff80911c2c:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80911c30:	d0 81 63 8c 	ldl	$r3,-32304($r3)
ffffffff80911c34:	10 00 43 88 	ldw	$r2,16($r3)
ffffffff80911c38:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff80911c3c:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff80911c40:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff80911c44:	10 00 23 aa 	stw	$r17,16($r3)
ffffffff80911c48:	25 00 40 c4 	bne	$r2,ffffffff80911ce0 <default_init_memmap+0x140>
ffffffff80911c4c:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80911c50:	00 00 c3 8c 	ldl	$r6,0($r3)
ffffffff80911c54:	47 07 ff 43 	clr	$r7
ffffffff80911c58:	20 00 b0 f8 	ldi	$r5,32($r16)
ffffffff80911c5c:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80911c60:	0a 00 40 c4 	bne	$r2,ffffffff80911c8c <default_init_memmap+0xec>
ffffffff80911c64:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911c68:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911c6c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911c70:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911c74:	04 05 43 40 	cmpeq	$r2,$r3,$r4
ffffffff80911c78:	0d 00 80 c4 	bne	$r4,ffffffff80911cb0 <default_init_memmap+0x110>
ffffffff80911c7c:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911c80:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80911c84:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80911c88:	f9 ff 5f c0 	beq	$r2,ffffffff80911c70 <default_init_memmap+0xd0>
ffffffff80911c8c:	2c 00 e0 c4 	bne	$r7,ffffffff80911d40 <default_init_memmap+0x1a0>
ffffffff80911c90:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff80911c94:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff80911c98:	08 00 a2 ac 	stl	$r5,8($r2)
ffffffff80911c9c:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80911ca0:	20 00 50 ac 	stl	$r2,32($r16)
ffffffff80911ca4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911ca8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911cac:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911cb0:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff80911cb4:	46 07 e5 43 	mov	$r5,$r6
ffffffff80911cb8:	28 00 70 ac 	stl	$r3,40($r16)
ffffffff80911cbc:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80911cc0:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911cc4:	01 05 43 40 	cmpeq	$r2,$r3,$r1
ffffffff80911cc8:	1b 00 20 c4 	bne	$r1,ffffffff80911d38 <default_init_memmap+0x198>
ffffffff80911ccc:	01 00 ff f8 	ldi	$r7,1
ffffffff80911cd0:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911cd4:	ea ff ff 13 	br	ffffffff80911c80 <default_init_memmap+0xe0>
ffffffff80911cd8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911cdc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911ce0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911ce4:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff80911ce8:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80911cec:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80911cf0:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80911cf4:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff80911cf8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911cfc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911d00:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911d04:	47 00 3f fa 	ldi	$r17,71
ffffffff80911d08:	0c d6 73 fa 	ldi	$r19,-10740($r19)
ffffffff80911d0c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911d10:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80911d14:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911d18:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911d1c:	f6 d2 52 fa 	ldi	$r18,-11530($r18)
ffffffff80911d20:	d1 d5 10 fa 	ldi	$r16,-10799($r16)
ffffffff80911d24:	42 f9 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80911d28:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911d2c:	44 00 3f fa 	ldi	$r17,68
ffffffff80911d30:	cb d5 73 fa 	ldi	$r19,-10805($r19)
ffffffff80911d34:	f5 ff ff 13 	br	ffffffff80911d0c <default_init_memmap+0x16c>
ffffffff80911d38:	00 00 a3 ac 	stl	$r5,0($r3)
ffffffff80911d3c:	d9 ff ff 13 	br	ffffffff80911ca4 <default_init_memmap+0x104>
ffffffff80911d40:	00 00 c3 ac 	stl	$r6,0($r3)
ffffffff80911d44:	d2 ff ff 13 	br	ffffffff80911c90 <default_init_memmap+0xf0>
ffffffff80911d48:	b0 ff ff 13 	br	ffffffff80911c0c <default_init_memmap+0x6c>
ffffffff80911d4c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911d50 <best_fit_check>:
ffffffff80911d50:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911d54:	b0 62 bd fb 	ldi	$r29,25264($r29)
ffffffff80911d58:	a0 ff de fb 	ldi	sp,-96(sp)
ffffffff80911d5c:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80911d60:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff80911d64:	d0 81 ce 8d 	ldl	$r14,-32304($r14)
ffffffff80911d68:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911d6c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911d70:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80911d74:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911d78:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80911d7c:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911d80:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80911d84:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80911d88:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff80911d8c:	b4 01 60 c4 	bne	$r3,ffffffff80912460 <best_fit_check+0x710>
ffffffff80911d90:	e8 ff 61 88 	ldw	$r3,-24($r1)
ffffffff80911d94:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff80911d98:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff80911d9c:	be 01 60 c0 	beq	$r3,ffffffff80912498 <best_fit_check+0x748>
ffffffff80911da0:	49 07 ff 43 	clr	$r9
ffffffff80911da4:	4a 07 ff 43 	clr	$r10
ffffffff80911da8:	04 00 e0 13 	br	ffffffff80911dbc <best_fit_check+0x6c>
ffffffff80911dac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911db0:	e8 ff 61 88 	ldw	$r3,-24($r1)
ffffffff80911db4:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff80911db8:	b7 01 60 c0 	beq	$r3,ffffffff80912498 <best_fit_check+0x748>
ffffffff80911dbc:	f8 ff 81 88 	ldw	$r4,-8($r1)
ffffffff80911dc0:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80911dc4:	0a 20 40 49 	addw	$r10,0x1,$r10
ffffffff80911dc8:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff80911dcc:	09 00 89 40 	addw	$r4,$r9,$r9
ffffffff80911dd0:	f7 ff 7f c0 	beq	$r3,ffffffff80911db0 <best_fit_check+0x60>
ffffffff80911dd4:	4b 07 e9 43 	mov	$r9,$r11
ffffffff80911dd8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911ddc:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80911de0:	5f 02 5b 07 	call	ra,($r27),ffffffff80912760 <nr_free_pages>
ffffffff80911de4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911de8:	00 05 0b 40 	cmpeq	$r0,$r11,$r0
ffffffff80911dec:	1c 62 bd fb 	ldi	$r29,25116($r29)
ffffffff80911df0:	9f 01 00 c0 	beq	$r0,ffffffff80912470 <best_fit_check+0x720>
ffffffff80911df4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911df8:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911dfc:	01 00 1f fa 	ldi	$r16,1
ffffffff80911e00:	2b 02 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80911e04:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911e08:	fc 61 bd fb 	ldi	$r29,25084($r29)
ffffffff80911e0c:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80911e10:	c1 00 3f fa 	ldi	$r17,193
ffffffff80911e14:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911e18:	35 d6 73 fa 	ldi	$r19,-10699($r19)
ffffffff80911e1c:	97 01 00 c0 	beq	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80911e20:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911e24:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911e28:	01 00 1f fa 	ldi	$r16,1
ffffffff80911e2c:	20 02 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80911e30:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911e34:	d0 61 bd fb 	ldi	$r29,25040($r29)
ffffffff80911e38:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80911e3c:	c2 00 3f fa 	ldi	$r17,194
ffffffff80911e40:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911e44:	51 d6 73 fa 	ldi	$r19,-10671($r19)
ffffffff80911e48:	8c 01 00 c0 	beq	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80911e4c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911e50:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911e54:	01 00 1f fa 	ldi	$r16,1
ffffffff80911e58:	15 02 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80911e5c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911e60:	a4 61 bd fb 	ldi	$r29,24996($r29)
ffffffff80911e64:	4c 07 e0 43 	mov	$r0,$r12
ffffffff80911e68:	c3 00 3f fa 	ldi	$r17,195
ffffffff80911e6c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911e70:	6d d6 73 fa 	ldi	$r19,-10643($r19)
ffffffff80911e74:	81 01 00 c0 	beq	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80911e78:	03 05 a0 41 	cmpeq	$r13,$r0,$r3
ffffffff80911e7c:	05 05 60 41 	cmpeq	$r11,$r0,$r5
ffffffff80911e80:	01 05 6d 41 	cmpeq	$r11,$r13,$r1
ffffffff80911e84:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911e88:	44 07 e3 43 	mov	$r3,$r4
ffffffff80911e8c:	c5 00 3f fa 	ldi	$r17,197
ffffffff80911e90:	89 d6 73 fa 	ldi	$r19,-10615($r19)
ffffffff80911e94:	43 07 85 40 	or	$r4,$r5,$r3
ffffffff80911e98:	41 07 23 40 	or	$r1,$r3,$r1
ffffffff80911e9c:	77 01 20 c4 	bne	$r1,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80911ea0:	00 00 2b 88 	ldw	$r1,0($r11)
ffffffff80911ea4:	80 01 20 c4 	bne	$r1,ffffffff809124a8 <best_fit_check+0x758>
ffffffff80911ea8:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff80911eac:	7e 01 20 c4 	bne	$r1,ffffffff809124a8 <best_fit_check+0x758>
ffffffff80911eb0:	00 00 20 88 	ldw	$r1,0($r0)
ffffffff80911eb4:	7c 01 20 c4 	bne	$r1,ffffffff809124a8 <best_fit_check+0x758>
ffffffff80911eb8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911ebc:	f0 81 21 8c 	ldl	$r1,-32272($r1)
ffffffff80911ec0:	ff ff fd fc 	ldih	$r7,-1($r29)
ffffffff80911ec4:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80911ec8:	c8 81 63 8c 	ldl	$r3,-32312($r3)
ffffffff80911ecc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911ed0:	c0 d8 07 8d 	ldl	$r8,-10048($r7)
ffffffff80911ed4:	c8 00 3f fa 	ldi	$r17,200
ffffffff80911ed8:	e6 d6 73 fa 	ldi	$r19,-10522($r19)
ffffffff80911edc:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80911ee0:	00 00 c3 8c 	ldl	$r6,0($r3)
ffffffff80911ee4:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80911ee8:	d0 80 63 8c 	ldl	$r3,-32560($r3)
ffffffff80911eec:	24 01 61 41 	subl	$r11,$r1,$r4
ffffffff80911ef0:	44 69 80 48 	sra	$r4,0x3,$r4
ffffffff80911ef4:	00 00 a3 8c 	ldl	$r5,0($r3)
ffffffff80911ef8:	04 03 88 40 	mull	$r4,$r8,$r4
ffffffff80911efc:	05 a9 a1 48 	sll	$r5,0xd,$r5
ffffffff80911f00:	04 01 86 40 	addl	$r4,$r6,$r4
ffffffff80911f04:	04 a9 81 48 	sll	$r4,0xd,$r4
ffffffff80911f08:	64 05 85 40 	cmpult	$r4,$r5,$r4
ffffffff80911f0c:	5b 01 80 c0 	beq	$r4,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80911f10:	23 01 a1 41 	subl	$r13,$r1,$r3
ffffffff80911f14:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911f18:	c9 00 3f fa 	ldi	$r17,201
ffffffff80911f1c:	43 69 60 48 	sra	$r3,0x3,$r3
ffffffff80911f20:	03 d7 73 fa 	ldi	$r19,-10493($r19)
ffffffff80911f24:	03 03 68 40 	mull	$r3,$r8,$r3
ffffffff80911f28:	03 01 66 40 	addl	$r3,$r6,$r3
ffffffff80911f2c:	03 a9 61 48 	sll	$r3,0xd,$r3
ffffffff80911f30:	83 05 a3 40 	cmpule	$r5,$r3,$r3
ffffffff80911f34:	51 01 60 c4 	bne	$r3,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80911f38:	c0 d8 67 8c 	ldl	$r3,-10048($r7)
ffffffff80911f3c:	21 01 01 40 	subl	$r0,$r1,$r1
ffffffff80911f40:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911f44:	ca 00 3f fa 	ldi	$r17,202
ffffffff80911f48:	41 69 20 48 	sra	$r1,0x3,$r1
ffffffff80911f4c:	20 d7 73 fa 	ldi	$r19,-10464($r19)
ffffffff80911f50:	01 03 23 40 	mull	$r1,$r3,$r1
ffffffff80911f54:	01 01 26 40 	addl	$r1,$r6,$r1
ffffffff80911f58:	01 a9 21 48 	sll	$r1,0xd,$r1
ffffffff80911f5c:	81 05 a1 40 	cmpule	$r5,$r1,$r1
ffffffff80911f60:	46 01 20 c4 	bne	$r1,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80911f64:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80911f68:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911f6c:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80911f70:	01 00 1f fa 	ldi	$r16,1
ffffffff80911f74:	00 00 ee 8d 	ldl	fp,0($r14)
ffffffff80911f78:	08 00 ce ad 	stl	$r14,8($r14)
ffffffff80911f7c:	00 00 ce ad 	stl	$r14,0($r14)
ffffffff80911f80:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff80911f84:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80911f88:	10 00 ee ab 	stw	$r31,16($r14)
ffffffff80911f8c:	48 00 3e ac 	stl	$r1,72(sp)
ffffffff80911f90:	c7 01 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80911f94:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911f98:	6c 60 bd fb 	ldi	$r29,24684($r29)
ffffffff80911f9c:	d3 00 3f fa 	ldi	$r17,211
ffffffff80911fa0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911fa4:	3d d7 73 fa 	ldi	$r19,-10435($r19)
ffffffff80911fa8:	34 01 00 c4 	bne	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80911fac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911fb0:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80911fb4:	01 00 3f fa 	ldi	$r17,1
ffffffff80911fb8:	50 07 eb 43 	mov	$r11,$r16
ffffffff80911fbc:	d4 01 5b 07 	call	ra,($r27),ffffffff80912710 <free_pages>
ffffffff80911fc0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911fc4:	40 60 bd fb 	ldi	$r29,24640($r29)
ffffffff80911fc8:	01 00 3f fa 	ldi	$r17,1
ffffffff80911fcc:	50 07 ed 43 	mov	$r13,$r16
ffffffff80911fd0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911fd4:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80911fd8:	cd 01 5b 07 	call	ra,($r27),ffffffff80912710 <free_pages>
ffffffff80911fdc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911fe0:	24 60 bd fb 	ldi	$r29,24612($r29)
ffffffff80911fe4:	01 00 3f fa 	ldi	$r17,1
ffffffff80911fe8:	50 07 ec 43 	mov	$r12,$r16
ffffffff80911fec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911ff0:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80911ff4:	c6 01 5b 07 	call	ra,($r27),ffffffff80912710 <free_pages>
ffffffff80911ff8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911ffc:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80912000:	08 60 bd fb 	ldi	$r29,24584($r29)
ffffffff80912004:	d8 00 3f fa 	ldi	$r17,216
ffffffff80912008:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091200c:	52 d7 73 fa 	ldi	$r19,-10414($r19)
ffffffff80912010:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff80912014:	19 01 20 c0 	beq	$r1,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80912018:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091201c:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80912020:	01 00 1f fa 	ldi	$r16,1
ffffffff80912024:	a2 01 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80912028:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091202c:	d8 5f bd fb 	ldi	$r29,24536($r29)
ffffffff80912030:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80912034:	da 00 3f fa 	ldi	$r17,218
ffffffff80912038:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091203c:	35 d6 73 fa 	ldi	$r19,-10699($r19)
ffffffff80912040:	0e 01 00 c0 	beq	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80912044:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912048:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff8091204c:	01 00 1f fa 	ldi	$r16,1
ffffffff80912050:	97 01 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80912054:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912058:	ac 5f bd fb 	ldi	$r29,24492($r29)
ffffffff8091205c:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80912060:	db 00 3f fa 	ldi	$r17,219
ffffffff80912064:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912068:	51 d6 73 fa 	ldi	$r19,-10671($r19)
ffffffff8091206c:	03 01 00 c0 	beq	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80912070:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912074:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80912078:	01 00 1f fa 	ldi	$r16,1
ffffffff8091207c:	8c 01 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80912080:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912084:	80 5f bd fb 	ldi	$r29,24448($r29)
ffffffff80912088:	4c 07 e0 43 	mov	$r0,$r12
ffffffff8091208c:	dc 00 3f fa 	ldi	$r17,220
ffffffff80912090:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912094:	6d d6 73 fa 	ldi	$r19,-10643($r19)
ffffffff80912098:	f8 00 00 c0 	beq	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff8091209c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809120a0:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff809120a4:	01 00 1f fa 	ldi	$r16,1
ffffffff809120a8:	81 01 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff809120ac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809120b0:	54 5f bd fb 	ldi	$r29,24404($r29)
ffffffff809120b4:	de 00 3f fa 	ldi	$r17,222
ffffffff809120b8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809120bc:	3d d7 73 fa 	ldi	$r19,-10435($r19)
ffffffff809120c0:	ee 00 00 c4 	bne	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff809120c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809120c8:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809120cc:	01 00 3f fa 	ldi	$r17,1
ffffffff809120d0:	50 07 eb 43 	mov	$r11,$r16
ffffffff809120d4:	8e 01 5b 07 	call	ra,($r27),ffffffff80912710 <free_pages>
ffffffff809120d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809120dc:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff809120e0:	28 5f bd fb 	ldi	$r29,24360($r29)
ffffffff809120e4:	e1 00 3f fa 	ldi	$r17,225
ffffffff809120e8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809120ec:	5f d7 73 fa 	ldi	$r19,-10401($r19)
ffffffff809120f0:	01 05 2e 40 	cmpeq	$r1,$r14,$r1
ffffffff809120f4:	e1 00 20 c4 	bne	$r1,ffffffff8091247c <best_fit_check+0x72c>
ffffffff809120f8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809120fc:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80912100:	01 00 1f fa 	ldi	$r16,1
ffffffff80912104:	6a 01 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80912108:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091210c:	f8 5e bd fb 	ldi	$r29,24312($r29)
ffffffff80912110:	00 05 60 41 	cmpeq	$r11,$r0,$r0
ffffffff80912114:	e4 00 3f fa 	ldi	$r17,228
ffffffff80912118:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091211c:	77 d7 73 fa 	ldi	$r19,-10377($r19)
ffffffff80912120:	d6 00 00 c0 	beq	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80912124:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912128:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff8091212c:	01 00 1f fa 	ldi	$r16,1
ffffffff80912130:	5f 01 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80912134:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912138:	cc 5e bd fb 	ldi	$r29,24268($r29)
ffffffff8091213c:	e5 00 3f fa 	ldi	$r17,229
ffffffff80912140:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912144:	3d d7 73 fa 	ldi	$r19,-10435($r19)
ffffffff80912148:	cc 00 00 c4 	bne	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff8091214c:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80912150:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912154:	e7 00 3f fa 	ldi	$r17,231
ffffffff80912158:	90 d7 73 fa 	ldi	$r19,-10352($r19)
ffffffff8091215c:	c7 00 20 c4 	bne	$r1,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80912160:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80912164:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912168:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff8091216c:	01 00 3f fa 	ldi	$r17,1
ffffffff80912170:	50 07 eb 43 	mov	$r11,$r16
ffffffff80912174:	00 00 ee ad 	stl	fp,0($r14)
ffffffff80912178:	08 00 2e ac 	stl	$r1,8($r14)
ffffffff8091217c:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff80912180:	10 00 2e a8 	stw	$r1,16($r14)
ffffffff80912184:	62 01 5b 07 	call	ra,($r27),ffffffff80912710 <free_pages>
ffffffff80912188:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091218c:	78 5e bd fb 	ldi	$r29,24184($r29)
ffffffff80912190:	01 00 3f fa 	ldi	$r17,1
ffffffff80912194:	50 07 ed 43 	mov	$r13,$r16
ffffffff80912198:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091219c:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809121a0:	5b 01 5b 07 	call	ra,($r27),ffffffff80912710 <free_pages>
ffffffff809121a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809121a8:	5c 5e bd fb 	ldi	$r29,24156($r29)
ffffffff809121ac:	01 00 3f fa 	ldi	$r17,1
ffffffff809121b0:	50 07 ec 43 	mov	$r12,$r16
ffffffff809121b4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809121b8:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809121bc:	54 01 5b 07 	call	ra,($r27),ffffffff80912710 <free_pages>
ffffffff809121c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809121c4:	40 5e bd fb 	ldi	$r29,24128($r29)
ffffffff809121c8:	05 00 1f fa 	ldi	$r16,5
ffffffff809121cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809121d0:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff809121d4:	36 01 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff809121d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809121dc:	28 5e bd fb 	ldi	$r29,24104($r29)
ffffffff809121e0:	4f 07 e0 43 	mov	$r0,fp
ffffffff809121e4:	49 01 3f fa 	ldi	$r17,329
ffffffff809121e8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809121ec:	9d d7 73 fa 	ldi	$r19,-10339($r19)
ffffffff809121f0:	a2 00 00 c0 	beq	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff809121f4:	08 00 20 88 	ldw	$r1,8($r0)
ffffffff809121f8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809121fc:	4a 01 3f fa 	ldi	$r17,330
ffffffff80912200:	a8 d7 73 fa 	ldi	$r19,-10328($r19)
ffffffff80912204:	01 47 20 48 	and	$r1,0x2,$r1
ffffffff80912208:	61 05 e1 43 	cmpult	$r31,$r1,$r1
ffffffff8091220c:	9b 00 20 c4 	bne	$r1,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80912210:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912214:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80912218:	00 00 ae 8d 	ldl	$r13,0($r14)
ffffffff8091221c:	01 00 1f fa 	ldi	$r16,1
ffffffff80912220:	08 00 8e 8d 	ldl	$r12,8($r14)
ffffffff80912224:	00 00 ce ad 	stl	$r14,0($r14)
ffffffff80912228:	08 00 ce ad 	stl	$r14,8($r14)
ffffffff8091222c:	20 01 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80912230:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912234:	d0 5d bd fb 	ldi	$r29,24016($r29)
ffffffff80912238:	53 01 3f fa 	ldi	$r17,339
ffffffff8091223c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912240:	3d d7 73 fa 	ldi	$r19,-10435($r19)
ffffffff80912244:	8d 00 00 c4 	bne	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80912248:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff8091224c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912250:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80912254:	02 00 3f fa 	ldi	$r17,2
ffffffff80912258:	48 00 0f fa 	ldi	$r16,72(fp)
ffffffff8091225c:	10 00 ee ab 	stw	$r31,16($r14)
ffffffff80912260:	20 01 6f f9 	ldi	$r11,288(fp)
ffffffff80912264:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff80912268:	29 01 5b 07 	call	ra,($r27),ffffffff80912710 <free_pages>
ffffffff8091226c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912270:	94 5d bd fb 	ldi	$r29,23956($r29)
ffffffff80912274:	01 00 3f fa 	ldi	$r17,1
ffffffff80912278:	50 07 eb 43 	mov	$r11,$r16
ffffffff8091227c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912280:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80912284:	22 01 5b 07 	call	ra,($r27),ffffffff80912710 <free_pages>
ffffffff80912288:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091228c:	78 5d bd fb 	ldi	$r29,23928($r29)
ffffffff80912290:	04 00 1f fa 	ldi	$r16,4
ffffffff80912294:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912298:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff8091229c:	04 01 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff809122a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809122a4:	60 5d bd fb 	ldi	$r29,23904($r29)
ffffffff809122a8:	5f 01 3f fa 	ldi	$r17,351
ffffffff809122ac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809122b0:	ba d7 73 fa 	ldi	$r19,-10310($r19)
ffffffff809122b4:	71 00 00 c4 	bne	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff809122b8:	50 00 2f 88 	ldw	$r1,80(fp)
ffffffff809122bc:	01 47 20 48 	and	$r1,0x2,$r1
ffffffff809122c0:	61 05 e1 43 	cmpult	$r31,$r1,$r1
ffffffff809122c4:	7c 00 20 c0 	beq	$r1,ffffffff809124b8 <best_fit_check+0x768>
ffffffff809122c8:	60 00 2f 88 	ldw	$r1,96(fp)
ffffffff809122cc:	01 45 20 48 	cmpeq	$r1,0x2,$r1
ffffffff809122d0:	79 00 20 c0 	beq	$r1,ffffffff809124b8 <best_fit_check+0x768>
ffffffff809122d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809122d8:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff809122dc:	01 00 1f fa 	ldi	$r16,1
ffffffff809122e0:	f3 00 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff809122e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809122e8:	1c 5d bd fb 	ldi	$r29,23836($r29)
ffffffff809122ec:	62 01 3f fa 	ldi	$r17,354
ffffffff809122f0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809122f4:	fd d7 73 fa 	ldi	$r19,-10243($r19)
ffffffff809122f8:	60 00 00 c0 	beq	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff809122fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912300:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80912304:	02 00 1f fa 	ldi	$r16,2
ffffffff80912308:	50 00 1e ac 	stl	$r0,80(sp)
ffffffff8091230c:	e8 00 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80912310:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912314:	f0 5c bd fb 	ldi	$r29,23792($r29)
ffffffff80912318:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff8091231c:	63 01 3f fa 	ldi	$r17,355
ffffffff80912320:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912324:	1b d8 73 fa 	ldi	$r19,-10213($r19)
ffffffff80912328:	54 00 00 c0 	beq	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff8091232c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912330:	0b 05 61 41 	cmpeq	$r11,$r1,$r11
ffffffff80912334:	64 01 3f fa 	ldi	$r17,356
ffffffff80912338:	32 d8 73 fa 	ldi	$r19,-10190($r19)
ffffffff8091233c:	4f 00 60 c1 	beq	$r11,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80912340:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912344:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80912348:	05 00 3f fa 	ldi	$r17,5
ffffffff8091234c:	50 07 ef 43 	mov	fp,$r16
ffffffff80912350:	ef 00 5b 07 	call	ra,($r27),ffffffff80912710 <free_pages>
ffffffff80912354:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912358:	ac 5c bd fb 	ldi	$r29,23724($r29)
ffffffff8091235c:	05 00 1f fa 	ldi	$r16,5
ffffffff80912360:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912364:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80912368:	d1 00 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff8091236c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912370:	94 5c bd fb 	ldi	$r29,23700($r29)
ffffffff80912374:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80912378:	6c 01 3f fa 	ldi	$r17,364
ffffffff8091237c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912380:	3f d8 73 fa 	ldi	$r19,-10177($r19)
ffffffff80912384:	3d 00 00 c0 	beq	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80912388:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091238c:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80912390:	01 00 1f fa 	ldi	$r16,1
ffffffff80912394:	c6 00 5b 07 	call	ra,($r27),ffffffff809126b0 <alloc_pages>
ffffffff80912398:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091239c:	68 5c bd fb 	ldi	$r29,23656($r29)
ffffffff809123a0:	6d 01 3f fa 	ldi	$r17,365
ffffffff809123a4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809123a8:	3d d7 73 fa 	ldi	$r19,-10435($r19)
ffffffff809123ac:	33 00 00 c4 	bne	$r0,ffffffff8091247c <best_fit_check+0x72c>
ffffffff809123b0:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff809123b4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809123b8:	73 01 3f fa 	ldi	$r17,371
ffffffff809123bc:	90 d7 73 fa 	ldi	$r19,-10352($r19)
ffffffff809123c0:	2e 00 20 c4 	bne	$r1,ffffffff8091247c <best_fit_check+0x72c>
ffffffff809123c4:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff809123c8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809123cc:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff809123d0:	05 00 3f fa 	ldi	$r17,5
ffffffff809123d4:	50 07 eb 43 	mov	$r11,$r16
ffffffff809123d8:	00 00 ae ad 	stl	$r13,0($r14)
ffffffff809123dc:	08 00 8e ad 	stl	$r12,8($r14)
ffffffff809123e0:	10 00 2e a8 	stw	$r1,16($r14)
ffffffff809123e4:	ca 00 5b 07 	call	ra,($r27),ffffffff80912710 <free_pages>
ffffffff809123e8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809123ec:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff809123f0:	18 5c bd fb 	ldi	$r29,23576($r29)
ffffffff809123f4:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff809123f8:	07 00 60 c4 	bne	$r3,ffffffff80912418 <best_fit_check+0x6c8>
ffffffff809123fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912400:	f8 ff 81 88 	ldw	$r4,-8($r1)
ffffffff80912404:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80912408:	2a 20 40 49 	subw	$r10,0x1,$r10
ffffffff8091240c:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff80912410:	29 00 24 41 	subw	$r9,$r4,$r9
ffffffff80912414:	fa ff 7f c0 	beq	$r3,ffffffff80912400 <best_fit_check+0x6b0>
ffffffff80912418:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091241c:	7f 01 3f fa 	ldi	$r17,383
ffffffff80912420:	5d d8 73 fa 	ldi	$r19,-10147($r19)
ffffffff80912424:	15 00 40 c5 	bne	$r10,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80912428:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091242c:	80 01 3f fa 	ldi	$r17,384
ffffffff80912430:	68 d8 73 fa 	ldi	$r19,-10136($r19)
ffffffff80912434:	11 00 20 c5 	bne	$r9,ffffffff8091247c <best_fit_check+0x72c>
ffffffff80912438:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091243c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912440:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912444:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912448:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff8091244c:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80912450:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80912454:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80912458:	60 00 de fb 	ldi	sp,96(sp)
ffffffff8091245c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912460:	4b 07 ff 43 	clr	$r11
ffffffff80912464:	49 07 ff 43 	clr	$r9
ffffffff80912468:	4a 07 ff 43 	clr	$r10
ffffffff8091246c:	5a fe ff 13 	br	ffffffff80911dd8 <best_fit_check+0x88>
ffffffff80912470:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912474:	40 01 3f fa 	ldi	$r17,320
ffffffff80912478:	1c d6 73 fa 	ldi	$r19,-10724($r19)
ffffffff8091247c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912480:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80912484:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912488:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091248c:	f6 d2 52 fa 	ldi	$r18,-11530($r18)
ffffffff80912490:	d1 d5 10 fa 	ldi	$r16,-10799($r16)
ffffffff80912494:	66 f7 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80912498:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091249c:	3d 01 3f fa 	ldi	$r17,317
ffffffff809124a0:	fc d5 73 fa 	ldi	$r19,-10756($r19)
ffffffff809124a4:	f5 ff ff 13 	br	ffffffff8091247c <best_fit_check+0x72c>
ffffffff809124a8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809124ac:	c6 00 3f fa 	ldi	$r17,198
ffffffff809124b0:	aa d6 73 fa 	ldi	$r19,-10582($r19)
ffffffff809124b4:	f1 ff ff 13 	br	ffffffff8091247c <best_fit_check+0x72c>
ffffffff809124b8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809124bc:	60 01 3f fa 	ldi	$r17,352
ffffffff809124c0:	d1 d7 73 fa 	ldi	$r19,-10287($r19)
ffffffff809124c4:	ed ff ff 13 	br	ffffffff8091247c <best_fit_check+0x72c>
ffffffff809124c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809124cc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809124d0 <default_alloc_pages>:
ffffffff809124d0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809124d4:	30 5b bd fb 	ldi	$r29,23344($r29)
ffffffff809124d8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809124dc:	00 00 5e af 	stl	ra,0(sp)
ffffffff809124e0:	54 00 00 c2 	beq	$r16,ffffffff80912634 <default_alloc_pages+0x164>
ffffffff809124e4:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff809124e8:	d0 81 63 8c 	ldl	$r3,-32304($r3)
ffffffff809124ec:	40 07 ff 43 	clr	$r0
ffffffff809124f0:	10 00 83 88 	ldw	$r4,16($r3)
ffffffff809124f4:	42 07 e3 43 	mov	$r3,$r2
ffffffff809124f8:	21 ed 81 48 	zapnot	$r4,0xf,$r1
ffffffff809124fc:	61 05 30 40 	cmpult	$r1,$r16,$r1
ffffffff80912500:	07 00 20 c0 	beq	$r1,ffffffff80912520 <default_alloc_pages+0x50>
ffffffff80912504:	12 00 e0 13 	br	ffffffff80912550 <default_alloc_pages+0x80>
ffffffff80912508:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091250c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912510:	f8 ff 22 88 	ldw	$r1,-8($r2)
ffffffff80912514:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80912518:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff8091251c:	10 00 20 c4 	bne	$r1,ffffffff80912560 <default_alloc_pages+0x90>
ffffffff80912520:	08 00 42 8c 	ldl	$r2,8($r2)
ffffffff80912524:	01 05 43 40 	cmpeq	$r2,$r3,$r1
ffffffff80912528:	f9 ff 3f c0 	beq	$r1,ffffffff80912510 <default_alloc_pages+0x40>
ffffffff8091252c:	04 00 e0 13 	br	ffffffff80912540 <default_alloc_pages+0x70>
ffffffff80912530:	f8 ff 22 88 	ldw	$r1,-8($r2)
ffffffff80912534:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80912538:	81 05 01 42 	cmpule	$r16,$r1,$r1
ffffffff8091253c:	38 00 20 c4 	bne	$r1,ffffffff80912620 <default_alloc_pages+0x150>
ffffffff80912540:	08 00 42 8c 	ldl	$r2,8($r2)
ffffffff80912544:	01 05 43 40 	cmpeq	$r2,$r3,$r1
ffffffff80912548:	f9 ff 3f c0 	beq	$r1,ffffffff80912530 <default_alloc_pages+0x60>
ffffffff8091254c:	40 07 ff 43 	clr	$r0
ffffffff80912550:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912554:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912558:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091255c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912560:	e0 ff 02 f8 	ldi	$r0,-32($r2)
ffffffff80912564:	f6 ff 1f c0 	beq	$r0,ffffffff80912540 <default_alloc_pages+0x70>
ffffffff80912568:	18 00 a0 88 	ldw	$r5,24($r0)
ffffffff8091256c:	20 00 40 8c 	ldl	$r2,32($r0)
ffffffff80912570:	07 00 f0 43 	addw	$r31,$r16,$r7
ffffffff80912574:	28 00 c0 8c 	ldl	$r6,40($r0)
ffffffff80912578:	21 ed a1 48 	zapnot	$r5,0xf,$r1
ffffffff8091257c:	08 00 c2 ac 	stl	$r6,8($r2)
ffffffff80912580:	61 05 01 42 	cmpult	$r16,$r1,$r1
ffffffff80912584:	00 00 46 ac 	stl	$r2,0($r6)
ffffffff80912588:	15 00 20 c0 	beq	$r1,ffffffff809125e0 <default_alloc_pages+0x110>
ffffffff8091258c:	81 01 00 4a 	s8addl	$r16,0,$r1
ffffffff80912590:	25 00 a7 40 	subw	$r5,$r7,$r5
ffffffff80912594:	01 01 30 40 	addl	$r1,$r16,$r1
ffffffff80912598:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff8091259c:	01 01 01 40 	addl	$r0,$r1,$r1
ffffffff809125a0:	18 00 a1 a8 	stw	$r5,24($r1)
ffffffff809125a4:	08 00 c1 f8 	ldi	$r6,8($r1)
ffffffff809125a8:	00 00 86 20 	lldw	$r4,0($r6)
ffffffff809125ac:	01 00 bf f8 	ldi	$r5,1
ffffffff809125b0:	20 10 bf 18 	wr_f	$r5
ffffffff809125b4:	44 47 80 48 	or	$r4,0x2,$r4
ffffffff809125b8:	00 80 86 20 	lstw	$r4,0($r6)
ffffffff809125bc:	00 10 bf 18 	rd_f	$r5
ffffffff809125c0:	27 00 a0 c0 	beq	$r5,ffffffff80912660 <default_alloc_pages+0x190>
ffffffff809125c4:	08 00 a2 8c 	ldl	$r5,8($r2)
ffffffff809125c8:	20 00 c1 f8 	ldi	$r6,32($r1)
ffffffff809125cc:	10 00 83 88 	ldw	$r4,16($r3)
ffffffff809125d0:	00 00 c5 ac 	stl	$r6,0($r5)
ffffffff809125d4:	08 00 c2 ac 	stl	$r6,8($r2)
ffffffff809125d8:	28 00 a1 ac 	stl	$r5,40($r1)
ffffffff809125dc:	20 00 41 ac 	stl	$r2,32($r1)
ffffffff809125e0:	24 00 87 40 	subw	$r4,$r7,$r4
ffffffff809125e4:	10 00 83 a8 	stw	$r4,16($r3)
ffffffff809125e8:	08 00 60 f8 	ldi	$r3,8($r0)
ffffffff809125ec:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff809125f0:	01 00 5f f8 	ldi	$r2,1
ffffffff809125f4:	20 10 5f 18 	wr_f	$r2
ffffffff809125f8:	21 47 20 48 	bic	$r1,0x2,$r1
ffffffff809125fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912600:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff80912604:	00 10 5f 18 	rd_f	$r2
ffffffff80912608:	16 00 40 c0 	beq	$r2,ffffffff80912664 <default_alloc_pages+0x194>
ffffffff8091260c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912610:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912614:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912618:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091261c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912620:	e0 ff 02 f8 	ldi	$r0,-32($r2)
ffffffff80912624:	d0 ff 1f c4 	bne	$r0,ffffffff80912568 <default_alloc_pages+0x98>
ffffffff80912628:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091262c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912630:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912634:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912638:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff8091263c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912640:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912644:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912648:	60 00 3f fa 	ldi	$r17,96
ffffffff8091264c:	cb d5 73 fa 	ldi	$r19,-10805($r19)
ffffffff80912650:	f6 d2 52 fa 	ldi	$r18,-11530($r18)
ffffffff80912654:	d1 d5 10 fa 	ldi	$r16,-10799($r16)
ffffffff80912658:	f5 f6 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff8091265c:	5f 07 ff 43 	nop	
ffffffff80912660:	d1 ff ff 13 	br	ffffffff809125a8 <default_alloc_pages+0xd8>
ffffffff80912664:	e1 ff ff 13 	br	ffffffff809125ec <default_alloc_pages+0x11c>
ffffffff80912668:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091266c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912670 <pa2page.part.4>:
ffffffff80912670:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912674:	90 59 bd fb 	ldi	$r29,22928($r29)
ffffffff80912678:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091267c:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80912680:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80912684:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912688:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091268c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912690:	68 00 3f fa 	ldi	$r17,104
ffffffff80912694:	c8 d8 52 fa 	ldi	$r18,-10040($r18)
ffffffff80912698:	e7 d8 10 fa 	ldi	$r16,-10009($r16)
ffffffff8091269c:	e4 f6 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff809126a0:	5f 07 ff 43 	nop	
	...

ffffffff809126b0 <alloc_pages>:
ffffffff809126b0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809126b4:	50 59 bd fb 	ldi	$r29,22864($r29)
ffffffff809126b8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809126bc:	42 07 f0 43 	mov	$r16,$r2
ffffffff809126c0:	07 00 1f fa 	ldi	$r16,7
ffffffff809126c4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809126c8:	35 00 00 02 	sys_call	0x35
ffffffff809126cc:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809126d0:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff809126d4:	50 07 e2 43 	mov	$r2,$r16
ffffffff809126d8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809126dc:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff809126e0:	00 00 5b 07 	call	ra,($r27),ffffffff809126e4 <alloc_pages+0x34>
ffffffff809126e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809126e8:	1c 59 bd fb 	ldi	$r29,22812($r29)
ffffffff809126ec:	42 07 e0 43 	mov	$r0,$r2
ffffffff809126f0:	50 07 ff 43 	clr	$r16
ffffffff809126f4:	35 00 00 02 	sys_call	0x35
ffffffff809126f8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809126fc:	40 07 e2 43 	mov	$r2,$r0
ffffffff80912700:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912704:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912708:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091270c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912710 <free_pages>:
ffffffff80912710:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912714:	f0 58 bd fb 	ldi	$r29,22768($r29)
ffffffff80912718:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091271c:	42 07 f0 43 	mov	$r16,$r2
ffffffff80912720:	07 00 1f fa 	ldi	$r16,7
ffffffff80912724:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912728:	35 00 00 02 	sys_call	0x35
ffffffff8091272c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912730:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80912734:	50 07 e2 43 	mov	$r2,$r16
ffffffff80912738:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091273c:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80912740:	00 00 5b 07 	call	ra,($r27),ffffffff80912744 <free_pages+0x34>
ffffffff80912744:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912748:	bc 58 bd fb 	ldi	$r29,22716($r29)
ffffffff8091274c:	50 07 ff 43 	clr	$r16
ffffffff80912750:	35 00 00 02 	sys_call	0x35
ffffffff80912754:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912758:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091275c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80912760 <nr_free_pages>:
ffffffff80912760:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912764:	a0 58 bd fb 	ldi	$r29,22688($r29)
ffffffff80912768:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091276c:	07 00 1f fa 	ldi	$r16,7
ffffffff80912770:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912774:	35 00 00 02 	sys_call	0x35
ffffffff80912778:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091277c:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80912780:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912784:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80912788:	00 00 5b 07 	call	ra,($r27),ffffffff8091278c <nr_free_pages+0x2c>
ffffffff8091278c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912790:	74 58 bd fb 	ldi	$r29,22644($r29)
ffffffff80912794:	42 07 e0 43 	mov	$r0,$r2
ffffffff80912798:	50 07 ff 43 	clr	$r16
ffffffff8091279c:	35 00 00 02 	sys_call	0x35
ffffffff809127a0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809127a4:	40 07 e2 43 	mov	$r2,$r0
ffffffff809127a8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809127ac:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809127b0 <get_pte>:
ffffffff809127b0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809127b4:	50 58 bd fb 	ldi	$r29,22608($r29)
ffffffff809127b8:	b0 ff de fb 	ldi	sp,-80(sp)
ffffffff809127bc:	28 00 be ad 	stl	$r13,40(sp)
ffffffff809127c0:	0d 69 21 4a 	sll	$r17,0xb,$r13
ffffffff809127c4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809127c8:	4a 07 f1 43 	mov	$r17,$r10
ffffffff809127cc:	2d c9 a6 49 	srl	$r13,0x36,$r13
ffffffff809127d0:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809127d4:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809127d8:	4b 07 f2 43 	mov	$r18,$r11
ffffffff809127dc:	8d 01 a0 49 	s8addl	$r13,0,$r13
ffffffff809127e0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809127e4:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809127e8:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff809127ec:	0d 01 0d 42 	addl	$r16,$r13,$r13
ffffffff809127f0:	30 00 de ad 	stl	$r14,48(sp)
ffffffff809127f4:	38 00 fe ad 	stl	fp,56(sp)
ffffffff809127f8:	00 00 6d 8e 	ldl	$r19,0($r13)
ffffffff809127fc:	38 00 60 de 	blbs	$r19,ffffffff809128e0 <get_pte+0x130>
ffffffff80912800:	db 00 40 c2 	beq	$r18,ffffffff80912b70 <get_pte+0x3c0>
ffffffff80912804:	07 00 1f fa 	ldi	$r16,7
ffffffff80912808:	35 00 00 02 	sys_call	0x35
ffffffff8091280c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912810:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80912814:	01 00 1f fa 	ldi	$r16,1
ffffffff80912818:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091281c:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80912820:	00 00 5b 07 	call	ra,($r27),ffffffff80912824 <get_pte+0x74>
ffffffff80912824:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912828:	dc 57 bd fb 	ldi	$r29,22492($r29)
ffffffff8091282c:	49 07 e0 43 	mov	$r0,$r9
ffffffff80912830:	50 07 ff 43 	clr	$r16
ffffffff80912834:	35 00 00 02 	sys_call	0x35
ffffffff80912838:	cd 00 20 c1 	beq	$r9,ffffffff80912b70 <get_pte+0x3c0>
ffffffff8091283c:	00 00 fd fd 	ldih	fp,0($r29)
ffffffff80912840:	f0 81 ef 8d 	ldl	fp,-32272(fp)
ffffffff80912844:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff80912848:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff8091284c:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80912850:	c0 d8 c2 8d 	ldl	$r14,-10048($r2)
ffffffff80912854:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff80912858:	d6 00 3f fa 	ldi	$r17,214
ffffffff8091285c:	00 00 0f 8e 	ldl	$r16,0(fp)
ffffffff80912860:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff80912864:	00 00 29 a8 	stw	$r1,0($r9)
ffffffff80912868:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff8091286c:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80912870:	30 01 30 41 	subl	$r9,$r16,$r16
ffffffff80912874:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff80912878:	10 03 0e 42 	mull	$r16,$r14,$r16
ffffffff8091287c:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80912880:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff80912884:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80912888:	53 07 f0 43 	mov	$r16,$r19
ffffffff8091288c:	bb 00 20 c4 	bne	$r1,ffffffff80912b7c <get_pte+0x3cc>
ffffffff80912890:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912894:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff80912898:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091289c:	38 81 7b 8f 	ldl	$r27,-32456($r27)
ffffffff809128a0:	00 20 5f fa 	ldi	$r18,8192
ffffffff809128a4:	51 07 ff 43 	clr	$r17
ffffffff809128a8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809128ac:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff809128b0:	1f 07 5b 07 	call	ra,($r27),ffffffff80914530 <memset>
ffffffff809128b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809128b8:	00 00 6f 8e 	ldl	$r19,0(fp)
ffffffff809128bc:	01 00 3f fc 	ldih	$r1,1
ffffffff809128c0:	4c 57 bd fb 	ldi	$r29,22348($r29)
ffffffff809128c4:	01 88 21 f8 	ldi	$r1,-30719($r1)
ffffffff809128c8:	33 01 33 41 	subl	$r9,$r19,$r19
ffffffff809128cc:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff809128d0:	13 03 6e 42 	mull	$r19,$r14,$r19
ffffffff809128d4:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff809128d8:	53 07 61 42 	or	$r19,$r1,$r19
ffffffff809128dc:	00 00 6d ae 	stl	$r19,0($r13)
ffffffff809128e0:	00 f0 3f fc 	ldih	$r1,-4096
ffffffff809128e4:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff809128e8:	13 07 33 40 	and	$r1,$r19,$r19
ffffffff809128ec:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff809128f0:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff809128f4:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff809128f8:	9f 00 20 c4 	bne	$r1,ffffffff80912b78 <get_pte+0x3c8>
ffffffff809128fc:	00 00 bd fd 	ldih	$r13,0($r29)
ffffffff80912900:	b0 80 ad 8d 	ldl	$r13,-32592($r13)
ffffffff80912904:	0e a9 42 49 	sll	$r10,0x15,$r14
ffffffff80912908:	2e c9 c6 49 	srl	$r14,0x36,$r14
ffffffff8091290c:	8e 01 c0 49 	s8addl	$r14,0,$r14
ffffffff80912910:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80912914:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80912918:	0e 01 6e 42 	addl	$r19,$r14,$r14
ffffffff8091291c:	00 00 6e 8e 	ldl	$r19,0($r14)
ffffffff80912920:	38 00 60 de 	blbs	$r19,ffffffff80912a04 <get_pte+0x254>
ffffffff80912924:	92 00 60 c1 	beq	$r11,ffffffff80912b70 <get_pte+0x3c0>
ffffffff80912928:	07 00 1f fa 	ldi	$r16,7
ffffffff8091292c:	35 00 00 02 	sys_call	0x35
ffffffff80912930:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912934:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80912938:	01 00 1f fa 	ldi	$r16,1
ffffffff8091293c:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912940:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80912944:	00 00 5b 07 	call	ra,($r27),ffffffff80912948 <get_pte+0x198>
ffffffff80912948:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091294c:	b8 56 bd fb 	ldi	$r29,22200($r29)
ffffffff80912950:	49 07 e0 43 	mov	$r0,$r9
ffffffff80912954:	50 07 ff 43 	clr	$r16
ffffffff80912958:	35 00 00 02 	sys_call	0x35
ffffffff8091295c:	84 00 20 c1 	beq	$r9,ffffffff80912b70 <get_pte+0x3c0>
ffffffff80912960:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80912964:	f0 81 63 8c 	ldl	$r3,-32272($r3)
ffffffff80912968:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff8091296c:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80912970:	e1 00 3f fa 	ldi	$r17,225
ffffffff80912974:	c0 d8 e2 8d 	ldl	fp,-10048($r2)
ffffffff80912978:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff8091297c:	00 00 03 8e 	ldl	$r16,0($r3)
ffffffff80912980:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff80912984:	00 00 29 a8 	stw	$r1,0($r9)
ffffffff80912988:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff8091298c:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80912990:	30 01 30 41 	subl	$r9,$r16,$r16
ffffffff80912994:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff80912998:	10 03 0f 42 	mull	$r16,fp,$r16
ffffffff8091299c:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff809129a0:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff809129a4:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff809129a8:	53 07 f0 43 	mov	$r16,$r19
ffffffff809129ac:	73 00 20 c4 	bne	$r1,ffffffff80912b7c <get_pte+0x3cc>
ffffffff809129b0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff809129b4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809129b8:	38 81 7b 8f 	ldl	$r27,-32456($r27)
ffffffff809129bc:	00 20 5f fa 	ldi	$r18,8192
ffffffff809129c0:	51 07 ff 43 	clr	$r17
ffffffff809129c4:	40 00 7e ac 	stl	$r3,64(sp)
ffffffff809129c8:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff809129cc:	d8 06 5b 07 	call	ra,($r27),ffffffff80914530 <memset>
ffffffff809129d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809129d4:	40 00 7e 8c 	ldl	$r3,64(sp)
ffffffff809129d8:	01 00 3f fc 	ldih	$r1,1
ffffffff809129dc:	30 56 bd fb 	ldi	$r29,22064($r29)
ffffffff809129e0:	01 88 21 f8 	ldi	$r1,-30719($r1)
ffffffff809129e4:	00 00 63 8e 	ldl	$r19,0($r3)
ffffffff809129e8:	33 01 33 41 	subl	$r9,$r19,$r19
ffffffff809129ec:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff809129f0:	13 03 6f 42 	mull	$r19,fp,$r19
ffffffff809129f4:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff809129f8:	53 07 61 42 	or	$r19,$r1,$r19
ffffffff809129fc:	00 00 6e ae 	stl	$r19,0($r14)
ffffffff80912a00:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff80912a04:	00 f0 3f fc 	ldih	$r1,-4096
ffffffff80912a08:	e4 00 3f fa 	ldi	$r17,228
ffffffff80912a0c:	13 07 33 40 	and	$r1,$r19,$r19
ffffffff80912a10:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80912a14:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80912a18:	61 05 22 40 	cmpult	$r1,$r2,$r1
ffffffff80912a1c:	57 00 20 c0 	beq	$r1,ffffffff80912b7c <get_pte+0x3cc>
ffffffff80912a20:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80912a24:	0e e9 43 49 	sll	$r10,0x1f,$r14
ffffffff80912a28:	2e c9 c6 49 	srl	$r14,0x36,$r14
ffffffff80912a2c:	8e 01 c0 49 	s8addl	$r14,0,$r14
ffffffff80912a30:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80912a34:	0e 01 6e 42 	addl	$r19,$r14,$r14
ffffffff80912a38:	00 00 0e 8c 	ldl	$r0,0($r14)
ffffffff80912a3c:	33 00 00 dc 	blbs	$r0,ffffffff80912b0c <get_pte+0x35c>
ffffffff80912a40:	4b 00 60 c1 	beq	$r11,ffffffff80912b70 <get_pte+0x3c0>
ffffffff80912a44:	07 00 1f fa 	ldi	$r16,7
ffffffff80912a48:	35 00 00 02 	sys_call	0x35
ffffffff80912a4c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912a50:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80912a54:	01 00 1f fa 	ldi	$r16,1
ffffffff80912a58:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912a5c:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80912a60:	00 00 5b 07 	call	ra,($r27),ffffffff80912a64 <get_pte+0x2b4>
ffffffff80912a64:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a68:	9c 55 bd fb 	ldi	$r29,21916($r29)
ffffffff80912a6c:	49 07 e0 43 	mov	$r0,$r9
ffffffff80912a70:	50 07 ff 43 	clr	$r16
ffffffff80912a74:	35 00 00 02 	sys_call	0x35
ffffffff80912a78:	3d 00 20 c1 	beq	$r9,ffffffff80912b70 <get_pte+0x3c0>
ffffffff80912a7c:	00 00 fd fd 	ldih	fp,0($r29)
ffffffff80912a80:	f0 81 ef 8d 	ldl	fp,-32272(fp)
ffffffff80912a84:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80912a88:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff80912a8c:	ec 00 3f fa 	ldi	$r17,236
ffffffff80912a90:	c0 d8 61 8d 	ldl	$r11,-10048($r1)
ffffffff80912a94:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80912a98:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80912a9c:	00 00 0f 8e 	ldl	$r16,0(fp)
ffffffff80912aa0:	30 01 30 41 	subl	$r9,$r16,$r16
ffffffff80912aa4:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff80912aa8:	10 03 0b 42 	mull	$r16,$r11,$r16
ffffffff80912aac:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80912ab0:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff80912ab4:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80912ab8:	53 07 f0 43 	mov	$r16,$r19
ffffffff80912abc:	2f 00 20 c4 	bne	$r1,ffffffff80912b7c <get_pte+0x3cc>
ffffffff80912ac0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80912ac4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912ac8:	38 81 7b 8f 	ldl	$r27,-32456($r27)
ffffffff80912acc:	00 20 5f fa 	ldi	$r18,8192
ffffffff80912ad0:	51 07 ff 43 	clr	$r17
ffffffff80912ad4:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80912ad8:	95 06 5b 07 	call	ra,($r27),ffffffff80914530 <memset>
ffffffff80912adc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912ae0:	00 00 6f 8e 	ldl	$r19,0(fp)
ffffffff80912ae4:	01 00 1f fc 	ldih	$r0,1
ffffffff80912ae8:	24 55 bd fb 	ldi	$r29,21796($r29)
ffffffff80912aec:	01 88 00 f8 	ldi	$r0,-30719($r0)
ffffffff80912af0:	33 01 33 41 	subl	$r9,$r19,$r19
ffffffff80912af4:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80912af8:	13 03 6b 42 	mull	$r19,$r11,$r19
ffffffff80912afc:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff80912b00:	40 07 60 42 	or	$r19,$r0,$r0
ffffffff80912b04:	00 00 0e ac 	stl	$r0,0($r14)
ffffffff80912b08:	30 82 4c 8c 	ldl	$r2,-32208($r12)
ffffffff80912b0c:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80912b10:	ef 00 3f fa 	ldi	$r17,239
ffffffff80912b14:	13 07 60 42 	and	$r19,$r0,$r19
ffffffff80912b18:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80912b1c:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80912b20:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80912b24:	15 00 40 c0 	beq	$r2,ffffffff80912b7c <get_pte+0x3cc>
ffffffff80912b28:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80912b2c:	00 29 45 49 	sll	$r10,0x29,$r0
ffffffff80912b30:	20 c9 06 48 	srl	$r0,0x36,$r0
ffffffff80912b34:	80 01 00 48 	s8addl	$r0,0,$r0
ffffffff80912b38:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80912b3c:	00 01 60 42 	addl	$r19,$r0,$r0
ffffffff80912b40:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912b44:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912b48:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912b4c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912b50:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912b54:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80912b58:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80912b5c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80912b60:	50 00 de fb 	ldi	sp,80(sp)
ffffffff80912b64:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912b68:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912b6c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912b70:	40 07 ff 43 	clr	$r0
ffffffff80912b74:	f2 ff ff 13 	br	ffffffff80912b40 <get_pte+0x390>
ffffffff80912b78:	d9 00 3f fa 	ldi	$r17,217
ffffffff80912b7c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912b80:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80912b84:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912b88:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912b8c:	f5 d8 52 fa 	ldi	$r18,-9995($r18)
ffffffff80912b90:	18 d9 10 fa 	ldi	$r16,-9960($r16)
ffffffff80912b94:	a6 f5 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80912b98:	5f 07 ff 43 	nop	
ffffffff80912b9c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912ba0 <get_page>:
ffffffff80912ba0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912ba4:	60 54 bd fb 	ldi	$r29,21600($r29)
ffffffff80912ba8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80912bac:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912bb0:	49 07 f2 43 	mov	$r18,$r9
ffffffff80912bb4:	52 07 ff 43 	clr	$r18
ffffffff80912bb8:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912bbc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912bc0:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff80912bc4:	00 00 5b 07 	call	ra,($r27),ffffffff80912bc8 <get_page+0x28>
ffffffff80912bc8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912bcc:	38 54 bd fb 	ldi	$r29,21560($r29)
ffffffff80912bd0:	01 00 20 c1 	beq	$r9,ffffffff80912bd8 <get_page+0x38>
ffffffff80912bd4:	00 00 09 ac 	stl	$r0,0($r9)
ffffffff80912bd8:	15 00 00 c0 	beq	$r0,ffffffff80912c30 <get_page+0x90>
ffffffff80912bdc:	00 00 00 8c 	ldl	$r0,0($r0)
ffffffff80912be0:	13 00 00 d8 	blbc	$r0,ffffffff80912c30 <get_page+0x90>
ffffffff80912be4:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912be8:	20 89 03 48 	srl	$r0,0x1c,$r0
ffffffff80912bec:	30 82 21 8c 	ldl	$r1,-32208($r1)
ffffffff80912bf0:	61 05 01 40 	cmpult	$r0,$r1,$r1
ffffffff80912bf4:	13 00 20 c0 	beq	$r1,ffffffff80912c44 <get_page+0xa4>
ffffffff80912bf8:	81 01 00 48 	s8addl	$r0,0,$r1
ffffffff80912bfc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912c00:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912c04:	00 01 20 40 	addl	$r1,$r0,$r0
ffffffff80912c08:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912c0c:	f0 81 21 8c 	ldl	$r1,-32272($r1)
ffffffff80912c10:	80 01 00 48 	s8addl	$r0,0,$r0
ffffffff80912c14:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912c18:	00 01 20 40 	addl	$r1,$r0,$r0
ffffffff80912c1c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912c20:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912c24:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912c28:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912c2c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912c30:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912c34:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912c38:	40 07 ff 43 	clr	$r0
ffffffff80912c3c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912c40:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912c44:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912c48:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80912c4c:	88 fe 5b 07 	call	ra,($r27),ffffffff80912670 <pa2page.part.4>
ffffffff80912c50:	5f 07 ff 43 	nop	
ffffffff80912c54:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912c58:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912c5c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912c60 <page_remove_ptx>:
ffffffff80912c60:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912c64:	a0 53 bd fb 	ldi	$r29,21408($r29)
ffffffff80912c68:	00 00 30 8c 	ldl	$r1,0($r16)
ffffffff80912c6c:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80912c70:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80912c74:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912c78:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80912c7c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80912c80:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80912c84:	30 82 4a 8c 	ldl	$r2,-32208($r10)
ffffffff80912c88:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912c8c:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80912c90:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912c94:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80912c98:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80912c9c:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80912ca0:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80912ca4:	47 00 20 c4 	bne	$r1,ffffffff80912dc4 <page_remove_ptx+0x164>
ffffffff80912ca8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912cac:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff80912cb0:	09 29 25 4a 	sll	$r17,0x29,$r9
ffffffff80912cb4:	29 c9 26 49 	srl	$r9,0x36,$r9
ffffffff80912cb8:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff80912cbc:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912cc0:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80912cc4:	09 01 69 42 	addl	$r19,$r9,$r9
ffffffff80912cc8:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff80912ccc:	08 00 20 dc 	blbs	$r1,ffffffff80912cf0 <page_remove_ptx+0x90>
ffffffff80912cd0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912cd4:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912cd8:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912cdc:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912ce0:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912ce4:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80912ce8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912cec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912cf0:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff80912cf4:	82 05 41 40 	cmpule	$r2,$r1,$r2
ffffffff80912cf8:	3a 00 40 c4 	bne	$r2,ffffffff80912de4 <page_remove_ptx+0x184>
ffffffff80912cfc:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80912d00:	f0 81 8c 8d 	ldl	$r12,-32272($r12)
ffffffff80912d04:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80912d08:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80912d0c:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80912d10:	00 00 4c 8c 	ldl	$r2,0($r12)
ffffffff80912d14:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff80912d18:	00 00 22 88 	ldw	$r1,0($r2)
ffffffff80912d1c:	23 20 20 48 	subw	$r1,0x1,$r3
ffffffff80912d20:	00 00 62 a8 	stw	$r3,0($r2)
ffffffff80912d24:	0d 00 60 c4 	bne	$r3,ffffffff80912d5c <page_remove_ptx+0xfc>
ffffffff80912d28:	07 00 1f fa 	ldi	$r16,7
ffffffff80912d2c:	35 00 00 02 	sys_call	0x35
ffffffff80912d30:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912d34:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80912d38:	01 00 3f fa 	ldi	$r17,1
ffffffff80912d3c:	50 07 e2 43 	mov	$r2,$r16
ffffffff80912d40:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912d44:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80912d48:	00 00 5b 07 	call	ra,($r27),ffffffff80912d4c <page_remove_ptx+0xec>
ffffffff80912d4c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912d50:	b4 52 bd fb 	ldi	$r29,21172($r29)
ffffffff80912d54:	50 07 ff 43 	clr	$r16
ffffffff80912d58:	35 00 00 02 	sys_call	0x35
ffffffff80912d5c:	00 00 e9 af 	stl	$r31,0($r9)
ffffffff80912d60:	fe ff 1f fa 	ldi	$r16,-2
ffffffff80912d64:	33 00 00 02 	sys_call	0x33
ffffffff80912d68:	00 00 2b 8c 	ldl	$r1,0($r11)
ffffffff80912d6c:	20 00 20 d8 	blbc	$r1,ffffffff80912df0 <page_remove_ptx+0x190>
ffffffff80912d70:	30 82 4a 8c 	ldl	$r2,-32208($r10)
ffffffff80912d74:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff80912d78:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80912d7c:	19 00 40 c0 	beq	$r2,ffffffff80912de4 <page_remove_ptx+0x184>
ffffffff80912d80:	00 00 6c 8c 	ldl	$r3,0($r12)
ffffffff80912d84:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80912d88:	fe ff 1f fa 	ldi	$r16,-2
ffffffff80912d8c:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80912d90:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80912d94:	01 01 61 40 	addl	$r3,$r1,$r1
ffffffff80912d98:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff80912d9c:	22 20 40 48 	subw	$r2,0x1,$r2
ffffffff80912da0:	00 00 41 a8 	stw	$r2,0($r1)
ffffffff80912da4:	33 00 00 02 	sys_call	0x33
ffffffff80912da8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912dac:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912db0:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912db4:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912db8:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912dbc:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80912dc0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912dc4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912dc8:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80912dcc:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912dd0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912dd4:	28 01 3f fa 	ldi	$r17,296
ffffffff80912dd8:	f5 d8 52 fa 	ldi	$r18,-9995($r18)
ffffffff80912ddc:	18 d9 10 fa 	ldi	$r16,-9960($r16)
ffffffff80912de0:	13 f5 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80912de4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912de8:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80912dec:	20 fe 5b 07 	call	ra,($r27),ffffffff80912670 <pa2page.part.4>
ffffffff80912df0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912df4:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80912df8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912dfc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912e00:	73 00 3f fa 	ldi	$r17,115
ffffffff80912e04:	26 d9 52 fa 	ldi	$r18,-9946($r18)
ffffffff80912e08:	e7 d8 10 fa 	ldi	$r16,-10009($r16)
ffffffff80912e0c:	08 f5 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80912e10:	5f 07 ff 43 	nop	
ffffffff80912e14:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912e18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912e1c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912e20 <page_remove_pdx0>:
ffffffff80912e20:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912e24:	e0 51 bd fb 	ldi	$r29,20960($r29)
ffffffff80912e28:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff80912e2c:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff80912e30:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80912e34:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912e38:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80912e3c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80912e40:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80912e44:	30 82 2a 8c 	ldl	$r1,-32208($r10)
ffffffff80912e48:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912e4c:	13 07 62 42 	and	$r19,$r2,$r19
ffffffff80912e50:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912e54:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80912e58:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff80912e5c:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff80912e60:	49 00 20 c4 	bne	$r1,ffffffff80912f88 <page_remove_pdx0+0x168>
ffffffff80912e64:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912e68:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff80912e6c:	09 e9 23 4a 	sll	$r17,0x1f,$r9
ffffffff80912e70:	29 c9 26 49 	srl	$r9,0x36,$r9
ffffffff80912e74:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff80912e78:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912e7c:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80912e80:	09 01 69 42 	addl	$r19,$r9,$r9
ffffffff80912e84:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff80912e88:	09 00 20 dc 	blbs	$r1,ffffffff80912eb0 <page_remove_pdx0+0x90>
ffffffff80912e8c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912e90:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912e94:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912e98:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912e9c:	20 00 de fb 	ldi	sp,32(sp)
ffffffff80912ea0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912ea4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912ea8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912eac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912eb0:	50 07 e9 43 	mov	$r9,$r16
ffffffff80912eb4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912eb8:	60 80 7b 8f 	ldl	$r27,-32672($r27)
ffffffff80912ebc:	68 ff 5b 07 	call	ra,($r27),ffffffff80912c60 <page_remove_ptx>
ffffffff80912ec0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912ec4:	40 51 bd fb 	ldi	$r29,20800($r29)
ffffffff80912ec8:	00 00 4b 8c 	ldl	$r2,0($r11)
ffffffff80912ecc:	36 00 40 d8 	blbc	$r2,ffffffff80912fa8 <page_remove_pdx0+0x188>
ffffffff80912ed0:	30 82 8a 8c 	ldl	$r4,-32208($r10)
ffffffff80912ed4:	22 89 43 48 	srl	$r2,0x1c,$r2
ffffffff80912ed8:	61 05 44 40 	cmpult	$r2,$r4,$r1
ffffffff80912edc:	3a 00 20 c0 	beq	$r1,ffffffff80912fc8 <page_remove_pdx0+0x1a8>
ffffffff80912ee0:	81 01 40 48 	s8addl	$r2,0,$r1
ffffffff80912ee4:	00 00 69 8c 	ldl	$r3,0($r9)
ffffffff80912ee8:	09 01 22 40 	addl	$r1,$r2,$r9
ffffffff80912eec:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912ef0:	f0 81 21 8c 	ldl	$r1,-32272($r1)
ffffffff80912ef4:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff80912ef8:	00 00 01 8e 	ldl	$r16,0($r1)
ffffffff80912efc:	09 01 09 42 	addl	$r16,$r9,$r9
ffffffff80912f00:	29 00 60 d8 	blbc	$r3,ffffffff80912fa8 <page_remove_pdx0+0x188>
ffffffff80912f04:	21 89 63 48 	srl	$r3,0x1c,$r1
ffffffff80912f08:	64 05 24 40 	cmpult	$r1,$r4,$r4
ffffffff80912f0c:	2e 00 80 c0 	beq	$r4,ffffffff80912fc8 <page_remove_pdx0+0x1a8>
ffffffff80912f10:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80912f14:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80912f18:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80912f1c:	02 01 01 42 	addl	$r16,$r1,$r2
ffffffff80912f20:	00 00 22 88 	ldw	$r1,0($r2)
ffffffff80912f24:	10 00 20 c4 	bne	$r1,ffffffff80912f68 <page_remove_pdx0+0x148>
ffffffff80912f28:	07 00 1f fa 	ldi	$r16,7
ffffffff80912f2c:	35 00 00 02 	sys_call	0x35
ffffffff80912f30:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912f34:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80912f38:	01 00 3f fa 	ldi	$r17,1
ffffffff80912f3c:	50 07 e2 43 	mov	$r2,$r16
ffffffff80912f40:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912f44:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80912f48:	00 00 5b 07 	call	ra,($r27),ffffffff80912f4c <page_remove_pdx0+0x12c>
ffffffff80912f4c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912f50:	b4 50 bd fb 	ldi	$r29,20660($r29)
ffffffff80912f54:	50 07 ff 43 	clr	$r16
ffffffff80912f58:	35 00 00 02 	sys_call	0x35
ffffffff80912f5c:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80912f60:	21 20 20 48 	subw	$r1,0x1,$r1
ffffffff80912f64:	00 00 29 a8 	stw	$r1,0($r9)
ffffffff80912f68:	fe ff 1f fa 	ldi	$r16,-2
ffffffff80912f6c:	33 00 00 02 	sys_call	0x33
ffffffff80912f70:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912f74:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912f78:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912f7c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912f80:	20 00 de fb 	ldi	sp,32(sp)
ffffffff80912f84:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912f88:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912f8c:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80912f90:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912f94:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912f98:	37 01 3f fa 	ldi	$r17,311
ffffffff80912f9c:	f5 d8 52 fa 	ldi	$r18,-9995($r18)
ffffffff80912fa0:	18 d9 10 fa 	ldi	$r16,-9960($r16)
ffffffff80912fa4:	a2 f4 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80912fa8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912fac:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80912fb0:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912fb4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912fb8:	73 00 3f fa 	ldi	$r17,115
ffffffff80912fbc:	26 d9 52 fa 	ldi	$r18,-9946($r18)
ffffffff80912fc0:	e7 d8 10 fa 	ldi	$r16,-10009($r16)
ffffffff80912fc4:	9a f4 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80912fc8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912fcc:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80912fd0:	a7 fd 5b 07 	call	ra,($r27),ffffffff80912670 <pa2page.part.4>
ffffffff80912fd4:	5f 07 ff 43 	nop	
ffffffff80912fd8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912fdc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912fe0 <page_remove_pdx1>:
ffffffff80912fe0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912fe4:	20 50 bd fb 	ldi	$r29,20512($r29)
ffffffff80912fe8:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff80912fec:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff80912ff0:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80912ff4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912ff8:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80912ffc:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80913000:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80913004:	30 82 2a 8c 	ldl	$r1,-32208($r10)
ffffffff80913008:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091300c:	13 07 62 42 	and	$r19,$r2,$r19
ffffffff80913010:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80913014:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80913018:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff8091301c:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff80913020:	49 00 20 c4 	bne	$r1,ffffffff80913148 <page_remove_pdx1+0x168>
ffffffff80913024:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913028:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff8091302c:	09 a9 22 4a 	sll	$r17,0x15,$r9
ffffffff80913030:	29 c9 26 49 	srl	$r9,0x36,$r9
ffffffff80913034:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff80913038:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091303c:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80913040:	09 01 69 42 	addl	$r19,$r9,$r9
ffffffff80913044:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff80913048:	09 00 20 dc 	blbs	$r1,ffffffff80913070 <page_remove_pdx1+0x90>
ffffffff8091304c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913050:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80913054:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80913058:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff8091305c:	20 00 de fb 	ldi	sp,32(sp)
ffffffff80913060:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913064:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913068:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091306c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913070:	50 07 e9 43 	mov	$r9,$r16
ffffffff80913074:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913078:	b0 81 7b 8f 	ldl	$r27,-32336($r27)
ffffffff8091307c:	68 ff 5b 07 	call	ra,($r27),ffffffff80912e20 <page_remove_pdx0>
ffffffff80913080:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913084:	80 4f bd fb 	ldi	$r29,20352($r29)
ffffffff80913088:	00 00 4b 8c 	ldl	$r2,0($r11)
ffffffff8091308c:	36 00 40 d8 	blbc	$r2,ffffffff80913168 <page_remove_pdx1+0x188>
ffffffff80913090:	30 82 8a 8c 	ldl	$r4,-32208($r10)
ffffffff80913094:	22 89 43 48 	srl	$r2,0x1c,$r2
ffffffff80913098:	61 05 44 40 	cmpult	$r2,$r4,$r1
ffffffff8091309c:	3a 00 20 c0 	beq	$r1,ffffffff80913188 <page_remove_pdx1+0x1a8>
ffffffff809130a0:	81 01 40 48 	s8addl	$r2,0,$r1
ffffffff809130a4:	00 00 69 8c 	ldl	$r3,0($r9)
ffffffff809130a8:	09 01 22 40 	addl	$r1,$r2,$r9
ffffffff809130ac:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809130b0:	f0 81 21 8c 	ldl	$r1,-32272($r1)
ffffffff809130b4:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff809130b8:	00 00 01 8e 	ldl	$r16,0($r1)
ffffffff809130bc:	09 01 09 42 	addl	$r16,$r9,$r9
ffffffff809130c0:	29 00 60 d8 	blbc	$r3,ffffffff80913168 <page_remove_pdx1+0x188>
ffffffff809130c4:	21 89 63 48 	srl	$r3,0x1c,$r1
ffffffff809130c8:	64 05 24 40 	cmpult	$r1,$r4,$r4
ffffffff809130cc:	2e 00 80 c0 	beq	$r4,ffffffff80913188 <page_remove_pdx1+0x1a8>
ffffffff809130d0:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff809130d4:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff809130d8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809130dc:	02 01 01 42 	addl	$r16,$r1,$r2
ffffffff809130e0:	00 00 22 88 	ldw	$r1,0($r2)
ffffffff809130e4:	10 00 20 c4 	bne	$r1,ffffffff80913128 <page_remove_pdx1+0x148>
ffffffff809130e8:	07 00 1f fa 	ldi	$r16,7
ffffffff809130ec:	35 00 00 02 	sys_call	0x35
ffffffff809130f0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809130f4:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff809130f8:	01 00 3f fa 	ldi	$r17,1
ffffffff809130fc:	50 07 e2 43 	mov	$r2,$r16
ffffffff80913100:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80913104:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80913108:	00 00 5b 07 	call	ra,($r27),ffffffff8091310c <page_remove_pdx1+0x12c>
ffffffff8091310c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913110:	f4 4e bd fb 	ldi	$r29,20212($r29)
ffffffff80913114:	50 07 ff 43 	clr	$r16
ffffffff80913118:	35 00 00 02 	sys_call	0x35
ffffffff8091311c:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80913120:	21 20 20 48 	subw	$r1,0x1,$r1
ffffffff80913124:	00 00 29 a8 	stw	$r1,0($r9)
ffffffff80913128:	fe ff 1f fa 	ldi	$r16,-2
ffffffff8091312c:	33 00 00 02 	sys_call	0x33
ffffffff80913130:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913134:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80913138:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091313c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80913140:	20 00 de fb 	ldi	sp,32(sp)
ffffffff80913144:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913148:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091314c:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80913150:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80913154:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913158:	49 01 3f fa 	ldi	$r17,329
ffffffff8091315c:	f5 d8 52 fa 	ldi	$r18,-9995($r18)
ffffffff80913160:	18 d9 10 fa 	ldi	$r16,-9960($r16)
ffffffff80913164:	32 f4 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80913168:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091316c:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80913170:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80913174:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913178:	73 00 3f fa 	ldi	$r17,115
ffffffff8091317c:	26 d9 52 fa 	ldi	$r18,-9946($r18)
ffffffff80913180:	e7 d8 10 fa 	ldi	$r16,-10009($r16)
ffffffff80913184:	2a f4 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80913188:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091318c:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913190:	37 fd 5b 07 	call	ra,($r27),ffffffff80912670 <pa2page.part.4>
ffffffff80913194:	5f 07 ff 43 	nop	
ffffffff80913198:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091319c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809131a0 <page_remove_pdx2>:
ffffffff809131a0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809131a4:	60 4e bd fb 	ldi	$r29,20064($r29)
ffffffff809131a8:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff809131ac:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809131b0:	09 69 21 4a 	sll	$r17,0xb,$r9
ffffffff809131b4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809131b8:	4a 07 f0 43 	mov	$r16,$r10
ffffffff809131bc:	29 c9 26 49 	srl	$r9,0x36,$r9
ffffffff809131c0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809131c4:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff809131c8:	09 01 09 42 	addl	$r16,$r9,$r9
ffffffff809131cc:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff809131d0:	07 00 20 dc 	blbs	$r1,ffffffff809131f0 <page_remove_pdx2+0x50>
ffffffff809131d4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809131d8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809131dc:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809131e0:	20 00 de fb 	ldi	sp,32(sp)
ffffffff809131e4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809131e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809131ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809131f0:	50 07 e9 43 	mov	$r9,$r16
ffffffff809131f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809131f8:	18 81 7b 8f 	ldl	$r27,-32488($r27)
ffffffff809131fc:	78 ff 5b 07 	call	ra,($r27),ffffffff80912fe0 <page_remove_pdx1>
ffffffff80913200:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913204:	00 4e bd fb 	ldi	$r29,19968($r29)
ffffffff80913208:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff8091320c:	33 00 20 d8 	blbc	$r1,ffffffff809132dc <page_remove_pdx2+0x13c>
ffffffff80913210:	22 89 23 48 	srl	$r1,0x1c,$r2
ffffffff80913214:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913218:	30 82 81 8c 	ldl	$r4,-32208($r1)
ffffffff8091321c:	61 05 44 40 	cmpult	$r2,$r4,$r1
ffffffff80913220:	2b 00 20 c0 	beq	$r1,ffffffff809132d0 <page_remove_pdx2+0x130>
ffffffff80913224:	81 01 40 48 	s8addl	$r2,0,$r1
ffffffff80913228:	00 00 69 8c 	ldl	$r3,0($r9)
ffffffff8091322c:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80913230:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80913234:	f0 81 42 8c 	ldl	$r2,-32272($r2)
ffffffff80913238:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff8091323c:	00 00 02 8e 	ldl	$r16,0($r2)
ffffffff80913240:	09 01 01 42 	addl	$r16,$r1,$r9
ffffffff80913244:	25 00 60 d8 	blbc	$r3,ffffffff809132dc <page_remove_pdx2+0x13c>
ffffffff80913248:	21 89 63 48 	srl	$r3,0x1c,$r1
ffffffff8091324c:	64 05 24 40 	cmpult	$r1,$r4,$r4
ffffffff80913250:	1f 00 80 c0 	beq	$r4,ffffffff809132d0 <page_remove_pdx2+0x130>
ffffffff80913254:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80913258:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff8091325c:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80913260:	02 01 01 42 	addl	$r16,$r1,$r2
ffffffff80913264:	00 00 22 88 	ldw	$r1,0($r2)
ffffffff80913268:	0d 00 20 c4 	bne	$r1,ffffffff809132a0 <page_remove_pdx2+0x100>
ffffffff8091326c:	07 00 1f fa 	ldi	$r16,7
ffffffff80913270:	35 00 00 02 	sys_call	0x35
ffffffff80913274:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913278:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff8091327c:	01 00 3f fa 	ldi	$r17,1
ffffffff80913280:	50 07 e2 43 	mov	$r2,$r16
ffffffff80913284:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80913288:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff8091328c:	00 00 5b 07 	call	ra,($r27),ffffffff80913290 <page_remove_pdx2+0xf0>
ffffffff80913290:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913294:	70 4d bd fb 	ldi	$r29,19824($r29)
ffffffff80913298:	50 07 ff 43 	clr	$r16
ffffffff8091329c:	35 00 00 02 	sys_call	0x35
ffffffff809132a0:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff809132a4:	03 00 20 c4 	bne	$r1,ffffffff809132b4 <page_remove_pdx2+0x114>
ffffffff809132a8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809132ac:	28 82 21 8c 	ldl	$r1,-32216($r1)
ffffffff809132b0:	00 00 e1 af 	stl	$r31,0($r1)
ffffffff809132b4:	fe ff 1f fa 	ldi	$r16,-2
ffffffff809132b8:	33 00 00 02 	sys_call	0x33
ffffffff809132bc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809132c0:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809132c4:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809132c8:	20 00 de fb 	ldi	sp,32(sp)
ffffffff809132cc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809132d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809132d4:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809132d8:	e5 fc 5b 07 	call	ra,($r27),ffffffff80912670 <pa2page.part.4>
ffffffff809132dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809132e0:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff809132e4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809132e8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809132ec:	73 00 3f fa 	ldi	$r17,115
ffffffff809132f0:	26 d9 52 fa 	ldi	$r18,-9946($r18)
ffffffff809132f4:	e7 d8 10 fa 	ldi	$r16,-10009($r16)
ffffffff809132f8:	cd f3 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff809132fc:	5f 07 ff 43 	nop	

ffffffff80913300 <page_remove>:
ffffffff80913300:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913304:	00 4d bd fb 	ldi	$r29,19712($r29)
ffffffff80913308:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091330c:	40 81 7b 8f 	ldl	$r27,-32448($r27)
ffffffff80913310:	a3 ff fb 0f 	jmp	$r31,($r27),ffffffff809131a0 <page_remove_pdx2>
ffffffff80913314:	5f 07 ff 43 	nop	
ffffffff80913318:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091331c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80913320 <page_insert>:
ffffffff80913320:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913324:	e0 4c bd fb 	ldi	$r29,19680($r29)
ffffffff80913328:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff8091332c:	41 07 f2 43 	mov	$r18,$r1
ffffffff80913330:	01 00 5f fa 	ldi	$r18,1
ffffffff80913334:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80913338:	49 07 f1 43 	mov	$r17,$r9
ffffffff8091333c:	51 07 e1 43 	mov	$r1,$r17
ffffffff80913340:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80913344:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80913348:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091334c:	4b 07 f3 43 	mov	$r19,$r11
ffffffff80913350:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80913354:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913358:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff8091335c:	00 00 5b 07 	call	ra,($r27),ffffffff80913360 <page_insert+0x40>
ffffffff80913360:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913364:	a0 4c bd fb 	ldi	$r29,19616($r29)
ffffffff80913368:	4a 07 e0 43 	mov	$r0,$r10
ffffffff8091336c:	5e 00 00 c0 	beq	$r0,ffffffff809134e8 <page_insert+0x1c8>
ffffffff80913370:	00 00 89 88 	ldw	$r4,0($r9)
ffffffff80913374:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80913378:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff8091337c:	30 82 62 8c 	ldl	$r3,-32208($r2)
ffffffff80913380:	02 20 80 48 	addw	$r4,0x1,$r2
ffffffff80913384:	00 00 49 a8 	stw	$r2,0($r9)
ffffffff80913388:	29 00 20 dc 	blbs	$r1,ffffffff80913430 <page_insert+0x110>
ffffffff8091338c:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80913390:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80913394:	81 05 01 40 	cmpule	$r0,$r1,$r1
ffffffff80913398:	49 00 20 c4 	bne	$r1,ffffffff809134c0 <page_insert+0x1a0>
ffffffff8091339c:	01 00 3f f8 	ldi	$r1,1
ffffffff809133a0:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff809133a4:	01 01 01 40 	addl	$r0,$r1,$r1
ffffffff809133a8:	22 a9 21 48 	srl	$r1,0xd,$r2
ffffffff809133ac:	83 05 62 40 	cmpule	$r3,$r2,$r3
ffffffff809133b0:	4f 00 60 c4 	bne	$r3,ffffffff809134f0 <page_insert+0x1d0>
ffffffff809133b4:	81 01 40 48 	s8addl	$r2,0,$r1
ffffffff809133b8:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff809133bc:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff809133c0:	f0 81 42 8c 	ldl	$r2,-32272($r2)
ffffffff809133c4:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809133c8:	00 00 62 8e 	ldl	$r19,0($r2)
ffffffff809133cc:	01 01 61 42 	addl	$r19,$r1,$r1
ffffffff809133d0:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff809133d4:	02 20 40 48 	addw	$r2,0x1,$r2
ffffffff809133d8:	00 00 41 a8 	stw	$r2,0($r1)
ffffffff809133dc:	29 01 33 41 	subl	$r9,$r19,$r9
ffffffff809133e0:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809133e4:	4b 27 60 49 	or	$r11,0x1,$r11
ffffffff809133e8:	fe ff 1f fa 	ldi	$r16,-2
ffffffff809133ec:	53 69 20 49 	sra	$r9,0x3,$r19
ffffffff809133f0:	c0 d8 21 8d 	ldl	$r9,-10048($r1)
ffffffff809133f4:	13 03 69 42 	mull	$r19,$r9,$r19
ffffffff809133f8:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff809133fc:	53 07 6b 42 	or	$r19,$r11,$r19
ffffffff80913400:	00 00 6a ae 	stl	$r19,0($r10)
ffffffff80913404:	33 00 00 02 	sys_call	0x33
ffffffff80913408:	40 07 ff 43 	clr	$r0
ffffffff8091340c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913410:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80913414:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80913418:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff8091341c:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80913420:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80913424:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913428:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091342c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913430:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff80913434:	63 05 23 40 	cmpult	$r1,$r3,$r3
ffffffff80913438:	2d 00 60 c0 	beq	$r3,ffffffff809134f0 <page_insert+0x1d0>
ffffffff8091343c:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80913440:	f0 81 8c 8d 	ldl	$r12,-32272($r12)
ffffffff80913444:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80913448:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff8091344c:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80913450:	00 00 6c 8e 	ldl	$r19,0($r12)
ffffffff80913454:	02 01 62 42 	addl	$r19,$r2,$r2
ffffffff80913458:	01 05 22 41 	cmpeq	$r9,$r2,$r1
ffffffff8091345c:	20 00 20 c4 	bne	$r1,ffffffff809134e0 <page_insert+0x1c0>
ffffffff80913460:	00 00 22 88 	ldw	$r1,0($r2)
ffffffff80913464:	23 20 20 48 	subw	$r1,0x1,$r3
ffffffff80913468:	00 00 62 a8 	stw	$r3,0($r2)
ffffffff8091346c:	0d 00 60 c4 	bne	$r3,ffffffff809134a4 <page_insert+0x184>
ffffffff80913470:	07 00 1f fa 	ldi	$r16,7
ffffffff80913474:	35 00 00 02 	sys_call	0x35
ffffffff80913478:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091347c:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80913480:	01 00 3f fa 	ldi	$r17,1
ffffffff80913484:	50 07 e2 43 	mov	$r2,$r16
ffffffff80913488:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091348c:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80913490:	00 00 5b 07 	call	ra,($r27),ffffffff80913494 <page_insert+0x174>
ffffffff80913494:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913498:	6c 4b bd fb 	ldi	$r29,19308($r29)
ffffffff8091349c:	50 07 ff 43 	clr	$r16
ffffffff809134a0:	35 00 00 02 	sys_call	0x35
ffffffff809134a4:	00 00 ea af 	stl	$r31,0($r10)
ffffffff809134a8:	fe ff 1f fa 	ldi	$r16,-2
ffffffff809134ac:	33 00 00 02 	sys_call	0x33
ffffffff809134b0:	00 00 6c 8e 	ldl	$r19,0($r12)
ffffffff809134b4:	c9 ff ff 13 	br	ffffffff809133dc <page_insert+0xbc>
ffffffff809134b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809134bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809134c0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809134c4:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff809134c8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809134cc:	21 01 01 40 	subl	$r0,$r1,$r1
ffffffff809134d0:	b5 ff ff 13 	br	ffffffff809133a8 <page_insert+0x88>
ffffffff809134d4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809134d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809134dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809134e0:	00 00 89 a8 	stw	$r4,0($r9)
ffffffff809134e4:	bd ff ff 13 	br	ffffffff809133dc <page_insert+0xbc>
ffffffff809134e8:	fc ff 1f f8 	ldi	$r0,-4
ffffffff809134ec:	c7 ff ff 13 	br	ffffffff8091340c <page_insert+0xec>
ffffffff809134f0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809134f4:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809134f8:	5d fc 5b 07 	call	ra,($r27),ffffffff80912670 <pa2page.part.4>
ffffffff809134fc:	5f 07 ff 43 	nop	

ffffffff80913500 <pmm_init>:
ffffffff80913500:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913504:	00 4b bd fb 	ldi	$r29,19200($r29)
ffffffff80913508:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091350c:	c0 80 21 8c 	ldl	$r1,-32576($r1)
ffffffff80913510:	b0 ff de fb 	ldi	sp,-80(sp)
ffffffff80913514:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913518:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091351c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913520:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80913524:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80913528:	90 80 8c 8d 	ldl	$r12,-32624($r12)
ffffffff8091352c:	47 d9 10 fa 	ldi	$r16,-9913($r16)
ffffffff80913530:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913534:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80913538:	00 00 21 8e 	ldl	$r17,0($r1)
ffffffff8091353c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80913540:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff80913544:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80913548:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff8091354c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80913550:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80913554:	00 00 2c ac 	stl	$r1,0($r12)
ffffffff80913558:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff8091355c:	b0 80 ce 8d 	ldl	$r14,-32592($r14)
ffffffff80913560:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80913564:	f0 81 4a 8d 	ldl	$r10,-32272($r10)
ffffffff80913568:	09 f3 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff8091356c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913570:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913574:	94 4a bd fb 	ldi	$r29,19092($r29)
ffffffff80913578:	08 00 61 8f 	ldl	$r27,8($r1)
ffffffff8091357c:	00 00 5b 07 	call	ra,($r27),ffffffff80913580 <pmm_init+0x80>
ffffffff80913580:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913584:	80 4a bd fb 	ldi	$r29,19072($r29)
ffffffff80913588:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091358c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913590:	ff ff 3f f8 	ldi	$r1,-1
ffffffff80913594:	00 20 7f fe 	ldih	$r19,8192
ffffffff80913598:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091359c:	01 89 26 48 	sll	$r1,0x34,$r1
ffffffff809135a0:	52 07 f3 43 	mov	$r19,$r18
ffffffff809135a4:	51 07 ff 43 	clr	$r17
ffffffff809135a8:	5e d9 10 fa 	ldi	$r16,-9890($r16)
ffffffff809135ac:	00 00 2e ac 	stl	$r1,0($r14)
ffffffff809135b0:	f7 f2 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809135b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809135b8:	4c 4a bd fb 	ldi	$r29,19020($r29)
ffffffff809135bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809135c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809135c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809135c8:	87 d9 10 fa 	ldi	$r16,-9849($r16)
ffffffff809135cc:	f0 f2 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809135d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809135d4:	30 4a bd fb 	ldi	$r29,18992($r29)
ffffffff809135d8:	00 20 3f fe 	ldih	$r17,8192
ffffffff809135dc:	52 07 ff 43 	clr	$r18
ffffffff809135e0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809135e4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809135e8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809135ec:	ff ff 71 fa 	ldi	$r19,-1($r17)
ffffffff809135f0:	9d d9 10 fa 	ldi	$r16,-9827($r16)
ffffffff809135f4:	e6 f2 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809135f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809135fc:	08 4a bd fb 	ldi	$r29,18952($r29)
ffffffff80913600:	01 00 3f fc 	ldih	$r1,1
ffffffff80913604:	00 00 7d fe 	ldih	$r19,0($r29)
ffffffff80913608:	f0 80 73 8e 	ldl	$r19,-32528($r19)
ffffffff8091360c:	30 82 2b ac 	stl	$r1,-32208($r11)
ffffffff80913610:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80913614:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80913618:	00 80 3f fc 	ldih	$r1,-32768
ffffffff8091361c:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80913620:	00 00 6a ae 	stl	$r19,0($r10)
ffffffff80913624:	81 05 61 42 	cmpule	$r19,$r1,$r1
ffffffff80913628:	69 02 20 c4 	bne	$r1,ffffffff80913fd0 <pmm_init+0xad0>
ffffffff8091362c:	01 00 3f f8 	ldi	$r1,1
ffffffff80913630:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80913634:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80913638:	01 00 5f fc 	ldih	$r2,1
ffffffff8091363c:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80913640:	68 00 3f fa 	ldi	$r17,104
ffffffff80913644:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff80913648:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff8091364c:	73 02 20 c0 	beq	$r1,ffffffff8091401c <pmm_init+0xb1c>
ffffffff80913650:	00 00 6e 8c 	ldl	$r3,0($r14)
ffffffff80913654:	42 07 ff 43 	clr	$r2
ffffffff80913658:	41 07 ff 43 	clr	$r1
ffffffff8091365c:	13 01 63 42 	addl	$r19,$r3,$r19
ffffffff80913660:	00 00 6a ae 	stl	$r19,0($r10)
ffffffff80913664:	03 00 e0 13 	br	ffffffff80913674 <pmm_init+0x174>
ffffffff80913668:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091366c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913670:	00 00 6a 8e 	ldl	$r19,0($r10)
ffffffff80913674:	13 01 62 42 	addl	$r19,$r2,$r19
ffffffff80913678:	08 00 b3 f8 	ldi	$r5,8($r19)
ffffffff8091367c:	00 00 65 20 	lldw	$r3,0($r5)
ffffffff80913680:	01 00 9f f8 	ldi	$r4,1
ffffffff80913684:	20 10 9f 18 	wr_f	$r4
ffffffff80913688:	43 27 60 48 	or	$r3,0x1,$r3
ffffffff8091368c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913690:	00 80 65 20 	lstw	$r3,0($r5)
ffffffff80913694:	00 10 9f 18 	rd_f	$r4
ffffffff80913698:	7e 02 80 c0 	beq	$r4,ffffffff80914094 <pmm_init+0xb94>
ffffffff8091369c:	30 82 6b 8c 	ldl	$r3,-32208($r11)
ffffffff809136a0:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff809136a4:	48 00 42 f8 	ldi	$r2,72($r2)
ffffffff809136a8:	64 05 23 40 	cmpult	$r1,$r3,$r4
ffffffff809136ac:	f0 ff 9f c4 	bne	$r4,ffffffff80913670 <pmm_init+0x170>
ffffffff809136b0:	00 00 0a 8e 	ldl	$r16,0($r10)
ffffffff809136b4:	81 01 60 48 	s8addl	$r3,0,$r1
ffffffff809136b8:	00 80 5f fc 	ldih	$r2,-32768
ffffffff809136bc:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809136c0:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff809136c4:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809136c8:	01 01 01 42 	addl	$r16,$r1,$r1
ffffffff809136cc:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff809136d0:	3b 02 40 c4 	bne	$r2,ffffffff80913fc0 <pmm_init+0xac0>
ffffffff809136d4:	01 00 5f f8 	ldi	$r2,1
ffffffff809136d8:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff809136dc:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff809136e0:	00 20 3f fe 	ldih	$r17,8192
ffffffff809136e4:	ff df 51 f8 	ldi	$r2,-8193($r17)
ffffffff809136e8:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff809136ec:	12 00 40 c0 	beq	$r2,ffffffff80913738 <pmm_init+0x238>
ffffffff809136f0:	ff 1f 21 f8 	ldi	$r1,8191($r1)
ffffffff809136f4:	24 a9 21 48 	srl	$r1,0xd,$r4
ffffffff809136f8:	83 05 64 40 	cmpule	$r3,$r4,$r3
ffffffff809136fc:	4e 02 60 c4 	bne	$r3,ffffffff80914038 <pmm_init+0xb38>
ffffffff80913700:	00 00 6c 8c 	ldl	$r3,0($r12)
ffffffff80913704:	82 01 80 48 	s8addl	$r4,0,$r2
ffffffff80913708:	00 e0 bf f8 	ldi	$r5,-8192
ffffffff8091370c:	00 e0 31 fa 	ldi	$r17,-8192($r17)
ffffffff80913710:	01 07 25 40 	and	$r1,$r5,$r1
ffffffff80913714:	02 01 44 40 	addl	$r2,$r4,$r2
ffffffff80913718:	31 01 21 42 	subl	$r17,$r1,$r17
ffffffff8091371c:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80913720:	10 00 63 8f 	ldl	$r27,16($r3)
ffffffff80913724:	31 a9 21 4a 	srl	$r17,0xd,$r17
ffffffff80913728:	10 01 02 42 	addl	$r16,$r2,$r16
ffffffff8091372c:	00 00 5b 07 	call	ra,($r27),ffffffff80913730 <pmm_init+0x230>
ffffffff80913730:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913734:	d0 48 bd fb 	ldi	$r29,18640($r29)
ffffffff80913738:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff8091373c:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff80913740:	30 00 61 8f 	ldl	$r27,48($r1)
ffffffff80913744:	00 00 5b 07 	call	ra,($r27),ffffffff80913748 <pmm_init+0x248>
ffffffff80913748:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091374c:	b8 48 bd fb 	ldi	$r29,18616($r29)
ffffffff80913750:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913754:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913758:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091375c:	c5 d9 10 fa 	ldi	$r16,-9787($r16)
ffffffff80913760:	8b f2 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913764:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913768:	9c 48 bd fb 	ldi	$r29,18588($r29)
ffffffff8091376c:	00 80 5f fc 	ldih	$r2,-32768
ffffffff80913770:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913774:	80 80 21 8c 	ldl	$r1,-32640($r1)
ffffffff80913778:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff8091377c:	28 82 29 ac 	stl	$r1,-32216($r9)
ffffffff80913780:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff80913784:	16 02 40 c0 	beq	$r2,ffffffff80913fe0 <pmm_init+0xae0>
ffffffff80913788:	00 00 4e 8c 	ldl	$r2,0($r14)
ffffffff8091378c:	21 01 22 40 	subl	$r1,$r2,$r1
ffffffff80913790:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80913794:	e8 80 42 8c 	ldl	$r2,-32536($r2)
ffffffff80913798:	07 00 1f fa 	ldi	$r16,7
ffffffff8091379c:	00 00 22 ac 	stl	$r1,0($r2)
ffffffff809137a0:	35 00 00 02 	sys_call	0x35
ffffffff809137a4:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff809137a8:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff809137ac:	00 00 5b 07 	call	ra,($r27),ffffffff809137b0 <pmm_init+0x2b0>
ffffffff809137b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809137b4:	50 48 bd fb 	ldi	$r29,18512($r29)
ffffffff809137b8:	51 07 e0 43 	mov	$r0,$r17
ffffffff809137bc:	50 07 ff 43 	clr	$r16
ffffffff809137c0:	35 00 00 02 	sys_call	0x35
ffffffff809137c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809137c8:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809137cc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809137d0:	e4 d9 10 fa 	ldi	$r16,-9756($r16)
ffffffff809137d4:	6e f2 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809137d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809137dc:	28 48 bd fb 	ldi	$r29,18472($r29)
ffffffff809137e0:	07 00 1f fa 	ldi	$r16,7
ffffffff809137e4:	35 00 00 02 	sys_call	0x35
ffffffff809137e8:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff809137ec:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff809137f0:	00 00 5b 07 	call	ra,($r27),ffffffff809137f4 <pmm_init+0x2f4>
ffffffff809137f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809137f8:	0c 48 bd fb 	ldi	$r29,18444($r29)
ffffffff809137fc:	40 00 1e ac 	stl	$r0,64(sp)
ffffffff80913800:	50 07 ff 43 	clr	$r16
ffffffff80913804:	35 00 00 02 	sys_call	0x35
ffffffff80913808:	30 82 2b 8c 	ldl	$r1,-32208($r11)
ffffffff8091380c:	01 00 5f fc 	ldih	$r2,1
ffffffff80913810:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913814:	b0 01 3f fa 	ldi	$r17,432
ffffffff80913818:	f8 d9 73 fa 	ldi	$r19,-9736($r19)
ffffffff8091381c:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff80913820:	f6 01 20 c0 	beq	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913824:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913828:	16 02 00 c2 	beq	$r16,ffffffff80914084 <pmm_init+0xb84>
ffffffff8091382c:	ff 1f 3f f8 	ldi	$r1,8191
ffffffff80913830:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80913834:	13 02 20 c4 	bne	$r1,ffffffff80914084 <pmm_init+0xb84>
ffffffff80913838:	51 07 ff 43 	clr	$r17
ffffffff8091383c:	52 07 ff 43 	clr	$r18
ffffffff80913840:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913844:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80913848:	00 00 5b 07 	call	ra,($r27),ffffffff8091384c <pmm_init+0x34c>
ffffffff8091384c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913850:	b4 47 bd fb 	ldi	$r29,18356($r29)
ffffffff80913854:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913858:	b2 01 3f fa 	ldi	$r17,434
ffffffff8091385c:	49 da 73 fa 	ldi	$r19,-9655($r19)
ffffffff80913860:	e6 01 00 c4 	bne	$r0,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913864:	07 00 1f fa 	ldi	$r16,7
ffffffff80913868:	35 00 00 02 	sys_call	0x35
ffffffff8091386c:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913870:	01 00 1f fa 	ldi	$r16,1
ffffffff80913874:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80913878:	00 00 5b 07 	call	ra,($r27),ffffffff8091387c <pmm_init+0x37c>
ffffffff8091387c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913880:	84 47 bd fb 	ldi	$r29,18308($r29)
ffffffff80913884:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80913888:	50 07 ff 43 	clr	$r16
ffffffff8091388c:	35 00 00 02 	sys_call	0x35
ffffffff80913890:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913894:	53 07 ff 43 	clr	$r19
ffffffff80913898:	51 07 ed 43 	mov	$r13,$r17
ffffffff8091389c:	52 07 ff 43 	clr	$r18
ffffffff809138a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809138a4:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff809138a8:	00 00 5b 07 	call	ra,($r27),ffffffff809138ac <pmm_init+0x3ac>
ffffffff809138ac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809138b0:	54 47 bd fb 	ldi	$r29,18260($r29)
ffffffff809138b4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809138b8:	b6 01 3f fa 	ldi	$r17,438
ffffffff809138bc:	71 da 73 fa 	ldi	$r19,-9615($r19)
ffffffff809138c0:	ce 01 00 c4 	bne	$r0,ffffffff80913ffc <pmm_init+0xafc>
ffffffff809138c4:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff809138c8:	51 07 ff 43 	clr	$r17
ffffffff809138cc:	52 07 ff 43 	clr	$r18
ffffffff809138d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809138d4:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff809138d8:	00 00 5b 07 	call	ra,($r27),ffffffff809138dc <pmm_init+0x3dc>
ffffffff809138dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809138e0:	24 47 bd fb 	ldi	$r29,18212($r29)
ffffffff809138e4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809138e8:	b8 01 3f fa 	ldi	$r17,440
ffffffff809138ec:	9a da 73 fa 	ldi	$r19,-9574($r19)
ffffffff809138f0:	c2 01 00 c0 	beq	$r0,ffffffff80913ffc <pmm_init+0xafc>
ffffffff809138f4:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff809138f8:	d2 01 20 d8 	blbc	$r1,ffffffff80914044 <pmm_init+0xb44>
ffffffff809138fc:	30 82 6b 8c 	ldl	$r3,-32208($r11)
ffffffff80913900:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff80913904:	62 05 23 40 	cmpult	$r1,$r3,$r2
ffffffff80913908:	cb 01 40 c0 	beq	$r2,ffffffff80914038 <pmm_init+0xb38>
ffffffff8091390c:	84 01 20 48 	s8addl	$r1,0,$r4
ffffffff80913910:	00 00 4a 8c 	ldl	$r2,0($r10)
ffffffff80913914:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913918:	b9 01 3f fa 	ldi	$r17,441
ffffffff8091391c:	01 01 81 40 	addl	$r4,$r1,$r1
ffffffff80913920:	c7 da 73 fa 	ldi	$r19,-9529($r19)
ffffffff80913924:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80913928:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff8091392c:	01 05 a1 41 	cmpeq	$r13,$r1,$r1
ffffffff80913930:	b2 01 20 c0 	beq	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913934:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff80913938:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091393c:	ba 01 3f fa 	ldi	$r17,442
ffffffff80913940:	dd da 73 fa 	ldi	$r19,-9507($r19)
ffffffff80913944:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff80913948:	ac 01 20 c0 	beq	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff8091394c:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913950:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80913954:	21 e9 61 4a 	srl	$r19,0xf,$r1
ffffffff80913958:	00 00 70 8e 	ldl	$r19,0($r16)
ffffffff8091395c:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80913960:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80913964:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff80913968:	62 05 43 40 	cmpult	$r2,$r3,$r2
ffffffff8091396c:	aa 01 40 c0 	beq	$r2,ffffffff80914018 <pmm_init+0xb18>
ffffffff80913970:	00 00 ee 8d 	ldl	fp,0($r14)
ffffffff80913974:	bd 01 3f fa 	ldi	$r17,445
ffffffff80913978:	13 01 6f 42 	addl	$r19,fp,$r19
ffffffff8091397c:	00 00 73 8e 	ldl	$r19,0($r19)
ffffffff80913980:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80913984:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80913988:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff8091398c:	62 05 43 40 	cmpult	$r2,$r3,$r2
ffffffff80913990:	a2 01 40 c0 	beq	$r2,ffffffff8091401c <pmm_init+0xb1c>
ffffffff80913994:	13 01 f3 41 	addl	fp,$r19,$r19
ffffffff80913998:	be 01 3f fa 	ldi	$r17,446
ffffffff8091399c:	00 00 73 8e 	ldl	$r19,0($r19)
ffffffff809139a0:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff809139a4:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff809139a8:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff809139ac:	63 05 23 40 	cmpult	$r1,$r3,$r3
ffffffff809139b0:	9a 01 60 c0 	beq	$r3,ffffffff8091401c <pmm_init+0xb1c>
ffffffff809139b4:	00 20 3f fa 	ldi	$r17,8192
ffffffff809139b8:	52 07 ff 43 	clr	$r18
ffffffff809139bc:	48 00 7e ae 	stl	$r19,72(sp)
ffffffff809139c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809139c4:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff809139c8:	00 00 5b 07 	call	ra,($r27),ffffffff809139cc <pmm_init+0x4cc>
ffffffff809139cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809139d0:	34 46 bd fb 	ldi	$r29,17972($r29)
ffffffff809139d4:	48 00 7e 8e 	ldl	$r19,72(sp)
ffffffff809139d8:	c0 01 3f fa 	ldi	$r17,448
ffffffff809139dc:	0f 01 f3 41 	addl	fp,$r19,fp
ffffffff809139e0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809139e4:	08 00 ef f9 	ldi	fp,8(fp)
ffffffff809139e8:	ef da 73 fa 	ldi	$r19,-9489($r19)
ffffffff809139ec:	0f 05 0f 40 	cmpeq	$r0,fp,fp
ffffffff809139f0:	82 01 e0 c1 	beq	fp,ffffffff80913ffc <pmm_init+0xafc>
ffffffff809139f4:	07 00 1f fa 	ldi	$r16,7
ffffffff809139f8:	35 00 00 02 	sys_call	0x35
ffffffff809139fc:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913a00:	01 00 1f fa 	ldi	$r16,1
ffffffff80913a04:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80913a08:	00 00 5b 07 	call	ra,($r27),ffffffff80913a0c <pmm_init+0x50c>
ffffffff80913a0c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913a10:	f4 45 bd fb 	ldi	$r29,17908($r29)
ffffffff80913a14:	4f 07 e0 43 	mov	$r0,fp
ffffffff80913a18:	50 07 ff 43 	clr	$r16
ffffffff80913a1c:	35 00 00 02 	sys_call	0x35
ffffffff80913a20:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913a24:	01 00 7f fc 	ldih	$r3,1
ffffffff80913a28:	51 07 ef 43 	mov	fp,$r17
ffffffff80913a2c:	00 20 5f fa 	ldi	$r18,8192
ffffffff80913a30:	00 8c 63 fa 	ldi	$r19,-29696($r3)
ffffffff80913a34:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913a38:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80913a3c:	00 00 5b 07 	call	ra,($r27),ffffffff80913a40 <pmm_init+0x540>
ffffffff80913a40:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913a44:	c0 45 bd fb 	ldi	$r29,17856($r29)
ffffffff80913a48:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913a4c:	c3 01 3f fa 	ldi	$r17,451
ffffffff80913a50:	16 db 73 fa 	ldi	$r19,-9450($r19)
ffffffff80913a54:	69 01 00 c4 	bne	$r0,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913a58:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913a5c:	00 20 3f fa 	ldi	$r17,8192
ffffffff80913a60:	52 07 ff 43 	clr	$r18
ffffffff80913a64:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913a68:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff80913a6c:	00 00 5b 07 	call	ra,($r27),ffffffff80913a70 <pmm_init+0x570>
ffffffff80913a70:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913a74:	90 45 bd fb 	ldi	$r29,17808($r29)
ffffffff80913a78:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913a7c:	c4 01 3f fa 	ldi	$r17,452
ffffffff80913a80:	4e db 73 fa 	ldi	$r19,-9394($r19)
ffffffff80913a84:	5d 01 00 c0 	beq	$r0,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913a88:	00 00 40 8c 	ldl	$r2,0($r0)
ffffffff80913a8c:	01 00 7f fc 	ldih	$r3,1
ffffffff80913a90:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913a94:	c5 01 3f fa 	ldi	$r17,453
ffffffff80913a98:	00 88 23 f8 	ldi	$r1,-30720($r3)
ffffffff80913a9c:	7e db 73 fa 	ldi	$r19,-9346($r19)
ffffffff80913aa0:	03 07 41 40 	and	$r2,$r1,$r3
ffffffff80913aa4:	55 01 60 c0 	beq	$r3,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913aa8:	00 0c 7f f8 	ldi	$r3,3072
ffffffff80913aac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913ab0:	c6 01 3f fa 	ldi	$r17,454
ffffffff80913ab4:	02 07 43 40 	and	$r2,$r3,$r2
ffffffff80913ab8:	8c db 73 fa 	ldi	$r19,-9332($r19)
ffffffff80913abc:	4f 01 40 c0 	beq	$r2,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913ac0:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913ac4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913ac8:	c7 01 3f fa 	ldi	$r17,455
ffffffff80913acc:	9a db 73 fa 	ldi	$r19,-9318($r19)
ffffffff80913ad0:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff80913ad4:	01 07 41 40 	and	$r2,$r1,$r1
ffffffff80913ad8:	48 01 20 c0 	beq	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913adc:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff80913ae0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913ae4:	c8 01 3f fa 	ldi	$r17,456
ffffffff80913ae8:	b0 db 73 fa 	ldi	$r19,-9296($r19)
ffffffff80913aec:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff80913af0:	42 01 20 c0 	beq	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913af4:	53 07 ff 43 	clr	$r19
ffffffff80913af8:	51 07 ed 43 	mov	$r13,$r17
ffffffff80913afc:	00 20 5f fa 	ldi	$r18,8192
ffffffff80913b00:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913b04:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80913b08:	00 00 5b 07 	call	ra,($r27),ffffffff80913b0c <pmm_init+0x60c>
ffffffff80913b0c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b10:	f4 44 bd fb 	ldi	$r29,17652($r29)
ffffffff80913b14:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913b18:	ca 01 3f fa 	ldi	$r17,458
ffffffff80913b1c:	c2 db 73 fa 	ldi	$r19,-9278($r19)
ffffffff80913b20:	36 01 00 c4 	bne	$r0,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913b24:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff80913b28:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913b2c:	cb 01 3f fa 	ldi	$r17,459
ffffffff80913b30:	ee db 73 fa 	ldi	$r19,-9234($r19)
ffffffff80913b34:	01 45 20 48 	cmpeq	$r1,0x2,$r1
ffffffff80913b38:	30 01 20 c0 	beq	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913b3c:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff80913b40:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913b44:	cc 01 3f fa 	ldi	$r17,460
ffffffff80913b48:	d4 d6 73 fa 	ldi	$r19,-10540($r19)
ffffffff80913b4c:	2b 01 20 c4 	bne	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913b50:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913b54:	00 20 3f fa 	ldi	$r17,8192
ffffffff80913b58:	52 07 ff 43 	clr	$r18
ffffffff80913b5c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913b60:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff80913b64:	00 00 5b 07 	call	ra,($r27),ffffffff80913b68 <pmm_init+0x668>
ffffffff80913b68:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b6c:	98 44 bd fb 	ldi	$r29,17560($r29)
ffffffff80913b70:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913b74:	cd 01 3f fa 	ldi	$r17,461
ffffffff80913b78:	4e db 73 fa 	ldi	$r19,-9394($r19)
ffffffff80913b7c:	1f 01 00 c0 	beq	$r0,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913b80:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff80913b84:	2f 01 20 d8 	blbc	$r1,ffffffff80914044 <pmm_init+0xb44>
ffffffff80913b88:	30 82 4b 8c 	ldl	$r2,-32208($r11)
ffffffff80913b8c:	24 89 23 48 	srl	$r1,0x1c,$r4
ffffffff80913b90:	62 05 82 40 	cmpult	$r4,$r2,$r2
ffffffff80913b94:	28 01 40 c0 	beq	$r2,ffffffff80914038 <pmm_init+0xb38>
ffffffff80913b98:	83 01 80 48 	s8addl	$r4,0,$r3
ffffffff80913b9c:	00 00 4a 8c 	ldl	$r2,0($r10)
ffffffff80913ba0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913ba4:	ce 01 3f fa 	ldi	$r17,462
ffffffff80913ba8:	03 01 64 40 	addl	$r3,$r4,$r3
ffffffff80913bac:	c7 da 73 fa 	ldi	$r19,-9529($r19)
ffffffff80913bb0:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff80913bb4:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80913bb8:	02 05 a2 41 	cmpeq	$r13,$r2,$r2
ffffffff80913bbc:	0f 01 40 c0 	beq	$r2,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913bc0:	01 00 5f fc 	ldih	$r2,1
ffffffff80913bc4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913bc8:	cf 01 3f fa 	ldi	$r17,463
ffffffff80913bcc:	00 88 42 f8 	ldi	$r2,-30720($r2)
ffffffff80913bd0:	00 dc 73 fa 	ldi	$r19,-9216($r19)
ffffffff80913bd4:	01 07 22 40 	and	$r1,$r2,$r1
ffffffff80913bd8:	08 01 20 c4 	bne	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913bdc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913be0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913be4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913be8:	15 dc 10 fa 	ldi	$r16,-9195($r16)
ffffffff80913bec:	68 f1 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913bf0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913bf4:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913bf8:	10 44 bd fb 	ldi	$r29,17424($r29)
ffffffff80913bfc:	51 07 ff 43 	clr	$r17
ffffffff80913c00:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913c04:	40 81 7b 8f 	ldl	$r27,-32448($r27)
ffffffff80913c08:	65 fd 5b 07 	call	ra,($r27),ffffffff809131a0 <page_remove_pdx2>
ffffffff80913c0c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913c10:	f4 43 bd fb 	ldi	$r29,17396($r29)
ffffffff80913c14:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff80913c18:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913c1c:	d3 01 3f fa 	ldi	$r17,467
ffffffff80913c20:	dd da 73 fa 	ldi	$r19,-9507($r19)
ffffffff80913c24:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff80913c28:	f4 00 20 c0 	beq	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913c2c:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff80913c30:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913c34:	d4 01 3f fa 	ldi	$r17,468
ffffffff80913c38:	d4 d6 73 fa 	ldi	$r19,-10540($r19)
ffffffff80913c3c:	ef 00 20 c4 	bne	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913c40:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913c44:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913c48:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913c4c:	26 dc 10 fa 	ldi	$r16,-9178($r16)
ffffffff80913c50:	4f f1 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913c54:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913c58:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913c5c:	ac 43 bd fb 	ldi	$r29,17324($r29)
ffffffff80913c60:	00 20 3f fa 	ldi	$r17,8192
ffffffff80913c64:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913c68:	40 81 7b 8f 	ldl	$r27,-32448($r27)
ffffffff80913c6c:	4c fd 5b 07 	call	ra,($r27),ffffffff809131a0 <page_remove_pdx2>
ffffffff80913c70:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913c74:	90 43 bd fb 	ldi	$r29,17296($r29)
ffffffff80913c78:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff80913c7c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913c80:	d8 01 3f fa 	ldi	$r17,472
ffffffff80913c84:	3c dc 73 fa 	ldi	$r19,-9156($r19)
ffffffff80913c88:	dc 00 20 c4 	bne	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913c8c:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff80913c90:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913c94:	d9 01 3f fa 	ldi	$r17,473
ffffffff80913c98:	d4 d6 73 fa 	ldi	$r19,-10540($r19)
ffffffff80913c9c:	d7 00 20 c4 	bne	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913ca0:	28 82 29 8c 	ldl	$r1,-32216($r9)
ffffffff80913ca4:	30 82 6b 8c 	ldl	$r3,-32208($r11)
ffffffff80913ca8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80913cac:	22 89 23 48 	srl	$r1,0x1c,$r2
ffffffff80913cb0:	61 05 43 40 	cmpult	$r2,$r3,$r1
ffffffff80913cb4:	e0 00 20 c0 	beq	$r1,ffffffff80914038 <pmm_init+0xb38>
ffffffff80913cb8:	00 00 6a 8c 	ldl	$r3,0($r10)
ffffffff80913cbc:	81 01 40 48 	s8addl	$r2,0,$r1
ffffffff80913cc0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913cc4:	dc 01 3f fa 	ldi	$r17,476
ffffffff80913cc8:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80913ccc:	4e dc 73 fa 	ldi	$r19,-9138($r19)
ffffffff80913cd0:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80913cd4:	01 01 61 40 	addl	$r3,$r1,$r1
ffffffff80913cd8:	00 00 21 88 	ldw	$r1,0($r1)
ffffffff80913cdc:	c7 00 20 c4 	bne	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913ce0:	07 00 1f fa 	ldi	$r16,7
ffffffff80913ce4:	35 00 00 02 	sys_call	0x35
ffffffff80913ce8:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913cec:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80913cf0:	00 00 5b 07 	call	ra,($r27),ffffffff80913cf4 <pmm_init+0x7f4>
ffffffff80913cf4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913cf8:	0c 43 bd fb 	ldi	$r29,17164($r29)
ffffffff80913cfc:	42 07 e0 43 	mov	$r0,$r2
ffffffff80913d00:	50 07 ff 43 	clr	$r16
ffffffff80913d04:	35 00 00 02 	sys_call	0x35
ffffffff80913d08:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80913d0c:	eb 01 3f fa 	ldi	$r17,491
ffffffff80913d10:	00 05 22 40 	cmpeq	$r1,$r2,$r0
ffffffff80913d14:	b7 00 00 c0 	beq	$r0,ffffffff80913ff4 <pmm_init+0xaf4>
ffffffff80913d18:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913d1c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913d20:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913d24:	75 dc 10 fa 	ldi	$r16,-9099($r16)
ffffffff80913d28:	19 f1 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913d2c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913d30:	d4 42 bd fb 	ldi	$r29,17108($r29)
ffffffff80913d34:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80913d38:	e8 80 42 8c 	ldl	$r2,-32536($r2)
ffffffff80913d3c:	00 00 02 8e 	ldl	$r16,0($r2)
ffffffff80913d40:	0c 00 00 02 	sys_call	0xc
ffffffff80913d44:	28 82 29 8c 	ldl	$r1,-32216($r9)
ffffffff80913d48:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913d4c:	f2 01 3f fa 	ldi	$r17,498
ffffffff80913d50:	8f dc 73 fa 	ldi	$r19,-9073($r19)
ffffffff80913d54:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80913d58:	a8 00 20 c4 	bne	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913d5c:	07 00 1f fa 	ldi	$r16,7
ffffffff80913d60:	35 00 00 02 	sys_call	0x35
ffffffff80913d64:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913d68:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80913d6c:	00 00 5b 07 	call	ra,($r27),ffffffff80913d70 <pmm_init+0x870>
ffffffff80913d70:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913d74:	90 42 bd fb 	ldi	$r29,17040($r29)
ffffffff80913d78:	4f 07 e0 43 	mov	$r0,fp
ffffffff80913d7c:	50 07 ff 43 	clr	$r16
ffffffff80913d80:	35 00 00 02 	sys_call	0x35
ffffffff80913d84:	07 00 1f fa 	ldi	$r16,7
ffffffff80913d88:	35 00 00 02 	sys_call	0x35
ffffffff80913d8c:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913d90:	01 00 1f fa 	ldi	$r16,1
ffffffff80913d94:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80913d98:	00 00 5b 07 	call	ra,($r27),ffffffff80913d9c <pmm_init+0x89c>
ffffffff80913d9c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913da0:	64 42 bd fb 	ldi	$r29,16996($r29)
ffffffff80913da4:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80913da8:	50 07 ff 43 	clr	$r16
ffffffff80913dac:	35 00 00 02 	sys_call	0x35
ffffffff80913db0:	01 00 3f fc 	ldih	$r1,1
ffffffff80913db4:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913db8:	51 07 ed 43 	mov	$r13,$r17
ffffffff80913dbc:	00 01 5f fa 	ldi	$r18,256
ffffffff80913dc0:	00 cc 21 f8 	ldi	$r1,-13312($r1)
ffffffff80913dc4:	53 07 e1 43 	mov	$r1,$r19
ffffffff80913dc8:	48 00 3e ac 	stl	$r1,72(sp)
ffffffff80913dcc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913dd0:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80913dd4:	00 00 5b 07 	call	ra,($r27),ffffffff80913dd8 <pmm_init+0x8d8>
ffffffff80913dd8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913ddc:	28 42 bd fb 	ldi	$r29,16936($r29)
ffffffff80913de0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913de4:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff80913de8:	f8 01 3f fa 	ldi	$r17,504
ffffffff80913dec:	a2 dc 73 fa 	ldi	$r19,-9054($r19)
ffffffff80913df0:	82 00 00 c4 	bne	$r0,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913df4:	00 00 4d 88 	ldw	$r2,0($r13)
ffffffff80913df8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913dfc:	f9 01 3f fa 	ldi	$r17,505
ffffffff80913e00:	d8 dc 73 fa 	ldi	$r19,-9000($r19)
ffffffff80913e04:	02 25 40 48 	cmpeq	$r2,0x1,$r2
ffffffff80913e08:	7c 00 40 c0 	beq	$r2,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913e0c:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913e10:	53 07 e1 43 	mov	$r1,$r19
ffffffff80913e14:	51 07 ed 43 	mov	$r13,$r17
ffffffff80913e18:	00 21 5f fa 	ldi	$r18,8448
ffffffff80913e1c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913e20:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80913e24:	00 00 5b 07 	call	ra,($r27),ffffffff80913e28 <pmm_init+0x928>
ffffffff80913e28:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913e2c:	d8 41 bd fb 	ldi	$r29,16856($r29)
ffffffff80913e30:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913e34:	fa 01 3f fa 	ldi	$r17,506
ffffffff80913e38:	e9 dc 73 fa 	ldi	$r19,-8983($r19)
ffffffff80913e3c:	6f 00 00 c4 	bne	$r0,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913e40:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff80913e44:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913e48:	fb 01 3f fa 	ldi	$r17,507
ffffffff80913e4c:	28 dd 73 fa 	ldi	$r19,-8920($r19)
ffffffff80913e50:	01 45 20 48 	cmpeq	$r1,0x2,$r1
ffffffff80913e54:	69 00 20 c0 	beq	$r1,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913e58:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913e5c:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80913e60:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff80913e64:	00 01 1f fa 	ldi	$r16,256
ffffffff80913e68:	39 dd 31 fa 	ldi	$r17,-8903($r17)
ffffffff80913e6c:	80 01 5b 07 	call	ra,($r27),ffffffff80914470 <strcpy>
ffffffff80913e70:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913e74:	90 41 bd fb 	ldi	$r29,16784($r29)
ffffffff80913e78:	00 21 3f fa 	ldi	$r17,8448
ffffffff80913e7c:	00 01 1f fa 	ldi	$r16,256
ffffffff80913e80:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913e84:	60 81 7b 8f 	ldl	$r27,-32416($r27)
ffffffff80913e88:	85 01 5b 07 	call	ra,($r27),ffffffff809144a0 <strcmp>
ffffffff80913e8c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913e90:	74 41 bd fb 	ldi	$r29,16756($r29)
ffffffff80913e94:	ff 01 3f fa 	ldi	$r17,511
ffffffff80913e98:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913e9c:	4e dd 73 fa 	ldi	$r19,-8882($r19)
ffffffff80913ea0:	56 00 00 c4 	bne	$r0,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913ea4:	00 00 6a 8e 	ldl	$r19,0($r10)
ffffffff80913ea8:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80913eac:	30 82 4b 8c 	ldl	$r2,-32208($r11)
ffffffff80913eb0:	33 01 b3 41 	subl	$r13,$r19,$r19
ffffffff80913eb4:	c0 d8 a1 8d 	ldl	$r13,-10048($r1)
ffffffff80913eb8:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80913ebc:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80913ec0:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80913ec4:	13 03 6d 42 	mull	$r19,$r13,$r19
ffffffff80913ec8:	01 07 61 42 	and	$r19,$r1,$r1
ffffffff80913ecc:	13 a9 61 4a 	sll	$r19,0xd,$r19
ffffffff80913ed0:	61 05 22 40 	cmpult	$r1,$r2,$r1
ffffffff80913ed4:	63 00 20 c0 	beq	$r1,ffffffff80914064 <pmm_init+0xb64>
ffffffff80913ed8:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff80913edc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913ee0:	d8 81 7b 8f 	ldl	$r27,-32296($r27)
ffffffff80913ee4:	00 01 1f fa 	ldi	$r16,256
ffffffff80913ee8:	13 01 33 40 	addl	$r1,$r19,$r19
ffffffff80913eec:	00 01 f3 a3 	stb	$r31,256($r19)
ffffffff80913ef0:	3b 01 5b 07 	call	ra,($r27),ffffffff809143e0 <strlen>
ffffffff80913ef4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913ef8:	0c 41 bd fb 	ldi	$r29,16652($r29)
ffffffff80913efc:	02 02 3f fa 	ldi	$r17,514
ffffffff80913f00:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913f04:	83 dd 73 fa 	ldi	$r19,-8829($r19)
ffffffff80913f08:	3c 00 00 c4 	bne	$r0,ffffffff80913ffc <pmm_init+0xafc>
ffffffff80913f0c:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913f10:	00 01 3f fa 	ldi	$r17,256
ffffffff80913f14:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913f18:	40 81 7b 8f 	ldl	$r27,-32448($r27)
ffffffff80913f1c:	a0 fc 5b 07 	call	ra,($r27),ffffffff809131a0 <page_remove_pdx2>
ffffffff80913f20:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913f24:	e0 40 bd fb 	ldi	$r29,16608($r29)
ffffffff80913f28:	28 82 09 8e 	ldl	$r16,-32216($r9)
ffffffff80913f2c:	00 21 3f fa 	ldi	$r17,8448
ffffffff80913f30:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913f34:	40 81 7b 8f 	ldl	$r27,-32448($r27)
ffffffff80913f38:	99 fc 5b 07 	call	ra,($r27),ffffffff809131a0 <page_remove_pdx2>
ffffffff80913f3c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913f40:	c4 40 bd fb 	ldi	$r29,16580($r29)
ffffffff80913f44:	07 00 1f fa 	ldi	$r16,7
ffffffff80913f48:	35 00 00 02 	sys_call	0x35
ffffffff80913f4c:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913f50:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80913f54:	00 00 5b 07 	call	ra,($r27),ffffffff80913f58 <pmm_init+0xa58>
ffffffff80913f58:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913f5c:	a8 40 bd fb 	ldi	$r29,16552($r29)
ffffffff80913f60:	42 07 e0 43 	mov	$r0,$r2
ffffffff80913f64:	50 07 ff 43 	clr	$r16
ffffffff80913f68:	35 00 00 02 	sys_call	0x35
ffffffff80913f6c:	0f 05 e2 41 	cmpeq	fp,$r2,fp
ffffffff80913f70:	1f 00 e0 c1 	beq	fp,ffffffff80913ff0 <pmm_init+0xaf0>
ffffffff80913f74:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913f78:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913f7c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913f80:	a4 dd 10 fa 	ldi	$r16,-8796($r16)
ffffffff80913f84:	82 f0 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913f88:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913f8c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80913f90:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913f94:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80913f98:	78 40 bd fb 	ldi	$r29,16504($r29)
ffffffff80913f9c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80913fa0:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80913fa4:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80913fa8:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80913fac:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80913fb0:	50 00 de fb 	ldi	sp,80(sp)
ffffffff80913fb4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913fb8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fbc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fc0:	00 00 4e 8c 	ldl	$r2,0($r14)
ffffffff80913fc4:	21 01 22 40 	subl	$r1,$r2,$r1
ffffffff80913fc8:	c5 fd ff 13 	br	ffffffff809136e0 <pmm_init+0x1e0>
ffffffff80913fcc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fd0:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff80913fd4:	33 01 61 42 	subl	$r19,$r1,$r19
ffffffff80913fd8:	97 fd ff 13 	br	ffffffff80913638 <pmm_init+0x138>
ffffffff80913fdc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fe0:	01 00 5f f8 	ldi	$r2,1
ffffffff80913fe4:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff80913fe8:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80913fec:	e8 fd ff 13 	br	ffffffff80913790 <pmm_init+0x290>
ffffffff80913ff0:	13 02 3f fa 	ldi	$r17,531
ffffffff80913ff4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913ff8:	9d d4 73 fa 	ldi	$r19,-11107($r19)
ffffffff80913ffc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914000:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80914004:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914008:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091400c:	f6 d2 52 fa 	ldi	$r18,-11530($r18)
ffffffff80914010:	18 d9 10 fa 	ldi	$r16,-9960($r16)
ffffffff80914014:	86 f0 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80914018:	bc 01 3f fa 	ldi	$r17,444
ffffffff8091401c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914020:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80914024:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914028:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091402c:	f5 d8 52 fa 	ldi	$r18,-9995($r18)
ffffffff80914030:	18 d9 10 fa 	ldi	$r16,-9960($r16)
ffffffff80914034:	7e f0 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80914038:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091403c:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80914040:	8b f9 5b 07 	call	ra,($r27),ffffffff80912670 <pa2page.part.4>
ffffffff80914044:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914048:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff8091404c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914050:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80914054:	73 00 3f fa 	ldi	$r17,115
ffffffff80914058:	26 d9 52 fa 	ldi	$r18,-9946($r18)
ffffffff8091405c:	e7 d8 10 fa 	ldi	$r16,-10009($r16)
ffffffff80914060:	73 f0 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80914064:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914068:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff8091406c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914070:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80914074:	6d 00 3f fa 	ldi	$r17,109
ffffffff80914078:	f5 d8 52 fa 	ldi	$r18,-9995($r18)
ffffffff8091407c:	e7 d8 10 fa 	ldi	$r16,-10009($r16)
ffffffff80914080:	6b f0 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80914084:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914088:	b1 01 3f fa 	ldi	$r17,433
ffffffff8091408c:	12 da 73 fa 	ldi	$r19,-9710($r19)
ffffffff80914090:	da ff ff 13 	br	ffffffff80913ffc <pmm_init+0xafc>
ffffffff80914094:	79 fd ff 13 	br	ffffffff8091367c <pmm_init+0x17c>
ffffffff80914098:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091409c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809140a0 <pgdir_alloc_page>:
ffffffff809140a0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809140a4:	60 3f bd fb 	ldi	$r29,16224($r29)
ffffffff809140a8:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff809140ac:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809140b0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809140b4:	4b 07 f0 43 	mov	$r16,$r11
ffffffff809140b8:	4c 07 f1 43 	mov	$r17,$r12
ffffffff809140bc:	28 00 be ad 	stl	$r13,40(sp)
ffffffff809140c0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809140c4:	4d 07 f2 43 	mov	$r18,$r13
ffffffff809140c8:	07 00 1f fa 	ldi	$r16,7
ffffffff809140cc:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809140d0:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809140d4:	35 00 00 02 	sys_call	0x35
ffffffff809140d8:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff809140dc:	90 80 4a 8d 	ldl	$r10,-32624($r10)
ffffffff809140e0:	01 00 1f fa 	ldi	$r16,1
ffffffff809140e4:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff809140e8:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff809140ec:	00 00 5b 07 	call	ra,($r27),ffffffff809140f0 <pgdir_alloc_page+0x50>
ffffffff809140f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809140f4:	10 3f bd fb 	ldi	$r29,16144($r29)
ffffffff809140f8:	49 07 e0 43 	mov	$r0,$r9
ffffffff809140fc:	50 07 ff 43 	clr	$r16
ffffffff80914100:	35 00 00 02 	sys_call	0x35
ffffffff80914104:	0a 00 20 c1 	beq	$r9,ffffffff80914130 <pgdir_alloc_page+0x90>
ffffffff80914108:	53 07 ed 43 	mov	$r13,$r19
ffffffff8091410c:	52 07 ec 43 	mov	$r12,$r18
ffffffff80914110:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914114:	50 07 eb 43 	mov	$r11,$r16
ffffffff80914118:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091411c:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80914120:	00 00 5b 07 	call	ra,($r27),ffffffff80914124 <pgdir_alloc_page+0x84>
ffffffff80914124:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914128:	dc 3e bd fb 	ldi	$r29,16092($r29)
ffffffff8091412c:	0c 00 00 c4 	bne	$r0,ffffffff80914160 <pgdir_alloc_page+0xc0>
ffffffff80914130:	40 07 e9 43 	mov	$r9,$r0
ffffffff80914134:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914138:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff8091413c:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80914140:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80914144:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80914148:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff8091414c:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80914150:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914154:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914158:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091415c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914160:	07 00 1f fa 	ldi	$r16,7
ffffffff80914164:	35 00 00 02 	sys_call	0x35
ffffffff80914168:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff8091416c:	01 00 3f fa 	ldi	$r17,1
ffffffff80914170:	50 07 e9 43 	mov	$r9,$r16
ffffffff80914174:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80914178:	00 00 5b 07 	call	ra,($r27),ffffffff8091417c <pgdir_alloc_page+0xdc>
ffffffff8091417c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914180:	84 3e bd fb 	ldi	$r29,16004($r29)
ffffffff80914184:	50 07 ff 43 	clr	$r16
ffffffff80914188:	35 00 00 02 	sys_call	0x35
ffffffff8091418c:	49 07 ff 43 	clr	$r9
ffffffff80914190:	e7 ff ff 13 	br	ffffffff80914130 <pgdir_alloc_page+0x90>
ffffffff80914194:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914198:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091419c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809141a0 <kmalloc>:
ffffffff809141a0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809141a4:	60 3e bd fb 	ldi	$r29,15968($r29)
ffffffff809141a8:	01 00 5f fc 	ldih	$r2,1
ffffffff809141ac:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809141b0:	ff ff 30 f8 	ldi	$r1,-1($r16)
ffffffff809141b4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809141b8:	fe 4f 42 f8 	ldi	$r2,20478($r2)
ffffffff809141bc:	00 00 5e af 	stl	ra,0(sp)
ffffffff809141c0:	1a 02 3f fa 	ldi	$r17,538
ffffffff809141c4:	c3 dd 73 fa 	ldi	$r19,-8765($r19)
ffffffff809141c8:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff809141cc:	2a 00 20 c0 	beq	$r1,ffffffff80914278 <kmalloc+0xd8>
ffffffff809141d0:	ff 1f 50 f8 	ldi	$r2,8191($r16)
ffffffff809141d4:	07 00 1f fa 	ldi	$r16,7
ffffffff809141d8:	22 a9 41 48 	srl	$r2,0xd,$r2
ffffffff809141dc:	35 00 00 02 	sys_call	0x35
ffffffff809141e0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809141e4:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff809141e8:	50 07 e2 43 	mov	$r2,$r16
ffffffff809141ec:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809141f0:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff809141f4:	00 00 5b 07 	call	ra,($r27),ffffffff809141f8 <kmalloc+0x58>
ffffffff809141f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809141fc:	08 3e bd fb 	ldi	$r29,15880($r29)
ffffffff80914200:	42 07 e0 43 	mov	$r0,$r2
ffffffff80914204:	50 07 ff 43 	clr	$r16
ffffffff80914208:	35 00 00 02 	sys_call	0x35
ffffffff8091420c:	17 00 40 c0 	beq	$r2,ffffffff8091426c <kmalloc+0xcc>
ffffffff80914210:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80914214:	30 82 61 8c 	ldl	$r3,-32208($r1)
ffffffff80914218:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091421c:	f0 81 21 8c 	ldl	$r1,-32272($r1)
ffffffff80914220:	00 00 61 8e 	ldl	$r19,0($r1)
ffffffff80914224:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80914228:	33 01 53 40 	subl	$r2,$r19,$r19
ffffffff8091422c:	c0 d8 41 8c 	ldl	$r2,-10048($r1)
ffffffff80914230:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80914234:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80914238:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff8091423c:	13 03 62 42 	mull	$r19,$r2,$r19
ffffffff80914240:	01 07 61 42 	and	$r19,$r1,$r1
ffffffff80914244:	13 a9 61 4a 	sll	$r19,0xd,$r19
ffffffff80914248:	61 05 23 40 	cmpult	$r1,$r3,$r1
ffffffff8091424c:	11 00 20 c0 	beq	$r1,ffffffff80914294 <kmalloc+0xf4>
ffffffff80914250:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80914254:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff80914258:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091425c:	00 00 01 8c 	ldl	$r0,0($r1)
ffffffff80914260:	00 01 60 42 	addl	$r19,$r0,$r0
ffffffff80914264:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80914268:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091426c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914270:	1d 02 3f fa 	ldi	$r17,541
ffffffff80914274:	dc dd 73 fa 	ldi	$r19,-8740($r19)
ffffffff80914278:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091427c:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff80914280:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914284:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80914288:	f6 d2 52 fa 	ldi	$r18,-11530($r18)
ffffffff8091428c:	18 d9 10 fa 	ldi	$r16,-9960($r16)
ffffffff80914290:	e7 ef 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80914294:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914298:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff8091429c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809142a0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809142a4:	6d 00 3f fa 	ldi	$r17,109
ffffffff809142a8:	f5 d8 52 fa 	ldi	$r18,-9995($r18)
ffffffff809142ac:	e7 d8 10 fa 	ldi	$r16,-10009($r16)
ffffffff809142b0:	df ef 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff809142b4:	5f 07 ff 43 	nop	
ffffffff809142b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809142bc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809142c0 <kfree>:
ffffffff809142c0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809142c4:	40 3d bd fb 	ldi	$r29,15680($r29)
ffffffff809142c8:	01 00 5f fc 	ldih	$r2,1
ffffffff809142cc:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809142d0:	ff ff 31 f8 	ldi	$r1,-1($r17)
ffffffff809142d4:	fe 4f 42 f8 	ldi	$r2,20478($r2)
ffffffff809142d8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809142dc:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff809142e0:	38 00 20 c0 	beq	$r1,ffffffff809143c4 <kfree+0x104>
ffffffff809142e4:	2d 00 00 c2 	beq	$r16,ffffffff8091439c <kfree+0xdc>
ffffffff809142e8:	00 80 3f fc 	ldih	$r1,-32768
ffffffff809142ec:	ff 1f 31 fa 	ldi	$r17,8191($r17)
ffffffff809142f0:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff809142f4:	31 a9 21 4a 	srl	$r17,0xd,$r17
ffffffff809142f8:	81 05 01 42 	cmpule	$r16,$r1,$r1
ffffffff809142fc:	20 00 20 c0 	beq	$r1,ffffffff80914380 <kfree+0xc0>
ffffffff80914300:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80914304:	b0 80 21 8c 	ldl	$r1,-32592($r1)
ffffffff80914308:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091430c:	30 01 01 42 	subl	$r16,$r1,$r16
ffffffff80914310:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80914314:	21 a9 01 4a 	srl	$r16,0xd,$r1
ffffffff80914318:	30 82 42 8c 	ldl	$r2,-32208($r2)
ffffffff8091431c:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80914320:	1b 00 40 c0 	beq	$r2,ffffffff80914390 <kfree+0xd0>
ffffffff80914324:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80914328:	07 00 1f fa 	ldi	$r16,7
ffffffff8091432c:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80914330:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80914334:	f0 81 42 8c 	ldl	$r2,-32272($r2)
ffffffff80914338:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff8091433c:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80914340:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff80914344:	35 00 00 02 	sys_call	0x35
ffffffff80914348:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091434c:	90 80 21 8c 	ldl	$r1,-32624($r1)
ffffffff80914350:	50 07 e2 43 	mov	$r2,$r16
ffffffff80914354:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80914358:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff8091435c:	00 00 5b 07 	call	ra,($r27),ffffffff80914360 <kfree+0xa0>
ffffffff80914360:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914364:	a0 3c bd fb 	ldi	$r29,15520($r29)
ffffffff80914368:	50 07 ff 43 	clr	$r16
ffffffff8091436c:	35 00 00 02 	sys_call	0x35
ffffffff80914370:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914374:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80914378:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091437c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914380:	01 00 3f f8 	ldi	$r1,1
ffffffff80914384:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80914388:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff8091438c:	e0 ff ff 13 	br	ffffffff80914310 <kfree+0x50>
ffffffff80914390:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914394:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80914398:	b5 f8 5b 07 	call	ra,($r27),ffffffff80912670 <pa2page.part.4>
ffffffff8091439c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809143a0:	24 02 3f fa 	ldi	$r17,548
ffffffff809143a4:	e9 dd 73 fa 	ldi	$r19,-8727($r19)
ffffffff809143a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809143ac:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff809143b0:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809143b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809143b8:	f6 d2 52 fa 	ldi	$r18,-11530($r18)
ffffffff809143bc:	18 d9 10 fa 	ldi	$r16,-9960($r16)
ffffffff809143c0:	9b ef 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff809143c4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809143c8:	23 02 3f fa 	ldi	$r17,547
ffffffff809143cc:	c3 dd 73 fa 	ldi	$r19,-8765($r19)
ffffffff809143d0:	f5 ff ff 13 	br	ffffffff809143a8 <kfree+0xe8>
ffffffff809143d4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809143d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809143dc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809143e0 <strlen>:
ffffffff809143e0:	00 00 50 80 	ldbu	$r2,0($r16)
ffffffff809143e4:	40 07 ff 43 	clr	$r0
ffffffff809143e8:	01 00 30 f8 	ldi	$r1,1($r16)
ffffffff809143ec:	04 00 40 c0 	beq	$r2,ffffffff80914400 <strlen+0x20>
ffffffff809143f0:	20 01 30 40 	subl	$r1,$r16,$r0
ffffffff809143f4:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff809143f8:	ff ff 41 80 	ldbu	$r2,-1($r1)
ffffffff809143fc:	fc ff 5f c4 	bne	$r2,ffffffff809143f0 <strlen+0x10>
ffffffff80914400:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914404:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914408:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091440c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914410 <strnlen>:
ffffffff80914410:	13 00 20 c2 	beq	$r17,ffffffff80914460 <strnlen+0x50>
ffffffff80914414:	00 00 50 80 	ldbu	$r2,0($r16)
ffffffff80914418:	01 00 30 f8 	ldi	$r1,1($r16)
ffffffff8091441c:	10 00 40 c0 	beq	$r2,ffffffff80914460 <strnlen+0x50>
ffffffff80914420:	11 01 11 42 	addl	$r16,$r17,$r17
ffffffff80914424:	04 00 e0 13 	br	ffffffff80914438 <strnlen+0x28>
ffffffff80914428:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091442c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914430:	ff ff 41 80 	ldbu	$r2,-1($r1)
ffffffff80914434:	06 00 40 c0 	beq	$r2,ffffffff80914450 <strnlen+0x40>
ffffffff80914438:	02 05 31 40 	cmpeq	$r1,$r17,$r2
ffffffff8091443c:	20 01 30 40 	subl	$r1,$r16,$r0
ffffffff80914440:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80914444:	fa ff 5f c0 	beq	$r2,ffffffff80914430 <strnlen+0x20>
ffffffff80914448:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091444c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914450:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914454:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914458:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091445c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914460:	40 07 ff 43 	clr	$r0
ffffffff80914464:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914468:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091446c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914470 <strcpy>:
ffffffff80914470:	41 07 f0 43 	mov	$r16,$r1
ffffffff80914474:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914478:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091447c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914480:	01 00 31 fa 	ldi	$r17,1($r17)
ffffffff80914484:	ff ff 51 80 	ldbu	$r2,-1($r17)
ffffffff80914488:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff8091448c:	43 0d e2 43 	sextb	$r2,$r3
ffffffff80914490:	ff ff 41 a0 	stb	$r2,-1($r1)
ffffffff80914494:	fa ff 7f c4 	bne	$r3,ffffffff80914480 <strcpy+0x10>
ffffffff80914498:	40 07 f0 43 	mov	$r16,$r0
ffffffff8091449c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809144a0 <strcmp>:
ffffffff809144a0:	00 00 30 80 	ldbu	$r1,0($r16)
ffffffff809144a4:	00 00 11 80 	ldbu	$r0,0($r17)
ffffffff809144a8:	42 0d e1 43 	sextb	$r1,$r2
ffffffff809144ac:	40 0d e0 43 	sextb	$r0,$r0
ffffffff809144b0:	1b 00 40 c0 	beq	$r2,ffffffff80914520 <strcmp+0x80>
ffffffff809144b4:	02 05 40 40 	cmpeq	$r2,$r0,$r2
ffffffff809144b8:	01 00 e1 43 	addw	$r31,$r1,$r1
ffffffff809144bc:	08 00 40 c4 	bne	$r2,ffffffff809144e0 <strcmp+0x40>
ffffffff809144c0:	0e 00 e0 13 	br	ffffffff809144fc <strcmp+0x5c>
ffffffff809144c4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809144c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809144cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809144d0:	40 0d e0 43 	sextb	$r0,$r0
ffffffff809144d4:	51 07 e2 43 	mov	$r2,$r17
ffffffff809144d8:	02 05 20 40 	cmpeq	$r1,$r0,$r2
ffffffff809144dc:	0c 00 40 c0 	beq	$r2,ffffffff80914510 <strcmp+0x70>
ffffffff809144e0:	01 00 10 fa 	ldi	$r16,1($r16)
ffffffff809144e4:	00 00 30 80 	ldbu	$r1,0($r16)
ffffffff809144e8:	01 00 51 f8 	ldi	$r2,1($r17)
ffffffff809144ec:	01 00 11 80 	ldbu	$r0,1($r17)
ffffffff809144f0:	41 0d e1 43 	sextb	$r1,$r1
ffffffff809144f4:	f6 ff 3f c4 	bne	$r1,ffffffff809144d0 <strcmp+0x30>
ffffffff809144f8:	40 0d e0 43 	sextb	$r0,$r0
ffffffff809144fc:	00 e7 1f 48 	and	$r0,0xff,$r0
ffffffff80914500:	20 00 20 40 	subw	$r1,$r0,$r0
ffffffff80914504:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914508:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091450c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914510:	01 e7 3f 48 	and	$r1,0xff,$r1
ffffffff80914514:	00 e7 1f 48 	and	$r0,0xff,$r0
ffffffff80914518:	20 00 20 40 	subw	$r1,$r0,$r0
ffffffff8091451c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914520:	41 07 ff 43 	clr	$r1
ffffffff80914524:	f5 ff ff 13 	br	ffffffff809144fc <strcmp+0x5c>
ffffffff80914528:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091452c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914530 <memset>:
ffffffff80914530:	ff ff 52 f8 	ldi	$r2,-1($r18)
ffffffff80914534:	16 00 40 c2 	beq	$r18,ffffffff80914590 <memset+0x60>
ffffffff80914538:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff8091453c:	41 07 f0 43 	mov	$r16,$r1
ffffffff80914540:	0c 00 60 c4 	bne	$r3,ffffffff80914574 <memset+0x44>
ffffffff80914544:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914548:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091454c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914550:	50 00 e1 9b 	fillde	80($r1)
ffffffff80914554:	00 00 21 a2 	stb	$r17,0($r1)
ffffffff80914558:	fc ff 42 f8 	ldi	$r2,-4($r2)
ffffffff8091455c:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff80914560:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80914564:	fd ff 21 a2 	stb	$r17,-3($r1)
ffffffff80914568:	fe ff 21 a2 	stb	$r17,-2($r1)
ffffffff8091456c:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80914570:	f7 ff 7f c0 	beq	$r3,ffffffff80914550 <memset+0x20>
ffffffff80914574:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff80914578:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff8091457c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914580:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80914584:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80914588:	03 05 22 40 	cmpeq	$r1,$r2,$r3
ffffffff8091458c:	fc ff 7f c0 	beq	$r3,ffffffff80914580 <memset+0x50>
ffffffff80914590:	40 07 f0 43 	mov	$r16,$r0
ffffffff80914594:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914598:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091459c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809145a0 <printnum>:
ffffffff809145a0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809145a4:	60 3a bd fb 	ldi	$r29,14944($r29)
ffffffff809145a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809145ac:	38 80 7b 8f 	ldl	$r27,-32712($r27)
ffffffff809145b0:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff809145b4:	39 ed 61 4a 	zapnot	$r19,0xf,$r25
ffffffff809145b8:	58 07 f2 43 	mov	$r18,$r24
ffffffff809145bc:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809145c0:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809145c4:	81 05 32 43 	cmpule	$r25,$r18,$r1
ffffffff809145c8:	29 20 80 4a 	subw	$r20,0x1,$r9
ffffffff809145cc:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809145d0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809145d4:	4b 07 f0 43 	mov	$r16,$r11
ffffffff809145d8:	4c 07 f1 43 	mov	$r17,$r12
ffffffff809145dc:	28 00 be ad 	stl	$r13,40(sp)
ffffffff809145e0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809145e4:	4d 07 f5 43 	mov	$r21,$r13
ffffffff809145e8:	03 02 fb 06 	call	$r23,($r27),ffffffff80914df8 <__remlu>
ffffffff809145ec:	0a 00 fb 43 	addw	$r31,$r27,$r10
ffffffff809145f0:	1f 00 20 c4 	bne	$r1,ffffffff80914670 <printnum+0xd0>
ffffffff809145f4:	0a 00 20 cd 	ble	$r9,ffffffff80914620 <printnum+0x80>
ffffffff809145f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809145fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914600:	29 20 20 49 	subw	$r9,0x1,$r9
ffffffff80914604:	51 07 ec 43 	mov	$r12,$r17
ffffffff80914608:	50 07 ed 43 	mov	$r13,$r16
ffffffff8091460c:	5b 07 eb 43 	mov	$r11,$r27
ffffffff80914610:	00 00 5b 07 	call	ra,($r27),ffffffff80914614 <printnum+0x74>
ffffffff80914614:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914618:	ec 39 bd fb 	ldi	$r29,14828($r29)
ffffffff8091461c:	f8 ff 3f c5 	bne	$r9,ffffffff80914600 <printnum+0x60>
ffffffff80914620:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80914624:	2a ed 41 49 	zapnot	$r10,0xf,$r10
ffffffff80914628:	51 07 ec 43 	mov	$r12,$r17
ffffffff8091462c:	5b 07 eb 43 	mov	$r11,$r27
ffffffff80914630:	f5 dd 21 f8 	ldi	$r1,-8715($r1)
ffffffff80914634:	0a 01 41 41 	addl	$r10,$r1,$r10
ffffffff80914638:	00 00 0a 82 	ldbu	$r16,0($r10)
ffffffff8091463c:	50 0d f0 43 	sextb	$r16,$r16
ffffffff80914640:	00 00 5b 07 	call	ra,($r27),ffffffff80914644 <printnum+0xa4>
ffffffff80914644:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914648:	bc 39 bd fb 	ldi	$r29,14780($r29)
ffffffff8091464c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80914650:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914654:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80914658:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff8091465c:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80914660:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80914664:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80914668:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091466c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914670:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914674:	00 81 7b 8f 	ldl	$r27,-32512($r27)
ffffffff80914678:	54 07 e9 43 	mov	$r9,$r20
ffffffff8091467c:	a8 01 fb 06 	call	$r23,($r27),ffffffff80914d20 <__divlu>
ffffffff80914680:	52 07 fb 43 	mov	$r27,$r18
ffffffff80914684:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914688:	10 82 7b 8f 	ldl	$r27,-32240($r27)
ffffffff8091468c:	c4 ff 5b 07 	call	ra,($r27),ffffffff809145a0 <printnum>
ffffffff80914690:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914694:	70 39 bd fb 	ldi	$r29,14704($r29)
ffffffff80914698:	e1 ff ff 13 	br	ffffffff80914620 <printnum+0x80>
ffffffff8091469c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809146a0 <vprintfmt>:
ffffffff809146a0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809146a4:	60 39 bd fb 	ldi	$r29,14688($r29)
ffffffff809146a8:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff809146ac:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809146b0:	ff ff 7d fd 	ldih	$r11,-1($r29)
ffffffff809146b4:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809146b8:	49 07 f1 43 	mov	$r17,$r9
ffffffff809146bc:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809146c0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809146c4:	4a 07 f0 43 	mov	$r16,$r10
ffffffff809146c8:	0c 00 f4 43 	addw	$r31,$r20,$r12
ffffffff809146cc:	38 00 fe ad 	stl	fp,56(sp)
ffffffff809146d0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809146d4:	4f 07 f2 43 	mov	$r18,fp
ffffffff809146d8:	18 de 6b f9 	ldi	$r11,-8680($r11)
ffffffff809146dc:	28 00 be ad 	stl	$r13,40(sp)
ffffffff809146e0:	30 00 de ad 	stl	$r14,48(sp)
ffffffff809146e4:	40 00 7e ae 	stl	$r19,64(sp)
ffffffff809146e8:	48 00 9e ae 	stl	$r20,72(sp)
ffffffff809146ec:	50 00 7e ae 	stl	$r19,80(sp)
ffffffff809146f0:	00 00 0f 82 	ldbu	$r16,0(fp)
ffffffff809146f4:	01 00 cf f9 	ldi	$r14,1(fp)
ffffffff809146f8:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff809146fc:	0b 00 40 c4 	bne	$r2,ffffffff8091472c <vprintfmt+0x8c>
ffffffff80914700:	1b 00 00 c2 	beq	$r16,ffffffff80914770 <vprintfmt+0xd0>
ffffffff80914704:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914708:	5b 07 ea 43 	mov	$r10,$r27
ffffffff8091470c:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80914710:	00 00 5b 07 	call	ra,($r27),ffffffff80914714 <vprintfmt+0x74>
ffffffff80914714:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914718:	ec 38 bd fb 	ldi	$r29,14572($r29)
ffffffff8091471c:	11 00 ee 27 	fillcs	17($r14)
ffffffff80914720:	ff ff 0e 82 	ldbu	$r16,-1($r14)
ffffffff80914724:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff80914728:	f5 ff 5f c0 	beq	$r2,ffffffff80914700 <vprintfmt+0x60>
ffffffff8091472c:	ff ff 9f f8 	ldi	$r4,-1
ffffffff80914730:	20 00 bf fa 	ldi	$r21,32
ffffffff80914734:	45 07 ff 43 	clr	$r5
ffffffff80914738:	48 07 ff 43 	clr	$r8
ffffffff8091473c:	4d 07 e4 43 	mov	$r4,$r13
ffffffff80914740:	00 00 ce 80 	ldbu	$r6,0($r14)
ffffffff80914744:	01 00 ee f9 	ldi	fp,1($r14)
ffffffff80914748:	22 60 c4 48 	subw	$r6,0x23,$r2
ffffffff8091474c:	02 e7 5f 48 	and	$r2,0xff,$r2
ffffffff80914750:	87 a5 4a 48 	cmpule	$r2,0x55,$r7
ffffffff80914754:	f2 00 e0 c0 	beq	$r7,ffffffff80914b20 <vprintfmt+0x480>
ffffffff80914758:	42 01 40 48 	s4addl	$r2,0,$r2
ffffffff8091475c:	02 01 4b 40 	addl	$r2,$r11,$r2
ffffffff80914760:	00 00 42 88 	ldw	$r2,0($r2)
ffffffff80914764:	02 01 a2 43 	addl	$r29,$r2,$r2
ffffffff80914768:	00 00 e2 0f 	jmp	$r31,($r2),ffffffff8091476c <vprintfmt+0xcc>
ffffffff8091476c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914770:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914774:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80914778:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091477c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80914780:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80914784:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80914788:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff8091478c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80914790:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80914794:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914798:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091479c:	30 00 bf fa 	ldi	$r21,48
ffffffff809147a0:	e7 ff ff 13 	br	ffffffff80914740 <vprintfmt+0xa0>
ffffffff809147a4:	01 00 4e 80 	ldbu	$r2,1($r14)
ffffffff809147a8:	24 00 c6 48 	subw	$r6,0x30,$r4
ffffffff809147ac:	4e 07 ef 43 	mov	fp,$r14
ffffffff809147b0:	46 0d e2 43 	sextb	$r2,$r6
ffffffff809147b4:	22 00 c6 48 	subw	$r6,0x30,$r2
ffffffff809147b8:	06 00 e6 43 	addw	$r31,$r6,$r6
ffffffff809147bc:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff809147c0:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff809147c4:	c8 00 40 c0 	beq	$r2,ffffffff80914ae8 <vprintfmt+0x448>
ffffffff809147c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809147cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809147d0:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809147d4:	00 00 6e 80 	ldbu	$r3,0($r14)
ffffffff809147d8:	42 01 80 48 	s4addl	$r4,0,$r2
ffffffff809147dc:	04 00 82 40 	addw	$r4,$r2,$r4
ffffffff809147e0:	04 01 84 40 	addl	$r4,$r4,$r4
ffffffff809147e4:	43 0d e3 43 	sextb	$r3,$r3
ffffffff809147e8:	04 00 86 40 	addw	$r4,$r6,$r4
ffffffff809147ec:	22 00 66 48 	subw	$r3,0x30,$r2
ffffffff809147f0:	24 00 86 48 	subw	$r4,0x30,$r4
ffffffff809147f4:	06 00 e3 43 	addw	$r31,$r3,$r6
ffffffff809147f8:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff809147fc:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff80914800:	f3 ff 5f c4 	bne	$r2,ffffffff809147d0 <vprintfmt+0x130>
ffffffff80914804:	b8 00 e0 13 	br	ffffffff80914ae8 <vprintfmt+0x448>
ffffffff80914808:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff8091480c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914810:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914814:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80914818:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff8091481c:	00 00 01 8a 	ldw	$r16,0($r1)
ffffffff80914820:	00 00 5b 07 	call	ra,($r27),ffffffff80914824 <vprintfmt+0x184>
ffffffff80914824:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914828:	dc 37 bd fb 	ldi	$r29,14300($r29)
ffffffff8091482c:	b0 ff ff 13 	br	ffffffff809146f0 <vprintfmt+0x50>
ffffffff80914830:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80914834:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80914838:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff8091483c:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80914840:	e0 00 20 c4 	bne	$r1,ffffffff80914bc4 <vprintfmt+0x524>
ffffffff80914844:	00 00 cc 8d 	ldl	$r14,0($r12)
ffffffff80914848:	52 07 ee 43 	mov	$r14,$r18
ffffffff8091484c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80914850:	0a 00 7f fa 	ldi	$r19,10
ffffffff80914854:	2e 00 c0 d5 	bge	$r14,ffffffff80914910 <vprintfmt+0x270>
ffffffff80914858:	60 00 be ae 	stl	$r21,96(sp)
ffffffff8091485c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914860:	2d 00 1f fa 	ldi	$r16,45
ffffffff80914864:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914868:	00 00 5b 07 	call	ra,($r27),ffffffff8091486c <vprintfmt+0x1cc>
ffffffff8091486c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914870:	94 37 bd fb 	ldi	$r29,14228($r29)
ffffffff80914874:	32 01 ee 43 	negl	$r14,$r18
ffffffff80914878:	0a 00 7f fa 	ldi	$r19,10
ffffffff8091487c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80914880:	23 00 e0 13 	br	ffffffff80914910 <vprintfmt+0x270>
ffffffff80914884:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80914888:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff8091488c:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80914890:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff80914894:	21 01 e2 43 	negl	$r2,$r1
ffffffff80914898:	21 04 42 44 	selge	$r2,$r2,$r1,$r1
ffffffff8091489c:	13 00 e1 43 	addw	$r31,$r1,$r19
ffffffff809148a0:	41 c5 60 4a 	cmple	$r19,0x6,$r1
ffffffff809148a4:	af 00 20 c0 	beq	$r1,ffffffff80914b64 <vprintfmt+0x4c4>
ffffffff809148a8:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff809148ac:	81 01 60 4a 	s8addl	$r19,0,$r1
ffffffff809148b0:	d8 df 42 f8 	ldi	$r2,-8232($r2)
ffffffff809148b4:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff809148b8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809148bc:	a9 00 20 c0 	beq	$r1,ffffffff80914b64 <vprintfmt+0x4c4>
ffffffff809148c0:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809148c4:	53 07 e1 43 	mov	$r1,$r19
ffffffff809148c8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809148cc:	50 07 ea 43 	mov	$r10,$r16
ffffffff809148d0:	08 d3 52 fa 	ldi	$r18,-11512($r18)
ffffffff809148d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809148d8:	50 81 7b 8f 	ldl	$r27,-32432($r27)
ffffffff809148dc:	f8 00 5b 07 	call	ra,($r27),ffffffff80914cc0 <printfmt>
ffffffff809148e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809148e4:	20 37 bd fb 	ldi	$r29,14112($r29)
ffffffff809148e8:	81 ff ff 13 	br	ffffffff809146f0 <vprintfmt+0x50>
ffffffff809148ec:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff809148f0:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff809148f4:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff809148f8:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff809148fc:	c0 00 20 c4 	bne	$r1,ffffffff80914c00 <vprintfmt+0x560>
ffffffff80914900:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80914904:	08 00 7f fa 	ldi	$r19,8
ffffffff80914908:	4c 07 e2 43 	mov	$r2,$r12
ffffffff8091490c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914910:	54 07 ed 43 	mov	$r13,$r20
ffffffff80914914:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914918:	50 07 ea 43 	mov	$r10,$r16
ffffffff8091491c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914920:	10 82 7b 8f 	ldl	$r27,-32240($r27)
ffffffff80914924:	1e ff 5b 07 	call	ra,($r27),ffffffff809145a0 <printnum>
ffffffff80914928:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091492c:	d8 36 bd fb 	ldi	$r29,14040($r29)
ffffffff80914930:	6f ff ff 13 	br	ffffffff809146f0 <vprintfmt+0x50>
ffffffff80914934:	08 20 00 49 	addw	$r8,0x1,$r8
ffffffff80914938:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091493c:	80 ff ff 13 	br	ffffffff80914740 <vprintfmt+0xa0>
ffffffff80914940:	60 00 be ae 	stl	$r21,96(sp)
ffffffff80914944:	30 00 1f fa 	ldi	$r16,48
ffffffff80914948:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091494c:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914950:	00 00 5b 07 	call	ra,($r27),ffffffff80914954 <vprintfmt+0x2b4>
ffffffff80914954:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914958:	ac 36 bd fb 	ldi	$r29,13996($r29)
ffffffff8091495c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914960:	78 00 1f fa 	ldi	$r16,120
ffffffff80914964:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914968:	00 00 5b 07 	call	ra,($r27),ffffffff8091496c <vprintfmt+0x2cc>
ffffffff8091496c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914970:	94 36 bd fb 	ldi	$r29,13972($r29)
ffffffff80914974:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80914978:	10 00 7f fa 	ldi	$r19,16
ffffffff8091497c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80914980:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80914984:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80914988:	00 00 41 8e 	ldl	$r18,0($r1)
ffffffff8091498c:	e0 ff ff 13 	br	ffffffff80914910 <vprintfmt+0x270>
ffffffff80914990:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80914994:	06 a5 a5 4a 	cmpeq	$r21,0x2d,$r6
ffffffff80914998:	21 05 ed 43 	cmplt	$r31,$r13,$r1
ffffffff8091499c:	ff ff 7d ff 	ldih	$r27,-1($r29)
ffffffff809149a0:	06 05 c0 48 	cmpeq	$r6,0,$r6
ffffffff809149a4:	06 de 7b fb 	ldi	$r27,-8698($r27)
ffffffff809149a8:	01 07 26 40 	and	$r1,$r6,$r1
ffffffff809149ac:	02 01 6c 40 	addl	$r3,$r12,$r2
ffffffff809149b0:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff809149b4:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff809149b8:	42 00 5b 44 	seleq	$r2,$r27,$r2,$r2
ffffffff809149bc:	96 00 20 c4 	bne	$r1,ffffffff80914c18 <vprintfmt+0x578>
ffffffff809149c0:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff809149c4:	41 0d e1 43 	sextb	$r1,$r1
ffffffff809149c8:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff809149cc:	19 00 00 c2 	beq	$r16,ffffffff80914a34 <vprintfmt+0x394>
ffffffff809149d0:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff809149d4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809149d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809149dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809149e0:	03 00 80 c8 	blt	$r4,ffffffff809149f0 <vprintfmt+0x350>
ffffffff809149e4:	24 20 80 48 	subw	$r4,0x1,$r4
ffffffff809149e8:	01 00 c4 f8 	ldi	$r6,1($r4)
ffffffff809149ec:	11 00 c0 c0 	beq	$r6,ffffffff80914a34 <vprintfmt+0x394>
ffffffff809149f0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809149f4:	65 00 a0 c4 	bne	$r5,ffffffff80914b8c <vprintfmt+0x4ec>
ffffffff809149f8:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff809149fc:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80914a00:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914a04:	00 00 5b 07 	call	ra,($r27),ffffffff80914a08 <vprintfmt+0x368>
ffffffff80914a08:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914a0c:	f8 35 bd fb 	ldi	$r29,13816($r29)
ffffffff80914a10:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80914a14:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80914a18:	f6 ff 2e 80 	ldbu	$r1,-10($r14)
ffffffff80914a1c:	00 00 ee 27 	fillcs	0($r14)
ffffffff80914a20:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff80914a24:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80914a28:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80914a2c:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80914a30:	eb ff 1f c6 	bne	$r16,ffffffff809149e0 <vprintfmt+0x340>
ffffffff80914a34:	2e ff bf cd 	ble	$r13,ffffffff809146f0 <vprintfmt+0x50>
ffffffff80914a38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914a3c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914a40:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff80914a44:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914a48:	20 00 1f fa 	ldi	$r16,32
ffffffff80914a4c:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914a50:	00 00 5b 07 	call	ra,($r27),ffffffff80914a54 <vprintfmt+0x3b4>
ffffffff80914a54:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914a58:	ac 35 bd fb 	ldi	$r29,13740($r29)
ffffffff80914a5c:	f8 ff bf c5 	bne	$r13,ffffffff80914a40 <vprintfmt+0x3a0>
ffffffff80914a60:	23 ff ff 13 	br	ffffffff809146f0 <vprintfmt+0x50>
ffffffff80914a64:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80914a68:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80914a6c:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80914a70:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80914a74:	5c 00 20 c4 	bne	$r1,ffffffff80914be8 <vprintfmt+0x548>
ffffffff80914a78:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80914a7c:	0a 00 7f fa 	ldi	$r19,10
ffffffff80914a80:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80914a84:	a2 ff ff 13 	br	ffffffff80914910 <vprintfmt+0x270>
ffffffff80914a88:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80914a8c:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80914a90:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80914a94:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80914a98:	4d 00 20 c4 	bne	$r1,ffffffff80914bd0 <vprintfmt+0x530>
ffffffff80914a9c:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80914aa0:	10 00 7f fa 	ldi	$r19,16
ffffffff80914aa4:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80914aa8:	99 ff ff 13 	br	ffffffff80914910 <vprintfmt+0x270>
ffffffff80914aac:	4e 07 ef 43 	mov	fp,$r14
ffffffff80914ab0:	01 00 bf f8 	ldi	$r5,1
ffffffff80914ab4:	22 ff ff 13 	br	ffffffff80914740 <vprintfmt+0xa0>
ffffffff80914ab8:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914abc:	25 00 1f fa 	ldi	$r16,37
ffffffff80914ac0:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914ac4:	00 00 5b 07 	call	ra,($r27),ffffffff80914ac8 <vprintfmt+0x428>
ffffffff80914ac8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914acc:	38 35 bd fb 	ldi	$r29,13624($r29)
ffffffff80914ad0:	07 ff ff 13 	br	ffffffff809146f0 <vprintfmt+0x50>
ffffffff80914ad4:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff80914ad8:	4e 07 ef 43 	mov	fp,$r14
ffffffff80914adc:	02 01 2c 40 	addl	$r1,$r12,$r2
ffffffff80914ae0:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80914ae4:	00 00 82 88 	ldw	$r4,0($r2)
ffffffff80914ae8:	42 07 ed 43 	mov	$r13,$r2
ffffffff80914aec:	ff ff 7f f8 	ldi	$r3,-1
ffffffff80914af0:	42 10 a4 45 	sellt	$r13,$r4,$r2,$r2
ffffffff80914af4:	84 10 a3 45 	sellt	$r13,$r3,$r4,$r4
ffffffff80914af8:	4d 07 e2 43 	mov	$r2,$r13
ffffffff80914afc:	10 ff ff 13 	br	ffffffff80914740 <vprintfmt+0xa0>
ffffffff80914b00:	4e 07 ef 43 	mov	fp,$r14
ffffffff80914b04:	2d 00 bf fa 	ldi	$r21,45
ffffffff80914b08:	0d ff ff 13 	br	ffffffff80914740 <vprintfmt+0xa0>
ffffffff80914b0c:	54 07 ed 43 	mov	$r13,$r20
ffffffff80914b10:	4e 07 ef 43 	mov	fp,$r14
ffffffff80914b14:	94 12 80 4e 	sellt	$r20,0,$r20,$r20
ffffffff80914b18:	0d 00 f4 43 	addw	$r31,$r20,$r13
ffffffff80914b1c:	08 ff ff 13 	br	ffffffff80914740 <vprintfmt+0xa0>
ffffffff80914b20:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914b24:	25 00 1f fa 	ldi	$r16,37
ffffffff80914b28:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914b2c:	4f 07 ee 43 	mov	$r14,fp
ffffffff80914b30:	00 00 5b 07 	call	ra,($r27),ffffffff80914b34 <vprintfmt+0x494>
ffffffff80914b34:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914b38:	cc 34 bd fb 	ldi	$r29,13516($r29)
ffffffff80914b3c:	ff ff 2e 80 	ldbu	$r1,-1($r14)
ffffffff80914b40:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff80914b44:	ea fe 3f c4 	bne	$r1,ffffffff809146f0 <vprintfmt+0x50>
ffffffff80914b48:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b4c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914b50:	ff ff ef f9 	ldi	fp,-1(fp)
ffffffff80914b54:	ff ff 2f 80 	ldbu	$r1,-1(fp)
ffffffff80914b58:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff80914b5c:	fc ff 3f c0 	beq	$r1,ffffffff80914b50 <vprintfmt+0x4b0>
ffffffff80914b60:	e3 fe ff 13 	br	ffffffff809146f0 <vprintfmt+0x50>
ffffffff80914b64:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914b68:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914b6c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80914b70:	0d de 52 fa 	ldi	$r18,-8691($r18)
ffffffff80914b74:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914b78:	50 81 7b 8f 	ldl	$r27,-32432($r27)
ffffffff80914b7c:	50 00 5b 07 	call	ra,($r27),ffffffff80914cc0 <printfmt>
ffffffff80914b80:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914b84:	80 34 bd fb 	ldi	$r29,13440($r29)
ffffffff80914b88:	d9 fe ff 13 	br	ffffffff809146f0 <vprintfmt+0x50>
ffffffff80914b8c:	21 00 24 48 	subw	$r1,0x20,$r1
ffffffff80914b90:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80914b94:	81 c5 2b 48 	cmpule	$r1,0x5e,$r1
ffffffff80914b98:	97 ff 3f c4 	bne	$r1,ffffffff809149f8 <vprintfmt+0x358>
ffffffff80914b9c:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80914ba0:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80914ba4:	3f 00 1f fa 	ldi	$r16,63
ffffffff80914ba8:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914bac:	00 00 5b 07 	call	ra,($r27),ffffffff80914bb0 <vprintfmt+0x510>
ffffffff80914bb0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914bb4:	50 34 bd fb 	ldi	$r29,13392($r29)
ffffffff80914bb8:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80914bbc:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80914bc0:	95 ff ff 13 	br	ffffffff80914a18 <vprintfmt+0x378>
ffffffff80914bc4:	1f ff 1f c5 	bne	$r8,ffffffff80914844 <vprintfmt+0x1a4>
ffffffff80914bc8:	00 00 cc 89 	ldw	$r14,0($r12)
ffffffff80914bcc:	1e ff ff 13 	br	ffffffff80914848 <vprintfmt+0x1a8>
ffffffff80914bd0:	b2 ff 1f c5 	bne	$r8,ffffffff80914a9c <vprintfmt+0x3fc>
ffffffff80914bd4:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80914bd8:	10 00 7f fa 	ldi	$r19,16
ffffffff80914bdc:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80914be0:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80914be4:	4a ff ff 13 	br	ffffffff80914910 <vprintfmt+0x270>
ffffffff80914be8:	a3 ff 1f c5 	bne	$r8,ffffffff80914a78 <vprintfmt+0x3d8>
ffffffff80914bec:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80914bf0:	0a 00 7f fa 	ldi	$r19,10
ffffffff80914bf4:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80914bf8:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80914bfc:	44 ff ff 13 	br	ffffffff80914910 <vprintfmt+0x270>
ffffffff80914c00:	3f ff 1f c5 	bne	$r8,ffffffff80914900 <vprintfmt+0x260>
ffffffff80914c04:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80914c08:	08 00 7f fa 	ldi	$r19,8
ffffffff80914c0c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80914c10:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80914c14:	3e ff ff 13 	br	ffffffff80914910 <vprintfmt+0x270>
ffffffff80914c18:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914c1c:	b8 80 7b 8f 	ldl	$r27,-32584($r27)
ffffffff80914c20:	51 07 e4 43 	mov	$r4,$r17
ffffffff80914c24:	50 07 e2 43 	mov	$r2,$r16
ffffffff80914c28:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff80914c2c:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80914c30:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80914c34:	60 00 be ae 	stl	$r21,96(sp)
ffffffff80914c38:	f5 fd 5b 07 	call	ra,($r27),ffffffff80914410 <strnlen>
ffffffff80914c3c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914c40:	2d 00 a0 41 	subw	$r13,$r0,$r13
ffffffff80914c44:	c4 33 bd fb 	ldi	$r29,13252($r29)
ffffffff80914c48:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff80914c4c:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80914c50:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80914c54:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80914c58:	10 00 a0 cd 	ble	$r13,ffffffff80914c9c <vprintfmt+0x5fc>
ffffffff80914c5c:	0e 00 f5 43 	addw	$r31,$r21,$r14
ffffffff80914c60:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff80914c64:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80914c68:	51 07 e9 43 	mov	$r9,$r17
ffffffff80914c6c:	50 07 ee 43 	mov	$r14,$r16
ffffffff80914c70:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80914c74:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80914c78:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff80914c7c:	00 00 5b 07 	call	ra,($r27),ffffffff80914c80 <vprintfmt+0x5e0>
ffffffff80914c80:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914c84:	80 33 bd fb 	ldi	$r29,13184($r29)
ffffffff80914c88:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff80914c8c:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80914c90:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80914c94:	f2 ff bf c5 	bne	$r13,ffffffff80914c60 <vprintfmt+0x5c0>
ffffffff80914c98:	4d 07 ff 43 	clr	$r13
ffffffff80914c9c:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80914ca0:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80914ca4:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80914ca8:	91 fe 1f c2 	beq	$r16,ffffffff809146f0 <vprintfmt+0x50>
ffffffff80914cac:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80914cb0:	4b ff ff 13 	br	ffffffff809149e0 <vprintfmt+0x340>
ffffffff80914cb4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914cb8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914cbc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914cc0 <printfmt>:
ffffffff80914cc0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80914cc4:	40 33 bd fb 	ldi	$r29,13120($r29)
ffffffff80914cc8:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff80914ccc:	18 00 5f f8 	ldi	$r2,24
ffffffff80914cd0:	18 00 5e a8 	stw	$r2,24(sp)
ffffffff80914cd4:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80914cd8:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff80914cdc:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80914ce0:	18 00 9e 8e 	ldl	$r20,24(sp)
ffffffff80914ce4:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff80914ce8:	53 07 e1 43 	mov	$r1,$r19
ffffffff80914cec:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff80914cf0:	00 00 5e af 	stl	ra,0(sp)
ffffffff80914cf4:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80914cf8:	78 00 be ae 	stl	$r21,120(sp)
ffffffff80914cfc:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80914d00:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914d04:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff80914d08:	65 fe 5b 07 	call	ra,($r27),ffffffff809146a0 <vprintfmt>
ffffffff80914d0c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914d10:	f4 32 bd fb 	ldi	$r29,13044($r29)
ffffffff80914d14:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914d18:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80914d1c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80914d20 <__divlu>:
ffffffff80914d20:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80914d24:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80914d28:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80914d2c:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80914d30:	42 07 18 43 	or	$r24,$r24,$r2
ffffffff80914d34:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff80914d38:	5b 07 ff 43 	clr	$r27
ffffffff80914d3c:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80914d40:	40 27 e0 4b 	mov	0x1,$r0
ffffffff80914d44:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80914d48:	0d 00 20 c0 	beq	$r1,ffffffff80914d80 <__divlu+0x60>
ffffffff80914d4c:	7c 05 22 40 	cmpult	$r1,$r2,$r28
ffffffff80914d50:	03 00 20 c8 	blt	$r1,ffffffff80914d60 <__divlu+0x40>
ffffffff80914d54:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff80914d58:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff80914d5c:	fb ff 9f c7 	bne	$r28,ffffffff80914d4c <__divlu+0x2c>
ffffffff80914d60:	04 01 60 43 	addl	$r27,$r0,$r4
ffffffff80914d64:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80914d68:	9c 05 22 40 	cmpule	$r1,$r2,$r28
ffffffff80914d6c:	23 01 41 40 	subl	$r2,$r1,$r3
ffffffff80914d70:	7b 17 84 47 	selne	$r28,$r4,$r27,$r27
ffffffff80914d74:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80914d78:	42 14 83 47 	selne	$r28,$r3,$r2,$r2
ffffffff80914d7c:	f8 ff 1f c4 	bne	$r0,ffffffff80914d60 <__divlu+0x40>
ffffffff80914d80:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80914d84:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80914d88:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff80914d8c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80914d90:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80914d94:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80914d98:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80914d9c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914da0 <__divl>:
ffffffff80914da0:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80914da4:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80914da8:	de ff 9f d7 	bge	$r28,ffffffff80914d24 <__divlu+0x4>
ffffffff80914dac:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80914db0:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80914db4:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80914db8:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80914dbc:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80914dc0:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80914dc4:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80914dc8:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80914dcc:	d4 ff ff 16 	bsr	$r23,ffffffff80914d20 <__divlu>
ffffffff80914dd0:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80914dd4:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80914dd8:	9c 07 19 43 	xor	$r24,$r25,$r28
ffffffff80914ddc:	23 01 fb 43 	negl	$r27,$r3
ffffffff80914de0:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80914de4:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80914de8:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80914dec:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80914df0:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80914df4:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914df8 <__remlu>:
ffffffff80914df8:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff80914dfc:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80914e00:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80914e04:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80914e08:	5b 07 18 43 	or	$r24,$r24,$r27
ffffffff80914e0c:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff80914e10:	42 07 ff 43 	clr	$r2
ffffffff80914e14:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80914e18:	40 27 e0 4b 	mov	0x1,$r0
ffffffff80914e1c:	0b 00 20 c0 	beq	$r1,ffffffff80914e4c <__remlu+0x54>
ffffffff80914e20:	7c 05 3b 40 	cmpult	$r1,$r27,$r28
ffffffff80914e24:	03 00 20 c8 	blt	$r1,ffffffff80914e34 <__remlu+0x3c>
ffffffff80914e28:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff80914e2c:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff80914e30:	fb ff 9f c7 	bne	$r28,ffffffff80914e20 <__remlu+0x28>
ffffffff80914e34:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80914e38:	9c 05 3b 40 	cmpule	$r1,$r27,$r28
ffffffff80914e3c:	23 01 61 43 	subl	$r27,$r1,$r3
ffffffff80914e40:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80914e44:	7b 17 83 47 	selne	$r28,$r3,$r27,$r27
ffffffff80914e48:	fa ff 1f c4 	bne	$r0,ffffffff80914e34 <__remlu+0x3c>
ffffffff80914e4c:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80914e50:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80914e54:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff80914e58:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80914e5c:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80914e60:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80914e64:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914e68 <__reml>:
ffffffff80914e68:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff80914e6c:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80914e70:	e2 ff 9f d7 	bge	$r28,ffffffff80914dfc <__remlu+0x4>
ffffffff80914e74:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80914e78:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80914e7c:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80914e80:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80914e84:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80914e88:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80914e8c:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80914e90:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80914e94:	d8 ff ff 16 	bsr	$r23,ffffffff80914df8 <__remlu>
ffffffff80914e98:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80914e9c:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80914ea0:	5c 07 18 43 	or	$r24,$r24,$r28
ffffffff80914ea4:	23 01 fb 43 	negl	$r27,$r3
ffffffff80914ea8:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80914eac:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80914eb0:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80914eb4:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80914eb8:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80914ebc:	00 00 fe ff 	ldih	$r31,0(sp)
