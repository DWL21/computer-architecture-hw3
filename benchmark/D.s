
../benchmark/D.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	4c1000ef          	jal	10df4 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	090020ef          	jal	121d8 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	09850513          	addi	a0,a0,152 # 12098 <__libc_fini_array>
   1015c:	5cd0006f          	j	10f28 <atexit>
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
   10184:	395000ef          	jal	10d18 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	da050513          	addi	a0,a0,-608 # 10f28 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	f0450513          	addi	a0,a0,-252 # 12098 <__libc_fini_array>
   1019c:	58d000ef          	jal	10f28 <atexit>
   101a0:	2dd000ef          	jal	10c7c <__libc_init_array>
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
   101d8:	35850513          	addi	a0,a0,856 # 12358 <__EH_FRAME_BEGIN__>
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
   1020c:	35850513          	addi	a0,a0,856 # 12358 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	ff010113          	addi	sp,sp,-16
   10220:	00113423          	sd	ra,8(sp)
   10224:	00813023          	sd	s0,0(sp)
   10228:	01010413          	addi	s0,sp,16
   1022c:	000027b7          	lui	a5,0x2
   10230:	71078513          	addi	a0,a5,1808 # 2710 <exit-0xda10>
   10234:	020000ef          	jal	10254 <func_D>
   10238:	1a4000ef          	jal	103dc <exit_proc>
   1023c:	00000793          	li	a5,0
   10240:	00078513          	mv	a0,a5
   10244:	00813083          	ld	ra,8(sp)
   10248:	00013403          	ld	s0,0(sp)
   1024c:	01010113          	addi	sp,sp,16
   10250:	00008067          	ret

0000000000010254 <func_D>:
   10254:	fc010113          	addi	sp,sp,-64
   10258:	02113c23          	sd	ra,56(sp)
   1025c:	02813823          	sd	s0,48(sp)
   10260:	04010413          	addi	s0,sp,64
   10264:	00050793          	mv	a5,a0
   10268:	fcf42623          	sw	a5,-52(s0)
   1026c:	fe042223          	sw	zero,-28(s0)
   10270:	fc043823          	sd	zero,-48(s0)
   10274:	fc043c23          	sd	zero,-40(s0)
   10278:	fe042623          	sw	zero,-20(s0)
   1027c:	0940006f          	j	10310 <func_D+0xbc>
   10280:	fe042423          	sw	zero,-24(s0)
   10284:	0700006f          	j	102f4 <func_D+0xa0>
   10288:	fe842703          	lw	a4,-24(s0)
   1028c:	fd040793          	addi	a5,s0,-48
   10290:	00271713          	slli	a4,a4,0x2
   10294:	00f707b3          	add	a5,a4,a5
   10298:	0007a783          	lw	a5,0(a5)
   1029c:	00078c63          	beqz	a5,102b4 <func_D+0x60>
   102a0:	fe442783          	lw	a5,-28(s0)
   102a4:	0007879b          	sext.w	a5,a5
   102a8:	0017879b          	addiw	a5,a5,1
   102ac:	0007879b          	sext.w	a5,a5
   102b0:	fef42223          	sw	a5,-28(s0)
   102b4:	fe842703          	lw	a4,-24(s0)
   102b8:	fd040793          	addi	a5,s0,-48
   102bc:	00271713          	slli	a4,a4,0x2
   102c0:	00f707b3          	add	a5,a4,a5
   102c4:	0007a783          	lw	a5,0(a5)
   102c8:	0017b793          	seqz	a5,a5
   102cc:	0ff7f793          	zext.b	a5,a5
   102d0:	0007871b          	sext.w	a4,a5
   102d4:	fe842683          	lw	a3,-24(s0)
   102d8:	fd040793          	addi	a5,s0,-48
   102dc:	00269693          	slli	a3,a3,0x2
   102e0:	00f687b3          	add	a5,a3,a5
   102e4:	00e7a023          	sw	a4,0(a5)
   102e8:	fe842783          	lw	a5,-24(s0)
   102ec:	0017879b          	addiw	a5,a5,1
   102f0:	fef42423          	sw	a5,-24(s0)
   102f4:	fe842783          	lw	a5,-24(s0)
   102f8:	0007871b          	sext.w	a4,a5
   102fc:	00300793          	li	a5,3
   10300:	f8e7d4e3          	bge	a5,a4,10288 <func_D+0x34>
   10304:	fec42783          	lw	a5,-20(s0)
   10308:	0017879b          	addiw	a5,a5,1
   1030c:	fef42623          	sw	a5,-20(s0)
   10310:	fec42783          	lw	a5,-20(s0)
   10314:	00078713          	mv	a4,a5
   10318:	fcc42783          	lw	a5,-52(s0)
   1031c:	0007071b          	sext.w	a4,a4
   10320:	0007879b          	sext.w	a5,a5
   10324:	f4f74ee3          	blt	a4,a5,10280 <func_D+0x2c>
   10328:	fe442783          	lw	a5,-28(s0)
   1032c:	0007879b          	sext.w	a5,a5
   10330:	00078513          	mv	a0,a5
   10334:	03813083          	ld	ra,56(sp)
   10338:	03013403          	ld	s0,48(sp)
   1033c:	04010113          	addi	sp,sp,64
   10340:	00008067          	ret

0000000000010344 <print_d>:
   10344:	fe010113          	addi	sp,sp,-32
   10348:	00113c23          	sd	ra,24(sp)
   1034c:	00813823          	sd	s0,16(sp)
   10350:	02010413          	addi	s0,sp,32
   10354:	00050793          	mv	a5,a0
   10358:	fef42623          	sw	a5,-20(s0)
   1035c:	00200893          	li	a7,2
   10360:	00000073          	ecall
   10364:	00000013          	nop
   10368:	01813083          	ld	ra,24(sp)
   1036c:	01013403          	ld	s0,16(sp)
   10370:	02010113          	addi	sp,sp,32
   10374:	00008067          	ret

0000000000010378 <print_s>:
   10378:	fe010113          	addi	sp,sp,-32
   1037c:	00113c23          	sd	ra,24(sp)
   10380:	00813823          	sd	s0,16(sp)
   10384:	02010413          	addi	s0,sp,32
   10388:	fea43423          	sd	a0,-24(s0)
   1038c:	00000893          	li	a7,0
   10390:	00000073          	ecall
   10394:	00000013          	nop
   10398:	01813083          	ld	ra,24(sp)
   1039c:	01013403          	ld	s0,16(sp)
   103a0:	02010113          	addi	sp,sp,32
   103a4:	00008067          	ret

00000000000103a8 <print_c>:
   103a8:	fe010113          	addi	sp,sp,-32
   103ac:	00113c23          	sd	ra,24(sp)
   103b0:	00813823          	sd	s0,16(sp)
   103b4:	02010413          	addi	s0,sp,32
   103b8:	00050793          	mv	a5,a0
   103bc:	fef407a3          	sb	a5,-17(s0)
   103c0:	00100893          	li	a7,1
   103c4:	00000073          	ecall
   103c8:	00000013          	nop
   103cc:	01813083          	ld	ra,24(sp)
   103d0:	01013403          	ld	s0,16(sp)
   103d4:	02010113          	addi	sp,sp,32
   103d8:	00008067          	ret

00000000000103dc <exit_proc>:
   103dc:	ff010113          	addi	sp,sp,-16
   103e0:	00113423          	sd	ra,8(sp)
   103e4:	00813023          	sd	s0,0(sp)
   103e8:	01010413          	addi	s0,sp,16
   103ec:	00300893          	li	a7,3
   103f0:	00000073          	ecall
   103f4:	00000013          	nop
   103f8:	00813083          	ld	ra,8(sp)
   103fc:	00013403          	ld	s0,0(sp)
   10400:	01010113          	addi	sp,sp,16
   10404:	00008067          	ret

0000000000010408 <read_char>:
   10408:	fe010113          	addi	sp,sp,-32
   1040c:	00113c23          	sd	ra,24(sp)
   10410:	00813823          	sd	s0,16(sp)
   10414:	02010413          	addi	s0,sp,32
   10418:	00400893          	li	a7,4
   1041c:	00000073          	ecall
   10420:	00050793          	mv	a5,a0
   10424:	fef407a3          	sb	a5,-17(s0)
   10428:	fef44783          	lbu	a5,-17(s0)
   1042c:	00078513          	mv	a0,a5
   10430:	01813083          	ld	ra,24(sp)
   10434:	01013403          	ld	s0,16(sp)
   10438:	02010113          	addi	sp,sp,32
   1043c:	00008067          	ret

0000000000010440 <read_num>:
   10440:	fe010113          	addi	sp,sp,-32
   10444:	00113c23          	sd	ra,24(sp)
   10448:	00813823          	sd	s0,16(sp)
   1044c:	02010413          	addi	s0,sp,32
   10450:	00500893          	li	a7,5
   10454:	00000073          	ecall
   10458:	00050793          	mv	a5,a0
   1045c:	fef43423          	sd	a5,-24(s0)
   10460:	fe843783          	ld	a5,-24(s0)
   10464:	00078513          	mv	a0,a5
   10468:	01813083          	ld	ra,24(sp)
   1046c:	01013403          	ld	s0,16(sp)
   10470:	02010113          	addi	sp,sp,32
   10474:	00008067          	ret

0000000000010478 <__fp_lock>:
   10478:	00000513          	li	a0,0
   1047c:	00008067          	ret

0000000000010480 <stdio_exit_handler>:
   10480:	00013637          	lui	a2,0x13
   10484:	000125b7          	lui	a1,0x12
   10488:	00013537          	lui	a0,0x13
   1048c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10490:	bec58593          	addi	a1,a1,-1044 # 11bec <_fclose_r>
   10494:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10498:	3440006f          	j	107dc <_fwalk_sglue>

000000000001049c <cleanup_stdio>:
   1049c:	00853583          	ld	a1,8(a0)
   104a0:	ff010113          	addi	sp,sp,-16
   104a4:	00813023          	sd	s0,0(sp)
   104a8:	00113423          	sd	ra,8(sp)
   104ac:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   104b0:	00050413          	mv	s0,a0
   104b4:	00f58463          	beq	a1,a5,104bc <cleanup_stdio+0x20>
   104b8:	734010ef          	jal	11bec <_fclose_r>
   104bc:	01043583          	ld	a1,16(s0)
   104c0:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   104c4:	00f58663          	beq	a1,a5,104d0 <cleanup_stdio+0x34>
   104c8:	00040513          	mv	a0,s0
   104cc:	720010ef          	jal	11bec <_fclose_r>
   104d0:	01843583          	ld	a1,24(s0)
   104d4:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   104d8:	00f58c63          	beq	a1,a5,104f0 <cleanup_stdio+0x54>
   104dc:	00040513          	mv	a0,s0
   104e0:	00013403          	ld	s0,0(sp)
   104e4:	00813083          	ld	ra,8(sp)
   104e8:	01010113          	addi	sp,sp,16
   104ec:	7000106f          	j	11bec <_fclose_r>
   104f0:	00813083          	ld	ra,8(sp)
   104f4:	00013403          	ld	s0,0(sp)
   104f8:	01010113          	addi	sp,sp,16
   104fc:	00008067          	ret

0000000000010500 <__fp_unlock>:
   10500:	00000513          	li	a0,0
   10504:	00008067          	ret

0000000000010508 <global_stdio_init.part.0>:
   10508:	fd010113          	addi	sp,sp,-48
   1050c:	02813023          	sd	s0,32(sp)
   10510:	000107b7          	lui	a5,0x10
   10514:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   10518:	02113423          	sd	ra,40(sp)
   1051c:	00913c23          	sd	s1,24(sp)
   10520:	01213823          	sd	s2,16(sp)
   10524:	01313423          	sd	s3,8(sp)
   10528:	01413023          	sd	s4,0(sp)
   1052c:	00400713          	li	a4,4
   10530:	48078793          	addi	a5,a5,1152 # 10480 <stdio_exit_handler>
   10534:	00800613          	li	a2,8
   10538:	00000593          	li	a1,0
   1053c:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10540:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10544:	00e42823          	sw	a4,16(s0)
   10548:	00043023          	sd	zero,0(s0)
   1054c:	00043423          	sd	zero,8(s0)
   10550:	0a042623          	sw	zero,172(s0)
   10554:	00043c23          	sd	zero,24(s0)
   10558:	02042023          	sw	zero,32(s0)
   1055c:	02042423          	sw	zero,40(s0)
   10560:	7b8000ef          	jal	10d18 <memset>
   10564:	000107b7          	lui	a5,0x10
   10568:	00011a37          	lui	s4,0x11
   1056c:	000119b7          	lui	s3,0x11
   10570:	00011937          	lui	s2,0x11
   10574:	000114b7          	lui	s1,0x11
   10578:	8aca0a13          	addi	s4,s4,-1876 # 108ac <__sread>
   1057c:	91098993          	addi	s3,s3,-1776 # 10910 <__swrite>
   10580:	99890913          	addi	s2,s2,-1640 # 10998 <__sseek>
   10584:	9fc48493          	addi	s1,s1,-1540 # 109fc <__sclose>
   10588:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   1058c:	00800613          	li	a2,8
   10590:	00000593          	li	a1,0
   10594:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10598:	0cf42023          	sw	a5,192(s0)
   1059c:	03443c23          	sd	s4,56(s0)
   105a0:	05343023          	sd	s3,64(s0)
   105a4:	05243423          	sd	s2,72(s0)
   105a8:	04943823          	sd	s1,80(s0)
   105ac:	02843823          	sd	s0,48(s0)
   105b0:	0a043823          	sd	zero,176(s0)
   105b4:	0a043c23          	sd	zero,184(s0)
   105b8:	14042e23          	sw	zero,348(s0)
   105bc:	0c043423          	sd	zero,200(s0)
   105c0:	0c042823          	sw	zero,208(s0)
   105c4:	0c042c23          	sw	zero,216(s0)
   105c8:	750000ef          	jal	10d18 <memset>
   105cc:	000207b7          	lui	a5,0x20
   105d0:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   105d4:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   105d8:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   105dc:	00800613          	li	a2,8
   105e0:	00000593          	li	a1,0
   105e4:	0f443423          	sd	s4,232(s0)
   105e8:	0f343823          	sd	s3,240(s0)
   105ec:	0f243c23          	sd	s2,248(s0)
   105f0:	10943023          	sd	s1,256(s0)
   105f4:	16f42823          	sw	a5,368(s0)
   105f8:	16043023          	sd	zero,352(s0)
   105fc:	16043423          	sd	zero,360(s0)
   10600:	20042623          	sw	zero,524(s0)
   10604:	16043c23          	sd	zero,376(s0)
   10608:	18042023          	sw	zero,384(s0)
   1060c:	18042423          	sw	zero,392(s0)
   10610:	0ee43023          	sd	a4,224(s0)
   10614:	704000ef          	jal	10d18 <memset>
   10618:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   1061c:	19443c23          	sd	s4,408(s0)
   10620:	1b343023          	sd	s3,416(s0)
   10624:	1b243423          	sd	s2,424(s0)
   10628:	1a943823          	sd	s1,432(s0)
   1062c:	02813083          	ld	ra,40(sp)
   10630:	18f43823          	sd	a5,400(s0)
   10634:	02013403          	ld	s0,32(sp)
   10638:	01813483          	ld	s1,24(sp)
   1063c:	01013903          	ld	s2,16(sp)
   10640:	00813983          	ld	s3,8(sp)
   10644:	00013a03          	ld	s4,0(sp)
   10648:	03010113          	addi	sp,sp,48
   1064c:	00008067          	ret

0000000000010650 <__sfp>:
   10650:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10654:	fe010113          	addi	sp,sp,-32
   10658:	01213023          	sd	s2,0(sp)
   1065c:	00113c23          	sd	ra,24(sp)
   10660:	00813823          	sd	s0,16(sp)
   10664:	00913423          	sd	s1,8(sp)
   10668:	00050913          	mv	s2,a0
   1066c:	0e078e63          	beqz	a5,10768 <__sfp+0x118>
   10670:	000134b7          	lui	s1,0x13
   10674:	01848493          	addi	s1,s1,24 # 13018 <__sglue>
   10678:	0084a703          	lw	a4,8(s1)
   1067c:	0104b403          	ld	s0,16(s1)
   10680:	08e05c63          	blez	a4,10718 <__sfp+0xc8>
   10684:	02071713          	slli	a4,a4,0x20
   10688:	02075713          	srli	a4,a4,0x20
   1068c:	00171793          	slli	a5,a4,0x1
   10690:	00e787b3          	add	a5,a5,a4
   10694:	00279793          	slli	a5,a5,0x2
   10698:	40e787b3          	sub	a5,a5,a4
   1069c:	00479793          	slli	a5,a5,0x4
   106a0:	00f407b3          	add	a5,s0,a5
   106a4:	00c0006f          	j	106b0 <__sfp+0x60>
   106a8:	0b040413          	addi	s0,s0,176
   106ac:	06f40663          	beq	s0,a5,10718 <__sfp+0xc8>
   106b0:	01041703          	lh	a4,16(s0)
   106b4:	fe071ae3          	bnez	a4,106a8 <__sfp+0x58>
   106b8:	ffff07b7          	lui	a5,0xffff0
   106bc:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   106c0:	0a042623          	sw	zero,172(s0)
   106c4:	00043023          	sd	zero,0(s0)
   106c8:	00043423          	sd	zero,8(s0)
   106cc:	00043c23          	sd	zero,24(s0)
   106d0:	02042023          	sw	zero,32(s0)
   106d4:	02042423          	sw	zero,40(s0)
   106d8:	00f42823          	sw	a5,16(s0)
   106dc:	00800613          	li	a2,8
   106e0:	00000593          	li	a1,0
   106e4:	0a440513          	addi	a0,s0,164
   106e8:	630000ef          	jal	10d18 <memset>
   106ec:	04043c23          	sd	zero,88(s0)
   106f0:	06042023          	sw	zero,96(s0)
   106f4:	06043c23          	sd	zero,120(s0)
   106f8:	08042023          	sw	zero,128(s0)
   106fc:	01813083          	ld	ra,24(sp)
   10700:	00040513          	mv	a0,s0
   10704:	01013403          	ld	s0,16(sp)
   10708:	00813483          	ld	s1,8(sp)
   1070c:	00013903          	ld	s2,0(sp)
   10710:	02010113          	addi	sp,sp,32
   10714:	00008067          	ret
   10718:	0004b403          	ld	s0,0(s1)
   1071c:	00040663          	beqz	s0,10728 <__sfp+0xd8>
   10720:	00040493          	mv	s1,s0
   10724:	f55ff06f          	j	10678 <__sfp+0x28>
   10728:	2d800593          	li	a1,728
   1072c:	00090513          	mv	a0,s2
   10730:	455000ef          	jal	11384 <_malloc_r>
   10734:	00050413          	mv	s0,a0
   10738:	02050c63          	beqz	a0,10770 <__sfp+0x120>
   1073c:	00400793          	li	a5,4
   10740:	01850513          	addi	a0,a0,24
   10744:	00043023          	sd	zero,0(s0)
   10748:	00f42423          	sw	a5,8(s0)
   1074c:	00a43823          	sd	a0,16(s0)
   10750:	2c000613          	li	a2,704
   10754:	00000593          	li	a1,0
   10758:	5c0000ef          	jal	10d18 <memset>
   1075c:	0084b023          	sd	s0,0(s1)
   10760:	00040493          	mv	s1,s0
   10764:	f15ff06f          	j	10678 <__sfp+0x28>
   10768:	da1ff0ef          	jal	10508 <global_stdio_init.part.0>
   1076c:	f05ff06f          	j	10670 <__sfp+0x20>
   10770:	0004b023          	sd	zero,0(s1)
   10774:	00c00793          	li	a5,12
   10778:	00f92023          	sw	a5,0(s2)
   1077c:	f81ff06f          	j	106fc <__sfp+0xac>

0000000000010780 <__sinit>:
   10780:	04853783          	ld	a5,72(a0)
   10784:	00078463          	beqz	a5,1078c <__sinit+0xc>
   10788:	00008067          	ret
   1078c:	000107b7          	lui	a5,0x10
   10790:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10794:	49c78793          	addi	a5,a5,1180 # 1049c <cleanup_stdio>
   10798:	04f53423          	sd	a5,72(a0)
   1079c:	fe0716e3          	bnez	a4,10788 <__sinit+0x8>
   107a0:	d69ff06f          	j	10508 <global_stdio_init.part.0>

00000000000107a4 <__sfp_lock_acquire>:
   107a4:	00008067          	ret

00000000000107a8 <__sfp_lock_release>:
   107a8:	00008067          	ret

00000000000107ac <__fp_lock_all>:
   107ac:	00013637          	lui	a2,0x13
   107b0:	000105b7          	lui	a1,0x10
   107b4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   107b8:	47858593          	addi	a1,a1,1144 # 10478 <__fp_lock>
   107bc:	00000513          	li	a0,0
   107c0:	01c0006f          	j	107dc <_fwalk_sglue>

00000000000107c4 <__fp_unlock_all>:
   107c4:	00013637          	lui	a2,0x13
   107c8:	000105b7          	lui	a1,0x10
   107cc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   107d0:	50058593          	addi	a1,a1,1280 # 10500 <__fp_unlock>
   107d4:	00000513          	li	a0,0
   107d8:	0040006f          	j	107dc <_fwalk_sglue>

00000000000107dc <_fwalk_sglue>:
   107dc:	fb010113          	addi	sp,sp,-80
   107e0:	03213823          	sd	s2,48(sp)
   107e4:	03313423          	sd	s3,40(sp)
   107e8:	03413023          	sd	s4,32(sp)
   107ec:	01513c23          	sd	s5,24(sp)
   107f0:	01613823          	sd	s6,16(sp)
   107f4:	01713423          	sd	s7,8(sp)
   107f8:	04113423          	sd	ra,72(sp)
   107fc:	04813023          	sd	s0,64(sp)
   10800:	02913c23          	sd	s1,56(sp)
   10804:	00050993          	mv	s3,a0
   10808:	00058a93          	mv	s5,a1
   1080c:	00060913          	mv	s2,a2
   10810:	00000b13          	li	s6,0
   10814:	00100b93          	li	s7,1
   10818:	fff00a13          	li	s4,-1
   1081c:	00892783          	lw	a5,8(s2)
   10820:	01093403          	ld	s0,16(s2)
   10824:	04f05863          	blez	a5,10874 <_fwalk_sglue+0x98>
   10828:	02079793          	slli	a5,a5,0x20
   1082c:	0207d793          	srli	a5,a5,0x20
   10830:	00179493          	slli	s1,a5,0x1
   10834:	00f484b3          	add	s1,s1,a5
   10838:	00249493          	slli	s1,s1,0x2
   1083c:	40f484b3          	sub	s1,s1,a5
   10840:	00449493          	slli	s1,s1,0x4
   10844:	009404b3          	add	s1,s0,s1
   10848:	01045783          	lhu	a5,16(s0)
   1084c:	02fbf063          	bgeu	s7,a5,1086c <_fwalk_sglue+0x90>
   10850:	01241783          	lh	a5,18(s0)
   10854:	00040593          	mv	a1,s0
   10858:	00098513          	mv	a0,s3
   1085c:	01478863          	beq	a5,s4,1086c <_fwalk_sglue+0x90>
   10860:	000a80e7          	jalr	s5
   10864:	01656b33          	or	s6,a0,s6
   10868:	000b0b1b          	sext.w	s6,s6
   1086c:	0b040413          	addi	s0,s0,176
   10870:	fc941ce3          	bne	s0,s1,10848 <_fwalk_sglue+0x6c>
   10874:	00093903          	ld	s2,0(s2)
   10878:	fa0912e3          	bnez	s2,1081c <_fwalk_sglue+0x40>
   1087c:	04813083          	ld	ra,72(sp)
   10880:	04013403          	ld	s0,64(sp)
   10884:	03813483          	ld	s1,56(sp)
   10888:	03013903          	ld	s2,48(sp)
   1088c:	02813983          	ld	s3,40(sp)
   10890:	02013a03          	ld	s4,32(sp)
   10894:	01813a83          	ld	s5,24(sp)
   10898:	00813b83          	ld	s7,8(sp)
   1089c:	000b0513          	mv	a0,s6
   108a0:	01013b03          	ld	s6,16(sp)
   108a4:	05010113          	addi	sp,sp,80
   108a8:	00008067          	ret

00000000000108ac <__sread>:
   108ac:	ff010113          	addi	sp,sp,-16
   108b0:	00813023          	sd	s0,0(sp)
   108b4:	00058413          	mv	s0,a1
   108b8:	01259583          	lh	a1,18(a1)
   108bc:	00113423          	sd	ra,8(sp)
   108c0:	2ec000ef          	jal	10bac <_read_r>
   108c4:	02054063          	bltz	a0,108e4 <__sread+0x38>
   108c8:	09043783          	ld	a5,144(s0)
   108cc:	00813083          	ld	ra,8(sp)
   108d0:	00a787b3          	add	a5,a5,a0
   108d4:	08f43823          	sd	a5,144(s0)
   108d8:	00013403          	ld	s0,0(sp)
   108dc:	01010113          	addi	sp,sp,16
   108e0:	00008067          	ret
   108e4:	01045783          	lhu	a5,16(s0)
   108e8:	fffff737          	lui	a4,0xfffff
   108ec:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   108f0:	00e7f7b3          	and	a5,a5,a4
   108f4:	00813083          	ld	ra,8(sp)
   108f8:	00f41823          	sh	a5,16(s0)
   108fc:	00013403          	ld	s0,0(sp)
   10900:	01010113          	addi	sp,sp,16
   10904:	00008067          	ret

0000000000010908 <__seofread>:
   10908:	00000513          	li	a0,0
   1090c:	00008067          	ret

0000000000010910 <__swrite>:
   10910:	01059783          	lh	a5,16(a1)
   10914:	fd010113          	addi	sp,sp,-48
   10918:	02813023          	sd	s0,32(sp)
   1091c:	00913c23          	sd	s1,24(sp)
   10920:	01213823          	sd	s2,16(sp)
   10924:	01313423          	sd	s3,8(sp)
   10928:	02113423          	sd	ra,40(sp)
   1092c:	1007f713          	andi	a4,a5,256
   10930:	00058413          	mv	s0,a1
   10934:	00060913          	mv	s2,a2
   10938:	00068993          	mv	s3,a3
   1093c:	00050493          	mv	s1,a0
   10940:	04071063          	bnez	a4,10980 <__swrite+0x70>
   10944:	fffff737          	lui	a4,0xfffff
   10948:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   1094c:	00e7f7b3          	and	a5,a5,a4
   10950:	01241583          	lh	a1,18(s0)
   10954:	00f41823          	sh	a5,16(s0)
   10958:	02013403          	ld	s0,32(sp)
   1095c:	02813083          	ld	ra,40(sp)
   10960:	00098693          	mv	a3,s3
   10964:	00090613          	mv	a2,s2
   10968:	00813983          	ld	s3,8(sp)
   1096c:	01013903          	ld	s2,16(sp)
   10970:	00048513          	mv	a0,s1
   10974:	01813483          	ld	s1,24(sp)
   10978:	03010113          	addi	sp,sp,48
   1097c:	2980006f          	j	10c14 <_write_r>
   10980:	01259583          	lh	a1,18(a1)
   10984:	00200693          	li	a3,2
   10988:	00000613          	li	a2,0
   1098c:	1b8000ef          	jal	10b44 <_lseek_r>
   10990:	01041783          	lh	a5,16(s0)
   10994:	fb1ff06f          	j	10944 <__swrite+0x34>

0000000000010998 <__sseek>:
   10998:	ff010113          	addi	sp,sp,-16
   1099c:	00813023          	sd	s0,0(sp)
   109a0:	00058413          	mv	s0,a1
   109a4:	01259583          	lh	a1,18(a1)
   109a8:	00113423          	sd	ra,8(sp)
   109ac:	198000ef          	jal	10b44 <_lseek_r>
   109b0:	fff00713          	li	a4,-1
   109b4:	01041783          	lh	a5,16(s0)
   109b8:	02e50263          	beq	a0,a4,109dc <__sseek+0x44>
   109bc:	00001737          	lui	a4,0x1
   109c0:	00e7e7b3          	or	a5,a5,a4
   109c4:	00813083          	ld	ra,8(sp)
   109c8:	08a43823          	sd	a0,144(s0)
   109cc:	00f41823          	sh	a5,16(s0)
   109d0:	00013403          	ld	s0,0(sp)
   109d4:	01010113          	addi	sp,sp,16
   109d8:	00008067          	ret
   109dc:	fffff737          	lui	a4,0xfffff
   109e0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   109e4:	00e7f7b3          	and	a5,a5,a4
   109e8:	00813083          	ld	ra,8(sp)
   109ec:	00f41823          	sh	a5,16(s0)
   109f0:	00013403          	ld	s0,0(sp)
   109f4:	01010113          	addi	sp,sp,16
   109f8:	00008067          	ret

00000000000109fc <__sclose>:
   109fc:	01259583          	lh	a1,18(a1)
   10a00:	0040006f          	j	10a04 <_close_r>

0000000000010a04 <_close_r>:
   10a04:	fe010113          	addi	sp,sp,-32
   10a08:	00813823          	sd	s0,16(sp)
   10a0c:	00913423          	sd	s1,8(sp)
   10a10:	00050413          	mv	s0,a0
   10a14:	00058513          	mv	a0,a1
   10a18:	00113c23          	sd	ra,24(sp)
   10a1c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a20:	774010ef          	jal	12194 <_close>
   10a24:	fff00793          	li	a5,-1
   10a28:	00f50c63          	beq	a0,a5,10a40 <_close_r+0x3c>
   10a2c:	01813083          	ld	ra,24(sp)
   10a30:	01013403          	ld	s0,16(sp)
   10a34:	00813483          	ld	s1,8(sp)
   10a38:	02010113          	addi	sp,sp,32
   10a3c:	00008067          	ret
   10a40:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a44:	fe0784e3          	beqz	a5,10a2c <_close_r+0x28>
   10a48:	01813083          	ld	ra,24(sp)
   10a4c:	00f42023          	sw	a5,0(s0)
   10a50:	01013403          	ld	s0,16(sp)
   10a54:	00813483          	ld	s1,8(sp)
   10a58:	02010113          	addi	sp,sp,32
   10a5c:	00008067          	ret

0000000000010a60 <_reclaim_reent>:
   10a60:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10a64:	0ca78e63          	beq	a5,a0,10b40 <_reclaim_reent+0xe0>
   10a68:	06853583          	ld	a1,104(a0)
   10a6c:	fd010113          	addi	sp,sp,-48
   10a70:	00913c23          	sd	s1,24(sp)
   10a74:	02113423          	sd	ra,40(sp)
   10a78:	02813023          	sd	s0,32(sp)
   10a7c:	00050493          	mv	s1,a0
   10a80:	04058863          	beqz	a1,10ad0 <_reclaim_reent+0x70>
   10a84:	01213823          	sd	s2,16(sp)
   10a88:	01313423          	sd	s3,8(sp)
   10a8c:	00000913          	li	s2,0
   10a90:	20000993          	li	s3,512
   10a94:	012587b3          	add	a5,a1,s2
   10a98:	0007b403          	ld	s0,0(a5)
   10a9c:	00040e63          	beqz	s0,10ab8 <_reclaim_reent+0x58>
   10aa0:	00040593          	mv	a1,s0
   10aa4:	00043403          	ld	s0,0(s0)
   10aa8:	00048513          	mv	a0,s1
   10aac:	5c8000ef          	jal	11074 <_free_r>
   10ab0:	fe0418e3          	bnez	s0,10aa0 <_reclaim_reent+0x40>
   10ab4:	0684b583          	ld	a1,104(s1)
   10ab8:	00890913          	addi	s2,s2,8
   10abc:	fd391ce3          	bne	s2,s3,10a94 <_reclaim_reent+0x34>
   10ac0:	00048513          	mv	a0,s1
   10ac4:	5b0000ef          	jal	11074 <_free_r>
   10ac8:	01013903          	ld	s2,16(sp)
   10acc:	00813983          	ld	s3,8(sp)
   10ad0:	0504b583          	ld	a1,80(s1)
   10ad4:	00058663          	beqz	a1,10ae0 <_reclaim_reent+0x80>
   10ad8:	00048513          	mv	a0,s1
   10adc:	598000ef          	jal	11074 <_free_r>
   10ae0:	0604b403          	ld	s0,96(s1)
   10ae4:	00040c63          	beqz	s0,10afc <_reclaim_reent+0x9c>
   10ae8:	00040593          	mv	a1,s0
   10aec:	00043403          	ld	s0,0(s0)
   10af0:	00048513          	mv	a0,s1
   10af4:	580000ef          	jal	11074 <_free_r>
   10af8:	fe0418e3          	bnez	s0,10ae8 <_reclaim_reent+0x88>
   10afc:	0784b583          	ld	a1,120(s1)
   10b00:	00058663          	beqz	a1,10b0c <_reclaim_reent+0xac>
   10b04:	00048513          	mv	a0,s1
   10b08:	56c000ef          	jal	11074 <_free_r>
   10b0c:	0484b783          	ld	a5,72(s1)
   10b10:	00078e63          	beqz	a5,10b2c <_reclaim_reent+0xcc>
   10b14:	02013403          	ld	s0,32(sp)
   10b18:	02813083          	ld	ra,40(sp)
   10b1c:	00048513          	mv	a0,s1
   10b20:	01813483          	ld	s1,24(sp)
   10b24:	03010113          	addi	sp,sp,48
   10b28:	00078067          	jr	a5
   10b2c:	02813083          	ld	ra,40(sp)
   10b30:	02013403          	ld	s0,32(sp)
   10b34:	01813483          	ld	s1,24(sp)
   10b38:	03010113          	addi	sp,sp,48
   10b3c:	00008067          	ret
   10b40:	00008067          	ret

0000000000010b44 <_lseek_r>:
   10b44:	fe010113          	addi	sp,sp,-32
   10b48:	00058713          	mv	a4,a1
   10b4c:	00813823          	sd	s0,16(sp)
   10b50:	00913423          	sd	s1,8(sp)
   10b54:	00060593          	mv	a1,a2
   10b58:	00050413          	mv	s0,a0
   10b5c:	00068613          	mv	a2,a3
   10b60:	00070513          	mv	a0,a4
   10b64:	00113c23          	sd	ra,24(sp)
   10b68:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b6c:	69c010ef          	jal	12208 <_lseek>
   10b70:	fff00793          	li	a5,-1
   10b74:	00f50c63          	beq	a0,a5,10b8c <_lseek_r+0x48>
   10b78:	01813083          	ld	ra,24(sp)
   10b7c:	01013403          	ld	s0,16(sp)
   10b80:	00813483          	ld	s1,8(sp)
   10b84:	02010113          	addi	sp,sp,32
   10b88:	00008067          	ret
   10b8c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b90:	fe0784e3          	beqz	a5,10b78 <_lseek_r+0x34>
   10b94:	01813083          	ld	ra,24(sp)
   10b98:	00f42023          	sw	a5,0(s0)
   10b9c:	01013403          	ld	s0,16(sp)
   10ba0:	00813483          	ld	s1,8(sp)
   10ba4:	02010113          	addi	sp,sp,32
   10ba8:	00008067          	ret

0000000000010bac <_read_r>:
   10bac:	fe010113          	addi	sp,sp,-32
   10bb0:	00058713          	mv	a4,a1
   10bb4:	00813823          	sd	s0,16(sp)
   10bb8:	00913423          	sd	s1,8(sp)
   10bbc:	00060593          	mv	a1,a2
   10bc0:	00050413          	mv	s0,a0
   10bc4:	00068613          	mv	a2,a3
   10bc8:	00070513          	mv	a0,a4
   10bcc:	00113c23          	sd	ra,24(sp)
   10bd0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10bd4:	678010ef          	jal	1224c <_read>
   10bd8:	fff00793          	li	a5,-1
   10bdc:	00f50c63          	beq	a0,a5,10bf4 <_read_r+0x48>
   10be0:	01813083          	ld	ra,24(sp)
   10be4:	01013403          	ld	s0,16(sp)
   10be8:	00813483          	ld	s1,8(sp)
   10bec:	02010113          	addi	sp,sp,32
   10bf0:	00008067          	ret
   10bf4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10bf8:	fe0784e3          	beqz	a5,10be0 <_read_r+0x34>
   10bfc:	01813083          	ld	ra,24(sp)
   10c00:	00f42023          	sw	a5,0(s0)
   10c04:	01013403          	ld	s0,16(sp)
   10c08:	00813483          	ld	s1,8(sp)
   10c0c:	02010113          	addi	sp,sp,32
   10c10:	00008067          	ret

0000000000010c14 <_write_r>:
   10c14:	fe010113          	addi	sp,sp,-32
   10c18:	00058713          	mv	a4,a1
   10c1c:	00813823          	sd	s0,16(sp)
   10c20:	00913423          	sd	s1,8(sp)
   10c24:	00060593          	mv	a1,a2
   10c28:	00050413          	mv	s0,a0
   10c2c:	00068613          	mv	a2,a3
   10c30:	00070513          	mv	a0,a4
   10c34:	00113c23          	sd	ra,24(sp)
   10c38:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c3c:	6cc010ef          	jal	12308 <_write>
   10c40:	fff00793          	li	a5,-1
   10c44:	00f50c63          	beq	a0,a5,10c5c <_write_r+0x48>
   10c48:	01813083          	ld	ra,24(sp)
   10c4c:	01013403          	ld	s0,16(sp)
   10c50:	00813483          	ld	s1,8(sp)
   10c54:	02010113          	addi	sp,sp,32
   10c58:	00008067          	ret
   10c5c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c60:	fe0784e3          	beqz	a5,10c48 <_write_r+0x34>
   10c64:	01813083          	ld	ra,24(sp)
   10c68:	00f42023          	sw	a5,0(s0)
   10c6c:	01013403          	ld	s0,16(sp)
   10c70:	00813483          	ld	s1,8(sp)
   10c74:	02010113          	addi	sp,sp,32
   10c78:	00008067          	ret

0000000000010c7c <__libc_init_array>:
   10c7c:	fe010113          	addi	sp,sp,-32
   10c80:	00813823          	sd	s0,16(sp)
   10c84:	000137b7          	lui	a5,0x13
   10c88:	00013437          	lui	s0,0x13
   10c8c:	01213023          	sd	s2,0(sp)
   10c90:	00078793          	mv	a5,a5
   10c94:	00040713          	mv	a4,s0
   10c98:	00113c23          	sd	ra,24(sp)
   10c9c:	00913423          	sd	s1,8(sp)
   10ca0:	40e78933          	sub	s2,a5,a4
   10ca4:	02e78263          	beq	a5,a4,10cc8 <__libc_init_array+0x4c>
   10ca8:	40395913          	srai	s2,s2,0x3
   10cac:	00040413          	mv	s0,s0
   10cb0:	00000493          	li	s1,0
   10cb4:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10cb8:	00148493          	addi	s1,s1,1
   10cbc:	00840413          	addi	s0,s0,8
   10cc0:	000780e7          	jalr	a5 # 13000 <__init_array_start>
   10cc4:	ff24e8e3          	bltu	s1,s2,10cb4 <__libc_init_array+0x38>
   10cc8:	000137b7          	lui	a5,0x13
   10ccc:	00013437          	lui	s0,0x13
   10cd0:	01078793          	addi	a5,a5,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10cd4:	00040713          	mv	a4,s0
   10cd8:	40e78933          	sub	s2,a5,a4
   10cdc:	40395913          	srai	s2,s2,0x3
   10ce0:	02e78063          	beq	a5,a4,10d00 <__libc_init_array+0x84>
   10ce4:	00040413          	mv	s0,s0
   10ce8:	00000493          	li	s1,0
   10cec:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10cf0:	00148493          	addi	s1,s1,1
   10cf4:	00840413          	addi	s0,s0,8
   10cf8:	000780e7          	jalr	a5
   10cfc:	ff24e8e3          	bltu	s1,s2,10cec <__libc_init_array+0x70>
   10d00:	01813083          	ld	ra,24(sp)
   10d04:	01013403          	ld	s0,16(sp)
   10d08:	00813483          	ld	s1,8(sp)
   10d0c:	00013903          	ld	s2,0(sp)
   10d10:	02010113          	addi	sp,sp,32
   10d14:	00008067          	ret

0000000000010d18 <memset>:
   10d18:	00f00313          	li	t1,15
   10d1c:	00050713          	mv	a4,a0
   10d20:	02c37a63          	bgeu	t1,a2,10d54 <memset+0x3c>
   10d24:	00f77793          	andi	a5,a4,15
   10d28:	0a079063          	bnez	a5,10dc8 <memset+0xb0>
   10d2c:	06059e63          	bnez	a1,10da8 <memset+0x90>
   10d30:	ff067693          	andi	a3,a2,-16
   10d34:	00f67613          	andi	a2,a2,15
   10d38:	00e686b3          	add	a3,a3,a4
   10d3c:	00b73023          	sd	a1,0(a4)
   10d40:	00b73423          	sd	a1,8(a4)
   10d44:	01070713          	addi	a4,a4,16
   10d48:	fed76ae3          	bltu	a4,a3,10d3c <memset+0x24>
   10d4c:	00061463          	bnez	a2,10d54 <memset+0x3c>
   10d50:	00008067          	ret
   10d54:	40c306b3          	sub	a3,t1,a2
   10d58:	00269693          	slli	a3,a3,0x2
   10d5c:	00000297          	auipc	t0,0x0
   10d60:	005686b3          	add	a3,a3,t0
   10d64:	00c68067          	jr	12(a3)
   10d68:	00b70723          	sb	a1,14(a4)
   10d6c:	00b706a3          	sb	a1,13(a4)
   10d70:	00b70623          	sb	a1,12(a4)
   10d74:	00b705a3          	sb	a1,11(a4)
   10d78:	00b70523          	sb	a1,10(a4)
   10d7c:	00b704a3          	sb	a1,9(a4)
   10d80:	00b70423          	sb	a1,8(a4)
   10d84:	00b703a3          	sb	a1,7(a4)
   10d88:	00b70323          	sb	a1,6(a4)
   10d8c:	00b702a3          	sb	a1,5(a4)
   10d90:	00b70223          	sb	a1,4(a4)
   10d94:	00b701a3          	sb	a1,3(a4)
   10d98:	00b70123          	sb	a1,2(a4)
   10d9c:	00b700a3          	sb	a1,1(a4)
   10da0:	00b70023          	sb	a1,0(a4)
   10da4:	00008067          	ret
   10da8:	0ff5f593          	zext.b	a1,a1
   10dac:	00859693          	slli	a3,a1,0x8
   10db0:	00d5e5b3          	or	a1,a1,a3
   10db4:	01059693          	slli	a3,a1,0x10
   10db8:	00d5e5b3          	or	a1,a1,a3
   10dbc:	02059693          	slli	a3,a1,0x20
   10dc0:	00d5e5b3          	or	a1,a1,a3
   10dc4:	f6dff06f          	j	10d30 <memset+0x18>
   10dc8:	00279693          	slli	a3,a5,0x2
   10dcc:	00000297          	auipc	t0,0x0
   10dd0:	005686b3          	add	a3,a3,t0
   10dd4:	00008293          	mv	t0,ra
   10dd8:	f98680e7          	jalr	-104(a3)
   10ddc:	00028093          	mv	ra,t0
   10de0:	ff078793          	addi	a5,a5,-16
   10de4:	40f70733          	sub	a4,a4,a5
   10de8:	00f60633          	add	a2,a2,a5
   10dec:	f6c374e3          	bgeu	t1,a2,10d54 <memset+0x3c>
   10df0:	f3dff06f          	j	10d2c <memset+0x14>

0000000000010df4 <__call_exitprocs>:
   10df4:	fb010113          	addi	sp,sp,-80
   10df8:	03413023          	sd	s4,32(sp)
   10dfc:	03213823          	sd	s2,48(sp)
   10e00:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10e04:	04113423          	sd	ra,72(sp)
   10e08:	06090c63          	beqz	s2,10e80 <__call_exitprocs+0x8c>
   10e0c:	03313423          	sd	s3,40(sp)
   10e10:	01513c23          	sd	s5,24(sp)
   10e14:	01613823          	sd	s6,16(sp)
   10e18:	01713423          	sd	s7,8(sp)
   10e1c:	04813023          	sd	s0,64(sp)
   10e20:	02913c23          	sd	s1,56(sp)
   10e24:	01813023          	sd	s8,0(sp)
   10e28:	00050b13          	mv	s6,a0
   10e2c:	00058b93          	mv	s7,a1
   10e30:	fff00993          	li	s3,-1
   10e34:	00100a93          	li	s5,1
   10e38:	00892483          	lw	s1,8(s2)
   10e3c:	fff4841b          	addiw	s0,s1,-1
   10e40:	02044263          	bltz	s0,10e64 <__call_exitprocs+0x70>
   10e44:	00349493          	slli	s1,s1,0x3
   10e48:	009904b3          	add	s1,s2,s1
   10e4c:	040b8463          	beqz	s7,10e94 <__call_exitprocs+0xa0>
   10e50:	2084b783          	ld	a5,520(s1)
   10e54:	05778063          	beq	a5,s7,10e94 <__call_exitprocs+0xa0>
   10e58:	fff4041b          	addiw	s0,s0,-1
   10e5c:	ff848493          	addi	s1,s1,-8
   10e60:	ff3418e3          	bne	s0,s3,10e50 <__call_exitprocs+0x5c>
   10e64:	04013403          	ld	s0,64(sp)
   10e68:	03813483          	ld	s1,56(sp)
   10e6c:	02813983          	ld	s3,40(sp)
   10e70:	01813a83          	ld	s5,24(sp)
   10e74:	01013b03          	ld	s6,16(sp)
   10e78:	00813b83          	ld	s7,8(sp)
   10e7c:	00013c03          	ld	s8,0(sp)
   10e80:	04813083          	ld	ra,72(sp)
   10e84:	03013903          	ld	s2,48(sp)
   10e88:	02013a03          	ld	s4,32(sp)
   10e8c:	05010113          	addi	sp,sp,80
   10e90:	00008067          	ret
   10e94:	00892783          	lw	a5,8(s2)
   10e98:	0084b683          	ld	a3,8(s1)
   10e9c:	fff7879b          	addiw	a5,a5,-1
   10ea0:	06878a63          	beq	a5,s0,10f14 <__call_exitprocs+0x120>
   10ea4:	0004b423          	sd	zero,8(s1)
   10ea8:	02068663          	beqz	a3,10ed4 <__call_exitprocs+0xe0>
   10eac:	31092783          	lw	a5,784(s2)
   10eb0:	008a973b          	sllw	a4,s5,s0
   10eb4:	00892c03          	lw	s8,8(s2)
   10eb8:	00e7f7b3          	and	a5,a5,a4
   10ebc:	02079463          	bnez	a5,10ee4 <__call_exitprocs+0xf0>
   10ec0:	000680e7          	jalr	a3
   10ec4:	00892703          	lw	a4,8(s2)
   10ec8:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10ecc:	03871e63          	bne	a4,s8,10f08 <__call_exitprocs+0x114>
   10ed0:	03279c63          	bne	a5,s2,10f08 <__call_exitprocs+0x114>
   10ed4:	fff4041b          	addiw	s0,s0,-1
   10ed8:	ff848493          	addi	s1,s1,-8
   10edc:	f73418e3          	bne	s0,s3,10e4c <__call_exitprocs+0x58>
   10ee0:	f85ff06f          	j	10e64 <__call_exitprocs+0x70>
   10ee4:	31492783          	lw	a5,788(s2)
   10ee8:	1084b583          	ld	a1,264(s1)
   10eec:	00f77733          	and	a4,a4,a5
   10ef0:	02071663          	bnez	a4,10f1c <__call_exitprocs+0x128>
   10ef4:	000b0513          	mv	a0,s6
   10ef8:	000680e7          	jalr	a3
   10efc:	00892703          	lw	a4,8(s2)
   10f00:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10f04:	fd8706e3          	beq	a4,s8,10ed0 <__call_exitprocs+0xdc>
   10f08:	f4078ee3          	beqz	a5,10e64 <__call_exitprocs+0x70>
   10f0c:	00078913          	mv	s2,a5
   10f10:	f29ff06f          	j	10e38 <__call_exitprocs+0x44>
   10f14:	00892423          	sw	s0,8(s2)
   10f18:	f91ff06f          	j	10ea8 <__call_exitprocs+0xb4>
   10f1c:	00058513          	mv	a0,a1
   10f20:	000680e7          	jalr	a3
   10f24:	fa1ff06f          	j	10ec4 <__call_exitprocs+0xd0>

0000000000010f28 <atexit>:
   10f28:	00050593          	mv	a1,a0
   10f2c:	00000693          	li	a3,0
   10f30:	00000613          	li	a2,0
   10f34:	00000513          	li	a0,0
   10f38:	1bc0106f          	j	120f4 <__register_exitproc>

0000000000010f3c <_malloc_trim_r>:
   10f3c:	fd010113          	addi	sp,sp,-48
   10f40:	01313423          	sd	s3,8(sp)
   10f44:	000139b7          	lui	s3,0x13
   10f48:	02813023          	sd	s0,32(sp)
   10f4c:	00913c23          	sd	s1,24(sp)
   10f50:	01213823          	sd	s2,16(sp)
   10f54:	01413023          	sd	s4,0(sp)
   10f58:	02113423          	sd	ra,40(sp)
   10f5c:	00058a13          	mv	s4,a1
   10f60:	00050913          	mv	s2,a0
   10f64:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   10f68:	47d000ef          	jal	11be4 <__malloc_lock>
   10f6c:	0109b783          	ld	a5,16(s3)
   10f70:	00001437          	lui	s0,0x1
   10f74:	fdf40413          	addi	s0,s0,-33 # fdf <exit-0xf141>
   10f78:	0087b483          	ld	s1,8(a5)
   10f7c:	000017b7          	lui	a5,0x1
   10f80:	ffc4f493          	andi	s1,s1,-4
   10f84:	00848433          	add	s0,s1,s0
   10f88:	41440433          	sub	s0,s0,s4
   10f8c:	00c45413          	srli	s0,s0,0xc
   10f90:	fff40413          	addi	s0,s0,-1
   10f94:	00c41413          	slli	s0,s0,0xc
   10f98:	00f44e63          	blt	s0,a5,10fb4 <_malloc_trim_r+0x78>
   10f9c:	00000593          	li	a1,0
   10fa0:	00090513          	mv	a0,s2
   10fa4:	098010ef          	jal	1203c <_sbrk_r>
   10fa8:	0109b783          	ld	a5,16(s3)
   10fac:	009787b3          	add	a5,a5,s1
   10fb0:	02f50863          	beq	a0,a5,10fe0 <_malloc_trim_r+0xa4>
   10fb4:	00090513          	mv	a0,s2
   10fb8:	431000ef          	jal	11be8 <__malloc_unlock>
   10fbc:	02813083          	ld	ra,40(sp)
   10fc0:	02013403          	ld	s0,32(sp)
   10fc4:	01813483          	ld	s1,24(sp)
   10fc8:	01013903          	ld	s2,16(sp)
   10fcc:	00813983          	ld	s3,8(sp)
   10fd0:	00013a03          	ld	s4,0(sp)
   10fd4:	00000513          	li	a0,0
   10fd8:	03010113          	addi	sp,sp,48
   10fdc:	00008067          	ret
   10fe0:	408005b3          	neg	a1,s0
   10fe4:	00090513          	mv	a0,s2
   10fe8:	054010ef          	jal	1203c <_sbrk_r>
   10fec:	fff00793          	li	a5,-1
   10ff0:	04f50863          	beq	a0,a5,11040 <_malloc_trim_r+0x104>
   10ff4:	42018793          	addi	a5,gp,1056 # 13c38 <__malloc_current_mallinfo>
   10ff8:	0109b683          	ld	a3,16(s3)
   10ffc:	0007a703          	lw	a4,0(a5) # 1000 <exit-0xf120>
   11000:	408484b3          	sub	s1,s1,s0
   11004:	0014e493          	ori	s1,s1,1
   11008:	00090513          	mv	a0,s2
   1100c:	4087073b          	subw	a4,a4,s0
   11010:	0096b423          	sd	s1,8(a3)
   11014:	00e7a023          	sw	a4,0(a5)
   11018:	3d1000ef          	jal	11be8 <__malloc_unlock>
   1101c:	02813083          	ld	ra,40(sp)
   11020:	02013403          	ld	s0,32(sp)
   11024:	01813483          	ld	s1,24(sp)
   11028:	01013903          	ld	s2,16(sp)
   1102c:	00813983          	ld	s3,8(sp)
   11030:	00013a03          	ld	s4,0(sp)
   11034:	00100513          	li	a0,1
   11038:	03010113          	addi	sp,sp,48
   1103c:	00008067          	ret
   11040:	00000593          	li	a1,0
   11044:	00090513          	mv	a0,s2
   11048:	7f5000ef          	jal	1203c <_sbrk_r>
   1104c:	0109b703          	ld	a4,16(s3)
   11050:	01f00693          	li	a3,31
   11054:	40e507b3          	sub	a5,a0,a4
   11058:	f4f6dee3          	bge	a3,a5,10fb4 <_malloc_trim_r+0x78>
   1105c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11060:	0017e793          	ori	a5,a5,1
   11064:	40c50533          	sub	a0,a0,a2
   11068:	00f73423          	sd	a5,8(a4)
   1106c:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11070:	f45ff06f          	j	10fb4 <_malloc_trim_r+0x78>

0000000000011074 <_free_r>:
   11074:	12058c63          	beqz	a1,111ac <_free_r+0x138>
   11078:	fe010113          	addi	sp,sp,-32
   1107c:	00813823          	sd	s0,16(sp)
   11080:	00913423          	sd	s1,8(sp)
   11084:	00058413          	mv	s0,a1
   11088:	00050493          	mv	s1,a0
   1108c:	00113c23          	sd	ra,24(sp)
   11090:	355000ef          	jal	11be4 <__malloc_lock>
   11094:	ff843503          	ld	a0,-8(s0)
   11098:	ff040713          	addi	a4,s0,-16
   1109c:	000135b7          	lui	a1,0x13
   110a0:	ffe57793          	andi	a5,a0,-2
   110a4:	00f70633          	add	a2,a4,a5
   110a8:	18858593          	addi	a1,a1,392 # 13188 <__malloc_av_>
   110ac:	00863683          	ld	a3,8(a2)
   110b0:	0105b803          	ld	a6,16(a1)
   110b4:	00157893          	andi	a7,a0,1
   110b8:	ffc6f693          	andi	a3,a3,-4
   110bc:	1ac80463          	beq	a6,a2,11264 <_free_r+0x1f0>
   110c0:	00d63423          	sd	a3,8(a2)
   110c4:	00d60833          	add	a6,a2,a3
   110c8:	00883803          	ld	a6,8(a6)
   110cc:	00187813          	andi	a6,a6,1
   110d0:	0a089263          	bnez	a7,11174 <_free_r+0x100>
   110d4:	ff043303          	ld	t1,-16(s0)
   110d8:	00013537          	lui	a0,0x13
   110dc:	19850513          	addi	a0,a0,408 # 13198 <__malloc_av_+0x10>
   110e0:	40670733          	sub	a4,a4,t1
   110e4:	01073883          	ld	a7,16(a4)
   110e8:	006787b3          	add	a5,a5,t1
   110ec:	14a88663          	beq	a7,a0,11238 <_free_r+0x1c4>
   110f0:	01873303          	ld	t1,24(a4)
   110f4:	0068bc23          	sd	t1,24(a7)
   110f8:	01133823          	sd	a7,16(t1) # 10220 <main+0x4>
   110fc:	1a080863          	beqz	a6,112ac <_free_r+0x238>
   11100:	0017e693          	ori	a3,a5,1
   11104:	00d73423          	sd	a3,8(a4)
   11108:	00f63023          	sd	a5,0(a2)
   1110c:	1ff00693          	li	a3,511
   11110:	0af6ea63          	bltu	a3,a5,111c4 <_free_r+0x150>
   11114:	0037d793          	srli	a5,a5,0x3
   11118:	0007879b          	sext.w	a5,a5
   1111c:	0017869b          	addiw	a3,a5,1
   11120:	0016969b          	slliw	a3,a3,0x1
   11124:	00369693          	slli	a3,a3,0x3
   11128:	0085b803          	ld	a6,8(a1)
   1112c:	00d586b3          	add	a3,a1,a3
   11130:	0006b503          	ld	a0,0(a3)
   11134:	00100613          	li	a2,1
   11138:	4027d79b          	sraiw	a5,a5,0x2
   1113c:	00f617b3          	sll	a5,a2,a5
   11140:	0107e7b3          	or	a5,a5,a6
   11144:	ff068613          	addi	a2,a3,-16
   11148:	00a73823          	sd	a0,16(a4)
   1114c:	00c73c23          	sd	a2,24(a4)
   11150:	00f5b423          	sd	a5,8(a1)
   11154:	00e6b023          	sd	a4,0(a3)
   11158:	00e53c23          	sd	a4,24(a0)
   1115c:	01013403          	ld	s0,16(sp)
   11160:	01813083          	ld	ra,24(sp)
   11164:	00048513          	mv	a0,s1
   11168:	00813483          	ld	s1,8(sp)
   1116c:	02010113          	addi	sp,sp,32
   11170:	2790006f          	j	11be8 <__malloc_unlock>
   11174:	02081e63          	bnez	a6,111b0 <_free_r+0x13c>
   11178:	00013537          	lui	a0,0x13
   1117c:	00d787b3          	add	a5,a5,a3
   11180:	19850513          	addi	a0,a0,408 # 13198 <__malloc_av_+0x10>
   11184:	01063683          	ld	a3,16(a2)
   11188:	0017e893          	ori	a7,a5,1
   1118c:	00f70833          	add	a6,a4,a5
   11190:	16a68863          	beq	a3,a0,11300 <_free_r+0x28c>
   11194:	01863603          	ld	a2,24(a2)
   11198:	00c6bc23          	sd	a2,24(a3)
   1119c:	00d63823          	sd	a3,16(a2)
   111a0:	01173423          	sd	a7,8(a4)
   111a4:	00f83023          	sd	a5,0(a6)
   111a8:	f65ff06f          	j	1110c <_free_r+0x98>
   111ac:	00008067          	ret
   111b0:	00156513          	ori	a0,a0,1
   111b4:	fea43c23          	sd	a0,-8(s0)
   111b8:	00f63023          	sd	a5,0(a2)
   111bc:	1ff00693          	li	a3,511
   111c0:	f4f6fae3          	bgeu	a3,a5,11114 <_free_r+0xa0>
   111c4:	0097d693          	srli	a3,a5,0x9
   111c8:	00400613          	li	a2,4
   111cc:	0ed66463          	bltu	a2,a3,112b4 <_free_r+0x240>
   111d0:	0067d693          	srli	a3,a5,0x6
   111d4:	0396851b          	addiw	a0,a3,57
   111d8:	0015151b          	slliw	a0,a0,0x1
   111dc:	00351513          	slli	a0,a0,0x3
   111e0:	0386861b          	addiw	a2,a3,56
   111e4:	00a58533          	add	a0,a1,a0
   111e8:	00053683          	ld	a3,0(a0)
   111ec:	ff050513          	addi	a0,a0,-16
   111f0:	00d51863          	bne	a0,a3,11200 <_free_r+0x18c>
   111f4:	1280006f          	j	1131c <_free_r+0x2a8>
   111f8:	0106b683          	ld	a3,16(a3)
   111fc:	00d50863          	beq	a0,a3,1120c <_free_r+0x198>
   11200:	0086b603          	ld	a2,8(a3)
   11204:	ffc67613          	andi	a2,a2,-4
   11208:	fec7e8e3          	bltu	a5,a2,111f8 <_free_r+0x184>
   1120c:	0186b503          	ld	a0,24(a3)
   11210:	00a73c23          	sd	a0,24(a4)
   11214:	00d73823          	sd	a3,16(a4)
   11218:	01013403          	ld	s0,16(sp)
   1121c:	00e53823          	sd	a4,16(a0)
   11220:	01813083          	ld	ra,24(sp)
   11224:	00048513          	mv	a0,s1
   11228:	00813483          	ld	s1,8(sp)
   1122c:	00e6bc23          	sd	a4,24(a3)
   11230:	02010113          	addi	sp,sp,32
   11234:	1b50006f          	j	11be8 <__malloc_unlock>
   11238:	0a081263          	bnez	a6,112dc <_free_r+0x268>
   1123c:	01863583          	ld	a1,24(a2)
   11240:	01063603          	ld	a2,16(a2)
   11244:	00f686b3          	add	a3,a3,a5
   11248:	0016e793          	ori	a5,a3,1
   1124c:	00b63c23          	sd	a1,24(a2)
   11250:	00c5b823          	sd	a2,16(a1)
   11254:	00f73423          	sd	a5,8(a4)
   11258:	00d70733          	add	a4,a4,a3
   1125c:	00d73023          	sd	a3,0(a4)
   11260:	efdff06f          	j	1115c <_free_r+0xe8>
   11264:	00d786b3          	add	a3,a5,a3
   11268:	02089063          	bnez	a7,11288 <_free_r+0x214>
   1126c:	ff043503          	ld	a0,-16(s0)
   11270:	40a70733          	sub	a4,a4,a0
   11274:	01873783          	ld	a5,24(a4)
   11278:	01073603          	ld	a2,16(a4)
   1127c:	00a686b3          	add	a3,a3,a0
   11280:	00f63c23          	sd	a5,24(a2)
   11284:	00c7b823          	sd	a2,16(a5)
   11288:	0016e613          	ori	a2,a3,1
   1128c:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11290:	00c73423          	sd	a2,8(a4)
   11294:	00e5b823          	sd	a4,16(a1)
   11298:	ecf6e2e3          	bltu	a3,a5,1115c <_free_r+0xe8>
   1129c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   112a0:	00048513          	mv	a0,s1
   112a4:	c99ff0ef          	jal	10f3c <_malloc_trim_r>
   112a8:	eb5ff06f          	j	1115c <_free_r+0xe8>
   112ac:	00d787b3          	add	a5,a5,a3
   112b0:	ed5ff06f          	j	11184 <_free_r+0x110>
   112b4:	01400613          	li	a2,20
   112b8:	02d67a63          	bgeu	a2,a3,112ec <_free_r+0x278>
   112bc:	05400613          	li	a2,84
   112c0:	06d66c63          	bltu	a2,a3,11338 <_free_r+0x2c4>
   112c4:	00c7d693          	srli	a3,a5,0xc
   112c8:	06f6851b          	addiw	a0,a3,111
   112cc:	0015151b          	slliw	a0,a0,0x1
   112d0:	00351513          	slli	a0,a0,0x3
   112d4:	06e6861b          	addiw	a2,a3,110
   112d8:	f0dff06f          	j	111e4 <_free_r+0x170>
   112dc:	0017e693          	ori	a3,a5,1
   112e0:	00d73423          	sd	a3,8(a4)
   112e4:	00f63023          	sd	a5,0(a2)
   112e8:	e75ff06f          	j	1115c <_free_r+0xe8>
   112ec:	05c6851b          	addiw	a0,a3,92
   112f0:	0015151b          	slliw	a0,a0,0x1
   112f4:	00351513          	slli	a0,a0,0x3
   112f8:	05b6861b          	addiw	a2,a3,91
   112fc:	ee9ff06f          	j	111e4 <_free_r+0x170>
   11300:	02e5b423          	sd	a4,40(a1)
   11304:	02e5b023          	sd	a4,32(a1)
   11308:	00a73c23          	sd	a0,24(a4)
   1130c:	00a73823          	sd	a0,16(a4)
   11310:	01173423          	sd	a7,8(a4)
   11314:	00f83023          	sd	a5,0(a6)
   11318:	e45ff06f          	j	1115c <_free_r+0xe8>
   1131c:	0085b803          	ld	a6,8(a1)
   11320:	4026561b          	sraiw	a2,a2,0x2
   11324:	00100793          	li	a5,1
   11328:	00c797b3          	sll	a5,a5,a2
   1132c:	0107e7b3          	or	a5,a5,a6
   11330:	00f5b423          	sd	a5,8(a1)
   11334:	eddff06f          	j	11210 <_free_r+0x19c>
   11338:	15400613          	li	a2,340
   1133c:	00d66e63          	bltu	a2,a3,11358 <_free_r+0x2e4>
   11340:	00f7d693          	srli	a3,a5,0xf
   11344:	0786851b          	addiw	a0,a3,120
   11348:	0015151b          	slliw	a0,a0,0x1
   1134c:	00351513          	slli	a0,a0,0x3
   11350:	0776861b          	addiw	a2,a3,119
   11354:	e91ff06f          	j	111e4 <_free_r+0x170>
   11358:	55400613          	li	a2,1364
   1135c:	00d66e63          	bltu	a2,a3,11378 <_free_r+0x304>
   11360:	0127d693          	srli	a3,a5,0x12
   11364:	07d6851b          	addiw	a0,a3,125
   11368:	0015151b          	slliw	a0,a0,0x1
   1136c:	00351513          	slli	a0,a0,0x3
   11370:	07c6861b          	addiw	a2,a3,124
   11374:	e71ff06f          	j	111e4 <_free_r+0x170>
   11378:	7f000513          	li	a0,2032
   1137c:	07e00613          	li	a2,126
   11380:	e65ff06f          	j	111e4 <_free_r+0x170>

0000000000011384 <_malloc_r>:
   11384:	fa010113          	addi	sp,sp,-96
   11388:	04913423          	sd	s1,72(sp)
   1138c:	05213023          	sd	s2,64(sp)
   11390:	04113c23          	sd	ra,88(sp)
   11394:	04813823          	sd	s0,80(sp)
   11398:	03313c23          	sd	s3,56(sp)
   1139c:	01758493          	addi	s1,a1,23
   113a0:	02e00793          	li	a5,46
   113a4:	00050913          	mv	s2,a0
   113a8:	0897e063          	bltu	a5,s1,11428 <_malloc_r+0xa4>
   113ac:	02000493          	li	s1,32
   113b0:	22b4e663          	bltu	s1,a1,115dc <_malloc_r+0x258>
   113b4:	031000ef          	jal	11be4 <__malloc_lock>
   113b8:	05000793          	li	a5,80
   113bc:	00400593          	li	a1,4
   113c0:	000139b7          	lui	s3,0x13
   113c4:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   113c8:	00f987b3          	add	a5,s3,a5
   113cc:	0087b403          	ld	s0,8(a5)
   113d0:	ff078713          	addi	a4,a5,-16
   113d4:	46e40a63          	beq	s0,a4,11848 <_malloc_r+0x4c4>
   113d8:	00843783          	ld	a5,8(s0)
   113dc:	01843683          	ld	a3,24(s0)
   113e0:	01043603          	ld	a2,16(s0)
   113e4:	ffc7f793          	andi	a5,a5,-4
   113e8:	00f407b3          	add	a5,s0,a5
   113ec:	0087b703          	ld	a4,8(a5)
   113f0:	00d63c23          	sd	a3,24(a2)
   113f4:	00c6b823          	sd	a2,16(a3)
   113f8:	00176713          	ori	a4,a4,1
   113fc:	00090513          	mv	a0,s2
   11400:	00e7b423          	sd	a4,8(a5)
   11404:	7e4000ef          	jal	11be8 <__malloc_unlock>
   11408:	05813083          	ld	ra,88(sp)
   1140c:	01040513          	addi	a0,s0,16
   11410:	05013403          	ld	s0,80(sp)
   11414:	04813483          	ld	s1,72(sp)
   11418:	04013903          	ld	s2,64(sp)
   1141c:	03813983          	ld	s3,56(sp)
   11420:	06010113          	addi	sp,sp,96
   11424:	00008067          	ret
   11428:	800007b7          	lui	a5,0x80000
   1142c:	ff04f493          	andi	s1,s1,-16
   11430:	fff7c793          	not	a5,a5
   11434:	1a97e463          	bltu	a5,s1,115dc <_malloc_r+0x258>
   11438:	1ab4e263          	bltu	s1,a1,115dc <_malloc_r+0x258>
   1143c:	7a8000ef          	jal	11be4 <__malloc_lock>
   11440:	1f700793          	li	a5,503
   11444:	5497fe63          	bgeu	a5,s1,119a0 <_malloc_r+0x61c>
   11448:	0094d793          	srli	a5,s1,0x9
   1144c:	1a078c63          	beqz	a5,11604 <_malloc_r+0x280>
   11450:	00400713          	li	a4,4
   11454:	46f76463          	bltu	a4,a5,118bc <_malloc_r+0x538>
   11458:	0064d793          	srli	a5,s1,0x6
   1145c:	0397859b          	addiw	a1,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffec0c1>
   11460:	0015961b          	slliw	a2,a1,0x1
   11464:	0387881b          	addiw	a6,a5,56
   11468:	00361613          	slli	a2,a2,0x3
   1146c:	000139b7          	lui	s3,0x13
   11470:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   11474:	00c98633          	add	a2,s3,a2
   11478:	00863403          	ld	s0,8(a2)
   1147c:	ff060613          	addi	a2,a2,-16
   11480:	02860863          	beq	a2,s0,114b0 <_malloc_r+0x12c>
   11484:	01f00513          	li	a0,31
   11488:	0140006f          	j	1149c <_malloc_r+0x118>
   1148c:	01843683          	ld	a3,24(s0)
   11490:	36075a63          	bgez	a4,11804 <_malloc_r+0x480>
   11494:	00d60e63          	beq	a2,a3,114b0 <_malloc_r+0x12c>
   11498:	00068413          	mv	s0,a3
   1149c:	00843783          	ld	a5,8(s0)
   114a0:	ffc7f793          	andi	a5,a5,-4
   114a4:	40978733          	sub	a4,a5,s1
   114a8:	fee552e3          	bge	a0,a4,1148c <_malloc_r+0x108>
   114ac:	00080593          	mv	a1,a6
   114b0:	0209b403          	ld	s0,32(s3)
   114b4:	00013837          	lui	a6,0x13
   114b8:	19880813          	addi	a6,a6,408 # 13198 <__malloc_av_+0x10>
   114bc:	35040063          	beq	s0,a6,117fc <_malloc_r+0x478>
   114c0:	00843783          	ld	a5,8(s0)
   114c4:	01f00693          	li	a3,31
   114c8:	ffc7f793          	andi	a5,a5,-4
   114cc:	40978733          	sub	a4,a5,s1
   114d0:	48e6ca63          	blt	a3,a4,11964 <_malloc_r+0x5e0>
   114d4:	0309b423          	sd	a6,40(s3)
   114d8:	0309b023          	sd	a6,32(s3)
   114dc:	46075463          	bgez	a4,11944 <_malloc_r+0x5c0>
   114e0:	1ff00713          	li	a4,511
   114e4:	0089b503          	ld	a0,8(s3)
   114e8:	36f76863          	bltu	a4,a5,11858 <_malloc_r+0x4d4>
   114ec:	0037d793          	srli	a5,a5,0x3
   114f0:	0007879b          	sext.w	a5,a5
   114f4:	0017871b          	addiw	a4,a5,1
   114f8:	0017171b          	slliw	a4,a4,0x1
   114fc:	00371713          	slli	a4,a4,0x3
   11500:	00e98733          	add	a4,s3,a4
   11504:	00073603          	ld	a2,0(a4)
   11508:	4027d79b          	sraiw	a5,a5,0x2
   1150c:	00100693          	li	a3,1
   11510:	00f697b3          	sll	a5,a3,a5
   11514:	00f56533          	or	a0,a0,a5
   11518:	ff070793          	addi	a5,a4,-16
   1151c:	00c43823          	sd	a2,16(s0)
   11520:	00f43c23          	sd	a5,24(s0)
   11524:	00a9b423          	sd	a0,8(s3)
   11528:	00873023          	sd	s0,0(a4)
   1152c:	00863c23          	sd	s0,24(a2)
   11530:	4025d79b          	sraiw	a5,a1,0x2
   11534:	00100613          	li	a2,1
   11538:	00f61633          	sll	a2,a2,a5
   1153c:	0cc56c63          	bltu	a0,a2,11614 <_malloc_r+0x290>
   11540:	00a677b3          	and	a5,a2,a0
   11544:	02079463          	bnez	a5,1156c <_malloc_r+0x1e8>
   11548:	00161613          	slli	a2,a2,0x1
   1154c:	ffc5f593          	andi	a1,a1,-4
   11550:	00a677b3          	and	a5,a2,a0
   11554:	0045859b          	addiw	a1,a1,4
   11558:	00079a63          	bnez	a5,1156c <_malloc_r+0x1e8>
   1155c:	00161613          	slli	a2,a2,0x1
   11560:	00a677b3          	and	a5,a2,a0
   11564:	0045859b          	addiw	a1,a1,4
   11568:	fe078ae3          	beqz	a5,1155c <_malloc_r+0x1d8>
   1156c:	01f00893          	li	a7,31
   11570:	0015831b          	addiw	t1,a1,1
   11574:	0013131b          	slliw	t1,t1,0x1
   11578:	00331313          	slli	t1,t1,0x3
   1157c:	ff030313          	addi	t1,t1,-16
   11580:	00698333          	add	t1,s3,t1
   11584:	00030513          	mv	a0,t1
   11588:	01853783          	ld	a5,24(a0)
   1158c:	00058e13          	mv	t3,a1
   11590:	34f50a63          	beq	a0,a5,118e4 <_malloc_r+0x560>
   11594:	0087b703          	ld	a4,8(a5)
   11598:	00078413          	mv	s0,a5
   1159c:	0187b783          	ld	a5,24(a5)
   115a0:	ffc77713          	andi	a4,a4,-4
   115a4:	409706b3          	sub	a3,a4,s1
   115a8:	34d8ca63          	blt	a7,a3,118fc <_malloc_r+0x578>
   115ac:	fe06c2e3          	bltz	a3,11590 <_malloc_r+0x20c>
   115b0:	00e40733          	add	a4,s0,a4
   115b4:	00873683          	ld	a3,8(a4)
   115b8:	01043603          	ld	a2,16(s0)
   115bc:	00090513          	mv	a0,s2
   115c0:	0016e693          	ori	a3,a3,1
   115c4:	00d73423          	sd	a3,8(a4)
   115c8:	00f63c23          	sd	a5,24(a2)
   115cc:	00c7b823          	sd	a2,16(a5)
   115d0:	618000ef          	jal	11be8 <__malloc_unlock>
   115d4:	01040513          	addi	a0,s0,16
   115d8:	0100006f          	j	115e8 <_malloc_r+0x264>
   115dc:	00c00793          	li	a5,12
   115e0:	00f92023          	sw	a5,0(s2)
   115e4:	00000513          	li	a0,0
   115e8:	05813083          	ld	ra,88(sp)
   115ec:	05013403          	ld	s0,80(sp)
   115f0:	04813483          	ld	s1,72(sp)
   115f4:	04013903          	ld	s2,64(sp)
   115f8:	03813983          	ld	s3,56(sp)
   115fc:	06010113          	addi	sp,sp,96
   11600:	00008067          	ret
   11604:	40000613          	li	a2,1024
   11608:	04000593          	li	a1,64
   1160c:	03f00813          	li	a6,63
   11610:	e5dff06f          	j	1146c <_malloc_r+0xe8>
   11614:	0109b403          	ld	s0,16(s3)
   11618:	03513423          	sd	s5,40(sp)
   1161c:	00843783          	ld	a5,8(s0)
   11620:	ffc7fa93          	andi	s5,a5,-4
   11624:	009ae863          	bltu	s5,s1,11634 <_malloc_r+0x2b0>
   11628:	409a8733          	sub	a4,s5,s1
   1162c:	01f00793          	li	a5,31
   11630:	18e7c463          	blt	a5,a4,117b8 <_malloc_r+0x434>
   11634:	01913423          	sd	s9,8(sp)
   11638:	03413823          	sd	s4,48(sp)
   1163c:	1901b703          	ld	a4,400(gp) # 139a8 <__malloc_sbrk_base>
   11640:	1c81ba03          	ld	s4,456(gp) # 139e0 <__malloc_top_pad>
   11644:	01713c23          	sd	s7,24(sp)
   11648:	03613023          	sd	s6,32(sp)
   1164c:	fff00793          	li	a5,-1
   11650:	01448a33          	add	s4,s1,s4
   11654:	01540bb3          	add	s7,s0,s5
   11658:	3ef70c63          	beq	a4,a5,11a50 <_malloc_r+0x6cc>
   1165c:	000017b7          	lui	a5,0x1
   11660:	01f78793          	addi	a5,a5,31 # 101f <exit-0xf101>
   11664:	00fa0a33          	add	s4,s4,a5
   11668:	fffff7b7          	lui	a5,0xfffff
   1166c:	00fa7a33          	and	s4,s4,a5
   11670:	000a0593          	mv	a1,s4
   11674:	00090513          	mv	a0,s2
   11678:	1c5000ef          	jal	1203c <_sbrk_r>
   1167c:	fff00793          	li	a5,-1
   11680:	00050b13          	mv	s6,a0
   11684:	48f50c63          	beq	a0,a5,11b1c <_malloc_r+0x798>
   11688:	01813823          	sd	s8,16(sp)
   1168c:	0f756c63          	bltu	a0,s7,11784 <_malloc_r+0x400>
   11690:	42018c13          	addi	s8,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11694:	000c2703          	lw	a4,0(s8)
   11698:	0147073b          	addw	a4,a4,s4
   1169c:	00ec2023          	sw	a4,0(s8)
   116a0:	00070693          	mv	a3,a4
   116a4:	48ab8263          	beq	s7,a0,11b28 <_malloc_r+0x7a4>
   116a8:	1901b703          	ld	a4,400(gp) # 139a8 <__malloc_sbrk_base>
   116ac:	fff00793          	li	a5,-1
   116b0:	48f70a63          	beq	a4,a5,11b44 <_malloc_r+0x7c0>
   116b4:	417b07b3          	sub	a5,s6,s7
   116b8:	00d787bb          	addw	a5,a5,a3
   116bc:	00fc2023          	sw	a5,0(s8)
   116c0:	00fb7c93          	andi	s9,s6,15
   116c4:	3a0c8663          	beqz	s9,11a70 <_malloc_r+0x6ec>
   116c8:	419b0b33          	sub	s6,s6,s9
   116cc:	000016b7          	lui	a3,0x1
   116d0:	010b0b13          	addi	s6,s6,16
   116d4:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   116d8:	014b0a33          	add	s4,s6,s4
   116dc:	419686b3          	sub	a3,a3,s9
   116e0:	414686b3          	sub	a3,a3,s4
   116e4:	03469693          	slli	a3,a3,0x34
   116e8:	0346db93          	srli	s7,a3,0x34
   116ec:	000b8593          	mv	a1,s7
   116f0:	00090513          	mv	a0,s2
   116f4:	149000ef          	jal	1203c <_sbrk_r>
   116f8:	fff00793          	li	a5,-1
   116fc:	48f50863          	beq	a0,a5,11b8c <_malloc_r+0x808>
   11700:	41650533          	sub	a0,a0,s6
   11704:	01750a33          	add	s4,a0,s7
   11708:	000b869b          	sext.w	a3,s7
   1170c:	000c2703          	lw	a4,0(s8)
   11710:	0169b823          	sd	s6,16(s3)
   11714:	001a6793          	ori	a5,s4,1
   11718:	00d7073b          	addw	a4,a4,a3
   1171c:	00fb3423          	sd	a5,8(s6)
   11720:	00ec2023          	sw	a4,0(s8)
   11724:	03340e63          	beq	s0,s3,11760 <_malloc_r+0x3dc>
   11728:	01f00613          	li	a2,31
   1172c:	37567863          	bgeu	a2,s5,11a9c <_malloc_r+0x718>
   11730:	00843683          	ld	a3,8(s0)
   11734:	fe8a8793          	addi	a5,s5,-24
   11738:	ff07f793          	andi	a5,a5,-16
   1173c:	0016f693          	andi	a3,a3,1
   11740:	00f6e6b3          	or	a3,a3,a5
   11744:	00d43423          	sd	a3,8(s0)
   11748:	00900593          	li	a1,9
   1174c:	00f406b3          	add	a3,s0,a5
   11750:	00b6b423          	sd	a1,8(a3)
   11754:	00b6b823          	sd	a1,16(a3)
   11758:	2ef66063          	bltu	a2,a5,11a38 <_malloc_r+0x6b4>
   1175c:	008b3783          	ld	a5,8(s6)
   11760:	1c01b603          	ld	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11764:	00e67463          	bgeu	a2,a4,1176c <_malloc_r+0x3e8>
   11768:	1ce1b023          	sd	a4,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1176c:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11770:	00e67463          	bgeu	a2,a4,11778 <_malloc_r+0x3f4>
   11774:	1ae1bc23          	sd	a4,440(gp) # 139d0 <__malloc_max_total_mem>
   11778:	01013c03          	ld	s8,16(sp)
   1177c:	000b0413          	mv	s0,s6
   11780:	0140006f          	j	11794 <_malloc_r+0x410>
   11784:	39340263          	beq	s0,s3,11b08 <_malloc_r+0x784>
   11788:	0109b403          	ld	s0,16(s3)
   1178c:	01013c03          	ld	s8,16(sp)
   11790:	00843783          	ld	a5,8(s0)
   11794:	ffc7f793          	andi	a5,a5,-4
   11798:	40978733          	sub	a4,a5,s1
   1179c:	3097e663          	bltu	a5,s1,11aa8 <_malloc_r+0x724>
   117a0:	01f00793          	li	a5,31
   117a4:	30e7d263          	bge	a5,a4,11aa8 <_malloc_r+0x724>
   117a8:	03013a03          	ld	s4,48(sp)
   117ac:	02013b03          	ld	s6,32(sp)
   117b0:	01813b83          	ld	s7,24(sp)
   117b4:	00813c83          	ld	s9,8(sp)
   117b8:	0014e793          	ori	a5,s1,1
   117bc:	00f43423          	sd	a5,8(s0)
   117c0:	009404b3          	add	s1,s0,s1
   117c4:	0099b823          	sd	s1,16(s3)
   117c8:	00176713          	ori	a4,a4,1
   117cc:	00090513          	mv	a0,s2
   117d0:	00e4b423          	sd	a4,8(s1)
   117d4:	414000ef          	jal	11be8 <__malloc_unlock>
   117d8:	05813083          	ld	ra,88(sp)
   117dc:	01040513          	addi	a0,s0,16
   117e0:	05013403          	ld	s0,80(sp)
   117e4:	02813a83          	ld	s5,40(sp)
   117e8:	04813483          	ld	s1,72(sp)
   117ec:	04013903          	ld	s2,64(sp)
   117f0:	03813983          	ld	s3,56(sp)
   117f4:	06010113          	addi	sp,sp,96
   117f8:	00008067          	ret
   117fc:	0089b503          	ld	a0,8(s3)
   11800:	d31ff06f          	j	11530 <_malloc_r+0x1ac>
   11804:	01043603          	ld	a2,16(s0)
   11808:	00f407b3          	add	a5,s0,a5
   1180c:	0087b703          	ld	a4,8(a5) # fffffffffffff008 <__BSS_END__+0xfffffffffffeb090>
   11810:	00d63c23          	sd	a3,24(a2)
   11814:	00c6b823          	sd	a2,16(a3)
   11818:	00176713          	ori	a4,a4,1
   1181c:	00090513          	mv	a0,s2
   11820:	00e7b423          	sd	a4,8(a5)
   11824:	3c4000ef          	jal	11be8 <__malloc_unlock>
   11828:	05813083          	ld	ra,88(sp)
   1182c:	01040513          	addi	a0,s0,16
   11830:	05013403          	ld	s0,80(sp)
   11834:	04813483          	ld	s1,72(sp)
   11838:	04013903          	ld	s2,64(sp)
   1183c:	03813983          	ld	s3,56(sp)
   11840:	06010113          	addi	sp,sp,96
   11844:	00008067          	ret
   11848:	0187b403          	ld	s0,24(a5)
   1184c:	0025859b          	addiw	a1,a1,2
   11850:	c68780e3          	beq	a5,s0,114b0 <_malloc_r+0x12c>
   11854:	b85ff06f          	j	113d8 <_malloc_r+0x54>
   11858:	0097d713          	srli	a4,a5,0x9
   1185c:	00400693          	li	a3,4
   11860:	14e6fc63          	bgeu	a3,a4,119b8 <_malloc_r+0x634>
   11864:	01400693          	li	a3,20
   11868:	26e6e063          	bltu	a3,a4,11ac8 <_malloc_r+0x744>
   1186c:	05c7061b          	addiw	a2,a4,92
   11870:	0016161b          	slliw	a2,a2,0x1
   11874:	00361613          	slli	a2,a2,0x3
   11878:	05b7069b          	addiw	a3,a4,91
   1187c:	00c98633          	add	a2,s3,a2
   11880:	00063703          	ld	a4,0(a2)
   11884:	ff060613          	addi	a2,a2,-16
   11888:	00e61863          	bne	a2,a4,11898 <_malloc_r+0x514>
   1188c:	1cc0006f          	j	11a58 <_malloc_r+0x6d4>
   11890:	01073703          	ld	a4,16(a4)
   11894:	00e60863          	beq	a2,a4,118a4 <_malloc_r+0x520>
   11898:	00873683          	ld	a3,8(a4)
   1189c:	ffc6f693          	andi	a3,a3,-4
   118a0:	fed7e8e3          	bltu	a5,a3,11890 <_malloc_r+0x50c>
   118a4:	01873603          	ld	a2,24(a4)
   118a8:	00c43c23          	sd	a2,24(s0)
   118ac:	00e43823          	sd	a4,16(s0)
   118b0:	00863823          	sd	s0,16(a2)
   118b4:	00873c23          	sd	s0,24(a4)
   118b8:	c79ff06f          	j	11530 <_malloc_r+0x1ac>
   118bc:	01400713          	li	a4,20
   118c0:	10f77863          	bgeu	a4,a5,119d0 <_malloc_r+0x64c>
   118c4:	05400713          	li	a4,84
   118c8:	22f76063          	bltu	a4,a5,11ae8 <_malloc_r+0x764>
   118cc:	00c4d793          	srli	a5,s1,0xc
   118d0:	06f7859b          	addiw	a1,a5,111
   118d4:	0015961b          	slliw	a2,a1,0x1
   118d8:	06e7881b          	addiw	a6,a5,110
   118dc:	00361613          	slli	a2,a2,0x3
   118e0:	b8dff06f          	j	1146c <_malloc_r+0xe8>
   118e4:	001e0e1b          	addiw	t3,t3,1
   118e8:	003e7793          	andi	a5,t3,3
   118ec:	01050513          	addi	a0,a0,16
   118f0:	10078063          	beqz	a5,119f0 <_malloc_r+0x66c>
   118f4:	01853783          	ld	a5,24(a0)
   118f8:	c99ff06f          	j	11590 <_malloc_r+0x20c>
   118fc:	01043603          	ld	a2,16(s0)
   11900:	0014e593          	ori	a1,s1,1
   11904:	00b43423          	sd	a1,8(s0)
   11908:	00f63c23          	sd	a5,24(a2)
   1190c:	00c7b823          	sd	a2,16(a5)
   11910:	009404b3          	add	s1,s0,s1
   11914:	0299b423          	sd	s1,40(s3)
   11918:	0299b023          	sd	s1,32(s3)
   1191c:	0016e793          	ori	a5,a3,1
   11920:	00e40733          	add	a4,s0,a4
   11924:	0104bc23          	sd	a6,24(s1)
   11928:	0104b823          	sd	a6,16(s1)
   1192c:	00f4b423          	sd	a5,8(s1)
   11930:	00090513          	mv	a0,s2
   11934:	00d73023          	sd	a3,0(a4)
   11938:	2b0000ef          	jal	11be8 <__malloc_unlock>
   1193c:	01040513          	addi	a0,s0,16
   11940:	ca9ff06f          	j	115e8 <_malloc_r+0x264>
   11944:	00f407b3          	add	a5,s0,a5
   11948:	0087b703          	ld	a4,8(a5)
   1194c:	00090513          	mv	a0,s2
   11950:	00176713          	ori	a4,a4,1
   11954:	00e7b423          	sd	a4,8(a5)
   11958:	290000ef          	jal	11be8 <__malloc_unlock>
   1195c:	01040513          	addi	a0,s0,16
   11960:	c89ff06f          	j	115e8 <_malloc_r+0x264>
   11964:	0014e693          	ori	a3,s1,1
   11968:	00d43423          	sd	a3,8(s0)
   1196c:	009404b3          	add	s1,s0,s1
   11970:	0299b423          	sd	s1,40(s3)
   11974:	0299b023          	sd	s1,32(s3)
   11978:	00176693          	ori	a3,a4,1
   1197c:	00f407b3          	add	a5,s0,a5
   11980:	0104bc23          	sd	a6,24(s1)
   11984:	0104b823          	sd	a6,16(s1)
   11988:	00d4b423          	sd	a3,8(s1)
   1198c:	00090513          	mv	a0,s2
   11990:	00e7b023          	sd	a4,0(a5)
   11994:	254000ef          	jal	11be8 <__malloc_unlock>
   11998:	01040513          	addi	a0,s0,16
   1199c:	c4dff06f          	j	115e8 <_malloc_r+0x264>
   119a0:	0034d593          	srli	a1,s1,0x3
   119a4:	0015879b          	addiw	a5,a1,1
   119a8:	0017979b          	slliw	a5,a5,0x1
   119ac:	00379793          	slli	a5,a5,0x3
   119b0:	0005859b          	sext.w	a1,a1
   119b4:	a0dff06f          	j	113c0 <_malloc_r+0x3c>
   119b8:	0067d713          	srli	a4,a5,0x6
   119bc:	0397061b          	addiw	a2,a4,57
   119c0:	0016161b          	slliw	a2,a2,0x1
   119c4:	00361613          	slli	a2,a2,0x3
   119c8:	0387069b          	addiw	a3,a4,56
   119cc:	eb1ff06f          	j	1187c <_malloc_r+0x4f8>
   119d0:	05c7859b          	addiw	a1,a5,92
   119d4:	0015961b          	slliw	a2,a1,0x1
   119d8:	05b7881b          	addiw	a6,a5,91
   119dc:	00361613          	slli	a2,a2,0x3
   119e0:	a8dff06f          	j	1146c <_malloc_r+0xe8>
   119e4:	01033783          	ld	a5,16(t1)
   119e8:	fff5859b          	addiw	a1,a1,-1
   119ec:	1e679863          	bne	a5,t1,11bdc <_malloc_r+0x858>
   119f0:	0035f793          	andi	a5,a1,3
   119f4:	ff030313          	addi	t1,t1,-16
   119f8:	fe0796e3          	bnez	a5,119e4 <_malloc_r+0x660>
   119fc:	0089b703          	ld	a4,8(s3)
   11a00:	fff64793          	not	a5,a2
   11a04:	00e7f7b3          	and	a5,a5,a4
   11a08:	00f9b423          	sd	a5,8(s3)
   11a0c:	00161613          	slli	a2,a2,0x1
   11a10:	c0c7e2e3          	bltu	a5,a2,11614 <_malloc_r+0x290>
   11a14:	c00600e3          	beqz	a2,11614 <_malloc_r+0x290>
   11a18:	00f67733          	and	a4,a2,a5
   11a1c:	00071a63          	bnez	a4,11a30 <_malloc_r+0x6ac>
   11a20:	00161613          	slli	a2,a2,0x1
   11a24:	00f67733          	and	a4,a2,a5
   11a28:	004e0e1b          	addiw	t3,t3,4
   11a2c:	fe070ae3          	beqz	a4,11a20 <_malloc_r+0x69c>
   11a30:	000e0593          	mv	a1,t3
   11a34:	b3dff06f          	j	11570 <_malloc_r+0x1ec>
   11a38:	01040593          	addi	a1,s0,16
   11a3c:	00090513          	mv	a0,s2
   11a40:	e34ff0ef          	jal	11074 <_free_r>
   11a44:	000c2703          	lw	a4,0(s8)
   11a48:	0109bb03          	ld	s6,16(s3)
   11a4c:	d11ff06f          	j	1175c <_malloc_r+0x3d8>
   11a50:	020a0a13          	addi	s4,s4,32
   11a54:	c1dff06f          	j	11670 <_malloc_r+0x2ec>
   11a58:	4026d69b          	sraiw	a3,a3,0x2
   11a5c:	00100793          	li	a5,1
   11a60:	00d797b3          	sll	a5,a5,a3
   11a64:	00f56533          	or	a0,a0,a5
   11a68:	00a9b423          	sd	a0,8(s3)
   11a6c:	e3dff06f          	j	118a8 <_malloc_r+0x524>
   11a70:	014b0bb3          	add	s7,s6,s4
   11a74:	41700bb3          	neg	s7,s7
   11a78:	034b9b93          	slli	s7,s7,0x34
   11a7c:	034bdb93          	srli	s7,s7,0x34
   11a80:	000b8593          	mv	a1,s7
   11a84:	00090513          	mv	a0,s2
   11a88:	5b4000ef          	jal	1203c <_sbrk_r>
   11a8c:	fff00793          	li	a5,-1
   11a90:	00000693          	li	a3,0
   11a94:	c6f516e3          	bne	a0,a5,11700 <_malloc_r+0x37c>
   11a98:	c75ff06f          	j	1170c <_malloc_r+0x388>
   11a9c:	01013c03          	ld	s8,16(sp)
   11aa0:	00100793          	li	a5,1
   11aa4:	00fb3423          	sd	a5,8(s6)
   11aa8:	00090513          	mv	a0,s2
   11aac:	13c000ef          	jal	11be8 <__malloc_unlock>
   11ab0:	03013a03          	ld	s4,48(sp)
   11ab4:	02813a83          	ld	s5,40(sp)
   11ab8:	02013b03          	ld	s6,32(sp)
   11abc:	01813b83          	ld	s7,24(sp)
   11ac0:	00813c83          	ld	s9,8(sp)
   11ac4:	b21ff06f          	j	115e4 <_malloc_r+0x260>
   11ac8:	05400693          	li	a3,84
   11acc:	08e6e063          	bltu	a3,a4,11b4c <_malloc_r+0x7c8>
   11ad0:	00c7d713          	srli	a4,a5,0xc
   11ad4:	06f7061b          	addiw	a2,a4,111
   11ad8:	0016161b          	slliw	a2,a2,0x1
   11adc:	00361613          	slli	a2,a2,0x3
   11ae0:	06e7069b          	addiw	a3,a4,110
   11ae4:	d99ff06f          	j	1187c <_malloc_r+0x4f8>
   11ae8:	15400713          	li	a4,340
   11aec:	08f76063          	bltu	a4,a5,11b6c <_malloc_r+0x7e8>
   11af0:	00f4d793          	srli	a5,s1,0xf
   11af4:	0787859b          	addiw	a1,a5,120
   11af8:	0015961b          	slliw	a2,a1,0x1
   11afc:	0777881b          	addiw	a6,a5,119
   11b00:	00361613          	slli	a2,a2,0x3
   11b04:	969ff06f          	j	1146c <_malloc_r+0xe8>
   11b08:	42018c13          	addi	s8,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11b0c:	000c2683          	lw	a3,0(s8)
   11b10:	014686bb          	addw	a3,a3,s4
   11b14:	00dc2023          	sw	a3,0(s8)
   11b18:	b91ff06f          	j	116a8 <_malloc_r+0x324>
   11b1c:	0109b403          	ld	s0,16(s3)
   11b20:	00843783          	ld	a5,8(s0)
   11b24:	c71ff06f          	j	11794 <_malloc_r+0x410>
   11b28:	03451793          	slli	a5,a0,0x34
   11b2c:	b6079ee3          	bnez	a5,116a8 <_malloc_r+0x324>
   11b30:	0109bb03          	ld	s6,16(s3)
   11b34:	014a87b3          	add	a5,s5,s4
   11b38:	0017e793          	ori	a5,a5,1
   11b3c:	00fb3423          	sd	a5,8(s6)
   11b40:	c21ff06f          	j	11760 <_malloc_r+0x3dc>
   11b44:	1961b823          	sd	s6,400(gp) # 139a8 <__malloc_sbrk_base>
   11b48:	b79ff06f          	j	116c0 <_malloc_r+0x33c>
   11b4c:	15400693          	li	a3,340
   11b50:	04e6e863          	bltu	a3,a4,11ba0 <_malloc_r+0x81c>
   11b54:	00f7d713          	srli	a4,a5,0xf
   11b58:	0787061b          	addiw	a2,a4,120
   11b5c:	0016161b          	slliw	a2,a2,0x1
   11b60:	00361613          	slli	a2,a2,0x3
   11b64:	0777069b          	addiw	a3,a4,119
   11b68:	d15ff06f          	j	1187c <_malloc_r+0x4f8>
   11b6c:	55400713          	li	a4,1364
   11b70:	04f76863          	bltu	a4,a5,11bc0 <_malloc_r+0x83c>
   11b74:	0124d793          	srli	a5,s1,0x12
   11b78:	07d7859b          	addiw	a1,a5,125
   11b7c:	0015961b          	slliw	a2,a1,0x1
   11b80:	07c7881b          	addiw	a6,a5,124
   11b84:	00361613          	slli	a2,a2,0x3
   11b88:	8e5ff06f          	j	1146c <_malloc_r+0xe8>
   11b8c:	ff0c8c93          	addi	s9,s9,-16
   11b90:	019a0a33          	add	s4,s4,s9
   11b94:	416a0a33          	sub	s4,s4,s6
   11b98:	00000693          	li	a3,0
   11b9c:	b71ff06f          	j	1170c <_malloc_r+0x388>
   11ba0:	55400693          	li	a3,1364
   11ba4:	02e6e663          	bltu	a3,a4,11bd0 <_malloc_r+0x84c>
   11ba8:	0127d713          	srli	a4,a5,0x12
   11bac:	07d7061b          	addiw	a2,a4,125
   11bb0:	0016161b          	slliw	a2,a2,0x1
   11bb4:	00361613          	slli	a2,a2,0x3
   11bb8:	07c7069b          	addiw	a3,a4,124
   11bbc:	cc1ff06f          	j	1187c <_malloc_r+0x4f8>
   11bc0:	7f000613          	li	a2,2032
   11bc4:	07f00593          	li	a1,127
   11bc8:	07e00813          	li	a6,126
   11bcc:	8a1ff06f          	j	1146c <_malloc_r+0xe8>
   11bd0:	7f000613          	li	a2,2032
   11bd4:	07e00693          	li	a3,126
   11bd8:	ca5ff06f          	j	1187c <_malloc_r+0x4f8>
   11bdc:	0089b783          	ld	a5,8(s3)
   11be0:	e2dff06f          	j	11a0c <_malloc_r+0x688>

0000000000011be4 <__malloc_lock>:
   11be4:	00008067          	ret

0000000000011be8 <__malloc_unlock>:
   11be8:	00008067          	ret

0000000000011bec <_fclose_r>:
   11bec:	fe010113          	addi	sp,sp,-32
   11bf0:	00113c23          	sd	ra,24(sp)
   11bf4:	01213023          	sd	s2,0(sp)
   11bf8:	02058863          	beqz	a1,11c28 <_fclose_r+0x3c>
   11bfc:	00813823          	sd	s0,16(sp)
   11c00:	00913423          	sd	s1,8(sp)
   11c04:	00058413          	mv	s0,a1
   11c08:	00050493          	mv	s1,a0
   11c0c:	00050663          	beqz	a0,11c18 <_fclose_r+0x2c>
   11c10:	04853783          	ld	a5,72(a0)
   11c14:	0c078c63          	beqz	a5,11cec <_fclose_r+0x100>
   11c18:	01041783          	lh	a5,16(s0)
   11c1c:	02079263          	bnez	a5,11c40 <_fclose_r+0x54>
   11c20:	01013403          	ld	s0,16(sp)
   11c24:	00813483          	ld	s1,8(sp)
   11c28:	01813083          	ld	ra,24(sp)
   11c2c:	00000913          	li	s2,0
   11c30:	00090513          	mv	a0,s2
   11c34:	00013903          	ld	s2,0(sp)
   11c38:	02010113          	addi	sp,sp,32
   11c3c:	00008067          	ret
   11c40:	00040593          	mv	a1,s0
   11c44:	00048513          	mv	a0,s1
   11c48:	0b8000ef          	jal	11d00 <__sflush_r>
   11c4c:	05043783          	ld	a5,80(s0)
   11c50:	00050913          	mv	s2,a0
   11c54:	00078a63          	beqz	a5,11c68 <_fclose_r+0x7c>
   11c58:	03043583          	ld	a1,48(s0)
   11c5c:	00048513          	mv	a0,s1
   11c60:	000780e7          	jalr	a5
   11c64:	06054463          	bltz	a0,11ccc <_fclose_r+0xe0>
   11c68:	01045783          	lhu	a5,16(s0)
   11c6c:	0807f793          	andi	a5,a5,128
   11c70:	06079663          	bnez	a5,11cdc <_fclose_r+0xf0>
   11c74:	05843583          	ld	a1,88(s0)
   11c78:	00058c63          	beqz	a1,11c90 <_fclose_r+0xa4>
   11c7c:	07440793          	addi	a5,s0,116
   11c80:	00f58663          	beq	a1,a5,11c8c <_fclose_r+0xa0>
   11c84:	00048513          	mv	a0,s1
   11c88:	becff0ef          	jal	11074 <_free_r>
   11c8c:	04043c23          	sd	zero,88(s0)
   11c90:	07843583          	ld	a1,120(s0)
   11c94:	00058863          	beqz	a1,11ca4 <_fclose_r+0xb8>
   11c98:	00048513          	mv	a0,s1
   11c9c:	bd8ff0ef          	jal	11074 <_free_r>
   11ca0:	06043c23          	sd	zero,120(s0)
   11ca4:	b01fe0ef          	jal	107a4 <__sfp_lock_acquire>
   11ca8:	00041823          	sh	zero,16(s0)
   11cac:	afdfe0ef          	jal	107a8 <__sfp_lock_release>
   11cb0:	01813083          	ld	ra,24(sp)
   11cb4:	01013403          	ld	s0,16(sp)
   11cb8:	00813483          	ld	s1,8(sp)
   11cbc:	00090513          	mv	a0,s2
   11cc0:	00013903          	ld	s2,0(sp)
   11cc4:	02010113          	addi	sp,sp,32
   11cc8:	00008067          	ret
   11ccc:	01045783          	lhu	a5,16(s0)
   11cd0:	fff00913          	li	s2,-1
   11cd4:	0807f793          	andi	a5,a5,128
   11cd8:	f8078ee3          	beqz	a5,11c74 <_fclose_r+0x88>
   11cdc:	01843583          	ld	a1,24(s0)
   11ce0:	00048513          	mv	a0,s1
   11ce4:	b90ff0ef          	jal	11074 <_free_r>
   11ce8:	f8dff06f          	j	11c74 <_fclose_r+0x88>
   11cec:	a95fe0ef          	jal	10780 <__sinit>
   11cf0:	f29ff06f          	j	11c18 <_fclose_r+0x2c>

0000000000011cf4 <fclose>:
   11cf4:	00050593          	mv	a1,a0
   11cf8:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11cfc:	ef1ff06f          	j	11bec <_fclose_r>

0000000000011d00 <__sflush_r>:
   11d00:	01059703          	lh	a4,16(a1)
   11d04:	fd010113          	addi	sp,sp,-48
   11d08:	02813023          	sd	s0,32(sp)
   11d0c:	01313423          	sd	s3,8(sp)
   11d10:	02113423          	sd	ra,40(sp)
   11d14:	00877793          	andi	a5,a4,8
   11d18:	00058413          	mv	s0,a1
   11d1c:	00050993          	mv	s3,a0
   11d20:	12079063          	bnez	a5,11e40 <__sflush_r+0x140>
   11d24:	000017b7          	lui	a5,0x1
   11d28:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11d2c:	0085a683          	lw	a3,8(a1)
   11d30:	00f767b3          	or	a5,a4,a5
   11d34:	00f59823          	sh	a5,16(a1)
   11d38:	18d05a63          	blez	a3,11ecc <__sflush_r+0x1cc>
   11d3c:	04843803          	ld	a6,72(s0)
   11d40:	0e080463          	beqz	a6,11e28 <__sflush_r+0x128>
   11d44:	00913c23          	sd	s1,24(sp)
   11d48:	03371693          	slli	a3,a4,0x33
   11d4c:	0009a483          	lw	s1,0(s3)
   11d50:	0009a023          	sw	zero,0(s3)
   11d54:	1806c863          	bltz	a3,11ee4 <__sflush_r+0x1e4>
   11d58:	03043583          	ld	a1,48(s0)
   11d5c:	00000613          	li	a2,0
   11d60:	00100693          	li	a3,1
   11d64:	00098513          	mv	a0,s3
   11d68:	000800e7          	jalr	a6
   11d6c:	fff00793          	li	a5,-1
   11d70:	00050613          	mv	a2,a0
   11d74:	1af50a63          	beq	a0,a5,11f28 <__sflush_r+0x228>
   11d78:	01041783          	lh	a5,16(s0)
   11d7c:	04843803          	ld	a6,72(s0)
   11d80:	0047f793          	andi	a5,a5,4
   11d84:	00078e63          	beqz	a5,11da0 <__sflush_r+0xa0>
   11d88:	00842703          	lw	a4,8(s0)
   11d8c:	05843783          	ld	a5,88(s0)
   11d90:	40e60633          	sub	a2,a2,a4
   11d94:	00078663          	beqz	a5,11da0 <__sflush_r+0xa0>
   11d98:	07042783          	lw	a5,112(s0)
   11d9c:	40f60633          	sub	a2,a2,a5
   11da0:	03043583          	ld	a1,48(s0)
   11da4:	00000693          	li	a3,0
   11da8:	00098513          	mv	a0,s3
   11dac:	000800e7          	jalr	a6
   11db0:	fff00713          	li	a4,-1
   11db4:	01041783          	lh	a5,16(s0)
   11db8:	12e51a63          	bne	a0,a4,11eec <__sflush_r+0x1ec>
   11dbc:	0009a683          	lw	a3,0(s3)
   11dc0:	01d00713          	li	a4,29
   11dc4:	18d76063          	bltu	a4,a3,11f44 <__sflush_r+0x244>
   11dc8:	20400737          	lui	a4,0x20400
   11dcc:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11dd0:	00d75733          	srl	a4,a4,a3
   11dd4:	00177713          	andi	a4,a4,1
   11dd8:	16070663          	beqz	a4,11f44 <__sflush_r+0x244>
   11ddc:	01843603          	ld	a2,24(s0)
   11de0:	fffff737          	lui	a4,0xfffff
   11de4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11de8:	00e7f733          	and	a4,a5,a4
   11dec:	00e41823          	sh	a4,16(s0)
   11df0:	00042423          	sw	zero,8(s0)
   11df4:	00c43023          	sd	a2,0(s0)
   11df8:	03379713          	slli	a4,a5,0x33
   11dfc:	00075463          	bgez	a4,11e04 <__sflush_r+0x104>
   11e00:	10068863          	beqz	a3,11f10 <__sflush_r+0x210>
   11e04:	05843583          	ld	a1,88(s0)
   11e08:	0099a023          	sw	s1,0(s3)
   11e0c:	10058a63          	beqz	a1,11f20 <__sflush_r+0x220>
   11e10:	07440793          	addi	a5,s0,116
   11e14:	00f58663          	beq	a1,a5,11e20 <__sflush_r+0x120>
   11e18:	00098513          	mv	a0,s3
   11e1c:	a58ff0ef          	jal	11074 <_free_r>
   11e20:	01813483          	ld	s1,24(sp)
   11e24:	04043c23          	sd	zero,88(s0)
   11e28:	02813083          	ld	ra,40(sp)
   11e2c:	02013403          	ld	s0,32(sp)
   11e30:	00813983          	ld	s3,8(sp)
   11e34:	00000513          	li	a0,0
   11e38:	03010113          	addi	sp,sp,48
   11e3c:	00008067          	ret
   11e40:	01213823          	sd	s2,16(sp)
   11e44:	0185b903          	ld	s2,24(a1)
   11e48:	08090a63          	beqz	s2,11edc <__sflush_r+0x1dc>
   11e4c:	00913c23          	sd	s1,24(sp)
   11e50:	0005b483          	ld	s1,0(a1)
   11e54:	00377713          	andi	a4,a4,3
   11e58:	0125b023          	sd	s2,0(a1)
   11e5c:	412484bb          	subw	s1,s1,s2
   11e60:	00000793          	li	a5,0
   11e64:	00071463          	bnez	a4,11e6c <__sflush_r+0x16c>
   11e68:	0205a783          	lw	a5,32(a1)
   11e6c:	00f42623          	sw	a5,12(s0)
   11e70:	00904863          	bgtz	s1,11e80 <__sflush_r+0x180>
   11e74:	0640006f          	j	11ed8 <__sflush_r+0x1d8>
   11e78:	00a90933          	add	s2,s2,a0
   11e7c:	04905e63          	blez	s1,11ed8 <__sflush_r+0x1d8>
   11e80:	04043783          	ld	a5,64(s0)
   11e84:	03043583          	ld	a1,48(s0)
   11e88:	00048693          	mv	a3,s1
   11e8c:	00090613          	mv	a2,s2
   11e90:	00098513          	mv	a0,s3
   11e94:	000780e7          	jalr	a5
   11e98:	40a484bb          	subw	s1,s1,a0
   11e9c:	fca04ee3          	bgtz	a0,11e78 <__sflush_r+0x178>
   11ea0:	01041783          	lh	a5,16(s0)
   11ea4:	01013903          	ld	s2,16(sp)
   11ea8:	0407e793          	ori	a5,a5,64
   11eac:	02813083          	ld	ra,40(sp)
   11eb0:	00f41823          	sh	a5,16(s0)
   11eb4:	02013403          	ld	s0,32(sp)
   11eb8:	01813483          	ld	s1,24(sp)
   11ebc:	00813983          	ld	s3,8(sp)
   11ec0:	fff00513          	li	a0,-1
   11ec4:	03010113          	addi	sp,sp,48
   11ec8:	00008067          	ret
   11ecc:	0705a683          	lw	a3,112(a1)
   11ed0:	e6d046e3          	bgtz	a3,11d3c <__sflush_r+0x3c>
   11ed4:	f55ff06f          	j	11e28 <__sflush_r+0x128>
   11ed8:	01813483          	ld	s1,24(sp)
   11edc:	01013903          	ld	s2,16(sp)
   11ee0:	f49ff06f          	j	11e28 <__sflush_r+0x128>
   11ee4:	09043603          	ld	a2,144(s0)
   11ee8:	e99ff06f          	j	11d80 <__sflush_r+0x80>
   11eec:	01843683          	ld	a3,24(s0)
   11ef0:	fffff737          	lui	a4,0xfffff
   11ef4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11ef8:	00e7f733          	and	a4,a5,a4
   11efc:	00e41823          	sh	a4,16(s0)
   11f00:	00042423          	sw	zero,8(s0)
   11f04:	00d43023          	sd	a3,0(s0)
   11f08:	03379713          	slli	a4,a5,0x33
   11f0c:	ee075ce3          	bgez	a4,11e04 <__sflush_r+0x104>
   11f10:	05843583          	ld	a1,88(s0)
   11f14:	08a43823          	sd	a0,144(s0)
   11f18:	0099a023          	sw	s1,0(s3)
   11f1c:	ee059ae3          	bnez	a1,11e10 <__sflush_r+0x110>
   11f20:	01813483          	ld	s1,24(sp)
   11f24:	f05ff06f          	j	11e28 <__sflush_r+0x128>
   11f28:	0009a783          	lw	a5,0(s3)
   11f2c:	e40786e3          	beqz	a5,11d78 <__sflush_r+0x78>
   11f30:	01d00713          	li	a4,29
   11f34:	00e78c63          	beq	a5,a4,11f4c <__sflush_r+0x24c>
   11f38:	01600713          	li	a4,22
   11f3c:	00e78863          	beq	a5,a4,11f4c <__sflush_r+0x24c>
   11f40:	01041783          	lh	a5,16(s0)
   11f44:	0407e793          	ori	a5,a5,64
   11f48:	f65ff06f          	j	11eac <__sflush_r+0x1ac>
   11f4c:	0099a023          	sw	s1,0(s3)
   11f50:	01813483          	ld	s1,24(sp)
   11f54:	ed5ff06f          	j	11e28 <__sflush_r+0x128>

0000000000011f58 <_fflush_r>:
   11f58:	fe010113          	addi	sp,sp,-32
   11f5c:	00813823          	sd	s0,16(sp)
   11f60:	00113c23          	sd	ra,24(sp)
   11f64:	00050413          	mv	s0,a0
   11f68:	00050663          	beqz	a0,11f74 <_fflush_r+0x1c>
   11f6c:	04853783          	ld	a5,72(a0)
   11f70:	02078a63          	beqz	a5,11fa4 <_fflush_r+0x4c>
   11f74:	01059783          	lh	a5,16(a1)
   11f78:	00079c63          	bnez	a5,11f90 <_fflush_r+0x38>
   11f7c:	01813083          	ld	ra,24(sp)
   11f80:	01013403          	ld	s0,16(sp)
   11f84:	00000513          	li	a0,0
   11f88:	02010113          	addi	sp,sp,32
   11f8c:	00008067          	ret
   11f90:	00040513          	mv	a0,s0
   11f94:	01013403          	ld	s0,16(sp)
   11f98:	01813083          	ld	ra,24(sp)
   11f9c:	02010113          	addi	sp,sp,32
   11fa0:	d61ff06f          	j	11d00 <__sflush_r>
   11fa4:	00b13423          	sd	a1,8(sp)
   11fa8:	fd8fe0ef          	jal	10780 <__sinit>
   11fac:	00813583          	ld	a1,8(sp)
   11fb0:	fc5ff06f          	j	11f74 <_fflush_r+0x1c>

0000000000011fb4 <fflush>:
   11fb4:	06050063          	beqz	a0,12014 <fflush+0x60>
   11fb8:	00050593          	mv	a1,a0
   11fbc:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11fc0:	00050663          	beqz	a0,11fcc <fflush+0x18>
   11fc4:	04853783          	ld	a5,72(a0)
   11fc8:	00078c63          	beqz	a5,11fe0 <fflush+0x2c>
   11fcc:	01059783          	lh	a5,16(a1)
   11fd0:	00079663          	bnez	a5,11fdc <fflush+0x28>
   11fd4:	00000513          	li	a0,0
   11fd8:	00008067          	ret
   11fdc:	d25ff06f          	j	11d00 <__sflush_r>
   11fe0:	fe010113          	addi	sp,sp,-32
   11fe4:	00b13423          	sd	a1,8(sp)
   11fe8:	00a13023          	sd	a0,0(sp)
   11fec:	00113c23          	sd	ra,24(sp)
   11ff0:	f90fe0ef          	jal	10780 <__sinit>
   11ff4:	00813583          	ld	a1,8(sp)
   11ff8:	00013503          	ld	a0,0(sp)
   11ffc:	01059783          	lh	a5,16(a1)
   12000:	02079863          	bnez	a5,12030 <fflush+0x7c>
   12004:	01813083          	ld	ra,24(sp)
   12008:	00000513          	li	a0,0
   1200c:	02010113          	addi	sp,sp,32
   12010:	00008067          	ret
   12014:	00013637          	lui	a2,0x13
   12018:	000125b7          	lui	a1,0x12
   1201c:	00013537          	lui	a0,0x13
   12020:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   12024:	f5858593          	addi	a1,a1,-168 # 11f58 <_fflush_r>
   12028:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   1202c:	fb0fe06f          	j	107dc <_fwalk_sglue>
   12030:	01813083          	ld	ra,24(sp)
   12034:	02010113          	addi	sp,sp,32
   12038:	cc9ff06f          	j	11d00 <__sflush_r>

000000000001203c <_sbrk_r>:
   1203c:	fe010113          	addi	sp,sp,-32
   12040:	00813823          	sd	s0,16(sp)
   12044:	00913423          	sd	s1,8(sp)
   12048:	00050413          	mv	s0,a0
   1204c:	00058513          	mv	a0,a1
   12050:	00113c23          	sd	ra,24(sp)
   12054:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12058:	238000ef          	jal	12290 <_sbrk>
   1205c:	fff00793          	li	a5,-1
   12060:	00f50c63          	beq	a0,a5,12078 <_sbrk_r+0x3c>
   12064:	01813083          	ld	ra,24(sp)
   12068:	01013403          	ld	s0,16(sp)
   1206c:	00813483          	ld	s1,8(sp)
   12070:	02010113          	addi	sp,sp,32
   12074:	00008067          	ret
   12078:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   1207c:	fe0784e3          	beqz	a5,12064 <_sbrk_r+0x28>
   12080:	01813083          	ld	ra,24(sp)
   12084:	00f42023          	sw	a5,0(s0)
   12088:	01013403          	ld	s0,16(sp)
   1208c:	00813483          	ld	s1,8(sp)
   12090:	02010113          	addi	sp,sp,32
   12094:	00008067          	ret

0000000000012098 <__libc_fini_array>:
   12098:	fe010113          	addi	sp,sp,-32
   1209c:	00813823          	sd	s0,16(sp)
   120a0:	000137b7          	lui	a5,0x13
   120a4:	00013437          	lui	s0,0x13
   120a8:	01840413          	addi	s0,s0,24 # 13018 <__sglue>
   120ac:	01078793          	addi	a5,a5,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   120b0:	40f40433          	sub	s0,s0,a5
   120b4:	00913423          	sd	s1,8(sp)
   120b8:	00113c23          	sd	ra,24(sp)
   120bc:	40345493          	srai	s1,s0,0x3
   120c0:	02048063          	beqz	s1,120e0 <__libc_fini_array+0x48>
   120c4:	ff840413          	addi	s0,s0,-8
   120c8:	00f40433          	add	s0,s0,a5
   120cc:	00043783          	ld	a5,0(s0)
   120d0:	fff48493          	addi	s1,s1,-1
   120d4:	ff840413          	addi	s0,s0,-8
   120d8:	000780e7          	jalr	a5
   120dc:	fe0498e3          	bnez	s1,120cc <__libc_fini_array+0x34>
   120e0:	01813083          	ld	ra,24(sp)
   120e4:	01013403          	ld	s0,16(sp)
   120e8:	00813483          	ld	s1,8(sp)
   120ec:	02010113          	addi	sp,sp,32
   120f0:	00008067          	ret

00000000000120f4 <__register_exitproc>:
   120f4:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   120f8:	04078e63          	beqz	a5,12154 <__register_exitproc+0x60>
   120fc:	0087a703          	lw	a4,8(a5)
   12100:	01f00813          	li	a6,31
   12104:	08e84463          	blt	a6,a4,1218c <__register_exitproc+0x98>
   12108:	02050863          	beqz	a0,12138 <__register_exitproc+0x44>
   1210c:	00371813          	slli	a6,a4,0x3
   12110:	01078833          	add	a6,a5,a6
   12114:	10c83823          	sd	a2,272(a6)
   12118:	3107a883          	lw	a7,784(a5)
   1211c:	00100613          	li	a2,1
   12120:	00e6163b          	sllw	a2,a2,a4
   12124:	00c8e8b3          	or	a7,a7,a2
   12128:	3117a823          	sw	a7,784(a5)
   1212c:	20d83823          	sd	a3,528(a6)
   12130:	00200693          	li	a3,2
   12134:	02d50863          	beq	a0,a3,12164 <__register_exitproc+0x70>
   12138:	00371693          	slli	a3,a4,0x3
   1213c:	0017071b          	addiw	a4,a4,1
   12140:	00d786b3          	add	a3,a5,a3
   12144:	00e7a423          	sw	a4,8(a5)
   12148:	00b6b823          	sd	a1,16(a3)
   1214c:	00000513          	li	a0,0
   12150:	00008067          	ret
   12154:	44818813          	addi	a6,gp,1096 # 13c60 <__atexit0>
   12158:	1b01b823          	sd	a6,432(gp) # 139c8 <__atexit>
   1215c:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12160:	f9dff06f          	j	120fc <__register_exitproc+0x8>
   12164:	3147a683          	lw	a3,788(a5)
   12168:	00000513          	li	a0,0
   1216c:	00d66633          	or	a2,a2,a3
   12170:	00371693          	slli	a3,a4,0x3
   12174:	0017071b          	addiw	a4,a4,1
   12178:	30c7aa23          	sw	a2,788(a5)
   1217c:	00d786b3          	add	a3,a5,a3
   12180:	00e7a423          	sw	a4,8(a5)
   12184:	00b6b823          	sd	a1,16(a3)
   12188:	00008067          	ret
   1218c:	fff00513          	li	a0,-1
   12190:	00008067          	ret

0000000000012194 <_close>:
   12194:	ff010113          	addi	sp,sp,-16
   12198:	00113423          	sd	ra,8(sp)
   1219c:	00813023          	sd	s0,0(sp)
   121a0:	03900893          	li	a7,57
   121a4:	00000073          	ecall
   121a8:	00050413          	mv	s0,a0
   121ac:	00054c63          	bltz	a0,121c4 <_close+0x30>
   121b0:	0005051b          	sext.w	a0,a0
   121b4:	00813083          	ld	ra,8(sp)
   121b8:	00013403          	ld	s0,0(sp)
   121bc:	01010113          	addi	sp,sp,16
   121c0:	00008067          	ret
   121c4:	188000ef          	jal	1234c <__errno>
   121c8:	4080043b          	negw	s0,s0
   121cc:	00852023          	sw	s0,0(a0)
   121d0:	fff00513          	li	a0,-1
   121d4:	fe1ff06f          	j	121b4 <_close+0x20>

00000000000121d8 <_exit>:
   121d8:	05d00893          	li	a7,93
   121dc:	00000073          	ecall
   121e0:	00054463          	bltz	a0,121e8 <_exit+0x10>
   121e4:	0000006f          	j	121e4 <_exit+0xc>
   121e8:	ff010113          	addi	sp,sp,-16
   121ec:	00813023          	sd	s0,0(sp)
   121f0:	00050413          	mv	s0,a0
   121f4:	00113423          	sd	ra,8(sp)
   121f8:	4080043b          	negw	s0,s0
   121fc:	150000ef          	jal	1234c <__errno>
   12200:	00852023          	sw	s0,0(a0)
   12204:	0000006f          	j	12204 <_exit+0x2c>

0000000000012208 <_lseek>:
   12208:	ff010113          	addi	sp,sp,-16
   1220c:	00113423          	sd	ra,8(sp)
   12210:	00813023          	sd	s0,0(sp)
   12214:	03e00893          	li	a7,62
   12218:	00000073          	ecall
   1221c:	00050413          	mv	s0,a0
   12220:	00054c63          	bltz	a0,12238 <_lseek+0x30>
   12224:	00813083          	ld	ra,8(sp)
   12228:	00040513          	mv	a0,s0
   1222c:	00013403          	ld	s0,0(sp)
   12230:	01010113          	addi	sp,sp,16
   12234:	00008067          	ret
   12238:	4080043b          	negw	s0,s0
   1223c:	110000ef          	jal	1234c <__errno>
   12240:	00852023          	sw	s0,0(a0)
   12244:	fff00413          	li	s0,-1
   12248:	fddff06f          	j	12224 <_lseek+0x1c>

000000000001224c <_read>:
   1224c:	ff010113          	addi	sp,sp,-16
   12250:	00113423          	sd	ra,8(sp)
   12254:	00813023          	sd	s0,0(sp)
   12258:	03f00893          	li	a7,63
   1225c:	00000073          	ecall
   12260:	00050413          	mv	s0,a0
   12264:	00054c63          	bltz	a0,1227c <_read+0x30>
   12268:	00813083          	ld	ra,8(sp)
   1226c:	00040513          	mv	a0,s0
   12270:	00013403          	ld	s0,0(sp)
   12274:	01010113          	addi	sp,sp,16
   12278:	00008067          	ret
   1227c:	4080043b          	negw	s0,s0
   12280:	0cc000ef          	jal	1234c <__errno>
   12284:	00852023          	sw	s0,0(a0)
   12288:	fff00413          	li	s0,-1
   1228c:	fddff06f          	j	12268 <_read+0x1c>

0000000000012290 <_sbrk>:
   12290:	1d01b703          	ld	a4,464(gp) # 139e8 <heap_end.0>
   12294:	ff010113          	addi	sp,sp,-16
   12298:	00113423          	sd	ra,8(sp)
   1229c:	00050793          	mv	a5,a0
   122a0:	02071063          	bnez	a4,122c0 <_sbrk+0x30>
   122a4:	0d600893          	li	a7,214
   122a8:	00000513          	li	a0,0
   122ac:	00000073          	ecall
   122b0:	fff00613          	li	a2,-1
   122b4:	00050713          	mv	a4,a0
   122b8:	02c50a63          	beq	a0,a2,122ec <_sbrk+0x5c>
   122bc:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   122c0:	00e78533          	add	a0,a5,a4
   122c4:	0d600893          	li	a7,214
   122c8:	00000073          	ecall
   122cc:	1d01b703          	ld	a4,464(gp) # 139e8 <heap_end.0>
   122d0:	00e787b3          	add	a5,a5,a4
   122d4:	00f51c63          	bne	a0,a5,122ec <_sbrk+0x5c>
   122d8:	00813083          	ld	ra,8(sp)
   122dc:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   122e0:	00070513          	mv	a0,a4
   122e4:	01010113          	addi	sp,sp,16
   122e8:	00008067          	ret
   122ec:	060000ef          	jal	1234c <__errno>
   122f0:	00813083          	ld	ra,8(sp)
   122f4:	00c00793          	li	a5,12
   122f8:	00f52023          	sw	a5,0(a0)
   122fc:	fff00513          	li	a0,-1
   12300:	01010113          	addi	sp,sp,16
   12304:	00008067          	ret

0000000000012308 <_write>:
   12308:	ff010113          	addi	sp,sp,-16
   1230c:	00113423          	sd	ra,8(sp)
   12310:	00813023          	sd	s0,0(sp)
   12314:	04000893          	li	a7,64
   12318:	00000073          	ecall
   1231c:	00050413          	mv	s0,a0
   12320:	00054c63          	bltz	a0,12338 <_write+0x30>
   12324:	00813083          	ld	ra,8(sp)
   12328:	00040513          	mv	a0,s0
   1232c:	00013403          	ld	s0,0(sp)
   12330:	01010113          	addi	sp,sp,16
   12334:	00008067          	ret
   12338:	4080043b          	negw	s0,s0
   1233c:	010000ef          	jal	1234c <__errno>
   12340:	00852023          	sw	s0,0(a0)
   12344:	fff00413          	li	s0,-1
   12348:	fddff06f          	j	12324 <_write+0x1c>

000000000001234c <__errno>:
   1234c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12350:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012358 <__EH_FRAME_BEGIN__>:
   12358:	0000                	.insn	2, 0x0000
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
