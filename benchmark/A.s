
benchmark/A.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	6dd000ef          	jal	11010 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	2ac020ef          	jal	123f4 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	2b450513          	addi	a0,a0,692 # 122b4 <__libc_fini_array>
   1015c:	7e90006f          	j	11144 <atexit>
   10160:	00008067          	ret

0000000000010164 <_start>:
   10164:	00003197          	auipc	gp,0x3
   10168:	6b418193          	addi	gp,gp,1716 # 13818 <__global_pointer$>
   1016c:	00004517          	auipc	a0,0x4
   10170:	84c50513          	addi	a0,a0,-1972 # 139b8 <__stdio_exit_handler>
   10174:	00004617          	auipc	a2,0x4
   10178:	e0460613          	addi	a2,a2,-508 # 13f78 <__BSS_END__>
   1017c:	40a60633          	sub	a2,a2,a0
   10180:	00000593          	li	a1,0
   10184:	5b1000ef          	jal	10f34 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	fbc50513          	addi	a0,a0,-68 # 11144 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	12050513          	addi	a0,a0,288 # 122b4 <__libc_fini_array>
   1019c:	7a9000ef          	jal	11144 <atexit>
   101a0:	4f9000ef          	jal	10e98 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	06c000ef          	jal	1021c <main>
   101b4:	f6dff06f          	j	10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	1d81c783          	lbu	a5,472(gp) # 139f0 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bnez	a5,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	li	a5,0
   101d0:	00078a63          	beqz	a5,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00012537          	lui	a0,0x12
   101d8:	57050513          	addi	a0,a0,1392 # 12570 <__EH_FRAME_BEGIN__>
   101dc:	00000097          	auipc	ra,0x0
   101e0:	000000e7          	jalr	zero # 0 <exit-0x10120>
   101e4:	00100793          	li	a5,1
   101e8:	1cf18c23          	sb	a5,472(gp) # 139f0 <completed.1>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	00013403          	ld	s0,0(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	00008067          	ret

00000000000101fc <frame_dummy>:
   101fc:	00000793          	li	a5,0
   10200:	00078c63          	beqz	a5,10218 <frame_dummy+0x1c>
   10204:	00012537          	lui	a0,0x12
   10208:	1e018593          	addi	a1,gp,480 # 139f8 <object.0>
   1020c:	57050513          	addi	a0,a0,1392 # 12570 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	81010113          	addi	sp,sp,-2032
   10220:	7e113423          	sd	ra,2024(sp)
   10224:	7e813023          	sd	s0,2016(sp)
   10228:	7f010413          	addi	s0,sp,2032
   1022c:	ffffd2b7          	lui	t0,0xffffd
   10230:	e6028293          	addi	t0,t0,-416 # ffffffffffffce60 <__BSS_END__+0xfffffffffffe8ee8>
   10234:	00510133          	add	sp,sp,t0
   10238:	fe042623          	sw	zero,-20(s0)
   1023c:	0e40006f          	j	10320 <main+0x104>
   10240:	fe042423          	sw	zero,-24(s0)
   10244:	0c00006f          	j	10304 <main+0xe8>
   10248:	fffff7b7          	lui	a5,0xfffff
   1024c:	ff078793          	addi	a5,a5,-16 # ffffffffffffeff0 <__BSS_END__+0xfffffffffffeb078>
   10250:	008786b3          	add	a3,a5,s0
   10254:	fe842603          	lw	a2,-24(s0)
   10258:	fec42703          	lw	a4,-20(s0)
   1025c:	00070793          	mv	a5,a4
   10260:	00379793          	slli	a5,a5,0x3
   10264:	00e787b3          	add	a5,a5,a4
   10268:	00279793          	slli	a5,a5,0x2
   1026c:	40e787b3          	sub	a5,a5,a4
   10270:	00c787b3          	add	a5,a5,a2
   10274:	00279793          	slli	a5,a5,0x2
   10278:	00f687b3          	add	a5,a3,a5
   1027c:	fec42703          	lw	a4,-20(s0)
   10280:	cce7a823          	sw	a4,-816(a5)
   10284:	ffffe7b7          	lui	a5,0xffffe
   10288:	ff078793          	addi	a5,a5,-16 # ffffffffffffdff0 <__BSS_END__+0xfffffffffffea078>
   1028c:	008786b3          	add	a3,a5,s0
   10290:	fe842603          	lw	a2,-24(s0)
   10294:	fec42703          	lw	a4,-20(s0)
   10298:	00070793          	mv	a5,a4
   1029c:	00379793          	slli	a5,a5,0x3
   102a0:	00e787b3          	add	a5,a5,a4
   102a4:	00279793          	slli	a5,a5,0x2
   102a8:	40e787b3          	sub	a5,a5,a4
   102ac:	00c787b3          	add	a5,a5,a2
   102b0:	00279793          	slli	a5,a5,0x2
   102b4:	00f687b3          	add	a5,a3,a5
   102b8:	fe842703          	lw	a4,-24(s0)
   102bc:	9ae7a423          	sw	a4,-1624(a5)
   102c0:	ffffc7b7          	lui	a5,0xffffc
   102c4:	ff078793          	addi	a5,a5,-16 # ffffffffffffbff0 <__BSS_END__+0xfffffffffffe8078>
   102c8:	008786b3          	add	a3,a5,s0
   102cc:	fe842603          	lw	a2,-24(s0)
   102d0:	fec42703          	lw	a4,-20(s0)
   102d4:	00070793          	mv	a5,a4
   102d8:	00379793          	slli	a5,a5,0x3
   102dc:	00e787b3          	add	a5,a5,a4
   102e0:	00279793          	slli	a5,a5,0x2
   102e4:	40e787b3          	sub	a5,a5,a4
   102e8:	00c787b3          	add	a5,a5,a2
   102ec:	00279793          	slli	a5,a5,0x2
   102f0:	00f687b3          	add	a5,a3,a5
   102f4:	6807a023          	sw	zero,1664(a5)
   102f8:	fe842783          	lw	a5,-24(s0)
   102fc:	0017879b          	addiw	a5,a5,1
   10300:	fef42423          	sw	a5,-24(s0)
   10304:	fe842783          	lw	a5,-24(s0)
   10308:	0007871b          	sext.w	a4,a5
   1030c:	02200793          	li	a5,34
   10310:	f2e7dce3          	bge	a5,a4,10248 <main+0x2c>
   10314:	fec42783          	lw	a5,-20(s0)
   10318:	0017879b          	addiw	a5,a5,1
   1031c:	fef42623          	sw	a5,-20(s0)
   10320:	fec42783          	lw	a5,-20(s0)
   10324:	0007871b          	sext.w	a4,a5
   10328:	02200793          	li	a5,34
   1032c:	f0e7dae3          	bge	a5,a4,10240 <main+0x24>
   10330:	ffffc7b7          	lui	a5,0xffffc
   10334:	68078793          	addi	a5,a5,1664 # ffffffffffffc680 <__BSS_END__+0xfffffffffffe8708>
   10338:	ff078793          	addi	a5,a5,-16
   1033c:	008786b3          	add	a3,a5,s0
   10340:	ffffe7b7          	lui	a5,0xffffe
   10344:	9a878793          	addi	a5,a5,-1624 # ffffffffffffd9a8 <__BSS_END__+0xfffffffffffe9a30>
   10348:	ff078793          	addi	a5,a5,-16
   1034c:	00878733          	add	a4,a5,s0
   10350:	fffff7b7          	lui	a5,0xfffff
   10354:	cd078793          	addi	a5,a5,-816 # ffffffffffffecd0 <__BSS_END__+0xfffffffffffead58>
   10358:	ff078793          	addi	a5,a5,-16
   1035c:	008787b3          	add	a5,a5,s0
   10360:	00068613          	mv	a2,a3
   10364:	00070593          	mv	a1,a4
   10368:	00078513          	mv	a0,a5
   1036c:	02c000ef          	jal	10398 <func_A>
   10370:	264000ef          	jal	105d4 <exit_proc>
   10374:	00000793          	li	a5,0
   10378:	00078513          	mv	a0,a5
   1037c:	000032b7          	lui	t0,0x3
   10380:	1a028293          	addi	t0,t0,416 # 31a0 <exit-0xcf80>
   10384:	00510133          	add	sp,sp,t0
   10388:	7e813083          	ld	ra,2024(sp)
   1038c:	7e013403          	ld	s0,2016(sp)
   10390:	7f010113          	addi	sp,sp,2032
   10394:	00008067          	ret

0000000000010398 <func_A>:
   10398:	fb010113          	addi	sp,sp,-80
   1039c:	04113423          	sd	ra,72(sp)
   103a0:	04813023          	sd	s0,64(sp)
   103a4:	02913c23          	sd	s1,56(sp)
   103a8:	05010413          	addi	s0,sp,80
   103ac:	fca43423          	sd	a0,-56(s0)
   103b0:	fcb43023          	sd	a1,-64(s0)
   103b4:	fac43c23          	sd	a2,-72(s0)
   103b8:	fc042e23          	sw	zero,-36(s0)
   103bc:	1540006f          	j	10510 <func_A+0x178>
   103c0:	fc042c23          	sw	zero,-40(s0)
   103c4:	1300006f          	j	104f4 <func_A+0x15c>
   103c8:	fc042a23          	sw	zero,-44(s0)
   103cc:	10c0006f          	j	104d8 <func_A+0x140>
   103d0:	fdc42703          	lw	a4,-36(s0)
   103d4:	00070793          	mv	a5,a4
   103d8:	00379793          	slli	a5,a5,0x3
   103dc:	00e787b3          	add	a5,a5,a4
   103e0:	00279793          	slli	a5,a5,0x2
   103e4:	40e787b3          	sub	a5,a5,a4
   103e8:	00279793          	slli	a5,a5,0x2
   103ec:	00078713          	mv	a4,a5
   103f0:	fb843783          	ld	a5,-72(s0)
   103f4:	00e78733          	add	a4,a5,a4
   103f8:	fd842783          	lw	a5,-40(s0)
   103fc:	00279793          	slli	a5,a5,0x2
   10400:	00f707b3          	add	a5,a4,a5
   10404:	0007a483          	lw	s1,0(a5)
   10408:	fdc42703          	lw	a4,-36(s0)
   1040c:	00070793          	mv	a5,a4
   10410:	00379793          	slli	a5,a5,0x3
   10414:	00e787b3          	add	a5,a5,a4
   10418:	00279793          	slli	a5,a5,0x2
   1041c:	40e787b3          	sub	a5,a5,a4
   10420:	00279793          	slli	a5,a5,0x2
   10424:	00078713          	mv	a4,a5
   10428:	fc843783          	ld	a5,-56(s0)
   1042c:	00e78733          	add	a4,a5,a4
   10430:	fd442783          	lw	a5,-44(s0)
   10434:	00279793          	slli	a5,a5,0x2
   10438:	00f707b3          	add	a5,a4,a5
   1043c:	0007a683          	lw	a3,0(a5)
   10440:	fd442703          	lw	a4,-44(s0)
   10444:	00070793          	mv	a5,a4
   10448:	00379793          	slli	a5,a5,0x3
   1044c:	00e787b3          	add	a5,a5,a4
   10450:	00279793          	slli	a5,a5,0x2
   10454:	40e787b3          	sub	a5,a5,a4
   10458:	00279793          	slli	a5,a5,0x2
   1045c:	00078713          	mv	a4,a5
   10460:	fc043783          	ld	a5,-64(s0)
   10464:	00e78733          	add	a4,a5,a4
   10468:	fd842783          	lw	a5,-40(s0)
   1046c:	00279793          	slli	a5,a5,0x2
   10470:	00f707b3          	add	a5,a4,a5
   10474:	0007a783          	lw	a5,0(a5)
   10478:	00078593          	mv	a1,a5
   1047c:	00068513          	mv	a0,a3
   10480:	1f0000ef          	jal	10670 <__muldi3>
   10484:	00050793          	mv	a5,a0
   10488:	0007861b          	sext.w	a2,a5
   1048c:	fdc42703          	lw	a4,-36(s0)
   10490:	00070793          	mv	a5,a4
   10494:	00379793          	slli	a5,a5,0x3
   10498:	00e787b3          	add	a5,a5,a4
   1049c:	00279793          	slli	a5,a5,0x2
   104a0:	40e787b3          	sub	a5,a5,a4
   104a4:	00279793          	slli	a5,a5,0x2
   104a8:	00078713          	mv	a4,a5
   104ac:	fb843783          	ld	a5,-72(s0)
   104b0:	00e786b3          	add	a3,a5,a4
   104b4:	00c487bb          	addw	a5,s1,a2
   104b8:	0007871b          	sext.w	a4,a5
   104bc:	fd842783          	lw	a5,-40(s0)
   104c0:	00279793          	slli	a5,a5,0x2
   104c4:	00f687b3          	add	a5,a3,a5
   104c8:	00e7a023          	sw	a4,0(a5)
   104cc:	fd442783          	lw	a5,-44(s0)
   104d0:	0017879b          	addiw	a5,a5,1
   104d4:	fcf42a23          	sw	a5,-44(s0)
   104d8:	fd442783          	lw	a5,-44(s0)
   104dc:	0007871b          	sext.w	a4,a5
   104e0:	02200793          	li	a5,34
   104e4:	eee7d6e3          	bge	a5,a4,103d0 <func_A+0x38>
   104e8:	fd842783          	lw	a5,-40(s0)
   104ec:	0017879b          	addiw	a5,a5,1
   104f0:	fcf42c23          	sw	a5,-40(s0)
   104f4:	fd842783          	lw	a5,-40(s0)
   104f8:	0007871b          	sext.w	a4,a5
   104fc:	02200793          	li	a5,34
   10500:	ece7d4e3          	bge	a5,a4,103c8 <func_A+0x30>
   10504:	fdc42783          	lw	a5,-36(s0)
   10508:	0017879b          	addiw	a5,a5,1
   1050c:	fcf42e23          	sw	a5,-36(s0)
   10510:	fdc42783          	lw	a5,-36(s0)
   10514:	0007871b          	sext.w	a4,a5
   10518:	02200793          	li	a5,34
   1051c:	eae7d2e3          	bge	a5,a4,103c0 <func_A+0x28>
   10520:	00000013          	nop
   10524:	00000013          	nop
   10528:	04813083          	ld	ra,72(sp)
   1052c:	04013403          	ld	s0,64(sp)
   10530:	03813483          	ld	s1,56(sp)
   10534:	05010113          	addi	sp,sp,80
   10538:	00008067          	ret

000000000001053c <print_d>:
   1053c:	fe010113          	addi	sp,sp,-32
   10540:	00113c23          	sd	ra,24(sp)
   10544:	00813823          	sd	s0,16(sp)
   10548:	02010413          	addi	s0,sp,32
   1054c:	00050793          	mv	a5,a0
   10550:	fef42623          	sw	a5,-20(s0)
   10554:	00200893          	li	a7,2
   10558:	00000073          	ecall
   1055c:	00000013          	nop
   10560:	01813083          	ld	ra,24(sp)
   10564:	01013403          	ld	s0,16(sp)
   10568:	02010113          	addi	sp,sp,32
   1056c:	00008067          	ret

0000000000010570 <print_s>:
   10570:	fe010113          	addi	sp,sp,-32
   10574:	00113c23          	sd	ra,24(sp)
   10578:	00813823          	sd	s0,16(sp)
   1057c:	02010413          	addi	s0,sp,32
   10580:	fea43423          	sd	a0,-24(s0)
   10584:	00000893          	li	a7,0
   10588:	00000073          	ecall
   1058c:	00000013          	nop
   10590:	01813083          	ld	ra,24(sp)
   10594:	01013403          	ld	s0,16(sp)
   10598:	02010113          	addi	sp,sp,32
   1059c:	00008067          	ret

00000000000105a0 <print_c>:
   105a0:	fe010113          	addi	sp,sp,-32
   105a4:	00113c23          	sd	ra,24(sp)
   105a8:	00813823          	sd	s0,16(sp)
   105ac:	02010413          	addi	s0,sp,32
   105b0:	00050793          	mv	a5,a0
   105b4:	fef407a3          	sb	a5,-17(s0)
   105b8:	00100893          	li	a7,1
   105bc:	00000073          	ecall
   105c0:	00000013          	nop
   105c4:	01813083          	ld	ra,24(sp)
   105c8:	01013403          	ld	s0,16(sp)
   105cc:	02010113          	addi	sp,sp,32
   105d0:	00008067          	ret

00000000000105d4 <exit_proc>:
   105d4:	ff010113          	addi	sp,sp,-16
   105d8:	00113423          	sd	ra,8(sp)
   105dc:	00813023          	sd	s0,0(sp)
   105e0:	01010413          	addi	s0,sp,16
   105e4:	00300893          	li	a7,3
   105e8:	00000073          	ecall
   105ec:	00000013          	nop
   105f0:	00813083          	ld	ra,8(sp)
   105f4:	00013403          	ld	s0,0(sp)
   105f8:	01010113          	addi	sp,sp,16
   105fc:	00008067          	ret

0000000000010600 <read_char>:
   10600:	fe010113          	addi	sp,sp,-32
   10604:	00113c23          	sd	ra,24(sp)
   10608:	00813823          	sd	s0,16(sp)
   1060c:	02010413          	addi	s0,sp,32
   10610:	00400893          	li	a7,4
   10614:	00000073          	ecall
   10618:	00050793          	mv	a5,a0
   1061c:	fef407a3          	sb	a5,-17(s0)
   10620:	fef44783          	lbu	a5,-17(s0)
   10624:	00078513          	mv	a0,a5
   10628:	01813083          	ld	ra,24(sp)
   1062c:	01013403          	ld	s0,16(sp)
   10630:	02010113          	addi	sp,sp,32
   10634:	00008067          	ret

0000000000010638 <read_num>:
   10638:	fe010113          	addi	sp,sp,-32
   1063c:	00113c23          	sd	ra,24(sp)
   10640:	00813823          	sd	s0,16(sp)
   10644:	02010413          	addi	s0,sp,32
   10648:	00500893          	li	a7,5
   1064c:	00000073          	ecall
   10650:	00050793          	mv	a5,a0
   10654:	fef43423          	sd	a5,-24(s0)
   10658:	fe843783          	ld	a5,-24(s0)
   1065c:	00078513          	mv	a0,a5
   10660:	01813083          	ld	ra,24(sp)
   10664:	01013403          	ld	s0,16(sp)
   10668:	02010113          	addi	sp,sp,32
   1066c:	00008067          	ret

0000000000010670 <__muldi3>:
   10670:	00050613          	mv	a2,a0
   10674:	00000513          	li	a0,0
   10678:	0015f693          	andi	a3,a1,1
   1067c:	00068463          	beqz	a3,10684 <__muldi3+0x14>
   10680:	00c50533          	add	a0,a0,a2
   10684:	0015d593          	srli	a1,a1,0x1
   10688:	00161613          	slli	a2,a2,0x1
   1068c:	fe0596e3          	bnez	a1,10678 <__muldi3+0x8>
   10690:	00008067          	ret

0000000000010694 <__fp_lock>:
   10694:	00000513          	li	a0,0
   10698:	00008067          	ret

000000000001069c <stdio_exit_handler>:
   1069c:	00013637          	lui	a2,0x13
   106a0:	000125b7          	lui	a1,0x12
   106a4:	00013537          	lui	a0,0x13
   106a8:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   106ac:	e0858593          	addi	a1,a1,-504 # 11e08 <_fclose_r>
   106b0:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   106b4:	3440006f          	j	109f8 <_fwalk_sglue>

00000000000106b8 <cleanup_stdio>:
   106b8:	00853583          	ld	a1,8(a0)
   106bc:	ff010113          	addi	sp,sp,-16
   106c0:	00813023          	sd	s0,0(sp)
   106c4:	00113423          	sd	ra,8(sp)
   106c8:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   106cc:	00050413          	mv	s0,a0
   106d0:	00f58463          	beq	a1,a5,106d8 <cleanup_stdio+0x20>
   106d4:	734010ef          	jal	11e08 <_fclose_r>
   106d8:	01043583          	ld	a1,16(s0)
   106dc:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   106e0:	00f58663          	beq	a1,a5,106ec <cleanup_stdio+0x34>
   106e4:	00040513          	mv	a0,s0
   106e8:	720010ef          	jal	11e08 <_fclose_r>
   106ec:	01843583          	ld	a1,24(s0)
   106f0:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   106f4:	00f58c63          	beq	a1,a5,1070c <cleanup_stdio+0x54>
   106f8:	00040513          	mv	a0,s0
   106fc:	00013403          	ld	s0,0(sp)
   10700:	00813083          	ld	ra,8(sp)
   10704:	01010113          	addi	sp,sp,16
   10708:	7000106f          	j	11e08 <_fclose_r>
   1070c:	00813083          	ld	ra,8(sp)
   10710:	00013403          	ld	s0,0(sp)
   10714:	01010113          	addi	sp,sp,16
   10718:	00008067          	ret

000000000001071c <__fp_unlock>:
   1071c:	00000513          	li	a0,0
   10720:	00008067          	ret

0000000000010724 <global_stdio_init.part.0>:
   10724:	fd010113          	addi	sp,sp,-48
   10728:	02813023          	sd	s0,32(sp)
   1072c:	000107b7          	lui	a5,0x10
   10730:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   10734:	02113423          	sd	ra,40(sp)
   10738:	00913c23          	sd	s1,24(sp)
   1073c:	01213823          	sd	s2,16(sp)
   10740:	01313423          	sd	s3,8(sp)
   10744:	01413023          	sd	s4,0(sp)
   10748:	00400713          	li	a4,4
   1074c:	69c78793          	addi	a5,a5,1692 # 1069c <stdio_exit_handler>
   10750:	00800613          	li	a2,8
   10754:	00000593          	li	a1,0
   10758:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   1075c:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10760:	00e42823          	sw	a4,16(s0)
   10764:	00043023          	sd	zero,0(s0)
   10768:	00043423          	sd	zero,8(s0)
   1076c:	0a042623          	sw	zero,172(s0)
   10770:	00043c23          	sd	zero,24(s0)
   10774:	02042023          	sw	zero,32(s0)
   10778:	02042423          	sw	zero,40(s0)
   1077c:	7b8000ef          	jal	10f34 <memset>
   10780:	000107b7          	lui	a5,0x10
   10784:	00011a37          	lui	s4,0x11
   10788:	000119b7          	lui	s3,0x11
   1078c:	00011937          	lui	s2,0x11
   10790:	000114b7          	lui	s1,0x11
   10794:	ac8a0a13          	addi	s4,s4,-1336 # 10ac8 <__sread>
   10798:	b2c98993          	addi	s3,s3,-1236 # 10b2c <__swrite>
   1079c:	bb490913          	addi	s2,s2,-1100 # 10bb4 <__sseek>
   107a0:	c1848493          	addi	s1,s1,-1000 # 10c18 <__sclose>
   107a4:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   107a8:	00800613          	li	a2,8
   107ac:	00000593          	li	a1,0
   107b0:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   107b4:	0cf42023          	sw	a5,192(s0)
   107b8:	03443c23          	sd	s4,56(s0)
   107bc:	05343023          	sd	s3,64(s0)
   107c0:	05243423          	sd	s2,72(s0)
   107c4:	04943823          	sd	s1,80(s0)
   107c8:	02843823          	sd	s0,48(s0)
   107cc:	0a043823          	sd	zero,176(s0)
   107d0:	0a043c23          	sd	zero,184(s0)
   107d4:	14042e23          	sw	zero,348(s0)
   107d8:	0c043423          	sd	zero,200(s0)
   107dc:	0c042823          	sw	zero,208(s0)
   107e0:	0c042c23          	sw	zero,216(s0)
   107e4:	750000ef          	jal	10f34 <memset>
   107e8:	000207b7          	lui	a5,0x20
   107ec:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   107f0:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   107f4:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   107f8:	00800613          	li	a2,8
   107fc:	00000593          	li	a1,0
   10800:	0f443423          	sd	s4,232(s0)
   10804:	0f343823          	sd	s3,240(s0)
   10808:	0f243c23          	sd	s2,248(s0)
   1080c:	10943023          	sd	s1,256(s0)
   10810:	16f42823          	sw	a5,368(s0)
   10814:	16043023          	sd	zero,352(s0)
   10818:	16043423          	sd	zero,360(s0)
   1081c:	20042623          	sw	zero,524(s0)
   10820:	16043c23          	sd	zero,376(s0)
   10824:	18042023          	sw	zero,384(s0)
   10828:	18042423          	sw	zero,392(s0)
   1082c:	0ee43023          	sd	a4,224(s0)
   10830:	704000ef          	jal	10f34 <memset>
   10834:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10838:	19443c23          	sd	s4,408(s0)
   1083c:	1b343023          	sd	s3,416(s0)
   10840:	1b243423          	sd	s2,424(s0)
   10844:	1a943823          	sd	s1,432(s0)
   10848:	02813083          	ld	ra,40(sp)
   1084c:	18f43823          	sd	a5,400(s0)
   10850:	02013403          	ld	s0,32(sp)
   10854:	01813483          	ld	s1,24(sp)
   10858:	01013903          	ld	s2,16(sp)
   1085c:	00813983          	ld	s3,8(sp)
   10860:	00013a03          	ld	s4,0(sp)
   10864:	03010113          	addi	sp,sp,48
   10868:	00008067          	ret

000000000001086c <__sfp>:
   1086c:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10870:	fe010113          	addi	sp,sp,-32
   10874:	01213023          	sd	s2,0(sp)
   10878:	00113c23          	sd	ra,24(sp)
   1087c:	00813823          	sd	s0,16(sp)
   10880:	00913423          	sd	s1,8(sp)
   10884:	00050913          	mv	s2,a0
   10888:	0e078e63          	beqz	a5,10984 <__sfp+0x118>
   1088c:	000134b7          	lui	s1,0x13
   10890:	01848493          	addi	s1,s1,24 # 13018 <__sglue>
   10894:	0084a703          	lw	a4,8(s1)
   10898:	0104b403          	ld	s0,16(s1)
   1089c:	08e05c63          	blez	a4,10934 <__sfp+0xc8>
   108a0:	02071713          	slli	a4,a4,0x20
   108a4:	02075713          	srli	a4,a4,0x20
   108a8:	00171793          	slli	a5,a4,0x1
   108ac:	00e787b3          	add	a5,a5,a4
   108b0:	00279793          	slli	a5,a5,0x2
   108b4:	40e787b3          	sub	a5,a5,a4
   108b8:	00479793          	slli	a5,a5,0x4
   108bc:	00f407b3          	add	a5,s0,a5
   108c0:	00c0006f          	j	108cc <__sfp+0x60>
   108c4:	0b040413          	addi	s0,s0,176
   108c8:	06f40663          	beq	s0,a5,10934 <__sfp+0xc8>
   108cc:	01041703          	lh	a4,16(s0)
   108d0:	fe071ae3          	bnez	a4,108c4 <__sfp+0x58>
   108d4:	ffff07b7          	lui	a5,0xffff0
   108d8:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   108dc:	0a042623          	sw	zero,172(s0)
   108e0:	00043023          	sd	zero,0(s0)
   108e4:	00043423          	sd	zero,8(s0)
   108e8:	00043c23          	sd	zero,24(s0)
   108ec:	02042023          	sw	zero,32(s0)
   108f0:	02042423          	sw	zero,40(s0)
   108f4:	00f42823          	sw	a5,16(s0)
   108f8:	00800613          	li	a2,8
   108fc:	00000593          	li	a1,0
   10900:	0a440513          	addi	a0,s0,164
   10904:	630000ef          	jal	10f34 <memset>
   10908:	04043c23          	sd	zero,88(s0)
   1090c:	06042023          	sw	zero,96(s0)
   10910:	06043c23          	sd	zero,120(s0)
   10914:	08042023          	sw	zero,128(s0)
   10918:	01813083          	ld	ra,24(sp)
   1091c:	00040513          	mv	a0,s0
   10920:	01013403          	ld	s0,16(sp)
   10924:	00813483          	ld	s1,8(sp)
   10928:	00013903          	ld	s2,0(sp)
   1092c:	02010113          	addi	sp,sp,32
   10930:	00008067          	ret
   10934:	0004b403          	ld	s0,0(s1)
   10938:	00040663          	beqz	s0,10944 <__sfp+0xd8>
   1093c:	00040493          	mv	s1,s0
   10940:	f55ff06f          	j	10894 <__sfp+0x28>
   10944:	2d800593          	li	a1,728
   10948:	00090513          	mv	a0,s2
   1094c:	455000ef          	jal	115a0 <_malloc_r>
   10950:	00050413          	mv	s0,a0
   10954:	02050c63          	beqz	a0,1098c <__sfp+0x120>
   10958:	00400793          	li	a5,4
   1095c:	01850513          	addi	a0,a0,24
   10960:	00043023          	sd	zero,0(s0)
   10964:	00f42423          	sw	a5,8(s0)
   10968:	00a43823          	sd	a0,16(s0)
   1096c:	2c000613          	li	a2,704
   10970:	00000593          	li	a1,0
   10974:	5c0000ef          	jal	10f34 <memset>
   10978:	0084b023          	sd	s0,0(s1)
   1097c:	00040493          	mv	s1,s0
   10980:	f15ff06f          	j	10894 <__sfp+0x28>
   10984:	da1ff0ef          	jal	10724 <global_stdio_init.part.0>
   10988:	f05ff06f          	j	1088c <__sfp+0x20>
   1098c:	0004b023          	sd	zero,0(s1)
   10990:	00c00793          	li	a5,12
   10994:	00f92023          	sw	a5,0(s2)
   10998:	f81ff06f          	j	10918 <__sfp+0xac>

000000000001099c <__sinit>:
   1099c:	04853783          	ld	a5,72(a0)
   109a0:	00078463          	beqz	a5,109a8 <__sinit+0xc>
   109a4:	00008067          	ret
   109a8:	000107b7          	lui	a5,0x10
   109ac:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   109b0:	6b878793          	addi	a5,a5,1720 # 106b8 <cleanup_stdio>
   109b4:	04f53423          	sd	a5,72(a0)
   109b8:	fe0716e3          	bnez	a4,109a4 <__sinit+0x8>
   109bc:	d69ff06f          	j	10724 <global_stdio_init.part.0>

00000000000109c0 <__sfp_lock_acquire>:
   109c0:	00008067          	ret

00000000000109c4 <__sfp_lock_release>:
   109c4:	00008067          	ret

00000000000109c8 <__fp_lock_all>:
   109c8:	00013637          	lui	a2,0x13
   109cc:	000105b7          	lui	a1,0x10
   109d0:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   109d4:	69458593          	addi	a1,a1,1684 # 10694 <__fp_lock>
   109d8:	00000513          	li	a0,0
   109dc:	01c0006f          	j	109f8 <_fwalk_sglue>

00000000000109e0 <__fp_unlock_all>:
   109e0:	00013637          	lui	a2,0x13
   109e4:	000105b7          	lui	a1,0x10
   109e8:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   109ec:	71c58593          	addi	a1,a1,1820 # 1071c <__fp_unlock>
   109f0:	00000513          	li	a0,0
   109f4:	0040006f          	j	109f8 <_fwalk_sglue>

00000000000109f8 <_fwalk_sglue>:
   109f8:	fb010113          	addi	sp,sp,-80
   109fc:	03213823          	sd	s2,48(sp)
   10a00:	03313423          	sd	s3,40(sp)
   10a04:	03413023          	sd	s4,32(sp)
   10a08:	01513c23          	sd	s5,24(sp)
   10a0c:	01613823          	sd	s6,16(sp)
   10a10:	01713423          	sd	s7,8(sp)
   10a14:	04113423          	sd	ra,72(sp)
   10a18:	04813023          	sd	s0,64(sp)
   10a1c:	02913c23          	sd	s1,56(sp)
   10a20:	00050993          	mv	s3,a0
   10a24:	00058a93          	mv	s5,a1
   10a28:	00060913          	mv	s2,a2
   10a2c:	00000b13          	li	s6,0
   10a30:	00100b93          	li	s7,1
   10a34:	fff00a13          	li	s4,-1
   10a38:	00892783          	lw	a5,8(s2)
   10a3c:	01093403          	ld	s0,16(s2)
   10a40:	04f05863          	blez	a5,10a90 <_fwalk_sglue+0x98>
   10a44:	02079793          	slli	a5,a5,0x20
   10a48:	0207d793          	srli	a5,a5,0x20
   10a4c:	00179493          	slli	s1,a5,0x1
   10a50:	00f484b3          	add	s1,s1,a5
   10a54:	00249493          	slli	s1,s1,0x2
   10a58:	40f484b3          	sub	s1,s1,a5
   10a5c:	00449493          	slli	s1,s1,0x4
   10a60:	009404b3          	add	s1,s0,s1
   10a64:	01045783          	lhu	a5,16(s0)
   10a68:	02fbf063          	bgeu	s7,a5,10a88 <_fwalk_sglue+0x90>
   10a6c:	01241783          	lh	a5,18(s0)
   10a70:	00040593          	mv	a1,s0
   10a74:	00098513          	mv	a0,s3
   10a78:	01478863          	beq	a5,s4,10a88 <_fwalk_sglue+0x90>
   10a7c:	000a80e7          	jalr	s5
   10a80:	01656b33          	or	s6,a0,s6
   10a84:	000b0b1b          	sext.w	s6,s6
   10a88:	0b040413          	addi	s0,s0,176
   10a8c:	fc941ce3          	bne	s0,s1,10a64 <_fwalk_sglue+0x6c>
   10a90:	00093903          	ld	s2,0(s2)
   10a94:	fa0912e3          	bnez	s2,10a38 <_fwalk_sglue+0x40>
   10a98:	04813083          	ld	ra,72(sp)
   10a9c:	04013403          	ld	s0,64(sp)
   10aa0:	03813483          	ld	s1,56(sp)
   10aa4:	03013903          	ld	s2,48(sp)
   10aa8:	02813983          	ld	s3,40(sp)
   10aac:	02013a03          	ld	s4,32(sp)
   10ab0:	01813a83          	ld	s5,24(sp)
   10ab4:	00813b83          	ld	s7,8(sp)
   10ab8:	000b0513          	mv	a0,s6
   10abc:	01013b03          	ld	s6,16(sp)
   10ac0:	05010113          	addi	sp,sp,80
   10ac4:	00008067          	ret

0000000000010ac8 <__sread>:
   10ac8:	ff010113          	addi	sp,sp,-16
   10acc:	00813023          	sd	s0,0(sp)
   10ad0:	00058413          	mv	s0,a1
   10ad4:	01259583          	lh	a1,18(a1)
   10ad8:	00113423          	sd	ra,8(sp)
   10adc:	2ec000ef          	jal	10dc8 <_read_r>
   10ae0:	02054063          	bltz	a0,10b00 <__sread+0x38>
   10ae4:	09043783          	ld	a5,144(s0)
   10ae8:	00813083          	ld	ra,8(sp)
   10aec:	00a787b3          	add	a5,a5,a0
   10af0:	08f43823          	sd	a5,144(s0)
   10af4:	00013403          	ld	s0,0(sp)
   10af8:	01010113          	addi	sp,sp,16
   10afc:	00008067          	ret
   10b00:	01045783          	lhu	a5,16(s0)
   10b04:	fffff737          	lui	a4,0xfffff
   10b08:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10b0c:	00e7f7b3          	and	a5,a5,a4
   10b10:	00813083          	ld	ra,8(sp)
   10b14:	00f41823          	sh	a5,16(s0)
   10b18:	00013403          	ld	s0,0(sp)
   10b1c:	01010113          	addi	sp,sp,16
   10b20:	00008067          	ret

0000000000010b24 <__seofread>:
   10b24:	00000513          	li	a0,0
   10b28:	00008067          	ret

0000000000010b2c <__swrite>:
   10b2c:	01059783          	lh	a5,16(a1)
   10b30:	fd010113          	addi	sp,sp,-48
   10b34:	02813023          	sd	s0,32(sp)
   10b38:	00913c23          	sd	s1,24(sp)
   10b3c:	01213823          	sd	s2,16(sp)
   10b40:	01313423          	sd	s3,8(sp)
   10b44:	02113423          	sd	ra,40(sp)
   10b48:	1007f713          	andi	a4,a5,256
   10b4c:	00058413          	mv	s0,a1
   10b50:	00060913          	mv	s2,a2
   10b54:	00068993          	mv	s3,a3
   10b58:	00050493          	mv	s1,a0
   10b5c:	04071063          	bnez	a4,10b9c <__swrite+0x70>
   10b60:	fffff737          	lui	a4,0xfffff
   10b64:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10b68:	00e7f7b3          	and	a5,a5,a4
   10b6c:	01241583          	lh	a1,18(s0)
   10b70:	00f41823          	sh	a5,16(s0)
   10b74:	02013403          	ld	s0,32(sp)
   10b78:	02813083          	ld	ra,40(sp)
   10b7c:	00098693          	mv	a3,s3
   10b80:	00090613          	mv	a2,s2
   10b84:	00813983          	ld	s3,8(sp)
   10b88:	01013903          	ld	s2,16(sp)
   10b8c:	00048513          	mv	a0,s1
   10b90:	01813483          	ld	s1,24(sp)
   10b94:	03010113          	addi	sp,sp,48
   10b98:	2980006f          	j	10e30 <_write_r>
   10b9c:	01259583          	lh	a1,18(a1)
   10ba0:	00200693          	li	a3,2
   10ba4:	00000613          	li	a2,0
   10ba8:	1b8000ef          	jal	10d60 <_lseek_r>
   10bac:	01041783          	lh	a5,16(s0)
   10bb0:	fb1ff06f          	j	10b60 <__swrite+0x34>

0000000000010bb4 <__sseek>:
   10bb4:	ff010113          	addi	sp,sp,-16
   10bb8:	00813023          	sd	s0,0(sp)
   10bbc:	00058413          	mv	s0,a1
   10bc0:	01259583          	lh	a1,18(a1)
   10bc4:	00113423          	sd	ra,8(sp)
   10bc8:	198000ef          	jal	10d60 <_lseek_r>
   10bcc:	fff00713          	li	a4,-1
   10bd0:	01041783          	lh	a5,16(s0)
   10bd4:	02e50263          	beq	a0,a4,10bf8 <__sseek+0x44>
   10bd8:	00001737          	lui	a4,0x1
   10bdc:	00e7e7b3          	or	a5,a5,a4
   10be0:	00813083          	ld	ra,8(sp)
   10be4:	08a43823          	sd	a0,144(s0)
   10be8:	00f41823          	sh	a5,16(s0)
   10bec:	00013403          	ld	s0,0(sp)
   10bf0:	01010113          	addi	sp,sp,16
   10bf4:	00008067          	ret
   10bf8:	fffff737          	lui	a4,0xfffff
   10bfc:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10c00:	00e7f7b3          	and	a5,a5,a4
   10c04:	00813083          	ld	ra,8(sp)
   10c08:	00f41823          	sh	a5,16(s0)
   10c0c:	00013403          	ld	s0,0(sp)
   10c10:	01010113          	addi	sp,sp,16
   10c14:	00008067          	ret

0000000000010c18 <__sclose>:
   10c18:	01259583          	lh	a1,18(a1)
   10c1c:	0040006f          	j	10c20 <_close_r>

0000000000010c20 <_close_r>:
   10c20:	fe010113          	addi	sp,sp,-32
   10c24:	00813823          	sd	s0,16(sp)
   10c28:	00913423          	sd	s1,8(sp)
   10c2c:	00050413          	mv	s0,a0
   10c30:	00058513          	mv	a0,a1
   10c34:	00113c23          	sd	ra,24(sp)
   10c38:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c3c:	774010ef          	jal	123b0 <_close>
   10c40:	fff00793          	li	a5,-1
   10c44:	00f50c63          	beq	a0,a5,10c5c <_close_r+0x3c>
   10c48:	01813083          	ld	ra,24(sp)
   10c4c:	01013403          	ld	s0,16(sp)
   10c50:	00813483          	ld	s1,8(sp)
   10c54:	02010113          	addi	sp,sp,32
   10c58:	00008067          	ret
   10c5c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c60:	fe0784e3          	beqz	a5,10c48 <_close_r+0x28>
   10c64:	01813083          	ld	ra,24(sp)
   10c68:	00f42023          	sw	a5,0(s0)
   10c6c:	01013403          	ld	s0,16(sp)
   10c70:	00813483          	ld	s1,8(sp)
   10c74:	02010113          	addi	sp,sp,32
   10c78:	00008067          	ret

0000000000010c7c <_reclaim_reent>:
   10c7c:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10c80:	0ca78e63          	beq	a5,a0,10d5c <_reclaim_reent+0xe0>
   10c84:	06853583          	ld	a1,104(a0)
   10c88:	fd010113          	addi	sp,sp,-48
   10c8c:	00913c23          	sd	s1,24(sp)
   10c90:	02113423          	sd	ra,40(sp)
   10c94:	02813023          	sd	s0,32(sp)
   10c98:	00050493          	mv	s1,a0
   10c9c:	04058863          	beqz	a1,10cec <_reclaim_reent+0x70>
   10ca0:	01213823          	sd	s2,16(sp)
   10ca4:	01313423          	sd	s3,8(sp)
   10ca8:	00000913          	li	s2,0
   10cac:	20000993          	li	s3,512
   10cb0:	012587b3          	add	a5,a1,s2
   10cb4:	0007b403          	ld	s0,0(a5)
   10cb8:	00040e63          	beqz	s0,10cd4 <_reclaim_reent+0x58>
   10cbc:	00040593          	mv	a1,s0
   10cc0:	00043403          	ld	s0,0(s0)
   10cc4:	00048513          	mv	a0,s1
   10cc8:	5c8000ef          	jal	11290 <_free_r>
   10ccc:	fe0418e3          	bnez	s0,10cbc <_reclaim_reent+0x40>
   10cd0:	0684b583          	ld	a1,104(s1)
   10cd4:	00890913          	addi	s2,s2,8
   10cd8:	fd391ce3          	bne	s2,s3,10cb0 <_reclaim_reent+0x34>
   10cdc:	00048513          	mv	a0,s1
   10ce0:	5b0000ef          	jal	11290 <_free_r>
   10ce4:	01013903          	ld	s2,16(sp)
   10ce8:	00813983          	ld	s3,8(sp)
   10cec:	0504b583          	ld	a1,80(s1)
   10cf0:	00058663          	beqz	a1,10cfc <_reclaim_reent+0x80>
   10cf4:	00048513          	mv	a0,s1
   10cf8:	598000ef          	jal	11290 <_free_r>
   10cfc:	0604b403          	ld	s0,96(s1)
   10d00:	00040c63          	beqz	s0,10d18 <_reclaim_reent+0x9c>
   10d04:	00040593          	mv	a1,s0
   10d08:	00043403          	ld	s0,0(s0)
   10d0c:	00048513          	mv	a0,s1
   10d10:	580000ef          	jal	11290 <_free_r>
   10d14:	fe0418e3          	bnez	s0,10d04 <_reclaim_reent+0x88>
   10d18:	0784b583          	ld	a1,120(s1)
   10d1c:	00058663          	beqz	a1,10d28 <_reclaim_reent+0xac>
   10d20:	00048513          	mv	a0,s1
   10d24:	56c000ef          	jal	11290 <_free_r>
   10d28:	0484b783          	ld	a5,72(s1)
   10d2c:	00078e63          	beqz	a5,10d48 <_reclaim_reent+0xcc>
   10d30:	02013403          	ld	s0,32(sp)
   10d34:	02813083          	ld	ra,40(sp)
   10d38:	00048513          	mv	a0,s1
   10d3c:	01813483          	ld	s1,24(sp)
   10d40:	03010113          	addi	sp,sp,48
   10d44:	00078067          	jr	a5
   10d48:	02813083          	ld	ra,40(sp)
   10d4c:	02013403          	ld	s0,32(sp)
   10d50:	01813483          	ld	s1,24(sp)
   10d54:	03010113          	addi	sp,sp,48
   10d58:	00008067          	ret
   10d5c:	00008067          	ret

0000000000010d60 <_lseek_r>:
   10d60:	fe010113          	addi	sp,sp,-32
   10d64:	00058713          	mv	a4,a1
   10d68:	00813823          	sd	s0,16(sp)
   10d6c:	00913423          	sd	s1,8(sp)
   10d70:	00060593          	mv	a1,a2
   10d74:	00050413          	mv	s0,a0
   10d78:	00068613          	mv	a2,a3
   10d7c:	00070513          	mv	a0,a4
   10d80:	00113c23          	sd	ra,24(sp)
   10d84:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10d88:	69c010ef          	jal	12424 <_lseek>
   10d8c:	fff00793          	li	a5,-1
   10d90:	00f50c63          	beq	a0,a5,10da8 <_lseek_r+0x48>
   10d94:	01813083          	ld	ra,24(sp)
   10d98:	01013403          	ld	s0,16(sp)
   10d9c:	00813483          	ld	s1,8(sp)
   10da0:	02010113          	addi	sp,sp,32
   10da4:	00008067          	ret
   10da8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10dac:	fe0784e3          	beqz	a5,10d94 <_lseek_r+0x34>
   10db0:	01813083          	ld	ra,24(sp)
   10db4:	00f42023          	sw	a5,0(s0)
   10db8:	01013403          	ld	s0,16(sp)
   10dbc:	00813483          	ld	s1,8(sp)
   10dc0:	02010113          	addi	sp,sp,32
   10dc4:	00008067          	ret

0000000000010dc8 <_read_r>:
   10dc8:	fe010113          	addi	sp,sp,-32
   10dcc:	00058713          	mv	a4,a1
   10dd0:	00813823          	sd	s0,16(sp)
   10dd4:	00913423          	sd	s1,8(sp)
   10dd8:	00060593          	mv	a1,a2
   10ddc:	00050413          	mv	s0,a0
   10de0:	00068613          	mv	a2,a3
   10de4:	00070513          	mv	a0,a4
   10de8:	00113c23          	sd	ra,24(sp)
   10dec:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10df0:	678010ef          	jal	12468 <_read>
   10df4:	fff00793          	li	a5,-1
   10df8:	00f50c63          	beq	a0,a5,10e10 <_read_r+0x48>
   10dfc:	01813083          	ld	ra,24(sp)
   10e00:	01013403          	ld	s0,16(sp)
   10e04:	00813483          	ld	s1,8(sp)
   10e08:	02010113          	addi	sp,sp,32
   10e0c:	00008067          	ret
   10e10:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10e14:	fe0784e3          	beqz	a5,10dfc <_read_r+0x34>
   10e18:	01813083          	ld	ra,24(sp)
   10e1c:	00f42023          	sw	a5,0(s0)
   10e20:	01013403          	ld	s0,16(sp)
   10e24:	00813483          	ld	s1,8(sp)
   10e28:	02010113          	addi	sp,sp,32
   10e2c:	00008067          	ret

0000000000010e30 <_write_r>:
   10e30:	fe010113          	addi	sp,sp,-32
   10e34:	00058713          	mv	a4,a1
   10e38:	00813823          	sd	s0,16(sp)
   10e3c:	00913423          	sd	s1,8(sp)
   10e40:	00060593          	mv	a1,a2
   10e44:	00050413          	mv	s0,a0
   10e48:	00068613          	mv	a2,a3
   10e4c:	00070513          	mv	a0,a4
   10e50:	00113c23          	sd	ra,24(sp)
   10e54:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10e58:	6cc010ef          	jal	12524 <_write>
   10e5c:	fff00793          	li	a5,-1
   10e60:	00f50c63          	beq	a0,a5,10e78 <_write_r+0x48>
   10e64:	01813083          	ld	ra,24(sp)
   10e68:	01013403          	ld	s0,16(sp)
   10e6c:	00813483          	ld	s1,8(sp)
   10e70:	02010113          	addi	sp,sp,32
   10e74:	00008067          	ret
   10e78:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10e7c:	fe0784e3          	beqz	a5,10e64 <_write_r+0x34>
   10e80:	01813083          	ld	ra,24(sp)
   10e84:	00f42023          	sw	a5,0(s0)
   10e88:	01013403          	ld	s0,16(sp)
   10e8c:	00813483          	ld	s1,8(sp)
   10e90:	02010113          	addi	sp,sp,32
   10e94:	00008067          	ret

0000000000010e98 <__libc_init_array>:
   10e98:	fe010113          	addi	sp,sp,-32
   10e9c:	00813823          	sd	s0,16(sp)
   10ea0:	000137b7          	lui	a5,0x13
   10ea4:	00013437          	lui	s0,0x13
   10ea8:	01213023          	sd	s2,0(sp)
   10eac:	00078793          	mv	a5,a5
   10eb0:	00040713          	mv	a4,s0
   10eb4:	00113c23          	sd	ra,24(sp)
   10eb8:	00913423          	sd	s1,8(sp)
   10ebc:	40e78933          	sub	s2,a5,a4
   10ec0:	02e78263          	beq	a5,a4,10ee4 <__libc_init_array+0x4c>
   10ec4:	40395913          	srai	s2,s2,0x3
   10ec8:	00040413          	mv	s0,s0
   10ecc:	00000493          	li	s1,0
   10ed0:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10ed4:	00148493          	addi	s1,s1,1
   10ed8:	00840413          	addi	s0,s0,8
   10edc:	000780e7          	jalr	a5 # 13000 <__init_array_start>
   10ee0:	ff24e8e3          	bltu	s1,s2,10ed0 <__libc_init_array+0x38>
   10ee4:	000137b7          	lui	a5,0x13
   10ee8:	00013437          	lui	s0,0x13
   10eec:	01078793          	addi	a5,a5,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10ef0:	00040713          	mv	a4,s0
   10ef4:	40e78933          	sub	s2,a5,a4
   10ef8:	40395913          	srai	s2,s2,0x3
   10efc:	02e78063          	beq	a5,a4,10f1c <__libc_init_array+0x84>
   10f00:	00040413          	mv	s0,s0
   10f04:	00000493          	li	s1,0
   10f08:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10f0c:	00148493          	addi	s1,s1,1
   10f10:	00840413          	addi	s0,s0,8
   10f14:	000780e7          	jalr	a5
   10f18:	ff24e8e3          	bltu	s1,s2,10f08 <__libc_init_array+0x70>
   10f1c:	01813083          	ld	ra,24(sp)
   10f20:	01013403          	ld	s0,16(sp)
   10f24:	00813483          	ld	s1,8(sp)
   10f28:	00013903          	ld	s2,0(sp)
   10f2c:	02010113          	addi	sp,sp,32
   10f30:	00008067          	ret

0000000000010f34 <memset>:
   10f34:	00f00313          	li	t1,15
   10f38:	00050713          	mv	a4,a0
   10f3c:	02c37a63          	bgeu	t1,a2,10f70 <memset+0x3c>
   10f40:	00f77793          	andi	a5,a4,15
   10f44:	0a079063          	bnez	a5,10fe4 <memset+0xb0>
   10f48:	06059e63          	bnez	a1,10fc4 <memset+0x90>
   10f4c:	ff067693          	andi	a3,a2,-16
   10f50:	00f67613          	andi	a2,a2,15
   10f54:	00e686b3          	add	a3,a3,a4
   10f58:	00b73023          	sd	a1,0(a4)
   10f5c:	00b73423          	sd	a1,8(a4)
   10f60:	01070713          	addi	a4,a4,16
   10f64:	fed76ae3          	bltu	a4,a3,10f58 <memset+0x24>
   10f68:	00061463          	bnez	a2,10f70 <memset+0x3c>
   10f6c:	00008067          	ret
   10f70:	40c306b3          	sub	a3,t1,a2
   10f74:	00269693          	slli	a3,a3,0x2
   10f78:	00000297          	auipc	t0,0x0
   10f7c:	005686b3          	add	a3,a3,t0
   10f80:	00c68067          	jr	12(a3)
   10f84:	00b70723          	sb	a1,14(a4)
   10f88:	00b706a3          	sb	a1,13(a4)
   10f8c:	00b70623          	sb	a1,12(a4)
   10f90:	00b705a3          	sb	a1,11(a4)
   10f94:	00b70523          	sb	a1,10(a4)
   10f98:	00b704a3          	sb	a1,9(a4)
   10f9c:	00b70423          	sb	a1,8(a4)
   10fa0:	00b703a3          	sb	a1,7(a4)
   10fa4:	00b70323          	sb	a1,6(a4)
   10fa8:	00b702a3          	sb	a1,5(a4)
   10fac:	00b70223          	sb	a1,4(a4)
   10fb0:	00b701a3          	sb	a1,3(a4)
   10fb4:	00b70123          	sb	a1,2(a4)
   10fb8:	00b700a3          	sb	a1,1(a4)
   10fbc:	00b70023          	sb	a1,0(a4)
   10fc0:	00008067          	ret
   10fc4:	0ff5f593          	zext.b	a1,a1
   10fc8:	00859693          	slli	a3,a1,0x8
   10fcc:	00d5e5b3          	or	a1,a1,a3
   10fd0:	01059693          	slli	a3,a1,0x10
   10fd4:	00d5e5b3          	or	a1,a1,a3
   10fd8:	02059693          	slli	a3,a1,0x20
   10fdc:	00d5e5b3          	or	a1,a1,a3
   10fe0:	f6dff06f          	j	10f4c <memset+0x18>
   10fe4:	00279693          	slli	a3,a5,0x2
   10fe8:	00000297          	auipc	t0,0x0
   10fec:	005686b3          	add	a3,a3,t0
   10ff0:	00008293          	mv	t0,ra
   10ff4:	f98680e7          	jalr	-104(a3)
   10ff8:	00028093          	mv	ra,t0
   10ffc:	ff078793          	addi	a5,a5,-16
   11000:	40f70733          	sub	a4,a4,a5
   11004:	00f60633          	add	a2,a2,a5
   11008:	f6c374e3          	bgeu	t1,a2,10f70 <memset+0x3c>
   1100c:	f3dff06f          	j	10f48 <memset+0x14>

0000000000011010 <__call_exitprocs>:
   11010:	fb010113          	addi	sp,sp,-80
   11014:	03413023          	sd	s4,32(sp)
   11018:	03213823          	sd	s2,48(sp)
   1101c:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   11020:	04113423          	sd	ra,72(sp)
   11024:	06090c63          	beqz	s2,1109c <__call_exitprocs+0x8c>
   11028:	03313423          	sd	s3,40(sp)
   1102c:	01513c23          	sd	s5,24(sp)
   11030:	01613823          	sd	s6,16(sp)
   11034:	01713423          	sd	s7,8(sp)
   11038:	04813023          	sd	s0,64(sp)
   1103c:	02913c23          	sd	s1,56(sp)
   11040:	01813023          	sd	s8,0(sp)
   11044:	00050b13          	mv	s6,a0
   11048:	00058b93          	mv	s7,a1
   1104c:	fff00993          	li	s3,-1
   11050:	00100a93          	li	s5,1
   11054:	00892483          	lw	s1,8(s2)
   11058:	fff4841b          	addiw	s0,s1,-1
   1105c:	02044263          	bltz	s0,11080 <__call_exitprocs+0x70>
   11060:	00349493          	slli	s1,s1,0x3
   11064:	009904b3          	add	s1,s2,s1
   11068:	040b8463          	beqz	s7,110b0 <__call_exitprocs+0xa0>
   1106c:	2084b783          	ld	a5,520(s1)
   11070:	05778063          	beq	a5,s7,110b0 <__call_exitprocs+0xa0>
   11074:	fff4041b          	addiw	s0,s0,-1
   11078:	ff848493          	addi	s1,s1,-8
   1107c:	ff3418e3          	bne	s0,s3,1106c <__call_exitprocs+0x5c>
   11080:	04013403          	ld	s0,64(sp)
   11084:	03813483          	ld	s1,56(sp)
   11088:	02813983          	ld	s3,40(sp)
   1108c:	01813a83          	ld	s5,24(sp)
   11090:	01013b03          	ld	s6,16(sp)
   11094:	00813b83          	ld	s7,8(sp)
   11098:	00013c03          	ld	s8,0(sp)
   1109c:	04813083          	ld	ra,72(sp)
   110a0:	03013903          	ld	s2,48(sp)
   110a4:	02013a03          	ld	s4,32(sp)
   110a8:	05010113          	addi	sp,sp,80
   110ac:	00008067          	ret
   110b0:	00892783          	lw	a5,8(s2)
   110b4:	0084b683          	ld	a3,8(s1)
   110b8:	fff7879b          	addiw	a5,a5,-1
   110bc:	06878a63          	beq	a5,s0,11130 <__call_exitprocs+0x120>
   110c0:	0004b423          	sd	zero,8(s1)
   110c4:	02068663          	beqz	a3,110f0 <__call_exitprocs+0xe0>
   110c8:	31092783          	lw	a5,784(s2)
   110cc:	008a973b          	sllw	a4,s5,s0
   110d0:	00892c03          	lw	s8,8(s2)
   110d4:	00e7f7b3          	and	a5,a5,a4
   110d8:	02079463          	bnez	a5,11100 <__call_exitprocs+0xf0>
   110dc:	000680e7          	jalr	a3
   110e0:	00892703          	lw	a4,8(s2)
   110e4:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   110e8:	03871e63          	bne	a4,s8,11124 <__call_exitprocs+0x114>
   110ec:	03279c63          	bne	a5,s2,11124 <__call_exitprocs+0x114>
   110f0:	fff4041b          	addiw	s0,s0,-1
   110f4:	ff848493          	addi	s1,s1,-8
   110f8:	f73418e3          	bne	s0,s3,11068 <__call_exitprocs+0x58>
   110fc:	f85ff06f          	j	11080 <__call_exitprocs+0x70>
   11100:	31492783          	lw	a5,788(s2)
   11104:	1084b583          	ld	a1,264(s1)
   11108:	00f77733          	and	a4,a4,a5
   1110c:	02071663          	bnez	a4,11138 <__call_exitprocs+0x128>
   11110:	000b0513          	mv	a0,s6
   11114:	000680e7          	jalr	a3
   11118:	00892703          	lw	a4,8(s2)
   1111c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11120:	fd8706e3          	beq	a4,s8,110ec <__call_exitprocs+0xdc>
   11124:	f4078ee3          	beqz	a5,11080 <__call_exitprocs+0x70>
   11128:	00078913          	mv	s2,a5
   1112c:	f29ff06f          	j	11054 <__call_exitprocs+0x44>
   11130:	00892423          	sw	s0,8(s2)
   11134:	f91ff06f          	j	110c4 <__call_exitprocs+0xb4>
   11138:	00058513          	mv	a0,a1
   1113c:	000680e7          	jalr	a3
   11140:	fa1ff06f          	j	110e0 <__call_exitprocs+0xd0>

0000000000011144 <atexit>:
   11144:	00050593          	mv	a1,a0
   11148:	00000693          	li	a3,0
   1114c:	00000613          	li	a2,0
   11150:	00000513          	li	a0,0
   11154:	1bc0106f          	j	12310 <__register_exitproc>

0000000000011158 <_malloc_trim_r>:
   11158:	fd010113          	addi	sp,sp,-48
   1115c:	01313423          	sd	s3,8(sp)
   11160:	000139b7          	lui	s3,0x13
   11164:	02813023          	sd	s0,32(sp)
   11168:	00913c23          	sd	s1,24(sp)
   1116c:	01213823          	sd	s2,16(sp)
   11170:	01413023          	sd	s4,0(sp)
   11174:	02113423          	sd	ra,40(sp)
   11178:	00058a13          	mv	s4,a1
   1117c:	00050913          	mv	s2,a0
   11180:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   11184:	47d000ef          	jal	11e00 <__malloc_lock>
   11188:	0109b783          	ld	a5,16(s3)
   1118c:	00001437          	lui	s0,0x1
   11190:	fdf40413          	addi	s0,s0,-33 # fdf <exit-0xf141>
   11194:	0087b483          	ld	s1,8(a5)
   11198:	000017b7          	lui	a5,0x1
   1119c:	ffc4f493          	andi	s1,s1,-4
   111a0:	00848433          	add	s0,s1,s0
   111a4:	41440433          	sub	s0,s0,s4
   111a8:	00c45413          	srli	s0,s0,0xc
   111ac:	fff40413          	addi	s0,s0,-1
   111b0:	00c41413          	slli	s0,s0,0xc
   111b4:	00f44e63          	blt	s0,a5,111d0 <_malloc_trim_r+0x78>
   111b8:	00000593          	li	a1,0
   111bc:	00090513          	mv	a0,s2
   111c0:	098010ef          	jal	12258 <_sbrk_r>
   111c4:	0109b783          	ld	a5,16(s3)
   111c8:	009787b3          	add	a5,a5,s1
   111cc:	02f50863          	beq	a0,a5,111fc <_malloc_trim_r+0xa4>
   111d0:	00090513          	mv	a0,s2
   111d4:	431000ef          	jal	11e04 <__malloc_unlock>
   111d8:	02813083          	ld	ra,40(sp)
   111dc:	02013403          	ld	s0,32(sp)
   111e0:	01813483          	ld	s1,24(sp)
   111e4:	01013903          	ld	s2,16(sp)
   111e8:	00813983          	ld	s3,8(sp)
   111ec:	00013a03          	ld	s4,0(sp)
   111f0:	00000513          	li	a0,0
   111f4:	03010113          	addi	sp,sp,48
   111f8:	00008067          	ret
   111fc:	408005b3          	neg	a1,s0
   11200:	00090513          	mv	a0,s2
   11204:	054010ef          	jal	12258 <_sbrk_r>
   11208:	fff00793          	li	a5,-1
   1120c:	04f50863          	beq	a0,a5,1125c <_malloc_trim_r+0x104>
   11210:	42018793          	addi	a5,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11214:	0109b683          	ld	a3,16(s3)
   11218:	0007a703          	lw	a4,0(a5) # 1000 <exit-0xf120>
   1121c:	408484b3          	sub	s1,s1,s0
   11220:	0014e493          	ori	s1,s1,1
   11224:	00090513          	mv	a0,s2
   11228:	4087073b          	subw	a4,a4,s0
   1122c:	0096b423          	sd	s1,8(a3)
   11230:	00e7a023          	sw	a4,0(a5)
   11234:	3d1000ef          	jal	11e04 <__malloc_unlock>
   11238:	02813083          	ld	ra,40(sp)
   1123c:	02013403          	ld	s0,32(sp)
   11240:	01813483          	ld	s1,24(sp)
   11244:	01013903          	ld	s2,16(sp)
   11248:	00813983          	ld	s3,8(sp)
   1124c:	00013a03          	ld	s4,0(sp)
   11250:	00100513          	li	a0,1
   11254:	03010113          	addi	sp,sp,48
   11258:	00008067          	ret
   1125c:	00000593          	li	a1,0
   11260:	00090513          	mv	a0,s2
   11264:	7f5000ef          	jal	12258 <_sbrk_r>
   11268:	0109b703          	ld	a4,16(s3)
   1126c:	01f00693          	li	a3,31
   11270:	40e507b3          	sub	a5,a0,a4
   11274:	f4f6dee3          	bge	a3,a5,111d0 <_malloc_trim_r+0x78>
   11278:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   1127c:	0017e793          	ori	a5,a5,1
   11280:	40c50533          	sub	a0,a0,a2
   11284:	00f73423          	sd	a5,8(a4)
   11288:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   1128c:	f45ff06f          	j	111d0 <_malloc_trim_r+0x78>

0000000000011290 <_free_r>:
   11290:	12058c63          	beqz	a1,113c8 <_free_r+0x138>
   11294:	fe010113          	addi	sp,sp,-32
   11298:	00813823          	sd	s0,16(sp)
   1129c:	00913423          	sd	s1,8(sp)
   112a0:	00058413          	mv	s0,a1
   112a4:	00050493          	mv	s1,a0
   112a8:	00113c23          	sd	ra,24(sp)
   112ac:	355000ef          	jal	11e00 <__malloc_lock>
   112b0:	ff843503          	ld	a0,-8(s0)
   112b4:	ff040713          	addi	a4,s0,-16
   112b8:	000135b7          	lui	a1,0x13
   112bc:	ffe57793          	andi	a5,a0,-2
   112c0:	00f70633          	add	a2,a4,a5
   112c4:	18858593          	addi	a1,a1,392 # 13188 <__malloc_av_>
   112c8:	00863683          	ld	a3,8(a2)
   112cc:	0105b803          	ld	a6,16(a1)
   112d0:	00157893          	andi	a7,a0,1
   112d4:	ffc6f693          	andi	a3,a3,-4
   112d8:	1ac80463          	beq	a6,a2,11480 <_free_r+0x1f0>
   112dc:	00d63423          	sd	a3,8(a2)
   112e0:	00d60833          	add	a6,a2,a3
   112e4:	00883803          	ld	a6,8(a6)
   112e8:	00187813          	andi	a6,a6,1
   112ec:	0a089263          	bnez	a7,11390 <_free_r+0x100>
   112f0:	ff043303          	ld	t1,-16(s0)
   112f4:	00013537          	lui	a0,0x13
   112f8:	19850513          	addi	a0,a0,408 # 13198 <__malloc_av_+0x10>
   112fc:	40670733          	sub	a4,a4,t1
   11300:	01073883          	ld	a7,16(a4)
   11304:	006787b3          	add	a5,a5,t1
   11308:	14a88663          	beq	a7,a0,11454 <_free_r+0x1c4>
   1130c:	01873303          	ld	t1,24(a4)
   11310:	0068bc23          	sd	t1,24(a7)
   11314:	01133823          	sd	a7,16(t1) # 10220 <main+0x4>
   11318:	1a080863          	beqz	a6,114c8 <_free_r+0x238>
   1131c:	0017e693          	ori	a3,a5,1
   11320:	00d73423          	sd	a3,8(a4)
   11324:	00f63023          	sd	a5,0(a2)
   11328:	1ff00693          	li	a3,511
   1132c:	0af6ea63          	bltu	a3,a5,113e0 <_free_r+0x150>
   11330:	0037d793          	srli	a5,a5,0x3
   11334:	0007879b          	sext.w	a5,a5
   11338:	0017869b          	addiw	a3,a5,1
   1133c:	0016969b          	slliw	a3,a3,0x1
   11340:	00369693          	slli	a3,a3,0x3
   11344:	0085b803          	ld	a6,8(a1)
   11348:	00d586b3          	add	a3,a1,a3
   1134c:	0006b503          	ld	a0,0(a3)
   11350:	00100613          	li	a2,1
   11354:	4027d79b          	sraiw	a5,a5,0x2
   11358:	00f617b3          	sll	a5,a2,a5
   1135c:	0107e7b3          	or	a5,a5,a6
   11360:	ff068613          	addi	a2,a3,-16
   11364:	00a73823          	sd	a0,16(a4)
   11368:	00c73c23          	sd	a2,24(a4)
   1136c:	00f5b423          	sd	a5,8(a1)
   11370:	00e6b023          	sd	a4,0(a3)
   11374:	00e53c23          	sd	a4,24(a0)
   11378:	01013403          	ld	s0,16(sp)
   1137c:	01813083          	ld	ra,24(sp)
   11380:	00048513          	mv	a0,s1
   11384:	00813483          	ld	s1,8(sp)
   11388:	02010113          	addi	sp,sp,32
   1138c:	2790006f          	j	11e04 <__malloc_unlock>
   11390:	02081e63          	bnez	a6,113cc <_free_r+0x13c>
   11394:	00013537          	lui	a0,0x13
   11398:	00d787b3          	add	a5,a5,a3
   1139c:	19850513          	addi	a0,a0,408 # 13198 <__malloc_av_+0x10>
   113a0:	01063683          	ld	a3,16(a2)
   113a4:	0017e893          	ori	a7,a5,1
   113a8:	00f70833          	add	a6,a4,a5
   113ac:	16a68863          	beq	a3,a0,1151c <_free_r+0x28c>
   113b0:	01863603          	ld	a2,24(a2)
   113b4:	00c6bc23          	sd	a2,24(a3)
   113b8:	00d63823          	sd	a3,16(a2)
   113bc:	01173423          	sd	a7,8(a4)
   113c0:	00f83023          	sd	a5,0(a6)
   113c4:	f65ff06f          	j	11328 <_free_r+0x98>
   113c8:	00008067          	ret
   113cc:	00156513          	ori	a0,a0,1
   113d0:	fea43c23          	sd	a0,-8(s0)
   113d4:	00f63023          	sd	a5,0(a2)
   113d8:	1ff00693          	li	a3,511
   113dc:	f4f6fae3          	bgeu	a3,a5,11330 <_free_r+0xa0>
   113e0:	0097d693          	srli	a3,a5,0x9
   113e4:	00400613          	li	a2,4
   113e8:	0ed66463          	bltu	a2,a3,114d0 <_free_r+0x240>
   113ec:	0067d693          	srli	a3,a5,0x6
   113f0:	0396851b          	addiw	a0,a3,57
   113f4:	0015151b          	slliw	a0,a0,0x1
   113f8:	00351513          	slli	a0,a0,0x3
   113fc:	0386861b          	addiw	a2,a3,56
   11400:	00a58533          	add	a0,a1,a0
   11404:	00053683          	ld	a3,0(a0)
   11408:	ff050513          	addi	a0,a0,-16
   1140c:	00d51863          	bne	a0,a3,1141c <_free_r+0x18c>
   11410:	1280006f          	j	11538 <_free_r+0x2a8>
   11414:	0106b683          	ld	a3,16(a3)
   11418:	00d50863          	beq	a0,a3,11428 <_free_r+0x198>
   1141c:	0086b603          	ld	a2,8(a3)
   11420:	ffc67613          	andi	a2,a2,-4
   11424:	fec7e8e3          	bltu	a5,a2,11414 <_free_r+0x184>
   11428:	0186b503          	ld	a0,24(a3)
   1142c:	00a73c23          	sd	a0,24(a4)
   11430:	00d73823          	sd	a3,16(a4)
   11434:	01013403          	ld	s0,16(sp)
   11438:	00e53823          	sd	a4,16(a0)
   1143c:	01813083          	ld	ra,24(sp)
   11440:	00048513          	mv	a0,s1
   11444:	00813483          	ld	s1,8(sp)
   11448:	00e6bc23          	sd	a4,24(a3)
   1144c:	02010113          	addi	sp,sp,32
   11450:	1b50006f          	j	11e04 <__malloc_unlock>
   11454:	0a081263          	bnez	a6,114f8 <_free_r+0x268>
   11458:	01863583          	ld	a1,24(a2)
   1145c:	01063603          	ld	a2,16(a2)
   11460:	00f686b3          	add	a3,a3,a5
   11464:	0016e793          	ori	a5,a3,1
   11468:	00b63c23          	sd	a1,24(a2)
   1146c:	00c5b823          	sd	a2,16(a1)
   11470:	00f73423          	sd	a5,8(a4)
   11474:	00d70733          	add	a4,a4,a3
   11478:	00d73023          	sd	a3,0(a4)
   1147c:	efdff06f          	j	11378 <_free_r+0xe8>
   11480:	00d786b3          	add	a3,a5,a3
   11484:	02089063          	bnez	a7,114a4 <_free_r+0x214>
   11488:	ff043503          	ld	a0,-16(s0)
   1148c:	40a70733          	sub	a4,a4,a0
   11490:	01873783          	ld	a5,24(a4)
   11494:	01073603          	ld	a2,16(a4)
   11498:	00a686b3          	add	a3,a3,a0
   1149c:	00f63c23          	sd	a5,24(a2)
   114a0:	00c7b823          	sd	a2,16(a5)
   114a4:	0016e613          	ori	a2,a3,1
   114a8:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   114ac:	00c73423          	sd	a2,8(a4)
   114b0:	00e5b823          	sd	a4,16(a1)
   114b4:	ecf6e2e3          	bltu	a3,a5,11378 <_free_r+0xe8>
   114b8:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   114bc:	00048513          	mv	a0,s1
   114c0:	c99ff0ef          	jal	11158 <_malloc_trim_r>
   114c4:	eb5ff06f          	j	11378 <_free_r+0xe8>
   114c8:	00d787b3          	add	a5,a5,a3
   114cc:	ed5ff06f          	j	113a0 <_free_r+0x110>
   114d0:	01400613          	li	a2,20
   114d4:	02d67a63          	bgeu	a2,a3,11508 <_free_r+0x278>
   114d8:	05400613          	li	a2,84
   114dc:	06d66c63          	bltu	a2,a3,11554 <_free_r+0x2c4>
   114e0:	00c7d693          	srli	a3,a5,0xc
   114e4:	06f6851b          	addiw	a0,a3,111
   114e8:	0015151b          	slliw	a0,a0,0x1
   114ec:	00351513          	slli	a0,a0,0x3
   114f0:	06e6861b          	addiw	a2,a3,110
   114f4:	f0dff06f          	j	11400 <_free_r+0x170>
   114f8:	0017e693          	ori	a3,a5,1
   114fc:	00d73423          	sd	a3,8(a4)
   11500:	00f63023          	sd	a5,0(a2)
   11504:	e75ff06f          	j	11378 <_free_r+0xe8>
   11508:	05c6851b          	addiw	a0,a3,92
   1150c:	0015151b          	slliw	a0,a0,0x1
   11510:	00351513          	slli	a0,a0,0x3
   11514:	05b6861b          	addiw	a2,a3,91
   11518:	ee9ff06f          	j	11400 <_free_r+0x170>
   1151c:	02e5b423          	sd	a4,40(a1)
   11520:	02e5b023          	sd	a4,32(a1)
   11524:	00a73c23          	sd	a0,24(a4)
   11528:	00a73823          	sd	a0,16(a4)
   1152c:	01173423          	sd	a7,8(a4)
   11530:	00f83023          	sd	a5,0(a6)
   11534:	e45ff06f          	j	11378 <_free_r+0xe8>
   11538:	0085b803          	ld	a6,8(a1)
   1153c:	4026561b          	sraiw	a2,a2,0x2
   11540:	00100793          	li	a5,1
   11544:	00c797b3          	sll	a5,a5,a2
   11548:	0107e7b3          	or	a5,a5,a6
   1154c:	00f5b423          	sd	a5,8(a1)
   11550:	eddff06f          	j	1142c <_free_r+0x19c>
   11554:	15400613          	li	a2,340
   11558:	00d66e63          	bltu	a2,a3,11574 <_free_r+0x2e4>
   1155c:	00f7d693          	srli	a3,a5,0xf
   11560:	0786851b          	addiw	a0,a3,120
   11564:	0015151b          	slliw	a0,a0,0x1
   11568:	00351513          	slli	a0,a0,0x3
   1156c:	0776861b          	addiw	a2,a3,119
   11570:	e91ff06f          	j	11400 <_free_r+0x170>
   11574:	55400613          	li	a2,1364
   11578:	00d66e63          	bltu	a2,a3,11594 <_free_r+0x304>
   1157c:	0127d693          	srli	a3,a5,0x12
   11580:	07d6851b          	addiw	a0,a3,125
   11584:	0015151b          	slliw	a0,a0,0x1
   11588:	00351513          	slli	a0,a0,0x3
   1158c:	07c6861b          	addiw	a2,a3,124
   11590:	e71ff06f          	j	11400 <_free_r+0x170>
   11594:	7f000513          	li	a0,2032
   11598:	07e00613          	li	a2,126
   1159c:	e65ff06f          	j	11400 <_free_r+0x170>

00000000000115a0 <_malloc_r>:
   115a0:	fa010113          	addi	sp,sp,-96
   115a4:	04913423          	sd	s1,72(sp)
   115a8:	05213023          	sd	s2,64(sp)
   115ac:	04113c23          	sd	ra,88(sp)
   115b0:	04813823          	sd	s0,80(sp)
   115b4:	03313c23          	sd	s3,56(sp)
   115b8:	01758493          	addi	s1,a1,23
   115bc:	02e00793          	li	a5,46
   115c0:	00050913          	mv	s2,a0
   115c4:	0897e063          	bltu	a5,s1,11644 <_malloc_r+0xa4>
   115c8:	02000493          	li	s1,32
   115cc:	22b4e663          	bltu	s1,a1,117f8 <_malloc_r+0x258>
   115d0:	031000ef          	jal	11e00 <__malloc_lock>
   115d4:	05000793          	li	a5,80
   115d8:	00400593          	li	a1,4
   115dc:	000139b7          	lui	s3,0x13
   115e0:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   115e4:	00f987b3          	add	a5,s3,a5
   115e8:	0087b403          	ld	s0,8(a5)
   115ec:	ff078713          	addi	a4,a5,-16
   115f0:	46e40a63          	beq	s0,a4,11a64 <_malloc_r+0x4c4>
   115f4:	00843783          	ld	a5,8(s0)
   115f8:	01843683          	ld	a3,24(s0)
   115fc:	01043603          	ld	a2,16(s0)
   11600:	ffc7f793          	andi	a5,a5,-4
   11604:	00f407b3          	add	a5,s0,a5
   11608:	0087b703          	ld	a4,8(a5)
   1160c:	00d63c23          	sd	a3,24(a2)
   11610:	00c6b823          	sd	a2,16(a3)
   11614:	00176713          	ori	a4,a4,1
   11618:	00090513          	mv	a0,s2
   1161c:	00e7b423          	sd	a4,8(a5)
   11620:	7e4000ef          	jal	11e04 <__malloc_unlock>
   11624:	05813083          	ld	ra,88(sp)
   11628:	01040513          	addi	a0,s0,16
   1162c:	05013403          	ld	s0,80(sp)
   11630:	04813483          	ld	s1,72(sp)
   11634:	04013903          	ld	s2,64(sp)
   11638:	03813983          	ld	s3,56(sp)
   1163c:	06010113          	addi	sp,sp,96
   11640:	00008067          	ret
   11644:	800007b7          	lui	a5,0x80000
   11648:	ff04f493          	andi	s1,s1,-16
   1164c:	fff7c793          	not	a5,a5
   11650:	1a97e463          	bltu	a5,s1,117f8 <_malloc_r+0x258>
   11654:	1ab4e263          	bltu	s1,a1,117f8 <_malloc_r+0x258>
   11658:	7a8000ef          	jal	11e00 <__malloc_lock>
   1165c:	1f700793          	li	a5,503
   11660:	5497fe63          	bgeu	a5,s1,11bbc <_malloc_r+0x61c>
   11664:	0094d793          	srli	a5,s1,0x9
   11668:	1a078c63          	beqz	a5,11820 <_malloc_r+0x280>
   1166c:	00400713          	li	a4,4
   11670:	46f76463          	bltu	a4,a5,11ad8 <_malloc_r+0x538>
   11674:	0064d793          	srli	a5,s1,0x6
   11678:	0397859b          	addiw	a1,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffec0c1>
   1167c:	0015961b          	slliw	a2,a1,0x1
   11680:	0387881b          	addiw	a6,a5,56
   11684:	00361613          	slli	a2,a2,0x3
   11688:	000139b7          	lui	s3,0x13
   1168c:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   11690:	00c98633          	add	a2,s3,a2
   11694:	00863403          	ld	s0,8(a2)
   11698:	ff060613          	addi	a2,a2,-16
   1169c:	02860863          	beq	a2,s0,116cc <_malloc_r+0x12c>
   116a0:	01f00513          	li	a0,31
   116a4:	0140006f          	j	116b8 <_malloc_r+0x118>
   116a8:	01843683          	ld	a3,24(s0)
   116ac:	36075a63          	bgez	a4,11a20 <_malloc_r+0x480>
   116b0:	00d60e63          	beq	a2,a3,116cc <_malloc_r+0x12c>
   116b4:	00068413          	mv	s0,a3
   116b8:	00843783          	ld	a5,8(s0)
   116bc:	ffc7f793          	andi	a5,a5,-4
   116c0:	40978733          	sub	a4,a5,s1
   116c4:	fee552e3          	bge	a0,a4,116a8 <_malloc_r+0x108>
   116c8:	00080593          	mv	a1,a6
   116cc:	0209b403          	ld	s0,32(s3)
   116d0:	00013837          	lui	a6,0x13
   116d4:	19880813          	addi	a6,a6,408 # 13198 <__malloc_av_+0x10>
   116d8:	35040063          	beq	s0,a6,11a18 <_malloc_r+0x478>
   116dc:	00843783          	ld	a5,8(s0)
   116e0:	01f00693          	li	a3,31
   116e4:	ffc7f793          	andi	a5,a5,-4
   116e8:	40978733          	sub	a4,a5,s1
   116ec:	48e6ca63          	blt	a3,a4,11b80 <_malloc_r+0x5e0>
   116f0:	0309b423          	sd	a6,40(s3)
   116f4:	0309b023          	sd	a6,32(s3)
   116f8:	46075463          	bgez	a4,11b60 <_malloc_r+0x5c0>
   116fc:	1ff00713          	li	a4,511
   11700:	0089b503          	ld	a0,8(s3)
   11704:	36f76863          	bltu	a4,a5,11a74 <_malloc_r+0x4d4>
   11708:	0037d793          	srli	a5,a5,0x3
   1170c:	0007879b          	sext.w	a5,a5
   11710:	0017871b          	addiw	a4,a5,1
   11714:	0017171b          	slliw	a4,a4,0x1
   11718:	00371713          	slli	a4,a4,0x3
   1171c:	00e98733          	add	a4,s3,a4
   11720:	00073603          	ld	a2,0(a4)
   11724:	4027d79b          	sraiw	a5,a5,0x2
   11728:	00100693          	li	a3,1
   1172c:	00f697b3          	sll	a5,a3,a5
   11730:	00f56533          	or	a0,a0,a5
   11734:	ff070793          	addi	a5,a4,-16
   11738:	00c43823          	sd	a2,16(s0)
   1173c:	00f43c23          	sd	a5,24(s0)
   11740:	00a9b423          	sd	a0,8(s3)
   11744:	00873023          	sd	s0,0(a4)
   11748:	00863c23          	sd	s0,24(a2)
   1174c:	4025d79b          	sraiw	a5,a1,0x2
   11750:	00100613          	li	a2,1
   11754:	00f61633          	sll	a2,a2,a5
   11758:	0cc56c63          	bltu	a0,a2,11830 <_malloc_r+0x290>
   1175c:	00a677b3          	and	a5,a2,a0
   11760:	02079463          	bnez	a5,11788 <_malloc_r+0x1e8>
   11764:	00161613          	slli	a2,a2,0x1
   11768:	ffc5f593          	andi	a1,a1,-4
   1176c:	00a677b3          	and	a5,a2,a0
   11770:	0045859b          	addiw	a1,a1,4
   11774:	00079a63          	bnez	a5,11788 <_malloc_r+0x1e8>
   11778:	00161613          	slli	a2,a2,0x1
   1177c:	00a677b3          	and	a5,a2,a0
   11780:	0045859b          	addiw	a1,a1,4
   11784:	fe078ae3          	beqz	a5,11778 <_malloc_r+0x1d8>
   11788:	01f00893          	li	a7,31
   1178c:	0015831b          	addiw	t1,a1,1
   11790:	0013131b          	slliw	t1,t1,0x1
   11794:	00331313          	slli	t1,t1,0x3
   11798:	ff030313          	addi	t1,t1,-16
   1179c:	00698333          	add	t1,s3,t1
   117a0:	00030513          	mv	a0,t1
   117a4:	01853783          	ld	a5,24(a0)
   117a8:	00058e13          	mv	t3,a1
   117ac:	34f50a63          	beq	a0,a5,11b00 <_malloc_r+0x560>
   117b0:	0087b703          	ld	a4,8(a5)
   117b4:	00078413          	mv	s0,a5
   117b8:	0187b783          	ld	a5,24(a5)
   117bc:	ffc77713          	andi	a4,a4,-4
   117c0:	409706b3          	sub	a3,a4,s1
   117c4:	34d8ca63          	blt	a7,a3,11b18 <_malloc_r+0x578>
   117c8:	fe06c2e3          	bltz	a3,117ac <_malloc_r+0x20c>
   117cc:	00e40733          	add	a4,s0,a4
   117d0:	00873683          	ld	a3,8(a4)
   117d4:	01043603          	ld	a2,16(s0)
   117d8:	00090513          	mv	a0,s2
   117dc:	0016e693          	ori	a3,a3,1
   117e0:	00d73423          	sd	a3,8(a4)
   117e4:	00f63c23          	sd	a5,24(a2)
   117e8:	00c7b823          	sd	a2,16(a5)
   117ec:	618000ef          	jal	11e04 <__malloc_unlock>
   117f0:	01040513          	addi	a0,s0,16
   117f4:	0100006f          	j	11804 <_malloc_r+0x264>
   117f8:	00c00793          	li	a5,12
   117fc:	00f92023          	sw	a5,0(s2)
   11800:	00000513          	li	a0,0
   11804:	05813083          	ld	ra,88(sp)
   11808:	05013403          	ld	s0,80(sp)
   1180c:	04813483          	ld	s1,72(sp)
   11810:	04013903          	ld	s2,64(sp)
   11814:	03813983          	ld	s3,56(sp)
   11818:	06010113          	addi	sp,sp,96
   1181c:	00008067          	ret
   11820:	40000613          	li	a2,1024
   11824:	04000593          	li	a1,64
   11828:	03f00813          	li	a6,63
   1182c:	e5dff06f          	j	11688 <_malloc_r+0xe8>
   11830:	0109b403          	ld	s0,16(s3)
   11834:	03513423          	sd	s5,40(sp)
   11838:	00843783          	ld	a5,8(s0)
   1183c:	ffc7fa93          	andi	s5,a5,-4
   11840:	009ae863          	bltu	s5,s1,11850 <_malloc_r+0x2b0>
   11844:	409a8733          	sub	a4,s5,s1
   11848:	01f00793          	li	a5,31
   1184c:	18e7c463          	blt	a5,a4,119d4 <_malloc_r+0x434>
   11850:	01913423          	sd	s9,8(sp)
   11854:	03413823          	sd	s4,48(sp)
   11858:	1901b703          	ld	a4,400(gp) # 139a8 <__malloc_sbrk_base>
   1185c:	1c81ba03          	ld	s4,456(gp) # 139e0 <__malloc_top_pad>
   11860:	01713c23          	sd	s7,24(sp)
   11864:	03613023          	sd	s6,32(sp)
   11868:	fff00793          	li	a5,-1
   1186c:	01448a33          	add	s4,s1,s4
   11870:	01540bb3          	add	s7,s0,s5
   11874:	3ef70c63          	beq	a4,a5,11c6c <_malloc_r+0x6cc>
   11878:	000017b7          	lui	a5,0x1
   1187c:	01f78793          	addi	a5,a5,31 # 101f <exit-0xf101>
   11880:	00fa0a33          	add	s4,s4,a5
   11884:	fffff7b7          	lui	a5,0xfffff
   11888:	00fa7a33          	and	s4,s4,a5
   1188c:	000a0593          	mv	a1,s4
   11890:	00090513          	mv	a0,s2
   11894:	1c5000ef          	jal	12258 <_sbrk_r>
   11898:	fff00793          	li	a5,-1
   1189c:	00050b13          	mv	s6,a0
   118a0:	48f50c63          	beq	a0,a5,11d38 <_malloc_r+0x798>
   118a4:	01813823          	sd	s8,16(sp)
   118a8:	0f756c63          	bltu	a0,s7,119a0 <_malloc_r+0x400>
   118ac:	42018c13          	addi	s8,gp,1056 # 13c38 <__malloc_current_mallinfo>
   118b0:	000c2703          	lw	a4,0(s8)
   118b4:	0147073b          	addw	a4,a4,s4
   118b8:	00ec2023          	sw	a4,0(s8)
   118bc:	00070693          	mv	a3,a4
   118c0:	48ab8263          	beq	s7,a0,11d44 <_malloc_r+0x7a4>
   118c4:	1901b703          	ld	a4,400(gp) # 139a8 <__malloc_sbrk_base>
   118c8:	fff00793          	li	a5,-1
   118cc:	48f70a63          	beq	a4,a5,11d60 <_malloc_r+0x7c0>
   118d0:	417b07b3          	sub	a5,s6,s7
   118d4:	00d787bb          	addw	a5,a5,a3
   118d8:	00fc2023          	sw	a5,0(s8)
   118dc:	00fb7c93          	andi	s9,s6,15
   118e0:	3a0c8663          	beqz	s9,11c8c <_malloc_r+0x6ec>
   118e4:	419b0b33          	sub	s6,s6,s9
   118e8:	000016b7          	lui	a3,0x1
   118ec:	010b0b13          	addi	s6,s6,16
   118f0:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   118f4:	014b0a33          	add	s4,s6,s4
   118f8:	419686b3          	sub	a3,a3,s9
   118fc:	414686b3          	sub	a3,a3,s4
   11900:	03469693          	slli	a3,a3,0x34
   11904:	0346db93          	srli	s7,a3,0x34
   11908:	000b8593          	mv	a1,s7
   1190c:	00090513          	mv	a0,s2
   11910:	149000ef          	jal	12258 <_sbrk_r>
   11914:	fff00793          	li	a5,-1
   11918:	48f50863          	beq	a0,a5,11da8 <_malloc_r+0x808>
   1191c:	41650533          	sub	a0,a0,s6
   11920:	01750a33          	add	s4,a0,s7
   11924:	000b869b          	sext.w	a3,s7
   11928:	000c2703          	lw	a4,0(s8)
   1192c:	0169b823          	sd	s6,16(s3)
   11930:	001a6793          	ori	a5,s4,1
   11934:	00d7073b          	addw	a4,a4,a3
   11938:	00fb3423          	sd	a5,8(s6)
   1193c:	00ec2023          	sw	a4,0(s8)
   11940:	03340e63          	beq	s0,s3,1197c <_malloc_r+0x3dc>
   11944:	01f00613          	li	a2,31
   11948:	37567863          	bgeu	a2,s5,11cb8 <_malloc_r+0x718>
   1194c:	00843683          	ld	a3,8(s0)
   11950:	fe8a8793          	addi	a5,s5,-24
   11954:	ff07f793          	andi	a5,a5,-16
   11958:	0016f693          	andi	a3,a3,1
   1195c:	00f6e6b3          	or	a3,a3,a5
   11960:	00d43423          	sd	a3,8(s0)
   11964:	00900593          	li	a1,9
   11968:	00f406b3          	add	a3,s0,a5
   1196c:	00b6b423          	sd	a1,8(a3)
   11970:	00b6b823          	sd	a1,16(a3)
   11974:	2ef66063          	bltu	a2,a5,11c54 <_malloc_r+0x6b4>
   11978:	008b3783          	ld	a5,8(s6)
   1197c:	1c01b603          	ld	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11980:	00e67463          	bgeu	a2,a4,11988 <_malloc_r+0x3e8>
   11984:	1ce1b023          	sd	a4,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11988:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   1198c:	00e67463          	bgeu	a2,a4,11994 <_malloc_r+0x3f4>
   11990:	1ae1bc23          	sd	a4,440(gp) # 139d0 <__malloc_max_total_mem>
   11994:	01013c03          	ld	s8,16(sp)
   11998:	000b0413          	mv	s0,s6
   1199c:	0140006f          	j	119b0 <_malloc_r+0x410>
   119a0:	39340263          	beq	s0,s3,11d24 <_malloc_r+0x784>
   119a4:	0109b403          	ld	s0,16(s3)
   119a8:	01013c03          	ld	s8,16(sp)
   119ac:	00843783          	ld	a5,8(s0)
   119b0:	ffc7f793          	andi	a5,a5,-4
   119b4:	40978733          	sub	a4,a5,s1
   119b8:	3097e663          	bltu	a5,s1,11cc4 <_malloc_r+0x724>
   119bc:	01f00793          	li	a5,31
   119c0:	30e7d263          	bge	a5,a4,11cc4 <_malloc_r+0x724>
   119c4:	03013a03          	ld	s4,48(sp)
   119c8:	02013b03          	ld	s6,32(sp)
   119cc:	01813b83          	ld	s7,24(sp)
   119d0:	00813c83          	ld	s9,8(sp)
   119d4:	0014e793          	ori	a5,s1,1
   119d8:	00f43423          	sd	a5,8(s0)
   119dc:	009404b3          	add	s1,s0,s1
   119e0:	0099b823          	sd	s1,16(s3)
   119e4:	00176713          	ori	a4,a4,1
   119e8:	00090513          	mv	a0,s2
   119ec:	00e4b423          	sd	a4,8(s1)
   119f0:	414000ef          	jal	11e04 <__malloc_unlock>
   119f4:	05813083          	ld	ra,88(sp)
   119f8:	01040513          	addi	a0,s0,16
   119fc:	05013403          	ld	s0,80(sp)
   11a00:	02813a83          	ld	s5,40(sp)
   11a04:	04813483          	ld	s1,72(sp)
   11a08:	04013903          	ld	s2,64(sp)
   11a0c:	03813983          	ld	s3,56(sp)
   11a10:	06010113          	addi	sp,sp,96
   11a14:	00008067          	ret
   11a18:	0089b503          	ld	a0,8(s3)
   11a1c:	d31ff06f          	j	1174c <_malloc_r+0x1ac>
   11a20:	01043603          	ld	a2,16(s0)
   11a24:	00f407b3          	add	a5,s0,a5
   11a28:	0087b703          	ld	a4,8(a5) # fffffffffffff008 <__BSS_END__+0xfffffffffffeb090>
   11a2c:	00d63c23          	sd	a3,24(a2)
   11a30:	00c6b823          	sd	a2,16(a3)
   11a34:	00176713          	ori	a4,a4,1
   11a38:	00090513          	mv	a0,s2
   11a3c:	00e7b423          	sd	a4,8(a5)
   11a40:	3c4000ef          	jal	11e04 <__malloc_unlock>
   11a44:	05813083          	ld	ra,88(sp)
   11a48:	01040513          	addi	a0,s0,16
   11a4c:	05013403          	ld	s0,80(sp)
   11a50:	04813483          	ld	s1,72(sp)
   11a54:	04013903          	ld	s2,64(sp)
   11a58:	03813983          	ld	s3,56(sp)
   11a5c:	06010113          	addi	sp,sp,96
   11a60:	00008067          	ret
   11a64:	0187b403          	ld	s0,24(a5)
   11a68:	0025859b          	addiw	a1,a1,2
   11a6c:	c68780e3          	beq	a5,s0,116cc <_malloc_r+0x12c>
   11a70:	b85ff06f          	j	115f4 <_malloc_r+0x54>
   11a74:	0097d713          	srli	a4,a5,0x9
   11a78:	00400693          	li	a3,4
   11a7c:	14e6fc63          	bgeu	a3,a4,11bd4 <_malloc_r+0x634>
   11a80:	01400693          	li	a3,20
   11a84:	26e6e063          	bltu	a3,a4,11ce4 <_malloc_r+0x744>
   11a88:	05c7061b          	addiw	a2,a4,92
   11a8c:	0016161b          	slliw	a2,a2,0x1
   11a90:	00361613          	slli	a2,a2,0x3
   11a94:	05b7069b          	addiw	a3,a4,91
   11a98:	00c98633          	add	a2,s3,a2
   11a9c:	00063703          	ld	a4,0(a2)
   11aa0:	ff060613          	addi	a2,a2,-16
   11aa4:	00e61863          	bne	a2,a4,11ab4 <_malloc_r+0x514>
   11aa8:	1cc0006f          	j	11c74 <_malloc_r+0x6d4>
   11aac:	01073703          	ld	a4,16(a4)
   11ab0:	00e60863          	beq	a2,a4,11ac0 <_malloc_r+0x520>
   11ab4:	00873683          	ld	a3,8(a4)
   11ab8:	ffc6f693          	andi	a3,a3,-4
   11abc:	fed7e8e3          	bltu	a5,a3,11aac <_malloc_r+0x50c>
   11ac0:	01873603          	ld	a2,24(a4)
   11ac4:	00c43c23          	sd	a2,24(s0)
   11ac8:	00e43823          	sd	a4,16(s0)
   11acc:	00863823          	sd	s0,16(a2)
   11ad0:	00873c23          	sd	s0,24(a4)
   11ad4:	c79ff06f          	j	1174c <_malloc_r+0x1ac>
   11ad8:	01400713          	li	a4,20
   11adc:	10f77863          	bgeu	a4,a5,11bec <_malloc_r+0x64c>
   11ae0:	05400713          	li	a4,84
   11ae4:	22f76063          	bltu	a4,a5,11d04 <_malloc_r+0x764>
   11ae8:	00c4d793          	srli	a5,s1,0xc
   11aec:	06f7859b          	addiw	a1,a5,111
   11af0:	0015961b          	slliw	a2,a1,0x1
   11af4:	06e7881b          	addiw	a6,a5,110
   11af8:	00361613          	slli	a2,a2,0x3
   11afc:	b8dff06f          	j	11688 <_malloc_r+0xe8>
   11b00:	001e0e1b          	addiw	t3,t3,1
   11b04:	003e7793          	andi	a5,t3,3
   11b08:	01050513          	addi	a0,a0,16
   11b0c:	10078063          	beqz	a5,11c0c <_malloc_r+0x66c>
   11b10:	01853783          	ld	a5,24(a0)
   11b14:	c99ff06f          	j	117ac <_malloc_r+0x20c>
   11b18:	01043603          	ld	a2,16(s0)
   11b1c:	0014e593          	ori	a1,s1,1
   11b20:	00b43423          	sd	a1,8(s0)
   11b24:	00f63c23          	sd	a5,24(a2)
   11b28:	00c7b823          	sd	a2,16(a5)
   11b2c:	009404b3          	add	s1,s0,s1
   11b30:	0299b423          	sd	s1,40(s3)
   11b34:	0299b023          	sd	s1,32(s3)
   11b38:	0016e793          	ori	a5,a3,1
   11b3c:	00e40733          	add	a4,s0,a4
   11b40:	0104bc23          	sd	a6,24(s1)
   11b44:	0104b823          	sd	a6,16(s1)
   11b48:	00f4b423          	sd	a5,8(s1)
   11b4c:	00090513          	mv	a0,s2
   11b50:	00d73023          	sd	a3,0(a4)
   11b54:	2b0000ef          	jal	11e04 <__malloc_unlock>
   11b58:	01040513          	addi	a0,s0,16
   11b5c:	ca9ff06f          	j	11804 <_malloc_r+0x264>
   11b60:	00f407b3          	add	a5,s0,a5
   11b64:	0087b703          	ld	a4,8(a5)
   11b68:	00090513          	mv	a0,s2
   11b6c:	00176713          	ori	a4,a4,1
   11b70:	00e7b423          	sd	a4,8(a5)
   11b74:	290000ef          	jal	11e04 <__malloc_unlock>
   11b78:	01040513          	addi	a0,s0,16
   11b7c:	c89ff06f          	j	11804 <_malloc_r+0x264>
   11b80:	0014e693          	ori	a3,s1,1
   11b84:	00d43423          	sd	a3,8(s0)
   11b88:	009404b3          	add	s1,s0,s1
   11b8c:	0299b423          	sd	s1,40(s3)
   11b90:	0299b023          	sd	s1,32(s3)
   11b94:	00176693          	ori	a3,a4,1
   11b98:	00f407b3          	add	a5,s0,a5
   11b9c:	0104bc23          	sd	a6,24(s1)
   11ba0:	0104b823          	sd	a6,16(s1)
   11ba4:	00d4b423          	sd	a3,8(s1)
   11ba8:	00090513          	mv	a0,s2
   11bac:	00e7b023          	sd	a4,0(a5)
   11bb0:	254000ef          	jal	11e04 <__malloc_unlock>
   11bb4:	01040513          	addi	a0,s0,16
   11bb8:	c4dff06f          	j	11804 <_malloc_r+0x264>
   11bbc:	0034d593          	srli	a1,s1,0x3
   11bc0:	0015879b          	addiw	a5,a1,1
   11bc4:	0017979b          	slliw	a5,a5,0x1
   11bc8:	00379793          	slli	a5,a5,0x3
   11bcc:	0005859b          	sext.w	a1,a1
   11bd0:	a0dff06f          	j	115dc <_malloc_r+0x3c>
   11bd4:	0067d713          	srli	a4,a5,0x6
   11bd8:	0397061b          	addiw	a2,a4,57
   11bdc:	0016161b          	slliw	a2,a2,0x1
   11be0:	00361613          	slli	a2,a2,0x3
   11be4:	0387069b          	addiw	a3,a4,56
   11be8:	eb1ff06f          	j	11a98 <_malloc_r+0x4f8>
   11bec:	05c7859b          	addiw	a1,a5,92
   11bf0:	0015961b          	slliw	a2,a1,0x1
   11bf4:	05b7881b          	addiw	a6,a5,91
   11bf8:	00361613          	slli	a2,a2,0x3
   11bfc:	a8dff06f          	j	11688 <_malloc_r+0xe8>
   11c00:	01033783          	ld	a5,16(t1)
   11c04:	fff5859b          	addiw	a1,a1,-1
   11c08:	1e679863          	bne	a5,t1,11df8 <_malloc_r+0x858>
   11c0c:	0035f793          	andi	a5,a1,3
   11c10:	ff030313          	addi	t1,t1,-16
   11c14:	fe0796e3          	bnez	a5,11c00 <_malloc_r+0x660>
   11c18:	0089b703          	ld	a4,8(s3)
   11c1c:	fff64793          	not	a5,a2
   11c20:	00e7f7b3          	and	a5,a5,a4
   11c24:	00f9b423          	sd	a5,8(s3)
   11c28:	00161613          	slli	a2,a2,0x1
   11c2c:	c0c7e2e3          	bltu	a5,a2,11830 <_malloc_r+0x290>
   11c30:	c00600e3          	beqz	a2,11830 <_malloc_r+0x290>
   11c34:	00f67733          	and	a4,a2,a5
   11c38:	00071a63          	bnez	a4,11c4c <_malloc_r+0x6ac>
   11c3c:	00161613          	slli	a2,a2,0x1
   11c40:	00f67733          	and	a4,a2,a5
   11c44:	004e0e1b          	addiw	t3,t3,4
   11c48:	fe070ae3          	beqz	a4,11c3c <_malloc_r+0x69c>
   11c4c:	000e0593          	mv	a1,t3
   11c50:	b3dff06f          	j	1178c <_malloc_r+0x1ec>
   11c54:	01040593          	addi	a1,s0,16
   11c58:	00090513          	mv	a0,s2
   11c5c:	e34ff0ef          	jal	11290 <_free_r>
   11c60:	000c2703          	lw	a4,0(s8)
   11c64:	0109bb03          	ld	s6,16(s3)
   11c68:	d11ff06f          	j	11978 <_malloc_r+0x3d8>
   11c6c:	020a0a13          	addi	s4,s4,32
   11c70:	c1dff06f          	j	1188c <_malloc_r+0x2ec>
   11c74:	4026d69b          	sraiw	a3,a3,0x2
   11c78:	00100793          	li	a5,1
   11c7c:	00d797b3          	sll	a5,a5,a3
   11c80:	00f56533          	or	a0,a0,a5
   11c84:	00a9b423          	sd	a0,8(s3)
   11c88:	e3dff06f          	j	11ac4 <_malloc_r+0x524>
   11c8c:	014b0bb3          	add	s7,s6,s4
   11c90:	41700bb3          	neg	s7,s7
   11c94:	034b9b93          	slli	s7,s7,0x34
   11c98:	034bdb93          	srli	s7,s7,0x34
   11c9c:	000b8593          	mv	a1,s7
   11ca0:	00090513          	mv	a0,s2
   11ca4:	5b4000ef          	jal	12258 <_sbrk_r>
   11ca8:	fff00793          	li	a5,-1
   11cac:	00000693          	li	a3,0
   11cb0:	c6f516e3          	bne	a0,a5,1191c <_malloc_r+0x37c>
   11cb4:	c75ff06f          	j	11928 <_malloc_r+0x388>
   11cb8:	01013c03          	ld	s8,16(sp)
   11cbc:	00100793          	li	a5,1
   11cc0:	00fb3423          	sd	a5,8(s6)
   11cc4:	00090513          	mv	a0,s2
   11cc8:	13c000ef          	jal	11e04 <__malloc_unlock>
   11ccc:	03013a03          	ld	s4,48(sp)
   11cd0:	02813a83          	ld	s5,40(sp)
   11cd4:	02013b03          	ld	s6,32(sp)
   11cd8:	01813b83          	ld	s7,24(sp)
   11cdc:	00813c83          	ld	s9,8(sp)
   11ce0:	b21ff06f          	j	11800 <_malloc_r+0x260>
   11ce4:	05400693          	li	a3,84
   11ce8:	08e6e063          	bltu	a3,a4,11d68 <_malloc_r+0x7c8>
   11cec:	00c7d713          	srli	a4,a5,0xc
   11cf0:	06f7061b          	addiw	a2,a4,111
   11cf4:	0016161b          	slliw	a2,a2,0x1
   11cf8:	00361613          	slli	a2,a2,0x3
   11cfc:	06e7069b          	addiw	a3,a4,110
   11d00:	d99ff06f          	j	11a98 <_malloc_r+0x4f8>
   11d04:	15400713          	li	a4,340
   11d08:	08f76063          	bltu	a4,a5,11d88 <_malloc_r+0x7e8>
   11d0c:	00f4d793          	srli	a5,s1,0xf
   11d10:	0787859b          	addiw	a1,a5,120
   11d14:	0015961b          	slliw	a2,a1,0x1
   11d18:	0777881b          	addiw	a6,a5,119
   11d1c:	00361613          	slli	a2,a2,0x3
   11d20:	969ff06f          	j	11688 <_malloc_r+0xe8>
   11d24:	42018c13          	addi	s8,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11d28:	000c2683          	lw	a3,0(s8)
   11d2c:	014686bb          	addw	a3,a3,s4
   11d30:	00dc2023          	sw	a3,0(s8)
   11d34:	b91ff06f          	j	118c4 <_malloc_r+0x324>
   11d38:	0109b403          	ld	s0,16(s3)
   11d3c:	00843783          	ld	a5,8(s0)
   11d40:	c71ff06f          	j	119b0 <_malloc_r+0x410>
   11d44:	03451793          	slli	a5,a0,0x34
   11d48:	b6079ee3          	bnez	a5,118c4 <_malloc_r+0x324>
   11d4c:	0109bb03          	ld	s6,16(s3)
   11d50:	014a87b3          	add	a5,s5,s4
   11d54:	0017e793          	ori	a5,a5,1
   11d58:	00fb3423          	sd	a5,8(s6)
   11d5c:	c21ff06f          	j	1197c <_malloc_r+0x3dc>
   11d60:	1961b823          	sd	s6,400(gp) # 139a8 <__malloc_sbrk_base>
   11d64:	b79ff06f          	j	118dc <_malloc_r+0x33c>
   11d68:	15400693          	li	a3,340
   11d6c:	04e6e863          	bltu	a3,a4,11dbc <_malloc_r+0x81c>
   11d70:	00f7d713          	srli	a4,a5,0xf
   11d74:	0787061b          	addiw	a2,a4,120
   11d78:	0016161b          	slliw	a2,a2,0x1
   11d7c:	00361613          	slli	a2,a2,0x3
   11d80:	0777069b          	addiw	a3,a4,119
   11d84:	d15ff06f          	j	11a98 <_malloc_r+0x4f8>
   11d88:	55400713          	li	a4,1364
   11d8c:	04f76863          	bltu	a4,a5,11ddc <_malloc_r+0x83c>
   11d90:	0124d793          	srli	a5,s1,0x12
   11d94:	07d7859b          	addiw	a1,a5,125
   11d98:	0015961b          	slliw	a2,a1,0x1
   11d9c:	07c7881b          	addiw	a6,a5,124
   11da0:	00361613          	slli	a2,a2,0x3
   11da4:	8e5ff06f          	j	11688 <_malloc_r+0xe8>
   11da8:	ff0c8c93          	addi	s9,s9,-16
   11dac:	019a0a33          	add	s4,s4,s9
   11db0:	416a0a33          	sub	s4,s4,s6
   11db4:	00000693          	li	a3,0
   11db8:	b71ff06f          	j	11928 <_malloc_r+0x388>
   11dbc:	55400693          	li	a3,1364
   11dc0:	02e6e663          	bltu	a3,a4,11dec <_malloc_r+0x84c>
   11dc4:	0127d713          	srli	a4,a5,0x12
   11dc8:	07d7061b          	addiw	a2,a4,125
   11dcc:	0016161b          	slliw	a2,a2,0x1
   11dd0:	00361613          	slli	a2,a2,0x3
   11dd4:	07c7069b          	addiw	a3,a4,124
   11dd8:	cc1ff06f          	j	11a98 <_malloc_r+0x4f8>
   11ddc:	7f000613          	li	a2,2032
   11de0:	07f00593          	li	a1,127
   11de4:	07e00813          	li	a6,126
   11de8:	8a1ff06f          	j	11688 <_malloc_r+0xe8>
   11dec:	7f000613          	li	a2,2032
   11df0:	07e00693          	li	a3,126
   11df4:	ca5ff06f          	j	11a98 <_malloc_r+0x4f8>
   11df8:	0089b783          	ld	a5,8(s3)
   11dfc:	e2dff06f          	j	11c28 <_malloc_r+0x688>

0000000000011e00 <__malloc_lock>:
   11e00:	00008067          	ret

0000000000011e04 <__malloc_unlock>:
   11e04:	00008067          	ret

0000000000011e08 <_fclose_r>:
   11e08:	fe010113          	addi	sp,sp,-32
   11e0c:	00113c23          	sd	ra,24(sp)
   11e10:	01213023          	sd	s2,0(sp)
   11e14:	02058863          	beqz	a1,11e44 <_fclose_r+0x3c>
   11e18:	00813823          	sd	s0,16(sp)
   11e1c:	00913423          	sd	s1,8(sp)
   11e20:	00058413          	mv	s0,a1
   11e24:	00050493          	mv	s1,a0
   11e28:	00050663          	beqz	a0,11e34 <_fclose_r+0x2c>
   11e2c:	04853783          	ld	a5,72(a0)
   11e30:	0c078c63          	beqz	a5,11f08 <_fclose_r+0x100>
   11e34:	01041783          	lh	a5,16(s0)
   11e38:	02079263          	bnez	a5,11e5c <_fclose_r+0x54>
   11e3c:	01013403          	ld	s0,16(sp)
   11e40:	00813483          	ld	s1,8(sp)
   11e44:	01813083          	ld	ra,24(sp)
   11e48:	00000913          	li	s2,0
   11e4c:	00090513          	mv	a0,s2
   11e50:	00013903          	ld	s2,0(sp)
   11e54:	02010113          	addi	sp,sp,32
   11e58:	00008067          	ret
   11e5c:	00040593          	mv	a1,s0
   11e60:	00048513          	mv	a0,s1
   11e64:	0b8000ef          	jal	11f1c <__sflush_r>
   11e68:	05043783          	ld	a5,80(s0)
   11e6c:	00050913          	mv	s2,a0
   11e70:	00078a63          	beqz	a5,11e84 <_fclose_r+0x7c>
   11e74:	03043583          	ld	a1,48(s0)
   11e78:	00048513          	mv	a0,s1
   11e7c:	000780e7          	jalr	a5
   11e80:	06054463          	bltz	a0,11ee8 <_fclose_r+0xe0>
   11e84:	01045783          	lhu	a5,16(s0)
   11e88:	0807f793          	andi	a5,a5,128
   11e8c:	06079663          	bnez	a5,11ef8 <_fclose_r+0xf0>
   11e90:	05843583          	ld	a1,88(s0)
   11e94:	00058c63          	beqz	a1,11eac <_fclose_r+0xa4>
   11e98:	07440793          	addi	a5,s0,116
   11e9c:	00f58663          	beq	a1,a5,11ea8 <_fclose_r+0xa0>
   11ea0:	00048513          	mv	a0,s1
   11ea4:	becff0ef          	jal	11290 <_free_r>
   11ea8:	04043c23          	sd	zero,88(s0)
   11eac:	07843583          	ld	a1,120(s0)
   11eb0:	00058863          	beqz	a1,11ec0 <_fclose_r+0xb8>
   11eb4:	00048513          	mv	a0,s1
   11eb8:	bd8ff0ef          	jal	11290 <_free_r>
   11ebc:	06043c23          	sd	zero,120(s0)
   11ec0:	b01fe0ef          	jal	109c0 <__sfp_lock_acquire>
   11ec4:	00041823          	sh	zero,16(s0)
   11ec8:	afdfe0ef          	jal	109c4 <__sfp_lock_release>
   11ecc:	01813083          	ld	ra,24(sp)
   11ed0:	01013403          	ld	s0,16(sp)
   11ed4:	00813483          	ld	s1,8(sp)
   11ed8:	00090513          	mv	a0,s2
   11edc:	00013903          	ld	s2,0(sp)
   11ee0:	02010113          	addi	sp,sp,32
   11ee4:	00008067          	ret
   11ee8:	01045783          	lhu	a5,16(s0)
   11eec:	fff00913          	li	s2,-1
   11ef0:	0807f793          	andi	a5,a5,128
   11ef4:	f8078ee3          	beqz	a5,11e90 <_fclose_r+0x88>
   11ef8:	01843583          	ld	a1,24(s0)
   11efc:	00048513          	mv	a0,s1
   11f00:	b90ff0ef          	jal	11290 <_free_r>
   11f04:	f8dff06f          	j	11e90 <_fclose_r+0x88>
   11f08:	a95fe0ef          	jal	1099c <__sinit>
   11f0c:	f29ff06f          	j	11e34 <_fclose_r+0x2c>

0000000000011f10 <fclose>:
   11f10:	00050593          	mv	a1,a0
   11f14:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11f18:	ef1ff06f          	j	11e08 <_fclose_r>

0000000000011f1c <__sflush_r>:
   11f1c:	01059703          	lh	a4,16(a1)
   11f20:	fd010113          	addi	sp,sp,-48
   11f24:	02813023          	sd	s0,32(sp)
   11f28:	01313423          	sd	s3,8(sp)
   11f2c:	02113423          	sd	ra,40(sp)
   11f30:	00877793          	andi	a5,a4,8
   11f34:	00058413          	mv	s0,a1
   11f38:	00050993          	mv	s3,a0
   11f3c:	12079063          	bnez	a5,1205c <__sflush_r+0x140>
   11f40:	000017b7          	lui	a5,0x1
   11f44:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11f48:	0085a683          	lw	a3,8(a1)
   11f4c:	00f767b3          	or	a5,a4,a5
   11f50:	00f59823          	sh	a5,16(a1)
   11f54:	18d05a63          	blez	a3,120e8 <__sflush_r+0x1cc>
   11f58:	04843803          	ld	a6,72(s0)
   11f5c:	0e080463          	beqz	a6,12044 <__sflush_r+0x128>
   11f60:	00913c23          	sd	s1,24(sp)
   11f64:	03371693          	slli	a3,a4,0x33
   11f68:	0009a483          	lw	s1,0(s3)
   11f6c:	0009a023          	sw	zero,0(s3)
   11f70:	1806c863          	bltz	a3,12100 <__sflush_r+0x1e4>
   11f74:	03043583          	ld	a1,48(s0)
   11f78:	00000613          	li	a2,0
   11f7c:	00100693          	li	a3,1
   11f80:	00098513          	mv	a0,s3
   11f84:	000800e7          	jalr	a6
   11f88:	fff00793          	li	a5,-1
   11f8c:	00050613          	mv	a2,a0
   11f90:	1af50a63          	beq	a0,a5,12144 <__sflush_r+0x228>
   11f94:	01041783          	lh	a5,16(s0)
   11f98:	04843803          	ld	a6,72(s0)
   11f9c:	0047f793          	andi	a5,a5,4
   11fa0:	00078e63          	beqz	a5,11fbc <__sflush_r+0xa0>
   11fa4:	00842703          	lw	a4,8(s0)
   11fa8:	05843783          	ld	a5,88(s0)
   11fac:	40e60633          	sub	a2,a2,a4
   11fb0:	00078663          	beqz	a5,11fbc <__sflush_r+0xa0>
   11fb4:	07042783          	lw	a5,112(s0)
   11fb8:	40f60633          	sub	a2,a2,a5
   11fbc:	03043583          	ld	a1,48(s0)
   11fc0:	00000693          	li	a3,0
   11fc4:	00098513          	mv	a0,s3
   11fc8:	000800e7          	jalr	a6
   11fcc:	fff00713          	li	a4,-1
   11fd0:	01041783          	lh	a5,16(s0)
   11fd4:	12e51a63          	bne	a0,a4,12108 <__sflush_r+0x1ec>
   11fd8:	0009a683          	lw	a3,0(s3)
   11fdc:	01d00713          	li	a4,29
   11fe0:	18d76063          	bltu	a4,a3,12160 <__sflush_r+0x244>
   11fe4:	20400737          	lui	a4,0x20400
   11fe8:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11fec:	00d75733          	srl	a4,a4,a3
   11ff0:	00177713          	andi	a4,a4,1
   11ff4:	16070663          	beqz	a4,12160 <__sflush_r+0x244>
   11ff8:	01843603          	ld	a2,24(s0)
   11ffc:	fffff737          	lui	a4,0xfffff
   12000:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12004:	00e7f733          	and	a4,a5,a4
   12008:	00e41823          	sh	a4,16(s0)
   1200c:	00042423          	sw	zero,8(s0)
   12010:	00c43023          	sd	a2,0(s0)
   12014:	03379713          	slli	a4,a5,0x33
   12018:	00075463          	bgez	a4,12020 <__sflush_r+0x104>
   1201c:	10068863          	beqz	a3,1212c <__sflush_r+0x210>
   12020:	05843583          	ld	a1,88(s0)
   12024:	0099a023          	sw	s1,0(s3)
   12028:	10058a63          	beqz	a1,1213c <__sflush_r+0x220>
   1202c:	07440793          	addi	a5,s0,116
   12030:	00f58663          	beq	a1,a5,1203c <__sflush_r+0x120>
   12034:	00098513          	mv	a0,s3
   12038:	a58ff0ef          	jal	11290 <_free_r>
   1203c:	01813483          	ld	s1,24(sp)
   12040:	04043c23          	sd	zero,88(s0)
   12044:	02813083          	ld	ra,40(sp)
   12048:	02013403          	ld	s0,32(sp)
   1204c:	00813983          	ld	s3,8(sp)
   12050:	00000513          	li	a0,0
   12054:	03010113          	addi	sp,sp,48
   12058:	00008067          	ret
   1205c:	01213823          	sd	s2,16(sp)
   12060:	0185b903          	ld	s2,24(a1)
   12064:	08090a63          	beqz	s2,120f8 <__sflush_r+0x1dc>
   12068:	00913c23          	sd	s1,24(sp)
   1206c:	0005b483          	ld	s1,0(a1)
   12070:	00377713          	andi	a4,a4,3
   12074:	0125b023          	sd	s2,0(a1)
   12078:	412484bb          	subw	s1,s1,s2
   1207c:	00000793          	li	a5,0
   12080:	00071463          	bnez	a4,12088 <__sflush_r+0x16c>
   12084:	0205a783          	lw	a5,32(a1)
   12088:	00f42623          	sw	a5,12(s0)
   1208c:	00904863          	bgtz	s1,1209c <__sflush_r+0x180>
   12090:	0640006f          	j	120f4 <__sflush_r+0x1d8>
   12094:	00a90933          	add	s2,s2,a0
   12098:	04905e63          	blez	s1,120f4 <__sflush_r+0x1d8>
   1209c:	04043783          	ld	a5,64(s0)
   120a0:	03043583          	ld	a1,48(s0)
   120a4:	00048693          	mv	a3,s1
   120a8:	00090613          	mv	a2,s2
   120ac:	00098513          	mv	a0,s3
   120b0:	000780e7          	jalr	a5
   120b4:	40a484bb          	subw	s1,s1,a0
   120b8:	fca04ee3          	bgtz	a0,12094 <__sflush_r+0x178>
   120bc:	01041783          	lh	a5,16(s0)
   120c0:	01013903          	ld	s2,16(sp)
   120c4:	0407e793          	ori	a5,a5,64
   120c8:	02813083          	ld	ra,40(sp)
   120cc:	00f41823          	sh	a5,16(s0)
   120d0:	02013403          	ld	s0,32(sp)
   120d4:	01813483          	ld	s1,24(sp)
   120d8:	00813983          	ld	s3,8(sp)
   120dc:	fff00513          	li	a0,-1
   120e0:	03010113          	addi	sp,sp,48
   120e4:	00008067          	ret
   120e8:	0705a683          	lw	a3,112(a1)
   120ec:	e6d046e3          	bgtz	a3,11f58 <__sflush_r+0x3c>
   120f0:	f55ff06f          	j	12044 <__sflush_r+0x128>
   120f4:	01813483          	ld	s1,24(sp)
   120f8:	01013903          	ld	s2,16(sp)
   120fc:	f49ff06f          	j	12044 <__sflush_r+0x128>
   12100:	09043603          	ld	a2,144(s0)
   12104:	e99ff06f          	j	11f9c <__sflush_r+0x80>
   12108:	01843683          	ld	a3,24(s0)
   1210c:	fffff737          	lui	a4,0xfffff
   12110:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   12114:	00e7f733          	and	a4,a5,a4
   12118:	00e41823          	sh	a4,16(s0)
   1211c:	00042423          	sw	zero,8(s0)
   12120:	00d43023          	sd	a3,0(s0)
   12124:	03379713          	slli	a4,a5,0x33
   12128:	ee075ce3          	bgez	a4,12020 <__sflush_r+0x104>
   1212c:	05843583          	ld	a1,88(s0)
   12130:	08a43823          	sd	a0,144(s0)
   12134:	0099a023          	sw	s1,0(s3)
   12138:	ee059ae3          	bnez	a1,1202c <__sflush_r+0x110>
   1213c:	01813483          	ld	s1,24(sp)
   12140:	f05ff06f          	j	12044 <__sflush_r+0x128>
   12144:	0009a783          	lw	a5,0(s3)
   12148:	e40786e3          	beqz	a5,11f94 <__sflush_r+0x78>
   1214c:	01d00713          	li	a4,29
   12150:	00e78c63          	beq	a5,a4,12168 <__sflush_r+0x24c>
   12154:	01600713          	li	a4,22
   12158:	00e78863          	beq	a5,a4,12168 <__sflush_r+0x24c>
   1215c:	01041783          	lh	a5,16(s0)
   12160:	0407e793          	ori	a5,a5,64
   12164:	f65ff06f          	j	120c8 <__sflush_r+0x1ac>
   12168:	0099a023          	sw	s1,0(s3)
   1216c:	01813483          	ld	s1,24(sp)
   12170:	ed5ff06f          	j	12044 <__sflush_r+0x128>

0000000000012174 <_fflush_r>:
   12174:	fe010113          	addi	sp,sp,-32
   12178:	00813823          	sd	s0,16(sp)
   1217c:	00113c23          	sd	ra,24(sp)
   12180:	00050413          	mv	s0,a0
   12184:	00050663          	beqz	a0,12190 <_fflush_r+0x1c>
   12188:	04853783          	ld	a5,72(a0)
   1218c:	02078a63          	beqz	a5,121c0 <_fflush_r+0x4c>
   12190:	01059783          	lh	a5,16(a1)
   12194:	00079c63          	bnez	a5,121ac <_fflush_r+0x38>
   12198:	01813083          	ld	ra,24(sp)
   1219c:	01013403          	ld	s0,16(sp)
   121a0:	00000513          	li	a0,0
   121a4:	02010113          	addi	sp,sp,32
   121a8:	00008067          	ret
   121ac:	00040513          	mv	a0,s0
   121b0:	01013403          	ld	s0,16(sp)
   121b4:	01813083          	ld	ra,24(sp)
   121b8:	02010113          	addi	sp,sp,32
   121bc:	d61ff06f          	j	11f1c <__sflush_r>
   121c0:	00b13423          	sd	a1,8(sp)
   121c4:	fd8fe0ef          	jal	1099c <__sinit>
   121c8:	00813583          	ld	a1,8(sp)
   121cc:	fc5ff06f          	j	12190 <_fflush_r+0x1c>

00000000000121d0 <fflush>:
   121d0:	06050063          	beqz	a0,12230 <fflush+0x60>
   121d4:	00050593          	mv	a1,a0
   121d8:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   121dc:	00050663          	beqz	a0,121e8 <fflush+0x18>
   121e0:	04853783          	ld	a5,72(a0)
   121e4:	00078c63          	beqz	a5,121fc <fflush+0x2c>
   121e8:	01059783          	lh	a5,16(a1)
   121ec:	00079663          	bnez	a5,121f8 <fflush+0x28>
   121f0:	00000513          	li	a0,0
   121f4:	00008067          	ret
   121f8:	d25ff06f          	j	11f1c <__sflush_r>
   121fc:	fe010113          	addi	sp,sp,-32
   12200:	00b13423          	sd	a1,8(sp)
   12204:	00a13023          	sd	a0,0(sp)
   12208:	00113c23          	sd	ra,24(sp)
   1220c:	f90fe0ef          	jal	1099c <__sinit>
   12210:	00813583          	ld	a1,8(sp)
   12214:	00013503          	ld	a0,0(sp)
   12218:	01059783          	lh	a5,16(a1)
   1221c:	02079863          	bnez	a5,1224c <fflush+0x7c>
   12220:	01813083          	ld	ra,24(sp)
   12224:	00000513          	li	a0,0
   12228:	02010113          	addi	sp,sp,32
   1222c:	00008067          	ret
   12230:	00013637          	lui	a2,0x13
   12234:	000125b7          	lui	a1,0x12
   12238:	00013537          	lui	a0,0x13
   1223c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   12240:	17458593          	addi	a1,a1,372 # 12174 <_fflush_r>
   12244:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12248:	fb0fe06f          	j	109f8 <_fwalk_sglue>
   1224c:	01813083          	ld	ra,24(sp)
   12250:	02010113          	addi	sp,sp,32
   12254:	cc9ff06f          	j	11f1c <__sflush_r>

0000000000012258 <_sbrk_r>:
   12258:	fe010113          	addi	sp,sp,-32
   1225c:	00813823          	sd	s0,16(sp)
   12260:	00913423          	sd	s1,8(sp)
   12264:	00050413          	mv	s0,a0
   12268:	00058513          	mv	a0,a1
   1226c:	00113c23          	sd	ra,24(sp)
   12270:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12274:	238000ef          	jal	124ac <_sbrk>
   12278:	fff00793          	li	a5,-1
   1227c:	00f50c63          	beq	a0,a5,12294 <_sbrk_r+0x3c>
   12280:	01813083          	ld	ra,24(sp)
   12284:	01013403          	ld	s0,16(sp)
   12288:	00813483          	ld	s1,8(sp)
   1228c:	02010113          	addi	sp,sp,32
   12290:	00008067          	ret
   12294:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12298:	fe0784e3          	beqz	a5,12280 <_sbrk_r+0x28>
   1229c:	01813083          	ld	ra,24(sp)
   122a0:	00f42023          	sw	a5,0(s0)
   122a4:	01013403          	ld	s0,16(sp)
   122a8:	00813483          	ld	s1,8(sp)
   122ac:	02010113          	addi	sp,sp,32
   122b0:	00008067          	ret

00000000000122b4 <__libc_fini_array>:
   122b4:	fe010113          	addi	sp,sp,-32
   122b8:	00813823          	sd	s0,16(sp)
   122bc:	000137b7          	lui	a5,0x13
   122c0:	00013437          	lui	s0,0x13
   122c4:	01840413          	addi	s0,s0,24 # 13018 <__sglue>
   122c8:	01078793          	addi	a5,a5,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   122cc:	40f40433          	sub	s0,s0,a5
   122d0:	00913423          	sd	s1,8(sp)
   122d4:	00113c23          	sd	ra,24(sp)
   122d8:	40345493          	srai	s1,s0,0x3
   122dc:	02048063          	beqz	s1,122fc <__libc_fini_array+0x48>
   122e0:	ff840413          	addi	s0,s0,-8
   122e4:	00f40433          	add	s0,s0,a5
   122e8:	00043783          	ld	a5,0(s0)
   122ec:	fff48493          	addi	s1,s1,-1
   122f0:	ff840413          	addi	s0,s0,-8
   122f4:	000780e7          	jalr	a5
   122f8:	fe0498e3          	bnez	s1,122e8 <__libc_fini_array+0x34>
   122fc:	01813083          	ld	ra,24(sp)
   12300:	01013403          	ld	s0,16(sp)
   12304:	00813483          	ld	s1,8(sp)
   12308:	02010113          	addi	sp,sp,32
   1230c:	00008067          	ret

0000000000012310 <__register_exitproc>:
   12310:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12314:	04078e63          	beqz	a5,12370 <__register_exitproc+0x60>
   12318:	0087a703          	lw	a4,8(a5)
   1231c:	01f00813          	li	a6,31
   12320:	08e84463          	blt	a6,a4,123a8 <__register_exitproc+0x98>
   12324:	02050863          	beqz	a0,12354 <__register_exitproc+0x44>
   12328:	00371813          	slli	a6,a4,0x3
   1232c:	01078833          	add	a6,a5,a6
   12330:	10c83823          	sd	a2,272(a6)
   12334:	3107a883          	lw	a7,784(a5)
   12338:	00100613          	li	a2,1
   1233c:	00e6163b          	sllw	a2,a2,a4
   12340:	00c8e8b3          	or	a7,a7,a2
   12344:	3117a823          	sw	a7,784(a5)
   12348:	20d83823          	sd	a3,528(a6)
   1234c:	00200693          	li	a3,2
   12350:	02d50863          	beq	a0,a3,12380 <__register_exitproc+0x70>
   12354:	00371693          	slli	a3,a4,0x3
   12358:	0017071b          	addiw	a4,a4,1
   1235c:	00d786b3          	add	a3,a5,a3
   12360:	00e7a423          	sw	a4,8(a5)
   12364:	00b6b823          	sd	a1,16(a3)
   12368:	00000513          	li	a0,0
   1236c:	00008067          	ret
   12370:	44818813          	addi	a6,gp,1096 # 13c60 <__atexit0>
   12374:	1b01b823          	sd	a6,432(gp) # 139c8 <__atexit>
   12378:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   1237c:	f9dff06f          	j	12318 <__register_exitproc+0x8>
   12380:	3147a683          	lw	a3,788(a5)
   12384:	00000513          	li	a0,0
   12388:	00d66633          	or	a2,a2,a3
   1238c:	00371693          	slli	a3,a4,0x3
   12390:	0017071b          	addiw	a4,a4,1
   12394:	30c7aa23          	sw	a2,788(a5)
   12398:	00d786b3          	add	a3,a5,a3
   1239c:	00e7a423          	sw	a4,8(a5)
   123a0:	00b6b823          	sd	a1,16(a3)
   123a4:	00008067          	ret
   123a8:	fff00513          	li	a0,-1
   123ac:	00008067          	ret

00000000000123b0 <_close>:
   123b0:	ff010113          	addi	sp,sp,-16
   123b4:	00113423          	sd	ra,8(sp)
   123b8:	00813023          	sd	s0,0(sp)
   123bc:	03900893          	li	a7,57
   123c0:	00000073          	ecall
   123c4:	00050413          	mv	s0,a0
   123c8:	00054c63          	bltz	a0,123e0 <_close+0x30>
   123cc:	0005051b          	sext.w	a0,a0
   123d0:	00813083          	ld	ra,8(sp)
   123d4:	00013403          	ld	s0,0(sp)
   123d8:	01010113          	addi	sp,sp,16
   123dc:	00008067          	ret
   123e0:	188000ef          	jal	12568 <__errno>
   123e4:	4080043b          	negw	s0,s0
   123e8:	00852023          	sw	s0,0(a0)
   123ec:	fff00513          	li	a0,-1
   123f0:	fe1ff06f          	j	123d0 <_close+0x20>

00000000000123f4 <_exit>:
   123f4:	05d00893          	li	a7,93
   123f8:	00000073          	ecall
   123fc:	00054463          	bltz	a0,12404 <_exit+0x10>
   12400:	0000006f          	j	12400 <_exit+0xc>
   12404:	ff010113          	addi	sp,sp,-16
   12408:	00813023          	sd	s0,0(sp)
   1240c:	00050413          	mv	s0,a0
   12410:	00113423          	sd	ra,8(sp)
   12414:	4080043b          	negw	s0,s0
   12418:	150000ef          	jal	12568 <__errno>
   1241c:	00852023          	sw	s0,0(a0)
   12420:	0000006f          	j	12420 <_exit+0x2c>

0000000000012424 <_lseek>:
   12424:	ff010113          	addi	sp,sp,-16
   12428:	00113423          	sd	ra,8(sp)
   1242c:	00813023          	sd	s0,0(sp)
   12430:	03e00893          	li	a7,62
   12434:	00000073          	ecall
   12438:	00050413          	mv	s0,a0
   1243c:	00054c63          	bltz	a0,12454 <_lseek+0x30>
   12440:	00813083          	ld	ra,8(sp)
   12444:	00040513          	mv	a0,s0
   12448:	00013403          	ld	s0,0(sp)
   1244c:	01010113          	addi	sp,sp,16
   12450:	00008067          	ret
   12454:	4080043b          	negw	s0,s0
   12458:	110000ef          	jal	12568 <__errno>
   1245c:	00852023          	sw	s0,0(a0)
   12460:	fff00413          	li	s0,-1
   12464:	fddff06f          	j	12440 <_lseek+0x1c>

0000000000012468 <_read>:
   12468:	ff010113          	addi	sp,sp,-16
   1246c:	00113423          	sd	ra,8(sp)
   12470:	00813023          	sd	s0,0(sp)
   12474:	03f00893          	li	a7,63
   12478:	00000073          	ecall
   1247c:	00050413          	mv	s0,a0
   12480:	00054c63          	bltz	a0,12498 <_read+0x30>
   12484:	00813083          	ld	ra,8(sp)
   12488:	00040513          	mv	a0,s0
   1248c:	00013403          	ld	s0,0(sp)
   12490:	01010113          	addi	sp,sp,16
   12494:	00008067          	ret
   12498:	4080043b          	negw	s0,s0
   1249c:	0cc000ef          	jal	12568 <__errno>
   124a0:	00852023          	sw	s0,0(a0)
   124a4:	fff00413          	li	s0,-1
   124a8:	fddff06f          	j	12484 <_read+0x1c>

00000000000124ac <_sbrk>:
   124ac:	1d01b703          	ld	a4,464(gp) # 139e8 <heap_end.0>
   124b0:	ff010113          	addi	sp,sp,-16
   124b4:	00113423          	sd	ra,8(sp)
   124b8:	00050793          	mv	a5,a0
   124bc:	02071063          	bnez	a4,124dc <_sbrk+0x30>
   124c0:	0d600893          	li	a7,214
   124c4:	00000513          	li	a0,0
   124c8:	00000073          	ecall
   124cc:	fff00613          	li	a2,-1
   124d0:	00050713          	mv	a4,a0
   124d4:	02c50a63          	beq	a0,a2,12508 <_sbrk+0x5c>
   124d8:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   124dc:	00e78533          	add	a0,a5,a4
   124e0:	0d600893          	li	a7,214
   124e4:	00000073          	ecall
   124e8:	1d01b703          	ld	a4,464(gp) # 139e8 <heap_end.0>
   124ec:	00e787b3          	add	a5,a5,a4
   124f0:	00f51c63          	bne	a0,a5,12508 <_sbrk+0x5c>
   124f4:	00813083          	ld	ra,8(sp)
   124f8:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   124fc:	00070513          	mv	a0,a4
   12500:	01010113          	addi	sp,sp,16
   12504:	00008067          	ret
   12508:	060000ef          	jal	12568 <__errno>
   1250c:	00813083          	ld	ra,8(sp)
   12510:	00c00793          	li	a5,12
   12514:	00f52023          	sw	a5,0(a0)
   12518:	fff00513          	li	a0,-1
   1251c:	01010113          	addi	sp,sp,16
   12520:	00008067          	ret

0000000000012524 <_write>:
   12524:	ff010113          	addi	sp,sp,-16
   12528:	00113423          	sd	ra,8(sp)
   1252c:	00813023          	sd	s0,0(sp)
   12530:	04000893          	li	a7,64
   12534:	00000073          	ecall
   12538:	00050413          	mv	s0,a0
   1253c:	00054c63          	bltz	a0,12554 <_write+0x30>
   12540:	00813083          	ld	ra,8(sp)
   12544:	00040513          	mv	a0,s0
   12548:	00013403          	ld	s0,0(sp)
   1254c:	01010113          	addi	sp,sp,16
   12550:	00008067          	ret
   12554:	4080043b          	negw	s0,s0
   12558:	010000ef          	jal	12568 <__errno>
   1255c:	00852023          	sw	s0,0(a0)
   12560:	fff00413          	li	s0,-1
   12564:	fddff06f          	j	12540 <_write+0x1c>

0000000000012568 <__errno>:
   12568:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   1256c:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012570 <__EH_FRAME_BEGIN__>:
   12570:	0000                	.insn	2, 0x0000
	...

Disassembly of section .init_array:

0000000000013000 <__init_array_start>:
   13000:	014c                	.insn	2, 0x014c
   13002:	0001                	.insn	2, 0x0001
   13004:	0000                	.insn	2, 0x0000
	...

0000000000013008 <__frame_dummy_init_array_entry>:
   13008:	01fc                	.insn	2, 0x01fc
   1300a:	0001                	.insn	2, 0x0001
   1300c:	0000                	.insn	2, 0x0000
	...

Disassembly of section .fini_array:

0000000000013010 <__do_global_dtors_aux_fini_array_entry>:
   13010:	01b8                	.insn	2, 0x01b8
   13012:	0001                	.insn	2, 0x0001
   13014:	0000                	.insn	2, 0x0000
	...

Disassembly of section .data:

0000000000013018 <__sglue>:
	...
   13020:	00000003          	lb	zero,0(zero) # 0 <exit-0x10120>
   13024:	0000                	.insn	2, 0x0000
   13026:	0000                	.insn	2, 0x0000
   13028:	3a28                	.insn	2, 0x3a28
   1302a:	0001                	.insn	2, 0x0001
   1302c:	0000                	.insn	2, 0x0000
	...

0000000000013030 <_impure_data>:
	...
   13038:	3a28                	.insn	2, 0x3a28
   1303a:	0001                	.insn	2, 0x0001
   1303c:	0000                	.insn	2, 0x0000
   1303e:	0000                	.insn	2, 0x0000
   13040:	3ad8                	.insn	2, 0x3ad8
   13042:	0001                	.insn	2, 0x0001
   13044:	0000                	.insn	2, 0x0000
   13046:	0000                	.insn	2, 0x0000
   13048:	3b88                	.insn	2, 0x3b88
   1304a:	0001                	.insn	2, 0x0001
	...
   13100:	0001                	.insn	2, 0x0001
   13102:	0000                	.insn	2, 0x0000
   13104:	0000                	.insn	2, 0x0000
   13106:	0000                	.insn	2, 0x0000
   13108:	330e                	.insn	2, 0x330e
   1310a:	abcd                	.insn	2, 0xabcd
   1310c:	1234                	.insn	2, 0x1234
   1310e:	e66d                	.insn	2, 0xe66d
   13110:	deec                	.insn	2, 0xdeec
   13112:	0005                	.insn	2, 0x0005
   13114:	0000000b          	.insn	4, 0x000b
	...

0000000000013188 <__malloc_av_>:
	...
   13198:	3188                	.insn	2, 0x3188
   1319a:	0001                	.insn	2, 0x0001
   1319c:	0000                	.insn	2, 0x0000
   1319e:	0000                	.insn	2, 0x0000
   131a0:	3188                	.insn	2, 0x3188
   131a2:	0001                	.insn	2, 0x0001
   131a4:	0000                	.insn	2, 0x0000
   131a6:	0000                	.insn	2, 0x0000
   131a8:	3198                	.insn	2, 0x3198
   131aa:	0001                	.insn	2, 0x0001
   131ac:	0000                	.insn	2, 0x0000
   131ae:	0000                	.insn	2, 0x0000
   131b0:	3198                	.insn	2, 0x3198
   131b2:	0001                	.insn	2, 0x0001
   131b4:	0000                	.insn	2, 0x0000
   131b6:	0000                	.insn	2, 0x0000
   131b8:	31a8                	.insn	2, 0x31a8
   131ba:	0001                	.insn	2, 0x0001
   131bc:	0000                	.insn	2, 0x0000
   131be:	0000                	.insn	2, 0x0000
   131c0:	31a8                	.insn	2, 0x31a8
   131c2:	0001                	.insn	2, 0x0001
   131c4:	0000                	.insn	2, 0x0000
   131c6:	0000                	.insn	2, 0x0000
   131c8:	31b8                	.insn	2, 0x31b8
   131ca:	0001                	.insn	2, 0x0001
   131cc:	0000                	.insn	2, 0x0000
   131ce:	0000                	.insn	2, 0x0000
   131d0:	31b8                	.insn	2, 0x31b8
   131d2:	0001                	.insn	2, 0x0001
   131d4:	0000                	.insn	2, 0x0000
   131d6:	0000                	.insn	2, 0x0000
   131d8:	31c8                	.insn	2, 0x31c8
   131da:	0001                	.insn	2, 0x0001
   131dc:	0000                	.insn	2, 0x0000
   131de:	0000                	.insn	2, 0x0000
   131e0:	31c8                	.insn	2, 0x31c8
   131e2:	0001                	.insn	2, 0x0001
   131e4:	0000                	.insn	2, 0x0000
   131e6:	0000                	.insn	2, 0x0000
   131e8:	31d8                	.insn	2, 0x31d8
   131ea:	0001                	.insn	2, 0x0001
   131ec:	0000                	.insn	2, 0x0000
   131ee:	0000                	.insn	2, 0x0000
   131f0:	31d8                	.insn	2, 0x31d8
   131f2:	0001                	.insn	2, 0x0001
   131f4:	0000                	.insn	2, 0x0000
   131f6:	0000                	.insn	2, 0x0000
   131f8:	31e8                	.insn	2, 0x31e8
   131fa:	0001                	.insn	2, 0x0001
   131fc:	0000                	.insn	2, 0x0000
   131fe:	0000                	.insn	2, 0x0000
   13200:	31e8                	.insn	2, 0x31e8
   13202:	0001                	.insn	2, 0x0001
   13204:	0000                	.insn	2, 0x0000
   13206:	0000                	.insn	2, 0x0000
   13208:	31f8                	.insn	2, 0x31f8
   1320a:	0001                	.insn	2, 0x0001
   1320c:	0000                	.insn	2, 0x0000
   1320e:	0000                	.insn	2, 0x0000
   13210:	31f8                	.insn	2, 0x31f8
   13212:	0001                	.insn	2, 0x0001
   13214:	0000                	.insn	2, 0x0000
   13216:	0000                	.insn	2, 0x0000
   13218:	3208                	.insn	2, 0x3208
   1321a:	0001                	.insn	2, 0x0001
   1321c:	0000                	.insn	2, 0x0000
   1321e:	0000                	.insn	2, 0x0000
   13220:	3208                	.insn	2, 0x3208
   13222:	0001                	.insn	2, 0x0001
   13224:	0000                	.insn	2, 0x0000
   13226:	0000                	.insn	2, 0x0000
   13228:	3218                	.insn	2, 0x3218
   1322a:	0001                	.insn	2, 0x0001
   1322c:	0000                	.insn	2, 0x0000
   1322e:	0000                	.insn	2, 0x0000
   13230:	3218                	.insn	2, 0x3218
   13232:	0001                	.insn	2, 0x0001
   13234:	0000                	.insn	2, 0x0000
   13236:	0000                	.insn	2, 0x0000
   13238:	3228                	.insn	2, 0x3228
   1323a:	0001                	.insn	2, 0x0001
   1323c:	0000                	.insn	2, 0x0000
   1323e:	0000                	.insn	2, 0x0000
   13240:	3228                	.insn	2, 0x3228
   13242:	0001                	.insn	2, 0x0001
   13244:	0000                	.insn	2, 0x0000
   13246:	0000                	.insn	2, 0x0000
   13248:	3238                	.insn	2, 0x3238
   1324a:	0001                	.insn	2, 0x0001
   1324c:	0000                	.insn	2, 0x0000
   1324e:	0000                	.insn	2, 0x0000
   13250:	3238                	.insn	2, 0x3238
   13252:	0001                	.insn	2, 0x0001
   13254:	0000                	.insn	2, 0x0000
   13256:	0000                	.insn	2, 0x0000
   13258:	3248                	.insn	2, 0x3248
   1325a:	0001                	.insn	2, 0x0001
   1325c:	0000                	.insn	2, 0x0000
   1325e:	0000                	.insn	2, 0x0000
   13260:	3248                	.insn	2, 0x3248
   13262:	0001                	.insn	2, 0x0001
   13264:	0000                	.insn	2, 0x0000
   13266:	0000                	.insn	2, 0x0000
   13268:	3258                	.insn	2, 0x3258
   1326a:	0001                	.insn	2, 0x0001
   1326c:	0000                	.insn	2, 0x0000
   1326e:	0000                	.insn	2, 0x0000
   13270:	3258                	.insn	2, 0x3258
   13272:	0001                	.insn	2, 0x0001
   13274:	0000                	.insn	2, 0x0000
   13276:	0000                	.insn	2, 0x0000
   13278:	3268                	.insn	2, 0x3268
   1327a:	0001                	.insn	2, 0x0001
   1327c:	0000                	.insn	2, 0x0000
   1327e:	0000                	.insn	2, 0x0000
   13280:	3268                	.insn	2, 0x3268
   13282:	0001                	.insn	2, 0x0001
   13284:	0000                	.insn	2, 0x0000
   13286:	0000                	.insn	2, 0x0000
   13288:	3278                	.insn	2, 0x3278
   1328a:	0001                	.insn	2, 0x0001
   1328c:	0000                	.insn	2, 0x0000
   1328e:	0000                	.insn	2, 0x0000
   13290:	3278                	.insn	2, 0x3278
   13292:	0001                	.insn	2, 0x0001
   13294:	0000                	.insn	2, 0x0000
   13296:	0000                	.insn	2, 0x0000
   13298:	3288                	.insn	2, 0x3288
   1329a:	0001                	.insn	2, 0x0001
   1329c:	0000                	.insn	2, 0x0000
   1329e:	0000                	.insn	2, 0x0000
   132a0:	3288                	.insn	2, 0x3288
   132a2:	0001                	.insn	2, 0x0001
   132a4:	0000                	.insn	2, 0x0000
   132a6:	0000                	.insn	2, 0x0000
   132a8:	3298                	.insn	2, 0x3298
   132aa:	0001                	.insn	2, 0x0001
   132ac:	0000                	.insn	2, 0x0000
   132ae:	0000                	.insn	2, 0x0000
   132b0:	3298                	.insn	2, 0x3298
   132b2:	0001                	.insn	2, 0x0001
   132b4:	0000                	.insn	2, 0x0000
   132b6:	0000                	.insn	2, 0x0000
   132b8:	32a8                	.insn	2, 0x32a8
   132ba:	0001                	.insn	2, 0x0001
   132bc:	0000                	.insn	2, 0x0000
   132be:	0000                	.insn	2, 0x0000
   132c0:	32a8                	.insn	2, 0x32a8
   132c2:	0001                	.insn	2, 0x0001
   132c4:	0000                	.insn	2, 0x0000
   132c6:	0000                	.insn	2, 0x0000
   132c8:	32b8                	.insn	2, 0x32b8
   132ca:	0001                	.insn	2, 0x0001
   132cc:	0000                	.insn	2, 0x0000
   132ce:	0000                	.insn	2, 0x0000
   132d0:	32b8                	.insn	2, 0x32b8
   132d2:	0001                	.insn	2, 0x0001
   132d4:	0000                	.insn	2, 0x0000
   132d6:	0000                	.insn	2, 0x0000
   132d8:	32c8                	.insn	2, 0x32c8
   132da:	0001                	.insn	2, 0x0001
   132dc:	0000                	.insn	2, 0x0000
   132de:	0000                	.insn	2, 0x0000
   132e0:	32c8                	.insn	2, 0x32c8
   132e2:	0001                	.insn	2, 0x0001
   132e4:	0000                	.insn	2, 0x0000
   132e6:	0000                	.insn	2, 0x0000
   132e8:	32d8                	.insn	2, 0x32d8
   132ea:	0001                	.insn	2, 0x0001
   132ec:	0000                	.insn	2, 0x0000
   132ee:	0000                	.insn	2, 0x0000
   132f0:	32d8                	.insn	2, 0x32d8
   132f2:	0001                	.insn	2, 0x0001
   132f4:	0000                	.insn	2, 0x0000
   132f6:	0000                	.insn	2, 0x0000
   132f8:	32e8                	.insn	2, 0x32e8
   132fa:	0001                	.insn	2, 0x0001
   132fc:	0000                	.insn	2, 0x0000
   132fe:	0000                	.insn	2, 0x0000
   13300:	32e8                	.insn	2, 0x32e8
   13302:	0001                	.insn	2, 0x0001
   13304:	0000                	.insn	2, 0x0000
   13306:	0000                	.insn	2, 0x0000
   13308:	32f8                	.insn	2, 0x32f8
   1330a:	0001                	.insn	2, 0x0001
   1330c:	0000                	.insn	2, 0x0000
   1330e:	0000                	.insn	2, 0x0000
   13310:	32f8                	.insn	2, 0x32f8
   13312:	0001                	.insn	2, 0x0001
   13314:	0000                	.insn	2, 0x0000
   13316:	0000                	.insn	2, 0x0000
   13318:	3308                	.insn	2, 0x3308
   1331a:	0001                	.insn	2, 0x0001
   1331c:	0000                	.insn	2, 0x0000
   1331e:	0000                	.insn	2, 0x0000
   13320:	3308                	.insn	2, 0x3308
   13322:	0001                	.insn	2, 0x0001
   13324:	0000                	.insn	2, 0x0000
   13326:	0000                	.insn	2, 0x0000
   13328:	3318                	.insn	2, 0x3318
   1332a:	0001                	.insn	2, 0x0001
   1332c:	0000                	.insn	2, 0x0000
   1332e:	0000                	.insn	2, 0x0000
   13330:	3318                	.insn	2, 0x3318
   13332:	0001                	.insn	2, 0x0001
   13334:	0000                	.insn	2, 0x0000
   13336:	0000                	.insn	2, 0x0000
   13338:	3328                	.insn	2, 0x3328
   1333a:	0001                	.insn	2, 0x0001
   1333c:	0000                	.insn	2, 0x0000
   1333e:	0000                	.insn	2, 0x0000
   13340:	3328                	.insn	2, 0x3328
   13342:	0001                	.insn	2, 0x0001
   13344:	0000                	.insn	2, 0x0000
   13346:	0000                	.insn	2, 0x0000
   13348:	3338                	.insn	2, 0x3338
   1334a:	0001                	.insn	2, 0x0001
   1334c:	0000                	.insn	2, 0x0000
   1334e:	0000                	.insn	2, 0x0000
   13350:	3338                	.insn	2, 0x3338
   13352:	0001                	.insn	2, 0x0001
   13354:	0000                	.insn	2, 0x0000
   13356:	0000                	.insn	2, 0x0000
   13358:	3348                	.insn	2, 0x3348
   1335a:	0001                	.insn	2, 0x0001
   1335c:	0000                	.insn	2, 0x0000
   1335e:	0000                	.insn	2, 0x0000
   13360:	3348                	.insn	2, 0x3348
   13362:	0001                	.insn	2, 0x0001
   13364:	0000                	.insn	2, 0x0000
   13366:	0000                	.insn	2, 0x0000
   13368:	3358                	.insn	2, 0x3358
   1336a:	0001                	.insn	2, 0x0001
   1336c:	0000                	.insn	2, 0x0000
   1336e:	0000                	.insn	2, 0x0000
   13370:	3358                	.insn	2, 0x3358
   13372:	0001                	.insn	2, 0x0001
   13374:	0000                	.insn	2, 0x0000
   13376:	0000                	.insn	2, 0x0000
   13378:	3368                	.insn	2, 0x3368
   1337a:	0001                	.insn	2, 0x0001
   1337c:	0000                	.insn	2, 0x0000
   1337e:	0000                	.insn	2, 0x0000
   13380:	3368                	.insn	2, 0x3368
   13382:	0001                	.insn	2, 0x0001
   13384:	0000                	.insn	2, 0x0000
   13386:	0000                	.insn	2, 0x0000
   13388:	3378                	.insn	2, 0x3378
   1338a:	0001                	.insn	2, 0x0001
   1338c:	0000                	.insn	2, 0x0000
   1338e:	0000                	.insn	2, 0x0000
   13390:	3378                	.insn	2, 0x3378
   13392:	0001                	.insn	2, 0x0001
   13394:	0000                	.insn	2, 0x0000
   13396:	0000                	.insn	2, 0x0000
   13398:	3388                	.insn	2, 0x3388
   1339a:	0001                	.insn	2, 0x0001
   1339c:	0000                	.insn	2, 0x0000
   1339e:	0000                	.insn	2, 0x0000
   133a0:	3388                	.insn	2, 0x3388
   133a2:	0001                	.insn	2, 0x0001
   133a4:	0000                	.insn	2, 0x0000
   133a6:	0000                	.insn	2, 0x0000
   133a8:	3398                	.insn	2, 0x3398
   133aa:	0001                	.insn	2, 0x0001
   133ac:	0000                	.insn	2, 0x0000
   133ae:	0000                	.insn	2, 0x0000
   133b0:	3398                	.insn	2, 0x3398
   133b2:	0001                	.insn	2, 0x0001
   133b4:	0000                	.insn	2, 0x0000
   133b6:	0000                	.insn	2, 0x0000
   133b8:	33a8                	.insn	2, 0x33a8
   133ba:	0001                	.insn	2, 0x0001
   133bc:	0000                	.insn	2, 0x0000
   133be:	0000                	.insn	2, 0x0000
   133c0:	33a8                	.insn	2, 0x33a8
   133c2:	0001                	.insn	2, 0x0001
   133c4:	0000                	.insn	2, 0x0000
   133c6:	0000                	.insn	2, 0x0000
   133c8:	33b8                	.insn	2, 0x33b8
   133ca:	0001                	.insn	2, 0x0001
   133cc:	0000                	.insn	2, 0x0000
   133ce:	0000                	.insn	2, 0x0000
   133d0:	33b8                	.insn	2, 0x33b8
   133d2:	0001                	.insn	2, 0x0001
   133d4:	0000                	.insn	2, 0x0000
   133d6:	0000                	.insn	2, 0x0000
   133d8:	33c8                	.insn	2, 0x33c8
   133da:	0001                	.insn	2, 0x0001
   133dc:	0000                	.insn	2, 0x0000
   133de:	0000                	.insn	2, 0x0000
   133e0:	33c8                	.insn	2, 0x33c8
   133e2:	0001                	.insn	2, 0x0001
   133e4:	0000                	.insn	2, 0x0000
   133e6:	0000                	.insn	2, 0x0000
   133e8:	33d8                	.insn	2, 0x33d8
   133ea:	0001                	.insn	2, 0x0001
   133ec:	0000                	.insn	2, 0x0000
   133ee:	0000                	.insn	2, 0x0000
   133f0:	33d8                	.insn	2, 0x33d8
   133f2:	0001                	.insn	2, 0x0001
   133f4:	0000                	.insn	2, 0x0000
   133f6:	0000                	.insn	2, 0x0000
   133f8:	33e8                	.insn	2, 0x33e8
   133fa:	0001                	.insn	2, 0x0001
   133fc:	0000                	.insn	2, 0x0000
   133fe:	0000                	.insn	2, 0x0000
   13400:	33e8                	.insn	2, 0x33e8
   13402:	0001                	.insn	2, 0x0001
   13404:	0000                	.insn	2, 0x0000
   13406:	0000                	.insn	2, 0x0000
   13408:	33f8                	.insn	2, 0x33f8
   1340a:	0001                	.insn	2, 0x0001
   1340c:	0000                	.insn	2, 0x0000
   1340e:	0000                	.insn	2, 0x0000
   13410:	33f8                	.insn	2, 0x33f8
   13412:	0001                	.insn	2, 0x0001
   13414:	0000                	.insn	2, 0x0000
   13416:	0000                	.insn	2, 0x0000
   13418:	3408                	.insn	2, 0x3408
   1341a:	0001                	.insn	2, 0x0001
   1341c:	0000                	.insn	2, 0x0000
   1341e:	0000                	.insn	2, 0x0000
   13420:	3408                	.insn	2, 0x3408
   13422:	0001                	.insn	2, 0x0001
   13424:	0000                	.insn	2, 0x0000
   13426:	0000                	.insn	2, 0x0000
   13428:	3418                	.insn	2, 0x3418
   1342a:	0001                	.insn	2, 0x0001
   1342c:	0000                	.insn	2, 0x0000
   1342e:	0000                	.insn	2, 0x0000
   13430:	3418                	.insn	2, 0x3418
   13432:	0001                	.insn	2, 0x0001
   13434:	0000                	.insn	2, 0x0000
   13436:	0000                	.insn	2, 0x0000
   13438:	3428                	.insn	2, 0x3428
   1343a:	0001                	.insn	2, 0x0001
   1343c:	0000                	.insn	2, 0x0000
   1343e:	0000                	.insn	2, 0x0000
   13440:	3428                	.insn	2, 0x3428
   13442:	0001                	.insn	2, 0x0001
   13444:	0000                	.insn	2, 0x0000
   13446:	0000                	.insn	2, 0x0000
   13448:	3438                	.insn	2, 0x3438
   1344a:	0001                	.insn	2, 0x0001
   1344c:	0000                	.insn	2, 0x0000
   1344e:	0000                	.insn	2, 0x0000
   13450:	3438                	.insn	2, 0x3438
   13452:	0001                	.insn	2, 0x0001
   13454:	0000                	.insn	2, 0x0000
   13456:	0000                	.insn	2, 0x0000
   13458:	3448                	.insn	2, 0x3448
   1345a:	0001                	.insn	2, 0x0001
   1345c:	0000                	.insn	2, 0x0000
   1345e:	0000                	.insn	2, 0x0000
   13460:	3448                	.insn	2, 0x3448
   13462:	0001                	.insn	2, 0x0001
   13464:	0000                	.insn	2, 0x0000
   13466:	0000                	.insn	2, 0x0000
   13468:	3458                	.insn	2, 0x3458
   1346a:	0001                	.insn	2, 0x0001
   1346c:	0000                	.insn	2, 0x0000
   1346e:	0000                	.insn	2, 0x0000
   13470:	3458                	.insn	2, 0x3458
   13472:	0001                	.insn	2, 0x0001
   13474:	0000                	.insn	2, 0x0000
   13476:	0000                	.insn	2, 0x0000
   13478:	3468                	.insn	2, 0x3468
   1347a:	0001                	.insn	2, 0x0001
   1347c:	0000                	.insn	2, 0x0000
   1347e:	0000                	.insn	2, 0x0000
   13480:	3468                	.insn	2, 0x3468
   13482:	0001                	.insn	2, 0x0001
   13484:	0000                	.insn	2, 0x0000
   13486:	0000                	.insn	2, 0x0000
   13488:	3478                	.insn	2, 0x3478
   1348a:	0001                	.insn	2, 0x0001
   1348c:	0000                	.insn	2, 0x0000
   1348e:	0000                	.insn	2, 0x0000
   13490:	3478                	.insn	2, 0x3478
   13492:	0001                	.insn	2, 0x0001
   13494:	0000                	.insn	2, 0x0000
   13496:	0000                	.insn	2, 0x0000
   13498:	3488                	.insn	2, 0x3488
   1349a:	0001                	.insn	2, 0x0001
   1349c:	0000                	.insn	2, 0x0000
   1349e:	0000                	.insn	2, 0x0000
   134a0:	3488                	.insn	2, 0x3488
   134a2:	0001                	.insn	2, 0x0001
   134a4:	0000                	.insn	2, 0x0000
   134a6:	0000                	.insn	2, 0x0000
   134a8:	3498                	.insn	2, 0x3498
   134aa:	0001                	.insn	2, 0x0001
   134ac:	0000                	.insn	2, 0x0000
   134ae:	0000                	.insn	2, 0x0000
   134b0:	3498                	.insn	2, 0x3498
   134b2:	0001                	.insn	2, 0x0001
   134b4:	0000                	.insn	2, 0x0000
   134b6:	0000                	.insn	2, 0x0000
   134b8:	34a8                	.insn	2, 0x34a8
   134ba:	0001                	.insn	2, 0x0001
   134bc:	0000                	.insn	2, 0x0000
   134be:	0000                	.insn	2, 0x0000
   134c0:	34a8                	.insn	2, 0x34a8
   134c2:	0001                	.insn	2, 0x0001
   134c4:	0000                	.insn	2, 0x0000
   134c6:	0000                	.insn	2, 0x0000
   134c8:	34b8                	.insn	2, 0x34b8
   134ca:	0001                	.insn	2, 0x0001
   134cc:	0000                	.insn	2, 0x0000
   134ce:	0000                	.insn	2, 0x0000
   134d0:	34b8                	.insn	2, 0x34b8
   134d2:	0001                	.insn	2, 0x0001
   134d4:	0000                	.insn	2, 0x0000
   134d6:	0000                	.insn	2, 0x0000
   134d8:	34c8                	.insn	2, 0x34c8
   134da:	0001                	.insn	2, 0x0001
   134dc:	0000                	.insn	2, 0x0000
   134de:	0000                	.insn	2, 0x0000
   134e0:	34c8                	.insn	2, 0x34c8
   134e2:	0001                	.insn	2, 0x0001
   134e4:	0000                	.insn	2, 0x0000
   134e6:	0000                	.insn	2, 0x0000
   134e8:	34d8                	.insn	2, 0x34d8
   134ea:	0001                	.insn	2, 0x0001
   134ec:	0000                	.insn	2, 0x0000
   134ee:	0000                	.insn	2, 0x0000
   134f0:	34d8                	.insn	2, 0x34d8
   134f2:	0001                	.insn	2, 0x0001
   134f4:	0000                	.insn	2, 0x0000
   134f6:	0000                	.insn	2, 0x0000
   134f8:	34e8                	.insn	2, 0x34e8
   134fa:	0001                	.insn	2, 0x0001
   134fc:	0000                	.insn	2, 0x0000
   134fe:	0000                	.insn	2, 0x0000
   13500:	34e8                	.insn	2, 0x34e8
   13502:	0001                	.insn	2, 0x0001
   13504:	0000                	.insn	2, 0x0000
   13506:	0000                	.insn	2, 0x0000
   13508:	34f8                	.insn	2, 0x34f8
   1350a:	0001                	.insn	2, 0x0001
   1350c:	0000                	.insn	2, 0x0000
   1350e:	0000                	.insn	2, 0x0000
   13510:	34f8                	.insn	2, 0x34f8
   13512:	0001                	.insn	2, 0x0001
   13514:	0000                	.insn	2, 0x0000
   13516:	0000                	.insn	2, 0x0000
   13518:	3508                	.insn	2, 0x3508
   1351a:	0001                	.insn	2, 0x0001
   1351c:	0000                	.insn	2, 0x0000
   1351e:	0000                	.insn	2, 0x0000
   13520:	3508                	.insn	2, 0x3508
   13522:	0001                	.insn	2, 0x0001
   13524:	0000                	.insn	2, 0x0000
   13526:	0000                	.insn	2, 0x0000
   13528:	3518                	.insn	2, 0x3518
   1352a:	0001                	.insn	2, 0x0001
   1352c:	0000                	.insn	2, 0x0000
   1352e:	0000                	.insn	2, 0x0000
   13530:	3518                	.insn	2, 0x3518
   13532:	0001                	.insn	2, 0x0001
   13534:	0000                	.insn	2, 0x0000
   13536:	0000                	.insn	2, 0x0000
   13538:	3528                	.insn	2, 0x3528
   1353a:	0001                	.insn	2, 0x0001
   1353c:	0000                	.insn	2, 0x0000
   1353e:	0000                	.insn	2, 0x0000
   13540:	3528                	.insn	2, 0x3528
   13542:	0001                	.insn	2, 0x0001
   13544:	0000                	.insn	2, 0x0000
   13546:	0000                	.insn	2, 0x0000
   13548:	3538                	.insn	2, 0x3538
   1354a:	0001                	.insn	2, 0x0001
   1354c:	0000                	.insn	2, 0x0000
   1354e:	0000                	.insn	2, 0x0000
   13550:	3538                	.insn	2, 0x3538
   13552:	0001                	.insn	2, 0x0001
   13554:	0000                	.insn	2, 0x0000
   13556:	0000                	.insn	2, 0x0000
   13558:	3548                	.insn	2, 0x3548
   1355a:	0001                	.insn	2, 0x0001
   1355c:	0000                	.insn	2, 0x0000
   1355e:	0000                	.insn	2, 0x0000
   13560:	3548                	.insn	2, 0x3548
   13562:	0001                	.insn	2, 0x0001
   13564:	0000                	.insn	2, 0x0000
   13566:	0000                	.insn	2, 0x0000
   13568:	3558                	.insn	2, 0x3558
   1356a:	0001                	.insn	2, 0x0001
   1356c:	0000                	.insn	2, 0x0000
   1356e:	0000                	.insn	2, 0x0000
   13570:	3558                	.insn	2, 0x3558
   13572:	0001                	.insn	2, 0x0001
   13574:	0000                	.insn	2, 0x0000
   13576:	0000                	.insn	2, 0x0000
   13578:	3568                	.insn	2, 0x3568
   1357a:	0001                	.insn	2, 0x0001
   1357c:	0000                	.insn	2, 0x0000
   1357e:	0000                	.insn	2, 0x0000
   13580:	3568                	.insn	2, 0x3568
   13582:	0001                	.insn	2, 0x0001
   13584:	0000                	.insn	2, 0x0000
   13586:	0000                	.insn	2, 0x0000
   13588:	3578                	.insn	2, 0x3578
   1358a:	0001                	.insn	2, 0x0001
   1358c:	0000                	.insn	2, 0x0000
   1358e:	0000                	.insn	2, 0x0000
   13590:	3578                	.insn	2, 0x3578
   13592:	0001                	.insn	2, 0x0001
   13594:	0000                	.insn	2, 0x0000
   13596:	0000                	.insn	2, 0x0000
   13598:	3588                	.insn	2, 0x3588
   1359a:	0001                	.insn	2, 0x0001
   1359c:	0000                	.insn	2, 0x0000
   1359e:	0000                	.insn	2, 0x0000
   135a0:	3588                	.insn	2, 0x3588
   135a2:	0001                	.insn	2, 0x0001
   135a4:	0000                	.insn	2, 0x0000
   135a6:	0000                	.insn	2, 0x0000
   135a8:	3598                	.insn	2, 0x3598
   135aa:	0001                	.insn	2, 0x0001
   135ac:	0000                	.insn	2, 0x0000
   135ae:	0000                	.insn	2, 0x0000
   135b0:	3598                	.insn	2, 0x3598
   135b2:	0001                	.insn	2, 0x0001
   135b4:	0000                	.insn	2, 0x0000
   135b6:	0000                	.insn	2, 0x0000
   135b8:	35a8                	.insn	2, 0x35a8
   135ba:	0001                	.insn	2, 0x0001
   135bc:	0000                	.insn	2, 0x0000
   135be:	0000                	.insn	2, 0x0000
   135c0:	35a8                	.insn	2, 0x35a8
   135c2:	0001                	.insn	2, 0x0001
   135c4:	0000                	.insn	2, 0x0000
   135c6:	0000                	.insn	2, 0x0000
   135c8:	35b8                	.insn	2, 0x35b8
   135ca:	0001                	.insn	2, 0x0001
   135cc:	0000                	.insn	2, 0x0000
   135ce:	0000                	.insn	2, 0x0000
   135d0:	35b8                	.insn	2, 0x35b8
   135d2:	0001                	.insn	2, 0x0001
   135d4:	0000                	.insn	2, 0x0000
   135d6:	0000                	.insn	2, 0x0000
   135d8:	35c8                	.insn	2, 0x35c8
   135da:	0001                	.insn	2, 0x0001
   135dc:	0000                	.insn	2, 0x0000
   135de:	0000                	.insn	2, 0x0000
   135e0:	35c8                	.insn	2, 0x35c8
   135e2:	0001                	.insn	2, 0x0001
   135e4:	0000                	.insn	2, 0x0000
   135e6:	0000                	.insn	2, 0x0000
   135e8:	35d8                	.insn	2, 0x35d8
   135ea:	0001                	.insn	2, 0x0001
   135ec:	0000                	.insn	2, 0x0000
   135ee:	0000                	.insn	2, 0x0000
   135f0:	35d8                	.insn	2, 0x35d8
   135f2:	0001                	.insn	2, 0x0001
   135f4:	0000                	.insn	2, 0x0000
   135f6:	0000                	.insn	2, 0x0000
   135f8:	35e8                	.insn	2, 0x35e8
   135fa:	0001                	.insn	2, 0x0001
   135fc:	0000                	.insn	2, 0x0000
   135fe:	0000                	.insn	2, 0x0000
   13600:	35e8                	.insn	2, 0x35e8
   13602:	0001                	.insn	2, 0x0001
   13604:	0000                	.insn	2, 0x0000
   13606:	0000                	.insn	2, 0x0000
   13608:	35f8                	.insn	2, 0x35f8
   1360a:	0001                	.insn	2, 0x0001
   1360c:	0000                	.insn	2, 0x0000
   1360e:	0000                	.insn	2, 0x0000
   13610:	35f8                	.insn	2, 0x35f8
   13612:	0001                	.insn	2, 0x0001
   13614:	0000                	.insn	2, 0x0000
   13616:	0000                	.insn	2, 0x0000
   13618:	3608                	.insn	2, 0x3608
   1361a:	0001                	.insn	2, 0x0001
   1361c:	0000                	.insn	2, 0x0000
   1361e:	0000                	.insn	2, 0x0000
   13620:	3608                	.insn	2, 0x3608
   13622:	0001                	.insn	2, 0x0001
   13624:	0000                	.insn	2, 0x0000
   13626:	0000                	.insn	2, 0x0000
   13628:	3618                	.insn	2, 0x3618
   1362a:	0001                	.insn	2, 0x0001
   1362c:	0000                	.insn	2, 0x0000
   1362e:	0000                	.insn	2, 0x0000
   13630:	3618                	.insn	2, 0x3618
   13632:	0001                	.insn	2, 0x0001
   13634:	0000                	.insn	2, 0x0000
   13636:	0000                	.insn	2, 0x0000
   13638:	3628                	.insn	2, 0x3628
   1363a:	0001                	.insn	2, 0x0001
   1363c:	0000                	.insn	2, 0x0000
   1363e:	0000                	.insn	2, 0x0000
   13640:	3628                	.insn	2, 0x3628
   13642:	0001                	.insn	2, 0x0001
   13644:	0000                	.insn	2, 0x0000
   13646:	0000                	.insn	2, 0x0000
   13648:	3638                	.insn	2, 0x3638
   1364a:	0001                	.insn	2, 0x0001
   1364c:	0000                	.insn	2, 0x0000
   1364e:	0000                	.insn	2, 0x0000
   13650:	3638                	.insn	2, 0x3638
   13652:	0001                	.insn	2, 0x0001
   13654:	0000                	.insn	2, 0x0000
   13656:	0000                	.insn	2, 0x0000
   13658:	3648                	.insn	2, 0x3648
   1365a:	0001                	.insn	2, 0x0001
   1365c:	0000                	.insn	2, 0x0000
   1365e:	0000                	.insn	2, 0x0000
   13660:	3648                	.insn	2, 0x3648
   13662:	0001                	.insn	2, 0x0001
   13664:	0000                	.insn	2, 0x0000
   13666:	0000                	.insn	2, 0x0000
   13668:	3658                	.insn	2, 0x3658
   1366a:	0001                	.insn	2, 0x0001
   1366c:	0000                	.insn	2, 0x0000
   1366e:	0000                	.insn	2, 0x0000
   13670:	3658                	.insn	2, 0x3658
   13672:	0001                	.insn	2, 0x0001
   13674:	0000                	.insn	2, 0x0000
   13676:	0000                	.insn	2, 0x0000
   13678:	3668                	.insn	2, 0x3668
   1367a:	0001                	.insn	2, 0x0001
   1367c:	0000                	.insn	2, 0x0000
   1367e:	0000                	.insn	2, 0x0000
   13680:	3668                	.insn	2, 0x3668
   13682:	0001                	.insn	2, 0x0001
   13684:	0000                	.insn	2, 0x0000
   13686:	0000                	.insn	2, 0x0000
   13688:	3678                	.insn	2, 0x3678
   1368a:	0001                	.insn	2, 0x0001
   1368c:	0000                	.insn	2, 0x0000
   1368e:	0000                	.insn	2, 0x0000
   13690:	3678                	.insn	2, 0x3678
   13692:	0001                	.insn	2, 0x0001
   13694:	0000                	.insn	2, 0x0000
   13696:	0000                	.insn	2, 0x0000
   13698:	3688                	.insn	2, 0x3688
   1369a:	0001                	.insn	2, 0x0001
   1369c:	0000                	.insn	2, 0x0000
   1369e:	0000                	.insn	2, 0x0000
   136a0:	3688                	.insn	2, 0x3688
   136a2:	0001                	.insn	2, 0x0001
   136a4:	0000                	.insn	2, 0x0000
   136a6:	0000                	.insn	2, 0x0000
   136a8:	3698                	.insn	2, 0x3698
   136aa:	0001                	.insn	2, 0x0001
   136ac:	0000                	.insn	2, 0x0000
   136ae:	0000                	.insn	2, 0x0000
   136b0:	3698                	.insn	2, 0x3698
   136b2:	0001                	.insn	2, 0x0001
   136b4:	0000                	.insn	2, 0x0000
   136b6:	0000                	.insn	2, 0x0000
   136b8:	36a8                	.insn	2, 0x36a8
   136ba:	0001                	.insn	2, 0x0001
   136bc:	0000                	.insn	2, 0x0000
   136be:	0000                	.insn	2, 0x0000
   136c0:	36a8                	.insn	2, 0x36a8
   136c2:	0001                	.insn	2, 0x0001
   136c4:	0000                	.insn	2, 0x0000
   136c6:	0000                	.insn	2, 0x0000
   136c8:	36b8                	.insn	2, 0x36b8
   136ca:	0001                	.insn	2, 0x0001
   136cc:	0000                	.insn	2, 0x0000
   136ce:	0000                	.insn	2, 0x0000
   136d0:	36b8                	.insn	2, 0x36b8
   136d2:	0001                	.insn	2, 0x0001
   136d4:	0000                	.insn	2, 0x0000
   136d6:	0000                	.insn	2, 0x0000
   136d8:	36c8                	.insn	2, 0x36c8
   136da:	0001                	.insn	2, 0x0001
   136dc:	0000                	.insn	2, 0x0000
   136de:	0000                	.insn	2, 0x0000
   136e0:	36c8                	.insn	2, 0x36c8
   136e2:	0001                	.insn	2, 0x0001
   136e4:	0000                	.insn	2, 0x0000
   136e6:	0000                	.insn	2, 0x0000
   136e8:	36d8                	.insn	2, 0x36d8
   136ea:	0001                	.insn	2, 0x0001
   136ec:	0000                	.insn	2, 0x0000
   136ee:	0000                	.insn	2, 0x0000
   136f0:	36d8                	.insn	2, 0x36d8
   136f2:	0001                	.insn	2, 0x0001
   136f4:	0000                	.insn	2, 0x0000
   136f6:	0000                	.insn	2, 0x0000
   136f8:	36e8                	.insn	2, 0x36e8
   136fa:	0001                	.insn	2, 0x0001
   136fc:	0000                	.insn	2, 0x0000
   136fe:	0000                	.insn	2, 0x0000
   13700:	36e8                	.insn	2, 0x36e8
   13702:	0001                	.insn	2, 0x0001
   13704:	0000                	.insn	2, 0x0000
   13706:	0000                	.insn	2, 0x0000
   13708:	36f8                	.insn	2, 0x36f8
   1370a:	0001                	.insn	2, 0x0001
   1370c:	0000                	.insn	2, 0x0000
   1370e:	0000                	.insn	2, 0x0000
   13710:	36f8                	.insn	2, 0x36f8
   13712:	0001                	.insn	2, 0x0001
   13714:	0000                	.insn	2, 0x0000
   13716:	0000                	.insn	2, 0x0000
   13718:	3708                	.insn	2, 0x3708
   1371a:	0001                	.insn	2, 0x0001
   1371c:	0000                	.insn	2, 0x0000
   1371e:	0000                	.insn	2, 0x0000
   13720:	3708                	.insn	2, 0x3708
   13722:	0001                	.insn	2, 0x0001
   13724:	0000                	.insn	2, 0x0000
   13726:	0000                	.insn	2, 0x0000
   13728:	3718                	.insn	2, 0x3718
   1372a:	0001                	.insn	2, 0x0001
   1372c:	0000                	.insn	2, 0x0000
   1372e:	0000                	.insn	2, 0x0000
   13730:	3718                	.insn	2, 0x3718
   13732:	0001                	.insn	2, 0x0001
   13734:	0000                	.insn	2, 0x0000
   13736:	0000                	.insn	2, 0x0000
   13738:	3728                	.insn	2, 0x3728
   1373a:	0001                	.insn	2, 0x0001
   1373c:	0000                	.insn	2, 0x0000
   1373e:	0000                	.insn	2, 0x0000
   13740:	3728                	.insn	2, 0x3728
   13742:	0001                	.insn	2, 0x0001
   13744:	0000                	.insn	2, 0x0000
   13746:	0000                	.insn	2, 0x0000
   13748:	3738                	.insn	2, 0x3738
   1374a:	0001                	.insn	2, 0x0001
   1374c:	0000                	.insn	2, 0x0000
   1374e:	0000                	.insn	2, 0x0000
   13750:	3738                	.insn	2, 0x3738
   13752:	0001                	.insn	2, 0x0001
   13754:	0000                	.insn	2, 0x0000
   13756:	0000                	.insn	2, 0x0000
   13758:	3748                	.insn	2, 0x3748
   1375a:	0001                	.insn	2, 0x0001
   1375c:	0000                	.insn	2, 0x0000
   1375e:	0000                	.insn	2, 0x0000
   13760:	3748                	.insn	2, 0x3748
   13762:	0001                	.insn	2, 0x0001
   13764:	0000                	.insn	2, 0x0000
   13766:	0000                	.insn	2, 0x0000
   13768:	3758                	.insn	2, 0x3758
   1376a:	0001                	.insn	2, 0x0001
   1376c:	0000                	.insn	2, 0x0000
   1376e:	0000                	.insn	2, 0x0000
   13770:	3758                	.insn	2, 0x3758
   13772:	0001                	.insn	2, 0x0001
   13774:	0000                	.insn	2, 0x0000
   13776:	0000                	.insn	2, 0x0000
   13778:	3768                	.insn	2, 0x3768
   1377a:	0001                	.insn	2, 0x0001
   1377c:	0000                	.insn	2, 0x0000
   1377e:	0000                	.insn	2, 0x0000
   13780:	3768                	.insn	2, 0x3768
   13782:	0001                	.insn	2, 0x0001
   13784:	0000                	.insn	2, 0x0000
   13786:	0000                	.insn	2, 0x0000
   13788:	3778                	.insn	2, 0x3778
   1378a:	0001                	.insn	2, 0x0001
   1378c:	0000                	.insn	2, 0x0000
   1378e:	0000                	.insn	2, 0x0000
   13790:	3778                	.insn	2, 0x3778
   13792:	0001                	.insn	2, 0x0001
   13794:	0000                	.insn	2, 0x0000
   13796:	0000                	.insn	2, 0x0000
   13798:	3788                	.insn	2, 0x3788
   1379a:	0001                	.insn	2, 0x0001
   1379c:	0000                	.insn	2, 0x0000
   1379e:	0000                	.insn	2, 0x0000
   137a0:	3788                	.insn	2, 0x3788
   137a2:	0001                	.insn	2, 0x0001
   137a4:	0000                	.insn	2, 0x0000
   137a6:	0000                	.insn	2, 0x0000
   137a8:	3798                	.insn	2, 0x3798
   137aa:	0001                	.insn	2, 0x0001
   137ac:	0000                	.insn	2, 0x0000
   137ae:	0000                	.insn	2, 0x0000
   137b0:	3798                	.insn	2, 0x3798
   137b2:	0001                	.insn	2, 0x0001
   137b4:	0000                	.insn	2, 0x0000
   137b6:	0000                	.insn	2, 0x0000
   137b8:	37a8                	.insn	2, 0x37a8
   137ba:	0001                	.insn	2, 0x0001
   137bc:	0000                	.insn	2, 0x0000
   137be:	0000                	.insn	2, 0x0000
   137c0:	37a8                	.insn	2, 0x37a8
   137c2:	0001                	.insn	2, 0x0001
   137c4:	0000                	.insn	2, 0x0000
   137c6:	0000                	.insn	2, 0x0000
   137c8:	37b8                	.insn	2, 0x37b8
   137ca:	0001                	.insn	2, 0x0001
   137cc:	0000                	.insn	2, 0x0000
   137ce:	0000                	.insn	2, 0x0000
   137d0:	37b8                	.insn	2, 0x37b8
   137d2:	0001                	.insn	2, 0x0001
   137d4:	0000                	.insn	2, 0x0000
   137d6:	0000                	.insn	2, 0x0000
   137d8:	37c8                	.insn	2, 0x37c8
   137da:	0001                	.insn	2, 0x0001
   137dc:	0000                	.insn	2, 0x0000
   137de:	0000                	.insn	2, 0x0000
   137e0:	37c8                	.insn	2, 0x37c8
   137e2:	0001                	.insn	2, 0x0001
   137e4:	0000                	.insn	2, 0x0000
   137e6:	0000                	.insn	2, 0x0000
   137e8:	37d8                	.insn	2, 0x37d8
   137ea:	0001                	.insn	2, 0x0001
   137ec:	0000                	.insn	2, 0x0000
   137ee:	0000                	.insn	2, 0x0000
   137f0:	37d8                	.insn	2, 0x37d8
   137f2:	0001                	.insn	2, 0x0001
   137f4:	0000                	.insn	2, 0x0000
   137f6:	0000                	.insn	2, 0x0000
   137f8:	37e8                	.insn	2, 0x37e8
   137fa:	0001                	.insn	2, 0x0001
   137fc:	0000                	.insn	2, 0x0000
   137fe:	0000                	.insn	2, 0x0000
   13800:	37e8                	.insn	2, 0x37e8
   13802:	0001                	.insn	2, 0x0001
   13804:	0000                	.insn	2, 0x0000
   13806:	0000                	.insn	2, 0x0000
   13808:	37f8                	.insn	2, 0x37f8
   1380a:	0001                	.insn	2, 0x0001
   1380c:	0000                	.insn	2, 0x0000
   1380e:	0000                	.insn	2, 0x0000
   13810:	37f8                	.insn	2, 0x37f8
   13812:	0001                	.insn	2, 0x0001
   13814:	0000                	.insn	2, 0x0000
   13816:	0000                	.insn	2, 0x0000
   13818:	3808                	.insn	2, 0x3808
   1381a:	0001                	.insn	2, 0x0001
   1381c:	0000                	.insn	2, 0x0000
   1381e:	0000                	.insn	2, 0x0000
   13820:	3808                	.insn	2, 0x3808
   13822:	0001                	.insn	2, 0x0001
   13824:	0000                	.insn	2, 0x0000
   13826:	0000                	.insn	2, 0x0000
   13828:	3818                	.insn	2, 0x3818
   1382a:	0001                	.insn	2, 0x0001
   1382c:	0000                	.insn	2, 0x0000
   1382e:	0000                	.insn	2, 0x0000
   13830:	3818                	.insn	2, 0x3818
   13832:	0001                	.insn	2, 0x0001
   13834:	0000                	.insn	2, 0x0000
   13836:	0000                	.insn	2, 0x0000
   13838:	3828                	.insn	2, 0x3828
   1383a:	0001                	.insn	2, 0x0001
   1383c:	0000                	.insn	2, 0x0000
   1383e:	0000                	.insn	2, 0x0000
   13840:	3828                	.insn	2, 0x3828
   13842:	0001                	.insn	2, 0x0001
   13844:	0000                	.insn	2, 0x0000
   13846:	0000                	.insn	2, 0x0000
   13848:	3838                	.insn	2, 0x3838
   1384a:	0001                	.insn	2, 0x0001
   1384c:	0000                	.insn	2, 0x0000
   1384e:	0000                	.insn	2, 0x0000
   13850:	3838                	.insn	2, 0x3838
   13852:	0001                	.insn	2, 0x0001
   13854:	0000                	.insn	2, 0x0000
   13856:	0000                	.insn	2, 0x0000
   13858:	3848                	.insn	2, 0x3848
   1385a:	0001                	.insn	2, 0x0001
   1385c:	0000                	.insn	2, 0x0000
   1385e:	0000                	.insn	2, 0x0000
   13860:	3848                	.insn	2, 0x3848
   13862:	0001                	.insn	2, 0x0001
   13864:	0000                	.insn	2, 0x0000
   13866:	0000                	.insn	2, 0x0000
   13868:	3858                	.insn	2, 0x3858
   1386a:	0001                	.insn	2, 0x0001
   1386c:	0000                	.insn	2, 0x0000
   1386e:	0000                	.insn	2, 0x0000
   13870:	3858                	.insn	2, 0x3858
   13872:	0001                	.insn	2, 0x0001
   13874:	0000                	.insn	2, 0x0000
   13876:	0000                	.insn	2, 0x0000
   13878:	3868                	.insn	2, 0x3868
   1387a:	0001                	.insn	2, 0x0001
   1387c:	0000                	.insn	2, 0x0000
   1387e:	0000                	.insn	2, 0x0000
   13880:	3868                	.insn	2, 0x3868
   13882:	0001                	.insn	2, 0x0001
   13884:	0000                	.insn	2, 0x0000
   13886:	0000                	.insn	2, 0x0000
   13888:	3878                	.insn	2, 0x3878
   1388a:	0001                	.insn	2, 0x0001
   1388c:	0000                	.insn	2, 0x0000
   1388e:	0000                	.insn	2, 0x0000
   13890:	3878                	.insn	2, 0x3878
   13892:	0001                	.insn	2, 0x0001
   13894:	0000                	.insn	2, 0x0000
   13896:	0000                	.insn	2, 0x0000
   13898:	3888                	.insn	2, 0x3888
   1389a:	0001                	.insn	2, 0x0001
   1389c:	0000                	.insn	2, 0x0000
   1389e:	0000                	.insn	2, 0x0000
   138a0:	3888                	.insn	2, 0x3888
   138a2:	0001                	.insn	2, 0x0001
   138a4:	0000                	.insn	2, 0x0000
   138a6:	0000                	.insn	2, 0x0000
   138a8:	3898                	.insn	2, 0x3898
   138aa:	0001                	.insn	2, 0x0001
   138ac:	0000                	.insn	2, 0x0000
   138ae:	0000                	.insn	2, 0x0000
   138b0:	3898                	.insn	2, 0x3898
   138b2:	0001                	.insn	2, 0x0001
   138b4:	0000                	.insn	2, 0x0000
   138b6:	0000                	.insn	2, 0x0000
   138b8:	38a8                	.insn	2, 0x38a8
   138ba:	0001                	.insn	2, 0x0001
   138bc:	0000                	.insn	2, 0x0000
   138be:	0000                	.insn	2, 0x0000
   138c0:	38a8                	.insn	2, 0x38a8
   138c2:	0001                	.insn	2, 0x0001
   138c4:	0000                	.insn	2, 0x0000
   138c6:	0000                	.insn	2, 0x0000
   138c8:	38b8                	.insn	2, 0x38b8
   138ca:	0001                	.insn	2, 0x0001
   138cc:	0000                	.insn	2, 0x0000
   138ce:	0000                	.insn	2, 0x0000
   138d0:	38b8                	.insn	2, 0x38b8
   138d2:	0001                	.insn	2, 0x0001
   138d4:	0000                	.insn	2, 0x0000
   138d6:	0000                	.insn	2, 0x0000
   138d8:	38c8                	.insn	2, 0x38c8
   138da:	0001                	.insn	2, 0x0001
   138dc:	0000                	.insn	2, 0x0000
   138de:	0000                	.insn	2, 0x0000
   138e0:	38c8                	.insn	2, 0x38c8
   138e2:	0001                	.insn	2, 0x0001
   138e4:	0000                	.insn	2, 0x0000
   138e6:	0000                	.insn	2, 0x0000
   138e8:	38d8                	.insn	2, 0x38d8
   138ea:	0001                	.insn	2, 0x0001
   138ec:	0000                	.insn	2, 0x0000
   138ee:	0000                	.insn	2, 0x0000
   138f0:	38d8                	.insn	2, 0x38d8
   138f2:	0001                	.insn	2, 0x0001
   138f4:	0000                	.insn	2, 0x0000
   138f6:	0000                	.insn	2, 0x0000
   138f8:	38e8                	.insn	2, 0x38e8
   138fa:	0001                	.insn	2, 0x0001
   138fc:	0000                	.insn	2, 0x0000
   138fe:	0000                	.insn	2, 0x0000
   13900:	38e8                	.insn	2, 0x38e8
   13902:	0001                	.insn	2, 0x0001
   13904:	0000                	.insn	2, 0x0000
   13906:	0000                	.insn	2, 0x0000
   13908:	38f8                	.insn	2, 0x38f8
   1390a:	0001                	.insn	2, 0x0001
   1390c:	0000                	.insn	2, 0x0000
   1390e:	0000                	.insn	2, 0x0000
   13910:	38f8                	.insn	2, 0x38f8
   13912:	0001                	.insn	2, 0x0001
   13914:	0000                	.insn	2, 0x0000
   13916:	0000                	.insn	2, 0x0000
   13918:	3908                	.insn	2, 0x3908
   1391a:	0001                	.insn	2, 0x0001
   1391c:	0000                	.insn	2, 0x0000
   1391e:	0000                	.insn	2, 0x0000
   13920:	3908                	.insn	2, 0x3908
   13922:	0001                	.insn	2, 0x0001
   13924:	0000                	.insn	2, 0x0000
   13926:	0000                	.insn	2, 0x0000
   13928:	3918                	.insn	2, 0x3918
   1392a:	0001                	.insn	2, 0x0001
   1392c:	0000                	.insn	2, 0x0000
   1392e:	0000                	.insn	2, 0x0000
   13930:	3918                	.insn	2, 0x3918
   13932:	0001                	.insn	2, 0x0001
   13934:	0000                	.insn	2, 0x0000
   13936:	0000                	.insn	2, 0x0000
   13938:	3928                	.insn	2, 0x3928
   1393a:	0001                	.insn	2, 0x0001
   1393c:	0000                	.insn	2, 0x0000
   1393e:	0000                	.insn	2, 0x0000
   13940:	3928                	.insn	2, 0x3928
   13942:	0001                	.insn	2, 0x0001
   13944:	0000                	.insn	2, 0x0000
   13946:	0000                	.insn	2, 0x0000
   13948:	3938                	.insn	2, 0x3938
   1394a:	0001                	.insn	2, 0x0001
   1394c:	0000                	.insn	2, 0x0000
   1394e:	0000                	.insn	2, 0x0000
   13950:	3938                	.insn	2, 0x3938
   13952:	0001                	.insn	2, 0x0001
   13954:	0000                	.insn	2, 0x0000
   13956:	0000                	.insn	2, 0x0000
   13958:	3948                	.insn	2, 0x3948
   1395a:	0001                	.insn	2, 0x0001
   1395c:	0000                	.insn	2, 0x0000
   1395e:	0000                	.insn	2, 0x0000
   13960:	3948                	.insn	2, 0x3948
   13962:	0001                	.insn	2, 0x0001
   13964:	0000                	.insn	2, 0x0000
   13966:	0000                	.insn	2, 0x0000
   13968:	3958                	.insn	2, 0x3958
   1396a:	0001                	.insn	2, 0x0001
   1396c:	0000                	.insn	2, 0x0000
   1396e:	0000                	.insn	2, 0x0000
   13970:	3958                	.insn	2, 0x3958
   13972:	0001                	.insn	2, 0x0001
   13974:	0000                	.insn	2, 0x0000
   13976:	0000                	.insn	2, 0x0000
   13978:	3968                	.insn	2, 0x3968
   1397a:	0001                	.insn	2, 0x0001
   1397c:	0000                	.insn	2, 0x0000
   1397e:	0000                	.insn	2, 0x0000
   13980:	3968                	.insn	2, 0x3968
   13982:	0001                	.insn	2, 0x0001
   13984:	0000                	.insn	2, 0x0000
   13986:	0000                	.insn	2, 0x0000
   13988:	3978                	.insn	2, 0x3978
   1398a:	0001                	.insn	2, 0x0001
   1398c:	0000                	.insn	2, 0x0000
   1398e:	0000                	.insn	2, 0x0000
   13990:	3978                	.insn	2, 0x3978
   13992:	0001                	.insn	2, 0x0001
   13994:	0000                	.insn	2, 0x0000
	...

Disassembly of section .sdata:

0000000000013998 <__dso_handle>:
	...

00000000000139a0 <_impure_ptr>:
   139a0:	3030                	.insn	2, 0x3030
   139a2:	0001                	.insn	2, 0x0001
   139a4:	0000                	.insn	2, 0x0000
	...

00000000000139a8 <__malloc_sbrk_base>:
   139a8:	ffff                	.insn	2, 0xffff
   139aa:	ffff                	.insn	2, 0xffff
   139ac:	ffff                	.insn	2, 0xffff
   139ae:	ffff                	.insn	2, 0xffff

00000000000139b0 <__malloc_trim_threshold>:
   139b0:	0000                	.insn	2, 0x0000
   139b2:	0002                	.insn	2, 0x0002
   139b4:	0000                	.insn	2, 0x0000
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	.insn	4, 0x3a434347
   4:	2820                	.insn	2, 0x2820
   6:	36343067          	.insn	4, 0x36343067
   a:	3639                	.insn	2, 0x3639
   c:	6664                	.insn	2, 0x6664
   e:	3930                	.insn	2, 0x3930
  10:	2029                	.insn	2, 0x2029
  12:	3431                	.insn	2, 0x3431
  14:	322e                	.insn	2, 0x322e
  16:	302e                	.insn	2, 0x302e
  18:	4700                	.insn	2, 0x4700
  1a:	203a4343          	.insn	4, 0x203a4343
  1e:	4728                	.insn	2, 0x4728
  20:	554e                	.insn	2, 0x554e
  22:	2029                	.insn	2, 0x2029
  24:	3431                	.insn	2, 0x3431
  26:	322e                	.insn	2, 0x322e
  28:	302e                	.insn	2, 0x302e
	...

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	1b41                	.insn	2, 0x1b41
   2:	0000                	.insn	2, 0x0000
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	zero,a6,14 <exit-0x1010c>
   c:	0011                	.insn	2, 0x0011
   e:	0000                	.insn	2, 0x0000
  10:	1004                	.insn	2, 0x1004
  12:	7205                	.insn	2, 0x7205
  14:	3676                	.insn	2, 0x3676
  16:	6934                	.insn	2, 0x6934
  18:	7032                	.insn	2, 0x7032
  1a:	0031                	.insn	2, 0x0031

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	002c                	.insn	2, 0x002c
   2:	0000                	.insn	2, 0x0000
   4:	0002                	.insn	2, 0x0002
   6:	0000                	.insn	2, 0x0000
   8:	0000                	.insn	2, 0x0000
   a:	0008                	.insn	2, 0x0008
   c:	0000                	.insn	2, 0x0000
   e:	0000                	.insn	2, 0x0000
  10:	0670                	.insn	2, 0x0670
  12:	0001                	.insn	2, 0x0001
  14:	0000                	.insn	2, 0x0000
  16:	0000                	.insn	2, 0x0000
  18:	0024                	.insn	2, 0x0024
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	0035                	.insn	2, 0x0035
   2:	0000                	.insn	2, 0x0000
   4:	0005                	.insn	2, 0x0005
   6:	0801                	.insn	2, 0x0801
   8:	0000                	.insn	2, 0x0000
   a:	0000                	.insn	2, 0x0000
   c:	0001                	.insn	2, 0x0001
   e:	0000                	.insn	2, 0x0000
  10:	7000                	.insn	2, 0x7000
  12:	0106                	.insn	2, 0x0106
  14:	0000                	.insn	2, 0x0000
  16:	0000                	.insn	2, 0x0000
  18:	2400                	.insn	2, 0x2400
  1a:	0000                	.insn	2, 0x0000
  1c:	0000                	.insn	2, 0x0000
  1e:	002d                	.insn	2, 0x002d
  20:	0000                	.insn	2, 0x0000
  22:	0090                	.insn	2, 0x0090
  24:	0000                	.insn	2, 0x0000
  26:	8001                	.insn	2, 0x8001
  28:	9c02                	.insn	2, 0x9c02
  2a:	0000                	.insn	2, 0x0000
  2c:	3700                	.insn	2, 0x3700
  2e:	0670                	.insn	2, 0x0670
  30:	0001                	.insn	2, 0x0001
  32:	0000                	.insn	2, 0x0000
  34:	0000                	.insn	2, 0x0000
  36:	0324                	.insn	2, 0x0324
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	1101                	.insn	2, 0x1101
   2:	1001                	.insn	2, 0x1001
   4:	12011117          	auipc	sp,0x12011
   8:	1b0e030f          	.insn	4, 0x1b0e030f
   c:	250e                	.insn	2, 0x250e
   e:	130e                	.insn	2, 0x130e
  10:	0005                	.insn	2, 0x0005
  12:	0200                	.insn	2, 0x0200
  14:	002e                	.insn	2, 0x002e
  16:	193f0e03          	lb	t3,403(t5)
  1a:	1549                	.insn	2, 0x1549
  1c:	0111                	.insn	2, 0x0111
  1e:	0f12                	.insn	2, 0x0f12
  20:	0000                	.insn	2, 0x0000
  22:	00003b03          	ld	s6,0(zero) # 0 <exit-0x10120>
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	007a                	.insn	2, 0x007a
   2:	0000                	.insn	2, 0x0000
   4:	0005                	.insn	2, 0x0005
   6:	0008                	.insn	2, 0x0008
   8:	002e                	.insn	2, 0x002e
   a:	0000                	.insn	2, 0x0000
   c:	0101                	.insn	2, 0x0101
   e:	fb01                	.insn	2, 0xfb01
  10:	0d0e                	.insn	2, 0x0d0e
  12:	0100                	.insn	2, 0x0100
  14:	0101                	.insn	2, 0x0101
  16:	0001                	.insn	2, 0x0001
  18:	0000                	.insn	2, 0x0000
  1a:	0001                	.insn	2, 0x0001
  1c:	0100                	.insn	2, 0x0100
  1e:	0101                	.insn	2, 0x0101
  20:	021f 0000 0000      	.insn	6, 0x021f
  26:	00000063          	beqz	zero,26 <exit-0x100fa>
  2a:	0102                	.insn	2, 0x0102
  2c:	021f 020f 0087      	.insn	6, 0x0087020f021f
  32:	0000                	.insn	2, 0x0000
  34:	8701                	.insn	2, 0x8701
  36:	0000                	.insn	2, 0x0000
  38:	0100                	.insn	2, 0x0100
  3a:	0900                	.insn	2, 0x0900
  3c:	7002                	.insn	2, 0x7002
  3e:	0106                	.insn	2, 0x0106
  40:	0000                	.insn	2, 0x0000
  42:	0000                	.insn	2, 0x0000
  44:	0300                	.insn	2, 0x0300
  46:	0124                	.insn	2, 0x0124
  48:	04090103          	lb	sp,64(s2)
  4c:	0100                	.insn	2, 0x0100
  4e:	04090203          	lb	tp,64(s2)
  52:	0100                	.insn	2, 0x0100
  54:	04090103          	lb	sp,64(s2)
  58:	0100                	.insn	2, 0x0100
  5a:	04090103          	lb	sp,64(s2)
  5e:	0100                	.insn	2, 0x0100
  60:	04090203          	lb	tp,64(s2)
  64:	0100                	.insn	2, 0x0100
  66:	04090103          	lb	sp,64(s2)
  6a:	0100                	.insn	2, 0x0100
  6c:	04090103          	lb	sp,64(s2)
  70:	0100                	.insn	2, 0x0100
  72:	04090103          	lb	sp,64(s2)
  76:	0100                	.insn	2, 0x0100
  78:	0409                	.insn	2, 0x0409
  7a:	0000                	.insn	2, 0x0000
  7c:	0101                	.insn	2, 0x0101

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	2e2e                	.insn	2, 0x2e2e
   2:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
   6:	2e2e                	.insn	2, 0x2e2e
   8:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
   c:	2f636367          	.insn	4, 0x2f636367
  10:	696c                	.insn	2, 0x696c
  12:	6762                	.insn	2, 0x6762
  14:	632f6363          	bltu	t5,s2,63a <exit-0xfae6>
  18:	69666e6f          	jal	t3,666ae <__BSS_END__+0x52736>
  1c:	69722f67          	.insn	4, 0x69722f67
  20:	2f766373          	.insn	4, 0x2f766373
  24:	756d                	.insn	2, 0x756d
  26:	646c                	.insn	2, 0x646c
  28:	3369                	.insn	2, 0x3369
  2a:	532e                	.insn	2, 0x532e
  2c:	2f00                	.insn	2, 0x2f00
  2e:	6f68                	.insn	2, 0x6f68
  30:	656d                	.insn	2, 0x656d
  32:	6d61682f          	.insn	4, 0x6d61682f
  36:	2f69636f          	jal	t1,9632c <__BSS_END__+0x823b4>
  3a:	6f68                	.insn	2, 0x6f68
  3c:	656d                	.insn	2, 0x656d
  3e:	6b726f77          	.insn	4, 0x6b726f77
  42:	7369722f          	.insn	4, 0x7369722f
  46:	672d7663          	bgeu	s10,s2,6b2 <exit-0xfa6e>
  4a:	756e                	.insn	2, 0x756e
  4c:	742d                	.insn	2, 0x742d
  4e:	636c6f6f          	jal	t5,c6684 <__BSS_END__+0xb270c>
  52:	6168                	.insn	2, 0x6168
  54:	6e69                	.insn	2, 0x6e69
  56:	6975622f          	.insn	4, 0x6975622f
  5a:	646c                	.insn	2, 0x646c
  5c:	6975622f          	.insn	4, 0x6975622f
  60:	646c                	.insn	2, 0x646c
  62:	672d                	.insn	2, 0x672d
  64:	6e2d6363          	bltu	s10,sp,74a <exit-0xf9d6>
  68:	7765                	.insn	2, 0x7765
  6a:	696c                	.insn	2, 0x696c
  6c:	2d62                	.insn	2, 0x2d62
  6e:	67617473          	.insn	4, 0x67617473
  72:	3265                	.insn	2, 0x3265
  74:	7369722f          	.insn	4, 0x7369722f
  78:	34367663          	bgeu	a2,gp,3c4 <exit-0xfd5c>
  7c:	752d                	.insn	2, 0x752d
  7e:	6b6e                	.insn	2, 0x6b6e
  80:	6f6e                	.insn	2, 0x6f6e
  82:	652d6e77          	.insn	4, 0x652d6e77
  86:	666c                	.insn	2, 0x666c
  88:	62696c2f          	.insn	4, 0x62696c2f
  8c:	00636367          	.insn	4, 0x00636367
  90:	20554e47          	.insn	4, 0x20554e47
  94:	5341                	.insn	2, 0x5341
  96:	3220                	.insn	2, 0x3220
  98:	342e                	.insn	2, 0x342e
  9a:	0034                	.insn	2, 0x0034
  9c:	5f5f 756d 646c      	.insn	6, 0x646c756d5f5f
  a2:	3369                	.insn	2, 0x3369
	...

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	6d6f682f          	.insn	4, 0x6d6f682f
   4:	2f65                	.insn	2, 0x2f65
   6:	6168                	.insn	2, 0x6168
   8:	6f6d                	.insn	2, 0x6f6d
   a:	682f6963          	bltu	t5,sp,69c <exit-0xfa84>
   e:	77656d6f          	jal	s10,56784 <__BSS_END__+0x4280c>
  12:	2f6b726f          	jal	tp,b7308 <__BSS_END__+0xa3390>
  16:	6972                	.insn	2, 0x6972
  18:	2d766373          	.insn	4, 0x2d766373
  1c:	2d756e67          	.insn	4, 0x2d756e67
  20:	6f74                	.insn	2, 0x6f74
  22:	68636c6f          	jal	s8,366a8 <__BSS_END__+0x22730>
  26:	6961                	.insn	2, 0x6961
  28:	2f6e                	.insn	2, 0x2f6e
  2a:	7562                	.insn	2, 0x7562
  2c:	6c69                	.insn	2, 0x6c69
  2e:	2f64                	.insn	2, 0x2f64
  30:	7562                	.insn	2, 0x7562
  32:	6c69                	.insn	2, 0x6c69
  34:	2d64                	.insn	2, 0x2d64
  36:	2d636367          	.insn	4, 0x2d636367
  3a:	656e                	.insn	2, 0x656e
  3c:	62696c77          	.insn	4, 0x62696c77
  40:	732d                	.insn	2, 0x732d
  42:	6174                	.insn	2, 0x6174
  44:	2f326567          	.insn	4, 0x2f326567
  48:	6972                	.insn	2, 0x6972
  4a:	36766373          	.insn	4, 0x36766373
  4e:	2d34                	.insn	2, 0x2d34
  50:	6e75                	.insn	2, 0x6e75
  52:	776f6e6b          	.insn	4, 0x776f6e6b
  56:	2d6e                	.insn	2, 0x2d6e
  58:	6c65                	.insn	2, 0x6c65
  5a:	2f66                	.insn	2, 0x2f66
  5c:	696c                	.insn	2, 0x696c
  5e:	6762                	.insn	2, 0x6762
  60:	2e006363          	bltu	zero,zero,346 <exit-0xfdda>
  64:	2f2e                	.insn	2, 0x2f2e
  66:	2e2e                	.insn	2, 0x2e2e
  68:	2f2e2e2f          	.insn	4, 0x2f2e2e2f
  6c:	2e2e                	.insn	2, 0x2e2e
  6e:	6363672f          	.insn	4, 0x6363672f
  72:	62696c2f          	.insn	4, 0x62696c2f
  76:	2f636367          	.insn	4, 0x2f636367
  7a:	666e6f63          	bltu	t3,t1,6f8 <exit-0xfa28>
  7e:	6769                	.insn	2, 0x6769
  80:	7369722f          	.insn	4, 0x7369722f
  84:	6d007663          	bgeu	zero,a6,750 <exit-0xf9d0>
  88:	6c75                	.insn	2, 0x6c75
  8a:	6964                	.insn	2, 0x6964
  8c:	00532e33          	slt	t3,t1,t0
