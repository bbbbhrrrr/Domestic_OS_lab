
bin/kernel：     文件格式 elf64-sw_64


Disassembly of section .text:

ffffffff80910000 <kern_entry>:
ffffffff80910000:	00 00 60 13 	br	$r27,ffffffff80910004 <kern_entry+0x4>
ffffffff80910004:	02 00 bb ff 	ldih	$r29,2($r27)
ffffffff80910008:	3c 80 bd fb 	ldi	$r29,-32708($r29)
ffffffff8091000c:	20 82 dd 8f 	ldl	sp,-32224($r29)
ffffffff80910010:	88 80 7d 8f 	ldl	$r27,-32632($r29)
ffffffff80910014:	02 00 5b 07 	call	ra,($r27),ffffffff80910020 <kern_init>
	...

ffffffff80910020 <kern_init>:
ffffffff80910020:	02 00 bb ff 	ldih	$r29,2($r27)
ffffffff80910024:	20 80 bd fb 	ldi	$r29,-32736($r29)
ffffffff80910028:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff8091002c:	a0 80 10 8e 	ldl	$r16,-32608($r16)
ffffffff80910030:	00 00 5d fe 	ldih	$r18,0($r29)
ffffffff80910034:	48 81 52 8e 	ldl	$r18,-32440($r18)
ffffffff80910038:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091003c:	51 07 ff 43 	clr	$r17
ffffffff80910040:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910044:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80910048:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091004c:	32 01 50 42 	subl	$r18,$r16,$r18
ffffffff80910050:	3b 17 5b 07 	call	ra,($r27),ffffffff80915d40 <memset>
ffffffff80910054:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910058:	ec 7f bd fb 	ldi	$r29,32748($r29)
ffffffff8091005c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910060:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910064:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff80910068:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091006c:	20 e7 31 fa 	ldi	$r17,-6368($r17)
ffffffff80910070:	33 e7 10 fa 	ldi	$r16,-6349($r16)
ffffffff80910074:	7e 00 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910078:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091007c:	c8 7f bd fb 	ldi	$r29,32712($r29)
ffffffff80910080:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910084:	00 80 7b 8f 	ldl	$r27,-32768($r27)
ffffffff80910088:	d5 00 5b 07 	call	ra,($r27),ffffffff809103e0 <print_kerninfo>
ffffffff8091008c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910090:	b4 7f bd fb 	ldi	$r29,32692($r29)
ffffffff80910094:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910098:	70 82 7b 8f 	ldl	$r27,-32144($r27)
ffffffff8091009c:	14 01 5b 07 	call	ra,($r27),ffffffff809104f0 <trap_init>
ffffffff809100a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100a4:	a0 7f bd fb 	ldi	$r29,32672($r29)
ffffffff809100a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100ac:	f8 81 7b 8f 	ldl	$r27,-32264($r27)
ffffffff809100b0:	9b 11 5b 07 	call	ra,($r27),ffffffff80914720 <pmm_init>
ffffffff809100b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100b8:	8c 7f bd fb 	ldi	$r29,32652($r29)
ffffffff809100bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100c0:	60 80 7b 8f 	ldl	$r27,-32672($r27)
ffffffff809100c4:	7e 04 5b 07 	call	ra,($r27),ffffffff809112c0 <vmm_init>
ffffffff809100c8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100cc:	78 7f bd fb 	ldi	$r29,32632($r29)
ffffffff809100d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100d4:	68 82 7b 8f 	ldl	$r27,-32152($r27)
ffffffff809100d8:	09 00 5b 07 	call	ra,($r27),ffffffff80910100 <ide_init>
ffffffff809100dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809100e0:	64 7f bd fb 	ldi	$r29,32612($r29)
ffffffff809100e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809100e8:	c8 80 7b 8f 	ldl	$r27,-32568($r27)
ffffffff809100ec:	68 08 5b 07 	call	ra,($r27),ffffffff80912290 <swap_init>
ffffffff809100f0:	ff ff ff 13 	br	ffffffff809100f0 <kern_init+0xd0>
ffffffff809100f4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809100f8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809100fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910100 <ide_init>:
ffffffff80910100:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910104:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910108:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091010c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910110 <ide_device_valid>:
ffffffff80910110:	80 25 00 4a 	cmpule	$r16,0x1,$r0
ffffffff80910114:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910118:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091011c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910120 <ide_device_size>:
ffffffff80910120:	70 00 1f f8 	ldi	$r0,112
ffffffff80910124:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910128:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091012c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910130 <ide_read_secs>:
ffffffff80910130:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910134:	10 7f bd fb 	ldi	$r29,32528($r29)
ffffffff80910138:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091013c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910140:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80910144:	11 29 21 4a 	sll	$r17,0x9,$r17
ffffffff80910148:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091014c:	b8 82 21 f8 	ldi	$r1,-32072($r1)
ffffffff80910150:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80910154:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910158:	50 07 f2 43 	mov	$r18,$r16
ffffffff8091015c:	11 01 31 40 	addl	$r1,$r17,$r17
ffffffff80910160:	12 29 61 4a 	sll	$r19,0x9,$r18
ffffffff80910164:	12 17 5b 07 	call	ra,($r27),ffffffff80915db0 <memcpy>
ffffffff80910168:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091016c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910170:	40 07 ff 43 	clr	$r0
ffffffff80910174:	d8 7e bd fb 	ldi	$r29,32472($r29)
ffffffff80910178:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091017c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910180 <ide_write_secs>:
ffffffff80910180:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910184:	c0 7e bd fb 	ldi	$r29,32448($r29)
ffffffff80910188:	01 29 21 4a 	sll	$r17,0x9,$r1
ffffffff8091018c:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910190:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910194:	78 80 7b 8f 	ldl	$r27,-32648($r27)
ffffffff80910198:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091019c:	01 00 e1 43 	addw	$r31,$r1,$r1
ffffffff809101a0:	b8 82 10 fa 	ldi	$r16,-32072($r16)
ffffffff809101a4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809101a8:	51 07 f2 43 	mov	$r18,$r17
ffffffff809101ac:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff809101b0:	12 29 61 4a 	sll	$r19,0x9,$r18
ffffffff809101b4:	fe 16 5b 07 	call	ra,($r27),ffffffff80915db0 <memcpy>
ffffffff809101b8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809101bc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809101c0:	40 07 ff 43 	clr	$r0
ffffffff809101c4:	88 7e bd fb 	ldi	$r29,32392($r29)
ffffffff809101c8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809101cc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809101d0 <clock_set_next_event>:
ffffffff809101d0:	02 00 1f fe 	ldih	$r16,2
ffffffff809101d4:	a0 86 10 fa 	ldi	$r16,-31072($r16)
ffffffff809101d8:	3b 00 00 02 	sys_call	0x3b
ffffffff809101dc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809101e0 <intr_disable>:
ffffffff809101e0:	07 00 1f fa 	ldi	$r16,7
ffffffff809101e4:	35 00 00 02 	sys_call	0x35
ffffffff809101e8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809101ec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809101f0 <cputch>:
ffffffff809101f0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809101f4:	50 7e bd fb 	ldi	$r29,32336($r29)
ffffffff809101f8:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809101fc:	38 e7 21 8c 	ldl	$r1,-6344($r1)
ffffffff80910200:	00 00 01 a2 	stb	$r16,0($r1)
ffffffff80910204:	00 00 31 88 	ldw	$r1,0($r17)
ffffffff80910208:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff8091020c:	00 00 31 a8 	stw	$r1,0($r17)
ffffffff80910210:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910214:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910218:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091021c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910220 <vcprintf>:
ffffffff80910220:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910224:	20 7e bd fb 	ldi	$r29,32288($r29)
ffffffff80910228:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091022c:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910230:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80910234:	54 07 f2 43 	mov	$r18,$r20
ffffffff80910238:	52 07 f0 43 	mov	$r16,$r18
ffffffff8091023c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910240:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910244:	53 07 f1 43 	mov	$r17,$r19
ffffffff80910248:	10 00 fe ab 	stw	$r31,16(sp)
ffffffff8091024c:	10 00 3e fa 	ldi	$r17,16(sp)
ffffffff80910250:	b0 81 10 fa 	ldi	$r16,-32336($r16)
ffffffff80910254:	3a 17 5b 07 	call	ra,($r27),ffffffff80915f40 <vprintfmt>
ffffffff80910258:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091025c:	10 00 1e 88 	ldw	$r0,16(sp)
ffffffff80910260:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910264:	e8 7d bd fb 	ldi	$r29,32232($r29)
ffffffff80910268:	30 00 de fb 	ldi	sp,48(sp)
ffffffff8091026c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910270 <cprintf>:
ffffffff80910270:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910274:	d0 7d bd fb 	ldi	$r29,32208($r29)
ffffffff80910278:	60 ff de fb 	ldi	sp,-160(sp)
ffffffff8091027c:	08 00 5f f8 	ldi	$r2,8
ffffffff80910280:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910284:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff80910288:	28 00 5e a8 	stw	$r2,40(sp)
ffffffff8091028c:	48 00 3e be 	fstd	$f17,72(sp)
ffffffff80910290:	50 00 5e be 	fstd	$f18,80(sp)
ffffffff80910294:	70 00 3e f8 	ldi	$r1,112(sp)
ffffffff80910298:	28 00 5e 8c 	ldl	$r2,40(sp)
ffffffff8091029c:	58 00 7e be 	fstd	$f19,88(sp)
ffffffff809102a0:	60 00 9e be 	fstd	$f20,96(sp)
ffffffff809102a4:	80 00 5e ae 	stl	$r18,128(sp)
ffffffff809102a8:	68 00 be be 	fstd	$f21,104(sp)
ffffffff809102ac:	52 07 f0 43 	mov	$r16,$r18
ffffffff809102b0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809102b4:	b0 81 10 fa 	ldi	$r16,-32336($r16)
ffffffff809102b8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809102bc:	78 00 3e ae 	stl	$r17,120(sp)
ffffffff809102c0:	88 00 7e ae 	stl	$r19,136(sp)
ffffffff809102c4:	30 00 3e fa 	ldi	$r17,48(sp)
ffffffff809102c8:	53 07 e1 43 	mov	$r1,$r19
ffffffff809102cc:	90 00 9e ae 	stl	$r20,144(sp)
ffffffff809102d0:	98 00 be ae 	stl	$r21,152(sp)
ffffffff809102d4:	54 07 e2 43 	mov	$r2,$r20
ffffffff809102d8:	20 00 3e ac 	stl	$r1,32(sp)
ffffffff809102dc:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff809102e0:	18 00 5e ac 	stl	$r2,24(sp)
ffffffff809102e4:	30 00 fe ab 	stw	$r31,48(sp)
ffffffff809102e8:	15 17 5b 07 	call	ra,($r27),ffffffff80915f40 <vprintfmt>
ffffffff809102ec:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809102f0:	30 00 1e 88 	ldw	$r0,48(sp)
ffffffff809102f4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809102f8:	54 7d bd fb 	ldi	$r29,32084($r29)
ffffffff809102fc:	a0 00 de fb 	ldi	sp,160(sp)
ffffffff80910300:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910304:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910308:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091030c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910310 <__panic>:
ffffffff80910310:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910314:	30 7d bd fb 	ldi	$r29,32048($r29)
ffffffff80910318:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091031c:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff80910320:	b8 62 41 88 	ldw	$r2,25272($r1)
ffffffff80910324:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80910328:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff8091032c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910330:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80910334:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910338:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff8091033c:	49 07 f2 43 	mov	$r18,$r9
ffffffff80910340:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80910344:	78 00 be ae 	stl	$r21,120(sp)
ffffffff80910348:	04 00 40 c0 	beq	$r2,ffffffff8091035c <__panic+0x4c>
ffffffff8091034c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910350:	80 81 7b 8f 	ldl	$r27,-32384($r27)
ffffffff80910354:	a2 ff 5b 07 	call	ra,($r27),ffffffff809101e0 <intr_disable>
ffffffff80910358:	ff ff ff 13 	br	ffffffff80910358 <__panic+0x48>
ffffffff8091035c:	01 00 5f f8 	ldi	$r2,1
ffffffff80910360:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910364:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910368:	52 07 f1 43 	mov	$r17,$r18
ffffffff8091036c:	51 07 f0 43 	mov	$r16,$r17
ffffffff80910370:	b8 62 41 a8 	stw	$r2,25272($r1)
ffffffff80910374:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff80910378:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091037c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff80910380:	18 00 3f f8 	ldi	$r1,24
ffffffff80910384:	40 e7 10 fa 	ldi	$r16,-6336($r16)
ffffffff80910388:	18 00 3e a8 	stw	$r1,24(sp)
ffffffff8091038c:	b8 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910390:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910394:	b0 7c bd fb 	ldi	$r29,31920($r29)
ffffffff80910398:	10 00 3e 8e 	ldl	$r17,16(sp)
ffffffff8091039c:	18 00 5e 8e 	ldl	$r18,24(sp)
ffffffff809103a0:	50 07 e9 43 	mov	$r9,$r16
ffffffff809103a4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103a8:	18 82 7b 8f 	ldl	$r27,-32232($r27)
ffffffff809103ac:	9c ff 5b 07 	call	ra,($r27),ffffffff80910220 <vcprintf>
ffffffff809103b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103b4:	90 7c bd fb 	ldi	$r29,31888($r29)
ffffffff809103b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103bc:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809103c0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103c4:	36 e7 10 fa 	ldi	$r16,-6346($r16)
ffffffff809103c8:	a9 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809103cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809103d0:	74 7c bd fb 	ldi	$r29,31860($r29)
ffffffff809103d4:	dd ff ff 13 	br	ffffffff8091034c <__panic+0x3c>
ffffffff809103d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809103dc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809103e0 <print_kerninfo>:
ffffffff809103e0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809103e4:	60 7c bd fb 	ldi	$r29,31840($r29)
ffffffff809103e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809103ec:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809103f0:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff809103f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809103f8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809103fc:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910400:	5c e7 10 fa 	ldi	$r16,-6308($r16)
ffffffff80910404:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910408:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff8091040c:	48 81 29 8d 	ldl	$r9,-32440($r9)
ffffffff80910410:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80910414:	88 80 4a 8d 	ldl	$r10,-32632($r10)
ffffffff80910418:	95 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff8091041c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910420:	24 7c bd fb 	ldi	$r29,31780($r29)
ffffffff80910424:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910428:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff8091042c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910430:	51 07 ea 43 	mov	$r10,$r17
ffffffff80910434:	75 e7 10 fa 	ldi	$r16,-6283($r16)
ffffffff80910438:	8d ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff8091043c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910440:	04 7c bd fb 	ldi	$r29,31748($r29)
ffffffff80910444:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff80910448:	60 81 31 8e 	ldl	$r17,-32416($r17)
ffffffff8091044c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910450:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910454:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910458:	92 e7 10 fa 	ldi	$r16,-6254($r16)
ffffffff8091045c:	84 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910460:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910464:	e0 7b bd fb 	ldi	$r29,31712($r29)
ffffffff80910468:	00 00 3d fe 	ldih	$r17,0($r29)
ffffffff8091046c:	a0 80 31 8e 	ldl	$r17,-32608($r17)
ffffffff80910470:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910474:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910478:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091047c:	af e7 10 fa 	ldi	$r16,-6225($r16)
ffffffff80910480:	7b ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910484:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910488:	bc 7b bd fb 	ldi	$r29,31676($r29)
ffffffff8091048c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80910490:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910494:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910498:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091049c:	cc e7 10 fa 	ldi	$r16,-6196($r16)
ffffffff809104a0:	73 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809104a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104a8:	ff 03 29 fa 	ldi	$r17,1023($r9)
ffffffff809104ac:	9c 7b bd fb 	ldi	$r29,31644($r29)
ffffffff809104b0:	31 01 2a 42 	subl	$r17,$r10,$r17
ffffffff809104b4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809104b8:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809104bc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809104c0:	ff 03 31 f8 	ldi	$r1,1023($r17)
ffffffff809104c4:	e9 e7 10 fa 	ldi	$r16,-6167($r16)
ffffffff809104c8:	31 12 21 46 	sellt	$r17,$r1,$r17,$r17
ffffffff809104cc:	51 49 21 4a 	sra	$r17,0xa,$r17
ffffffff809104d0:	67 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809104d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809104d8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809104dc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809104e0:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809104e4:	6c 7b bd fb 	ldi	$r29,31596($r29)
ffffffff809104e8:	20 00 de fb 	ldi	sp,32(sp)
ffffffff809104ec:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809104f0 <trap_init>:
ffffffff809104f0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809104f4:	50 7b bd fb 	ldi	$r29,31568($r29)
ffffffff809104f8:	50 07 fd 43 	mov	$r29,$r16
ffffffff809104fc:	37 00 00 02 	sys_call	0x37
ffffffff80910500:	51 07 ff 43 	clr	$r17
ffffffff80910504:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910508:	e0 80 10 8e 	ldl	$r16,-32544($r16)
ffffffff8091050c:	34 00 00 02 	sys_call	0x34
ffffffff80910510:	02 00 3f fa 	ldi	$r17,2
ffffffff80910514:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910518:	d8 81 10 8e 	ldl	$r16,-32296($r16)
ffffffff8091051c:	34 00 00 02 	sys_call	0x34
ffffffff80910520:	03 00 3f fa 	ldi	$r17,3
ffffffff80910524:	00 00 1d fe 	ldih	$r16,0($r29)
ffffffff80910528:	d0 81 10 8e 	ldl	$r16,-32304($r16)
ffffffff8091052c:	34 00 00 02 	sys_call	0x34
ffffffff80910530:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910534:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910538:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091053c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910540 <print_regs>:
ffffffff80910540:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910544:	00 7b bd fb 	ldi	$r29,31488($r29)
ffffffff80910548:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091054c:	00 00 30 8e 	ldl	$r17,0($r16)
ffffffff80910550:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910554:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910558:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff8091055c:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910560:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910564:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910568:	13 e8 10 fa 	ldi	$r16,-6125($r16)
ffffffff8091056c:	40 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910570:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910574:	d0 7a bd fb 	ldi	$r29,31440($r29)
ffffffff80910578:	08 00 29 8e 	ldl	$r17,8($r9)
ffffffff8091057c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910580:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910584:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910588:	28 e8 10 fa 	ldi	$r16,-6104($r16)
ffffffff8091058c:	38 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910590:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910594:	b0 7a bd fb 	ldi	$r29,31408($r29)
ffffffff80910598:	10 00 29 8e 	ldl	$r17,16($r9)
ffffffff8091059c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105a0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809105a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105a8:	3d e8 10 fa 	ldi	$r16,-6083($r16)
ffffffff809105ac:	30 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809105b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105b4:	90 7a bd fb 	ldi	$r29,31376($r29)
ffffffff809105b8:	18 00 29 8e 	ldl	$r17,24($r9)
ffffffff809105bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105c0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809105c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105c8:	52 e8 10 fa 	ldi	$r16,-6062($r16)
ffffffff809105cc:	28 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809105d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105d4:	70 7a bd fb 	ldi	$r29,31344($r29)
ffffffff809105d8:	20 00 29 8e 	ldl	$r17,32($r9)
ffffffff809105dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809105e0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809105e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809105e8:	67 e8 10 fa 	ldi	$r16,-6041($r16)
ffffffff809105ec:	20 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809105f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809105f4:	50 7a bd fb 	ldi	$r29,31312($r29)
ffffffff809105f8:	28 00 29 8e 	ldl	$r17,40($r9)
ffffffff809105fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910600:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910604:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910608:	7c e8 10 fa 	ldi	$r16,-6020($r16)
ffffffff8091060c:	18 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910610:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910614:	30 7a bd fb 	ldi	$r29,31280($r29)
ffffffff80910618:	30 00 29 8e 	ldl	$r17,48($r9)
ffffffff8091061c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910620:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910624:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910628:	91 e8 10 fa 	ldi	$r16,-5999($r16)
ffffffff8091062c:	10 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910630:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910634:	10 7a bd fb 	ldi	$r29,31248($r29)
ffffffff80910638:	38 00 29 8e 	ldl	$r17,56($r9)
ffffffff8091063c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910640:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910644:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910648:	a6 e8 10 fa 	ldi	$r16,-5978($r16)
ffffffff8091064c:	08 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910650:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910654:	f0 79 bd fb 	ldi	$r29,31216($r29)
ffffffff80910658:	40 00 29 8e 	ldl	$r17,64($r9)
ffffffff8091065c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910660:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910664:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910668:	bb e8 10 fa 	ldi	$r16,-5957($r16)
ffffffff8091066c:	00 ff 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910670:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910674:	d0 79 bd fb 	ldi	$r29,31184($r29)
ffffffff80910678:	48 00 29 8e 	ldl	$r17,72($r9)
ffffffff8091067c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910680:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910684:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910688:	d0 e8 10 fa 	ldi	$r16,-5936($r16)
ffffffff8091068c:	f8 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910690:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910694:	b0 79 bd fb 	ldi	$r29,31152($r29)
ffffffff80910698:	50 00 29 8e 	ldl	$r17,80($r9)
ffffffff8091069c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106a0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809106a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106a8:	e5 e8 10 fa 	ldi	$r16,-5915($r16)
ffffffff809106ac:	f0 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809106b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106b4:	90 79 bd fb 	ldi	$r29,31120($r29)
ffffffff809106b8:	58 00 29 8e 	ldl	$r17,88($r9)
ffffffff809106bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106c0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809106c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106c8:	fa e8 10 fa 	ldi	$r16,-5894($r16)
ffffffff809106cc:	e8 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809106d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106d4:	70 79 bd fb 	ldi	$r29,31088($r29)
ffffffff809106d8:	60 00 29 8e 	ldl	$r17,96($r9)
ffffffff809106dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809106e0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809106e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809106e8:	0f e9 10 fa 	ldi	$r16,-5873($r16)
ffffffff809106ec:	e0 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809106f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809106f4:	50 79 bd fb 	ldi	$r29,31056($r29)
ffffffff809106f8:	68 00 29 8e 	ldl	$r17,104($r9)
ffffffff809106fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910700:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910704:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910708:	24 e9 10 fa 	ldi	$r16,-5852($r16)
ffffffff8091070c:	d8 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910710:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910714:	30 79 bd fb 	ldi	$r29,31024($r29)
ffffffff80910718:	70 00 29 8e 	ldl	$r17,112($r9)
ffffffff8091071c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910720:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910724:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910728:	39 e9 10 fa 	ldi	$r16,-5831($r16)
ffffffff8091072c:	d0 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910730:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910734:	10 79 bd fb 	ldi	$r29,30992($r29)
ffffffff80910738:	78 00 29 8e 	ldl	$r17,120($r9)
ffffffff8091073c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910740:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910744:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910748:	4e e9 10 fa 	ldi	$r16,-5810($r16)
ffffffff8091074c:	c8 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910750:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910754:	f0 78 bd fb 	ldi	$r29,30960($r29)
ffffffff80910758:	08 01 29 8e 	ldl	$r17,264($r9)
ffffffff8091075c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910760:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910764:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910768:	63 e9 10 fa 	ldi	$r16,-5789($r16)
ffffffff8091076c:	c0 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910770:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910774:	d0 78 bd fb 	ldi	$r29,30928($r29)
ffffffff80910778:	10 01 29 8e 	ldl	$r17,272($r9)
ffffffff8091077c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910780:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910784:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910788:	78 e9 10 fa 	ldi	$r16,-5768($r16)
ffffffff8091078c:	b8 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910790:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910794:	b0 78 bd fb 	ldi	$r29,30896($r29)
ffffffff80910798:	18 01 29 8e 	ldl	$r17,280($r9)
ffffffff8091079c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107a0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809107a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107a8:	8d e9 10 fa 	ldi	$r16,-5747($r16)
ffffffff809107ac:	b0 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809107b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107b4:	90 78 bd fb 	ldi	$r29,30864($r29)
ffffffff809107b8:	98 00 29 8e 	ldl	$r17,152($r9)
ffffffff809107bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107c0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809107c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107c8:	a2 e9 10 fa 	ldi	$r16,-5726($r16)
ffffffff809107cc:	a8 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809107d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107d4:	70 78 bd fb 	ldi	$r29,30832($r29)
ffffffff809107d8:	a0 00 29 8e 	ldl	$r17,160($r9)
ffffffff809107dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809107e0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809107e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809107e8:	b7 e9 10 fa 	ldi	$r16,-5705($r16)
ffffffff809107ec:	a0 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809107f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809107f4:	50 78 bd fb 	ldi	$r29,30800($r29)
ffffffff809107f8:	a8 00 29 8e 	ldl	$r17,168($r9)
ffffffff809107fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910800:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910804:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910808:	cc e9 10 fa 	ldi	$r16,-5684($r16)
ffffffff8091080c:	98 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910810:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910814:	30 78 bd fb 	ldi	$r29,30768($r29)
ffffffff80910818:	b0 00 29 8e 	ldl	$r17,176($r9)
ffffffff8091081c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910820:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910824:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910828:	e1 e9 10 fa 	ldi	$r16,-5663($r16)
ffffffff8091082c:	90 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910830:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910834:	10 78 bd fb 	ldi	$r29,30736($r29)
ffffffff80910838:	b8 00 29 8e 	ldl	$r17,184($r9)
ffffffff8091083c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910840:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910844:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910848:	f6 e9 10 fa 	ldi	$r16,-5642($r16)
ffffffff8091084c:	88 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910850:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910854:	f0 77 bd fb 	ldi	$r29,30704($r29)
ffffffff80910858:	c0 00 29 8e 	ldl	$r17,192($r9)
ffffffff8091085c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910860:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910864:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910868:	0b ea 10 fa 	ldi	$r16,-5621($r16)
ffffffff8091086c:	80 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910870:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910874:	d0 77 bd fb 	ldi	$r29,30672($r29)
ffffffff80910878:	c8 00 29 8e 	ldl	$r17,200($r9)
ffffffff8091087c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910880:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910884:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910888:	20 ea 10 fa 	ldi	$r16,-5600($r16)
ffffffff8091088c:	78 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910890:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910894:	b0 77 bd fb 	ldi	$r29,30640($r29)
ffffffff80910898:	d0 00 29 8e 	ldl	$r17,208($r9)
ffffffff8091089c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108a0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809108a4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809108a8:	35 ea 10 fa 	ldi	$r16,-5579($r16)
ffffffff809108ac:	70 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809108b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108b4:	90 77 bd fb 	ldi	$r29,30608($r29)
ffffffff809108b8:	d8 00 29 8e 	ldl	$r17,216($r9)
ffffffff809108bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108c0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809108c4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809108c8:	4a ea 10 fa 	ldi	$r16,-5558($r16)
ffffffff809108cc:	68 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809108d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108d4:	70 77 bd fb 	ldi	$r29,30576($r29)
ffffffff809108d8:	e0 00 29 8e 	ldl	$r17,224($r9)
ffffffff809108dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809108e0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809108e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809108e8:	5f ea 10 fa 	ldi	$r16,-5537($r16)
ffffffff809108ec:	60 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809108f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809108f4:	50 77 bd fb 	ldi	$r29,30544($r29)
ffffffff809108f8:	00 01 29 8e 	ldl	$r17,256($r9)
ffffffff809108fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910900:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910904:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910908:	74 ea 10 fa 	ldi	$r16,-5516($r16)
ffffffff8091090c:	58 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910910:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910914:	30 77 bd fb 	ldi	$r29,30512($r29)
ffffffff80910918:	f8 00 29 8e 	ldl	$r17,248($r9)
ffffffff8091091c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910920:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910924:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910928:	89 ea 10 fa 	ldi	$r16,-5495($r16)
ffffffff8091092c:	50 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910930:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910934:	10 77 bd fb 	ldi	$r29,30480($r29)
ffffffff80910938:	f0 00 29 8e 	ldl	$r17,240($r9)
ffffffff8091093c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910940:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910944:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910948:	9e ea 10 fa 	ldi	$r16,-5474($r16)
ffffffff8091094c:	48 fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910950:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910954:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910958:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091095c:	f0 76 bd fb 	ldi	$r29,30448($r29)
ffffffff80910960:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910964:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910968:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091096c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910970 <do_entIF>:
ffffffff80910970:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910974:	d0 76 bd fb 	ldi	$r29,30416($r29)
ffffffff80910978:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff8091097c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910980:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910984:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910988:	49 07 f0 43 	mov	$r16,$r9
ffffffff8091098c:	24 00 20 c0 	beq	$r1,ffffffff80910a20 <do_entIF+0xb0>
ffffffff80910990:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff80910994:	12 00 20 c4 	bne	$r1,ffffffff809109e0 <do_entIF+0x70>
ffffffff80910998:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091099c:	88 81 7b 8f 	ldl	$r27,-32376($r27)
ffffffff809109a0:	e7 fe 5b 07 	call	ra,($r27),ffffffff80910540 <print_regs>
ffffffff809109a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809109a8:	9c 76 bd fb 	ldi	$r29,30364($r29)
ffffffff809109ac:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff809109b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809109b4:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809109b8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809109bc:	b3 ea 10 fa 	ldi	$r16,-5453($r16)
ffffffff809109c0:	2b fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809109c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809109c8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809109cc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809109d0:	7c 76 bd fb 	ldi	$r29,30332($r29)
ffffffff809109d4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809109d8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809109dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809109e0:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff809109e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809109e8:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809109ec:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809109f0:	de ea 10 fa 	ldi	$r16,-5410($r16)
ffffffff809109f4:	1e fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809109f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809109fc:	f8 00 49 8c 	ldl	$r2,248($r9)
ffffffff80910a00:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a04:	ff 43 3f fc 	ldih	$r1,17407
ffffffff80910a08:	48 76 bd fb 	ldi	$r29,30280($r29)
ffffffff80910a0c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a10:	5f 07 21 f8 	ldi	$r1,1887($r1)
ffffffff80910a14:	00 00 22 a8 	stw	$r1,0($r2)
ffffffff80910a18:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a1c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910a20:	f8 00 30 8e 	ldl	$r17,248($r16)
ffffffff80910a24:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a28:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910a2c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910a30:	c8 ea 10 fa 	ldi	$r16,-5432($r16)
ffffffff80910a34:	0e fe 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910a38:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a3c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910a40:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910a44:	08 76 bd fb 	ldi	$r29,30216($r29)
ffffffff80910a48:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910a4c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910a50 <interrupt_handler>:
ffffffff80910a50:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910a54:	f0 75 bd fb 	ldi	$r29,30192($r29)
ffffffff80910a58:	80 00 30 8c 	ldl	$r1,128($r16)
ffffffff80910a5c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910a60:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910a64:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910a68:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910a6c:	01 25 21 48 	cmpeq	$r1,0x9,$r1
ffffffff80910a70:	1f 00 20 c0 	beq	$r1,ffffffff80910af0 <interrupt_handler+0xa0>
ffffffff80910a74:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910a78:	f0 80 7b 8f 	ldl	$r27,-32528($r27)
ffffffff80910a7c:	d4 fd 5b 07 	call	ra,($r27),ffffffff809101d0 <clock_set_next_event>
ffffffff80910a80:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910a84:	c0 75 bd fb 	ldi	$r29,30144($r29)
ffffffff80910a88:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80910a8c:	00 82 63 8c 	ldl	$r3,-32256($r3)
ffffffff80910a90:	00 00 43 8c 	ldl	$r2,0($r3)
ffffffff80910a94:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff80910a98:	00 00 43 ac 	stl	$r2,0($r3)
ffffffff80910a9c:	ff ff 7d fc 	ldih	$r3,-1($r29)
ffffffff80910aa0:	21 69 40 48 	srl	$r2,0x3,$r1
ffffffff80910aa4:	48 eb 63 8c 	ldl	$r3,-5304($r3)
ffffffff80910aa8:	21 03 23 40 	umulh	$r1,$r3,$r1
ffffffff80910aac:	23 89 20 48 	srl	$r1,0x4,$r3
ffffffff80910ab0:	41 01 60 48 	s4addl	$r3,0,$r1
ffffffff80910ab4:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff80910ab8:	43 01 20 48 	s4addl	$r1,0,$r3
ffffffff80910abc:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff80910ac0:	43 01 20 48 	s4addl	$r1,0,$r3
ffffffff80910ac4:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff80910ac8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80910acc:	21 01 41 40 	subl	$r2,$r1,$r1
ffffffff80910ad0:	1b 00 20 c0 	beq	$r1,ffffffff80910b40 <interrupt_handler+0xf0>
ffffffff80910ad4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910ad8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910adc:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910ae0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910ae4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ae8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910aec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910af0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910af4:	88 81 7b 8f 	ldl	$r27,-32376($r27)
ffffffff80910af8:	91 fe 5b 07 	call	ra,($r27),ffffffff80910540 <print_regs>
ffffffff80910afc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b00:	44 75 bd fb 	ldi	$r29,30020($r29)
ffffffff80910b04:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff80910b08:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b0c:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910b10:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b14:	b3 ea 10 fa 	ldi	$r16,-5453($r16)
ffffffff80910b18:	d5 fd 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910b1c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b20:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910b24:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910b28:	24 75 bd fb 	ldi	$r29,29988($r29)
ffffffff80910b2c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910b30:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910b34:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b3c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910b40:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910b44:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910b48:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910b4c:	e8 03 3f fa 	ldi	$r17,1000
ffffffff80910b50:	f0 ea 10 fa 	ldi	$r16,-5392($r16)
ffffffff80910b54:	c6 fd 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910b58:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910b5c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910b60:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910b64:	e8 74 bd fb 	ldi	$r29,29928($r29)
ffffffff80910b68:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910b6c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80910b70 <exception_handler>:
ffffffff80910b70:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910b74:	d0 74 bd fb 	ldi	$r29,29904($r29)
ffffffff80910b78:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910b7c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910b80:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910b84:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910b88:	49 07 f0 43 	mov	$r16,$r9
ffffffff80910b8c:	02 45 20 48 	cmpeq	$r1,0x2,$r2
ffffffff80910b90:	1b 00 40 c4 	bne	$r2,ffffffff80910c00 <exception_handler+0x90>
ffffffff80910b94:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff80910b98:	11 00 20 c4 	bne	$r1,ffffffff80910be0 <exception_handler+0x70>
ffffffff80910b9c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910ba0:	88 81 7b 8f 	ldl	$r27,-32376($r27)
ffffffff80910ba4:	66 fe 5b 07 	call	ra,($r27),ffffffff80910540 <print_regs>
ffffffff80910ba8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910bac:	98 74 bd fb 	ldi	$r29,29848($r29)
ffffffff80910bb0:	e8 00 29 8e 	ldl	$r17,232($r9)
ffffffff80910bb4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910bb8:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910bbc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910bc0:	b3 ea 10 fa 	ldi	$r16,-5453($r16)
ffffffff80910bc4:	aa fd 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910bc8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910bcc:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910bd0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910bd4:	78 74 bd fb 	ldi	$r29,29816($r29)
ffffffff80910bd8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910bdc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910be0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910be4:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910be8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910bec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910bf0:	70 80 7b 8f 	ldl	$r27,-32656($r27)
ffffffff80910bf4:	5e ff fb 0f 	jmp	$r31,($r27),ffffffff80910970 <do_entIF>
ffffffff80910bf8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910bfc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910c00:	90 00 70 8e 	ldl	$r19,144($r16)
ffffffff80910c04:	f0 00 50 8e 	ldl	$r18,240($r16)
ffffffff80910c08:	52 00 3f f8 	ldi	$r1,82
ffffffff80910c0c:	f8 00 90 8e 	ldl	$r20,248($r16)
ffffffff80910c10:	80 00 30 8e 	ldl	$r17,128($r16)
ffffffff80910c14:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910c18:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910c1c:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80910c20:	fa ea 10 fa 	ldi	$r16,-5382($r16)
ffffffff80910c24:	13 25 60 4a 	cmpeq	$r19,0x1,$r19
ffffffff80910c28:	12 07 41 4a 	and	$r18,0x8,$r18
ffffffff80910c2c:	21 f4 6a 4e 	selne	$r19,0x57,$r1,$r1
ffffffff80910c30:	53 07 e1 43 	mov	$r1,$r19
ffffffff80910c34:	55 00 3f f8 	ldi	$r1,85
ffffffff80910c38:	21 60 49 4e 	seleq	$r18,0x4b,$r1,$r1
ffffffff80910c3c:	52 07 e1 43 	mov	$r1,$r18
ffffffff80910c40:	8b fd 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80910c44:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910c48:	fc 73 bd fb 	ldi	$r29,29692($r29)
ffffffff80910c4c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910c50:	78 82 21 8c 	ldl	$r1,-32136($r1)
ffffffff80910c54:	00 00 01 8e 	ldl	$r16,0($r1)
ffffffff80910c58:	0b 00 00 c2 	beq	$r16,ffffffff80910c88 <exception_handler+0x118>
ffffffff80910c5c:	80 00 49 8e 	ldl	$r18,128($r9)
ffffffff80910c60:	88 00 29 8e 	ldl	$r17,136($r9)
ffffffff80910c64:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910c68:	28 81 7b 8f 	ldl	$r27,-32472($r27)
ffffffff80910c6c:	c4 03 5b 07 	call	ra,($r27),ffffffff80911b80 <do_pgfault>
ffffffff80910c70:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910c74:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910c78:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910c7c:	d0 73 bd fb 	ldi	$r29,29648($r29)
ffffffff80910c80:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910c84:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910c88:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910c8c:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80910c90:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910c94:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910c98:	75 00 3f fa 	ldi	$r17,117
ffffffff80910c9c:	20 eb 52 fa 	ldi	$r18,-5344($r18)
ffffffff80910ca0:	37 eb 10 fa 	ldi	$r16,-5321($r16)
ffffffff80910ca4:	9a fd 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80910ca8:	5f 07 ff 43 	nop	
ffffffff80910cac:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910cb0 <trap>:
ffffffff80910cb0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910cb4:	90 73 bd fb 	ldi	$r29,29584($r29)
ffffffff80910cb8:	e8 00 30 8c 	ldl	$r1,232($r16)
ffffffff80910cbc:	04 00 20 c0 	beq	$r1,ffffffff80910cd0 <trap+0x20>
ffffffff80910cc0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910cc4:	90 82 7b 8f 	ldl	$r27,-32112($r27)
ffffffff80910cc8:	a9 ff fb 0f 	jmp	$r31,($r27),ffffffff80910b70 <exception_handler>
ffffffff80910ccc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910cd0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910cd4:	e0 81 7b 8f 	ldl	$r27,-32288($r27)
ffffffff80910cd8:	5d ff fb 0f 	jmp	$r31,($r27),ffffffff80910a50 <interrupt_handler>
ffffffff80910cdc:	5f 07 ff 43 	nop	

ffffffff80910ce0 <entInt>:
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
ffffffff80910d58:	00 00 1f fa 	ldi	$r16,0
ffffffff80910d5c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910d60:	10 82 5d 8f 	ldl	ra,-32240($r29)
ffffffff80910d64:	50 07 fe 43 	mov	sp,$r16
ffffffff80910d68:	c0 81 7d 8f 	ldl	$r27,-32320($r29)
ffffffff80910d6c:	d0 ff fb 07 	call	$r31,($r27),ffffffff80910cb0 <trap>

ffffffff80910d70 <entMM>:
ffffffff80910d70:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910d74:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910d78:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910d7c:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910d80:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910d84:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910d88:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910d8c:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910d90:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910d94:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910d98:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910d9c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910da0:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910da4:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910da8:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910dac:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910db0:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910db4:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910db8:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910dbc:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910dc0:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910dc4:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910dc8:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910dcc:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910dd0:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910dd4:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910dd8:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910ddc:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910de0:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910de4:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910de8:	02 00 1f fa 	ldi	$r16,2
ffffffff80910dec:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910df0:	10 82 5d 8f 	ldl	ra,-32240($r29)
ffffffff80910df4:	50 07 fe 43 	mov	sp,$r16
ffffffff80910df8:	c0 81 7d 8f 	ldl	$r27,-32320($r29)
ffffffff80910dfc:	ac ff fb 07 	call	$r31,($r27),ffffffff80910cb0 <trap>

ffffffff80910e00 <entIF>:
ffffffff80910e00:	10 ff de fb 	ldi	sp,-240(sp)
ffffffff80910e04:	00 00 1e ac 	stl	$r0,0(sp)
ffffffff80910e08:	08 00 3e ac 	stl	$r1,8(sp)
ffffffff80910e0c:	10 00 5e ac 	stl	$r2,16(sp)
ffffffff80910e10:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80910e14:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff80910e18:	28 00 be ac 	stl	$r5,40(sp)
ffffffff80910e1c:	30 00 de ac 	stl	$r6,48(sp)
ffffffff80910e20:	38 00 fe ac 	stl	$r7,56(sp)
ffffffff80910e24:	40 00 1e ad 	stl	$r8,64(sp)
ffffffff80910e28:	48 00 3e ad 	stl	$r9,72(sp)
ffffffff80910e2c:	50 00 5e ad 	stl	$r10,80(sp)
ffffffff80910e30:	58 00 7e ad 	stl	$r11,88(sp)
ffffffff80910e34:	60 00 9e ad 	stl	$r12,96(sp)
ffffffff80910e38:	68 00 be ad 	stl	$r13,104(sp)
ffffffff80910e3c:	70 00 de ad 	stl	$r14,112(sp)
ffffffff80910e40:	78 00 fe ad 	stl	fp,120(sp)
ffffffff80910e44:	80 00 1e ae 	stl	$r16,128(sp)
ffffffff80910e48:	88 00 3e ae 	stl	$r17,136(sp)
ffffffff80910e4c:	90 00 5e ae 	stl	$r18,144(sp)
ffffffff80910e50:	98 00 7e ae 	stl	$r19,152(sp)
ffffffff80910e54:	a0 00 9e ae 	stl	$r20,160(sp)
ffffffff80910e58:	a8 00 be ae 	stl	$r21,168(sp)
ffffffff80910e5c:	b0 00 de ae 	stl	$r22,176(sp)
ffffffff80910e60:	b8 00 fe ae 	stl	$r23,184(sp)
ffffffff80910e64:	c0 00 1e af 	stl	$r24,192(sp)
ffffffff80910e68:	c8 00 3e af 	stl	$r25,200(sp)
ffffffff80910e6c:	d0 00 5e af 	stl	ra,208(sp)
ffffffff80910e70:	d8 00 7e af 	stl	$r27,216(sp)
ffffffff80910e74:	e0 00 9e af 	stl	$r28,224(sp)
ffffffff80910e78:	03 00 1f fa 	ldi	$r16,3
ffffffff80910e7c:	e8 00 1e ae 	stl	$r16,232(sp)
ffffffff80910e80:	10 82 5d 8f 	ldl	ra,-32240($r29)
ffffffff80910e84:	50 07 fe 43 	mov	sp,$r16
ffffffff80910e88:	c0 81 7d 8f 	ldl	$r27,-32320($r29)
ffffffff80910e8c:	88 ff fb 07 	call	$r31,($r27),ffffffff80910cb0 <trap>

ffffffff80910e90 <__trapret>:
ffffffff80910e90:	00 00 1e 8c 	ldl	$r0,0(sp)
ffffffff80910e94:	08 00 3e 8c 	ldl	$r1,8(sp)
ffffffff80910e98:	10 00 5e 8c 	ldl	$r2,16(sp)
ffffffff80910e9c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80910ea0:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80910ea4:	28 00 be 8c 	ldl	$r5,40(sp)
ffffffff80910ea8:	30 00 de 8c 	ldl	$r6,48(sp)
ffffffff80910eac:	38 00 fe 8c 	ldl	$r7,56(sp)
ffffffff80910eb0:	40 00 1e 8d 	ldl	$r8,64(sp)
ffffffff80910eb4:	98 00 7e 8e 	ldl	$r19,152(sp)
ffffffff80910eb8:	a0 00 9e 8e 	ldl	$r20,160(sp)
ffffffff80910ebc:	a8 00 be 8e 	ldl	$r21,168(sp)
ffffffff80910ec0:	b0 00 de 8e 	ldl	$r22,176(sp)
ffffffff80910ec4:	b8 00 fe 8e 	ldl	$r23,184(sp)
ffffffff80910ec8:	c0 00 1e 8f 	ldl	$r24,192(sp)
ffffffff80910ecc:	c8 00 3e 8f 	ldl	$r25,200(sp)
ffffffff80910ed0:	d0 00 5e 8f 	ldl	ra,208(sp)
ffffffff80910ed4:	d8 00 7e 8f 	ldl	$r27,216(sp)
ffffffff80910ed8:	e0 00 9e 8f 	ldl	$r28,224(sp)
ffffffff80910edc:	f0 00 de fb 	ldi	sp,240(sp)
ffffffff80910ee0:	3f 00 00 02 	sys_call	0x3f
ffffffff80910ee4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910ee8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910eec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910ef0 <check_vma_overlap.isra.0.part.1>:
ffffffff80910ef0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910ef4:	50 71 bd fb 	ldi	$r29,29008($r29)
ffffffff80910ef8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910efc:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80910f00:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910f04:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80910f08:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80910f0c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80910f10:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910f14:	7b 00 3f fa 	ldi	$r17,123
ffffffff80910f18:	50 eb 73 fa 	ldi	$r19,-5296($r19)
ffffffff80910f1c:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff80910f20:	83 eb 10 fa 	ldi	$r16,-5245($r16)
ffffffff80910f24:	fa fc 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80910f28:	5f 07 ff 43 	nop	
ffffffff80910f2c:	00 00 00 00 	sys_call/b	0

ffffffff80910f30 <mm_create>:
ffffffff80910f30:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910f34:	10 71 bd fb 	ldi	$r29,28944($r29)
ffffffff80910f38:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910f3c:	30 82 7b 8f 	ldl	$r27,-32208($r27)
ffffffff80910f40:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80910f44:	30 00 1f fa 	ldi	$r16,48
ffffffff80910f48:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910f4c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80910f50:	fb 11 5b 07 	call	ra,($r27),ffffffff80915740 <kmalloc>
ffffffff80910f54:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910f58:	ec 70 bd fb 	ldi	$r29,28908($r29)
ffffffff80910f5c:	49 07 e0 43 	mov	$r0,$r9
ffffffff80910f60:	0b 00 00 c0 	beq	$r0,ffffffff80910f90 <mm_create+0x60>
ffffffff80910f64:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80910f68:	c0 80 21 8c 	ldl	$r1,-32576($r1)
ffffffff80910f6c:	08 00 09 ac 	stl	$r0,8($r9)
ffffffff80910f70:	00 00 09 ac 	stl	$r0,0($r9)
ffffffff80910f74:	10 00 e0 af 	stl	$r31,16($r0)
ffffffff80910f78:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff80910f7c:	00 00 21 88 	ldw	$r1,0($r1)
ffffffff80910f80:	20 00 e0 ab 	stw	$r31,32($r0)
ffffffff80910f84:	01 00 e1 43 	addw	$r31,$r1,$r1
ffffffff80910f88:	09 00 20 c4 	bne	$r1,ffffffff80910fb0 <mm_create+0x80>
ffffffff80910f8c:	28 00 e0 af 	stl	$r31,40($r0)
ffffffff80910f90:	40 07 e9 43 	mov	$r9,$r0
ffffffff80910f94:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910f98:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910f9c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910fa0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910fa4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910fa8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910fac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80910fb0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910fb4:	80 82 7b 8f 	ldl	$r27,-32128($r27)
ffffffff80910fb8:	50 07 e0 43 	mov	$r0,$r16
ffffffff80910fbc:	2c 07 5b 07 	call	ra,($r27),ffffffff80912c70 <swap_init_mm>
ffffffff80910fc0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80910fc4:	40 07 e9 43 	mov	$r9,$r0
ffffffff80910fc8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80910fcc:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80910fd0:	80 70 bd fb 	ldi	$r29,28800($r29)
ffffffff80910fd4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80910fd8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80910fdc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80910fe0 <vma_create>:
ffffffff80910fe0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80910fe4:	60 70 bd fb 	ldi	$r29,28768($r29)
ffffffff80910fe8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80910fec:	30 82 7b 8f 	ldl	$r27,-32208($r27)
ffffffff80910ff0:	e0 ff de fb 	ldi	sp,-32(sp)
ffffffff80910ff4:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80910ff8:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80910ffc:	49 07 f2 43 	mov	$r18,$r9
ffffffff80911000:	4a 07 f1 43 	mov	$r17,$r10
ffffffff80911004:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911008:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091100c:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80911010:	30 00 1f fa 	ldi	$r16,48
ffffffff80911014:	ca 11 5b 07 	call	ra,($r27),ffffffff80915740 <kmalloc>
ffffffff80911018:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091101c:	28 70 bd fb 	ldi	$r29,28712($r29)
ffffffff80911020:	03 00 00 c0 	beq	$r0,ffffffff80911030 <vma_create+0x50>
ffffffff80911024:	08 00 60 ad 	stl	$r11,8($r0)
ffffffff80911028:	10 00 40 ad 	stl	$r10,16($r0)
ffffffff8091102c:	18 00 20 ad 	stl	$r9,24($r0)
ffffffff80911030:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911034:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911038:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091103c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911040:	20 00 de fb 	ldi	sp,32(sp)
ffffffff80911044:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911048:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091104c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911050 <find_vma>:
ffffffff80911050:	17 00 00 c2 	beq	$r16,ffffffff809110b0 <find_vma+0x60>
ffffffff80911054:	10 00 10 8c 	ldl	$r0,16($r16)
ffffffff80911058:	03 00 00 c0 	beq	$r0,ffffffff80911068 <find_vma+0x18>
ffffffff8091105c:	08 00 20 8c 	ldl	$r1,8($r0)
ffffffff80911060:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80911064:	16 00 20 c4 	bne	$r1,ffffffff809110c0 <find_vma+0x70>
ffffffff80911068:	40 07 f0 43 	mov	$r16,$r0
ffffffff8091106c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911070:	08 00 00 8c 	ldl	$r0,8($r0)
ffffffff80911074:	01 05 00 42 	cmpeq	$r16,$r0,$r1
ffffffff80911078:	0d 00 20 c4 	bne	$r1,ffffffff809110b0 <find_vma+0x60>
ffffffff8091107c:	e8 ff 20 8c 	ldl	$r1,-24($r0)
ffffffff80911080:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80911084:	fa ff 3f c0 	beq	$r1,ffffffff80911070 <find_vma+0x20>
ffffffff80911088:	f0 ff 20 8c 	ldl	$r1,-16($r0)
ffffffff8091108c:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80911090:	f7 ff 3f c4 	bne	$r1,ffffffff80911070 <find_vma+0x20>
ffffffff80911094:	e0 ff 00 f8 	ldi	$r0,-32($r0)
ffffffff80911098:	05 00 00 c0 	beq	$r0,ffffffff809110b0 <find_vma+0x60>
ffffffff8091109c:	10 00 10 ac 	stl	$r0,16($r16)
ffffffff809110a0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809110a4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110a8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110b0:	40 07 ff 43 	clr	$r0
ffffffff809110b4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809110b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110c0:	10 00 20 8c 	ldl	$r1,16($r0)
ffffffff809110c4:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff809110c8:	e7 ff 3f c4 	bne	$r1,ffffffff80911068 <find_vma+0x18>
ffffffff809110cc:	10 00 10 ac 	stl	$r0,16($r16)
ffffffff809110d0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809110d4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809110dc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809110e0 <insert_vma_struct>:
ffffffff809110e0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809110e4:	60 6f bd fb 	ldi	$r29,28512($r29)
ffffffff809110e8:	08 00 b1 8c 	ldl	$r5,8($r17)
ffffffff809110ec:	10 00 d1 8c 	ldl	$r6,16($r17)
ffffffff809110f0:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809110f4:	42 07 f0 43 	mov	$r16,$r2
ffffffff809110f8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809110fc:	61 05 a6 40 	cmpult	$r5,$r6,$r1
ffffffff80911100:	07 00 20 c4 	bne	$r1,ffffffff80911120 <insert_vma_struct+0x40>
ffffffff80911104:	30 00 e0 13 	br	ffffffff809111c8 <insert_vma_struct+0xe8>
ffffffff80911108:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091110c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911110:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff80911114:	64 05 a3 40 	cmpult	$r5,$r3,$r4
ffffffff80911118:	1d 00 80 c4 	bne	$r4,ffffffff80911190 <insert_vma_struct+0xb0>
ffffffff8091111c:	42 07 e1 43 	mov	$r1,$r2
ffffffff80911120:	08 00 22 8c 	ldl	$r1,8($r2)
ffffffff80911124:	03 05 01 42 	cmpeq	$r16,$r1,$r3
ffffffff80911128:	f9 ff 7f c0 	beq	$r3,ffffffff80911110 <insert_vma_struct+0x30>
ffffffff8091112c:	03 05 50 40 	cmpeq	$r2,$r16,$r3
ffffffff80911130:	41 07 f0 43 	mov	$r16,$r1
ffffffff80911134:	35 00 60 c4 	bne	$r3,ffffffff8091120c <insert_vma_struct+0x12c>
ffffffff80911138:	f0 ff 82 8c 	ldl	$r4,-16($r2)
ffffffff8091113c:	e8 ff 62 8c 	ldl	$r3,-24($r2)
ffffffff80911140:	63 05 64 40 	cmpult	$r3,$r4,$r3
ffffffff80911144:	2e 00 60 c0 	beq	$r3,ffffffff80911200 <insert_vma_struct+0x120>
ffffffff80911148:	65 05 a4 40 	cmpult	$r5,$r4,$r5
ffffffff8091114c:	28 00 a0 c4 	bne	$r5,ffffffff809111f0 <insert_vma_struct+0x110>
ffffffff80911150:	03 05 01 42 	cmpeq	$r16,$r1,$r3
ffffffff80911154:	1a 00 60 c0 	beq	$r3,ffffffff809111c0 <insert_vma_struct+0xe0>
ffffffff80911158:	20 00 70 88 	ldw	$r3,32($r16)
ffffffff8091115c:	00 00 11 ae 	stl	$r16,0($r17)
ffffffff80911160:	20 00 91 f8 	ldi	$r4,32($r17)
ffffffff80911164:	00 00 81 ac 	stl	$r4,0($r1)
ffffffff80911168:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091116c:	08 00 82 ac 	stl	$r4,8($r2)
ffffffff80911170:	28 00 31 ac 	stl	$r1,40($r17)
ffffffff80911174:	20 00 51 ac 	stl	$r2,32($r17)
ffffffff80911178:	01 20 60 48 	addw	$r3,0x1,$r1
ffffffff8091117c:	20 00 30 a8 	stw	$r1,32($r16)
ffffffff80911180:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80911184:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911188:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091118c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911190:	04 05 50 40 	cmpeq	$r2,$r16,$r4
ffffffff80911194:	e8 ff 9f c0 	beq	$r4,ffffffff80911138 <insert_vma_struct+0x58>
ffffffff80911198:	86 05 c3 40 	cmpule	$r6,$r3,$r6
ffffffff8091119c:	14 00 c0 c0 	beq	$r6,ffffffff809111f0 <insert_vma_struct+0x110>
ffffffff809111a0:	f0 ff 81 8c 	ldl	$r4,-16($r1)
ffffffff809111a4:	83 05 83 40 	cmpule	$r4,$r3,$r3
ffffffff809111a8:	eb ff 7f c0 	beq	$r3,ffffffff80911158 <insert_vma_struct+0x78>
ffffffff809111ac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809111b0:	7d 00 3f fa 	ldi	$r17,125
ffffffff809111b4:	cc eb 73 fa 	ldi	$r19,-5172($r19)
ffffffff809111b8:	06 00 e0 13 	br	ffffffff809111d4 <insert_vma_struct+0xf4>
ffffffff809111bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809111c0:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff809111c4:	f4 ff ff 13 	br	ffffffff80911198 <insert_vma_struct+0xb8>
ffffffff809111c8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809111cc:	84 00 3f fa 	ldi	$r17,132
ffffffff809111d0:	91 eb 73 fa 	ldi	$r19,-5231($r19)
ffffffff809111d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809111d8:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff809111dc:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809111e0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809111e4:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff809111e8:	83 eb 10 fa 	ldi	$r16,-5245($r16)
ffffffff809111ec:	48 fc 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff809111f0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809111f4:	7c 00 3f fa 	ldi	$r17,124
ffffffff809111f8:	ad eb 73 fa 	ldi	$r19,-5203($r19)
ffffffff809111fc:	f5 ff ff 13 	br	ffffffff809111d4 <insert_vma_struct+0xf4>
ffffffff80911200:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911204:	a0 82 7b 8f 	ldl	$r27,-32096($r27)
ffffffff80911208:	39 ff 5b 07 	call	ra,($r27),ffffffff80910ef0 <check_vma_overlap.isra.0.part.1>
ffffffff8091120c:	41 07 e2 43 	mov	$r2,$r1
ffffffff80911210:	d1 ff ff 13 	br	ffffffff80911158 <insert_vma_struct+0x78>
ffffffff80911214:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911218:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091121c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911220 <mm_destroy>:
ffffffff80911220:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911224:	20 6e bd fb 	ldi	$r29,28192($r29)
ffffffff80911228:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091122c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911230:	49 07 f0 43 	mov	$r16,$r9
ffffffff80911234:	08 00 10 8e 	ldl	$r16,8($r16)
ffffffff80911238:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091123c:	01 05 30 41 	cmpeq	$r9,$r16,$r1
ffffffff80911240:	11 00 20 c4 	bne	$r1,ffffffff80911288 <mm_destroy+0x68>
ffffffff80911244:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911248:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091124c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911250:	08 00 30 8c 	ldl	$r1,8($r16)
ffffffff80911254:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff80911258:	30 00 3f fa 	ldi	$r17,48
ffffffff8091125c:	e0 ff 10 fa 	ldi	$r16,-32($r16)
ffffffff80911260:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911264:	80 80 7b 8f 	ldl	$r27,-32640($r27)
ffffffff80911268:	08 00 22 ac 	stl	$r1,8($r2)
ffffffff8091126c:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80911270:	73 11 5b 07 	call	ra,($r27),ffffffff80915840 <kfree>
ffffffff80911274:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911278:	08 00 09 8e 	ldl	$r16,8($r9)
ffffffff8091127c:	cc 6d bd fb 	ldi	$r29,28108($r29)
ffffffff80911280:	01 05 30 41 	cmpeq	$r9,$r16,$r1
ffffffff80911284:	f2 ff 3f c0 	beq	$r1,ffffffff80911250 <mm_destroy+0x30>
ffffffff80911288:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091128c:	80 80 7b 8f 	ldl	$r27,-32640($r27)
ffffffff80911290:	50 07 e9 43 	mov	$r9,$r16
ffffffff80911294:	30 00 3f fa 	ldi	$r17,48
ffffffff80911298:	69 11 5b 07 	call	ra,($r27),ffffffff80915840 <kfree>
ffffffff8091129c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809112a0:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809112a4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809112a8:	a4 6d bd fb 	ldi	$r29,28068($r29)
ffffffff809112ac:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809112b0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809112b4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809112bc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809112c0 <vmm_init>:
ffffffff809112c0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809112c4:	80 6d bd fb 	ldi	$r29,28032($r29)
ffffffff809112c8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809112cc:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff809112d0:	a0 ff de fb 	ldi	sp,-96(sp)
ffffffff809112d4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809112d8:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809112dc:	32 00 3f f9 	ldi	$r9,50
ffffffff809112e0:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809112e4:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809112e8:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809112ec:	28 00 be ad 	stl	$r13,40(sp)
ffffffff809112f0:	30 00 de ad 	stl	$r14,48(sp)
ffffffff809112f4:	38 00 fe ad 	stl	fp,56(sp)
ffffffff809112f8:	45 0b 5b 07 	call	ra,($r27),ffffffff80914010 <nr_free_pages>
ffffffff809112fc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911300:	44 6d bd fb 	ldi	$r29,27972($r29)
ffffffff80911304:	40 00 1e ac 	stl	$r0,64(sp)
ffffffff80911308:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091130c:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80911310:	3f 0b 5b 07 	call	ra,($r27),ffffffff80914010 <nr_free_pages>
ffffffff80911314:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911318:	2c 6d bd fb 	ldi	$r29,27948($r29)
ffffffff8091131c:	4c 07 e0 43 	mov	$r0,$r12
ffffffff80911320:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911324:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff80911328:	00 00 5b 07 	call	ra,($r27),ffffffff8091132c <vmm_init+0x6c>
ffffffff8091132c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911330:	14 6d bd fb 	ldi	$r29,27924($r29)
ffffffff80911334:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911338:	4a 07 e0 43 	mov	$r0,$r10
ffffffff8091133c:	c7 00 3f fa 	ldi	$r17,199
ffffffff80911340:	ea eb 73 fa 	ldi	$r19,-5142($r19)
ffffffff80911344:	0e 00 00 c4 	bne	$r0,ffffffff80911380 <vmm_init+0xc0>
ffffffff80911348:	19 00 e0 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff8091134c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911350:	08 00 20 ad 	stl	$r9,8($r0)
ffffffff80911354:	10 00 a0 ad 	stl	$r13,16($r0)
ffffffff80911358:	fb ff 29 f9 	ldi	$r9,-5($r9)
ffffffff8091135c:	51 07 e0 43 	mov	$r0,$r17
ffffffff80911360:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911364:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff80911368:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091136c:	f0 81 7b 8f 	ldl	$r27,-32272($r27)
ffffffff80911370:	5b ff 5b 07 	call	ra,($r27),ffffffff809110e0 <insert_vma_struct>
ffffffff80911374:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911378:	cc 6c bd fb 	ldi	$r29,27852($r29)
ffffffff8091137c:	14 00 20 c1 	beq	$r9,ffffffff809113d0 <vmm_init+0x110>
ffffffff80911380:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911384:	30 82 7b 8f 	ldl	$r27,-32208($r27)
ffffffff80911388:	30 00 1f fa 	ldi	$r16,48
ffffffff8091138c:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff80911390:	eb 10 5b 07 	call	ra,($r27),ffffffff80915740 <kmalloc>
ffffffff80911394:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911398:	ac 6c bd fb 	ldi	$r29,27820($r29)
ffffffff8091139c:	ec ff 1f c4 	bne	$r0,ffffffff80911350 <vmm_init+0x90>
ffffffff809113a0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809113a4:	ce 00 3f fa 	ldi	$r17,206
ffffffff809113a8:	30 ee 73 fa 	ldi	$r19,-4560($r19)
ffffffff809113ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809113b0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809113b4:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff809113b8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809113bc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809113c0:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff809113c4:	83 eb 10 fa 	ldi	$r16,-5245($r16)
ffffffff809113c8:	d1 fb 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff809113cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809113d0:	37 00 3f f9 	ldi	$r9,55
ffffffff809113d4:	0f 00 e0 13 	br	ffffffff80911414 <vmm_init+0x154>
ffffffff809113d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809113dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809113e0:	08 00 20 ad 	stl	$r9,8($r0)
ffffffff809113e4:	10 00 a0 ad 	stl	$r13,16($r0)
ffffffff809113e8:	51 07 e0 43 	mov	$r0,$r17
ffffffff809113ec:	50 07 ea 43 	mov	$r10,$r16
ffffffff809113f0:	18 00 e0 af 	stl	$r31,24($r0)
ffffffff809113f4:	05 00 29 f9 	ldi	$r9,5($r9)
ffffffff809113f8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809113fc:	f0 81 7b 8f 	ldl	$r27,-32272($r27)
ffffffff80911400:	37 ff 5b 07 	call	ra,($r27),ffffffff809110e0 <insert_vma_struct>
ffffffff80911404:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911408:	3c 6c bd fb 	ldi	$r29,27708($r29)
ffffffff8091140c:	07 fe 29 f8 	ldi	$r1,-505($r9)
ffffffff80911410:	0f 00 20 c0 	beq	$r1,ffffffff80911450 <vmm_init+0x190>
ffffffff80911414:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911418:	30 82 7b 8f 	ldl	$r27,-32208($r27)
ffffffff8091141c:	30 00 1f fa 	ldi	$r16,48
ffffffff80911420:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff80911424:	c6 10 5b 07 	call	ra,($r27),ffffffff80915740 <kmalloc>
ffffffff80911428:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091142c:	18 6c bd fb 	ldi	$r29,27672($r29)
ffffffff80911430:	eb ff 1f c4 	bne	$r0,ffffffff809113e0 <vmm_init+0x120>
ffffffff80911434:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911438:	d4 00 3f fa 	ldi	$r17,212
ffffffff8091143c:	30 ee 73 fa 	ldi	$r19,-4560($r19)
ffffffff80911440:	db ff ff 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff80911444:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911448:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091144c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911450:	08 00 2a 8c 	ldl	$r1,8($r10)
ffffffff80911454:	07 00 5f f8 	ldi	$r2,7
ffffffff80911458:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091145c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911460:	03 05 41 41 	cmpeq	$r10,$r1,$r3
ffffffff80911464:	9a 01 60 c4 	bne	$r3,ffffffff80911ad0 <vmm_init+0x810>
ffffffff80911468:	e8 ff 61 8c 	ldl	$r3,-24($r1)
ffffffff8091146c:	fe ff 82 f8 	ldi	$r4,-2($r2)
ffffffff80911470:	03 05 64 40 	cmpeq	$r3,$r4,$r3
ffffffff80911474:	8a 01 60 c0 	beq	$r3,ffffffff80911aa0 <vmm_init+0x7e0>
ffffffff80911478:	f0 ff 61 8c 	ldl	$r3,-16($r1)
ffffffff8091147c:	03 05 62 40 	cmpeq	$r3,$r2,$r3
ffffffff80911480:	87 01 60 c0 	beq	$r3,ffffffff80911aa0 <vmm_init+0x7e0>
ffffffff80911484:	05 00 42 f8 	ldi	$r2,5($r2)
ffffffff80911488:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff8091148c:	05 fe 62 f8 	ldi	$r3,-507($r2)
ffffffff80911490:	f3 ff 7f c4 	bne	$r3,ffffffff80911460 <vmm_init+0x1a0>
ffffffff80911494:	05 00 3f f9 	ldi	$r9,5
ffffffff80911498:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091149c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809114a0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809114a4:	50 07 ea 43 	mov	$r10,$r16
ffffffff809114a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809114ac:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff809114b0:	00 00 5b 07 	call	ra,($r27),ffffffff809114b4 <vmm_init+0x1f4>
ffffffff809114b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809114b8:	8c 6b bd fb 	ldi	$r29,27532($r29)
ffffffff809114bc:	4f 07 e0 43 	mov	$r0,fp
ffffffff809114c0:	93 01 00 c0 	beq	$r0,ffffffff80911b10 <vmm_init+0x850>
ffffffff809114c4:	01 00 29 fa 	ldi	$r17,1($r9)
ffffffff809114c8:	50 07 ea 43 	mov	$r10,$r16
ffffffff809114cc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809114d0:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff809114d4:	00 00 5b 07 	call	ra,($r27),ffffffff809114d8 <vmm_init+0x218>
ffffffff809114d8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809114dc:	68 6b bd fb 	ldi	$r29,27496($r29)
ffffffff809114e0:	4e 07 e0 43 	mov	$r0,$r14
ffffffff809114e4:	86 01 00 c0 	beq	$r0,ffffffff80911b00 <vmm_init+0x840>
ffffffff809114e8:	02 00 a9 f9 	ldi	$r13,2($r9)
ffffffff809114ec:	50 07 ea 43 	mov	$r10,$r16
ffffffff809114f0:	51 07 ed 43 	mov	$r13,$r17
ffffffff809114f4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809114f8:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff809114fc:	00 00 5b 07 	call	ra,($r27),ffffffff80911500 <vmm_init+0x240>
ffffffff80911500:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911504:	40 6b bd fb 	ldi	$r29,27456($r29)
ffffffff80911508:	79 01 00 c4 	bne	$r0,ffffffff80911af0 <vmm_init+0x830>
ffffffff8091150c:	03 00 29 fa 	ldi	$r17,3($r9)
ffffffff80911510:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911514:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911518:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff8091151c:	00 00 5b 07 	call	ra,($r27),ffffffff80911520 <vmm_init+0x260>
ffffffff80911520:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911524:	20 6b bd fb 	ldi	$r29,27424($r29)
ffffffff80911528:	6d 01 00 c4 	bne	$r0,ffffffff80911ae0 <vmm_init+0x820>
ffffffff8091152c:	04 00 29 fa 	ldi	$r17,4($r9)
ffffffff80911530:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911534:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911538:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff8091153c:	00 00 5b 07 	call	ra,($r27),ffffffff80911540 <vmm_init+0x280>
ffffffff80911540:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911544:	00 6b bd fb 	ldi	$r29,27392($r29)
ffffffff80911548:	75 01 00 c4 	bne	$r0,ffffffff80911b20 <vmm_init+0x860>
ffffffff8091154c:	08 00 2f 8c 	ldl	$r1,8(fp)
ffffffff80911550:	01 05 29 40 	cmpeq	$r1,$r9,$r1
ffffffff80911554:	56 01 20 c0 	beq	$r1,ffffffff80911ab0 <vmm_init+0x7f0>
ffffffff80911558:	10 00 6f 8c 	ldl	$r3,16(fp)
ffffffff8091155c:	0d 05 6d 40 	cmpeq	$r3,$r13,$r13
ffffffff80911560:	53 01 a0 c1 	beq	$r13,ffffffff80911ab0 <vmm_init+0x7f0>
ffffffff80911564:	08 00 4e 8c 	ldl	$r2,8($r14)
ffffffff80911568:	02 05 49 40 	cmpeq	$r2,$r9,$r2
ffffffff8091156c:	54 01 40 c0 	beq	$r2,ffffffff80911ac0 <vmm_init+0x800>
ffffffff80911570:	10 00 2e 8c 	ldl	$r1,16($r14)
ffffffff80911574:	01 05 23 40 	cmpeq	$r1,$r3,$r1
ffffffff80911578:	51 01 20 c0 	beq	$r1,ffffffff80911ac0 <vmm_init+0x800>
ffffffff8091157c:	05 00 29 f9 	ldi	$r9,5($r9)
ffffffff80911580:	07 fe 29 f8 	ldi	$r1,-505($r9)
ffffffff80911584:	c6 ff 3f c4 	bne	$r1,ffffffff809114a0 <vmm_init+0x1e0>
ffffffff80911588:	04 00 3f f9 	ldi	$r9,4
ffffffff8091158c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911590:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911594:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911598:	0d 00 e9 43 	addw	$r31,$r9,$r13
ffffffff8091159c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115a0:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff809115a4:	00 00 5b 07 	call	ra,($r27),ffffffff809115a8 <vmm_init+0x2e8>
ffffffff809115a8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809115ac:	98 6a bd fb 	ldi	$r29,27288($r29)
ffffffff809115b0:	17 00 00 c0 	beq	$r0,ffffffff80911610 <vmm_init+0x350>
ffffffff809115b4:	10 00 60 8e 	ldl	$r19,16($r0)
ffffffff809115b8:	08 00 40 8e 	ldl	$r18,8($r0)
ffffffff809115bc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809115c0:	51 07 ed 43 	mov	$r13,$r17
ffffffff809115c4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115c8:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809115cc:	dc ec 10 fa 	ldi	$r16,-4900($r16)
ffffffff809115d0:	27 fb 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809115d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809115d8:	6c 6a bd fb 	ldi	$r29,27244($r29)
ffffffff809115dc:	f6 00 3f fa 	ldi	$r17,246
ffffffff809115e0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809115e4:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff809115e8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809115ec:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809115f0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809115f4:	01 ed 73 fa 	ldi	$r19,-4863($r19)
ffffffff809115f8:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff809115fc:	83 eb 10 fa 	ldi	$r16,-5245($r16)
ffffffff80911600:	43 fb 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80911604:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911608:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091160c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911610:	ff ff 29 f9 	ldi	$r9,-1($r9)
ffffffff80911614:	01 00 29 f8 	ldi	$r1,1($r9)
ffffffff80911618:	dd ff 3f c4 	bne	$r1,ffffffff80911590 <vmm_init+0x2d0>
ffffffff8091161c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911620:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911624:	68 80 7b 8f 	ldl	$r27,-32664($r27)
ffffffff80911628:	fd fe 5b 07 	call	ra,($r27),ffffffff80911220 <mm_destroy>
ffffffff8091162c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911630:	14 6a bd fb 	ldi	$r29,27156($r29)
ffffffff80911634:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911638:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff8091163c:	74 0a 5b 07 	call	ra,($r27),ffffffff80914010 <nr_free_pages>
ffffffff80911640:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911644:	00 6a bd fb 	ldi	$r29,27136($r29)
ffffffff80911648:	0c 05 80 41 	cmpeq	$r12,$r0,$r12
ffffffff8091164c:	fb 00 3f fa 	ldi	$r17,251
ffffffff80911650:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911654:	15 ed 73 fa 	ldi	$r19,-4843($r19)
ffffffff80911658:	55 ff 9f c1 	beq	$r12,ffffffff809113b0 <vmm_init+0xf0>
ffffffff8091165c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911660:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911664:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911668:	00 00 bd fd 	ldih	$r13,0($r29)
ffffffff8091166c:	78 82 ad 8d 	ldl	$r13,-32136($r13)
ffffffff80911670:	3c ed 10 fa 	ldi	$r16,-4804($r16)
ffffffff80911674:	fe fa 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911678:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091167c:	c8 69 bd fb 	ldi	$r29,27080($r29)
ffffffff80911680:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911684:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80911688:	61 0a 5b 07 	call	ra,($r27),ffffffff80914010 <nr_free_pages>
ffffffff8091168c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911690:	b4 69 bd fb 	ldi	$r29,27060($r29)
ffffffff80911694:	48 00 1e ac 	stl	$r0,72(sp)
ffffffff80911698:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091169c:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff809116a0:	00 00 5b 07 	call	ra,($r27),ffffffff809116a4 <vmm_init+0x3e4>
ffffffff809116a4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809116a8:	9c 69 bd fb 	ldi	$r29,27036($r29)
ffffffff809116ac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809116b0:	00 00 0d ac 	stl	$r0,0($r13)
ffffffff809116b4:	49 07 e0 43 	mov	$r0,$r9
ffffffff809116b8:	0a 01 3f fa 	ldi	$r17,266
ffffffff809116bc:	5b ed 73 fa 	ldi	$r19,-4773($r19)
ffffffff809116c0:	3b ff 1f c0 	beq	$r0,ffffffff809113b0 <vmm_init+0xf0>
ffffffff809116c4:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff809116c8:	68 81 ce 8d 	ldl	$r14,-32408($r14)
ffffffff809116cc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809116d0:	0d 01 3f fa 	ldi	$r17,269
ffffffff809116d4:	18 fa 73 fa 	ldi	$r19,-1512($r19)
ffffffff809116d8:	00 00 4e 8d 	ldl	$r10,0($r14)
ffffffff809116dc:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff809116e0:	18 00 40 ad 	stl	$r10,24($r0)
ffffffff809116e4:	32 ff 3f c4 	bne	$r1,ffffffff809113b0 <vmm_init+0xf0>
ffffffff809116e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809116ec:	30 82 7b 8f 	ldl	$r27,-32208($r27)
ffffffff809116f0:	30 00 1f fa 	ldi	$r16,48
ffffffff809116f4:	12 10 5b 07 	call	ra,($r27),ffffffff80915740 <kmalloc>
ffffffff809116f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809116fc:	48 69 bd fb 	ldi	$r29,26952($r29)
ffffffff80911700:	4f 07 e0 43 	mov	$r0,fp
ffffffff80911704:	df 00 00 c0 	beq	$r0,ffffffff80911a84 <vmm_init+0x7c4>
ffffffff80911708:	80 00 3f fc 	ldih	$r1,128
ffffffff8091170c:	51 07 e0 43 	mov	$r0,$r17
ffffffff80911710:	50 07 e9 43 	mov	$r9,$r16
ffffffff80911714:	08 00 e0 af 	stl	$r31,8($r0)
ffffffff80911718:	10 00 20 ac 	stl	$r1,16($r0)
ffffffff8091171c:	02 00 3f f8 	ldi	$r1,2
ffffffff80911720:	18 00 20 ac 	stl	$r1,24($r0)
ffffffff80911724:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911728:	f0 81 7b 8f 	ldl	$r27,-32272($r27)
ffffffff8091172c:	6c fe 5b 07 	call	ra,($r27),ffffffff809110e0 <insert_vma_struct>
ffffffff80911730:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911734:	10 69 bd fb 	ldi	$r29,26896($r29)
ffffffff80911738:	00 01 3f fa 	ldi	$r17,256
ffffffff8091173c:	50 07 e9 43 	mov	$r9,$r16
ffffffff80911740:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911744:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff80911748:	00 00 5b 07 	call	ra,($r27),ffffffff8091174c <vmm_init+0x48c>
ffffffff8091174c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911750:	f4 68 bd fb 	ldi	$r29,26868($r29)
ffffffff80911754:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911758:	0f 05 e0 41 	cmpeq	fp,$r0,fp
ffffffff8091175c:	00 01 3f f8 	ldi	$r1,256
ffffffff80911760:	16 01 3f fa 	ldi	$r17,278
ffffffff80911764:	73 ed 73 fa 	ldi	$r19,-4749($r19)
ffffffff80911768:	11 ff ff c1 	beq	fp,ffffffff809113b0 <vmm_init+0xf0>
ffffffff8091176c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911770:	00 00 21 a0 	stb	$r1,0($r1)
ffffffff80911774:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80911778:	9c fe 41 f8 	ldi	$r2,-356($r1)
ffffffff8091177c:	fc ff 5f c4 	bne	$r2,ffffffff80911770 <vmm_init+0x4b0>
ffffffff80911780:	00 01 3f f8 	ldi	$r1,256
ffffffff80911784:	56 13 7f f8 	ldi	$r3,4950
ffffffff80911788:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091178c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911790:	00 00 41 80 	ldbu	$r2,0($r1)
ffffffff80911794:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80911798:	9c fe 81 f8 	ldi	$r4,-356($r1)
ffffffff8091179c:	42 0d e2 43 	sextb	$r2,$r2
ffffffff809117a0:	23 00 62 40 	subw	$r3,$r2,$r3
ffffffff809117a4:	fa ff 9f c4 	bne	$r4,ffffffff80911790 <vmm_init+0x4d0>
ffffffff809117a8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809117ac:	20 01 3f fa 	ldi	$r17,288
ffffffff809117b0:	8d ed 73 fa 	ldi	$r19,-4723($r19)
ffffffff809117b4:	fe fe 7f c4 	bne	$r3,ffffffff809113b0 <vmm_init+0xf0>
ffffffff809117b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809117bc:	b0 81 7b 8f 	ldl	$r27,-32336($r27)
ffffffff809117c0:	51 07 ff 43 	clr	$r17
ffffffff809117c4:	50 07 ea 43 	mov	$r10,$r16
ffffffff809117c8:	00 00 fd fd 	ldih	fp,0($r29)
ffffffff809117cc:	20 81 ef 8d 	ldl	fp,-32480(fp)
ffffffff809117d0:	3b 0b 5b 07 	call	ra,($r27),ffffffff809144c0 <page_remove>
ffffffff809117d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809117d8:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff809117dc:	00 f0 9f fc 	ldih	$r4,-4096
ffffffff809117e0:	00 00 af 8c 	ldl	$r5,0(fp)
ffffffff809117e4:	6c 68 bd fb 	ldi	$r29,26732($r29)
ffffffff809117e8:	24 e9 81 48 	srl	$r4,0xf,$r4
ffffffff809117ec:	25 01 3f fa 	ldi	$r17,293
ffffffff809117f0:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809117f4:	21 e9 21 48 	srl	$r1,0xf,$r1
ffffffff809117f8:	13 07 24 40 	and	$r1,$r4,$r19
ffffffff809117fc:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80911800:	61 05 25 40 	cmpult	$r1,$r5,$r1
ffffffff80911804:	d3 00 20 c0 	beq	$r1,ffffffff80911b54 <vmm_init+0x894>
ffffffff80911808:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff8091180c:	f8 80 ce 8d 	ldl	$r14,-32520($r14)
ffffffff80911810:	26 01 3f fa 	ldi	$r17,294
ffffffff80911814:	00 00 6e 8c 	ldl	$r3,0($r14)
ffffffff80911818:	0b 01 63 42 	addl	$r19,$r3,$r11
ffffffff8091181c:	00 00 4b 8c 	ldl	$r2,0($r11)
ffffffff80911820:	22 e9 41 48 	srl	$r2,0xf,$r2
ffffffff80911824:	13 07 44 40 	and	$r2,$r4,$r19
ffffffff80911828:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff8091182c:	82 05 a2 40 	cmpule	$r5,$r2,$r2
ffffffff80911830:	c8 00 40 c4 	bne	$r2,ffffffff80911b54 <vmm_init+0x894>
ffffffff80911834:	02 01 73 40 	addl	$r3,$r19,$r2
ffffffff80911838:	00 00 62 8e 	ldl	$r19,0($r2)
ffffffff8091183c:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80911840:	13 07 64 42 	and	$r19,$r4,$r19
ffffffff80911844:	26 a9 61 4a 	srl	$r19,0xd,$r6
ffffffff80911848:	84 05 a6 40 	cmpule	$r5,$r6,$r4
ffffffff8091184c:	c0 00 80 c4 	bne	$r4,ffffffff80911b50 <vmm_init+0x890>
ffffffff80911850:	00 80 9f fc 	ldih	$r4,-32768
ffffffff80911854:	03 01 73 40 	addl	$r3,$r19,$r3
ffffffff80911858:	ff ff 84 f8 	ldi	$r4,-1($r4)
ffffffff8091185c:	84 05 64 40 	cmpule	$r3,$r4,$r4
ffffffff80911860:	06 00 80 c4 	bne	$r4,ffffffff8091187c <vmm_init+0x5bc>
ffffffff80911864:	01 00 9f f8 	ldi	$r4,1
ffffffff80911868:	04 e9 83 48 	sll	$r4,0x1f,$r4
ffffffff8091186c:	03 01 64 40 	addl	$r3,$r4,$r3
ffffffff80911870:	26 a9 61 48 	srl	$r3,0xd,$r6
ffffffff80911874:	85 05 a6 40 	cmpule	$r5,$r6,$r5
ffffffff80911878:	ad 00 a0 c4 	bne	$r5,ffffffff80911b30 <vmm_init+0x870>
ffffffff8091187c:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80911880:	88 82 8c 8d 	ldl	$r12,-32120($r12)
ffffffff80911884:	83 01 c0 48 	s8addl	$r6,0,$r3
ffffffff80911888:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091188c:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80911890:	01 00 3f fa 	ldi	$r17,1
ffffffff80911894:	03 01 66 40 	addl	$r3,$r6,$r3
ffffffff80911898:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff8091189c:	00 00 0c 8e 	ldl	$r16,0($r12)
ffffffff809118a0:	50 00 5e ac 	stl	$r2,80(sp)
ffffffff809118a4:	10 01 03 42 	addl	$r16,$r3,$r16
ffffffff809118a8:	c5 09 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff809118ac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809118b0:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff809118b4:	00 80 7f fc 	ldih	$r3,-32768
ffffffff809118b8:	94 67 bd fb 	ldi	$r29,26516($r29)
ffffffff809118bc:	ff ff 63 f8 	ldi	$r3,-1($r3)
ffffffff809118c0:	83 05 43 40 	cmpule	$r2,$r3,$r3
ffffffff809118c4:	6b 00 60 c0 	beq	$r3,ffffffff80911a74 <vmm_init+0x7b4>
ffffffff809118c8:	00 00 6e 8c 	ldl	$r3,0($r14)
ffffffff809118cc:	22 01 43 40 	subl	$r2,$r3,$r2
ffffffff809118d0:	00 00 6f 8c 	ldl	$r3,0(fp)
ffffffff809118d4:	22 a9 41 48 	srl	$r2,0xd,$r2
ffffffff809118d8:	63 05 43 40 	cmpult	$r2,$r3,$r3
ffffffff809118dc:	94 00 60 c0 	beq	$r3,ffffffff80911b30 <vmm_init+0x870>
ffffffff809118e0:	83 01 40 48 	s8addl	$r2,0,$r3
ffffffff809118e4:	00 00 0c 8e 	ldl	$r16,0($r12)
ffffffff809118e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809118ec:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff809118f0:	01 00 3f fa 	ldi	$r17,1
ffffffff809118f4:	02 01 62 40 	addl	$r3,$r2,$r2
ffffffff809118f8:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff809118fc:	10 01 02 42 	addl	$r16,$r2,$r16
ffffffff80911900:	af 09 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80911904:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911908:	00 80 5f fc 	ldih	$r2,-32768
ffffffff8091190c:	3c 67 bd fb 	ldi	$r29,26428($r29)
ffffffff80911910:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff80911914:	82 05 62 41 	cmpule	$r11,$r2,$r2
ffffffff80911918:	5e 00 40 c4 	bne	$r2,ffffffff80911a94 <vmm_init+0x7d4>
ffffffff8091191c:	01 00 5f f8 	ldi	$r2,1
ffffffff80911920:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff80911924:	01 01 62 41 	addl	$r11,$r2,$r1
ffffffff80911928:	00 00 4f 8c 	ldl	$r2,0(fp)
ffffffff8091192c:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80911930:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80911934:	7e 00 40 c0 	beq	$r2,ffffffff80911b30 <vmm_init+0x870>
ffffffff80911938:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff8091193c:	00 00 0c 8e 	ldl	$r16,0($r12)
ffffffff80911940:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911944:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80911948:	01 00 3f fa 	ldi	$r17,1
ffffffff8091194c:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80911950:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80911954:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80911958:	99 09 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff8091195c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911960:	00 00 ea af 	stl	$r31,0($r10)
ffffffff80911964:	e4 66 bd fb 	ldi	$r29,26340($r29)
ffffffff80911968:	50 07 e9 43 	mov	$r9,$r16
ffffffff8091196c:	18 00 e9 af 	stl	$r31,24($r9)
ffffffff80911970:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911974:	68 80 7b 8f 	ldl	$r27,-32664($r27)
ffffffff80911978:	29 fe 5b 07 	call	ra,($r27),ffffffff80911220 <mm_destroy>
ffffffff8091197c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911980:	c4 66 bd fb 	ldi	$r29,26308($r29)
ffffffff80911984:	00 00 ed af 	stl	$r31,0($r13)
ffffffff80911988:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091198c:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80911990:	9f 09 5b 07 	call	ra,($r27),ffffffff80914010 <nr_free_pages>
ffffffff80911994:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911998:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff8091199c:	ac 66 bd fb 	ldi	$r29,26284($r29)
ffffffff809119a0:	34 01 3f fa 	ldi	$r17,308
ffffffff809119a4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809119a8:	15 ed 73 fa 	ldi	$r19,-4843($r19)
ffffffff809119ac:	0c 05 20 40 	cmpeq	$r1,$r0,$r12
ffffffff809119b0:	7f fe 9f c1 	beq	$r12,ffffffff809113b0 <vmm_init+0xf0>
ffffffff809119b4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809119b8:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809119bc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809119c0:	e6 ed 10 fa 	ldi	$r16,-4634($r16)
ffffffff809119c4:	2a fa 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809119c8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809119cc:	78 66 bd fb 	ldi	$r29,26232($r29)
ffffffff809119d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809119d4:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff809119d8:	8d 09 5b 07 	call	ra,($r27),ffffffff80914010 <nr_free_pages>
ffffffff809119dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809119e0:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff809119e4:	64 66 bd fb 	ldi	$r29,26212($r29)
ffffffff809119e8:	bc 00 3f fa 	ldi	$r17,188
ffffffff809119ec:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809119f0:	15 ed 73 fa 	ldi	$r19,-4843($r19)
ffffffff809119f4:	0b 05 20 40 	cmpeq	$r1,$r0,$r11
ffffffff809119f8:	6d fe 7f c1 	beq	$r11,ffffffff809113b0 <vmm_init+0xf0>
ffffffff809119fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a00:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80911a04:	82 09 5b 07 	call	ra,($r27),ffffffff80914010 <nr_free_pages>
ffffffff80911a08:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a0c:	38 66 bd fb 	ldi	$r29,26168($r29)
ffffffff80911a10:	51 07 e0 43 	mov	$r0,$r17
ffffffff80911a14:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a18:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911a1c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911a20:	02 ee 10 fa 	ldi	$r16,-4606($r16)
ffffffff80911a24:	12 fa 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911a28:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a2c:	18 66 bd fb 	ldi	$r29,26136($r29)
ffffffff80911a30:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911a34:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911a38:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911a3c:	18 ee 10 fa 	ldi	$r16,-4584($r16)
ffffffff80911a40:	0b fa 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911a44:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911a48:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911a4c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911a50:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911a54:	fc 65 bd fb 	ldi	$r29,26108($r29)
ffffffff80911a58:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911a5c:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80911a60:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80911a64:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80911a68:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80911a6c:	60 00 de fb 	ldi	sp,96(sp)
ffffffff80911a70:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911a74:	01 00 7f f8 	ldi	$r3,1
ffffffff80911a78:	03 e9 63 48 	sll	$r3,0x1f,$r3
ffffffff80911a7c:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80911a80:	93 ff ff 13 	br	ffffffff809118d0 <vmm_init+0x610>
ffffffff80911a84:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911a88:	11 01 3f fa 	ldi	$r17,273
ffffffff80911a8c:	30 ee 73 fa 	ldi	$r19,-4560($r19)
ffffffff80911a90:	47 fe ff 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff80911a94:	00 00 4e 8c 	ldl	$r2,0($r14)
ffffffff80911a98:	21 01 62 41 	subl	$r11,$r2,$r1
ffffffff80911a9c:	a2 ff ff 13 	br	ffffffff80911928 <vmm_init+0x668>
ffffffff80911aa0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911aa4:	dd 00 3f fa 	ldi	$r17,221
ffffffff80911aa8:	0c ec 73 fa 	ldi	$r19,-5108($r19)
ffffffff80911aac:	40 fe ff 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff80911ab0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911ab4:	ed 00 3f fa 	ldi	$r17,237
ffffffff80911ab8:	82 ec 73 fa 	ldi	$r19,-4990($r19)
ffffffff80911abc:	3c fe ff 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff80911ac0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911ac4:	ee 00 3f fa 	ldi	$r17,238
ffffffff80911ac8:	af ec 73 fa 	ldi	$r19,-4945($r19)
ffffffff80911acc:	38 fe ff 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff80911ad0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911ad4:	db 00 3f fa 	ldi	$r17,219
ffffffff80911ad8:	f5 eb 73 fa 	ldi	$r19,-5131($r19)
ffffffff80911adc:	34 fe ff 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff80911ae0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911ae4:	e9 00 3f fa 	ldi	$r17,233
ffffffff80911ae8:	68 ec 73 fa 	ldi	$r19,-5016($r19)
ffffffff80911aec:	30 fe ff 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff80911af0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911af4:	e7 00 3f fa 	ldi	$r17,231
ffffffff80911af8:	5b ec 73 fa 	ldi	$r19,-5029($r19)
ffffffff80911afc:	2c fe ff 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff80911b00:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911b04:	e5 00 3f fa 	ldi	$r17,229
ffffffff80911b08:	4e ec 73 fa 	ldi	$r19,-5042($r19)
ffffffff80911b0c:	28 fe ff 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff80911b10:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911b14:	e3 00 3f fa 	ldi	$r17,227
ffffffff80911b18:	41 ec 73 fa 	ldi	$r19,-5055($r19)
ffffffff80911b1c:	24 fe ff 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff80911b20:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911b24:	eb 00 3f fa 	ldi	$r17,235
ffffffff80911b28:	75 ec 73 fa 	ldi	$r19,-5003($r19)
ffffffff80911b2c:	20 fe ff 13 	br	ffffffff809113b0 <vmm_init+0xf0>
ffffffff80911b30:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911b34:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80911b38:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911b3c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911b40:	66 00 3f fa 	ldi	$r17,102
ffffffff80911b44:	b9 ed 52 fa 	ldi	$r18,-4679($r18)
ffffffff80911b48:	d8 ed 10 fa 	ldi	$r16,-4648($r16)
ffffffff80911b4c:	f0 f9 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80911b50:	27 01 3f fa 	ldi	$r17,295
ffffffff80911b54:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911b58:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80911b5c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80911b60:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911b64:	96 ed 52 fa 	ldi	$r18,-4714($r18)
ffffffff80911b68:	83 eb 10 fa 	ldi	$r16,-5245($r16)
ffffffff80911b6c:	e8 f9 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80911b70:	5f 07 ff 43 	nop	
ffffffff80911b74:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b78:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911b7c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911b80 <do_pgfault>:
ffffffff80911b80:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911b84:	c0 64 bd fb 	ldi	$r29,25792($r29)
ffffffff80911b88:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80911b8c:	51 07 f2 43 	mov	$r18,$r17
ffffffff80911b90:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911b94:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911b98:	49 07 f2 43 	mov	$r18,$r9
ffffffff80911b9c:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80911ba0:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911ba4:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80911ba8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911bac:	10 81 7b 8f 	ldl	$r27,-32496($r27)
ffffffff80911bb0:	00 00 5b 07 	call	ra,($r27),ffffffff80911bb4 <do_pgfault+0x34>
ffffffff80911bb4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911bb8:	8c 64 bd fb 	ldi	$r29,25740($r29)
ffffffff80911bbc:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80911bc0:	bc 62 22 88 	ldw	$r1,25276($r2)
ffffffff80911bc4:	01 20 20 48 	addw	$r1,0x1,$r1
ffffffff80911bc8:	bc 62 22 a8 	stw	$r1,25276($r2)
ffffffff80911bcc:	03 00 00 c0 	beq	$r0,ffffffff80911bdc <do_pgfault+0x5c>
ffffffff80911bd0:	08 00 20 8c 	ldl	$r1,8($r0)
ffffffff80911bd4:	81 05 29 40 	cmpule	$r1,$r9,$r1
ffffffff80911bd8:	09 00 20 c4 	bne	$r1,ffffffff80911c00 <do_pgfault+0x80>
ffffffff80911bdc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911be0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911be4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911be8:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911bec:	3c ee 10 fa 	ldi	$r16,-4548($r16)
ffffffff80911bf0:	9f f9 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911bf4:	ff ff ff 13 	br	ffffffff80911bf4 <do_pgfault+0x74>
ffffffff80911bf8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911bfc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911c00:	18 00 40 8d 	ldl	$r10,24($r0)
ffffffff80911c04:	01 00 3f fc 	ldih	$r1,1
ffffffff80911c08:	00 e0 5f f8 	ldi	$r2,-8192
ffffffff80911c0c:	18 00 0b 8e 	ldl	$r16,24($r11)
ffffffff80911c10:	09 07 22 41 	and	$r9,$r2,$r9
ffffffff80911c14:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911c18:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff80911c1c:	00 cc 41 f8 	ldi	$r2,-13312($r1)
ffffffff80911c20:	00 88 21 f8 	ldi	$r1,-30720($r1)
ffffffff80911c24:	01 00 5f fa 	ldi	$r18,1
ffffffff80911c28:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911c2c:	0a 47 40 49 	and	$r10,0x2,$r10
ffffffff80911c30:	42 00 41 45 	seleq	$r10,$r1,$r2,$r2
ffffffff80911c34:	4a 07 e2 43 	mov	$r2,$r10
ffffffff80911c38:	09 09 5b 07 	call	ra,($r27),ffffffff80914060 <get_pte>
ffffffff80911c3c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911c40:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff80911c44:	04 64 bd fb 	ldi	$r29,25604($r29)
ffffffff80911c48:	26 00 20 c0 	beq	$r1,ffffffff80911ce4 <do_pgfault+0x164>
ffffffff80911c4c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911c50:	c0 80 21 8c 	ldl	$r1,-32576($r1)
ffffffff80911c54:	00 00 21 88 	ldw	$r1,0($r1)
ffffffff80911c58:	01 00 e1 43 	addw	$r31,$r1,$r1
ffffffff80911c5c:	2a 00 20 c0 	beq	$r1,ffffffff80911d08 <do_pgfault+0x188>
ffffffff80911c60:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911c64:	a8 80 7b 8f 	ldl	$r27,-32600($r27)
ffffffff80911c68:	20 00 5e fa 	ldi	$r18,32(sp)
ffffffff80911c6c:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911c70:	50 07 eb 43 	mov	$r11,$r16
ffffffff80911c74:	20 00 fe af 	stl	$r31,32(sp)
ffffffff80911c78:	ad 04 5b 07 	call	ra,($r27),ffffffff80912f30 <swap_in>
ffffffff80911c7c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911c80:	c4 63 bd fb 	ldi	$r29,25540($r29)
ffffffff80911c84:	3a 00 00 c4 	bne	$r0,ffffffff80911d70 <do_pgfault+0x1f0>
ffffffff80911c88:	20 00 3e 8e 	ldl	$r17,32(sp)
ffffffff80911c8c:	18 00 0b 8e 	ldl	$r16,24($r11)
ffffffff80911c90:	53 07 ea 43 	mov	$r10,$r19
ffffffff80911c94:	52 07 e9 43 	mov	$r9,$r18
ffffffff80911c98:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911c9c:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80911ca0:	43 0a 5b 07 	call	ra,($r27),ffffffff809145b0 <page_insert>
ffffffff80911ca4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911ca8:	9c 63 bd fb 	ldi	$r29,25500($r29)
ffffffff80911cac:	4a 07 e0 43 	mov	$r0,$r10
ffffffff80911cb0:	26 00 00 c4 	bne	$r0,ffffffff80911d4c <do_pgfault+0x1cc>
ffffffff80911cb4:	20 00 5e 8e 	ldl	$r18,32(sp)
ffffffff80911cb8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911cbc:	a8 81 7b 8f 	ldl	$r27,-32344($r27)
ffffffff80911cc0:	01 00 7f fa 	ldi	$r19,1
ffffffff80911cc4:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911cc8:	50 07 eb 43 	mov	$r11,$r16
ffffffff80911ccc:	f8 03 5b 07 	call	ra,($r27),ffffffff80912cb0 <swap_map_swappable>
ffffffff80911cd0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911cd4:	20 00 3e 8c 	ldl	$r1,32(sp)
ffffffff80911cd8:	70 63 bd fb 	ldi	$r29,25456($r29)
ffffffff80911cdc:	40 00 21 ad 	stl	$r9,64($r1)
ffffffff80911ce0:	0a 00 e0 13 	br	ffffffff80911d0c <do_pgfault+0x18c>
ffffffff80911ce4:	18 00 0b 8e 	ldl	$r16,24($r11)
ffffffff80911ce8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911cec:	20 80 7b 8f 	ldl	$r27,-32736($r27)
ffffffff80911cf0:	52 07 ea 43 	mov	$r10,$r18
ffffffff80911cf4:	51 07 e9 43 	mov	$r9,$r17
ffffffff80911cf8:	31 0e 5b 07 	call	ra,($r27),ffffffff809155c0 <pgdir_alloc_page>
ffffffff80911cfc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911d00:	44 63 bd fb 	ldi	$r29,25412($r29)
ffffffff80911d04:	08 00 00 c0 	beq	$r0,ffffffff80911d28 <do_pgfault+0x1a8>
ffffffff80911d08:	4a 07 ff 43 	clr	$r10
ffffffff80911d0c:	40 07 ea 43 	mov	$r10,$r0
ffffffff80911d10:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80911d14:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80911d18:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80911d1c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80911d20:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80911d24:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911d28:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911d2c:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911d30:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911d34:	fc ff 5f f9 	ldi	$r10,-4
ffffffff80911d38:	6c ee 10 fa 	ldi	$r16,-4500($r16)
ffffffff80911d3c:	4c f9 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911d40:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911d44:	00 63 bd fb 	ldi	$r29,25344($r29)
ffffffff80911d48:	f0 ff ff 13 	br	ffffffff80911d0c <do_pgfault+0x18c>
ffffffff80911d4c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911d50:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911d54:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911d58:	b1 ee 10 fa 	ldi	$r16,-4431($r16)
ffffffff80911d5c:	44 f9 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911d60:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911d64:	e0 62 bd fb 	ldi	$r29,25312($r29)
ffffffff80911d68:	fc ff 5f f9 	ldi	$r10,-4
ffffffff80911d6c:	e7 ff ff 13 	br	ffffffff80911d0c <do_pgfault+0x18c>
ffffffff80911d70:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911d74:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911d78:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911d7c:	93 ee 10 fa 	ldi	$r16,-4461($r16)
ffffffff80911d80:	3b f9 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911d84:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911d88:	bc 62 bd fb 	ldi	$r29,25276($r29)
ffffffff80911d8c:	f6 ff ff 13 	br	ffffffff80911d68 <do_pgfault+0x1e8>

ffffffff80911d90 <_fifo_init_mm>:
ffffffff80911d90:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911d94:	b0 62 bd fb 	ldi	$r29,25264($r29)
ffffffff80911d98:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80911d9c:	40 80 21 8c 	ldl	$r1,-32704($r1)
ffffffff80911da0:	40 07 ff 43 	clr	$r0
ffffffff80911da4:	08 00 21 ac 	stl	$r1,8($r1)
ffffffff80911da8:	00 00 21 ac 	stl	$r1,0($r1)
ffffffff80911dac:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80911db0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911db4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911db8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911dbc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911dc0 <_fifo_init>:
ffffffff80911dc0:	40 07 ff 43 	clr	$r0
ffffffff80911dc4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911dc8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911dcc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911dd0 <_fifo_set_unswappable>:
ffffffff80911dd0:	40 07 ff 43 	clr	$r0
ffffffff80911dd4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911dd8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911ddc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911de0 <_fifo_tick_event>:
ffffffff80911de0:	40 07 ff 43 	clr	$r0
ffffffff80911de4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80911de8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80911dec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80911df0 <_fifo_check_swap>:
ffffffff80911df0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80911df4:	50 62 bd fb 	ldi	$r29,25168($r29)
ffffffff80911df8:	c0 ff de fb 	ldi	sp,-64(sp)
ffffffff80911dfc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911e00:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911e04:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80911e08:	ff ff 9d fd 	ldih	$r12,-1($r29)
ffffffff80911e0c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80911e10:	d3 ee 8c f9 	ldi	$r12,-4397($r12)
ffffffff80911e14:	00 00 5e af 	stl	ra,0(sp)
ffffffff80911e18:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80911e1c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80911e20:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80911e24:	50 07 ec 43 	mov	$r12,$r16
ffffffff80911e28:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80911e2c:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80911e30:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff80911e34:	60 82 29 8d 	ldl	$r9,-32160($r9)
ffffffff80911e38:	0d f9 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911e3c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911e40:	0c 00 3f f8 	ldi	$r1,12
ffffffff80911e44:	04 62 bd fb 	ldi	$r29,25092($r29)
ffffffff80911e48:	52 00 3f fa 	ldi	$r17,82
ffffffff80911e4c:	00 60 3f a0 	stb	$r1,24576($r31)
ffffffff80911e50:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80911e54:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80911e58:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff80911e5c:	b6 00 20 c0 	beq	$r1,ffffffff80912138 <_fifo_check_swap+0x348>
ffffffff80911e60:	ff ff 5d fd 	ldih	$r10,-1($r29)
ffffffff80911e64:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911e68:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911e6c:	1c ef 4a f9 	ldi	$r10,-4324($r10)
ffffffff80911e70:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911e74:	fe f8 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911e78:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911e7c:	0a 00 3f f8 	ldi	$r1,10
ffffffff80911e80:	c8 61 bd fb 	ldi	$r29,25032($r29)
ffffffff80911e84:	00 20 3f a0 	stb	$r1,8192($r31)
ffffffff80911e88:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80911e8c:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80911e90:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff80911e94:	a7 00 20 c0 	beq	$r1,ffffffff80912134 <_fifo_check_swap+0x344>
ffffffff80911e98:	ff ff bd fd 	ldih	$r13,-1($r29)
ffffffff80911e9c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911ea0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911ea4:	01 00 df fd 	ldih	$r14,1
ffffffff80911ea8:	42 ef ad f9 	ldi	$r13,-4286($r13)
ffffffff80911eac:	50 07 ed 43 	mov	$r13,$r16
ffffffff80911eb0:	ef f8 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911eb4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911eb8:	0d 00 3f f8 	ldi	$r1,13
ffffffff80911ebc:	8c 61 bd fb 	ldi	$r29,24972($r29)
ffffffff80911ec0:	58 00 3f fa 	ldi	$r17,88
ffffffff80911ec4:	00 80 2e a0 	stb	$r1,-32768($r14)
ffffffff80911ec8:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80911ecc:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80911ed0:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff80911ed4:	98 00 20 c0 	beq	$r1,ffffffff80912138 <_fifo_check_swap+0x348>
ffffffff80911ed8:	ff ff 7d fd 	ldih	$r11,-1($r29)
ffffffff80911edc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911ee0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911ee4:	0b 00 ff f9 	ldi	fp,11
ffffffff80911ee8:	68 ef 6b f9 	ldi	$r11,-4248($r11)
ffffffff80911eec:	50 07 eb 43 	mov	$r11,$r16
ffffffff80911ef0:	df f8 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911ef4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911ef8:	00 40 ff a1 	stb	fp,16384($r31)
ffffffff80911efc:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80911f00:	4c 61 bd fb 	ldi	$r29,24908($r29)
ffffffff80911f04:	5b 00 3f fa 	ldi	$r17,91
ffffffff80911f08:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80911f0c:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff80911f10:	89 00 20 c0 	beq	$r1,ffffffff80912138 <_fifo_check_swap+0x348>
ffffffff80911f14:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911f18:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911f1c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80911f20:	8e ef 10 fa 	ldi	$r16,-4210($r16)
ffffffff80911f24:	d2 f8 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911f28:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911f2c:	0e 00 3f f8 	ldi	$r1,14
ffffffff80911f30:	18 61 bd fb 	ldi	$r29,24856($r29)
ffffffff80911f34:	5e 00 3f fa 	ldi	$r17,94
ffffffff80911f38:	00 a0 2e a0 	stb	$r1,-24576($r14)
ffffffff80911f3c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911f40:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80911f44:	b4 ef 73 fa 	ldi	$r19,-4172($r19)
ffffffff80911f48:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80911f4c:	01 a5 20 48 	cmpeq	$r1,0x5,$r1
ffffffff80911f50:	7b 00 20 c0 	beq	$r1,ffffffff80912140 <_fifo_check_swap+0x350>
ffffffff80911f54:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911f58:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911f5c:	50 07 eb 43 	mov	$r11,$r16
ffffffff80911f60:	c3 f8 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911f64:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911f68:	00 40 ff a1 	stb	fp,16384($r31)
ffffffff80911f6c:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80911f70:	dc 60 bd fb 	ldi	$r29,24796($r29)
ffffffff80911f74:	61 00 3f fa 	ldi	$r17,97
ffffffff80911f78:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911f7c:	b4 ef 73 fa 	ldi	$r19,-4172($r19)
ffffffff80911f80:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80911f84:	01 a5 20 48 	cmpeq	$r1,0x5,$r1
ffffffff80911f88:	6d 00 20 c0 	beq	$r1,ffffffff80912140 <_fifo_check_swap+0x350>
ffffffff80911f8c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911f90:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911f94:	50 07 ea 43 	mov	$r10,$r16
ffffffff80911f98:	b5 f8 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911f9c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911fa0:	0a 00 3f f8 	ldi	$r1,10
ffffffff80911fa4:	a4 60 bd fb 	ldi	$r29,24740($r29)
ffffffff80911fa8:	64 00 3f fa 	ldi	$r17,100
ffffffff80911fac:	00 20 3f a0 	stb	$r1,8192($r31)
ffffffff80911fb0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911fb4:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80911fb8:	c3 ef 73 fa 	ldi	$r19,-4157($r19)
ffffffff80911fbc:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80911fc0:	01 c5 20 48 	cmpeq	$r1,0x6,$r1
ffffffff80911fc4:	5e 00 20 c0 	beq	$r1,ffffffff80912140 <_fifo_check_swap+0x350>
ffffffff80911fc8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80911fcc:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80911fd0:	50 07 eb 43 	mov	$r11,$r16
ffffffff80911fd4:	a6 f8 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80911fd8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80911fdc:	00 40 ff a1 	stb	fp,16384($r31)
ffffffff80911fe0:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80911fe4:	68 60 bd fb 	ldi	$r29,24680($r29)
ffffffff80911fe8:	67 00 3f fa 	ldi	$r17,103
ffffffff80911fec:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80911ff0:	d2 ef 73 fa 	ldi	$r19,-4142($r19)
ffffffff80911ff4:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80911ff8:	01 e5 20 48 	cmpeq	$r1,0x7,$r1
ffffffff80911ffc:	50 00 20 c0 	beq	$r1,ffffffff80912140 <_fifo_check_swap+0x350>
ffffffff80912000:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912004:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80912008:	50 07 ec 43 	mov	$r12,$r16
ffffffff8091200c:	98 f8 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912010:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912014:	0c 00 3f f8 	ldi	$r1,12
ffffffff80912018:	30 60 bd fb 	ldi	$r29,24624($r29)
ffffffff8091201c:	6a 00 3f fa 	ldi	$r17,106
ffffffff80912020:	00 60 3f a0 	stb	$r1,24576($r31)
ffffffff80912024:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912028:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff8091202c:	e1 ef 73 fa 	ldi	$r19,-4127($r19)
ffffffff80912030:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80912034:	01 05 21 48 	cmpeq	$r1,0x8,$r1
ffffffff80912038:	41 00 20 c0 	beq	$r1,ffffffff80912140 <_fifo_check_swap+0x350>
ffffffff8091203c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912040:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80912044:	50 07 ed 43 	mov	$r13,$r16
ffffffff80912048:	89 f8 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff8091204c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912050:	0d 00 3f f8 	ldi	$r1,13
ffffffff80912054:	f4 5f bd fb 	ldi	$r29,24564($r29)
ffffffff80912058:	6d 00 3f fa 	ldi	$r17,109
ffffffff8091205c:	00 80 2e a0 	stb	$r1,-32768($r14)
ffffffff80912060:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912064:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80912068:	f0 ef 73 fa 	ldi	$r19,-4112($r19)
ffffffff8091206c:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80912070:	01 25 21 48 	cmpeq	$r1,0x9,$r1
ffffffff80912074:	32 00 20 c0 	beq	$r1,ffffffff80912140 <_fifo_check_swap+0x350>
ffffffff80912078:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091207c:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80912080:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912084:	8e ef 10 fa 	ldi	$r16,-4210($r16)
ffffffff80912088:	79 f8 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff8091208c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912090:	01 00 3f fc 	ldih	$r1,1
ffffffff80912094:	0e 00 5f f8 	ldi	$r2,14
ffffffff80912098:	b4 5f bd fb 	ldi	$r29,24500($r29)
ffffffff8091209c:	70 00 3f fa 	ldi	$r17,112
ffffffff809120a0:	00 a0 41 a0 	stb	$r2,-24576($r1)
ffffffff809120a4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809120a8:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff809120ac:	ff ef 73 fa 	ldi	$r19,-4097($r19)
ffffffff809120b0:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff809120b4:	01 45 21 48 	cmpeq	$r1,0xa,$r1
ffffffff809120b8:	21 00 20 c0 	beq	$r1,ffffffff80912140 <_fifo_check_swap+0x350>
ffffffff809120bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809120c0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809120c4:	50 07 ea 43 	mov	$r10,$r16
ffffffff809120c8:	69 f8 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809120cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809120d0:	00 20 3f 80 	ldbu	$r1,8192($r31)
ffffffff809120d4:	74 5f bd fb 	ldi	$r29,24436($r29)
ffffffff809120d8:	72 00 3f fa 	ldi	$r17,114
ffffffff809120dc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809120e0:	0f f0 73 fa 	ldi	$r19,-4081($r19)
ffffffff809120e4:	01 45 21 48 	cmpeq	$r1,0xa,$r1
ffffffff809120e8:	15 00 20 c0 	beq	$r1,ffffffff80912140 <_fifo_check_swap+0x350>
ffffffff809120ec:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff809120f0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809120f4:	74 00 3f fa 	ldi	$r17,116
ffffffff809120f8:	30 f0 73 fa 	ldi	$r19,-4048($r19)
ffffffff809120fc:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80912100:	01 65 21 48 	cmpeq	$r1,0xb,$r1
ffffffff80912104:	0e 00 20 c0 	beq	$r1,ffffffff80912140 <_fifo_check_swap+0x350>
ffffffff80912108:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff8091210c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912110:	40 07 ff 43 	clr	$r0
ffffffff80912114:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912118:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff8091211c:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912120:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80912124:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80912128:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff8091212c:	40 00 de fb 	ldi	sp,64(sp)
ffffffff80912130:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912134:	55 00 3f fa 	ldi	$r17,85
ffffffff80912138:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091213c:	f9 ee 73 fa 	ldi	$r19,-4359($r19)
ffffffff80912140:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912144:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80912148:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff8091214c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912150:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff80912154:	08 ef 10 fa 	ldi	$r16,-4344($r16)
ffffffff80912158:	6d f8 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff8091215c:	5f 07 ff 43 	nop	

ffffffff80912160 <_fifo_swap_out_victim>:
ffffffff80912160:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912164:	e0 5e bd fb 	ldi	$r29,24288($r29)
ffffffff80912168:	28 00 50 8c 	ldl	$r2,40($r16)
ffffffff8091216c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80912170:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912174:	0f 00 40 c0 	beq	$r2,ffffffff809121b4 <_fifo_swap_out_victim+0x54>
ffffffff80912178:	20 00 40 c6 	bne	$r18,ffffffff809121fc <_fifo_swap_out_victim+0x9c>
ffffffff8091217c:	00 00 22 8c 	ldl	$r1,0($r2)
ffffffff80912180:	02 05 41 40 	cmpeq	$r2,$r1,$r2
ffffffff80912184:	19 00 40 c4 	bne	$r2,ffffffff809121ec <_fifo_swap_out_victim+0x8c>
ffffffff80912188:	00 00 61 8c 	ldl	$r3,0($r1)
ffffffff8091218c:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80912190:	d0 ff 21 f8 	ldi	$r1,-48($r1)
ffffffff80912194:	08 00 43 ac 	stl	$r2,8($r3)
ffffffff80912198:	00 00 62 ac 	stl	$r3,0($r2)
ffffffff8091219c:	0f 00 20 c0 	beq	$r1,ffffffff809121dc <_fifo_swap_out_victim+0x7c>
ffffffff809121a0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809121a4:	40 07 ff 43 	clr	$r0
ffffffff809121a8:	00 00 31 ac 	stl	$r1,0($r17)
ffffffff809121ac:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809121b0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809121b4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809121b8:	3f 00 3f fa 	ldi	$r17,63
ffffffff809121bc:	7a f0 73 fa 	ldi	$r19,-3974($r19)
ffffffff809121c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809121c4:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff809121c8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809121cc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809121d0:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff809121d4:	08 ef 10 fa 	ldi	$r16,-4344($r16)
ffffffff809121d8:	4d f8 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff809121dc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809121e0:	48 00 3f fa 	ldi	$r17,72
ffffffff809121e4:	5c f0 73 fa 	ldi	$r19,-4004($r19)
ffffffff809121e8:	f5 ff ff 13 	br	ffffffff809121c0 <_fifo_swap_out_victim+0x60>
ffffffff809121ec:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809121f0:	44 00 3f fa 	ldi	$r17,68
ffffffff809121f4:	4d f0 73 fa 	ldi	$r19,-4019($r19)
ffffffff809121f8:	f1 ff ff 13 	br	ffffffff809121c0 <_fifo_swap_out_victim+0x60>
ffffffff809121fc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912200:	40 00 3f fa 	ldi	$r17,64
ffffffff80912204:	40 f0 73 fa 	ldi	$r19,-4032($r19)
ffffffff80912208:	ed ff ff 13 	br	ffffffff809121c0 <_fifo_swap_out_victim+0x60>
ffffffff8091220c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912210 <_fifo_map_swappable>:
ffffffff80912210:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912214:	30 5e bd fb 	ldi	$r29,24112($r29)
ffffffff80912218:	28 00 30 8c 	ldl	$r1,40($r16)
ffffffff8091221c:	30 00 72 f8 	ldi	$r3,48($r18)
ffffffff80912220:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80912224:	02 05 60 48 	cmpeq	$r3,0,$r2
ffffffff80912228:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091222c:	04 05 20 48 	cmpeq	$r1,0,$r4
ffffffff80912230:	42 07 44 40 	or	$r2,$r4,$r2
ffffffff80912234:	09 00 40 c4 	bne	$r2,ffffffff8091225c <_fifo_map_swappable+0x4c>
ffffffff80912238:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff8091223c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912240:	40 07 ff 43 	clr	$r0
ffffffff80912244:	00 00 62 ac 	stl	$r3,0($r2)
ffffffff80912248:	08 00 61 ac 	stl	$r3,8($r1)
ffffffff8091224c:	38 00 52 ac 	stl	$r2,56($r18)
ffffffff80912250:	30 00 32 ac 	stl	$r1,48($r18)
ffffffff80912254:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912258:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091225c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912260:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80912264:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912268:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff8091226c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912270:	31 00 3f fa 	ldi	$r17,49
ffffffff80912274:	69 f0 73 fa 	ldi	$r19,-3991($r19)
ffffffff80912278:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff8091227c:	08 ef 10 fa 	ldi	$r16,-4344($r16)
ffffffff80912280:	23 f8 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80912284:	5f 07 ff 43 	nop	
ffffffff80912288:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091228c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912290 <swap_init>:
ffffffff80912290:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912294:	b0 5d bd fb 	ldi	$r29,23984($r29)
ffffffff80912298:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091229c:	d0 80 7b 8f 	ldl	$r27,-32560($r27)
ffffffff809122a0:	70 ff de fb 	ldi	sp,-144(sp)
ffffffff809122a4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809122a8:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809122ac:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809122b0:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809122b4:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809122b8:	28 00 be ad 	stl	$r13,40(sp)
ffffffff809122bc:	30 00 de ad 	stl	$r14,48(sp)
ffffffff809122c0:	38 00 fe ad 	stl	fp,56(sp)
ffffffff809122c4:	a6 0d 5b 07 	call	ra,($r27),ffffffff80915960 <swapfs_init>
ffffffff809122c8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809122cc:	78 5d bd fb 	ldi	$r29,23928($r29)
ffffffff809122d0:	00 01 5f fc 	ldih	$r2,256
ffffffff809122d4:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809122d8:	e8 81 21 8c 	ldl	$r1,-32280($r1)
ffffffff809122dc:	f8 ff 42 f8 	ldi	$r2,-8($r2)
ffffffff809122e0:	00 00 61 8e 	ldl	$r19,0($r1)
ffffffff809122e4:	f9 ff 33 f8 	ldi	$r1,-7($r19)
ffffffff809122e8:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff809122ec:	3d 02 20 c0 	beq	$r1,ffffffff80912be4 <swap_init+0x954>
ffffffff809122f0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809122f4:	50 80 21 8c 	ldl	$r1,-32688($r1)
ffffffff809122f8:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff809122fc:	08 00 61 8f 	ldl	$r27,8($r1)
ffffffff80912300:	c8 62 22 ac 	stl	$r1,25288($r2)
ffffffff80912304:	00 00 5b 07 	call	ra,($r27),ffffffff80912308 <swap_init+0x78>
ffffffff80912308:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091230c:	38 5d bd fb 	ldi	$r29,23864($r29)
ffffffff80912310:	40 00 1e ac 	stl	$r0,64(sp)
ffffffff80912314:	0e 00 00 c0 	beq	$r0,ffffffff80912350 <swap_init+0xc0>
ffffffff80912318:	40 00 1e 8c 	ldl	$r0,64(sp)
ffffffff8091231c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912320:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912324:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912328:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff8091232c:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912330:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80912334:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80912338:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff8091233c:	90 00 de fb 	ldi	sp,144(sp)
ffffffff80912340:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912344:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912348:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091234c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912350:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80912354:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912358:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff8091235c:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff80912360:	40 82 6b 8d 	ldl	$r11,-32192($r11)
ffffffff80912364:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80912368:	c8 62 23 8c 	ldl	$r1,25288($r3)
ffffffff8091236c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912370:	01 00 7f f8 	ldi	$r3,1
ffffffff80912374:	c0 62 62 a8 	stw	$r3,25280($r2)
ffffffff80912378:	c3 f0 10 fa 	ldi	$r16,-3901($r16)
ffffffff8091237c:	00 00 21 8e 	ldl	$r17,0($r1)
ffffffff80912380:	bb f7 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912384:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912388:	08 00 2b 8c 	ldl	$r1,8($r11)
ffffffff8091238c:	bc 5c bd fb 	ldi	$r29,23740($r29)
ffffffff80912390:	02 05 2b 40 	cmpeq	$r1,$r11,$r2
ffffffff80912394:	ed 01 40 c4 	bne	$r2,ffffffff80912b4c <swap_init+0x8bc>
ffffffff80912398:	e8 ff 41 88 	ldw	$r2,-24($r1)
ffffffff8091239c:	02 47 40 48 	and	$r2,0x2,$r2
ffffffff809123a0:	62 05 e2 43 	cmpult	$r31,$r2,$r2
ffffffff809123a4:	f7 01 40 c0 	beq	$r2,ffffffff80912b84 <swap_init+0x8f4>
ffffffff809123a8:	49 07 ff 43 	clr	$r9
ffffffff809123ac:	4a 07 ff 43 	clr	$r10
ffffffff809123b0:	06 00 e0 13 	br	ffffffff809123cc <swap_init+0x13c>
ffffffff809123b4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809123b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809123bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809123c0:	e8 ff 41 88 	ldw	$r2,-24($r1)
ffffffff809123c4:	02 47 40 48 	and	$r2,0x2,$r2
ffffffff809123c8:	ee 01 40 c0 	beq	$r2,ffffffff80912b84 <swap_init+0x8f4>
ffffffff809123cc:	f8 ff 61 88 	ldw	$r3,-8($r1)
ffffffff809123d0:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff809123d4:	0a 20 40 49 	addw	$r10,0x1,$r10
ffffffff809123d8:	02 05 2b 40 	cmpeq	$r1,$r11,$r2
ffffffff809123dc:	09 00 69 40 	addw	$r3,$r9,$r9
ffffffff809123e0:	f7 ff 5f c0 	beq	$r2,ffffffff809123c0 <swap_init+0x130>
ffffffff809123e4:	4c 07 e9 43 	mov	$r9,$r12
ffffffff809123e8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809123ec:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff809123f0:	07 07 5b 07 	call	ra,($r27),ffffffff80914010 <nr_free_pages>
ffffffff809123f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809123f8:	00 05 0c 40 	cmpeq	$r0,$r12,$r0
ffffffff809123fc:	4c 5c bd fb 	ldi	$r29,23628($r29)
ffffffff80912400:	d6 01 00 c0 	beq	$r0,ffffffff80912b5c <swap_init+0x8cc>
ffffffff80912404:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912408:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff8091240c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912410:	51 07 ea 43 	mov	$r10,$r17
ffffffff80912414:	52 07 e9 43 	mov	$r9,$r18
ffffffff80912418:	f0 f0 10 fa 	ldi	$r16,-3856($r16)
ffffffff8091241c:	94 f7 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912420:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912424:	20 5c bd fb 	ldi	$r29,23584($r29)
ffffffff80912428:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091242c:	28 80 7b 8f 	ldl	$r27,-32728($r27)
ffffffff80912430:	bf fa 5b 07 	call	ra,($r27),ffffffff80910f30 <mm_create>
ffffffff80912434:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912438:	0c 5c bd fb 	ldi	$r29,23564($r29)
ffffffff8091243c:	48 00 1e ac 	stl	$r0,72(sp)
ffffffff80912440:	bc 00 3f fa 	ldi	$r17,188
ffffffff80912444:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912448:	ea eb 73 fa 	ldi	$r19,-5142($r19)
ffffffff8091244c:	c6 01 00 c0 	beq	$r0,ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912450:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80912454:	78 82 42 8c 	ldl	$r2,-32136($r2)
ffffffff80912458:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091245c:	bf 00 3f fa 	ldi	$r17,191
ffffffff80912460:	16 f1 73 fa 	ldi	$r19,-3818($r19)
ffffffff80912464:	00 00 22 8c 	ldl	$r1,0($r2)
ffffffff80912468:	bf 01 20 c4 	bne	$r1,ffffffff80912b68 <swap_init+0x8d8>
ffffffff8091246c:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80912470:	68 81 42 8c 	ldl	$r2,-32408($r2)
ffffffff80912474:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff80912478:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091247c:	c4 00 3f fa 	ldi	$r17,196
ffffffff80912480:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80912484:	78 82 63 8c 	ldl	$r3,-32136($r3)
ffffffff80912488:	18 fa 73 fa 	ldi	$r19,-1512($r19)
ffffffff8091248c:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80912490:	00 00 23 ac 	stl	$r1,0($r3)
ffffffff80912494:	48 00 7e 8c 	ldl	$r3,72(sp)
ffffffff80912498:	00 00 22 8c 	ldl	$r1,0($r2)
ffffffff8091249c:	50 00 5e ac 	stl	$r2,80(sp)
ffffffff809124a0:	18 00 43 ac 	stl	$r2,24($r3)
ffffffff809124a4:	b0 01 20 c4 	bne	$r1,ffffffff80912b68 <swap_init+0x8d8>
ffffffff809124a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809124ac:	38 82 7b 8f 	ldl	$r27,-32200($r27)
ffffffff809124b0:	01 00 3f fe 	ldih	$r17,1
ffffffff809124b4:	03 00 5f fa 	ldi	$r18,3
ffffffff809124b8:	00 20 1f fa 	ldi	$r16,8192
ffffffff809124bc:	00 c0 31 fa 	ldi	$r17,-16384($r17)
ffffffff809124c0:	c7 fa 5b 07 	call	ra,($r27),ffffffff80910fe0 <vma_create>
ffffffff809124c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809124c8:	7c 5b bd fb 	ldi	$r29,23420($r29)
ffffffff809124cc:	51 07 e0 43 	mov	$r0,$r17
ffffffff809124d0:	d8 01 00 c0 	beq	$r0,ffffffff80912c34 <swap_init+0x9a4>
ffffffff809124d4:	48 00 1e 8e 	ldl	$r16,72(sp)
ffffffff809124d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809124dc:	f0 81 7b 8f 	ldl	$r27,-32272($r27)
ffffffff809124e0:	ff fa 5b 07 	call	ra,($r27),ffffffff809110e0 <insert_vma_struct>
ffffffff809124e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809124e8:	5c 5b bd fb 	ldi	$r29,23388($r29)
ffffffff809124ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809124f0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809124f4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809124f8:	2e f1 10 fa 	ldi	$r16,-3794($r16)
ffffffff809124fc:	5c f7 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912500:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912504:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff80912508:	40 5b bd fb 	ldi	$r29,23360($r29)
ffffffff8091250c:	00 20 3f fa 	ldi	$r17,8192
ffffffff80912510:	01 00 5f fa 	ldi	$r18,1
ffffffff80912514:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912518:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff8091251c:	18 00 01 8e 	ldl	$r16,24($r1)
ffffffff80912520:	cf 06 5b 07 	call	ra,($r27),ffffffff80914060 <get_pte>
ffffffff80912524:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912528:	1c 5b bd fb 	ldi	$r29,23324($r29)
ffffffff8091252c:	cf 00 3f fa 	ldi	$r17,207
ffffffff80912530:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912534:	62 f1 73 fa 	ldi	$r19,-3742($r19)
ffffffff80912538:	8b 01 00 c0 	beq	$r0,ffffffff80912b68 <swap_init+0x8d8>
ffffffff8091253c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912540:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80912544:	00 00 bd fd 	ldih	$r13,0($r29)
ffffffff80912548:	d8 80 ad 8d 	ldl	$r13,-32552($r13)
ffffffff8091254c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912550:	73 f1 10 fa 	ldi	$r16,-3725($r16)
ffffffff80912554:	46 f7 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912558:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091255c:	20 00 8d f9 	ldi	$r12,32($r13)
ffffffff80912560:	4e 07 ed 43 	mov	$r13,$r14
ffffffff80912564:	e8 5a bd fb 	ldi	$r29,23272($r29)
ffffffff80912568:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091256c:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80912570:	01 00 1f fa 	ldi	$r16,1
ffffffff80912574:	52 06 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80912578:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091257c:	00 00 0e ac 	stl	$r0,0($r14)
ffffffff80912580:	c8 5a bd fb 	ldi	$r29,23240($r29)
ffffffff80912584:	8f 01 00 c0 	beq	$r0,ffffffff80912bc4 <swap_init+0x934>
ffffffff80912588:	08 00 20 88 	ldw	$r1,8($r0)
ffffffff8091258c:	01 47 20 48 	and	$r1,0x2,$r1
ffffffff80912590:	90 01 20 c4 	bne	$r1,ffffffff80912bd4 <swap_init+0x944>
ffffffff80912594:	08 00 ce f9 	ldi	$r14,8($r14)
ffffffff80912598:	01 05 8e 41 	cmpeq	$r12,$r14,$r1
ffffffff8091259c:	f2 ff 3f c0 	beq	$r1,ffffffff80912568 <swap_init+0x2d8>
ffffffff809125a0:	00 00 4b 8c 	ldl	$r2,0($r11)
ffffffff809125a4:	08 00 6b 8c 	ldl	$r3,8($r11)
ffffffff809125a8:	10 00 2b 88 	ldw	$r1,16($r11)
ffffffff809125ac:	08 00 6b ad 	stl	$r11,8($r11)
ffffffff809125b0:	00 00 6b ad 	stl	$r11,0($r11)
ffffffff809125b4:	10 00 eb ab 	stw	$r31,16($r11)
ffffffff809125b8:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff809125bc:	60 00 7e ac 	stl	$r3,96(sp)
ffffffff809125c0:	68 00 3e ac 	stl	$r1,104(sp)
ffffffff809125c4:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff809125c8:	d8 80 8c 8d 	ldl	$r12,-32552($r12)
ffffffff809125cc:	00 00 0c 8e 	ldl	$r16,0($r12)
ffffffff809125d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809125d4:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff809125d8:	01 00 3f fa 	ldi	$r17,1
ffffffff809125dc:	08 00 8c f9 	ldi	$r12,8($r12)
ffffffff809125e0:	77 06 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff809125e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809125e8:	01 05 cc 41 	cmpeq	$r14,$r12,$r1
ffffffff809125ec:	5c 5a bd fb 	ldi	$r29,23132($r29)
ffffffff809125f0:	f6 ff 3f c0 	beq	$r1,ffffffff809125cc <swap_init+0x33c>
ffffffff809125f4:	10 00 2b 88 	ldw	$r1,16($r11)
ffffffff809125f8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809125fc:	e2 00 3f fa 	ldi	$r17,226
ffffffff80912600:	c6 f1 73 fa 	ldi	$r19,-3642($r19)
ffffffff80912604:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff80912608:	57 01 20 c0 	beq	$r1,ffffffff80912b68 <swap_init+0x8d8>
ffffffff8091260c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912610:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80912614:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912618:	e8 f1 10 fa 	ldi	$r16,-3608($r16)
ffffffff8091261c:	14 f7 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912620:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912624:	20 5a bd fb 	ldi	$r29,23072($r29)
ffffffff80912628:	0a 00 7f f8 	ldi	$r3,10
ffffffff8091262c:	8b 00 3f fa 	ldi	$r17,139
ffffffff80912630:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912634:	60 82 21 8c 	ldl	$r1,-32160($r1)
ffffffff80912638:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091263c:	0f f2 73 fa 	ldi	$r19,-3569($r19)
ffffffff80912640:	00 00 e1 ab 	stw	$r31,0($r1)
ffffffff80912644:	00 20 7f a0 	stb	$r3,8192($r31)
ffffffff80912648:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff8091264c:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80912650:	02 25 40 48 	cmpeq	$r2,0x1,$r2
ffffffff80912654:	44 01 40 c0 	beq	$r2,ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912658:	10 20 7f a0 	stb	$r3,8208($r31)
ffffffff8091265c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912660:	8d 00 3f fa 	ldi	$r17,141
ffffffff80912664:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff80912668:	0f f2 73 fa 	ldi	$r19,-3569($r19)
ffffffff8091266c:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80912670:	02 25 40 48 	cmpeq	$r2,0x1,$r2
ffffffff80912674:	3c 01 40 c0 	beq	$r2,ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912678:	0b 00 7f f8 	ldi	$r3,11
ffffffff8091267c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912680:	8f 00 3f fa 	ldi	$r17,143
ffffffff80912684:	00 40 7f a0 	stb	$r3,16384($r31)
ffffffff80912688:	1e f2 73 fa 	ldi	$r19,-3554($r19)
ffffffff8091268c:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff80912690:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80912694:	02 45 40 48 	cmpeq	$r2,0x2,$r2
ffffffff80912698:	33 01 40 c0 	beq	$r2,ffffffff80912b68 <swap_init+0x8d8>
ffffffff8091269c:	10 40 7f a0 	stb	$r3,16400($r31)
ffffffff809126a0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809126a4:	91 00 3f fa 	ldi	$r17,145
ffffffff809126a8:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff809126ac:	1e f2 73 fa 	ldi	$r19,-3554($r19)
ffffffff809126b0:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff809126b4:	02 45 40 48 	cmpeq	$r2,0x2,$r2
ffffffff809126b8:	2b 01 40 c0 	beq	$r2,ffffffff80912b68 <swap_init+0x8d8>
ffffffff809126bc:	0c 00 7f f8 	ldi	$r3,12
ffffffff809126c0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809126c4:	93 00 3f fa 	ldi	$r17,147
ffffffff809126c8:	00 60 7f a0 	stb	$r3,24576($r31)
ffffffff809126cc:	2d f2 73 fa 	ldi	$r19,-3539($r19)
ffffffff809126d0:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff809126d4:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff809126d8:	02 65 40 48 	cmpeq	$r2,0x3,$r2
ffffffff809126dc:	22 01 40 c0 	beq	$r2,ffffffff80912b68 <swap_init+0x8d8>
ffffffff809126e0:	10 60 7f a0 	stb	$r3,24592($r31)
ffffffff809126e4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809126e8:	95 00 3f fa 	ldi	$r17,149
ffffffff809126ec:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff809126f0:	2d f2 73 fa 	ldi	$r19,-3539($r19)
ffffffff809126f4:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff809126f8:	02 65 40 48 	cmpeq	$r2,0x3,$r2
ffffffff809126fc:	1a 01 40 c0 	beq	$r2,ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912700:	01 00 7f fc 	ldih	$r3,1
ffffffff80912704:	0d 00 9f f8 	ldi	$r4,13
ffffffff80912708:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091270c:	97 00 3f fa 	ldi	$r17,151
ffffffff80912710:	00 80 83 a0 	stb	$r4,-32768($r3)
ffffffff80912714:	f9 ee 73 fa 	ldi	$r19,-4359($r19)
ffffffff80912718:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff8091271c:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80912720:	02 85 40 48 	cmpeq	$r2,0x4,$r2
ffffffff80912724:	10 01 40 c0 	beq	$r2,ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912728:	10 80 83 a0 	stb	$r4,-32752($r3)
ffffffff8091272c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912730:	99 00 3f fa 	ldi	$r17,153
ffffffff80912734:	00 00 21 88 	ldw	$r1,0($r1)
ffffffff80912738:	f9 ee 73 fa 	ldi	$r19,-4359($r19)
ffffffff8091273c:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80912740:	01 85 20 48 	cmpeq	$r1,0x4,$r1
ffffffff80912744:	08 01 20 c0 	beq	$r1,ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912748:	10 00 2b 88 	ldw	$r1,16($r11)
ffffffff8091274c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912750:	eb 00 3f fa 	ldi	$r17,235
ffffffff80912754:	3c f2 73 fa 	ldi	$r19,-3524($r19)
ffffffff80912758:	03 01 20 c4 	bne	$r1,ffffffff80912b68 <swap_init+0x8d8>
ffffffff8091275c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912760:	18 81 21 8c 	ldl	$r1,-32488($r1)
ffffffff80912764:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80912768:	58 81 42 8c 	ldl	$r2,-32424($r2)
ffffffff8091276c:	ff ff 7f f8 	ldi	$r3,-1
ffffffff80912770:	28 00 a1 f8 	ldi	$r5,40($r1)
ffffffff80912774:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912778:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091277c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912780:	00 00 61 a8 	stw	$r3,0($r1)
ffffffff80912784:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff80912788:	00 00 62 a8 	stw	$r3,0($r2)
ffffffff8091278c:	04 00 42 f8 	ldi	$r2,4($r2)
ffffffff80912790:	04 05 a1 40 	cmpeq	$r5,$r1,$r4
ffffffff80912794:	fa ff 9f c0 	beq	$r4,ffffffff80912780 <swap_init+0x4f0>
ffffffff80912798:	00 00 9d fc 	ldih	$r4,0($r29)
ffffffff8091279c:	50 82 84 8c 	ldl	$r4,-32176($r4)
ffffffff809127a0:	00 00 fd fc 	ldih	$r7,0($r29)
ffffffff809127a4:	d8 80 e7 8c 	ldl	$r7,-32552($r7)
ffffffff809127a8:	00 20 7f f8 	ldi	$r3,8192
ffffffff809127ac:	00 00 fd fd 	ldih	fp,0($r29)
ffffffff809127b0:	20 81 ef 8d 	ldl	fp,-32480(fp)
ffffffff809127b4:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff809127b8:	88 82 ce 8d 	ldl	$r14,-32120($r14)
ffffffff809127bc:	50 00 1e 8e 	ldl	$r16,80(sp)
ffffffff809127c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809127c4:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff809127c8:	51 07 e3 43 	mov	$r3,$r17
ffffffff809127cc:	52 07 ff 43 	clr	$r18
ffffffff809127d0:	00 00 e4 af 	stl	$r31,0($r4)
ffffffff809127d4:	78 00 7e ac 	stl	$r3,120(sp)
ffffffff809127d8:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff809127dc:	80 00 fe ac 	stl	$r7,128(sp)
ffffffff809127e0:	1f 06 5b 07 	call	ra,($r27),ffffffff80914060 <get_pte>
ffffffff809127e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809127e8:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff809127ec:	5c 58 bd fb 	ldi	$r29,22620($r29)
ffffffff809127f0:	78 00 7e 8c 	ldl	$r3,120(sp)
ffffffff809127f4:	80 00 fe 8c 	ldl	$r7,128(sp)
ffffffff809127f8:	00 00 04 ac 	stl	$r0,0($r4)
ffffffff809127fc:	01 01 00 c0 	beq	$r0,ffffffff80912c04 <swap_init+0x974>
ffffffff80912800:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff80912804:	03 01 20 d8 	blbc	$r1,ffffffff80912c14 <swap_init+0x984>
ffffffff80912808:	00 00 4f 8c 	ldl	$r2,0(fp)
ffffffff8091280c:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff80912810:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80912814:	df 00 40 c0 	beq	$r2,ffffffff80912b94 <swap_init+0x904>
ffffffff80912818:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff8091281c:	00 00 ce 8c 	ldl	$r6,0($r14)
ffffffff80912820:	00 00 a7 8c 	ldl	$r5,0($r7)
ffffffff80912824:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80912828:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff8091282c:	01 01 c1 40 	addl	$r6,$r1,$r1
ffffffff80912830:	01 05 a1 40 	cmpeq	$r5,$r1,$r1
ffffffff80912834:	df 00 20 c0 	beq	$r1,ffffffff80912bb4 <swap_init+0x924>
ffffffff80912838:	01 00 5f fc 	ldih	$r2,1
ffffffff8091283c:	00 20 63 f8 	ldi	$r3,8192($r3)
ffffffff80912840:	08 00 84 f8 	ldi	$r4,8($r4)
ffffffff80912844:	08 00 e7 f8 	ldi	$r7,8($r7)
ffffffff80912848:	00 a0 22 f8 	ldi	$r1,-24576($r2)
ffffffff8091284c:	01 05 61 40 	cmpeq	$r3,$r1,$r1
ffffffff80912850:	da ff 3f c0 	beq	$r1,ffffffff809127bc <swap_init+0x52c>
ffffffff80912854:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912858:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff8091285c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912860:	a8 f2 10 fa 	ldi	$r16,-3416($r16)
ffffffff80912864:	82 f6 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912868:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091286c:	d8 57 bd fb 	ldi	$r29,22488($r29)
ffffffff80912870:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80912874:	c8 62 23 8c 	ldl	$r1,25288($r3)
ffffffff80912878:	38 00 61 8f 	ldl	$r27,56($r1)
ffffffff8091287c:	00 00 5b 07 	call	ra,($r27),ffffffff80912880 <swap_init+0x5f0>
ffffffff80912880:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912884:	c0 57 bd fb 	ldi	$r29,22464($r29)
ffffffff80912888:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091288c:	fa 00 3f fa 	ldi	$r17,250
ffffffff80912890:	ce f2 73 fa 	ldi	$r19,-3378($r19)
ffffffff80912894:	b4 00 00 c4 	bne	$r0,ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912898:	68 00 3e 8c 	ldl	$r1,104(sp)
ffffffff8091289c:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff809128a0:	60 00 7e 8c 	ldl	$r3,96(sp)
ffffffff809128a4:	10 00 2b a8 	stw	$r1,16($r11)
ffffffff809128a8:	00 00 4b ac 	stl	$r2,0($r11)
ffffffff809128ac:	08 00 6b ac 	stl	$r3,8($r11)
ffffffff809128b0:	00 00 0d 8e 	ldl	$r16,0($r13)
ffffffff809128b4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809128b8:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff809128bc:	01 00 3f fa 	ldi	$r17,1
ffffffff809128c0:	08 00 ad f9 	ldi	$r13,8($r13)
ffffffff809128c4:	be 05 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff809128c8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809128cc:	01 05 ac 41 	cmpeq	$r13,$r12,$r1
ffffffff809128d0:	78 57 bd fb 	ldi	$r29,22392($r29)
ffffffff809128d4:	f6 ff 3f c0 	beq	$r1,ffffffff809128b0 <swap_init+0x620>
ffffffff809128d8:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff809128dc:	68 81 42 8c 	ldl	$r2,-32408($r2)
ffffffff809128e0:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff809128e4:	00 00 8f 8c 	ldl	$r4,0(fp)
ffffffff809128e8:	07 01 3f fa 	ldi	$r17,263
ffffffff809128ec:	23 e9 61 4a 	srl	$r19,0xf,$r3
ffffffff809128f0:	00 00 22 8c 	ldl	$r1,0($r2)
ffffffff809128f4:	00 00 a1 8d 	ldl	$r13,0($r1)
ffffffff809128f8:	2d e9 a1 49 	srl	$r13,0xf,$r13
ffffffff809128fc:	0d 07 a3 41 	and	$r13,$r3,$r13
ffffffff80912900:	21 a9 a1 49 	srl	$r13,0xd,$r1
ffffffff80912904:	53 07 ed 43 	mov	$r13,$r19
ffffffff80912908:	61 05 24 40 	cmpult	$r1,$r4,$r1
ffffffff8091290c:	ce 00 20 c0 	beq	$r1,ffffffff80912c48 <swap_init+0x9b8>
ffffffff80912910:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80912914:	f8 80 8c 8d 	ldl	$r12,-32520($r12)
ffffffff80912918:	08 01 3f fa 	ldi	$r17,264
ffffffff8091291c:	00 00 4c 8c 	ldl	$r2,0($r12)
ffffffff80912920:	0d 01 a2 41 	addl	$r13,$r2,$r13
ffffffff80912924:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80912928:	21 e9 21 48 	srl	$r1,0xf,$r1
ffffffff8091292c:	01 07 23 40 	and	$r1,$r3,$r1
ffffffff80912930:	25 a9 21 48 	srl	$r1,0xd,$r5
ffffffff80912934:	53 07 e1 43 	mov	$r1,$r19
ffffffff80912938:	85 05 85 40 	cmpule	$r4,$r5,$r5
ffffffff8091293c:	c2 00 a0 c4 	bne	$r5,ffffffff80912c48 <swap_init+0x9b8>
ffffffff80912940:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80912944:	00 00 61 8e 	ldl	$r19,0($r1)
ffffffff80912948:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff8091294c:	13 07 63 42 	and	$r19,$r3,$r19
ffffffff80912950:	25 a9 61 4a 	srl	$r19,0xd,$r5
ffffffff80912954:	83 05 85 40 	cmpule	$r4,$r5,$r3
ffffffff80912958:	ba 00 60 c4 	bne	$r3,ffffffff80912c44 <swap_init+0x9b4>
ffffffff8091295c:	00 80 7f fc 	ldih	$r3,-32768
ffffffff80912960:	02 01 53 40 	addl	$r2,$r19,$r2
ffffffff80912964:	ff ff 63 f8 	ldi	$r3,-1($r3)
ffffffff80912968:	83 05 43 40 	cmpule	$r2,$r3,$r3
ffffffff8091296c:	06 00 60 c4 	bne	$r3,ffffffff80912988 <swap_init+0x6f8>
ffffffff80912970:	01 00 7f f8 	ldi	$r3,1
ffffffff80912974:	03 e9 63 48 	sll	$r3,0x1f,$r3
ffffffff80912978:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff8091297c:	25 a9 41 48 	srl	$r2,0xd,$r5
ffffffff80912980:	84 05 85 40 	cmpule	$r4,$r5,$r4
ffffffff80912984:	83 00 80 c4 	bne	$r4,ffffffff80912b94 <swap_init+0x904>
ffffffff80912988:	00 00 0e 8e 	ldl	$r16,0($r14)
ffffffff8091298c:	82 01 a0 48 	s8addl	$r5,0,$r2
ffffffff80912990:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912994:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80912998:	01 00 3f fa 	ldi	$r17,1
ffffffff8091299c:	02 01 45 40 	addl	$r2,$r5,$r2
ffffffff809129a0:	70 00 3e ac 	stl	$r1,112(sp)
ffffffff809129a4:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff809129a8:	10 01 02 42 	addl	$r16,$r2,$r16
ffffffff809129ac:	84 05 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff809129b0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809129b4:	70 00 3e 8c 	ldl	$r1,112(sp)
ffffffff809129b8:	00 80 5f fc 	ldih	$r2,-32768
ffffffff809129bc:	90 56 bd fb 	ldi	$r29,22160($r29)
ffffffff809129c0:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff809129c4:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff809129c8:	59 00 40 c0 	beq	$r2,ffffffff80912b30 <swap_init+0x8a0>
ffffffff809129cc:	00 00 4c 8c 	ldl	$r2,0($r12)
ffffffff809129d0:	21 01 22 40 	subl	$r1,$r2,$r1
ffffffff809129d4:	00 00 4f 8c 	ldl	$r2,0(fp)
ffffffff809129d8:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff809129dc:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff809129e0:	6c 00 40 c0 	beq	$r2,ffffffff80912b94 <swap_init+0x904>
ffffffff809129e4:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff809129e8:	00 00 0e 8e 	ldl	$r16,0($r14)
ffffffff809129ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809129f0:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff809129f4:	01 00 3f fa 	ldi	$r17,1
ffffffff809129f8:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff809129fc:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80912a00:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80912a04:	6e 05 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80912a08:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a0c:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80912a10:	38 56 bd fb 	ldi	$r29,22072($r29)
ffffffff80912a14:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80912a18:	81 05 a1 41 	cmpule	$r13,$r1,$r1
ffffffff80912a1c:	48 00 20 c4 	bne	$r1,ffffffff80912b40 <swap_init+0x8b0>
ffffffff80912a20:	01 00 3f f8 	ldi	$r1,1
ffffffff80912a24:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80912a28:	01 01 a1 41 	addl	$r13,$r1,$r1
ffffffff80912a2c:	00 00 4f 8c 	ldl	$r2,0(fp)
ffffffff80912a30:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80912a34:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80912a38:	56 00 40 c0 	beq	$r2,ffffffff80912b94 <swap_init+0x904>
ffffffff80912a3c:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80912a40:	00 00 0e 8e 	ldl	$r16,0($r14)
ffffffff80912a44:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912a48:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80912a4c:	01 00 3f fa 	ldi	$r17,1
ffffffff80912a50:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80912a54:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80912a58:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80912a5c:	58 05 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80912a60:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a64:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80912a68:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff80912a6c:	e0 55 bd fb 	ldi	$r29,21984($r29)
ffffffff80912a70:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912a74:	68 80 7b 8f 	ldl	$r27,-32664($r27)
ffffffff80912a78:	00 00 e3 af 	stl	$r31,0($r3)
ffffffff80912a7c:	50 07 e1 43 	mov	$r1,$r16
ffffffff80912a80:	18 00 e1 af 	stl	$r31,24($r1)
ffffffff80912a84:	e6 f9 5b 07 	call	ra,($r27),ffffffff80911220 <mm_destroy>
ffffffff80912a88:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912a8c:	b8 55 bd fb 	ldi	$r29,21944($r29)
ffffffff80912a90:	08 00 2b 8c 	ldl	$r1,8($r11)
ffffffff80912a94:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80912a98:	78 82 42 8c 	ldl	$r2,-32136($r2)
ffffffff80912a9c:	00 00 e2 af 	stl	$r31,0($r2)
ffffffff80912aa0:	02 05 2b 40 	cmpeq	$r1,$r11,$r2
ffffffff80912aa4:	08 00 40 c4 	bne	$r2,ffffffff80912ac8 <swap_init+0x838>
ffffffff80912aa8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912aac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912ab0:	f8 ff 61 88 	ldw	$r3,-8($r1)
ffffffff80912ab4:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80912ab8:	2a 20 40 49 	subw	$r10,0x1,$r10
ffffffff80912abc:	02 05 2b 40 	cmpeq	$r1,$r11,$r2
ffffffff80912ac0:	29 00 23 41 	subw	$r9,$r3,$r9
ffffffff80912ac4:	fa ff 5f c0 	beq	$r2,ffffffff80912ab0 <swap_init+0x820>
ffffffff80912ac8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912acc:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80912ad0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912ad4:	51 07 ea 43 	mov	$r10,$r17
ffffffff80912ad8:	52 07 e9 43 	mov	$r9,$r18
ffffffff80912adc:	d5 f2 10 fa 	ldi	$r16,-3371($r16)
ffffffff80912ae0:	e3 f5 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912ae4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912ae8:	5c 55 bd fb 	ldi	$r29,21852($r29)
ffffffff80912aec:	1c 01 3f fa 	ldi	$r17,284
ffffffff80912af0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912af4:	ef f2 73 fa 	ldi	$r19,-3345($r19)
ffffffff80912af8:	1b 00 40 c5 	bne	$r10,ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912afc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912b00:	1d 01 3f fa 	ldi	$r17,285
ffffffff80912b04:	fa f2 73 fa 	ldi	$r19,-3334($r19)
ffffffff80912b08:	17 00 20 c5 	bne	$r9,ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912b0c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912b10:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80912b14:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912b18:	05 f3 10 fa 	ldi	$r16,-3323($r16)
ffffffff80912b1c:	d4 f5 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912b20:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912b24:	20 55 bd fb 	ldi	$r29,21792($r29)
ffffffff80912b28:	fb fd ff 13 	br	ffffffff80912318 <swap_init+0x88>
ffffffff80912b2c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912b30:	01 00 5f f8 	ldi	$r2,1
ffffffff80912b34:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff80912b38:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80912b3c:	a5 ff ff 13 	br	ffffffff809129d4 <swap_init+0x744>
ffffffff80912b40:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80912b44:	21 01 a1 41 	subl	$r13,$r1,$r1
ffffffff80912b48:	b8 ff ff 13 	br	ffffffff80912a2c <swap_init+0x79c>
ffffffff80912b4c:	49 07 ff 43 	clr	$r9
ffffffff80912b50:	4a 07 ff 43 	clr	$r10
ffffffff80912b54:	4c 07 ff 43 	clr	$r12
ffffffff80912b58:	23 fe ff 13 	br	ffffffff809123e8 <swap_init+0x158>
ffffffff80912b5c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912b60:	b7 00 3f fa 	ldi	$r17,183
ffffffff80912b64:	d7 f0 73 fa 	ldi	$r19,-3881($r19)
ffffffff80912b68:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912b6c:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80912b70:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912b74:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912b78:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff80912b7c:	b4 f0 10 fa 	ldi	$r16,-3916($r16)
ffffffff80912b80:	e3 f5 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80912b84:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912b88:	b4 00 3f fa 	ldi	$r17,180
ffffffff80912b8c:	f6 f3 73 fa 	ldi	$r19,-3082($r19)
ffffffff80912b90:	f5 ff ff 13 	br	ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912b94:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912b98:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80912b9c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912ba0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912ba4:	66 00 3f fa 	ldi	$r17,102
ffffffff80912ba8:	b9 ed 52 fa 	ldi	$r18,-4679($r18)
ffffffff80912bac:	d8 ed 10 fa 	ldi	$r16,-4648($r16)
ffffffff80912bb0:	d7 f5 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80912bb4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912bb8:	f4 00 3f fa 	ldi	$r17,244
ffffffff80912bbc:	80 f2 73 fa 	ldi	$r19,-3456($r19)
ffffffff80912bc0:	e9 ff ff 13 	br	ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912bc4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912bc8:	d4 00 3f fa 	ldi	$r17,212
ffffffff80912bcc:	97 f1 73 fa 	ldi	$r19,-3689($r19)
ffffffff80912bd0:	e5 ff ff 13 	br	ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912bd4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912bd8:	d5 00 3f fa 	ldi	$r17,213
ffffffff80912bdc:	ab f1 73 fa 	ldi	$r19,-3669($r19)
ffffffff80912be0:	e1 ff ff 13 	br	ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912be4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912be8:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80912bec:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912bf0:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912bf4:	26 00 3f fa 	ldi	$r17,38
ffffffff80912bf8:	99 f0 52 fa 	ldi	$r18,-3943($r18)
ffffffff80912bfc:	b4 f0 10 fa 	ldi	$r16,-3916($r16)
ffffffff80912c00:	c3 f5 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80912c04:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912c08:	f3 00 3f fa 	ldi	$r17,243
ffffffff80912c0c:	49 f2 73 fa 	ldi	$r19,-3511($r19)
ffffffff80912c10:	d5 ff ff 13 	br	ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912c14:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912c18:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80912c1c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912c20:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912c24:	71 00 3f fa 	ldi	$r17,113
ffffffff80912c28:	5f f2 52 fa 	ldi	$r18,-3489($r18)
ffffffff80912c2c:	d8 ed 10 fa 	ldi	$r16,-4648($r16)
ffffffff80912c30:	b7 f5 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80912c34:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912c38:	c7 00 3f fa 	ldi	$r17,199
ffffffff80912c3c:	30 ee 73 fa 	ldi	$r19,-4560($r19)
ffffffff80912c40:	c9 ff ff 13 	br	ffffffff80912b68 <swap_init+0x8d8>
ffffffff80912c44:	09 01 3f fa 	ldi	$r17,265
ffffffff80912c48:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912c4c:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80912c50:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912c54:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912c58:	96 ed 52 fa 	ldi	$r18,-4714($r18)
ffffffff80912c5c:	b4 f0 10 fa 	ldi	$r16,-3916($r16)
ffffffff80912c60:	ab f5 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80912c64:	5f 07 ff 43 	nop	
ffffffff80912c68:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912c6c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912c70 <swap_init_mm>:
ffffffff80912c70:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912c74:	d0 53 bd fb 	ldi	$r29,21456($r29)
ffffffff80912c78:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912c7c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80912c80:	c8 62 21 8c 	ldl	$r1,25288($r1)
ffffffff80912c84:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912c88:	10 00 61 8f 	ldl	$r27,16($r1)
ffffffff80912c8c:	00 00 5b 07 	call	ra,($r27),ffffffff80912c90 <swap_init_mm+0x20>
ffffffff80912c90:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912c94:	b0 53 bd fb 	ldi	$r29,21424($r29)
ffffffff80912c98:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912c9c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912ca0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912ca4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912ca8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912cac:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912cb0 <swap_map_swappable>:
ffffffff80912cb0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912cb4:	90 53 bd fb 	ldi	$r29,21392($r29)
ffffffff80912cb8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80912cbc:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80912cc0:	c8 62 21 8c 	ldl	$r1,25288($r1)
ffffffff80912cc4:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912cc8:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80912ccc:	00 00 5b 07 	call	ra,($r27),ffffffff80912cd0 <swap_map_swappable+0x20>
ffffffff80912cd0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912cd4:	70 53 bd fb 	ldi	$r29,21360($r29)
ffffffff80912cd8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912cdc:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80912ce0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912ce4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912ce8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912cec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912cf0 <swap_out>:
ffffffff80912cf0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912cf4:	50 53 bd fb 	ldi	$r29,21328($r29)
ffffffff80912cf8:	b0 ff de fb 	ldi	sp,-80(sp)
ffffffff80912cfc:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80912d00:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80912d04:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80912d08:	4d 07 f1 43 	mov	$r17,$r13
ffffffff80912d0c:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80912d10:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912d14:	4e 07 f2 43 	mov	$r18,$r14
ffffffff80912d18:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912d1c:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912d20:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80912d24:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80912d28:	5c 00 20 c2 	beq	$r17,ffffffff80912e9c <swap_out+0x1ac>
ffffffff80912d2c:	49 07 ff 43 	clr	$r9
ffffffff80912d30:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80912d34:	25 00 e0 13 	br	ffffffff80912dcc <swap_out+0xdc>
ffffffff80912d38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912d3c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912d40:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80912d44:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912d48:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80912d4c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912d50:	52 07 ea 43 	mov	$r10,$r18
ffffffff80912d54:	51 07 e9 43 	mov	$r9,$r17
ffffffff80912d58:	76 f3 10 fa 	ldi	$r16,-3210($r16)
ffffffff80912d5c:	09 20 20 49 	addw	$r9,0x1,$r9
ffffffff80912d60:	40 00 61 8e 	ldl	$r19,64($r1)
ffffffff80912d64:	33 a9 61 4a 	srl	$r19,0xd,$r19
ffffffff80912d68:	01 00 73 fa 	ldi	$r19,1($r19)
ffffffff80912d6c:	40 f5 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912d70:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912d74:	40 00 1e 8e 	ldl	$r16,64(sp)
ffffffff80912d78:	d0 52 bd fb 	ldi	$r29,21200($r29)
ffffffff80912d7c:	01 00 3f fa 	ldi	$r17,1
ffffffff80912d80:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912d84:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80912d88:	40 00 30 8c 	ldl	$r1,64($r16)
ffffffff80912d8c:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80912d90:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80912d94:	01 09 21 48 	sll	$r1,0x8,$r1
ffffffff80912d98:	00 00 2f ac 	stl	$r1,0(fp)
ffffffff80912d9c:	88 04 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80912da0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912da4:	a0 52 bd fb 	ldi	$r29,21152($r29)
ffffffff80912da8:	18 00 0b 8e 	ldl	$r16,24($r11)
ffffffff80912dac:	51 07 ea 43 	mov	$r10,$r17
ffffffff80912db0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912db4:	98 82 7b 8f 	ldl	$r27,-32104($r27)
ffffffff80912db8:	fd 09 5b 07 	call	ra,($r27),ffffffff809155b0 <tlb_invalidate>
ffffffff80912dbc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912dc0:	01 05 a9 41 	cmpeq	$r13,$r9,$r1
ffffffff80912dc4:	84 52 bd fb 	ldi	$r29,21124($r29)
ffffffff80912dc8:	34 00 20 c4 	bne	$r1,ffffffff80912e9c <swap_out+0x1ac>
ffffffff80912dcc:	c8 62 2c 8c 	ldl	$r1,25288($r12)
ffffffff80912dd0:	52 07 ee 43 	mov	$r14,$r18
ffffffff80912dd4:	40 00 3e fa 	ldi	$r17,64(sp)
ffffffff80912dd8:	50 07 eb 43 	mov	$r11,$r16
ffffffff80912ddc:	30 00 61 8f 	ldl	$r27,48($r1)
ffffffff80912de0:	00 00 5b 07 	call	ra,($r27),ffffffff80912de4 <swap_out+0xf4>
ffffffff80912de4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912de8:	5c 52 bd fb 	ldi	$r29,21084($r29)
ffffffff80912dec:	38 00 00 c4 	bne	$r0,ffffffff80912ed0 <swap_out+0x1e0>
ffffffff80912df0:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80912df4:	18 00 0b 8e 	ldl	$r16,24($r11)
ffffffff80912df8:	52 07 ff 43 	clr	$r18
ffffffff80912dfc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912e00:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff80912e04:	40 00 41 8d 	ldl	$r10,64($r1)
ffffffff80912e08:	51 07 ea 43 	mov	$r10,$r17
ffffffff80912e0c:	94 04 5b 07 	call	ra,($r27),ffffffff80914060 <get_pte>
ffffffff80912e10:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912e14:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff80912e18:	30 52 bd fb 	ldi	$r29,21040($r29)
ffffffff80912e1c:	4f 07 e0 43 	mov	$r0,fp
ffffffff80912e20:	35 00 20 d8 	blbc	$r1,ffffffff80912ef8 <swap_out+0x208>
ffffffff80912e24:	40 00 3e 8e 	ldl	$r17,64(sp)
ffffffff80912e28:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912e2c:	48 82 7b 8f 	ldl	$r27,-32184($r27)
ffffffff80912e30:	40 00 11 8e 	ldl	$r16,64($r17)
ffffffff80912e34:	30 a9 01 4a 	srl	$r16,0xd,$r16
ffffffff80912e38:	01 00 10 fa 	ldi	$r16,1($r16)
ffffffff80912e3c:	10 09 01 4a 	sll	$r16,0x8,$r16
ffffffff80912e40:	2b 0b 5b 07 	call	ra,($r27),ffffffff80915af0 <swapfs_write>
ffffffff80912e44:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912e48:	fc 51 bd fb 	ldi	$r29,20988($r29)
ffffffff80912e4c:	bc ff 1f c0 	beq	$r0,ffffffff80912d40 <swap_out+0x50>
ffffffff80912e50:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912e54:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80912e58:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912e5c:	09 20 20 49 	addw	$r9,0x1,$r9
ffffffff80912e60:	60 f3 10 fa 	ldi	$r16,-3232($r16)
ffffffff80912e64:	02 f5 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912e68:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912e6c:	c8 62 2c 8c 	ldl	$r1,25288($r12)
ffffffff80912e70:	40 00 5e 8e 	ldl	$r18,64(sp)
ffffffff80912e74:	d8 51 bd fb 	ldi	$r29,20952($r29)
ffffffff80912e78:	53 07 ff 43 	clr	$r19
ffffffff80912e7c:	51 07 ea 43 	mov	$r10,$r17
ffffffff80912e80:	50 07 eb 43 	mov	$r11,$r16
ffffffff80912e84:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80912e88:	00 00 5b 07 	call	ra,($r27),ffffffff80912e8c <swap_out+0x19c>
ffffffff80912e8c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912e90:	b4 51 bd fb 	ldi	$r29,20916($r29)
ffffffff80912e94:	01 05 a9 41 	cmpeq	$r13,$r9,$r1
ffffffff80912e98:	cc ff 3f c0 	beq	$r1,ffffffff80912dcc <swap_out+0xdc>
ffffffff80912e9c:	40 07 ed 43 	mov	$r13,$r0
ffffffff80912ea0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912ea4:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912ea8:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912eac:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912eb0:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912eb4:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80912eb8:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80912ebc:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80912ec0:	50 00 de fb 	ldi	sp,80(sp)
ffffffff80912ec4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912ec8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912ecc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912ed0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912ed4:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80912ed8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912edc:	51 07 e9 43 	mov	$r9,$r17
ffffffff80912ee0:	4d 07 e9 43 	mov	$r9,$r13
ffffffff80912ee4:	1e f3 10 fa 	ldi	$r16,-3298($r16)
ffffffff80912ee8:	e1 f4 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80912eec:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912ef0:	54 51 bd fb 	ldi	$r29,20820($r29)
ffffffff80912ef4:	e9 ff ff 13 	br	ffffffff80912e9c <swap_out+0x1ac>
ffffffff80912ef8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912efc:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80912f00:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912f04:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912f08:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912f0c:	60 00 3f fa 	ldi	$r17,96
ffffffff80912f10:	4b f3 73 fa 	ldi	$r19,-3253($r19)
ffffffff80912f14:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff80912f18:	b4 f0 10 fa 	ldi	$r16,-3916($r16)
ffffffff80912f1c:	fc f4 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80912f20:	5f 07 ff 43 	nop	
ffffffff80912f24:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912f28:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80912f2c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80912f30 <swap_in>:
ffffffff80912f30:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80912f34:	10 51 bd fb 	ldi	$r29,20752($r29)
ffffffff80912f38:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912f3c:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80912f40:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80912f44:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80912f48:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80912f4c:	4a 07 f2 43 	mov	$r18,$r10
ffffffff80912f50:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80912f54:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80912f58:	4c 07 f0 43 	mov	$r16,$r12
ffffffff80912f5c:	01 00 1f fa 	ldi	$r16,1
ffffffff80912f60:	00 00 5e af 	stl	ra,0(sp)
ffffffff80912f64:	4b 07 f1 43 	mov	$r17,$r11
ffffffff80912f68:	d5 03 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80912f6c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912f70:	d4 50 bd fb 	ldi	$r29,20692($r29)
ffffffff80912f74:	49 07 e0 43 	mov	$r0,$r9
ffffffff80912f78:	18 00 00 c0 	beq	$r0,ffffffff80912fdc <swap_in+0xac>
ffffffff80912f7c:	18 00 0c 8e 	ldl	$r16,24($r12)
ffffffff80912f80:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912f84:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff80912f88:	52 07 ff 43 	clr	$r18
ffffffff80912f8c:	51 07 eb 43 	mov	$r11,$r17
ffffffff80912f90:	33 04 5b 07 	call	ra,($r27),ffffffff80914060 <get_pte>
ffffffff80912f94:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912f98:	ac 50 bd fb 	ldi	$r29,20652($r29)
ffffffff80912f9c:	00 00 00 8e 	ldl	$r16,0($r0)
ffffffff80912fa0:	51 07 e9 43 	mov	$r9,$r17
ffffffff80912fa4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912fa8:	90 81 7b 8f 	ldl	$r27,-32368($r27)
ffffffff80912fac:	90 0a 5b 07 	call	ra,($r27),ffffffff809159f0 <swapfs_read>
ffffffff80912fb0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80912fb4:	00 00 2a ad 	stl	$r9,0($r10)
ffffffff80912fb8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80912fbc:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80912fc0:	40 07 ff 43 	clr	$r0
ffffffff80912fc4:	90 50 bd fb 	ldi	$r29,20624($r29)
ffffffff80912fc8:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80912fcc:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80912fd0:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80912fd4:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80912fd8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80912fdc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80912fe0:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80912fe4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80912fe8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80912fec:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80912ff0:	77 00 3f fa 	ldi	$r17,119
ffffffff80912ff4:	b6 f3 73 fa 	ldi	$r19,-3146($r19)
ffffffff80912ff8:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff80912ffc:	b4 f0 10 fa 	ldi	$r16,-3916($r16)
ffffffff80913000:	c3 f4 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80913004:	5f 07 ff 43 	nop	
ffffffff80913008:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091300c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80913010 <default_init>:
ffffffff80913010:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913014:	30 50 bd fb 	ldi	$r29,20528($r29)
ffffffff80913018:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091301c:	40 82 21 8c 	ldl	$r1,-32192($r1)
ffffffff80913020:	08 00 21 ac 	stl	$r1,8($r1)
ffffffff80913024:	00 00 21 ac 	stl	$r1,0($r1)
ffffffff80913028:	10 00 e1 ab 	stw	$r31,16($r1)
ffffffff8091302c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80913030 <default_nr_free_pages>:
ffffffff80913030:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913034:	10 50 bd fb 	ldi	$r29,20496($r29)
ffffffff80913038:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091303c:	40 82 21 8c 	ldl	$r1,-32192($r1)
ffffffff80913040:	10 00 01 88 	ldw	$r0,16($r1)
ffffffff80913044:	20 ed 01 48 	zapnot	$r0,0xf,$r0
ffffffff80913048:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091304c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80913050 <default_free_pages>:
ffffffff80913050:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913054:	f0 4f bd fb 	ldi	$r29,20464($r29)
ffffffff80913058:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091305c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913060:	99 00 20 c2 	beq	$r17,ffffffff809132c8 <default_free_pages+0x278>
ffffffff80913064:	84 01 20 4a 	s8addl	$r17,0,$r4
ffffffff80913068:	04 01 91 40 	addl	$r4,$r17,$r4
ffffffff8091306c:	84 01 80 48 	s8addl	$r4,0,$r4
ffffffff80913070:	04 01 04 42 	addl	$r16,$r4,$r4
ffffffff80913074:	01 05 04 42 	cmpeq	$r16,$r4,$r1
ffffffff80913078:	12 00 20 c4 	bne	$r1,ffffffff809130c4 <default_free_pages+0x74>
ffffffff8091307c:	08 00 50 88 	ldw	$r2,8($r16)
ffffffff80913080:	41 29 40 48 	sra	$r2,0x1,$r1
ffffffff80913084:	41 07 22 40 	or	$r1,$r2,$r1
ffffffff80913088:	85 00 20 dc 	blbs	$r1,ffffffff809132a0 <default_free_pages+0x250>
ffffffff8091308c:	41 07 f0 43 	mov	$r16,$r1
ffffffff80913090:	07 00 e0 13 	br	ffffffff809130b0 <default_free_pages+0x60>
ffffffff80913094:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913098:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091309c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809130a0:	08 00 61 88 	ldw	$r3,8($r1)
ffffffff809130a4:	42 29 60 48 	sra	$r3,0x1,$r2
ffffffff809130a8:	42 07 43 40 	or	$r2,$r3,$r2
ffffffff809130ac:	7c 00 40 dc 	blbs	$r2,ffffffff809132a0 <default_free_pages+0x250>
ffffffff809130b0:	08 00 e1 af 	stl	$r31,8($r1)
ffffffff809130b4:	00 00 e1 ab 	stw	$r31,0($r1)
ffffffff809130b8:	48 00 21 f8 	ldi	$r1,72($r1)
ffffffff809130bc:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff809130c0:	f7 ff 5f c0 	beq	$r2,ffffffff809130a0 <default_free_pages+0x50>
ffffffff809130c4:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff809130c8:	08 00 d0 f8 	ldi	$r6,8($r16)
ffffffff809130cc:	18 00 30 aa 	stw	$r17,24($r16)
ffffffff809130d0:	08 00 70 f8 	ldi	$r3,8($r16)
ffffffff809130d4:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff809130d8:	01 00 5f f8 	ldi	$r2,1
ffffffff809130dc:	20 10 5f 18 	wr_f	$r2
ffffffff809130e0:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff809130e4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809130e8:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff809130ec:	00 10 5f 18 	rd_f	$r2
ffffffff809130f0:	79 00 40 c0 	beq	$r2,ffffffff809132d8 <default_free_pages+0x288>
ffffffff809130f4:	00 00 9d fc 	ldih	$r4,0($r29)
ffffffff809130f8:	40 82 84 8c 	ldl	$r4,-32192($r4)
ffffffff809130fc:	10 00 44 88 	ldw	$r2,16($r4)
ffffffff80913100:	08 00 24 8c 	ldl	$r1,8($r4)
ffffffff80913104:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff80913108:	02 05 24 40 	cmpeq	$r1,$r4,$r2
ffffffff8091310c:	10 00 24 aa 	stw	$r17,16($r4)
ffffffff80913110:	07 00 40 c0 	beq	$r2,ffffffff80913130 <default_free_pages+0xe0>
ffffffff80913114:	3a 00 e0 13 	br	ffffffff80913200 <default_free_pages+0x1b0>
ffffffff80913118:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091311c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913120:	08 00 61 8c 	ldl	$r3,8($r1)
ffffffff80913124:	05 05 64 40 	cmpeq	$r3,$r4,$r5
ffffffff80913128:	3d 00 a0 c4 	bne	$r5,ffffffff80913220 <default_free_pages+0x1d0>
ffffffff8091312c:	41 07 e3 43 	mov	$r3,$r1
ffffffff80913130:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff80913134:	63 05 02 42 	cmpult	$r16,$r2,$r3
ffffffff80913138:	45 07 e2 43 	mov	$r2,$r5
ffffffff8091313c:	f8 ff 7f c0 	beq	$r3,ffffffff80913120 <default_free_pages+0xd0>
ffffffff80913140:	00 00 61 8c 	ldl	$r3,0($r1)
ffffffff80913144:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff80913148:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff8091314c:	08 00 43 ac 	stl	$r2,8($r3)
ffffffff80913150:	02 05 64 40 	cmpeq	$r3,$r4,$r2
ffffffff80913154:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff80913158:	20 00 70 ac 	stl	$r3,32($r16)
ffffffff8091315c:	0d 00 40 c4 	bne	$r2,ffffffff80913194 <default_free_pages+0x144>
ffffffff80913160:	f8 ff e3 88 	ldw	$r7,-8($r3)
ffffffff80913164:	e0 ff 43 f8 	ldi	$r2,-32($r3)
ffffffff80913168:	25 ed e1 48 	zapnot	$r7,0xf,$r5
ffffffff8091316c:	81 01 a0 48 	s8addl	$r5,0,$r1
ffffffff80913170:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80913174:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80913178:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff8091317c:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff80913180:	35 00 20 c4 	bne	$r1,ffffffff80913258 <default_free_pages+0x208>
ffffffff80913184:	28 00 30 8c 	ldl	$r1,40($r16)
ffffffff80913188:	04 05 24 40 	cmpeq	$r1,$r4,$r4
ffffffff8091318c:	e0 ff a1 f8 	ldi	$r5,-32($r1)
ffffffff80913190:	18 00 80 c4 	bne	$r4,ffffffff809131f4 <default_free_pages+0x1a4>
ffffffff80913194:	18 00 90 88 	ldw	$r4,24($r16)
ffffffff80913198:	23 ed 81 48 	zapnot	$r4,0xf,$r3
ffffffff8091319c:	82 01 60 48 	s8addl	$r3,0,$r2
ffffffff809131a0:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff809131a4:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff809131a8:	02 01 02 42 	addl	$r16,$r2,$r2
ffffffff809131ac:	05 05 a2 40 	cmpeq	$r5,$r2,$r5
ffffffff809131b0:	10 00 a0 c0 	beq	$r5,ffffffff809131f4 <default_free_pages+0x1a4>
ffffffff809131b4:	f8 ff 41 88 	ldw	$r2,-8($r1)
ffffffff809131b8:	04 00 44 40 	addw	$r2,$r4,$r4
ffffffff809131bc:	18 00 90 a8 	stw	$r4,24($r16)
ffffffff809131c0:	e8 ff 81 f8 	ldi	$r4,-24($r1)
ffffffff809131c4:	00 00 44 20 	lldw	$r2,0($r4)
ffffffff809131c8:	01 00 7f f8 	ldi	$r3,1
ffffffff809131cc:	20 10 7f 18 	wr_f	$r3
ffffffff809131d0:	22 47 40 48 	bic	$r2,0x2,$r2
ffffffff809131d4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809131d8:	00 80 44 20 	lstw	$r2,0($r4)
ffffffff809131dc:	00 10 7f 18 	rd_f	$r3
ffffffff809131e0:	3e 00 60 c0 	beq	$r3,ffffffff809132dc <default_free_pages+0x28c>
ffffffff809131e4:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff809131e8:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff809131ec:	08 00 22 ac 	stl	$r1,8($r2)
ffffffff809131f0:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff809131f4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809131f8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809131fc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913200:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913204:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff80913208:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff8091320c:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80913210:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80913214:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff80913218:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091321c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913220:	43 07 e1 43 	mov	$r1,$r3
ffffffff80913224:	20 00 b0 f8 	ldi	$r5,32($r16)
ffffffff80913228:	f8 ff e3 88 	ldw	$r7,-8($r3)
ffffffff8091322c:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff80913230:	00 00 a4 ac 	stl	$r5,0($r4)
ffffffff80913234:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80913238:	28 00 90 ac 	stl	$r4,40($r16)
ffffffff8091323c:	25 ed e1 48 	zapnot	$r7,0xf,$r5
ffffffff80913240:	81 01 a0 48 	s8addl	$r5,0,$r1
ffffffff80913244:	01 01 25 40 	addl	$r1,$r5,$r1
ffffffff80913248:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff8091324c:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80913250:	01 05 01 42 	cmpeq	$r16,$r1,$r1
ffffffff80913254:	cb ff 3f c0 	beq	$r1,ffffffff80913184 <default_free_pages+0x134>
ffffffff80913258:	18 00 30 88 	ldw	$r1,24($r16)
ffffffff8091325c:	07 00 27 40 	addw	$r1,$r7,$r7
ffffffff80913260:	f8 ff e3 a8 	stw	$r7,-8($r3)
ffffffff80913264:	00 00 e6 f8 	ldi	$r7,0($r6)
ffffffff80913268:	00 00 27 20 	lldw	$r1,0($r7)
ffffffff8091326c:	01 00 bf f8 	ldi	$r5,1
ffffffff80913270:	20 10 bf 18 	wr_f	$r5
ffffffff80913274:	21 47 20 48 	bic	$r1,0x2,$r1
ffffffff80913278:	00 80 27 20 	lstw	$r1,0($r7)
ffffffff8091327c:	00 10 bf 18 	rd_f	$r5
ffffffff80913280:	17 00 a0 c0 	beq	$r5,ffffffff809132e0 <default_free_pages+0x290>
ffffffff80913284:	28 00 30 8c 	ldl	$r1,40($r16)
ffffffff80913288:	20 00 b0 8c 	ldl	$r5,32($r16)
ffffffff8091328c:	50 07 e2 43 	mov	$r2,$r16
ffffffff80913290:	08 00 25 ac 	stl	$r1,8($r5)
ffffffff80913294:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff80913298:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff8091329c:	ba ff ff 13 	br	ffffffff80913188 <default_free_pages+0x138>
ffffffff809132a0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809132a4:	81 00 3f fa 	ldi	$r17,129
ffffffff809132a8:	e1 f3 73 fa 	ldi	$r19,-3103($r19)
ffffffff809132ac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809132b0:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff809132b4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809132b8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809132bc:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff809132c0:	cb f3 10 fa 	ldi	$r16,-3125($r16)
ffffffff809132c4:	12 f4 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff809132c8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809132cc:	7e 00 3f fa 	ldi	$r17,126
ffffffff809132d0:	c5 f3 73 fa 	ldi	$r19,-3131($r19)
ffffffff809132d4:	f5 ff ff 13 	br	ffffffff809132ac <default_free_pages+0x25c>
ffffffff809132d8:	7e ff ff 13 	br	ffffffff809130d4 <default_free_pages+0x84>
ffffffff809132dc:	b9 ff ff 13 	br	ffffffff809131c4 <default_free_pages+0x174>
ffffffff809132e0:	e1 ff ff 13 	br	ffffffff80913268 <default_free_pages+0x218>
ffffffff809132e4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809132e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809132ec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809132f0 <default_init_memmap>:
ffffffff809132f0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809132f4:	50 4d bd fb 	ldi	$r29,19792($r29)
ffffffff809132f8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809132fc:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913300:	5d 00 20 c2 	beq	$r17,ffffffff80913478 <default_init_memmap+0x188>
ffffffff80913304:	83 01 20 4a 	s8addl	$r17,0,$r3
ffffffff80913308:	03 01 71 40 	addl	$r3,$r17,$r3
ffffffff8091330c:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff80913310:	03 01 03 42 	addl	$r16,$r3,$r3
ffffffff80913314:	01 05 03 42 	cmpeq	$r16,$r3,$r1
ffffffff80913318:	0d 00 20 c4 	bne	$r1,ffffffff80913350 <default_init_memmap+0x60>
ffffffff8091331c:	08 00 30 88 	ldw	$r1,8($r16)
ffffffff80913320:	4b 00 20 d8 	blbc	$r1,ffffffff80913450 <default_init_memmap+0x160>
ffffffff80913324:	41 07 f0 43 	mov	$r16,$r1
ffffffff80913328:	03 00 e0 13 	br	ffffffff80913338 <default_init_memmap+0x48>
ffffffff8091332c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913330:	08 00 41 88 	ldw	$r2,8($r1)
ffffffff80913334:	46 00 40 d8 	blbc	$r2,ffffffff80913450 <default_init_memmap+0x160>
ffffffff80913338:	18 00 e1 ab 	stw	$r31,24($r1)
ffffffff8091333c:	08 00 e1 af 	stl	$r31,8($r1)
ffffffff80913340:	48 00 21 f8 	ldi	$r1,72($r1)
ffffffff80913344:	b8 ff e1 ab 	stw	$r31,-72($r1)
ffffffff80913348:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff8091334c:	f8 ff 5f c0 	beq	$r2,ffffffff80913330 <default_init_memmap+0x40>
ffffffff80913350:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80913354:	18 00 30 aa 	stw	$r17,24($r16)
ffffffff80913358:	08 00 70 f8 	ldi	$r3,8($r16)
ffffffff8091335c:	00 00 23 20 	lldw	$r1,0($r3)
ffffffff80913360:	01 00 5f f8 	ldi	$r2,1
ffffffff80913364:	20 10 5f 18 	wr_f	$r2
ffffffff80913368:	41 47 20 48 	or	$r1,0x2,$r1
ffffffff8091336c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913370:	00 80 23 20 	lstw	$r1,0($r3)
ffffffff80913374:	00 10 5f 18 	rd_f	$r2
ffffffff80913378:	47 00 40 c0 	beq	$r2,ffffffff80913498 <default_init_memmap+0x1a8>
ffffffff8091337c:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80913380:	40 82 63 8c 	ldl	$r3,-32192($r3)
ffffffff80913384:	10 00 43 88 	ldw	$r2,16($r3)
ffffffff80913388:	08 00 23 8c 	ldl	$r1,8($r3)
ffffffff8091338c:	11 00 51 40 	addw	$r2,$r17,$r17
ffffffff80913390:	02 05 23 40 	cmpeq	$r1,$r3,$r2
ffffffff80913394:	10 00 23 aa 	stw	$r17,16($r3)
ffffffff80913398:	25 00 40 c4 	bne	$r2,ffffffff80913430 <default_init_memmap+0x140>
ffffffff8091339c:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff809133a0:	00 00 c3 8c 	ldl	$r6,0($r3)
ffffffff809133a4:	47 07 ff 43 	clr	$r7
ffffffff809133a8:	20 00 b0 f8 	ldi	$r5,32($r16)
ffffffff809133ac:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff809133b0:	0a 00 40 c4 	bne	$r2,ffffffff809133dc <default_init_memmap+0xec>
ffffffff809133b4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809133b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809133bc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809133c0:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff809133c4:	04 05 43 40 	cmpeq	$r2,$r3,$r4
ffffffff809133c8:	0d 00 80 c4 	bne	$r4,ffffffff80913400 <default_init_memmap+0x110>
ffffffff809133cc:	41 07 e2 43 	mov	$r2,$r1
ffffffff809133d0:	e0 ff 41 f8 	ldi	$r2,-32($r1)
ffffffff809133d4:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff809133d8:	f9 ff 5f c0 	beq	$r2,ffffffff809133c0 <default_init_memmap+0xd0>
ffffffff809133dc:	2c 00 e0 c4 	bne	$r7,ffffffff80913490 <default_init_memmap+0x1a0>
ffffffff809133e0:	00 00 41 8c 	ldl	$r2,0($r1)
ffffffff809133e4:	00 00 a1 ac 	stl	$r5,0($r1)
ffffffff809133e8:	08 00 a2 ac 	stl	$r5,8($r2)
ffffffff809133ec:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff809133f0:	20 00 50 ac 	stl	$r2,32($r16)
ffffffff809133f4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809133f8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809133fc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913400:	08 00 a1 ac 	stl	$r5,8($r1)
ffffffff80913404:	46 07 e5 43 	mov	$r5,$r6
ffffffff80913408:	28 00 70 ac 	stl	$r3,40($r16)
ffffffff8091340c:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80913410:	08 00 41 8c 	ldl	$r2,8($r1)
ffffffff80913414:	01 05 43 40 	cmpeq	$r2,$r3,$r1
ffffffff80913418:	1b 00 20 c4 	bne	$r1,ffffffff80913488 <default_init_memmap+0x198>
ffffffff8091341c:	01 00 ff f8 	ldi	$r7,1
ffffffff80913420:	41 07 e2 43 	mov	$r2,$r1
ffffffff80913424:	ea ff ff 13 	br	ffffffff809133d0 <default_init_memmap+0xe0>
ffffffff80913428:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091342c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913430:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913434:	20 00 50 f8 	ldi	$r2,32($r16)
ffffffff80913438:	28 00 30 ac 	stl	$r1,40($r16)
ffffffff8091343c:	20 00 30 ac 	stl	$r1,32($r16)
ffffffff80913440:	00 00 41 ac 	stl	$r2,0($r1)
ffffffff80913444:	08 00 41 ac 	stl	$r2,8($r1)
ffffffff80913448:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091344c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913450:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913454:	47 00 3f fa 	ldi	$r17,71
ffffffff80913458:	06 f4 73 fa 	ldi	$r19,-3066($r19)
ffffffff8091345c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913460:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80913464:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80913468:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091346c:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff80913470:	cb f3 10 fa 	ldi	$r16,-3125($r16)
ffffffff80913474:	a6 f3 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80913478:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091347c:	44 00 3f fa 	ldi	$r17,68
ffffffff80913480:	c5 f3 73 fa 	ldi	$r19,-3131($r19)
ffffffff80913484:	f5 ff ff 13 	br	ffffffff8091345c <default_init_memmap+0x16c>
ffffffff80913488:	00 00 a3 ac 	stl	$r5,0($r3)
ffffffff8091348c:	d9 ff ff 13 	br	ffffffff809133f4 <default_init_memmap+0x104>
ffffffff80913490:	00 00 c3 ac 	stl	$r6,0($r3)
ffffffff80913494:	d2 ff ff 13 	br	ffffffff809133e0 <default_init_memmap+0xf0>
ffffffff80913498:	b0 ff ff 13 	br	ffffffff8091335c <default_init_memmap+0x6c>
ffffffff8091349c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809134a0 <default_check>:
ffffffff809134a0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809134a4:	a0 4b bd fb 	ldi	$r29,19360($r29)
ffffffff809134a8:	a0 ff de fb 	ldi	sp,-96(sp)
ffffffff809134ac:	30 00 de ad 	stl	$r14,48(sp)
ffffffff809134b0:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff809134b4:	40 82 ce 8d 	ldl	$r14,-32192($r14)
ffffffff809134b8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809134bc:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809134c0:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809134c4:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809134c8:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff809134cc:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809134d0:	28 00 be ad 	stl	$r13,40(sp)
ffffffff809134d4:	38 00 fe ad 	stl	fp,56(sp)
ffffffff809134d8:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff809134dc:	ec 01 60 c4 	bne	$r3,ffffffff80913c90 <default_check+0x7f0>
ffffffff809134e0:	e8 ff 61 88 	ldw	$r3,-24($r1)
ffffffff809134e4:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff809134e8:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff809134ec:	f6 01 60 c0 	beq	$r3,ffffffff80913cc8 <default_check+0x828>
ffffffff809134f0:	49 07 ff 43 	clr	$r9
ffffffff809134f4:	4a 07 ff 43 	clr	$r10
ffffffff809134f8:	04 00 e0 13 	br	ffffffff8091350c <default_check+0x6c>
ffffffff809134fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913500:	e8 ff 61 88 	ldw	$r3,-24($r1)
ffffffff80913504:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff80913508:	ef 01 60 c0 	beq	$r3,ffffffff80913cc8 <default_check+0x828>
ffffffff8091350c:	f8 ff 81 88 	ldw	$r4,-8($r1)
ffffffff80913510:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80913514:	0a 20 40 49 	addw	$r10,0x1,$r10
ffffffff80913518:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff8091351c:	09 00 89 40 	addw	$r4,$r9,$r9
ffffffff80913520:	f7 ff 7f c0 	beq	$r3,ffffffff80913500 <default_check+0x60>
ffffffff80913524:	4b 07 e9 43 	mov	$r9,$r11
ffffffff80913528:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091352c:	30 81 7b 8f 	ldl	$r27,-32464($r27)
ffffffff80913530:	b7 02 5b 07 	call	ra,($r27),ffffffff80914010 <nr_free_pages>
ffffffff80913534:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913538:	00 05 0b 40 	cmpeq	$r0,$r11,$r0
ffffffff8091353c:	0c 4b bd fb 	ldi	$r29,19212($r29)
ffffffff80913540:	d7 01 00 c0 	beq	$r0,ffffffff80913ca0 <default_check+0x800>
ffffffff80913544:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913548:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff8091354c:	01 00 1f fa 	ldi	$r16,1
ffffffff80913550:	5b 02 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913554:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913558:	ec 4a bd fb 	ldi	$r29,19180($r29)
ffffffff8091355c:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80913560:	b8 00 3f fa 	ldi	$r17,184
ffffffff80913564:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913568:	16 f4 73 fa 	ldi	$r19,-3050($r19)
ffffffff8091356c:	cf 01 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff80913570:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913574:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913578:	01 00 1f fa 	ldi	$r16,1
ffffffff8091357c:	50 02 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913580:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913584:	c0 4a bd fb 	ldi	$r29,19136($r29)
ffffffff80913588:	4d 07 e0 43 	mov	$r0,$r13
ffffffff8091358c:	b9 00 3f fa 	ldi	$r17,185
ffffffff80913590:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913594:	32 f4 73 fa 	ldi	$r19,-3022($r19)
ffffffff80913598:	c4 01 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff8091359c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809135a0:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809135a4:	01 00 1f fa 	ldi	$r16,1
ffffffff809135a8:	45 02 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff809135ac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809135b0:	94 4a bd fb 	ldi	$r29,19092($r29)
ffffffff809135b4:	4c 07 e0 43 	mov	$r0,$r12
ffffffff809135b8:	ba 00 3f fa 	ldi	$r17,186
ffffffff809135bc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809135c0:	4e f4 73 fa 	ldi	$r19,-2994($r19)
ffffffff809135c4:	b9 01 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff809135c8:	03 05 a0 41 	cmpeq	$r13,$r0,$r3
ffffffff809135cc:	05 05 60 41 	cmpeq	$r11,$r0,$r5
ffffffff809135d0:	01 05 6d 41 	cmpeq	$r11,$r13,$r1
ffffffff809135d4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809135d8:	44 07 e3 43 	mov	$r3,$r4
ffffffff809135dc:	bc 00 3f fa 	ldi	$r17,188
ffffffff809135e0:	6a f4 73 fa 	ldi	$r19,-2966($r19)
ffffffff809135e4:	43 07 85 40 	or	$r4,$r5,$r3
ffffffff809135e8:	41 07 23 40 	or	$r1,$r3,$r1
ffffffff809135ec:	af 01 20 c4 	bne	$r1,ffffffff80913cac <default_check+0x80c>
ffffffff809135f0:	00 00 2b 88 	ldw	$r1,0($r11)
ffffffff809135f4:	b8 01 20 c4 	bne	$r1,ffffffff80913cd8 <default_check+0x838>
ffffffff809135f8:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff809135fc:	b6 01 20 c4 	bne	$r1,ffffffff80913cd8 <default_check+0x838>
ffffffff80913600:	00 00 20 88 	ldw	$r1,0($r0)
ffffffff80913604:	b4 01 20 c4 	bne	$r1,ffffffff80913cd8 <default_check+0x838>
ffffffff80913608:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091360c:	88 82 21 8c 	ldl	$r1,-32120($r1)
ffffffff80913610:	ff ff dd fc 	ldih	$r6,-1($r29)
ffffffff80913614:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff80913618:	20 81 63 8c 	ldl	$r3,-32480($r3)
ffffffff8091361c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913620:	f0 f6 e6 8c 	ldl	$r7,-2320($r6)
ffffffff80913624:	bf 00 3f fa 	ldi	$r17,191
ffffffff80913628:	c7 f4 73 fa 	ldi	$r19,-2873($r19)
ffffffff8091362c:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80913630:	00 00 a3 8c 	ldl	$r5,0($r3)
ffffffff80913634:	24 01 61 41 	subl	$r11,$r1,$r4
ffffffff80913638:	05 a9 a1 48 	sll	$r5,0xd,$r5
ffffffff8091363c:	44 69 80 48 	sra	$r4,0x3,$r4
ffffffff80913640:	04 03 87 40 	mull	$r4,$r7,$r4
ffffffff80913644:	04 a9 81 48 	sll	$r4,0xd,$r4
ffffffff80913648:	64 05 85 40 	cmpult	$r4,$r5,$r4
ffffffff8091364c:	97 01 80 c0 	beq	$r4,ffffffff80913cac <default_check+0x80c>
ffffffff80913650:	23 01 a1 41 	subl	$r13,$r1,$r3
ffffffff80913654:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913658:	c0 00 3f fa 	ldi	$r17,192
ffffffff8091365c:	43 69 60 48 	sra	$r3,0x3,$r3
ffffffff80913660:	e4 f4 73 fa 	ldi	$r19,-2844($r19)
ffffffff80913664:	03 03 67 40 	mull	$r3,$r7,$r3
ffffffff80913668:	03 a9 61 48 	sll	$r3,0xd,$r3
ffffffff8091366c:	83 05 a3 40 	cmpule	$r5,$r3,$r3
ffffffff80913670:	8e 01 60 c4 	bne	$r3,ffffffff80913cac <default_check+0x80c>
ffffffff80913674:	f0 f6 66 8c 	ldl	$r3,-2320($r6)
ffffffff80913678:	21 01 01 40 	subl	$r0,$r1,$r1
ffffffff8091367c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913680:	c1 00 3f fa 	ldi	$r17,193
ffffffff80913684:	41 69 20 48 	sra	$r1,0x3,$r1
ffffffff80913688:	01 f5 73 fa 	ldi	$r19,-2815($r19)
ffffffff8091368c:	01 03 23 40 	mull	$r1,$r3,$r1
ffffffff80913690:	01 a9 21 48 	sll	$r1,0xd,$r1
ffffffff80913694:	81 05 a1 40 	cmpule	$r5,$r1,$r1
ffffffff80913698:	84 01 20 c4 	bne	$r1,ffffffff80913cac <default_check+0x80c>
ffffffff8091369c:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff809136a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809136a4:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809136a8:	01 00 1f fa 	ldi	$r16,1
ffffffff809136ac:	00 00 ee 8d 	ldl	fp,0($r14)
ffffffff809136b0:	08 00 ce ad 	stl	$r14,8($r14)
ffffffff809136b4:	00 00 ce ad 	stl	$r14,0($r14)
ffffffff809136b8:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff809136bc:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff809136c0:	10 00 ee ab 	stw	$r31,16($r14)
ffffffff809136c4:	48 00 3e ac 	stl	$r1,72(sp)
ffffffff809136c8:	fd 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff809136cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809136d0:	74 49 bd fb 	ldi	$r29,18804($r29)
ffffffff809136d4:	ca 00 3f fa 	ldi	$r17,202
ffffffff809136d8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809136dc:	1e f5 73 fa 	ldi	$r19,-2786($r19)
ffffffff809136e0:	72 01 00 c4 	bne	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff809136e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809136e8:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff809136ec:	01 00 3f fa 	ldi	$r17,1
ffffffff809136f0:	50 07 eb 43 	mov	$r11,$r16
ffffffff809136f4:	32 02 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff809136f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809136fc:	48 49 bd fb 	ldi	$r29,18760($r29)
ffffffff80913700:	01 00 3f fa 	ldi	$r17,1
ffffffff80913704:	50 07 ed 43 	mov	$r13,$r16
ffffffff80913708:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091370c:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80913710:	2b 02 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80913714:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913718:	2c 49 bd fb 	ldi	$r29,18732($r29)
ffffffff8091371c:	01 00 3f fa 	ldi	$r17,1
ffffffff80913720:	50 07 ec 43 	mov	$r12,$r16
ffffffff80913724:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913728:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff8091372c:	24 02 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80913730:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913734:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80913738:	10 49 bd fb 	ldi	$r29,18704($r29)
ffffffff8091373c:	cf 00 3f fa 	ldi	$r17,207
ffffffff80913740:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913744:	33 f5 73 fa 	ldi	$r19,-2765($r19)
ffffffff80913748:	01 65 20 48 	cmpeq	$r1,0x3,$r1
ffffffff8091374c:	57 01 20 c0 	beq	$r1,ffffffff80913cac <default_check+0x80c>
ffffffff80913750:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913754:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913758:	01 00 1f fa 	ldi	$r16,1
ffffffff8091375c:	d8 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913760:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913764:	e0 48 bd fb 	ldi	$r29,18656($r29)
ffffffff80913768:	4b 07 e0 43 	mov	$r0,$r11
ffffffff8091376c:	d1 00 3f fa 	ldi	$r17,209
ffffffff80913770:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913774:	16 f4 73 fa 	ldi	$r19,-3050($r19)
ffffffff80913778:	4c 01 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff8091377c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913780:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913784:	01 00 1f fa 	ldi	$r16,1
ffffffff80913788:	cd 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff8091378c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913790:	b4 48 bd fb 	ldi	$r29,18612($r29)
ffffffff80913794:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80913798:	d2 00 3f fa 	ldi	$r17,210
ffffffff8091379c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809137a0:	32 f4 73 fa 	ldi	$r19,-3022($r19)
ffffffff809137a4:	41 01 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff809137a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809137ac:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809137b0:	01 00 1f fa 	ldi	$r16,1
ffffffff809137b4:	c2 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff809137b8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809137bc:	88 48 bd fb 	ldi	$r29,18568($r29)
ffffffff809137c0:	4c 07 e0 43 	mov	$r0,$r12
ffffffff809137c4:	d3 00 3f fa 	ldi	$r17,211
ffffffff809137c8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809137cc:	4e f4 73 fa 	ldi	$r19,-2994($r19)
ffffffff809137d0:	36 01 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff809137d4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809137d8:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809137dc:	01 00 1f fa 	ldi	$r16,1
ffffffff809137e0:	b7 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff809137e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809137e8:	5c 48 bd fb 	ldi	$r29,18524($r29)
ffffffff809137ec:	d5 00 3f fa 	ldi	$r17,213
ffffffff809137f0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809137f4:	1e f5 73 fa 	ldi	$r19,-2786($r19)
ffffffff809137f8:	2c 01 00 c4 	bne	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff809137fc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913800:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80913804:	01 00 3f fa 	ldi	$r17,1
ffffffff80913808:	50 07 eb 43 	mov	$r11,$r16
ffffffff8091380c:	ec 01 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80913810:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913814:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80913818:	30 48 bd fb 	ldi	$r29,18480($r29)
ffffffff8091381c:	d8 00 3f fa 	ldi	$r17,216
ffffffff80913820:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913824:	40 f5 73 fa 	ldi	$r19,-2752($r19)
ffffffff80913828:	01 05 2e 40 	cmpeq	$r1,$r14,$r1
ffffffff8091382c:	1f 01 20 c4 	bne	$r1,ffffffff80913cac <default_check+0x80c>
ffffffff80913830:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913834:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913838:	01 00 1f fa 	ldi	$r16,1
ffffffff8091383c:	a0 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913840:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913844:	00 48 bd fb 	ldi	$r29,18432($r29)
ffffffff80913848:	00 05 60 41 	cmpeq	$r11,$r0,$r0
ffffffff8091384c:	db 00 3f fa 	ldi	$r17,219
ffffffff80913850:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913854:	58 f5 73 fa 	ldi	$r19,-2728($r19)
ffffffff80913858:	14 01 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff8091385c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913860:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913864:	01 00 1f fa 	ldi	$r16,1
ffffffff80913868:	95 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff8091386c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913870:	d4 47 bd fb 	ldi	$r29,18388($r29)
ffffffff80913874:	dc 00 3f fa 	ldi	$r17,220
ffffffff80913878:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091387c:	1e f5 73 fa 	ldi	$r19,-2786($r19)
ffffffff80913880:	0a 01 00 c4 	bne	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff80913884:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80913888:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091388c:	de 00 3f fa 	ldi	$r17,222
ffffffff80913890:	3c f2 73 fa 	ldi	$r19,-3524($r19)
ffffffff80913894:	05 01 20 c4 	bne	$r1,ffffffff80913cac <default_check+0x80c>
ffffffff80913898:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff8091389c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809138a0:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff809138a4:	01 00 3f fa 	ldi	$r17,1
ffffffff809138a8:	50 07 eb 43 	mov	$r11,$r16
ffffffff809138ac:	00 00 ee ad 	stl	fp,0($r14)
ffffffff809138b0:	08 00 2e ac 	stl	$r1,8($r14)
ffffffff809138b4:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff809138b8:	10 00 2e a8 	stw	$r1,16($r14)
ffffffff809138bc:	c0 01 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff809138c0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809138c4:	80 47 bd fb 	ldi	$r29,18304($r29)
ffffffff809138c8:	01 00 3f fa 	ldi	$r17,1
ffffffff809138cc:	50 07 ed 43 	mov	$r13,$r16
ffffffff809138d0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809138d4:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff809138d8:	b9 01 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff809138dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809138e0:	64 47 bd fb 	ldi	$r29,18276($r29)
ffffffff809138e4:	01 00 3f fa 	ldi	$r17,1
ffffffff809138e8:	50 07 ec 43 	mov	$r12,$r16
ffffffff809138ec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809138f0:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff809138f4:	b2 01 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff809138f8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809138fc:	48 47 bd fb 	ldi	$r29,18248($r29)
ffffffff80913900:	05 00 1f fa 	ldi	$r16,5
ffffffff80913904:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913908:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff8091390c:	6c 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913910:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913914:	30 47 bd fb 	ldi	$r29,18224($r29)
ffffffff80913918:	4c 07 e0 43 	mov	$r0,$r12
ffffffff8091391c:	f7 00 3f fa 	ldi	$r17,247
ffffffff80913920:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913924:	71 f5 73 fa 	ldi	$r19,-2703($r19)
ffffffff80913928:	e0 00 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff8091392c:	08 00 60 88 	ldw	$r3,8($r0)
ffffffff80913930:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913934:	f8 00 3f fa 	ldi	$r17,248
ffffffff80913938:	7c f5 73 fa 	ldi	$r19,-2692($r19)
ffffffff8091393c:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff80913940:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff80913944:	d9 00 60 c4 	bne	$r3,ffffffff80913cac <default_check+0x80c>
ffffffff80913948:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff8091394c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913950:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913954:	01 00 1f fa 	ldi	$r16,1
ffffffff80913958:	00 00 ce ad 	stl	$r14,0($r14)
ffffffff8091395c:	40 00 3e ac 	stl	$r1,64(sp)
ffffffff80913960:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80913964:	08 00 ce ad 	stl	$r14,8($r14)
ffffffff80913968:	50 00 3e ac 	stl	$r1,80(sp)
ffffffff8091396c:	54 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913970:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913974:	d0 46 bd fb 	ldi	$r29,18128($r29)
ffffffff80913978:	fd 00 3f fa 	ldi	$r17,253
ffffffff8091397c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913980:	1e f5 73 fa 	ldi	$r19,-2786($r19)
ffffffff80913984:	c9 00 00 c4 	bne	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff80913988:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff8091398c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913990:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80913994:	90 00 6c f9 	ldi	$r11,144($r12)
ffffffff80913998:	03 00 3f fa 	ldi	$r17,3
ffffffff8091399c:	50 07 eb 43 	mov	$r11,$r16
ffffffff809139a0:	10 00 ee ab 	stw	$r31,16($r14)
ffffffff809139a4:	48 00 3e ac 	stl	$r1,72(sp)
ffffffff809139a8:	85 01 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff809139ac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809139b0:	94 46 bd fb 	ldi	$r29,18068($r29)
ffffffff809139b4:	04 00 1f fa 	ldi	$r16,4
ffffffff809139b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809139bc:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809139c0:	3f 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff809139c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809139c8:	7c 46 bd fb 	ldi	$r29,18044($r29)
ffffffff809139cc:	03 01 3f fa 	ldi	$r17,259
ffffffff809139d0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809139d4:	8e f5 73 fa 	ldi	$r19,-2674($r19)
ffffffff809139d8:	b4 00 00 c4 	bne	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff809139dc:	98 00 6c 88 	ldw	$r3,152($r12)
ffffffff809139e0:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff809139e4:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff809139e8:	c3 00 60 c0 	beq	$r3,ffffffff80913cf8 <default_check+0x858>
ffffffff809139ec:	a8 00 6c 88 	ldw	$r3,168($r12)
ffffffff809139f0:	03 65 60 48 	cmpeq	$r3,0x3,$r3
ffffffff809139f4:	c0 00 60 c0 	beq	$r3,ffffffff80913cf8 <default_check+0x858>
ffffffff809139f8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809139fc:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913a00:	03 00 1f fa 	ldi	$r16,3
ffffffff80913a04:	2e 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913a08:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913a0c:	38 46 bd fb 	ldi	$r29,17976($r29)
ffffffff80913a10:	4d 07 e0 43 	mov	$r0,$r13
ffffffff80913a14:	05 01 3f fa 	ldi	$r17,261
ffffffff80913a18:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913a1c:	d1 f5 73 fa 	ldi	$r19,-2607($r19)
ffffffff80913a20:	a2 00 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff80913a24:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913a28:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913a2c:	01 00 1f fa 	ldi	$r16,1
ffffffff80913a30:	23 01 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913a34:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913a38:	0c 46 bd fb 	ldi	$r29,17932($r29)
ffffffff80913a3c:	06 01 3f fa 	ldi	$r17,262
ffffffff80913a40:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913a44:	1e f5 73 fa 	ldi	$r19,-2786($r19)
ffffffff80913a48:	98 00 00 c4 	bne	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff80913a4c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913a50:	04 05 6d 41 	cmpeq	$r11,$r13,$r4
ffffffff80913a54:	07 01 3f fa 	ldi	$r17,263
ffffffff80913a58:	ef f5 73 fa 	ldi	$r19,-2577($r19)
ffffffff80913a5c:	93 00 80 c0 	beq	$r4,ffffffff80913cac <default_check+0x80c>
ffffffff80913a60:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913a64:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80913a68:	01 00 3f fa 	ldi	$r17,1
ffffffff80913a6c:	50 07 ec 43 	mov	$r12,$r16
ffffffff80913a70:	48 00 ec f9 	ldi	fp,72($r12)
ffffffff80913a74:	52 01 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80913a78:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913a7c:	c8 45 bd fb 	ldi	$r29,17864($r29)
ffffffff80913a80:	03 00 3f fa 	ldi	$r17,3
ffffffff80913a84:	50 07 ed 43 	mov	$r13,$r16
ffffffff80913a88:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913a8c:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80913a90:	4b 01 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80913a94:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913a98:	08 00 6c 88 	ldw	$r3,8($r12)
ffffffff80913a9c:	ac 45 bd fb 	ldi	$r29,17836($r29)
ffffffff80913aa0:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff80913aa4:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff80913aa8:	8f 00 60 c0 	beq	$r3,ffffffff80913ce8 <default_check+0x848>
ffffffff80913aac:	18 00 6c 88 	ldw	$r3,24($r12)
ffffffff80913ab0:	03 25 60 48 	cmpeq	$r3,0x1,$r3
ffffffff80913ab4:	8c 00 60 c0 	beq	$r3,ffffffff80913ce8 <default_check+0x848>
ffffffff80913ab8:	98 00 6c 88 	ldw	$r3,152($r12)
ffffffff80913abc:	03 47 60 48 	and	$r3,0x2,$r3
ffffffff80913ac0:	63 05 e3 43 	cmpult	$r31,$r3,$r3
ffffffff80913ac4:	90 00 60 c0 	beq	$r3,ffffffff80913d08 <default_check+0x868>
ffffffff80913ac8:	a8 00 6c 88 	ldw	$r3,168($r12)
ffffffff80913acc:	03 65 60 48 	cmpeq	$r3,0x3,$r3
ffffffff80913ad0:	8d 00 60 c0 	beq	$r3,ffffffff80913d08 <default_check+0x868>
ffffffff80913ad4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913ad8:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913adc:	01 00 1f fa 	ldi	$r16,1
ffffffff80913ae0:	f7 00 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913ae4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913ae8:	5c 45 bd fb 	ldi	$r29,17756($r29)
ffffffff80913aec:	00 05 80 41 	cmpeq	$r12,$r0,$r0
ffffffff80913af0:	0f 01 3f fa 	ldi	$r17,271
ffffffff80913af4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913af8:	48 f6 73 fa 	ldi	$r19,-2488($r19)
ffffffff80913afc:	6b 00 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff80913b00:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913b04:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80913b08:	01 00 3f fa 	ldi	$r17,1
ffffffff80913b0c:	50 07 ec 43 	mov	$r12,$r16
ffffffff80913b10:	2b 01 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80913b14:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b18:	2c 45 bd fb 	ldi	$r29,17708($r29)
ffffffff80913b1c:	02 00 1f fa 	ldi	$r16,2
ffffffff80913b20:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913b24:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913b28:	e5 00 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913b2c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b30:	14 45 bd fb 	ldi	$r29,17684($r29)
ffffffff80913b34:	00 05 60 41 	cmpeq	$r11,$r0,$r0
ffffffff80913b38:	11 01 3f fa 	ldi	$r17,273
ffffffff80913b3c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913b40:	66 f6 73 fa 	ldi	$r19,-2458($r19)
ffffffff80913b44:	59 00 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff80913b48:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913b4c:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80913b50:	50 07 eb 43 	mov	$r11,$r16
ffffffff80913b54:	02 00 3f fa 	ldi	$r17,2
ffffffff80913b58:	19 01 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80913b5c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b60:	e4 44 bd fb 	ldi	$r29,17636($r29)
ffffffff80913b64:	01 00 3f fa 	ldi	$r17,1
ffffffff80913b68:	50 07 ef 43 	mov	fp,$r16
ffffffff80913b6c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913b70:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80913b74:	12 01 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80913b78:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b7c:	c8 44 bd fb 	ldi	$r29,17608($r29)
ffffffff80913b80:	05 00 1f fa 	ldi	$r16,5
ffffffff80913b84:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913b88:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913b8c:	cc 00 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913b90:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913b94:	b0 44 bd fb 	ldi	$r29,17584($r29)
ffffffff80913b98:	4b 07 e0 43 	mov	$r0,$r11
ffffffff80913b9c:	16 01 3f fa 	ldi	$r17,278
ffffffff80913ba0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913ba4:	86 f6 73 fa 	ldi	$r19,-2426($r19)
ffffffff80913ba8:	40 00 00 c0 	beq	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff80913bac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913bb0:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80913bb4:	01 00 1f fa 	ldi	$r16,1
ffffffff80913bb8:	c1 00 5b 07 	call	ra,($r27),ffffffff80913ec0 <alloc_pages>
ffffffff80913bbc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913bc0:	84 44 bd fb 	ldi	$r29,17540($r29)
ffffffff80913bc4:	17 01 3f fa 	ldi	$r17,279
ffffffff80913bc8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913bcc:	1e f5 73 fa 	ldi	$r19,-2786($r19)
ffffffff80913bd0:	36 00 00 c4 	bne	$r0,ffffffff80913cac <default_check+0x80c>
ffffffff80913bd4:	10 00 2e 88 	ldw	$r1,16($r14)
ffffffff80913bd8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913bdc:	19 01 3f fa 	ldi	$r17,281
ffffffff80913be0:	3c f2 73 fa 	ldi	$r19,-3524($r19)
ffffffff80913be4:	31 00 20 c4 	bne	$r1,ffffffff80913cac <default_check+0x80c>
ffffffff80913be8:	48 00 3e 8c 	ldl	$r1,72(sp)
ffffffff80913bec:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913bf0:	90 80 7b 8f 	ldl	$r27,-32624($r27)
ffffffff80913bf4:	05 00 3f fa 	ldi	$r17,5
ffffffff80913bf8:	50 07 eb 43 	mov	$r11,$r16
ffffffff80913bfc:	10 00 2e a8 	stw	$r1,16($r14)
ffffffff80913c00:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff80913c04:	00 00 2e ac 	stl	$r1,0($r14)
ffffffff80913c08:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff80913c0c:	08 00 2e ac 	stl	$r1,8($r14)
ffffffff80913c10:	eb 00 5b 07 	call	ra,($r27),ffffffff80913fc0 <free_pages>
ffffffff80913c14:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913c18:	08 00 2e 8c 	ldl	$r1,8($r14)
ffffffff80913c1c:	2c 44 bd fb 	ldi	$r29,17452($r29)
ffffffff80913c20:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff80913c24:	08 00 60 c4 	bne	$r3,ffffffff80913c48 <default_check+0x7a8>
ffffffff80913c28:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913c2c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913c30:	f8 ff 81 88 	ldw	$r4,-8($r1)
ffffffff80913c34:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80913c38:	2a 20 40 49 	subw	$r10,0x1,$r10
ffffffff80913c3c:	03 05 2e 40 	cmpeq	$r1,$r14,$r3
ffffffff80913c40:	29 00 24 41 	subw	$r9,$r4,$r9
ffffffff80913c44:	fa ff 7f c0 	beq	$r3,ffffffff80913c30 <default_check+0x790>
ffffffff80913c48:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913c4c:	24 01 3f fa 	ldi	$r17,292
ffffffff80913c50:	ef f2 73 fa 	ldi	$r19,-3345($r19)
ffffffff80913c54:	15 00 40 c5 	bne	$r10,ffffffff80913cac <default_check+0x80c>
ffffffff80913c58:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913c5c:	25 01 3f fa 	ldi	$r17,293
ffffffff80913c60:	fa f2 73 fa 	ldi	$r19,-3334($r19)
ffffffff80913c64:	11 00 20 c5 	bne	$r9,ffffffff80913cac <default_check+0x80c>
ffffffff80913c68:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913c6c:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80913c70:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80913c74:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80913c78:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80913c7c:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80913c80:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80913c84:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80913c88:	60 00 de fb 	ldi	sp,96(sp)
ffffffff80913c8c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913c90:	4b 07 ff 43 	clr	$r11
ffffffff80913c94:	49 07 ff 43 	clr	$r9
ffffffff80913c98:	4a 07 ff 43 	clr	$r10
ffffffff80913c9c:	22 fe ff 13 	br	ffffffff80913528 <default_check+0x88>
ffffffff80913ca0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913ca4:	f2 00 3f fa 	ldi	$r17,242
ffffffff80913ca8:	d7 f0 73 fa 	ldi	$r19,-3881($r19)
ffffffff80913cac:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913cb0:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80913cb4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80913cb8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913cbc:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff80913cc0:	cb f3 10 fa 	ldi	$r16,-3125($r16)
ffffffff80913cc4:	92 f1 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80913cc8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913ccc:	ef 00 3f fa 	ldi	$r17,239
ffffffff80913cd0:	f6 f3 73 fa 	ldi	$r19,-3082($r19)
ffffffff80913cd4:	f5 ff ff 13 	br	ffffffff80913cac <default_check+0x80c>
ffffffff80913cd8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913cdc:	bd 00 3f fa 	ldi	$r17,189
ffffffff80913ce0:	8b f4 73 fa 	ldi	$r19,-2933($r19)
ffffffff80913ce4:	f1 ff ff 13 	br	ffffffff80913cac <default_check+0x80c>
ffffffff80913ce8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913cec:	0c 01 3f fa 	ldi	$r17,268
ffffffff80913cf0:	fc f5 73 fa 	ldi	$r19,-2564($r19)
ffffffff80913cf4:	ed ff ff 13 	br	ffffffff80913cac <default_check+0x80c>
ffffffff80913cf8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913cfc:	04 01 3f fa 	ldi	$r17,260
ffffffff80913d00:	a5 f5 73 fa 	ldi	$r19,-2651($r19)
ffffffff80913d04:	e9 ff ff 13 	br	ffffffff80913cac <default_check+0x80c>
ffffffff80913d08:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913d0c:	0d 01 3f fa 	ldi	$r17,269
ffffffff80913d10:	22 f6 73 fa 	ldi	$r19,-2526($r19)
ffffffff80913d14:	e5 ff ff 13 	br	ffffffff80913cac <default_check+0x80c>
ffffffff80913d18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913d1c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80913d20 <default_alloc_pages>:
ffffffff80913d20:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913d24:	20 43 bd fb 	ldi	$r29,17184($r29)
ffffffff80913d28:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80913d2c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913d30:	43 00 00 c2 	beq	$r16,ffffffff80913e40 <default_alloc_pages+0x120>
ffffffff80913d34:	00 00 bd fc 	ldih	$r5,0($r29)
ffffffff80913d38:	40 82 a5 8c 	ldl	$r5,-32192($r5)
ffffffff80913d3c:	40 07 ff 43 	clr	$r0
ffffffff80913d40:	10 00 c5 88 	ldw	$r6,16($r5)
ffffffff80913d44:	21 ed c1 48 	zapnot	$r6,0xf,$r1
ffffffff80913d48:	61 05 30 40 	cmpult	$r1,$r16,$r1
ffffffff80913d4c:	0c 00 20 c4 	bne	$r1,ffffffff80913d80 <default_alloc_pages+0x60>
ffffffff80913d50:	41 07 e5 43 	mov	$r5,$r1
ffffffff80913d54:	06 00 e0 13 	br	ffffffff80913d70 <default_alloc_pages+0x50>
ffffffff80913d58:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913d5c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913d60:	f8 ff 61 88 	ldw	$r3,-8($r1)
ffffffff80913d64:	22 ed 61 48 	zapnot	$r3,0xf,$r2
ffffffff80913d68:	84 05 02 42 	cmpule	$r16,$r2,$r4
ffffffff80913d6c:	08 00 80 c4 	bne	$r4,ffffffff80913d90 <default_alloc_pages+0x70>
ffffffff80913d70:	08 00 21 8c 	ldl	$r1,8($r1)
ffffffff80913d74:	02 05 25 40 	cmpeq	$r1,$r5,$r2
ffffffff80913d78:	f9 ff 5f c0 	beq	$r2,ffffffff80913d60 <default_alloc_pages+0x40>
ffffffff80913d7c:	40 07 ff 43 	clr	$r0
ffffffff80913d80:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913d84:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80913d88:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913d8c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913d90:	e0 ff 01 f8 	ldi	$r0,-32($r1)
ffffffff80913d94:	fa ff 1f c0 	beq	$r0,ffffffff80913d80 <default_alloc_pages+0x60>
ffffffff80913d98:	00 00 81 8c 	ldl	$r4,0($r1)
ffffffff80913d9c:	08 00 e1 8c 	ldl	$r7,8($r1)
ffffffff80913da0:	62 05 02 42 	cmpult	$r16,$r2,$r2
ffffffff80913da4:	08 00 f0 43 	addw	$r31,$r16,$r8
ffffffff80913da8:	08 00 e4 ac 	stl	$r7,8($r4)
ffffffff80913dac:	00 00 87 ac 	stl	$r4,0($r7)
ffffffff80913db0:	15 00 40 c0 	beq	$r2,ffffffff80913e08 <default_alloc_pages+0xe8>
ffffffff80913db4:	82 01 00 4a 	s8addl	$r16,0,$r2
ffffffff80913db8:	23 00 68 40 	subw	$r3,$r8,$r3
ffffffff80913dbc:	02 01 50 40 	addl	$r2,$r16,$r2
ffffffff80913dc0:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80913dc4:	02 01 02 40 	addl	$r0,$r2,$r2
ffffffff80913dc8:	18 00 62 a8 	stw	$r3,24($r2)
ffffffff80913dcc:	08 00 e2 f8 	ldi	$r7,8($r2)
ffffffff80913dd0:	00 00 67 20 	lldw	$r3,0($r7)
ffffffff80913dd4:	01 00 df f8 	ldi	$r6,1
ffffffff80913dd8:	20 10 df 18 	wr_f	$r6
ffffffff80913ddc:	43 47 60 48 	or	$r3,0x2,$r3
ffffffff80913de0:	00 80 67 20 	lstw	$r3,0($r7)
ffffffff80913de4:	00 10 df 18 	rd_f	$r6
ffffffff80913de8:	20 00 c0 c0 	beq	$r6,ffffffff80913e6c <default_alloc_pages+0x14c>
ffffffff80913dec:	08 00 64 8c 	ldl	$r3,8($r4)
ffffffff80913df0:	20 00 e2 f8 	ldi	$r7,32($r2)
ffffffff80913df4:	10 00 c5 88 	ldw	$r6,16($r5)
ffffffff80913df8:	00 00 e3 ac 	stl	$r7,0($r3)
ffffffff80913dfc:	08 00 e4 ac 	stl	$r7,8($r4)
ffffffff80913e00:	28 00 62 ac 	stl	$r3,40($r2)
ffffffff80913e04:	20 00 82 ac 	stl	$r4,32($r2)
ffffffff80913e08:	26 00 c8 40 	subw	$r6,$r8,$r6
ffffffff80913e0c:	10 00 c5 a8 	stw	$r6,16($r5)
ffffffff80913e10:	e8 ff 81 f8 	ldi	$r4,-24($r1)
ffffffff80913e14:	00 00 44 20 	lldw	$r2,0($r4)
ffffffff80913e18:	01 00 7f f8 	ldi	$r3,1
ffffffff80913e1c:	20 10 7f 18 	wr_f	$r3
ffffffff80913e20:	22 47 40 48 	bic	$r2,0x2,$r2
ffffffff80913e24:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913e28:	00 80 44 20 	lstw	$r2,0($r4)
ffffffff80913e2c:	00 10 7f 18 	rd_f	$r3
ffffffff80913e30:	0f 00 60 c0 	beq	$r3,ffffffff80913e70 <default_alloc_pages+0x150>
ffffffff80913e34:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913e38:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80913e3c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913e40:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913e44:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80913e48:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80913e4c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80913e50:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913e54:	60 00 3f fa 	ldi	$r17,96
ffffffff80913e58:	c5 f3 73 fa 	ldi	$r19,-3131($r19)
ffffffff80913e5c:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff80913e60:	cb f3 10 fa 	ldi	$r16,-3125($r16)
ffffffff80913e64:	2a f1 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80913e68:	5f 07 ff 43 	nop	
ffffffff80913e6c:	d8 ff ff 13 	br	ffffffff80913dd0 <default_alloc_pages+0xb0>
ffffffff80913e70:	e8 ff ff 13 	br	ffffffff80913e14 <default_alloc_pages+0xf4>
ffffffff80913e74:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913e78:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913e7c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80913e80 <pa2page.part.5>:
ffffffff80913e80:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913e84:	c0 41 bd fb 	ldi	$r29,16832($r29)
ffffffff80913e88:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913e8c:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80913e90:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80913e94:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80913e98:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80913e9c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913ea0:	66 00 3f fa 	ldi	$r17,102
ffffffff80913ea4:	b9 ed 52 fa 	ldi	$r18,-4679($r18)
ffffffff80913ea8:	d8 ed 10 fa 	ldi	$r16,-4648($r16)
ffffffff80913eac:	18 f1 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80913eb0:	5f 07 ff 43 	nop	
	...

ffffffff80913ec0 <alloc_pages>:
ffffffff80913ec0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913ec4:	80 41 bd fb 	ldi	$r29,16768($r29)
ffffffff80913ec8:	c0 ff de fb 	ldi	sp,-64(sp)
ffffffff80913ecc:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80913ed0:	01 00 5f f9 	ldi	$r10,1
ffffffff80913ed4:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80913ed8:	49 07 f0 43 	mov	$r16,$r9
ffffffff80913edc:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80913ee0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80913ee4:	6a 05 50 41 	cmpult	$r10,$r16,$r10
ffffffff80913ee8:	0b 00 f0 43 	addw	$r31,$r16,$r11
ffffffff80913eec:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80913ef0:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80913ef4:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913ef8:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80913efc:	b8 80 8c 8d 	ldl	$r12,-32584($r12)
ffffffff80913f00:	00 00 bd fd 	ldih	$r13,0($r29)
ffffffff80913f04:	c0 80 ad 8d 	ldl	$r13,-32576($r13)
ffffffff80913f08:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff80913f0c:	78 82 ce 8d 	ldl	$r14,-32136($r14)
ffffffff80913f10:	0c 00 e0 13 	br	ffffffff80913f44 <alloc_pages+0x84>
ffffffff80913f14:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913f18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913f1c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913f20:	00 00 2d 88 	ldw	$r1,0($r13)
ffffffff80913f24:	01 00 e1 43 	addw	$r31,$r1,$r1
ffffffff80913f28:	21 00 20 c0 	beq	$r1,ffffffff80913fb0 <alloc_pages+0xf0>
ffffffff80913f2c:	00 00 0e 8e 	ldl	$r16,0($r14)
ffffffff80913f30:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80913f34:	28 82 7b 8f 	ldl	$r27,-32216($r27)
ffffffff80913f38:	6d fb 5b 07 	call	ra,($r27),ffffffff80912cf0 <swap_out>
ffffffff80913f3c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913f40:	04 41 bd fb 	ldi	$r29,16644($r29)
ffffffff80913f44:	07 00 1f fa 	ldi	$r16,7
ffffffff80913f48:	35 00 00 02 	sys_call	0x35
ffffffff80913f4c:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80913f50:	50 07 e9 43 	mov	$r9,$r16
ffffffff80913f54:	18 00 61 8f 	ldl	$r27,24($r1)
ffffffff80913f58:	00 00 5b 07 	call	ra,($r27),ffffffff80913f5c <alloc_pages+0x9c>
ffffffff80913f5c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913f60:	e4 40 bd fb 	ldi	$r29,16612($r29)
ffffffff80913f64:	42 07 e0 43 	mov	$r0,$r2
ffffffff80913f68:	50 07 ff 43 	clr	$r16
ffffffff80913f6c:	35 00 00 02 	sys_call	0x35
ffffffff80913f70:	61 05 e2 43 	cmpult	$r31,$r2,$r1
ffffffff80913f74:	52 07 ff 43 	clr	$r18
ffffffff80913f78:	51 07 eb 43 	mov	$r11,$r17
ffffffff80913f7c:	41 07 41 41 	or	$r10,$r1,$r1
ffffffff80913f80:	e7 ff 3f c0 	beq	$r1,ffffffff80913f20 <alloc_pages+0x60>
ffffffff80913f84:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80913f88:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80913f8c:	40 07 e2 43 	mov	$r2,$r0
ffffffff80913f90:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80913f94:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80913f98:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80913f9c:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80913fa0:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80913fa4:	40 00 de fb 	ldi	sp,64(sp)
ffffffff80913fa8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80913fac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fb0:	42 07 ff 43 	clr	$r2
ffffffff80913fb4:	f3 ff ff 13 	br	ffffffff80913f84 <alloc_pages+0xc4>
ffffffff80913fb8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80913fbc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80913fc0 <free_pages>:
ffffffff80913fc0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80913fc4:	80 40 bd fb 	ldi	$r29,16512($r29)
ffffffff80913fc8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80913fcc:	42 07 f0 43 	mov	$r16,$r2
ffffffff80913fd0:	07 00 1f fa 	ldi	$r16,7
ffffffff80913fd4:	00 00 5e af 	stl	ra,0(sp)
ffffffff80913fd8:	35 00 00 02 	sys_call	0x35
ffffffff80913fdc:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80913fe0:	b8 80 21 8c 	ldl	$r1,-32584($r1)
ffffffff80913fe4:	50 07 e2 43 	mov	$r2,$r16
ffffffff80913fe8:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80913fec:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80913ff0:	00 00 5b 07 	call	ra,($r27),ffffffff80913ff4 <free_pages+0x34>
ffffffff80913ff4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80913ff8:	4c 40 bd fb 	ldi	$r29,16460($r29)
ffffffff80913ffc:	50 07 ff 43 	clr	$r16
ffffffff80914000:	35 00 00 02 	sys_call	0x35
ffffffff80914004:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914008:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091400c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80914010 <nr_free_pages>:
ffffffff80914010:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80914014:	30 40 bd fb 	ldi	$r29,16432($r29)
ffffffff80914018:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091401c:	07 00 1f fa 	ldi	$r16,7
ffffffff80914020:	00 00 5e af 	stl	ra,0(sp)
ffffffff80914024:	35 00 00 02 	sys_call	0x35
ffffffff80914028:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091402c:	b8 80 21 8c 	ldl	$r1,-32584($r1)
ffffffff80914030:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80914034:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80914038:	00 00 5b 07 	call	ra,($r27),ffffffff8091403c <nr_free_pages+0x2c>
ffffffff8091403c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914040:	04 40 bd fb 	ldi	$r29,16388($r29)
ffffffff80914044:	42 07 e0 43 	mov	$r0,$r2
ffffffff80914048:	50 07 ff 43 	clr	$r16
ffffffff8091404c:	35 00 00 02 	sys_call	0x35
ffffffff80914050:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914054:	40 07 e2 43 	mov	$r2,$r0
ffffffff80914058:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091405c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80914060 <get_pte>:
ffffffff80914060:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80914064:	e0 3f bd fb 	ldi	$r29,16352($r29)
ffffffff80914068:	b0 ff de fb 	ldi	sp,-80(sp)
ffffffff8091406c:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80914070:	0c 69 21 4a 	sll	$r17,0xb,$r12
ffffffff80914074:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80914078:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff8091407c:	2c c9 86 49 	srl	$r12,0x36,$r12
ffffffff80914080:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80914084:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80914088:	4b 07 f2 43 	mov	$r18,$r11
ffffffff8091408c:	8c 01 80 49 	s8addl	$r12,0,$r12
ffffffff80914090:	00 00 5e af 	stl	ra,0(sp)
ffffffff80914094:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80914098:	4d 07 f1 43 	mov	$r17,$r13
ffffffff8091409c:	0c 01 0c 42 	addl	$r16,$r12,$r12
ffffffff809140a0:	30 00 de ad 	stl	$r14,48(sp)
ffffffff809140a4:	38 00 fe ad 	stl	fp,56(sp)
ffffffff809140a8:	00 00 6c 8e 	ldl	$r19,0($r12)
ffffffff809140ac:	31 00 60 de 	blbs	$r19,ffffffff80914174 <get_pte+0x114>
ffffffff809140b0:	c7 00 40 c2 	beq	$r18,ffffffff809143d0 <get_pte+0x370>
ffffffff809140b4:	01 00 1f fa 	ldi	$r16,1
ffffffff809140b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809140bc:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809140c0:	00 00 5b 07 	call	ra,($r27),ffffffff809140c4 <get_pte+0x64>
ffffffff809140c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809140c8:	7c 3f bd fb 	ldi	$r29,16252($r29)
ffffffff809140cc:	49 07 e0 43 	mov	$r0,$r9
ffffffff809140d0:	bf 00 00 c0 	beq	$r0,ffffffff809143d0 <get_pte+0x370>
ffffffff809140d4:	00 00 fd fd 	ldih	fp,0($r29)
ffffffff809140d8:	88 82 ef 8d 	ldl	fp,-32120(fp)
ffffffff809140dc:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809140e0:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff809140e4:	da 00 3f fa 	ldi	$r17,218
ffffffff809140e8:	f0 f6 c1 8d 	ldl	$r14,-2320($r1)
ffffffff809140ec:	01 00 3f f8 	ldi	$r1,1
ffffffff809140f0:	d8 62 4a 8c 	ldl	$r2,25304($r10)
ffffffff809140f4:	00 00 20 a8 	stw	$r1,0($r0)
ffffffff809140f8:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff809140fc:	00 00 0f 8e 	ldl	$r16,0(fp)
ffffffff80914100:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80914104:	30 01 10 40 	subl	$r0,$r16,$r16
ffffffff80914108:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff8091410c:	10 03 0e 42 	mull	$r16,$r14,$r16
ffffffff80914110:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80914114:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff80914118:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff8091411c:	53 07 f0 43 	mov	$r16,$r19
ffffffff80914120:	ae 00 20 c4 	bne	$r1,ffffffff809143dc <get_pte+0x37c>
ffffffff80914124:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80914128:	f8 80 21 8c 	ldl	$r1,-32520($r1)
ffffffff8091412c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914130:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80914134:	00 20 5f fa 	ldi	$r18,8192
ffffffff80914138:	51 07 ff 43 	clr	$r17
ffffffff8091413c:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80914140:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80914144:	fe 06 5b 07 	call	ra,($r27),ffffffff80915d40 <memset>
ffffffff80914148:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091414c:	00 00 6f 8e 	ldl	$r19,0(fp)
ffffffff80914150:	01 00 3f fc 	ldih	$r1,1
ffffffff80914154:	f8 3e bd fb 	ldi	$r29,16120($r29)
ffffffff80914158:	01 88 21 f8 	ldi	$r1,-30719($r1)
ffffffff8091415c:	33 01 33 41 	subl	$r9,$r19,$r19
ffffffff80914160:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80914164:	13 03 6e 42 	mull	$r19,$r14,$r19
ffffffff80914168:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff8091416c:	53 07 61 42 	or	$r19,$r1,$r19
ffffffff80914170:	00 00 6c ae 	stl	$r19,0($r12)
ffffffff80914174:	00 f0 3f fc 	ldih	$r1,-4096
ffffffff80914178:	d8 62 4a 8c 	ldl	$r2,25304($r10)
ffffffff8091417c:	13 07 33 40 	and	$r1,$r19,$r19
ffffffff80914180:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80914184:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80914188:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff8091418c:	92 00 20 c4 	bne	$r1,ffffffff809143d8 <get_pte+0x378>
ffffffff80914190:	00 00 dd fd 	ldih	$r14,0($r29)
ffffffff80914194:	f8 80 ce 8d 	ldl	$r14,-32520($r14)
ffffffff80914198:	09 a9 a2 49 	sll	$r13,0x15,$r9
ffffffff8091419c:	29 c9 26 49 	srl	$r9,0x36,$r9
ffffffff809141a0:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff809141a4:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff809141a8:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff809141ac:	09 01 69 42 	addl	$r19,$r9,$r9
ffffffff809141b0:	00 00 69 8e 	ldl	$r19,0($r9)
ffffffff809141b4:	31 00 60 de 	blbs	$r19,ffffffff8091427c <get_pte+0x21c>
ffffffff809141b8:	85 00 60 c1 	beq	$r11,ffffffff809143d0 <get_pte+0x370>
ffffffff809141bc:	01 00 1f fa 	ldi	$r16,1
ffffffff809141c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809141c4:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809141c8:	00 00 5b 07 	call	ra,($r27),ffffffff809141cc <get_pte+0x16c>
ffffffff809141cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809141d0:	74 3e bd fb 	ldi	$r29,15988($r29)
ffffffff809141d4:	4c 07 e0 43 	mov	$r0,$r12
ffffffff809141d8:	7d 00 00 c0 	beq	$r0,ffffffff809143d0 <get_pte+0x370>
ffffffff809141dc:	00 00 7d fc 	ldih	$r3,0($r29)
ffffffff809141e0:	88 82 63 8c 	ldl	$r3,-32120($r3)
ffffffff809141e4:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809141e8:	d8 62 4a 8c 	ldl	$r2,25304($r10)
ffffffff809141ec:	e5 00 3f fa 	ldi	$r17,229
ffffffff809141f0:	f0 f6 e1 8d 	ldl	fp,-2320($r1)
ffffffff809141f4:	01 00 3f f8 	ldi	$r1,1
ffffffff809141f8:	00 00 20 a8 	stw	$r1,0($r0)
ffffffff809141fc:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80914200:	00 00 03 8e 	ldl	$r16,0($r3)
ffffffff80914204:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80914208:	30 01 10 40 	subl	$r0,$r16,$r16
ffffffff8091420c:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff80914210:	10 03 0f 42 	mull	$r16,fp,$r16
ffffffff80914214:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80914218:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff8091421c:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80914220:	53 07 f0 43 	mov	$r16,$r19
ffffffff80914224:	6d 00 20 c4 	bne	$r1,ffffffff809143dc <get_pte+0x37c>
ffffffff80914228:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff8091422c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914230:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80914234:	00 20 5f fa 	ldi	$r18,8192
ffffffff80914238:	51 07 ff 43 	clr	$r17
ffffffff8091423c:	40 00 7e ac 	stl	$r3,64(sp)
ffffffff80914240:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80914244:	be 06 5b 07 	call	ra,($r27),ffffffff80915d40 <memset>
ffffffff80914248:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091424c:	40 00 7e 8c 	ldl	$r3,64(sp)
ffffffff80914250:	01 00 3f fc 	ldih	$r1,1
ffffffff80914254:	f8 3d bd fb 	ldi	$r29,15864($r29)
ffffffff80914258:	01 88 21 f8 	ldi	$r1,-30719($r1)
ffffffff8091425c:	00 00 63 8e 	ldl	$r19,0($r3)
ffffffff80914260:	33 01 93 41 	subl	$r12,$r19,$r19
ffffffff80914264:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80914268:	13 03 6f 42 	mull	$r19,fp,$r19
ffffffff8091426c:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff80914270:	53 07 61 42 	or	$r19,$r1,$r19
ffffffff80914274:	00 00 69 ae 	stl	$r19,0($r9)
ffffffff80914278:	d8 62 4a 8c 	ldl	$r2,25304($r10)
ffffffff8091427c:	00 f0 3f fc 	ldih	$r1,-4096
ffffffff80914280:	e8 00 3f fa 	ldi	$r17,232
ffffffff80914284:	13 07 33 40 	and	$r1,$r19,$r19
ffffffff80914288:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff8091428c:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80914290:	61 05 22 40 	cmpult	$r1,$r2,$r1
ffffffff80914294:	51 00 20 c0 	beq	$r1,ffffffff809143dc <get_pte+0x37c>
ffffffff80914298:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff8091429c:	09 e9 a3 49 	sll	$r13,0x1f,$r9
ffffffff809142a0:	29 c9 26 49 	srl	$r9,0x36,$r9
ffffffff809142a4:	89 01 20 49 	s8addl	$r9,0,$r9
ffffffff809142a8:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff809142ac:	09 01 69 42 	addl	$r19,$r9,$r9
ffffffff809142b0:	00 00 09 8c 	ldl	$r0,0($r9)
ffffffff809142b4:	2f 00 00 dc 	blbs	$r0,ffffffff80914374 <get_pte+0x314>
ffffffff809142b8:	45 00 60 c1 	beq	$r11,ffffffff809143d0 <get_pte+0x370>
ffffffff809142bc:	01 00 1f fa 	ldi	$r16,1
ffffffff809142c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809142c4:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809142c8:	00 00 5b 07 	call	ra,($r27),ffffffff809142cc <get_pte+0x26c>
ffffffff809142cc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809142d0:	74 3d bd fb 	ldi	$r29,15732($r29)
ffffffff809142d4:	4b 07 e0 43 	mov	$r0,$r11
ffffffff809142d8:	3d 00 00 c0 	beq	$r0,ffffffff809143d0 <get_pte+0x370>
ffffffff809142dc:	00 00 fd fd 	ldih	fp,0($r29)
ffffffff809142e0:	88 82 ef 8d 	ldl	fp,-32120(fp)
ffffffff809142e4:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809142e8:	d8 62 4a 8c 	ldl	$r2,25304($r10)
ffffffff809142ec:	f0 00 3f fa 	ldi	$r17,240
ffffffff809142f0:	f0 f6 81 8d 	ldl	$r12,-2320($r1)
ffffffff809142f4:	01 00 3f f8 	ldi	$r1,1
ffffffff809142f8:	00 00 20 a8 	stw	$r1,0($r0)
ffffffff809142fc:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80914300:	00 00 0f 8e 	ldl	$r16,0(fp)
ffffffff80914304:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80914308:	30 01 10 40 	subl	$r0,$r16,$r16
ffffffff8091430c:	50 69 00 4a 	sra	$r16,0x3,$r16
ffffffff80914310:	10 03 0c 42 	mull	$r16,$r12,$r16
ffffffff80914314:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80914318:	10 a9 01 4a 	sll	$r16,0xd,$r16
ffffffff8091431c:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80914320:	53 07 f0 43 	mov	$r16,$r19
ffffffff80914324:	2d 00 20 c4 	bne	$r1,ffffffff809143dc <get_pte+0x37c>
ffffffff80914328:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff8091432c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914330:	98 81 7b 8f 	ldl	$r27,-32360($r27)
ffffffff80914334:	00 20 5f fa 	ldi	$r18,8192
ffffffff80914338:	51 07 ff 43 	clr	$r17
ffffffff8091433c:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff80914340:	7f 06 5b 07 	call	ra,($r27),ffffffff80915d40 <memset>
ffffffff80914344:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914348:	00 00 6f 8e 	ldl	$r19,0(fp)
ffffffff8091434c:	01 00 1f fc 	ldih	$r0,1
ffffffff80914350:	fc 3c bd fb 	ldi	$r29,15612($r29)
ffffffff80914354:	01 88 00 f8 	ldi	$r0,-30719($r0)
ffffffff80914358:	33 01 73 41 	subl	$r11,$r19,$r19
ffffffff8091435c:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff80914360:	13 03 6c 42 	mull	$r19,$r12,$r19
ffffffff80914364:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff80914368:	40 07 60 42 	or	$r19,$r0,$r0
ffffffff8091436c:	00 00 09 ac 	stl	$r0,0($r9)
ffffffff80914370:	d8 62 4a 8c 	ldl	$r2,25304($r10)
ffffffff80914374:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80914378:	f3 00 3f fa 	ldi	$r17,243
ffffffff8091437c:	13 07 60 42 	and	$r19,$r0,$r19
ffffffff80914380:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80914384:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80914388:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff8091438c:	13 00 40 c0 	beq	$r2,ffffffff809143dc <get_pte+0x37c>
ffffffff80914390:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff80914394:	00 29 a5 49 	sll	$r13,0x29,$r0
ffffffff80914398:	20 c9 06 48 	srl	$r0,0x36,$r0
ffffffff8091439c:	80 01 00 48 	s8addl	$r0,0,$r0
ffffffff809143a0:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff809143a4:	00 01 60 42 	addl	$r19,$r0,$r0
ffffffff809143a8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809143ac:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809143b0:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809143b4:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809143b8:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff809143bc:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff809143c0:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff809143c4:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff809143c8:	50 00 de fb 	ldi	sp,80(sp)
ffffffff809143cc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809143d0:	40 07 ff 43 	clr	$r0
ffffffff809143d4:	f4 ff ff 13 	br	ffffffff809143a8 <get_pte+0x348>
ffffffff809143d8:	dd 00 3f fa 	ldi	$r17,221
ffffffff809143dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809143e0:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff809143e4:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809143e8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809143ec:	96 ed 52 fa 	ldi	$r18,-4714($r18)
ffffffff809143f0:	f8 f6 10 fa 	ldi	$r16,-2312($r16)
ffffffff809143f4:	c6 ef 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff809143f8:	5f 07 ff 43 	nop	
ffffffff809143fc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80914400 <get_page>:
ffffffff80914400:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80914404:	40 3c bd fb 	ldi	$r29,15424($r29)
ffffffff80914408:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff8091440c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80914410:	49 07 f2 43 	mov	$r18,$r9
ffffffff80914414:	52 07 ff 43 	clr	$r18
ffffffff80914418:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091441c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914420:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff80914424:	00 00 5b 07 	call	ra,($r27),ffffffff80914428 <get_page+0x28>
ffffffff80914428:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091442c:	18 3c bd fb 	ldi	$r29,15384($r29)
ffffffff80914430:	01 00 20 c1 	beq	$r9,ffffffff80914438 <get_page+0x38>
ffffffff80914434:	00 00 09 ac 	stl	$r0,0($r9)
ffffffff80914438:	15 00 00 c0 	beq	$r0,ffffffff80914490 <get_page+0x90>
ffffffff8091443c:	00 00 00 8c 	ldl	$r0,0($r0)
ffffffff80914440:	13 00 00 d8 	blbc	$r0,ffffffff80914490 <get_page+0x90>
ffffffff80914444:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80914448:	20 89 03 48 	srl	$r0,0x1c,$r0
ffffffff8091444c:	d8 62 21 8c 	ldl	$r1,25304($r1)
ffffffff80914450:	61 05 01 40 	cmpult	$r0,$r1,$r1
ffffffff80914454:	13 00 20 c0 	beq	$r1,ffffffff809144a4 <get_page+0xa4>
ffffffff80914458:	81 01 00 48 	s8addl	$r0,0,$r1
ffffffff8091445c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914460:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80914464:	00 01 20 40 	addl	$r1,$r0,$r0
ffffffff80914468:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091446c:	88 82 21 8c 	ldl	$r1,-32120($r1)
ffffffff80914470:	80 01 00 48 	s8addl	$r0,0,$r0
ffffffff80914474:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80914478:	00 01 20 40 	addl	$r1,$r0,$r0
ffffffff8091447c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80914480:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80914484:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914488:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091448c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914490:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914494:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80914498:	40 07 ff 43 	clr	$r0
ffffffff8091449c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809144a0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809144a4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809144a8:	a8 82 7b 8f 	ldl	$r27,-32088($r27)
ffffffff809144ac:	74 fe 5b 07 	call	ra,($r27),ffffffff80913e80 <pa2page.part.5>
ffffffff809144b0:	5f 07 ff 43 	nop	
ffffffff809144b4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809144b8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809144bc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809144c0 <page_remove>:
ffffffff809144c0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809144c4:	80 3b bd fb 	ldi	$r29,15232($r29)
ffffffff809144c8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809144cc:	52 07 ff 43 	clr	$r18
ffffffff809144d0:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809144d4:	00 00 5e af 	stl	ra,0(sp)
ffffffff809144d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809144dc:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff809144e0:	00 00 5b 07 	call	ra,($r27),ffffffff809144e4 <page_remove+0x24>
ffffffff809144e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809144e8:	5c 3b bd fb 	ldi	$r29,15196($r29)
ffffffff809144ec:	49 07 e0 43 	mov	$r0,$r9
ffffffff809144f0:	02 00 00 c0 	beq	$r0,ffffffff809144fc <page_remove+0x3c>
ffffffff809144f4:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff809144f8:	05 00 20 dc 	blbs	$r1,ffffffff80914510 <page_remove+0x50>
ffffffff809144fc:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914500:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80914504:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80914508:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091450c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914510:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80914514:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff80914518:	d8 62 42 8c 	ldl	$r2,25304($r2)
ffffffff8091451c:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80914520:	1f 00 40 c0 	beq	$r2,ffffffff809145a0 <page_remove+0xe0>
ffffffff80914524:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80914528:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff8091452c:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80914530:	88 82 42 8c 	ldl	$r2,-32120($r2)
ffffffff80914534:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80914538:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff8091453c:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff80914540:	00 00 22 88 	ldw	$r1,0($r2)
ffffffff80914544:	23 20 20 48 	subw	$r1,0x1,$r3
ffffffff80914548:	00 00 62 a8 	stw	$r3,0($r2)
ffffffff8091454c:	0d 00 60 c4 	bne	$r3,ffffffff80914584 <page_remove+0xc4>
ffffffff80914550:	07 00 1f fa 	ldi	$r16,7
ffffffff80914554:	35 00 00 02 	sys_call	0x35
ffffffff80914558:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091455c:	b8 80 21 8c 	ldl	$r1,-32584($r1)
ffffffff80914560:	01 00 3f fa 	ldi	$r17,1
ffffffff80914564:	50 07 e2 43 	mov	$r2,$r16
ffffffff80914568:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091456c:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80914570:	00 00 5b 07 	call	ra,($r27),ffffffff80914574 <page_remove+0xb4>
ffffffff80914574:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914578:	cc 3a bd fb 	ldi	$r29,15052($r29)
ffffffff8091457c:	50 07 ff 43 	clr	$r16
ffffffff80914580:	35 00 00 02 	sys_call	0x35
ffffffff80914584:	00 00 e9 af 	stl	$r31,0($r9)
ffffffff80914588:	fe ff 1f fa 	ldi	$r16,-2
ffffffff8091458c:	33 00 00 02 	sys_call	0x33
ffffffff80914590:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914594:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80914598:	10 00 de fb 	ldi	sp,16(sp)
ffffffff8091459c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809145a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809145a4:	a8 82 7b 8f 	ldl	$r27,-32088($r27)
ffffffff809145a8:	35 fe 5b 07 	call	ra,($r27),ffffffff80913e80 <pa2page.part.5>
ffffffff809145ac:	5f 07 ff 43 	nop	

ffffffff809145b0 <page_insert>:
ffffffff809145b0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809145b4:	90 3a bd fb 	ldi	$r29,14992($r29)
ffffffff809145b8:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff809145bc:	41 07 f2 43 	mov	$r18,$r1
ffffffff809145c0:	01 00 5f fa 	ldi	$r18,1
ffffffff809145c4:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809145c8:	49 07 f1 43 	mov	$r17,$r9
ffffffff809145cc:	51 07 e1 43 	mov	$r1,$r17
ffffffff809145d0:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809145d4:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809145d8:	00 00 5e af 	stl	ra,0(sp)
ffffffff809145dc:	4b 07 f3 43 	mov	$r19,$r11
ffffffff809145e0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809145e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809145e8:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff809145ec:	00 00 5b 07 	call	ra,($r27),ffffffff809145f0 <page_insert+0x40>
ffffffff809145f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809145f4:	50 3a bd fb 	ldi	$r29,14928($r29)
ffffffff809145f8:	4a 07 e0 43 	mov	$r0,$r10
ffffffff809145fc:	42 00 00 c0 	beq	$r0,ffffffff80914708 <page_insert+0x158>
ffffffff80914600:	00 00 69 88 	ldw	$r3,0($r9)
ffffffff80914604:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff80914608:	02 20 60 48 	addw	$r3,0x1,$r2
ffffffff8091460c:	00 00 49 a8 	stw	$r2,0($r9)
ffffffff80914610:	17 00 20 dc 	blbs	$r1,ffffffff80914670 <page_insert+0xc0>
ffffffff80914614:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80914618:	88 82 21 8c 	ldl	$r1,-32120($r1)
ffffffff8091461c:	00 00 61 8e 	ldl	$r19,0($r1)
ffffffff80914620:	29 01 33 41 	subl	$r9,$r19,$r9
ffffffff80914624:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80914628:	4b 27 60 49 	or	$r11,0x1,$r11
ffffffff8091462c:	fe ff 1f fa 	ldi	$r16,-2
ffffffff80914630:	53 69 20 49 	sra	$r9,0x3,$r19
ffffffff80914634:	f0 f6 21 8d 	ldl	$r9,-2320($r1)
ffffffff80914638:	13 03 69 42 	mull	$r19,$r9,$r19
ffffffff8091463c:	13 89 63 4a 	sll	$r19,0x1c,$r19
ffffffff80914640:	53 07 6b 42 	or	$r19,$r11,$r19
ffffffff80914644:	00 00 6a ae 	stl	$r19,0($r10)
ffffffff80914648:	33 00 00 02 	sys_call	0x33
ffffffff8091464c:	40 07 ff 43 	clr	$r0
ffffffff80914650:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80914654:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80914658:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091465c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80914660:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80914664:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80914668:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091466c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914670:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80914674:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff80914678:	d8 62 42 8c 	ldl	$r2,25304($r2)
ffffffff8091467c:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80914680:	23 00 40 c0 	beq	$r2,ffffffff80914710 <page_insert+0x160>
ffffffff80914684:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80914688:	88 82 8c 8d 	ldl	$r12,-32120($r12)
ffffffff8091468c:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80914690:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80914694:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80914698:	00 00 6c 8e 	ldl	$r19,0($r12)
ffffffff8091469c:	02 01 62 42 	addl	$r19,$r2,$r2
ffffffff809146a0:	01 05 22 41 	cmpeq	$r9,$r2,$r1
ffffffff809146a4:	16 00 20 c4 	bne	$r1,ffffffff80914700 <page_insert+0x150>
ffffffff809146a8:	00 00 22 88 	ldw	$r1,0($r2)
ffffffff809146ac:	23 20 20 48 	subw	$r1,0x1,$r3
ffffffff809146b0:	00 00 62 a8 	stw	$r3,0($r2)
ffffffff809146b4:	0d 00 60 c4 	bne	$r3,ffffffff809146ec <page_insert+0x13c>
ffffffff809146b8:	07 00 1f fa 	ldi	$r16,7
ffffffff809146bc:	35 00 00 02 	sys_call	0x35
ffffffff809146c0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809146c4:	b8 80 21 8c 	ldl	$r1,-32584($r1)
ffffffff809146c8:	01 00 3f fa 	ldi	$r17,1
ffffffff809146cc:	50 07 e2 43 	mov	$r2,$r16
ffffffff809146d0:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809146d4:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff809146d8:	00 00 5b 07 	call	ra,($r27),ffffffff809146dc <page_insert+0x12c>
ffffffff809146dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809146e0:	64 39 bd fb 	ldi	$r29,14692($r29)
ffffffff809146e4:	50 07 ff 43 	clr	$r16
ffffffff809146e8:	35 00 00 02 	sys_call	0x35
ffffffff809146ec:	00 00 ea af 	stl	$r31,0($r10)
ffffffff809146f0:	fe ff 1f fa 	ldi	$r16,-2
ffffffff809146f4:	33 00 00 02 	sys_call	0x33
ffffffff809146f8:	00 00 6c 8e 	ldl	$r19,0($r12)
ffffffff809146fc:	c8 ff ff 13 	br	ffffffff80914620 <page_insert+0x70>
ffffffff80914700:	00 00 69 a8 	stw	$r3,0($r9)
ffffffff80914704:	c6 ff ff 13 	br	ffffffff80914620 <page_insert+0x70>
ffffffff80914708:	fc ff 1f f8 	ldi	$r0,-4
ffffffff8091470c:	d0 ff ff 13 	br	ffffffff80914650 <page_insert+0xa0>
ffffffff80914710:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914714:	a8 82 7b 8f 	ldl	$r27,-32088($r27)
ffffffff80914718:	d9 fd 5b 07 	call	ra,($r27),ffffffff80913e80 <pa2page.part.5>
ffffffff8091471c:	5f 07 ff 43 	nop	

ffffffff80914720 <pmm_init>:
ffffffff80914720:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80914724:	20 39 bd fb 	ldi	$r29,14624($r29)
ffffffff80914728:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091472c:	08 81 21 8c 	ldl	$r1,-32504($r1)
ffffffff80914730:	b0 ff de fb 	ldi	sp,-80(sp)
ffffffff80914734:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914738:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff8091473c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80914740:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80914744:	00 00 9d fd 	ldih	$r12,0($r29)
ffffffff80914748:	b8 80 8c 8d 	ldl	$r12,-32584($r12)
ffffffff8091474c:	06 f7 10 fa 	ldi	$r16,-2298($r16)
ffffffff80914750:	00 00 5e af 	stl	ra,0(sp)
ffffffff80914754:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80914758:	00 00 21 8e 	ldl	$r17,0($r1)
ffffffff8091475c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80914760:	00 00 7d fd 	ldih	$r11,0($r29)
ffffffff80914764:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80914768:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff8091476c:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80914770:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80914774:	00 00 2c ac 	stl	$r1,0($r12)
ffffffff80914778:	00 00 bd fd 	ldih	$r13,0($r29)
ffffffff8091477c:	f8 80 ad 8d 	ldl	$r13,-32520($r13)
ffffffff80914780:	00 00 5d fd 	ldih	$r10,0($r29)
ffffffff80914784:	88 82 4a 8d 	ldl	$r10,-32120($r10)
ffffffff80914788:	b9 ee 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff8091478c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914790:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80914794:	b4 38 bd fb 	ldi	$r29,14516($r29)
ffffffff80914798:	08 00 61 8f 	ldl	$r27,8($r1)
ffffffff8091479c:	00 00 5b 07 	call	ra,($r27),ffffffff809147a0 <pmm_init+0x80>
ffffffff809147a0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809147a4:	a0 38 bd fb 	ldi	$r29,14496($r29)
ffffffff809147a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809147ac:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809147b0:	ff ff 3f f8 	ldi	$r1,-1
ffffffff809147b4:	00 20 7f fe 	ldih	$r19,8192
ffffffff809147b8:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809147bc:	01 89 26 48 	sll	$r1,0x34,$r1
ffffffff809147c0:	52 07 f3 43 	mov	$r19,$r18
ffffffff809147c4:	51 07 ff 43 	clr	$r17
ffffffff809147c8:	1d f7 10 fa 	ldi	$r16,-2275($r16)
ffffffff809147cc:	00 00 2d ac 	stl	$r1,0($r13)
ffffffff809147d0:	a7 ee 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809147d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809147d8:	6c 38 bd fb 	ldi	$r29,14444($r29)
ffffffff809147dc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809147e0:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff809147e4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809147e8:	46 f7 10 fa 	ldi	$r16,-2234($r16)
ffffffff809147ec:	a0 ee 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff809147f0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809147f4:	50 38 bd fb 	ldi	$r29,14416($r29)
ffffffff809147f8:	00 20 3f fe 	ldih	$r17,8192
ffffffff809147fc:	52 07 ff 43 	clr	$r18
ffffffff80914800:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914804:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80914808:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091480c:	ff ff 71 fa 	ldi	$r19,-1($r17)
ffffffff80914810:	5c f7 10 fa 	ldi	$r16,-2212($r16)
ffffffff80914814:	96 ee 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80914818:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091481c:	28 38 bd fb 	ldi	$r29,14376($r29)
ffffffff80914820:	01 00 3f fc 	ldih	$r1,1
ffffffff80914824:	00 00 7d fe 	ldih	$r19,0($r29)
ffffffff80914828:	40 81 73 8e 	ldl	$r19,-32448($r19)
ffffffff8091482c:	d8 62 2b ac 	stl	$r1,25304($r11)
ffffffff80914830:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80914834:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80914838:	00 80 3f fc 	ldih	$r1,-32768
ffffffff8091483c:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80914840:	00 00 6a ae 	stl	$r19,0($r10)
ffffffff80914844:	81 05 61 42 	cmpule	$r19,$r1,$r1
ffffffff80914848:	15 03 20 c4 	bne	$r1,ffffffff809154a0 <pmm_init+0xd80>
ffffffff8091484c:	01 00 3f f8 	ldi	$r1,1
ffffffff80914850:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80914854:	13 01 61 42 	addl	$r19,$r1,$r19
ffffffff80914858:	01 00 5f fc 	ldih	$r2,1
ffffffff8091485c:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80914860:	6d 00 3f fa 	ldi	$r17,109
ffffffff80914864:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff80914868:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff8091486c:	32 03 20 c0 	beq	$r1,ffffffff80915538 <pmm_init+0xe18>
ffffffff80914870:	00 00 6d 8c 	ldl	$r3,0($r13)
ffffffff80914874:	42 07 ff 43 	clr	$r2
ffffffff80914878:	41 07 ff 43 	clr	$r1
ffffffff8091487c:	13 01 63 42 	addl	$r19,$r3,$r19
ffffffff80914880:	00 00 6a ae 	stl	$r19,0($r10)
ffffffff80914884:	03 00 e0 13 	br	ffffffff80914894 <pmm_init+0x174>
ffffffff80914888:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091488c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80914890:	00 00 6a 8e 	ldl	$r19,0($r10)
ffffffff80914894:	13 01 62 42 	addl	$r19,$r2,$r19
ffffffff80914898:	08 00 b3 f8 	ldi	$r5,8($r19)
ffffffff8091489c:	00 00 65 20 	lldw	$r3,0($r5)
ffffffff809148a0:	01 00 9f f8 	ldi	$r4,1
ffffffff809148a4:	20 10 9f 18 	wr_f	$r4
ffffffff809148a8:	43 27 60 48 	or	$r3,0x1,$r3
ffffffff809148ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809148b0:	00 80 65 20 	lstw	$r3,0($r5)
ffffffff809148b4:	00 10 9f 18 	rd_f	$r4
ffffffff809148b8:	3a 03 80 c0 	beq	$r4,ffffffff809155a4 <pmm_init+0xe84>
ffffffff809148bc:	d8 62 6b 8c 	ldl	$r3,25304($r11)
ffffffff809148c0:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff809148c4:	48 00 42 f8 	ldi	$r2,72($r2)
ffffffff809148c8:	64 05 23 40 	cmpult	$r1,$r3,$r4
ffffffff809148cc:	f0 ff 9f c4 	bne	$r4,ffffffff80914890 <pmm_init+0x170>
ffffffff809148d0:	00 00 0a 8e 	ldl	$r16,0($r10)
ffffffff809148d4:	81 01 60 48 	s8addl	$r3,0,$r1
ffffffff809148d8:	00 80 5f fc 	ldih	$r2,-32768
ffffffff809148dc:	01 01 23 40 	addl	$r1,$r3,$r1
ffffffff809148e0:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff809148e4:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809148e8:	01 01 01 42 	addl	$r16,$r1,$r1
ffffffff809148ec:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff809148f0:	e7 02 40 c4 	bne	$r2,ffffffff80915490 <pmm_init+0xd70>
ffffffff809148f4:	01 00 5f f8 	ldi	$r2,1
ffffffff809148f8:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff809148fc:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80914900:	00 20 3f fe 	ldih	$r17,8192
ffffffff80914904:	ff df 51 f8 	ldi	$r2,-8193($r17)
ffffffff80914908:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff8091490c:	12 00 40 c0 	beq	$r2,ffffffff80914958 <pmm_init+0x238>
ffffffff80914910:	ff 1f 21 f8 	ldi	$r1,8191($r1)
ffffffff80914914:	24 a9 21 48 	srl	$r1,0xd,$r4
ffffffff80914918:	83 05 64 40 	cmpule	$r3,$r4,$r3
ffffffff8091491c:	f8 02 60 c4 	bne	$r3,ffffffff80915500 <pmm_init+0xde0>
ffffffff80914920:	00 00 6c 8c 	ldl	$r3,0($r12)
ffffffff80914924:	82 01 80 48 	s8addl	$r4,0,$r2
ffffffff80914928:	00 e0 bf f8 	ldi	$r5,-8192
ffffffff8091492c:	00 e0 31 fa 	ldi	$r17,-8192($r17)
ffffffff80914930:	01 07 25 40 	and	$r1,$r5,$r1
ffffffff80914934:	02 01 44 40 	addl	$r2,$r4,$r2
ffffffff80914938:	31 01 21 42 	subl	$r17,$r1,$r17
ffffffff8091493c:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80914940:	10 00 63 8f 	ldl	$r27,16($r3)
ffffffff80914944:	31 a9 21 4a 	srl	$r17,0xd,$r17
ffffffff80914948:	10 01 02 42 	addl	$r16,$r2,$r16
ffffffff8091494c:	00 00 5b 07 	call	ra,($r27),ffffffff80914950 <pmm_init+0x230>
ffffffff80914950:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914954:	f0 36 bd fb 	ldi	$r29,14064($r29)
ffffffff80914958:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff8091495c:	00 00 3d fd 	ldih	$r9,0($r29)
ffffffff80914960:	30 00 61 8f 	ldl	$r27,48($r1)
ffffffff80914964:	00 00 5b 07 	call	ra,($r27),ffffffff80914968 <pmm_init+0x248>
ffffffff80914968:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091496c:	d8 36 bd fb 	ldi	$r29,14040($r29)
ffffffff80914970:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914974:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80914978:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff8091497c:	84 f7 10 fa 	ldi	$r16,-2172($r16)
ffffffff80914980:	3b ee 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff80914984:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914988:	bc 36 bd fb 	ldi	$r29,14012($r29)
ffffffff8091498c:	00 80 5f fc 	ldih	$r2,-32768
ffffffff80914990:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80914994:	98 80 21 8c 	ldl	$r1,-32616($r1)
ffffffff80914998:	ff ff 42 f8 	ldi	$r2,-1($r2)
ffffffff8091499c:	d0 62 29 ac 	stl	$r1,25296($r9)
ffffffff809149a0:	82 05 22 40 	cmpule	$r1,$r2,$r2
ffffffff809149a4:	d2 02 40 c0 	beq	$r2,ffffffff809154f0 <pmm_init+0xdd0>
ffffffff809149a8:	00 00 4d 8c 	ldl	$r2,0($r13)
ffffffff809149ac:	21 01 22 40 	subl	$r1,$r2,$r1
ffffffff809149b0:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff809149b4:	38 81 42 8c 	ldl	$r2,-32456($r2)
ffffffff809149b8:	07 00 1f fa 	ldi	$r16,7
ffffffff809149bc:	00 00 22 ac 	stl	$r1,0($r2)
ffffffff809149c0:	35 00 00 02 	sys_call	0x35
ffffffff809149c4:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff809149c8:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff809149cc:	00 00 5b 07 	call	ra,($r27),ffffffff809149d0 <pmm_init+0x2b0>
ffffffff809149d0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809149d4:	70 36 bd fb 	ldi	$r29,13936($r29)
ffffffff809149d8:	40 00 1e ac 	stl	$r0,64(sp)
ffffffff809149dc:	50 07 ff 43 	clr	$r16
ffffffff809149e0:	35 00 00 02 	sys_call	0x35
ffffffff809149e4:	d8 62 2b 8c 	ldl	$r1,25304($r11)
ffffffff809149e8:	01 00 5f fc 	ldih	$r2,1
ffffffff809149ec:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809149f0:	6c 01 3f fa 	ldi	$r17,364
ffffffff809149f4:	a3 f7 73 fa 	ldi	$r19,-2141($r19)
ffffffff809149f8:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff809149fc:	c6 02 20 c0 	beq	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914a00:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80914a04:	e3 02 00 c2 	beq	$r16,ffffffff80915594 <pmm_init+0xe74>
ffffffff80914a08:	ff 1f 3f f8 	ldi	$r1,8191
ffffffff80914a0c:	01 07 01 42 	and	$r16,$r1,$r1
ffffffff80914a10:	e0 02 20 c4 	bne	$r1,ffffffff80915594 <pmm_init+0xe74>
ffffffff80914a14:	51 07 ff 43 	clr	$r17
ffffffff80914a18:	52 07 ff 43 	clr	$r18
ffffffff80914a1c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914a20:	38 80 7b 8f 	ldl	$r27,-32712($r27)
ffffffff80914a24:	00 00 5b 07 	call	ra,($r27),ffffffff80914a28 <pmm_init+0x308>
ffffffff80914a28:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914a2c:	18 36 bd fb 	ldi	$r29,13848($r29)
ffffffff80914a30:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914a34:	6e 01 3f fa 	ldi	$r17,366
ffffffff80914a38:	f4 f7 73 fa 	ldi	$r19,-2060($r19)
ffffffff80914a3c:	b6 02 00 c4 	bne	$r0,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914a40:	01 00 1f fa 	ldi	$r16,1
ffffffff80914a44:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914a48:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80914a4c:	00 00 5b 07 	call	ra,($r27),ffffffff80914a50 <pmm_init+0x330>
ffffffff80914a50:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914a54:	f0 35 bd fb 	ldi	$r29,13808($r29)
ffffffff80914a58:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80914a5c:	53 07 ff 43 	clr	$r19
ffffffff80914a60:	51 07 e0 43 	mov	$r0,$r17
ffffffff80914a64:	52 07 ff 43 	clr	$r18
ffffffff80914a68:	4e 07 e0 43 	mov	$r0,$r14
ffffffff80914a6c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914a70:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80914a74:	00 00 5b 07 	call	ra,($r27),ffffffff80914a78 <pmm_init+0x358>
ffffffff80914a78:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914a7c:	c8 35 bd fb 	ldi	$r29,13768($r29)
ffffffff80914a80:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914a84:	72 01 3f fa 	ldi	$r17,370
ffffffff80914a88:	1c f8 73 fa 	ldi	$r19,-2020($r19)
ffffffff80914a8c:	a2 02 00 c4 	bne	$r0,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914a90:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80914a94:	51 07 ff 43 	clr	$r17
ffffffff80914a98:	52 07 ff 43 	clr	$r18
ffffffff80914a9c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914aa0:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff80914aa4:	00 00 5b 07 	call	ra,($r27),ffffffff80914aa8 <pmm_init+0x388>
ffffffff80914aa8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914aac:	98 35 bd fb 	ldi	$r29,13720($r29)
ffffffff80914ab0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914ab4:	74 01 3f fa 	ldi	$r17,372
ffffffff80914ab8:	45 f8 73 fa 	ldi	$r19,-1979($r19)
ffffffff80914abc:	96 02 00 c0 	beq	$r0,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914ac0:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff80914ac4:	a3 02 20 d8 	blbc	$r1,ffffffff80915554 <pmm_init+0xe34>
ffffffff80914ac8:	d8 62 6b 8c 	ldl	$r3,25304($r11)
ffffffff80914acc:	21 89 23 48 	srl	$r1,0x1c,$r1
ffffffff80914ad0:	62 05 23 40 	cmpult	$r1,$r3,$r2
ffffffff80914ad4:	8a 02 40 c0 	beq	$r2,ffffffff80915500 <pmm_init+0xde0>
ffffffff80914ad8:	84 01 20 48 	s8addl	$r1,0,$r4
ffffffff80914adc:	00 00 4a 8c 	ldl	$r2,0($r10)
ffffffff80914ae0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914ae4:	75 01 3f fa 	ldi	$r17,373
ffffffff80914ae8:	01 01 81 40 	addl	$r4,$r1,$r1
ffffffff80914aec:	72 f8 73 fa 	ldi	$r19,-1934($r19)
ffffffff80914af0:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80914af4:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80914af8:	01 05 c1 41 	cmpeq	$r14,$r1,$r1
ffffffff80914afc:	86 02 20 c0 	beq	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914b00:	00 00 2e 88 	ldw	$r1,0($r14)
ffffffff80914b04:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914b08:	76 01 3f fa 	ldi	$r17,374
ffffffff80914b0c:	88 f8 73 fa 	ldi	$r19,-1912($r19)
ffffffff80914b10:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff80914b14:	80 02 20 c0 	beq	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914b18:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80914b1c:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80914b20:	21 e9 61 4a 	srl	$r19,0xf,$r1
ffffffff80914b24:	00 00 70 8e 	ldl	$r19,0($r16)
ffffffff80914b28:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80914b2c:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80914b30:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff80914b34:	62 05 43 40 	cmpult	$r2,$r3,$r2
ffffffff80914b38:	7e 02 40 c0 	beq	$r2,ffffffff80915534 <pmm_init+0xe14>
ffffffff80914b3c:	00 00 ed 8d 	ldl	fp,0($r13)
ffffffff80914b40:	79 01 3f fa 	ldi	$r17,377
ffffffff80914b44:	13 01 6f 42 	addl	$r19,fp,$r19
ffffffff80914b48:	00 00 73 8e 	ldl	$r19,0($r19)
ffffffff80914b4c:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80914b50:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80914b54:	22 a9 61 4a 	srl	$r19,0xd,$r2
ffffffff80914b58:	62 05 43 40 	cmpult	$r2,$r3,$r2
ffffffff80914b5c:	76 02 40 c0 	beq	$r2,ffffffff80915538 <pmm_init+0xe18>
ffffffff80914b60:	13 01 f3 41 	addl	fp,$r19,$r19
ffffffff80914b64:	7a 01 3f fa 	ldi	$r17,378
ffffffff80914b68:	00 00 73 8e 	ldl	$r19,0($r19)
ffffffff80914b6c:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80914b70:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80914b74:	21 a9 61 4a 	srl	$r19,0xd,$r1
ffffffff80914b78:	63 05 23 40 	cmpult	$r1,$r3,$r3
ffffffff80914b7c:	6e 02 60 c0 	beq	$r3,ffffffff80915538 <pmm_init+0xe18>
ffffffff80914b80:	00 20 3f fa 	ldi	$r17,8192
ffffffff80914b84:	52 07 ff 43 	clr	$r18
ffffffff80914b88:	48 00 7e ae 	stl	$r19,72(sp)
ffffffff80914b8c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914b90:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff80914b94:	00 00 5b 07 	call	ra,($r27),ffffffff80914b98 <pmm_init+0x478>
ffffffff80914b98:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914b9c:	a8 34 bd fb 	ldi	$r29,13480($r29)
ffffffff80914ba0:	48 00 7e 8e 	ldl	$r19,72(sp)
ffffffff80914ba4:	7c 01 3f fa 	ldi	$r17,380
ffffffff80914ba8:	0f 01 f3 41 	addl	fp,$r19,fp
ffffffff80914bac:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914bb0:	08 00 ef f9 	ldi	fp,8(fp)
ffffffff80914bb4:	9a f8 73 fa 	ldi	$r19,-1894($r19)
ffffffff80914bb8:	0f 05 0f 40 	cmpeq	$r0,fp,fp
ffffffff80914bbc:	56 02 e0 c1 	beq	fp,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914bc0:	01 00 1f fa 	ldi	$r16,1
ffffffff80914bc4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914bc8:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80914bcc:	00 00 5b 07 	call	ra,($r27),ffffffff80914bd0 <pmm_init+0x4b0>
ffffffff80914bd0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914bd4:	70 34 bd fb 	ldi	$r29,13424($r29)
ffffffff80914bd8:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80914bdc:	01 00 7f fc 	ldih	$r3,1
ffffffff80914be0:	51 07 e0 43 	mov	$r0,$r17
ffffffff80914be4:	00 20 5f fa 	ldi	$r18,8192
ffffffff80914be8:	00 8c 63 fa 	ldi	$r19,-29696($r3)
ffffffff80914bec:	4f 07 e0 43 	mov	$r0,fp
ffffffff80914bf0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914bf4:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80914bf8:	00 00 5b 07 	call	ra,($r27),ffffffff80914bfc <pmm_init+0x4dc>
ffffffff80914bfc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914c00:	44 34 bd fb 	ldi	$r29,13380($r29)
ffffffff80914c04:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914c08:	7f 01 3f fa 	ldi	$r17,383
ffffffff80914c0c:	c1 f8 73 fa 	ldi	$r19,-1855($r19)
ffffffff80914c10:	41 02 00 c4 	bne	$r0,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914c14:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80914c18:	00 20 3f fa 	ldi	$r17,8192
ffffffff80914c1c:	52 07 ff 43 	clr	$r18
ffffffff80914c20:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914c24:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff80914c28:	00 00 5b 07 	call	ra,($r27),ffffffff80914c2c <pmm_init+0x50c>
ffffffff80914c2c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914c30:	14 34 bd fb 	ldi	$r29,13332($r29)
ffffffff80914c34:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914c38:	80 01 3f fa 	ldi	$r17,384
ffffffff80914c3c:	f9 f8 73 fa 	ldi	$r19,-1799($r19)
ffffffff80914c40:	35 02 00 c0 	beq	$r0,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914c44:	00 00 40 8c 	ldl	$r2,0($r0)
ffffffff80914c48:	01 00 7f fc 	ldih	$r3,1
ffffffff80914c4c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914c50:	81 01 3f fa 	ldi	$r17,385
ffffffff80914c54:	00 88 23 f8 	ldi	$r1,-30720($r3)
ffffffff80914c58:	29 f9 73 fa 	ldi	$r19,-1751($r19)
ffffffff80914c5c:	03 07 41 40 	and	$r2,$r1,$r3
ffffffff80914c60:	2d 02 60 c0 	beq	$r3,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914c64:	00 0c 7f f8 	ldi	$r3,3072
ffffffff80914c68:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914c6c:	82 01 3f fa 	ldi	$r17,386
ffffffff80914c70:	02 07 43 40 	and	$r2,$r3,$r2
ffffffff80914c74:	37 f9 73 fa 	ldi	$r19,-1737($r19)
ffffffff80914c78:	27 02 40 c0 	beq	$r2,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914c7c:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80914c80:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914c84:	83 01 3f fa 	ldi	$r17,387
ffffffff80914c88:	45 f9 73 fa 	ldi	$r19,-1723($r19)
ffffffff80914c8c:	00 00 50 8c 	ldl	$r2,0($r16)
ffffffff80914c90:	01 07 41 40 	and	$r2,$r1,$r1
ffffffff80914c94:	20 02 20 c0 	beq	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914c98:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff80914c9c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914ca0:	84 01 3f fa 	ldi	$r17,388
ffffffff80914ca4:	5b f9 73 fa 	ldi	$r19,-1701($r19)
ffffffff80914ca8:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff80914cac:	1a 02 20 c0 	beq	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914cb0:	53 07 ff 43 	clr	$r19
ffffffff80914cb4:	51 07 ee 43 	mov	$r14,$r17
ffffffff80914cb8:	00 20 5f fa 	ldi	$r18,8192
ffffffff80914cbc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914cc0:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80914cc4:	00 00 5b 07 	call	ra,($r27),ffffffff80914cc8 <pmm_init+0x5a8>
ffffffff80914cc8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914ccc:	78 33 bd fb 	ldi	$r29,13176($r29)
ffffffff80914cd0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914cd4:	86 01 3f fa 	ldi	$r17,390
ffffffff80914cd8:	6d f9 73 fa 	ldi	$r19,-1683($r19)
ffffffff80914cdc:	0e 02 00 c4 	bne	$r0,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914ce0:	00 00 2e 88 	ldw	$r1,0($r14)
ffffffff80914ce4:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914ce8:	87 01 3f fa 	ldi	$r17,391
ffffffff80914cec:	99 f9 73 fa 	ldi	$r19,-1639($r19)
ffffffff80914cf0:	01 45 20 48 	cmpeq	$r1,0x2,$r1
ffffffff80914cf4:	08 02 20 c0 	beq	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914cf8:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff80914cfc:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914d00:	88 01 3f fa 	ldi	$r17,392
ffffffff80914d04:	b5 f4 73 fa 	ldi	$r19,-2891($r19)
ffffffff80914d08:	03 02 20 c4 	bne	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914d0c:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80914d10:	00 20 3f fa 	ldi	$r17,8192
ffffffff80914d14:	52 07 ff 43 	clr	$r18
ffffffff80914d18:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914d1c:	70 81 7b 8f 	ldl	$r27,-32400($r27)
ffffffff80914d20:	00 00 5b 07 	call	ra,($r27),ffffffff80914d24 <pmm_init+0x604>
ffffffff80914d24:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914d28:	1c 33 bd fb 	ldi	$r29,13084($r29)
ffffffff80914d2c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914d30:	89 01 3f fa 	ldi	$r17,393
ffffffff80914d34:	f9 f8 73 fa 	ldi	$r19,-1799($r19)
ffffffff80914d38:	f7 01 00 c0 	beq	$r0,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914d3c:	00 00 20 8c 	ldl	$r1,0($r0)
ffffffff80914d40:	04 02 20 d8 	blbc	$r1,ffffffff80915554 <pmm_init+0xe34>
ffffffff80914d44:	d8 62 4b 8c 	ldl	$r2,25304($r11)
ffffffff80914d48:	24 89 23 48 	srl	$r1,0x1c,$r4
ffffffff80914d4c:	62 05 82 40 	cmpult	$r4,$r2,$r2
ffffffff80914d50:	eb 01 40 c0 	beq	$r2,ffffffff80915500 <pmm_init+0xde0>
ffffffff80914d54:	83 01 80 48 	s8addl	$r4,0,$r3
ffffffff80914d58:	00 00 4a 8c 	ldl	$r2,0($r10)
ffffffff80914d5c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914d60:	8a 01 3f fa 	ldi	$r17,394
ffffffff80914d64:	03 01 64 40 	addl	$r3,$r4,$r3
ffffffff80914d68:	72 f8 73 fa 	ldi	$r19,-1934($r19)
ffffffff80914d6c:	83 01 60 48 	s8addl	$r3,0,$r3
ffffffff80914d70:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80914d74:	02 05 c2 41 	cmpeq	$r14,$r2,$r2
ffffffff80914d78:	e7 01 40 c0 	beq	$r2,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914d7c:	01 00 5f fc 	ldih	$r2,1
ffffffff80914d80:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914d84:	8b 01 3f fa 	ldi	$r17,395
ffffffff80914d88:	00 88 42 f8 	ldi	$r2,-30720($r2)
ffffffff80914d8c:	ab f9 73 fa 	ldi	$r19,-1621($r19)
ffffffff80914d90:	01 07 22 40 	and	$r1,$r2,$r1
ffffffff80914d94:	e0 01 20 c4 	bne	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914d98:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80914d9c:	51 07 ff 43 	clr	$r17
ffffffff80914da0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914da4:	b0 81 7b 8f 	ldl	$r27,-32336($r27)
ffffffff80914da8:	c5 fd 5b 07 	call	ra,($r27),ffffffff809144c0 <page_remove>
ffffffff80914dac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914db0:	94 32 bd fb 	ldi	$r29,12948($r29)
ffffffff80914db4:	00 00 2e 88 	ldw	$r1,0($r14)
ffffffff80914db8:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914dbc:	8e 01 3f fa 	ldi	$r17,398
ffffffff80914dc0:	88 f8 73 fa 	ldi	$r19,-1912($r19)
ffffffff80914dc4:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff80914dc8:	d3 01 20 c0 	beq	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914dcc:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff80914dd0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914dd4:	8f 01 3f fa 	ldi	$r17,399
ffffffff80914dd8:	b5 f4 73 fa 	ldi	$r19,-2891($r19)
ffffffff80914ddc:	ce 01 20 c4 	bne	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914de0:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80914de4:	00 20 3f fa 	ldi	$r17,8192
ffffffff80914de8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80914dec:	b0 81 7b 8f 	ldl	$r27,-32336($r27)
ffffffff80914df0:	b3 fd 5b 07 	call	ra,($r27),ffffffff809144c0 <page_remove>
ffffffff80914df4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914df8:	4c 32 bd fb 	ldi	$r29,12876($r29)
ffffffff80914dfc:	00 00 2e 88 	ldw	$r1,0($r14)
ffffffff80914e00:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914e04:	92 01 3f fa 	ldi	$r17,402
ffffffff80914e08:	c0 f9 73 fa 	ldi	$r19,-1600($r19)
ffffffff80914e0c:	c2 01 20 c4 	bne	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914e10:	00 00 2f 88 	ldw	$r1,0(fp)
ffffffff80914e14:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914e18:	93 01 3f fa 	ldi	$r17,403
ffffffff80914e1c:	b5 f4 73 fa 	ldi	$r19,-2891($r19)
ffffffff80914e20:	bd 01 20 c4 	bne	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914e24:	d0 62 29 8c 	ldl	$r1,25296($r9)
ffffffff80914e28:	d8 62 8b 8c 	ldl	$r4,25304($r11)
ffffffff80914e2c:	00 00 c1 8d 	ldl	$r14,0($r1)
ffffffff80914e30:	22 89 c3 49 	srl	$r14,0x1c,$r2
ffffffff80914e34:	61 05 44 40 	cmpult	$r2,$r4,$r1
ffffffff80914e38:	b1 01 20 c0 	beq	$r1,ffffffff80915500 <pmm_init+0xde0>
ffffffff80914e3c:	00 00 6a 8c 	ldl	$r3,0($r10)
ffffffff80914e40:	81 01 40 48 	s8addl	$r2,0,$r1
ffffffff80914e44:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80914e48:	95 01 3f fa 	ldi	$r17,405
ffffffff80914e4c:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80914e50:	d2 f9 73 fa 	ldi	$r19,-1582($r19)
ffffffff80914e54:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80914e58:	01 01 61 40 	addl	$r3,$r1,$r1
ffffffff80914e5c:	00 00 c1 88 	ldw	$r6,0($r1)
ffffffff80914e60:	01 25 c0 48 	cmpeq	$r6,0x1,$r1
ffffffff80914e64:	ac 01 20 c0 	beq	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80914e68:	00 f0 7f fe 	ldih	$r19,-4096
ffffffff80914e6c:	00 00 4d 8c 	ldl	$r2,0($r13)
ffffffff80914e70:	2e e9 c1 49 	srl	$r14,0xf,$r14
ffffffff80914e74:	99 01 3f fa 	ldi	$r17,409
ffffffff80914e78:	21 e9 61 4a 	srl	$r19,0xf,$r1
ffffffff80914e7c:	0e 07 c1 41 	and	$r14,$r1,$r14
ffffffff80914e80:	0e 01 c2 41 	addl	$r14,$r2,$r14
ffffffff80914e84:	00 00 ee 8d 	ldl	fp,0($r14)
ffffffff80914e88:	2f e9 e1 49 	srl	fp,0xf,fp
ffffffff80914e8c:	0f 07 e1 41 	and	fp,$r1,fp
ffffffff80914e90:	25 a9 e1 49 	srl	fp,0xd,$r5
ffffffff80914e94:	53 07 ef 43 	mov	fp,$r19
ffffffff80914e98:	85 05 85 40 	cmpule	$r4,$r5,$r5
ffffffff80914e9c:	a6 01 a0 c4 	bne	$r5,ffffffff80915538 <pmm_init+0xe18>
ffffffff80914ea0:	0f 01 4f 40 	addl	$r2,fp,fp
ffffffff80914ea4:	9a 01 3f fa 	ldi	$r17,410
ffffffff80914ea8:	00 00 6f 8e 	ldl	$r19,0(fp)
ffffffff80914eac:	33 e9 61 4a 	srl	$r19,0xf,$r19
ffffffff80914eb0:	13 07 61 42 	and	$r19,$r1,$r19
ffffffff80914eb4:	25 a9 61 4a 	srl	$r19,0xd,$r5
ffffffff80914eb8:	81 05 85 40 	cmpule	$r4,$r5,$r1
ffffffff80914ebc:	9e 01 20 c4 	bne	$r1,ffffffff80915538 <pmm_init+0xe18>
ffffffff80914ec0:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80914ec4:	02 01 53 40 	addl	$r2,$r19,$r2
ffffffff80914ec8:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80914ecc:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff80914ed0:	05 00 20 c4 	bne	$r1,ffffffff80914ee8 <pmm_init+0x7c8>
ffffffff80914ed4:	06 e9 c3 48 	sll	$r6,0x1f,$r6
ffffffff80914ed8:	02 01 46 40 	addl	$r2,$r6,$r2
ffffffff80914edc:	25 a9 41 48 	srl	$r2,0xd,$r5
ffffffff80914ee0:	84 05 85 40 	cmpule	$r4,$r5,$r4
ffffffff80914ee4:	86 01 80 c4 	bne	$r4,ffffffff80915500 <pmm_init+0xde0>
ffffffff80914ee8:	82 01 a0 48 	s8addl	$r5,0,$r2
ffffffff80914eec:	07 00 1f fa 	ldi	$r16,7
ffffffff80914ef0:	02 01 45 40 	addl	$r2,$r5,$r2
ffffffff80914ef4:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80914ef8:	02 01 62 40 	addl	$r3,$r2,$r2
ffffffff80914efc:	35 00 00 02 	sys_call	0x35
ffffffff80914f00:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80914f04:	01 00 3f fa 	ldi	$r17,1
ffffffff80914f08:	50 07 e2 43 	mov	$r2,$r16
ffffffff80914f0c:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80914f10:	00 00 5b 07 	call	ra,($r27),ffffffff80914f14 <pmm_init+0x7f4>
ffffffff80914f14:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914f18:	2c 31 bd fb 	ldi	$r29,12588($r29)
ffffffff80914f1c:	50 07 ff 43 	clr	$r16
ffffffff80914f20:	35 00 00 02 	sys_call	0x35
ffffffff80914f24:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80914f28:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80914f2c:	81 05 e1 41 	cmpule	fp,$r1,$r1
ffffffff80914f30:	5f 01 20 c0 	beq	$r1,ffffffff809154b0 <pmm_init+0xd90>
ffffffff80914f34:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff80914f38:	21 01 e1 41 	subl	fp,$r1,$r1
ffffffff80914f3c:	d8 62 4b 8c 	ldl	$r2,25304($r11)
ffffffff80914f40:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80914f44:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80914f48:	6d 01 40 c0 	beq	$r2,ffffffff80915500 <pmm_init+0xde0>
ffffffff80914f4c:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80914f50:	00 00 6a 8c 	ldl	$r3,0($r10)
ffffffff80914f54:	07 00 1f fa 	ldi	$r16,7
ffffffff80914f58:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80914f5c:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80914f60:	03 01 61 40 	addl	$r3,$r1,$r3
ffffffff80914f64:	35 00 00 02 	sys_call	0x35
ffffffff80914f68:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80914f6c:	01 00 3f fa 	ldi	$r17,1
ffffffff80914f70:	50 07 e3 43 	mov	$r3,$r16
ffffffff80914f74:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80914f78:	00 00 5b 07 	call	ra,($r27),ffffffff80914f7c <pmm_init+0x85c>
ffffffff80914f7c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914f80:	c4 30 bd fb 	ldi	$r29,12484($r29)
ffffffff80914f84:	50 07 ff 43 	clr	$r16
ffffffff80914f88:	35 00 00 02 	sys_call	0x35
ffffffff80914f8c:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80914f90:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80914f94:	81 05 c1 41 	cmpule	$r14,$r1,$r1
ffffffff80914f98:	49 01 20 c4 	bne	$r1,ffffffff809154c0 <pmm_init+0xda0>
ffffffff80914f9c:	01 00 3f f8 	ldi	$r1,1
ffffffff80914fa0:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80914fa4:	01 01 c1 41 	addl	$r14,$r1,$r1
ffffffff80914fa8:	d8 62 4b 8c 	ldl	$r2,25304($r11)
ffffffff80914fac:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80914fb0:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff80914fb4:	52 01 40 c0 	beq	$r2,ffffffff80915500 <pmm_init+0xde0>
ffffffff80914fb8:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff80914fbc:	00 00 6a 8c 	ldl	$r3,0($r10)
ffffffff80914fc0:	07 00 1f fa 	ldi	$r16,7
ffffffff80914fc4:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff80914fc8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff80914fcc:	03 01 61 40 	addl	$r3,$r1,$r3
ffffffff80914fd0:	35 00 00 02 	sys_call	0x35
ffffffff80914fd4:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80914fd8:	01 00 3f fa 	ldi	$r17,1
ffffffff80914fdc:	50 07 e3 43 	mov	$r3,$r16
ffffffff80914fe0:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80914fe4:	00 00 5b 07 	call	ra,($r27),ffffffff80914fe8 <pmm_init+0x8c8>
ffffffff80914fe8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80914fec:	58 30 bd fb 	ldi	$r29,12376($r29)
ffffffff80914ff0:	50 07 ff 43 	clr	$r16
ffffffff80914ff4:	35 00 00 02 	sys_call	0x35
ffffffff80914ff8:	d0 62 29 8c 	ldl	$r1,25296($r9)
ffffffff80914ffc:	07 00 1f fa 	ldi	$r16,7
ffffffff80915000:	00 00 e1 af 	stl	$r31,0($r1)
ffffffff80915004:	35 00 00 02 	sys_call	0x35
ffffffff80915008:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff8091500c:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80915010:	00 00 5b 07 	call	ra,($r27),ffffffff80915014 <pmm_init+0x8f4>
ffffffff80915014:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915018:	2c 30 bd fb 	ldi	$r29,12332($r29)
ffffffff8091501c:	42 07 e0 43 	mov	$r0,$r2
ffffffff80915020:	50 07 ff 43 	clr	$r16
ffffffff80915024:	35 00 00 02 	sys_call	0x35
ffffffff80915028:	40 00 3e 8c 	ldl	$r1,64(sp)
ffffffff8091502c:	a2 01 3f fa 	ldi	$r17,418
ffffffff80915030:	00 05 22 40 	cmpeq	$r1,$r2,$r0
ffffffff80915034:	36 01 00 c0 	beq	$r0,ffffffff80915510 <pmm_init+0xdf0>
ffffffff80915038:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091503c:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80915040:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915044:	f9 f9 10 fa 	ldi	$r16,-1543($r16)
ffffffff80915048:	89 ec 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff8091504c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915050:	f4 2f bd fb 	ldi	$r29,12276($r29)
ffffffff80915054:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80915058:	38 81 42 8c 	ldl	$r2,-32456($r2)
ffffffff8091505c:	00 00 02 8e 	ldl	$r16,0($r2)
ffffffff80915060:	0c 00 00 02 	sys_call	0xc
ffffffff80915064:	d0 62 29 8c 	ldl	$r1,25296($r9)
ffffffff80915068:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091506c:	aa 01 3f fa 	ldi	$r17,426
ffffffff80915070:	13 fa 73 fa 	ldi	$r19,-1517($r19)
ffffffff80915074:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80915078:	27 01 20 c4 	bne	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff8091507c:	07 00 1f fa 	ldi	$r16,7
ffffffff80915080:	35 00 00 02 	sys_call	0x35
ffffffff80915084:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80915088:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff8091508c:	00 00 5b 07 	call	ra,($r27),ffffffff80915090 <pmm_init+0x970>
ffffffff80915090:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915094:	b0 2f bd fb 	ldi	$r29,12208($r29)
ffffffff80915098:	40 00 1e ac 	stl	$r0,64(sp)
ffffffff8091509c:	50 07 ff 43 	clr	$r16
ffffffff809150a0:	35 00 00 02 	sys_call	0x35
ffffffff809150a4:	01 00 1f fa 	ldi	$r16,1
ffffffff809150a8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809150ac:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809150b0:	00 00 5b 07 	call	ra,($r27),ffffffff809150b4 <pmm_init+0x994>
ffffffff809150b4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809150b8:	8c 2f bd fb 	ldi	$r29,12172($r29)
ffffffff809150bc:	01 00 3f fc 	ldih	$r1,1
ffffffff809150c0:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff809150c4:	51 07 e0 43 	mov	$r0,$r17
ffffffff809150c8:	00 01 5f fa 	ldi	$r18,256
ffffffff809150cc:	00 cc e1 f9 	ldi	fp,-13312($r1)
ffffffff809150d0:	4e 07 e0 43 	mov	$r0,$r14
ffffffff809150d4:	53 07 ef 43 	mov	fp,$r19
ffffffff809150d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809150dc:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff809150e0:	00 00 5b 07 	call	ra,($r27),ffffffff809150e4 <pmm_init+0x9c4>
ffffffff809150e4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809150e8:	5c 2f bd fb 	ldi	$r29,12124($r29)
ffffffff809150ec:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809150f0:	b0 01 3f fa 	ldi	$r17,432
ffffffff809150f4:	26 fa 73 fa 	ldi	$r19,-1498($r19)
ffffffff809150f8:	07 01 00 c4 	bne	$r0,ffffffff80915518 <pmm_init+0xdf8>
ffffffff809150fc:	00 00 4e 88 	ldw	$r2,0($r14)
ffffffff80915100:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80915104:	b1 01 3f fa 	ldi	$r17,433
ffffffff80915108:	5c fa 73 fa 	ldi	$r19,-1444($r19)
ffffffff8091510c:	02 25 40 48 	cmpeq	$r2,0x1,$r2
ffffffff80915110:	01 01 40 c0 	beq	$r2,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80915114:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80915118:	53 07 ef 43 	mov	fp,$r19
ffffffff8091511c:	51 07 ee 43 	mov	$r14,$r17
ffffffff80915120:	00 21 5f fa 	ldi	$r18,8448
ffffffff80915124:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915128:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff8091512c:	00 00 5b 07 	call	ra,($r27),ffffffff80915130 <pmm_init+0xa10>
ffffffff80915130:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915134:	10 2f bd fb 	ldi	$r29,12048($r29)
ffffffff80915138:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091513c:	b2 01 3f fa 	ldi	$r17,434
ffffffff80915140:	6d fa 73 fa 	ldi	$r19,-1427($r19)
ffffffff80915144:	f4 00 00 c4 	bne	$r0,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80915148:	00 00 2e 88 	ldw	$r1,0($r14)
ffffffff8091514c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80915150:	b3 01 3f fa 	ldi	$r17,435
ffffffff80915154:	ac fa 73 fa 	ldi	$r19,-1364($r19)
ffffffff80915158:	01 45 20 48 	cmpeq	$r1,0x2,$r1
ffffffff8091515c:	ee 00 20 c0 	beq	$r1,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80915160:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915164:	08 80 7b 8f 	ldl	$r27,-32760($r27)
ffffffff80915168:	ff ff 3d fe 	ldih	$r17,-1($r29)
ffffffff8091516c:	00 01 1f fa 	ldi	$r16,256
ffffffff80915170:	bd fa 31 fa 	ldi	$r17,-1347($r17)
ffffffff80915174:	c2 02 5b 07 	call	ra,($r27),ffffffff80915c80 <strcpy>
ffffffff80915178:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091517c:	c8 2e bd fb 	ldi	$r29,11976($r29)
ffffffff80915180:	00 21 3f fa 	ldi	$r17,8448
ffffffff80915184:	00 01 1f fa 	ldi	$r16,256
ffffffff80915188:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091518c:	c8 81 7b 8f 	ldl	$r27,-32312($r27)
ffffffff80915190:	c7 02 5b 07 	call	ra,($r27),ffffffff80915cb0 <strcmp>
ffffffff80915194:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915198:	ac 2e bd fb 	ldi	$r29,11948($r29)
ffffffff8091519c:	b7 01 3f fa 	ldi	$r17,439
ffffffff809151a0:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809151a4:	d2 fa 73 fa 	ldi	$r19,-1326($r19)
ffffffff809151a8:	db 00 00 c4 	bne	$r0,ffffffff80915518 <pmm_init+0xdf8>
ffffffff809151ac:	00 00 6a 8e 	ldl	$r19,0($r10)
ffffffff809151b0:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809151b4:	d8 62 4b 8c 	ldl	$r2,25304($r11)
ffffffff809151b8:	33 01 d3 41 	subl	$r14,$r19,$r19
ffffffff809151bc:	f0 f6 c1 8d 	ldl	$r14,-2320($r1)
ffffffff809151c0:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff809151c4:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff809151c8:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff809151cc:	13 03 6e 42 	mull	$r19,$r14,$r19
ffffffff809151d0:	01 07 61 42 	and	$r19,$r1,$r1
ffffffff809151d4:	13 a9 61 4a 	sll	$r19,0xd,$r19
ffffffff809151d8:	61 05 22 40 	cmpult	$r1,$r2,$r1
ffffffff809151dc:	e5 00 20 c0 	beq	$r1,ffffffff80915574 <pmm_init+0xe54>
ffffffff809151e0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff809151e4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809151e8:	58 82 7b 8f 	ldl	$r27,-32168($r27)
ffffffff809151ec:	00 01 1f fa 	ldi	$r16,256
ffffffff809151f0:	13 01 33 40 	addl	$r1,$r19,$r19
ffffffff809151f4:	00 01 f3 a3 	stb	$r31,256($r19)
ffffffff809151f8:	7d 02 5b 07 	call	ra,($r27),ffffffff80915bf0 <strlen>
ffffffff809151fc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915200:	44 2e bd fb 	ldi	$r29,11844($r29)
ffffffff80915204:	ba 01 3f fa 	ldi	$r17,442
ffffffff80915208:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff8091520c:	07 fb 73 fa 	ldi	$r19,-1273($r19)
ffffffff80915210:	c1 00 00 c4 	bne	$r0,ffffffff80915518 <pmm_init+0xdf8>
ffffffff80915214:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80915218:	00 01 3f fa 	ldi	$r17,256
ffffffff8091521c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915220:	b0 81 7b 8f 	ldl	$r27,-32336($r27)
ffffffff80915224:	a6 fc 5b 07 	call	ra,($r27),ffffffff809144c0 <page_remove>
ffffffff80915228:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091522c:	18 2e bd fb 	ldi	$r29,11800($r29)
ffffffff80915230:	d0 62 09 8e 	ldl	$r16,25296($r9)
ffffffff80915234:	00 21 3f fa 	ldi	$r17,8448
ffffffff80915238:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091523c:	b0 81 7b 8f 	ldl	$r27,-32336($r27)
ffffffff80915240:	9f fc 5b 07 	call	ra,($r27),ffffffff809144c0 <page_remove>
ffffffff80915244:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915248:	fc 2d bd fb 	ldi	$r29,11772($r29)
ffffffff8091524c:	d0 62 49 8c 	ldl	$r2,25296($r9)
ffffffff80915250:	00 f0 3f fc 	ldih	$r1,-4096
ffffffff80915254:	d8 62 8b 8c 	ldl	$r4,25304($r11)
ffffffff80915258:	c0 01 3f fa 	ldi	$r17,448
ffffffff8091525c:	23 e9 21 48 	srl	$r1,0xf,$r3
ffffffff80915260:	00 00 22 8c 	ldl	$r1,0($r2)
ffffffff80915264:	21 e9 21 48 	srl	$r1,0xf,$r1
ffffffff80915268:	01 07 23 40 	and	$r1,$r3,$r1
ffffffff8091526c:	22 a9 21 48 	srl	$r1,0xd,$r2
ffffffff80915270:	53 07 e1 43 	mov	$r1,$r19
ffffffff80915274:	62 05 44 40 	cmpult	$r2,$r4,$r2
ffffffff80915278:	af 00 40 c0 	beq	$r2,ffffffff80915538 <pmm_init+0xe18>
ffffffff8091527c:	00 00 4d 8c 	ldl	$r2,0($r13)
ffffffff80915280:	c1 01 3f fa 	ldi	$r17,449
ffffffff80915284:	0f 01 22 40 	addl	$r1,$r2,fp
ffffffff80915288:	00 00 cf 8d 	ldl	$r14,0(fp)
ffffffff8091528c:	2e e9 c1 49 	srl	$r14,0xf,$r14
ffffffff80915290:	0e 07 c3 41 	and	$r14,$r3,$r14
ffffffff80915294:	21 a9 c1 49 	srl	$r14,0xd,$r1
ffffffff80915298:	53 07 ee 43 	mov	$r14,$r19
ffffffff8091529c:	81 05 81 40 	cmpule	$r4,$r1,$r1
ffffffff809152a0:	a5 00 20 c4 	bne	$r1,ffffffff80915538 <pmm_init+0xe18>
ffffffff809152a4:	0e 01 4e 40 	addl	$r2,$r14,$r14
ffffffff809152a8:	c2 01 3f fa 	ldi	$r17,450
ffffffff809152ac:	00 00 2e 8c 	ldl	$r1,0($r14)
ffffffff809152b0:	21 e9 21 48 	srl	$r1,0xf,$r1
ffffffff809152b4:	01 07 23 40 	and	$r1,$r3,$r1
ffffffff809152b8:	23 a9 21 48 	srl	$r1,0xd,$r3
ffffffff809152bc:	53 07 e1 43 	mov	$r1,$r19
ffffffff809152c0:	85 05 83 40 	cmpule	$r4,$r3,$r5
ffffffff809152c4:	9c 00 a0 c4 	bne	$r5,ffffffff80915538 <pmm_init+0xe18>
ffffffff809152c8:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff809152cc:	00 80 3f fc 	ldih	$r1,-32768
ffffffff809152d0:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff809152d4:	81 05 41 40 	cmpule	$r2,$r1,$r1
ffffffff809152d8:	06 00 20 c4 	bne	$r1,ffffffff809152f4 <pmm_init+0xbd4>
ffffffff809152dc:	01 00 3f f8 	ldi	$r1,1
ffffffff809152e0:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff809152e4:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff809152e8:	23 a9 41 48 	srl	$r2,0xd,$r3
ffffffff809152ec:	84 05 83 40 	cmpule	$r4,$r3,$r4
ffffffff809152f0:	83 00 80 c4 	bne	$r4,ffffffff80915500 <pmm_init+0xde0>
ffffffff809152f4:	82 01 60 48 	s8addl	$r3,0,$r2
ffffffff809152f8:	00 00 2a 8c 	ldl	$r1,0($r10)
ffffffff809152fc:	07 00 1f fa 	ldi	$r16,7
ffffffff80915300:	02 01 43 40 	addl	$r2,$r3,$r2
ffffffff80915304:	82 01 40 48 	s8addl	$r2,0,$r2
ffffffff80915308:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff8091530c:	35 00 00 02 	sys_call	0x35
ffffffff80915310:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80915314:	01 00 3f fa 	ldi	$r17,1
ffffffff80915318:	50 07 e2 43 	mov	$r2,$r16
ffffffff8091531c:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80915320:	00 00 5b 07 	call	ra,($r27),ffffffff80915324 <pmm_init+0xc04>
ffffffff80915324:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915328:	1c 2d bd fb 	ldi	$r29,11548($r29)
ffffffff8091532c:	50 07 ff 43 	clr	$r16
ffffffff80915330:	35 00 00 02 	sys_call	0x35
ffffffff80915334:	00 80 3f fc 	ldih	$r1,-32768
ffffffff80915338:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff8091533c:	81 05 c1 41 	cmpule	$r14,$r1,$r1
ffffffff80915340:	67 00 20 c4 	bne	$r1,ffffffff809154e0 <pmm_init+0xdc0>
ffffffff80915344:	01 00 3f f8 	ldi	$r1,1
ffffffff80915348:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff8091534c:	0e 01 c1 41 	addl	$r14,$r1,$r14
ffffffff80915350:	d8 62 2b 8c 	ldl	$r1,25304($r11)
ffffffff80915354:	2e a9 c1 49 	srl	$r14,0xd,$r14
ffffffff80915358:	61 05 c1 41 	cmpult	$r14,$r1,$r1
ffffffff8091535c:	68 00 20 c0 	beq	$r1,ffffffff80915500 <pmm_init+0xde0>
ffffffff80915360:	81 01 c0 49 	s8addl	$r14,0,$r1
ffffffff80915364:	00 00 4a 8c 	ldl	$r2,0($r10)
ffffffff80915368:	07 00 1f fa 	ldi	$r16,7
ffffffff8091536c:	0e 01 2e 40 	addl	$r1,$r14,$r14
ffffffff80915370:	8e 01 c0 49 	s8addl	$r14,0,$r14
ffffffff80915374:	0e 01 4e 40 	addl	$r2,$r14,$r14
ffffffff80915378:	35 00 00 02 	sys_call	0x35
ffffffff8091537c:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80915380:	01 00 3f fa 	ldi	$r17,1
ffffffff80915384:	50 07 ee 43 	mov	$r14,$r16
ffffffff80915388:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff8091538c:	00 00 5b 07 	call	ra,($r27),ffffffff80915390 <pmm_init+0xc70>
ffffffff80915390:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915394:	b0 2c bd fb 	ldi	$r29,11440($r29)
ffffffff80915398:	50 07 ff 43 	clr	$r16
ffffffff8091539c:	35 00 00 02 	sys_call	0x35
ffffffff809153a0:	00 80 3f fc 	ldih	$r1,-32768
ffffffff809153a4:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff809153a8:	81 05 e1 41 	cmpule	fp,$r1,$r1
ffffffff809153ac:	48 00 20 c4 	bne	$r1,ffffffff809154d0 <pmm_init+0xdb0>
ffffffff809153b0:	01 00 3f f8 	ldi	$r1,1
ffffffff809153b4:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff809153b8:	01 01 e1 41 	addl	fp,$r1,$r1
ffffffff809153bc:	d8 62 4b 8c 	ldl	$r2,25304($r11)
ffffffff809153c0:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff809153c4:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff809153c8:	4d 00 40 c0 	beq	$r2,ffffffff80915500 <pmm_init+0xde0>
ffffffff809153cc:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff809153d0:	00 00 6a 8c 	ldl	$r3,0($r10)
ffffffff809153d4:	07 00 1f fa 	ldi	$r16,7
ffffffff809153d8:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff809153dc:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809153e0:	03 01 61 40 	addl	$r3,$r1,$r3
ffffffff809153e4:	35 00 00 02 	sys_call	0x35
ffffffff809153e8:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff809153ec:	01 00 3f fa 	ldi	$r17,1
ffffffff809153f0:	50 07 e3 43 	mov	$r3,$r16
ffffffff809153f4:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff809153f8:	00 00 5b 07 	call	ra,($r27),ffffffff809153fc <pmm_init+0xcdc>
ffffffff809153fc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915400:	44 2c bd fb 	ldi	$r29,11332($r29)
ffffffff80915404:	50 07 ff 43 	clr	$r16
ffffffff80915408:	35 00 00 02 	sys_call	0x35
ffffffff8091540c:	d0 62 29 8c 	ldl	$r1,25296($r9)
ffffffff80915410:	07 00 1f fa 	ldi	$r16,7
ffffffff80915414:	00 00 e1 af 	stl	$r31,0($r1)
ffffffff80915418:	35 00 00 02 	sys_call	0x35
ffffffff8091541c:	00 00 2c 8c 	ldl	$r1,0($r12)
ffffffff80915420:	28 00 61 8f 	ldl	$r27,40($r1)
ffffffff80915424:	00 00 5b 07 	call	ra,($r27),ffffffff80915428 <pmm_init+0xd08>
ffffffff80915428:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091542c:	18 2c bd fb 	ldi	$r29,11288($r29)
ffffffff80915430:	42 07 e0 43 	mov	$r0,$r2
ffffffff80915434:	50 07 ff 43 	clr	$r16
ffffffff80915438:	35 00 00 02 	sys_call	0x35
ffffffff8091543c:	40 00 7e 8c 	ldl	$r3,64(sp)
ffffffff80915440:	0f 05 62 40 	cmpeq	$r3,$r2,fp
ffffffff80915444:	31 00 e0 c1 	beq	fp,ffffffff8091550c <pmm_init+0xdec>
ffffffff80915448:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091544c:	58 80 7b 8f 	ldl	$r27,-32680($r27)
ffffffff80915450:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915454:	28 fb 10 fa 	ldi	$r16,-1240($r16)
ffffffff80915458:	85 eb 5b 07 	call	ra,($r27),ffffffff80910270 <cprintf>
ffffffff8091545c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915460:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80915464:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80915468:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091546c:	e4 2b bd fb 	ldi	$r29,11236($r29)
ffffffff80915470:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80915474:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80915478:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff8091547c:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff80915480:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80915484:	50 00 de fb 	ldi	sp,80(sp)
ffffffff80915488:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff8091548c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915490:	00 00 4d 8c 	ldl	$r2,0($r13)
ffffffff80915494:	21 01 22 40 	subl	$r1,$r2,$r1
ffffffff80915498:	19 fd ff 13 	br	ffffffff80914900 <pmm_init+0x1e0>
ffffffff8091549c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809154a0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff809154a4:	33 01 61 42 	subl	$r19,$r1,$r19
ffffffff809154a8:	eb fc ff 13 	br	ffffffff80914858 <pmm_init+0x138>
ffffffff809154ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809154b0:	01 00 3f f8 	ldi	$r1,1
ffffffff809154b4:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff809154b8:	01 01 e1 41 	addl	fp,$r1,$r1
ffffffff809154bc:	9f fe ff 13 	br	ffffffff80914f3c <pmm_init+0x81c>
ffffffff809154c0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff809154c4:	21 01 c1 41 	subl	$r14,$r1,$r1
ffffffff809154c8:	b7 fe ff 13 	br	ffffffff80914fa8 <pmm_init+0x888>
ffffffff809154cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809154d0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff809154d4:	21 01 e1 41 	subl	fp,$r1,$r1
ffffffff809154d8:	b8 ff ff 13 	br	ffffffff809153bc <pmm_init+0xc9c>
ffffffff809154dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809154e0:	00 00 2d 8c 	ldl	$r1,0($r13)
ffffffff809154e4:	2e 01 c1 41 	subl	$r14,$r1,$r14
ffffffff809154e8:	99 ff ff 13 	br	ffffffff80915350 <pmm_init+0xc30>
ffffffff809154ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809154f0:	01 00 5f f8 	ldi	$r2,1
ffffffff809154f4:	02 e9 43 48 	sll	$r2,0x1f,$r2
ffffffff809154f8:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff809154fc:	2c fd ff 13 	br	ffffffff809149b0 <pmm_init+0x290>
ffffffff80915500:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915504:	a8 82 7b 8f 	ldl	$r27,-32088($r27)
ffffffff80915508:	5d fa 5b 07 	call	ra,($r27),ffffffff80913e80 <pa2page.part.5>
ffffffff8091550c:	c9 01 3f fa 	ldi	$r17,457
ffffffff80915510:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80915514:	15 ed 73 fa 	ldi	$r19,-4843($r19)
ffffffff80915518:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091551c:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80915520:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80915524:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915528:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff8091552c:	f8 f6 10 fa 	ldi	$r16,-2312($r16)
ffffffff80915530:	77 eb 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915534:	78 01 3f fa 	ldi	$r17,376
ffffffff80915538:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091553c:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80915540:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80915544:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915548:	96 ed 52 fa 	ldi	$r18,-4714($r18)
ffffffff8091554c:	f8 f6 10 fa 	ldi	$r16,-2312($r16)
ffffffff80915550:	6f eb 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915554:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915558:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff8091555c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80915560:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915564:	71 00 3f fa 	ldi	$r17,113
ffffffff80915568:	5f f2 52 fa 	ldi	$r18,-3489($r18)
ffffffff8091556c:	d8 ed 10 fa 	ldi	$r16,-4648($r16)
ffffffff80915570:	67 eb 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915574:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915578:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff8091557c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80915580:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915584:	6b 00 3f fa 	ldi	$r17,107
ffffffff80915588:	96 ed 52 fa 	ldi	$r18,-4714($r18)
ffffffff8091558c:	d8 ed 10 fa 	ldi	$r16,-4648($r16)
ffffffff80915590:	5f eb 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915594:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80915598:	6d 01 3f fa 	ldi	$r17,365
ffffffff8091559c:	bd f7 73 fa 	ldi	$r19,-2115($r19)
ffffffff809155a0:	dd ff ff 13 	br	ffffffff80915518 <pmm_init+0xdf8>
ffffffff809155a4:	bd fc ff 13 	br	ffffffff8091489c <pmm_init+0x17c>
ffffffff809155a8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809155ac:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809155b0 <tlb_invalidate>:
ffffffff809155b0:	fe ff 1f fa 	ldi	$r16,-2
ffffffff809155b4:	33 00 00 02 	sys_call	0x33
ffffffff809155b8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809155bc:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809155c0 <pgdir_alloc_page>:
ffffffff809155c0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809155c4:	80 2a bd fb 	ldi	$r29,10880($r29)
ffffffff809155c8:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff809155cc:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff809155d0:	4b 07 f0 43 	mov	$r16,$r11
ffffffff809155d4:	01 00 1f fa 	ldi	$r16,1
ffffffff809155d8:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff809155dc:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff809155e0:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff809155e4:	4a 07 f1 43 	mov	$r17,$r10
ffffffff809155e8:	4c 07 f2 43 	mov	$r18,$r12
ffffffff809155ec:	00 00 5e af 	stl	ra,0(sp)
ffffffff809155f0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809155f4:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff809155f8:	00 00 5b 07 	call	ra,($r27),ffffffff809155fc <pgdir_alloc_page+0x3c>
ffffffff809155fc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915600:	44 2a bd fb 	ldi	$r29,10820($r29)
ffffffff80915604:	49 07 e0 43 	mov	$r0,$r9
ffffffff80915608:	0f 00 00 c0 	beq	$r0,ffffffff80915648 <pgdir_alloc_page+0x88>
ffffffff8091560c:	53 07 ec 43 	mov	$r12,$r19
ffffffff80915610:	52 07 ea 43 	mov	$r10,$r18
ffffffff80915614:	51 07 e0 43 	mov	$r0,$r17
ffffffff80915618:	50 07 eb 43 	mov	$r11,$r16
ffffffff8091561c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915620:	18 80 7b 8f 	ldl	$r27,-32744($r27)
ffffffff80915624:	00 00 5b 07 	call	ra,($r27),ffffffff80915628 <pgdir_alloc_page+0x68>
ffffffff80915628:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091562c:	18 2a bd fb 	ldi	$r29,10776($r29)
ffffffff80915630:	0f 00 00 c4 	bne	$r0,ffffffff80915670 <pgdir_alloc_page+0xb0>
ffffffff80915634:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80915638:	c0 80 21 8c 	ldl	$r1,-32576($r1)
ffffffff8091563c:	00 00 21 88 	ldw	$r1,0($r1)
ffffffff80915640:	01 00 e1 43 	addw	$r31,$r1,$r1
ffffffff80915644:	22 00 20 c4 	bne	$r1,ffffffff809156d0 <pgdir_alloc_page+0x110>
ffffffff80915648:	40 07 e9 43 	mov	$r9,$r0
ffffffff8091564c:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80915650:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80915654:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80915658:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff8091565c:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80915660:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80915664:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80915668:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091566c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915670:	07 00 1f fa 	ldi	$r16,7
ffffffff80915674:	35 00 00 02 	sys_call	0x35
ffffffff80915678:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091567c:	b8 80 21 8c 	ldl	$r1,-32584($r1)
ffffffff80915680:	01 00 3f fa 	ldi	$r17,1
ffffffff80915684:	50 07 e9 43 	mov	$r9,$r16
ffffffff80915688:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091568c:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff80915690:	00 00 5b 07 	call	ra,($r27),ffffffff80915694 <pgdir_alloc_page+0xd4>
ffffffff80915694:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915698:	ac 29 bd fb 	ldi	$r29,10668($r29)
ffffffff8091569c:	50 07 ff 43 	clr	$r16
ffffffff809156a0:	35 00 00 02 	sys_call	0x35
ffffffff809156a4:	49 07 ff 43 	clr	$r9
ffffffff809156a8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809156ac:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff809156b0:	40 07 e9 43 	mov	$r9,$r0
ffffffff809156b4:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff809156b8:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff809156bc:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff809156c0:	30 00 de fb 	ldi	sp,48(sp)
ffffffff809156c4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809156c8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809156cc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809156d0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809156d4:	78 82 21 8c 	ldl	$r1,-32136($r1)
ffffffff809156d8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809156dc:	a8 81 7b 8f 	ldl	$r27,-32344($r27)
ffffffff809156e0:	53 07 ff 43 	clr	$r19
ffffffff809156e4:	52 07 e9 43 	mov	$r9,$r18
ffffffff809156e8:	51 07 ea 43 	mov	$r10,$r17
ffffffff809156ec:	00 00 01 8e 	ldl	$r16,0($r1)
ffffffff809156f0:	6f f5 5b 07 	call	ra,($r27),ffffffff80912cb0 <swap_map_swappable>
ffffffff809156f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809156f8:	40 00 49 ad 	stl	$r10,64($r9)
ffffffff809156fc:	00 00 29 88 	ldw	$r1,0($r9)
ffffffff80915700:	4c 29 bd fb 	ldi	$r29,10572($r29)
ffffffff80915704:	01 25 20 48 	cmpeq	$r1,0x1,$r1
ffffffff80915708:	cf ff 3f c4 	bne	$r1,ffffffff80915648 <pgdir_alloc_page+0x88>
ffffffff8091570c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915710:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80915714:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80915718:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff8091571c:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915720:	5e 01 3f fa 	ldi	$r17,350
ffffffff80915724:	47 fb 73 fa 	ldi	$r19,-1209($r19)
ffffffff80915728:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff8091572c:	f8 f6 10 fa 	ldi	$r16,-2312($r16)
ffffffff80915730:	f7 ea 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915734:	5f 07 ff 43 	nop	
ffffffff80915738:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091573c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80915740 <kmalloc>:
ffffffff80915740:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80915744:	00 29 bd fb 	ldi	$r29,10496($r29)
ffffffff80915748:	01 00 5f fc 	ldih	$r2,1
ffffffff8091574c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80915750:	ff ff 30 f8 	ldi	$r1,-1($r16)
ffffffff80915754:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80915758:	fe 4f 42 f8 	ldi	$r2,20478($r2)
ffffffff8091575c:	00 00 5e af 	stl	ra,0(sp)
ffffffff80915760:	d0 01 3f fa 	ldi	$r17,464
ffffffff80915764:	5b fb 73 fa 	ldi	$r19,-1189($r19)
ffffffff80915768:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff8091576c:	22 00 20 c0 	beq	$r1,ffffffff809157f8 <kmalloc+0xb8>
ffffffff80915770:	ff 1f 10 fa 	ldi	$r16,8191($r16)
ffffffff80915774:	30 a9 01 4a 	srl	$r16,0xd,$r16
ffffffff80915778:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091577c:	08 82 7b 8f 	ldl	$r27,-32248($r27)
ffffffff80915780:	00 00 5b 07 	call	ra,($r27),ffffffff80915784 <kmalloc+0x44>
ffffffff80915784:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915788:	bc 28 bd fb 	ldi	$r29,10428($r29)
ffffffff8091578c:	17 00 00 c0 	beq	$r0,ffffffff809157ec <kmalloc+0xac>
ffffffff80915790:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80915794:	d8 62 41 8c 	ldl	$r2,25304($r1)
ffffffff80915798:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff8091579c:	88 82 21 8c 	ldl	$r1,-32120($r1)
ffffffff809157a0:	00 00 61 8e 	ldl	$r19,0($r1)
ffffffff809157a4:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff809157a8:	33 01 13 40 	subl	$r0,$r19,$r19
ffffffff809157ac:	f0 f6 01 8c 	ldl	$r0,-2320($r1)
ffffffff809157b0:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff809157b4:	53 69 60 4a 	sra	$r19,0x3,$r19
ffffffff809157b8:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff809157bc:	13 03 60 42 	mull	$r19,$r0,$r19
ffffffff809157c0:	01 07 61 42 	and	$r19,$r1,$r1
ffffffff809157c4:	13 a9 61 4a 	sll	$r19,0xd,$r19
ffffffff809157c8:	61 05 22 40 	cmpult	$r1,$r2,$r1
ffffffff809157cc:	11 00 20 c0 	beq	$r1,ffffffff80915814 <kmalloc+0xd4>
ffffffff809157d0:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809157d4:	f8 80 21 8c 	ldl	$r1,-32520($r1)
ffffffff809157d8:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809157dc:	00 00 01 8c 	ldl	$r0,0($r1)
ffffffff809157e0:	00 01 60 42 	addl	$r19,$r0,$r0
ffffffff809157e4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809157e8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809157ec:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff809157f0:	d3 01 3f fa 	ldi	$r17,467
ffffffff809157f4:	74 fb 73 fa 	ldi	$r19,-1164($r19)
ffffffff809157f8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809157fc:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80915800:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80915804:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915808:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff8091580c:	f8 f6 10 fa 	ldi	$r16,-2312($r16)
ffffffff80915810:	bf ea 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915814:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915818:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff8091581c:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80915820:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915824:	6b 00 3f fa 	ldi	$r17,107
ffffffff80915828:	96 ed 52 fa 	ldi	$r18,-4714($r18)
ffffffff8091582c:	d8 ed 10 fa 	ldi	$r16,-4648($r16)
ffffffff80915830:	b7 ea 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915834:	5f 07 ff 43 	nop	
ffffffff80915838:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091583c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80915840 <kfree>:
ffffffff80915840:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80915844:	00 28 bd fb 	ldi	$r29,10240($r29)
ffffffff80915848:	01 00 5f fc 	ldih	$r2,1
ffffffff8091584c:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80915850:	ff ff 31 f8 	ldi	$r1,-1($r17)
ffffffff80915854:	fe 4f 42 f8 	ldi	$r2,20478($r2)
ffffffff80915858:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091585c:	81 05 22 40 	cmpule	$r1,$r2,$r1
ffffffff80915860:	38 00 20 c0 	beq	$r1,ffffffff80915944 <kfree+0x104>
ffffffff80915864:	2d 00 00 c2 	beq	$r16,ffffffff8091591c <kfree+0xdc>
ffffffff80915868:	00 80 3f fc 	ldih	$r1,-32768
ffffffff8091586c:	ff 1f 31 fa 	ldi	$r17,8191($r17)
ffffffff80915870:	ff ff 21 f8 	ldi	$r1,-1($r1)
ffffffff80915874:	31 a9 21 4a 	srl	$r17,0xd,$r17
ffffffff80915878:	81 05 01 42 	cmpule	$r16,$r1,$r1
ffffffff8091587c:	20 00 20 c0 	beq	$r1,ffffffff80915900 <kfree+0xc0>
ffffffff80915880:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80915884:	f8 80 21 8c 	ldl	$r1,-32520($r1)
ffffffff80915888:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091588c:	30 01 01 42 	subl	$r16,$r1,$r16
ffffffff80915890:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80915894:	21 a9 01 4a 	srl	$r16,0xd,$r1
ffffffff80915898:	d8 62 42 8c 	ldl	$r2,25304($r2)
ffffffff8091589c:	62 05 22 40 	cmpult	$r1,$r2,$r2
ffffffff809158a0:	1b 00 40 c0 	beq	$r2,ffffffff80915910 <kfree+0xd0>
ffffffff809158a4:	82 01 20 48 	s8addl	$r1,0,$r2
ffffffff809158a8:	07 00 1f fa 	ldi	$r16,7
ffffffff809158ac:	01 01 41 40 	addl	$r2,$r1,$r1
ffffffff809158b0:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff809158b4:	88 82 42 8c 	ldl	$r2,-32120($r2)
ffffffff809158b8:	81 01 20 48 	s8addl	$r1,0,$r1
ffffffff809158bc:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff809158c0:	02 01 41 40 	addl	$r2,$r1,$r2
ffffffff809158c4:	35 00 00 02 	sys_call	0x35
ffffffff809158c8:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809158cc:	b8 80 21 8c 	ldl	$r1,-32584($r1)
ffffffff809158d0:	50 07 e2 43 	mov	$r2,$r16
ffffffff809158d4:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff809158d8:	20 00 61 8f 	ldl	$r27,32($r1)
ffffffff809158dc:	00 00 5b 07 	call	ra,($r27),ffffffff809158e0 <kfree+0xa0>
ffffffff809158e0:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809158e4:	60 27 bd fb 	ldi	$r29,10080($r29)
ffffffff809158e8:	50 07 ff 43 	clr	$r16
ffffffff809158ec:	35 00 00 02 	sys_call	0x35
ffffffff809158f0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809158f4:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809158f8:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809158fc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915900:	01 00 3f f8 	ldi	$r1,1
ffffffff80915904:	01 e9 23 48 	sll	$r1,0x1f,$r1
ffffffff80915908:	10 01 01 42 	addl	$r16,$r1,$r16
ffffffff8091590c:	e0 ff ff 13 	br	ffffffff80915890 <kfree+0x50>
ffffffff80915910:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915914:	a8 82 7b 8f 	ldl	$r27,-32088($r27)
ffffffff80915918:	59 f9 5b 07 	call	ra,($r27),ffffffff80913e80 <pa2page.part.5>
ffffffff8091591c:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80915920:	da 01 3f fa 	ldi	$r17,474
ffffffff80915924:	81 fb 73 fa 	ldi	$r19,-1151($r19)
ffffffff80915928:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091592c:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80915930:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80915934:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915938:	6e eb 52 fa 	ldi	$r18,-5266($r18)
ffffffff8091593c:	f8 f6 10 fa 	ldi	$r16,-2312($r16)
ffffffff80915940:	73 ea 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915944:	ff ff 7d fe 	ldih	$r19,-1($r29)
ffffffff80915948:	d9 01 3f fa 	ldi	$r17,473
ffffffff8091594c:	5b fb 73 fa 	ldi	$r19,-1189($r19)
ffffffff80915950:	f5 ff ff 13 	br	ffffffff80915928 <kfree+0xe8>
ffffffff80915954:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915958:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091595c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80915960 <swapfs_init>:
ffffffff80915960:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80915964:	e0 26 bd fb 	ldi	$r29,9952($r29)
ffffffff80915968:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff8091596c:	10 80 7b 8f 	ldl	$r27,-32752($r27)
ffffffff80915970:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80915974:	01 00 1f fa 	ldi	$r16,1
ffffffff80915978:	00 00 5e af 	stl	ra,0(sp)
ffffffff8091597c:	e4 e9 5b 07 	call	ra,($r27),ffffffff80910110 <ide_device_valid>
ffffffff80915980:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915984:	c0 26 bd fb 	ldi	$r29,9920($r29)
ffffffff80915988:	0d 00 00 c0 	beq	$r0,ffffffff809159c0 <swapfs_init+0x60>
ffffffff8091598c:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915990:	78 81 7b 8f 	ldl	$r27,-32392($r27)
ffffffff80915994:	01 00 1f fa 	ldi	$r16,1
ffffffff80915998:	e1 e9 5b 07 	call	ra,($r27),ffffffff80910120 <ide_device_size>
ffffffff8091599c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809159a0:	a4 26 bd fb 	ldi	$r29,9892($r29)
ffffffff809159a4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809159a8:	20 89 00 48 	srl	$r0,0x4,$r0
ffffffff809159ac:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff809159b0:	e8 81 21 8c 	ldl	$r1,-32280($r1)
ffffffff809159b4:	00 00 01 ac 	stl	$r0,0($r1)
ffffffff809159b8:	10 00 de fb 	ldi	sp,16(sp)
ffffffff809159bc:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff809159c0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809159c4:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff809159c8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff809159cc:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff809159d0:	0d 00 3f fa 	ldi	$r17,13
ffffffff809159d4:	8d fb 52 fa 	ldi	$r18,-1139($r18)
ffffffff809159d8:	a7 fb 10 fa 	ldi	$r16,-1113($r16)
ffffffff809159dc:	4c ea 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff809159e0:	5f 07 ff 43 	nop	
ffffffff809159e4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809159e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809159ec:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff809159f0 <swapfs_read>:
ffffffff809159f0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff809159f4:	50 26 bd fb 	ldi	$r29,9808($r29)
ffffffff809159f8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff809159fc:	52 07 f1 43 	mov	$r17,$r18
ffffffff80915a00:	00 00 5e af 	stl	ra,0(sp)
ffffffff80915a04:	31 09 01 4a 	srl	$r16,0x8,$r17
ffffffff80915a08:	26 00 20 c2 	beq	$r17,ffffffff80915aa4 <swapfs_read+0xb4>
ffffffff80915a0c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80915a10:	e8 81 21 8c 	ldl	$r1,-32280($r1)
ffffffff80915a14:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80915a18:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80915a1c:	21 00 20 c4 	bne	$r1,ffffffff80915aa4 <swapfs_read+0xb4>
ffffffff80915a20:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80915a24:	88 82 21 8c 	ldl	$r1,-32120($r1)
ffffffff80915a28:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80915a2c:	20 81 42 8c 	ldl	$r2,-32480($r2)
ffffffff80915a30:	11 89 20 4a 	sll	$r17,0x4,$r17
ffffffff80915a34:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80915a38:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80915a3c:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80915a40:	32 01 41 42 	subl	$r18,$r1,$r18
ffffffff80915a44:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80915a48:	f0 f6 21 8c 	ldl	$r1,-2320($r1)
ffffffff80915a4c:	52 69 40 4a 	sra	$r18,0x3,$r18
ffffffff80915a50:	12 03 41 42 	mull	$r18,$r1,$r18
ffffffff80915a54:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80915a58:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80915a5c:	01 07 41 42 	and	$r18,$r1,$r1
ffffffff80915a60:	12 a9 41 4a 	sll	$r18,0xd,$r18
ffffffff80915a64:	61 05 22 40 	cmpult	$r1,$r2,$r1
ffffffff80915a68:	17 00 20 c0 	beq	$r1,ffffffff80915ac8 <swapfs_read+0xd8>
ffffffff80915a6c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80915a70:	f8 80 21 8c 	ldl	$r1,-32520($r1)
ffffffff80915a74:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915a78:	a0 81 7b 8f 	ldl	$r27,-32352($r27)
ffffffff80915a7c:	10 00 7f fa 	ldi	$r19,16
ffffffff80915a80:	01 00 1f fa 	ldi	$r16,1
ffffffff80915a84:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80915a88:	12 01 41 42 	addl	$r18,$r1,$r18
ffffffff80915a8c:	a8 e9 5b 07 	call	ra,($r27),ffffffff80910130 <ide_read_secs>
ffffffff80915a90:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915a94:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80915a98:	b0 25 bd fb 	ldi	$r29,9648($r29)
ffffffff80915a9c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80915aa0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80915aa4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915aa8:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80915aac:	53 07 f0 43 	mov	$r16,$r19
ffffffff80915ab0:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80915ab4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915ab8:	14 00 3f fa 	ldi	$r17,20
ffffffff80915abc:	b8 fb 52 fa 	ldi	$r18,-1096($r18)
ffffffff80915ac0:	a7 fb 10 fa 	ldi	$r16,-1113($r16)
ffffffff80915ac4:	12 ea 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915ac8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915acc:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80915ad0:	53 07 f2 43 	mov	$r18,$r19
ffffffff80915ad4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915ad8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80915adc:	6b 00 3f fa 	ldi	$r17,107
ffffffff80915ae0:	96 ed 52 fa 	ldi	$r18,-4714($r18)
ffffffff80915ae4:	d8 ed 10 fa 	ldi	$r16,-4648($r16)
ffffffff80915ae8:	09 ea 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915aec:	5f 07 ff 43 	nop	

ffffffff80915af0 <swapfs_write>:
ffffffff80915af0:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80915af4:	50 25 bd fb 	ldi	$r29,9552($r29)
ffffffff80915af8:	f0 ff de fb 	ldi	sp,-16(sp)
ffffffff80915afc:	52 07 f1 43 	mov	$r17,$r18
ffffffff80915b00:	00 00 5e af 	stl	ra,0(sp)
ffffffff80915b04:	31 09 01 4a 	srl	$r16,0x8,$r17
ffffffff80915b08:	26 00 20 c2 	beq	$r17,ffffffff80915ba4 <swapfs_write+0xb4>
ffffffff80915b0c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80915b10:	e8 81 21 8c 	ldl	$r1,-32280($r1)
ffffffff80915b14:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80915b18:	81 05 31 40 	cmpule	$r1,$r17,$r1
ffffffff80915b1c:	21 00 20 c4 	bne	$r1,ffffffff80915ba4 <swapfs_write+0xb4>
ffffffff80915b20:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80915b24:	88 82 21 8c 	ldl	$r1,-32120($r1)
ffffffff80915b28:	00 00 5d fc 	ldih	$r2,0($r29)
ffffffff80915b2c:	20 81 42 8c 	ldl	$r2,-32480($r2)
ffffffff80915b30:	11 89 20 4a 	sll	$r17,0x4,$r17
ffffffff80915b34:	11 00 f1 43 	addw	$r31,$r17,$r17
ffffffff80915b38:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80915b3c:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80915b40:	32 01 41 42 	subl	$r18,$r1,$r18
ffffffff80915b44:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80915b48:	f0 f6 21 8c 	ldl	$r1,-2320($r1)
ffffffff80915b4c:	52 69 40 4a 	sra	$r18,0x3,$r18
ffffffff80915b50:	12 03 41 42 	mull	$r18,$r1,$r18
ffffffff80915b54:	00 e0 3f f8 	ldi	$r1,-8192
ffffffff80915b58:	21 a9 21 48 	srl	$r1,0xd,$r1
ffffffff80915b5c:	01 07 41 42 	and	$r18,$r1,$r1
ffffffff80915b60:	12 a9 41 4a 	sll	$r18,0xd,$r18
ffffffff80915b64:	61 05 22 40 	cmpult	$r1,$r2,$r1
ffffffff80915b68:	17 00 20 c0 	beq	$r1,ffffffff80915bc8 <swapfs_write+0xd8>
ffffffff80915b6c:	00 00 3d fc 	ldih	$r1,0($r29)
ffffffff80915b70:	f8 80 21 8c 	ldl	$r1,-32520($r1)
ffffffff80915b74:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915b78:	b0 80 7b 8f 	ldl	$r27,-32592($r27)
ffffffff80915b7c:	10 00 7f fa 	ldi	$r19,16
ffffffff80915b80:	01 00 1f fa 	ldi	$r16,1
ffffffff80915b84:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff80915b88:	12 01 41 42 	addl	$r18,$r1,$r18
ffffffff80915b8c:	7c e9 5b 07 	call	ra,($r27),ffffffff80910180 <ide_write_secs>
ffffffff80915b90:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915b94:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80915b98:	b0 24 bd fb 	ldi	$r29,9392($r29)
ffffffff80915b9c:	10 00 de fb 	ldi	sp,16(sp)
ffffffff80915ba0:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80915ba4:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915ba8:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80915bac:	53 07 f0 43 	mov	$r16,$r19
ffffffff80915bb0:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80915bb4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915bb8:	19 00 3f fa 	ldi	$r17,25
ffffffff80915bbc:	b8 fb 52 fa 	ldi	$r18,-1096($r18)
ffffffff80915bc0:	a7 fb 10 fa 	ldi	$r16,-1113($r16)
ffffffff80915bc4:	d2 e9 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915bc8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915bcc:	e8 80 7b 8f 	ldl	$r27,-32536($r27)
ffffffff80915bd0:	53 07 f2 43 	mov	$r18,$r19
ffffffff80915bd4:	ff ff 1d fe 	ldih	$r16,-1($r29)
ffffffff80915bd8:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80915bdc:	6b 00 3f fa 	ldi	$r17,107
ffffffff80915be0:	96 ed 52 fa 	ldi	$r18,-4714($r18)
ffffffff80915be4:	d8 ed 10 fa 	ldi	$r16,-4648($r16)
ffffffff80915be8:	c9 e9 5b 07 	call	ra,($r27),ffffffff80910310 <__panic>
ffffffff80915bec:	5f 07 ff 43 	nop	

ffffffff80915bf0 <strlen>:
ffffffff80915bf0:	00 00 50 80 	ldbu	$r2,0($r16)
ffffffff80915bf4:	40 07 ff 43 	clr	$r0
ffffffff80915bf8:	01 00 30 f8 	ldi	$r1,1($r16)
ffffffff80915bfc:	04 00 40 c0 	beq	$r2,ffffffff80915c10 <strlen+0x20>
ffffffff80915c00:	20 01 30 40 	subl	$r1,$r16,$r0
ffffffff80915c04:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80915c08:	ff ff 41 80 	ldbu	$r2,-1($r1)
ffffffff80915c0c:	fc ff 5f c4 	bne	$r2,ffffffff80915c00 <strlen+0x10>
ffffffff80915c10:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80915c14:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c1c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80915c20 <strnlen>:
ffffffff80915c20:	13 00 20 c2 	beq	$r17,ffffffff80915c70 <strnlen+0x50>
ffffffff80915c24:	00 00 50 80 	ldbu	$r2,0($r16)
ffffffff80915c28:	01 00 30 f8 	ldi	$r1,1($r16)
ffffffff80915c2c:	10 00 40 c0 	beq	$r2,ffffffff80915c70 <strnlen+0x50>
ffffffff80915c30:	11 01 11 42 	addl	$r16,$r17,$r17
ffffffff80915c34:	04 00 e0 13 	br	ffffffff80915c48 <strnlen+0x28>
ffffffff80915c38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c3c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c40:	ff ff 41 80 	ldbu	$r2,-1($r1)
ffffffff80915c44:	06 00 40 c0 	beq	$r2,ffffffff80915c60 <strnlen+0x40>
ffffffff80915c48:	02 05 31 40 	cmpeq	$r1,$r17,$r2
ffffffff80915c4c:	20 01 30 40 	subl	$r1,$r16,$r0
ffffffff80915c50:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80915c54:	fa ff 5f c0 	beq	$r2,ffffffff80915c40 <strnlen+0x20>
ffffffff80915c58:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80915c5c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c60:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80915c64:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c68:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c6c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c70:	40 07 ff 43 	clr	$r0
ffffffff80915c74:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80915c78:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c7c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80915c80 <strcpy>:
ffffffff80915c80:	41 07 f0 43 	mov	$r16,$r1
ffffffff80915c84:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c88:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c8c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915c90:	01 00 31 fa 	ldi	$r17,1($r17)
ffffffff80915c94:	ff ff 51 80 	ldbu	$r2,-1($r17)
ffffffff80915c98:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80915c9c:	43 0d e2 43 	sextb	$r2,$r3
ffffffff80915ca0:	ff ff 41 a0 	stb	$r2,-1($r1)
ffffffff80915ca4:	fa ff 7f c4 	bne	$r3,ffffffff80915c90 <strcpy+0x10>
ffffffff80915ca8:	40 07 f0 43 	mov	$r16,$r0
ffffffff80915cac:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80915cb0 <strcmp>:
ffffffff80915cb0:	00 00 30 80 	ldbu	$r1,0($r16)
ffffffff80915cb4:	00 00 11 80 	ldbu	$r0,0($r17)
ffffffff80915cb8:	42 0d e1 43 	sextb	$r1,$r2
ffffffff80915cbc:	40 0d e0 43 	sextb	$r0,$r0
ffffffff80915cc0:	1b 00 40 c0 	beq	$r2,ffffffff80915d30 <strcmp+0x80>
ffffffff80915cc4:	02 05 40 40 	cmpeq	$r2,$r0,$r2
ffffffff80915cc8:	01 00 e1 43 	addw	$r31,$r1,$r1
ffffffff80915ccc:	08 00 40 c4 	bne	$r2,ffffffff80915cf0 <strcmp+0x40>
ffffffff80915cd0:	0e 00 e0 13 	br	ffffffff80915d0c <strcmp+0x5c>
ffffffff80915cd4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915cd8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915cdc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915ce0:	40 0d e0 43 	sextb	$r0,$r0
ffffffff80915ce4:	51 07 e2 43 	mov	$r2,$r17
ffffffff80915ce8:	02 05 20 40 	cmpeq	$r1,$r0,$r2
ffffffff80915cec:	0c 00 40 c0 	beq	$r2,ffffffff80915d20 <strcmp+0x70>
ffffffff80915cf0:	01 00 10 fa 	ldi	$r16,1($r16)
ffffffff80915cf4:	00 00 30 80 	ldbu	$r1,0($r16)
ffffffff80915cf8:	01 00 51 f8 	ldi	$r2,1($r17)
ffffffff80915cfc:	01 00 11 80 	ldbu	$r0,1($r17)
ffffffff80915d00:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80915d04:	f6 ff 3f c4 	bne	$r1,ffffffff80915ce0 <strcmp+0x30>
ffffffff80915d08:	40 0d e0 43 	sextb	$r0,$r0
ffffffff80915d0c:	00 e7 1f 48 	and	$r0,0xff,$r0
ffffffff80915d10:	20 00 20 40 	subw	$r1,$r0,$r0
ffffffff80915d14:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80915d18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915d1c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915d20:	01 e7 3f 48 	and	$r1,0xff,$r1
ffffffff80915d24:	00 e7 1f 48 	and	$r0,0xff,$r0
ffffffff80915d28:	20 00 20 40 	subw	$r1,$r0,$r0
ffffffff80915d2c:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80915d30:	41 07 ff 43 	clr	$r1
ffffffff80915d34:	f5 ff ff 13 	br	ffffffff80915d0c <strcmp+0x5c>
ffffffff80915d38:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915d3c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80915d40 <memset>:
ffffffff80915d40:	ff ff 52 f8 	ldi	$r2,-1($r18)
ffffffff80915d44:	16 00 40 c2 	beq	$r18,ffffffff80915da0 <memset+0x60>
ffffffff80915d48:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80915d4c:	41 07 f0 43 	mov	$r16,$r1
ffffffff80915d50:	0c 00 60 c4 	bne	$r3,ffffffff80915d84 <memset+0x44>
ffffffff80915d54:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915d58:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915d5c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915d60:	50 00 e1 9b 	fillde	80($r1)
ffffffff80915d64:	00 00 21 a2 	stb	$r17,0($r1)
ffffffff80915d68:	fc ff 42 f8 	ldi	$r2,-4($r2)
ffffffff80915d6c:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff80915d70:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80915d74:	fd ff 21 a2 	stb	$r17,-3($r1)
ffffffff80915d78:	fe ff 21 a2 	stb	$r17,-2($r1)
ffffffff80915d7c:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80915d80:	f7 ff 7f c0 	beq	$r3,ffffffff80915d60 <memset+0x20>
ffffffff80915d84:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff80915d88:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff80915d8c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915d90:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80915d94:	ff ff 21 a2 	stb	$r17,-1($r1)
ffffffff80915d98:	03 05 22 40 	cmpeq	$r1,$r2,$r3
ffffffff80915d9c:	fc ff 7f c0 	beq	$r3,ffffffff80915d90 <memset+0x50>
ffffffff80915da0:	40 07 f0 43 	mov	$r16,$r0
ffffffff80915da4:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80915da8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915dac:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80915db0 <memcpy>:
ffffffff80915db0:	ff ff 52 f8 	ldi	$r2,-1($r18)
ffffffff80915db4:	20 00 40 c2 	beq	$r18,ffffffff80915e38 <memcpy+0x88>
ffffffff80915db8:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80915dbc:	41 07 f0 43 	mov	$r16,$r1
ffffffff80915dc0:	12 00 60 c4 	bne	$r3,ffffffff80915e0c <memcpy+0x5c>
ffffffff80915dc4:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915dc8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915dcc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915dd0:	00 00 91 80 	ldbu	$r4,0($r17)
ffffffff80915dd4:	3a 00 e1 9b 	fillde	58($r1)
ffffffff80915dd8:	04 00 21 f8 	ldi	$r1,4($r1)
ffffffff80915ddc:	fc ff 42 f8 	ldi	$r2,-4($r2)
ffffffff80915de0:	3a 00 f1 27 	fillcs	58($r17)
ffffffff80915de4:	04 00 31 fa 	ldi	$r17,4($r17)
ffffffff80915de8:	83 65 40 48 	cmpule	$r2,0x3,$r3
ffffffff80915dec:	fc ff 81 a0 	stb	$r4,-4($r1)
ffffffff80915df0:	fd ff 91 80 	ldbu	$r4,-3($r17)
ffffffff80915df4:	fd ff 81 a0 	stb	$r4,-3($r1)
ffffffff80915df8:	fe ff 91 80 	ldbu	$r4,-2($r17)
ffffffff80915dfc:	fe ff 81 a0 	stb	$r4,-2($r1)
ffffffff80915e00:	ff ff 91 80 	ldbu	$r4,-1($r17)
ffffffff80915e04:	ff ff 81 a0 	stb	$r4,-1($r1)
ffffffff80915e08:	f1 ff 7f c0 	beq	$r3,ffffffff80915dd0 <memcpy+0x20>
ffffffff80915e0c:	01 00 42 f8 	ldi	$r2,1($r2)
ffffffff80915e10:	02 01 22 40 	addl	$r1,$r2,$r2
ffffffff80915e14:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915e18:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915e1c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915e20:	01 00 31 fa 	ldi	$r17,1($r17)
ffffffff80915e24:	ff ff 91 80 	ldbu	$r4,-1($r17)
ffffffff80915e28:	01 00 21 f8 	ldi	$r1,1($r1)
ffffffff80915e2c:	03 05 22 40 	cmpeq	$r1,$r2,$r3
ffffffff80915e30:	ff ff 81 a0 	stb	$r4,-1($r1)
ffffffff80915e34:	fa ff 7f c0 	beq	$r3,ffffffff80915e20 <memcpy+0x70>
ffffffff80915e38:	40 07 f0 43 	mov	$r16,$r0
ffffffff80915e3c:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff80915e40 <printnum>:
ffffffff80915e40:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80915e44:	00 22 bd fb 	ldi	$r29,8704($r29)
ffffffff80915e48:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915e4c:	48 80 7b 8f 	ldl	$r27,-32696($r27)
ffffffff80915e50:	d0 ff de fb 	ldi	sp,-48(sp)
ffffffff80915e54:	39 ed 61 4a 	zapnot	$r19,0xf,$r25
ffffffff80915e58:	58 07 f2 43 	mov	$r18,$r24
ffffffff80915e5c:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80915e60:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80915e64:	81 05 32 43 	cmpule	$r25,$r18,$r1
ffffffff80915e68:	29 20 80 4a 	subw	$r20,0x1,$r9
ffffffff80915e6c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80915e70:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80915e74:	4b 07 f0 43 	mov	$r16,$r11
ffffffff80915e78:	4c 07 f1 43 	mov	$r17,$r12
ffffffff80915e7c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80915e80:	00 00 5e af 	stl	ra,0(sp)
ffffffff80915e84:	4d 07 f5 43 	mov	$r21,$r13
ffffffff80915e88:	03 02 fb 06 	call	$r23,($r27),ffffffff80916698 <__remlu>
ffffffff80915e8c:	0a 00 fb 43 	addw	$r31,$r27,$r10
ffffffff80915e90:	1f 00 20 c4 	bne	$r1,ffffffff80915f10 <printnum+0xd0>
ffffffff80915e94:	0a 00 20 cd 	ble	$r9,ffffffff80915ec0 <printnum+0x80>
ffffffff80915e98:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915e9c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915ea0:	29 20 20 49 	subw	$r9,0x1,$r9
ffffffff80915ea4:	51 07 ec 43 	mov	$r12,$r17
ffffffff80915ea8:	50 07 ed 43 	mov	$r13,$r16
ffffffff80915eac:	5b 07 eb 43 	mov	$r11,$r27
ffffffff80915eb0:	00 00 5b 07 	call	ra,($r27),ffffffff80915eb4 <printnum+0x74>
ffffffff80915eb4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915eb8:	8c 21 bd fb 	ldi	$r29,8588($r29)
ffffffff80915ebc:	f8 ff 3f c5 	bne	$r9,ffffffff80915ea0 <printnum+0x60>
ffffffff80915ec0:	ff ff 3d fc 	ldih	$r1,-1($r29)
ffffffff80915ec4:	2a ed 41 49 	zapnot	$r10,0xf,$r10
ffffffff80915ec8:	51 07 ec 43 	mov	$r12,$r17
ffffffff80915ecc:	5b 07 eb 43 	mov	$r11,$r27
ffffffff80915ed0:	d6 fb 21 f8 	ldi	$r1,-1066($r1)
ffffffff80915ed4:	0a 01 41 41 	addl	$r10,$r1,$r10
ffffffff80915ed8:	00 00 0a 82 	ldbu	$r16,0($r10)
ffffffff80915edc:	50 0d f0 43 	sextb	$r16,$r16
ffffffff80915ee0:	00 00 5b 07 	call	ra,($r27),ffffffff80915ee4 <printnum+0xa4>
ffffffff80915ee4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915ee8:	5c 21 bd fb 	ldi	$r29,8540($r29)
ffffffff80915eec:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80915ef0:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80915ef4:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff80915ef8:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80915efc:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80915f00:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80915f04:	30 00 de fb 	ldi	sp,48(sp)
ffffffff80915f08:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80915f0c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80915f10:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915f14:	50 81 7b 8f 	ldl	$r27,-32432($r27)
ffffffff80915f18:	54 07 e9 43 	mov	$r9,$r20
ffffffff80915f1c:	a8 01 fb 06 	call	$r23,($r27),ffffffff809165c0 <__divlu>
ffffffff80915f20:	52 07 fb 43 	mov	$r27,$r18
ffffffff80915f24:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80915f28:	b0 82 7b 8f 	ldl	$r27,-32080($r27)
ffffffff80915f2c:	c4 ff 5b 07 	call	ra,($r27),ffffffff80915e40 <printnum>
ffffffff80915f30:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915f34:	10 21 bd fb 	ldi	$r29,8464($r29)
ffffffff80915f38:	e1 ff ff 13 	br	ffffffff80915ec0 <printnum+0x80>
ffffffff80915f3c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80915f40 <vprintfmt>:
ffffffff80915f40:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80915f44:	00 21 bd fb 	ldi	$r29,8448($r29)
ffffffff80915f48:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff80915f4c:	18 00 7e ad 	stl	$r11,24(sp)
ffffffff80915f50:	ff ff 7d fd 	ldih	$r11,-1($r29)
ffffffff80915f54:	08 00 3e ad 	stl	$r9,8(sp)
ffffffff80915f58:	49 07 f1 43 	mov	$r17,$r9
ffffffff80915f5c:	10 00 5e ad 	stl	$r10,16(sp)
ffffffff80915f60:	20 00 9e ad 	stl	$r12,32(sp)
ffffffff80915f64:	4a 07 f0 43 	mov	$r16,$r10
ffffffff80915f68:	0c 00 f4 43 	addw	$r31,$r20,$r12
ffffffff80915f6c:	38 00 fe ad 	stl	fp,56(sp)
ffffffff80915f70:	00 00 5e af 	stl	ra,0(sp)
ffffffff80915f74:	4f 07 f2 43 	mov	$r18,fp
ffffffff80915f78:	f8 fb 6b f9 	ldi	$r11,-1032($r11)
ffffffff80915f7c:	28 00 be ad 	stl	$r13,40(sp)
ffffffff80915f80:	30 00 de ad 	stl	$r14,48(sp)
ffffffff80915f84:	40 00 7e ae 	stl	$r19,64(sp)
ffffffff80915f88:	48 00 9e ae 	stl	$r20,72(sp)
ffffffff80915f8c:	50 00 7e ae 	stl	$r19,80(sp)
ffffffff80915f90:	00 00 0f 82 	ldbu	$r16,0(fp)
ffffffff80915f94:	01 00 cf f9 	ldi	$r14,1(fp)
ffffffff80915f98:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff80915f9c:	0b 00 40 c4 	bne	$r2,ffffffff80915fcc <vprintfmt+0x8c>
ffffffff80915fa0:	1b 00 00 c2 	beq	$r16,ffffffff80916010 <vprintfmt+0xd0>
ffffffff80915fa4:	51 07 e9 43 	mov	$r9,$r17
ffffffff80915fa8:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80915fac:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80915fb0:	00 00 5b 07 	call	ra,($r27),ffffffff80915fb4 <vprintfmt+0x74>
ffffffff80915fb4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80915fb8:	8c 20 bd fb 	ldi	$r29,8332($r29)
ffffffff80915fbc:	11 00 ee 27 	fillcs	17($r14)
ffffffff80915fc0:	ff ff 0e 82 	ldbu	$r16,-1($r14)
ffffffff80915fc4:	02 a5 04 4a 	cmpeq	$r16,0x25,$r2
ffffffff80915fc8:	f5 ff 5f c0 	beq	$r2,ffffffff80915fa0 <vprintfmt+0x60>
ffffffff80915fcc:	ff ff 9f f8 	ldi	$r4,-1
ffffffff80915fd0:	20 00 bf fa 	ldi	$r21,32
ffffffff80915fd4:	45 07 ff 43 	clr	$r5
ffffffff80915fd8:	48 07 ff 43 	clr	$r8
ffffffff80915fdc:	4d 07 e4 43 	mov	$r4,$r13
ffffffff80915fe0:	00 00 ce 80 	ldbu	$r6,0($r14)
ffffffff80915fe4:	01 00 ee f9 	ldi	fp,1($r14)
ffffffff80915fe8:	22 60 c4 48 	subw	$r6,0x23,$r2
ffffffff80915fec:	02 e7 5f 48 	and	$r2,0xff,$r2
ffffffff80915ff0:	87 a5 4a 48 	cmpule	$r2,0x55,$r7
ffffffff80915ff4:	f2 00 e0 c0 	beq	$r7,ffffffff809163c0 <vprintfmt+0x480>
ffffffff80915ff8:	42 01 40 48 	s4addl	$r2,0,$r2
ffffffff80915ffc:	02 01 4b 40 	addl	$r2,$r11,$r2
ffffffff80916000:	00 00 42 88 	ldw	$r2,0($r2)
ffffffff80916004:	02 01 a2 43 	addl	$r29,$r2,$r2
ffffffff80916008:	00 00 e2 0f 	jmp	$r31,($r2),ffffffff8091600c <vprintfmt+0xcc>
ffffffff8091600c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80916010:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff80916014:	08 00 3e 8d 	ldl	$r9,8(sp)
ffffffff80916018:	10 00 5e 8d 	ldl	$r10,16(sp)
ffffffff8091601c:	18 00 7e 8d 	ldl	$r11,24(sp)
ffffffff80916020:	20 00 9e 8d 	ldl	$r12,32(sp)
ffffffff80916024:	28 00 be 8d 	ldl	$r13,40(sp)
ffffffff80916028:	30 00 de 8d 	ldl	$r14,48(sp)
ffffffff8091602c:	38 00 fe 8d 	ldl	fp,56(sp)
ffffffff80916030:	80 00 de fb 	ldi	sp,128(sp)
ffffffff80916034:	01 00 fa 0b 	ret	$r31,(ra),0x1
ffffffff80916038:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091603c:	30 00 bf fa 	ldi	$r21,48
ffffffff80916040:	e7 ff ff 13 	br	ffffffff80915fe0 <vprintfmt+0xa0>
ffffffff80916044:	01 00 4e 80 	ldbu	$r2,1($r14)
ffffffff80916048:	24 00 c6 48 	subw	$r6,0x30,$r4
ffffffff8091604c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80916050:	46 0d e2 43 	sextb	$r2,$r6
ffffffff80916054:	22 00 c6 48 	subw	$r6,0x30,$r2
ffffffff80916058:	06 00 e6 43 	addw	$r31,$r6,$r6
ffffffff8091605c:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff80916060:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff80916064:	c8 00 40 c0 	beq	$r2,ffffffff80916388 <vprintfmt+0x448>
ffffffff80916068:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091606c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80916070:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff80916074:	00 00 6e 80 	ldbu	$r3,0($r14)
ffffffff80916078:	42 01 80 48 	s4addl	$r4,0,$r2
ffffffff8091607c:	04 00 82 40 	addw	$r4,$r2,$r4
ffffffff80916080:	04 01 84 40 	addl	$r4,$r4,$r4
ffffffff80916084:	43 0d e3 43 	sextb	$r3,$r3
ffffffff80916088:	04 00 86 40 	addw	$r4,$r6,$r4
ffffffff8091608c:	22 00 66 48 	subw	$r3,0x30,$r2
ffffffff80916090:	24 00 86 48 	subw	$r4,0x30,$r4
ffffffff80916094:	06 00 e3 43 	addw	$r31,$r3,$r6
ffffffff80916098:	22 ed 41 48 	zapnot	$r2,0xf,$r2
ffffffff8091609c:	82 25 41 48 	cmpule	$r2,0x9,$r2
ffffffff809160a0:	f3 ff 5f c4 	bne	$r2,ffffffff80916070 <vprintfmt+0x130>
ffffffff809160a4:	b8 00 e0 13 	br	ffffffff80916388 <vprintfmt+0x448>
ffffffff809160a8:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff809160ac:	51 07 e9 43 	mov	$r9,$r17
ffffffff809160b0:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809160b4:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff809160b8:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff809160bc:	00 00 01 8a 	ldw	$r16,0($r1)
ffffffff809160c0:	00 00 5b 07 	call	ra,($r27),ffffffff809160c4 <vprintfmt+0x184>
ffffffff809160c4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809160c8:	7c 1f bd fb 	ldi	$r29,8060($r29)
ffffffff809160cc:	b0 ff ff 13 	br	ffffffff80915f90 <vprintfmt+0x50>
ffffffff809160d0:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff809160d4:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff809160d8:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff809160dc:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff809160e0:	e0 00 20 c4 	bne	$r1,ffffffff80916464 <vprintfmt+0x524>
ffffffff809160e4:	00 00 cc 8d 	ldl	$r14,0($r12)
ffffffff809160e8:	52 07 ee 43 	mov	$r14,$r18
ffffffff809160ec:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809160f0:	0a 00 7f fa 	ldi	$r19,10
ffffffff809160f4:	2e 00 c0 d5 	bge	$r14,ffffffff809161b0 <vprintfmt+0x270>
ffffffff809160f8:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809160fc:	51 07 e9 43 	mov	$r9,$r17
ffffffff80916100:	2d 00 1f fa 	ldi	$r16,45
ffffffff80916104:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80916108:	00 00 5b 07 	call	ra,($r27),ffffffff8091610c <vprintfmt+0x1cc>
ffffffff8091610c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80916110:	34 1f bd fb 	ldi	$r29,7988($r29)
ffffffff80916114:	32 01 ee 43 	negl	$r14,$r18
ffffffff80916118:	0a 00 7f fa 	ldi	$r19,10
ffffffff8091611c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80916120:	23 00 e0 13 	br	ffffffff809161b0 <vprintfmt+0x270>
ffffffff80916124:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80916128:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff8091612c:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80916130:	00 00 41 88 	ldw	$r2,0($r1)
ffffffff80916134:	21 01 e2 43 	negl	$r2,$r1
ffffffff80916138:	21 04 42 44 	selge	$r2,$r2,$r1,$r1
ffffffff8091613c:	13 00 e1 43 	addw	$r31,$r1,$r19
ffffffff80916140:	41 c5 60 4a 	cmple	$r19,0x6,$r1
ffffffff80916144:	af 00 20 c0 	beq	$r1,ffffffff80916404 <vprintfmt+0x4c4>
ffffffff80916148:	ff ff 5d fc 	ldih	$r2,-1($r29)
ffffffff8091614c:	81 01 60 4a 	s8addl	$r19,0,$r1
ffffffff80916150:	b8 fd 42 f8 	ldi	$r2,-584($r2)
ffffffff80916154:	01 01 22 40 	addl	$r1,$r2,$r1
ffffffff80916158:	00 00 21 8c 	ldl	$r1,0($r1)
ffffffff8091615c:	a9 00 20 c0 	beq	$r1,ffffffff80916404 <vprintfmt+0x4c4>
ffffffff80916160:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80916164:	53 07 e1 43 	mov	$r1,$r19
ffffffff80916168:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091616c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80916170:	80 eb 52 fa 	ldi	$r18,-5248($r18)
ffffffff80916174:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80916178:	b8 81 7b 8f 	ldl	$r27,-32328($r27)
ffffffff8091617c:	f8 00 5b 07 	call	ra,($r27),ffffffff80916560 <printfmt>
ffffffff80916180:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80916184:	c0 1e bd fb 	ldi	$r29,7872($r29)
ffffffff80916188:	81 ff ff 13 	br	ffffffff80915f90 <vprintfmt+0x50>
ffffffff8091618c:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80916190:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80916194:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80916198:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff8091619c:	c0 00 20 c4 	bne	$r1,ffffffff809164a0 <vprintfmt+0x560>
ffffffff809161a0:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff809161a4:	08 00 7f fa 	ldi	$r19,8
ffffffff809161a8:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809161ac:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809161b0:	54 07 ed 43 	mov	$r13,$r20
ffffffff809161b4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809161b8:	50 07 ea 43 	mov	$r10,$r16
ffffffff809161bc:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809161c0:	b0 82 7b 8f 	ldl	$r27,-32080($r27)
ffffffff809161c4:	1e ff 5b 07 	call	ra,($r27),ffffffff80915e40 <printnum>
ffffffff809161c8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809161cc:	78 1e bd fb 	ldi	$r29,7800($r29)
ffffffff809161d0:	6f ff ff 13 	br	ffffffff80915f90 <vprintfmt+0x50>
ffffffff809161d4:	08 20 00 49 	addw	$r8,0x1,$r8
ffffffff809161d8:	4e 07 ef 43 	mov	fp,$r14
ffffffff809161dc:	80 ff ff 13 	br	ffffffff80915fe0 <vprintfmt+0xa0>
ffffffff809161e0:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809161e4:	30 00 1f fa 	ldi	$r16,48
ffffffff809161e8:	51 07 e9 43 	mov	$r9,$r17
ffffffff809161ec:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809161f0:	00 00 5b 07 	call	ra,($r27),ffffffff809161f4 <vprintfmt+0x2b4>
ffffffff809161f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809161f8:	4c 1e bd fb 	ldi	$r29,7756($r29)
ffffffff809161fc:	51 07 e9 43 	mov	$r9,$r17
ffffffff80916200:	78 00 1f fa 	ldi	$r16,120
ffffffff80916204:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80916208:	00 00 5b 07 	call	ra,($r27),ffffffff8091620c <vprintfmt+0x2cc>
ffffffff8091620c:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80916210:	34 1e bd fb 	ldi	$r29,7732($r29)
ffffffff80916214:	50 00 5e 8c 	ldl	$r2,80(sp)
ffffffff80916218:	10 00 7f fa 	ldi	$r19,16
ffffffff8091621c:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff80916220:	01 01 4c 40 	addl	$r2,$r12,$r1
ffffffff80916224:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80916228:	00 00 41 8e 	ldl	$r18,0($r1)
ffffffff8091622c:	e0 ff ff 13 	br	ffffffff809161b0 <vprintfmt+0x270>
ffffffff80916230:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80916234:	06 a5 a5 4a 	cmpeq	$r21,0x2d,$r6
ffffffff80916238:	21 05 ed 43 	cmplt	$r31,$r13,$r1
ffffffff8091623c:	ff ff 7d ff 	ldih	$r27,-1($r29)
ffffffff80916240:	06 05 c0 48 	cmpeq	$r6,0,$r6
ffffffff80916244:	e7 fb 7b fb 	ldi	$r27,-1049($r27)
ffffffff80916248:	01 07 26 40 	and	$r1,$r6,$r1
ffffffff8091624c:	02 01 6c 40 	addl	$r3,$r12,$r2
ffffffff80916250:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80916254:	00 00 42 8c 	ldl	$r2,0($r2)
ffffffff80916258:	42 00 5b 44 	seleq	$r2,$r27,$r2,$r2
ffffffff8091625c:	96 00 20 c4 	bne	$r1,ffffffff809164b8 <vprintfmt+0x578>
ffffffff80916260:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80916264:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80916268:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff8091626c:	19 00 00 c2 	beq	$r16,ffffffff809162d4 <vprintfmt+0x394>
ffffffff80916270:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80916274:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80916278:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091627c:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80916280:	03 00 80 c8 	blt	$r4,ffffffff80916290 <vprintfmt+0x350>
ffffffff80916284:	24 20 80 48 	subw	$r4,0x1,$r4
ffffffff80916288:	01 00 c4 f8 	ldi	$r6,1($r4)
ffffffff8091628c:	11 00 c0 c0 	beq	$r6,ffffffff809162d4 <vprintfmt+0x394>
ffffffff80916290:	51 07 e9 43 	mov	$r9,$r17
ffffffff80916294:	65 00 a0 c4 	bne	$r5,ffffffff8091642c <vprintfmt+0x4ec>
ffffffff80916298:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff8091629c:	68 00 be ac 	stl	$r5,104(sp)
ffffffff809162a0:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809162a4:	00 00 5b 07 	call	ra,($r27),ffffffff809162a8 <vprintfmt+0x368>
ffffffff809162a8:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809162ac:	98 1d bd fb 	ldi	$r29,7576($r29)
ffffffff809162b0:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff809162b4:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff809162b8:	f6 ff 2e 80 	ldbu	$r1,-10($r14)
ffffffff809162bc:	00 00 ee 27 	fillcs	0($r14)
ffffffff809162c0:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff809162c4:	01 00 ce f9 	ldi	$r14,1($r14)
ffffffff809162c8:	41 0d e1 43 	sextb	$r1,$r1
ffffffff809162cc:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff809162d0:	eb ff 1f c6 	bne	$r16,ffffffff80916280 <vprintfmt+0x340>
ffffffff809162d4:	2e ff bf cd 	ble	$r13,ffffffff80915f90 <vprintfmt+0x50>
ffffffff809162d8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809162dc:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809162e0:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff809162e4:	51 07 e9 43 	mov	$r9,$r17
ffffffff809162e8:	20 00 1f fa 	ldi	$r16,32
ffffffff809162ec:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809162f0:	00 00 5b 07 	call	ra,($r27),ffffffff809162f4 <vprintfmt+0x3b4>
ffffffff809162f4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809162f8:	4c 1d bd fb 	ldi	$r29,7500($r29)
ffffffff809162fc:	f8 ff bf c5 	bne	$r13,ffffffff809162e0 <vprintfmt+0x3a0>
ffffffff80916300:	23 ff ff 13 	br	ffffffff80915f90 <vprintfmt+0x50>
ffffffff80916304:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff80916308:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff8091630c:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80916310:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80916314:	5c 00 20 c4 	bne	$r1,ffffffff80916488 <vprintfmt+0x548>
ffffffff80916318:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff8091631c:	0a 00 7f fa 	ldi	$r19,10
ffffffff80916320:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80916324:	a2 ff ff 13 	br	ffffffff809161b0 <vprintfmt+0x270>
ffffffff80916328:	50 00 7e 8c 	ldl	$r3,80(sp)
ffffffff8091632c:	41 25 00 49 	cmple	$r8,0x1,$r1
ffffffff80916330:	02 00 81 49 	addw	$r12,0x8,$r2
ffffffff80916334:	0c 01 6c 40 	addl	$r3,$r12,$r12
ffffffff80916338:	4d 00 20 c4 	bne	$r1,ffffffff80916470 <vprintfmt+0x530>
ffffffff8091633c:	00 00 4c 8e 	ldl	$r18,0($r12)
ffffffff80916340:	10 00 7f fa 	ldi	$r19,16
ffffffff80916344:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80916348:	99 ff ff 13 	br	ffffffff809161b0 <vprintfmt+0x270>
ffffffff8091634c:	4e 07 ef 43 	mov	fp,$r14
ffffffff80916350:	01 00 bf f8 	ldi	$r5,1
ffffffff80916354:	22 ff ff 13 	br	ffffffff80915fe0 <vprintfmt+0xa0>
ffffffff80916358:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091635c:	25 00 1f fa 	ldi	$r16,37
ffffffff80916360:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80916364:	00 00 5b 07 	call	ra,($r27),ffffffff80916368 <vprintfmt+0x428>
ffffffff80916368:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff8091636c:	d8 1c bd fb 	ldi	$r29,7384($r29)
ffffffff80916370:	07 ff ff 13 	br	ffffffff80915f90 <vprintfmt+0x50>
ffffffff80916374:	50 00 3e 8c 	ldl	$r1,80(sp)
ffffffff80916378:	4e 07 ef 43 	mov	fp,$r14
ffffffff8091637c:	02 01 2c 40 	addl	$r1,$r12,$r2
ffffffff80916380:	0c 00 81 49 	addw	$r12,0x8,$r12
ffffffff80916384:	00 00 82 88 	ldw	$r4,0($r2)
ffffffff80916388:	42 07 ed 43 	mov	$r13,$r2
ffffffff8091638c:	ff ff 7f f8 	ldi	$r3,-1
ffffffff80916390:	42 10 a4 45 	sellt	$r13,$r4,$r2,$r2
ffffffff80916394:	84 10 a3 45 	sellt	$r13,$r3,$r4,$r4
ffffffff80916398:	4d 07 e2 43 	mov	$r2,$r13
ffffffff8091639c:	10 ff ff 13 	br	ffffffff80915fe0 <vprintfmt+0xa0>
ffffffff809163a0:	4e 07 ef 43 	mov	fp,$r14
ffffffff809163a4:	2d 00 bf fa 	ldi	$r21,45
ffffffff809163a8:	0d ff ff 13 	br	ffffffff80915fe0 <vprintfmt+0xa0>
ffffffff809163ac:	54 07 ed 43 	mov	$r13,$r20
ffffffff809163b0:	4e 07 ef 43 	mov	fp,$r14
ffffffff809163b4:	94 12 80 4e 	sellt	$r20,0,$r20,$r20
ffffffff809163b8:	0d 00 f4 43 	addw	$r31,$r20,$r13
ffffffff809163bc:	08 ff ff 13 	br	ffffffff80915fe0 <vprintfmt+0xa0>
ffffffff809163c0:	51 07 e9 43 	mov	$r9,$r17
ffffffff809163c4:	25 00 1f fa 	ldi	$r16,37
ffffffff809163c8:	5b 07 ea 43 	mov	$r10,$r27
ffffffff809163cc:	4f 07 ee 43 	mov	$r14,fp
ffffffff809163d0:	00 00 5b 07 	call	ra,($r27),ffffffff809163d4 <vprintfmt+0x494>
ffffffff809163d4:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809163d8:	6c 1c bd fb 	ldi	$r29,7276($r29)
ffffffff809163dc:	ff ff 2e 80 	ldbu	$r1,-1($r14)
ffffffff809163e0:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff809163e4:	ea fe 3f c4 	bne	$r1,ffffffff80915f90 <vprintfmt+0x50>
ffffffff809163e8:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809163ec:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff809163f0:	ff ff ef f9 	ldi	fp,-1(fp)
ffffffff809163f4:	ff ff 2f 80 	ldbu	$r1,-1(fp)
ffffffff809163f8:	01 a5 24 48 	cmpeq	$r1,0x25,$r1
ffffffff809163fc:	fc ff 3f c0 	beq	$r1,ffffffff809163f0 <vprintfmt+0x4b0>
ffffffff80916400:	e3 fe ff 13 	br	ffffffff80915f90 <vprintfmt+0x50>
ffffffff80916404:	ff ff 5d fe 	ldih	$r18,-1($r29)
ffffffff80916408:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091640c:	50 07 ea 43 	mov	$r10,$r16
ffffffff80916410:	ee fb 52 fa 	ldi	$r18,-1042($r18)
ffffffff80916414:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff80916418:	b8 81 7b 8f 	ldl	$r27,-32328($r27)
ffffffff8091641c:	50 00 5b 07 	call	ra,($r27),ffffffff80916560 <printfmt>
ffffffff80916420:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80916424:	20 1c bd fb 	ldi	$r29,7200($r29)
ffffffff80916428:	d9 fe ff 13 	br	ffffffff80915f90 <vprintfmt+0x50>
ffffffff8091642c:	21 00 24 48 	subw	$r1,0x20,$r1
ffffffff80916430:	21 ed 21 48 	zapnot	$r1,0xf,$r1
ffffffff80916434:	81 c5 2b 48 	cmpule	$r1,0x5e,$r1
ffffffff80916438:	97 ff 3f c4 	bne	$r1,ffffffff80916298 <vprintfmt+0x358>
ffffffff8091643c:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80916440:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80916444:	3f 00 1f fa 	ldi	$r16,63
ffffffff80916448:	5b 07 ea 43 	mov	$r10,$r27
ffffffff8091644c:	00 00 5b 07 	call	ra,($r27),ffffffff80916450 <vprintfmt+0x510>
ffffffff80916450:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80916454:	f0 1b bd fb 	ldi	$r29,7152($r29)
ffffffff80916458:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff8091645c:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80916460:	95 ff ff 13 	br	ffffffff809162b8 <vprintfmt+0x378>
ffffffff80916464:	1f ff 1f c5 	bne	$r8,ffffffff809160e4 <vprintfmt+0x1a4>
ffffffff80916468:	00 00 cc 89 	ldw	$r14,0($r12)
ffffffff8091646c:	1e ff ff 13 	br	ffffffff809160e8 <vprintfmt+0x1a8>
ffffffff80916470:	b2 ff 1f c5 	bne	$r8,ffffffff8091633c <vprintfmt+0x3fc>
ffffffff80916474:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80916478:	10 00 7f fa 	ldi	$r19,16
ffffffff8091647c:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80916480:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff80916484:	4a ff ff 13 	br	ffffffff809161b0 <vprintfmt+0x270>
ffffffff80916488:	a3 ff 1f c5 	bne	$r8,ffffffff80916318 <vprintfmt+0x3d8>
ffffffff8091648c:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff80916490:	0a 00 7f fa 	ldi	$r19,10
ffffffff80916494:	4c 07 e2 43 	mov	$r2,$r12
ffffffff80916498:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff8091649c:	44 ff ff 13 	br	ffffffff809161b0 <vprintfmt+0x270>
ffffffff809164a0:	3f ff 1f c5 	bne	$r8,ffffffff809161a0 <vprintfmt+0x260>
ffffffff809164a4:	00 00 4c 8a 	ldw	$r18,0($r12)
ffffffff809164a8:	08 00 7f fa 	ldi	$r19,8
ffffffff809164ac:	4c 07 e2 43 	mov	$r2,$r12
ffffffff809164b0:	32 ed 41 4a 	zapnot	$r18,0xf,$r18
ffffffff809164b4:	3e ff ff 13 	br	ffffffff809161b0 <vprintfmt+0x270>
ffffffff809164b8:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809164bc:	00 81 7b 8f 	ldl	$r27,-32512($r27)
ffffffff809164c0:	51 07 e4 43 	mov	$r4,$r17
ffffffff809164c4:	50 07 e2 43 	mov	$r2,$r16
ffffffff809164c8:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff809164cc:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff809164d0:	68 00 be ac 	stl	$r5,104(sp)
ffffffff809164d4:	60 00 be ae 	stl	$r21,96(sp)
ffffffff809164d8:	d1 fd 5b 07 	call	ra,($r27),ffffffff80915c20 <strnlen>
ffffffff809164dc:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809164e0:	2d 00 a0 41 	subw	$r13,$r0,$r13
ffffffff809164e4:	64 1b bd fb 	ldi	$r29,7012($r29)
ffffffff809164e8:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff809164ec:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff809164f0:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff809164f4:	60 00 be 8e 	ldl	$r21,96(sp)
ffffffff809164f8:	10 00 a0 cd 	ble	$r13,ffffffff8091653c <vprintfmt+0x5fc>
ffffffff809164fc:	0e 00 f5 43 	addw	$r31,$r21,$r14
ffffffff80916500:	58 00 5e ac 	stl	$r2,88(sp)
ffffffff80916504:	70 00 9e ac 	stl	$r4,112(sp)
ffffffff80916508:	51 07 e9 43 	mov	$r9,$r17
ffffffff8091650c:	50 07 ee 43 	mov	$r14,$r16
ffffffff80916510:	68 00 be ac 	stl	$r5,104(sp)
ffffffff80916514:	5b 07 ea 43 	mov	$r10,$r27
ffffffff80916518:	2d 20 a0 49 	subw	$r13,0x1,$r13
ffffffff8091651c:	00 00 5b 07 	call	ra,($r27),ffffffff80916520 <vprintfmt+0x5e0>
ffffffff80916520:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff80916524:	20 1b bd fb 	ldi	$r29,6944($r29)
ffffffff80916528:	58 00 5e 8c 	ldl	$r2,88(sp)
ffffffff8091652c:	70 00 9e 8c 	ldl	$r4,112(sp)
ffffffff80916530:	68 00 be 8c 	ldl	$r5,104(sp)
ffffffff80916534:	f2 ff bf c5 	bne	$r13,ffffffff80916500 <vprintfmt+0x5c0>
ffffffff80916538:	4d 07 ff 43 	clr	$r13
ffffffff8091653c:	00 00 22 80 	ldbu	$r1,0($r2)
ffffffff80916540:	41 0d e1 43 	sextb	$r1,$r1
ffffffff80916544:	10 00 e1 43 	addw	$r31,$r1,$r16
ffffffff80916548:	91 fe 1f c2 	beq	$r16,ffffffff80915f90 <vprintfmt+0x50>
ffffffff8091654c:	0b 00 c2 f9 	ldi	$r14,11($r2)
ffffffff80916550:	4b ff ff 13 	br	ffffffff80916280 <vprintfmt+0x340>
ffffffff80916554:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff80916558:	00 00 fe ff 	ldih	$r31,0(sp)
ffffffff8091655c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80916560 <printfmt>:
ffffffff80916560:	01 00 bb ff 	ldih	$r29,1($r27)
ffffffff80916564:	e0 1a bd fb 	ldi	$r29,6880($r29)
ffffffff80916568:	80 ff de fb 	ldi	sp,-128(sp)
ffffffff8091656c:	18 00 5f f8 	ldi	$r2,24
ffffffff80916570:	18 00 5e a8 	stw	$r2,24(sp)
ffffffff80916574:	70 00 9e ae 	stl	$r20,112(sp)
ffffffff80916578:	50 00 3e f8 	ldi	$r1,80(sp)
ffffffff8091657c:	38 00 7e be 	fstd	$f19,56(sp)
ffffffff80916580:	18 00 9e 8e 	ldl	$r20,24(sp)
ffffffff80916584:	68 00 7e ae 	stl	$r19,104(sp)
ffffffff80916588:	53 07 e1 43 	mov	$r1,$r19
ffffffff8091658c:	40 00 9e be 	fstd	$f20,64(sp)
ffffffff80916590:	00 00 5e af 	stl	ra,0(sp)
ffffffff80916594:	48 00 be be 	fstd	$f21,72(sp)
ffffffff80916598:	78 00 be ae 	stl	$r21,120(sp)
ffffffff8091659c:	10 00 3e ac 	stl	$r1,16(sp)
ffffffff809165a0:	00 00 7d ff 	ldih	$r27,0($r29)
ffffffff809165a4:	30 80 7b 8f 	ldl	$r27,-32720($r27)
ffffffff809165a8:	65 fe 5b 07 	call	ra,($r27),ffffffff80915f40 <vprintfmt>
ffffffff809165ac:	01 00 ba ff 	ldih	$r29,1(ra)
ffffffff809165b0:	94 1a bd fb 	ldi	$r29,6804($r29)
ffffffff809165b4:	00 00 5e 8f 	ldl	ra,0(sp)
ffffffff809165b8:	80 00 de fb 	ldi	sp,128(sp)
ffffffff809165bc:	01 00 fa 0b 	ret	$r31,(ra),0x1

ffffffff809165c0 <__divlu>:
ffffffff809165c0:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff809165c4:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff809165c8:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff809165cc:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff809165d0:	42 07 18 43 	or	$r24,$r24,$r2
ffffffff809165d4:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff809165d8:	5b 07 ff 43 	clr	$r27
ffffffff809165dc:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff809165e0:	40 27 e0 4b 	mov	0x1,$r0
ffffffff809165e4:	20 00 9e ac 	stl	$r4,32(sp)
ffffffff809165e8:	0d 00 20 c0 	beq	$r1,ffffffff80916620 <__divlu+0x60>
ffffffff809165ec:	7c 05 22 40 	cmpult	$r1,$r2,$r28
ffffffff809165f0:	03 00 20 c8 	blt	$r1,ffffffff80916600 <__divlu+0x40>
ffffffff809165f4:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff809165f8:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff809165fc:	fb ff 9f c7 	bne	$r28,ffffffff809165ec <__divlu+0x2c>
ffffffff80916600:	04 01 60 43 	addl	$r27,$r0,$r4
ffffffff80916604:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff80916608:	9c 05 22 40 	cmpule	$r1,$r2,$r28
ffffffff8091660c:	23 01 41 40 	subl	$r2,$r1,$r3
ffffffff80916610:	7b 17 84 47 	selne	$r28,$r4,$r27,$r27
ffffffff80916614:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff80916618:	42 14 83 47 	selne	$r28,$r3,$r2,$r2
ffffffff8091661c:	f8 ff 1f c4 	bne	$r0,ffffffff80916600 <__divlu+0x40>
ffffffff80916620:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff80916624:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff80916628:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff8091662c:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80916630:	20 00 9e 8c 	ldl	$r4,32(sp)
ffffffff80916634:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80916638:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff8091663c:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80916640 <__divl>:
ffffffff80916640:	3e 01 c6 4b 	subl	sp,0x30,sp
ffffffff80916644:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80916648:	de ff 9f d7 	bge	$r28,ffffffff809165c4 <__divlu+0x4>
ffffffff8091664c:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80916650:	3c 01 f8 43 	negl	$r24,$r28
ffffffff80916654:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80916658:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff8091665c:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80916660:	3c 01 f9 43 	negl	$r25,$r28
ffffffff80916664:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80916668:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff8091666c:	d4 ff ff 16 	bsr	$r23,ffffffff809165c0 <__divlu>
ffffffff80916670:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff80916674:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80916678:	9c 07 19 43 	xor	$r24,$r25,$r28
ffffffff8091667c:	23 01 fb 43 	negl	$r27,$r3
ffffffff80916680:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff80916684:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80916688:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff8091668c:	1e 01 c6 4b 	addl	sp,0x30,sp
ffffffff80916690:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80916694:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80916698 <__remlu>:
ffffffff80916698:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff8091669c:	00 00 3e ac 	stl	$r1,0(sp)
ffffffff809166a0:	41 07 39 43 	or	$r25,$r25,$r1
ffffffff809166a4:	08 00 5e ac 	stl	$r2,8(sp)
ffffffff809166a8:	5b 07 18 43 	or	$r24,$r24,$r27
ffffffff809166ac:	10 00 1e ac 	stl	$r0,16(sp)
ffffffff809166b0:	42 07 ff 43 	clr	$r2
ffffffff809166b4:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff809166b8:	40 27 e0 4b 	mov	0x1,$r0
ffffffff809166bc:	0b 00 20 c0 	beq	$r1,ffffffff809166ec <__remlu+0x54>
ffffffff809166c0:	7c 05 3b 40 	cmpult	$r1,$r27,$r28
ffffffff809166c4:	03 00 20 c8 	blt	$r1,ffffffff809166d4 <__remlu+0x3c>
ffffffff809166c8:	01 01 21 40 	addl	$r1,$r1,$r1
ffffffff809166cc:	00 01 00 40 	addl	$r0,$r0,$r0
ffffffff809166d0:	fb ff 9f c7 	bne	$r28,ffffffff809166c0 <__remlu+0x28>
ffffffff809166d4:	20 29 00 48 	srl	$r0,0x1,$r0
ffffffff809166d8:	9c 05 3b 40 	cmpule	$r1,$r27,$r28
ffffffff809166dc:	23 01 61 43 	subl	$r27,$r1,$r3
ffffffff809166e0:	21 29 20 48 	srl	$r1,0x1,$r1
ffffffff809166e4:	7b 17 83 47 	selne	$r28,$r3,$r27,$r27
ffffffff809166e8:	fa ff 1f c4 	bne	$r0,ffffffff809166d4 <__remlu+0x3c>
ffffffff809166ec:	00 00 3e 8c 	ldl	$r1,0(sp)
ffffffff809166f0:	08 00 5e 8c 	ldl	$r2,8(sp)
ffffffff809166f4:	10 00 1e 8c 	ldl	$r0,16(sp)
ffffffff809166f8:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff809166fc:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80916700:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff80916704:	00 00 fe ff 	ldih	$r31,0(sp)

ffffffff80916708 <__reml>:
ffffffff80916708:	3e 01 c4 4b 	subl	sp,0x20,sp
ffffffff8091670c:	5c 07 19 43 	or	$r24,$r25,$r28
ffffffff80916710:	e2 ff 9f d7 	bge	$r28,ffffffff8091669c <__remlu+0x4>
ffffffff80916714:	00 00 1e af 	stl	$r24,0(sp)
ffffffff80916718:	3c 01 f8 43 	negl	$r24,$r28
ffffffff8091671c:	08 00 3e af 	stl	$r25,8(sp)
ffffffff80916720:	18 13 1c 47 	sellt	$r24,$r28,$r24,$r24
ffffffff80916724:	10 00 fe ae 	stl	$r23,16(sp)
ffffffff80916728:	3c 01 f9 43 	negl	$r25,$r28
ffffffff8091672c:	18 00 7e ac 	stl	$r3,24(sp)
ffffffff80916730:	39 13 3c 47 	sellt	$r25,$r28,$r25,$r25
ffffffff80916734:	d8 ff ff 16 	bsr	$r23,ffffffff80916698 <__remlu>
ffffffff80916738:	00 00 1e 8f 	ldl	$r24,0(sp)
ffffffff8091673c:	08 00 3e 8f 	ldl	$r25,8(sp)
ffffffff80916740:	5c 07 18 43 	or	$r24,$r24,$r28
ffffffff80916744:	23 01 fb 43 	negl	$r27,$r3
ffffffff80916748:	10 00 fe 8e 	ldl	$r23,16(sp)
ffffffff8091674c:	7b 13 83 47 	sellt	$r28,$r3,$r27,$r27
ffffffff80916750:	18 00 7e 8c 	ldl	$r3,24(sp)
ffffffff80916754:	1e 01 c4 4b 	addl	sp,0x20,sp
ffffffff80916758:	01 00 f7 0b 	ret	$r31,($r23),0x1
ffffffff8091675c:	00 00 fe ff 	ldih	$r31,0(sp)
