
../benchmark/C.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	481000ef          	jal	10db4 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	050020ef          	jal	12198 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	05850513          	addi	a0,a0,88 # 12058 <__libc_fini_array>
   1015c:	58d0006f          	j	10ee8 <atexit>
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
   10184:	355000ef          	jal	10cd8 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	d6050513          	addi	a0,a0,-672 # 10ee8 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	ec450513          	addi	a0,a0,-316 # 12058 <__libc_fini_array>
   1019c:	54d000ef          	jal	10ee8 <atexit>
   101a0:	29d000ef          	jal	10c3c <__libc_init_array>
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
   101d8:	31850513          	addi	a0,a0,792 # 12318 <__EH_FRAME_BEGIN__>
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
   1020c:	31850513          	addi	a0,a0,792 # 12318 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	fe010113          	addi	sp,sp,-32
   10220:	00113c23          	sd	ra,24(sp)
   10224:	00813823          	sd	s0,16(sp)
   10228:	02010413          	addi	s0,sp,32
   1022c:	028000ef          	jal	10254 <func_C>
   10230:	00050793          	mv	a5,a0
   10234:	fef42623          	sw	a5,-20(s0)
   10238:	164000ef          	jal	1039c <exit_proc>
   1023c:	00000793          	li	a5,0
   10240:	00078513          	mv	a0,a5
   10244:	01813083          	ld	ra,24(sp)
   10248:	01013403          	ld	s0,16(sp)
   1024c:	02010113          	addi	sp,sp,32
   10250:	00008067          	ret

0000000000010254 <func_C>:
   10254:	fe010113          	addi	sp,sp,-32
   10258:	00113c23          	sd	ra,24(sp)
   1025c:	00813823          	sd	s0,16(sp)
   10260:	02010413          	addi	s0,sp,32
   10264:	fe042623          	sw	zero,-20(s0)
   10268:	fe042423          	sw	zero,-24(s0)
   1026c:	06c0006f          	j	102d8 <func_C+0x84>
   10270:	fe842783          	lw	a5,-24(s0)
   10274:	0007871b          	sext.w	a4,a5
   10278:	06400793          	li	a5,100
   1027c:	00e7da63          	bge	a5,a4,10290 <func_C+0x3c>
   10280:	fec42783          	lw	a5,-20(s0)
   10284:	0017879b          	addiw	a5,a5,1
   10288:	fef42623          	sw	a5,-20(s0)
   1028c:	0100006f          	j	1029c <func_C+0x48>
   10290:	fec42783          	lw	a5,-20(s0)
   10294:	0027879b          	addiw	a5,a5,2
   10298:	fef42623          	sw	a5,-20(s0)
   1029c:	fe842783          	lw	a5,-24(s0)
   102a0:	0007871b          	sext.w	a4,a5
   102a4:	000027b7          	lui	a5,0x2
   102a8:	70f78793          	addi	a5,a5,1807 # 270f <exit-0xda11>
   102ac:	00e7ca63          	blt	a5,a4,102c0 <func_C+0x6c>
   102b0:	fec42783          	lw	a5,-20(s0)
   102b4:	0027879b          	addiw	a5,a5,2
   102b8:	fef42623          	sw	a5,-20(s0)
   102bc:	0100006f          	j	102cc <func_C+0x78>
   102c0:	fec42783          	lw	a5,-20(s0)
   102c4:	fff7879b          	addiw	a5,a5,-1
   102c8:	fef42623          	sw	a5,-20(s0)
   102cc:	fe842783          	lw	a5,-24(s0)
   102d0:	0017879b          	addiw	a5,a5,1
   102d4:	fef42423          	sw	a5,-24(s0)
   102d8:	fe842783          	lw	a5,-24(s0)
   102dc:	0007871b          	sext.w	a4,a5
   102e0:	000057b7          	lui	a5,0x5
   102e4:	e1f78793          	addi	a5,a5,-481 # 4e1f <exit-0xb301>
   102e8:	f8e7d4e3          	bge	a5,a4,10270 <func_C+0x1c>
   102ec:	fec42783          	lw	a5,-20(s0)
   102f0:	00078513          	mv	a0,a5
   102f4:	01813083          	ld	ra,24(sp)
   102f8:	01013403          	ld	s0,16(sp)
   102fc:	02010113          	addi	sp,sp,32
   10300:	00008067          	ret

0000000000010304 <print_d>:
   10304:	fe010113          	addi	sp,sp,-32
   10308:	00113c23          	sd	ra,24(sp)
   1030c:	00813823          	sd	s0,16(sp)
   10310:	02010413          	addi	s0,sp,32
   10314:	00050793          	mv	a5,a0
   10318:	fef42623          	sw	a5,-20(s0)
   1031c:	00200893          	li	a7,2
   10320:	00000073          	ecall
   10324:	00000013          	nop
   10328:	01813083          	ld	ra,24(sp)
   1032c:	01013403          	ld	s0,16(sp)
   10330:	02010113          	addi	sp,sp,32
   10334:	00008067          	ret

0000000000010338 <print_s>:
   10338:	fe010113          	addi	sp,sp,-32
   1033c:	00113c23          	sd	ra,24(sp)
   10340:	00813823          	sd	s0,16(sp)
   10344:	02010413          	addi	s0,sp,32
   10348:	fea43423          	sd	a0,-24(s0)
   1034c:	00000893          	li	a7,0
   10350:	00000073          	ecall
   10354:	00000013          	nop
   10358:	01813083          	ld	ra,24(sp)
   1035c:	01013403          	ld	s0,16(sp)
   10360:	02010113          	addi	sp,sp,32
   10364:	00008067          	ret

0000000000010368 <print_c>:
   10368:	fe010113          	addi	sp,sp,-32
   1036c:	00113c23          	sd	ra,24(sp)
   10370:	00813823          	sd	s0,16(sp)
   10374:	02010413          	addi	s0,sp,32
   10378:	00050793          	mv	a5,a0
   1037c:	fef407a3          	sb	a5,-17(s0)
   10380:	00100893          	li	a7,1
   10384:	00000073          	ecall
   10388:	00000013          	nop
   1038c:	01813083          	ld	ra,24(sp)
   10390:	01013403          	ld	s0,16(sp)
   10394:	02010113          	addi	sp,sp,32
   10398:	00008067          	ret

000000000001039c <exit_proc>:
   1039c:	ff010113          	addi	sp,sp,-16
   103a0:	00113423          	sd	ra,8(sp)
   103a4:	00813023          	sd	s0,0(sp)
   103a8:	01010413          	addi	s0,sp,16
   103ac:	00300893          	li	a7,3
   103b0:	00000073          	ecall
   103b4:	00000013          	nop
   103b8:	00813083          	ld	ra,8(sp)
   103bc:	00013403          	ld	s0,0(sp)
   103c0:	01010113          	addi	sp,sp,16
   103c4:	00008067          	ret

00000000000103c8 <read_char>:
   103c8:	fe010113          	addi	sp,sp,-32
   103cc:	00113c23          	sd	ra,24(sp)
   103d0:	00813823          	sd	s0,16(sp)
   103d4:	02010413          	addi	s0,sp,32
   103d8:	00400893          	li	a7,4
   103dc:	00000073          	ecall
   103e0:	00050793          	mv	a5,a0
   103e4:	fef407a3          	sb	a5,-17(s0)
   103e8:	fef44783          	lbu	a5,-17(s0)
   103ec:	00078513          	mv	a0,a5
   103f0:	01813083          	ld	ra,24(sp)
   103f4:	01013403          	ld	s0,16(sp)
   103f8:	02010113          	addi	sp,sp,32
   103fc:	00008067          	ret

0000000000010400 <read_num>:
   10400:	fe010113          	addi	sp,sp,-32
   10404:	00113c23          	sd	ra,24(sp)
   10408:	00813823          	sd	s0,16(sp)
   1040c:	02010413          	addi	s0,sp,32
   10410:	00500893          	li	a7,5
   10414:	00000073          	ecall
   10418:	00050793          	mv	a5,a0
   1041c:	fef43423          	sd	a5,-24(s0)
   10420:	fe843783          	ld	a5,-24(s0)
   10424:	00078513          	mv	a0,a5
   10428:	01813083          	ld	ra,24(sp)
   1042c:	01013403          	ld	s0,16(sp)
   10430:	02010113          	addi	sp,sp,32
   10434:	00008067          	ret

0000000000010438 <__fp_lock>:
   10438:	00000513          	li	a0,0
   1043c:	00008067          	ret

0000000000010440 <stdio_exit_handler>:
   10440:	00013637          	lui	a2,0x13
   10444:	000125b7          	lui	a1,0x12
   10448:	00013537          	lui	a0,0x13
   1044c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10450:	bac58593          	addi	a1,a1,-1108 # 11bac <_fclose_r>
   10454:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10458:	3440006f          	j	1079c <_fwalk_sglue>

000000000001045c <cleanup_stdio>:
   1045c:	00853583          	ld	a1,8(a0)
   10460:	ff010113          	addi	sp,sp,-16
   10464:	00813023          	sd	s0,0(sp)
   10468:	00113423          	sd	ra,8(sp)
   1046c:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   10470:	00050413          	mv	s0,a0
   10474:	00f58463          	beq	a1,a5,1047c <cleanup_stdio+0x20>
   10478:	734010ef          	jal	11bac <_fclose_r>
   1047c:	01043583          	ld	a1,16(s0)
   10480:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10484:	00f58663          	beq	a1,a5,10490 <cleanup_stdio+0x34>
   10488:	00040513          	mv	a0,s0
   1048c:	720010ef          	jal	11bac <_fclose_r>
   10490:	01843583          	ld	a1,24(s0)
   10494:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10498:	00f58c63          	beq	a1,a5,104b0 <cleanup_stdio+0x54>
   1049c:	00040513          	mv	a0,s0
   104a0:	00013403          	ld	s0,0(sp)
   104a4:	00813083          	ld	ra,8(sp)
   104a8:	01010113          	addi	sp,sp,16
   104ac:	7000106f          	j	11bac <_fclose_r>
   104b0:	00813083          	ld	ra,8(sp)
   104b4:	00013403          	ld	s0,0(sp)
   104b8:	01010113          	addi	sp,sp,16
   104bc:	00008067          	ret

00000000000104c0 <__fp_unlock>:
   104c0:	00000513          	li	a0,0
   104c4:	00008067          	ret

00000000000104c8 <global_stdio_init.part.0>:
   104c8:	fd010113          	addi	sp,sp,-48
   104cc:	02813023          	sd	s0,32(sp)
   104d0:	000107b7          	lui	a5,0x10
   104d4:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   104d8:	02113423          	sd	ra,40(sp)
   104dc:	00913c23          	sd	s1,24(sp)
   104e0:	01213823          	sd	s2,16(sp)
   104e4:	01313423          	sd	s3,8(sp)
   104e8:	01413023          	sd	s4,0(sp)
   104ec:	00400713          	li	a4,4
   104f0:	44078793          	addi	a5,a5,1088 # 10440 <stdio_exit_handler>
   104f4:	00800613          	li	a2,8
   104f8:	00000593          	li	a1,0
   104fc:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10500:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10504:	00e42823          	sw	a4,16(s0)
   10508:	00043023          	sd	zero,0(s0)
   1050c:	00043423          	sd	zero,8(s0)
   10510:	0a042623          	sw	zero,172(s0)
   10514:	00043c23          	sd	zero,24(s0)
   10518:	02042023          	sw	zero,32(s0)
   1051c:	02042423          	sw	zero,40(s0)
   10520:	7b8000ef          	jal	10cd8 <memset>
   10524:	000107b7          	lui	a5,0x10
   10528:	00011a37          	lui	s4,0x11
   1052c:	000119b7          	lui	s3,0x11
   10530:	00011937          	lui	s2,0x11
   10534:	000114b7          	lui	s1,0x11
   10538:	86ca0a13          	addi	s4,s4,-1940 # 1086c <__sread>
   1053c:	8d098993          	addi	s3,s3,-1840 # 108d0 <__swrite>
   10540:	95890913          	addi	s2,s2,-1704 # 10958 <__sseek>
   10544:	9bc48493          	addi	s1,s1,-1604 # 109bc <__sclose>
   10548:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   1054c:	00800613          	li	a2,8
   10550:	00000593          	li	a1,0
   10554:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10558:	0cf42023          	sw	a5,192(s0)
   1055c:	03443c23          	sd	s4,56(s0)
   10560:	05343023          	sd	s3,64(s0)
   10564:	05243423          	sd	s2,72(s0)
   10568:	04943823          	sd	s1,80(s0)
   1056c:	02843823          	sd	s0,48(s0)
   10570:	0a043823          	sd	zero,176(s0)
   10574:	0a043c23          	sd	zero,184(s0)
   10578:	14042e23          	sw	zero,348(s0)
   1057c:	0c043423          	sd	zero,200(s0)
   10580:	0c042823          	sw	zero,208(s0)
   10584:	0c042c23          	sw	zero,216(s0)
   10588:	750000ef          	jal	10cd8 <memset>
   1058c:	000207b7          	lui	a5,0x20
   10590:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   10594:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   10598:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   1059c:	00800613          	li	a2,8
   105a0:	00000593          	li	a1,0
   105a4:	0f443423          	sd	s4,232(s0)
   105a8:	0f343823          	sd	s3,240(s0)
   105ac:	0f243c23          	sd	s2,248(s0)
   105b0:	10943023          	sd	s1,256(s0)
   105b4:	16f42823          	sw	a5,368(s0)
   105b8:	16043023          	sd	zero,352(s0)
   105bc:	16043423          	sd	zero,360(s0)
   105c0:	20042623          	sw	zero,524(s0)
   105c4:	16043c23          	sd	zero,376(s0)
   105c8:	18042023          	sw	zero,384(s0)
   105cc:	18042423          	sw	zero,392(s0)
   105d0:	0ee43023          	sd	a4,224(s0)
   105d4:	704000ef          	jal	10cd8 <memset>
   105d8:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   105dc:	19443c23          	sd	s4,408(s0)
   105e0:	1b343023          	sd	s3,416(s0)
   105e4:	1b243423          	sd	s2,424(s0)
   105e8:	1a943823          	sd	s1,432(s0)
   105ec:	02813083          	ld	ra,40(sp)
   105f0:	18f43823          	sd	a5,400(s0)
   105f4:	02013403          	ld	s0,32(sp)
   105f8:	01813483          	ld	s1,24(sp)
   105fc:	01013903          	ld	s2,16(sp)
   10600:	00813983          	ld	s3,8(sp)
   10604:	00013a03          	ld	s4,0(sp)
   10608:	03010113          	addi	sp,sp,48
   1060c:	00008067          	ret

0000000000010610 <__sfp>:
   10610:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10614:	fe010113          	addi	sp,sp,-32
   10618:	01213023          	sd	s2,0(sp)
   1061c:	00113c23          	sd	ra,24(sp)
   10620:	00813823          	sd	s0,16(sp)
   10624:	00913423          	sd	s1,8(sp)
   10628:	00050913          	mv	s2,a0
   1062c:	0e078e63          	beqz	a5,10728 <__sfp+0x118>
   10630:	000134b7          	lui	s1,0x13
   10634:	01848493          	addi	s1,s1,24 # 13018 <__sglue>
   10638:	0084a703          	lw	a4,8(s1)
   1063c:	0104b403          	ld	s0,16(s1)
   10640:	08e05c63          	blez	a4,106d8 <__sfp+0xc8>
   10644:	02071713          	slli	a4,a4,0x20
   10648:	02075713          	srli	a4,a4,0x20
   1064c:	00171793          	slli	a5,a4,0x1
   10650:	00e787b3          	add	a5,a5,a4
   10654:	00279793          	slli	a5,a5,0x2
   10658:	40e787b3          	sub	a5,a5,a4
   1065c:	00479793          	slli	a5,a5,0x4
   10660:	00f407b3          	add	a5,s0,a5
   10664:	00c0006f          	j	10670 <__sfp+0x60>
   10668:	0b040413          	addi	s0,s0,176
   1066c:	06f40663          	beq	s0,a5,106d8 <__sfp+0xc8>
   10670:	01041703          	lh	a4,16(s0)
   10674:	fe071ae3          	bnez	a4,10668 <__sfp+0x58>
   10678:	ffff07b7          	lui	a5,0xffff0
   1067c:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10680:	0a042623          	sw	zero,172(s0)
   10684:	00043023          	sd	zero,0(s0)
   10688:	00043423          	sd	zero,8(s0)
   1068c:	00043c23          	sd	zero,24(s0)
   10690:	02042023          	sw	zero,32(s0)
   10694:	02042423          	sw	zero,40(s0)
   10698:	00f42823          	sw	a5,16(s0)
   1069c:	00800613          	li	a2,8
   106a0:	00000593          	li	a1,0
   106a4:	0a440513          	addi	a0,s0,164
   106a8:	630000ef          	jal	10cd8 <memset>
   106ac:	04043c23          	sd	zero,88(s0)
   106b0:	06042023          	sw	zero,96(s0)
   106b4:	06043c23          	sd	zero,120(s0)
   106b8:	08042023          	sw	zero,128(s0)
   106bc:	01813083          	ld	ra,24(sp)
   106c0:	00040513          	mv	a0,s0
   106c4:	01013403          	ld	s0,16(sp)
   106c8:	00813483          	ld	s1,8(sp)
   106cc:	00013903          	ld	s2,0(sp)
   106d0:	02010113          	addi	sp,sp,32
   106d4:	00008067          	ret
   106d8:	0004b403          	ld	s0,0(s1)
   106dc:	00040663          	beqz	s0,106e8 <__sfp+0xd8>
   106e0:	00040493          	mv	s1,s0
   106e4:	f55ff06f          	j	10638 <__sfp+0x28>
   106e8:	2d800593          	li	a1,728
   106ec:	00090513          	mv	a0,s2
   106f0:	455000ef          	jal	11344 <_malloc_r>
   106f4:	00050413          	mv	s0,a0
   106f8:	02050c63          	beqz	a0,10730 <__sfp+0x120>
   106fc:	00400793          	li	a5,4
   10700:	01850513          	addi	a0,a0,24
   10704:	00043023          	sd	zero,0(s0)
   10708:	00f42423          	sw	a5,8(s0)
   1070c:	00a43823          	sd	a0,16(s0)
   10710:	2c000613          	li	a2,704
   10714:	00000593          	li	a1,0
   10718:	5c0000ef          	jal	10cd8 <memset>
   1071c:	0084b023          	sd	s0,0(s1)
   10720:	00040493          	mv	s1,s0
   10724:	f15ff06f          	j	10638 <__sfp+0x28>
   10728:	da1ff0ef          	jal	104c8 <global_stdio_init.part.0>
   1072c:	f05ff06f          	j	10630 <__sfp+0x20>
   10730:	0004b023          	sd	zero,0(s1)
   10734:	00c00793          	li	a5,12
   10738:	00f92023          	sw	a5,0(s2)
   1073c:	f81ff06f          	j	106bc <__sfp+0xac>

0000000000010740 <__sinit>:
   10740:	04853783          	ld	a5,72(a0)
   10744:	00078463          	beqz	a5,1074c <__sinit+0xc>
   10748:	00008067          	ret
   1074c:	000107b7          	lui	a5,0x10
   10750:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10754:	45c78793          	addi	a5,a5,1116 # 1045c <cleanup_stdio>
   10758:	04f53423          	sd	a5,72(a0)
   1075c:	fe0716e3          	bnez	a4,10748 <__sinit+0x8>
   10760:	d69ff06f          	j	104c8 <global_stdio_init.part.0>

0000000000010764 <__sfp_lock_acquire>:
   10764:	00008067          	ret

0000000000010768 <__sfp_lock_release>:
   10768:	00008067          	ret

000000000001076c <__fp_lock_all>:
   1076c:	00013637          	lui	a2,0x13
   10770:	000105b7          	lui	a1,0x10
   10774:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10778:	43858593          	addi	a1,a1,1080 # 10438 <__fp_lock>
   1077c:	00000513          	li	a0,0
   10780:	01c0006f          	j	1079c <_fwalk_sglue>

0000000000010784 <__fp_unlock_all>:
   10784:	00013637          	lui	a2,0x13
   10788:	000105b7          	lui	a1,0x10
   1078c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10790:	4c058593          	addi	a1,a1,1216 # 104c0 <__fp_unlock>
   10794:	00000513          	li	a0,0
   10798:	0040006f          	j	1079c <_fwalk_sglue>

000000000001079c <_fwalk_sglue>:
   1079c:	fb010113          	addi	sp,sp,-80
   107a0:	03213823          	sd	s2,48(sp)
   107a4:	03313423          	sd	s3,40(sp)
   107a8:	03413023          	sd	s4,32(sp)
   107ac:	01513c23          	sd	s5,24(sp)
   107b0:	01613823          	sd	s6,16(sp)
   107b4:	01713423          	sd	s7,8(sp)
   107b8:	04113423          	sd	ra,72(sp)
   107bc:	04813023          	sd	s0,64(sp)
   107c0:	02913c23          	sd	s1,56(sp)
   107c4:	00050993          	mv	s3,a0
   107c8:	00058a93          	mv	s5,a1
   107cc:	00060913          	mv	s2,a2
   107d0:	00000b13          	li	s6,0
   107d4:	00100b93          	li	s7,1
   107d8:	fff00a13          	li	s4,-1
   107dc:	00892783          	lw	a5,8(s2)
   107e0:	01093403          	ld	s0,16(s2)
   107e4:	04f05863          	blez	a5,10834 <_fwalk_sglue+0x98>
   107e8:	02079793          	slli	a5,a5,0x20
   107ec:	0207d793          	srli	a5,a5,0x20
   107f0:	00179493          	slli	s1,a5,0x1
   107f4:	00f484b3          	add	s1,s1,a5
   107f8:	00249493          	slli	s1,s1,0x2
   107fc:	40f484b3          	sub	s1,s1,a5
   10800:	00449493          	slli	s1,s1,0x4
   10804:	009404b3          	add	s1,s0,s1
   10808:	01045783          	lhu	a5,16(s0)
   1080c:	02fbf063          	bgeu	s7,a5,1082c <_fwalk_sglue+0x90>
   10810:	01241783          	lh	a5,18(s0)
   10814:	00040593          	mv	a1,s0
   10818:	00098513          	mv	a0,s3
   1081c:	01478863          	beq	a5,s4,1082c <_fwalk_sglue+0x90>
   10820:	000a80e7          	jalr	s5
   10824:	01656b33          	or	s6,a0,s6
   10828:	000b0b1b          	sext.w	s6,s6
   1082c:	0b040413          	addi	s0,s0,176
   10830:	fc941ce3          	bne	s0,s1,10808 <_fwalk_sglue+0x6c>
   10834:	00093903          	ld	s2,0(s2)
   10838:	fa0912e3          	bnez	s2,107dc <_fwalk_sglue+0x40>
   1083c:	04813083          	ld	ra,72(sp)
   10840:	04013403          	ld	s0,64(sp)
   10844:	03813483          	ld	s1,56(sp)
   10848:	03013903          	ld	s2,48(sp)
   1084c:	02813983          	ld	s3,40(sp)
   10850:	02013a03          	ld	s4,32(sp)
   10854:	01813a83          	ld	s5,24(sp)
   10858:	00813b83          	ld	s7,8(sp)
   1085c:	000b0513          	mv	a0,s6
   10860:	01013b03          	ld	s6,16(sp)
   10864:	05010113          	addi	sp,sp,80
   10868:	00008067          	ret

000000000001086c <__sread>:
   1086c:	ff010113          	addi	sp,sp,-16
   10870:	00813023          	sd	s0,0(sp)
   10874:	00058413          	mv	s0,a1
   10878:	01259583          	lh	a1,18(a1)
   1087c:	00113423          	sd	ra,8(sp)
   10880:	2ec000ef          	jal	10b6c <_read_r>
   10884:	02054063          	bltz	a0,108a4 <__sread+0x38>
   10888:	09043783          	ld	a5,144(s0)
   1088c:	00813083          	ld	ra,8(sp)
   10890:	00a787b3          	add	a5,a5,a0
   10894:	08f43823          	sd	a5,144(s0)
   10898:	00013403          	ld	s0,0(sp)
   1089c:	01010113          	addi	sp,sp,16
   108a0:	00008067          	ret
   108a4:	01045783          	lhu	a5,16(s0)
   108a8:	fffff737          	lui	a4,0xfffff
   108ac:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   108b0:	00e7f7b3          	and	a5,a5,a4
   108b4:	00813083          	ld	ra,8(sp)
   108b8:	00f41823          	sh	a5,16(s0)
   108bc:	00013403          	ld	s0,0(sp)
   108c0:	01010113          	addi	sp,sp,16
   108c4:	00008067          	ret

00000000000108c8 <__seofread>:
   108c8:	00000513          	li	a0,0
   108cc:	00008067          	ret

00000000000108d0 <__swrite>:
   108d0:	01059783          	lh	a5,16(a1)
   108d4:	fd010113          	addi	sp,sp,-48
   108d8:	02813023          	sd	s0,32(sp)
   108dc:	00913c23          	sd	s1,24(sp)
   108e0:	01213823          	sd	s2,16(sp)
   108e4:	01313423          	sd	s3,8(sp)
   108e8:	02113423          	sd	ra,40(sp)
   108ec:	1007f713          	andi	a4,a5,256
   108f0:	00058413          	mv	s0,a1
   108f4:	00060913          	mv	s2,a2
   108f8:	00068993          	mv	s3,a3
   108fc:	00050493          	mv	s1,a0
   10900:	04071063          	bnez	a4,10940 <__swrite+0x70>
   10904:	fffff737          	lui	a4,0xfffff
   10908:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   1090c:	00e7f7b3          	and	a5,a5,a4
   10910:	01241583          	lh	a1,18(s0)
   10914:	00f41823          	sh	a5,16(s0)
   10918:	02013403          	ld	s0,32(sp)
   1091c:	02813083          	ld	ra,40(sp)
   10920:	00098693          	mv	a3,s3
   10924:	00090613          	mv	a2,s2
   10928:	00813983          	ld	s3,8(sp)
   1092c:	01013903          	ld	s2,16(sp)
   10930:	00048513          	mv	a0,s1
   10934:	01813483          	ld	s1,24(sp)
   10938:	03010113          	addi	sp,sp,48
   1093c:	2980006f          	j	10bd4 <_write_r>
   10940:	01259583          	lh	a1,18(a1)
   10944:	00200693          	li	a3,2
   10948:	00000613          	li	a2,0
   1094c:	1b8000ef          	jal	10b04 <_lseek_r>
   10950:	01041783          	lh	a5,16(s0)
   10954:	fb1ff06f          	j	10904 <__swrite+0x34>

0000000000010958 <__sseek>:
   10958:	ff010113          	addi	sp,sp,-16
   1095c:	00813023          	sd	s0,0(sp)
   10960:	00058413          	mv	s0,a1
   10964:	01259583          	lh	a1,18(a1)
   10968:	00113423          	sd	ra,8(sp)
   1096c:	198000ef          	jal	10b04 <_lseek_r>
   10970:	fff00713          	li	a4,-1
   10974:	01041783          	lh	a5,16(s0)
   10978:	02e50263          	beq	a0,a4,1099c <__sseek+0x44>
   1097c:	00001737          	lui	a4,0x1
   10980:	00e7e7b3          	or	a5,a5,a4
   10984:	00813083          	ld	ra,8(sp)
   10988:	08a43823          	sd	a0,144(s0)
   1098c:	00f41823          	sh	a5,16(s0)
   10990:	00013403          	ld	s0,0(sp)
   10994:	01010113          	addi	sp,sp,16
   10998:	00008067          	ret
   1099c:	fffff737          	lui	a4,0xfffff
   109a0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   109a4:	00e7f7b3          	and	a5,a5,a4
   109a8:	00813083          	ld	ra,8(sp)
   109ac:	00f41823          	sh	a5,16(s0)
   109b0:	00013403          	ld	s0,0(sp)
   109b4:	01010113          	addi	sp,sp,16
   109b8:	00008067          	ret

00000000000109bc <__sclose>:
   109bc:	01259583          	lh	a1,18(a1)
   109c0:	0040006f          	j	109c4 <_close_r>

00000000000109c4 <_close_r>:
   109c4:	fe010113          	addi	sp,sp,-32
   109c8:	00813823          	sd	s0,16(sp)
   109cc:	00913423          	sd	s1,8(sp)
   109d0:	00050413          	mv	s0,a0
   109d4:	00058513          	mv	a0,a1
   109d8:	00113c23          	sd	ra,24(sp)
   109dc:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   109e0:	774010ef          	jal	12154 <_close>
   109e4:	fff00793          	li	a5,-1
   109e8:	00f50c63          	beq	a0,a5,10a00 <_close_r+0x3c>
   109ec:	01813083          	ld	ra,24(sp)
   109f0:	01013403          	ld	s0,16(sp)
   109f4:	00813483          	ld	s1,8(sp)
   109f8:	02010113          	addi	sp,sp,32
   109fc:	00008067          	ret
   10a00:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a04:	fe0784e3          	beqz	a5,109ec <_close_r+0x28>
   10a08:	01813083          	ld	ra,24(sp)
   10a0c:	00f42023          	sw	a5,0(s0)
   10a10:	01013403          	ld	s0,16(sp)
   10a14:	00813483          	ld	s1,8(sp)
   10a18:	02010113          	addi	sp,sp,32
   10a1c:	00008067          	ret

0000000000010a20 <_reclaim_reent>:
   10a20:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10a24:	0ca78e63          	beq	a5,a0,10b00 <_reclaim_reent+0xe0>
   10a28:	06853583          	ld	a1,104(a0)
   10a2c:	fd010113          	addi	sp,sp,-48
   10a30:	00913c23          	sd	s1,24(sp)
   10a34:	02113423          	sd	ra,40(sp)
   10a38:	02813023          	sd	s0,32(sp)
   10a3c:	00050493          	mv	s1,a0
   10a40:	04058863          	beqz	a1,10a90 <_reclaim_reent+0x70>
   10a44:	01213823          	sd	s2,16(sp)
   10a48:	01313423          	sd	s3,8(sp)
   10a4c:	00000913          	li	s2,0
   10a50:	20000993          	li	s3,512
   10a54:	012587b3          	add	a5,a1,s2
   10a58:	0007b403          	ld	s0,0(a5)
   10a5c:	00040e63          	beqz	s0,10a78 <_reclaim_reent+0x58>
   10a60:	00040593          	mv	a1,s0
   10a64:	00043403          	ld	s0,0(s0)
   10a68:	00048513          	mv	a0,s1
   10a6c:	5c8000ef          	jal	11034 <_free_r>
   10a70:	fe0418e3          	bnez	s0,10a60 <_reclaim_reent+0x40>
   10a74:	0684b583          	ld	a1,104(s1)
   10a78:	00890913          	addi	s2,s2,8
   10a7c:	fd391ce3          	bne	s2,s3,10a54 <_reclaim_reent+0x34>
   10a80:	00048513          	mv	a0,s1
   10a84:	5b0000ef          	jal	11034 <_free_r>
   10a88:	01013903          	ld	s2,16(sp)
   10a8c:	00813983          	ld	s3,8(sp)
   10a90:	0504b583          	ld	a1,80(s1)
   10a94:	00058663          	beqz	a1,10aa0 <_reclaim_reent+0x80>
   10a98:	00048513          	mv	a0,s1
   10a9c:	598000ef          	jal	11034 <_free_r>
   10aa0:	0604b403          	ld	s0,96(s1)
   10aa4:	00040c63          	beqz	s0,10abc <_reclaim_reent+0x9c>
   10aa8:	00040593          	mv	a1,s0
   10aac:	00043403          	ld	s0,0(s0)
   10ab0:	00048513          	mv	a0,s1
   10ab4:	580000ef          	jal	11034 <_free_r>
   10ab8:	fe0418e3          	bnez	s0,10aa8 <_reclaim_reent+0x88>
   10abc:	0784b583          	ld	a1,120(s1)
   10ac0:	00058663          	beqz	a1,10acc <_reclaim_reent+0xac>
   10ac4:	00048513          	mv	a0,s1
   10ac8:	56c000ef          	jal	11034 <_free_r>
   10acc:	0484b783          	ld	a5,72(s1)
   10ad0:	00078e63          	beqz	a5,10aec <_reclaim_reent+0xcc>
   10ad4:	02013403          	ld	s0,32(sp)
   10ad8:	02813083          	ld	ra,40(sp)
   10adc:	00048513          	mv	a0,s1
   10ae0:	01813483          	ld	s1,24(sp)
   10ae4:	03010113          	addi	sp,sp,48
   10ae8:	00078067          	jr	a5
   10aec:	02813083          	ld	ra,40(sp)
   10af0:	02013403          	ld	s0,32(sp)
   10af4:	01813483          	ld	s1,24(sp)
   10af8:	03010113          	addi	sp,sp,48
   10afc:	00008067          	ret
   10b00:	00008067          	ret

0000000000010b04 <_lseek_r>:
   10b04:	fe010113          	addi	sp,sp,-32
   10b08:	00058713          	mv	a4,a1
   10b0c:	00813823          	sd	s0,16(sp)
   10b10:	00913423          	sd	s1,8(sp)
   10b14:	00060593          	mv	a1,a2
   10b18:	00050413          	mv	s0,a0
   10b1c:	00068613          	mv	a2,a3
   10b20:	00070513          	mv	a0,a4
   10b24:	00113c23          	sd	ra,24(sp)
   10b28:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b2c:	69c010ef          	jal	121c8 <_lseek>
   10b30:	fff00793          	li	a5,-1
   10b34:	00f50c63          	beq	a0,a5,10b4c <_lseek_r+0x48>
   10b38:	01813083          	ld	ra,24(sp)
   10b3c:	01013403          	ld	s0,16(sp)
   10b40:	00813483          	ld	s1,8(sp)
   10b44:	02010113          	addi	sp,sp,32
   10b48:	00008067          	ret
   10b4c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b50:	fe0784e3          	beqz	a5,10b38 <_lseek_r+0x34>
   10b54:	01813083          	ld	ra,24(sp)
   10b58:	00f42023          	sw	a5,0(s0)
   10b5c:	01013403          	ld	s0,16(sp)
   10b60:	00813483          	ld	s1,8(sp)
   10b64:	02010113          	addi	sp,sp,32
   10b68:	00008067          	ret

0000000000010b6c <_read_r>:
   10b6c:	fe010113          	addi	sp,sp,-32
   10b70:	00058713          	mv	a4,a1
   10b74:	00813823          	sd	s0,16(sp)
   10b78:	00913423          	sd	s1,8(sp)
   10b7c:	00060593          	mv	a1,a2
   10b80:	00050413          	mv	s0,a0
   10b84:	00068613          	mv	a2,a3
   10b88:	00070513          	mv	a0,a4
   10b8c:	00113c23          	sd	ra,24(sp)
   10b90:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b94:	678010ef          	jal	1220c <_read>
   10b98:	fff00793          	li	a5,-1
   10b9c:	00f50c63          	beq	a0,a5,10bb4 <_read_r+0x48>
   10ba0:	01813083          	ld	ra,24(sp)
   10ba4:	01013403          	ld	s0,16(sp)
   10ba8:	00813483          	ld	s1,8(sp)
   10bac:	02010113          	addi	sp,sp,32
   10bb0:	00008067          	ret
   10bb4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10bb8:	fe0784e3          	beqz	a5,10ba0 <_read_r+0x34>
   10bbc:	01813083          	ld	ra,24(sp)
   10bc0:	00f42023          	sw	a5,0(s0)
   10bc4:	01013403          	ld	s0,16(sp)
   10bc8:	00813483          	ld	s1,8(sp)
   10bcc:	02010113          	addi	sp,sp,32
   10bd0:	00008067          	ret

0000000000010bd4 <_write_r>:
   10bd4:	fe010113          	addi	sp,sp,-32
   10bd8:	00058713          	mv	a4,a1
   10bdc:	00813823          	sd	s0,16(sp)
   10be0:	00913423          	sd	s1,8(sp)
   10be4:	00060593          	mv	a1,a2
   10be8:	00050413          	mv	s0,a0
   10bec:	00068613          	mv	a2,a3
   10bf0:	00070513          	mv	a0,a4
   10bf4:	00113c23          	sd	ra,24(sp)
   10bf8:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10bfc:	6cc010ef          	jal	122c8 <_write>
   10c00:	fff00793          	li	a5,-1
   10c04:	00f50c63          	beq	a0,a5,10c1c <_write_r+0x48>
   10c08:	01813083          	ld	ra,24(sp)
   10c0c:	01013403          	ld	s0,16(sp)
   10c10:	00813483          	ld	s1,8(sp)
   10c14:	02010113          	addi	sp,sp,32
   10c18:	00008067          	ret
   10c1c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c20:	fe0784e3          	beqz	a5,10c08 <_write_r+0x34>
   10c24:	01813083          	ld	ra,24(sp)
   10c28:	00f42023          	sw	a5,0(s0)
   10c2c:	01013403          	ld	s0,16(sp)
   10c30:	00813483          	ld	s1,8(sp)
   10c34:	02010113          	addi	sp,sp,32
   10c38:	00008067          	ret

0000000000010c3c <__libc_init_array>:
   10c3c:	fe010113          	addi	sp,sp,-32
   10c40:	00813823          	sd	s0,16(sp)
   10c44:	000137b7          	lui	a5,0x13
   10c48:	00013437          	lui	s0,0x13
   10c4c:	01213023          	sd	s2,0(sp)
   10c50:	00078793          	mv	a5,a5
   10c54:	00040713          	mv	a4,s0
   10c58:	00113c23          	sd	ra,24(sp)
   10c5c:	00913423          	sd	s1,8(sp)
   10c60:	40e78933          	sub	s2,a5,a4
   10c64:	02e78263          	beq	a5,a4,10c88 <__libc_init_array+0x4c>
   10c68:	40395913          	srai	s2,s2,0x3
   10c6c:	00040413          	mv	s0,s0
   10c70:	00000493          	li	s1,0
   10c74:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10c78:	00148493          	addi	s1,s1,1
   10c7c:	00840413          	addi	s0,s0,8
   10c80:	000780e7          	jalr	a5 # 13000 <__init_array_start>
   10c84:	ff24e8e3          	bltu	s1,s2,10c74 <__libc_init_array+0x38>
   10c88:	000137b7          	lui	a5,0x13
   10c8c:	00013437          	lui	s0,0x13
   10c90:	01078793          	addi	a5,a5,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10c94:	00040713          	mv	a4,s0
   10c98:	40e78933          	sub	s2,a5,a4
   10c9c:	40395913          	srai	s2,s2,0x3
   10ca0:	02e78063          	beq	a5,a4,10cc0 <__libc_init_array+0x84>
   10ca4:	00040413          	mv	s0,s0
   10ca8:	00000493          	li	s1,0
   10cac:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10cb0:	00148493          	addi	s1,s1,1
   10cb4:	00840413          	addi	s0,s0,8
   10cb8:	000780e7          	jalr	a5
   10cbc:	ff24e8e3          	bltu	s1,s2,10cac <__libc_init_array+0x70>
   10cc0:	01813083          	ld	ra,24(sp)
   10cc4:	01013403          	ld	s0,16(sp)
   10cc8:	00813483          	ld	s1,8(sp)
   10ccc:	00013903          	ld	s2,0(sp)
   10cd0:	02010113          	addi	sp,sp,32
   10cd4:	00008067          	ret

0000000000010cd8 <memset>:
   10cd8:	00f00313          	li	t1,15
   10cdc:	00050713          	mv	a4,a0
   10ce0:	02c37a63          	bgeu	t1,a2,10d14 <memset+0x3c>
   10ce4:	00f77793          	andi	a5,a4,15
   10ce8:	0a079063          	bnez	a5,10d88 <memset+0xb0>
   10cec:	06059e63          	bnez	a1,10d68 <memset+0x90>
   10cf0:	ff067693          	andi	a3,a2,-16
   10cf4:	00f67613          	andi	a2,a2,15
   10cf8:	00e686b3          	add	a3,a3,a4
   10cfc:	00b73023          	sd	a1,0(a4)
   10d00:	00b73423          	sd	a1,8(a4)
   10d04:	01070713          	addi	a4,a4,16
   10d08:	fed76ae3          	bltu	a4,a3,10cfc <memset+0x24>
   10d0c:	00061463          	bnez	a2,10d14 <memset+0x3c>
   10d10:	00008067          	ret
   10d14:	40c306b3          	sub	a3,t1,a2
   10d18:	00269693          	slli	a3,a3,0x2
   10d1c:	00000297          	auipc	t0,0x0
   10d20:	005686b3          	add	a3,a3,t0
   10d24:	00c68067          	jr	12(a3)
   10d28:	00b70723          	sb	a1,14(a4)
   10d2c:	00b706a3          	sb	a1,13(a4)
   10d30:	00b70623          	sb	a1,12(a4)
   10d34:	00b705a3          	sb	a1,11(a4)
   10d38:	00b70523          	sb	a1,10(a4)
   10d3c:	00b704a3          	sb	a1,9(a4)
   10d40:	00b70423          	sb	a1,8(a4)
   10d44:	00b703a3          	sb	a1,7(a4)
   10d48:	00b70323          	sb	a1,6(a4)
   10d4c:	00b702a3          	sb	a1,5(a4)
   10d50:	00b70223          	sb	a1,4(a4)
   10d54:	00b701a3          	sb	a1,3(a4)
   10d58:	00b70123          	sb	a1,2(a4)
   10d5c:	00b700a3          	sb	a1,1(a4)
   10d60:	00b70023          	sb	a1,0(a4)
   10d64:	00008067          	ret
   10d68:	0ff5f593          	zext.b	a1,a1
   10d6c:	00859693          	slli	a3,a1,0x8
   10d70:	00d5e5b3          	or	a1,a1,a3
   10d74:	01059693          	slli	a3,a1,0x10
   10d78:	00d5e5b3          	or	a1,a1,a3
   10d7c:	02059693          	slli	a3,a1,0x20
   10d80:	00d5e5b3          	or	a1,a1,a3
   10d84:	f6dff06f          	j	10cf0 <memset+0x18>
   10d88:	00279693          	slli	a3,a5,0x2
   10d8c:	00000297          	auipc	t0,0x0
   10d90:	005686b3          	add	a3,a3,t0
   10d94:	00008293          	mv	t0,ra
   10d98:	f98680e7          	jalr	-104(a3)
   10d9c:	00028093          	mv	ra,t0
   10da0:	ff078793          	addi	a5,a5,-16
   10da4:	40f70733          	sub	a4,a4,a5
   10da8:	00f60633          	add	a2,a2,a5
   10dac:	f6c374e3          	bgeu	t1,a2,10d14 <memset+0x3c>
   10db0:	f3dff06f          	j	10cec <memset+0x14>

0000000000010db4 <__call_exitprocs>:
   10db4:	fb010113          	addi	sp,sp,-80
   10db8:	03413023          	sd	s4,32(sp)
   10dbc:	03213823          	sd	s2,48(sp)
   10dc0:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10dc4:	04113423          	sd	ra,72(sp)
   10dc8:	06090c63          	beqz	s2,10e40 <__call_exitprocs+0x8c>
   10dcc:	03313423          	sd	s3,40(sp)
   10dd0:	01513c23          	sd	s5,24(sp)
   10dd4:	01613823          	sd	s6,16(sp)
   10dd8:	01713423          	sd	s7,8(sp)
   10ddc:	04813023          	sd	s0,64(sp)
   10de0:	02913c23          	sd	s1,56(sp)
   10de4:	01813023          	sd	s8,0(sp)
   10de8:	00050b13          	mv	s6,a0
   10dec:	00058b93          	mv	s7,a1
   10df0:	fff00993          	li	s3,-1
   10df4:	00100a93          	li	s5,1
   10df8:	00892483          	lw	s1,8(s2)
   10dfc:	fff4841b          	addiw	s0,s1,-1
   10e00:	02044263          	bltz	s0,10e24 <__call_exitprocs+0x70>
   10e04:	00349493          	slli	s1,s1,0x3
   10e08:	009904b3          	add	s1,s2,s1
   10e0c:	040b8463          	beqz	s7,10e54 <__call_exitprocs+0xa0>
   10e10:	2084b783          	ld	a5,520(s1)
   10e14:	05778063          	beq	a5,s7,10e54 <__call_exitprocs+0xa0>
   10e18:	fff4041b          	addiw	s0,s0,-1
   10e1c:	ff848493          	addi	s1,s1,-8
   10e20:	ff3418e3          	bne	s0,s3,10e10 <__call_exitprocs+0x5c>
   10e24:	04013403          	ld	s0,64(sp)
   10e28:	03813483          	ld	s1,56(sp)
   10e2c:	02813983          	ld	s3,40(sp)
   10e30:	01813a83          	ld	s5,24(sp)
   10e34:	01013b03          	ld	s6,16(sp)
   10e38:	00813b83          	ld	s7,8(sp)
   10e3c:	00013c03          	ld	s8,0(sp)
   10e40:	04813083          	ld	ra,72(sp)
   10e44:	03013903          	ld	s2,48(sp)
   10e48:	02013a03          	ld	s4,32(sp)
   10e4c:	05010113          	addi	sp,sp,80
   10e50:	00008067          	ret
   10e54:	00892783          	lw	a5,8(s2)
   10e58:	0084b683          	ld	a3,8(s1)
   10e5c:	fff7879b          	addiw	a5,a5,-1
   10e60:	06878a63          	beq	a5,s0,10ed4 <__call_exitprocs+0x120>
   10e64:	0004b423          	sd	zero,8(s1)
   10e68:	02068663          	beqz	a3,10e94 <__call_exitprocs+0xe0>
   10e6c:	31092783          	lw	a5,784(s2)
   10e70:	008a973b          	sllw	a4,s5,s0
   10e74:	00892c03          	lw	s8,8(s2)
   10e78:	00e7f7b3          	and	a5,a5,a4
   10e7c:	02079463          	bnez	a5,10ea4 <__call_exitprocs+0xf0>
   10e80:	000680e7          	jalr	a3
   10e84:	00892703          	lw	a4,8(s2)
   10e88:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10e8c:	03871e63          	bne	a4,s8,10ec8 <__call_exitprocs+0x114>
   10e90:	03279c63          	bne	a5,s2,10ec8 <__call_exitprocs+0x114>
   10e94:	fff4041b          	addiw	s0,s0,-1
   10e98:	ff848493          	addi	s1,s1,-8
   10e9c:	f73418e3          	bne	s0,s3,10e0c <__call_exitprocs+0x58>
   10ea0:	f85ff06f          	j	10e24 <__call_exitprocs+0x70>
   10ea4:	31492783          	lw	a5,788(s2)
   10ea8:	1084b583          	ld	a1,264(s1)
   10eac:	00f77733          	and	a4,a4,a5
   10eb0:	02071663          	bnez	a4,10edc <__call_exitprocs+0x128>
   10eb4:	000b0513          	mv	a0,s6
   10eb8:	000680e7          	jalr	a3
   10ebc:	00892703          	lw	a4,8(s2)
   10ec0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10ec4:	fd8706e3          	beq	a4,s8,10e90 <__call_exitprocs+0xdc>
   10ec8:	f4078ee3          	beqz	a5,10e24 <__call_exitprocs+0x70>
   10ecc:	00078913          	mv	s2,a5
   10ed0:	f29ff06f          	j	10df8 <__call_exitprocs+0x44>
   10ed4:	00892423          	sw	s0,8(s2)
   10ed8:	f91ff06f          	j	10e68 <__call_exitprocs+0xb4>
   10edc:	00058513          	mv	a0,a1
   10ee0:	000680e7          	jalr	a3
   10ee4:	fa1ff06f          	j	10e84 <__call_exitprocs+0xd0>

0000000000010ee8 <atexit>:
   10ee8:	00050593          	mv	a1,a0
   10eec:	00000693          	li	a3,0
   10ef0:	00000613          	li	a2,0
   10ef4:	00000513          	li	a0,0
   10ef8:	1bc0106f          	j	120b4 <__register_exitproc>

0000000000010efc <_malloc_trim_r>:
   10efc:	fd010113          	addi	sp,sp,-48
   10f00:	01313423          	sd	s3,8(sp)
   10f04:	000139b7          	lui	s3,0x13
   10f08:	02813023          	sd	s0,32(sp)
   10f0c:	00913c23          	sd	s1,24(sp)
   10f10:	01213823          	sd	s2,16(sp)
   10f14:	01413023          	sd	s4,0(sp)
   10f18:	02113423          	sd	ra,40(sp)
   10f1c:	00058a13          	mv	s4,a1
   10f20:	00050913          	mv	s2,a0
   10f24:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   10f28:	47d000ef          	jal	11ba4 <__malloc_lock>
   10f2c:	0109b783          	ld	a5,16(s3)
   10f30:	00001437          	lui	s0,0x1
   10f34:	fdf40413          	addi	s0,s0,-33 # fdf <exit-0xf141>
   10f38:	0087b483          	ld	s1,8(a5)
   10f3c:	000017b7          	lui	a5,0x1
   10f40:	ffc4f493          	andi	s1,s1,-4
   10f44:	00848433          	add	s0,s1,s0
   10f48:	41440433          	sub	s0,s0,s4
   10f4c:	00c45413          	srli	s0,s0,0xc
   10f50:	fff40413          	addi	s0,s0,-1
   10f54:	00c41413          	slli	s0,s0,0xc
   10f58:	00f44e63          	blt	s0,a5,10f74 <_malloc_trim_r+0x78>
   10f5c:	00000593          	li	a1,0
   10f60:	00090513          	mv	a0,s2
   10f64:	098010ef          	jal	11ffc <_sbrk_r>
   10f68:	0109b783          	ld	a5,16(s3)
   10f6c:	009787b3          	add	a5,a5,s1
   10f70:	02f50863          	beq	a0,a5,10fa0 <_malloc_trim_r+0xa4>
   10f74:	00090513          	mv	a0,s2
   10f78:	431000ef          	jal	11ba8 <__malloc_unlock>
   10f7c:	02813083          	ld	ra,40(sp)
   10f80:	02013403          	ld	s0,32(sp)
   10f84:	01813483          	ld	s1,24(sp)
   10f88:	01013903          	ld	s2,16(sp)
   10f8c:	00813983          	ld	s3,8(sp)
   10f90:	00013a03          	ld	s4,0(sp)
   10f94:	00000513          	li	a0,0
   10f98:	03010113          	addi	sp,sp,48
   10f9c:	00008067          	ret
   10fa0:	408005b3          	neg	a1,s0
   10fa4:	00090513          	mv	a0,s2
   10fa8:	054010ef          	jal	11ffc <_sbrk_r>
   10fac:	fff00793          	li	a5,-1
   10fb0:	04f50863          	beq	a0,a5,11000 <_malloc_trim_r+0x104>
   10fb4:	42018793          	addi	a5,gp,1056 # 13c38 <__malloc_current_mallinfo>
   10fb8:	0109b683          	ld	a3,16(s3)
   10fbc:	0007a703          	lw	a4,0(a5) # 1000 <exit-0xf120>
   10fc0:	408484b3          	sub	s1,s1,s0
   10fc4:	0014e493          	ori	s1,s1,1
   10fc8:	00090513          	mv	a0,s2
   10fcc:	4087073b          	subw	a4,a4,s0
   10fd0:	0096b423          	sd	s1,8(a3)
   10fd4:	00e7a023          	sw	a4,0(a5)
   10fd8:	3d1000ef          	jal	11ba8 <__malloc_unlock>
   10fdc:	02813083          	ld	ra,40(sp)
   10fe0:	02013403          	ld	s0,32(sp)
   10fe4:	01813483          	ld	s1,24(sp)
   10fe8:	01013903          	ld	s2,16(sp)
   10fec:	00813983          	ld	s3,8(sp)
   10ff0:	00013a03          	ld	s4,0(sp)
   10ff4:	00100513          	li	a0,1
   10ff8:	03010113          	addi	sp,sp,48
   10ffc:	00008067          	ret
   11000:	00000593          	li	a1,0
   11004:	00090513          	mv	a0,s2
   11008:	7f5000ef          	jal	11ffc <_sbrk_r>
   1100c:	0109b703          	ld	a4,16(s3)
   11010:	01f00693          	li	a3,31
   11014:	40e507b3          	sub	a5,a0,a4
   11018:	f4f6dee3          	bge	a3,a5,10f74 <_malloc_trim_r+0x78>
   1101c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11020:	0017e793          	ori	a5,a5,1
   11024:	40c50533          	sub	a0,a0,a2
   11028:	00f73423          	sd	a5,8(a4)
   1102c:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11030:	f45ff06f          	j	10f74 <_malloc_trim_r+0x78>

0000000000011034 <_free_r>:
   11034:	12058c63          	beqz	a1,1116c <_free_r+0x138>
   11038:	fe010113          	addi	sp,sp,-32
   1103c:	00813823          	sd	s0,16(sp)
   11040:	00913423          	sd	s1,8(sp)
   11044:	00058413          	mv	s0,a1
   11048:	00050493          	mv	s1,a0
   1104c:	00113c23          	sd	ra,24(sp)
   11050:	355000ef          	jal	11ba4 <__malloc_lock>
   11054:	ff843503          	ld	a0,-8(s0)
   11058:	ff040713          	addi	a4,s0,-16
   1105c:	000135b7          	lui	a1,0x13
   11060:	ffe57793          	andi	a5,a0,-2
   11064:	00f70633          	add	a2,a4,a5
   11068:	18858593          	addi	a1,a1,392 # 13188 <__malloc_av_>
   1106c:	00863683          	ld	a3,8(a2)
   11070:	0105b803          	ld	a6,16(a1)
   11074:	00157893          	andi	a7,a0,1
   11078:	ffc6f693          	andi	a3,a3,-4
   1107c:	1ac80463          	beq	a6,a2,11224 <_free_r+0x1f0>
   11080:	00d63423          	sd	a3,8(a2)
   11084:	00d60833          	add	a6,a2,a3
   11088:	00883803          	ld	a6,8(a6)
   1108c:	00187813          	andi	a6,a6,1
   11090:	0a089263          	bnez	a7,11134 <_free_r+0x100>
   11094:	ff043303          	ld	t1,-16(s0)
   11098:	00013537          	lui	a0,0x13
   1109c:	19850513          	addi	a0,a0,408 # 13198 <__malloc_av_+0x10>
   110a0:	40670733          	sub	a4,a4,t1
   110a4:	01073883          	ld	a7,16(a4)
   110a8:	006787b3          	add	a5,a5,t1
   110ac:	14a88663          	beq	a7,a0,111f8 <_free_r+0x1c4>
   110b0:	01873303          	ld	t1,24(a4)
   110b4:	0068bc23          	sd	t1,24(a7)
   110b8:	01133823          	sd	a7,16(t1) # 10220 <main+0x4>
   110bc:	1a080863          	beqz	a6,1126c <_free_r+0x238>
   110c0:	0017e693          	ori	a3,a5,1
   110c4:	00d73423          	sd	a3,8(a4)
   110c8:	00f63023          	sd	a5,0(a2)
   110cc:	1ff00693          	li	a3,511
   110d0:	0af6ea63          	bltu	a3,a5,11184 <_free_r+0x150>
   110d4:	0037d793          	srli	a5,a5,0x3
   110d8:	0007879b          	sext.w	a5,a5
   110dc:	0017869b          	addiw	a3,a5,1
   110e0:	0016969b          	slliw	a3,a3,0x1
   110e4:	00369693          	slli	a3,a3,0x3
   110e8:	0085b803          	ld	a6,8(a1)
   110ec:	00d586b3          	add	a3,a1,a3
   110f0:	0006b503          	ld	a0,0(a3)
   110f4:	00100613          	li	a2,1
   110f8:	4027d79b          	sraiw	a5,a5,0x2
   110fc:	00f617b3          	sll	a5,a2,a5
   11100:	0107e7b3          	or	a5,a5,a6
   11104:	ff068613          	addi	a2,a3,-16
   11108:	00a73823          	sd	a0,16(a4)
   1110c:	00c73c23          	sd	a2,24(a4)
   11110:	00f5b423          	sd	a5,8(a1)
   11114:	00e6b023          	sd	a4,0(a3)
   11118:	00e53c23          	sd	a4,24(a0)
   1111c:	01013403          	ld	s0,16(sp)
   11120:	01813083          	ld	ra,24(sp)
   11124:	00048513          	mv	a0,s1
   11128:	00813483          	ld	s1,8(sp)
   1112c:	02010113          	addi	sp,sp,32
   11130:	2790006f          	j	11ba8 <__malloc_unlock>
   11134:	02081e63          	bnez	a6,11170 <_free_r+0x13c>
   11138:	00013537          	lui	a0,0x13
   1113c:	00d787b3          	add	a5,a5,a3
   11140:	19850513          	addi	a0,a0,408 # 13198 <__malloc_av_+0x10>
   11144:	01063683          	ld	a3,16(a2)
   11148:	0017e893          	ori	a7,a5,1
   1114c:	00f70833          	add	a6,a4,a5
   11150:	16a68863          	beq	a3,a0,112c0 <_free_r+0x28c>
   11154:	01863603          	ld	a2,24(a2)
   11158:	00c6bc23          	sd	a2,24(a3)
   1115c:	00d63823          	sd	a3,16(a2)
   11160:	01173423          	sd	a7,8(a4)
   11164:	00f83023          	sd	a5,0(a6)
   11168:	f65ff06f          	j	110cc <_free_r+0x98>
   1116c:	00008067          	ret
   11170:	00156513          	ori	a0,a0,1
   11174:	fea43c23          	sd	a0,-8(s0)
   11178:	00f63023          	sd	a5,0(a2)
   1117c:	1ff00693          	li	a3,511
   11180:	f4f6fae3          	bgeu	a3,a5,110d4 <_free_r+0xa0>
   11184:	0097d693          	srli	a3,a5,0x9
   11188:	00400613          	li	a2,4
   1118c:	0ed66463          	bltu	a2,a3,11274 <_free_r+0x240>
   11190:	0067d693          	srli	a3,a5,0x6
   11194:	0396851b          	addiw	a0,a3,57
   11198:	0015151b          	slliw	a0,a0,0x1
   1119c:	00351513          	slli	a0,a0,0x3
   111a0:	0386861b          	addiw	a2,a3,56
   111a4:	00a58533          	add	a0,a1,a0
   111a8:	00053683          	ld	a3,0(a0)
   111ac:	ff050513          	addi	a0,a0,-16
   111b0:	00d51863          	bne	a0,a3,111c0 <_free_r+0x18c>
   111b4:	1280006f          	j	112dc <_free_r+0x2a8>
   111b8:	0106b683          	ld	a3,16(a3)
   111bc:	00d50863          	beq	a0,a3,111cc <_free_r+0x198>
   111c0:	0086b603          	ld	a2,8(a3)
   111c4:	ffc67613          	andi	a2,a2,-4
   111c8:	fec7e8e3          	bltu	a5,a2,111b8 <_free_r+0x184>
   111cc:	0186b503          	ld	a0,24(a3)
   111d0:	00a73c23          	sd	a0,24(a4)
   111d4:	00d73823          	sd	a3,16(a4)
   111d8:	01013403          	ld	s0,16(sp)
   111dc:	00e53823          	sd	a4,16(a0)
   111e0:	01813083          	ld	ra,24(sp)
   111e4:	00048513          	mv	a0,s1
   111e8:	00813483          	ld	s1,8(sp)
   111ec:	00e6bc23          	sd	a4,24(a3)
   111f0:	02010113          	addi	sp,sp,32
   111f4:	1b50006f          	j	11ba8 <__malloc_unlock>
   111f8:	0a081263          	bnez	a6,1129c <_free_r+0x268>
   111fc:	01863583          	ld	a1,24(a2)
   11200:	01063603          	ld	a2,16(a2)
   11204:	00f686b3          	add	a3,a3,a5
   11208:	0016e793          	ori	a5,a3,1
   1120c:	00b63c23          	sd	a1,24(a2)
   11210:	00c5b823          	sd	a2,16(a1)
   11214:	00f73423          	sd	a5,8(a4)
   11218:	00d70733          	add	a4,a4,a3
   1121c:	00d73023          	sd	a3,0(a4)
   11220:	efdff06f          	j	1111c <_free_r+0xe8>
   11224:	00d786b3          	add	a3,a5,a3
   11228:	02089063          	bnez	a7,11248 <_free_r+0x214>
   1122c:	ff043503          	ld	a0,-16(s0)
   11230:	40a70733          	sub	a4,a4,a0
   11234:	01873783          	ld	a5,24(a4)
   11238:	01073603          	ld	a2,16(a4)
   1123c:	00a686b3          	add	a3,a3,a0
   11240:	00f63c23          	sd	a5,24(a2)
   11244:	00c7b823          	sd	a2,16(a5)
   11248:	0016e613          	ori	a2,a3,1
   1124c:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11250:	00c73423          	sd	a2,8(a4)
   11254:	00e5b823          	sd	a4,16(a1)
   11258:	ecf6e2e3          	bltu	a3,a5,1111c <_free_r+0xe8>
   1125c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11260:	00048513          	mv	a0,s1
   11264:	c99ff0ef          	jal	10efc <_malloc_trim_r>
   11268:	eb5ff06f          	j	1111c <_free_r+0xe8>
   1126c:	00d787b3          	add	a5,a5,a3
   11270:	ed5ff06f          	j	11144 <_free_r+0x110>
   11274:	01400613          	li	a2,20
   11278:	02d67a63          	bgeu	a2,a3,112ac <_free_r+0x278>
   1127c:	05400613          	li	a2,84
   11280:	06d66c63          	bltu	a2,a3,112f8 <_free_r+0x2c4>
   11284:	00c7d693          	srli	a3,a5,0xc
   11288:	06f6851b          	addiw	a0,a3,111
   1128c:	0015151b          	slliw	a0,a0,0x1
   11290:	00351513          	slli	a0,a0,0x3
   11294:	06e6861b          	addiw	a2,a3,110
   11298:	f0dff06f          	j	111a4 <_free_r+0x170>
   1129c:	0017e693          	ori	a3,a5,1
   112a0:	00d73423          	sd	a3,8(a4)
   112a4:	00f63023          	sd	a5,0(a2)
   112a8:	e75ff06f          	j	1111c <_free_r+0xe8>
   112ac:	05c6851b          	addiw	a0,a3,92
   112b0:	0015151b          	slliw	a0,a0,0x1
   112b4:	00351513          	slli	a0,a0,0x3
   112b8:	05b6861b          	addiw	a2,a3,91
   112bc:	ee9ff06f          	j	111a4 <_free_r+0x170>
   112c0:	02e5b423          	sd	a4,40(a1)
   112c4:	02e5b023          	sd	a4,32(a1)
   112c8:	00a73c23          	sd	a0,24(a4)
   112cc:	00a73823          	sd	a0,16(a4)
   112d0:	01173423          	sd	a7,8(a4)
   112d4:	00f83023          	sd	a5,0(a6)
   112d8:	e45ff06f          	j	1111c <_free_r+0xe8>
   112dc:	0085b803          	ld	a6,8(a1)
   112e0:	4026561b          	sraiw	a2,a2,0x2
   112e4:	00100793          	li	a5,1
   112e8:	00c797b3          	sll	a5,a5,a2
   112ec:	0107e7b3          	or	a5,a5,a6
   112f0:	00f5b423          	sd	a5,8(a1)
   112f4:	eddff06f          	j	111d0 <_free_r+0x19c>
   112f8:	15400613          	li	a2,340
   112fc:	00d66e63          	bltu	a2,a3,11318 <_free_r+0x2e4>
   11300:	00f7d693          	srli	a3,a5,0xf
   11304:	0786851b          	addiw	a0,a3,120
   11308:	0015151b          	slliw	a0,a0,0x1
   1130c:	00351513          	slli	a0,a0,0x3
   11310:	0776861b          	addiw	a2,a3,119
   11314:	e91ff06f          	j	111a4 <_free_r+0x170>
   11318:	55400613          	li	a2,1364
   1131c:	00d66e63          	bltu	a2,a3,11338 <_free_r+0x304>
   11320:	0127d693          	srli	a3,a5,0x12
   11324:	07d6851b          	addiw	a0,a3,125
   11328:	0015151b          	slliw	a0,a0,0x1
   1132c:	00351513          	slli	a0,a0,0x3
   11330:	07c6861b          	addiw	a2,a3,124
   11334:	e71ff06f          	j	111a4 <_free_r+0x170>
   11338:	7f000513          	li	a0,2032
   1133c:	07e00613          	li	a2,126
   11340:	e65ff06f          	j	111a4 <_free_r+0x170>

0000000000011344 <_malloc_r>:
   11344:	fa010113          	addi	sp,sp,-96
   11348:	04913423          	sd	s1,72(sp)
   1134c:	05213023          	sd	s2,64(sp)
   11350:	04113c23          	sd	ra,88(sp)
   11354:	04813823          	sd	s0,80(sp)
   11358:	03313c23          	sd	s3,56(sp)
   1135c:	01758493          	addi	s1,a1,23
   11360:	02e00793          	li	a5,46
   11364:	00050913          	mv	s2,a0
   11368:	0897e063          	bltu	a5,s1,113e8 <_malloc_r+0xa4>
   1136c:	02000493          	li	s1,32
   11370:	22b4e663          	bltu	s1,a1,1159c <_malloc_r+0x258>
   11374:	031000ef          	jal	11ba4 <__malloc_lock>
   11378:	05000793          	li	a5,80
   1137c:	00400593          	li	a1,4
   11380:	000139b7          	lui	s3,0x13
   11384:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   11388:	00f987b3          	add	a5,s3,a5
   1138c:	0087b403          	ld	s0,8(a5)
   11390:	ff078713          	addi	a4,a5,-16
   11394:	46e40a63          	beq	s0,a4,11808 <_malloc_r+0x4c4>
   11398:	00843783          	ld	a5,8(s0)
   1139c:	01843683          	ld	a3,24(s0)
   113a0:	01043603          	ld	a2,16(s0)
   113a4:	ffc7f793          	andi	a5,a5,-4
   113a8:	00f407b3          	add	a5,s0,a5
   113ac:	0087b703          	ld	a4,8(a5)
   113b0:	00d63c23          	sd	a3,24(a2)
   113b4:	00c6b823          	sd	a2,16(a3)
   113b8:	00176713          	ori	a4,a4,1
   113bc:	00090513          	mv	a0,s2
   113c0:	00e7b423          	sd	a4,8(a5)
   113c4:	7e4000ef          	jal	11ba8 <__malloc_unlock>
   113c8:	05813083          	ld	ra,88(sp)
   113cc:	01040513          	addi	a0,s0,16
   113d0:	05013403          	ld	s0,80(sp)
   113d4:	04813483          	ld	s1,72(sp)
   113d8:	04013903          	ld	s2,64(sp)
   113dc:	03813983          	ld	s3,56(sp)
   113e0:	06010113          	addi	sp,sp,96
   113e4:	00008067          	ret
   113e8:	800007b7          	lui	a5,0x80000
   113ec:	ff04f493          	andi	s1,s1,-16
   113f0:	fff7c793          	not	a5,a5
   113f4:	1a97e463          	bltu	a5,s1,1159c <_malloc_r+0x258>
   113f8:	1ab4e263          	bltu	s1,a1,1159c <_malloc_r+0x258>
   113fc:	7a8000ef          	jal	11ba4 <__malloc_lock>
   11400:	1f700793          	li	a5,503
   11404:	5497fe63          	bgeu	a5,s1,11960 <_malloc_r+0x61c>
   11408:	0094d793          	srli	a5,s1,0x9
   1140c:	1a078c63          	beqz	a5,115c4 <_malloc_r+0x280>
   11410:	00400713          	li	a4,4
   11414:	46f76463          	bltu	a4,a5,1187c <_malloc_r+0x538>
   11418:	0064d793          	srli	a5,s1,0x6
   1141c:	0397859b          	addiw	a1,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffec0c1>
   11420:	0015961b          	slliw	a2,a1,0x1
   11424:	0387881b          	addiw	a6,a5,56
   11428:	00361613          	slli	a2,a2,0x3
   1142c:	000139b7          	lui	s3,0x13
   11430:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   11434:	00c98633          	add	a2,s3,a2
   11438:	00863403          	ld	s0,8(a2)
   1143c:	ff060613          	addi	a2,a2,-16
   11440:	02860863          	beq	a2,s0,11470 <_malloc_r+0x12c>
   11444:	01f00513          	li	a0,31
   11448:	0140006f          	j	1145c <_malloc_r+0x118>
   1144c:	01843683          	ld	a3,24(s0)
   11450:	36075a63          	bgez	a4,117c4 <_malloc_r+0x480>
   11454:	00d60e63          	beq	a2,a3,11470 <_malloc_r+0x12c>
   11458:	00068413          	mv	s0,a3
   1145c:	00843783          	ld	a5,8(s0)
   11460:	ffc7f793          	andi	a5,a5,-4
   11464:	40978733          	sub	a4,a5,s1
   11468:	fee552e3          	bge	a0,a4,1144c <_malloc_r+0x108>
   1146c:	00080593          	mv	a1,a6
   11470:	0209b403          	ld	s0,32(s3)
   11474:	00013837          	lui	a6,0x13
   11478:	19880813          	addi	a6,a6,408 # 13198 <__malloc_av_+0x10>
   1147c:	35040063          	beq	s0,a6,117bc <_malloc_r+0x478>
   11480:	00843783          	ld	a5,8(s0)
   11484:	01f00693          	li	a3,31
   11488:	ffc7f793          	andi	a5,a5,-4
   1148c:	40978733          	sub	a4,a5,s1
   11490:	48e6ca63          	blt	a3,a4,11924 <_malloc_r+0x5e0>
   11494:	0309b423          	sd	a6,40(s3)
   11498:	0309b023          	sd	a6,32(s3)
   1149c:	46075463          	bgez	a4,11904 <_malloc_r+0x5c0>
   114a0:	1ff00713          	li	a4,511
   114a4:	0089b503          	ld	a0,8(s3)
   114a8:	36f76863          	bltu	a4,a5,11818 <_malloc_r+0x4d4>
   114ac:	0037d793          	srli	a5,a5,0x3
   114b0:	0007879b          	sext.w	a5,a5
   114b4:	0017871b          	addiw	a4,a5,1
   114b8:	0017171b          	slliw	a4,a4,0x1
   114bc:	00371713          	slli	a4,a4,0x3
   114c0:	00e98733          	add	a4,s3,a4
   114c4:	00073603          	ld	a2,0(a4)
   114c8:	4027d79b          	sraiw	a5,a5,0x2
   114cc:	00100693          	li	a3,1
   114d0:	00f697b3          	sll	a5,a3,a5
   114d4:	00f56533          	or	a0,a0,a5
   114d8:	ff070793          	addi	a5,a4,-16
   114dc:	00c43823          	sd	a2,16(s0)
   114e0:	00f43c23          	sd	a5,24(s0)
   114e4:	00a9b423          	sd	a0,8(s3)
   114e8:	00873023          	sd	s0,0(a4)
   114ec:	00863c23          	sd	s0,24(a2)
   114f0:	4025d79b          	sraiw	a5,a1,0x2
   114f4:	00100613          	li	a2,1
   114f8:	00f61633          	sll	a2,a2,a5
   114fc:	0cc56c63          	bltu	a0,a2,115d4 <_malloc_r+0x290>
   11500:	00a677b3          	and	a5,a2,a0
   11504:	02079463          	bnez	a5,1152c <_malloc_r+0x1e8>
   11508:	00161613          	slli	a2,a2,0x1
   1150c:	ffc5f593          	andi	a1,a1,-4
   11510:	00a677b3          	and	a5,a2,a0
   11514:	0045859b          	addiw	a1,a1,4
   11518:	00079a63          	bnez	a5,1152c <_malloc_r+0x1e8>
   1151c:	00161613          	slli	a2,a2,0x1
   11520:	00a677b3          	and	a5,a2,a0
   11524:	0045859b          	addiw	a1,a1,4
   11528:	fe078ae3          	beqz	a5,1151c <_malloc_r+0x1d8>
   1152c:	01f00893          	li	a7,31
   11530:	0015831b          	addiw	t1,a1,1
   11534:	0013131b          	slliw	t1,t1,0x1
   11538:	00331313          	slli	t1,t1,0x3
   1153c:	ff030313          	addi	t1,t1,-16
   11540:	00698333          	add	t1,s3,t1
   11544:	00030513          	mv	a0,t1
   11548:	01853783          	ld	a5,24(a0)
   1154c:	00058e13          	mv	t3,a1
   11550:	34f50a63          	beq	a0,a5,118a4 <_malloc_r+0x560>
   11554:	0087b703          	ld	a4,8(a5)
   11558:	00078413          	mv	s0,a5
   1155c:	0187b783          	ld	a5,24(a5)
   11560:	ffc77713          	andi	a4,a4,-4
   11564:	409706b3          	sub	a3,a4,s1
   11568:	34d8ca63          	blt	a7,a3,118bc <_malloc_r+0x578>
   1156c:	fe06c2e3          	bltz	a3,11550 <_malloc_r+0x20c>
   11570:	00e40733          	add	a4,s0,a4
   11574:	00873683          	ld	a3,8(a4)
   11578:	01043603          	ld	a2,16(s0)
   1157c:	00090513          	mv	a0,s2
   11580:	0016e693          	ori	a3,a3,1
   11584:	00d73423          	sd	a3,8(a4)
   11588:	00f63c23          	sd	a5,24(a2)
   1158c:	00c7b823          	sd	a2,16(a5)
   11590:	618000ef          	jal	11ba8 <__malloc_unlock>
   11594:	01040513          	addi	a0,s0,16
   11598:	0100006f          	j	115a8 <_malloc_r+0x264>
   1159c:	00c00793          	li	a5,12
   115a0:	00f92023          	sw	a5,0(s2)
   115a4:	00000513          	li	a0,0
   115a8:	05813083          	ld	ra,88(sp)
   115ac:	05013403          	ld	s0,80(sp)
   115b0:	04813483          	ld	s1,72(sp)
   115b4:	04013903          	ld	s2,64(sp)
   115b8:	03813983          	ld	s3,56(sp)
   115bc:	06010113          	addi	sp,sp,96
   115c0:	00008067          	ret
   115c4:	40000613          	li	a2,1024
   115c8:	04000593          	li	a1,64
   115cc:	03f00813          	li	a6,63
   115d0:	e5dff06f          	j	1142c <_malloc_r+0xe8>
   115d4:	0109b403          	ld	s0,16(s3)
   115d8:	03513423          	sd	s5,40(sp)
   115dc:	00843783          	ld	a5,8(s0)
   115e0:	ffc7fa93          	andi	s5,a5,-4
   115e4:	009ae863          	bltu	s5,s1,115f4 <_malloc_r+0x2b0>
   115e8:	409a8733          	sub	a4,s5,s1
   115ec:	01f00793          	li	a5,31
   115f0:	18e7c463          	blt	a5,a4,11778 <_malloc_r+0x434>
   115f4:	01913423          	sd	s9,8(sp)
   115f8:	03413823          	sd	s4,48(sp)
   115fc:	1901b703          	ld	a4,400(gp) # 139a8 <__malloc_sbrk_base>
   11600:	1c81ba03          	ld	s4,456(gp) # 139e0 <__malloc_top_pad>
   11604:	01713c23          	sd	s7,24(sp)
   11608:	03613023          	sd	s6,32(sp)
   1160c:	fff00793          	li	a5,-1
   11610:	01448a33          	add	s4,s1,s4
   11614:	01540bb3          	add	s7,s0,s5
   11618:	3ef70c63          	beq	a4,a5,11a10 <_malloc_r+0x6cc>
   1161c:	000017b7          	lui	a5,0x1
   11620:	01f78793          	addi	a5,a5,31 # 101f <exit-0xf101>
   11624:	00fa0a33          	add	s4,s4,a5
   11628:	fffff7b7          	lui	a5,0xfffff
   1162c:	00fa7a33          	and	s4,s4,a5
   11630:	000a0593          	mv	a1,s4
   11634:	00090513          	mv	a0,s2
   11638:	1c5000ef          	jal	11ffc <_sbrk_r>
   1163c:	fff00793          	li	a5,-1
   11640:	00050b13          	mv	s6,a0
   11644:	48f50c63          	beq	a0,a5,11adc <_malloc_r+0x798>
   11648:	01813823          	sd	s8,16(sp)
   1164c:	0f756c63          	bltu	a0,s7,11744 <_malloc_r+0x400>
   11650:	42018c13          	addi	s8,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11654:	000c2703          	lw	a4,0(s8)
   11658:	0147073b          	addw	a4,a4,s4
   1165c:	00ec2023          	sw	a4,0(s8)
   11660:	00070693          	mv	a3,a4
   11664:	48ab8263          	beq	s7,a0,11ae8 <_malloc_r+0x7a4>
   11668:	1901b703          	ld	a4,400(gp) # 139a8 <__malloc_sbrk_base>
   1166c:	fff00793          	li	a5,-1
   11670:	48f70a63          	beq	a4,a5,11b04 <_malloc_r+0x7c0>
   11674:	417b07b3          	sub	a5,s6,s7
   11678:	00d787bb          	addw	a5,a5,a3
   1167c:	00fc2023          	sw	a5,0(s8)
   11680:	00fb7c93          	andi	s9,s6,15
   11684:	3a0c8663          	beqz	s9,11a30 <_malloc_r+0x6ec>
   11688:	419b0b33          	sub	s6,s6,s9
   1168c:	000016b7          	lui	a3,0x1
   11690:	010b0b13          	addi	s6,s6,16
   11694:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11698:	014b0a33          	add	s4,s6,s4
   1169c:	419686b3          	sub	a3,a3,s9
   116a0:	414686b3          	sub	a3,a3,s4
   116a4:	03469693          	slli	a3,a3,0x34
   116a8:	0346db93          	srli	s7,a3,0x34
   116ac:	000b8593          	mv	a1,s7
   116b0:	00090513          	mv	a0,s2
   116b4:	149000ef          	jal	11ffc <_sbrk_r>
   116b8:	fff00793          	li	a5,-1
   116bc:	48f50863          	beq	a0,a5,11b4c <_malloc_r+0x808>
   116c0:	41650533          	sub	a0,a0,s6
   116c4:	01750a33          	add	s4,a0,s7
   116c8:	000b869b          	sext.w	a3,s7
   116cc:	000c2703          	lw	a4,0(s8)
   116d0:	0169b823          	sd	s6,16(s3)
   116d4:	001a6793          	ori	a5,s4,1
   116d8:	00d7073b          	addw	a4,a4,a3
   116dc:	00fb3423          	sd	a5,8(s6)
   116e0:	00ec2023          	sw	a4,0(s8)
   116e4:	03340e63          	beq	s0,s3,11720 <_malloc_r+0x3dc>
   116e8:	01f00613          	li	a2,31
   116ec:	37567863          	bgeu	a2,s5,11a5c <_malloc_r+0x718>
   116f0:	00843683          	ld	a3,8(s0)
   116f4:	fe8a8793          	addi	a5,s5,-24
   116f8:	ff07f793          	andi	a5,a5,-16
   116fc:	0016f693          	andi	a3,a3,1
   11700:	00f6e6b3          	or	a3,a3,a5
   11704:	00d43423          	sd	a3,8(s0)
   11708:	00900593          	li	a1,9
   1170c:	00f406b3          	add	a3,s0,a5
   11710:	00b6b423          	sd	a1,8(a3)
   11714:	00b6b823          	sd	a1,16(a3)
   11718:	2ef66063          	bltu	a2,a5,119f8 <_malloc_r+0x6b4>
   1171c:	008b3783          	ld	a5,8(s6)
   11720:	1c01b603          	ld	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11724:	00e67463          	bgeu	a2,a4,1172c <_malloc_r+0x3e8>
   11728:	1ce1b023          	sd	a4,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1172c:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11730:	00e67463          	bgeu	a2,a4,11738 <_malloc_r+0x3f4>
   11734:	1ae1bc23          	sd	a4,440(gp) # 139d0 <__malloc_max_total_mem>
   11738:	01013c03          	ld	s8,16(sp)
   1173c:	000b0413          	mv	s0,s6
   11740:	0140006f          	j	11754 <_malloc_r+0x410>
   11744:	39340263          	beq	s0,s3,11ac8 <_malloc_r+0x784>
   11748:	0109b403          	ld	s0,16(s3)
   1174c:	01013c03          	ld	s8,16(sp)
   11750:	00843783          	ld	a5,8(s0)
   11754:	ffc7f793          	andi	a5,a5,-4
   11758:	40978733          	sub	a4,a5,s1
   1175c:	3097e663          	bltu	a5,s1,11a68 <_malloc_r+0x724>
   11760:	01f00793          	li	a5,31
   11764:	30e7d263          	bge	a5,a4,11a68 <_malloc_r+0x724>
   11768:	03013a03          	ld	s4,48(sp)
   1176c:	02013b03          	ld	s6,32(sp)
   11770:	01813b83          	ld	s7,24(sp)
   11774:	00813c83          	ld	s9,8(sp)
   11778:	0014e793          	ori	a5,s1,1
   1177c:	00f43423          	sd	a5,8(s0)
   11780:	009404b3          	add	s1,s0,s1
   11784:	0099b823          	sd	s1,16(s3)
   11788:	00176713          	ori	a4,a4,1
   1178c:	00090513          	mv	a0,s2
   11790:	00e4b423          	sd	a4,8(s1)
   11794:	414000ef          	jal	11ba8 <__malloc_unlock>
   11798:	05813083          	ld	ra,88(sp)
   1179c:	01040513          	addi	a0,s0,16
   117a0:	05013403          	ld	s0,80(sp)
   117a4:	02813a83          	ld	s5,40(sp)
   117a8:	04813483          	ld	s1,72(sp)
   117ac:	04013903          	ld	s2,64(sp)
   117b0:	03813983          	ld	s3,56(sp)
   117b4:	06010113          	addi	sp,sp,96
   117b8:	00008067          	ret
   117bc:	0089b503          	ld	a0,8(s3)
   117c0:	d31ff06f          	j	114f0 <_malloc_r+0x1ac>
   117c4:	01043603          	ld	a2,16(s0)
   117c8:	00f407b3          	add	a5,s0,a5
   117cc:	0087b703          	ld	a4,8(a5) # fffffffffffff008 <__BSS_END__+0xfffffffffffeb090>
   117d0:	00d63c23          	sd	a3,24(a2)
   117d4:	00c6b823          	sd	a2,16(a3)
   117d8:	00176713          	ori	a4,a4,1
   117dc:	00090513          	mv	a0,s2
   117e0:	00e7b423          	sd	a4,8(a5)
   117e4:	3c4000ef          	jal	11ba8 <__malloc_unlock>
   117e8:	05813083          	ld	ra,88(sp)
   117ec:	01040513          	addi	a0,s0,16
   117f0:	05013403          	ld	s0,80(sp)
   117f4:	04813483          	ld	s1,72(sp)
   117f8:	04013903          	ld	s2,64(sp)
   117fc:	03813983          	ld	s3,56(sp)
   11800:	06010113          	addi	sp,sp,96
   11804:	00008067          	ret
   11808:	0187b403          	ld	s0,24(a5)
   1180c:	0025859b          	addiw	a1,a1,2
   11810:	c68780e3          	beq	a5,s0,11470 <_malloc_r+0x12c>
   11814:	b85ff06f          	j	11398 <_malloc_r+0x54>
   11818:	0097d713          	srli	a4,a5,0x9
   1181c:	00400693          	li	a3,4
   11820:	14e6fc63          	bgeu	a3,a4,11978 <_malloc_r+0x634>
   11824:	01400693          	li	a3,20
   11828:	26e6e063          	bltu	a3,a4,11a88 <_malloc_r+0x744>
   1182c:	05c7061b          	addiw	a2,a4,92
   11830:	0016161b          	slliw	a2,a2,0x1
   11834:	00361613          	slli	a2,a2,0x3
   11838:	05b7069b          	addiw	a3,a4,91
   1183c:	00c98633          	add	a2,s3,a2
   11840:	00063703          	ld	a4,0(a2)
   11844:	ff060613          	addi	a2,a2,-16
   11848:	00e61863          	bne	a2,a4,11858 <_malloc_r+0x514>
   1184c:	1cc0006f          	j	11a18 <_malloc_r+0x6d4>
   11850:	01073703          	ld	a4,16(a4)
   11854:	00e60863          	beq	a2,a4,11864 <_malloc_r+0x520>
   11858:	00873683          	ld	a3,8(a4)
   1185c:	ffc6f693          	andi	a3,a3,-4
   11860:	fed7e8e3          	bltu	a5,a3,11850 <_malloc_r+0x50c>
   11864:	01873603          	ld	a2,24(a4)
   11868:	00c43c23          	sd	a2,24(s0)
   1186c:	00e43823          	sd	a4,16(s0)
   11870:	00863823          	sd	s0,16(a2)
   11874:	00873c23          	sd	s0,24(a4)
   11878:	c79ff06f          	j	114f0 <_malloc_r+0x1ac>
   1187c:	01400713          	li	a4,20
   11880:	10f77863          	bgeu	a4,a5,11990 <_malloc_r+0x64c>
   11884:	05400713          	li	a4,84
   11888:	22f76063          	bltu	a4,a5,11aa8 <_malloc_r+0x764>
   1188c:	00c4d793          	srli	a5,s1,0xc
   11890:	06f7859b          	addiw	a1,a5,111
   11894:	0015961b          	slliw	a2,a1,0x1
   11898:	06e7881b          	addiw	a6,a5,110
   1189c:	00361613          	slli	a2,a2,0x3
   118a0:	b8dff06f          	j	1142c <_malloc_r+0xe8>
   118a4:	001e0e1b          	addiw	t3,t3,1
   118a8:	003e7793          	andi	a5,t3,3
   118ac:	01050513          	addi	a0,a0,16
   118b0:	10078063          	beqz	a5,119b0 <_malloc_r+0x66c>
   118b4:	01853783          	ld	a5,24(a0)
   118b8:	c99ff06f          	j	11550 <_malloc_r+0x20c>
   118bc:	01043603          	ld	a2,16(s0)
   118c0:	0014e593          	ori	a1,s1,1
   118c4:	00b43423          	sd	a1,8(s0)
   118c8:	00f63c23          	sd	a5,24(a2)
   118cc:	00c7b823          	sd	a2,16(a5)
   118d0:	009404b3          	add	s1,s0,s1
   118d4:	0299b423          	sd	s1,40(s3)
   118d8:	0299b023          	sd	s1,32(s3)
   118dc:	0016e793          	ori	a5,a3,1
   118e0:	00e40733          	add	a4,s0,a4
   118e4:	0104bc23          	sd	a6,24(s1)
   118e8:	0104b823          	sd	a6,16(s1)
   118ec:	00f4b423          	sd	a5,8(s1)
   118f0:	00090513          	mv	a0,s2
   118f4:	00d73023          	sd	a3,0(a4)
   118f8:	2b0000ef          	jal	11ba8 <__malloc_unlock>
   118fc:	01040513          	addi	a0,s0,16
   11900:	ca9ff06f          	j	115a8 <_malloc_r+0x264>
   11904:	00f407b3          	add	a5,s0,a5
   11908:	0087b703          	ld	a4,8(a5)
   1190c:	00090513          	mv	a0,s2
   11910:	00176713          	ori	a4,a4,1
   11914:	00e7b423          	sd	a4,8(a5)
   11918:	290000ef          	jal	11ba8 <__malloc_unlock>
   1191c:	01040513          	addi	a0,s0,16
   11920:	c89ff06f          	j	115a8 <_malloc_r+0x264>
   11924:	0014e693          	ori	a3,s1,1
   11928:	00d43423          	sd	a3,8(s0)
   1192c:	009404b3          	add	s1,s0,s1
   11930:	0299b423          	sd	s1,40(s3)
   11934:	0299b023          	sd	s1,32(s3)
   11938:	00176693          	ori	a3,a4,1
   1193c:	00f407b3          	add	a5,s0,a5
   11940:	0104bc23          	sd	a6,24(s1)
   11944:	0104b823          	sd	a6,16(s1)
   11948:	00d4b423          	sd	a3,8(s1)
   1194c:	00090513          	mv	a0,s2
   11950:	00e7b023          	sd	a4,0(a5)
   11954:	254000ef          	jal	11ba8 <__malloc_unlock>
   11958:	01040513          	addi	a0,s0,16
   1195c:	c4dff06f          	j	115a8 <_malloc_r+0x264>
   11960:	0034d593          	srli	a1,s1,0x3
   11964:	0015879b          	addiw	a5,a1,1
   11968:	0017979b          	slliw	a5,a5,0x1
   1196c:	00379793          	slli	a5,a5,0x3
   11970:	0005859b          	sext.w	a1,a1
   11974:	a0dff06f          	j	11380 <_malloc_r+0x3c>
   11978:	0067d713          	srli	a4,a5,0x6
   1197c:	0397061b          	addiw	a2,a4,57
   11980:	0016161b          	slliw	a2,a2,0x1
   11984:	00361613          	slli	a2,a2,0x3
   11988:	0387069b          	addiw	a3,a4,56
   1198c:	eb1ff06f          	j	1183c <_malloc_r+0x4f8>
   11990:	05c7859b          	addiw	a1,a5,92
   11994:	0015961b          	slliw	a2,a1,0x1
   11998:	05b7881b          	addiw	a6,a5,91
   1199c:	00361613          	slli	a2,a2,0x3
   119a0:	a8dff06f          	j	1142c <_malloc_r+0xe8>
   119a4:	01033783          	ld	a5,16(t1)
   119a8:	fff5859b          	addiw	a1,a1,-1
   119ac:	1e679863          	bne	a5,t1,11b9c <_malloc_r+0x858>
   119b0:	0035f793          	andi	a5,a1,3
   119b4:	ff030313          	addi	t1,t1,-16
   119b8:	fe0796e3          	bnez	a5,119a4 <_malloc_r+0x660>
   119bc:	0089b703          	ld	a4,8(s3)
   119c0:	fff64793          	not	a5,a2
   119c4:	00e7f7b3          	and	a5,a5,a4
   119c8:	00f9b423          	sd	a5,8(s3)
   119cc:	00161613          	slli	a2,a2,0x1
   119d0:	c0c7e2e3          	bltu	a5,a2,115d4 <_malloc_r+0x290>
   119d4:	c00600e3          	beqz	a2,115d4 <_malloc_r+0x290>
   119d8:	00f67733          	and	a4,a2,a5
   119dc:	00071a63          	bnez	a4,119f0 <_malloc_r+0x6ac>
   119e0:	00161613          	slli	a2,a2,0x1
   119e4:	00f67733          	and	a4,a2,a5
   119e8:	004e0e1b          	addiw	t3,t3,4
   119ec:	fe070ae3          	beqz	a4,119e0 <_malloc_r+0x69c>
   119f0:	000e0593          	mv	a1,t3
   119f4:	b3dff06f          	j	11530 <_malloc_r+0x1ec>
   119f8:	01040593          	addi	a1,s0,16
   119fc:	00090513          	mv	a0,s2
   11a00:	e34ff0ef          	jal	11034 <_free_r>
   11a04:	000c2703          	lw	a4,0(s8)
   11a08:	0109bb03          	ld	s6,16(s3)
   11a0c:	d11ff06f          	j	1171c <_malloc_r+0x3d8>
   11a10:	020a0a13          	addi	s4,s4,32
   11a14:	c1dff06f          	j	11630 <_malloc_r+0x2ec>
   11a18:	4026d69b          	sraiw	a3,a3,0x2
   11a1c:	00100793          	li	a5,1
   11a20:	00d797b3          	sll	a5,a5,a3
   11a24:	00f56533          	or	a0,a0,a5
   11a28:	00a9b423          	sd	a0,8(s3)
   11a2c:	e3dff06f          	j	11868 <_malloc_r+0x524>
   11a30:	014b0bb3          	add	s7,s6,s4
   11a34:	41700bb3          	neg	s7,s7
   11a38:	034b9b93          	slli	s7,s7,0x34
   11a3c:	034bdb93          	srli	s7,s7,0x34
   11a40:	000b8593          	mv	a1,s7
   11a44:	00090513          	mv	a0,s2
   11a48:	5b4000ef          	jal	11ffc <_sbrk_r>
   11a4c:	fff00793          	li	a5,-1
   11a50:	00000693          	li	a3,0
   11a54:	c6f516e3          	bne	a0,a5,116c0 <_malloc_r+0x37c>
   11a58:	c75ff06f          	j	116cc <_malloc_r+0x388>
   11a5c:	01013c03          	ld	s8,16(sp)
   11a60:	00100793          	li	a5,1
   11a64:	00fb3423          	sd	a5,8(s6)
   11a68:	00090513          	mv	a0,s2
   11a6c:	13c000ef          	jal	11ba8 <__malloc_unlock>
   11a70:	03013a03          	ld	s4,48(sp)
   11a74:	02813a83          	ld	s5,40(sp)
   11a78:	02013b03          	ld	s6,32(sp)
   11a7c:	01813b83          	ld	s7,24(sp)
   11a80:	00813c83          	ld	s9,8(sp)
   11a84:	b21ff06f          	j	115a4 <_malloc_r+0x260>
   11a88:	05400693          	li	a3,84
   11a8c:	08e6e063          	bltu	a3,a4,11b0c <_malloc_r+0x7c8>
   11a90:	00c7d713          	srli	a4,a5,0xc
   11a94:	06f7061b          	addiw	a2,a4,111
   11a98:	0016161b          	slliw	a2,a2,0x1
   11a9c:	00361613          	slli	a2,a2,0x3
   11aa0:	06e7069b          	addiw	a3,a4,110
   11aa4:	d99ff06f          	j	1183c <_malloc_r+0x4f8>
   11aa8:	15400713          	li	a4,340
   11aac:	08f76063          	bltu	a4,a5,11b2c <_malloc_r+0x7e8>
   11ab0:	00f4d793          	srli	a5,s1,0xf
   11ab4:	0787859b          	addiw	a1,a5,120
   11ab8:	0015961b          	slliw	a2,a1,0x1
   11abc:	0777881b          	addiw	a6,a5,119
   11ac0:	00361613          	slli	a2,a2,0x3
   11ac4:	969ff06f          	j	1142c <_malloc_r+0xe8>
   11ac8:	42018c13          	addi	s8,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11acc:	000c2683          	lw	a3,0(s8)
   11ad0:	014686bb          	addw	a3,a3,s4
   11ad4:	00dc2023          	sw	a3,0(s8)
   11ad8:	b91ff06f          	j	11668 <_malloc_r+0x324>
   11adc:	0109b403          	ld	s0,16(s3)
   11ae0:	00843783          	ld	a5,8(s0)
   11ae4:	c71ff06f          	j	11754 <_malloc_r+0x410>
   11ae8:	03451793          	slli	a5,a0,0x34
   11aec:	b6079ee3          	bnez	a5,11668 <_malloc_r+0x324>
   11af0:	0109bb03          	ld	s6,16(s3)
   11af4:	014a87b3          	add	a5,s5,s4
   11af8:	0017e793          	ori	a5,a5,1
   11afc:	00fb3423          	sd	a5,8(s6)
   11b00:	c21ff06f          	j	11720 <_malloc_r+0x3dc>
   11b04:	1961b823          	sd	s6,400(gp) # 139a8 <__malloc_sbrk_base>
   11b08:	b79ff06f          	j	11680 <_malloc_r+0x33c>
   11b0c:	15400693          	li	a3,340
   11b10:	04e6e863          	bltu	a3,a4,11b60 <_malloc_r+0x81c>
   11b14:	00f7d713          	srli	a4,a5,0xf
   11b18:	0787061b          	addiw	a2,a4,120
   11b1c:	0016161b          	slliw	a2,a2,0x1
   11b20:	00361613          	slli	a2,a2,0x3
   11b24:	0777069b          	addiw	a3,a4,119
   11b28:	d15ff06f          	j	1183c <_malloc_r+0x4f8>
   11b2c:	55400713          	li	a4,1364
   11b30:	04f76863          	bltu	a4,a5,11b80 <_malloc_r+0x83c>
   11b34:	0124d793          	srli	a5,s1,0x12
   11b38:	07d7859b          	addiw	a1,a5,125
   11b3c:	0015961b          	slliw	a2,a1,0x1
   11b40:	07c7881b          	addiw	a6,a5,124
   11b44:	00361613          	slli	a2,a2,0x3
   11b48:	8e5ff06f          	j	1142c <_malloc_r+0xe8>
   11b4c:	ff0c8c93          	addi	s9,s9,-16
   11b50:	019a0a33          	add	s4,s4,s9
   11b54:	416a0a33          	sub	s4,s4,s6
   11b58:	00000693          	li	a3,0
   11b5c:	b71ff06f          	j	116cc <_malloc_r+0x388>
   11b60:	55400693          	li	a3,1364
   11b64:	02e6e663          	bltu	a3,a4,11b90 <_malloc_r+0x84c>
   11b68:	0127d713          	srli	a4,a5,0x12
   11b6c:	07d7061b          	addiw	a2,a4,125
   11b70:	0016161b          	slliw	a2,a2,0x1
   11b74:	00361613          	slli	a2,a2,0x3
   11b78:	07c7069b          	addiw	a3,a4,124
   11b7c:	cc1ff06f          	j	1183c <_malloc_r+0x4f8>
   11b80:	7f000613          	li	a2,2032
   11b84:	07f00593          	li	a1,127
   11b88:	07e00813          	li	a6,126
   11b8c:	8a1ff06f          	j	1142c <_malloc_r+0xe8>
   11b90:	7f000613          	li	a2,2032
   11b94:	07e00693          	li	a3,126
   11b98:	ca5ff06f          	j	1183c <_malloc_r+0x4f8>
   11b9c:	0089b783          	ld	a5,8(s3)
   11ba0:	e2dff06f          	j	119cc <_malloc_r+0x688>

0000000000011ba4 <__malloc_lock>:
   11ba4:	00008067          	ret

0000000000011ba8 <__malloc_unlock>:
   11ba8:	00008067          	ret

0000000000011bac <_fclose_r>:
   11bac:	fe010113          	addi	sp,sp,-32
   11bb0:	00113c23          	sd	ra,24(sp)
   11bb4:	01213023          	sd	s2,0(sp)
   11bb8:	02058863          	beqz	a1,11be8 <_fclose_r+0x3c>
   11bbc:	00813823          	sd	s0,16(sp)
   11bc0:	00913423          	sd	s1,8(sp)
   11bc4:	00058413          	mv	s0,a1
   11bc8:	00050493          	mv	s1,a0
   11bcc:	00050663          	beqz	a0,11bd8 <_fclose_r+0x2c>
   11bd0:	04853783          	ld	a5,72(a0)
   11bd4:	0c078c63          	beqz	a5,11cac <_fclose_r+0x100>
   11bd8:	01041783          	lh	a5,16(s0)
   11bdc:	02079263          	bnez	a5,11c00 <_fclose_r+0x54>
   11be0:	01013403          	ld	s0,16(sp)
   11be4:	00813483          	ld	s1,8(sp)
   11be8:	01813083          	ld	ra,24(sp)
   11bec:	00000913          	li	s2,0
   11bf0:	00090513          	mv	a0,s2
   11bf4:	00013903          	ld	s2,0(sp)
   11bf8:	02010113          	addi	sp,sp,32
   11bfc:	00008067          	ret
   11c00:	00040593          	mv	a1,s0
   11c04:	00048513          	mv	a0,s1
   11c08:	0b8000ef          	jal	11cc0 <__sflush_r>
   11c0c:	05043783          	ld	a5,80(s0)
   11c10:	00050913          	mv	s2,a0
   11c14:	00078a63          	beqz	a5,11c28 <_fclose_r+0x7c>
   11c18:	03043583          	ld	a1,48(s0)
   11c1c:	00048513          	mv	a0,s1
   11c20:	000780e7          	jalr	a5
   11c24:	06054463          	bltz	a0,11c8c <_fclose_r+0xe0>
   11c28:	01045783          	lhu	a5,16(s0)
   11c2c:	0807f793          	andi	a5,a5,128
   11c30:	06079663          	bnez	a5,11c9c <_fclose_r+0xf0>
   11c34:	05843583          	ld	a1,88(s0)
   11c38:	00058c63          	beqz	a1,11c50 <_fclose_r+0xa4>
   11c3c:	07440793          	addi	a5,s0,116
   11c40:	00f58663          	beq	a1,a5,11c4c <_fclose_r+0xa0>
   11c44:	00048513          	mv	a0,s1
   11c48:	becff0ef          	jal	11034 <_free_r>
   11c4c:	04043c23          	sd	zero,88(s0)
   11c50:	07843583          	ld	a1,120(s0)
   11c54:	00058863          	beqz	a1,11c64 <_fclose_r+0xb8>
   11c58:	00048513          	mv	a0,s1
   11c5c:	bd8ff0ef          	jal	11034 <_free_r>
   11c60:	06043c23          	sd	zero,120(s0)
   11c64:	b01fe0ef          	jal	10764 <__sfp_lock_acquire>
   11c68:	00041823          	sh	zero,16(s0)
   11c6c:	afdfe0ef          	jal	10768 <__sfp_lock_release>
   11c70:	01813083          	ld	ra,24(sp)
   11c74:	01013403          	ld	s0,16(sp)
   11c78:	00813483          	ld	s1,8(sp)
   11c7c:	00090513          	mv	a0,s2
   11c80:	00013903          	ld	s2,0(sp)
   11c84:	02010113          	addi	sp,sp,32
   11c88:	00008067          	ret
   11c8c:	01045783          	lhu	a5,16(s0)
   11c90:	fff00913          	li	s2,-1
   11c94:	0807f793          	andi	a5,a5,128
   11c98:	f8078ee3          	beqz	a5,11c34 <_fclose_r+0x88>
   11c9c:	01843583          	ld	a1,24(s0)
   11ca0:	00048513          	mv	a0,s1
   11ca4:	b90ff0ef          	jal	11034 <_free_r>
   11ca8:	f8dff06f          	j	11c34 <_fclose_r+0x88>
   11cac:	a95fe0ef          	jal	10740 <__sinit>
   11cb0:	f29ff06f          	j	11bd8 <_fclose_r+0x2c>

0000000000011cb4 <fclose>:
   11cb4:	00050593          	mv	a1,a0
   11cb8:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11cbc:	ef1ff06f          	j	11bac <_fclose_r>

0000000000011cc0 <__sflush_r>:
   11cc0:	01059703          	lh	a4,16(a1)
   11cc4:	fd010113          	addi	sp,sp,-48
   11cc8:	02813023          	sd	s0,32(sp)
   11ccc:	01313423          	sd	s3,8(sp)
   11cd0:	02113423          	sd	ra,40(sp)
   11cd4:	00877793          	andi	a5,a4,8
   11cd8:	00058413          	mv	s0,a1
   11cdc:	00050993          	mv	s3,a0
   11ce0:	12079063          	bnez	a5,11e00 <__sflush_r+0x140>
   11ce4:	000017b7          	lui	a5,0x1
   11ce8:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11cec:	0085a683          	lw	a3,8(a1)
   11cf0:	00f767b3          	or	a5,a4,a5
   11cf4:	00f59823          	sh	a5,16(a1)
   11cf8:	18d05a63          	blez	a3,11e8c <__sflush_r+0x1cc>
   11cfc:	04843803          	ld	a6,72(s0)
   11d00:	0e080463          	beqz	a6,11de8 <__sflush_r+0x128>
   11d04:	00913c23          	sd	s1,24(sp)
   11d08:	03371693          	slli	a3,a4,0x33
   11d0c:	0009a483          	lw	s1,0(s3)
   11d10:	0009a023          	sw	zero,0(s3)
   11d14:	1806c863          	bltz	a3,11ea4 <__sflush_r+0x1e4>
   11d18:	03043583          	ld	a1,48(s0)
   11d1c:	00000613          	li	a2,0
   11d20:	00100693          	li	a3,1
   11d24:	00098513          	mv	a0,s3
   11d28:	000800e7          	jalr	a6
   11d2c:	fff00793          	li	a5,-1
   11d30:	00050613          	mv	a2,a0
   11d34:	1af50a63          	beq	a0,a5,11ee8 <__sflush_r+0x228>
   11d38:	01041783          	lh	a5,16(s0)
   11d3c:	04843803          	ld	a6,72(s0)
   11d40:	0047f793          	andi	a5,a5,4
   11d44:	00078e63          	beqz	a5,11d60 <__sflush_r+0xa0>
   11d48:	00842703          	lw	a4,8(s0)
   11d4c:	05843783          	ld	a5,88(s0)
   11d50:	40e60633          	sub	a2,a2,a4
   11d54:	00078663          	beqz	a5,11d60 <__sflush_r+0xa0>
   11d58:	07042783          	lw	a5,112(s0)
   11d5c:	40f60633          	sub	a2,a2,a5
   11d60:	03043583          	ld	a1,48(s0)
   11d64:	00000693          	li	a3,0
   11d68:	00098513          	mv	a0,s3
   11d6c:	000800e7          	jalr	a6
   11d70:	fff00713          	li	a4,-1
   11d74:	01041783          	lh	a5,16(s0)
   11d78:	12e51a63          	bne	a0,a4,11eac <__sflush_r+0x1ec>
   11d7c:	0009a683          	lw	a3,0(s3)
   11d80:	01d00713          	li	a4,29
   11d84:	18d76063          	bltu	a4,a3,11f04 <__sflush_r+0x244>
   11d88:	20400737          	lui	a4,0x20400
   11d8c:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11d90:	00d75733          	srl	a4,a4,a3
   11d94:	00177713          	andi	a4,a4,1
   11d98:	16070663          	beqz	a4,11f04 <__sflush_r+0x244>
   11d9c:	01843603          	ld	a2,24(s0)
   11da0:	fffff737          	lui	a4,0xfffff
   11da4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11da8:	00e7f733          	and	a4,a5,a4
   11dac:	00e41823          	sh	a4,16(s0)
   11db0:	00042423          	sw	zero,8(s0)
   11db4:	00c43023          	sd	a2,0(s0)
   11db8:	03379713          	slli	a4,a5,0x33
   11dbc:	00075463          	bgez	a4,11dc4 <__sflush_r+0x104>
   11dc0:	10068863          	beqz	a3,11ed0 <__sflush_r+0x210>
   11dc4:	05843583          	ld	a1,88(s0)
   11dc8:	0099a023          	sw	s1,0(s3)
   11dcc:	10058a63          	beqz	a1,11ee0 <__sflush_r+0x220>
   11dd0:	07440793          	addi	a5,s0,116
   11dd4:	00f58663          	beq	a1,a5,11de0 <__sflush_r+0x120>
   11dd8:	00098513          	mv	a0,s3
   11ddc:	a58ff0ef          	jal	11034 <_free_r>
   11de0:	01813483          	ld	s1,24(sp)
   11de4:	04043c23          	sd	zero,88(s0)
   11de8:	02813083          	ld	ra,40(sp)
   11dec:	02013403          	ld	s0,32(sp)
   11df0:	00813983          	ld	s3,8(sp)
   11df4:	00000513          	li	a0,0
   11df8:	03010113          	addi	sp,sp,48
   11dfc:	00008067          	ret
   11e00:	01213823          	sd	s2,16(sp)
   11e04:	0185b903          	ld	s2,24(a1)
   11e08:	08090a63          	beqz	s2,11e9c <__sflush_r+0x1dc>
   11e0c:	00913c23          	sd	s1,24(sp)
   11e10:	0005b483          	ld	s1,0(a1)
   11e14:	00377713          	andi	a4,a4,3
   11e18:	0125b023          	sd	s2,0(a1)
   11e1c:	412484bb          	subw	s1,s1,s2
   11e20:	00000793          	li	a5,0
   11e24:	00071463          	bnez	a4,11e2c <__sflush_r+0x16c>
   11e28:	0205a783          	lw	a5,32(a1)
   11e2c:	00f42623          	sw	a5,12(s0)
   11e30:	00904863          	bgtz	s1,11e40 <__sflush_r+0x180>
   11e34:	0640006f          	j	11e98 <__sflush_r+0x1d8>
   11e38:	00a90933          	add	s2,s2,a0
   11e3c:	04905e63          	blez	s1,11e98 <__sflush_r+0x1d8>
   11e40:	04043783          	ld	a5,64(s0)
   11e44:	03043583          	ld	a1,48(s0)
   11e48:	00048693          	mv	a3,s1
   11e4c:	00090613          	mv	a2,s2
   11e50:	00098513          	mv	a0,s3
   11e54:	000780e7          	jalr	a5
   11e58:	40a484bb          	subw	s1,s1,a0
   11e5c:	fca04ee3          	bgtz	a0,11e38 <__sflush_r+0x178>
   11e60:	01041783          	lh	a5,16(s0)
   11e64:	01013903          	ld	s2,16(sp)
   11e68:	0407e793          	ori	a5,a5,64
   11e6c:	02813083          	ld	ra,40(sp)
   11e70:	00f41823          	sh	a5,16(s0)
   11e74:	02013403          	ld	s0,32(sp)
   11e78:	01813483          	ld	s1,24(sp)
   11e7c:	00813983          	ld	s3,8(sp)
   11e80:	fff00513          	li	a0,-1
   11e84:	03010113          	addi	sp,sp,48
   11e88:	00008067          	ret
   11e8c:	0705a683          	lw	a3,112(a1)
   11e90:	e6d046e3          	bgtz	a3,11cfc <__sflush_r+0x3c>
   11e94:	f55ff06f          	j	11de8 <__sflush_r+0x128>
   11e98:	01813483          	ld	s1,24(sp)
   11e9c:	01013903          	ld	s2,16(sp)
   11ea0:	f49ff06f          	j	11de8 <__sflush_r+0x128>
   11ea4:	09043603          	ld	a2,144(s0)
   11ea8:	e99ff06f          	j	11d40 <__sflush_r+0x80>
   11eac:	01843683          	ld	a3,24(s0)
   11eb0:	fffff737          	lui	a4,0xfffff
   11eb4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11eb8:	00e7f733          	and	a4,a5,a4
   11ebc:	00e41823          	sh	a4,16(s0)
   11ec0:	00042423          	sw	zero,8(s0)
   11ec4:	00d43023          	sd	a3,0(s0)
   11ec8:	03379713          	slli	a4,a5,0x33
   11ecc:	ee075ce3          	bgez	a4,11dc4 <__sflush_r+0x104>
   11ed0:	05843583          	ld	a1,88(s0)
   11ed4:	08a43823          	sd	a0,144(s0)
   11ed8:	0099a023          	sw	s1,0(s3)
   11edc:	ee059ae3          	bnez	a1,11dd0 <__sflush_r+0x110>
   11ee0:	01813483          	ld	s1,24(sp)
   11ee4:	f05ff06f          	j	11de8 <__sflush_r+0x128>
   11ee8:	0009a783          	lw	a5,0(s3)
   11eec:	e40786e3          	beqz	a5,11d38 <__sflush_r+0x78>
   11ef0:	01d00713          	li	a4,29
   11ef4:	00e78c63          	beq	a5,a4,11f0c <__sflush_r+0x24c>
   11ef8:	01600713          	li	a4,22
   11efc:	00e78863          	beq	a5,a4,11f0c <__sflush_r+0x24c>
   11f00:	01041783          	lh	a5,16(s0)
   11f04:	0407e793          	ori	a5,a5,64
   11f08:	f65ff06f          	j	11e6c <__sflush_r+0x1ac>
   11f0c:	0099a023          	sw	s1,0(s3)
   11f10:	01813483          	ld	s1,24(sp)
   11f14:	ed5ff06f          	j	11de8 <__sflush_r+0x128>

0000000000011f18 <_fflush_r>:
   11f18:	fe010113          	addi	sp,sp,-32
   11f1c:	00813823          	sd	s0,16(sp)
   11f20:	00113c23          	sd	ra,24(sp)
   11f24:	00050413          	mv	s0,a0
   11f28:	00050663          	beqz	a0,11f34 <_fflush_r+0x1c>
   11f2c:	04853783          	ld	a5,72(a0)
   11f30:	02078a63          	beqz	a5,11f64 <_fflush_r+0x4c>
   11f34:	01059783          	lh	a5,16(a1)
   11f38:	00079c63          	bnez	a5,11f50 <_fflush_r+0x38>
   11f3c:	01813083          	ld	ra,24(sp)
   11f40:	01013403          	ld	s0,16(sp)
   11f44:	00000513          	li	a0,0
   11f48:	02010113          	addi	sp,sp,32
   11f4c:	00008067          	ret
   11f50:	00040513          	mv	a0,s0
   11f54:	01013403          	ld	s0,16(sp)
   11f58:	01813083          	ld	ra,24(sp)
   11f5c:	02010113          	addi	sp,sp,32
   11f60:	d61ff06f          	j	11cc0 <__sflush_r>
   11f64:	00b13423          	sd	a1,8(sp)
   11f68:	fd8fe0ef          	jal	10740 <__sinit>
   11f6c:	00813583          	ld	a1,8(sp)
   11f70:	fc5ff06f          	j	11f34 <_fflush_r+0x1c>

0000000000011f74 <fflush>:
   11f74:	06050063          	beqz	a0,11fd4 <fflush+0x60>
   11f78:	00050593          	mv	a1,a0
   11f7c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11f80:	00050663          	beqz	a0,11f8c <fflush+0x18>
   11f84:	04853783          	ld	a5,72(a0)
   11f88:	00078c63          	beqz	a5,11fa0 <fflush+0x2c>
   11f8c:	01059783          	lh	a5,16(a1)
   11f90:	00079663          	bnez	a5,11f9c <fflush+0x28>
   11f94:	00000513          	li	a0,0
   11f98:	00008067          	ret
   11f9c:	d25ff06f          	j	11cc0 <__sflush_r>
   11fa0:	fe010113          	addi	sp,sp,-32
   11fa4:	00b13423          	sd	a1,8(sp)
   11fa8:	00a13023          	sd	a0,0(sp)
   11fac:	00113c23          	sd	ra,24(sp)
   11fb0:	f90fe0ef          	jal	10740 <__sinit>
   11fb4:	00813583          	ld	a1,8(sp)
   11fb8:	00013503          	ld	a0,0(sp)
   11fbc:	01059783          	lh	a5,16(a1)
   11fc0:	02079863          	bnez	a5,11ff0 <fflush+0x7c>
   11fc4:	01813083          	ld	ra,24(sp)
   11fc8:	00000513          	li	a0,0
   11fcc:	02010113          	addi	sp,sp,32
   11fd0:	00008067          	ret
   11fd4:	00013637          	lui	a2,0x13
   11fd8:	000125b7          	lui	a1,0x12
   11fdc:	00013537          	lui	a0,0x13
   11fe0:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11fe4:	f1858593          	addi	a1,a1,-232 # 11f18 <_fflush_r>
   11fe8:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11fec:	fb0fe06f          	j	1079c <_fwalk_sglue>
   11ff0:	01813083          	ld	ra,24(sp)
   11ff4:	02010113          	addi	sp,sp,32
   11ff8:	cc9ff06f          	j	11cc0 <__sflush_r>

0000000000011ffc <_sbrk_r>:
   11ffc:	fe010113          	addi	sp,sp,-32
   12000:	00813823          	sd	s0,16(sp)
   12004:	00913423          	sd	s1,8(sp)
   12008:	00050413          	mv	s0,a0
   1200c:	00058513          	mv	a0,a1
   12010:	00113c23          	sd	ra,24(sp)
   12014:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12018:	238000ef          	jal	12250 <_sbrk>
   1201c:	fff00793          	li	a5,-1
   12020:	00f50c63          	beq	a0,a5,12038 <_sbrk_r+0x3c>
   12024:	01813083          	ld	ra,24(sp)
   12028:	01013403          	ld	s0,16(sp)
   1202c:	00813483          	ld	s1,8(sp)
   12030:	02010113          	addi	sp,sp,32
   12034:	00008067          	ret
   12038:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   1203c:	fe0784e3          	beqz	a5,12024 <_sbrk_r+0x28>
   12040:	01813083          	ld	ra,24(sp)
   12044:	00f42023          	sw	a5,0(s0)
   12048:	01013403          	ld	s0,16(sp)
   1204c:	00813483          	ld	s1,8(sp)
   12050:	02010113          	addi	sp,sp,32
   12054:	00008067          	ret

0000000000012058 <__libc_fini_array>:
   12058:	fe010113          	addi	sp,sp,-32
   1205c:	00813823          	sd	s0,16(sp)
   12060:	000137b7          	lui	a5,0x13
   12064:	00013437          	lui	s0,0x13
   12068:	01840413          	addi	s0,s0,24 # 13018 <__sglue>
   1206c:	01078793          	addi	a5,a5,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   12070:	40f40433          	sub	s0,s0,a5
   12074:	00913423          	sd	s1,8(sp)
   12078:	00113c23          	sd	ra,24(sp)
   1207c:	40345493          	srai	s1,s0,0x3
   12080:	02048063          	beqz	s1,120a0 <__libc_fini_array+0x48>
   12084:	ff840413          	addi	s0,s0,-8
   12088:	00f40433          	add	s0,s0,a5
   1208c:	00043783          	ld	a5,0(s0)
   12090:	fff48493          	addi	s1,s1,-1
   12094:	ff840413          	addi	s0,s0,-8
   12098:	000780e7          	jalr	a5
   1209c:	fe0498e3          	bnez	s1,1208c <__libc_fini_array+0x34>
   120a0:	01813083          	ld	ra,24(sp)
   120a4:	01013403          	ld	s0,16(sp)
   120a8:	00813483          	ld	s1,8(sp)
   120ac:	02010113          	addi	sp,sp,32
   120b0:	00008067          	ret

00000000000120b4 <__register_exitproc>:
   120b4:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   120b8:	04078e63          	beqz	a5,12114 <__register_exitproc+0x60>
   120bc:	0087a703          	lw	a4,8(a5)
   120c0:	01f00813          	li	a6,31
   120c4:	08e84463          	blt	a6,a4,1214c <__register_exitproc+0x98>
   120c8:	02050863          	beqz	a0,120f8 <__register_exitproc+0x44>
   120cc:	00371813          	slli	a6,a4,0x3
   120d0:	01078833          	add	a6,a5,a6
   120d4:	10c83823          	sd	a2,272(a6)
   120d8:	3107a883          	lw	a7,784(a5)
   120dc:	00100613          	li	a2,1
   120e0:	00e6163b          	sllw	a2,a2,a4
   120e4:	00c8e8b3          	or	a7,a7,a2
   120e8:	3117a823          	sw	a7,784(a5)
   120ec:	20d83823          	sd	a3,528(a6)
   120f0:	00200693          	li	a3,2
   120f4:	02d50863          	beq	a0,a3,12124 <__register_exitproc+0x70>
   120f8:	00371693          	slli	a3,a4,0x3
   120fc:	0017071b          	addiw	a4,a4,1
   12100:	00d786b3          	add	a3,a5,a3
   12104:	00e7a423          	sw	a4,8(a5)
   12108:	00b6b823          	sd	a1,16(a3)
   1210c:	00000513          	li	a0,0
   12110:	00008067          	ret
   12114:	44818813          	addi	a6,gp,1096 # 13c60 <__atexit0>
   12118:	1b01b823          	sd	a6,432(gp) # 139c8 <__atexit>
   1211c:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12120:	f9dff06f          	j	120bc <__register_exitproc+0x8>
   12124:	3147a683          	lw	a3,788(a5)
   12128:	00000513          	li	a0,0
   1212c:	00d66633          	or	a2,a2,a3
   12130:	00371693          	slli	a3,a4,0x3
   12134:	0017071b          	addiw	a4,a4,1
   12138:	30c7aa23          	sw	a2,788(a5)
   1213c:	00d786b3          	add	a3,a5,a3
   12140:	00e7a423          	sw	a4,8(a5)
   12144:	00b6b823          	sd	a1,16(a3)
   12148:	00008067          	ret
   1214c:	fff00513          	li	a0,-1
   12150:	00008067          	ret

0000000000012154 <_close>:
   12154:	ff010113          	addi	sp,sp,-16
   12158:	00113423          	sd	ra,8(sp)
   1215c:	00813023          	sd	s0,0(sp)
   12160:	03900893          	li	a7,57
   12164:	00000073          	ecall
   12168:	00050413          	mv	s0,a0
   1216c:	00054c63          	bltz	a0,12184 <_close+0x30>
   12170:	0005051b          	sext.w	a0,a0
   12174:	00813083          	ld	ra,8(sp)
   12178:	00013403          	ld	s0,0(sp)
   1217c:	01010113          	addi	sp,sp,16
   12180:	00008067          	ret
   12184:	188000ef          	jal	1230c <__errno>
   12188:	4080043b          	negw	s0,s0
   1218c:	00852023          	sw	s0,0(a0)
   12190:	fff00513          	li	a0,-1
   12194:	fe1ff06f          	j	12174 <_close+0x20>

0000000000012198 <_exit>:
   12198:	05d00893          	li	a7,93
   1219c:	00000073          	ecall
   121a0:	00054463          	bltz	a0,121a8 <_exit+0x10>
   121a4:	0000006f          	j	121a4 <_exit+0xc>
   121a8:	ff010113          	addi	sp,sp,-16
   121ac:	00813023          	sd	s0,0(sp)
   121b0:	00050413          	mv	s0,a0
   121b4:	00113423          	sd	ra,8(sp)
   121b8:	4080043b          	negw	s0,s0
   121bc:	150000ef          	jal	1230c <__errno>
   121c0:	00852023          	sw	s0,0(a0)
   121c4:	0000006f          	j	121c4 <_exit+0x2c>

00000000000121c8 <_lseek>:
   121c8:	ff010113          	addi	sp,sp,-16
   121cc:	00113423          	sd	ra,8(sp)
   121d0:	00813023          	sd	s0,0(sp)
   121d4:	03e00893          	li	a7,62
   121d8:	00000073          	ecall
   121dc:	00050413          	mv	s0,a0
   121e0:	00054c63          	bltz	a0,121f8 <_lseek+0x30>
   121e4:	00813083          	ld	ra,8(sp)
   121e8:	00040513          	mv	a0,s0
   121ec:	00013403          	ld	s0,0(sp)
   121f0:	01010113          	addi	sp,sp,16
   121f4:	00008067          	ret
   121f8:	4080043b          	negw	s0,s0
   121fc:	110000ef          	jal	1230c <__errno>
   12200:	00852023          	sw	s0,0(a0)
   12204:	fff00413          	li	s0,-1
   12208:	fddff06f          	j	121e4 <_lseek+0x1c>

000000000001220c <_read>:
   1220c:	ff010113          	addi	sp,sp,-16
   12210:	00113423          	sd	ra,8(sp)
   12214:	00813023          	sd	s0,0(sp)
   12218:	03f00893          	li	a7,63
   1221c:	00000073          	ecall
   12220:	00050413          	mv	s0,a0
   12224:	00054c63          	bltz	a0,1223c <_read+0x30>
   12228:	00813083          	ld	ra,8(sp)
   1222c:	00040513          	mv	a0,s0
   12230:	00013403          	ld	s0,0(sp)
   12234:	01010113          	addi	sp,sp,16
   12238:	00008067          	ret
   1223c:	4080043b          	negw	s0,s0
   12240:	0cc000ef          	jal	1230c <__errno>
   12244:	00852023          	sw	s0,0(a0)
   12248:	fff00413          	li	s0,-1
   1224c:	fddff06f          	j	12228 <_read+0x1c>

0000000000012250 <_sbrk>:
   12250:	1d01b703          	ld	a4,464(gp) # 139e8 <heap_end.0>
   12254:	ff010113          	addi	sp,sp,-16
   12258:	00113423          	sd	ra,8(sp)
   1225c:	00050793          	mv	a5,a0
   12260:	02071063          	bnez	a4,12280 <_sbrk+0x30>
   12264:	0d600893          	li	a7,214
   12268:	00000513          	li	a0,0
   1226c:	00000073          	ecall
   12270:	fff00613          	li	a2,-1
   12274:	00050713          	mv	a4,a0
   12278:	02c50a63          	beq	a0,a2,122ac <_sbrk+0x5c>
   1227c:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12280:	00e78533          	add	a0,a5,a4
   12284:	0d600893          	li	a7,214
   12288:	00000073          	ecall
   1228c:	1d01b703          	ld	a4,464(gp) # 139e8 <heap_end.0>
   12290:	00e787b3          	add	a5,a5,a4
   12294:	00f51c63          	bne	a0,a5,122ac <_sbrk+0x5c>
   12298:	00813083          	ld	ra,8(sp)
   1229c:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   122a0:	00070513          	mv	a0,a4
   122a4:	01010113          	addi	sp,sp,16
   122a8:	00008067          	ret
   122ac:	060000ef          	jal	1230c <__errno>
   122b0:	00813083          	ld	ra,8(sp)
   122b4:	00c00793          	li	a5,12
   122b8:	00f52023          	sw	a5,0(a0)
   122bc:	fff00513          	li	a0,-1
   122c0:	01010113          	addi	sp,sp,16
   122c4:	00008067          	ret

00000000000122c8 <_write>:
   122c8:	ff010113          	addi	sp,sp,-16
   122cc:	00113423          	sd	ra,8(sp)
   122d0:	00813023          	sd	s0,0(sp)
   122d4:	04000893          	li	a7,64
   122d8:	00000073          	ecall
   122dc:	00050413          	mv	s0,a0
   122e0:	00054c63          	bltz	a0,122f8 <_write+0x30>
   122e4:	00813083          	ld	ra,8(sp)
   122e8:	00040513          	mv	a0,s0
   122ec:	00013403          	ld	s0,0(sp)
   122f0:	01010113          	addi	sp,sp,16
   122f4:	00008067          	ret
   122f8:	4080043b          	negw	s0,s0
   122fc:	010000ef          	jal	1230c <__errno>
   12300:	00852023          	sw	s0,0(a0)
   12304:	fff00413          	li	s0,-1
   12308:	fddff06f          	j	122e4 <_write+0x1c>

000000000001230c <__errno>:
   1230c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12310:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012318 <__EH_FRAME_BEGIN__>:
   12318:	0000                	.insn	2, 0x0000
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
