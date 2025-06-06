
../benchmark/B.riscv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	li	a1,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	mv	s0,a0
   10134:	495000ef          	jal	10dc8 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beqz	a5,10144 <exit+0x24>
   10140:	000780e7          	jalr	a5
   10144:	00040513          	mv	a0,s0
   10148:	064020ef          	jal	121ac <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	li	a5,0
   10150:	00078863          	beqz	a5,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	06c50513          	addi	a0,a0,108 # 1206c <__libc_fini_array>
   1015c:	5a10006f          	j	10efc <atexit>
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
   10184:	369000ef          	jal	10cec <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	d7450513          	addi	a0,a0,-652 # 10efc <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	ed850513          	addi	a0,a0,-296 # 1206c <__libc_fini_array>
   1019c:	561000ef          	jal	10efc <atexit>
   101a0:	2b1000ef          	jal	10c50 <__libc_init_array>
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
   101d8:	32850513          	addi	a0,a0,808 # 12328 <__EH_FRAME_BEGIN__>
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
   1020c:	32850513          	addi	a0,a0,808 # 12328 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x10120>
   10218:	00008067          	ret

000000000001021c <main>:
   1021c:	ff010113          	addi	sp,sp,-16
   10220:	00113423          	sd	ra,8(sp)
   10224:	00813023          	sd	s0,0(sp)
   10228:	01010413          	addi	s0,sp,16
   1022c:	01100513          	li	a0,17
   10230:	020000ef          	jal	10250 <func_B>
   10234:	17c000ef          	jal	103b0 <exit_proc>
   10238:	00000793          	li	a5,0
   1023c:	00078513          	mv	a0,a5
   10240:	00813083          	ld	ra,8(sp)
   10244:	00013403          	ld	s0,0(sp)
   10248:	01010113          	addi	sp,sp,16
   1024c:	00008067          	ret

0000000000010250 <func_B>:
   10250:	fd010113          	addi	sp,sp,-48
   10254:	02113423          	sd	ra,40(sp)
   10258:	02813023          	sd	s0,32(sp)
   1025c:	03010413          	addi	s0,sp,48
   10260:	00050793          	mv	a5,a0
   10264:	fcf42e23          	sw	a5,-36(s0)
   10268:	fdc42783          	lw	a5,-36(s0)
   1026c:	0007879b          	sext.w	a5,a5
   10270:	00079663          	bnez	a5,1027c <func_B+0x2c>
   10274:	00100793          	li	a5,1
   10278:	08c0006f          	j	10304 <func_B+0xb4>
   1027c:	00100793          	li	a5,1
   10280:	fef42623          	sw	a5,-20(s0)
   10284:	fe042423          	sw	zero,-24(s0)
   10288:	0600006f          	j	102e8 <func_B+0x98>
   1028c:	fe042223          	sw	zero,-28(s0)
   10290:	fe042023          	sw	zero,-32(s0)
   10294:	01c0006f          	j	102b0 <func_B+0x60>
   10298:	fe442783          	lw	a5,-28(s0)
   1029c:	0017879b          	addiw	a5,a5,1
   102a0:	fef42223          	sw	a5,-28(s0)
   102a4:	fe042783          	lw	a5,-32(s0)
   102a8:	0017879b          	addiw	a5,a5,1
   102ac:	fef42023          	sw	a5,-32(s0)
   102b0:	fe042783          	lw	a5,-32(s0)
   102b4:	00078713          	mv	a4,a5
   102b8:	fec42783          	lw	a5,-20(s0)
   102bc:	0007071b          	sext.w	a4,a4
   102c0:	0007879b          	sext.w	a5,a5
   102c4:	fcf74ae3          	blt	a4,a5,10298 <func_B+0x48>
   102c8:	fec42783          	lw	a5,-20(s0)
   102cc:	00078713          	mv	a4,a5
   102d0:	fe442783          	lw	a5,-28(s0)
   102d4:	00f707bb          	addw	a5,a4,a5
   102d8:	fef42623          	sw	a5,-20(s0)
   102dc:	fe842783          	lw	a5,-24(s0)
   102e0:	0017879b          	addiw	a5,a5,1
   102e4:	fef42423          	sw	a5,-24(s0)
   102e8:	fe842783          	lw	a5,-24(s0)
   102ec:	00078713          	mv	a4,a5
   102f0:	fdc42783          	lw	a5,-36(s0)
   102f4:	0007071b          	sext.w	a4,a4
   102f8:	0007879b          	sext.w	a5,a5
   102fc:	f8f748e3          	blt	a4,a5,1028c <func_B+0x3c>
   10300:	fec42783          	lw	a5,-20(s0)
   10304:	00078513          	mv	a0,a5
   10308:	02813083          	ld	ra,40(sp)
   1030c:	02013403          	ld	s0,32(sp)
   10310:	03010113          	addi	sp,sp,48
   10314:	00008067          	ret

0000000000010318 <print_d>:
   10318:	fe010113          	addi	sp,sp,-32
   1031c:	00113c23          	sd	ra,24(sp)
   10320:	00813823          	sd	s0,16(sp)
   10324:	02010413          	addi	s0,sp,32
   10328:	00050793          	mv	a5,a0
   1032c:	fef42623          	sw	a5,-20(s0)
   10330:	00200893          	li	a7,2
   10334:	00000073          	ecall
   10338:	00000013          	nop
   1033c:	01813083          	ld	ra,24(sp)
   10340:	01013403          	ld	s0,16(sp)
   10344:	02010113          	addi	sp,sp,32
   10348:	00008067          	ret

000000000001034c <print_s>:
   1034c:	fe010113          	addi	sp,sp,-32
   10350:	00113c23          	sd	ra,24(sp)
   10354:	00813823          	sd	s0,16(sp)
   10358:	02010413          	addi	s0,sp,32
   1035c:	fea43423          	sd	a0,-24(s0)
   10360:	00000893          	li	a7,0
   10364:	00000073          	ecall
   10368:	00000013          	nop
   1036c:	01813083          	ld	ra,24(sp)
   10370:	01013403          	ld	s0,16(sp)
   10374:	02010113          	addi	sp,sp,32
   10378:	00008067          	ret

000000000001037c <print_c>:
   1037c:	fe010113          	addi	sp,sp,-32
   10380:	00113c23          	sd	ra,24(sp)
   10384:	00813823          	sd	s0,16(sp)
   10388:	02010413          	addi	s0,sp,32
   1038c:	00050793          	mv	a5,a0
   10390:	fef407a3          	sb	a5,-17(s0)
   10394:	00100893          	li	a7,1
   10398:	00000073          	ecall
   1039c:	00000013          	nop
   103a0:	01813083          	ld	ra,24(sp)
   103a4:	01013403          	ld	s0,16(sp)
   103a8:	02010113          	addi	sp,sp,32
   103ac:	00008067          	ret

00000000000103b0 <exit_proc>:
   103b0:	ff010113          	addi	sp,sp,-16
   103b4:	00113423          	sd	ra,8(sp)
   103b8:	00813023          	sd	s0,0(sp)
   103bc:	01010413          	addi	s0,sp,16
   103c0:	00300893          	li	a7,3
   103c4:	00000073          	ecall
   103c8:	00000013          	nop
   103cc:	00813083          	ld	ra,8(sp)
   103d0:	00013403          	ld	s0,0(sp)
   103d4:	01010113          	addi	sp,sp,16
   103d8:	00008067          	ret

00000000000103dc <read_char>:
   103dc:	fe010113          	addi	sp,sp,-32
   103e0:	00113c23          	sd	ra,24(sp)
   103e4:	00813823          	sd	s0,16(sp)
   103e8:	02010413          	addi	s0,sp,32
   103ec:	00400893          	li	a7,4
   103f0:	00000073          	ecall
   103f4:	00050793          	mv	a5,a0
   103f8:	fef407a3          	sb	a5,-17(s0)
   103fc:	fef44783          	lbu	a5,-17(s0)
   10400:	00078513          	mv	a0,a5
   10404:	01813083          	ld	ra,24(sp)
   10408:	01013403          	ld	s0,16(sp)
   1040c:	02010113          	addi	sp,sp,32
   10410:	00008067          	ret

0000000000010414 <read_num>:
   10414:	fe010113          	addi	sp,sp,-32
   10418:	00113c23          	sd	ra,24(sp)
   1041c:	00813823          	sd	s0,16(sp)
   10420:	02010413          	addi	s0,sp,32
   10424:	00500893          	li	a7,5
   10428:	00000073          	ecall
   1042c:	00050793          	mv	a5,a0
   10430:	fef43423          	sd	a5,-24(s0)
   10434:	fe843783          	ld	a5,-24(s0)
   10438:	00078513          	mv	a0,a5
   1043c:	01813083          	ld	ra,24(sp)
   10440:	01013403          	ld	s0,16(sp)
   10444:	02010113          	addi	sp,sp,32
   10448:	00008067          	ret

000000000001044c <__fp_lock>:
   1044c:	00000513          	li	a0,0
   10450:	00008067          	ret

0000000000010454 <stdio_exit_handler>:
   10454:	00013637          	lui	a2,0x13
   10458:	000125b7          	lui	a1,0x12
   1045c:	00013537          	lui	a0,0x13
   10460:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10464:	bc058593          	addi	a1,a1,-1088 # 11bc0 <_fclose_r>
   10468:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   1046c:	3440006f          	j	107b0 <_fwalk_sglue>

0000000000010470 <cleanup_stdio>:
   10470:	00853583          	ld	a1,8(a0)
   10474:	ff010113          	addi	sp,sp,-16
   10478:	00813023          	sd	s0,0(sp)
   1047c:	00113423          	sd	ra,8(sp)
   10480:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   10484:	00050413          	mv	s0,a0
   10488:	00f58463          	beq	a1,a5,10490 <cleanup_stdio+0x20>
   1048c:	734010ef          	jal	11bc0 <_fclose_r>
   10490:	01043583          	ld	a1,16(s0)
   10494:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10498:	00f58663          	beq	a1,a5,104a4 <cleanup_stdio+0x34>
   1049c:	00040513          	mv	a0,s0
   104a0:	720010ef          	jal	11bc0 <_fclose_r>
   104a4:	01843583          	ld	a1,24(s0)
   104a8:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   104ac:	00f58c63          	beq	a1,a5,104c4 <cleanup_stdio+0x54>
   104b0:	00040513          	mv	a0,s0
   104b4:	00013403          	ld	s0,0(sp)
   104b8:	00813083          	ld	ra,8(sp)
   104bc:	01010113          	addi	sp,sp,16
   104c0:	7000106f          	j	11bc0 <_fclose_r>
   104c4:	00813083          	ld	ra,8(sp)
   104c8:	00013403          	ld	s0,0(sp)
   104cc:	01010113          	addi	sp,sp,16
   104d0:	00008067          	ret

00000000000104d4 <__fp_unlock>:
   104d4:	00000513          	li	a0,0
   104d8:	00008067          	ret

00000000000104dc <global_stdio_init.part.0>:
   104dc:	fd010113          	addi	sp,sp,-48
   104e0:	02813023          	sd	s0,32(sp)
   104e4:	000107b7          	lui	a5,0x10
   104e8:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   104ec:	02113423          	sd	ra,40(sp)
   104f0:	00913c23          	sd	s1,24(sp)
   104f4:	01213823          	sd	s2,16(sp)
   104f8:	01313423          	sd	s3,8(sp)
   104fc:	01413023          	sd	s4,0(sp)
   10500:	00400713          	li	a4,4
   10504:	45478793          	addi	a5,a5,1108 # 10454 <stdio_exit_handler>
   10508:	00800613          	li	a2,8
   1050c:	00000593          	li	a1,0
   10510:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10514:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10518:	00e42823          	sw	a4,16(s0)
   1051c:	00043023          	sd	zero,0(s0)
   10520:	00043423          	sd	zero,8(s0)
   10524:	0a042623          	sw	zero,172(s0)
   10528:	00043c23          	sd	zero,24(s0)
   1052c:	02042023          	sw	zero,32(s0)
   10530:	02042423          	sw	zero,40(s0)
   10534:	7b8000ef          	jal	10cec <memset>
   10538:	000107b7          	lui	a5,0x10
   1053c:	00011a37          	lui	s4,0x11
   10540:	000119b7          	lui	s3,0x11
   10544:	00011937          	lui	s2,0x11
   10548:	000114b7          	lui	s1,0x11
   1054c:	880a0a13          	addi	s4,s4,-1920 # 10880 <__sread>
   10550:	8e498993          	addi	s3,s3,-1820 # 108e4 <__swrite>
   10554:	96c90913          	addi	s2,s2,-1684 # 1096c <__sseek>
   10558:	9d048493          	addi	s1,s1,-1584 # 109d0 <__sclose>
   1055c:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10560:	00800613          	li	a2,8
   10564:	00000593          	li	a1,0
   10568:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   1056c:	0cf42023          	sw	a5,192(s0)
   10570:	03443c23          	sd	s4,56(s0)
   10574:	05343023          	sd	s3,64(s0)
   10578:	05243423          	sd	s2,72(s0)
   1057c:	04943823          	sd	s1,80(s0)
   10580:	02843823          	sd	s0,48(s0)
   10584:	0a043823          	sd	zero,176(s0)
   10588:	0a043c23          	sd	zero,184(s0)
   1058c:	14042e23          	sw	zero,348(s0)
   10590:	0c043423          	sd	zero,200(s0)
   10594:	0c042823          	sw	zero,208(s0)
   10598:	0c042c23          	sw	zero,216(s0)
   1059c:	750000ef          	jal	10cec <memset>
   105a0:	000207b7          	lui	a5,0x20
   105a4:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   105a8:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   105ac:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   105b0:	00800613          	li	a2,8
   105b4:	00000593          	li	a1,0
   105b8:	0f443423          	sd	s4,232(s0)
   105bc:	0f343823          	sd	s3,240(s0)
   105c0:	0f243c23          	sd	s2,248(s0)
   105c4:	10943023          	sd	s1,256(s0)
   105c8:	16f42823          	sw	a5,368(s0)
   105cc:	16043023          	sd	zero,352(s0)
   105d0:	16043423          	sd	zero,360(s0)
   105d4:	20042623          	sw	zero,524(s0)
   105d8:	16043c23          	sd	zero,376(s0)
   105dc:	18042023          	sw	zero,384(s0)
   105e0:	18042423          	sw	zero,392(s0)
   105e4:	0ee43023          	sd	a4,224(s0)
   105e8:	704000ef          	jal	10cec <memset>
   105ec:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   105f0:	19443c23          	sd	s4,408(s0)
   105f4:	1b343023          	sd	s3,416(s0)
   105f8:	1b243423          	sd	s2,424(s0)
   105fc:	1a943823          	sd	s1,432(s0)
   10600:	02813083          	ld	ra,40(sp)
   10604:	18f43823          	sd	a5,400(s0)
   10608:	02013403          	ld	s0,32(sp)
   1060c:	01813483          	ld	s1,24(sp)
   10610:	01013903          	ld	s2,16(sp)
   10614:	00813983          	ld	s3,8(sp)
   10618:	00013a03          	ld	s4,0(sp)
   1061c:	03010113          	addi	sp,sp,48
   10620:	00008067          	ret

0000000000010624 <__sfp>:
   10624:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10628:	fe010113          	addi	sp,sp,-32
   1062c:	01213023          	sd	s2,0(sp)
   10630:	00113c23          	sd	ra,24(sp)
   10634:	00813823          	sd	s0,16(sp)
   10638:	00913423          	sd	s1,8(sp)
   1063c:	00050913          	mv	s2,a0
   10640:	0e078e63          	beqz	a5,1073c <__sfp+0x118>
   10644:	000134b7          	lui	s1,0x13
   10648:	01848493          	addi	s1,s1,24 # 13018 <__sglue>
   1064c:	0084a703          	lw	a4,8(s1)
   10650:	0104b403          	ld	s0,16(s1)
   10654:	08e05c63          	blez	a4,106ec <__sfp+0xc8>
   10658:	02071713          	slli	a4,a4,0x20
   1065c:	02075713          	srli	a4,a4,0x20
   10660:	00171793          	slli	a5,a4,0x1
   10664:	00e787b3          	add	a5,a5,a4
   10668:	00279793          	slli	a5,a5,0x2
   1066c:	40e787b3          	sub	a5,a5,a4
   10670:	00479793          	slli	a5,a5,0x4
   10674:	00f407b3          	add	a5,s0,a5
   10678:	00c0006f          	j	10684 <__sfp+0x60>
   1067c:	0b040413          	addi	s0,s0,176
   10680:	06f40663          	beq	s0,a5,106ec <__sfp+0xc8>
   10684:	01041703          	lh	a4,16(s0)
   10688:	fe071ae3          	bnez	a4,1067c <__sfp+0x58>
   1068c:	ffff07b7          	lui	a5,0xffff0
   10690:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10694:	0a042623          	sw	zero,172(s0)
   10698:	00043023          	sd	zero,0(s0)
   1069c:	00043423          	sd	zero,8(s0)
   106a0:	00043c23          	sd	zero,24(s0)
   106a4:	02042023          	sw	zero,32(s0)
   106a8:	02042423          	sw	zero,40(s0)
   106ac:	00f42823          	sw	a5,16(s0)
   106b0:	00800613          	li	a2,8
   106b4:	00000593          	li	a1,0
   106b8:	0a440513          	addi	a0,s0,164
   106bc:	630000ef          	jal	10cec <memset>
   106c0:	04043c23          	sd	zero,88(s0)
   106c4:	06042023          	sw	zero,96(s0)
   106c8:	06043c23          	sd	zero,120(s0)
   106cc:	08042023          	sw	zero,128(s0)
   106d0:	01813083          	ld	ra,24(sp)
   106d4:	00040513          	mv	a0,s0
   106d8:	01013403          	ld	s0,16(sp)
   106dc:	00813483          	ld	s1,8(sp)
   106e0:	00013903          	ld	s2,0(sp)
   106e4:	02010113          	addi	sp,sp,32
   106e8:	00008067          	ret
   106ec:	0004b403          	ld	s0,0(s1)
   106f0:	00040663          	beqz	s0,106fc <__sfp+0xd8>
   106f4:	00040493          	mv	s1,s0
   106f8:	f55ff06f          	j	1064c <__sfp+0x28>
   106fc:	2d800593          	li	a1,728
   10700:	00090513          	mv	a0,s2
   10704:	455000ef          	jal	11358 <_malloc_r>
   10708:	00050413          	mv	s0,a0
   1070c:	02050c63          	beqz	a0,10744 <__sfp+0x120>
   10710:	00400793          	li	a5,4
   10714:	01850513          	addi	a0,a0,24
   10718:	00043023          	sd	zero,0(s0)
   1071c:	00f42423          	sw	a5,8(s0)
   10720:	00a43823          	sd	a0,16(s0)
   10724:	2c000613          	li	a2,704
   10728:	00000593          	li	a1,0
   1072c:	5c0000ef          	jal	10cec <memset>
   10730:	0084b023          	sd	s0,0(s1)
   10734:	00040493          	mv	s1,s0
   10738:	f15ff06f          	j	1064c <__sfp+0x28>
   1073c:	da1ff0ef          	jal	104dc <global_stdio_init.part.0>
   10740:	f05ff06f          	j	10644 <__sfp+0x20>
   10744:	0004b023          	sd	zero,0(s1)
   10748:	00c00793          	li	a5,12
   1074c:	00f92023          	sw	a5,0(s2)
   10750:	f81ff06f          	j	106d0 <__sfp+0xac>

0000000000010754 <__sinit>:
   10754:	04853783          	ld	a5,72(a0)
   10758:	00078463          	beqz	a5,10760 <__sinit+0xc>
   1075c:	00008067          	ret
   10760:	000107b7          	lui	a5,0x10
   10764:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10768:	47078793          	addi	a5,a5,1136 # 10470 <cleanup_stdio>
   1076c:	04f53423          	sd	a5,72(a0)
   10770:	fe0716e3          	bnez	a4,1075c <__sinit+0x8>
   10774:	d69ff06f          	j	104dc <global_stdio_init.part.0>

0000000000010778 <__sfp_lock_acquire>:
   10778:	00008067          	ret

000000000001077c <__sfp_lock_release>:
   1077c:	00008067          	ret

0000000000010780 <__fp_lock_all>:
   10780:	00013637          	lui	a2,0x13
   10784:	000105b7          	lui	a1,0x10
   10788:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1078c:	44c58593          	addi	a1,a1,1100 # 1044c <__fp_lock>
   10790:	00000513          	li	a0,0
   10794:	01c0006f          	j	107b0 <_fwalk_sglue>

0000000000010798 <__fp_unlock_all>:
   10798:	00013637          	lui	a2,0x13
   1079c:	000105b7          	lui	a1,0x10
   107a0:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   107a4:	4d458593          	addi	a1,a1,1236 # 104d4 <__fp_unlock>
   107a8:	00000513          	li	a0,0
   107ac:	0040006f          	j	107b0 <_fwalk_sglue>

00000000000107b0 <_fwalk_sglue>:
   107b0:	fb010113          	addi	sp,sp,-80
   107b4:	03213823          	sd	s2,48(sp)
   107b8:	03313423          	sd	s3,40(sp)
   107bc:	03413023          	sd	s4,32(sp)
   107c0:	01513c23          	sd	s5,24(sp)
   107c4:	01613823          	sd	s6,16(sp)
   107c8:	01713423          	sd	s7,8(sp)
   107cc:	04113423          	sd	ra,72(sp)
   107d0:	04813023          	sd	s0,64(sp)
   107d4:	02913c23          	sd	s1,56(sp)
   107d8:	00050993          	mv	s3,a0
   107dc:	00058a93          	mv	s5,a1
   107e0:	00060913          	mv	s2,a2
   107e4:	00000b13          	li	s6,0
   107e8:	00100b93          	li	s7,1
   107ec:	fff00a13          	li	s4,-1
   107f0:	00892783          	lw	a5,8(s2)
   107f4:	01093403          	ld	s0,16(s2)
   107f8:	04f05863          	blez	a5,10848 <_fwalk_sglue+0x98>
   107fc:	02079793          	slli	a5,a5,0x20
   10800:	0207d793          	srli	a5,a5,0x20
   10804:	00179493          	slli	s1,a5,0x1
   10808:	00f484b3          	add	s1,s1,a5
   1080c:	00249493          	slli	s1,s1,0x2
   10810:	40f484b3          	sub	s1,s1,a5
   10814:	00449493          	slli	s1,s1,0x4
   10818:	009404b3          	add	s1,s0,s1
   1081c:	01045783          	lhu	a5,16(s0)
   10820:	02fbf063          	bgeu	s7,a5,10840 <_fwalk_sglue+0x90>
   10824:	01241783          	lh	a5,18(s0)
   10828:	00040593          	mv	a1,s0
   1082c:	00098513          	mv	a0,s3
   10830:	01478863          	beq	a5,s4,10840 <_fwalk_sglue+0x90>
   10834:	000a80e7          	jalr	s5
   10838:	01656b33          	or	s6,a0,s6
   1083c:	000b0b1b          	sext.w	s6,s6
   10840:	0b040413          	addi	s0,s0,176
   10844:	fc941ce3          	bne	s0,s1,1081c <_fwalk_sglue+0x6c>
   10848:	00093903          	ld	s2,0(s2)
   1084c:	fa0912e3          	bnez	s2,107f0 <_fwalk_sglue+0x40>
   10850:	04813083          	ld	ra,72(sp)
   10854:	04013403          	ld	s0,64(sp)
   10858:	03813483          	ld	s1,56(sp)
   1085c:	03013903          	ld	s2,48(sp)
   10860:	02813983          	ld	s3,40(sp)
   10864:	02013a03          	ld	s4,32(sp)
   10868:	01813a83          	ld	s5,24(sp)
   1086c:	00813b83          	ld	s7,8(sp)
   10870:	000b0513          	mv	a0,s6
   10874:	01013b03          	ld	s6,16(sp)
   10878:	05010113          	addi	sp,sp,80
   1087c:	00008067          	ret

0000000000010880 <__sread>:
   10880:	ff010113          	addi	sp,sp,-16
   10884:	00813023          	sd	s0,0(sp)
   10888:	00058413          	mv	s0,a1
   1088c:	01259583          	lh	a1,18(a1)
   10890:	00113423          	sd	ra,8(sp)
   10894:	2ec000ef          	jal	10b80 <_read_r>
   10898:	02054063          	bltz	a0,108b8 <__sread+0x38>
   1089c:	09043783          	ld	a5,144(s0)
   108a0:	00813083          	ld	ra,8(sp)
   108a4:	00a787b3          	add	a5,a5,a0
   108a8:	08f43823          	sd	a5,144(s0)
   108ac:	00013403          	ld	s0,0(sp)
   108b0:	01010113          	addi	sp,sp,16
   108b4:	00008067          	ret
   108b8:	01045783          	lhu	a5,16(s0)
   108bc:	fffff737          	lui	a4,0xfffff
   108c0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   108c4:	00e7f7b3          	and	a5,a5,a4
   108c8:	00813083          	ld	ra,8(sp)
   108cc:	00f41823          	sh	a5,16(s0)
   108d0:	00013403          	ld	s0,0(sp)
   108d4:	01010113          	addi	sp,sp,16
   108d8:	00008067          	ret

00000000000108dc <__seofread>:
   108dc:	00000513          	li	a0,0
   108e0:	00008067          	ret

00000000000108e4 <__swrite>:
   108e4:	01059783          	lh	a5,16(a1)
   108e8:	fd010113          	addi	sp,sp,-48
   108ec:	02813023          	sd	s0,32(sp)
   108f0:	00913c23          	sd	s1,24(sp)
   108f4:	01213823          	sd	s2,16(sp)
   108f8:	01313423          	sd	s3,8(sp)
   108fc:	02113423          	sd	ra,40(sp)
   10900:	1007f713          	andi	a4,a5,256
   10904:	00058413          	mv	s0,a1
   10908:	00060913          	mv	s2,a2
   1090c:	00068993          	mv	s3,a3
   10910:	00050493          	mv	s1,a0
   10914:	04071063          	bnez	a4,10954 <__swrite+0x70>
   10918:	fffff737          	lui	a4,0xfffff
   1091c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10920:	00e7f7b3          	and	a5,a5,a4
   10924:	01241583          	lh	a1,18(s0)
   10928:	00f41823          	sh	a5,16(s0)
   1092c:	02013403          	ld	s0,32(sp)
   10930:	02813083          	ld	ra,40(sp)
   10934:	00098693          	mv	a3,s3
   10938:	00090613          	mv	a2,s2
   1093c:	00813983          	ld	s3,8(sp)
   10940:	01013903          	ld	s2,16(sp)
   10944:	00048513          	mv	a0,s1
   10948:	01813483          	ld	s1,24(sp)
   1094c:	03010113          	addi	sp,sp,48
   10950:	2980006f          	j	10be8 <_write_r>
   10954:	01259583          	lh	a1,18(a1)
   10958:	00200693          	li	a3,2
   1095c:	00000613          	li	a2,0
   10960:	1b8000ef          	jal	10b18 <_lseek_r>
   10964:	01041783          	lh	a5,16(s0)
   10968:	fb1ff06f          	j	10918 <__swrite+0x34>

000000000001096c <__sseek>:
   1096c:	ff010113          	addi	sp,sp,-16
   10970:	00813023          	sd	s0,0(sp)
   10974:	00058413          	mv	s0,a1
   10978:	01259583          	lh	a1,18(a1)
   1097c:	00113423          	sd	ra,8(sp)
   10980:	198000ef          	jal	10b18 <_lseek_r>
   10984:	fff00713          	li	a4,-1
   10988:	01041783          	lh	a5,16(s0)
   1098c:	02e50263          	beq	a0,a4,109b0 <__sseek+0x44>
   10990:	00001737          	lui	a4,0x1
   10994:	00e7e7b3          	or	a5,a5,a4
   10998:	00813083          	ld	ra,8(sp)
   1099c:	08a43823          	sd	a0,144(s0)
   109a0:	00f41823          	sh	a5,16(s0)
   109a4:	00013403          	ld	s0,0(sp)
   109a8:	01010113          	addi	sp,sp,16
   109ac:	00008067          	ret
   109b0:	fffff737          	lui	a4,0xfffff
   109b4:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   109b8:	00e7f7b3          	and	a5,a5,a4
   109bc:	00813083          	ld	ra,8(sp)
   109c0:	00f41823          	sh	a5,16(s0)
   109c4:	00013403          	ld	s0,0(sp)
   109c8:	01010113          	addi	sp,sp,16
   109cc:	00008067          	ret

00000000000109d0 <__sclose>:
   109d0:	01259583          	lh	a1,18(a1)
   109d4:	0040006f          	j	109d8 <_close_r>

00000000000109d8 <_close_r>:
   109d8:	fe010113          	addi	sp,sp,-32
   109dc:	00813823          	sd	s0,16(sp)
   109e0:	00913423          	sd	s1,8(sp)
   109e4:	00050413          	mv	s0,a0
   109e8:	00058513          	mv	a0,a1
   109ec:	00113c23          	sd	ra,24(sp)
   109f0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   109f4:	774010ef          	jal	12168 <_close>
   109f8:	fff00793          	li	a5,-1
   109fc:	00f50c63          	beq	a0,a5,10a14 <_close_r+0x3c>
   10a00:	01813083          	ld	ra,24(sp)
   10a04:	01013403          	ld	s0,16(sp)
   10a08:	00813483          	ld	s1,8(sp)
   10a0c:	02010113          	addi	sp,sp,32
   10a10:	00008067          	ret
   10a14:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a18:	fe0784e3          	beqz	a5,10a00 <_close_r+0x28>
   10a1c:	01813083          	ld	ra,24(sp)
   10a20:	00f42023          	sw	a5,0(s0)
   10a24:	01013403          	ld	s0,16(sp)
   10a28:	00813483          	ld	s1,8(sp)
   10a2c:	02010113          	addi	sp,sp,32
   10a30:	00008067          	ret

0000000000010a34 <_reclaim_reent>:
   10a34:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10a38:	0ca78e63          	beq	a5,a0,10b14 <_reclaim_reent+0xe0>
   10a3c:	06853583          	ld	a1,104(a0)
   10a40:	fd010113          	addi	sp,sp,-48
   10a44:	00913c23          	sd	s1,24(sp)
   10a48:	02113423          	sd	ra,40(sp)
   10a4c:	02813023          	sd	s0,32(sp)
   10a50:	00050493          	mv	s1,a0
   10a54:	04058863          	beqz	a1,10aa4 <_reclaim_reent+0x70>
   10a58:	01213823          	sd	s2,16(sp)
   10a5c:	01313423          	sd	s3,8(sp)
   10a60:	00000913          	li	s2,0
   10a64:	20000993          	li	s3,512
   10a68:	012587b3          	add	a5,a1,s2
   10a6c:	0007b403          	ld	s0,0(a5)
   10a70:	00040e63          	beqz	s0,10a8c <_reclaim_reent+0x58>
   10a74:	00040593          	mv	a1,s0
   10a78:	00043403          	ld	s0,0(s0)
   10a7c:	00048513          	mv	a0,s1
   10a80:	5c8000ef          	jal	11048 <_free_r>
   10a84:	fe0418e3          	bnez	s0,10a74 <_reclaim_reent+0x40>
   10a88:	0684b583          	ld	a1,104(s1)
   10a8c:	00890913          	addi	s2,s2,8
   10a90:	fd391ce3          	bne	s2,s3,10a68 <_reclaim_reent+0x34>
   10a94:	00048513          	mv	a0,s1
   10a98:	5b0000ef          	jal	11048 <_free_r>
   10a9c:	01013903          	ld	s2,16(sp)
   10aa0:	00813983          	ld	s3,8(sp)
   10aa4:	0504b583          	ld	a1,80(s1)
   10aa8:	00058663          	beqz	a1,10ab4 <_reclaim_reent+0x80>
   10aac:	00048513          	mv	a0,s1
   10ab0:	598000ef          	jal	11048 <_free_r>
   10ab4:	0604b403          	ld	s0,96(s1)
   10ab8:	00040c63          	beqz	s0,10ad0 <_reclaim_reent+0x9c>
   10abc:	00040593          	mv	a1,s0
   10ac0:	00043403          	ld	s0,0(s0)
   10ac4:	00048513          	mv	a0,s1
   10ac8:	580000ef          	jal	11048 <_free_r>
   10acc:	fe0418e3          	bnez	s0,10abc <_reclaim_reent+0x88>
   10ad0:	0784b583          	ld	a1,120(s1)
   10ad4:	00058663          	beqz	a1,10ae0 <_reclaim_reent+0xac>
   10ad8:	00048513          	mv	a0,s1
   10adc:	56c000ef          	jal	11048 <_free_r>
   10ae0:	0484b783          	ld	a5,72(s1)
   10ae4:	00078e63          	beqz	a5,10b00 <_reclaim_reent+0xcc>
   10ae8:	02013403          	ld	s0,32(sp)
   10aec:	02813083          	ld	ra,40(sp)
   10af0:	00048513          	mv	a0,s1
   10af4:	01813483          	ld	s1,24(sp)
   10af8:	03010113          	addi	sp,sp,48
   10afc:	00078067          	jr	a5
   10b00:	02813083          	ld	ra,40(sp)
   10b04:	02013403          	ld	s0,32(sp)
   10b08:	01813483          	ld	s1,24(sp)
   10b0c:	03010113          	addi	sp,sp,48
   10b10:	00008067          	ret
   10b14:	00008067          	ret

0000000000010b18 <_lseek_r>:
   10b18:	fe010113          	addi	sp,sp,-32
   10b1c:	00058713          	mv	a4,a1
   10b20:	00813823          	sd	s0,16(sp)
   10b24:	00913423          	sd	s1,8(sp)
   10b28:	00060593          	mv	a1,a2
   10b2c:	00050413          	mv	s0,a0
   10b30:	00068613          	mv	a2,a3
   10b34:	00070513          	mv	a0,a4
   10b38:	00113c23          	sd	ra,24(sp)
   10b3c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10b40:	69c010ef          	jal	121dc <_lseek>
   10b44:	fff00793          	li	a5,-1
   10b48:	00f50c63          	beq	a0,a5,10b60 <_lseek_r+0x48>
   10b4c:	01813083          	ld	ra,24(sp)
   10b50:	01013403          	ld	s0,16(sp)
   10b54:	00813483          	ld	s1,8(sp)
   10b58:	02010113          	addi	sp,sp,32
   10b5c:	00008067          	ret
   10b60:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10b64:	fe0784e3          	beqz	a5,10b4c <_lseek_r+0x34>
   10b68:	01813083          	ld	ra,24(sp)
   10b6c:	00f42023          	sw	a5,0(s0)
   10b70:	01013403          	ld	s0,16(sp)
   10b74:	00813483          	ld	s1,8(sp)
   10b78:	02010113          	addi	sp,sp,32
   10b7c:	00008067          	ret

0000000000010b80 <_read_r>:
   10b80:	fe010113          	addi	sp,sp,-32
   10b84:	00058713          	mv	a4,a1
   10b88:	00813823          	sd	s0,16(sp)
   10b8c:	00913423          	sd	s1,8(sp)
   10b90:	00060593          	mv	a1,a2
   10b94:	00050413          	mv	s0,a0
   10b98:	00068613          	mv	a2,a3
   10b9c:	00070513          	mv	a0,a4
   10ba0:	00113c23          	sd	ra,24(sp)
   10ba4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10ba8:	678010ef          	jal	12220 <_read>
   10bac:	fff00793          	li	a5,-1
   10bb0:	00f50c63          	beq	a0,a5,10bc8 <_read_r+0x48>
   10bb4:	01813083          	ld	ra,24(sp)
   10bb8:	01013403          	ld	s0,16(sp)
   10bbc:	00813483          	ld	s1,8(sp)
   10bc0:	02010113          	addi	sp,sp,32
   10bc4:	00008067          	ret
   10bc8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10bcc:	fe0784e3          	beqz	a5,10bb4 <_read_r+0x34>
   10bd0:	01813083          	ld	ra,24(sp)
   10bd4:	00f42023          	sw	a5,0(s0)
   10bd8:	01013403          	ld	s0,16(sp)
   10bdc:	00813483          	ld	s1,8(sp)
   10be0:	02010113          	addi	sp,sp,32
   10be4:	00008067          	ret

0000000000010be8 <_write_r>:
   10be8:	fe010113          	addi	sp,sp,-32
   10bec:	00058713          	mv	a4,a1
   10bf0:	00813823          	sd	s0,16(sp)
   10bf4:	00913423          	sd	s1,8(sp)
   10bf8:	00060593          	mv	a1,a2
   10bfc:	00050413          	mv	s0,a0
   10c00:	00068613          	mv	a2,a3
   10c04:	00070513          	mv	a0,a4
   10c08:	00113c23          	sd	ra,24(sp)
   10c0c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10c10:	6cc010ef          	jal	122dc <_write>
   10c14:	fff00793          	li	a5,-1
   10c18:	00f50c63          	beq	a0,a5,10c30 <_write_r+0x48>
   10c1c:	01813083          	ld	ra,24(sp)
   10c20:	01013403          	ld	s0,16(sp)
   10c24:	00813483          	ld	s1,8(sp)
   10c28:	02010113          	addi	sp,sp,32
   10c2c:	00008067          	ret
   10c30:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10c34:	fe0784e3          	beqz	a5,10c1c <_write_r+0x34>
   10c38:	01813083          	ld	ra,24(sp)
   10c3c:	00f42023          	sw	a5,0(s0)
   10c40:	01013403          	ld	s0,16(sp)
   10c44:	00813483          	ld	s1,8(sp)
   10c48:	02010113          	addi	sp,sp,32
   10c4c:	00008067          	ret

0000000000010c50 <__libc_init_array>:
   10c50:	fe010113          	addi	sp,sp,-32
   10c54:	00813823          	sd	s0,16(sp)
   10c58:	000137b7          	lui	a5,0x13
   10c5c:	00013437          	lui	s0,0x13
   10c60:	01213023          	sd	s2,0(sp)
   10c64:	00078793          	mv	a5,a5
   10c68:	00040713          	mv	a4,s0
   10c6c:	00113c23          	sd	ra,24(sp)
   10c70:	00913423          	sd	s1,8(sp)
   10c74:	40e78933          	sub	s2,a5,a4
   10c78:	02e78263          	beq	a5,a4,10c9c <__libc_init_array+0x4c>
   10c7c:	40395913          	srai	s2,s2,0x3
   10c80:	00040413          	mv	s0,s0
   10c84:	00000493          	li	s1,0
   10c88:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10c8c:	00148493          	addi	s1,s1,1
   10c90:	00840413          	addi	s0,s0,8
   10c94:	000780e7          	jalr	a5 # 13000 <__init_array_start>
   10c98:	ff24e8e3          	bltu	s1,s2,10c88 <__libc_init_array+0x38>
   10c9c:	000137b7          	lui	a5,0x13
   10ca0:	00013437          	lui	s0,0x13
   10ca4:	01078793          	addi	a5,a5,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10ca8:	00040713          	mv	a4,s0
   10cac:	40e78933          	sub	s2,a5,a4
   10cb0:	40395913          	srai	s2,s2,0x3
   10cb4:	02e78063          	beq	a5,a4,10cd4 <__libc_init_array+0x84>
   10cb8:	00040413          	mv	s0,s0
   10cbc:	00000493          	li	s1,0
   10cc0:	00043783          	ld	a5,0(s0) # 13000 <__init_array_start>
   10cc4:	00148493          	addi	s1,s1,1
   10cc8:	00840413          	addi	s0,s0,8
   10ccc:	000780e7          	jalr	a5
   10cd0:	ff24e8e3          	bltu	s1,s2,10cc0 <__libc_init_array+0x70>
   10cd4:	01813083          	ld	ra,24(sp)
   10cd8:	01013403          	ld	s0,16(sp)
   10cdc:	00813483          	ld	s1,8(sp)
   10ce0:	00013903          	ld	s2,0(sp)
   10ce4:	02010113          	addi	sp,sp,32
   10ce8:	00008067          	ret

0000000000010cec <memset>:
   10cec:	00f00313          	li	t1,15
   10cf0:	00050713          	mv	a4,a0
   10cf4:	02c37a63          	bgeu	t1,a2,10d28 <memset+0x3c>
   10cf8:	00f77793          	andi	a5,a4,15
   10cfc:	0a079063          	bnez	a5,10d9c <memset+0xb0>
   10d00:	06059e63          	bnez	a1,10d7c <memset+0x90>
   10d04:	ff067693          	andi	a3,a2,-16
   10d08:	00f67613          	andi	a2,a2,15
   10d0c:	00e686b3          	add	a3,a3,a4
   10d10:	00b73023          	sd	a1,0(a4)
   10d14:	00b73423          	sd	a1,8(a4)
   10d18:	01070713          	addi	a4,a4,16
   10d1c:	fed76ae3          	bltu	a4,a3,10d10 <memset+0x24>
   10d20:	00061463          	bnez	a2,10d28 <memset+0x3c>
   10d24:	00008067          	ret
   10d28:	40c306b3          	sub	a3,t1,a2
   10d2c:	00269693          	slli	a3,a3,0x2
   10d30:	00000297          	auipc	t0,0x0
   10d34:	005686b3          	add	a3,a3,t0
   10d38:	00c68067          	jr	12(a3)
   10d3c:	00b70723          	sb	a1,14(a4)
   10d40:	00b706a3          	sb	a1,13(a4)
   10d44:	00b70623          	sb	a1,12(a4)
   10d48:	00b705a3          	sb	a1,11(a4)
   10d4c:	00b70523          	sb	a1,10(a4)
   10d50:	00b704a3          	sb	a1,9(a4)
   10d54:	00b70423          	sb	a1,8(a4)
   10d58:	00b703a3          	sb	a1,7(a4)
   10d5c:	00b70323          	sb	a1,6(a4)
   10d60:	00b702a3          	sb	a1,5(a4)
   10d64:	00b70223          	sb	a1,4(a4)
   10d68:	00b701a3          	sb	a1,3(a4)
   10d6c:	00b70123          	sb	a1,2(a4)
   10d70:	00b700a3          	sb	a1,1(a4)
   10d74:	00b70023          	sb	a1,0(a4)
   10d78:	00008067          	ret
   10d7c:	0ff5f593          	zext.b	a1,a1
   10d80:	00859693          	slli	a3,a1,0x8
   10d84:	00d5e5b3          	or	a1,a1,a3
   10d88:	01059693          	slli	a3,a1,0x10
   10d8c:	00d5e5b3          	or	a1,a1,a3
   10d90:	02059693          	slli	a3,a1,0x20
   10d94:	00d5e5b3          	or	a1,a1,a3
   10d98:	f6dff06f          	j	10d04 <memset+0x18>
   10d9c:	00279693          	slli	a3,a5,0x2
   10da0:	00000297          	auipc	t0,0x0
   10da4:	005686b3          	add	a3,a3,t0
   10da8:	00008293          	mv	t0,ra
   10dac:	f98680e7          	jalr	-104(a3)
   10db0:	00028093          	mv	ra,t0
   10db4:	ff078793          	addi	a5,a5,-16
   10db8:	40f70733          	sub	a4,a4,a5
   10dbc:	00f60633          	add	a2,a2,a5
   10dc0:	f6c374e3          	bgeu	t1,a2,10d28 <memset+0x3c>
   10dc4:	f3dff06f          	j	10d00 <memset+0x14>

0000000000010dc8 <__call_exitprocs>:
   10dc8:	fb010113          	addi	sp,sp,-80
   10dcc:	03413023          	sd	s4,32(sp)
   10dd0:	03213823          	sd	s2,48(sp)
   10dd4:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10dd8:	04113423          	sd	ra,72(sp)
   10ddc:	06090c63          	beqz	s2,10e54 <__call_exitprocs+0x8c>
   10de0:	03313423          	sd	s3,40(sp)
   10de4:	01513c23          	sd	s5,24(sp)
   10de8:	01613823          	sd	s6,16(sp)
   10dec:	01713423          	sd	s7,8(sp)
   10df0:	04813023          	sd	s0,64(sp)
   10df4:	02913c23          	sd	s1,56(sp)
   10df8:	01813023          	sd	s8,0(sp)
   10dfc:	00050b13          	mv	s6,a0
   10e00:	00058b93          	mv	s7,a1
   10e04:	fff00993          	li	s3,-1
   10e08:	00100a93          	li	s5,1
   10e0c:	00892483          	lw	s1,8(s2)
   10e10:	fff4841b          	addiw	s0,s1,-1
   10e14:	02044263          	bltz	s0,10e38 <__call_exitprocs+0x70>
   10e18:	00349493          	slli	s1,s1,0x3
   10e1c:	009904b3          	add	s1,s2,s1
   10e20:	040b8463          	beqz	s7,10e68 <__call_exitprocs+0xa0>
   10e24:	2084b783          	ld	a5,520(s1)
   10e28:	05778063          	beq	a5,s7,10e68 <__call_exitprocs+0xa0>
   10e2c:	fff4041b          	addiw	s0,s0,-1
   10e30:	ff848493          	addi	s1,s1,-8
   10e34:	ff3418e3          	bne	s0,s3,10e24 <__call_exitprocs+0x5c>
   10e38:	04013403          	ld	s0,64(sp)
   10e3c:	03813483          	ld	s1,56(sp)
   10e40:	02813983          	ld	s3,40(sp)
   10e44:	01813a83          	ld	s5,24(sp)
   10e48:	01013b03          	ld	s6,16(sp)
   10e4c:	00813b83          	ld	s7,8(sp)
   10e50:	00013c03          	ld	s8,0(sp)
   10e54:	04813083          	ld	ra,72(sp)
   10e58:	03013903          	ld	s2,48(sp)
   10e5c:	02013a03          	ld	s4,32(sp)
   10e60:	05010113          	addi	sp,sp,80
   10e64:	00008067          	ret
   10e68:	00892783          	lw	a5,8(s2)
   10e6c:	0084b683          	ld	a3,8(s1)
   10e70:	fff7879b          	addiw	a5,a5,-1
   10e74:	06878a63          	beq	a5,s0,10ee8 <__call_exitprocs+0x120>
   10e78:	0004b423          	sd	zero,8(s1)
   10e7c:	02068663          	beqz	a3,10ea8 <__call_exitprocs+0xe0>
   10e80:	31092783          	lw	a5,784(s2)
   10e84:	008a973b          	sllw	a4,s5,s0
   10e88:	00892c03          	lw	s8,8(s2)
   10e8c:	00e7f7b3          	and	a5,a5,a4
   10e90:	02079463          	bnez	a5,10eb8 <__call_exitprocs+0xf0>
   10e94:	000680e7          	jalr	a3
   10e98:	00892703          	lw	a4,8(s2)
   10e9c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10ea0:	03871e63          	bne	a4,s8,10edc <__call_exitprocs+0x114>
   10ea4:	03279c63          	bne	a5,s2,10edc <__call_exitprocs+0x114>
   10ea8:	fff4041b          	addiw	s0,s0,-1
   10eac:	ff848493          	addi	s1,s1,-8
   10eb0:	f73418e3          	bne	s0,s3,10e20 <__call_exitprocs+0x58>
   10eb4:	f85ff06f          	j	10e38 <__call_exitprocs+0x70>
   10eb8:	31492783          	lw	a5,788(s2)
   10ebc:	1084b583          	ld	a1,264(s1)
   10ec0:	00f77733          	and	a4,a4,a5
   10ec4:	02071663          	bnez	a4,10ef0 <__call_exitprocs+0x128>
   10ec8:	000b0513          	mv	a0,s6
   10ecc:	000680e7          	jalr	a3
   10ed0:	00892703          	lw	a4,8(s2)
   10ed4:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10ed8:	fd8706e3          	beq	a4,s8,10ea4 <__call_exitprocs+0xdc>
   10edc:	f4078ee3          	beqz	a5,10e38 <__call_exitprocs+0x70>
   10ee0:	00078913          	mv	s2,a5
   10ee4:	f29ff06f          	j	10e0c <__call_exitprocs+0x44>
   10ee8:	00892423          	sw	s0,8(s2)
   10eec:	f91ff06f          	j	10e7c <__call_exitprocs+0xb4>
   10ef0:	00058513          	mv	a0,a1
   10ef4:	000680e7          	jalr	a3
   10ef8:	fa1ff06f          	j	10e98 <__call_exitprocs+0xd0>

0000000000010efc <atexit>:
   10efc:	00050593          	mv	a1,a0
   10f00:	00000693          	li	a3,0
   10f04:	00000613          	li	a2,0
   10f08:	00000513          	li	a0,0
   10f0c:	1bc0106f          	j	120c8 <__register_exitproc>

0000000000010f10 <_malloc_trim_r>:
   10f10:	fd010113          	addi	sp,sp,-48
   10f14:	01313423          	sd	s3,8(sp)
   10f18:	000139b7          	lui	s3,0x13
   10f1c:	02813023          	sd	s0,32(sp)
   10f20:	00913c23          	sd	s1,24(sp)
   10f24:	01213823          	sd	s2,16(sp)
   10f28:	01413023          	sd	s4,0(sp)
   10f2c:	02113423          	sd	ra,40(sp)
   10f30:	00058a13          	mv	s4,a1
   10f34:	00050913          	mv	s2,a0
   10f38:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   10f3c:	47d000ef          	jal	11bb8 <__malloc_lock>
   10f40:	0109b783          	ld	a5,16(s3)
   10f44:	00001437          	lui	s0,0x1
   10f48:	fdf40413          	addi	s0,s0,-33 # fdf <exit-0xf141>
   10f4c:	0087b483          	ld	s1,8(a5)
   10f50:	000017b7          	lui	a5,0x1
   10f54:	ffc4f493          	andi	s1,s1,-4
   10f58:	00848433          	add	s0,s1,s0
   10f5c:	41440433          	sub	s0,s0,s4
   10f60:	00c45413          	srli	s0,s0,0xc
   10f64:	fff40413          	addi	s0,s0,-1
   10f68:	00c41413          	slli	s0,s0,0xc
   10f6c:	00f44e63          	blt	s0,a5,10f88 <_malloc_trim_r+0x78>
   10f70:	00000593          	li	a1,0
   10f74:	00090513          	mv	a0,s2
   10f78:	098010ef          	jal	12010 <_sbrk_r>
   10f7c:	0109b783          	ld	a5,16(s3)
   10f80:	009787b3          	add	a5,a5,s1
   10f84:	02f50863          	beq	a0,a5,10fb4 <_malloc_trim_r+0xa4>
   10f88:	00090513          	mv	a0,s2
   10f8c:	431000ef          	jal	11bbc <__malloc_unlock>
   10f90:	02813083          	ld	ra,40(sp)
   10f94:	02013403          	ld	s0,32(sp)
   10f98:	01813483          	ld	s1,24(sp)
   10f9c:	01013903          	ld	s2,16(sp)
   10fa0:	00813983          	ld	s3,8(sp)
   10fa4:	00013a03          	ld	s4,0(sp)
   10fa8:	00000513          	li	a0,0
   10fac:	03010113          	addi	sp,sp,48
   10fb0:	00008067          	ret
   10fb4:	408005b3          	neg	a1,s0
   10fb8:	00090513          	mv	a0,s2
   10fbc:	054010ef          	jal	12010 <_sbrk_r>
   10fc0:	fff00793          	li	a5,-1
   10fc4:	04f50863          	beq	a0,a5,11014 <_malloc_trim_r+0x104>
   10fc8:	42018793          	addi	a5,gp,1056 # 13c38 <__malloc_current_mallinfo>
   10fcc:	0109b683          	ld	a3,16(s3)
   10fd0:	0007a703          	lw	a4,0(a5) # 1000 <exit-0xf120>
   10fd4:	408484b3          	sub	s1,s1,s0
   10fd8:	0014e493          	ori	s1,s1,1
   10fdc:	00090513          	mv	a0,s2
   10fe0:	4087073b          	subw	a4,a4,s0
   10fe4:	0096b423          	sd	s1,8(a3)
   10fe8:	00e7a023          	sw	a4,0(a5)
   10fec:	3d1000ef          	jal	11bbc <__malloc_unlock>
   10ff0:	02813083          	ld	ra,40(sp)
   10ff4:	02013403          	ld	s0,32(sp)
   10ff8:	01813483          	ld	s1,24(sp)
   10ffc:	01013903          	ld	s2,16(sp)
   11000:	00813983          	ld	s3,8(sp)
   11004:	00013a03          	ld	s4,0(sp)
   11008:	00100513          	li	a0,1
   1100c:	03010113          	addi	sp,sp,48
   11010:	00008067          	ret
   11014:	00000593          	li	a1,0
   11018:	00090513          	mv	a0,s2
   1101c:	7f5000ef          	jal	12010 <_sbrk_r>
   11020:	0109b703          	ld	a4,16(s3)
   11024:	01f00693          	li	a3,31
   11028:	40e507b3          	sub	a5,a0,a4
   1102c:	f4f6dee3          	bge	a3,a5,10f88 <_malloc_trim_r+0x78>
   11030:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11034:	0017e793          	ori	a5,a5,1
   11038:	40c50533          	sub	a0,a0,a2
   1103c:	00f73423          	sd	a5,8(a4)
   11040:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   11044:	f45ff06f          	j	10f88 <_malloc_trim_r+0x78>

0000000000011048 <_free_r>:
   11048:	12058c63          	beqz	a1,11180 <_free_r+0x138>
   1104c:	fe010113          	addi	sp,sp,-32
   11050:	00813823          	sd	s0,16(sp)
   11054:	00913423          	sd	s1,8(sp)
   11058:	00058413          	mv	s0,a1
   1105c:	00050493          	mv	s1,a0
   11060:	00113c23          	sd	ra,24(sp)
   11064:	355000ef          	jal	11bb8 <__malloc_lock>
   11068:	ff843503          	ld	a0,-8(s0)
   1106c:	ff040713          	addi	a4,s0,-16
   11070:	000135b7          	lui	a1,0x13
   11074:	ffe57793          	andi	a5,a0,-2
   11078:	00f70633          	add	a2,a4,a5
   1107c:	18858593          	addi	a1,a1,392 # 13188 <__malloc_av_>
   11080:	00863683          	ld	a3,8(a2)
   11084:	0105b803          	ld	a6,16(a1)
   11088:	00157893          	andi	a7,a0,1
   1108c:	ffc6f693          	andi	a3,a3,-4
   11090:	1ac80463          	beq	a6,a2,11238 <_free_r+0x1f0>
   11094:	00d63423          	sd	a3,8(a2)
   11098:	00d60833          	add	a6,a2,a3
   1109c:	00883803          	ld	a6,8(a6)
   110a0:	00187813          	andi	a6,a6,1
   110a4:	0a089263          	bnez	a7,11148 <_free_r+0x100>
   110a8:	ff043303          	ld	t1,-16(s0)
   110ac:	00013537          	lui	a0,0x13
   110b0:	19850513          	addi	a0,a0,408 # 13198 <__malloc_av_+0x10>
   110b4:	40670733          	sub	a4,a4,t1
   110b8:	01073883          	ld	a7,16(a4)
   110bc:	006787b3          	add	a5,a5,t1
   110c0:	14a88663          	beq	a7,a0,1120c <_free_r+0x1c4>
   110c4:	01873303          	ld	t1,24(a4)
   110c8:	0068bc23          	sd	t1,24(a7)
   110cc:	01133823          	sd	a7,16(t1) # 10220 <main+0x4>
   110d0:	1a080863          	beqz	a6,11280 <_free_r+0x238>
   110d4:	0017e693          	ori	a3,a5,1
   110d8:	00d73423          	sd	a3,8(a4)
   110dc:	00f63023          	sd	a5,0(a2)
   110e0:	1ff00693          	li	a3,511
   110e4:	0af6ea63          	bltu	a3,a5,11198 <_free_r+0x150>
   110e8:	0037d793          	srli	a5,a5,0x3
   110ec:	0007879b          	sext.w	a5,a5
   110f0:	0017869b          	addiw	a3,a5,1
   110f4:	0016969b          	slliw	a3,a3,0x1
   110f8:	00369693          	slli	a3,a3,0x3
   110fc:	0085b803          	ld	a6,8(a1)
   11100:	00d586b3          	add	a3,a1,a3
   11104:	0006b503          	ld	a0,0(a3)
   11108:	00100613          	li	a2,1
   1110c:	4027d79b          	sraiw	a5,a5,0x2
   11110:	00f617b3          	sll	a5,a2,a5
   11114:	0107e7b3          	or	a5,a5,a6
   11118:	ff068613          	addi	a2,a3,-16
   1111c:	00a73823          	sd	a0,16(a4)
   11120:	00c73c23          	sd	a2,24(a4)
   11124:	00f5b423          	sd	a5,8(a1)
   11128:	00e6b023          	sd	a4,0(a3)
   1112c:	00e53c23          	sd	a4,24(a0)
   11130:	01013403          	ld	s0,16(sp)
   11134:	01813083          	ld	ra,24(sp)
   11138:	00048513          	mv	a0,s1
   1113c:	00813483          	ld	s1,8(sp)
   11140:	02010113          	addi	sp,sp,32
   11144:	2790006f          	j	11bbc <__malloc_unlock>
   11148:	02081e63          	bnez	a6,11184 <_free_r+0x13c>
   1114c:	00013537          	lui	a0,0x13
   11150:	00d787b3          	add	a5,a5,a3
   11154:	19850513          	addi	a0,a0,408 # 13198 <__malloc_av_+0x10>
   11158:	01063683          	ld	a3,16(a2)
   1115c:	0017e893          	ori	a7,a5,1
   11160:	00f70833          	add	a6,a4,a5
   11164:	16a68863          	beq	a3,a0,112d4 <_free_r+0x28c>
   11168:	01863603          	ld	a2,24(a2)
   1116c:	00c6bc23          	sd	a2,24(a3)
   11170:	00d63823          	sd	a3,16(a2)
   11174:	01173423          	sd	a7,8(a4)
   11178:	00f83023          	sd	a5,0(a6)
   1117c:	f65ff06f          	j	110e0 <_free_r+0x98>
   11180:	00008067          	ret
   11184:	00156513          	ori	a0,a0,1
   11188:	fea43c23          	sd	a0,-8(s0)
   1118c:	00f63023          	sd	a5,0(a2)
   11190:	1ff00693          	li	a3,511
   11194:	f4f6fae3          	bgeu	a3,a5,110e8 <_free_r+0xa0>
   11198:	0097d693          	srli	a3,a5,0x9
   1119c:	00400613          	li	a2,4
   111a0:	0ed66463          	bltu	a2,a3,11288 <_free_r+0x240>
   111a4:	0067d693          	srli	a3,a5,0x6
   111a8:	0396851b          	addiw	a0,a3,57
   111ac:	0015151b          	slliw	a0,a0,0x1
   111b0:	00351513          	slli	a0,a0,0x3
   111b4:	0386861b          	addiw	a2,a3,56
   111b8:	00a58533          	add	a0,a1,a0
   111bc:	00053683          	ld	a3,0(a0)
   111c0:	ff050513          	addi	a0,a0,-16
   111c4:	00d51863          	bne	a0,a3,111d4 <_free_r+0x18c>
   111c8:	1280006f          	j	112f0 <_free_r+0x2a8>
   111cc:	0106b683          	ld	a3,16(a3)
   111d0:	00d50863          	beq	a0,a3,111e0 <_free_r+0x198>
   111d4:	0086b603          	ld	a2,8(a3)
   111d8:	ffc67613          	andi	a2,a2,-4
   111dc:	fec7e8e3          	bltu	a5,a2,111cc <_free_r+0x184>
   111e0:	0186b503          	ld	a0,24(a3)
   111e4:	00a73c23          	sd	a0,24(a4)
   111e8:	00d73823          	sd	a3,16(a4)
   111ec:	01013403          	ld	s0,16(sp)
   111f0:	00e53823          	sd	a4,16(a0)
   111f4:	01813083          	ld	ra,24(sp)
   111f8:	00048513          	mv	a0,s1
   111fc:	00813483          	ld	s1,8(sp)
   11200:	00e6bc23          	sd	a4,24(a3)
   11204:	02010113          	addi	sp,sp,32
   11208:	1b50006f          	j	11bbc <__malloc_unlock>
   1120c:	0a081263          	bnez	a6,112b0 <_free_r+0x268>
   11210:	01863583          	ld	a1,24(a2)
   11214:	01063603          	ld	a2,16(a2)
   11218:	00f686b3          	add	a3,a3,a5
   1121c:	0016e793          	ori	a5,a3,1
   11220:	00b63c23          	sd	a1,24(a2)
   11224:	00c5b823          	sd	a2,16(a1)
   11228:	00f73423          	sd	a5,8(a4)
   1122c:	00d70733          	add	a4,a4,a3
   11230:	00d73023          	sd	a3,0(a4)
   11234:	efdff06f          	j	11130 <_free_r+0xe8>
   11238:	00d786b3          	add	a3,a5,a3
   1123c:	02089063          	bnez	a7,1125c <_free_r+0x214>
   11240:	ff043503          	ld	a0,-16(s0)
   11244:	40a70733          	sub	a4,a4,a0
   11248:	01873783          	ld	a5,24(a4)
   1124c:	01073603          	ld	a2,16(a4)
   11250:	00a686b3          	add	a3,a3,a0
   11254:	00f63c23          	sd	a5,24(a2)
   11258:	00c7b823          	sd	a2,16(a5)
   1125c:	0016e613          	ori	a2,a3,1
   11260:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11264:	00c73423          	sd	a2,8(a4)
   11268:	00e5b823          	sd	a4,16(a1)
   1126c:	ecf6e2e3          	bltu	a3,a5,11130 <_free_r+0xe8>
   11270:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11274:	00048513          	mv	a0,s1
   11278:	c99ff0ef          	jal	10f10 <_malloc_trim_r>
   1127c:	eb5ff06f          	j	11130 <_free_r+0xe8>
   11280:	00d787b3          	add	a5,a5,a3
   11284:	ed5ff06f          	j	11158 <_free_r+0x110>
   11288:	01400613          	li	a2,20
   1128c:	02d67a63          	bgeu	a2,a3,112c0 <_free_r+0x278>
   11290:	05400613          	li	a2,84
   11294:	06d66c63          	bltu	a2,a3,1130c <_free_r+0x2c4>
   11298:	00c7d693          	srli	a3,a5,0xc
   1129c:	06f6851b          	addiw	a0,a3,111
   112a0:	0015151b          	slliw	a0,a0,0x1
   112a4:	00351513          	slli	a0,a0,0x3
   112a8:	06e6861b          	addiw	a2,a3,110
   112ac:	f0dff06f          	j	111b8 <_free_r+0x170>
   112b0:	0017e693          	ori	a3,a5,1
   112b4:	00d73423          	sd	a3,8(a4)
   112b8:	00f63023          	sd	a5,0(a2)
   112bc:	e75ff06f          	j	11130 <_free_r+0xe8>
   112c0:	05c6851b          	addiw	a0,a3,92
   112c4:	0015151b          	slliw	a0,a0,0x1
   112c8:	00351513          	slli	a0,a0,0x3
   112cc:	05b6861b          	addiw	a2,a3,91
   112d0:	ee9ff06f          	j	111b8 <_free_r+0x170>
   112d4:	02e5b423          	sd	a4,40(a1)
   112d8:	02e5b023          	sd	a4,32(a1)
   112dc:	00a73c23          	sd	a0,24(a4)
   112e0:	00a73823          	sd	a0,16(a4)
   112e4:	01173423          	sd	a7,8(a4)
   112e8:	00f83023          	sd	a5,0(a6)
   112ec:	e45ff06f          	j	11130 <_free_r+0xe8>
   112f0:	0085b803          	ld	a6,8(a1)
   112f4:	4026561b          	sraiw	a2,a2,0x2
   112f8:	00100793          	li	a5,1
   112fc:	00c797b3          	sll	a5,a5,a2
   11300:	0107e7b3          	or	a5,a5,a6
   11304:	00f5b423          	sd	a5,8(a1)
   11308:	eddff06f          	j	111e4 <_free_r+0x19c>
   1130c:	15400613          	li	a2,340
   11310:	00d66e63          	bltu	a2,a3,1132c <_free_r+0x2e4>
   11314:	00f7d693          	srli	a3,a5,0xf
   11318:	0786851b          	addiw	a0,a3,120
   1131c:	0015151b          	slliw	a0,a0,0x1
   11320:	00351513          	slli	a0,a0,0x3
   11324:	0776861b          	addiw	a2,a3,119
   11328:	e91ff06f          	j	111b8 <_free_r+0x170>
   1132c:	55400613          	li	a2,1364
   11330:	00d66e63          	bltu	a2,a3,1134c <_free_r+0x304>
   11334:	0127d693          	srli	a3,a5,0x12
   11338:	07d6851b          	addiw	a0,a3,125
   1133c:	0015151b          	slliw	a0,a0,0x1
   11340:	00351513          	slli	a0,a0,0x3
   11344:	07c6861b          	addiw	a2,a3,124
   11348:	e71ff06f          	j	111b8 <_free_r+0x170>
   1134c:	7f000513          	li	a0,2032
   11350:	07e00613          	li	a2,126
   11354:	e65ff06f          	j	111b8 <_free_r+0x170>

0000000000011358 <_malloc_r>:
   11358:	fa010113          	addi	sp,sp,-96
   1135c:	04913423          	sd	s1,72(sp)
   11360:	05213023          	sd	s2,64(sp)
   11364:	04113c23          	sd	ra,88(sp)
   11368:	04813823          	sd	s0,80(sp)
   1136c:	03313c23          	sd	s3,56(sp)
   11370:	01758493          	addi	s1,a1,23
   11374:	02e00793          	li	a5,46
   11378:	00050913          	mv	s2,a0
   1137c:	0897e063          	bltu	a5,s1,113fc <_malloc_r+0xa4>
   11380:	02000493          	li	s1,32
   11384:	22b4e663          	bltu	s1,a1,115b0 <_malloc_r+0x258>
   11388:	031000ef          	jal	11bb8 <__malloc_lock>
   1138c:	05000793          	li	a5,80
   11390:	00400593          	li	a1,4
   11394:	000139b7          	lui	s3,0x13
   11398:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   1139c:	00f987b3          	add	a5,s3,a5
   113a0:	0087b403          	ld	s0,8(a5)
   113a4:	ff078713          	addi	a4,a5,-16
   113a8:	46e40a63          	beq	s0,a4,1181c <_malloc_r+0x4c4>
   113ac:	00843783          	ld	a5,8(s0)
   113b0:	01843683          	ld	a3,24(s0)
   113b4:	01043603          	ld	a2,16(s0)
   113b8:	ffc7f793          	andi	a5,a5,-4
   113bc:	00f407b3          	add	a5,s0,a5
   113c0:	0087b703          	ld	a4,8(a5)
   113c4:	00d63c23          	sd	a3,24(a2)
   113c8:	00c6b823          	sd	a2,16(a3)
   113cc:	00176713          	ori	a4,a4,1
   113d0:	00090513          	mv	a0,s2
   113d4:	00e7b423          	sd	a4,8(a5)
   113d8:	7e4000ef          	jal	11bbc <__malloc_unlock>
   113dc:	05813083          	ld	ra,88(sp)
   113e0:	01040513          	addi	a0,s0,16
   113e4:	05013403          	ld	s0,80(sp)
   113e8:	04813483          	ld	s1,72(sp)
   113ec:	04013903          	ld	s2,64(sp)
   113f0:	03813983          	ld	s3,56(sp)
   113f4:	06010113          	addi	sp,sp,96
   113f8:	00008067          	ret
   113fc:	800007b7          	lui	a5,0x80000
   11400:	ff04f493          	andi	s1,s1,-16
   11404:	fff7c793          	not	a5,a5
   11408:	1a97e463          	bltu	a5,s1,115b0 <_malloc_r+0x258>
   1140c:	1ab4e263          	bltu	s1,a1,115b0 <_malloc_r+0x258>
   11410:	7a8000ef          	jal	11bb8 <__malloc_lock>
   11414:	1f700793          	li	a5,503
   11418:	5497fe63          	bgeu	a5,s1,11974 <_malloc_r+0x61c>
   1141c:	0094d793          	srli	a5,s1,0x9
   11420:	1a078c63          	beqz	a5,115d8 <_malloc_r+0x280>
   11424:	00400713          	li	a4,4
   11428:	46f76463          	bltu	a4,a5,11890 <_malloc_r+0x538>
   1142c:	0064d793          	srli	a5,s1,0x6
   11430:	0397859b          	addiw	a1,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffec0c1>
   11434:	0015961b          	slliw	a2,a1,0x1
   11438:	0387881b          	addiw	a6,a5,56
   1143c:	00361613          	slli	a2,a2,0x3
   11440:	000139b7          	lui	s3,0x13
   11444:	18898993          	addi	s3,s3,392 # 13188 <__malloc_av_>
   11448:	00c98633          	add	a2,s3,a2
   1144c:	00863403          	ld	s0,8(a2)
   11450:	ff060613          	addi	a2,a2,-16
   11454:	02860863          	beq	a2,s0,11484 <_malloc_r+0x12c>
   11458:	01f00513          	li	a0,31
   1145c:	0140006f          	j	11470 <_malloc_r+0x118>
   11460:	01843683          	ld	a3,24(s0)
   11464:	36075a63          	bgez	a4,117d8 <_malloc_r+0x480>
   11468:	00d60e63          	beq	a2,a3,11484 <_malloc_r+0x12c>
   1146c:	00068413          	mv	s0,a3
   11470:	00843783          	ld	a5,8(s0)
   11474:	ffc7f793          	andi	a5,a5,-4
   11478:	40978733          	sub	a4,a5,s1
   1147c:	fee552e3          	bge	a0,a4,11460 <_malloc_r+0x108>
   11480:	00080593          	mv	a1,a6
   11484:	0209b403          	ld	s0,32(s3)
   11488:	00013837          	lui	a6,0x13
   1148c:	19880813          	addi	a6,a6,408 # 13198 <__malloc_av_+0x10>
   11490:	35040063          	beq	s0,a6,117d0 <_malloc_r+0x478>
   11494:	00843783          	ld	a5,8(s0)
   11498:	01f00693          	li	a3,31
   1149c:	ffc7f793          	andi	a5,a5,-4
   114a0:	40978733          	sub	a4,a5,s1
   114a4:	48e6ca63          	blt	a3,a4,11938 <_malloc_r+0x5e0>
   114a8:	0309b423          	sd	a6,40(s3)
   114ac:	0309b023          	sd	a6,32(s3)
   114b0:	46075463          	bgez	a4,11918 <_malloc_r+0x5c0>
   114b4:	1ff00713          	li	a4,511
   114b8:	0089b503          	ld	a0,8(s3)
   114bc:	36f76863          	bltu	a4,a5,1182c <_malloc_r+0x4d4>
   114c0:	0037d793          	srli	a5,a5,0x3
   114c4:	0007879b          	sext.w	a5,a5
   114c8:	0017871b          	addiw	a4,a5,1
   114cc:	0017171b          	slliw	a4,a4,0x1
   114d0:	00371713          	slli	a4,a4,0x3
   114d4:	00e98733          	add	a4,s3,a4
   114d8:	00073603          	ld	a2,0(a4)
   114dc:	4027d79b          	sraiw	a5,a5,0x2
   114e0:	00100693          	li	a3,1
   114e4:	00f697b3          	sll	a5,a3,a5
   114e8:	00f56533          	or	a0,a0,a5
   114ec:	ff070793          	addi	a5,a4,-16
   114f0:	00c43823          	sd	a2,16(s0)
   114f4:	00f43c23          	sd	a5,24(s0)
   114f8:	00a9b423          	sd	a0,8(s3)
   114fc:	00873023          	sd	s0,0(a4)
   11500:	00863c23          	sd	s0,24(a2)
   11504:	4025d79b          	sraiw	a5,a1,0x2
   11508:	00100613          	li	a2,1
   1150c:	00f61633          	sll	a2,a2,a5
   11510:	0cc56c63          	bltu	a0,a2,115e8 <_malloc_r+0x290>
   11514:	00a677b3          	and	a5,a2,a0
   11518:	02079463          	bnez	a5,11540 <_malloc_r+0x1e8>
   1151c:	00161613          	slli	a2,a2,0x1
   11520:	ffc5f593          	andi	a1,a1,-4
   11524:	00a677b3          	and	a5,a2,a0
   11528:	0045859b          	addiw	a1,a1,4
   1152c:	00079a63          	bnez	a5,11540 <_malloc_r+0x1e8>
   11530:	00161613          	slli	a2,a2,0x1
   11534:	00a677b3          	and	a5,a2,a0
   11538:	0045859b          	addiw	a1,a1,4
   1153c:	fe078ae3          	beqz	a5,11530 <_malloc_r+0x1d8>
   11540:	01f00893          	li	a7,31
   11544:	0015831b          	addiw	t1,a1,1
   11548:	0013131b          	slliw	t1,t1,0x1
   1154c:	00331313          	slli	t1,t1,0x3
   11550:	ff030313          	addi	t1,t1,-16
   11554:	00698333          	add	t1,s3,t1
   11558:	00030513          	mv	a0,t1
   1155c:	01853783          	ld	a5,24(a0)
   11560:	00058e13          	mv	t3,a1
   11564:	34f50a63          	beq	a0,a5,118b8 <_malloc_r+0x560>
   11568:	0087b703          	ld	a4,8(a5)
   1156c:	00078413          	mv	s0,a5
   11570:	0187b783          	ld	a5,24(a5)
   11574:	ffc77713          	andi	a4,a4,-4
   11578:	409706b3          	sub	a3,a4,s1
   1157c:	34d8ca63          	blt	a7,a3,118d0 <_malloc_r+0x578>
   11580:	fe06c2e3          	bltz	a3,11564 <_malloc_r+0x20c>
   11584:	00e40733          	add	a4,s0,a4
   11588:	00873683          	ld	a3,8(a4)
   1158c:	01043603          	ld	a2,16(s0)
   11590:	00090513          	mv	a0,s2
   11594:	0016e693          	ori	a3,a3,1
   11598:	00d73423          	sd	a3,8(a4)
   1159c:	00f63c23          	sd	a5,24(a2)
   115a0:	00c7b823          	sd	a2,16(a5)
   115a4:	618000ef          	jal	11bbc <__malloc_unlock>
   115a8:	01040513          	addi	a0,s0,16
   115ac:	0100006f          	j	115bc <_malloc_r+0x264>
   115b0:	00c00793          	li	a5,12
   115b4:	00f92023          	sw	a5,0(s2)
   115b8:	00000513          	li	a0,0
   115bc:	05813083          	ld	ra,88(sp)
   115c0:	05013403          	ld	s0,80(sp)
   115c4:	04813483          	ld	s1,72(sp)
   115c8:	04013903          	ld	s2,64(sp)
   115cc:	03813983          	ld	s3,56(sp)
   115d0:	06010113          	addi	sp,sp,96
   115d4:	00008067          	ret
   115d8:	40000613          	li	a2,1024
   115dc:	04000593          	li	a1,64
   115e0:	03f00813          	li	a6,63
   115e4:	e5dff06f          	j	11440 <_malloc_r+0xe8>
   115e8:	0109b403          	ld	s0,16(s3)
   115ec:	03513423          	sd	s5,40(sp)
   115f0:	00843783          	ld	a5,8(s0)
   115f4:	ffc7fa93          	andi	s5,a5,-4
   115f8:	009ae863          	bltu	s5,s1,11608 <_malloc_r+0x2b0>
   115fc:	409a8733          	sub	a4,s5,s1
   11600:	01f00793          	li	a5,31
   11604:	18e7c463          	blt	a5,a4,1178c <_malloc_r+0x434>
   11608:	01913423          	sd	s9,8(sp)
   1160c:	03413823          	sd	s4,48(sp)
   11610:	1901b703          	ld	a4,400(gp) # 139a8 <__malloc_sbrk_base>
   11614:	1c81ba03          	ld	s4,456(gp) # 139e0 <__malloc_top_pad>
   11618:	01713c23          	sd	s7,24(sp)
   1161c:	03613023          	sd	s6,32(sp)
   11620:	fff00793          	li	a5,-1
   11624:	01448a33          	add	s4,s1,s4
   11628:	01540bb3          	add	s7,s0,s5
   1162c:	3ef70c63          	beq	a4,a5,11a24 <_malloc_r+0x6cc>
   11630:	000017b7          	lui	a5,0x1
   11634:	01f78793          	addi	a5,a5,31 # 101f <exit-0xf101>
   11638:	00fa0a33          	add	s4,s4,a5
   1163c:	fffff7b7          	lui	a5,0xfffff
   11640:	00fa7a33          	and	s4,s4,a5
   11644:	000a0593          	mv	a1,s4
   11648:	00090513          	mv	a0,s2
   1164c:	1c5000ef          	jal	12010 <_sbrk_r>
   11650:	fff00793          	li	a5,-1
   11654:	00050b13          	mv	s6,a0
   11658:	48f50c63          	beq	a0,a5,11af0 <_malloc_r+0x798>
   1165c:	01813823          	sd	s8,16(sp)
   11660:	0f756c63          	bltu	a0,s7,11758 <_malloc_r+0x400>
   11664:	42018c13          	addi	s8,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11668:	000c2703          	lw	a4,0(s8)
   1166c:	0147073b          	addw	a4,a4,s4
   11670:	00ec2023          	sw	a4,0(s8)
   11674:	00070693          	mv	a3,a4
   11678:	48ab8263          	beq	s7,a0,11afc <_malloc_r+0x7a4>
   1167c:	1901b703          	ld	a4,400(gp) # 139a8 <__malloc_sbrk_base>
   11680:	fff00793          	li	a5,-1
   11684:	48f70a63          	beq	a4,a5,11b18 <_malloc_r+0x7c0>
   11688:	417b07b3          	sub	a5,s6,s7
   1168c:	00d787bb          	addw	a5,a5,a3
   11690:	00fc2023          	sw	a5,0(s8)
   11694:	00fb7c93          	andi	s9,s6,15
   11698:	3a0c8663          	beqz	s9,11a44 <_malloc_r+0x6ec>
   1169c:	419b0b33          	sub	s6,s6,s9
   116a0:	000016b7          	lui	a3,0x1
   116a4:	010b0b13          	addi	s6,s6,16
   116a8:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   116ac:	014b0a33          	add	s4,s6,s4
   116b0:	419686b3          	sub	a3,a3,s9
   116b4:	414686b3          	sub	a3,a3,s4
   116b8:	03469693          	slli	a3,a3,0x34
   116bc:	0346db93          	srli	s7,a3,0x34
   116c0:	000b8593          	mv	a1,s7
   116c4:	00090513          	mv	a0,s2
   116c8:	149000ef          	jal	12010 <_sbrk_r>
   116cc:	fff00793          	li	a5,-1
   116d0:	48f50863          	beq	a0,a5,11b60 <_malloc_r+0x808>
   116d4:	41650533          	sub	a0,a0,s6
   116d8:	01750a33          	add	s4,a0,s7
   116dc:	000b869b          	sext.w	a3,s7
   116e0:	000c2703          	lw	a4,0(s8)
   116e4:	0169b823          	sd	s6,16(s3)
   116e8:	001a6793          	ori	a5,s4,1
   116ec:	00d7073b          	addw	a4,a4,a3
   116f0:	00fb3423          	sd	a5,8(s6)
   116f4:	00ec2023          	sw	a4,0(s8)
   116f8:	03340e63          	beq	s0,s3,11734 <_malloc_r+0x3dc>
   116fc:	01f00613          	li	a2,31
   11700:	37567863          	bgeu	a2,s5,11a70 <_malloc_r+0x718>
   11704:	00843683          	ld	a3,8(s0)
   11708:	fe8a8793          	addi	a5,s5,-24
   1170c:	ff07f793          	andi	a5,a5,-16
   11710:	0016f693          	andi	a3,a3,1
   11714:	00f6e6b3          	or	a3,a3,a5
   11718:	00d43423          	sd	a3,8(s0)
   1171c:	00900593          	li	a1,9
   11720:	00f406b3          	add	a3,s0,a5
   11724:	00b6b423          	sd	a1,8(a3)
   11728:	00b6b823          	sd	a1,16(a3)
   1172c:	2ef66063          	bltu	a2,a5,11a0c <_malloc_r+0x6b4>
   11730:	008b3783          	ld	a5,8(s6)
   11734:	1c01b603          	ld	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11738:	00e67463          	bgeu	a2,a4,11740 <_malloc_r+0x3e8>
   1173c:	1ce1b023          	sd	a4,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11740:	1b81b603          	ld	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11744:	00e67463          	bgeu	a2,a4,1174c <_malloc_r+0x3f4>
   11748:	1ae1bc23          	sd	a4,440(gp) # 139d0 <__malloc_max_total_mem>
   1174c:	01013c03          	ld	s8,16(sp)
   11750:	000b0413          	mv	s0,s6
   11754:	0140006f          	j	11768 <_malloc_r+0x410>
   11758:	39340263          	beq	s0,s3,11adc <_malloc_r+0x784>
   1175c:	0109b403          	ld	s0,16(s3)
   11760:	01013c03          	ld	s8,16(sp)
   11764:	00843783          	ld	a5,8(s0)
   11768:	ffc7f793          	andi	a5,a5,-4
   1176c:	40978733          	sub	a4,a5,s1
   11770:	3097e663          	bltu	a5,s1,11a7c <_malloc_r+0x724>
   11774:	01f00793          	li	a5,31
   11778:	30e7d263          	bge	a5,a4,11a7c <_malloc_r+0x724>
   1177c:	03013a03          	ld	s4,48(sp)
   11780:	02013b03          	ld	s6,32(sp)
   11784:	01813b83          	ld	s7,24(sp)
   11788:	00813c83          	ld	s9,8(sp)
   1178c:	0014e793          	ori	a5,s1,1
   11790:	00f43423          	sd	a5,8(s0)
   11794:	009404b3          	add	s1,s0,s1
   11798:	0099b823          	sd	s1,16(s3)
   1179c:	00176713          	ori	a4,a4,1
   117a0:	00090513          	mv	a0,s2
   117a4:	00e4b423          	sd	a4,8(s1)
   117a8:	414000ef          	jal	11bbc <__malloc_unlock>
   117ac:	05813083          	ld	ra,88(sp)
   117b0:	01040513          	addi	a0,s0,16
   117b4:	05013403          	ld	s0,80(sp)
   117b8:	02813a83          	ld	s5,40(sp)
   117bc:	04813483          	ld	s1,72(sp)
   117c0:	04013903          	ld	s2,64(sp)
   117c4:	03813983          	ld	s3,56(sp)
   117c8:	06010113          	addi	sp,sp,96
   117cc:	00008067          	ret
   117d0:	0089b503          	ld	a0,8(s3)
   117d4:	d31ff06f          	j	11504 <_malloc_r+0x1ac>
   117d8:	01043603          	ld	a2,16(s0)
   117dc:	00f407b3          	add	a5,s0,a5
   117e0:	0087b703          	ld	a4,8(a5) # fffffffffffff008 <__BSS_END__+0xfffffffffffeb090>
   117e4:	00d63c23          	sd	a3,24(a2)
   117e8:	00c6b823          	sd	a2,16(a3)
   117ec:	00176713          	ori	a4,a4,1
   117f0:	00090513          	mv	a0,s2
   117f4:	00e7b423          	sd	a4,8(a5)
   117f8:	3c4000ef          	jal	11bbc <__malloc_unlock>
   117fc:	05813083          	ld	ra,88(sp)
   11800:	01040513          	addi	a0,s0,16
   11804:	05013403          	ld	s0,80(sp)
   11808:	04813483          	ld	s1,72(sp)
   1180c:	04013903          	ld	s2,64(sp)
   11810:	03813983          	ld	s3,56(sp)
   11814:	06010113          	addi	sp,sp,96
   11818:	00008067          	ret
   1181c:	0187b403          	ld	s0,24(a5)
   11820:	0025859b          	addiw	a1,a1,2
   11824:	c68780e3          	beq	a5,s0,11484 <_malloc_r+0x12c>
   11828:	b85ff06f          	j	113ac <_malloc_r+0x54>
   1182c:	0097d713          	srli	a4,a5,0x9
   11830:	00400693          	li	a3,4
   11834:	14e6fc63          	bgeu	a3,a4,1198c <_malloc_r+0x634>
   11838:	01400693          	li	a3,20
   1183c:	26e6e063          	bltu	a3,a4,11a9c <_malloc_r+0x744>
   11840:	05c7061b          	addiw	a2,a4,92
   11844:	0016161b          	slliw	a2,a2,0x1
   11848:	00361613          	slli	a2,a2,0x3
   1184c:	05b7069b          	addiw	a3,a4,91
   11850:	00c98633          	add	a2,s3,a2
   11854:	00063703          	ld	a4,0(a2)
   11858:	ff060613          	addi	a2,a2,-16
   1185c:	00e61863          	bne	a2,a4,1186c <_malloc_r+0x514>
   11860:	1cc0006f          	j	11a2c <_malloc_r+0x6d4>
   11864:	01073703          	ld	a4,16(a4)
   11868:	00e60863          	beq	a2,a4,11878 <_malloc_r+0x520>
   1186c:	00873683          	ld	a3,8(a4)
   11870:	ffc6f693          	andi	a3,a3,-4
   11874:	fed7e8e3          	bltu	a5,a3,11864 <_malloc_r+0x50c>
   11878:	01873603          	ld	a2,24(a4)
   1187c:	00c43c23          	sd	a2,24(s0)
   11880:	00e43823          	sd	a4,16(s0)
   11884:	00863823          	sd	s0,16(a2)
   11888:	00873c23          	sd	s0,24(a4)
   1188c:	c79ff06f          	j	11504 <_malloc_r+0x1ac>
   11890:	01400713          	li	a4,20
   11894:	10f77863          	bgeu	a4,a5,119a4 <_malloc_r+0x64c>
   11898:	05400713          	li	a4,84
   1189c:	22f76063          	bltu	a4,a5,11abc <_malloc_r+0x764>
   118a0:	00c4d793          	srli	a5,s1,0xc
   118a4:	06f7859b          	addiw	a1,a5,111
   118a8:	0015961b          	slliw	a2,a1,0x1
   118ac:	06e7881b          	addiw	a6,a5,110
   118b0:	00361613          	slli	a2,a2,0x3
   118b4:	b8dff06f          	j	11440 <_malloc_r+0xe8>
   118b8:	001e0e1b          	addiw	t3,t3,1
   118bc:	003e7793          	andi	a5,t3,3
   118c0:	01050513          	addi	a0,a0,16
   118c4:	10078063          	beqz	a5,119c4 <_malloc_r+0x66c>
   118c8:	01853783          	ld	a5,24(a0)
   118cc:	c99ff06f          	j	11564 <_malloc_r+0x20c>
   118d0:	01043603          	ld	a2,16(s0)
   118d4:	0014e593          	ori	a1,s1,1
   118d8:	00b43423          	sd	a1,8(s0)
   118dc:	00f63c23          	sd	a5,24(a2)
   118e0:	00c7b823          	sd	a2,16(a5)
   118e4:	009404b3          	add	s1,s0,s1
   118e8:	0299b423          	sd	s1,40(s3)
   118ec:	0299b023          	sd	s1,32(s3)
   118f0:	0016e793          	ori	a5,a3,1
   118f4:	00e40733          	add	a4,s0,a4
   118f8:	0104bc23          	sd	a6,24(s1)
   118fc:	0104b823          	sd	a6,16(s1)
   11900:	00f4b423          	sd	a5,8(s1)
   11904:	00090513          	mv	a0,s2
   11908:	00d73023          	sd	a3,0(a4)
   1190c:	2b0000ef          	jal	11bbc <__malloc_unlock>
   11910:	01040513          	addi	a0,s0,16
   11914:	ca9ff06f          	j	115bc <_malloc_r+0x264>
   11918:	00f407b3          	add	a5,s0,a5
   1191c:	0087b703          	ld	a4,8(a5)
   11920:	00090513          	mv	a0,s2
   11924:	00176713          	ori	a4,a4,1
   11928:	00e7b423          	sd	a4,8(a5)
   1192c:	290000ef          	jal	11bbc <__malloc_unlock>
   11930:	01040513          	addi	a0,s0,16
   11934:	c89ff06f          	j	115bc <_malloc_r+0x264>
   11938:	0014e693          	ori	a3,s1,1
   1193c:	00d43423          	sd	a3,8(s0)
   11940:	009404b3          	add	s1,s0,s1
   11944:	0299b423          	sd	s1,40(s3)
   11948:	0299b023          	sd	s1,32(s3)
   1194c:	00176693          	ori	a3,a4,1
   11950:	00f407b3          	add	a5,s0,a5
   11954:	0104bc23          	sd	a6,24(s1)
   11958:	0104b823          	sd	a6,16(s1)
   1195c:	00d4b423          	sd	a3,8(s1)
   11960:	00090513          	mv	a0,s2
   11964:	00e7b023          	sd	a4,0(a5)
   11968:	254000ef          	jal	11bbc <__malloc_unlock>
   1196c:	01040513          	addi	a0,s0,16
   11970:	c4dff06f          	j	115bc <_malloc_r+0x264>
   11974:	0034d593          	srli	a1,s1,0x3
   11978:	0015879b          	addiw	a5,a1,1
   1197c:	0017979b          	slliw	a5,a5,0x1
   11980:	00379793          	slli	a5,a5,0x3
   11984:	0005859b          	sext.w	a1,a1
   11988:	a0dff06f          	j	11394 <_malloc_r+0x3c>
   1198c:	0067d713          	srli	a4,a5,0x6
   11990:	0397061b          	addiw	a2,a4,57
   11994:	0016161b          	slliw	a2,a2,0x1
   11998:	00361613          	slli	a2,a2,0x3
   1199c:	0387069b          	addiw	a3,a4,56
   119a0:	eb1ff06f          	j	11850 <_malloc_r+0x4f8>
   119a4:	05c7859b          	addiw	a1,a5,92
   119a8:	0015961b          	slliw	a2,a1,0x1
   119ac:	05b7881b          	addiw	a6,a5,91
   119b0:	00361613          	slli	a2,a2,0x3
   119b4:	a8dff06f          	j	11440 <_malloc_r+0xe8>
   119b8:	01033783          	ld	a5,16(t1)
   119bc:	fff5859b          	addiw	a1,a1,-1
   119c0:	1e679863          	bne	a5,t1,11bb0 <_malloc_r+0x858>
   119c4:	0035f793          	andi	a5,a1,3
   119c8:	ff030313          	addi	t1,t1,-16
   119cc:	fe0796e3          	bnez	a5,119b8 <_malloc_r+0x660>
   119d0:	0089b703          	ld	a4,8(s3)
   119d4:	fff64793          	not	a5,a2
   119d8:	00e7f7b3          	and	a5,a5,a4
   119dc:	00f9b423          	sd	a5,8(s3)
   119e0:	00161613          	slli	a2,a2,0x1
   119e4:	c0c7e2e3          	bltu	a5,a2,115e8 <_malloc_r+0x290>
   119e8:	c00600e3          	beqz	a2,115e8 <_malloc_r+0x290>
   119ec:	00f67733          	and	a4,a2,a5
   119f0:	00071a63          	bnez	a4,11a04 <_malloc_r+0x6ac>
   119f4:	00161613          	slli	a2,a2,0x1
   119f8:	00f67733          	and	a4,a2,a5
   119fc:	004e0e1b          	addiw	t3,t3,4
   11a00:	fe070ae3          	beqz	a4,119f4 <_malloc_r+0x69c>
   11a04:	000e0593          	mv	a1,t3
   11a08:	b3dff06f          	j	11544 <_malloc_r+0x1ec>
   11a0c:	01040593          	addi	a1,s0,16
   11a10:	00090513          	mv	a0,s2
   11a14:	e34ff0ef          	jal	11048 <_free_r>
   11a18:	000c2703          	lw	a4,0(s8)
   11a1c:	0109bb03          	ld	s6,16(s3)
   11a20:	d11ff06f          	j	11730 <_malloc_r+0x3d8>
   11a24:	020a0a13          	addi	s4,s4,32
   11a28:	c1dff06f          	j	11644 <_malloc_r+0x2ec>
   11a2c:	4026d69b          	sraiw	a3,a3,0x2
   11a30:	00100793          	li	a5,1
   11a34:	00d797b3          	sll	a5,a5,a3
   11a38:	00f56533          	or	a0,a0,a5
   11a3c:	00a9b423          	sd	a0,8(s3)
   11a40:	e3dff06f          	j	1187c <_malloc_r+0x524>
   11a44:	014b0bb3          	add	s7,s6,s4
   11a48:	41700bb3          	neg	s7,s7
   11a4c:	034b9b93          	slli	s7,s7,0x34
   11a50:	034bdb93          	srli	s7,s7,0x34
   11a54:	000b8593          	mv	a1,s7
   11a58:	00090513          	mv	a0,s2
   11a5c:	5b4000ef          	jal	12010 <_sbrk_r>
   11a60:	fff00793          	li	a5,-1
   11a64:	00000693          	li	a3,0
   11a68:	c6f516e3          	bne	a0,a5,116d4 <_malloc_r+0x37c>
   11a6c:	c75ff06f          	j	116e0 <_malloc_r+0x388>
   11a70:	01013c03          	ld	s8,16(sp)
   11a74:	00100793          	li	a5,1
   11a78:	00fb3423          	sd	a5,8(s6)
   11a7c:	00090513          	mv	a0,s2
   11a80:	13c000ef          	jal	11bbc <__malloc_unlock>
   11a84:	03013a03          	ld	s4,48(sp)
   11a88:	02813a83          	ld	s5,40(sp)
   11a8c:	02013b03          	ld	s6,32(sp)
   11a90:	01813b83          	ld	s7,24(sp)
   11a94:	00813c83          	ld	s9,8(sp)
   11a98:	b21ff06f          	j	115b8 <_malloc_r+0x260>
   11a9c:	05400693          	li	a3,84
   11aa0:	08e6e063          	bltu	a3,a4,11b20 <_malloc_r+0x7c8>
   11aa4:	00c7d713          	srli	a4,a5,0xc
   11aa8:	06f7061b          	addiw	a2,a4,111
   11aac:	0016161b          	slliw	a2,a2,0x1
   11ab0:	00361613          	slli	a2,a2,0x3
   11ab4:	06e7069b          	addiw	a3,a4,110
   11ab8:	d99ff06f          	j	11850 <_malloc_r+0x4f8>
   11abc:	15400713          	li	a4,340
   11ac0:	08f76063          	bltu	a4,a5,11b40 <_malloc_r+0x7e8>
   11ac4:	00f4d793          	srli	a5,s1,0xf
   11ac8:	0787859b          	addiw	a1,a5,120
   11acc:	0015961b          	slliw	a2,a1,0x1
   11ad0:	0777881b          	addiw	a6,a5,119
   11ad4:	00361613          	slli	a2,a2,0x3
   11ad8:	969ff06f          	j	11440 <_malloc_r+0xe8>
   11adc:	42018c13          	addi	s8,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11ae0:	000c2683          	lw	a3,0(s8)
   11ae4:	014686bb          	addw	a3,a3,s4
   11ae8:	00dc2023          	sw	a3,0(s8)
   11aec:	b91ff06f          	j	1167c <_malloc_r+0x324>
   11af0:	0109b403          	ld	s0,16(s3)
   11af4:	00843783          	ld	a5,8(s0)
   11af8:	c71ff06f          	j	11768 <_malloc_r+0x410>
   11afc:	03451793          	slli	a5,a0,0x34
   11b00:	b6079ee3          	bnez	a5,1167c <_malloc_r+0x324>
   11b04:	0109bb03          	ld	s6,16(s3)
   11b08:	014a87b3          	add	a5,s5,s4
   11b0c:	0017e793          	ori	a5,a5,1
   11b10:	00fb3423          	sd	a5,8(s6)
   11b14:	c21ff06f          	j	11734 <_malloc_r+0x3dc>
   11b18:	1961b823          	sd	s6,400(gp) # 139a8 <__malloc_sbrk_base>
   11b1c:	b79ff06f          	j	11694 <_malloc_r+0x33c>
   11b20:	15400693          	li	a3,340
   11b24:	04e6e863          	bltu	a3,a4,11b74 <_malloc_r+0x81c>
   11b28:	00f7d713          	srli	a4,a5,0xf
   11b2c:	0787061b          	addiw	a2,a4,120
   11b30:	0016161b          	slliw	a2,a2,0x1
   11b34:	00361613          	slli	a2,a2,0x3
   11b38:	0777069b          	addiw	a3,a4,119
   11b3c:	d15ff06f          	j	11850 <_malloc_r+0x4f8>
   11b40:	55400713          	li	a4,1364
   11b44:	04f76863          	bltu	a4,a5,11b94 <_malloc_r+0x83c>
   11b48:	0124d793          	srli	a5,s1,0x12
   11b4c:	07d7859b          	addiw	a1,a5,125
   11b50:	0015961b          	slliw	a2,a1,0x1
   11b54:	07c7881b          	addiw	a6,a5,124
   11b58:	00361613          	slli	a2,a2,0x3
   11b5c:	8e5ff06f          	j	11440 <_malloc_r+0xe8>
   11b60:	ff0c8c93          	addi	s9,s9,-16
   11b64:	019a0a33          	add	s4,s4,s9
   11b68:	416a0a33          	sub	s4,s4,s6
   11b6c:	00000693          	li	a3,0
   11b70:	b71ff06f          	j	116e0 <_malloc_r+0x388>
   11b74:	55400693          	li	a3,1364
   11b78:	02e6e663          	bltu	a3,a4,11ba4 <_malloc_r+0x84c>
   11b7c:	0127d713          	srli	a4,a5,0x12
   11b80:	07d7061b          	addiw	a2,a4,125
   11b84:	0016161b          	slliw	a2,a2,0x1
   11b88:	00361613          	slli	a2,a2,0x3
   11b8c:	07c7069b          	addiw	a3,a4,124
   11b90:	cc1ff06f          	j	11850 <_malloc_r+0x4f8>
   11b94:	7f000613          	li	a2,2032
   11b98:	07f00593          	li	a1,127
   11b9c:	07e00813          	li	a6,126
   11ba0:	8a1ff06f          	j	11440 <_malloc_r+0xe8>
   11ba4:	7f000613          	li	a2,2032
   11ba8:	07e00693          	li	a3,126
   11bac:	ca5ff06f          	j	11850 <_malloc_r+0x4f8>
   11bb0:	0089b783          	ld	a5,8(s3)
   11bb4:	e2dff06f          	j	119e0 <_malloc_r+0x688>

0000000000011bb8 <__malloc_lock>:
   11bb8:	00008067          	ret

0000000000011bbc <__malloc_unlock>:
   11bbc:	00008067          	ret

0000000000011bc0 <_fclose_r>:
   11bc0:	fe010113          	addi	sp,sp,-32
   11bc4:	00113c23          	sd	ra,24(sp)
   11bc8:	01213023          	sd	s2,0(sp)
   11bcc:	02058863          	beqz	a1,11bfc <_fclose_r+0x3c>
   11bd0:	00813823          	sd	s0,16(sp)
   11bd4:	00913423          	sd	s1,8(sp)
   11bd8:	00058413          	mv	s0,a1
   11bdc:	00050493          	mv	s1,a0
   11be0:	00050663          	beqz	a0,11bec <_fclose_r+0x2c>
   11be4:	04853783          	ld	a5,72(a0)
   11be8:	0c078c63          	beqz	a5,11cc0 <_fclose_r+0x100>
   11bec:	01041783          	lh	a5,16(s0)
   11bf0:	02079263          	bnez	a5,11c14 <_fclose_r+0x54>
   11bf4:	01013403          	ld	s0,16(sp)
   11bf8:	00813483          	ld	s1,8(sp)
   11bfc:	01813083          	ld	ra,24(sp)
   11c00:	00000913          	li	s2,0
   11c04:	00090513          	mv	a0,s2
   11c08:	00013903          	ld	s2,0(sp)
   11c0c:	02010113          	addi	sp,sp,32
   11c10:	00008067          	ret
   11c14:	00040593          	mv	a1,s0
   11c18:	00048513          	mv	a0,s1
   11c1c:	0b8000ef          	jal	11cd4 <__sflush_r>
   11c20:	05043783          	ld	a5,80(s0)
   11c24:	00050913          	mv	s2,a0
   11c28:	00078a63          	beqz	a5,11c3c <_fclose_r+0x7c>
   11c2c:	03043583          	ld	a1,48(s0)
   11c30:	00048513          	mv	a0,s1
   11c34:	000780e7          	jalr	a5
   11c38:	06054463          	bltz	a0,11ca0 <_fclose_r+0xe0>
   11c3c:	01045783          	lhu	a5,16(s0)
   11c40:	0807f793          	andi	a5,a5,128
   11c44:	06079663          	bnez	a5,11cb0 <_fclose_r+0xf0>
   11c48:	05843583          	ld	a1,88(s0)
   11c4c:	00058c63          	beqz	a1,11c64 <_fclose_r+0xa4>
   11c50:	07440793          	addi	a5,s0,116
   11c54:	00f58663          	beq	a1,a5,11c60 <_fclose_r+0xa0>
   11c58:	00048513          	mv	a0,s1
   11c5c:	becff0ef          	jal	11048 <_free_r>
   11c60:	04043c23          	sd	zero,88(s0)
   11c64:	07843583          	ld	a1,120(s0)
   11c68:	00058863          	beqz	a1,11c78 <_fclose_r+0xb8>
   11c6c:	00048513          	mv	a0,s1
   11c70:	bd8ff0ef          	jal	11048 <_free_r>
   11c74:	06043c23          	sd	zero,120(s0)
   11c78:	b01fe0ef          	jal	10778 <__sfp_lock_acquire>
   11c7c:	00041823          	sh	zero,16(s0)
   11c80:	afdfe0ef          	jal	1077c <__sfp_lock_release>
   11c84:	01813083          	ld	ra,24(sp)
   11c88:	01013403          	ld	s0,16(sp)
   11c8c:	00813483          	ld	s1,8(sp)
   11c90:	00090513          	mv	a0,s2
   11c94:	00013903          	ld	s2,0(sp)
   11c98:	02010113          	addi	sp,sp,32
   11c9c:	00008067          	ret
   11ca0:	01045783          	lhu	a5,16(s0)
   11ca4:	fff00913          	li	s2,-1
   11ca8:	0807f793          	andi	a5,a5,128
   11cac:	f8078ee3          	beqz	a5,11c48 <_fclose_r+0x88>
   11cb0:	01843583          	ld	a1,24(s0)
   11cb4:	00048513          	mv	a0,s1
   11cb8:	b90ff0ef          	jal	11048 <_free_r>
   11cbc:	f8dff06f          	j	11c48 <_fclose_r+0x88>
   11cc0:	a95fe0ef          	jal	10754 <__sinit>
   11cc4:	f29ff06f          	j	11bec <_fclose_r+0x2c>

0000000000011cc8 <fclose>:
   11cc8:	00050593          	mv	a1,a0
   11ccc:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11cd0:	ef1ff06f          	j	11bc0 <_fclose_r>

0000000000011cd4 <__sflush_r>:
   11cd4:	01059703          	lh	a4,16(a1)
   11cd8:	fd010113          	addi	sp,sp,-48
   11cdc:	02813023          	sd	s0,32(sp)
   11ce0:	01313423          	sd	s3,8(sp)
   11ce4:	02113423          	sd	ra,40(sp)
   11ce8:	00877793          	andi	a5,a4,8
   11cec:	00058413          	mv	s0,a1
   11cf0:	00050993          	mv	s3,a0
   11cf4:	12079063          	bnez	a5,11e14 <__sflush_r+0x140>
   11cf8:	000017b7          	lui	a5,0x1
   11cfc:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11d00:	0085a683          	lw	a3,8(a1)
   11d04:	00f767b3          	or	a5,a4,a5
   11d08:	00f59823          	sh	a5,16(a1)
   11d0c:	18d05a63          	blez	a3,11ea0 <__sflush_r+0x1cc>
   11d10:	04843803          	ld	a6,72(s0)
   11d14:	0e080463          	beqz	a6,11dfc <__sflush_r+0x128>
   11d18:	00913c23          	sd	s1,24(sp)
   11d1c:	03371693          	slli	a3,a4,0x33
   11d20:	0009a483          	lw	s1,0(s3)
   11d24:	0009a023          	sw	zero,0(s3)
   11d28:	1806c863          	bltz	a3,11eb8 <__sflush_r+0x1e4>
   11d2c:	03043583          	ld	a1,48(s0)
   11d30:	00000613          	li	a2,0
   11d34:	00100693          	li	a3,1
   11d38:	00098513          	mv	a0,s3
   11d3c:	000800e7          	jalr	a6
   11d40:	fff00793          	li	a5,-1
   11d44:	00050613          	mv	a2,a0
   11d48:	1af50a63          	beq	a0,a5,11efc <__sflush_r+0x228>
   11d4c:	01041783          	lh	a5,16(s0)
   11d50:	04843803          	ld	a6,72(s0)
   11d54:	0047f793          	andi	a5,a5,4
   11d58:	00078e63          	beqz	a5,11d74 <__sflush_r+0xa0>
   11d5c:	00842703          	lw	a4,8(s0)
   11d60:	05843783          	ld	a5,88(s0)
   11d64:	40e60633          	sub	a2,a2,a4
   11d68:	00078663          	beqz	a5,11d74 <__sflush_r+0xa0>
   11d6c:	07042783          	lw	a5,112(s0)
   11d70:	40f60633          	sub	a2,a2,a5
   11d74:	03043583          	ld	a1,48(s0)
   11d78:	00000693          	li	a3,0
   11d7c:	00098513          	mv	a0,s3
   11d80:	000800e7          	jalr	a6
   11d84:	fff00713          	li	a4,-1
   11d88:	01041783          	lh	a5,16(s0)
   11d8c:	12e51a63          	bne	a0,a4,11ec0 <__sflush_r+0x1ec>
   11d90:	0009a683          	lw	a3,0(s3)
   11d94:	01d00713          	li	a4,29
   11d98:	18d76063          	bltu	a4,a3,11f18 <__sflush_r+0x244>
   11d9c:	20400737          	lui	a4,0x20400
   11da0:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11da4:	00d75733          	srl	a4,a4,a3
   11da8:	00177713          	andi	a4,a4,1
   11dac:	16070663          	beqz	a4,11f18 <__sflush_r+0x244>
   11db0:	01843603          	ld	a2,24(s0)
   11db4:	fffff737          	lui	a4,0xfffff
   11db8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11dbc:	00e7f733          	and	a4,a5,a4
   11dc0:	00e41823          	sh	a4,16(s0)
   11dc4:	00042423          	sw	zero,8(s0)
   11dc8:	00c43023          	sd	a2,0(s0)
   11dcc:	03379713          	slli	a4,a5,0x33
   11dd0:	00075463          	bgez	a4,11dd8 <__sflush_r+0x104>
   11dd4:	10068863          	beqz	a3,11ee4 <__sflush_r+0x210>
   11dd8:	05843583          	ld	a1,88(s0)
   11ddc:	0099a023          	sw	s1,0(s3)
   11de0:	10058a63          	beqz	a1,11ef4 <__sflush_r+0x220>
   11de4:	07440793          	addi	a5,s0,116
   11de8:	00f58663          	beq	a1,a5,11df4 <__sflush_r+0x120>
   11dec:	00098513          	mv	a0,s3
   11df0:	a58ff0ef          	jal	11048 <_free_r>
   11df4:	01813483          	ld	s1,24(sp)
   11df8:	04043c23          	sd	zero,88(s0)
   11dfc:	02813083          	ld	ra,40(sp)
   11e00:	02013403          	ld	s0,32(sp)
   11e04:	00813983          	ld	s3,8(sp)
   11e08:	00000513          	li	a0,0
   11e0c:	03010113          	addi	sp,sp,48
   11e10:	00008067          	ret
   11e14:	01213823          	sd	s2,16(sp)
   11e18:	0185b903          	ld	s2,24(a1)
   11e1c:	08090a63          	beqz	s2,11eb0 <__sflush_r+0x1dc>
   11e20:	00913c23          	sd	s1,24(sp)
   11e24:	0005b483          	ld	s1,0(a1)
   11e28:	00377713          	andi	a4,a4,3
   11e2c:	0125b023          	sd	s2,0(a1)
   11e30:	412484bb          	subw	s1,s1,s2
   11e34:	00000793          	li	a5,0
   11e38:	00071463          	bnez	a4,11e40 <__sflush_r+0x16c>
   11e3c:	0205a783          	lw	a5,32(a1)
   11e40:	00f42623          	sw	a5,12(s0)
   11e44:	00904863          	bgtz	s1,11e54 <__sflush_r+0x180>
   11e48:	0640006f          	j	11eac <__sflush_r+0x1d8>
   11e4c:	00a90933          	add	s2,s2,a0
   11e50:	04905e63          	blez	s1,11eac <__sflush_r+0x1d8>
   11e54:	04043783          	ld	a5,64(s0)
   11e58:	03043583          	ld	a1,48(s0)
   11e5c:	00048693          	mv	a3,s1
   11e60:	00090613          	mv	a2,s2
   11e64:	00098513          	mv	a0,s3
   11e68:	000780e7          	jalr	a5
   11e6c:	40a484bb          	subw	s1,s1,a0
   11e70:	fca04ee3          	bgtz	a0,11e4c <__sflush_r+0x178>
   11e74:	01041783          	lh	a5,16(s0)
   11e78:	01013903          	ld	s2,16(sp)
   11e7c:	0407e793          	ori	a5,a5,64
   11e80:	02813083          	ld	ra,40(sp)
   11e84:	00f41823          	sh	a5,16(s0)
   11e88:	02013403          	ld	s0,32(sp)
   11e8c:	01813483          	ld	s1,24(sp)
   11e90:	00813983          	ld	s3,8(sp)
   11e94:	fff00513          	li	a0,-1
   11e98:	03010113          	addi	sp,sp,48
   11e9c:	00008067          	ret
   11ea0:	0705a683          	lw	a3,112(a1)
   11ea4:	e6d046e3          	bgtz	a3,11d10 <__sflush_r+0x3c>
   11ea8:	f55ff06f          	j	11dfc <__sflush_r+0x128>
   11eac:	01813483          	ld	s1,24(sp)
   11eb0:	01013903          	ld	s2,16(sp)
   11eb4:	f49ff06f          	j	11dfc <__sflush_r+0x128>
   11eb8:	09043603          	ld	a2,144(s0)
   11ebc:	e99ff06f          	j	11d54 <__sflush_r+0x80>
   11ec0:	01843683          	ld	a3,24(s0)
   11ec4:	fffff737          	lui	a4,0xfffff
   11ec8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11ecc:	00e7f733          	and	a4,a5,a4
   11ed0:	00e41823          	sh	a4,16(s0)
   11ed4:	00042423          	sw	zero,8(s0)
   11ed8:	00d43023          	sd	a3,0(s0)
   11edc:	03379713          	slli	a4,a5,0x33
   11ee0:	ee075ce3          	bgez	a4,11dd8 <__sflush_r+0x104>
   11ee4:	05843583          	ld	a1,88(s0)
   11ee8:	08a43823          	sd	a0,144(s0)
   11eec:	0099a023          	sw	s1,0(s3)
   11ef0:	ee059ae3          	bnez	a1,11de4 <__sflush_r+0x110>
   11ef4:	01813483          	ld	s1,24(sp)
   11ef8:	f05ff06f          	j	11dfc <__sflush_r+0x128>
   11efc:	0009a783          	lw	a5,0(s3)
   11f00:	e40786e3          	beqz	a5,11d4c <__sflush_r+0x78>
   11f04:	01d00713          	li	a4,29
   11f08:	00e78c63          	beq	a5,a4,11f20 <__sflush_r+0x24c>
   11f0c:	01600713          	li	a4,22
   11f10:	00e78863          	beq	a5,a4,11f20 <__sflush_r+0x24c>
   11f14:	01041783          	lh	a5,16(s0)
   11f18:	0407e793          	ori	a5,a5,64
   11f1c:	f65ff06f          	j	11e80 <__sflush_r+0x1ac>
   11f20:	0099a023          	sw	s1,0(s3)
   11f24:	01813483          	ld	s1,24(sp)
   11f28:	ed5ff06f          	j	11dfc <__sflush_r+0x128>

0000000000011f2c <_fflush_r>:
   11f2c:	fe010113          	addi	sp,sp,-32
   11f30:	00813823          	sd	s0,16(sp)
   11f34:	00113c23          	sd	ra,24(sp)
   11f38:	00050413          	mv	s0,a0
   11f3c:	00050663          	beqz	a0,11f48 <_fflush_r+0x1c>
   11f40:	04853783          	ld	a5,72(a0)
   11f44:	02078a63          	beqz	a5,11f78 <_fflush_r+0x4c>
   11f48:	01059783          	lh	a5,16(a1)
   11f4c:	00079c63          	bnez	a5,11f64 <_fflush_r+0x38>
   11f50:	01813083          	ld	ra,24(sp)
   11f54:	01013403          	ld	s0,16(sp)
   11f58:	00000513          	li	a0,0
   11f5c:	02010113          	addi	sp,sp,32
   11f60:	00008067          	ret
   11f64:	00040513          	mv	a0,s0
   11f68:	01013403          	ld	s0,16(sp)
   11f6c:	01813083          	ld	ra,24(sp)
   11f70:	02010113          	addi	sp,sp,32
   11f74:	d61ff06f          	j	11cd4 <__sflush_r>
   11f78:	00b13423          	sd	a1,8(sp)
   11f7c:	fd8fe0ef          	jal	10754 <__sinit>
   11f80:	00813583          	ld	a1,8(sp)
   11f84:	fc5ff06f          	j	11f48 <_fflush_r+0x1c>

0000000000011f88 <fflush>:
   11f88:	06050063          	beqz	a0,11fe8 <fflush+0x60>
   11f8c:	00050593          	mv	a1,a0
   11f90:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11f94:	00050663          	beqz	a0,11fa0 <fflush+0x18>
   11f98:	04853783          	ld	a5,72(a0)
   11f9c:	00078c63          	beqz	a5,11fb4 <fflush+0x2c>
   11fa0:	01059783          	lh	a5,16(a1)
   11fa4:	00079663          	bnez	a5,11fb0 <fflush+0x28>
   11fa8:	00000513          	li	a0,0
   11fac:	00008067          	ret
   11fb0:	d25ff06f          	j	11cd4 <__sflush_r>
   11fb4:	fe010113          	addi	sp,sp,-32
   11fb8:	00b13423          	sd	a1,8(sp)
   11fbc:	00a13023          	sd	a0,0(sp)
   11fc0:	00113c23          	sd	ra,24(sp)
   11fc4:	f90fe0ef          	jal	10754 <__sinit>
   11fc8:	00813583          	ld	a1,8(sp)
   11fcc:	00013503          	ld	a0,0(sp)
   11fd0:	01059783          	lh	a5,16(a1)
   11fd4:	02079863          	bnez	a5,12004 <fflush+0x7c>
   11fd8:	01813083          	ld	ra,24(sp)
   11fdc:	00000513          	li	a0,0
   11fe0:	02010113          	addi	sp,sp,32
   11fe4:	00008067          	ret
   11fe8:	00013637          	lui	a2,0x13
   11fec:	000125b7          	lui	a1,0x12
   11ff0:	00013537          	lui	a0,0x13
   11ff4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11ff8:	f2c58593          	addi	a1,a1,-212 # 11f2c <_fflush_r>
   11ffc:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   12000:	fb0fe06f          	j	107b0 <_fwalk_sglue>
   12004:	01813083          	ld	ra,24(sp)
   12008:	02010113          	addi	sp,sp,32
   1200c:	cc9ff06f          	j	11cd4 <__sflush_r>

0000000000012010 <_sbrk_r>:
   12010:	fe010113          	addi	sp,sp,-32
   12014:	00813823          	sd	s0,16(sp)
   12018:	00913423          	sd	s1,8(sp)
   1201c:	00050413          	mv	s0,a0
   12020:	00058513          	mv	a0,a1
   12024:	00113c23          	sd	ra,24(sp)
   12028:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   1202c:	238000ef          	jal	12264 <_sbrk>
   12030:	fff00793          	li	a5,-1
   12034:	00f50c63          	beq	a0,a5,1204c <_sbrk_r+0x3c>
   12038:	01813083          	ld	ra,24(sp)
   1203c:	01013403          	ld	s0,16(sp)
   12040:	00813483          	ld	s1,8(sp)
   12044:	02010113          	addi	sp,sp,32
   12048:	00008067          	ret
   1204c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12050:	fe0784e3          	beqz	a5,12038 <_sbrk_r+0x28>
   12054:	01813083          	ld	ra,24(sp)
   12058:	00f42023          	sw	a5,0(s0)
   1205c:	01013403          	ld	s0,16(sp)
   12060:	00813483          	ld	s1,8(sp)
   12064:	02010113          	addi	sp,sp,32
   12068:	00008067          	ret

000000000001206c <__libc_fini_array>:
   1206c:	fe010113          	addi	sp,sp,-32
   12070:	00813823          	sd	s0,16(sp)
   12074:	000137b7          	lui	a5,0x13
   12078:	00013437          	lui	s0,0x13
   1207c:	01840413          	addi	s0,s0,24 # 13018 <__sglue>
   12080:	01078793          	addi	a5,a5,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   12084:	40f40433          	sub	s0,s0,a5
   12088:	00913423          	sd	s1,8(sp)
   1208c:	00113c23          	sd	ra,24(sp)
   12090:	40345493          	srai	s1,s0,0x3
   12094:	02048063          	beqz	s1,120b4 <__libc_fini_array+0x48>
   12098:	ff840413          	addi	s0,s0,-8
   1209c:	00f40433          	add	s0,s0,a5
   120a0:	00043783          	ld	a5,0(s0)
   120a4:	fff48493          	addi	s1,s1,-1
   120a8:	ff840413          	addi	s0,s0,-8
   120ac:	000780e7          	jalr	a5
   120b0:	fe0498e3          	bnez	s1,120a0 <__libc_fini_array+0x34>
   120b4:	01813083          	ld	ra,24(sp)
   120b8:	01013403          	ld	s0,16(sp)
   120bc:	00813483          	ld	s1,8(sp)
   120c0:	02010113          	addi	sp,sp,32
   120c4:	00008067          	ret

00000000000120c8 <__register_exitproc>:
   120c8:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   120cc:	04078e63          	beqz	a5,12128 <__register_exitproc+0x60>
   120d0:	0087a703          	lw	a4,8(a5)
   120d4:	01f00813          	li	a6,31
   120d8:	08e84463          	blt	a6,a4,12160 <__register_exitproc+0x98>
   120dc:	02050863          	beqz	a0,1210c <__register_exitproc+0x44>
   120e0:	00371813          	slli	a6,a4,0x3
   120e4:	01078833          	add	a6,a5,a6
   120e8:	10c83823          	sd	a2,272(a6)
   120ec:	3107a883          	lw	a7,784(a5)
   120f0:	00100613          	li	a2,1
   120f4:	00e6163b          	sllw	a2,a2,a4
   120f8:	00c8e8b3          	or	a7,a7,a2
   120fc:	3117a823          	sw	a7,784(a5)
   12100:	20d83823          	sd	a3,528(a6)
   12104:	00200693          	li	a3,2
   12108:	02d50863          	beq	a0,a3,12138 <__register_exitproc+0x70>
   1210c:	00371693          	slli	a3,a4,0x3
   12110:	0017071b          	addiw	a4,a4,1
   12114:	00d786b3          	add	a3,a5,a3
   12118:	00e7a423          	sw	a4,8(a5)
   1211c:	00b6b823          	sd	a1,16(a3)
   12120:	00000513          	li	a0,0
   12124:	00008067          	ret
   12128:	44818813          	addi	a6,gp,1096 # 13c60 <__atexit0>
   1212c:	1b01b823          	sd	a6,432(gp) # 139c8 <__atexit>
   12130:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12134:	f9dff06f          	j	120d0 <__register_exitproc+0x8>
   12138:	3147a683          	lw	a3,788(a5)
   1213c:	00000513          	li	a0,0
   12140:	00d66633          	or	a2,a2,a3
   12144:	00371693          	slli	a3,a4,0x3
   12148:	0017071b          	addiw	a4,a4,1
   1214c:	30c7aa23          	sw	a2,788(a5)
   12150:	00d786b3          	add	a3,a5,a3
   12154:	00e7a423          	sw	a4,8(a5)
   12158:	00b6b823          	sd	a1,16(a3)
   1215c:	00008067          	ret
   12160:	fff00513          	li	a0,-1
   12164:	00008067          	ret

0000000000012168 <_close>:
   12168:	ff010113          	addi	sp,sp,-16
   1216c:	00113423          	sd	ra,8(sp)
   12170:	00813023          	sd	s0,0(sp)
   12174:	03900893          	li	a7,57
   12178:	00000073          	ecall
   1217c:	00050413          	mv	s0,a0
   12180:	00054c63          	bltz	a0,12198 <_close+0x30>
   12184:	0005051b          	sext.w	a0,a0
   12188:	00813083          	ld	ra,8(sp)
   1218c:	00013403          	ld	s0,0(sp)
   12190:	01010113          	addi	sp,sp,16
   12194:	00008067          	ret
   12198:	188000ef          	jal	12320 <__errno>
   1219c:	4080043b          	negw	s0,s0
   121a0:	00852023          	sw	s0,0(a0)
   121a4:	fff00513          	li	a0,-1
   121a8:	fe1ff06f          	j	12188 <_close+0x20>

00000000000121ac <_exit>:
   121ac:	05d00893          	li	a7,93
   121b0:	00000073          	ecall
   121b4:	00054463          	bltz	a0,121bc <_exit+0x10>
   121b8:	0000006f          	j	121b8 <_exit+0xc>
   121bc:	ff010113          	addi	sp,sp,-16
   121c0:	00813023          	sd	s0,0(sp)
   121c4:	00050413          	mv	s0,a0
   121c8:	00113423          	sd	ra,8(sp)
   121cc:	4080043b          	negw	s0,s0
   121d0:	150000ef          	jal	12320 <__errno>
   121d4:	00852023          	sw	s0,0(a0)
   121d8:	0000006f          	j	121d8 <_exit+0x2c>

00000000000121dc <_lseek>:
   121dc:	ff010113          	addi	sp,sp,-16
   121e0:	00113423          	sd	ra,8(sp)
   121e4:	00813023          	sd	s0,0(sp)
   121e8:	03e00893          	li	a7,62
   121ec:	00000073          	ecall
   121f0:	00050413          	mv	s0,a0
   121f4:	00054c63          	bltz	a0,1220c <_lseek+0x30>
   121f8:	00813083          	ld	ra,8(sp)
   121fc:	00040513          	mv	a0,s0
   12200:	00013403          	ld	s0,0(sp)
   12204:	01010113          	addi	sp,sp,16
   12208:	00008067          	ret
   1220c:	4080043b          	negw	s0,s0
   12210:	110000ef          	jal	12320 <__errno>
   12214:	00852023          	sw	s0,0(a0)
   12218:	fff00413          	li	s0,-1
   1221c:	fddff06f          	j	121f8 <_lseek+0x1c>

0000000000012220 <_read>:
   12220:	ff010113          	addi	sp,sp,-16
   12224:	00113423          	sd	ra,8(sp)
   12228:	00813023          	sd	s0,0(sp)
   1222c:	03f00893          	li	a7,63
   12230:	00000073          	ecall
   12234:	00050413          	mv	s0,a0
   12238:	00054c63          	bltz	a0,12250 <_read+0x30>
   1223c:	00813083          	ld	ra,8(sp)
   12240:	00040513          	mv	a0,s0
   12244:	00013403          	ld	s0,0(sp)
   12248:	01010113          	addi	sp,sp,16
   1224c:	00008067          	ret
   12250:	4080043b          	negw	s0,s0
   12254:	0cc000ef          	jal	12320 <__errno>
   12258:	00852023          	sw	s0,0(a0)
   1225c:	fff00413          	li	s0,-1
   12260:	fddff06f          	j	1223c <_read+0x1c>

0000000000012264 <_sbrk>:
   12264:	1d01b703          	ld	a4,464(gp) # 139e8 <heap_end.0>
   12268:	ff010113          	addi	sp,sp,-16
   1226c:	00113423          	sd	ra,8(sp)
   12270:	00050793          	mv	a5,a0
   12274:	02071063          	bnez	a4,12294 <_sbrk+0x30>
   12278:	0d600893          	li	a7,214
   1227c:	00000513          	li	a0,0
   12280:	00000073          	ecall
   12284:	fff00613          	li	a2,-1
   12288:	00050713          	mv	a4,a0
   1228c:	02c50a63          	beq	a0,a2,122c0 <_sbrk+0x5c>
   12290:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12294:	00e78533          	add	a0,a5,a4
   12298:	0d600893          	li	a7,214
   1229c:	00000073          	ecall
   122a0:	1d01b703          	ld	a4,464(gp) # 139e8 <heap_end.0>
   122a4:	00e787b3          	add	a5,a5,a4
   122a8:	00f51c63          	bne	a0,a5,122c0 <_sbrk+0x5c>
   122ac:	00813083          	ld	ra,8(sp)
   122b0:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   122b4:	00070513          	mv	a0,a4
   122b8:	01010113          	addi	sp,sp,16
   122bc:	00008067          	ret
   122c0:	060000ef          	jal	12320 <__errno>
   122c4:	00813083          	ld	ra,8(sp)
   122c8:	00c00793          	li	a5,12
   122cc:	00f52023          	sw	a5,0(a0)
   122d0:	fff00513          	li	a0,-1
   122d4:	01010113          	addi	sp,sp,16
   122d8:	00008067          	ret

00000000000122dc <_write>:
   122dc:	ff010113          	addi	sp,sp,-16
   122e0:	00113423          	sd	ra,8(sp)
   122e4:	00813023          	sd	s0,0(sp)
   122e8:	04000893          	li	a7,64
   122ec:	00000073          	ecall
   122f0:	00050413          	mv	s0,a0
   122f4:	00054c63          	bltz	a0,1230c <_write+0x30>
   122f8:	00813083          	ld	ra,8(sp)
   122fc:	00040513          	mv	a0,s0
   12300:	00013403          	ld	s0,0(sp)
   12304:	01010113          	addi	sp,sp,16
   12308:	00008067          	ret
   1230c:	4080043b          	negw	s0,s0
   12310:	010000ef          	jal	12320 <__errno>
   12314:	00852023          	sw	s0,0(a0)
   12318:	fff00413          	li	s0,-1
   1231c:	fddff06f          	j	122f8 <_write+0x1c>

0000000000012320 <__errno>:
   12320:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12324:	00008067          	ret

Disassembly of section .eh_frame:

0000000000012328 <__EH_FRAME_BEGIN__>:
   12328:	0000                	.insn	2, 0x0000
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
