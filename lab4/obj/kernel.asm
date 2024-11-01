
bin/kernel：     文件格式 elf64-sw_64


Disassembly of section .text:

ffffffff80910000 <kern_entry>:
ffffffff80910000:	00 00 60 13 	br	$r27,ffffffff80910004 <kern_entry+0x4>
ffffffff80910004:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910008:	fc 7f bd fb 	ldi	$r29,32764($r29)
ffffffff8091000c:	98 81 dd 8f 	ldl	sp,-32360($r29)
ffffffff80910010:	68 80 7d 8f 	ldl	$r27,-32664($r29)
ffffffff80910014:	02 00 5b 07 	call	ra,($r27),ffffffff80910020 <kern_init>
	...

ffffffff80910020 <kern_init>:
ffffffff80910020:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910024:	e0 7f bd fb 	ldi	$r29,32736($r29)
ffffffff80910028:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff8091002c:	80 80 10 8e 	ldl	$r16,-32640($r16)
ffffffff80910030:	00 00 5d fe 	ldih	$r18,0($r29)
ffffffff80910034:	f0 80 52 8e 	ldl	$r18,-32528($r18)
ffffffff80910038:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091003c:	51 07 ff 43 	clr	$r17
ffffffff80910040:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910044:	28 81 7b 8f 	ldl	$r27,-32472($r27)
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
ffffffff80910098:	b8 81 7b 8f 	ldl	$r27,-32328($r27)
ffffffff8091009c:	dc 00 5b 07 	call	ra,($r27),ffffffff80910410 <trap_init>
ffffffff809100a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100a4:	60 7f bd fb 	ldi	$r29,32608($r29)
ffffffff809100a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100ac:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff809100b0:	43 0c 5b 07 	call	ra,($r27),ffffffff809131c0 <pmm_init>
ffffffff809100b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100b8:	4c 7f bd fb 	ldi	$r29,32588($r29)
ffffffff809100bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100c0:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff809100c4:	0a 04 5b 07 	call	ra,($r27),ffffffff809110f0 <vmm_init>
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
ffffffff8091011c:	e8 ce 21 8c 	ldl	$r1,-12568($r1)
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
ffffffff80910240:	f0 81 41 88 	ldw	$r2,-32272($r1)
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
ffffffff80910270:	18 81 7b 8f 	ldl	$r27,-32488($r27)
ffffffff80910274:	a2 ff 5b 07 	call	ra,($r27),ffffffff80910100 <intr_disable>
ffffffff80910278:	ff ff ff 13 	br	ffffffff80910278 <__panic+0x48>
ffffffff8091027c:	01 00 5f f8 	ldi	$r2,1
ffffffff80910280:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910284:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910288:	52 07 f1 43 	mov	$r17,$r18
ffffffff8091028c:	51 07 f0 43 	mov	$r16,$r17
ffffffff80910290:	f0 81 41 a8 	stw	$r2,-32272($r1)
ffffffff80910294:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff80910298:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091029c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff809102a0:	18 00 3f f8 	ldi	$r1,24
ffffffff809102a4:	f0 ce 10 fa 	ldi	$r16,-12560($r16)
ffffffff809102a8:	18 00 3e a8 	stw	$r1,24(sp)
ffffffff809102ac:	b8 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809102b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102b4:	50 7d bd fb 	ldi	$r29,32080($r29)
ffffffff809102b8:	10 00 3e 8e 	ldl	$r17,16(sp)
ffffffff809102bc:	18 00 5e 8e 	ldl	$r18,24(sp)
ffffffff809102c0:	50 07 e9 43 	mov	$r9,$r16
ffffffff809102c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102c8:	90 81 7b 8f 	ldl	$r27,-32368($r27)
ffffffff809102cc:	9c ff 5b 07 	call	ra,($r27),ffffffff80910140 <vcprintf>
ffffffff809102d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102d4:	30 7d bd fb 	ldi	$r29,32048($r29)
ffffffff809102d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102dc:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809102e0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102e4:	d6 ce 10 fa 	ldi	$r16,-12586($r16)
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
ffffffff80910320:	0c cf 10 fa 	ldi	$r16,-12532($r16)
ffffffff80910324:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910328:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff8091032c:	f0 80 29 8d 	ldl	$r9,-32528($r9)
ffffffff80910330:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80910334:	68 80 4a 8d 	ldl	$r10,-32664($r10)
ffffffff80910338:	95 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff8091033c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910340:	c4 7c bd fb 	ldi	$r29,31940($r29)
ffffffff80910344:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910348:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091034c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910350:	51 07 ea 43 	mov	$r10,$r17
ffffffff80910354:	25 cf 10 fa 	ldi	$r16,-12507($r16)
ffffffff80910358:	8d ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff8091035c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910360:	a4 7c bd fb 	ldi	$r29,31908($r29)
ffffffff80910364:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff80910368:	00 81 31 8e 	ldl	$r17,-32512($r17)
ffffffff8091036c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910370:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910374:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910378:	42 cf 10 fa 	ldi	$r16,-12478($r16)
ffffffff8091037c:	84 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910380:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910384:	80 7c bd fb 	ldi	$r29,31872($r29)
ffffffff80910388:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff8091038c:	80 80 31 8e 	ldl	$r17,-32640($r17)
ffffffff80910390:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910394:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910398:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091039c:	5f cf 10 fa 	ldi	$r16,-12449($r16)
ffffffff809103a0:	7b ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809103a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103a8:	5c 7c bd fb 	ldi	$r29,31836($r29)
ffffffff809103ac:	51 07 e9 43 	mov	$r9,$r17
ffffffff809103b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103b4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809103b8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103bc:	7c cf 10 fa 	ldi	$r16,-12420($r16)
ffffffff809103c0:	73 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809103c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103c8:	ff 03 29 fa 	ldi	$r17,1023($r9)
ffffffff809103cc:	3c 7c bd fb 	ldi	$r29,31804($r29)
ffffffff809103d0:	31 01 2a 42 	subl	$r17,$r10,$r17
ffffffff809103d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103d8:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809103dc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103e0:	ff 03 31 f8 	ldi	$r1,1023($r17)
ffffffff809103e4:	99 cf 10 fa 	ldi	$r16,-12391($r16)
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
ffffffff80910428:	90 80 10 8e 	ldl	$r16,-32624($r16)
ffffffff8091042c:	34 00 00 02 	sys_call	0x34
ffffffff80910430:	02 00 3f fa 	ldi	$r17,2
ffffffff80910434:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910438:	58 81 10 8e 	ldl	$r16,-32424($r16)
ffffffff8091043c:	34 00 00 02 	sys_call	0x34
ffffffff80910440:	03 00 3f fa 	ldi	$r17,3
ffffffff80910444:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910448:	50 81 10 8e 	ldl	$r16,-32432($r16)
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
ffffffff80910488:	c3 cf 10 fa 	ldi	$r16,-12349($r16)
ffffffff8091048c:	40 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910490:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910494:	70 7b bd fb 	ldi	$r29,31600($r29)
ffffffff80910498:	08 00 29 8e 	ldl	$r17,8($r9)
ffffffff8091049c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809104a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104a8:	d8 cf 10 fa 	ldi	$r16,-12328($r16)
ffffffff809104ac:	38 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809104b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104b4:	50 7b bd fb 	ldi	$r29,31568($r29)
ffffffff809104b8:	10 00 29 8e 	ldl	$r17,16($r9)
ffffffff809104bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809104c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104c8:	ed cf 10 fa 	ldi	$r16,-12307($r16)
ffffffff809104cc:	30 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809104d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104d4:	30 7b bd fb 	ldi	$r29,31536($r29)
ffffffff809104d8:	18 00 29 8e 	ldl	$r17,24($r9)
ffffffff809104dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809104e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104e8:	02 d0 10 fa 	ldi	$r16,-12286($r16)
ffffffff809104ec:	28 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809104f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104f4:	10 7b bd fb 	ldi	$r29,31504($r29)
ffffffff809104f8:	20 00 29 8e 	ldl	$r17,32($r9)
ffffffff809104fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910500:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910504:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910508:	17 d0 10 fa 	ldi	$r16,-12265($r16)
ffffffff8091050c:	20 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910510:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910514:	f0 7a bd fb 	ldi	$r29,31472($r29)
ffffffff80910518:	28 00 29 8e 	ldl	$r17,40($r9)
ffffffff8091051c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910520:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910524:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910528:	2c d0 10 fa 	ldi	$r16,-12244($r16)
ffffffff8091052c:	18 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910530:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910534:	d0 7a bd fb 	ldi	$r29,31440($r29)
ffffffff80910538:	30 00 29 8e 	ldl	$r17,48($r9)
ffffffff8091053c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910540:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910544:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910548:	41 d0 10 fa 	ldi	$r16,-12223($r16)
ffffffff8091054c:	10 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910550:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910554:	b0 7a bd fb 	ldi	$r29,31408($r29)
ffffffff80910558:	38 00 29 8e 	ldl	$r17,56($r9)
ffffffff8091055c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910560:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910564:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910568:	56 d0 10 fa 	ldi	$r16,-12202($r16)
ffffffff8091056c:	08 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910570:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910574:	90 7a bd fb 	ldi	$r29,31376($r29)
ffffffff80910578:	40 00 29 8e 	ldl	$r17,64($r9)
ffffffff8091057c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910580:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910584:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910588:	6b d0 10 fa 	ldi	$r16,-12181($r16)
ffffffff8091058c:	00 ff 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910590:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910594:	70 7a bd fb 	ldi	$r29,31344($r29)
ffffffff80910598:	48 00 29 8e 	ldl	$r17,72($r9)
ffffffff8091059c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809105a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105a8:	80 d0 10 fa 	ldi	$r16,-12160($r16)
ffffffff809105ac:	f8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809105b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105b4:	50 7a bd fb 	ldi	$r29,31312($r29)
ffffffff809105b8:	50 00 29 8e 	ldl	$r17,80($r9)
ffffffff809105bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809105c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105c8:	95 d0 10 fa 	ldi	$r16,-12139($r16)
ffffffff809105cc:	f0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809105d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105d4:	30 7a bd fb 	ldi	$r29,31280($r29)
ffffffff809105d8:	58 00 29 8e 	ldl	$r17,88($r9)
ffffffff809105dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809105e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105e8:	aa d0 10 fa 	ldi	$r16,-12118($r16)
ffffffff809105ec:	e8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809105f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105f4:	10 7a bd fb 	ldi	$r29,31248($r29)
ffffffff809105f8:	60 00 29 8e 	ldl	$r17,96($r9)
ffffffff809105fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910600:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910604:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910608:	bf d0 10 fa 	ldi	$r16,-12097($r16)
ffffffff8091060c:	e0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910610:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910614:	f0 79 bd fb 	ldi	$r29,31216($r29)
ffffffff80910618:	68 00 29 8e 	ldl	$r17,104($r9)
ffffffff8091061c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910620:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910624:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910628:	d4 d0 10 fa 	ldi	$r16,-12076($r16)
ffffffff8091062c:	d8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910630:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910634:	d0 79 bd fb 	ldi	$r29,31184($r29)
ffffffff80910638:	70 00 29 8e 	ldl	$r17,112($r9)
ffffffff8091063c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910640:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910644:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910648:	e9 d0 10 fa 	ldi	$r16,-12055($r16)
ffffffff8091064c:	d0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910650:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910654:	b0 79 bd fb 	ldi	$r29,31152($r29)
ffffffff80910658:	78 00 29 8e 	ldl	$r17,120($r9)
ffffffff8091065c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910660:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910664:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910668:	fe d0 10 fa 	ldi	$r16,-12034($r16)
ffffffff8091066c:	c8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910670:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910674:	90 79 bd fb 	ldi	$r29,31120($r29)
ffffffff80910678:	08 01 29 8e 	ldl	$r17,264($r9)
ffffffff8091067c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910680:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910684:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910688:	13 d1 10 fa 	ldi	$r16,-12013($r16)
ffffffff8091068c:	c0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910690:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910694:	70 79 bd fb 	ldi	$r29,31088($r29)
ffffffff80910698:	10 01 29 8e 	ldl	$r17,272($r9)
ffffffff8091069c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809106a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106a8:	28 d1 10 fa 	ldi	$r16,-11992($r16)
ffffffff809106ac:	b8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809106b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106b4:	50 79 bd fb 	ldi	$r29,31056($r29)
ffffffff809106b8:	18 01 29 8e 	ldl	$r17,280($r9)
ffffffff809106bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809106c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106c8:	3d d1 10 fa 	ldi	$r16,-11971($r16)
ffffffff809106cc:	b0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809106d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106d4:	30 79 bd fb 	ldi	$r29,31024($r29)
ffffffff809106d8:	98 00 29 8e 	ldl	$r17,152($r9)
ffffffff809106dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809106e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106e8:	52 d1 10 fa 	ldi	$r16,-11950($r16)
ffffffff809106ec:	a8 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809106f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106f4:	10 79 bd fb 	ldi	$r29,30992($r29)
ffffffff809106f8:	a0 00 29 8e 	ldl	$r17,160($r9)
ffffffff809106fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910700:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910704:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910708:	67 d1 10 fa 	ldi	$r16,-11929($r16)
ffffffff8091070c:	a0 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910710:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910714:	f0 78 bd fb 	ldi	$r29,30960($r29)
ffffffff80910718:	a8 00 29 8e 	ldl	$r17,168($r9)
ffffffff8091071c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910720:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910724:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910728:	7c d1 10 fa 	ldi	$r16,-11908($r16)
ffffffff8091072c:	98 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910730:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910734:	d0 78 bd fb 	ldi	$r29,30928($r29)
ffffffff80910738:	b0 00 29 8e 	ldl	$r17,176($r9)
ffffffff8091073c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910740:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910744:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910748:	91 d1 10 fa 	ldi	$r16,-11887($r16)
ffffffff8091074c:	90 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910750:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910754:	b0 78 bd fb 	ldi	$r29,30896($r29)
ffffffff80910758:	b8 00 29 8e 	ldl	$r17,184($r9)
ffffffff8091075c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910760:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910764:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910768:	a6 d1 10 fa 	ldi	$r16,-11866($r16)
ffffffff8091076c:	88 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910770:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910774:	90 78 bd fb 	ldi	$r29,30864($r29)
ffffffff80910778:	c0 00 29 8e 	ldl	$r17,192($r9)
ffffffff8091077c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910780:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910784:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910788:	bb d1 10 fa 	ldi	$r16,-11845($r16)
ffffffff8091078c:	80 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910790:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910794:	70 78 bd fb 	ldi	$r29,30832($r29)
ffffffff80910798:	c8 00 29 8e 	ldl	$r17,200($r9)
ffffffff8091079c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107a0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809107a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107a8:	d0 d1 10 fa 	ldi	$r16,-11824($r16)
ffffffff809107ac:	78 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809107b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107b4:	50 78 bd fb 	ldi	$r29,30800($r29)
ffffffff809107b8:	d0 00 29 8e 	ldl	$r17,208($r9)
ffffffff809107bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107c0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809107c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107c8:	e5 d1 10 fa 	ldi	$r16,-11803($r16)
ffffffff809107cc:	70 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809107d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107d4:	30 78 bd fb 	ldi	$r29,30768($r29)
ffffffff809107d8:	d8 00 29 8e 	ldl	$r17,216($r9)
ffffffff809107dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107e0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809107e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107e8:	fa d1 10 fa 	ldi	$r16,-11782($r16)
ffffffff809107ec:	68 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809107f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107f4:	10 78 bd fb 	ldi	$r29,30736($r29)
ffffffff809107f8:	e0 00 29 8e 	ldl	$r17,224($r9)
ffffffff809107fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910800:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910804:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910808:	0f d2 10 fa 	ldi	$r16,-11761($r16)
ffffffff8091080c:	60 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910810:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910814:	f0 77 bd fb 	ldi	$r29,30704($r29)
ffffffff80910818:	00 01 29 8e 	ldl	$r17,256($r9)
ffffffff8091081c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910820:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910824:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910828:	24 d2 10 fa 	ldi	$r16,-11740($r16)
ffffffff8091082c:	58 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910830:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910834:	d0 77 bd fb 	ldi	$r29,30672($r29)
ffffffff80910838:	f8 00 29 8e 	ldl	$r17,248($r9)
ffffffff8091083c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910840:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910844:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910848:	39 d2 10 fa 	ldi	$r16,-11719($r16)
ffffffff8091084c:	50 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910850:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910854:	b0 77 bd fb 	ldi	$r29,30640($r29)
ffffffff80910858:	f0 00 29 8e 	ldl	$r17,240($r9)
ffffffff8091085c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910860:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910864:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910868:	4e d2 10 fa 	ldi	$r16,-11698($r16)
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
ffffffff809108ac:	20 00 20 c0 	beq	$r1,ffffffff80910930 <do_entIF+0xa0>
ffffffff809108b0:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff809108b4:	15 00 20 c4 	bne	$r1,ffffffff8091090c <do_entIF+0x7c>
ffffffff809108b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108bc:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff809108c0:	e7 fe 5b 07 	call	ra,($r27),ffffffff80910460 <print_regs>
ffffffff809108c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108c8:	3c 77 bd fb 	ldi	$r29,30524($r29)
ffffffff809108cc:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff809108d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108d4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809108d8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809108dc:	63 d2 10 fa 	ldi	$r16,-11677($r16)
ffffffff809108e0:	2b fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809108e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108e8:	1c 77 bd fb 	ldi	$r29,30492($r29)
ffffffff809108ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108f0:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff809108f4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809108f8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809108fc:	65 00 3f fa 	ldi	$r17,101
ffffffff80910900:	a0 d2 52 fa 	ldi	$r18,-11616($r18)
ffffffff80910904:	ad d2 10 fa 	ldi	$r16,-11603($r16)
ffffffff80910908:	49 fe 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff8091090c:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910910:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910914:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910918:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091091c:	8e d2 10 fa 	ldi	$r16,-11634($r16)
ffffffff80910920:	1b fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910924:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910928:	dc 76 bd fb 	ldi	$r29,30428($r29)
ffffffff8091092c:	ef ff ff 13 	br	ffffffff809108ec <do_entIF+0x5c>
ffffffff80910930:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910934:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910938:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff8091093c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910940:	78 d2 10 fa 	ldi	$r16,-11656($r16)
ffffffff80910944:	12 fe 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910948:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091094c:	b8 76 bd fb 	ldi	$r29,30392($r29)
ffffffff80910950:	e6 ff ff 13 	br	ffffffff809108ec <do_entIF+0x5c>
ffffffff80910954:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910958:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091095c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910960 <interrupt_handler>:
ffffffff80910960:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910964:	a0 76 bd fb 	ldi	$r29,30368($r29)
ffffffff80910968:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff8091096c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910970:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910974:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910978:	49 07 f0 43 	mov	$r16,$r9
ffffffff8091097c:	01 25 21 48 	cmpeq	$r1,0x9,$r1
ffffffff80910980:	1f 00 20 c0 	beq	$r1,ffffffff80910a00 <interrupt_handler+0xa0>
ffffffff80910984:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910988:	a0 80 7b 8f 	ldl	$r27,-32608($r27)
ffffffff8091098c:	d8 fd 5b 07 	call	ra,($r27),ffffffff809100f0 <clock_set_next_event>
ffffffff80910990:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910994:	70 76 bd fb 	ldi	$r29,30320($r29)
ffffffff80910998:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff8091099c:	78 81 63 8c 	ldl	$r3,-32392($r3)
ffffffff809109a0:	00 00 43 8c 	ldl	$r2,0($r3)
ffffffff809109a4:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff809109a8:	00 00 43 ac 	stl	$r2,0($r3)
ffffffff809109ac:	ff ff 7d fc 	ldih	$r3,-1($r29)
ffffffff809109b0:	21 69 40 48 	srl	$r2,0x3,$r1
ffffffff809109b4:	08 d3 63 8c 	ldl	$r3,-11512($r3)
ffffffff809109b8:	21 03 23 40 	umulh	$r1,$r3,$r1
ffffffff809109bc:	23 89 20 48 	srl	$r1,0x4,$r3
ffffffff809109c0:	41 01 60 48 	s4addl	$r3,0,$r1
ffffffff809109c4:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109c8:	43 01 20 48 	s4addl	$r1,0,$r3
ffffffff809109cc:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109d0:	43 01 20 48 	s4addl	$r1,0,$r3
ffffffff809109d4:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809109d8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809109dc:	21 01 41 40 	subl	$r2,$r1,$r1
ffffffff809109e0:	1b 00 20 c0 	beq	$r1,ffffffff80910a50 <interrupt_handler+0xf0>
ffffffff809109e4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809109e8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809109ec:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809109f0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809109f4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809109f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809109fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a00:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a04:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff80910a08:	95 fe 5b 07 	call	ra,($r27),ffffffff80910460 <print_regs>
ffffffff80910a0c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a10:	f4 75 bd fb 	ldi	$r29,30196($r29)
ffffffff80910a14:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff80910a18:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a1c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910a20:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a24:	63 d2 10 fa 	ldi	$r16,-11677($r16)
ffffffff80910a28:	d9 fd 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910a2c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a30:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a34:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a38:	d4 75 bd fb 	ldi	$r29,30164($r29)
ffffffff80910a3c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a40:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910a44:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a48:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a4c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a50:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a54:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910a58:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a5c:	e8 03 3f fa 	ldi	$r17,1000
ffffffff80910a60:	be d2 10 fa 	ldi	$r16,-11586($r16)
ffffffff80910a64:	ca fd 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910a68:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a6c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a70:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a74:	98 75 bd fb 	ldi	$r29,30104($r29)
ffffffff80910a78:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a7c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910a80 <exception_handler>:
ffffffff80910a80:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910a84:	80 75 bd fb 	ldi	$r29,30080($r29)
ffffffff80910a88:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910a8c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910a90:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910a94:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910a98:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910a9c:	02 45 20 48 	cmpeq	$r1,0x2,$r2
ffffffff80910aa0:	13 00 40 c4 	bne	$r2,ffffffff80910af0 <exception_handler+0x70>
ffffffff80910aa4:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff80910aa8:	33 00 20 c4 	bne	$r1,ffffffff80910b78 <exception_handler+0xf8>
ffffffff80910aac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ab0:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff80910ab4:	6a fe 5b 07 	call	ra,($r27),ffffffff80910460 <print_regs>
ffffffff80910ab8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910abc:	48 75 bd fb 	ldi	$r29,30024($r29)
ffffffff80910ac0:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff80910ac4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ac8:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910acc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910ad0:	63 d2 10 fa 	ldi	$r16,-11677($r16)
ffffffff80910ad4:	ae fd 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910ad8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910adc:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910ae0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910ae4:	28 75 bd fb 	ldi	$r29,29992($r29)
ffffffff80910ae8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910aec:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910af0:	90 00 70 8e 	ldl	$r19,144($r16)
ffffffff80910af4:	f0 00 50 8e 	ldl	$r18,240($r16)
ffffffff80910af8:	52 00 3f f8 	ldi	$r1,82
ffffffff80910afc:	f8 00 90 8e 	ldl	$r20,248($r16)
ffffffff80910b00:	80 00 30 8e 	ldl	$r17,128($r16)
ffffffff80910b04:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b08:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b0c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80910b10:	c8 d2 10 fa 	ldi	$r16,-11576($r16)
ffffffff80910b14:	13 25 60 4a 	cmpeq	$r19,0x1,$r19
ffffffff80910b18:	12 07 41 4a 	and	$r18,0x8,$r18
ffffffff80910b1c:	21 f4 6a 4e 	selne	$r19,0x57,$r1,$r1
ffffffff80910b20:	53 07 e1 43 	mov	$r1,$r19
ffffffff80910b24:	55 00 3f f8 	ldi	$r1,85
ffffffff80910b28:	21 60 49 4e 	seleq	$r18,0x4b,$r1,$r1
ffffffff80910b2c:	52 07 e1 43 	mov	$r1,$r18
ffffffff80910b30:	97 fd 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80910b34:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b38:	cc 74 bd fb 	ldi	$r29,29900($r29)
ffffffff80910b3c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910b40:	c0 81 21 8c 	ldl	$r1,-32320($r1)
ffffffff80910b44:	00 00 01 8e 	ldl	$r16,0($r1)
ffffffff80910b48:	0e 00 00 c2 	beq	$r16,ffffffff80910b84 <exception_handler+0x104>
ffffffff80910b4c:	80 00 49 8e 	ldl	$r18,128($r9)
ffffffff80910b50:	88 00 29 8e 	ldl	$r17,136($r9)
ffffffff80910b54:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b58:	d0 80 7b 8f 	ldl	$r27,-32560($r27)
ffffffff80910b5c:	84 03 5b 07 	call	ra,($r27),ffffffff80911970 <do_pgfault>
ffffffff80910b60:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b64:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910b68:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910b6c:	a0 74 bd fb 	ldi	$r29,29856($r29)
ffffffff80910b70:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910b74:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910b78:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b7c:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910b80:	43 ff 5b 07 	call	ra,($r27),ffffffff80910890 <do_entIF>
ffffffff80910b84:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b88:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80910b8c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910b90:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b94:	74 00 3f fa 	ldi	$r17,116
ffffffff80910b98:	ee d2 52 fa 	ldi	$r18,-11538($r18)
ffffffff80910b9c:	ad d2 10 fa 	ldi	$r16,-11603($r16)
ffffffff80910ba0:	a3 fd 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80910ba4:	5f 07 ff 43 	nop	
ffffffff80910ba8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910bac:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910bb0 <trap>:
ffffffff80910bb0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910bb4:	50 74 bd fb 	ldi	$r29,29776($r29)
ffffffff80910bb8:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910bbc:	04 00 20 c0 	beq	$r1,ffffffff80910bd0 <trap+0x20>
ffffffff80910bc0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910bc4:	d0 81 7b 8f 	ldl	$r27,-32304($r27)
ffffffff80910bc8:	ad ff fb 0f 	jmp	$r31,($r27),ffffffff80910a80 <exception_handler>
ffffffff80910bcc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910bd0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910bd4:	60 81 7b 8f 	ldl	$r27,-32416($r27)
ffffffff80910bd8:	61 ff fb 0f 	jmp	$r31,($r27),ffffffff80910960 <interrupt_handler>
ffffffff80910bdc:	5f 07 ff 43 	nop	

ffffffff80910be0 <entInt>:
ffffffff80910be0:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910be4:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910be8:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910bec:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910bf0:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910bf4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910bf8:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910bfc:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910c00:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910c04:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910c08:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910c0c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910c10:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910c14:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910c18:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910c1c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910c20:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910c24:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910c28:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910c2c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910c30:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910c34:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910c38:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910c3c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910c40:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910c44:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910c48:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910c4c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910c50:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910c54:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910c58:	00 00 1f fa 	ldi	$r16,0
ffffffff80910c5c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910c60:	88 81 5d 8f 	ldl	ra,-32376($r29)
ffffffff80910c64:	50 07 fe 43 	mov	sp,$r16
ffffffff80910c68:	40 81 7d 8f 	ldl	$r27,-32448($r29)
ffffffff80910c6c:	d0 ff fb 07 	call	$r31,($r27),ffffffff80910bb0 <trap>

ffffffff80910c70 <entMM>:
ffffffff80910c70:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910c74:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910c78:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910c7c:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910c80:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910c84:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910c88:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910c8c:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910c90:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910c94:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910c98:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910c9c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910ca0:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910ca4:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910ca8:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910cac:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910cb0:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910cb4:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910cb8:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910cbc:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910cc0:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910cc4:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910cc8:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910ccc:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910cd0:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910cd4:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910cd8:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910cdc:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910ce0:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910ce4:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910ce8:	02 00 1f fa 	ldi	$r16,2
ffffffff80910cec:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910cf0:	88 81 5d 8f 	ldl	ra,-32376($r29)
ffffffff80910cf4:	50 07 fe 43 	mov	sp,$r16
ffffffff80910cf8:	40 81 7d 8f 	ldl	$r27,-32448($r29)
ffffffff80910cfc:	ac ff fb 07 	call	$r31,($r27),ffffffff80910bb0 <trap>

ffffffff80910d00 <entIF>:
ffffffff80910d00:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910d04:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910d08:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910d0c:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910d10:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910d14:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910d18:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910d1c:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910d20:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910d24:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910d28:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910d2c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910d30:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910d34:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910d38:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910d3c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910d40:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910d44:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910d48:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910d4c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910d50:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910d54:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910d58:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910d5c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910d60:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910d64:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910d68:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910d6c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910d70:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910d74:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910d78:	03 00 1f fa 	ldi	$r16,3
ffffffff80910d7c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910d80:	88 81 5d 8f 	ldl	ra,-32376($r29)
ffffffff80910d84:	50 07 fe 43 	mov	sp,$r16
ffffffff80910d88:	40 81 7d 8f 	ldl	$r27,-32448($r29)
ffffffff80910d8c:	88 ff fb 07 	call	$r31,($r27),ffffffff80910bb0 <trap>

ffffffff80910d90 <__trapret>:
ffffffff80910d90:	00 00 1e 8c 	ldl	$r0,0(sp)
ffffffff80910d94:	08 00 3e 8c 	ldl	$r1,8(sp)
ffffffff80910d98:	10 00 5e 8c 	ldl	$r2,16(sp)
ffffffff80910d9c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80910da0:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80910da4:	28 00 be 8c 	ldl	$r5,40(sp)
ffffffff80910da8:	30 00 de 8c 	ldl	$r6,48(sp)
ffffffff80910dac:	38 00 fe 8c 	ldl	$r7,56(sp)
ffffffff80910db0:	40 00 1e 8d 	ldl	$r8,64(sp)
ffffffff80910db4:	98 00 7e 8e 	ldl	$r19,152(sp)
ffffffff80910db8:	a0 00 9e 8e 	ldl	$r20,160(sp)
ffffffff80910dbc:	a8 00 be 8e 	ldl	$r21,168(sp)
ffffffff80910dc0:	b0 00 de 8e 	ldl	$r22,176(sp)
ffffffff80910dc4:	b8 00 fe 8e 	ldl	$r23,184(sp)
ffffffff80910dc8:	c0 00 1e 8f 	ldl	$r24,192(sp)
ffffffff80910dcc:	c8 00 3e 8f 	ldl	$r25,200(sp)
ffffffff80910dd0:	d0 00 5e 8f 	ldl	ra,208(sp)
ffffffff80910dd4:	d8 00 7e 8f 	ldl	$r27,216(sp)
ffffffff80910dd8:	e0 00 9e 8f 	ldl	$r28,224(sp)
ffffffff80910ddc:	f0 00 de fb 	ldi	sp,240(sp)
ffffffff80910de0:	3f 00 00 02 	sys_call	0x3f
ffffffff80910de4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910de8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910dec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910df0 <check_vma_overlap.isra.0.part.1>:
ffffffff80910df0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910df4:	10 72 bd fb 	ldi	$r29,29200($r29)
ffffffff80910df8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910dfc:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80910e00:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910e04:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80910e08:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910e0c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910e10:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910e14:	79 00 3f fa 	ldi	$r17,121
ffffffff80910e18:	10 d3 73 fa 	ldi	$r19,-11504($r19)
ffffffff80910e1c:	2e d3 52 fa 	ldi	$r18,-11474($r18)
ffffffff80910e20:	43 d3 10 fa 	ldi	$r16,-11453($r16)
ffffffff80910e24:	02 fd 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80910e28:	5f 07 ff 43 	nop	
ffffffff80910e2c:	00 00 00 00 	sys_call/b	0

ffffffff80910e30 <mm_create>:
ffffffff80910e30:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910e34:	d0 71 bd fb 	ldi	$r29,29136($r29)
ffffffff80910e38:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910e3c:	a0 81 7b 8f 	ldl	$r27,-32352($r27)
ffffffff80910e40:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910e44:	30 00 1f fa 	ldi	$r16,48
ffffffff80910e48:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910e4c:	d4 0c 5b 07 	call	ra,($r27),ffffffff809141a0 <kmalloc>
ffffffff80910e50:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e54:	b0 71 bd fb 	ldi	$r29,29104($r29)
ffffffff80910e58:	06 00 00 c0 	beq	$r0,ffffffff80910e74 <mm_create+0x44>
ffffffff80910e5c:	08 00 00 ac 	stl	$r0,8($r0)
ffffffff80910e60:	00 00 00 ac 	stl	$r0,0($r0)
ffffffff80910e64:	10 00 e0 af 	stl	$r31,16($r0)
ffffffff80910e68:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff80910e6c:	20 00 e0 ab 	stw	$r31,32($r0)
ffffffff80910e70:	28 00 e0 af 	stl	$r31,40($r0)
ffffffff80910e74:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910e78:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910e7c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910e80 <find_vma>:
ffffffff80910e80:	17 00 00 c2 	beq	$r16,ffffffff80910ee0 <find_vma+0x60>
ffffffff80910e84:	10 00 10 8c 	ldl	$r0,16($r16)
ffffffff80910e88:	03 00 00 c0 	beq	$r0,ffffffff80910e98 <find_vma+0x18>
ffffffff80910e8c:	08 00 20 8c 	ldl	$r1,8($r0)
ffffffff80910e90:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80910e94:	16 00 20 c4 	bne	$r1,ffffffff80910ef0 <find_vma+0x70>
ffffffff80910e98:	40 07 f0 43 	mov	$r16,$r0
ffffffff80910e9c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ea0:	08 00 00 8c 	ldl	$r0,8($r0)
ffffffff80910ea4:	01 05 00 42 	cmpeq	$r16,$r0,$r1
ffffffff80910ea8:	0d 00 20 c4 	bne	$r1,ffffffff80910ee0 <find_vma+0x60>
ffffffff80910eac:	e8 ff 20 8c 	ldl	$r1,-24($r0)
ffffffff80910eb0:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80910eb4:	fa ff 3f c0 	beq	$r1,ffffffff80910ea0 <find_vma+0x20>
ffffffff80910eb8:	f0 ff 20 8c 	ldl	$r1,-16($r0)
ffffffff80910ebc:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80910ec0:	f7 ff 3f c4 	bne	$r1,ffffffff80910ea0 <find_vma+0x20>
ffffffff80910ec4:	e0 ff 00 f8 	ldi	$r0,-32($r0)
ffffffff80910ec8:	05 00 00 c0 	beq	$r0,ffffffff80910ee0 <find_vma+0x60>
ffffffff80910ecc:	10 00 10 ac 	stl	$r0,16($r16)
ffffffff80910ed0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910ed4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ed8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910edc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ee0:	40 07 ff 43 	clr	$r0
ffffffff80910ee4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910ee8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910eec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ef0:	10 00 20 8c 	ldl	$r1,16($r0)
ffffffff80910ef4:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80910ef8:	e7 ff 3f c4 	bne	$r1,ffffffff80910e98 <find_vma+0x18>
ffffffff80910efc:	10 00 10 ac 	stl	$r0,16($r16)
ffffffff80910f00:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910f04:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f08:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f0c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910f10 <insert_vma_struct>:
ffffffff80910f10:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910f14:	f0 70 bd fb 	ldi	$r29,28912($r29)
ffffffff80910f18:	08 00 b1 8c 	ldl	$r5,8($r17)
ffffffff80910f1c:	10 00 d1 8c 	ldl	$r6,16($r17)
ffffffff80910f20:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910f24:	42 07 f0 43 	mov	$r16,$r2
ffffffff80910f28:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910f2c:	61 05 a6 40 	cmpult	$r5,$r6,$r1
ffffffff80910f30:	07 00 20 c4 	bne	$r1,ffffffff80910f50 <insert_vma_struct+0x40>
ffffffff80910f34:	30 00 e0 13 	br	ffffffff80910ff8 <insert_vma_struct+0xe8>
ffffffff80910f38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f3c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910f40:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff80910f44:	64 05 a3 40 	cmpult	$r5,$r3,$r4
ffffffff80910f48:	1d 00 80 c4 	bne	$r4,ffffffff80910fc0 <insert_vma_struct+0xb0>
ffffffff80910f4c:	42 07 e1 43 	mov	$r1,$r2
ffffffff80910f50:	08 00 22 8c 	ldl	$r1,8($r2)
ffffffff80910f54:	03 05 01 42 	cmpeq	$r16,$r1,$r3
ffffffff80910f58:	f9 ff 7f c0 	beq	$r3,ffffffff80910f40 <insert_vma_struct+0x30>
ffffffff80910f5c:	03 05 50 40 	cmpeq	$r2,$r16,$r3
ffffffff80910f60:	41 07 f0 43 	mov	$r16,$r1
ffffffff80910f64:	35 00 60 c4 	bne	$r3,ffffffff8091103c <insert_vma_struct+0x12c>
ffffffff80910f68:	f0 ff 82 8c 	ldl	$r4,-16($r2)
ffffffff80910f6c:	e8 ff 62 8c 	ldl	$r3,-24($r2)
ffffffff80910f70:	63 05 64 40 	cmpult	$r3,$r4,$r3
ffffffff80910f74:	2e 00 60 c0 	beq	$r3,ffffffff80911030 <insert_vma_struct+0x120>
ffffffff80910f78:	65 05 a4 40 	cmpult	$r5,$r4,$r5
ffffffff80910f7c:	28 00 a0 c4 	bne	$r5,ffffffff80911020 <insert_vma_struct+0x110>
ffffffff80910f80:	03 05 01 42 	cmpeq	$r16,$r1,$r3
ffffffff80910f84:	1a 00 60 c0 	beq	$r3,ffffffff80910ff0 <insert_vma_struct+0xe0>
ffffffff80910f88:	20 00 70 88 	ldw	$r3,32($r16)
ffffffff80910f8c:	00 00 11 ae 	stl	$r16,0($r17)
ffffffff80910f90:	20 00 91 f8 	ldi	$r4,32($r17)
ffffffff80910f94:	00 00 81 ac 	stl	$r4,0($r1)
ffffffff80910f98:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910f9c:	08 00 82 ac 	stl	$r4,8($r2)
ffffffff80910fa0:	28 00 31 ac 	stl	$r1,40($r17)
ffffffff80910fa4:	20 00 51 ac 	stl	$r2,32($r17)
ffffffff80910fa8:	01 20 60 48 	addw	$r3,0x1,$r1
ffffffff80910fac:	20 00 30 a8 	stw	$r1,32($r16)
ffffffff80910fb0:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910fb4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910fb8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910fbc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910fc0:	04 05 50 40 	cmpeq	$r2,$r16,$r4
ffffffff80910fc4:	e8 ff 9f c0 	beq	$r4,ffffffff80910f68 <insert_vma_struct+0x58>
ffffffff80910fc8:	86 05 c3 40 	cmpule	$r6,$r3,$r6
ffffffff80910fcc:	14 00 c0 c0 	beq	$r6,ffffffff80911020 <insert_vma_struct+0x110>
ffffffff80910fd0:	f0 ff 81 8c 	ldl	$r4,-16($r1)
ffffffff80910fd4:	83 05 83 40 	cmpule	$r4,$r3,$r3
ffffffff80910fd8:	eb ff 7f c0 	beq	$r3,ffffffff80910f88 <insert_vma_struct+0x78>
ffffffff80910fdc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80910fe0:	7b 00 3f fa 	ldi	$r17,123
ffffffff80910fe4:	8c d3 73 fa 	ldi	$r19,-11380($r19)
ffffffff80910fe8:	06 00 e0 13 	br	ffffffff80911004 <insert_vma_struct+0xf4>
ffffffff80910fec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ff0:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff80910ff4:	f4 ff ff 13 	br	ffffffff80910fc8 <insert_vma_struct+0xb8>
ffffffff80910ff8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80910ffc:	82 00 3f fa 	ldi	$r17,130
ffffffff80911000:	51 d3 73 fa 	ldi	$r19,-11439($r19)
ffffffff80911004:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911008:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff8091100c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911010:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911014:	2e d3 52 fa 	ldi	$r18,-11474($r18)
ffffffff80911018:	43 d3 10 fa 	ldi	$r16,-11453($r16)
ffffffff8091101c:	84 fc 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80911020:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911024:	7a 00 3f fa 	ldi	$r17,122
ffffffff80911028:	6d d3 73 fa 	ldi	$r19,-11411($r19)
ffffffff8091102c:	f5 ff ff 13 	br	ffffffff80911004 <insert_vma_struct+0xf4>
ffffffff80911030:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911034:	d8 81 7b 8f 	ldl	$r27,-32296($r27)
ffffffff80911038:	6d ff 5b 07 	call	ra,($r27),ffffffff80910df0 <check_vma_overlap.isra.0.part.1>
ffffffff8091103c:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911040:	d1 ff ff 13 	br	ffffffff80910f88 <insert_vma_struct+0x78>
ffffffff80911044:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911048:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091104c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911050 <mm_destroy>:
ffffffff80911050:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911054:	b0 6f bd fb 	ldi	$r29,28592($r29)
ffffffff80911058:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091105c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911060:	49 07 f0 43 	mov	$r16,$r9
ffffffff80911064:	08 00 10 8e 	ldl	$r16,8($r16)
ffffffff80911068:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091106c:	01 05 30 41 	cmpeq	$r9,$r16,$r1
ffffffff80911070:	11 00 20 c4 	bne	$r1,ffffffff809110b8 <mm_destroy+0x68>
ffffffff80911074:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911078:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091107c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911080:	08 00 30 8c 	ldl	$r1,8($r16)
ffffffff80911084:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff80911088:	30 00 3f fa 	ldi	$r17,48
ffffffff8091108c:	e0 ff 10 fa 	ldi	$r16,-32($r16)
ffffffff80911090:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911094:	60 80 7b 8f 	ldl	$r27,-32672($r27)
ffffffff80911098:	08 00 22 ac 	stl	$r1,8($r2)
ffffffff8091109c:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff809110a0:	87 0c 5b 07 	call	ra,($r27),ffffffff809142c0 <kfree>
ffffffff809110a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809110a8:	08 00 09 8e 	ldl	$r16,8($r9)
ffffffff809110ac:	5c 6f bd fb 	ldi	$r29,28508($r29)
ffffffff809110b0:	01 05 30 41 	cmpeq	$r9,$r16,$r1
ffffffff809110b4:	f2 ff 3f c0 	beq	$r1,ffffffff80911080 <mm_destroy+0x30>
ffffffff809110b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809110bc:	60 80 7b 8f 	ldl	$r27,-32672($r27)
ffffffff809110c0:	50 07 e9 43 	mov	$r9,$r16
ffffffff809110c4:	30 00 3f fa 	ldi	$r17,48
ffffffff809110c8:	7d 0c 5b 07 	call	ra,($r27),ffffffff809142c0 <kfree>
ffffffff809110cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809110d0:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809110d4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809110d8:	34 6f bd fb 	ldi	$r29,28468($r29)
ffffffff809110dc:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809110e0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809110e4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110ec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809110f0 <vmm_init>:
ffffffff809110f0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809110f4:	10 6f bd fb 	ldi	$r29,28432($r29)
ffffffff809110f8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809110fc:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff80911100:	a0 ff de fb 	ldi	sp,-96(sp)
ffffffff80911104:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911108:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff8091110c:	32 00 3f f9 	ldi	$r9,50
ffffffff80911110:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80911114:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911118:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff8091111c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80911120:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80911124:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80911128:	4d 06 5b 07 	call	ra,($r27),ffffffff80912a60 <nr_free_pages>
ffffffff8091112c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911130:	d4 6e bd fb 	ldi	$r29,28372($r29)
ffffffff80911134:	40 00 1e ac 	stl	$r0,64(sp)
ffffffff80911138:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091113c:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff80911140:	47 06 5b 07 	call	ra,($r27),ffffffff80912a60 <nr_free_pages>
ffffffff80911144:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911148:	bc 6e bd fb 	ldi	$r29,28348($r29)
ffffffff8091114c:	4c 07 e0 43 	mov	$r0,$r12
ffffffff80911150:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911154:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80911158:	00 00 5b 07 	call	ra,($r27),ffffffff8091115c <vmm_init+0x6c>
ffffffff8091115c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911160:	a4 6e bd fb 	ldi	$r29,28324($r29)
ffffffff80911164:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911168:	4a 07 e0 43 	mov	$r0,$r10
ffffffff8091116c:	c4 00 3f fa 	ldi	$r17,196
ffffffff80911170:	aa d3 73 fa 	ldi	$r19,-11350($r19)
ffffffff80911174:	0e 00 00 c4 	bne	$r0,ffffffff809111b0 <vmm_init+0xc0>
ffffffff80911178:	19 00 e0 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff8091117c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911180:	08 00 20 ad 	stl	$r9,8($r0)
ffffffff80911184:	10 00 a0 ad 	stl	$r13,16($r0)
ffffffff80911188:	fb ff 29 f9 	ldi	$r9,-5($r9)
ffffffff8091118c:	51 07 e0 43 	mov	$r0,$r17
ffffffff80911190:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911194:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff80911198:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091119c:	68 81 7b 8f 	ldl	$r27,-32408($r27)
ffffffff809111a0:	5b ff 5b 07 	call	ra,($r27),ffffffff80910f10 <insert_vma_struct>
ffffffff809111a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809111a8:	5c 6e bd fb 	ldi	$r29,28252($r29)
ffffffff809111ac:	14 00 20 c1 	beq	$r9,ffffffff80911200 <vmm_init+0x110>
ffffffff809111b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809111b4:	a0 81 7b 8f 	ldl	$r27,-32352($r27)
ffffffff809111b8:	30 00 1f fa 	ldi	$r16,48
ffffffff809111bc:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff809111c0:	f7 0b 5b 07 	call	ra,($r27),ffffffff809141a0 <kmalloc>
ffffffff809111c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809111c8:	3c 6e bd fb 	ldi	$r29,28220($r29)
ffffffff809111cc:	ec ff 1f c4 	bne	$r0,ffffffff80911180 <vmm_init+0x90>
ffffffff809111d0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809111d4:	cb 00 3f fa 	ldi	$r17,203
ffffffff809111d8:	da d5 73 fa 	ldi	$r19,-10790($r19)
ffffffff809111dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111e0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809111e4:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff809111e8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809111ec:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809111f0:	2e d3 52 fa 	ldi	$r18,-11474($r18)
ffffffff809111f4:	43 d3 10 fa 	ldi	$r16,-11453($r16)
ffffffff809111f8:	0d fc 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff809111fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911200:	37 00 3f f9 	ldi	$r9,55
ffffffff80911204:	0f 00 e0 13 	br	ffffffff80911244 <vmm_init+0x154>
ffffffff80911208:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091120c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911210:	08 00 20 ad 	stl	$r9,8($r0)
ffffffff80911214:	10 00 a0 ad 	stl	$r13,16($r0)
ffffffff80911218:	51 07 e0 43 	mov	$r0,$r17
ffffffff8091121c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911220:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff80911224:	05 00 29 f9 	ldi	$r9,5($r9)
ffffffff80911228:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091122c:	68 81 7b 8f 	ldl	$r27,-32408($r27)
ffffffff80911230:	37 ff 5b 07 	call	ra,($r27),ffffffff80910f10 <insert_vma_struct>
ffffffff80911234:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911238:	cc 6d bd fb 	ldi	$r29,28108($r29)
ffffffff8091123c:	07 fe 29 f8 	ldi	$r1,-505($r9)
ffffffff80911240:	0f 00 20 c0 	beq	$r1,ffffffff80911280 <vmm_init+0x190>
ffffffff80911244:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911248:	a0 81 7b 8f 	ldl	$r27,-32352($r27)
ffffffff8091124c:	30 00 1f fa 	ldi	$r16,48
ffffffff80911250:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff80911254:	d2 0b 5b 07 	call	ra,($r27),ffffffff809141a0 <kmalloc>
ffffffff80911258:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091125c:	a8 6d bd fb 	ldi	$r29,28072($r29)
ffffffff80911260:	eb ff 1f c4 	bne	$r0,ffffffff80911210 <vmm_init+0x120>
ffffffff80911264:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911268:	d1 00 3f fa 	ldi	$r17,209
ffffffff8091126c:	da d5 73 fa 	ldi	$r19,-10790($r19)
ffffffff80911270:	db ff ff 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff80911274:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911278:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091127c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911280:	08 00 2a 8c 	ldl	$r1,8($r10)
ffffffff80911284:	07 00 5f f8 	ldi	$r2,7
ffffffff80911288:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091128c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911290:	03 05 41 41 	cmpeq	$r10,$r1,$r3
ffffffff80911294:	8d 01 60 c4 	bne	$r3,ffffffff809118cc <vmm_init+0x7dc>
ffffffff80911298:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff8091129c:	fe ff 82 f8 	ldi	$r4,-2($r2)
ffffffff809112a0:	03 05 64 40 	cmpeq	$r3,$r4,$r3
ffffffff809112a4:	7d 01 60 c0 	beq	$r3,ffffffff8091189c <vmm_init+0x7ac>
ffffffff809112a8:	f0 ff 61 8c 	ldl	$r3,-16($r1)
ffffffff809112ac:	03 05 62 40 	cmpeq	$r3,$r2,$r3
ffffffff809112b0:	7a 01 60 c0 	beq	$r3,ffffffff8091189c <vmm_init+0x7ac>
ffffffff809112b4:	05 00 42 f8 	ldi	$r2,5($r2)
ffffffff809112b8:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff809112bc:	05 fe 62 f8 	ldi	$r3,-507($r2)
ffffffff809112c0:	f3 ff 7f c4 	bne	$r3,ffffffff80911290 <vmm_init+0x1a0>
ffffffff809112c4:	05 00 3f f9 	ldi	$r9,5
ffffffff809112c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112d0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809112d4:	50 07 ea 43 	mov	$r10,$r16
ffffffff809112d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809112dc:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff809112e0:	00 00 5b 07 	call	ra,($r27),ffffffff809112e4 <vmm_init+0x1f4>
ffffffff809112e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809112e8:	1c 6d bd fb 	ldi	$r29,27932($r29)
ffffffff809112ec:	4f 07 e0 43 	mov	$r0,fp
ffffffff809112f0:	86 01 00 c0 	beq	$r0,ffffffff8091190c <vmm_init+0x81c>
ffffffff809112f4:	01 00 29 fa 	ldi	$r17,1($r9)
ffffffff809112f8:	50 07 ea 43 	mov	$r10,$r16
ffffffff809112fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911300:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff80911304:	00 00 5b 07 	call	ra,($r27),ffffffff80911308 <vmm_init+0x218>
ffffffff80911308:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091130c:	f8 6c bd fb 	ldi	$r29,27896($r29)
ffffffff80911310:	4e 07 e0 43 	mov	$r0,$r14
ffffffff80911314:	79 01 00 c0 	beq	$r0,ffffffff809118fc <vmm_init+0x80c>
ffffffff80911318:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff8091131c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911320:	51 07 ed 43 	mov	$r13,$r17
ffffffff80911324:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911328:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff8091132c:	00 00 5b 07 	call	ra,($r27),ffffffff80911330 <vmm_init+0x240>
ffffffff80911330:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911334:	d0 6c bd fb 	ldi	$r29,27856($r29)
ffffffff80911338:	6c 01 00 c4 	bne	$r0,ffffffff809118ec <vmm_init+0x7fc>
ffffffff8091133c:	03 00 29 fa 	ldi	$r17,3($r9)
ffffffff80911340:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911344:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911348:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff8091134c:	00 00 5b 07 	call	ra,($r27),ffffffff80911350 <vmm_init+0x260>
ffffffff80911350:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911354:	b0 6c bd fb 	ldi	$r29,27824($r29)
ffffffff80911358:	60 01 00 c4 	bne	$r0,ffffffff809118dc <vmm_init+0x7ec>
ffffffff8091135c:	04 00 29 fa 	ldi	$r17,4($r9)
ffffffff80911360:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911364:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911368:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff8091136c:	00 00 5b 07 	call	ra,($r27),ffffffff80911370 <vmm_init+0x280>
ffffffff80911370:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911374:	90 6c bd fb 	ldi	$r29,27792($r29)
ffffffff80911378:	68 01 00 c4 	bne	$r0,ffffffff8091191c <vmm_init+0x82c>
ffffffff8091137c:	08 00 2f 8c 	ldl	$r1,8(fp)
ffffffff80911380:	01 05 29 40 	cmpeq	$r1,$r9,$r1
ffffffff80911384:	49 01 20 c0 	beq	$r1,ffffffff809118ac <vmm_init+0x7bc>
ffffffff80911388:	10 00 6f 8c 	ldl	$r3,16(fp)
ffffffff8091138c:	0d 05 6d 40 	cmpeq	$r3,$r13,$r13
ffffffff80911390:	46 01 a0 c1 	beq	$r13,ffffffff809118ac <vmm_init+0x7bc>
ffffffff80911394:	08 00 4e 8c 	ldl	$r2,8($r14)
ffffffff80911398:	02 05 49 40 	cmpeq	$r2,$r9,$r2
ffffffff8091139c:	47 01 40 c0 	beq	$r2,ffffffff809118bc <vmm_init+0x7cc>
ffffffff809113a0:	10 00 2e 8c 	ldl	$r1,16($r14)
ffffffff809113a4:	01 05 23 40 	cmpeq	$r1,$r3,$r1
ffffffff809113a8:	44 01 20 c0 	beq	$r1,ffffffff809118bc <vmm_init+0x7cc>
ffffffff809113ac:	05 00 29 f9 	ldi	$r9,5($r9)
ffffffff809113b0:	07 fe 29 f8 	ldi	$r1,-505($r9)
ffffffff809113b4:	c6 ff 3f c4 	bne	$r1,ffffffff809112d0 <vmm_init+0x1e0>
ffffffff809113b8:	04 00 3f f9 	ldi	$r9,4
ffffffff809113bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809113c0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809113c4:	50 07 ea 43 	mov	$r10,$r16
ffffffff809113c8:	0d 00 e9 43 	addw	$r31,$r9,$r13
ffffffff809113cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809113d0:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff809113d4:	00 00 5b 07 	call	ra,($r27),ffffffff809113d8 <vmm_init+0x2e8>
ffffffff809113d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809113dc:	28 6c bd fb 	ldi	$r29,27688($r29)
ffffffff809113e0:	17 00 00 c0 	beq	$r0,ffffffff80911440 <vmm_init+0x350>
ffffffff809113e4:	10 00 60 8e 	ldl	$r19,16($r0)
ffffffff809113e8:	08 00 40 8e 	ldl	$r18,8($r0)
ffffffff809113ec:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809113f0:	51 07 ed 43 	mov	$r13,$r17
ffffffff809113f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809113f8:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809113fc:	9c d4 10 fa 	ldi	$r16,-11108($r16)
ffffffff80911400:	63 fb 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80911404:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911408:	fc 6b bd fb 	ldi	$r29,27644($r29)
ffffffff8091140c:	f3 00 3f fa 	ldi	$r17,243
ffffffff80911410:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911414:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80911418:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091141c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911420:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911424:	c1 d4 73 fa 	ldi	$r19,-11071($r19)
ffffffff80911428:	2e d3 52 fa 	ldi	$r18,-11474($r18)
ffffffff8091142c:	43 d3 10 fa 	ldi	$r16,-11453($r16)
ffffffff80911430:	7f fb 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80911434:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911438:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091143c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911440:	ff ff 29 f9 	ldi	$r9,-1($r9)
ffffffff80911444:	01 00 29 f8 	ldi	$r1,1($r9)
ffffffff80911448:	dd ff 3f c4 	bne	$r1,ffffffff809113c0 <vmm_init+0x2d0>
ffffffff8091144c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911450:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911454:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911458:	fd fe 5b 07 	call	ra,($r27),ffffffff80911050 <mm_destroy>
ffffffff8091145c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911460:	a4 6b bd fb 	ldi	$r29,27556($r29)
ffffffff80911464:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911468:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff8091146c:	7c 05 5b 07 	call	ra,($r27),ffffffff80912a60 <nr_free_pages>
ffffffff80911470:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911474:	90 6b bd fb 	ldi	$r29,27536($r29)
ffffffff80911478:	0c 05 80 41 	cmpeq	$r12,$r0,$r12
ffffffff8091147c:	f8 00 3f fa 	ldi	$r17,248
ffffffff80911480:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911484:	d5 d4 73 fa 	ldi	$r19,-11051($r19)
ffffffff80911488:	55 ff 9f c1 	beq	$r12,ffffffff809111e0 <vmm_init+0xf0>
ffffffff8091148c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911490:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80911494:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911498:	00 00 bd fd 	ldih	$r13,0($r29)
ffffffff8091149c:	c0 81 ad 8d 	ldl	$r13,-32320($r13)
ffffffff809114a0:	fc d4 10 fa 	ldi	$r16,-11012($r16)
ffffffff809114a4:	3a fb 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809114a8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809114ac:	58 6b bd fb 	ldi	$r29,27480($r29)
ffffffff809114b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809114b4:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff809114b8:	69 05 5b 07 	call	ra,($r27),ffffffff80912a60 <nr_free_pages>
ffffffff809114bc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809114c0:	44 6b bd fb 	ldi	$r29,27460($r29)
ffffffff809114c4:	48 00 1e ac 	stl	$r0,72(sp)
ffffffff809114c8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809114cc:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff809114d0:	00 00 5b 07 	call	ra,($r27),ffffffff809114d4 <vmm_init+0x3e4>
ffffffff809114d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809114d8:	2c 6b bd fb 	ldi	$r29,27436($r29)
ffffffff809114dc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809114e0:	00 00 0d ac 	stl	$r0,0($r13)
ffffffff809114e4:	49 07 e0 43 	mov	$r0,$r9
ffffffff809114e8:	07 01 3f fa 	ldi	$r17,263
ffffffff809114ec:	1b d5 73 fa 	ldi	$r19,-10981($r19)
ffffffff809114f0:	3b ff 1f c0 	beq	$r0,ffffffff809111e0 <vmm_init+0xf0>
ffffffff809114f4:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff809114f8:	08 81 ce 8d 	ldl	$r14,-32504($r14)
ffffffff809114fc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911500:	0a 01 3f fa 	ldi	$r17,266
ffffffff80911504:	4e dd 73 fa 	ldi	$r19,-8882($r19)
ffffffff80911508:	00 00 4e 8d 	ldl	$r10,0($r14)
ffffffff8091150c:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff80911510:	18 00 40 ad 	stl	$r10,24($r0)
ffffffff80911514:	32 ff 3f c4 	bne	$r1,ffffffff809111e0 <vmm_init+0xf0>
ffffffff80911518:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091151c:	a0 81 7b 8f 	ldl	$r27,-32352($r27)
ffffffff80911520:	30 00 1f fa 	ldi	$r16,48
ffffffff80911524:	1e 0b 5b 07 	call	ra,($r27),ffffffff809141a0 <kmalloc>
ffffffff80911528:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091152c:	d8 6a bd fb 	ldi	$r29,27352($r29)
ffffffff80911530:	4f 07 e0 43 	mov	$r0,fp
ffffffff80911534:	d2 00 00 c0 	beq	$r0,ffffffff80911880 <vmm_init+0x790>
ffffffff80911538:	80 00 3f fc 	ldih	$r1,128
ffffffff8091153c:	51 07 e0 43 	mov	$r0,$r17
ffffffff80911540:	50 07 e9 43 	mov	$r9,$r16
ffffffff80911544:	08 00 e0 af 	stl	$r31,8($r0)
ffffffff80911548:	10 00 20 ac 	stl	$r1,16($r0)
ffffffff8091154c:	02 00 3f f8 	ldi	$r1,2
ffffffff80911550:	18 00 20 ac 	stl	$r1,24($r0)
ffffffff80911554:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911558:	68 81 7b 8f 	ldl	$r27,-32408($r27)
ffffffff8091155c:	6c fe 5b 07 	call	ra,($r27),ffffffff80910f10 <insert_vma_struct>
ffffffff80911560:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911564:	a0 6a bd fb 	ldi	$r29,27296($r29)
ffffffff80911568:	00 01 3f fa 	ldi	$r17,256
ffffffff8091156c:	50 07 e9 43 	mov	$r9,$r16
ffffffff80911570:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911574:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff80911578:	00 00 5b 07 	call	ra,($r27),ffffffff8091157c <vmm_init+0x48c>
ffffffff8091157c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911580:	84 6a bd fb 	ldi	$r29,27268($r29)
ffffffff80911584:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911588:	0f 05 e0 41 	cmpeq	fp,$r0,fp
ffffffff8091158c:	00 01 3f f8 	ldi	$r1,256
ffffffff80911590:	13 01 3f fa 	ldi	$r17,275
ffffffff80911594:	33 d5 73 fa 	ldi	$r19,-10957($r19)
ffffffff80911598:	11 ff ff c1 	beq	fp,ffffffff809111e0 <vmm_init+0xf0>
ffffffff8091159c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809115a0:	00 00 21 a0 	stb	$r1,0($r1)
ffffffff809115a4:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff809115a8:	9c fe 41 f8 	ldi	$r2,-356($r1)
ffffffff809115ac:	fc ff 5f c4 	bne	$r2,ffffffff809115a0 <vmm_init+0x4b0>
ffffffff809115b0:	00 01 3f f8 	ldi	$r1,256
ffffffff809115b4:	56 13 7f f8 	ldi	$r3,4950
ffffffff809115b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809115bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809115c0:	00 00 41 80 	ldbu	$r2,0($r1)
ffffffff809115c4:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff809115c8:	9c fe 81 f8 	ldi	$r4,-356($r1)
ffffffff809115cc:	42 0d e2 43 	sextb	$r2,$r2
ffffffff809115d0:	23 00 62 40 	subw	$r3,$r2,$r3
ffffffff809115d4:	fa ff 9f c4 	bne	$r4,ffffffff809115c0 <vmm_init+0x4d0>
ffffffff809115d8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809115dc:	1d 01 3f fa 	ldi	$r17,285
ffffffff809115e0:	4d d5 73 fa 	ldi	$r19,-10931($r19)
ffffffff809115e4:	fe fe 7f c4 	bne	$r3,ffffffff809111e0 <vmm_init+0xf0>
ffffffff809115e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115ec:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff809115f0:	51 07 ff 43 	clr	$r17
ffffffff809115f4:	50 07 ea 43 	mov	$r10,$r16
ffffffff809115f8:	00 00 fd fd 	ldih	fp,0($r29)
ffffffff809115fc:	c8 80 ef 8d 	ldl	fp,-32568(fp)
ffffffff80911600:	57 06 5b 07 	call	ra,($r27),ffffffff80912f60 <page_remove>
ffffffff80911604:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911608:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff8091160c:	00 f0 9f fc 	ldih	$r4,-4096
ffffffff80911610:	00 00 af 8c 	ldl	$r5,0(fp)
ffffffff80911614:	fc 69 bd fb 	ldi	$r29,27132($r29)
ffffffff80911618:	24 e9 81 48 	srl	$r4,0xf,$r4
ffffffff8091161c:	22 01 3f fa 	ldi	$r17,290
ffffffff80911620:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80911624:	21 e9 21 48 	srl	$r1,0xf,$r1
ffffffff80911628:	13 07 24 40 	and	$r1,$r4,$r19
ffffffff8091162c:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80911630:	61 05 25 40 	cmpult	$r1,$r5,$r1
ffffffff80911634:	c6 00 20 c0 	beq	$r1,ffffffff80911950 <vmm_init+0x860>
ffffffff80911638:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff8091163c:	a8 80 ce 8d 	ldl	$r14,-32600($r14)
ffffffff80911640:	23 01 3f fa 	ldi	$r17,291
ffffffff80911644:	00 00 6e 8c 	ldl	$r3,0($r14)
ffffffff80911648:	0b 01 63 42 	addl	$r19,$r3,$r11
ffffffff8091164c:	00 00 4b 8c 	ldl	$r2,0($r11)
ffffffff80911650:	22 e9 41 48 	srl	$r2,0xf,$r2
ffffffff80911654:	13 07 44 40 	and	$r2,$r4,$r19
ffffffff80911658:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff8091165c:	82 05 a2 40 	cmpule	$r5,$r2,$r2
ffffffff80911660:	bb 00 40 c4 	bne	$r2,ffffffff80911950 <vmm_init+0x860>
ffffffff80911664:	02 01 73 40 	addl	$r3,$r19,$r2
ffffffff80911668:	00 00 62 8e 	ldl	$r19,0($r2)
ffffffff8091166c:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80911670:	13 07 64 42 	and	$r19,$r4,$r19
ffffffff80911674:	26 a9 61 4a 	srl	$r19,0xd,$r6
ffffffff80911678:	84 05 a6 40 	cmpule	$r5,$r6,$r4
ffffffff8091167c:	b3 00 80 c4 	bne	$r4,ffffffff8091194c <vmm_init+0x85c>
ffffffff80911680:	00 80 9f fc 	ldih	$r4,-32768
ffffffff80911684:	03 01 73 40 	addl	$r3,$r19,$r3
ffffffff80911688:	ff ff 84 f8 	ldi	$r4,-1($r4)
ffffffff8091168c:	84 05 64 40 	cmpule	$r3,$r4,$r4
ffffffff80911690:	06 00 80 c4 	bne	$r4,ffffffff809116ac <vmm_init+0x5bc>
ffffffff80911694:	01 00 9f f8 	ldi	$r4,1
ffffffff80911698:	04 e9 83 48 	sll	$r4,0x1f,$r4
ffffffff8091169c:	03 01 64 40 	addl	$r3,$r4,$r3
ffffffff809116a0:	26 a9 61 48 	srl	$r3,0xd,$r6
ffffffff809116a4:	85 05 a6 40 	cmpule	$r5,$r6,$r5
ffffffff809116a8:	a0 00 a0 c4 	bne	$r5,ffffffff8091192c <vmm_init+0x83c>
ffffffff809116ac:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff809116b0:	c8 81 8c 8d 	ldl	$r12,-32312($r12)
ffffffff809116b4:	83 01 c0 48 	s8addl	$r6,0,$r3
ffffffff809116b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809116bc:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff809116c0:	01 00 3f fa 	ldi	$r17,1
ffffffff809116c4:	03 01 66 40 	addl	$r3,$r6,$r3
ffffffff809116c8:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff809116cc:	00 00 0c 8e 	ldl	$r16,0($r12)
ffffffff809116d0:	50 00 5e ac 	stl	$r2,80(sp)
ffffffff809116d4:	10 01 03 42 	addl	$r16,$r3,$r16
ffffffff809116d8:	cd 04 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff809116dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809116e0:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff809116e4:	00 80 7f fc 	ldih	$r3,-32768
ffffffff809116e8:	24 69 bd fb 	ldi	$r29,26916($r29)
ffffffff809116ec:	ff ff 63 f8 	ldi	$r3,-1($r3)
ffffffff809116f0:	83 05 43 40 	cmpule	$r2,$r3,$r3
ffffffff809116f4:	5e 00 60 c0 	beq	$r3,ffffffff80911870 <vmm_init+0x780>
ffffffff809116f8:	00 00 6e 8c 	ldl	$r3,0($r14)
ffffffff809116fc:	22 01 43 40 	subl	$r2,$r3,$r2
ffffffff80911700:	00 00 6f 8c 	ldl	$r3,0(fp)
ffffffff80911704:	22 a9 41 48 	srl	$r2,0xd,$r2
ffffffff80911708:	63 05 43 40 	cmpult	$r2,$r3,$r3
ffffffff8091170c:	87 00 60 c0 	beq	$r3,ffffffff8091192c <vmm_init+0x83c>
ffffffff80911710:	83 01 40 48 	s8addl	$r2,0,$r3
ffffffff80911714:	00 00 0c 8e 	ldl	$r16,0($r12)
ffffffff80911718:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091171c:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80911720:	01 00 3f fa 	ldi	$r17,1
ffffffff80911724:	02 01 62 40 	addl	$r3,$r2,$r2
ffffffff80911728:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff8091172c:	10 01 02 42 	addl	$r16,$r2,$r16
ffffffff80911730:	b7 04 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff80911734:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911738:	00 80 5f fc 	ldih	$r2,-32768
ffffffff8091173c:	cc 68 bd fb 	ldi	$r29,26828($r29)
ffffffff80911740:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff80911744:	82 05 62 41 	cmpule	$r11,$r2,$r2
ffffffff80911748:	51 00 40 c4 	bne	$r2,ffffffff80911890 <vmm_init+0x7a0>
ffffffff8091174c:	01 00 5f f8 	ldi	$r2,1
ffffffff80911750:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff80911754:	01 01 62 41 	addl	$r11,$r2,$r1
ffffffff80911758:	00 00 4f 8c 	ldl	$r2,0(fp)
ffffffff8091175c:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80911760:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80911764:	71 00 40 c0 	beq	$r2,ffffffff8091192c <vmm_init+0x83c>
ffffffff80911768:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff8091176c:	00 00 0c 8e 	ldl	$r16,0($r12)
ffffffff80911770:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911774:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80911778:	01 00 3f fa 	ldi	$r17,1
ffffffff8091177c:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80911780:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911784:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80911788:	a1 04 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff8091178c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911790:	00 00 ea af 	stl	$r31,0($r10)
ffffffff80911794:	74 68 bd fb 	ldi	$r29,26740($r29)
ffffffff80911798:	50 07 e9 43 	mov	$r9,$r16
ffffffff8091179c:	18 00 e9 af 	stl	$r31,24($r9)
ffffffff809117a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809117a4:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff809117a8:	29 fe 5b 07 	call	ra,($r27),ffffffff80911050 <mm_destroy>
ffffffff809117ac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117b0:	54 68 bd fb 	ldi	$r29,26708($r29)
ffffffff809117b4:	00 00 ed af 	stl	$r31,0($r13)
ffffffff809117b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809117bc:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff809117c0:	a7 04 5b 07 	call	ra,($r27),ffffffff80912a60 <nr_free_pages>
ffffffff809117c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117c8:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff809117cc:	3c 68 bd fb 	ldi	$r29,26684($r29)
ffffffff809117d0:	31 01 3f fa 	ldi	$r17,305
ffffffff809117d4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809117d8:	d5 d4 73 fa 	ldi	$r19,-11051($r19)
ffffffff809117dc:	0c 05 20 40 	cmpeq	$r1,$r0,$r12
ffffffff809117e0:	7f fe 9f c1 	beq	$r12,ffffffff809111e0 <vmm_init+0xf0>
ffffffff809117e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809117e8:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809117ec:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809117f0:	a6 d5 10 fa 	ldi	$r16,-10842($r16)
ffffffff809117f4:	66 fa 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809117f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117fc:	08 68 bd fb 	ldi	$r29,26632($r29)
ffffffff80911800:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911804:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff80911808:	95 04 5b 07 	call	ra,($r27),ffffffff80912a60 <nr_free_pages>
ffffffff8091180c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911810:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80911814:	f4 67 bd fb 	ldi	$r29,26612($r29)
ffffffff80911818:	ba 00 3f fa 	ldi	$r17,186
ffffffff8091181c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911820:	d5 d4 73 fa 	ldi	$r19,-11051($r19)
ffffffff80911824:	0b 05 20 40 	cmpeq	$r1,$r0,$r11
ffffffff80911828:	6d fe 7f c1 	beq	$r11,ffffffff809111e0 <vmm_init+0xf0>
ffffffff8091182c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911830:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80911834:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911838:	c2 d5 10 fa 	ldi	$r16,-10814($r16)
ffffffff8091183c:	54 fa 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80911840:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911844:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911848:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091184c:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911850:	c0 67 bd fb 	ldi	$r29,26560($r29)
ffffffff80911854:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911858:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff8091185c:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80911860:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80911864:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80911868:	60 00 de fb 	ldi	sp,96(sp)
ffffffff8091186c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911870:	01 00 7f f8 	ldi	$r3,1
ffffffff80911874:	03 e9 63 48 	sll	$r3,0x1f,$r3
ffffffff80911878:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff8091187c:	a0 ff ff 13 	br	ffffffff80911700 <vmm_init+0x610>
ffffffff80911880:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911884:	0e 01 3f fa 	ldi	$r17,270
ffffffff80911888:	da d5 73 fa 	ldi	$r19,-10790($r19)
ffffffff8091188c:	54 fe ff 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff80911890:	00 00 4e 8c 	ldl	$r2,0($r14)
ffffffff80911894:	21 01 62 41 	subl	$r11,$r2,$r1
ffffffff80911898:	af ff ff 13 	br	ffffffff80911758 <vmm_init+0x668>
ffffffff8091189c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809118a0:	da 00 3f fa 	ldi	$r17,218
ffffffff809118a4:	cc d3 73 fa 	ldi	$r19,-11316($r19)
ffffffff809118a8:	4d fe ff 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff809118ac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809118b0:	ea 00 3f fa 	ldi	$r17,234
ffffffff809118b4:	42 d4 73 fa 	ldi	$r19,-11198($r19)
ffffffff809118b8:	49 fe ff 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff809118bc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809118c0:	eb 00 3f fa 	ldi	$r17,235
ffffffff809118c4:	6f d4 73 fa 	ldi	$r19,-11153($r19)
ffffffff809118c8:	45 fe ff 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff809118cc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809118d0:	d8 00 3f fa 	ldi	$r17,216
ffffffff809118d4:	b5 d3 73 fa 	ldi	$r19,-11339($r19)
ffffffff809118d8:	41 fe ff 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff809118dc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809118e0:	e6 00 3f fa 	ldi	$r17,230
ffffffff809118e4:	28 d4 73 fa 	ldi	$r19,-11224($r19)
ffffffff809118e8:	3d fe ff 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff809118ec:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809118f0:	e4 00 3f fa 	ldi	$r17,228
ffffffff809118f4:	1b d4 73 fa 	ldi	$r19,-11237($r19)
ffffffff809118f8:	39 fe ff 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff809118fc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911900:	e2 00 3f fa 	ldi	$r17,226
ffffffff80911904:	0e d4 73 fa 	ldi	$r19,-11250($r19)
ffffffff80911908:	35 fe ff 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff8091190c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911910:	e0 00 3f fa 	ldi	$r17,224
ffffffff80911914:	01 d4 73 fa 	ldi	$r19,-11263($r19)
ffffffff80911918:	31 fe ff 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff8091191c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911920:	e8 00 3f fa 	ldi	$r17,232
ffffffff80911924:	35 d4 73 fa 	ldi	$r19,-11211($r19)
ffffffff80911928:	2d fe ff 13 	br	ffffffff809111e0 <vmm_init+0xf0>
ffffffff8091192c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911930:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80911934:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911938:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091193c:	66 00 3f fa 	ldi	$r17,102
ffffffff80911940:	79 d5 52 fa 	ldi	$r18,-10887($r18)
ffffffff80911944:	98 d5 10 fa 	ldi	$r16,-10856($r16)
ffffffff80911948:	39 fa 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff8091194c:	24 01 3f fa 	ldi	$r17,292
ffffffff80911950:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911954:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80911958:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff8091195c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911960:	56 d5 52 fa 	ldi	$r18,-10922($r18)
ffffffff80911964:	43 d3 10 fa 	ldi	$r16,-11453($r16)
ffffffff80911968:	31 fa 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff8091196c:	5f 07 ff 43 	nop	

ffffffff80911970 <do_pgfault>:
ffffffff80911970:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911974:	90 66 bd fb 	ldi	$r29,26256($r29)
ffffffff80911978:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff8091197c:	51 07 f2 43 	mov	$r18,$r17
ffffffff80911980:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911984:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911988:	4b 07 f0 43 	mov	$r16,$r11
ffffffff8091198c:	4c 07 f2 43 	mov	$r18,$r12
ffffffff80911990:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911994:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911998:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff8091199c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809119a0:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff809119a4:	00 00 5b 07 	call	ra,($r27),ffffffff809119a8 <do_pgfault+0x38>
ffffffff809119a8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809119ac:	58 66 bd fb 	ldi	$r29,26200($r29)
ffffffff809119b0:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff809119b4:	f4 81 22 88 	ldw	$r1,-32268($r2)
ffffffff809119b8:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff809119bc:	f4 81 22 a8 	stw	$r1,-32268($r2)
ffffffff809119c0:	03 00 00 c0 	beq	$r0,ffffffff809119d0 <do_pgfault+0x60>
ffffffff809119c4:	08 00 20 8c 	ldl	$r1,8($r0)
ffffffff809119c8:	81 05 2c 40 	cmpule	$r1,$r12,$r1
ffffffff809119cc:	08 00 20 c4 	bne	$r1,ffffffff809119f0 <do_pgfault+0x80>
ffffffff809119d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809119d4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809119d8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809119dc:	51 07 ec 43 	mov	$r12,$r17
ffffffff809119e0:	e6 d5 10 fa 	ldi	$r16,-10778($r16)
ffffffff809119e4:	ea f9 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809119e8:	ff ff ff 13 	br	ffffffff809119e8 <do_pgfault+0x78>
ffffffff809119ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809119f0:	18 00 40 8d 	ldl	$r10,24($r0)
ffffffff809119f4:	01 00 3f fc 	ldih	$r1,1
ffffffff809119f8:	18 00 0b 8e 	ldl	$r16,24($r11)
ffffffff809119fc:	00 e0 3f f9 	ldi	$r9,-8192
ffffffff80911a00:	00 cc 41 f8 	ldi	$r2,-13312($r1)
ffffffff80911a04:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a08:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff80911a0c:	00 88 21 f8 	ldi	$r1,-30720($r1)
ffffffff80911a10:	09 07 89 41 	and	$r12,$r9,$r9
ffffffff80911a14:	01 00 5f fa 	ldi	$r18,1
ffffffff80911a18:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911a1c:	0a 47 40 49 	and	$r10,0x2,$r10
ffffffff80911a20:	42 00 41 45 	seleq	$r10,$r1,$r2,$r2
ffffffff80911a24:	4a 07 e2 43 	mov	$r2,$r10
ffffffff80911a28:	21 04 5b 07 	call	ra,($r27),ffffffff80912ab0 <get_pte>
ffffffff80911a2c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a30:	d4 65 bd fb 	ldi	$r29,26068($r29)
ffffffff80911a34:	14 00 00 c0 	beq	$r0,ffffffff80911a88 <do_pgfault+0x118>
ffffffff80911a38:	00 00 20 8e 	ldl	$r17,0($r0)
ffffffff80911a3c:	24 00 20 de 	blbs	$r17,ffffffff80911ad0 <do_pgfault+0x160>
ffffffff80911a40:	18 00 0b 8e 	ldl	$r16,24($r11)
ffffffff80911a44:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a48:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80911a4c:	52 07 ea 43 	mov	$r10,$r18
ffffffff80911a50:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911a54:	92 09 5b 07 	call	ra,($r27),ffffffff809140a0 <pgdir_alloc_page>
ffffffff80911a58:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a5c:	a8 65 bd fb 	ldi	$r29,26024($r29)
ffffffff80911a60:	41 07 ff 43 	clr	$r1
ffffffff80911a64:	11 00 00 c0 	beq	$r0,ffffffff80911aac <do_pgfault+0x13c>
ffffffff80911a68:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911a6c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911a70:	40 07 e1 43 	mov	$r1,$r0
ffffffff80911a74:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911a78:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911a7c:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80911a80:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80911a84:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911a88:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a8c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80911a90:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911a94:	16 d6 10 fa 	ldi	$r16,-10730($r16)
ffffffff80911a98:	bd f9 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80911a9c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911aa0:	64 65 bd fb 	ldi	$r29,25956($r29)
ffffffff80911aa4:	fc ff 3f f8 	ldi	$r1,-4
ffffffff80911aa8:	ef ff ff 13 	br	ffffffff80911a68 <do_pgfault+0xf8>
ffffffff80911aac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911ab0:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80911ab4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911ab8:	34 d6 10 fa 	ldi	$r16,-10700($r16)
ffffffff80911abc:	b4 f9 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80911ac0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911ac4:	40 65 bd fb 	ldi	$r29,25920($r29)
ffffffff80911ac8:	fc ff 3f f8 	ldi	$r1,-4
ffffffff80911acc:	e6 ff ff 13 	br	ffffffff80911a68 <do_pgfault+0xf8>
ffffffff80911ad0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911ad4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80911ad8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911adc:	5b d6 10 fa 	ldi	$r16,-10661($r16)
ffffffff80911ae0:	ab f9 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80911ae4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911ae8:	1c 65 bd fb 	ldi	$r29,25884($r29)
ffffffff80911aec:	fc ff 3f f8 	ldi	$r1,-4
ffffffff80911af0:	dd ff ff 13 	br	ffffffff80911a68 <do_pgfault+0xf8>
ffffffff80911af4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911af8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911afc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911b00 <default_init>:
ffffffff80911b00:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911b04:	00 65 bd fb 	ldi	$r29,25856($r29)
ffffffff80911b08:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911b0c:	a8 81 21 8c 	ldl	$r1,-32344($r1)
ffffffff80911b10:	08 00 21 ac 	stl	$r1,8($r1)
ffffffff80911b14:	00 00 21 ac 	stl	$r1,0($r1)
ffffffff80911b18:	10 00 e1 ab 	stw	$r31,16($r1)
ffffffff80911b1c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80911b20 <default_nr_free_pages>:
ffffffff80911b20:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911b24:	e0 64 bd fb 	ldi	$r29,25824($r29)
ffffffff80911b28:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911b2c:	a8 81 21 8c 	ldl	$r1,-32344($r1)
ffffffff80911b30:	10 00 01 88 	ldw	$r0,16($r1)
ffffffff80911b34:	20 ed 01 48 	zapnot	$r0,0xf,$r0
ffffffff80911b38:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911b3c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911b40 <default_free_pages>:
ffffffff80911b40:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911b44:	c0 64 bd fb 	ldi	$r29,25792($r29)
ffffffff80911b48:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80911b4c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911b50:	99 00 20 c2 	beq	$r17,ffffffff80911db8 <default_free_pages+0x278>
ffffffff80911b54:	84 01 20 4a 	s8addl	$r17,0,$r4
ffffffff80911b58:	04 01 91 40 	addl	$r4,$r17,$r4
ffffffff80911b5c:	84 01 80 48 	s8addl	$r4,0,$r4
ffffffff80911b60:	04 01 04 42 	addl	$r16,$r4,$r4
ffffffff80911b64:	01 05 04 42 	cmpeq	$r16,$r4,$r1
ffffffff80911b68:	12 00 20 c4 	bne	$r1,ffffffff80911bb4 <default_free_pages+0x74>
ffffffff80911b6c:	08 00 50 88 	ldw	$r2,8($r16)
ffffffff80911b70:	41 29 40 48 	sra	$r2,0x1,$r1
ffffffff80911b74:	41 07 22 40 	or	$r1,$r2,$r1
ffffffff80911b78:	85 00 20 dc 	blbs	$r1,ffffffff80911d90 <default_free_pages+0x250>
ffffffff80911b7c:	41 07 f0 43 	mov	$r16,$r1
ffffffff80911b80:	07 00 e0 13 	br	ffffffff80911ba0 <default_free_pages+0x60>
ffffffff80911b84:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b88:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b8c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b90:	08 00 61 88 	ldw	$r3,8($r1)
ffffffff80911b94:	42 29 60 48 	sra	$r3,0x1,$r2
ffffffff80911b98:	42 07 43 40 	or	$r2,$r3,$r2
ffffffff80911b9c:	7c 00 40 dc 	blbs	$r2,ffffffff80911d90 <default_free_pages+0x250>
ffffffff80911ba0:	08 00 e1 af 	stl	$r31,8($r1)
ffffffff80911ba4:	00 00 e1 ab 	stw	$r31,0($r1)
ffffffff80911ba8:	48 00 21 f8 	ldi	$r1,72($r1)
ffffffff80911bac:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff80911bb0:	f7 ff 5f c0 	beq	$r2,ffffffff80911b90 <default_free_pages+0x50>
ffffffff80911bb4:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80911bb8:	08 00 d0 f8 	ldi	$r6,8($r16)
ffffffff80911bbc:	18 00 30 aa 	stw	$r17,24($r16)
ffffffff80911bc0:	08 00 70 f8 	ldi	$r3,8($r16)
ffffffff80911bc4:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff80911bc8:	01 00 5f f8 	ldi	$r2,1
ffffffff80911bcc:	20 10 5f 18 	wr_f	$r2
ffffffff80911bd0:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff80911bd4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911bd8:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff80911bdc:	00 10 5f 18 	rd_f	$r2
ffffffff80911be0:	79 00 40 c0 	beq	$r2,ffffffff80911dc8 <default_free_pages+0x288>
ffffffff80911be4:	00 00 9d fc 	ldih	$r4,0($r29)
ffffffff80911be8:	a8 81 84 8c 	ldl	$r4,-32344($r4)
ffffffff80911bec:	10 00 44 88 	ldw	$r2,16($r4)
ffffffff80911bf0:	08 00 24 8c 	ldl	$r1,8($r4)
ffffffff80911bf4:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff80911bf8:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff80911bfc:	10 00 24 aa 	stw	$r17,16($r4)
ffffffff80911c00:	07 00 40 c0 	beq	$r2,ffffffff80911c20 <default_free_pages+0xe0>
ffffffff80911c04:	3a 00 e0 13 	br	ffffffff80911cf0 <default_free_pages+0x1b0>
ffffffff80911c08:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911c0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911c10:	08 00 61 8c 	ldl	$r3,8($r1)
ffffffff80911c14:	05 05 64 40 	cmpeq	$r3,$r4,$r5
ffffffff80911c18:	3d 00 a0 c4 	bne	$r5,ffffffff80911d10 <default_free_pages+0x1d0>
ffffffff80911c1c:	41 07 e3 43 	mov	$r3,$r1
ffffffff80911c20:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80911c24:	63 05 02 42 	cmpult	$r16,$r2,$r3
ffffffff80911c28:	45 07 e2 43 	mov	$r2,$r5
ffffffff80911c2c:	f8 ff 7f c0 	beq	$r3,ffffffff80911c10 <default_free_pages+0xd0>
ffffffff80911c30:	00 00 61 8c 	ldl	$r3,0($r1)
ffffffff80911c34:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff80911c38:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80911c3c:	08 00 43 ac 	stl	$r2,8($r3)
ffffffff80911c40:	02 05 64 40 	cmpeq	$r3,$r4,$r2
ffffffff80911c44:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80911c48:	20 00 70 ac 	stl	$r3,32($r16)
ffffffff80911c4c:	0d 00 40 c4 	bne	$r2,ffffffff80911c84 <default_free_pages+0x144>
ffffffff80911c50:	f8 ff e3 88 	ldw	$r7,-8($r3)
ffffffff80911c54:	e0 ff 43 f8 	ldi	$r2,-32($r3)
ffffffff80911c58:	25 ed e1 48 	zapnot	$r7,0xf,$r5
ffffffff80911c5c:	81 01 a0 48 	s8addl	$r5,0,$r1
ffffffff80911c60:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80911c64:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911c68:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80911c6c:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff80911c70:	35 00 20 c4 	bne	$r1,ffffffff80911d48 <default_free_pages+0x208>
ffffffff80911c74:	28 00 30 8c 	ldl	$r1,40($r16)
ffffffff80911c78:	04 05 24 40 	cmpeq	$r1,$r4,$r4
ffffffff80911c7c:	e0 ff a1 f8 	ldi	$r5,-32($r1)
ffffffff80911c80:	18 00 80 c4 	bne	$r4,ffffffff80911ce4 <default_free_pages+0x1a4>
ffffffff80911c84:	18 00 90 88 	ldw	$r4,24($r16)
ffffffff80911c88:	23 ed 81 48 	zapnot	$r4,0xf,$r3
ffffffff80911c8c:	82 01 60 48 	s8addl	$r3,0,$r2
ffffffff80911c90:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80911c94:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80911c98:	02 01 02 42 	addl	$r16,$r2,$r2
ffffffff80911c9c:	05 05 a2 40 	cmpeq	$r5,$r2,$r5
ffffffff80911ca0:	10 00 a0 c0 	beq	$r5,ffffffff80911ce4 <default_free_pages+0x1a4>
ffffffff80911ca4:	f8 ff 41 88 	ldw	$r2,-8($r1)
ffffffff80911ca8:	04 00 44 40 	addw	$r2,$r4,$r4
ffffffff80911cac:	18 00 90 a8 	stw	$r4,24($r16)
ffffffff80911cb0:	e8 ff 81 f8 	ldi	$r4,-24($r1)
ffffffff80911cb4:	00 00 44 20 	lldw	$r2,0($r4)
ffffffff80911cb8:	01 00 7f f8 	ldi	$r3,1
ffffffff80911cbc:	20 10 7f 18 	wr_f	$r3
ffffffff80911cc0:	22 47 40 48 	bic	$r2,0x2,$r2
ffffffff80911cc4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911cc8:	00 80 44 20 	lstw	$r2,0($r4)
ffffffff80911ccc:	00 10 7f 18 	rd_f	$r3
ffffffff80911cd0:	3e 00 60 c0 	beq	$r3,ffffffff80911dcc <default_free_pages+0x28c>
ffffffff80911cd4:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff80911cd8:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80911cdc:	08 00 22 ac 	stl	$r1,8($r2)
ffffffff80911ce0:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80911ce4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911ce8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911cec:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911cf0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911cf4:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff80911cf8:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80911cfc:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80911d00:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80911d04:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff80911d08:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911d0c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911d10:	43 07 e1 43 	mov	$r1,$r3
ffffffff80911d14:	20 00 b0 f8 	ldi	$r5,32($r16)
ffffffff80911d18:	f8 ff e3 88 	ldw	$r7,-8($r3)
ffffffff80911d1c:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff80911d20:	00 00 a4 ac 	stl	$r5,0($r4)
ffffffff80911d24:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80911d28:	28 00 90 ac 	stl	$r4,40($r16)
ffffffff80911d2c:	25 ed e1 48 	zapnot	$r7,0xf,$r5
ffffffff80911d30:	81 01 a0 48 	s8addl	$r5,0,$r1
ffffffff80911d34:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80911d38:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911d3c:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80911d40:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff80911d44:	cb ff 3f c0 	beq	$r1,ffffffff80911c74 <default_free_pages+0x134>
ffffffff80911d48:	18 00 30 88 	ldw	$r1,24($r16)
ffffffff80911d4c:	07 00 27 40 	addw	$r1,$r7,$r7
ffffffff80911d50:	f8 ff e3 a8 	stw	$r7,-8($r3)
ffffffff80911d54:	00 00 e6 f8 	ldi	$r7,0($r6)
ffffffff80911d58:	00 00 27 20 	lldw	$r1,0($r7)
ffffffff80911d5c:	01 00 bf f8 	ldi	$r5,1
ffffffff80911d60:	20 10 bf 18 	wr_f	$r5
ffffffff80911d64:	21 47 20 48 	bic	$r1,0x2,$r1
ffffffff80911d68:	00 80 27 20 	lstw	$r1,0($r7)
ffffffff80911d6c:	00 10 bf 18 	rd_f	$r5
ffffffff80911d70:	17 00 a0 c0 	beq	$r5,ffffffff80911dd0 <default_free_pages+0x290>
ffffffff80911d74:	28 00 30 8c 	ldl	$r1,40($r16)
ffffffff80911d78:	20 00 b0 8c 	ldl	$r5,32($r16)
ffffffff80911d7c:	50 07 e2 43 	mov	$r2,$r16
ffffffff80911d80:	08 00 25 ac 	stl	$r1,8($r5)
ffffffff80911d84:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff80911d88:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff80911d8c:	ba ff ff 13 	br	ffffffff80911c78 <default_free_pages+0x138>
ffffffff80911d90:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911d94:	82 00 3f fa 	ldi	$r17,130
ffffffff80911d98:	a6 d6 73 fa 	ldi	$r19,-10586($r19)
ffffffff80911d9c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911da0:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80911da4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911da8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911dac:	2e d3 52 fa 	ldi	$r18,-11474($r18)
ffffffff80911db0:	90 d6 10 fa 	ldi	$r16,-10608($r16)
ffffffff80911db4:	1e f9 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80911db8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911dbc:	7f 00 3f fa 	ldi	$r17,127
ffffffff80911dc0:	8a d6 73 fa 	ldi	$r19,-10614($r19)
ffffffff80911dc4:	f5 ff ff 13 	br	ffffffff80911d9c <default_free_pages+0x25c>
ffffffff80911dc8:	7e ff ff 13 	br	ffffffff80911bc4 <default_free_pages+0x84>
ffffffff80911dcc:	b9 ff ff 13 	br	ffffffff80911cb4 <default_free_pages+0x174>
ffffffff80911dd0:	e1 ff ff 13 	br	ffffffff80911d58 <default_free_pages+0x218>
ffffffff80911dd4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911dd8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911ddc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911de0 <default_init_memmap>:
ffffffff80911de0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911de4:	20 62 bd fb 	ldi	$r29,25120($r29)
ffffffff80911de8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80911dec:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911df0:	5d 00 20 c2 	beq	$r17,ffffffff80911f68 <default_init_memmap+0x188>
ffffffff80911df4:	83 01 20 4a 	s8addl	$r17,0,$r3
ffffffff80911df8:	03 01 71 40 	addl	$r3,$r17,$r3
ffffffff80911dfc:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff80911e00:	03 01 03 42 	addl	$r16,$r3,$r3
ffffffff80911e04:	01 05 03 42 	cmpeq	$r16,$r3,$r1
ffffffff80911e08:	0d 00 20 c4 	bne	$r1,ffffffff80911e40 <default_init_memmap+0x60>
ffffffff80911e0c:	08 00 30 88 	ldw	$r1,8($r16)
ffffffff80911e10:	4b 00 20 d8 	blbc	$r1,ffffffff80911f40 <default_init_memmap+0x160>
ffffffff80911e14:	41 07 f0 43 	mov	$r16,$r1
ffffffff80911e18:	03 00 e0 13 	br	ffffffff80911e28 <default_init_memmap+0x48>
ffffffff80911e1c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911e20:	08 00 41 88 	ldw	$r2,8($r1)
ffffffff80911e24:	46 00 40 d8 	blbc	$r2,ffffffff80911f40 <default_init_memmap+0x160>
ffffffff80911e28:	18 00 e1 ab 	stw	$r31,24($r1)
ffffffff80911e2c:	08 00 e1 af 	stl	$r31,8($r1)
ffffffff80911e30:	48 00 21 f8 	ldi	$r1,72($r1)
ffffffff80911e34:	b8 ff e1 ab 	stw	$r31,-72($r1)
ffffffff80911e38:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff80911e3c:	f8 ff 5f c0 	beq	$r2,ffffffff80911e20 <default_init_memmap+0x40>
ffffffff80911e40:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80911e44:	18 00 30 aa 	stw	$r17,24($r16)
ffffffff80911e48:	08 00 70 f8 	ldi	$r3,8($r16)
ffffffff80911e4c:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff80911e50:	01 00 5f f8 	ldi	$r2,1
ffffffff80911e54:	20 10 5f 18 	wr_f	$r2
ffffffff80911e58:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff80911e5c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911e60:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff80911e64:	00 10 5f 18 	rd_f	$r2
ffffffff80911e68:	47 00 40 c0 	beq	$r2,ffffffff80911f88 <default_init_memmap+0x1a8>
ffffffff80911e6c:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80911e70:	a8 81 63 8c 	ldl	$r3,-32344($r3)
ffffffff80911e74:	10 00 43 88 	ldw	$r2,16($r3)
ffffffff80911e78:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff80911e7c:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff80911e80:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff80911e84:	10 00 23 aa 	stw	$r17,16($r3)
ffffffff80911e88:	25 00 40 c4 	bne	$r2,ffffffff80911f20 <default_init_memmap+0x140>
ffffffff80911e8c:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80911e90:	00 00 c3 8c 	ldl	$r6,0($r3)
ffffffff80911e94:	47 07 ff 43 	clr	$r7
ffffffff80911e98:	20 00 b0 f8 	ldi	$r5,32($r16)
ffffffff80911e9c:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80911ea0:	0a 00 40 c4 	bne	$r2,ffffffff80911ecc <default_init_memmap+0xec>
ffffffff80911ea4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911ea8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911eac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911eb0:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911eb4:	04 05 43 40 	cmpeq	$r2,$r3,$r4
ffffffff80911eb8:	0d 00 80 c4 	bne	$r4,ffffffff80911ef0 <default_init_memmap+0x110>
ffffffff80911ebc:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911ec0:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80911ec4:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80911ec8:	f9 ff 5f c0 	beq	$r2,ffffffff80911eb0 <default_init_memmap+0xd0>
ffffffff80911ecc:	2c 00 e0 c4 	bne	$r7,ffffffff80911f80 <default_init_memmap+0x1a0>
ffffffff80911ed0:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff80911ed4:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff80911ed8:	08 00 a2 ac 	stl	$r5,8($r2)
ffffffff80911edc:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80911ee0:	20 00 50 ac 	stl	$r2,32($r16)
ffffffff80911ee4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911ee8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911eec:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911ef0:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff80911ef4:	46 07 e5 43 	mov	$r5,$r6
ffffffff80911ef8:	28 00 70 ac 	stl	$r3,40($r16)
ffffffff80911efc:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80911f00:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911f04:	01 05 43 40 	cmpeq	$r2,$r3,$r1
ffffffff80911f08:	1b 00 20 c4 	bne	$r1,ffffffff80911f78 <default_init_memmap+0x198>
ffffffff80911f0c:	01 00 ff f8 	ldi	$r7,1
ffffffff80911f10:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911f14:	ea ff ff 13 	br	ffffffff80911ec0 <default_init_memmap+0xe0>
ffffffff80911f18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911f1c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911f20:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911f24:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff80911f28:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80911f2c:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80911f30:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80911f34:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff80911f38:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911f3c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911f40:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911f44:	47 00 3f fa 	ldi	$r17,71
ffffffff80911f48:	cb d6 73 fa 	ldi	$r19,-10549($r19)
ffffffff80911f4c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911f50:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80911f54:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911f58:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911f5c:	2e d3 52 fa 	ldi	$r18,-11474($r18)
ffffffff80911f60:	90 d6 10 fa 	ldi	$r16,-10608($r16)
ffffffff80911f64:	b2 f8 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80911f68:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911f6c:	44 00 3f fa 	ldi	$r17,68
ffffffff80911f70:	8a d6 73 fa 	ldi	$r19,-10614($r19)
ffffffff80911f74:	f5 ff ff 13 	br	ffffffff80911f4c <default_init_memmap+0x16c>
ffffffff80911f78:	00 00 a3 ac 	stl	$r5,0($r3)
ffffffff80911f7c:	d9 ff ff 13 	br	ffffffff80911ee4 <default_init_memmap+0x104>
ffffffff80911f80:	00 00 c3 ac 	stl	$r6,0($r3)
ffffffff80911f84:	d2 ff ff 13 	br	ffffffff80911ed0 <default_init_memmap+0xf0>
ffffffff80911f88:	b0 ff ff 13 	br	ffffffff80911e4c <default_init_memmap+0x6c>
ffffffff80911f8c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911f90 <default_check>:
ffffffff80911f90:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911f94:	70 60 bd fb 	ldi	$r29,24688($r29)
ffffffff80911f98:	a0 ff de fb 	ldi	sp,-96(sp)
ffffffff80911f9c:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80911fa0:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff80911fa4:	a8 81 ce 8d 	ldl	$r14,-32344($r14)
ffffffff80911fa8:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911fac:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911fb0:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80911fb4:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911fb8:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80911fbc:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911fc0:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80911fc4:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80911fc8:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff80911fcc:	ec 01 60 c4 	bne	$r3,ffffffff80912780 <default_check+0x7f0>
ffffffff80911fd0:	e8 ff 61 88 	ldw	$r3,-24($r1)
ffffffff80911fd4:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff80911fd8:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff80911fdc:	f6 01 60 c0 	beq	$r3,ffffffff809127b8 <default_check+0x828>
ffffffff80911fe0:	49 07 ff 43 	clr	$r9
ffffffff80911fe4:	4a 07 ff 43 	clr	$r10
ffffffff80911fe8:	04 00 e0 13 	br	ffffffff80911ffc <default_check+0x6c>
ffffffff80911fec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911ff0:	e8 ff 61 88 	ldw	$r3,-24($r1)
ffffffff80911ff4:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff80911ff8:	ef 01 60 c0 	beq	$r3,ffffffff809127b8 <default_check+0x828>
ffffffff80911ffc:	f8 ff 81 88 	ldw	$r4,-8($r1)
ffffffff80912000:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80912004:	0a 20 40 49 	addw	$r10,0x1,$r10
ffffffff80912008:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff8091200c:	09 00 89 40 	addw	$r4,$r9,$r9
ffffffff80912010:	f7 ff 7f c0 	beq	$r3,ffffffff80911ff0 <default_check+0x60>
ffffffff80912014:	4b 07 e9 43 	mov	$r9,$r11
ffffffff80912018:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091201c:	d8 80 7b 8f 	ldl	$r27,-32552($r27)
ffffffff80912020:	8f 02 5b 07 	call	ra,($r27),ffffffff80912a60 <nr_free_pages>
ffffffff80912024:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912028:	00 05 0b 40 	cmpeq	$r0,$r11,$r0
ffffffff8091202c:	dc 5f bd fb 	ldi	$r29,24540($r29)
ffffffff80912030:	d7 01 00 c0 	beq	$r0,ffffffff80912790 <default_check+0x800>
ffffffff80912034:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912038:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff8091203c:	01 00 1f fa 	ldi	$r16,1
ffffffff80912040:	5b 02 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff80912044:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912048:	bc 5f bd fb 	ldi	$r29,24508($r29)
ffffffff8091204c:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80912050:	b9 00 3f fa 	ldi	$r17,185
ffffffff80912054:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912058:	f4 d6 73 fa 	ldi	$r19,-10508($r19)
ffffffff8091205c:	cf 01 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff80912060:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912064:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80912068:	01 00 1f fa 	ldi	$r16,1
ffffffff8091206c:	50 02 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff80912070:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912074:	90 5f bd fb 	ldi	$r29,24464($r29)
ffffffff80912078:	4d 07 e0 43 	mov	$r0,$r13
ffffffff8091207c:	ba 00 3f fa 	ldi	$r17,186
ffffffff80912080:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912084:	10 d7 73 fa 	ldi	$r19,-10480($r19)
ffffffff80912088:	c4 01 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff8091208c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912090:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80912094:	01 00 1f fa 	ldi	$r16,1
ffffffff80912098:	45 02 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff8091209c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809120a0:	64 5f bd fb 	ldi	$r29,24420($r29)
ffffffff809120a4:	4c 07 e0 43 	mov	$r0,$r12
ffffffff809120a8:	bb 00 3f fa 	ldi	$r17,187
ffffffff809120ac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809120b0:	2c d7 73 fa 	ldi	$r19,-10452($r19)
ffffffff809120b4:	b9 01 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff809120b8:	03 05 a0 41 	cmpeq	$r13,$r0,$r3
ffffffff809120bc:	05 05 60 41 	cmpeq	$r11,$r0,$r5
ffffffff809120c0:	01 05 6d 41 	cmpeq	$r11,$r13,$r1
ffffffff809120c4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809120c8:	44 07 e3 43 	mov	$r3,$r4
ffffffff809120cc:	bd 00 3f fa 	ldi	$r17,189
ffffffff809120d0:	48 d7 73 fa 	ldi	$r19,-10424($r19)
ffffffff809120d4:	43 07 85 40 	or	$r4,$r5,$r3
ffffffff809120d8:	41 07 23 40 	or	$r1,$r3,$r1
ffffffff809120dc:	af 01 20 c4 	bne	$r1,ffffffff8091279c <default_check+0x80c>
ffffffff809120e0:	00 00 2b 88 	ldw	$r1,0($r11)
ffffffff809120e4:	b8 01 20 c4 	bne	$r1,ffffffff809127c8 <default_check+0x838>
ffffffff809120e8:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff809120ec:	b6 01 20 c4 	bne	$r1,ffffffff809127c8 <default_check+0x838>
ffffffff809120f0:	00 00 20 88 	ldw	$r1,0($r0)
ffffffff809120f4:	b4 01 20 c4 	bne	$r1,ffffffff809127c8 <default_check+0x838>
ffffffff809120f8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809120fc:	c8 81 21 8c 	ldl	$r1,-32312($r1)
ffffffff80912100:	ff ff dd fc 	ldih	$r6,-1($r29)
ffffffff80912104:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80912108:	c8 80 63 8c 	ldl	$r3,-32568($r3)
ffffffff8091210c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912110:	f8 d9 e6 8c 	ldl	$r7,-9736($r6)
ffffffff80912114:	c0 00 3f fa 	ldi	$r17,192
ffffffff80912118:	a5 d7 73 fa 	ldi	$r19,-10331($r19)
ffffffff8091211c:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912120:	00 00 a3 8c 	ldl	$r5,0($r3)
ffffffff80912124:	24 01 61 41 	subl	$r11,$r1,$r4
ffffffff80912128:	05 a9 a1 48 	sll	$r5,0xd,$r5
ffffffff8091212c:	44 69 80 48 	sra	$r4,0x3,$r4
ffffffff80912130:	04 03 87 40 	mull	$r4,$r7,$r4
ffffffff80912134:	04 a9 81 48 	sll	$r4,0xd,$r4
ffffffff80912138:	64 05 85 40 	cmpult	$r4,$r5,$r4
ffffffff8091213c:	97 01 80 c0 	beq	$r4,ffffffff8091279c <default_check+0x80c>
ffffffff80912140:	23 01 a1 41 	subl	$r13,$r1,$r3
ffffffff80912144:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912148:	c1 00 3f fa 	ldi	$r17,193
ffffffff8091214c:	43 69 60 48 	sra	$r3,0x3,$r3
ffffffff80912150:	c2 d7 73 fa 	ldi	$r19,-10302($r19)
ffffffff80912154:	03 03 67 40 	mull	$r3,$r7,$r3
ffffffff80912158:	03 a9 61 48 	sll	$r3,0xd,$r3
ffffffff8091215c:	83 05 a3 40 	cmpule	$r5,$r3,$r3
ffffffff80912160:	8e 01 60 c4 	bne	$r3,ffffffff8091279c <default_check+0x80c>
ffffffff80912164:	f8 d9 66 8c 	ldl	$r3,-9736($r6)
ffffffff80912168:	21 01 01 40 	subl	$r0,$r1,$r1
ffffffff8091216c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912170:	c2 00 3f fa 	ldi	$r17,194
ffffffff80912174:	41 69 20 48 	sra	$r1,0x3,$r1
ffffffff80912178:	df d7 73 fa 	ldi	$r19,-10273($r19)
ffffffff8091217c:	01 03 23 40 	mull	$r1,$r3,$r1
ffffffff80912180:	01 a9 21 48 	sll	$r1,0xd,$r1
ffffffff80912184:	81 05 a1 40 	cmpule	$r5,$r1,$r1
ffffffff80912188:	84 01 20 c4 	bne	$r1,ffffffff8091279c <default_check+0x80c>
ffffffff8091218c:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80912190:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912194:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80912198:	01 00 1f fa 	ldi	$r16,1
ffffffff8091219c:	00 00 ee 8d 	ldl	fp,0($r14)
ffffffff809121a0:	08 00 ce ad 	stl	$r14,8($r14)
ffffffff809121a4:	00 00 ce ad 	stl	$r14,0($r14)
ffffffff809121a8:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff809121ac:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff809121b0:	10 00 ee ab 	stw	$r31,16($r14)
ffffffff809121b4:	48 00 3e ac 	stl	$r1,72(sp)
ffffffff809121b8:	fd 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff809121bc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809121c0:	44 5e bd fb 	ldi	$r29,24132($r29)
ffffffff809121c4:	cb 00 3f fa 	ldi	$r17,203
ffffffff809121c8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809121cc:	fc d7 73 fa 	ldi	$r19,-10244($r19)
ffffffff809121d0:	72 01 00 c4 	bne	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff809121d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809121d8:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff809121dc:	01 00 3f fa 	ldi	$r17,1
ffffffff809121e0:	50 07 eb 43 	mov	$r11,$r16
ffffffff809121e4:	0a 02 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff809121e8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809121ec:	18 5e bd fb 	ldi	$r29,24088($r29)
ffffffff809121f0:	01 00 3f fa 	ldi	$r17,1
ffffffff809121f4:	50 07 ed 43 	mov	$r13,$r16
ffffffff809121f8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809121fc:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80912200:	03 02 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff80912204:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912208:	fc 5d bd fb 	ldi	$r29,24060($r29)
ffffffff8091220c:	01 00 3f fa 	ldi	$r17,1
ffffffff80912210:	50 07 ec 43 	mov	$r12,$r16
ffffffff80912214:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912218:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff8091221c:	fc 01 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff80912220:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912224:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80912228:	e0 5d bd fb 	ldi	$r29,24032($r29)
ffffffff8091222c:	d0 00 3f fa 	ldi	$r17,208
ffffffff80912230:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912234:	11 d8 73 fa 	ldi	$r19,-10223($r19)
ffffffff80912238:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff8091223c:	57 01 20 c0 	beq	$r1,ffffffff8091279c <default_check+0x80c>
ffffffff80912240:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912244:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80912248:	01 00 1f fa 	ldi	$r16,1
ffffffff8091224c:	d8 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff80912250:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912254:	b0 5d bd fb 	ldi	$r29,23984($r29)
ffffffff80912258:	4b 07 e0 43 	mov	$r0,$r11
ffffffff8091225c:	d2 00 3f fa 	ldi	$r17,210
ffffffff80912260:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912264:	f4 d6 73 fa 	ldi	$r19,-10508($r19)
ffffffff80912268:	4c 01 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff8091226c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912270:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80912274:	01 00 1f fa 	ldi	$r16,1
ffffffff80912278:	cd 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff8091227c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912280:	84 5d bd fb 	ldi	$r29,23940($r29)
ffffffff80912284:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80912288:	d3 00 3f fa 	ldi	$r17,211
ffffffff8091228c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912290:	10 d7 73 fa 	ldi	$r19,-10480($r19)
ffffffff80912294:	41 01 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff80912298:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091229c:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff809122a0:	01 00 1f fa 	ldi	$r16,1
ffffffff809122a4:	c2 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff809122a8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809122ac:	58 5d bd fb 	ldi	$r29,23896($r29)
ffffffff809122b0:	4c 07 e0 43 	mov	$r0,$r12
ffffffff809122b4:	d4 00 3f fa 	ldi	$r17,212
ffffffff809122b8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809122bc:	2c d7 73 fa 	ldi	$r19,-10452($r19)
ffffffff809122c0:	36 01 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff809122c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809122c8:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff809122cc:	01 00 1f fa 	ldi	$r16,1
ffffffff809122d0:	b7 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff809122d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809122d8:	2c 5d bd fb 	ldi	$r29,23852($r29)
ffffffff809122dc:	d6 00 3f fa 	ldi	$r17,214
ffffffff809122e0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809122e4:	fc d7 73 fa 	ldi	$r19,-10244($r19)
ffffffff809122e8:	2c 01 00 c4 	bne	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff809122ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809122f0:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff809122f4:	01 00 3f fa 	ldi	$r17,1
ffffffff809122f8:	50 07 eb 43 	mov	$r11,$r16
ffffffff809122fc:	c4 01 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff80912300:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912304:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80912308:	00 5d bd fb 	ldi	$r29,23808($r29)
ffffffff8091230c:	d9 00 3f fa 	ldi	$r17,217
ffffffff80912310:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912314:	1e d8 73 fa 	ldi	$r19,-10210($r19)
ffffffff80912318:	01 05 2e 40 	cmpeq	$r1,$r14,$r1
ffffffff8091231c:	1f 01 20 c4 	bne	$r1,ffffffff8091279c <default_check+0x80c>
ffffffff80912320:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912324:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80912328:	01 00 1f fa 	ldi	$r16,1
ffffffff8091232c:	a0 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff80912330:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912334:	d0 5c bd fb 	ldi	$r29,23760($r29)
ffffffff80912338:	00 05 60 41 	cmpeq	$r11,$r0,$r0
ffffffff8091233c:	dc 00 3f fa 	ldi	$r17,220
ffffffff80912340:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912344:	36 d8 73 fa 	ldi	$r19,-10186($r19)
ffffffff80912348:	14 01 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff8091234c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912350:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80912354:	01 00 1f fa 	ldi	$r16,1
ffffffff80912358:	95 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff8091235c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912360:	a4 5c bd fb 	ldi	$r29,23716($r29)
ffffffff80912364:	dd 00 3f fa 	ldi	$r17,221
ffffffff80912368:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091236c:	fc d7 73 fa 	ldi	$r19,-10244($r19)
ffffffff80912370:	0a 01 00 c4 	bne	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff80912374:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80912378:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091237c:	df 00 3f fa 	ldi	$r17,223
ffffffff80912380:	4f d8 73 fa 	ldi	$r19,-10161($r19)
ffffffff80912384:	05 01 20 c4 	bne	$r1,ffffffff8091279c <default_check+0x80c>
ffffffff80912388:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff8091238c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912390:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80912394:	01 00 3f fa 	ldi	$r17,1
ffffffff80912398:	50 07 eb 43 	mov	$r11,$r16
ffffffff8091239c:	00 00 ee ad 	stl	fp,0($r14)
ffffffff809123a0:	08 00 2e ac 	stl	$r1,8($r14)
ffffffff809123a4:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff809123a8:	10 00 2e a8 	stw	$r1,16($r14)
ffffffff809123ac:	98 01 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff809123b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809123b4:	50 5c bd fb 	ldi	$r29,23632($r29)
ffffffff809123b8:	01 00 3f fa 	ldi	$r17,1
ffffffff809123bc:	50 07 ed 43 	mov	$r13,$r16
ffffffff809123c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809123c4:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff809123c8:	91 01 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff809123cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809123d0:	34 5c bd fb 	ldi	$r29,23604($r29)
ffffffff809123d4:	01 00 3f fa 	ldi	$r17,1
ffffffff809123d8:	50 07 ec 43 	mov	$r12,$r16
ffffffff809123dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809123e0:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff809123e4:	8a 01 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff809123e8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809123ec:	18 5c bd fb 	ldi	$r29,23576($r29)
ffffffff809123f0:	05 00 1f fa 	ldi	$r16,5
ffffffff809123f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809123f8:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff809123fc:	6c 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff80912400:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912404:	00 5c bd fb 	ldi	$r29,23552($r29)
ffffffff80912408:	4c 07 e0 43 	mov	$r0,$r12
ffffffff8091240c:	f6 00 3f fa 	ldi	$r17,246
ffffffff80912410:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912414:	5c d8 73 fa 	ldi	$r19,-10148($r19)
ffffffff80912418:	e0 00 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff8091241c:	08 00 60 88 	ldw	$r3,8($r0)
ffffffff80912420:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912424:	f7 00 3f fa 	ldi	$r17,247
ffffffff80912428:	67 d8 73 fa 	ldi	$r19,-10137($r19)
ffffffff8091242c:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff80912430:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff80912434:	d9 00 60 c4 	bne	$r3,ffffffff8091279c <default_check+0x80c>
ffffffff80912438:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff8091243c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912440:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80912444:	01 00 1f fa 	ldi	$r16,1
ffffffff80912448:	00 00 ce ad 	stl	$r14,0($r14)
ffffffff8091244c:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff80912450:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80912454:	08 00 ce ad 	stl	$r14,8($r14)
ffffffff80912458:	50 00 3e ac 	stl	$r1,80(sp)
ffffffff8091245c:	54 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff80912460:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912464:	a0 5b bd fb 	ldi	$r29,23456($r29)
ffffffff80912468:	fc 00 3f fa 	ldi	$r17,252
ffffffff8091246c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912470:	fc d7 73 fa 	ldi	$r19,-10244($r19)
ffffffff80912474:	c9 00 00 c4 	bne	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff80912478:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff8091247c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912480:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80912484:	90 00 6c f9 	ldi	$r11,144($r12)
ffffffff80912488:	03 00 3f fa 	ldi	$r17,3
ffffffff8091248c:	50 07 eb 43 	mov	$r11,$r16
ffffffff80912490:	10 00 ee ab 	stw	$r31,16($r14)
ffffffff80912494:	48 00 3e ac 	stl	$r1,72(sp)
ffffffff80912498:	5d 01 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff8091249c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809124a0:	64 5b bd fb 	ldi	$r29,23396($r29)
ffffffff809124a4:	04 00 1f fa 	ldi	$r16,4
ffffffff809124a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809124ac:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff809124b0:	3f 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff809124b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809124b8:	4c 5b bd fb 	ldi	$r29,23372($r29)
ffffffff809124bc:	02 01 3f fa 	ldi	$r17,258
ffffffff809124c0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809124c4:	79 d8 73 fa 	ldi	$r19,-10119($r19)
ffffffff809124c8:	b4 00 00 c4 	bne	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff809124cc:	98 00 6c 88 	ldw	$r3,152($r12)
ffffffff809124d0:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff809124d4:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff809124d8:	c3 00 60 c0 	beq	$r3,ffffffff809127e8 <default_check+0x858>
ffffffff809124dc:	a8 00 6c 88 	ldw	$r3,168($r12)
ffffffff809124e0:	03 65 60 48 	cmpeq	$r3,0x3,$r3
ffffffff809124e4:	c0 00 60 c0 	beq	$r3,ffffffff809127e8 <default_check+0x858>
ffffffff809124e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809124ec:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff809124f0:	03 00 1f fa 	ldi	$r16,3
ffffffff809124f4:	2e 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff809124f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809124fc:	08 5b bd fb 	ldi	$r29,23304($r29)
ffffffff80912500:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80912504:	04 01 3f fa 	ldi	$r17,260
ffffffff80912508:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091250c:	bc d8 73 fa 	ldi	$r19,-10052($r19)
ffffffff80912510:	a2 00 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff80912514:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912518:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff8091251c:	01 00 1f fa 	ldi	$r16,1
ffffffff80912520:	23 01 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff80912524:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912528:	dc 5a bd fb 	ldi	$r29,23260($r29)
ffffffff8091252c:	05 01 3f fa 	ldi	$r17,261
ffffffff80912530:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912534:	fc d7 73 fa 	ldi	$r19,-10244($r19)
ffffffff80912538:	98 00 00 c4 	bne	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff8091253c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912540:	04 05 6d 41 	cmpeq	$r11,$r13,$r4
ffffffff80912544:	06 01 3f fa 	ldi	$r17,262
ffffffff80912548:	da d8 73 fa 	ldi	$r19,-10022($r19)
ffffffff8091254c:	93 00 80 c0 	beq	$r4,ffffffff8091279c <default_check+0x80c>
ffffffff80912550:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912554:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80912558:	01 00 3f fa 	ldi	$r17,1
ffffffff8091255c:	50 07 ec 43 	mov	$r12,$r16
ffffffff80912560:	48 00 ec f9 	ldi	fp,72($r12)
ffffffff80912564:	2a 01 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff80912568:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091256c:	98 5a bd fb 	ldi	$r29,23192($r29)
ffffffff80912570:	03 00 3f fa 	ldi	$r17,3
ffffffff80912574:	50 07 ed 43 	mov	$r13,$r16
ffffffff80912578:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091257c:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80912580:	23 01 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff80912584:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912588:	08 00 6c 88 	ldw	$r3,8($r12)
ffffffff8091258c:	7c 5a bd fb 	ldi	$r29,23164($r29)
ffffffff80912590:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff80912594:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff80912598:	8f 00 60 c0 	beq	$r3,ffffffff809127d8 <default_check+0x848>
ffffffff8091259c:	18 00 6c 88 	ldw	$r3,24($r12)
ffffffff809125a0:	03 25 60 48 	cmpeq	$r3,0x1,$r3
ffffffff809125a4:	8c 00 60 c0 	beq	$r3,ffffffff809127d8 <default_check+0x848>
ffffffff809125a8:	98 00 6c 88 	ldw	$r3,152($r12)
ffffffff809125ac:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff809125b0:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff809125b4:	90 00 60 c0 	beq	$r3,ffffffff809127f8 <default_check+0x868>
ffffffff809125b8:	a8 00 6c 88 	ldw	$r3,168($r12)
ffffffff809125bc:	03 65 60 48 	cmpeq	$r3,0x3,$r3
ffffffff809125c0:	8d 00 60 c0 	beq	$r3,ffffffff809127f8 <default_check+0x868>
ffffffff809125c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809125c8:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff809125cc:	01 00 1f fa 	ldi	$r16,1
ffffffff809125d0:	f7 00 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff809125d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809125d8:	2c 5a bd fb 	ldi	$r29,23084($r29)
ffffffff809125dc:	00 05 80 41 	cmpeq	$r12,$r0,$r0
ffffffff809125e0:	0e 01 3f fa 	ldi	$r17,270
ffffffff809125e4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809125e8:	33 d9 73 fa 	ldi	$r19,-9933($r19)
ffffffff809125ec:	6b 00 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff809125f0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809125f4:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff809125f8:	01 00 3f fa 	ldi	$r17,1
ffffffff809125fc:	50 07 ec 43 	mov	$r12,$r16
ffffffff80912600:	03 01 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff80912604:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912608:	fc 59 bd fb 	ldi	$r29,23036($r29)
ffffffff8091260c:	02 00 1f fa 	ldi	$r16,2
ffffffff80912610:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912614:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80912618:	e5 00 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff8091261c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912620:	e4 59 bd fb 	ldi	$r29,23012($r29)
ffffffff80912624:	00 05 60 41 	cmpeq	$r11,$r0,$r0
ffffffff80912628:	10 01 3f fa 	ldi	$r17,272
ffffffff8091262c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912630:	51 d9 73 fa 	ldi	$r19,-9903($r19)
ffffffff80912634:	59 00 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff80912638:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091263c:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80912640:	50 07 eb 43 	mov	$r11,$r16
ffffffff80912644:	02 00 3f fa 	ldi	$r17,2
ffffffff80912648:	f1 00 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff8091264c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912650:	b4 59 bd fb 	ldi	$r29,22964($r29)
ffffffff80912654:	01 00 3f fa 	ldi	$r17,1
ffffffff80912658:	50 07 ef 43 	mov	fp,$r16
ffffffff8091265c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912660:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80912664:	ea 00 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff80912668:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091266c:	98 59 bd fb 	ldi	$r29,22936($r29)
ffffffff80912670:	05 00 1f fa 	ldi	$r16,5
ffffffff80912674:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912678:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff8091267c:	cc 00 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff80912680:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912684:	80 59 bd fb 	ldi	$r29,22912($r29)
ffffffff80912688:	4b 07 e0 43 	mov	$r0,$r11
ffffffff8091268c:	15 01 3f fa 	ldi	$r17,277
ffffffff80912690:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912694:	71 d9 73 fa 	ldi	$r19,-9871($r19)
ffffffff80912698:	40 00 00 c0 	beq	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff8091269c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809126a0:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff809126a4:	01 00 1f fa 	ldi	$r16,1
ffffffff809126a8:	c1 00 5b 07 	call	ra,($r27),ffffffff809129b0 <alloc_pages>
ffffffff809126ac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809126b0:	54 59 bd fb 	ldi	$r29,22868($r29)
ffffffff809126b4:	16 01 3f fa 	ldi	$r17,278
ffffffff809126b8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809126bc:	fc d7 73 fa 	ldi	$r19,-10244($r19)
ffffffff809126c0:	36 00 00 c4 	bne	$r0,ffffffff8091279c <default_check+0x80c>
ffffffff809126c4:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff809126c8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809126cc:	18 01 3f fa 	ldi	$r17,280
ffffffff809126d0:	4f d8 73 fa 	ldi	$r19,-10161($r19)
ffffffff809126d4:	31 00 20 c4 	bne	$r1,ffffffff8091279c <default_check+0x80c>
ffffffff809126d8:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff809126dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809126e0:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff809126e4:	05 00 3f fa 	ldi	$r17,5
ffffffff809126e8:	50 07 eb 43 	mov	$r11,$r16
ffffffff809126ec:	10 00 2e a8 	stw	$r1,16($r14)
ffffffff809126f0:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff809126f4:	00 00 2e ac 	stl	$r1,0($r14)
ffffffff809126f8:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff809126fc:	08 00 2e ac 	stl	$r1,8($r14)
ffffffff80912700:	c3 00 5b 07 	call	ra,($r27),ffffffff80912a10 <free_pages>
ffffffff80912704:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912708:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff8091270c:	fc 58 bd fb 	ldi	$r29,22780($r29)
ffffffff80912710:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff80912714:	08 00 60 c4 	bne	$r3,ffffffff80912738 <default_check+0x7a8>
ffffffff80912718:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091271c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912720:	f8 ff 81 88 	ldw	$r4,-8($r1)
ffffffff80912724:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80912728:	2a 20 40 49 	subw	$r10,0x1,$r10
ffffffff8091272c:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff80912730:	29 00 24 41 	subw	$r9,$r4,$r9
ffffffff80912734:	fa ff 7f c0 	beq	$r3,ffffffff80912720 <default_check+0x790>
ffffffff80912738:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091273c:	23 01 3f fa 	ldi	$r17,291
ffffffff80912740:	8f d9 73 fa 	ldi	$r19,-9841($r19)
ffffffff80912744:	15 00 40 c5 	bne	$r10,ffffffff8091279c <default_check+0x80c>
ffffffff80912748:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091274c:	24 01 3f fa 	ldi	$r17,292
ffffffff80912750:	9a d9 73 fa 	ldi	$r19,-9830($r19)
ffffffff80912754:	11 00 20 c5 	bne	$r9,ffffffff8091279c <default_check+0x80c>
ffffffff80912758:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091275c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912760:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912764:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912768:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff8091276c:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80912770:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80912774:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80912778:	60 00 de fb 	ldi	sp,96(sp)
ffffffff8091277c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912780:	4b 07 ff 43 	clr	$r11
ffffffff80912784:	49 07 ff 43 	clr	$r9
ffffffff80912788:	4a 07 ff 43 	clr	$r10
ffffffff8091278c:	22 fe ff 13 	br	ffffffff80912018 <default_check+0x88>
ffffffff80912790:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912794:	f1 00 3f fa 	ldi	$r17,241
ffffffff80912798:	db d6 73 fa 	ldi	$r19,-10533($r19)
ffffffff8091279c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809127a0:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff809127a4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809127a8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809127ac:	2e d3 52 fa 	ldi	$r18,-11474($r18)
ffffffff809127b0:	90 d6 10 fa 	ldi	$r16,-10608($r16)
ffffffff809127b4:	9e f6 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff809127b8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809127bc:	ee 00 3f fa 	ldi	$r17,238
ffffffff809127c0:	bb d6 73 fa 	ldi	$r19,-10565($r19)
ffffffff809127c4:	f5 ff ff 13 	br	ffffffff8091279c <default_check+0x80c>
ffffffff809127c8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809127cc:	be 00 3f fa 	ldi	$r17,190
ffffffff809127d0:	69 d7 73 fa 	ldi	$r19,-10391($r19)
ffffffff809127d4:	f1 ff ff 13 	br	ffffffff8091279c <default_check+0x80c>
ffffffff809127d8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809127dc:	0b 01 3f fa 	ldi	$r17,267
ffffffff809127e0:	e7 d8 73 fa 	ldi	$r19,-10009($r19)
ffffffff809127e4:	ed ff ff 13 	br	ffffffff8091279c <default_check+0x80c>
ffffffff809127e8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809127ec:	03 01 3f fa 	ldi	$r17,259
ffffffff809127f0:	90 d8 73 fa 	ldi	$r19,-10096($r19)
ffffffff809127f4:	e9 ff ff 13 	br	ffffffff8091279c <default_check+0x80c>
ffffffff809127f8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809127fc:	0c 01 3f fa 	ldi	$r17,268
ffffffff80912800:	0d d9 73 fa 	ldi	$r19,-9971($r19)
ffffffff80912804:	e5 ff ff 13 	br	ffffffff8091279c <default_check+0x80c>
ffffffff80912808:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091280c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912810 <default_alloc_pages>:
ffffffff80912810:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912814:	f0 57 bd fb 	ldi	$r29,22512($r29)
ffffffff80912818:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091281c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912820:	43 00 00 c2 	beq	$r16,ffffffff80912930 <default_alloc_pages+0x120>
ffffffff80912824:	00 00 bd fc 	ldih	$r5,0($r29)
ffffffff80912828:	a8 81 a5 8c 	ldl	$r5,-32344($r5)
ffffffff8091282c:	40 07 ff 43 	clr	$r0
ffffffff80912830:	10 00 c5 88 	ldw	$r6,16($r5)
ffffffff80912834:	21 ed c1 48 	zapnot	$r6,0xf,$r1
ffffffff80912838:	61 05 30 40 	cmpult	$r1,$r16,$r1
ffffffff8091283c:	0c 00 20 c4 	bne	$r1,ffffffff80912870 <default_alloc_pages+0x60>
ffffffff80912840:	41 07 e5 43 	mov	$r5,$r1
ffffffff80912844:	06 00 e0 13 	br	ffffffff80912860 <default_alloc_pages+0x50>
ffffffff80912848:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091284c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912850:	f8 ff 61 88 	ldw	$r3,-8($r1)
ffffffff80912854:	22 ed 61 48 	zapnot	$r3,0xf,$r2
ffffffff80912858:	84 05 02 42 	cmpule	$r16,$r2,$r4
ffffffff8091285c:	08 00 80 c4 	bne	$r4,ffffffff80912880 <default_alloc_pages+0x70>
ffffffff80912860:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80912864:	02 05 25 40 	cmpeq	$r1,$r5,$r2
ffffffff80912868:	f9 ff 5f c0 	beq	$r2,ffffffff80912850 <default_alloc_pages+0x40>
ffffffff8091286c:	40 07 ff 43 	clr	$r0
ffffffff80912870:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912874:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912878:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091287c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912880:	e0 ff 01 f8 	ldi	$r0,-32($r1)
ffffffff80912884:	fa ff 1f c0 	beq	$r0,ffffffff80912870 <default_alloc_pages+0x60>
ffffffff80912888:	00 00 81 8c 	ldl	$r4,0($r1)
ffffffff8091288c:	08 00 e1 8c 	ldl	$r7,8($r1)
ffffffff80912890:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80912894:	08 00 f0 43 	addw	$r31,$r16,$r8
ffffffff80912898:	08 00 e4 ac 	stl	$r7,8($r4)
ffffffff8091289c:	00 00 87 ac 	stl	$r4,0($r7)
ffffffff809128a0:	15 00 40 c0 	beq	$r2,ffffffff809128f8 <default_alloc_pages+0xe8>
ffffffff809128a4:	82 01 00 4a 	s8addl	$r16,0,$r2
ffffffff809128a8:	23 00 68 40 	subw	$r3,$r8,$r3
ffffffff809128ac:	02 01 50 40 	addl	$r2,$r16,$r2
ffffffff809128b0:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff809128b4:	02 01 02 40 	addl	$r0,$r2,$r2
ffffffff809128b8:	18 00 62 a8 	stw	$r3,24($r2)
ffffffff809128bc:	08 00 e2 f8 	ldi	$r7,8($r2)
ffffffff809128c0:	00 00 67 20 	lldw	$r3,0($r7)
ffffffff809128c4:	01 00 df f8 	ldi	$r6,1
ffffffff809128c8:	20 10 df 18 	wr_f	$r6
ffffffff809128cc:	43 47 60 48 	or	$r3,0x2,$r3
ffffffff809128d0:	00 80 67 20 	lstw	$r3,0($r7)
ffffffff809128d4:	00 10 df 18 	rd_f	$r6
ffffffff809128d8:	20 00 c0 c0 	beq	$r6,ffffffff8091295c <default_alloc_pages+0x14c>
ffffffff809128dc:	08 00 64 8c 	ldl	$r3,8($r4)
ffffffff809128e0:	20 00 e2 f8 	ldi	$r7,32($r2)
ffffffff809128e4:	10 00 c5 88 	ldw	$r6,16($r5)
ffffffff809128e8:	00 00 e3 ac 	stl	$r7,0($r3)
ffffffff809128ec:	08 00 e4 ac 	stl	$r7,8($r4)
ffffffff809128f0:	28 00 62 ac 	stl	$r3,40($r2)
ffffffff809128f4:	20 00 82 ac 	stl	$r4,32($r2)
ffffffff809128f8:	26 00 c8 40 	subw	$r6,$r8,$r6
ffffffff809128fc:	10 00 c5 a8 	stw	$r6,16($r5)
ffffffff80912900:	e8 ff 81 f8 	ldi	$r4,-24($r1)
ffffffff80912904:	00 00 44 20 	lldw	$r2,0($r4)
ffffffff80912908:	01 00 7f f8 	ldi	$r3,1
ffffffff8091290c:	20 10 7f 18 	wr_f	$r3
ffffffff80912910:	22 47 40 48 	bic	$r2,0x2,$r2
ffffffff80912914:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912918:	00 80 44 20 	lstw	$r2,0($r4)
ffffffff8091291c:	00 10 7f 18 	rd_f	$r3
ffffffff80912920:	0f 00 60 c0 	beq	$r3,ffffffff80912960 <default_alloc_pages+0x150>
ffffffff80912924:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912928:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091292c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912930:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912934:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80912938:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091293c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912940:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912944:	60 00 3f fa 	ldi	$r17,96
ffffffff80912948:	8a d6 73 fa 	ldi	$r19,-10614($r19)
ffffffff8091294c:	2e d3 52 fa 	ldi	$r18,-11474($r18)
ffffffff80912950:	90 d6 10 fa 	ldi	$r16,-10608($r16)
ffffffff80912954:	36 f6 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80912958:	5f 07 ff 43 	nop	
ffffffff8091295c:	d8 ff ff 13 	br	ffffffff809128c0 <default_alloc_pages+0xb0>
ffffffff80912960:	e8 ff ff 13 	br	ffffffff80912904 <default_alloc_pages+0xf4>
ffffffff80912964:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912968:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091296c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912970 <pa2page.part.5>:
ffffffff80912970:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912974:	90 56 bd fb 	ldi	$r29,22160($r29)
ffffffff80912978:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091297c:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80912980:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80912984:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912988:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091298c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912990:	66 00 3f fa 	ldi	$r17,102
ffffffff80912994:	79 d5 52 fa 	ldi	$r18,-10887($r18)
ffffffff80912998:	98 d5 10 fa 	ldi	$r16,-10856($r16)
ffffffff8091299c:	24 f6 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff809129a0:	5f 07 ff 43 	nop	
	...

ffffffff809129b0 <alloc_pages>:
ffffffff809129b0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809129b4:	50 56 bd fb 	ldi	$r29,22096($r29)
ffffffff809129b8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809129bc:	42 07 f0 43 	mov	$r16,$r2
ffffffff809129c0:	07 00 1f fa 	ldi	$r16,7
ffffffff809129c4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809129c8:	35 00 00 02 	sys_call	0x35
ffffffff809129cc:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809129d0:	88 80 21 8c 	ldl	$r1,-32632($r1)
ffffffff809129d4:	50 07 e2 43 	mov	$r2,$r16
ffffffff809129d8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809129dc:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff809129e0:	00 00 5b 07 	call	ra,($r27),ffffffff809129e4 <alloc_pages+0x34>
ffffffff809129e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809129e8:	1c 56 bd fb 	ldi	$r29,22044($r29)
ffffffff809129ec:	42 07 e0 43 	mov	$r0,$r2
ffffffff809129f0:	50 07 ff 43 	clr	$r16
ffffffff809129f4:	35 00 00 02 	sys_call	0x35
ffffffff809129f8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809129fc:	40 07 e2 43 	mov	$r2,$r0
ffffffff80912a00:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912a04:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912a08:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912a0c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912a10 <free_pages>:
ffffffff80912a10:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912a14:	f0 55 bd fb 	ldi	$r29,22000($r29)
ffffffff80912a18:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80912a1c:	42 07 f0 43 	mov	$r16,$r2
ffffffff80912a20:	07 00 1f fa 	ldi	$r16,7
ffffffff80912a24:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912a28:	35 00 00 02 	sys_call	0x35
ffffffff80912a2c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912a30:	88 80 21 8c 	ldl	$r1,-32632($r1)
ffffffff80912a34:	50 07 e2 43 	mov	$r2,$r16
ffffffff80912a38:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912a3c:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80912a40:	00 00 5b 07 	call	ra,($r27),ffffffff80912a44 <free_pages+0x34>
ffffffff80912a44:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a48:	bc 55 bd fb 	ldi	$r29,21948($r29)
ffffffff80912a4c:	50 07 ff 43 	clr	$r16
ffffffff80912a50:	35 00 00 02 	sys_call	0x35
ffffffff80912a54:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912a58:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912a5c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80912a60 <nr_free_pages>:
ffffffff80912a60:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912a64:	a0 55 bd fb 	ldi	$r29,21920($r29)
ffffffff80912a68:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80912a6c:	07 00 1f fa 	ldi	$r16,7
ffffffff80912a70:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912a74:	35 00 00 02 	sys_call	0x35
ffffffff80912a78:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912a7c:	88 80 21 8c 	ldl	$r1,-32632($r1)
ffffffff80912a80:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912a84:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80912a88:	00 00 5b 07 	call	ra,($r27),ffffffff80912a8c <nr_free_pages+0x2c>
ffffffff80912a8c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a90:	74 55 bd fb 	ldi	$r29,21876($r29)
ffffffff80912a94:	42 07 e0 43 	mov	$r0,$r2
ffffffff80912a98:	50 07 ff 43 	clr	$r16
ffffffff80912a9c:	35 00 00 02 	sys_call	0x35
ffffffff80912aa0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912aa4:	40 07 e2 43 	mov	$r2,$r0
ffffffff80912aa8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912aac:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80912ab0 <get_pte>:
ffffffff80912ab0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912ab4:	50 55 bd fb 	ldi	$r29,21840($r29)
ffffffff80912ab8:	b0 ff de fb 	ldi	sp,-80(sp)
ffffffff80912abc:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80912ac0:	0d 69 21 4a 	sll	$r17,0xb,$r13
ffffffff80912ac4:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912ac8:	49 07 f1 43 	mov	$r17,$r9
ffffffff80912acc:	2d c9 a6 49 	srl	$r13,0x36,$r13
ffffffff80912ad0:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80912ad4:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80912ad8:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff80912adc:	8d 01 a0 49 	s8addl	$r13,0,$r13
ffffffff80912ae0:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912ae4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912ae8:	4c 07 f2 43 	mov	$r18,$r12
ffffffff80912aec:	0d 01 0d 42 	addl	$r16,$r13,$r13
ffffffff80912af0:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80912af4:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80912af8:	00 00 6d 8e 	ldl	$r19,0($r13)
ffffffff80912afc:	37 00 60 de 	blbs	$r19,ffffffff80912bdc <get_pte+0x12c>
ffffffff80912b00:	db 00 40 c2 	beq	$r18,ffffffff80912e70 <get_pte+0x3c0>
ffffffff80912b04:	07 00 1f fa 	ldi	$r16,7
ffffffff80912b08:	35 00 00 02 	sys_call	0x35
ffffffff80912b0c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912b10:	88 80 21 8c 	ldl	$r1,-32632($r1)
ffffffff80912b14:	01 00 1f fa 	ldi	$r16,1
ffffffff80912b18:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912b1c:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80912b20:	00 00 5b 07 	call	ra,($r27),ffffffff80912b24 <get_pte+0x74>
ffffffff80912b24:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912b28:	dc 54 bd fb 	ldi	$r29,21724($r29)
ffffffff80912b2c:	4a 07 e0 43 	mov	$r0,$r10
ffffffff80912b30:	50 07 ff 43 	clr	$r16
ffffffff80912b34:	35 00 00 02 	sys_call	0x35
ffffffff80912b38:	cd 00 40 c1 	beq	$r10,ffffffff80912e70 <get_pte+0x3c0>
ffffffff80912b3c:	00 00 fd fd 	ldih	fp,0($r29)
ffffffff80912b40:	c8 81 ef 8d 	ldl	fp,-32312(fp)
ffffffff80912b44:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80912b48:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff80912b4c:	d8 00 3f fa 	ldi	$r17,216
ffffffff80912b50:	f8 d9 c1 8d 	ldl	$r14,-9736($r1)
ffffffff80912b54:	01 00 3f f8 	ldi	$r1,1
ffffffff80912b58:	00 82 4b 8c 	ldl	$r2,-32256($r11)
ffffffff80912b5c:	00 00 2a a8 	stw	$r1,0($r10)
ffffffff80912b60:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80912b64:	00 00 0f 8e 	ldl	$r16,0(fp)
ffffffff80912b68:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80912b6c:	30 01 50 41 	subl	$r10,$r16,$r16
ffffffff80912b70:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff80912b74:	10 03 0e 42 	mull	$r16,$r14,$r16
ffffffff80912b78:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80912b7c:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff80912b80:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80912b84:	53 07 f0 43 	mov	$r16,$r19
ffffffff80912b88:	bc 00 20 c4 	bne	$r1,ffffffff80912e7c <get_pte+0x3cc>
ffffffff80912b8c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912b90:	a8 80 21 8c 	ldl	$r1,-32600($r1)
ffffffff80912b94:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912b98:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80912b9c:	00 20 5f fa 	ldi	$r18,8192
ffffffff80912ba0:	51 07 ff 43 	clr	$r17
ffffffff80912ba4:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912ba8:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80912bac:	60 06 5b 07 	call	ra,($r27),ffffffff80914530 <memset>
ffffffff80912bb0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912bb4:	00 00 6f 8e 	ldl	$r19,0(fp)
ffffffff80912bb8:	01 00 3f fc 	ldih	$r1,1
ffffffff80912bbc:	50 54 bd fb 	ldi	$r29,21584($r29)
ffffffff80912bc0:	01 88 21 f8 	ldi	$r1,-30719($r1)
ffffffff80912bc4:	33 01 53 41 	subl	$r10,$r19,$r19
ffffffff80912bc8:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80912bcc:	13 03 6e 42 	mull	$r19,$r14,$r19
ffffffff80912bd0:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff80912bd4:	53 07 61 42 	or	$r19,$r1,$r19
ffffffff80912bd8:	00 00 6d ae 	stl	$r19,0($r13)
ffffffff80912bdc:	00 f0 3f fc 	ldih	$r1,-4096
ffffffff80912be0:	00 82 4b 8c 	ldl	$r2,-32256($r11)
ffffffff80912be4:	13 07 33 40 	and	$r1,$r19,$r19
ffffffff80912be8:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80912bec:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80912bf0:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80912bf4:	a0 00 20 c4 	bne	$r1,ffffffff80912e78 <get_pte+0x3c8>
ffffffff80912bf8:	00 00 bd fd 	ldih	$r13,0($r29)
ffffffff80912bfc:	a8 80 ad 8d 	ldl	$r13,-32600($r13)
ffffffff80912c00:	0e a9 22 49 	sll	$r9,0x15,$r14
ffffffff80912c04:	2e c9 c6 49 	srl	$r14,0x36,$r14
ffffffff80912c08:	8e 01 c0 49 	s8addl	$r14,0,$r14
ffffffff80912c0c:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80912c10:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80912c14:	0e 01 6e 42 	addl	$r19,$r14,$r14
ffffffff80912c18:	00 00 6e 8e 	ldl	$r19,0($r14)
ffffffff80912c1c:	37 00 60 de 	blbs	$r19,ffffffff80912cfc <get_pte+0x24c>
ffffffff80912c20:	93 00 80 c1 	beq	$r12,ffffffff80912e70 <get_pte+0x3c0>
ffffffff80912c24:	07 00 1f fa 	ldi	$r16,7
ffffffff80912c28:	35 00 00 02 	sys_call	0x35
ffffffff80912c2c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912c30:	88 80 21 8c 	ldl	$r1,-32632($r1)
ffffffff80912c34:	01 00 1f fa 	ldi	$r16,1
ffffffff80912c38:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912c3c:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80912c40:	00 00 5b 07 	call	ra,($r27),ffffffff80912c44 <get_pte+0x194>
ffffffff80912c44:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912c48:	bc 53 bd fb 	ldi	$r29,21436($r29)
ffffffff80912c4c:	4a 07 e0 43 	mov	$r0,$r10
ffffffff80912c50:	50 07 ff 43 	clr	$r16
ffffffff80912c54:	35 00 00 02 	sys_call	0x35
ffffffff80912c58:	85 00 40 c1 	beq	$r10,ffffffff80912e70 <get_pte+0x3c0>
ffffffff80912c5c:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80912c60:	c8 81 63 8c 	ldl	$r3,-32312($r3)
ffffffff80912c64:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80912c68:	00 82 4b 8c 	ldl	$r2,-32256($r11)
ffffffff80912c6c:	e5 00 3f fa 	ldi	$r17,229
ffffffff80912c70:	f8 d9 e1 8d 	ldl	fp,-9736($r1)
ffffffff80912c74:	01 00 3f f8 	ldi	$r1,1
ffffffff80912c78:	00 00 2a a8 	stw	$r1,0($r10)
ffffffff80912c7c:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80912c80:	00 00 03 8e 	ldl	$r16,0($r3)
ffffffff80912c84:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80912c88:	30 01 50 41 	subl	$r10,$r16,$r16
ffffffff80912c8c:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff80912c90:	10 03 0f 42 	mull	$r16,fp,$r16
ffffffff80912c94:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80912c98:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff80912c9c:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80912ca0:	53 07 f0 43 	mov	$r16,$r19
ffffffff80912ca4:	75 00 20 c4 	bne	$r1,ffffffff80912e7c <get_pte+0x3cc>
ffffffff80912ca8:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80912cac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912cb0:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80912cb4:	00 20 5f fa 	ldi	$r18,8192
ffffffff80912cb8:	51 07 ff 43 	clr	$r17
ffffffff80912cbc:	40 00 7e ac 	stl	$r3,64(sp)
ffffffff80912cc0:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80912cc4:	1a 06 5b 07 	call	ra,($r27),ffffffff80914530 <memset>
ffffffff80912cc8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912ccc:	40 00 7e 8c 	ldl	$r3,64(sp)
ffffffff80912cd0:	01 00 3f fc 	ldih	$r1,1
ffffffff80912cd4:	38 53 bd fb 	ldi	$r29,21304($r29)
ffffffff80912cd8:	01 88 21 f8 	ldi	$r1,-30719($r1)
ffffffff80912cdc:	00 00 63 8e 	ldl	$r19,0($r3)
ffffffff80912ce0:	33 01 53 41 	subl	$r10,$r19,$r19
ffffffff80912ce4:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80912ce8:	13 03 6f 42 	mull	$r19,fp,$r19
ffffffff80912cec:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff80912cf0:	53 07 61 42 	or	$r19,$r1,$r19
ffffffff80912cf4:	00 00 6e ae 	stl	$r19,0($r14)
ffffffff80912cf8:	00 82 4b 8c 	ldl	$r2,-32256($r11)
ffffffff80912cfc:	00 f0 3f fc 	ldih	$r1,-4096
ffffffff80912d00:	e9 00 3f fa 	ldi	$r17,233
ffffffff80912d04:	13 07 33 40 	and	$r1,$r19,$r19
ffffffff80912d08:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80912d0c:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80912d10:	61 05 22 40 	cmpult	$r1,$r2,$r1
ffffffff80912d14:	59 00 20 c0 	beq	$r1,ffffffff80912e7c <get_pte+0x3cc>
ffffffff80912d18:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80912d1c:	0e e9 23 49 	sll	$r9,0x1f,$r14
ffffffff80912d20:	2e c9 c6 49 	srl	$r14,0x36,$r14
ffffffff80912d24:	8e 01 c0 49 	s8addl	$r14,0,$r14
ffffffff80912d28:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80912d2c:	0e 01 6e 42 	addl	$r19,$r14,$r14
ffffffff80912d30:	00 00 0e 8c 	ldl	$r0,0($r14)
ffffffff80912d34:	35 00 00 dc 	blbs	$r0,ffffffff80912e0c <get_pte+0x35c>
ffffffff80912d38:	4d 00 80 c1 	beq	$r12,ffffffff80912e70 <get_pte+0x3c0>
ffffffff80912d3c:	07 00 1f fa 	ldi	$r16,7
ffffffff80912d40:	35 00 00 02 	sys_call	0x35
ffffffff80912d44:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912d48:	88 80 21 8c 	ldl	$r1,-32632($r1)
ffffffff80912d4c:	01 00 1f fa 	ldi	$r16,1
ffffffff80912d50:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912d54:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80912d58:	00 00 5b 07 	call	ra,($r27),ffffffff80912d5c <get_pte+0x2ac>
ffffffff80912d5c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912d60:	a4 52 bd fb 	ldi	$r29,21156($r29)
ffffffff80912d64:	4a 07 e0 43 	mov	$r0,$r10
ffffffff80912d68:	50 07 ff 43 	clr	$r16
ffffffff80912d6c:	35 00 00 02 	sys_call	0x35
ffffffff80912d70:	3f 00 40 c1 	beq	$r10,ffffffff80912e70 <get_pte+0x3c0>
ffffffff80912d74:	00 00 fd fd 	ldih	fp,0($r29)
ffffffff80912d78:	c8 81 ef 8d 	ldl	fp,-32312(fp)
ffffffff80912d7c:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80912d80:	00 82 4b 8c 	ldl	$r2,-32256($r11)
ffffffff80912d84:	f2 00 3f fa 	ldi	$r17,242
ffffffff80912d88:	f8 d9 81 8d 	ldl	$r12,-9736($r1)
ffffffff80912d8c:	01 00 3f f8 	ldi	$r1,1
ffffffff80912d90:	00 00 2a a8 	stw	$r1,0($r10)
ffffffff80912d94:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80912d98:	00 00 0f 8e 	ldl	$r16,0(fp)
ffffffff80912d9c:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80912da0:	30 01 50 41 	subl	$r10,$r16,$r16
ffffffff80912da4:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff80912da8:	10 03 0c 42 	mull	$r16,$r12,$r16
ffffffff80912dac:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80912db0:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff80912db4:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80912db8:	53 07 f0 43 	mov	$r16,$r19
ffffffff80912dbc:	2f 00 20 c4 	bne	$r1,ffffffff80912e7c <get_pte+0x3cc>
ffffffff80912dc0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80912dc4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912dc8:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80912dcc:	00 20 5f fa 	ldi	$r18,8192
ffffffff80912dd0:	51 07 ff 43 	clr	$r17
ffffffff80912dd4:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80912dd8:	d5 05 5b 07 	call	ra,($r27),ffffffff80914530 <memset>
ffffffff80912ddc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912de0:	00 00 6f 8e 	ldl	$r19,0(fp)
ffffffff80912de4:	01 00 1f fc 	ldih	$r0,1
ffffffff80912de8:	24 52 bd fb 	ldi	$r29,21028($r29)
ffffffff80912dec:	01 88 00 f8 	ldi	$r0,-30719($r0)
ffffffff80912df0:	33 01 53 41 	subl	$r10,$r19,$r19
ffffffff80912df4:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80912df8:	13 03 6c 42 	mull	$r19,$r12,$r19
ffffffff80912dfc:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff80912e00:	40 07 60 42 	or	$r19,$r0,$r0
ffffffff80912e04:	00 00 0e ac 	stl	$r0,0($r14)
ffffffff80912e08:	00 82 4b 8c 	ldl	$r2,-32256($r11)
ffffffff80912e0c:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80912e10:	f6 00 3f fa 	ldi	$r17,246
ffffffff80912e14:	13 07 60 42 	and	$r19,$r0,$r19
ffffffff80912e18:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80912e1c:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80912e20:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80912e24:	15 00 40 c0 	beq	$r2,ffffffff80912e7c <get_pte+0x3cc>
ffffffff80912e28:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80912e2c:	00 29 25 49 	sll	$r9,0x29,$r0
ffffffff80912e30:	20 c9 06 48 	srl	$r0,0x36,$r0
ffffffff80912e34:	80 01 00 48 	s8addl	$r0,0,$r0
ffffffff80912e38:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80912e3c:	00 01 60 42 	addl	$r19,$r0,$r0
ffffffff80912e40:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912e44:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912e48:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912e4c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912e50:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912e54:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80912e58:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80912e5c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80912e60:	50 00 de fb 	ldi	sp,80(sp)
ffffffff80912e64:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912e68:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912e6c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912e70:	40 07 ff 43 	clr	$r0
ffffffff80912e74:	f2 ff ff 13 	br	ffffffff80912e40 <get_pte+0x390>
ffffffff80912e78:	dc 00 3f fa 	ldi	$r17,220
ffffffff80912e7c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912e80:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80912e84:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912e88:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912e8c:	56 d5 52 fa 	ldi	$r18,-10922($r18)
ffffffff80912e90:	00 da 10 fa 	ldi	$r16,-9728($r16)
ffffffff80912e94:	e6 f4 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80912e98:	5f 07 ff 43 	nop	
ffffffff80912e9c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912ea0 <get_page>:
ffffffff80912ea0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912ea4:	60 51 bd fb 	ldi	$r29,20832($r29)
ffffffff80912ea8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80912eac:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912eb0:	49 07 f2 43 	mov	$r18,$r9
ffffffff80912eb4:	52 07 ff 43 	clr	$r18
ffffffff80912eb8:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912ebc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912ec0:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff80912ec4:	00 00 5b 07 	call	ra,($r27),ffffffff80912ec8 <get_page+0x28>
ffffffff80912ec8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912ecc:	38 51 bd fb 	ldi	$r29,20792($r29)
ffffffff80912ed0:	01 00 20 c1 	beq	$r9,ffffffff80912ed8 <get_page+0x38>
ffffffff80912ed4:	00 00 09 ac 	stl	$r0,0($r9)
ffffffff80912ed8:	15 00 00 c0 	beq	$r0,ffffffff80912f30 <get_page+0x90>
ffffffff80912edc:	00 00 00 8c 	ldl	$r0,0($r0)
ffffffff80912ee0:	13 00 00 d8 	blbc	$r0,ffffffff80912f30 <get_page+0x90>
ffffffff80912ee4:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912ee8:	20 89 03 48 	srl	$r0,0x1c,$r0
ffffffff80912eec:	00 82 21 8c 	ldl	$r1,-32256($r1)
ffffffff80912ef0:	61 05 01 40 	cmpult	$r0,$r1,$r1
ffffffff80912ef4:	13 00 20 c0 	beq	$r1,ffffffff80912f44 <get_page+0xa4>
ffffffff80912ef8:	81 01 00 48 	s8addl	$r0,0,$r1
ffffffff80912efc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912f00:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912f04:	00 01 20 40 	addl	$r1,$r0,$r0
ffffffff80912f08:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912f0c:	c8 81 21 8c 	ldl	$r1,-32312($r1)
ffffffff80912f10:	80 01 00 48 	s8addl	$r0,0,$r0
ffffffff80912f14:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80912f18:	00 01 20 40 	addl	$r1,$r0,$r0
ffffffff80912f1c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912f20:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912f24:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912f28:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912f2c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912f30:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912f34:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912f38:	40 07 ff 43 	clr	$r0
ffffffff80912f3c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912f40:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912f44:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912f48:	e0 81 7b 8f 	ldl	$r27,-32288($r27)
ffffffff80912f4c:	88 fe 5b 07 	call	ra,($r27),ffffffff80912970 <pa2page.part.5>
ffffffff80912f50:	5f 07 ff 43 	nop	
ffffffff80912f54:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912f58:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912f5c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912f60 <page_remove>:
ffffffff80912f60:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912f64:	a0 50 bd fb 	ldi	$r29,20640($r29)
ffffffff80912f68:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80912f6c:	52 07 ff 43 	clr	$r18
ffffffff80912f70:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912f74:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912f78:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912f7c:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff80912f80:	00 00 5b 07 	call	ra,($r27),ffffffff80912f84 <page_remove+0x24>
ffffffff80912f84:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912f88:	7c 50 bd fb 	ldi	$r29,20604($r29)
ffffffff80912f8c:	49 07 e0 43 	mov	$r0,$r9
ffffffff80912f90:	02 00 00 c0 	beq	$r0,ffffffff80912f9c <page_remove+0x3c>
ffffffff80912f94:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff80912f98:	05 00 20 dc 	blbs	$r1,ffffffff80912fb0 <page_remove+0x50>
ffffffff80912f9c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912fa0:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912fa4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912fa8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912fac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912fb0:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80912fb4:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff80912fb8:	00 82 42 8c 	ldl	$r2,-32256($r2)
ffffffff80912fbc:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80912fc0:	1f 00 40 c0 	beq	$r2,ffffffff80913040 <page_remove+0xe0>
ffffffff80912fc4:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80912fc8:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80912fcc:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80912fd0:	c8 81 42 8c 	ldl	$r2,-32312($r2)
ffffffff80912fd4:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80912fd8:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80912fdc:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff80912fe0:	00 00 22 88 	ldw	$r1,0($r2)
ffffffff80912fe4:	23 20 20 48 	subw	$r1,0x1,$r3
ffffffff80912fe8:	00 00 62 a8 	stw	$r3,0($r2)
ffffffff80912fec:	0d 00 60 c4 	bne	$r3,ffffffff80913024 <page_remove+0xc4>
ffffffff80912ff0:	07 00 1f fa 	ldi	$r16,7
ffffffff80912ff4:	35 00 00 02 	sys_call	0x35
ffffffff80912ff8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912ffc:	88 80 21 8c 	ldl	$r1,-32632($r1)
ffffffff80913000:	01 00 3f fa 	ldi	$r17,1
ffffffff80913004:	50 07 e2 43 	mov	$r2,$r16
ffffffff80913008:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091300c:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80913010:	00 00 5b 07 	call	ra,($r27),ffffffff80913014 <page_remove+0xb4>
ffffffff80913014:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913018:	ec 4f bd fb 	ldi	$r29,20460($r29)
ffffffff8091301c:	50 07 ff 43 	clr	$r16
ffffffff80913020:	35 00 00 02 	sys_call	0x35
ffffffff80913024:	00 00 e9 af 	stl	$r31,0($r9)
ffffffff80913028:	fe ff 1f fa 	ldi	$r16,-2
ffffffff8091302c:	33 00 00 02 	sys_call	0x33
ffffffff80913030:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913034:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80913038:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091303c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913040:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913044:	e0 81 7b 8f 	ldl	$r27,-32288($r27)
ffffffff80913048:	49 fe 5b 07 	call	ra,($r27),ffffffff80912970 <pa2page.part.5>
ffffffff8091304c:	5f 07 ff 43 	nop	

ffffffff80913050 <page_insert>:
ffffffff80913050:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913054:	b0 4f bd fb 	ldi	$r29,20400($r29)
ffffffff80913058:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff8091305c:	41 07 f2 43 	mov	$r18,$r1
ffffffff80913060:	01 00 5f fa 	ldi	$r18,1
ffffffff80913064:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80913068:	49 07 f1 43 	mov	$r17,$r9
ffffffff8091306c:	51 07 e1 43 	mov	$r1,$r17
ffffffff80913070:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80913074:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80913078:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091307c:	4b 07 f3 43 	mov	$r19,$r11
ffffffff80913080:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80913084:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913088:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff8091308c:	00 00 5b 07 	call	ra,($r27),ffffffff80913090 <page_insert+0x40>
ffffffff80913090:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913094:	70 4f bd fb 	ldi	$r29,20336($r29)
ffffffff80913098:	4a 07 e0 43 	mov	$r0,$r10
ffffffff8091309c:	42 00 00 c0 	beq	$r0,ffffffff809131a8 <page_insert+0x158>
ffffffff809130a0:	00 00 69 88 	ldw	$r3,0($r9)
ffffffff809130a4:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff809130a8:	02 20 60 48 	addw	$r3,0x1,$r2
ffffffff809130ac:	00 00 49 a8 	stw	$r2,0($r9)
ffffffff809130b0:	17 00 20 dc 	blbs	$r1,ffffffff80913110 <page_insert+0xc0>
ffffffff809130b4:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809130b8:	c8 81 21 8c 	ldl	$r1,-32312($r1)
ffffffff809130bc:	00 00 61 8e 	ldl	$r19,0($r1)
ffffffff809130c0:	29 01 33 41 	subl	$r9,$r19,$r9
ffffffff809130c4:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809130c8:	4b 27 60 49 	or	$r11,0x1,$r11
ffffffff809130cc:	fe ff 1f fa 	ldi	$r16,-2
ffffffff809130d0:	53 69 20 49 	sra	$r9,0x3,$r19
ffffffff809130d4:	f8 d9 21 8d 	ldl	$r9,-9736($r1)
ffffffff809130d8:	13 03 69 42 	mull	$r19,$r9,$r19
ffffffff809130dc:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff809130e0:	53 07 6b 42 	or	$r19,$r11,$r19
ffffffff809130e4:	00 00 6a ae 	stl	$r19,0($r10)
ffffffff809130e8:	33 00 00 02 	sys_call	0x33
ffffffff809130ec:	40 07 ff 43 	clr	$r0
ffffffff809130f0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809130f4:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809130f8:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809130fc:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80913100:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80913104:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80913108:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091310c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913110:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80913114:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff80913118:	00 82 42 8c 	ldl	$r2,-32256($r2)
ffffffff8091311c:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80913120:	23 00 40 c0 	beq	$r2,ffffffff809131b0 <page_insert+0x160>
ffffffff80913124:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80913128:	c8 81 8c 8d 	ldl	$r12,-32312($r12)
ffffffff8091312c:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80913130:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80913134:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80913138:	00 00 6c 8e 	ldl	$r19,0($r12)
ffffffff8091313c:	02 01 62 42 	addl	$r19,$r2,$r2
ffffffff80913140:	01 05 22 41 	cmpeq	$r9,$r2,$r1
ffffffff80913144:	16 00 20 c4 	bne	$r1,ffffffff809131a0 <page_insert+0x150>
ffffffff80913148:	00 00 22 88 	ldw	$r1,0($r2)
ffffffff8091314c:	23 20 20 48 	subw	$r1,0x1,$r3
ffffffff80913150:	00 00 62 a8 	stw	$r3,0($r2)
ffffffff80913154:	0d 00 60 c4 	bne	$r3,ffffffff8091318c <page_insert+0x13c>
ffffffff80913158:	07 00 1f fa 	ldi	$r16,7
ffffffff8091315c:	35 00 00 02 	sys_call	0x35
ffffffff80913160:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913164:	88 80 21 8c 	ldl	$r1,-32632($r1)
ffffffff80913168:	01 00 3f fa 	ldi	$r17,1
ffffffff8091316c:	50 07 e2 43 	mov	$r2,$r16
ffffffff80913170:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80913174:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80913178:	00 00 5b 07 	call	ra,($r27),ffffffff8091317c <page_insert+0x12c>
ffffffff8091317c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913180:	84 4e bd fb 	ldi	$r29,20100($r29)
ffffffff80913184:	50 07 ff 43 	clr	$r16
ffffffff80913188:	35 00 00 02 	sys_call	0x35
ffffffff8091318c:	00 00 ea af 	stl	$r31,0($r10)
ffffffff80913190:	fe ff 1f fa 	ldi	$r16,-2
ffffffff80913194:	33 00 00 02 	sys_call	0x33
ffffffff80913198:	00 00 6c 8e 	ldl	$r19,0($r12)
ffffffff8091319c:	c8 ff ff 13 	br	ffffffff809130c0 <page_insert+0x70>
ffffffff809131a0:	00 00 69 a8 	stw	$r3,0($r9)
ffffffff809131a4:	c6 ff ff 13 	br	ffffffff809130c0 <page_insert+0x70>
ffffffff809131a8:	fc ff 1f f8 	ldi	$r0,-4
ffffffff809131ac:	d0 ff ff 13 	br	ffffffff809130f0 <page_insert+0xa0>
ffffffff809131b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809131b4:	e0 81 7b 8f 	ldl	$r27,-32288($r27)
ffffffff809131b8:	ed fd 5b 07 	call	ra,($r27),ffffffff80912970 <pa2page.part.5>
ffffffff809131bc:	5f 07 ff 43 	nop	

ffffffff809131c0 <pmm_init>:
ffffffff809131c0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809131c4:	40 4e bd fb 	ldi	$r29,20032($r29)
ffffffff809131c8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809131cc:	b8 80 21 8c 	ldl	$r1,-32584($r1)
ffffffff809131d0:	b0 ff de fb 	ldi	sp,-80(sp)
ffffffff809131d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809131d8:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809131dc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809131e0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809131e4:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff809131e8:	88 80 8c 8d 	ldl	$r12,-32632($r12)
ffffffff809131ec:	0e da 10 fa 	ldi	$r16,-9714($r16)
ffffffff809131f0:	00 00 5e af 	stl	ra,0(sp)
ffffffff809131f4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809131f8:	00 00 21 8e 	ldl	$r17,0($r1)
ffffffff809131fc:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80913200:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff80913204:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80913208:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff8091320c:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80913210:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80913214:	00 00 2c ac 	stl	$r1,0($r12)
ffffffff80913218:	00 00 bd fd 	ldih	$r13,0($r29)
ffffffff8091321c:	a8 80 ad 8d 	ldl	$r13,-32600($r13)
ffffffff80913220:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80913224:	c8 81 4a 8d 	ldl	$r10,-32312($r10)
ffffffff80913228:	d9 f3 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff8091322c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913230:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913234:	d4 4d bd fb 	ldi	$r29,19924($r29)
ffffffff80913238:	08 00 61 8f 	ldl	$r27,8($r1)
ffffffff8091323c:	00 00 5b 07 	call	ra,($r27),ffffffff80913240 <pmm_init+0x80>
ffffffff80913240:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913244:	c0 4d bd fb 	ldi	$r29,19904($r29)
ffffffff80913248:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091324c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913250:	ff ff 3f f8 	ldi	$r1,-1
ffffffff80913254:	00 20 7f fe 	ldih	$r19,8192
ffffffff80913258:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091325c:	01 89 26 48 	sll	$r1,0x34,$r1
ffffffff80913260:	52 07 f3 43 	mov	$r19,$r18
ffffffff80913264:	51 07 ff 43 	clr	$r17
ffffffff80913268:	25 da 10 fa 	ldi	$r16,-9691($r16)
ffffffff8091326c:	00 00 2d ac 	stl	$r1,0($r13)
ffffffff80913270:	c7 f3 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913274:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913278:	8c 4d bd fb 	ldi	$r29,19852($r29)
ffffffff8091327c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913280:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913284:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913288:	4e da 10 fa 	ldi	$r16,-9650($r16)
ffffffff8091328c:	c0 f3 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913290:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913294:	70 4d bd fb 	ldi	$r29,19824($r29)
ffffffff80913298:	00 20 3f fe 	ldih	$r17,8192
ffffffff8091329c:	52 07 ff 43 	clr	$r18
ffffffff809132a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809132a4:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff809132a8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809132ac:	ff ff 71 fa 	ldi	$r19,-1($r17)
ffffffff809132b0:	64 da 10 fa 	ldi	$r16,-9628($r16)
ffffffff809132b4:	b6 f3 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff809132b8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809132bc:	48 4d bd fb 	ldi	$r29,19784($r29)
ffffffff809132c0:	01 00 3f fc 	ldih	$r1,1
ffffffff809132c4:	00 00 7d fe 	ldih	$r19,0($r29)
ffffffff809132c8:	e8 80 73 8e 	ldl	$r19,-32536($r19)
ffffffff809132cc:	00 82 2b ac 	stl	$r1,-32256($r11)
ffffffff809132d0:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff809132d4:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff809132d8:	00 80 3f fc 	ldih	$r1,-32768
ffffffff809132dc:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff809132e0:	00 00 6a ae 	stl	$r19,0($r10)
ffffffff809132e4:	81 05 61 42 	cmpule	$r19,$r1,$r1
ffffffff809132e8:	29 03 20 c4 	bne	$r1,ffffffff80913f90 <pmm_init+0xdd0>
ffffffff809132ec:	01 00 3f f8 	ldi	$r1,1
ffffffff809132f0:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff809132f4:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff809132f8:	01 00 5f fc 	ldih	$r2,1
ffffffff809132fc:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80913300:	67 00 3f fa 	ldi	$r17,103
ffffffff80913304:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff80913308:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff8091330c:	46 03 20 c0 	beq	$r1,ffffffff80914028 <pmm_init+0xe68>
ffffffff80913310:	00 00 6d 8c 	ldl	$r3,0($r13)
ffffffff80913314:	42 07 ff 43 	clr	$r2
ffffffff80913318:	41 07 ff 43 	clr	$r1
ffffffff8091331c:	13 01 63 42 	addl	$r19,$r3,$r19
ffffffff80913320:	00 00 6a ae 	stl	$r19,0($r10)
ffffffff80913324:	03 00 e0 13 	br	ffffffff80913334 <pmm_init+0x174>
ffffffff80913328:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091332c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913330:	00 00 6a 8e 	ldl	$r19,0($r10)
ffffffff80913334:	13 01 62 42 	addl	$r19,$r2,$r19
ffffffff80913338:	08 00 b3 f8 	ldi	$r5,8($r19)
ffffffff8091333c:	00 00 65 20 	lldw	$r3,0($r5)
ffffffff80913340:	01 00 9f f8 	ldi	$r4,1
ffffffff80913344:	20 10 9f 18 	wr_f	$r4
ffffffff80913348:	43 27 60 48 	or	$r3,0x1,$r3
ffffffff8091334c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913350:	00 80 65 20 	lstw	$r3,0($r5)
ffffffff80913354:	00 10 9f 18 	rd_f	$r4
ffffffff80913358:	4e 03 80 c0 	beq	$r4,ffffffff80914094 <pmm_init+0xed4>
ffffffff8091335c:	00 82 6b 8c 	ldl	$r3,-32256($r11)
ffffffff80913360:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80913364:	48 00 42 f8 	ldi	$r2,72($r2)
ffffffff80913368:	64 05 23 40 	cmpult	$r1,$r3,$r4
ffffffff8091336c:	f0 ff 9f c4 	bne	$r4,ffffffff80913330 <pmm_init+0x170>
ffffffff80913370:	00 00 0a 8e 	ldl	$r16,0($r10)
ffffffff80913374:	81 01 60 48 	s8addl	$r3,0,$r1
ffffffff80913378:	00 80 5f fc 	ldih	$r2,-32768
ffffffff8091337c:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff80913380:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff80913384:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80913388:	01 01 01 42 	addl	$r16,$r1,$r1
ffffffff8091338c:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff80913390:	fb 02 40 c4 	bne	$r2,ffffffff80913f80 <pmm_init+0xdc0>
ffffffff80913394:	01 00 5f f8 	ldi	$r2,1
ffffffff80913398:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff8091339c:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff809133a0:	00 20 3f fe 	ldih	$r17,8192
ffffffff809133a4:	ff df 51 f8 	ldi	$r2,-8193($r17)
ffffffff809133a8:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff809133ac:	12 00 40 c0 	beq	$r2,ffffffff809133f8 <pmm_init+0x238>
ffffffff809133b0:	ff 1f 21 f8 	ldi	$r1,8191($r1)
ffffffff809133b4:	24 a9 21 48 	srl	$r1,0xd,$r4
ffffffff809133b8:	83 05 64 40 	cmpule	$r3,$r4,$r3
ffffffff809133bc:	0c 03 60 c4 	bne	$r3,ffffffff80913ff0 <pmm_init+0xe30>
ffffffff809133c0:	00 00 6c 8c 	ldl	$r3,0($r12)
ffffffff809133c4:	82 01 80 48 	s8addl	$r4,0,$r2
ffffffff809133c8:	00 e0 bf f8 	ldi	$r5,-8192
ffffffff809133cc:	00 e0 31 fa 	ldi	$r17,-8192($r17)
ffffffff809133d0:	01 07 25 40 	and	$r1,$r5,$r1
ffffffff809133d4:	02 01 44 40 	addl	$r2,$r4,$r2
ffffffff809133d8:	31 01 21 42 	subl	$r17,$r1,$r17
ffffffff809133dc:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff809133e0:	10 00 63 8f 	ldl	$r27,16($r3)
ffffffff809133e4:	31 a9 21 4a 	srl	$r17,0xd,$r17
ffffffff809133e8:	10 01 02 42 	addl	$r16,$r2,$r16
ffffffff809133ec:	00 00 5b 07 	call	ra,($r27),ffffffff809133f0 <pmm_init+0x230>
ffffffff809133f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809133f4:	10 4c bd fb 	ldi	$r29,19472($r29)
ffffffff809133f8:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff809133fc:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff80913400:	30 00 61 8f 	ldl	$r27,48($r1)
ffffffff80913404:	00 00 5b 07 	call	ra,($r27),ffffffff80913408 <pmm_init+0x248>
ffffffff80913408:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091340c:	f8 4b bd fb 	ldi	$r29,19448($r29)
ffffffff80913410:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913414:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913418:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091341c:	8c da 10 fa 	ldi	$r16,-9588($r16)
ffffffff80913420:	5b f3 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913424:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913428:	dc 4b bd fb 	ldi	$r29,19420($r29)
ffffffff8091342c:	00 80 5f fc 	ldih	$r2,-32768
ffffffff80913430:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913434:	78 80 21 8c 	ldl	$r1,-32648($r1)
ffffffff80913438:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff8091343c:	f8 81 29 ac 	stl	$r1,-32264($r9)
ffffffff80913440:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff80913444:	e6 02 40 c0 	beq	$r2,ffffffff80913fe0 <pmm_init+0xe20>
ffffffff80913448:	00 00 4d 8c 	ldl	$r2,0($r13)
ffffffff8091344c:	21 01 22 40 	subl	$r1,$r2,$r1
ffffffff80913450:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80913454:	e0 80 42 8c 	ldl	$r2,-32544($r2)
ffffffff80913458:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091345c:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913460:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913464:	ab da 10 fa 	ldi	$r16,-9557($r16)
ffffffff80913468:	00 00 22 ac 	stl	$r1,0($r2)
ffffffff8091346c:	48 f3 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913470:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913474:	90 4b bd fb 	ldi	$r29,19344($r29)
ffffffff80913478:	07 00 1f fa 	ldi	$r16,7
ffffffff8091347c:	35 00 00 02 	sys_call	0x35
ffffffff80913480:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913484:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80913488:	00 00 5b 07 	call	ra,($r27),ffffffff8091348c <pmm_init+0x2cc>
ffffffff8091348c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913490:	74 4b bd fb 	ldi	$r29,19316($r29)
ffffffff80913494:	40 00 1e ac 	stl	$r0,64(sp)
ffffffff80913498:	50 07 ff 43 	clr	$r16
ffffffff8091349c:	35 00 00 02 	sys_call	0x35
ffffffff809134a0:	00 82 2b 8c 	ldl	$r1,-32256($r11)
ffffffff809134a4:	01 00 5f fc 	ldih	$r2,1
ffffffff809134a8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809134ac:	76 01 3f fa 	ldi	$r17,374
ffffffff809134b0:	b8 da 73 fa 	ldi	$r19,-9544($r19)
ffffffff809134b4:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff809134b8:	d3 02 20 c0 	beq	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff809134bc:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff809134c0:	f0 02 00 c2 	beq	$r16,ffffffff80914084 <pmm_init+0xec4>
ffffffff809134c4:	ff 1f 3f f8 	ldi	$r1,8191
ffffffff809134c8:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff809134cc:	ed 02 20 c4 	bne	$r1,ffffffff80914084 <pmm_init+0xec4>
ffffffff809134d0:	51 07 ff 43 	clr	$r17
ffffffff809134d4:	52 07 ff 43 	clr	$r18
ffffffff809134d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809134dc:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809134e0:	00 00 5b 07 	call	ra,($r27),ffffffff809134e4 <pmm_init+0x324>
ffffffff809134e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809134e8:	1c 4b bd fb 	ldi	$r29,19228($r29)
ffffffff809134ec:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809134f0:	78 01 3f fa 	ldi	$r17,376
ffffffff809134f4:	09 db 73 fa 	ldi	$r19,-9463($r19)
ffffffff809134f8:	c3 02 00 c4 	bne	$r0,ffffffff80914008 <pmm_init+0xe48>
ffffffff809134fc:	07 00 1f fa 	ldi	$r16,7
ffffffff80913500:	35 00 00 02 	sys_call	0x35
ffffffff80913504:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913508:	01 00 1f fa 	ldi	$r16,1
ffffffff8091350c:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80913510:	00 00 5b 07 	call	ra,($r27),ffffffff80913514 <pmm_init+0x354>
ffffffff80913514:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913518:	ec 4a bd fb 	ldi	$r29,19180($r29)
ffffffff8091351c:	4e 07 e0 43 	mov	$r0,$r14
ffffffff80913520:	50 07 ff 43 	clr	$r16
ffffffff80913524:	35 00 00 02 	sys_call	0x35
ffffffff80913528:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff8091352c:	53 07 ff 43 	clr	$r19
ffffffff80913530:	51 07 ee 43 	mov	$r14,$r17
ffffffff80913534:	52 07 ff 43 	clr	$r18
ffffffff80913538:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091353c:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80913540:	00 00 5b 07 	call	ra,($r27),ffffffff80913544 <pmm_init+0x384>
ffffffff80913544:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913548:	bc 4a bd fb 	ldi	$r29,19132($r29)
ffffffff8091354c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913550:	7c 01 3f fa 	ldi	$r17,380
ffffffff80913554:	31 db 73 fa 	ldi	$r19,-9423($r19)
ffffffff80913558:	ab 02 00 c4 	bne	$r0,ffffffff80914008 <pmm_init+0xe48>
ffffffff8091355c:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff80913560:	51 07 ff 43 	clr	$r17
ffffffff80913564:	52 07 ff 43 	clr	$r18
ffffffff80913568:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091356c:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff80913570:	00 00 5b 07 	call	ra,($r27),ffffffff80913574 <pmm_init+0x3b4>
ffffffff80913574:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913578:	8c 4a bd fb 	ldi	$r29,19084($r29)
ffffffff8091357c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913580:	7e 01 3f fa 	ldi	$r17,382
ffffffff80913584:	5a db 73 fa 	ldi	$r19,-9382($r19)
ffffffff80913588:	9f 02 00 c0 	beq	$r0,ffffffff80914008 <pmm_init+0xe48>
ffffffff8091358c:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff80913590:	ac 02 20 d8 	blbc	$r1,ffffffff80914044 <pmm_init+0xe84>
ffffffff80913594:	00 82 6b 8c 	ldl	$r3,-32256($r11)
ffffffff80913598:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff8091359c:	62 05 23 40 	cmpult	$r1,$r3,$r2
ffffffff809135a0:	93 02 40 c0 	beq	$r2,ffffffff80913ff0 <pmm_init+0xe30>
ffffffff809135a4:	84 01 20 48 	s8addl	$r1,0,$r4
ffffffff809135a8:	00 00 4a 8c 	ldl	$r2,0($r10)
ffffffff809135ac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809135b0:	7f 01 3f fa 	ldi	$r17,383
ffffffff809135b4:	01 01 81 40 	addl	$r4,$r1,$r1
ffffffff809135b8:	a8 db 73 fa 	ldi	$r19,-9304($r19)
ffffffff809135bc:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809135c0:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff809135c4:	01 05 c1 41 	cmpeq	$r14,$r1,$r1
ffffffff809135c8:	8f 02 20 c0 	beq	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff809135cc:	00 00 2e 88 	ldw	$r1,0($r14)
ffffffff809135d0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809135d4:	80 01 3f fa 	ldi	$r17,384
ffffffff809135d8:	be db 73 fa 	ldi	$r19,-9282($r19)
ffffffff809135dc:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff809135e0:	89 02 20 c0 	beq	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff809135e4:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff809135e8:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff809135ec:	21 e9 61 4a 	srl	$r19,0xf,$r1
ffffffff809135f0:	00 00 70 8e 	ldl	$r19,0($r16)
ffffffff809135f4:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff809135f8:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff809135fc:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff80913600:	62 05 43 40 	cmpult	$r2,$r3,$r2
ffffffff80913604:	87 02 40 c0 	beq	$r2,ffffffff80914024 <pmm_init+0xe64>
ffffffff80913608:	00 00 ed 8d 	ldl	fp,0($r13)
ffffffff8091360c:	83 01 3f fa 	ldi	$r17,387
ffffffff80913610:	13 01 6f 42 	addl	$r19,fp,$r19
ffffffff80913614:	00 00 73 8e 	ldl	$r19,0($r19)
ffffffff80913618:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff8091361c:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80913620:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff80913624:	62 05 43 40 	cmpult	$r2,$r3,$r2
ffffffff80913628:	7f 02 40 c0 	beq	$r2,ffffffff80914028 <pmm_init+0xe68>
ffffffff8091362c:	13 01 f3 41 	addl	fp,$r19,$r19
ffffffff80913630:	84 01 3f fa 	ldi	$r17,388
ffffffff80913634:	00 00 73 8e 	ldl	$r19,0($r19)
ffffffff80913638:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff8091363c:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80913640:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80913644:	63 05 23 40 	cmpult	$r1,$r3,$r3
ffffffff80913648:	77 02 60 c0 	beq	$r3,ffffffff80914028 <pmm_init+0xe68>
ffffffff8091364c:	00 20 3f fa 	ldi	$r17,8192
ffffffff80913650:	52 07 ff 43 	clr	$r18
ffffffff80913654:	48 00 7e ae 	stl	$r19,72(sp)
ffffffff80913658:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091365c:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff80913660:	00 00 5b 07 	call	ra,($r27),ffffffff80913664 <pmm_init+0x4a4>
ffffffff80913664:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913668:	9c 49 bd fb 	ldi	$r29,18844($r29)
ffffffff8091366c:	48 00 7e 8e 	ldl	$r19,72(sp)
ffffffff80913670:	86 01 3f fa 	ldi	$r17,390
ffffffff80913674:	0f 01 f3 41 	addl	fp,$r19,fp
ffffffff80913678:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091367c:	08 00 ef f9 	ldi	fp,8(fp)
ffffffff80913680:	d0 db 73 fa 	ldi	$r19,-9264($r19)
ffffffff80913684:	0f 05 0f 40 	cmpeq	$r0,fp,fp
ffffffff80913688:	5f 02 e0 c1 	beq	fp,ffffffff80914008 <pmm_init+0xe48>
ffffffff8091368c:	07 00 1f fa 	ldi	$r16,7
ffffffff80913690:	35 00 00 02 	sys_call	0x35
ffffffff80913694:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913698:	01 00 1f fa 	ldi	$r16,1
ffffffff8091369c:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff809136a0:	00 00 5b 07 	call	ra,($r27),ffffffff809136a4 <pmm_init+0x4e4>
ffffffff809136a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809136a8:	5c 49 bd fb 	ldi	$r29,18780($r29)
ffffffff809136ac:	4f 07 e0 43 	mov	$r0,fp
ffffffff809136b0:	50 07 ff 43 	clr	$r16
ffffffff809136b4:	35 00 00 02 	sys_call	0x35
ffffffff809136b8:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff809136bc:	01 00 7f fc 	ldih	$r3,1
ffffffff809136c0:	51 07 ef 43 	mov	fp,$r17
ffffffff809136c4:	00 20 5f fa 	ldi	$r18,8192
ffffffff809136c8:	00 8c 63 fa 	ldi	$r19,-29696($r3)
ffffffff809136cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809136d0:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff809136d4:	00 00 5b 07 	call	ra,($r27),ffffffff809136d8 <pmm_init+0x518>
ffffffff809136d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809136dc:	28 49 bd fb 	ldi	$r29,18728($r29)
ffffffff809136e0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809136e4:	89 01 3f fa 	ldi	$r17,393
ffffffff809136e8:	f7 db 73 fa 	ldi	$r19,-9225($r19)
ffffffff809136ec:	46 02 00 c4 	bne	$r0,ffffffff80914008 <pmm_init+0xe48>
ffffffff809136f0:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff809136f4:	00 20 3f fa 	ldi	$r17,8192
ffffffff809136f8:	52 07 ff 43 	clr	$r18
ffffffff809136fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913700:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff80913704:	00 00 5b 07 	call	ra,($r27),ffffffff80913708 <pmm_init+0x548>
ffffffff80913708:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091370c:	f8 48 bd fb 	ldi	$r29,18680($r29)
ffffffff80913710:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913714:	8a 01 3f fa 	ldi	$r17,394
ffffffff80913718:	2f dc 73 fa 	ldi	$r19,-9169($r19)
ffffffff8091371c:	3a 02 00 c0 	beq	$r0,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913720:	00 00 40 8c 	ldl	$r2,0($r0)
ffffffff80913724:	01 00 7f fc 	ldih	$r3,1
ffffffff80913728:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091372c:	8b 01 3f fa 	ldi	$r17,395
ffffffff80913730:	00 88 23 f8 	ldi	$r1,-30720($r3)
ffffffff80913734:	5f dc 73 fa 	ldi	$r19,-9121($r19)
ffffffff80913738:	03 07 41 40 	and	$r2,$r1,$r3
ffffffff8091373c:	32 02 60 c0 	beq	$r3,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913740:	00 0c 7f f8 	ldi	$r3,3072
ffffffff80913744:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913748:	8c 01 3f fa 	ldi	$r17,396
ffffffff8091374c:	02 07 43 40 	and	$r2,$r3,$r2
ffffffff80913750:	6d dc 73 fa 	ldi	$r19,-9107($r19)
ffffffff80913754:	2c 02 40 c0 	beq	$r2,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913758:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff8091375c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913760:	8d 01 3f fa 	ldi	$r17,397
ffffffff80913764:	7b dc 73 fa 	ldi	$r19,-9093($r19)
ffffffff80913768:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff8091376c:	01 07 41 40 	and	$r2,$r1,$r1
ffffffff80913770:	25 02 20 c0 	beq	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913774:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff80913778:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091377c:	8e 01 3f fa 	ldi	$r17,398
ffffffff80913780:	91 dc 73 fa 	ldi	$r19,-9071($r19)
ffffffff80913784:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff80913788:	1f 02 20 c0 	beq	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff8091378c:	53 07 ff 43 	clr	$r19
ffffffff80913790:	51 07 ee 43 	mov	$r14,$r17
ffffffff80913794:	00 20 5f fa 	ldi	$r18,8192
ffffffff80913798:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091379c:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff809137a0:	00 00 5b 07 	call	ra,($r27),ffffffff809137a4 <pmm_init+0x5e4>
ffffffff809137a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809137a8:	5c 48 bd fb 	ldi	$r29,18524($r29)
ffffffff809137ac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809137b0:	90 01 3f fa 	ldi	$r17,400
ffffffff809137b4:	a3 dc 73 fa 	ldi	$r19,-9053($r19)
ffffffff809137b8:	13 02 00 c4 	bne	$r0,ffffffff80914008 <pmm_init+0xe48>
ffffffff809137bc:	00 00 2e 88 	ldw	$r1,0($r14)
ffffffff809137c0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809137c4:	91 01 3f fa 	ldi	$r17,401
ffffffff809137c8:	cf dc 73 fa 	ldi	$r19,-9009($r19)
ffffffff809137cc:	01 45 20 48 	cmpeq	$r1,0x2,$r1
ffffffff809137d0:	0d 02 20 c0 	beq	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff809137d4:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff809137d8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809137dc:	92 01 3f fa 	ldi	$r17,402
ffffffff809137e0:	93 d7 73 fa 	ldi	$r19,-10349($r19)
ffffffff809137e4:	08 02 20 c4 	bne	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff809137e8:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff809137ec:	00 20 3f fa 	ldi	$r17,8192
ffffffff809137f0:	52 07 ff 43 	clr	$r18
ffffffff809137f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809137f8:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff809137fc:	00 00 5b 07 	call	ra,($r27),ffffffff80913800 <pmm_init+0x640>
ffffffff80913800:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913804:	00 48 bd fb 	ldi	$r29,18432($r29)
ffffffff80913808:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091380c:	93 01 3f fa 	ldi	$r17,403
ffffffff80913810:	2f dc 73 fa 	ldi	$r19,-9169($r19)
ffffffff80913814:	fc 01 00 c0 	beq	$r0,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913818:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff8091381c:	09 02 20 d8 	blbc	$r1,ffffffff80914044 <pmm_init+0xe84>
ffffffff80913820:	00 82 4b 8c 	ldl	$r2,-32256($r11)
ffffffff80913824:	24 89 23 48 	srl	$r1,0x1c,$r4
ffffffff80913828:	62 05 82 40 	cmpult	$r4,$r2,$r2
ffffffff8091382c:	f0 01 40 c0 	beq	$r2,ffffffff80913ff0 <pmm_init+0xe30>
ffffffff80913830:	83 01 80 48 	s8addl	$r4,0,$r3
ffffffff80913834:	00 00 4a 8c 	ldl	$r2,0($r10)
ffffffff80913838:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091383c:	94 01 3f fa 	ldi	$r17,404
ffffffff80913840:	03 01 64 40 	addl	$r3,$r4,$r3
ffffffff80913844:	a8 db 73 fa 	ldi	$r19,-9304($r19)
ffffffff80913848:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff8091384c:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80913850:	02 05 c2 41 	cmpeq	$r14,$r2,$r2
ffffffff80913854:	ec 01 40 c0 	beq	$r2,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913858:	01 00 5f fc 	ldih	$r2,1
ffffffff8091385c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913860:	95 01 3f fa 	ldi	$r17,405
ffffffff80913864:	00 88 42 f8 	ldi	$r2,-30720($r2)
ffffffff80913868:	e1 dc 73 fa 	ldi	$r19,-8991($r19)
ffffffff8091386c:	01 07 22 40 	and	$r1,$r2,$r1
ffffffff80913870:	e5 01 20 c4 	bne	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913874:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff80913878:	51 07 ff 43 	clr	$r17
ffffffff8091387c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913880:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80913884:	b6 fd 5b 07 	call	ra,($r27),ffffffff80912f60 <page_remove>
ffffffff80913888:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091388c:	78 47 bd fb 	ldi	$r29,18296($r29)
ffffffff80913890:	00 00 2e 88 	ldw	$r1,0($r14)
ffffffff80913894:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913898:	98 01 3f fa 	ldi	$r17,408
ffffffff8091389c:	be db 73 fa 	ldi	$r19,-9282($r19)
ffffffff809138a0:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff809138a4:	d8 01 20 c0 	beq	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff809138a8:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff809138ac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809138b0:	99 01 3f fa 	ldi	$r17,409
ffffffff809138b4:	93 d7 73 fa 	ldi	$r19,-10349($r19)
ffffffff809138b8:	d3 01 20 c4 	bne	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff809138bc:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff809138c0:	00 20 3f fa 	ldi	$r17,8192
ffffffff809138c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809138c8:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff809138cc:	a4 fd 5b 07 	call	ra,($r27),ffffffff80912f60 <page_remove>
ffffffff809138d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809138d4:	30 47 bd fb 	ldi	$r29,18224($r29)
ffffffff809138d8:	00 00 2e 88 	ldw	$r1,0($r14)
ffffffff809138dc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809138e0:	9c 01 3f fa 	ldi	$r17,412
ffffffff809138e4:	f6 dc 73 fa 	ldi	$r19,-8970($r19)
ffffffff809138e8:	c7 01 20 c4 	bne	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff809138ec:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff809138f0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809138f4:	9d 01 3f fa 	ldi	$r17,413
ffffffff809138f8:	93 d7 73 fa 	ldi	$r19,-10349($r19)
ffffffff809138fc:	c2 01 20 c4 	bne	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913900:	f8 81 29 8c 	ldl	$r1,-32264($r9)
ffffffff80913904:	00 82 8b 8c 	ldl	$r4,-32256($r11)
ffffffff80913908:	00 00 c1 8d 	ldl	$r14,0($r1)
ffffffff8091390c:	22 89 c3 49 	srl	$r14,0x1c,$r2
ffffffff80913910:	61 05 44 40 	cmpult	$r2,$r4,$r1
ffffffff80913914:	b6 01 20 c0 	beq	$r1,ffffffff80913ff0 <pmm_init+0xe30>
ffffffff80913918:	00 00 6a 8c 	ldl	$r3,0($r10)
ffffffff8091391c:	81 01 40 48 	s8addl	$r2,0,$r1
ffffffff80913920:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913924:	9f 01 3f fa 	ldi	$r17,415
ffffffff80913928:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff8091392c:	08 dd 73 fa 	ldi	$r19,-8952($r19)
ffffffff80913930:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80913934:	01 01 61 40 	addl	$r3,$r1,$r1
ffffffff80913938:	00 00 c1 88 	ldw	$r6,0($r1)
ffffffff8091393c:	01 25 c0 48 	cmpeq	$r6,0x1,$r1
ffffffff80913940:	b1 01 20 c0 	beq	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913944:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80913948:	00 00 4d 8c 	ldl	$r2,0($r13)
ffffffff8091394c:	2e e9 c1 49 	srl	$r14,0xf,$r14
ffffffff80913950:	a3 01 3f fa 	ldi	$r17,419
ffffffff80913954:	21 e9 61 4a 	srl	$r19,0xf,$r1
ffffffff80913958:	0e 07 c1 41 	and	$r14,$r1,$r14
ffffffff8091395c:	0e 01 c2 41 	addl	$r14,$r2,$r14
ffffffff80913960:	00 00 ee 8d 	ldl	fp,0($r14)
ffffffff80913964:	2f e9 e1 49 	srl	fp,0xf,fp
ffffffff80913968:	0f 07 e1 41 	and	fp,$r1,fp
ffffffff8091396c:	25 a9 e1 49 	srl	fp,0xd,$r5
ffffffff80913970:	53 07 ef 43 	mov	fp,$r19
ffffffff80913974:	85 05 85 40 	cmpule	$r4,$r5,$r5
ffffffff80913978:	ab 01 a0 c4 	bne	$r5,ffffffff80914028 <pmm_init+0xe68>
ffffffff8091397c:	0f 01 4f 40 	addl	$r2,fp,fp
ffffffff80913980:	a4 01 3f fa 	ldi	$r17,420
ffffffff80913984:	00 00 6f 8e 	ldl	$r19,0(fp)
ffffffff80913988:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff8091398c:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80913990:	25 a9 61 4a 	srl	$r19,0xd,$r5
ffffffff80913994:	81 05 85 40 	cmpule	$r4,$r5,$r1
ffffffff80913998:	a3 01 20 c4 	bne	$r1,ffffffff80914028 <pmm_init+0xe68>
ffffffff8091399c:	00 80 3f fc 	ldih	$r1,-32768
ffffffff809139a0:	02 01 53 40 	addl	$r2,$r19,$r2
ffffffff809139a4:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff809139a8:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff809139ac:	05 00 20 c4 	bne	$r1,ffffffff809139c4 <pmm_init+0x804>
ffffffff809139b0:	06 e9 c3 48 	sll	$r6,0x1f,$r6
ffffffff809139b4:	02 01 46 40 	addl	$r2,$r6,$r2
ffffffff809139b8:	25 a9 41 48 	srl	$r2,0xd,$r5
ffffffff809139bc:	84 05 85 40 	cmpule	$r4,$r5,$r4
ffffffff809139c0:	8b 01 80 c4 	bne	$r4,ffffffff80913ff0 <pmm_init+0xe30>
ffffffff809139c4:	82 01 a0 48 	s8addl	$r5,0,$r2
ffffffff809139c8:	07 00 1f fa 	ldi	$r16,7
ffffffff809139cc:	02 01 45 40 	addl	$r2,$r5,$r2
ffffffff809139d0:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff809139d4:	02 01 62 40 	addl	$r3,$r2,$r2
ffffffff809139d8:	35 00 00 02 	sys_call	0x35
ffffffff809139dc:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff809139e0:	01 00 3f fa 	ldi	$r17,1
ffffffff809139e4:	50 07 e2 43 	mov	$r2,$r16
ffffffff809139e8:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff809139ec:	00 00 5b 07 	call	ra,($r27),ffffffff809139f0 <pmm_init+0x830>
ffffffff809139f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809139f4:	10 46 bd fb 	ldi	$r29,17936($r29)
ffffffff809139f8:	50 07 ff 43 	clr	$r16
ffffffff809139fc:	35 00 00 02 	sys_call	0x35
ffffffff80913a00:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80913a04:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80913a08:	81 05 e1 41 	cmpule	fp,$r1,$r1
ffffffff80913a0c:	64 01 20 c0 	beq	$r1,ffffffff80913fa0 <pmm_init+0xde0>
ffffffff80913a10:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80913a14:	21 01 e1 41 	subl	fp,$r1,$r1
ffffffff80913a18:	00 82 4b 8c 	ldl	$r2,-32256($r11)
ffffffff80913a1c:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80913a20:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80913a24:	72 01 40 c0 	beq	$r2,ffffffff80913ff0 <pmm_init+0xe30>
ffffffff80913a28:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80913a2c:	00 00 6a 8c 	ldl	$r3,0($r10)
ffffffff80913a30:	07 00 1f fa 	ldi	$r16,7
ffffffff80913a34:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80913a38:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80913a3c:	03 01 61 40 	addl	$r3,$r1,$r3
ffffffff80913a40:	35 00 00 02 	sys_call	0x35
ffffffff80913a44:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913a48:	01 00 3f fa 	ldi	$r17,1
ffffffff80913a4c:	50 07 e3 43 	mov	$r3,$r16
ffffffff80913a50:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80913a54:	00 00 5b 07 	call	ra,($r27),ffffffff80913a58 <pmm_init+0x898>
ffffffff80913a58:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913a5c:	a8 45 bd fb 	ldi	$r29,17832($r29)
ffffffff80913a60:	50 07 ff 43 	clr	$r16
ffffffff80913a64:	35 00 00 02 	sys_call	0x35
ffffffff80913a68:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80913a6c:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80913a70:	81 05 c1 41 	cmpule	$r14,$r1,$r1
ffffffff80913a74:	4e 01 20 c4 	bne	$r1,ffffffff80913fb0 <pmm_init+0xdf0>
ffffffff80913a78:	01 00 3f f8 	ldi	$r1,1
ffffffff80913a7c:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80913a80:	01 01 c1 41 	addl	$r14,$r1,$r1
ffffffff80913a84:	00 82 4b 8c 	ldl	$r2,-32256($r11)
ffffffff80913a88:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80913a8c:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80913a90:	57 01 40 c0 	beq	$r2,ffffffff80913ff0 <pmm_init+0xe30>
ffffffff80913a94:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80913a98:	00 00 6a 8c 	ldl	$r3,0($r10)
ffffffff80913a9c:	07 00 1f fa 	ldi	$r16,7
ffffffff80913aa0:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80913aa4:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80913aa8:	03 01 61 40 	addl	$r3,$r1,$r3
ffffffff80913aac:	35 00 00 02 	sys_call	0x35
ffffffff80913ab0:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913ab4:	01 00 3f fa 	ldi	$r17,1
ffffffff80913ab8:	50 07 e3 43 	mov	$r3,$r16
ffffffff80913abc:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80913ac0:	00 00 5b 07 	call	ra,($r27),ffffffff80913ac4 <pmm_init+0x904>
ffffffff80913ac4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913ac8:	3c 45 bd fb 	ldi	$r29,17724($r29)
ffffffff80913acc:	50 07 ff 43 	clr	$r16
ffffffff80913ad0:	35 00 00 02 	sys_call	0x35
ffffffff80913ad4:	f8 81 29 8c 	ldl	$r1,-32264($r9)
ffffffff80913ad8:	07 00 1f fa 	ldi	$r16,7
ffffffff80913adc:	00 00 e1 af 	stl	$r31,0($r1)
ffffffff80913ae0:	35 00 00 02 	sys_call	0x35
ffffffff80913ae4:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913ae8:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80913aec:	00 00 5b 07 	call	ra,($r27),ffffffff80913af0 <pmm_init+0x930>
ffffffff80913af0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913af4:	10 45 bd fb 	ldi	$r29,17680($r29)
ffffffff80913af8:	42 07 e0 43 	mov	$r0,$r2
ffffffff80913afc:	50 07 ff 43 	clr	$r16
ffffffff80913b00:	35 00 00 02 	sys_call	0x35
ffffffff80913b04:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80913b08:	ac 01 3f fa 	ldi	$r17,428
ffffffff80913b0c:	00 05 22 40 	cmpeq	$r1,$r2,$r0
ffffffff80913b10:	3b 01 00 c0 	beq	$r0,ffffffff80914000 <pmm_init+0xe40>
ffffffff80913b14:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913b18:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913b1c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913b20:	2f dd 10 fa 	ldi	$r16,-8913($r16)
ffffffff80913b24:	9a f1 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913b28:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b2c:	d8 44 bd fb 	ldi	$r29,17624($r29)
ffffffff80913b30:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80913b34:	e0 80 42 8c 	ldl	$r2,-32544($r2)
ffffffff80913b38:	00 00 02 8e 	ldl	$r16,0($r2)
ffffffff80913b3c:	0c 00 00 02 	sys_call	0xc
ffffffff80913b40:	f8 81 29 8c 	ldl	$r1,-32264($r9)
ffffffff80913b44:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913b48:	b4 01 3f fa 	ldi	$r17,436
ffffffff80913b4c:	49 dd 73 fa 	ldi	$r19,-8887($r19)
ffffffff80913b50:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80913b54:	2c 01 20 c4 	bne	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913b58:	07 00 1f fa 	ldi	$r16,7
ffffffff80913b5c:	35 00 00 02 	sys_call	0x35
ffffffff80913b60:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913b64:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80913b68:	00 00 5b 07 	call	ra,($r27),ffffffff80913b6c <pmm_init+0x9ac>
ffffffff80913b6c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b70:	94 44 bd fb 	ldi	$r29,17556($r29)
ffffffff80913b74:	40 00 1e ac 	stl	$r0,64(sp)
ffffffff80913b78:	50 07 ff 43 	clr	$r16
ffffffff80913b7c:	35 00 00 02 	sys_call	0x35
ffffffff80913b80:	07 00 1f fa 	ldi	$r16,7
ffffffff80913b84:	35 00 00 02 	sys_call	0x35
ffffffff80913b88:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913b8c:	01 00 1f fa 	ldi	$r16,1
ffffffff80913b90:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80913b94:	00 00 5b 07 	call	ra,($r27),ffffffff80913b98 <pmm_init+0x9d8>
ffffffff80913b98:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b9c:	68 44 bd fb 	ldi	$r29,17512($r29)
ffffffff80913ba0:	4e 07 e0 43 	mov	$r0,$r14
ffffffff80913ba4:	50 07 ff 43 	clr	$r16
ffffffff80913ba8:	35 00 00 02 	sys_call	0x35
ffffffff80913bac:	01 00 3f fc 	ldih	$r1,1
ffffffff80913bb0:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff80913bb4:	51 07 ee 43 	mov	$r14,$r17
ffffffff80913bb8:	00 01 5f fa 	ldi	$r18,256
ffffffff80913bbc:	00 cc e1 f9 	ldi	fp,-13312($r1)
ffffffff80913bc0:	53 07 ef 43 	mov	fp,$r19
ffffffff80913bc4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913bc8:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80913bcc:	00 00 5b 07 	call	ra,($r27),ffffffff80913bd0 <pmm_init+0xa10>
ffffffff80913bd0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913bd4:	30 44 bd fb 	ldi	$r29,17456($r29)
ffffffff80913bd8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913bdc:	ba 01 3f fa 	ldi	$r17,442
ffffffff80913be0:	5c dd 73 fa 	ldi	$r19,-8868($r19)
ffffffff80913be4:	08 01 00 c4 	bne	$r0,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913be8:	00 00 4e 88 	ldw	$r2,0($r14)
ffffffff80913bec:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913bf0:	bb 01 3f fa 	ldi	$r17,443
ffffffff80913bf4:	92 dd 73 fa 	ldi	$r19,-8814($r19)
ffffffff80913bf8:	02 25 40 48 	cmpeq	$r2,0x1,$r2
ffffffff80913bfc:	02 01 40 c0 	beq	$r2,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913c00:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff80913c04:	53 07 ef 43 	mov	fp,$r19
ffffffff80913c08:	51 07 ee 43 	mov	$r14,$r17
ffffffff80913c0c:	00 21 5f fa 	ldi	$r18,8448
ffffffff80913c10:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913c14:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80913c18:	00 00 5b 07 	call	ra,($r27),ffffffff80913c1c <pmm_init+0xa5c>
ffffffff80913c1c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913c20:	e4 43 bd fb 	ldi	$r29,17380($r29)
ffffffff80913c24:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913c28:	bc 01 3f fa 	ldi	$r17,444
ffffffff80913c2c:	a3 dd 73 fa 	ldi	$r19,-8797($r19)
ffffffff80913c30:	f5 00 00 c4 	bne	$r0,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913c34:	00 00 2e 88 	ldw	$r1,0($r14)
ffffffff80913c38:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913c3c:	bd 01 3f fa 	ldi	$r17,445
ffffffff80913c40:	e2 dd 73 fa 	ldi	$r19,-8734($r19)
ffffffff80913c44:	01 45 20 48 	cmpeq	$r1,0x2,$r1
ffffffff80913c48:	ef 00 20 c0 	beq	$r1,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913c4c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913c50:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80913c54:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff80913c58:	00 01 1f fa 	ldi	$r16,256
ffffffff80913c5c:	f3 dd 31 fa 	ldi	$r17,-8717($r17)
ffffffff80913c60:	03 02 5b 07 	call	ra,($r27),ffffffff80914470 <strcpy>
ffffffff80913c64:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913c68:	9c 43 bd fb 	ldi	$r29,17308($r29)
ffffffff80913c6c:	00 21 3f fa 	ldi	$r17,8448
ffffffff80913c70:	00 01 1f fa 	ldi	$r16,256
ffffffff80913c74:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913c78:	48 81 7b 8f 	ldl	$r27,-32440($r27)
ffffffff80913c7c:	08 02 5b 07 	call	ra,($r27),ffffffff809144a0 <strcmp>
ffffffff80913c80:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913c84:	80 43 bd fb 	ldi	$r29,17280($r29)
ffffffff80913c88:	c1 01 3f fa 	ldi	$r17,449
ffffffff80913c8c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913c90:	08 de 73 fa 	ldi	$r19,-8696($r19)
ffffffff80913c94:	dc 00 00 c4 	bne	$r0,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913c98:	00 00 6a 8e 	ldl	$r19,0($r10)
ffffffff80913c9c:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80913ca0:	00 82 4b 8c 	ldl	$r2,-32256($r11)
ffffffff80913ca4:	33 01 d3 41 	subl	$r14,$r19,$r19
ffffffff80913ca8:	f8 d9 c1 8d 	ldl	$r14,-9736($r1)
ffffffff80913cac:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80913cb0:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80913cb4:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80913cb8:	13 03 6e 42 	mull	$r19,$r14,$r19
ffffffff80913cbc:	01 07 61 42 	and	$r19,$r1,$r1
ffffffff80913cc0:	13 a9 61 4a 	sll	$r19,0xd,$r19
ffffffff80913cc4:	61 05 22 40 	cmpult	$r1,$r2,$r1
ffffffff80913cc8:	e6 00 20 c0 	beq	$r1,ffffffff80914064 <pmm_init+0xea4>
ffffffff80913ccc:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80913cd0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913cd4:	b0 81 7b 8f 	ldl	$r27,-32336($r27)
ffffffff80913cd8:	00 01 1f fa 	ldi	$r16,256
ffffffff80913cdc:	13 01 33 40 	addl	$r1,$r19,$r19
ffffffff80913ce0:	00 01 f3 a3 	stb	$r31,256($r19)
ffffffff80913ce4:	be 01 5b 07 	call	ra,($r27),ffffffff809143e0 <strlen>
ffffffff80913ce8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913cec:	18 43 bd fb 	ldi	$r29,17176($r29)
ffffffff80913cf0:	c4 01 3f fa 	ldi	$r17,452
ffffffff80913cf4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913cf8:	3d de 73 fa 	ldi	$r19,-8643($r19)
ffffffff80913cfc:	c2 00 00 c4 	bne	$r0,ffffffff80914008 <pmm_init+0xe48>
ffffffff80913d00:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff80913d04:	00 01 3f fa 	ldi	$r17,256
ffffffff80913d08:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913d0c:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80913d10:	93 fc 5b 07 	call	ra,($r27),ffffffff80912f60 <page_remove>
ffffffff80913d14:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913d18:	ec 42 bd fb 	ldi	$r29,17132($r29)
ffffffff80913d1c:	f8 81 09 8e 	ldl	$r16,-32264($r9)
ffffffff80913d20:	00 21 3f fa 	ldi	$r17,8448
ffffffff80913d24:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913d28:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80913d2c:	8c fc 5b 07 	call	ra,($r27),ffffffff80912f60 <page_remove>
ffffffff80913d30:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913d34:	d0 42 bd fb 	ldi	$r29,17104($r29)
ffffffff80913d38:	f8 81 49 8c 	ldl	$r2,-32264($r9)
ffffffff80913d3c:	00 f0 3f fc 	ldih	$r1,-4096
ffffffff80913d40:	00 82 8b 8c 	ldl	$r4,-32256($r11)
ffffffff80913d44:	ca 01 3f fa 	ldi	$r17,458
ffffffff80913d48:	23 e9 21 48 	srl	$r1,0xf,$r3
ffffffff80913d4c:	00 00 22 8c 	ldl	$r1,0($r2)
ffffffff80913d50:	21 e9 21 48 	srl	$r1,0xf,$r1
ffffffff80913d54:	01 07 23 40 	and	$r1,$r3,$r1
ffffffff80913d58:	22 a9 21 48 	srl	$r1,0xd,$r2
ffffffff80913d5c:	53 07 e1 43 	mov	$r1,$r19
ffffffff80913d60:	62 05 44 40 	cmpult	$r2,$r4,$r2
ffffffff80913d64:	b0 00 40 c0 	beq	$r2,ffffffff80914028 <pmm_init+0xe68>
ffffffff80913d68:	00 00 4d 8c 	ldl	$r2,0($r13)
ffffffff80913d6c:	cb 01 3f fa 	ldi	$r17,459
ffffffff80913d70:	0f 01 22 40 	addl	$r1,$r2,fp
ffffffff80913d74:	00 00 cf 8d 	ldl	$r14,0(fp)
ffffffff80913d78:	2e e9 c1 49 	srl	$r14,0xf,$r14
ffffffff80913d7c:	0e 07 c3 41 	and	$r14,$r3,$r14
ffffffff80913d80:	21 a9 c1 49 	srl	$r14,0xd,$r1
ffffffff80913d84:	53 07 ee 43 	mov	$r14,$r19
ffffffff80913d88:	81 05 81 40 	cmpule	$r4,$r1,$r1
ffffffff80913d8c:	a6 00 20 c4 	bne	$r1,ffffffff80914028 <pmm_init+0xe68>
ffffffff80913d90:	0e 01 4e 40 	addl	$r2,$r14,$r14
ffffffff80913d94:	cc 01 3f fa 	ldi	$r17,460
ffffffff80913d98:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff80913d9c:	21 e9 21 48 	srl	$r1,0xf,$r1
ffffffff80913da0:	01 07 23 40 	and	$r1,$r3,$r1
ffffffff80913da4:	23 a9 21 48 	srl	$r1,0xd,$r3
ffffffff80913da8:	53 07 e1 43 	mov	$r1,$r19
ffffffff80913dac:	85 05 83 40 	cmpule	$r4,$r3,$r5
ffffffff80913db0:	9d 00 a0 c4 	bne	$r5,ffffffff80914028 <pmm_init+0xe68>
ffffffff80913db4:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff80913db8:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80913dbc:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80913dc0:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80913dc4:	06 00 20 c4 	bne	$r1,ffffffff80913de0 <pmm_init+0xc20>
ffffffff80913dc8:	01 00 3f f8 	ldi	$r1,1
ffffffff80913dcc:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80913dd0:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff80913dd4:	23 a9 41 48 	srl	$r2,0xd,$r3
ffffffff80913dd8:	84 05 83 40 	cmpule	$r4,$r3,$r4
ffffffff80913ddc:	84 00 80 c4 	bne	$r4,ffffffff80913ff0 <pmm_init+0xe30>
ffffffff80913de0:	82 01 60 48 	s8addl	$r3,0,$r2
ffffffff80913de4:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff80913de8:	07 00 1f fa 	ldi	$r16,7
ffffffff80913dec:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80913df0:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80913df4:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff80913df8:	35 00 00 02 	sys_call	0x35
ffffffff80913dfc:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913e00:	01 00 3f fa 	ldi	$r17,1
ffffffff80913e04:	50 07 e2 43 	mov	$r2,$r16
ffffffff80913e08:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80913e0c:	00 00 5b 07 	call	ra,($r27),ffffffff80913e10 <pmm_init+0xc50>
ffffffff80913e10:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913e14:	f0 41 bd fb 	ldi	$r29,16880($r29)
ffffffff80913e18:	50 07 ff 43 	clr	$r16
ffffffff80913e1c:	35 00 00 02 	sys_call	0x35
ffffffff80913e20:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80913e24:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80913e28:	81 05 c1 41 	cmpule	$r14,$r1,$r1
ffffffff80913e2c:	68 00 20 c4 	bne	$r1,ffffffff80913fd0 <pmm_init+0xe10>
ffffffff80913e30:	01 00 3f f8 	ldi	$r1,1
ffffffff80913e34:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80913e38:	0e 01 c1 41 	addl	$r14,$r1,$r14
ffffffff80913e3c:	00 82 2b 8c 	ldl	$r1,-32256($r11)
ffffffff80913e40:	2e a9 c1 49 	srl	$r14,0xd,$r14
ffffffff80913e44:	61 05 c1 41 	cmpult	$r14,$r1,$r1
ffffffff80913e48:	69 00 20 c0 	beq	$r1,ffffffff80913ff0 <pmm_init+0xe30>
ffffffff80913e4c:	81 01 c0 49 	s8addl	$r14,0,$r1
ffffffff80913e50:	00 00 4a 8c 	ldl	$r2,0($r10)
ffffffff80913e54:	07 00 1f fa 	ldi	$r16,7
ffffffff80913e58:	0e 01 2e 40 	addl	$r1,$r14,$r14
ffffffff80913e5c:	8e 01 c0 49 	s8addl	$r14,0,$r14
ffffffff80913e60:	0e 01 4e 40 	addl	$r2,$r14,$r14
ffffffff80913e64:	35 00 00 02 	sys_call	0x35
ffffffff80913e68:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913e6c:	01 00 3f fa 	ldi	$r17,1
ffffffff80913e70:	50 07 ee 43 	mov	$r14,$r16
ffffffff80913e74:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80913e78:	00 00 5b 07 	call	ra,($r27),ffffffff80913e7c <pmm_init+0xcbc>
ffffffff80913e7c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913e80:	84 41 bd fb 	ldi	$r29,16772($r29)
ffffffff80913e84:	50 07 ff 43 	clr	$r16
ffffffff80913e88:	35 00 00 02 	sys_call	0x35
ffffffff80913e8c:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80913e90:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80913e94:	81 05 e1 41 	cmpule	fp,$r1,$r1
ffffffff80913e98:	49 00 20 c4 	bne	$r1,ffffffff80913fc0 <pmm_init+0xe00>
ffffffff80913e9c:	01 00 3f f8 	ldi	$r1,1
ffffffff80913ea0:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80913ea4:	01 01 e1 41 	addl	fp,$r1,$r1
ffffffff80913ea8:	00 82 4b 8c 	ldl	$r2,-32256($r11)
ffffffff80913eac:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80913eb0:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80913eb4:	4e 00 40 c0 	beq	$r2,ffffffff80913ff0 <pmm_init+0xe30>
ffffffff80913eb8:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80913ebc:	00 00 6a 8c 	ldl	$r3,0($r10)
ffffffff80913ec0:	07 00 1f fa 	ldi	$r16,7
ffffffff80913ec4:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80913ec8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80913ecc:	03 01 61 40 	addl	$r3,$r1,$r3
ffffffff80913ed0:	35 00 00 02 	sys_call	0x35
ffffffff80913ed4:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913ed8:	01 00 3f fa 	ldi	$r17,1
ffffffff80913edc:	50 07 e3 43 	mov	$r3,$r16
ffffffff80913ee0:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80913ee4:	00 00 5b 07 	call	ra,($r27),ffffffff80913ee8 <pmm_init+0xd28>
ffffffff80913ee8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913eec:	18 41 bd fb 	ldi	$r29,16664($r29)
ffffffff80913ef0:	50 07 ff 43 	clr	$r16
ffffffff80913ef4:	35 00 00 02 	sys_call	0x35
ffffffff80913ef8:	f8 81 29 8c 	ldl	$r1,-32264($r9)
ffffffff80913efc:	07 00 1f fa 	ldi	$r16,7
ffffffff80913f00:	00 00 e1 af 	stl	$r31,0($r1)
ffffffff80913f04:	35 00 00 02 	sys_call	0x35
ffffffff80913f08:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913f0c:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80913f10:	00 00 5b 07 	call	ra,($r27),ffffffff80913f14 <pmm_init+0xd54>
ffffffff80913f14:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913f18:	ec 40 bd fb 	ldi	$r29,16620($r29)
ffffffff80913f1c:	42 07 e0 43 	mov	$r0,$r2
ffffffff80913f20:	50 07 ff 43 	clr	$r16
ffffffff80913f24:	35 00 00 02 	sys_call	0x35
ffffffff80913f28:	40 00 7e 8c 	ldl	$r3,64(sp)
ffffffff80913f2c:	0f 05 62 40 	cmpeq	$r3,$r2,fp
ffffffff80913f30:	32 00 e0 c1 	beq	fp,ffffffff80913ffc <pmm_init+0xe3c>
ffffffff80913f34:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913f38:	40 80 7b 8f 	ldl	$r27,-32704($r27)
ffffffff80913f3c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913f40:	5e de 10 fa 	ldi	$r16,-8610($r16)
ffffffff80913f44:	92 f0 5b 07 	call	ra,($r27),ffffffff80910190 <cprintf>
ffffffff80913f48:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913f4c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80913f50:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913f54:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80913f58:	b8 40 bd fb 	ldi	$r29,16568($r29)
ffffffff80913f5c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80913f60:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80913f64:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80913f68:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80913f6c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80913f70:	50 00 de fb 	ldi	sp,80(sp)
ffffffff80913f74:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913f78:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913f7c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913f80:	00 00 4d 8c 	ldl	$r2,0($r13)
ffffffff80913f84:	21 01 22 40 	subl	$r1,$r2,$r1
ffffffff80913f88:	05 fd ff 13 	br	ffffffff809133a0 <pmm_init+0x1e0>
ffffffff80913f8c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913f90:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80913f94:	33 01 61 42 	subl	$r19,$r1,$r19
ffffffff80913f98:	d7 fc ff 13 	br	ffffffff809132f8 <pmm_init+0x138>
ffffffff80913f9c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fa0:	01 00 3f f8 	ldi	$r1,1
ffffffff80913fa4:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80913fa8:	01 01 e1 41 	addl	fp,$r1,$r1
ffffffff80913fac:	9a fe ff 13 	br	ffffffff80913a18 <pmm_init+0x858>
ffffffff80913fb0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80913fb4:	21 01 c1 41 	subl	$r14,$r1,$r1
ffffffff80913fb8:	b2 fe ff 13 	br	ffffffff80913a84 <pmm_init+0x8c4>
ffffffff80913fbc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fc0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80913fc4:	21 01 e1 41 	subl	fp,$r1,$r1
ffffffff80913fc8:	b7 ff ff 13 	br	ffffffff80913ea8 <pmm_init+0xce8>
ffffffff80913fcc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fd0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80913fd4:	2e 01 c1 41 	subl	$r14,$r1,$r14
ffffffff80913fd8:	98 ff ff 13 	br	ffffffff80913e3c <pmm_init+0xc7c>
ffffffff80913fdc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fe0:	01 00 5f f8 	ldi	$r2,1
ffffffff80913fe4:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff80913fe8:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80913fec:	18 fd ff 13 	br	ffffffff80913450 <pmm_init+0x290>
ffffffff80913ff0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913ff4:	e0 81 7b 8f 	ldl	$r27,-32288($r27)
ffffffff80913ff8:	5d fa 5b 07 	call	ra,($r27),ffffffff80912970 <pa2page.part.5>
ffffffff80913ffc:	d3 01 3f fa 	ldi	$r17,467
ffffffff80914000:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914004:	d5 d4 73 fa 	ldi	$r19,-11051($r19)
ffffffff80914008:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091400c:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80914010:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914014:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80914018:	2e d3 52 fa 	ldi	$r18,-11474($r18)
ffffffff8091401c:	00 da 10 fa 	ldi	$r16,-9728($r16)
ffffffff80914020:	83 f0 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80914024:	82 01 3f fa 	ldi	$r17,386
ffffffff80914028:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091402c:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80914030:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914034:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80914038:	56 d5 52 fa 	ldi	$r18,-10922($r18)
ffffffff8091403c:	00 da 10 fa 	ldi	$r16,-9728($r16)
ffffffff80914040:	7b f0 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80914044:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914048:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff8091404c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914050:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80914054:	71 00 3f fa 	ldi	$r17,113
ffffffff80914058:	87 db 52 fa 	ldi	$r18,-9337($r18)
ffffffff8091405c:	98 d5 10 fa 	ldi	$r16,-10856($r16)
ffffffff80914060:	73 f0 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80914064:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914068:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff8091406c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914070:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80914074:	6b 00 3f fa 	ldi	$r17,107
ffffffff80914078:	56 d5 52 fa 	ldi	$r18,-10922($r18)
ffffffff8091407c:	98 d5 10 fa 	ldi	$r16,-10856($r16)
ffffffff80914080:	6b f0 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80914084:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914088:	77 01 3f fa 	ldi	$r17,375
ffffffff8091408c:	d2 da 73 fa 	ldi	$r19,-9518($r19)
ffffffff80914090:	dd ff ff 13 	br	ffffffff80914008 <pmm_init+0xe48>
ffffffff80914094:	a9 fc ff 13 	br	ffffffff8091333c <pmm_init+0x17c>
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
ffffffff809140dc:	88 80 4a 8d 	ldl	$r10,-32632($r10)
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
ffffffff809141c0:	da 01 3f fa 	ldi	$r17,474
ffffffff809141c4:	7d de 73 fa 	ldi	$r19,-8579($r19)
ffffffff809141c8:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff809141cc:	2a 00 20 c0 	beq	$r1,ffffffff80914278 <kmalloc+0xd8>
ffffffff809141d0:	ff 1f 50 f8 	ldi	$r2,8191($r16)
ffffffff809141d4:	07 00 1f fa 	ldi	$r16,7
ffffffff809141d8:	22 a9 41 48 	srl	$r2,0xd,$r2
ffffffff809141dc:	35 00 00 02 	sys_call	0x35
ffffffff809141e0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809141e4:	88 80 21 8c 	ldl	$r1,-32632($r1)
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
ffffffff80914214:	00 82 61 8c 	ldl	$r3,-32256($r1)
ffffffff80914218:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091421c:	c8 81 21 8c 	ldl	$r1,-32312($r1)
ffffffff80914220:	00 00 61 8e 	ldl	$r19,0($r1)
ffffffff80914224:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80914228:	33 01 53 40 	subl	$r2,$r19,$r19
ffffffff8091422c:	f8 d9 41 8c 	ldl	$r2,-9736($r1)
ffffffff80914230:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80914234:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80914238:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff8091423c:	13 03 62 42 	mull	$r19,$r2,$r19
ffffffff80914240:	01 07 61 42 	and	$r19,$r1,$r1
ffffffff80914244:	13 a9 61 4a 	sll	$r19,0xd,$r19
ffffffff80914248:	61 05 23 40 	cmpult	$r1,$r3,$r1
ffffffff8091424c:	11 00 20 c0 	beq	$r1,ffffffff80914294 <kmalloc+0xf4>
ffffffff80914250:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80914254:	a8 80 21 8c 	ldl	$r1,-32600($r1)
ffffffff80914258:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091425c:	00 00 01 8c 	ldl	$r0,0($r1)
ffffffff80914260:	00 01 60 42 	addl	$r19,$r0,$r0
ffffffff80914264:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80914268:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091426c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914270:	dd 01 3f fa 	ldi	$r17,477
ffffffff80914274:	96 de 73 fa 	ldi	$r19,-8554($r19)
ffffffff80914278:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091427c:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80914280:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80914284:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80914288:	2e d3 52 fa 	ldi	$r18,-11474($r18)
ffffffff8091428c:	00 da 10 fa 	ldi	$r16,-9728($r16)
ffffffff80914290:	e7 ef 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff80914294:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914298:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff8091429c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809142a0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809142a4:	6b 00 3f fa 	ldi	$r17,107
ffffffff809142a8:	56 d5 52 fa 	ldi	$r18,-10922($r18)
ffffffff809142ac:	98 d5 10 fa 	ldi	$r16,-10856($r16)
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
ffffffff80914304:	a8 80 21 8c 	ldl	$r1,-32600($r1)
ffffffff80914308:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091430c:	30 01 01 42 	subl	$r16,$r1,$r16
ffffffff80914310:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80914314:	21 a9 01 4a 	srl	$r16,0xd,$r1
ffffffff80914318:	00 82 42 8c 	ldl	$r2,-32256($r2)
ffffffff8091431c:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80914320:	1b 00 40 c0 	beq	$r2,ffffffff80914390 <kfree+0xd0>
ffffffff80914324:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80914328:	07 00 1f fa 	ldi	$r16,7
ffffffff8091432c:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80914330:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80914334:	c8 81 42 8c 	ldl	$r2,-32312($r2)
ffffffff80914338:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff8091433c:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80914340:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff80914344:	35 00 00 02 	sys_call	0x35
ffffffff80914348:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091434c:	88 80 21 8c 	ldl	$r1,-32632($r1)
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
ffffffff80914394:	e0 81 7b 8f 	ldl	$r27,-32288($r27)
ffffffff80914398:	75 f9 5b 07 	call	ra,($r27),ffffffff80912970 <pa2page.part.5>
ffffffff8091439c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809143a0:	e4 01 3f fa 	ldi	$r17,484
ffffffff809143a4:	a3 de 73 fa 	ldi	$r19,-8541($r19)
ffffffff809143a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809143ac:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff809143b0:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809143b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809143b8:	2e d3 52 fa 	ldi	$r18,-11474($r18)
ffffffff809143bc:	00 da 10 fa 	ldi	$r16,-9728($r16)
ffffffff809143c0:	9b ef 5b 07 	call	ra,($r27),ffffffff80910230 <__panic>
ffffffff809143c4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809143c8:	e3 01 3f fa 	ldi	$r17,483
ffffffff809143cc:	7d de 73 fa 	ldi	$r19,-8579($r19)
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
ffffffff80914630:	af de 21 f8 	ldi	$r1,-8529($r1)
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
ffffffff80914674:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80914678:	54 07 e9 43 	mov	$r9,$r20
ffffffff8091467c:	a8 01 fb 06 	call	$r23,($r27),ffffffff80914d20 <__divlu>
ffffffff80914680:	52 07 fb 43 	mov	$r27,$r18
ffffffff80914684:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914688:	e8 81 7b 8f 	ldl	$r27,-32280($r27)
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
ffffffff809146d8:	d0 de 6b f9 	ldi	$r11,-8496($r11)
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
ffffffff809148b0:	90 e0 42 f8 	ldi	$r2,-8048($r2)
ffffffff809148b4:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff809148b8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809148bc:	a9 00 20 c0 	beq	$r1,ffffffff80914b64 <vprintfmt+0x4c4>
ffffffff809148c0:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809148c4:	53 07 e1 43 	mov	$r1,$r19
ffffffff809148c8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809148cc:	50 07 ea 43 	mov	$r10,$r16
ffffffff809148d0:	40 d3 52 fa 	ldi	$r18,-11456($r18)
ffffffff809148d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809148d8:	38 81 7b 8f 	ldl	$r27,-32456($r27)
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
ffffffff80914920:	e8 81 7b 8f 	ldl	$r27,-32280($r27)
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
ffffffff809149a4:	c0 de 7b fb 	ldi	$r27,-8512($r27)
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
ffffffff80914b70:	c7 de 52 fa 	ldi	$r18,-8505($r18)
ffffffff80914b74:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914b78:	38 81 7b 8f 	ldl	$r27,-32456($r27)
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
ffffffff80914c1c:	b0 80 7b 8f 	ldl	$r27,-32592($r27)
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