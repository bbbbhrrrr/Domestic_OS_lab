
bin/kernel：     文件格式 elf64-sw_64


Disassembly of section .text:

ffffffff80910000 <kern_entry>:
ffffffff80910000:	00 00 60 13 	br	$r27,ffffffff80910004 <kern_entry+0x4>
ffffffff80910004:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910008:	fc 3f bd fb 	ldi	$r29,16380($r29)
ffffffff8091000c:	10 81 dd 8f 	ldl	sp,-32496($r29)
ffffffff80910010:	28 80 7d 8f 	ldl	$r27,-32728($r29)
ffffffff80910014:	02 00 5b 07 	call	ra,($r27),ffffffff80910020 <kern_init>
	...

ffffffff80910020 <kern_init>:
ffffffff80910020:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910024:	e0 3f bd fb 	ldi	$r29,16352($r29)
ffffffff80910028:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff8091002c:	38 80 10 8e 	ldl	$r16,-32712($r16)
ffffffff80910030:	00 00 5d fe 	ldih	$r18,0($r29)
ffffffff80910034:	90 80 52 8e 	ldl	$r18,-32624($r18)
ffffffff80910038:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091003c:	51 07 ff 43 	clr	$r17
ffffffff80910040:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910044:	b8 80 7b 8f 	ldl	$r27,-32584($r27)
ffffffff80910048:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091004c:	32 01 50 42 	subl	$r18,$r16,$r18
ffffffff80910050:	db 07 5b 07 	call	ra,($r27),ffffffff80911fc0 <memset>
ffffffff80910054:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910058:	ac 3f bd fb 	ldi	$r29,16300($r29)
ffffffff8091005c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910060:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910064:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910068:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff8091006c:	63 e9 10 fa 	ldi	$r16,-5789($r16)
ffffffff80910070:	50 e9 31 fa 	ldi	$r17,-5808($r17)
ffffffff80910074:	42 00 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910078:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091007c:	88 3f bd fb 	ldi	$r29,16264($r29)
ffffffff80910080:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910084:	00 80 7b 8f 	ldl	$r27,-32768($r27)
ffffffff80910088:	99 00 5b 07 	call	ra,($r27),ffffffff809102f0 <print_kerninfo>
ffffffff8091008c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910090:	74 3f bd fb 	ldi	$r29,16244($r29)
ffffffff80910094:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910098:	20 81 7b 8f 	ldl	$r27,-32480($r27)
ffffffff8091009c:	d8 00 5b 07 	call	ra,($r27),ffffffff80910400 <trap_init>
ffffffff809100a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100a4:	60 3f bd fb 	ldi	$r29,16224($r29)
ffffffff809100a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100ac:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff809100b0:	87 03 5b 07 	call	ra,($r27),ffffffff80910ed0 <pmm_init>
ffffffff809100b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100b8:	4c 3f bd fb 	ldi	$r29,16204($r29)
ffffffff809100bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100c0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809100c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809100c8:	68 e9 10 fa 	ldi	$r16,-5784($r16)
ffffffff809100cc:	2c 00 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809100d0:	ff ff ff 13 	br	ffffffff809100d0 <kern_init+0xb0>
ffffffff809100d4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809100d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809100dc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809100e0 <clock_set_next_event>:
ffffffff809100e0:	02 00 1f fe 	ldih	$r16,2
ffffffff809100e4:	a0 86 10 fa 	ldi	$r16,-31072($r16)
ffffffff809100e8:	3b 00 00 02 	sys_call	0x3b
ffffffff809100ec:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809100f0 <intr_disable>:
ffffffff809100f0:	07 00 1f fa 	ldi	$r16,7
ffffffff809100f4:	35 00 00 02 	sys_call	0x35
ffffffff809100f8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809100fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910100 <cputch>:
ffffffff80910100:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910104:	00 3f bd fb 	ldi	$r29,16128($r29)
ffffffff80910108:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff8091010c:	78 e9 21 8c 	ldl	$r1,-5768($r1)
ffffffff80910110:	00 00 01 a2 	stb	$r16,0($r1)
ffffffff80910114:	00 00 31 88 	ldw	$r1,0($r17)
ffffffff80910118:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff8091011c:	00 00 31 a8 	stw	$r1,0($r17)
ffffffff80910120:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910124:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910128:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091012c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910130 <vcprintf>:
ffffffff80910130:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910134:	d0 3e bd fb 	ldi	$r29,16080($r29)
ffffffff80910138:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091013c:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80910140:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80910144:	54 07 f2 43 	mov	$r18,$r20
ffffffff80910148:	52 07 f0 43 	mov	$r16,$r18
ffffffff8091014c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910150:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910154:	53 07 f1 43 	mov	$r17,$r19
ffffffff80910158:	10 00 fe ab 	stw	$r31,16(sp)
ffffffff8091015c:	10 00 3e fa 	ldi	$r17,16(sp)
ffffffff80910160:	00 c1 10 fa 	ldi	$r16,-16128($r16)
ffffffff80910164:	f2 07 5b 07 	call	ra,($r27),ffffffff80912130 <vprintfmt>
ffffffff80910168:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091016c:	10 00 1e 88 	ldw	$r0,16(sp)
ffffffff80910170:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910174:	98 3e bd fb 	ldi	$r29,16024($r29)
ffffffff80910178:	30 00 de fb 	ldi	sp,48(sp)
ffffffff8091017c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910180 <cprintf>:
ffffffff80910180:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910184:	80 3e bd fb 	ldi	$r29,16000($r29)
ffffffff80910188:	60 ff de fb 	ldi	sp,-160(sp)
ffffffff8091018c:	08 00 5f f8 	ldi	$r2,8
ffffffff80910190:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910194:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80910198:	28 00 5e a8 	stw	$r2,40(sp)
ffffffff8091019c:	48 00 3e be 	fstd	$f17,72(sp)
ffffffff809101a0:	50 00 5e be 	fstd	$f18,80(sp)
ffffffff809101a4:	70 00 3e f8 	ldi	$r1,112(sp)
ffffffff809101a8:	28 00 5e 8c 	ldl	$r2,40(sp)
ffffffff809101ac:	58 00 7e be 	fstd	$f19,88(sp)
ffffffff809101b0:	60 00 9e be 	fstd	$f20,96(sp)
ffffffff809101b4:	80 00 5e ae 	stl	$r18,128(sp)
ffffffff809101b8:	68 00 be be 	fstd	$f21,104(sp)
ffffffff809101bc:	52 07 f0 43 	mov	$r16,$r18
ffffffff809101c0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809101c4:	00 c1 10 fa 	ldi	$r16,-16128($r16)
ffffffff809101c8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809101cc:	78 00 3e ae 	stl	$r17,120(sp)
ffffffff809101d0:	88 00 7e ae 	stl	$r19,136(sp)
ffffffff809101d4:	30 00 3e fa 	ldi	$r17,48(sp)
ffffffff809101d8:	53 07 e1 43 	mov	$r1,$r19
ffffffff809101dc:	90 00 9e ae 	stl	$r20,144(sp)
ffffffff809101e0:	98 00 be ae 	stl	$r21,152(sp)
ffffffff809101e4:	54 07 e2 43 	mov	$r2,$r20
ffffffff809101e8:	20 00 3e ac 	stl	$r1,32(sp)
ffffffff809101ec:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff809101f0:	18 00 5e ac 	stl	$r2,24(sp)
ffffffff809101f4:	30 00 fe ab 	stw	$r31,48(sp)
ffffffff809101f8:	cd 07 5b 07 	call	ra,($r27),ffffffff80912130 <vprintfmt>
ffffffff809101fc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910200:	30 00 1e 88 	ldw	$r0,48(sp)
ffffffff80910204:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910208:	04 3e bd fb 	ldi	$r29,15876($r29)
ffffffff8091020c:	a0 00 de fb 	ldi	sp,160(sp)
ffffffff80910210:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910214:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910218:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091021c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910220 <__panic>:
ffffffff80910220:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910224:	e0 3d bd fb 	ldi	$r29,15840($r29)
ffffffff80910228:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091022c:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff80910230:	40 81 41 88 	ldw	$r2,-32448($r1)
ffffffff80910234:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80910238:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff8091023c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910240:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80910244:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910248:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff8091024c:	49 07 f2 43 	mov	$r18,$r9
ffffffff80910250:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80910254:	78 00 be ae 	stl	$r21,120(sp)
ffffffff80910258:	04 00 40 c0 	beq	$r2,ffffffff8091026c <__panic+0x4c>
ffffffff8091025c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910260:	a8 80 7b 8f 	ldl	$r27,-32600($r27)
ffffffff80910264:	a2 ff 5b 07 	call	ra,($r27),ffffffff809100f0 <intr_disable>
ffffffff80910268:	ff ff ff 13 	br	ffffffff80910268 <__panic+0x48>
ffffffff8091026c:	01 00 5f f8 	ldi	$r2,1
ffffffff80910270:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910274:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910278:	52 07 f1 43 	mov	$r17,$r18
ffffffff8091027c:	51 07 f0 43 	mov	$r16,$r17
ffffffff80910280:	40 81 41 a8 	stw	$r2,-32448($r1)
ffffffff80910284:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff80910288:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091028c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80910290:	18 00 3f f8 	ldi	$r1,24
ffffffff80910294:	80 e9 10 fa 	ldi	$r16,-5760($r16)
ffffffff80910298:	18 00 3e a8 	stw	$r1,24(sp)
ffffffff8091029c:	b8 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809102a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102a4:	60 3d bd fb 	ldi	$r29,15712($r29)
ffffffff809102a8:	10 00 3e 8e 	ldl	$r17,16(sp)
ffffffff809102ac:	18 00 5e 8e 	ldl	$r18,24(sp)
ffffffff809102b0:	50 07 e9 43 	mov	$r9,$r16
ffffffff809102b4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102b8:	08 81 7b 8f 	ldl	$r27,-32504($r27)
ffffffff809102bc:	9c ff 5b 07 	call	ra,($r27),ffffffff80910130 <vcprintf>
ffffffff809102c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102c4:	40 3d bd fb 	ldi	$r29,15680($r29)
ffffffff809102c8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102cc:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809102d0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102d4:	66 e9 10 fa 	ldi	$r16,-5786($r16)
ffffffff809102d8:	a9 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809102dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102e0:	24 3d bd fb 	ldi	$r29,15652($r29)
ffffffff809102e4:	dd ff ff 13 	br	ffffffff8091025c <__panic+0x3c>
ffffffff809102e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809102ec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809102f0 <print_kerninfo>:
ffffffff809102f0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809102f4:	10 3d bd fb 	ldi	$r29,15632($r29)
ffffffff809102f8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809102fc:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910300:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff80910304:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910308:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091030c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910310:	9c e9 10 fa 	ldi	$r16,-5732($r16)
ffffffff80910314:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910318:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff8091031c:	90 80 29 8d 	ldl	$r9,-32624($r9)
ffffffff80910320:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80910324:	28 80 4a 8d 	ldl	$r10,-32728($r10)
ffffffff80910328:	95 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff8091032c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910330:	d4 3c bd fb 	ldi	$r29,15572($r29)
ffffffff80910334:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910338:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff8091033c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910340:	51 07 ea 43 	mov	$r10,$r17
ffffffff80910344:	b5 e9 10 fa 	ldi	$r16,-5707($r16)
ffffffff80910348:	8d ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff8091034c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910350:	b4 3c bd fb 	ldi	$r29,15540($r29)
ffffffff80910354:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff80910358:	a0 80 31 8e 	ldl	$r17,-32608($r17)
ffffffff8091035c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910360:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910364:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910368:	d2 e9 10 fa 	ldi	$r16,-5678($r16)
ffffffff8091036c:	84 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910370:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910374:	90 3c bd fb 	ldi	$r29,15504($r29)
ffffffff80910378:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff8091037c:	38 80 31 8e 	ldl	$r17,-32712($r17)
ffffffff80910380:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910384:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910388:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091038c:	ef e9 10 fa 	ldi	$r16,-5649($r16)
ffffffff80910390:	7b ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910394:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910398:	6c 3c bd fb 	ldi	$r29,15468($r29)
ffffffff8091039c:	51 07 e9 43 	mov	$r9,$r17
ffffffff809103a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103a4:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809103a8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103ac:	0c ea 10 fa 	ldi	$r16,-5620($r16)
ffffffff809103b0:	73 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809103b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103b8:	ff 03 29 fa 	ldi	$r17,1023($r9)
ffffffff809103bc:	4c 3c bd fb 	ldi	$r29,15436($r29)
ffffffff809103c0:	31 01 2a 42 	subl	$r17,$r10,$r17
ffffffff809103c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103c8:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809103cc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103d0:	ff 03 31 f8 	ldi	$r1,1023($r17)
ffffffff809103d4:	29 ea 10 fa 	ldi	$r16,-5591($r16)
ffffffff809103d8:	31 12 21 46 	sellt	$r17,$r1,$r17,$r17
ffffffff809103dc:	51 49 21 4a 	sra	$r17,0xa,$r17
ffffffff809103e0:	67 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809103e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103e8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809103ec:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809103f0:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809103f4:	1c 3c bd fb 	ldi	$r29,15388($r29)
ffffffff809103f8:	20 00 de fb 	ldi	sp,32(sp)
ffffffff809103fc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910400 <trap_init>:
ffffffff80910400:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910404:	00 3c bd fb 	ldi	$r29,15360($r29)
ffffffff80910408:	50 07 fd 43 	mov	$r29,$r16
ffffffff8091040c:	37 00 00 02 	sys_call	0x37
ffffffff80910410:	51 07 ff 43 	clr	$r17
ffffffff80910414:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910418:	48 80 10 8e 	ldl	$r16,-32696($r16)
ffffffff8091041c:	34 00 00 02 	sys_call	0x34
ffffffff80910420:	02 00 3f fa 	ldi	$r17,2
ffffffff80910424:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910428:	d8 80 10 8e 	ldl	$r16,-32552($r16)
ffffffff8091042c:	34 00 00 02 	sys_call	0x34
ffffffff80910430:	03 00 3f fa 	ldi	$r17,3
ffffffff80910434:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910438:	d0 80 10 8e 	ldl	$r16,-32560($r16)
ffffffff8091043c:	34 00 00 02 	sys_call	0x34
ffffffff80910440:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910444:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910448:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091044c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910450 <print_regs>:
ffffffff80910450:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910454:	b0 3b bd fb 	ldi	$r29,15280($r29)
ffffffff80910458:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091045c:	00 00 30 8e 	ldl	$r17,0($r16)
ffffffff80910460:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910464:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910468:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff8091046c:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910470:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910474:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910478:	53 ea 10 fa 	ldi	$r16,-5549($r16)
ffffffff8091047c:	40 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910480:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910484:	80 3b bd fb 	ldi	$r29,15232($r29)
ffffffff80910488:	08 00 29 8e 	ldl	$r17,8($r9)
ffffffff8091048c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910490:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910494:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910498:	68 ea 10 fa 	ldi	$r16,-5528($r16)
ffffffff8091049c:	38 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809104a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104a4:	60 3b bd fb 	ldi	$r29,15200($r29)
ffffffff809104a8:	10 00 29 8e 	ldl	$r17,16($r9)
ffffffff809104ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104b0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809104b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104b8:	7d ea 10 fa 	ldi	$r16,-5507($r16)
ffffffff809104bc:	30 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809104c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104c4:	40 3b bd fb 	ldi	$r29,15168($r29)
ffffffff809104c8:	18 00 29 8e 	ldl	$r17,24($r9)
ffffffff809104cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104d0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809104d4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104d8:	92 ea 10 fa 	ldi	$r16,-5486($r16)
ffffffff809104dc:	28 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809104e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104e4:	20 3b bd fb 	ldi	$r29,15136($r29)
ffffffff809104e8:	20 00 29 8e 	ldl	$r17,32($r9)
ffffffff809104ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104f0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809104f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104f8:	a7 ea 10 fa 	ldi	$r16,-5465($r16)
ffffffff809104fc:	20 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910500:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910504:	00 3b bd fb 	ldi	$r29,15104($r29)
ffffffff80910508:	28 00 29 8e 	ldl	$r17,40($r9)
ffffffff8091050c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910510:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910514:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910518:	bc ea 10 fa 	ldi	$r16,-5444($r16)
ffffffff8091051c:	18 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910520:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910524:	e0 3a bd fb 	ldi	$r29,15072($r29)
ffffffff80910528:	30 00 29 8e 	ldl	$r17,48($r9)
ffffffff8091052c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910530:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910534:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910538:	d1 ea 10 fa 	ldi	$r16,-5423($r16)
ffffffff8091053c:	10 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910540:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910544:	c0 3a bd fb 	ldi	$r29,15040($r29)
ffffffff80910548:	38 00 29 8e 	ldl	$r17,56($r9)
ffffffff8091054c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910550:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910554:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910558:	e6 ea 10 fa 	ldi	$r16,-5402($r16)
ffffffff8091055c:	08 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910560:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910564:	a0 3a bd fb 	ldi	$r29,15008($r29)
ffffffff80910568:	40 00 29 8e 	ldl	$r17,64($r9)
ffffffff8091056c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910570:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910574:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910578:	fb ea 10 fa 	ldi	$r16,-5381($r16)
ffffffff8091057c:	00 ff 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910580:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910584:	80 3a bd fb 	ldi	$r29,14976($r29)
ffffffff80910588:	48 00 29 8e 	ldl	$r17,72($r9)
ffffffff8091058c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910590:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910594:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910598:	10 eb 10 fa 	ldi	$r16,-5360($r16)
ffffffff8091059c:	f8 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809105a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105a4:	60 3a bd fb 	ldi	$r29,14944($r29)
ffffffff809105a8:	50 00 29 8e 	ldl	$r17,80($r9)
ffffffff809105ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105b0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809105b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105b8:	25 eb 10 fa 	ldi	$r16,-5339($r16)
ffffffff809105bc:	f0 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809105c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105c4:	40 3a bd fb 	ldi	$r29,14912($r29)
ffffffff809105c8:	58 00 29 8e 	ldl	$r17,88($r9)
ffffffff809105cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105d0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809105d4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105d8:	3a eb 10 fa 	ldi	$r16,-5318($r16)
ffffffff809105dc:	e8 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809105e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105e4:	20 3a bd fb 	ldi	$r29,14880($r29)
ffffffff809105e8:	60 00 29 8e 	ldl	$r17,96($r9)
ffffffff809105ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105f0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809105f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105f8:	4f eb 10 fa 	ldi	$r16,-5297($r16)
ffffffff809105fc:	e0 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910600:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910604:	00 3a bd fb 	ldi	$r29,14848($r29)
ffffffff80910608:	68 00 29 8e 	ldl	$r17,104($r9)
ffffffff8091060c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910610:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910614:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910618:	64 eb 10 fa 	ldi	$r16,-5276($r16)
ffffffff8091061c:	d8 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910620:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910624:	e0 39 bd fb 	ldi	$r29,14816($r29)
ffffffff80910628:	70 00 29 8e 	ldl	$r17,112($r9)
ffffffff8091062c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910630:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910634:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910638:	79 eb 10 fa 	ldi	$r16,-5255($r16)
ffffffff8091063c:	d0 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910640:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910644:	c0 39 bd fb 	ldi	$r29,14784($r29)
ffffffff80910648:	78 00 29 8e 	ldl	$r17,120($r9)
ffffffff8091064c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910650:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910654:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910658:	8e eb 10 fa 	ldi	$r16,-5234($r16)
ffffffff8091065c:	c8 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910660:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910664:	a0 39 bd fb 	ldi	$r29,14752($r29)
ffffffff80910668:	08 01 29 8e 	ldl	$r17,264($r9)
ffffffff8091066c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910670:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910674:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910678:	a3 eb 10 fa 	ldi	$r16,-5213($r16)
ffffffff8091067c:	c0 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910680:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910684:	80 39 bd fb 	ldi	$r29,14720($r29)
ffffffff80910688:	10 01 29 8e 	ldl	$r17,272($r9)
ffffffff8091068c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910690:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910694:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910698:	b8 eb 10 fa 	ldi	$r16,-5192($r16)
ffffffff8091069c:	b8 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809106a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106a4:	60 39 bd fb 	ldi	$r29,14688($r29)
ffffffff809106a8:	18 01 29 8e 	ldl	$r17,280($r9)
ffffffff809106ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106b0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809106b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106b8:	cd eb 10 fa 	ldi	$r16,-5171($r16)
ffffffff809106bc:	b0 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809106c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106c4:	40 39 bd fb 	ldi	$r29,14656($r29)
ffffffff809106c8:	98 00 29 8e 	ldl	$r17,152($r9)
ffffffff809106cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106d0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809106d4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106d8:	e2 eb 10 fa 	ldi	$r16,-5150($r16)
ffffffff809106dc:	a8 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809106e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106e4:	20 39 bd fb 	ldi	$r29,14624($r29)
ffffffff809106e8:	a0 00 29 8e 	ldl	$r17,160($r9)
ffffffff809106ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106f0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809106f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106f8:	f7 eb 10 fa 	ldi	$r16,-5129($r16)
ffffffff809106fc:	a0 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910700:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910704:	00 39 bd fb 	ldi	$r29,14592($r29)
ffffffff80910708:	a8 00 29 8e 	ldl	$r17,168($r9)
ffffffff8091070c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910710:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910714:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910718:	0c ec 10 fa 	ldi	$r16,-5108($r16)
ffffffff8091071c:	98 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910720:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910724:	e0 38 bd fb 	ldi	$r29,14560($r29)
ffffffff80910728:	b0 00 29 8e 	ldl	$r17,176($r9)
ffffffff8091072c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910730:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910734:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910738:	21 ec 10 fa 	ldi	$r16,-5087($r16)
ffffffff8091073c:	90 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910740:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910744:	c0 38 bd fb 	ldi	$r29,14528($r29)
ffffffff80910748:	b8 00 29 8e 	ldl	$r17,184($r9)
ffffffff8091074c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910750:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910754:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910758:	36 ec 10 fa 	ldi	$r16,-5066($r16)
ffffffff8091075c:	88 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910760:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910764:	a0 38 bd fb 	ldi	$r29,14496($r29)
ffffffff80910768:	c0 00 29 8e 	ldl	$r17,192($r9)
ffffffff8091076c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910770:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910774:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910778:	4b ec 10 fa 	ldi	$r16,-5045($r16)
ffffffff8091077c:	80 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910780:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910784:	80 38 bd fb 	ldi	$r29,14464($r29)
ffffffff80910788:	c8 00 29 8e 	ldl	$r17,200($r9)
ffffffff8091078c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910790:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910794:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910798:	60 ec 10 fa 	ldi	$r16,-5024($r16)
ffffffff8091079c:	78 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809107a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107a4:	60 38 bd fb 	ldi	$r29,14432($r29)
ffffffff809107a8:	d0 00 29 8e 	ldl	$r17,208($r9)
ffffffff809107ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107b0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809107b4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107b8:	75 ec 10 fa 	ldi	$r16,-5003($r16)
ffffffff809107bc:	70 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809107c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107c4:	40 38 bd fb 	ldi	$r29,14400($r29)
ffffffff809107c8:	d8 00 29 8e 	ldl	$r17,216($r9)
ffffffff809107cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107d0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809107d4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107d8:	8a ec 10 fa 	ldi	$r16,-4982($r16)
ffffffff809107dc:	68 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809107e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107e4:	20 38 bd fb 	ldi	$r29,14368($r29)
ffffffff809107e8:	e0 00 29 8e 	ldl	$r17,224($r9)
ffffffff809107ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107f0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809107f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107f8:	9f ec 10 fa 	ldi	$r16,-4961($r16)
ffffffff809107fc:	60 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910800:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910804:	00 38 bd fb 	ldi	$r29,14336($r29)
ffffffff80910808:	00 01 29 8e 	ldl	$r17,256($r9)
ffffffff8091080c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910810:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910814:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910818:	b4 ec 10 fa 	ldi	$r16,-4940($r16)
ffffffff8091081c:	58 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910820:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910824:	e0 37 bd fb 	ldi	$r29,14304($r29)
ffffffff80910828:	f8 00 29 8e 	ldl	$r17,248($r9)
ffffffff8091082c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910830:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910834:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910838:	c9 ec 10 fa 	ldi	$r16,-4919($r16)
ffffffff8091083c:	50 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910840:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910844:	c0 37 bd fb 	ldi	$r29,14272($r29)
ffffffff80910848:	f0 00 29 8e 	ldl	$r17,240($r9)
ffffffff8091084c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910850:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910854:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910858:	de ec 10 fa 	ldi	$r16,-4898($r16)
ffffffff8091085c:	48 fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910860:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910864:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910868:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091086c:	a0 37 bd fb 	ldi	$r29,14240($r29)
ffffffff80910870:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910874:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910878:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091087c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910880 <do_entIF>:
ffffffff80910880:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910884:	80 37 bd fb 	ldi	$r29,14208($r29)
ffffffff80910888:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff8091088c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910890:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910894:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910898:	49 07 f0 43 	mov	$r16,$r9
ffffffff8091089c:	24 00 20 c0 	beq	$r1,ffffffff80910930 <do_entIF+0xb0>
ffffffff809108a0:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff809108a4:	12 00 20 c4 	bne	$r1,ffffffff809108f0 <do_entIF+0x70>
ffffffff809108a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108ac:	b0 80 7b 8f 	ldl	$r27,-32592($r27)
ffffffff809108b0:	e7 fe 5b 07 	call	ra,($r27),ffffffff80910450 <print_regs>
ffffffff809108b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108b8:	4c 37 bd fb 	ldi	$r29,14156($r29)
ffffffff809108bc:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff809108c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108c4:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809108c8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809108cc:	f3 ec 10 fa 	ldi	$r16,-4877($r16)
ffffffff809108d0:	2b fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809108d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108d8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809108dc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809108e0:	2c 37 bd fb 	ldi	$r29,14124($r29)
ffffffff809108e4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809108e8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809108ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809108f0:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff809108f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108f8:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809108fc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910900:	1e ed 10 fa 	ldi	$r16,-4834($r16)
ffffffff80910904:	1e fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910908:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091090c:	f8 00 49 8c 	ldl	$r2,248($r9)
ffffffff80910910:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910914:	ff 43 3f fc 	ldih	$r1,17407
ffffffff80910918:	f8 36 bd fb 	ldi	$r29,14072($r29)
ffffffff8091091c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910920:	5f 07 21 f8 	ldi	$r1,1887($r1)
ffffffff80910924:	00 00 22 a8 	stw	$r1,0($r2)
ffffffff80910928:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091092c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910930:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910934:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910938:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff8091093c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910940:	08 ed 10 fa 	ldi	$r16,-4856($r16)
ffffffff80910944:	0e fe 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910948:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091094c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910950:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910954:	b8 36 bd fb 	ldi	$r29,14008($r29)
ffffffff80910958:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091095c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910960 <interrupt_handler>:
ffffffff80910960:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910964:	a0 36 bd fb 	ldi	$r29,13984($r29)
ffffffff80910968:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff8091096c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910970:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910974:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910978:	49 07 f0 43 	mov	$r16,$r9
ffffffff8091097c:	01 25 21 48 	cmpeq	$r1,0x9,$r1
ffffffff80910980:	1f 00 20 c0 	beq	$r1,ffffffff80910a00 <interrupt_handler+0xa0>
ffffffff80910984:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910988:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff8091098c:	d4 fd 5b 07 	call	ra,($r27),ffffffff809100e0 <clock_set_next_event>
ffffffff80910990:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910994:	70 36 bd fb 	ldi	$r29,13936($r29)
ffffffff80910998:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff8091099c:	f0 80 63 8c 	ldl	$r3,-32528($r3)
ffffffff809109a0:	00 00 43 8c 	ldl	$r2,0($r3)
ffffffff809109a4:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff809109a8:	00 00 43 ac 	stl	$r2,0($r3)
ffffffff809109ac:	ff ff 7d fc 	ldih	$r3,-1($r29)
ffffffff809109b0:	21 69 40 48 	srl	$r2,0x3,$r1
ffffffff809109b4:	88 ed 63 8c 	ldl	$r3,-4728($r3)
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
ffffffff80910a04:	b0 80 7b 8f 	ldl	$r27,-32592($r27)
ffffffff80910a08:	91 fe 5b 07 	call	ra,($r27),ffffffff80910450 <print_regs>
ffffffff80910a0c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a10:	f4 35 bd fb 	ldi	$r29,13812($r29)
ffffffff80910a14:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff80910a18:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a1c:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910a20:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a24:	f3 ec 10 fa 	ldi	$r16,-4877($r16)
ffffffff80910a28:	d5 fd 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910a2c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a30:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a34:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a38:	d4 35 bd fb 	ldi	$r29,13780($r29)
ffffffff80910a3c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a40:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910a44:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a48:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a4c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910a50:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a54:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910a58:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a5c:	e8 03 3f fa 	ldi	$r17,1000
ffffffff80910a60:	30 ed 10 fa 	ldi	$r16,-4816($r16)
ffffffff80910a64:	c6 fd 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910a68:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a6c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a70:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a74:	98 35 bd fb 	ldi	$r29,13720($r29)
ffffffff80910a78:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a7c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910a80 <exception_handler>:
ffffffff80910a80:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910a84:	80 35 bd fb 	ldi	$r29,13696($r29)
ffffffff80910a88:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910a8c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910a90:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910a94:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910a98:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910a9c:	02 45 20 48 	cmpeq	$r1,0x2,$r2
ffffffff80910aa0:	1c 00 40 c4 	bne	$r2,ffffffff80910b14 <exception_handler+0x94>
ffffffff80910aa4:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff80910aa8:	09 00 20 c0 	beq	$r1,ffffffff80910ad0 <exception_handler+0x50>
ffffffff80910aac:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910ab0:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910ab4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910ab8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910abc:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80910ac0:	6f ff fb 0f 	jmp	$r31,($r27),ffffffff80910880 <do_entIF>
ffffffff80910ac4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ac8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910acc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ad0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ad4:	b0 80 7b 8f 	ldl	$r27,-32592($r27)
ffffffff80910ad8:	5d fe 5b 07 	call	ra,($r27),ffffffff80910450 <print_regs>
ffffffff80910adc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910ae0:	24 35 bd fb 	ldi	$r29,13604($r29)
ffffffff80910ae4:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff80910ae8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910aec:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910af0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910af4:	f3 ec 10 fa 	ldi	$r16,-4877($r16)
ffffffff80910af8:	a1 fd 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910afc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b00:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910b04:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910b08:	04 35 bd fb 	ldi	$r29,13572($r29)
ffffffff80910b0c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910b10:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910b14:	f0 00 50 8e 	ldl	$r18,240($r16)
ffffffff80910b18:	90 00 70 8e 	ldl	$r19,144($r16)
ffffffff80910b1c:	55 00 3f f8 	ldi	$r1,85
ffffffff80910b20:	80 00 30 8e 	ldl	$r17,128($r16)
ffffffff80910b24:	f8 00 90 8e 	ldl	$r20,248($r16)
ffffffff80910b28:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b2c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b30:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910b34:	3a ed 10 fa 	ldi	$r16,-4806($r16)
ffffffff80910b38:	12 07 41 4a 	and	$r18,0x8,$r18
ffffffff80910b3c:	13 25 60 4a 	cmpeq	$r19,0x1,$r19
ffffffff80910b40:	21 60 49 4e 	seleq	$r18,0x4b,$r1,$r1
ffffffff80910b44:	52 07 e1 43 	mov	$r1,$r18
ffffffff80910b48:	52 00 3f f8 	ldi	$r1,82
ffffffff80910b4c:	21 f4 6a 4e 	selne	$r19,0x57,$r1,$r1
ffffffff80910b50:	53 07 e1 43 	mov	$r1,$r19
ffffffff80910b54:	8a fd 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910b58:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b5c:	a8 34 bd fb 	ldi	$r29,13480($r29)
ffffffff80910b60:	71 00 3f fa 	ldi	$r17,113
ffffffff80910b64:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b68:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80910b6c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910b70:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b74:	60 ed 52 fa 	ldi	$r18,-4768($r18)
ffffffff80910b78:	77 ed 10 fa 	ldi	$r16,-4745($r16)
ffffffff80910b7c:	a8 fd 5b 07 	call	ra,($r27),ffffffff80910220 <__panic>
ffffffff80910b80:	5f 07 ff 43 	nop	
ffffffff80910b84:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b88:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b8c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910b90 <trap>:
ffffffff80910b90:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910b94:	70 34 bd fb 	ldi	$r29,13424($r29)
ffffffff80910b98:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910b9c:	04 00 20 c0 	beq	$r1,ffffffff80910bb0 <trap+0x20>
ffffffff80910ba0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ba4:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80910ba8:	b5 ff fb 0f 	jmp	$r31,($r27),ffffffff80910a80 <exception_handler>
ffffffff80910bac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910bb0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910bb4:	e0 80 7b 8f 	ldl	$r27,-32544($r27)
ffffffff80910bb8:	69 ff fb 0f 	jmp	$r31,($r27),ffffffff80910960 <interrupt_handler>
ffffffff80910bbc:	5f 07 ff 43 	nop	

ffffffff80910bc0 <entInt>:
ffffffff80910bc0:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910bc4:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910bc8:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910bcc:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910bd0:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910bd4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910bd8:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910bdc:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910be0:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910be4:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910be8:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910bec:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910bf0:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910bf4:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910bf8:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910bfc:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910c00:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910c04:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910c08:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910c0c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910c10:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910c14:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910c18:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910c1c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910c20:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910c24:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910c28:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910c2c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910c30:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910c34:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910c38:	00 00 1f fa 	ldi	$r16,0
ffffffff80910c3c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910c40:	00 81 5d 8f 	ldl	ra,-32512($r29)
ffffffff80910c44:	50 07 fe 43 	mov	sp,$r16
ffffffff80910c48:	c8 80 7d 8f 	ldl	$r27,-32568($r29)
ffffffff80910c4c:	d0 ff fb 07 	call	$r31,($r27),ffffffff80910b90 <trap>

ffffffff80910c50 <entMM>:
ffffffff80910c50:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910c54:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910c58:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910c5c:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910c60:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910c64:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910c68:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910c6c:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910c70:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910c74:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910c78:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910c7c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910c80:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910c84:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910c88:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910c8c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910c90:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910c94:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910c98:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910c9c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910ca0:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910ca4:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910ca8:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910cac:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910cb0:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910cb4:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910cb8:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910cbc:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910cc0:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910cc4:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910cc8:	02 00 1f fa 	ldi	$r16,2
ffffffff80910ccc:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910cd0:	00 81 5d 8f 	ldl	ra,-32512($r29)
ffffffff80910cd4:	50 07 fe 43 	mov	sp,$r16
ffffffff80910cd8:	c8 80 7d 8f 	ldl	$r27,-32568($r29)
ffffffff80910cdc:	ac ff fb 07 	call	$r31,($r27),ffffffff80910b90 <trap>

ffffffff80910ce0 <entIF>:
ffffffff80910ce0:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910ce4:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910ce8:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910cec:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910cf0:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910cf4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910cf8:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910cfc:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910d00:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910d04:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910d08:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910d0c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910d10:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910d14:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910d18:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910d1c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910d20:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910d24:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910d28:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910d2c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910d30:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910d34:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910d38:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910d3c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910d40:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910d44:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910d48:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910d4c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910d50:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910d54:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910d58:	03 00 1f fa 	ldi	$r16,3
ffffffff80910d5c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910d60:	00 81 5d 8f 	ldl	ra,-32512($r29)
ffffffff80910d64:	50 07 fe 43 	mov	sp,$r16
ffffffff80910d68:	c8 80 7d 8f 	ldl	$r27,-32568($r29)
ffffffff80910d6c:	88 ff fb 07 	call	$r31,($r27),ffffffff80910b90 <trap>

ffffffff80910d70 <__trapret>:
ffffffff80910d70:	00 00 1e 8c 	ldl	$r0,0(sp)
ffffffff80910d74:	08 00 3e 8c 	ldl	$r1,8(sp)
ffffffff80910d78:	10 00 5e 8c 	ldl	$r2,16(sp)
ffffffff80910d7c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80910d80:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80910d84:	28 00 be 8c 	ldl	$r5,40(sp)
ffffffff80910d88:	30 00 de 8c 	ldl	$r6,48(sp)
ffffffff80910d8c:	38 00 fe 8c 	ldl	$r7,56(sp)
ffffffff80910d90:	40 00 1e 8d 	ldl	$r8,64(sp)
ffffffff80910d94:	98 00 7e 8e 	ldl	$r19,152(sp)
ffffffff80910d98:	a0 00 9e 8e 	ldl	$r20,160(sp)
ffffffff80910d9c:	a8 00 be 8e 	ldl	$r21,168(sp)
ffffffff80910da0:	b0 00 de 8e 	ldl	$r22,176(sp)
ffffffff80910da4:	b8 00 fe 8e 	ldl	$r23,184(sp)
ffffffff80910da8:	c0 00 1e 8f 	ldl	$r24,192(sp)
ffffffff80910dac:	c8 00 3e 8f 	ldl	$r25,200(sp)
ffffffff80910db0:	d0 00 5e 8f 	ldl	ra,208(sp)
ffffffff80910db4:	d8 00 7e 8f 	ldl	$r27,216(sp)
ffffffff80910db8:	e0 00 9e 8f 	ldl	$r28,224(sp)
ffffffff80910dbc:	f0 00 de fb 	ldi	sp,240(sp)
ffffffff80910dc0:	3f 00 00 02 	sys_call	0x3f
ffffffff80910dc4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910dc8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910dcc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910dd0 <alloc_pages>:
ffffffff80910dd0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910dd4:	30 32 bd fb 	ldi	$r29,12848($r29)
ffffffff80910dd8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910ddc:	42 07 f0 43 	mov	$r16,$r2
ffffffff80910de0:	07 00 1f fa 	ldi	$r16,7
ffffffff80910de4:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910de8:	35 00 00 02 	sys_call	0x35
ffffffff80910dec:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910df0:	40 80 21 8c 	ldl	$r1,-32704($r1)
ffffffff80910df4:	50 07 e2 43 	mov	$r2,$r16
ffffffff80910df8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80910dfc:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80910e00:	00 00 5b 07 	call	ra,($r27),ffffffff80910e04 <alloc_pages+0x34>
ffffffff80910e04:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e08:	fc 31 bd fb 	ldi	$r29,12796($r29)
ffffffff80910e0c:	42 07 e0 43 	mov	$r0,$r2
ffffffff80910e10:	50 07 ff 43 	clr	$r16
ffffffff80910e14:	35 00 00 02 	sys_call	0x35
ffffffff80910e18:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910e1c:	40 07 e2 43 	mov	$r2,$r0
ffffffff80910e20:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910e24:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910e28:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910e2c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910e30 <free_pages>:
ffffffff80910e30:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910e34:	d0 31 bd fb 	ldi	$r29,12752($r29)
ffffffff80910e38:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910e3c:	42 07 f0 43 	mov	$r16,$r2
ffffffff80910e40:	07 00 1f fa 	ldi	$r16,7
ffffffff80910e44:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910e48:	35 00 00 02 	sys_call	0x35
ffffffff80910e4c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910e50:	40 80 21 8c 	ldl	$r1,-32704($r1)
ffffffff80910e54:	50 07 e2 43 	mov	$r2,$r16
ffffffff80910e58:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80910e5c:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80910e60:	00 00 5b 07 	call	ra,($r27),ffffffff80910e64 <free_pages+0x34>
ffffffff80910e64:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910e68:	9c 31 bd fb 	ldi	$r29,12700($r29)
ffffffff80910e6c:	50 07 ff 43 	clr	$r16
ffffffff80910e70:	35 00 00 02 	sys_call	0x35
ffffffff80910e74:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910e78:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910e7c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910e80 <nr_free_pages>:
ffffffff80910e80:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910e84:	80 31 bd fb 	ldi	$r29,12672($r29)
ffffffff80910e88:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910e8c:	07 00 1f fa 	ldi	$r16,7
ffffffff80910e90:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910e94:	35 00 00 02 	sys_call	0x35
ffffffff80910e98:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910e9c:	40 80 21 8c 	ldl	$r1,-32704($r1)
ffffffff80910ea0:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80910ea4:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80910ea8:	00 00 5b 07 	call	ra,($r27),ffffffff80910eac <nr_free_pages+0x2c>
ffffffff80910eac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910eb0:	54 31 bd fb 	ldi	$r29,12628($r29)
ffffffff80910eb4:	42 07 e0 43 	mov	$r0,$r2
ffffffff80910eb8:	50 07 ff 43 	clr	$r16
ffffffff80910ebc:	35 00 00 02 	sys_call	0x35
ffffffff80910ec0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910ec4:	40 07 e2 43 	mov	$r2,$r0
ffffffff80910ec8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910ecc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910ed0 <pmm_init>:
ffffffff80910ed0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910ed4:	30 31 bd fb 	ldi	$r29,12592($r29)
ffffffff80910ed8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910edc:	70 80 21 8c 	ldl	$r1,-32656($r1)
ffffffff80910ee0:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff80910ee4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ee8:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910eec:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910ef0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910ef4:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff80910ef8:	40 80 29 8d 	ldl	$r9,-32704($r9)
ffffffff80910efc:	90 ed 10 fa 	ldi	$r16,-4720($r16)
ffffffff80910f00:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910f04:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910f08:	00 00 21 8e 	ldl	$r17,0($r1)
ffffffff80910f0c:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80910f10:	60 80 4a 8d 	ldl	$r10,-32672($r10)
ffffffff80910f14:	00 00 29 ac 	stl	$r1,0($r9)
ffffffff80910f18:	99 fc 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910f1c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910f20:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff80910f24:	e4 30 bd fb 	ldi	$r29,12516($r29)
ffffffff80910f28:	08 00 61 8f 	ldl	$r27,8($r1)
ffffffff80910f2c:	00 00 5b 07 	call	ra,($r27),ffffffff80910f30 <pmm_init+0x60>
ffffffff80910f30:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910f34:	d0 30 bd fb 	ldi	$r29,12496($r29)
ffffffff80910f38:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910f3c:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910f40:	ff ff 3f f8 	ldi	$r1,-1
ffffffff80910f44:	00 20 7f fe 	ldih	$r19,8192
ffffffff80910f48:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910f4c:	01 89 26 48 	sll	$r1,0x34,$r1
ffffffff80910f50:	52 07 f3 43 	mov	$r19,$r18
ffffffff80910f54:	51 07 ff 43 	clr	$r17
ffffffff80910f58:	a7 ed 10 fa 	ldi	$r16,-4697($r16)
ffffffff80910f5c:	00 00 2a ac 	stl	$r1,0($r10)
ffffffff80910f60:	87 fc 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910f64:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910f68:	9c 30 bd fb 	ldi	$r29,12444($r29)
ffffffff80910f6c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910f70:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910f74:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910f78:	d0 ed 10 fa 	ldi	$r16,-4656($r16)
ffffffff80910f7c:	80 fc 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910f80:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910f84:	80 30 bd fb 	ldi	$r29,12416($r29)
ffffffff80910f88:	00 20 3f fe 	ldih	$r17,8192
ffffffff80910f8c:	52 07 ff 43 	clr	$r18
ffffffff80910f90:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910f94:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80910f98:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910f9c:	ff ff 71 fa 	ldi	$r19,-1($r17)
ffffffff80910fa0:	e6 ed 10 fa 	ldi	$r16,-4634($r16)
ffffffff80910fa4:	76 fc 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80910fa8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910fac:	58 30 bd fb 	ldi	$r29,12376($r29)
ffffffff80910fb0:	01 00 3f fc 	ldih	$r1,1
ffffffff80910fb4:	00 00 7d fe 	ldih	$r19,0($r29)
ffffffff80910fb8:	88 80 73 8e 	ldl	$r19,-32632($r19)
ffffffff80910fbc:	00 00 dd fc 	ldih	$r6,0($r29)
ffffffff80910fc0:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80910fc4:	28 81 42 8c 	ldl	$r2,-32472($r2)
ffffffff80910fc8:	48 81 26 ac 	stl	$r1,-32440($r6)
ffffffff80910fcc:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80910fd0:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80910fd4:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80910fd8:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80910fdc:	00 00 62 ae 	stl	$r19,0($r2)
ffffffff80910fe0:	81 05 61 42 	cmpule	$r19,$r1,$r1
ffffffff80910fe4:	5e 00 20 c4 	bne	$r1,ffffffff80911160 <pmm_init+0x290>
ffffffff80910fe8:	01 00 3f f8 	ldi	$r1,1
ffffffff80910fec:	01 00 7f fc 	ldih	$r3,1
ffffffff80910ff0:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80910ff4:	ff ff 63 f8 	ldi	$r3,-1($r3)
ffffffff80910ff8:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80910ffc:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80911000:	81 05 23 40 	cmpule	$r1,$r3,$r1
ffffffff80911004:	5d 00 20 c0 	beq	$r1,ffffffff8091117c <pmm_init+0x2ac>
ffffffff80911008:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff8091100c:	45 07 ff 43 	clr	$r5
ffffffff80911010:	43 07 ff 43 	clr	$r3
ffffffff80911014:	01 01 61 42 	addl	$r19,$r1,$r1
ffffffff80911018:	00 00 22 ac 	stl	$r1,0($r2)
ffffffff8091101c:	01 00 e0 13 	br	ffffffff80911024 <pmm_init+0x154>
ffffffff80911020:	00 00 22 8c 	ldl	$r1,0($r2)
ffffffff80911024:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80911028:	08 00 01 f9 	ldi	$r8,8($r1)
ffffffff8091102c:	00 00 88 20 	lldw	$r4,0($r8)
ffffffff80911030:	01 00 ff f8 	ldi	$r7,1
ffffffff80911034:	20 10 ff 18 	wr_f	$r7
ffffffff80911038:	44 27 80 48 	or	$r4,0x1,$r4
ffffffff8091103c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911040:	00 80 88 20 	lstw	$r4,0($r8)
ffffffff80911044:	00 10 ff 18 	rd_f	$r7
ffffffff80911048:	5d 00 e0 c0 	beq	$r7,ffffffff809111c0 <pmm_init+0x2f0>
ffffffff8091104c:	48 81 86 8c 	ldl	$r4,-32440($r6)
ffffffff80911050:	01 00 63 f8 	ldi	$r3,1($r3)
ffffffff80911054:	48 00 a5 f8 	ldi	$r5,72($r5)
ffffffff80911058:	61 05 64 40 	cmpult	$r3,$r4,$r1
ffffffff8091105c:	f0 ff 3f c4 	bne	$r1,ffffffff80911020 <pmm_init+0x150>
ffffffff80911060:	00 00 02 8e 	ldl	$r16,0($r2)
ffffffff80911064:	81 01 80 48 	s8addl	$r4,0,$r1
ffffffff80911068:	00 80 5f fc 	ldih	$r2,-32768
ffffffff8091106c:	01 01 24 40 	addl	$r1,$r4,$r1
ffffffff80911070:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff80911074:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911078:	01 01 01 42 	addl	$r16,$r1,$r1
ffffffff8091107c:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff80911080:	33 00 40 c4 	bne	$r2,ffffffff80911150 <pmm_init+0x280>
ffffffff80911084:	01 00 5f f8 	ldi	$r2,1
ffffffff80911088:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff8091108c:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80911090:	00 20 5f fc 	ldih	$r2,8192
ffffffff80911094:	ff 1f 61 f8 	ldi	$r3,8191($r1)
ffffffff80911098:	00 e0 3f fa 	ldi	$r17,-8192
ffffffff8091109c:	ff df a2 f8 	ldi	$r5,-8193($r2)
ffffffff809110a0:	11 07 71 40 	and	$r3,$r17,$r17
ffffffff809110a4:	81 05 25 40 	cmpule	$r1,$r5,$r1
ffffffff809110a8:	0f 00 20 c0 	beq	$r1,ffffffff809110e8 <pmm_init+0x218>
ffffffff809110ac:	21 a9 61 48 	srl	$r3,0xd,$r1
ffffffff809110b0:	84 05 81 40 	cmpule	$r4,$r1,$r4
ffffffff809110b4:	39 00 80 c4 	bne	$r4,ffffffff8091119c <pmm_init+0x2cc>
ffffffff809110b8:	00 00 89 8c 	ldl	$r4,0($r9)
ffffffff809110bc:	83 01 20 48 	s8addl	$r1,0,$r3
ffffffff809110c0:	00 e0 42 f8 	ldi	$r2,-8192($r2)
ffffffff809110c4:	01 01 61 40 	addl	$r3,$r1,$r1
ffffffff809110c8:	31 01 51 40 	subl	$r2,$r17,$r17
ffffffff809110cc:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809110d0:	31 a9 21 4a 	srl	$r17,0xd,$r17
ffffffff809110d4:	10 00 64 8f 	ldl	$r27,16($r4)
ffffffff809110d8:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff809110dc:	00 00 5b 07 	call	ra,($r27),ffffffff809110e0 <pmm_init+0x210>
ffffffff809110e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809110e4:	20 2f bd fb 	ldi	$r29,12064($r29)
ffffffff809110e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809110ec:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809110f0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809110f4:	6c ee 10 fa 	ldi	$r16,-4500($r16)
ffffffff809110f8:	21 fc 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff809110fc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911100:	00 00 29 8c 	ldl	$r1,0($r9)
ffffffff80911104:	04 2f bd fb 	ldi	$r29,12036($r29)
ffffffff80911108:	30 00 61 8f 	ldl	$r27,48($r1)
ffffffff8091110c:	00 00 5b 07 	call	ra,($r27),ffffffff80911110 <pmm_init+0x240>
ffffffff80911110:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911114:	f0 2e bd fb 	ldi	$r29,12016($r29)
ffffffff80911118:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091111c:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80911120:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911124:	79 ee 10 fa 	ldi	$r16,-4487($r16)
ffffffff80911128:	15 fc 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff8091112c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911130:	d4 2e bd fb 	ldi	$r29,11988($r29)
ffffffff80911134:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911138:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff8091113c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911140:	98 ee 10 fa 	ldi	$r16,-4456($r16)
ffffffff80911144:	0e fc 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80911148:	ff ff ff 13 	br	ffffffff80911148 <pmm_init+0x278>
ffffffff8091114c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911150:	00 00 4a 8c 	ldl	$r2,0($r10)
ffffffff80911154:	21 01 22 40 	subl	$r1,$r2,$r1
ffffffff80911158:	cd ff ff 13 	br	ffffffff80911090 <pmm_init+0x1c0>
ffffffff8091115c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911160:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff80911164:	01 00 7f fc 	ldih	$r3,1
ffffffff80911168:	ff ff 63 f8 	ldi	$r3,-1($r3)
ffffffff8091116c:	33 01 61 42 	subl	$r19,$r1,$r19
ffffffff80911170:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80911174:	81 05 23 40 	cmpule	$r1,$r3,$r1
ffffffff80911178:	a3 ff 3f c4 	bne	$r1,ffffffff80911008 <pmm_init+0x138>
ffffffff8091117c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911180:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911184:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911188:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091118c:	64 00 3f fa 	ldi	$r17,100
ffffffff80911190:	0e ee 52 fa 	ldi	$r18,-4594($r18)
ffffffff80911194:	31 ee 10 fa 	ldi	$r16,-4559($r16)
ffffffff80911198:	21 fc 5b 07 	call	ra,($r27),ffffffff80910220 <__panic>
ffffffff8091119c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809111a0:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff809111a4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809111a8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809111ac:	66 00 3f fa 	ldi	$r17,102
ffffffff809111b0:	3f ee 52 fa 	ldi	$r18,-4545($r18)
ffffffff809111b4:	5e ee 10 fa 	ldi	$r16,-4514($r16)
ffffffff809111b8:	19 fc 5b 07 	call	ra,($r27),ffffffff80910220 <__panic>
ffffffff809111bc:	5f 07 ff 43 	nop	
ffffffff809111c0:	9a ff ff 13 	br	ffffffff8091102c <pmm_init+0x15c>
ffffffff809111c4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111cc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809111d0 <default_init>:
ffffffff809111d0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809111d4:	30 2e bd fb 	ldi	$r29,11824($r29)
ffffffff809111d8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809111dc:	18 81 21 8c 	ldl	$r1,-32488($r1)
ffffffff809111e0:	08 00 21 ac 	stl	$r1,8($r1)
ffffffff809111e4:	00 00 21 ac 	stl	$r1,0($r1)
ffffffff809111e8:	10 00 e1 ab 	stw	$r31,16($r1)
ffffffff809111ec:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809111f0 <default_nr_free_pages>:
ffffffff809111f0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809111f4:	10 2e bd fb 	ldi	$r29,11792($r29)
ffffffff809111f8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809111fc:	18 81 21 8c 	ldl	$r1,-32488($r1)
ffffffff80911200:	10 00 01 88 	ldw	$r0,16($r1)
ffffffff80911204:	20 ed 01 48 	zapnot	$r0,0xf,$r0
ffffffff80911208:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091120c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911210 <default_free_pages>:
ffffffff80911210:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911214:	f0 2d bd fb 	ldi	$r29,11760($r29)
ffffffff80911218:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091121c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911220:	99 00 20 c2 	beq	$r17,ffffffff80911488 <default_free_pages+0x278>
ffffffff80911224:	84 01 20 4a 	s8addl	$r17,0,$r4
ffffffff80911228:	04 01 91 40 	addl	$r4,$r17,$r4
ffffffff8091122c:	84 01 80 48 	s8addl	$r4,0,$r4
ffffffff80911230:	04 01 04 42 	addl	$r16,$r4,$r4
ffffffff80911234:	01 05 04 42 	cmpeq	$r16,$r4,$r1
ffffffff80911238:	12 00 20 c4 	bne	$r1,ffffffff80911284 <default_free_pages+0x74>
ffffffff8091123c:	08 00 50 88 	ldw	$r2,8($r16)
ffffffff80911240:	41 29 40 48 	sra	$r2,0x1,$r1
ffffffff80911244:	41 07 22 40 	or	$r1,$r2,$r1
ffffffff80911248:	85 00 20 dc 	blbs	$r1,ffffffff80911460 <default_free_pages+0x250>
ffffffff8091124c:	41 07 f0 43 	mov	$r16,$r1
ffffffff80911250:	07 00 e0 13 	br	ffffffff80911270 <default_free_pages+0x60>
ffffffff80911254:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911258:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091125c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911260:	08 00 61 88 	ldw	$r3,8($r1)
ffffffff80911264:	42 29 60 48 	sra	$r3,0x1,$r2
ffffffff80911268:	42 07 43 40 	or	$r2,$r3,$r2
ffffffff8091126c:	7c 00 40 dc 	blbs	$r2,ffffffff80911460 <default_free_pages+0x250>
ffffffff80911270:	08 00 e1 af 	stl	$r31,8($r1)
ffffffff80911274:	00 00 e1 ab 	stw	$r31,0($r1)
ffffffff80911278:	48 00 21 f8 	ldi	$r1,72($r1)
ffffffff8091127c:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff80911280:	f7 ff 5f c0 	beq	$r2,ffffffff80911260 <default_free_pages+0x50>
ffffffff80911284:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80911288:	08 00 d0 f8 	ldi	$r6,8($r16)
ffffffff8091128c:	18 00 30 aa 	stw	$r17,24($r16)
ffffffff80911290:	08 00 70 f8 	ldi	$r3,8($r16)
ffffffff80911294:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff80911298:	01 00 5f f8 	ldi	$r2,1
ffffffff8091129c:	20 10 5f 18 	wr_f	$r2
ffffffff809112a0:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff809112a4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112a8:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff809112ac:	00 10 5f 18 	rd_f	$r2
ffffffff809112b0:	79 00 40 c0 	beq	$r2,ffffffff80911498 <default_free_pages+0x288>
ffffffff809112b4:	00 00 9d fc 	ldih	$r4,0($r29)
ffffffff809112b8:	18 81 84 8c 	ldl	$r4,-32488($r4)
ffffffff809112bc:	10 00 44 88 	ldw	$r2,16($r4)
ffffffff809112c0:	08 00 24 8c 	ldl	$r1,8($r4)
ffffffff809112c4:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff809112c8:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff809112cc:	10 00 24 aa 	stw	$r17,16($r4)
ffffffff809112d0:	07 00 40 c0 	beq	$r2,ffffffff809112f0 <default_free_pages+0xe0>
ffffffff809112d4:	3a 00 e0 13 	br	ffffffff809113c0 <default_free_pages+0x1b0>
ffffffff809112d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112e0:	08 00 61 8c 	ldl	$r3,8($r1)
ffffffff809112e4:	05 05 64 40 	cmpeq	$r3,$r4,$r5
ffffffff809112e8:	3d 00 a0 c4 	bne	$r5,ffffffff809113e0 <default_free_pages+0x1d0>
ffffffff809112ec:	41 07 e3 43 	mov	$r3,$r1
ffffffff809112f0:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff809112f4:	63 05 02 42 	cmpult	$r16,$r2,$r3
ffffffff809112f8:	45 07 e2 43 	mov	$r2,$r5
ffffffff809112fc:	f8 ff 7f c0 	beq	$r3,ffffffff809112e0 <default_free_pages+0xd0>
ffffffff80911300:	00 00 61 8c 	ldl	$r3,0($r1)
ffffffff80911304:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff80911308:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff8091130c:	08 00 43 ac 	stl	$r2,8($r3)
ffffffff80911310:	02 05 64 40 	cmpeq	$r3,$r4,$r2
ffffffff80911314:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80911318:	20 00 70 ac 	stl	$r3,32($r16)
ffffffff8091131c:	0d 00 40 c4 	bne	$r2,ffffffff80911354 <default_free_pages+0x144>
ffffffff80911320:	f8 ff e3 88 	ldw	$r7,-8($r3)
ffffffff80911324:	e0 ff 43 f8 	ldi	$r2,-32($r3)
ffffffff80911328:	25 ed e1 48 	zapnot	$r7,0xf,$r5
ffffffff8091132c:	81 01 a0 48 	s8addl	$r5,0,$r1
ffffffff80911330:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80911334:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911338:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff8091133c:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff80911340:	35 00 20 c4 	bne	$r1,ffffffff80911418 <default_free_pages+0x208>
ffffffff80911344:	28 00 30 8c 	ldl	$r1,40($r16)
ffffffff80911348:	04 05 24 40 	cmpeq	$r1,$r4,$r4
ffffffff8091134c:	e0 ff a1 f8 	ldi	$r5,-32($r1)
ffffffff80911350:	18 00 80 c4 	bne	$r4,ffffffff809113b4 <default_free_pages+0x1a4>
ffffffff80911354:	18 00 90 88 	ldw	$r4,24($r16)
ffffffff80911358:	23 ed 81 48 	zapnot	$r4,0xf,$r3
ffffffff8091135c:	82 01 60 48 	s8addl	$r3,0,$r2
ffffffff80911360:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80911364:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80911368:	02 01 02 42 	addl	$r16,$r2,$r2
ffffffff8091136c:	05 05 a2 40 	cmpeq	$r5,$r2,$r5
ffffffff80911370:	10 00 a0 c0 	beq	$r5,ffffffff809113b4 <default_free_pages+0x1a4>
ffffffff80911374:	f8 ff 41 88 	ldw	$r2,-8($r1)
ffffffff80911378:	04 00 44 40 	addw	$r2,$r4,$r4
ffffffff8091137c:	18 00 90 a8 	stw	$r4,24($r16)
ffffffff80911380:	e8 ff 81 f8 	ldi	$r4,-24($r1)
ffffffff80911384:	00 00 44 20 	lldw	$r2,0($r4)
ffffffff80911388:	01 00 7f f8 	ldi	$r3,1
ffffffff8091138c:	20 10 7f 18 	wr_f	$r3
ffffffff80911390:	22 47 40 48 	bic	$r2,0x2,$r2
ffffffff80911394:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911398:	00 80 44 20 	lstw	$r2,0($r4)
ffffffff8091139c:	00 10 7f 18 	rd_f	$r3
ffffffff809113a0:	3e 00 60 c0 	beq	$r3,ffffffff8091149c <default_free_pages+0x28c>
ffffffff809113a4:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff809113a8:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff809113ac:	08 00 22 ac 	stl	$r1,8($r2)
ffffffff809113b0:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff809113b4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809113b8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809113bc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809113c0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809113c4:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff809113c8:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff809113cc:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff809113d0:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff809113d4:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff809113d8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809113dc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809113e0:	43 07 e1 43 	mov	$r1,$r3
ffffffff809113e4:	20 00 b0 f8 	ldi	$r5,32($r16)
ffffffff809113e8:	f8 ff e3 88 	ldw	$r7,-8($r3)
ffffffff809113ec:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff809113f0:	00 00 a4 ac 	stl	$r5,0($r4)
ffffffff809113f4:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff809113f8:	28 00 90 ac 	stl	$r4,40($r16)
ffffffff809113fc:	25 ed e1 48 	zapnot	$r7,0xf,$r5
ffffffff80911400:	81 01 a0 48 	s8addl	$r5,0,$r1
ffffffff80911404:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80911408:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff8091140c:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80911410:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff80911414:	cb ff 3f c0 	beq	$r1,ffffffff80911344 <default_free_pages+0x134>
ffffffff80911418:	18 00 30 88 	ldw	$r1,24($r16)
ffffffff8091141c:	07 00 27 40 	addw	$r1,$r7,$r7
ffffffff80911420:	f8 ff e3 a8 	stw	$r7,-8($r3)
ffffffff80911424:	00 00 e6 f8 	ldi	$r7,0($r6)
ffffffff80911428:	00 00 27 20 	lldw	$r1,0($r7)
ffffffff8091142c:	01 00 bf f8 	ldi	$r5,1
ffffffff80911430:	20 10 bf 18 	wr_f	$r5
ffffffff80911434:	21 47 20 48 	bic	$r1,0x2,$r1
ffffffff80911438:	00 80 27 20 	lstw	$r1,0($r7)
ffffffff8091143c:	00 10 bf 18 	rd_f	$r5
ffffffff80911440:	17 00 a0 c0 	beq	$r5,ffffffff809114a0 <default_free_pages+0x290>
ffffffff80911444:	28 00 30 8c 	ldl	$r1,40($r16)
ffffffff80911448:	20 00 b0 8c 	ldl	$r5,32($r16)
ffffffff8091144c:	50 07 e2 43 	mov	$r2,$r16
ffffffff80911450:	08 00 25 ac 	stl	$r1,8($r5)
ffffffff80911454:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff80911458:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff8091145c:	ba ff ff 13 	br	ffffffff80911348 <default_free_pages+0x138>
ffffffff80911460:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911464:	b1 00 3f fa 	ldi	$r17,177
ffffffff80911468:	d2 ee 73 fa 	ldi	$r19,-4398($r19)
ffffffff8091146c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911470:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911474:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911478:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091147c:	a7 ee 52 fa 	ldi	$r18,-4441($r18)
ffffffff80911480:	bc ee 10 fa 	ldi	$r16,-4420($r16)
ffffffff80911484:	66 fb 5b 07 	call	ra,($r27),ffffffff80910220 <__panic>
ffffffff80911488:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091148c:	ac 00 3f fa 	ldi	$r17,172
ffffffff80911490:	a1 ee 73 fa 	ldi	$r19,-4447($r19)
ffffffff80911494:	f5 ff ff 13 	br	ffffffff8091146c <default_free_pages+0x25c>
ffffffff80911498:	7e ff ff 13 	br	ffffffff80911294 <default_free_pages+0x84>
ffffffff8091149c:	b9 ff ff 13 	br	ffffffff80911384 <default_free_pages+0x174>
ffffffff809114a0:	e1 ff ff 13 	br	ffffffff80911428 <default_free_pages+0x218>
ffffffff809114a4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809114a8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809114ac:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809114b0 <default_init_memmap>:
ffffffff809114b0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809114b4:	50 2b bd fb 	ldi	$r29,11088($r29)
ffffffff809114b8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809114bc:	00 00 5e af 	stl	ra,0(sp)
ffffffff809114c0:	5d 00 20 c2 	beq	$r17,ffffffff80911638 <default_init_memmap+0x188>
ffffffff809114c4:	83 01 20 4a 	s8addl	$r17,0,$r3
ffffffff809114c8:	03 01 71 40 	addl	$r3,$r17,$r3
ffffffff809114cc:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff809114d0:	03 01 03 42 	addl	$r16,$r3,$r3
ffffffff809114d4:	01 05 03 42 	cmpeq	$r16,$r3,$r1
ffffffff809114d8:	0d 00 20 c4 	bne	$r1,ffffffff80911510 <default_init_memmap+0x60>
ffffffff809114dc:	08 00 30 88 	ldw	$r1,8($r16)
ffffffff809114e0:	4b 00 20 d8 	blbc	$r1,ffffffff80911610 <default_init_memmap+0x160>
ffffffff809114e4:	41 07 f0 43 	mov	$r16,$r1
ffffffff809114e8:	03 00 e0 13 	br	ffffffff809114f8 <default_init_memmap+0x48>
ffffffff809114ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809114f0:	08 00 41 88 	ldw	$r2,8($r1)
ffffffff809114f4:	46 00 40 d8 	blbc	$r2,ffffffff80911610 <default_init_memmap+0x160>
ffffffff809114f8:	18 00 e1 ab 	stw	$r31,24($r1)
ffffffff809114fc:	08 00 e1 af 	stl	$r31,8($r1)
ffffffff80911500:	48 00 21 f8 	ldi	$r1,72($r1)
ffffffff80911504:	b8 ff e1 ab 	stw	$r31,-72($r1)
ffffffff80911508:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff8091150c:	f8 ff 5f c0 	beq	$r2,ffffffff809114f0 <default_init_memmap+0x40>
ffffffff80911510:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80911514:	18 00 30 aa 	stw	$r17,24($r16)
ffffffff80911518:	08 00 70 f8 	ldi	$r3,8($r16)
ffffffff8091151c:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff80911520:	01 00 5f f8 	ldi	$r2,1
ffffffff80911524:	20 10 5f 18 	wr_f	$r2
ffffffff80911528:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff8091152c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911530:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff80911534:	00 10 5f 18 	rd_f	$r2
ffffffff80911538:	47 00 40 c0 	beq	$r2,ffffffff80911658 <default_init_memmap+0x1a8>
ffffffff8091153c:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80911540:	18 81 63 8c 	ldl	$r3,-32488($r3)
ffffffff80911544:	10 00 43 88 	ldw	$r2,16($r3)
ffffffff80911548:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff8091154c:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff80911550:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff80911554:	10 00 23 aa 	stw	$r17,16($r3)
ffffffff80911558:	25 00 40 c4 	bne	$r2,ffffffff809115f0 <default_init_memmap+0x140>
ffffffff8091155c:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80911560:	00 00 c3 8c 	ldl	$r6,0($r3)
ffffffff80911564:	47 07 ff 43 	clr	$r7
ffffffff80911568:	20 00 b0 f8 	ldi	$r5,32($r16)
ffffffff8091156c:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80911570:	0a 00 40 c4 	bne	$r2,ffffffff8091159c <default_init_memmap+0xec>
ffffffff80911574:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911578:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091157c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911580:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80911584:	04 05 43 40 	cmpeq	$r2,$r3,$r4
ffffffff80911588:	0d 00 80 c4 	bne	$r4,ffffffff809115c0 <default_init_memmap+0x110>
ffffffff8091158c:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911590:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80911594:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80911598:	f9 ff 5f c0 	beq	$r2,ffffffff80911580 <default_init_memmap+0xd0>
ffffffff8091159c:	2c 00 e0 c4 	bne	$r7,ffffffff80911650 <default_init_memmap+0x1a0>
ffffffff809115a0:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff809115a4:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff809115a8:	08 00 a2 ac 	stl	$r5,8($r2)
ffffffff809115ac:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff809115b0:	20 00 50 ac 	stl	$r2,32($r16)
ffffffff809115b4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809115b8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809115bc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809115c0:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff809115c4:	46 07 e5 43 	mov	$r5,$r6
ffffffff809115c8:	28 00 70 ac 	stl	$r3,40($r16)
ffffffff809115cc:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff809115d0:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff809115d4:	01 05 43 40 	cmpeq	$r2,$r3,$r1
ffffffff809115d8:	1b 00 20 c4 	bne	$r1,ffffffff80911648 <default_init_memmap+0x198>
ffffffff809115dc:	01 00 ff f8 	ldi	$r7,1
ffffffff809115e0:	41 07 e2 43 	mov	$r2,$r1
ffffffff809115e4:	ea ff ff 13 	br	ffffffff80911590 <default_init_memmap+0xe0>
ffffffff809115e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809115ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809115f0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809115f4:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff809115f8:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff809115fc:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80911600:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80911604:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff80911608:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091160c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911610:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911614:	48 00 3f fa 	ldi	$r17,72
ffffffff80911618:	f7 ee 73 fa 	ldi	$r19,-4361($r19)
ffffffff8091161c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911620:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911624:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911628:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091162c:	a7 ee 52 fa 	ldi	$r18,-4441($r18)
ffffffff80911630:	bc ee 10 fa 	ldi	$r16,-4420($r16)
ffffffff80911634:	fa fa 5b 07 	call	ra,($r27),ffffffff80910220 <__panic>
ffffffff80911638:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091163c:	44 00 3f fa 	ldi	$r17,68
ffffffff80911640:	a1 ee 73 fa 	ldi	$r19,-4447($r19)
ffffffff80911644:	f5 ff ff 13 	br	ffffffff8091161c <default_init_memmap+0x16c>
ffffffff80911648:	00 00 a3 ac 	stl	$r5,0($r3)
ffffffff8091164c:	d9 ff ff 13 	br	ffffffff809115b4 <default_init_memmap+0x104>
ffffffff80911650:	00 00 c3 ac 	stl	$r6,0($r3)
ffffffff80911654:	d2 ff ff 13 	br	ffffffff809115a0 <default_init_memmap+0xf0>
ffffffff80911658:	b0 ff ff 13 	br	ffffffff8091151c <default_init_memmap+0x6c>
ffffffff8091165c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911660 <best_fit_check>:
ffffffff80911660:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911664:	a0 29 bd fb 	ldi	$r29,10656($r29)
ffffffff80911668:	a0 ff de fb 	ldi	sp,-96(sp)
ffffffff8091166c:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80911670:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff80911674:	18 81 ce 8d 	ldl	$r14,-32488($r14)
ffffffff80911678:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091167c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911680:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80911684:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911688:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff8091168c:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911690:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80911694:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80911698:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff8091169c:	b7 01 60 c4 	bne	$r3,ffffffff80911d7c <best_fit_check+0x71c>
ffffffff809116a0:	e8 ff 61 88 	ldw	$r3,-24($r1)
ffffffff809116a4:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff809116a8:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff809116ac:	c1 01 60 c0 	beq	$r3,ffffffff80911db4 <best_fit_check+0x754>
ffffffff809116b0:	49 07 ff 43 	clr	$r9
ffffffff809116b4:	4a 07 ff 43 	clr	$r10
ffffffff809116b8:	04 00 e0 13 	br	ffffffff809116cc <best_fit_check+0x6c>
ffffffff809116bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809116c0:	e8 ff 61 88 	ldw	$r3,-24($r1)
ffffffff809116c4:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff809116c8:	ba 01 60 c0 	beq	$r3,ffffffff80911db4 <best_fit_check+0x754>
ffffffff809116cc:	f8 ff 81 88 	ldw	$r4,-8($r1)
ffffffff809116d0:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff809116d4:	0a 20 40 49 	addw	$r10,0x1,$r10
ffffffff809116d8:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff809116dc:	09 00 89 40 	addw	$r4,$r9,$r9
ffffffff809116e0:	f7 ff 7f c0 	beq	$r3,ffffffff809116c0 <best_fit_check+0x60>
ffffffff809116e4:	4b 07 e9 43 	mov	$r9,$r11
ffffffff809116e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809116ec:	80 80 7b 8f 	ldl	$r27,-32640($r27)
ffffffff809116f0:	e3 fd 5b 07 	call	ra,($r27),ffffffff80910e80 <nr_free_pages>
ffffffff809116f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809116f8:	00 05 0b 40 	cmpeq	$r0,$r11,$r0
ffffffff809116fc:	0c 29 bd fb 	ldi	$r29,10508($r29)
ffffffff80911700:	a2 01 00 c0 	beq	$r0,ffffffff80911d8c <best_fit_check+0x72c>
ffffffff80911704:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911708:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff8091170c:	01 00 1f fa 	ldi	$r16,1
ffffffff80911710:	af fd 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911714:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911718:	ec 28 bd fb 	ldi	$r29,10476($r29)
ffffffff8091171c:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80911720:	ee 00 3f fa 	ldi	$r17,238
ffffffff80911724:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911728:	20 ef 73 fa 	ldi	$r19,-4320($r19)
ffffffff8091172c:	9a 01 00 c0 	beq	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911730:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911734:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911738:	01 00 1f fa 	ldi	$r16,1
ffffffff8091173c:	a4 fd 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911740:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911744:	c0 28 bd fb 	ldi	$r29,10432($r29)
ffffffff80911748:	4d 07 e0 43 	mov	$r0,$r13
ffffffff8091174c:	ef 00 3f fa 	ldi	$r17,239
ffffffff80911750:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911754:	3c ef 73 fa 	ldi	$r19,-4292($r19)
ffffffff80911758:	8f 01 00 c0 	beq	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff8091175c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911760:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911764:	01 00 1f fa 	ldi	$r16,1
ffffffff80911768:	99 fd 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff8091176c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911770:	94 28 bd fb 	ldi	$r29,10388($r29)
ffffffff80911774:	4c 07 e0 43 	mov	$r0,$r12
ffffffff80911778:	f0 00 3f fa 	ldi	$r17,240
ffffffff8091177c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911780:	58 ef 73 fa 	ldi	$r19,-4264($r19)
ffffffff80911784:	84 01 00 c0 	beq	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911788:	03 05 a0 41 	cmpeq	$r13,$r0,$r3
ffffffff8091178c:	05 05 60 41 	cmpeq	$r11,$r0,$r5
ffffffff80911790:	01 05 6d 41 	cmpeq	$r11,$r13,$r1
ffffffff80911794:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911798:	44 07 e3 43 	mov	$r3,$r4
ffffffff8091179c:	f2 00 3f fa 	ldi	$r17,242
ffffffff809117a0:	74 ef 73 fa 	ldi	$r19,-4236($r19)
ffffffff809117a4:	43 07 85 40 	or	$r4,$r5,$r3
ffffffff809117a8:	41 07 23 40 	or	$r1,$r3,$r1
ffffffff809117ac:	7a 01 20 c4 	bne	$r1,ffffffff80911d98 <best_fit_check+0x738>
ffffffff809117b0:	00 00 2b 88 	ldw	$r1,0($r11)
ffffffff809117b4:	83 01 20 c4 	bne	$r1,ffffffff80911dc4 <best_fit_check+0x764>
ffffffff809117b8:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff809117bc:	81 01 20 c4 	bne	$r1,ffffffff80911dc4 <best_fit_check+0x764>
ffffffff809117c0:	00 00 20 88 	ldw	$r1,0($r0)
ffffffff809117c4:	7f 01 20 c4 	bne	$r1,ffffffff80911dc4 <best_fit_check+0x764>
ffffffff809117c8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809117cc:	28 81 21 8c 	ldl	$r1,-32472($r1)
ffffffff809117d0:	ff ff dd fc 	ldih	$r6,-1($r29)
ffffffff809117d4:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff809117d8:	78 80 63 8c 	ldl	$r3,-32648($r3)
ffffffff809117dc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809117e0:	c8 f1 e6 8c 	ldl	$r7,-3640($r6)
ffffffff809117e4:	f5 00 3f fa 	ldi	$r17,245
ffffffff809117e8:	d1 ef 73 fa 	ldi	$r19,-4143($r19)
ffffffff809117ec:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809117f0:	00 00 a3 8c 	ldl	$r5,0($r3)
ffffffff809117f4:	24 01 61 41 	subl	$r11,$r1,$r4
ffffffff809117f8:	05 a9 a1 48 	sll	$r5,0xd,$r5
ffffffff809117fc:	44 69 80 48 	sra	$r4,0x3,$r4
ffffffff80911800:	04 03 87 40 	mull	$r4,$r7,$r4
ffffffff80911804:	04 a9 81 48 	sll	$r4,0xd,$r4
ffffffff80911808:	64 05 85 40 	cmpult	$r4,$r5,$r4
ffffffff8091180c:	62 01 80 c0 	beq	$r4,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911810:	23 01 a1 41 	subl	$r13,$r1,$r3
ffffffff80911814:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911818:	f6 00 3f fa 	ldi	$r17,246
ffffffff8091181c:	43 69 60 48 	sra	$r3,0x3,$r3
ffffffff80911820:	ee ef 73 fa 	ldi	$r19,-4114($r19)
ffffffff80911824:	03 03 67 40 	mull	$r3,$r7,$r3
ffffffff80911828:	03 a9 61 48 	sll	$r3,0xd,$r3
ffffffff8091182c:	83 05 a3 40 	cmpule	$r5,$r3,$r3
ffffffff80911830:	59 01 60 c4 	bne	$r3,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911834:	c8 f1 66 8c 	ldl	$r3,-3640($r6)
ffffffff80911838:	21 01 01 40 	subl	$r0,$r1,$r1
ffffffff8091183c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911840:	f7 00 3f fa 	ldi	$r17,247
ffffffff80911844:	41 69 20 48 	sra	$r1,0x3,$r1
ffffffff80911848:	0b f0 73 fa 	ldi	$r19,-4085($r19)
ffffffff8091184c:	01 03 23 40 	mull	$r1,$r3,$r1
ffffffff80911850:	01 a9 21 48 	sll	$r1,0xd,$r1
ffffffff80911854:	81 05 a1 40 	cmpule	$r5,$r1,$r1
ffffffff80911858:	4f 01 20 c4 	bne	$r1,ffffffff80911d98 <best_fit_check+0x738>
ffffffff8091185c:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80911860:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911864:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911868:	01 00 1f fa 	ldi	$r16,1
ffffffff8091186c:	00 00 ee 8d 	ldl	fp,0($r14)
ffffffff80911870:	08 00 ce ad 	stl	$r14,8($r14)
ffffffff80911874:	00 00 ce ad 	stl	$r14,0($r14)
ffffffff80911878:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff8091187c:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80911880:	10 00 ee ab 	stw	$r31,16($r14)
ffffffff80911884:	48 00 3e ac 	stl	$r1,72(sp)
ffffffff80911888:	51 fd 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff8091188c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911890:	74 27 bd fb 	ldi	$r29,10100($r29)
ffffffff80911894:	00 01 3f fa 	ldi	$r17,256
ffffffff80911898:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091189c:	28 f0 73 fa 	ldi	$r19,-4056($r19)
ffffffff809118a0:	3d 01 00 c4 	bne	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff809118a4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809118a8:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809118ac:	01 00 3f fa 	ldi	$r17,1
ffffffff809118b0:	50 07 eb 43 	mov	$r11,$r16
ffffffff809118b4:	5e fd 5b 07 	call	ra,($r27),ffffffff80910e30 <free_pages>
ffffffff809118b8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809118bc:	48 27 bd fb 	ldi	$r29,10056($r29)
ffffffff809118c0:	01 00 3f fa 	ldi	$r17,1
ffffffff809118c4:	50 07 ed 43 	mov	$r13,$r16
ffffffff809118c8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809118cc:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809118d0:	57 fd 5b 07 	call	ra,($r27),ffffffff80910e30 <free_pages>
ffffffff809118d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809118d8:	2c 27 bd fb 	ldi	$r29,10028($r29)
ffffffff809118dc:	01 00 3f fa 	ldi	$r17,1
ffffffff809118e0:	50 07 ec 43 	mov	$r12,$r16
ffffffff809118e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809118e8:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809118ec:	50 fd 5b 07 	call	ra,($r27),ffffffff80910e30 <free_pages>
ffffffff809118f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809118f4:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff809118f8:	10 27 bd fb 	ldi	$r29,10000($r29)
ffffffff809118fc:	05 01 3f fa 	ldi	$r17,261
ffffffff80911900:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911904:	3d f0 73 fa 	ldi	$r19,-4035($r19)
ffffffff80911908:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff8091190c:	22 01 20 c0 	beq	$r1,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911910:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911914:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911918:	01 00 1f fa 	ldi	$r16,1
ffffffff8091191c:	2c fd 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911920:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911924:	e0 26 bd fb 	ldi	$r29,9952($r29)
ffffffff80911928:	4b 07 e0 43 	mov	$r0,$r11
ffffffff8091192c:	07 01 3f fa 	ldi	$r17,263
ffffffff80911930:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911934:	20 ef 73 fa 	ldi	$r19,-4320($r19)
ffffffff80911938:	17 01 00 c0 	beq	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff8091193c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911940:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911944:	01 00 1f fa 	ldi	$r16,1
ffffffff80911948:	21 fd 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff8091194c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911950:	b4 26 bd fb 	ldi	$r29,9908($r29)
ffffffff80911954:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80911958:	08 01 3f fa 	ldi	$r17,264
ffffffff8091195c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911960:	3c ef 73 fa 	ldi	$r19,-4292($r19)
ffffffff80911964:	0c 01 00 c0 	beq	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911968:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091196c:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911970:	01 00 1f fa 	ldi	$r16,1
ffffffff80911974:	16 fd 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911978:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091197c:	88 26 bd fb 	ldi	$r29,9864($r29)
ffffffff80911980:	4c 07 e0 43 	mov	$r0,$r12
ffffffff80911984:	09 01 3f fa 	ldi	$r17,265
ffffffff80911988:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091198c:	58 ef 73 fa 	ldi	$r19,-4264($r19)
ffffffff80911990:	01 01 00 c0 	beq	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911994:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911998:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff8091199c:	01 00 1f fa 	ldi	$r16,1
ffffffff809119a0:	0b fd 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff809119a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809119a8:	5c 26 bd fb 	ldi	$r29,9820($r29)
ffffffff809119ac:	0b 01 3f fa 	ldi	$r17,267
ffffffff809119b0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809119b4:	28 f0 73 fa 	ldi	$r19,-4056($r19)
ffffffff809119b8:	f7 00 00 c4 	bne	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff809119bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809119c0:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809119c4:	01 00 3f fa 	ldi	$r17,1
ffffffff809119c8:	50 07 eb 43 	mov	$r11,$r16
ffffffff809119cc:	18 fd 5b 07 	call	ra,($r27),ffffffff80910e30 <free_pages>
ffffffff809119d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809119d4:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff809119d8:	30 26 bd fb 	ldi	$r29,9776($r29)
ffffffff809119dc:	0e 01 3f fa 	ldi	$r17,270
ffffffff809119e0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809119e4:	4a f0 73 fa 	ldi	$r19,-4022($r19)
ffffffff809119e8:	01 05 2e 40 	cmpeq	$r1,$r14,$r1
ffffffff809119ec:	ea 00 20 c4 	bne	$r1,ffffffff80911d98 <best_fit_check+0x738>
ffffffff809119f0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809119f4:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff809119f8:	01 00 1f fa 	ldi	$r16,1
ffffffff809119fc:	f4 fc 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911a00:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a04:	00 26 bd fb 	ldi	$r29,9728($r29)
ffffffff80911a08:	00 05 60 41 	cmpeq	$r11,$r0,$r0
ffffffff80911a0c:	11 01 3f fa 	ldi	$r17,273
ffffffff80911a10:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911a14:	62 f0 73 fa 	ldi	$r19,-3998($r19)
ffffffff80911a18:	df 00 00 c0 	beq	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911a1c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a20:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911a24:	01 00 1f fa 	ldi	$r16,1
ffffffff80911a28:	e9 fc 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911a2c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a30:	d4 25 bd fb 	ldi	$r29,9684($r29)
ffffffff80911a34:	12 01 3f fa 	ldi	$r17,274
ffffffff80911a38:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911a3c:	28 f0 73 fa 	ldi	$r19,-4056($r19)
ffffffff80911a40:	d5 00 00 c4 	bne	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911a44:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80911a48:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911a4c:	14 01 3f fa 	ldi	$r17,276
ffffffff80911a50:	7b f0 73 fa 	ldi	$r19,-3973($r19)
ffffffff80911a54:	d0 00 20 c4 	bne	$r1,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911a58:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80911a5c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a60:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80911a64:	01 00 3f fa 	ldi	$r17,1
ffffffff80911a68:	50 07 eb 43 	mov	$r11,$r16
ffffffff80911a6c:	00 00 ee ad 	stl	fp,0($r14)
ffffffff80911a70:	08 00 2e ac 	stl	$r1,8($r14)
ffffffff80911a74:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff80911a78:	10 00 2e a8 	stw	$r1,16($r14)
ffffffff80911a7c:	ec fc 5b 07 	call	ra,($r27),ffffffff80910e30 <free_pages>
ffffffff80911a80:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a84:	80 25 bd fb 	ldi	$r29,9600($r29)
ffffffff80911a88:	01 00 3f fa 	ldi	$r17,1
ffffffff80911a8c:	50 07 ed 43 	mov	$r13,$r16
ffffffff80911a90:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a94:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80911a98:	e5 fc 5b 07 	call	ra,($r27),ffffffff80910e30 <free_pages>
ffffffff80911a9c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911aa0:	64 25 bd fb 	ldi	$r29,9572($r29)
ffffffff80911aa4:	01 00 3f fa 	ldi	$r17,1
ffffffff80911aa8:	50 07 ec 43 	mov	$r12,$r16
ffffffff80911aac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911ab0:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80911ab4:	de fc 5b 07 	call	ra,($r27),ffffffff80910e30 <free_pages>
ffffffff80911ab8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911abc:	48 25 bd fb 	ldi	$r29,9544($r29)
ffffffff80911ac0:	05 00 1f fa 	ldi	$r16,5
ffffffff80911ac4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911ac8:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911acc:	c0 fc 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911ad0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911ad4:	30 25 bd fb 	ldi	$r29,9520($r29)
ffffffff80911ad8:	4f 07 e0 43 	mov	$r0,fp
ffffffff80911adc:	73 01 3f fa 	ldi	$r17,371
ffffffff80911ae0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911ae4:	88 f0 73 fa 	ldi	$r19,-3960($r19)
ffffffff80911ae8:	ab 00 00 c0 	beq	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911aec:	08 00 20 88 	ldw	$r1,8($r0)
ffffffff80911af0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911af4:	74 01 3f fa 	ldi	$r17,372
ffffffff80911af8:	93 f0 73 fa 	ldi	$r19,-3949($r19)
ffffffff80911afc:	01 47 20 48 	and	$r1,0x2,$r1
ffffffff80911b00:	61 05 e1 43 	cmpult	$r31,$r1,$r1
ffffffff80911b04:	a4 00 20 c4 	bne	$r1,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911b08:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911b0c:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911b10:	00 00 ae 8d 	ldl	$r13,0($r14)
ffffffff80911b14:	01 00 1f fa 	ldi	$r16,1
ffffffff80911b18:	08 00 8e 8d 	ldl	$r12,8($r14)
ffffffff80911b1c:	00 00 ce ad 	stl	$r14,0($r14)
ffffffff80911b20:	08 00 ce ad 	stl	$r14,8($r14)
ffffffff80911b24:	aa fc 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911b28:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911b2c:	d8 24 bd fb 	ldi	$r29,9432($r29)
ffffffff80911b30:	79 01 3f fa 	ldi	$r17,377
ffffffff80911b34:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911b38:	28 f0 73 fa 	ldi	$r19,-4056($r19)
ffffffff80911b3c:	96 00 00 c4 	bne	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911b40:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80911b44:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911b48:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80911b4c:	02 00 3f fa 	ldi	$r17,2
ffffffff80911b50:	48 00 0f fa 	ldi	$r16,72(fp)
ffffffff80911b54:	10 00 ee ab 	stw	$r31,16($r14)
ffffffff80911b58:	20 01 6f f9 	ldi	$r11,288(fp)
ffffffff80911b5c:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff80911b60:	b3 fc 5b 07 	call	ra,($r27),ffffffff80910e30 <free_pages>
ffffffff80911b64:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911b68:	9c 24 bd fb 	ldi	$r29,9372($r29)
ffffffff80911b6c:	01 00 3f fa 	ldi	$r17,1
ffffffff80911b70:	50 07 eb 43 	mov	$r11,$r16
ffffffff80911b74:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911b78:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80911b7c:	ac fc 5b 07 	call	ra,($r27),ffffffff80910e30 <free_pages>
ffffffff80911b80:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911b84:	80 24 bd fb 	ldi	$r29,9344($r29)
ffffffff80911b88:	04 00 1f fa 	ldi	$r16,4
ffffffff80911b8c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911b90:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911b94:	8e fc 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911b98:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911b9c:	68 24 bd fb 	ldi	$r29,9320($r29)
ffffffff80911ba0:	81 01 3f fa 	ldi	$r17,385
ffffffff80911ba4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911ba8:	a5 f0 73 fa 	ldi	$r19,-3931($r19)
ffffffff80911bac:	7a 00 00 c4 	bne	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911bb0:	50 00 2f 88 	ldw	$r1,80(fp)
ffffffff80911bb4:	01 47 20 48 	and	$r1,0x2,$r1
ffffffff80911bb8:	61 05 e1 43 	cmpult	$r31,$r1,$r1
ffffffff80911bbc:	85 00 20 c0 	beq	$r1,ffffffff80911dd4 <best_fit_check+0x774>
ffffffff80911bc0:	60 00 2f 88 	ldw	$r1,96(fp)
ffffffff80911bc4:	01 45 20 48 	cmpeq	$r1,0x2,$r1
ffffffff80911bc8:	82 00 20 c0 	beq	$r1,ffffffff80911dd4 <best_fit_check+0x774>
ffffffff80911bcc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911bd0:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911bd4:	01 00 1f fa 	ldi	$r16,1
ffffffff80911bd8:	7d fc 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911bdc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911be0:	24 24 bd fb 	ldi	$r29,9252($r29)
ffffffff80911be4:	84 01 3f fa 	ldi	$r17,388
ffffffff80911be8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911bec:	e8 f0 73 fa 	ldi	$r19,-3864($r19)
ffffffff80911bf0:	69 00 00 c0 	beq	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911bf4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911bf8:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911bfc:	02 00 1f fa 	ldi	$r16,2
ffffffff80911c00:	50 00 1e ac 	stl	$r0,80(sp)
ffffffff80911c04:	72 fc 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911c08:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911c0c:	f8 23 bd fb 	ldi	$r29,9208($r29)
ffffffff80911c10:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff80911c14:	85 01 3f fa 	ldi	$r17,389
ffffffff80911c18:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911c1c:	06 f1 73 fa 	ldi	$r19,-3834($r19)
ffffffff80911c20:	5d 00 00 c0 	beq	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911c24:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911c28:	0b 05 61 41 	cmpeq	$r11,$r1,$r11
ffffffff80911c2c:	86 01 3f fa 	ldi	$r17,390
ffffffff80911c30:	1d f1 73 fa 	ldi	$r19,-3811($r19)
ffffffff80911c34:	58 00 60 c1 	beq	$r11,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911c38:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911c3c:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80911c40:	05 00 3f fa 	ldi	$r17,5
ffffffff80911c44:	50 07 ef 43 	mov	fp,$r16
ffffffff80911c48:	79 fc 5b 07 	call	ra,($r27),ffffffff80910e30 <free_pages>
ffffffff80911c4c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911c50:	b4 23 bd fb 	ldi	$r29,9140($r29)
ffffffff80911c54:	05 00 1f fa 	ldi	$r16,5
ffffffff80911c58:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911c5c:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911c60:	5b fc 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911c64:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911c68:	9c 23 bd fb 	ldi	$r29,9116($r29)
ffffffff80911c6c:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80911c70:	8a 01 3f fa 	ldi	$r17,394
ffffffff80911c74:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911c78:	2a f1 73 fa 	ldi	$r19,-3798($r19)
ffffffff80911c7c:	46 00 00 c0 	beq	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911c80:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911c84:	f8 80 7b 8f 	ldl	$r27,-32520($r27)
ffffffff80911c88:	01 00 1f fa 	ldi	$r16,1
ffffffff80911c8c:	50 fc 5b 07 	call	ra,($r27),ffffffff80910dd0 <alloc_pages>
ffffffff80911c90:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911c94:	70 23 bd fb 	ldi	$r29,9072($r29)
ffffffff80911c98:	8b 01 3f fa 	ldi	$r17,395
ffffffff80911c9c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911ca0:	28 f0 73 fa 	ldi	$r19,-4056($r19)
ffffffff80911ca4:	3c 00 00 c4 	bne	$r0,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911ca8:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80911cac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911cb0:	8d 01 3f fa 	ldi	$r17,397
ffffffff80911cb4:	7b f0 73 fa 	ldi	$r19,-3973($r19)
ffffffff80911cb8:	37 00 20 c4 	bne	$r1,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911cbc:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80911cc0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911cc4:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80911cc8:	05 00 3f fa 	ldi	$r17,5
ffffffff80911ccc:	50 07 eb 43 	mov	$r11,$r16
ffffffff80911cd0:	00 00 ae ad 	stl	$r13,0($r14)
ffffffff80911cd4:	08 00 8e ad 	stl	$r12,8($r14)
ffffffff80911cd8:	10 00 2e a8 	stw	$r1,16($r14)
ffffffff80911cdc:	54 fc 5b 07 	call	ra,($r27),ffffffff80910e30 <free_pages>
ffffffff80911ce0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911ce4:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80911ce8:	20 23 bd fb 	ldi	$r29,8992($r29)
ffffffff80911cec:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff80911cf0:	09 00 60 c4 	bne	$r3,ffffffff80911d18 <best_fit_check+0x6b8>
ffffffff80911cf4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911cf8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911cfc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911d00:	f8 ff 81 88 	ldw	$r4,-8($r1)
ffffffff80911d04:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80911d08:	2a 20 40 49 	subw	$r10,0x1,$r10
ffffffff80911d0c:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff80911d10:	29 00 24 41 	subw	$r9,$r4,$r9
ffffffff80911d14:	fa ff 7f c0 	beq	$r3,ffffffff80911d00 <best_fit_check+0x6a0>
ffffffff80911d18:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911d1c:	99 01 3f fa 	ldi	$r17,409
ffffffff80911d20:	48 f1 73 fa 	ldi	$r19,-3768($r19)
ffffffff80911d24:	1c 00 40 c5 	bne	$r10,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911d28:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911d2c:	9a 01 3f fa 	ldi	$r17,410
ffffffff80911d30:	53 f1 73 fa 	ldi	$r19,-3757($r19)
ffffffff80911d34:	18 00 20 c5 	bne	$r9,ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911d38:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911d3c:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80911d40:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911d44:	5e f1 10 fa 	ldi	$r16,-3746($r16)
ffffffff80911d48:	0d f9 5b 07 	call	ra,($r27),ffffffff80910180 <cprintf>
ffffffff80911d4c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911d50:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911d54:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911d58:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911d5c:	b4 22 bd fb 	ldi	$r29,8884($r29)
ffffffff80911d60:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911d64:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80911d68:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80911d6c:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80911d70:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80911d74:	60 00 de fb 	ldi	sp,96(sp)
ffffffff80911d78:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911d7c:	4b 07 ff 43 	clr	$r11
ffffffff80911d80:	49 07 ff 43 	clr	$r9
ffffffff80911d84:	4a 07 ff 43 	clr	$r10
ffffffff80911d88:	57 fe ff 13 	br	ffffffff809116e8 <best_fit_check+0x88>
ffffffff80911d8c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911d90:	6e 01 3f fa 	ldi	$r17,366
ffffffff80911d94:	07 ef 73 fa 	ldi	$r19,-4345($r19)
ffffffff80911d98:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911d9c:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911da0:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911da4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911da8:	a7 ee 52 fa 	ldi	$r18,-4441($r18)
ffffffff80911dac:	bc ee 10 fa 	ldi	$r16,-4420($r16)
ffffffff80911db0:	1b f9 5b 07 	call	ra,($r27),ffffffff80910220 <__panic>
ffffffff80911db4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911db8:	6b 01 3f fa 	ldi	$r17,363
ffffffff80911dbc:	e7 ee 73 fa 	ldi	$r19,-4377($r19)
ffffffff80911dc0:	f5 ff ff 13 	br	ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911dc4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911dc8:	f3 00 3f fa 	ldi	$r17,243
ffffffff80911dcc:	95 ef 73 fa 	ldi	$r19,-4203($r19)
ffffffff80911dd0:	f1 ff ff 13 	br	ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911dd4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911dd8:	82 01 3f fa 	ldi	$r17,386
ffffffff80911ddc:	bc f0 73 fa 	ldi	$r19,-3908($r19)
ffffffff80911de0:	ed ff ff 13 	br	ffffffff80911d98 <best_fit_check+0x738>
ffffffff80911de4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911de8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911dec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911df0 <default_alloc_pages>:
ffffffff80911df0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911df4:	10 22 bd fb 	ldi	$r29,8720($r29)
ffffffff80911df8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80911dfc:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911e00:	4a 00 00 c2 	beq	$r16,ffffffff80911f2c <default_alloc_pages+0x13c>
ffffffff80911e04:	00 00 9d fc 	ldih	$r4,0($r29)
ffffffff80911e08:	18 81 84 8c 	ldl	$r4,-32488($r4)
ffffffff80911e0c:	40 07 ff 43 	clr	$r0
ffffffff80911e10:	10 00 c4 88 	ldw	$r6,16($r4)
ffffffff80911e14:	21 ed c1 48 	zapnot	$r6,0xf,$r1
ffffffff80911e18:	61 05 30 40 	cmpult	$r1,$r16,$r1
ffffffff80911e1c:	25 00 20 c4 	bne	$r1,ffffffff80911eb4 <default_alloc_pages+0xc4>
ffffffff80911e20:	41 07 e4 43 	mov	$r4,$r1
ffffffff80911e24:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80911e28:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff80911e2c:	0d 00 40 c4 	bne	$r2,ffffffff80911e64 <default_alloc_pages+0x74>
ffffffff80911e30:	f8 ff 41 88 	ldw	$r2,-8($r1)
ffffffff80911e34:	e0 ff a1 f8 	ldi	$r5,-32($r1)
ffffffff80911e38:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80911e3c:	83 05 02 42 	cmpule	$r16,$r2,$r3
ffffffff80911e40:	f8 ff 7f c0 	beq	$r3,ffffffff80911e24 <default_alloc_pages+0x34>
ffffffff80911e44:	1e 00 00 c0 	beq	$r0,ffffffff80911ec0 <default_alloc_pages+0xd0>
ffffffff80911e48:	18 00 60 88 	ldw	$r3,24($r0)
ffffffff80911e4c:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80911e50:	23 ed 61 48 	zapnot	$r3,0xf,$r3
ffffffff80911e54:	82 05 62 40 	cmpule	$r3,$r2,$r2
ffffffff80911e58:	00 00 45 44 	seleq	$r2,$r5,$r0,$r0
ffffffff80911e5c:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff80911e60:	f3 ff 5f c0 	beq	$r2,ffffffff80911e30 <default_alloc_pages+0x40>
ffffffff80911e64:	13 00 00 c0 	beq	$r0,ffffffff80911eb4 <default_alloc_pages+0xc4>
ffffffff80911e68:	18 00 60 88 	ldw	$r3,24($r0)
ffffffff80911e6c:	20 00 40 8c 	ldl	$r2,32($r0)
ffffffff80911e70:	07 00 f0 43 	addw	$r31,$r16,$r7
ffffffff80911e74:	28 00 a0 8c 	ldl	$r5,40($r0)
ffffffff80911e78:	21 ed 61 48 	zapnot	$r3,0xf,$r1
ffffffff80911e7c:	08 00 a2 ac 	stl	$r5,8($r2)
ffffffff80911e80:	61 05 01 42 	cmpult	$r16,$r1,$r1
ffffffff80911e84:	00 00 45 ac 	stl	$r2,0($r5)
ffffffff80911e88:	11 00 20 c4 	bne	$r1,ffffffff80911ed0 <default_alloc_pages+0xe0>
ffffffff80911e8c:	26 00 c7 40 	subw	$r6,$r7,$r6
ffffffff80911e90:	10 00 c4 a8 	stw	$r6,16($r4)
ffffffff80911e94:	08 00 60 f8 	ldi	$r3,8($r0)
ffffffff80911e98:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff80911e9c:	01 00 5f f8 	ldi	$r2,1
ffffffff80911ea0:	20 10 5f 18 	wr_f	$r2
ffffffff80911ea4:	21 47 20 48 	bic	$r1,0x2,$r1
ffffffff80911ea8:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff80911eac:	00 10 5f 18 	rd_f	$r2
ffffffff80911eb0:	29 00 40 c0 	beq	$r2,ffffffff80911f58 <default_alloc_pages+0x168>
ffffffff80911eb4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911eb8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911ebc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911ec0:	40 07 e5 43 	mov	$r5,$r0
ffffffff80911ec4:	d7 ff ff 13 	br	ffffffff80911e24 <default_alloc_pages+0x34>
ffffffff80911ec8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911ecc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911ed0:	81 01 00 4a 	s8addl	$r16,0,$r1
ffffffff80911ed4:	23 00 67 40 	subw	$r3,$r7,$r3
ffffffff80911ed8:	01 01 30 40 	addl	$r1,$r16,$r1
ffffffff80911edc:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911ee0:	01 01 01 40 	addl	$r0,$r1,$r1
ffffffff80911ee4:	18 00 61 a8 	stw	$r3,24($r1)
ffffffff80911ee8:	08 00 c1 f8 	ldi	$r6,8($r1)
ffffffff80911eec:	00 00 66 20 	lldw	$r3,0($r6)
ffffffff80911ef0:	01 00 bf f8 	ldi	$r5,1
ffffffff80911ef4:	20 10 bf 18 	wr_f	$r5
ffffffff80911ef8:	43 47 60 48 	or	$r3,0x2,$r3
ffffffff80911efc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911f00:	00 80 66 20 	lstw	$r3,0($r6)
ffffffff80911f04:	00 10 bf 18 	rd_f	$r5
ffffffff80911f08:	14 00 a0 c0 	beq	$r5,ffffffff80911f5c <default_alloc_pages+0x16c>
ffffffff80911f0c:	08 00 62 8c 	ldl	$r3,8($r2)
ffffffff80911f10:	20 00 a1 f8 	ldi	$r5,32($r1)
ffffffff80911f14:	10 00 c4 88 	ldw	$r6,16($r4)
ffffffff80911f18:	00 00 a3 ac 	stl	$r5,0($r3)
ffffffff80911f1c:	08 00 a2 ac 	stl	$r5,8($r2)
ffffffff80911f20:	28 00 61 ac 	stl	$r3,40($r1)
ffffffff80911f24:	20 00 41 ac 	stl	$r2,32($r1)
ffffffff80911f28:	d8 ff ff 13 	br	ffffffff80911e8c <default_alloc_pages+0x9c>
ffffffff80911f2c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911f30:	50 80 7b 8f 	ldl	$r27,-32688($r27)
ffffffff80911f34:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911f38:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911f3c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911f40:	65 00 3f fa 	ldi	$r17,101
ffffffff80911f44:	a1 ee 73 fa 	ldi	$r19,-4447($r19)
ffffffff80911f48:	a7 ee 52 fa 	ldi	$r18,-4441($r18)
ffffffff80911f4c:	bc ee 10 fa 	ldi	$r16,-4420($r16)
ffffffff80911f50:	b3 f8 5b 07 	call	ra,($r27),ffffffff80910220 <__panic>
ffffffff80911f54:	5f 07 ff 43 	nop	
ffffffff80911f58:	cf ff ff 13 	br	ffffffff80911e98 <default_alloc_pages+0xa8>
ffffffff80911f5c:	e3 ff ff 13 	br	ffffffff80911eec <default_alloc_pages+0xfc>

ffffffff80911f60 <strnlen>:
ffffffff80911f60:	13 00 20 c2 	beq	$r17,ffffffff80911fb0 <strnlen+0x50>
ffffffff80911f64:	00 00 50 80 	ldbu	$r2,0($r16)
ffffffff80911f68:	01 00 30 f8 	ldi	$r1,1($r16)
ffffffff80911f6c:	10 00 40 c0 	beq	$r2,ffffffff80911fb0 <strnlen+0x50>
ffffffff80911f70:	11 01 11 42 	addl	$r16,$r17,$r17
ffffffff80911f74:	04 00 e0 13 	br	ffffffff80911f88 <strnlen+0x28>
ffffffff80911f78:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911f7c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911f80:	ff ff 41 80 	ldbu	$r2,-1($r1)
ffffffff80911f84:	06 00 40 c0 	beq	$r2,ffffffff80911fa0 <strnlen+0x40>
ffffffff80911f88:	02 05 31 40 	cmpeq	$r1,$r17,$r2
ffffffff80911f8c:	20 01 30 40 	subl	$r1,$r16,$r0
ffffffff80911f90:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80911f94:	fa ff 5f c0 	beq	$r2,ffffffff80911f80 <strnlen+0x20>
ffffffff80911f98:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911f9c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911fa0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911fa4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911fa8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911fac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911fb0:	40 07 ff 43 	clr	$r0
ffffffff80911fb4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911fb8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911fbc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911fc0 <memset>:
ffffffff80911fc0:	ff ff 52 f8 	ldi	$r2,-1($r18)
ffffffff80911fc4:	16 00 40 c2 	beq	$r18,ffffffff80912020 <memset+0x60>
ffffffff80911fc8:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80911fcc:	41 07 f0 43 	mov	$r16,$r1
ffffffff80911fd0:	0c 00 60 c4 	bne	$r3,ffffffff80912004 <memset+0x44>
ffffffff80911fd4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911fd8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911fdc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911fe0:	50 00 e1 9b 	fillde	80($r1)
ffffffff80911fe4:	00 00 21 a2 	stb	$r17,0($r1)
ffffffff80911fe8:	fc ff 42 f8 	ldi	$r2,-4($r2)
ffffffff80911fec:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff80911ff0:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80911ff4:	fd ff 21 a2 	stb	$r17,-3($r1)
ffffffff80911ff8:	fe ff 21 a2 	stb	$r17,-2($r1)
ffffffff80911ffc:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80912000:	f7 ff 7f c0 	beq	$r3,ffffffff80911fe0 <memset+0x20>
ffffffff80912004:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff80912008:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff8091200c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912010:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80912014:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80912018:	03 05 22 40 	cmpeq	$r1,$r2,$r3
ffffffff8091201c:	fc ff 7f c0 	beq	$r3,ffffffff80912010 <memset+0x50>
ffffffff80912020:	40 07 f0 43 	mov	$r16,$r0
ffffffff80912024:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912028:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091202c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912030 <printnum>:
ffffffff80912030:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912034:	d0 1f bd fb 	ldi	$r29,8144($r29)
ffffffff80912038:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091203c:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80912040:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80912044:	39 ed 61 4a 	zapnot	$r19,0xf,$r25
ffffffff80912048:	58 07 f2 43 	mov	$r18,$r24
ffffffff8091204c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912050:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912054:	81 05 32 43 	cmpule	$r25,$r18,$r1
ffffffff80912058:	29 20 80 4a 	subw	$r20,0x1,$r9
ffffffff8091205c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80912060:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80912064:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80912068:	4c 07 f1 43 	mov	$r17,$r12
ffffffff8091206c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80912070:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912074:	4d 07 f5 43 	mov	$r21,$r13
ffffffff80912078:	03 02 fb 06 	call	$r23,($r27),ffffffff80912888 <__remlu>
ffffffff8091207c:	0a 00 fb 43 	addw	$r31,$r27,$r10
ffffffff80912080:	1f 00 20 c4 	bne	$r1,ffffffff80912100 <printnum+0xd0>
ffffffff80912084:	0a 00 20 cd 	ble	$r9,ffffffff809120b0 <printnum+0x80>
ffffffff80912088:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091208c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912090:	29 20 20 49 	subw	$r9,0x1,$r9
ffffffff80912094:	51 07 ec 43 	mov	$r12,$r17
ffffffff80912098:	50 07 ed 43 	mov	$r13,$r16
ffffffff8091209c:	5b 07 eb 43 	mov	$r11,$r27
ffffffff809120a0:	00 00 5b 07 	call	ra,($r27),ffffffff809120a4 <printnum+0x74>
ffffffff809120a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809120a8:	5c 1f bd fb 	ldi	$r29,8028($r29)
ffffffff809120ac:	f8 ff 3f c5 	bne	$r9,ffffffff80912090 <printnum+0x60>
ffffffff809120b0:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809120b4:	2a ed 41 49 	zapnot	$r10,0xf,$r10
ffffffff809120b8:	51 07 ec 43 	mov	$r12,$r17
ffffffff809120bc:	5b 07 eb 43 	mov	$r11,$r27
ffffffff809120c0:	d0 f1 21 f8 	ldi	$r1,-3632($r1)
ffffffff809120c4:	0a 01 41 41 	addl	$r10,$r1,$r10
ffffffff809120c8:	00 00 0a 82 	ldbu	$r16,0($r10)
ffffffff809120cc:	50 0d f0 43 	sextb	$r16,$r16
ffffffff809120d0:	00 00 5b 07 	call	ra,($r27),ffffffff809120d4 <printnum+0xa4>
ffffffff809120d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809120d8:	2c 1f bd fb 	ldi	$r29,7980($r29)
ffffffff809120dc:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809120e0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809120e4:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809120e8:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809120ec:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff809120f0:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff809120f4:	30 00 de fb 	ldi	sp,48(sp)
ffffffff809120f8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809120fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912100:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912104:	98 80 7b 8f 	ldl	$r27,-32616($r27)
ffffffff80912108:	54 07 e9 43 	mov	$r9,$r20
ffffffff8091210c:	a8 01 fb 06 	call	$r23,($r27),ffffffff809127b0 <__divlu>
ffffffff80912110:	52 07 fb 43 	mov	$r27,$r18
ffffffff80912114:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912118:	38 81 7b 8f 	ldl	$r27,-32456($r27)
ffffffff8091211c:	c4 ff 5b 07 	call	ra,($r27),ffffffff80912030 <printnum>
ffffffff80912120:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912124:	e0 1e bd fb 	ldi	$r29,7904($r29)
ffffffff80912128:	e1 ff ff 13 	br	ffffffff809120b0 <printnum+0x80>
ffffffff8091212c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912130 <vprintfmt>:
ffffffff80912130:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912134:	d0 1e bd fb 	ldi	$r29,7888($r29)
ffffffff80912138:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff8091213c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80912140:	ff ff 7d fd 	ldih	$r11,-1($r29)
ffffffff80912144:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912148:	49 07 f1 43 	mov	$r17,$r9
ffffffff8091214c:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912150:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80912154:	4a 07 f0 43 	mov	$r16,$r10
ffffffff80912158:	0c 00 f4 43 	addw	$r31,$r20,$r12
ffffffff8091215c:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80912160:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912164:	4f 07 f2 43 	mov	$r18,fp
ffffffff80912168:	f4 f1 6b f9 	ldi	$r11,-3596($r11)
ffffffff8091216c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80912170:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80912174:	40 00 7e ae 	stl	$r19,64(sp)
ffffffff80912178:	48 00 9e ae 	stl	$r20,72(sp)
ffffffff8091217c:	50 00 7e ae 	stl	$r19,80(sp)
ffffffff80912180:	00 00 0f 82 	ldbu	$r16,0(fp)
ffffffff80912184:	01 00 cf f9 	ldi	$r14,1(fp)
ffffffff80912188:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff8091218c:	0b 00 40 c4 	bne	$r2,ffffffff809121bc <vprintfmt+0x8c>
ffffffff80912190:	1b 00 00 c2 	beq	$r16,ffffffff80912200 <vprintfmt+0xd0>
ffffffff80912194:	51 07 e9 43 	mov	$r9,$r17
ffffffff80912198:	5b 07 ea 43 	mov	$r10,$r27
ffffffff8091219c:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809121a0:	00 00 5b 07 	call	ra,($r27),ffffffff809121a4 <vprintfmt+0x74>
ffffffff809121a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809121a8:	5c 1e bd fb 	ldi	$r29,7772($r29)
ffffffff809121ac:	11 00 ee 27 	fillcs	17($r14)
ffffffff809121b0:	ff ff 0e 82 	ldbu	$r16,-1($r14)
ffffffff809121b4:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff809121b8:	f5 ff 5f c0 	beq	$r2,ffffffff80912190 <vprintfmt+0x60>
ffffffff809121bc:	ff ff 9f f8 	ldi	$r4,-1
ffffffff809121c0:	20 00 bf fa 	ldi	$r21,32
ffffffff809121c4:	45 07 ff 43 	clr	$r5
ffffffff809121c8:	48 07 ff 43 	clr	$r8
ffffffff809121cc:	4d 07 e4 43 	mov	$r4,$r13
ffffffff809121d0:	00 00 ce 80 	ldbu	$r6,0($r14)
ffffffff809121d4:	01 00 ee f9 	ldi	fp,1($r14)
ffffffff809121d8:	22 60 c4 48 	subw	$r6,0x23,$r2
ffffffff809121dc:	02 e7 5f 48 	and	$r2,0xff,$r2
ffffffff809121e0:	87 a5 4a 48 	cmpule	$r2,0x55,$r7
ffffffff809121e4:	f2 00 e0 c0 	beq	$r7,ffffffff809125b0 <vprintfmt+0x480>
ffffffff809121e8:	42 01 40 48 	s4addl	$r2,0,$r2
ffffffff809121ec:	02 01 4b 40 	addl	$r2,$r11,$r2
ffffffff809121f0:	00 00 42 88 	ldw	$r2,0($r2)
ffffffff809121f4:	02 01 a2 43 	addl	$r29,$r2,$r2
ffffffff809121f8:	00 00 e2 0f 	jmp	$r31,($r2),ffffffff809121fc <vprintfmt+0xcc>
ffffffff809121fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912200:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912204:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912208:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091220c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912210:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912214:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80912218:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff8091221c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80912220:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80912224:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912228:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091222c:	30 00 bf fa 	ldi	$r21,48
ffffffff80912230:	e7 ff ff 13 	br	ffffffff809121d0 <vprintfmt+0xa0>
ffffffff80912234:	01 00 4e 80 	ldbu	$r2,1($r14)
ffffffff80912238:	24 00 c6 48 	subw	$r6,0x30,$r4
ffffffff8091223c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80912240:	46 0d e2 43 	sextb	$r2,$r6
ffffffff80912244:	22 00 c6 48 	subw	$r6,0x30,$r2
ffffffff80912248:	06 00 e6 43 	addw	$r31,$r6,$r6
ffffffff8091224c:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80912250:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff80912254:	c8 00 40 c0 	beq	$r2,ffffffff80912578 <vprintfmt+0x448>
ffffffff80912258:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091225c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912260:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80912264:	00 00 6e 80 	ldbu	$r3,0($r14)
ffffffff80912268:	42 01 80 48 	s4addl	$r4,0,$r2
ffffffff8091226c:	04 00 82 40 	addw	$r4,$r2,$r4
ffffffff80912270:	04 01 84 40 	addl	$r4,$r4,$r4
ffffffff80912274:	43 0d e3 43 	sextb	$r3,$r3
ffffffff80912278:	04 00 86 40 	addw	$r4,$r6,$r4
ffffffff8091227c:	22 00 66 48 	subw	$r3,0x30,$r2
ffffffff80912280:	24 00 86 48 	subw	$r4,0x30,$r4
ffffffff80912284:	06 00 e3 43 	addw	$r31,$r3,$r6
ffffffff80912288:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff8091228c:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff80912290:	f3 ff 5f c4 	bne	$r2,ffffffff80912260 <vprintfmt+0x130>
ffffffff80912294:	b8 00 e0 13 	br	ffffffff80912578 <vprintfmt+0x448>
ffffffff80912298:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff8091229c:	51 07 e9 43 	mov	$r9,$r17
ffffffff809122a0:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809122a4:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff809122a8:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff809122ac:	00 00 01 8a 	ldw	$r16,0($r1)
ffffffff809122b0:	00 00 5b 07 	call	ra,($r27),ffffffff809122b4 <vprintfmt+0x184>
ffffffff809122b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809122b8:	4c 1d bd fb 	ldi	$r29,7500($r29)
ffffffff809122bc:	b0 ff ff 13 	br	ffffffff80912180 <vprintfmt+0x50>
ffffffff809122c0:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff809122c4:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff809122c8:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff809122cc:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff809122d0:	e0 00 20 c4 	bne	$r1,ffffffff80912654 <vprintfmt+0x524>
ffffffff809122d4:	00 00 cc 8d 	ldl	$r14,0($r12)
ffffffff809122d8:	52 07 ee 43 	mov	$r14,$r18
ffffffff809122dc:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809122e0:	0a 00 7f fa 	ldi	$r19,10
ffffffff809122e4:	2e 00 c0 d5 	bge	$r14,ffffffff809123a0 <vprintfmt+0x270>
ffffffff809122e8:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809122ec:	51 07 e9 43 	mov	$r9,$r17
ffffffff809122f0:	2d 00 1f fa 	ldi	$r16,45
ffffffff809122f4:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809122f8:	00 00 5b 07 	call	ra,($r27),ffffffff809122fc <vprintfmt+0x1cc>
ffffffff809122fc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912300:	04 1d bd fb 	ldi	$r29,7428($r29)
ffffffff80912304:	32 01 ee 43 	negl	$r14,$r18
ffffffff80912308:	0a 00 7f fa 	ldi	$r19,10
ffffffff8091230c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80912310:	23 00 e0 13 	br	ffffffff809123a0 <vprintfmt+0x270>
ffffffff80912314:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80912318:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff8091231c:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80912320:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff80912324:	21 01 e2 43 	negl	$r2,$r1
ffffffff80912328:	21 04 42 44 	selge	$r2,$r2,$r1,$r1
ffffffff8091232c:	13 00 e1 43 	addw	$r31,$r1,$r19
ffffffff80912330:	41 c5 60 4a 	cmple	$r19,0x6,$r1
ffffffff80912334:	af 00 20 c0 	beq	$r1,ffffffff809125f4 <vprintfmt+0x4c4>
ffffffff80912338:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff8091233c:	81 01 60 4a 	s8addl	$r19,0,$r1
ffffffff80912340:	b0 f3 42 f8 	ldi	$r2,-3152($r2)
ffffffff80912344:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80912348:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091234c:	a9 00 20 c0 	beq	$r1,ffffffff809125f4 <vprintfmt+0x4c4>
ffffffff80912350:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912354:	53 07 e1 43 	mov	$r1,$r19
ffffffff80912358:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091235c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80912360:	b9 ee 52 fa 	ldi	$r18,-4423($r18)
ffffffff80912364:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912368:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff8091236c:	f8 00 5b 07 	call	ra,($r27),ffffffff80912750 <printfmt>
ffffffff80912370:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912374:	90 1c bd fb 	ldi	$r29,7312($r29)
ffffffff80912378:	81 ff ff 13 	br	ffffffff80912180 <vprintfmt+0x50>
ffffffff8091237c:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80912380:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80912384:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80912388:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff8091238c:	c0 00 20 c4 	bne	$r1,ffffffff80912690 <vprintfmt+0x560>
ffffffff80912390:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80912394:	08 00 7f fa 	ldi	$r19,8
ffffffff80912398:	4c 07 e2 43 	mov	$r2,$r12
ffffffff8091239c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809123a0:	54 07 ed 43 	mov	$r13,$r20
ffffffff809123a4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809123a8:	50 07 ea 43 	mov	$r10,$r16
ffffffff809123ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809123b0:	38 81 7b 8f 	ldl	$r27,-32456($r27)
ffffffff809123b4:	1e ff 5b 07 	call	ra,($r27),ffffffff80912030 <printnum>
ffffffff809123b8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809123bc:	48 1c bd fb 	ldi	$r29,7240($r29)
ffffffff809123c0:	6f ff ff 13 	br	ffffffff80912180 <vprintfmt+0x50>
ffffffff809123c4:	08 20 00 49 	addw	$r8,0x1,$r8
ffffffff809123c8:	4e 07 ef 43 	mov	fp,$r14
ffffffff809123cc:	80 ff ff 13 	br	ffffffff809121d0 <vprintfmt+0xa0>
ffffffff809123d0:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809123d4:	30 00 1f fa 	ldi	$r16,48
ffffffff809123d8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809123dc:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809123e0:	00 00 5b 07 	call	ra,($r27),ffffffff809123e4 <vprintfmt+0x2b4>
ffffffff809123e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809123e8:	1c 1c bd fb 	ldi	$r29,7196($r29)
ffffffff809123ec:	51 07 e9 43 	mov	$r9,$r17
ffffffff809123f0:	78 00 1f fa 	ldi	$r16,120
ffffffff809123f4:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809123f8:	00 00 5b 07 	call	ra,($r27),ffffffff809123fc <vprintfmt+0x2cc>
ffffffff809123fc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912400:	04 1c bd fb 	ldi	$r29,7172($r29)
ffffffff80912404:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80912408:	10 00 7f fa 	ldi	$r19,16
ffffffff8091240c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80912410:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80912414:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80912418:	00 00 41 8e 	ldl	$r18,0($r1)
ffffffff8091241c:	e0 ff ff 13 	br	ffffffff809123a0 <vprintfmt+0x270>
ffffffff80912420:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80912424:	06 a5 a5 4a 	cmpeq	$r21,0x2d,$r6
ffffffff80912428:	21 05 ed 43 	cmplt	$r31,$r13,$r1
ffffffff8091242c:	ff ff 7d ff 	ldih	$r27,-1($r29)
ffffffff80912430:	06 05 c0 48 	cmpeq	$r6,0,$r6
ffffffff80912434:	e1 f1 7b fb 	ldi	$r27,-3615($r27)
ffffffff80912438:	01 07 26 40 	and	$r1,$r6,$r1
ffffffff8091243c:	02 01 6c 40 	addl	$r3,$r12,$r2
ffffffff80912440:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80912444:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80912448:	42 00 5b 44 	seleq	$r2,$r27,$r2,$r2
ffffffff8091244c:	96 00 20 c4 	bne	$r1,ffffffff809126a8 <vprintfmt+0x578>
ffffffff80912450:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80912454:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80912458:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff8091245c:	19 00 00 c2 	beq	$r16,ffffffff809124c4 <vprintfmt+0x394>
ffffffff80912460:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80912464:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912468:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091246c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912470:	03 00 80 c8 	blt	$r4,ffffffff80912480 <vprintfmt+0x350>
ffffffff80912474:	24 20 80 48 	subw	$r4,0x1,$r4
ffffffff80912478:	01 00 c4 f8 	ldi	$r6,1($r4)
ffffffff8091247c:	11 00 c0 c0 	beq	$r6,ffffffff809124c4 <vprintfmt+0x394>
ffffffff80912480:	51 07 e9 43 	mov	$r9,$r17
ffffffff80912484:	65 00 a0 c4 	bne	$r5,ffffffff8091261c <vprintfmt+0x4ec>
ffffffff80912488:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff8091248c:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80912490:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80912494:	00 00 5b 07 	call	ra,($r27),ffffffff80912498 <vprintfmt+0x368>
ffffffff80912498:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091249c:	68 1b bd fb 	ldi	$r29,7016($r29)
ffffffff809124a0:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff809124a4:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff809124a8:	f6 ff 2e 80 	ldbu	$r1,-10($r14)
ffffffff809124ac:	00 00 ee 27 	fillcs	0($r14)
ffffffff809124b0:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff809124b4:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809124b8:	41 0d e1 43 	sextb	$r1,$r1
ffffffff809124bc:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff809124c0:	eb ff 1f c6 	bne	$r16,ffffffff80912470 <vprintfmt+0x340>
ffffffff809124c4:	2e ff bf cd 	ble	$r13,ffffffff80912180 <vprintfmt+0x50>
ffffffff809124c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809124cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809124d0:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff809124d4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809124d8:	20 00 1f fa 	ldi	$r16,32
ffffffff809124dc:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809124e0:	00 00 5b 07 	call	ra,($r27),ffffffff809124e4 <vprintfmt+0x3b4>
ffffffff809124e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809124e8:	1c 1b bd fb 	ldi	$r29,6940($r29)
ffffffff809124ec:	f8 ff bf c5 	bne	$r13,ffffffff809124d0 <vprintfmt+0x3a0>
ffffffff809124f0:	23 ff ff 13 	br	ffffffff80912180 <vprintfmt+0x50>
ffffffff809124f4:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff809124f8:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff809124fc:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80912500:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80912504:	5c 00 20 c4 	bne	$r1,ffffffff80912678 <vprintfmt+0x548>
ffffffff80912508:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff8091250c:	0a 00 7f fa 	ldi	$r19,10
ffffffff80912510:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80912514:	a2 ff ff 13 	br	ffffffff809123a0 <vprintfmt+0x270>
ffffffff80912518:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff8091251c:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80912520:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80912524:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80912528:	4d 00 20 c4 	bne	$r1,ffffffff80912660 <vprintfmt+0x530>
ffffffff8091252c:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80912530:	10 00 7f fa 	ldi	$r19,16
ffffffff80912534:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80912538:	99 ff ff 13 	br	ffffffff809123a0 <vprintfmt+0x270>
ffffffff8091253c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80912540:	01 00 bf f8 	ldi	$r5,1
ffffffff80912544:	22 ff ff 13 	br	ffffffff809121d0 <vprintfmt+0xa0>
ffffffff80912548:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091254c:	25 00 1f fa 	ldi	$r16,37
ffffffff80912550:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80912554:	00 00 5b 07 	call	ra,($r27),ffffffff80912558 <vprintfmt+0x428>
ffffffff80912558:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091255c:	a8 1a bd fb 	ldi	$r29,6824($r29)
ffffffff80912560:	07 ff ff 13 	br	ffffffff80912180 <vprintfmt+0x50>
ffffffff80912564:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff80912568:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091256c:	02 01 2c 40 	addl	$r1,$r12,$r2
ffffffff80912570:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80912574:	00 00 82 88 	ldw	$r4,0($r2)
ffffffff80912578:	42 07 ed 43 	mov	$r13,$r2
ffffffff8091257c:	ff ff 7f f8 	ldi	$r3,-1
ffffffff80912580:	42 10 a4 45 	sellt	$r13,$r4,$r2,$r2
ffffffff80912584:	84 10 a3 45 	sellt	$r13,$r3,$r4,$r4
ffffffff80912588:	4d 07 e2 43 	mov	$r2,$r13
ffffffff8091258c:	10 ff ff 13 	br	ffffffff809121d0 <vprintfmt+0xa0>
ffffffff80912590:	4e 07 ef 43 	mov	fp,$r14
ffffffff80912594:	2d 00 bf fa 	ldi	$r21,45
ffffffff80912598:	0d ff ff 13 	br	ffffffff809121d0 <vprintfmt+0xa0>
ffffffff8091259c:	54 07 ed 43 	mov	$r13,$r20
ffffffff809125a0:	4e 07 ef 43 	mov	fp,$r14
ffffffff809125a4:	94 12 80 4e 	sellt	$r20,0,$r20,$r20
ffffffff809125a8:	0d 00 f4 43 	addw	$r31,$r20,$r13
ffffffff809125ac:	08 ff ff 13 	br	ffffffff809121d0 <vprintfmt+0xa0>
ffffffff809125b0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809125b4:	25 00 1f fa 	ldi	$r16,37
ffffffff809125b8:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809125bc:	4f 07 ee 43 	mov	$r14,fp
ffffffff809125c0:	00 00 5b 07 	call	ra,($r27),ffffffff809125c4 <vprintfmt+0x494>
ffffffff809125c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809125c8:	3c 1a bd fb 	ldi	$r29,6716($r29)
ffffffff809125cc:	ff ff 2e 80 	ldbu	$r1,-1($r14)
ffffffff809125d0:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff809125d4:	ea fe 3f c4 	bne	$r1,ffffffff80912180 <vprintfmt+0x50>
ffffffff809125d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809125dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809125e0:	ff ff ef f9 	ldi	fp,-1(fp)
ffffffff809125e4:	ff ff 2f 80 	ldbu	$r1,-1(fp)
ffffffff809125e8:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff809125ec:	fc ff 3f c0 	beq	$r1,ffffffff809125e0 <vprintfmt+0x4b0>
ffffffff809125f0:	e3 fe ff 13 	br	ffffffff80912180 <vprintfmt+0x50>
ffffffff809125f4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809125f8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809125fc:	50 07 ea 43 	mov	$r10,$r16
ffffffff80912600:	e8 f1 52 fa 	ldi	$r18,-3608($r18)
ffffffff80912604:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912608:	c0 80 7b 8f 	ldl	$r27,-32576($r27)
ffffffff8091260c:	50 00 5b 07 	call	ra,($r27),ffffffff80912750 <printfmt>
ffffffff80912610:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912614:	f0 19 bd fb 	ldi	$r29,6640($r29)
ffffffff80912618:	d9 fe ff 13 	br	ffffffff80912180 <vprintfmt+0x50>
ffffffff8091261c:	21 00 24 48 	subw	$r1,0x20,$r1
ffffffff80912620:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80912624:	81 c5 2b 48 	cmpule	$r1,0x5e,$r1
ffffffff80912628:	97 ff 3f c4 	bne	$r1,ffffffff80912488 <vprintfmt+0x358>
ffffffff8091262c:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80912630:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80912634:	3f 00 1f fa 	ldi	$r16,63
ffffffff80912638:	5b 07 ea 43 	mov	$r10,$r27
ffffffff8091263c:	00 00 5b 07 	call	ra,($r27),ffffffff80912640 <vprintfmt+0x510>
ffffffff80912640:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912644:	c0 19 bd fb 	ldi	$r29,6592($r29)
ffffffff80912648:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff8091264c:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80912650:	95 ff ff 13 	br	ffffffff809124a8 <vprintfmt+0x378>
ffffffff80912654:	1f ff 1f c5 	bne	$r8,ffffffff809122d4 <vprintfmt+0x1a4>
ffffffff80912658:	00 00 cc 89 	ldw	$r14,0($r12)
ffffffff8091265c:	1e ff ff 13 	br	ffffffff809122d8 <vprintfmt+0x1a8>
ffffffff80912660:	b2 ff 1f c5 	bne	$r8,ffffffff8091252c <vprintfmt+0x3fc>
ffffffff80912664:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80912668:	10 00 7f fa 	ldi	$r19,16
ffffffff8091266c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80912670:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80912674:	4a ff ff 13 	br	ffffffff809123a0 <vprintfmt+0x270>
ffffffff80912678:	a3 ff 1f c5 	bne	$r8,ffffffff80912508 <vprintfmt+0x3d8>
ffffffff8091267c:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80912680:	0a 00 7f fa 	ldi	$r19,10
ffffffff80912684:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80912688:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff8091268c:	44 ff ff 13 	br	ffffffff809123a0 <vprintfmt+0x270>
ffffffff80912690:	3f ff 1f c5 	bne	$r8,ffffffff80912390 <vprintfmt+0x260>
ffffffff80912694:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80912698:	08 00 7f fa 	ldi	$r19,8
ffffffff8091269c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809126a0:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff809126a4:	3e ff ff 13 	br	ffffffff809123a0 <vprintfmt+0x270>
ffffffff809126a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809126ac:	68 80 7b 8f 	ldl	$r27,-32664($r27)
ffffffff809126b0:	51 07 e4 43 	mov	$r4,$r17
ffffffff809126b4:	50 07 e2 43 	mov	$r2,$r16
ffffffff809126b8:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff809126bc:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff809126c0:	68 00 be ac 	stl	$r5,104(sp)
ffffffff809126c4:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809126c8:	25 fe 5b 07 	call	ra,($r27),ffffffff80911f60 <strnlen>
ffffffff809126cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809126d0:	2d 00 a0 41 	subw	$r13,$r0,$r13
ffffffff809126d4:	34 19 bd fb 	ldi	$r29,6452($r29)
ffffffff809126d8:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff809126dc:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff809126e0:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff809126e4:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff809126e8:	10 00 a0 cd 	ble	$r13,ffffffff8091272c <vprintfmt+0x5fc>
ffffffff809126ec:	0e 00 f5 43 	addw	$r31,$r21,$r14
ffffffff809126f0:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff809126f4:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff809126f8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809126fc:	50 07 ee 43 	mov	$r14,$r16
ffffffff80912700:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80912704:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80912708:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff8091270c:	00 00 5b 07 	call	ra,($r27),ffffffff80912710 <vprintfmt+0x5e0>
ffffffff80912710:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912714:	f0 18 bd fb 	ldi	$r29,6384($r29)
ffffffff80912718:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff8091271c:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80912720:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80912724:	f2 ff bf c5 	bne	$r13,ffffffff809126f0 <vprintfmt+0x5c0>
ffffffff80912728:	4d 07 ff 43 	clr	$r13
ffffffff8091272c:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80912730:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80912734:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80912738:	91 fe 1f c2 	beq	$r16,ffffffff80912180 <vprintfmt+0x50>
ffffffff8091273c:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80912740:	4b ff ff 13 	br	ffffffff80912470 <vprintfmt+0x340>
ffffffff80912744:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912748:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091274c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912750 <printfmt>:
ffffffff80912750:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912754:	b0 18 bd fb 	ldi	$r29,6320($r29)
ffffffff80912758:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff8091275c:	18 00 5f f8 	ldi	$r2,24
ffffffff80912760:	18 00 5e a8 	stw	$r2,24(sp)
ffffffff80912764:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80912768:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff8091276c:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80912770:	18 00 9e 8e 	ldl	$r20,24(sp)
ffffffff80912774:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff80912778:	53 07 e1 43 	mov	$r1,$r19
ffffffff8091277c:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff80912780:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912784:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80912788:	78 00 be ae 	stl	$r21,120(sp)
ffffffff8091278c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80912790:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912794:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80912798:	65 fe 5b 07 	call	ra,($r27),ffffffff80912130 <vprintfmt>
ffffffff8091279c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809127a0:	64 18 bd fb 	ldi	$r29,6244($r29)
ffffffff809127a4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809127a8:	80 00 de fb 	ldi	sp,128(sp)
ffffffff809127ac:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809127b0 <__divlu>:
ffffffff809127b0:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff809127b4:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff809127b8:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff809127bc:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff809127c0:	42 07 18 43 	or	$r24,$r24,$r2
ffffffff809127c4:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff809127c8:	5b 07 ff 43 	clr	$r27
ffffffff809127cc:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff809127d0:	40 27 e0 4b 	mov	0x1,$r0
ffffffff809127d4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff809127d8:	0d 00 20 c0 	beq	$r1,ffffffff80912810 <__divlu+0x60>
ffffffff809127dc:	7c 05 22 40 	cmpult	$r1,$r2,$r28
ffffffff809127e0:	03 00 20 c8 	blt	$r1,ffffffff809127f0 <__divlu+0x40>
ffffffff809127e4:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff809127e8:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff809127ec:	fb ff 9f c7 	bne	$r28,ffffffff809127dc <__divlu+0x2c>
ffffffff809127f0:	04 01 60 43 	addl	$r27,$r0,$r4
ffffffff809127f4:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff809127f8:	9c 05 22 40 	cmpule	$r1,$r2,$r28
ffffffff809127fc:	23 01 41 40 	subl	$r2,$r1,$r3
ffffffff80912800:	7b 17 84 47 	selne	$r28,$r4,$r27,$r27
ffffffff80912804:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80912808:	42 14 83 47 	selne	$r28,$r3,$r2,$r2
ffffffff8091280c:	f8 ff 1f c4 	bne	$r0,ffffffff809127f0 <__divlu+0x40>
ffffffff80912810:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80912814:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80912818:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff8091281c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80912820:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80912824:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80912828:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff8091282c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912830 <__divl>:
ffffffff80912830:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80912834:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80912838:	de ff 9f d7 	bge	$r28,ffffffff809127b4 <__divlu+0x4>
ffffffff8091283c:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80912840:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80912844:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80912848:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff8091284c:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80912850:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80912854:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80912858:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff8091285c:	d4 ff ff 16 	bsr	$r23,ffffffff809127b0 <__divlu>
ffffffff80912860:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80912864:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80912868:	9c 07 19 43 	xor	$r24,$r25,$r28
ffffffff8091286c:	23 01 fb 43 	negl	$r27,$r3
ffffffff80912870:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80912874:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80912878:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff8091287c:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80912880:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80912884:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912888 <__remlu>:
ffffffff80912888:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff8091288c:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff80912890:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff80912894:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff80912898:	5b 07 18 43 	or	$r24,$r24,$r27
ffffffff8091289c:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff809128a0:	42 07 ff 43 	clr	$r2
ffffffff809128a4:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff809128a8:	40 27 e0 4b 	mov	0x1,$r0
ffffffff809128ac:	0b 00 20 c0 	beq	$r1,ffffffff809128dc <__remlu+0x54>
ffffffff809128b0:	7c 05 3b 40 	cmpult	$r1,$r27,$r28
ffffffff809128b4:	03 00 20 c8 	blt	$r1,ffffffff809128c4 <__remlu+0x3c>
ffffffff809128b8:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff809128bc:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff809128c0:	fb ff 9f c7 	bne	$r28,ffffffff809128b0 <__remlu+0x28>
ffffffff809128c4:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff809128c8:	9c 05 3b 40 	cmpule	$r1,$r27,$r28
ffffffff809128cc:	23 01 61 43 	subl	$r27,$r1,$r3
ffffffff809128d0:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff809128d4:	7b 17 83 47 	selne	$r28,$r3,$r27,$r27
ffffffff809128d8:	fa ff 1f c4 	bne	$r0,ffffffff809128c4 <__remlu+0x3c>
ffffffff809128dc:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff809128e0:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff809128e4:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff809128e8:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff809128ec:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff809128f0:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff809128f4:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809128f8 <__reml>:
ffffffff809128f8:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff809128fc:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80912900:	e2 ff 9f d7 	bge	$r28,ffffffff8091288c <__remlu+0x4>
ffffffff80912904:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80912908:	3c 01 f8 43 	negl	$r24,$r28
ffffffff8091290c:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80912910:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80912914:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80912918:	3c 01 f9 43 	negl	$r25,$r28
ffffffff8091291c:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80912920:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80912924:	d8 ff ff 16 	bsr	$r23,ffffffff80912888 <__remlu>
ffffffff80912928:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff8091292c:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80912930:	5c 07 18 43 	or	$r24,$r24,$r28
ffffffff80912934:	23 01 fb 43 	negl	$r27,$r3
ffffffff80912938:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff8091293c:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80912940:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80912944:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80912948:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff8091294c:	00 00 fe ff 	ldih	$r31,0(sp)
