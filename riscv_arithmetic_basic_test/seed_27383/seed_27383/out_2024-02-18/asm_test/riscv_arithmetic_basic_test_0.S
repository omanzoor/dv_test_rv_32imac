.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x29, 0x40001105
                  csrw 0x301, x29
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 1
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  li x29, 0x0
                  csrw 0x304, x29 # MIE
                  mret
init:             
                  li x0, 0xc
                  li x1, 0x0
                  li x2, 0xf44c30a8
                  li x3, 0x0
                  li x4, 0x807df410
                  li x5, 0xf89798d1
                  li x6, 0x80000000
                  li x7, 0x1416e538
                  li x8, 0x5
                  li x9, 0x80000000
                  li x10, 0x5
                  li x12, 0xc
                  li x13, 0x3
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0x3
                  li x17, 0x80000000
                  li x19, 0xb
                  li x20, 0x88e74021
                  li x21, 0x134b1336
                  li x22, 0xfa267934
                  li x23, 0x7
                  li x24, 0x0
                  li x25, 0x3
                  li x26, 0xf021f620
                  li x27, 0x0
                  li x28, 0xfbd48bf7
                  li x29, 0x80000000
                  li x30, 0xf9eabe93
                  li x31, 0x80000000
                  la x11, user_stack_end
main:             c.xor        s1, s0
                  c.andi       a3, 10
                  c.addi       a0, -1
                  auipc        t1, 347650
                  c.xor        a4, s0
                  mulhu        s6, zero, t5
                  sltiu        t2, s3, 109
                  c.or         a0, a1
                  c.addi4spn   s1, sp, 32
                  sll          t1, a3, a0
                  c.slli       s3, 12
                  slt          zero, s4, t5
                  divu         s10, a0, a4
                  mulhsu       s1, s11, a2
                  srli         zero, zero, 13
                  xor          t2, s5, s1
                  sub          a5, s9, a0
                  srli         s11, t4, 3
                  nop
                  remu         a2, s5, a2
                  lui          s5, 427352
                  auipc        t3, 319907
                  c.slli       t4, 21
                  sll          sp, a1, a7
                  andi         t1, gp, 1094
                  lui          s8, 446192
                  srl          a4, s5, t4
                  rem          gp, a2, s8
                  mul          s6, zero, t5
                  sub          zero, s7, a0
                  c.or         a5, a3
                  auipc        a5, 794443
                  sltiu        a4, t1, 973
                  srl          a3, ra, s9
                  slt          s7, s0, t3
                  c.xor        a5, a5
                  c.nop
                  srli         s10, t4, 0
                  c.nop
                  sltu         s1, s2, a7
                  mulh         a6, s3, s9
                  sra          a0, t2, a1
                  mulh         s3, t2, gp
                  c.lui        tp, 7
                  c.srai       a2, 7
                  add          a7, t0, s1
                  mulhu        a6, s11, s4
                  c.addi16sp   sp, -16
                  c.srai       a4, 8
                  mul          a5, a2, a2
                  c.xor        a5, a3
                  c.add        sp, tp
                  addi         gp, s6, -1253
                  auipc        a2, 608542
                  c.or         s1, s0
                  add          s4, s1, t6
                  c.addi16sp   sp, 288
                  mulhu        a2, a7, a5
                  add          t3, a5, s10
                  or           a0, a3, zero
                  ori          a6, a5, 1157
                  divu         a4, t6, t5
                  or           a2, s5, t3
                  c.li         t1, -1
                  mulh         t2, t1, t0
                  c.slli       a0, 14
                  sub          zero, sp, s0
                  mulhu        tp, t0, a1
                  c.addi16sp   sp, 80
                  c.and        a0, a1
                  c.add        a2, s11
                  c.li         s4, 9
                  c.add        s7, gp
                  remu         t0, s3, s0
                  c.xor        s1, a4
                  sra          a0, s3, gp
                  srli         gp, a1, 15
                  ori          s6, t3, 1364
                  srli         sp, gp, 28
                  slti         t6, a1, -1887
                  sltiu        t2, a4, -1093
                  c.mv         s10, s9
                  c.slli       a4, 19
                  c.add        tp, tp
                  slt          t3, t1, s3
                  c.srli       s1, 31
                  slt          a3, a6, t0
                  nop
                  srli         sp, a0, 21
                  srli         s7, a5, 4
                  c.addi4spn   a0, sp, 528
                  srl          t0, s9, a2
                  sub          t3, zero, a0
                  c.srai       a0, 31
                  div          s8, a0, tp
                  sra          a7, s10, s9
                  c.addi4spn   a4, sp, 32
                  c.li         t1, -1
                  c.addi4spn   s0, sp, 160
                  or           sp, s0, a7
                  c.li         s7, 5
                  nop
                  mul          s0, tp, s2
                  ori          s10, gp, 724
                  c.srai       a5, 15
                  srl          a7, s5, a5
                  div          s4, a7, a6
                  rem          t5, s6, s2
                  slt          s7, s8, s6
                  addi         s6, s11, -1605
                  c.slli       s3, 21
                  auipc        s1, 794071
                  xor          tp, t5, s1
                  c.xor        a5, a2
                  c.xor        a4, a3
                  c.and        a3, a2
                  addi         s5, a0, 1058
                  mulh         s11, s3, a7
                  c.addi4spn   s0, sp, 560
                  remu         a2, s6, a3
                  and          t5, t0, s5
                  c.sub        a0, a3
                  add          sp, t4, s6
                  srai         t3, a3, 21
                  slt          s11, s6, s0
                  addi         s11, ra, 1605
                  slti         t3, a1, -580
                  ori          a0, s3, -463
                  xori         a7, a5, -666
                  sltu         s1, a3, a1
                  sra          tp, zero, tp
                  remu         sp, t0, sp
                  c.xor        a3, a4
                  c.slli       s5, 10
                  sltiu        t6, s2, -1077
                  c.addi       s7, 16
                  slt          sp, t1, s6
                  c.lui        a4, 3
                  andi         s3, s2, 1201
                  c.addi4spn   a3, sp, 528
                  c.addi       a6, -1
                  remu         s3, zero, s5
                  mul          sp, t2, s2
                  addi         a0, s7, 50
                  c.mv         a4, s11
                  c.srai       a5, 29
                  slti         t4, gp, -1131
                  mulh         s8, a5, t6
                  c.srli       a5, 23
                  c.or         s0, a1
                  mulhu        s11, s2, a4
                  c.and        a0, a4
                  slt          t1, s5, sp
                  c.addi       s0, 2
                  sll          s7, s9, a7
                  auipc        a3, 168989
                  div          a5, s8, ra
                  c.nop
                  c.add        sp, t6
                  rem          s3, a1, sp
                  lui          gp, 1036096
                  c.nop
                  addi         ra, t5, 1500
                  mulhu        t0, gp, s8
                  c.andi       s1, -1
                  sll          t3, s3, t1
                  c.addi4spn   s0, sp, 672
                  c.sub        s0, s0
                  c.addi16sp   sp, 320
                  c.lui        s5, 26
                  c.mv         s0, s2
                  sll          a4, s7, a5
                  slti         t6, gp, 593
                  lui          a4, 454389
                  nop
                  c.or         a0, a4
                  c.addi4spn   a0, sp, 656
                  lui          a6, 473600
                  sltu         gp, t3, s1
                  div          t5, a0, a3
                  and          a7, s0, s11
                  add          t5, ra, a0
                  mul          s1, s0, s10
                  mulh         t4, sp, a7
                  slli         gp, a6, 23
                  srai         a5, gp, 10
                  remu         s3, s3, t5
                  addi         s8, s6, -1005
                  slt          a7, s3, s1
                  remu         a6, a7, s11
                  mulhsu       s7, t4, zero
                  c.mv         gp, a6
                  c.srai       a5, 11
                  c.srli       a3, 24
                  c.addi4spn   a5, sp, 352
                  sltiu        t4, t5, 251
                  srai         s7, s8, 25
                  sra          s4, s3, a2
                  slti         s10, a7, 660
                  mulhu        s1, s9, a1
                  sltu         s8, s11, t0
                  c.addi4spn   a4, sp, 272
                  slti         t4, a3, 1064
                  srli         t2, s0, 11
                  sll          t3, a3, a2
                  add          s11, t6, ra
                  lui          zero, 199918
                  nop
                  sub          t2, t6, s10
                  c.and        s1, a3
                  lui          s6, 792921
                  slli         a0, s7, 14
                  c.nop
                  andi         t2, t4, 159
                  c.andi       a2, 28
                  mulhsu       a6, t2, s4
                  c.xor        a2, a5
                  add          a3, t0, a2
                  srl          s11, a3, a6
                  c.nop
                  c.addi16sp   sp, 432
                  c.xor        s1, a1
                  srli         s1, a6, 29
                  xor          s6, t6, s7
                  c.nop
                  addi         s10, a1, 714
                  sll          zero, a4, a0
                  slli         a5, s9, 22
                  c.slli       t5, 17
                  sll          a2, t3, t6
                  or           t0, zero, s3
                  srai         s11, s5, 27
                  c.li         s5, -1
                  c.sub        a3, a4
                  remu         s1, s5, t1
                  lui          t4, 985688
                  c.li         sp, 17
                  c.sub        s0, a2
                  divu         a4, a7, a4
                  slti         a7, t6, 800
                  andi         t5, s0, -489
                  c.addi16sp   sp, 128
                  sub          zero, a7, s5
                  remu         a0, sp, tp
                  sub          a4, ra, sp
                  sra          t2, t5, a2
                  c.srai       a0, 25
                  auipc        s10, 309359
                  c.andi       a0, -1
                  c.srli       s1, 26
                  c.li         t0, -1
                  sra          t5, zero, s1
                  slti         zero, a6, -894
                  sll          a5, s6, s1
                  slt          a2, t3, s8
                  c.sub        s1, s0
                  andi         s1, t5, 573
                  addi         s7, t0, -316
                  c.nop
                  slt          a2, tp, s4
                  c.srai       a0, 3
                  sub          t4, t4, s2
                  c.li         a6, -1
                  rem          s8, s11, a7
                  srl          s4, t4, a5
                  srai         a7, gp, 27
                  addi         s11, a2, 1617
                  mulhsu       a7, s1, s1
                  c.addi16sp   sp, -16
                  mulh         t1, gp, t6
                  c.nop
                  mulhsu       s0, t2, t0
                  c.sub        s1, s1
                  c.and        a5, a4
                  rem          ra, s3, a0
                  ori          a5, sp, -1037
                  mulhsu       s1, a4, a7
                  or           t3, t3, s10
                  mulhsu       ra, a0, s11
                  slt          a5, t4, s7
                  xori         s1, t4, -657
                  remu         a6, sp, a2
                  c.addi16sp   sp, 400
                  srl          s1, a3, zero
                  mulh         t3, s8, s7
                  remu         t2, s8, tp
                  andi         t4, t6, 1196
                  auipc        t2, 689523
                  sub          s10, a5, a6
                  andi         ra, s9, 227
                  c.sub        a0, s1
                  c.nop
                  srli         a6, zero, 28
                  xor          t4, a2, zero
                  divu         s3, a6, s11
                  add          zero, s6, a0
                  c.andi       a2, -1
                  and          zero, a6, t2
                  c.slli       t1, 29
                  mulhsu       a0, s2, gp
                  srl          t6, s1, s0
                  c.add        s8, t3
                  sltiu        t5, t2, 945
                  c.addi       s10, -1
                  c.li         s4, 12
                  c.and        a4, a2
                  c.addi16sp   sp, -16
                  srl          t4, zero, s9
                  and          sp, a4, t2
                  or           s6, tp, tp
                  mulhu        sp, s1, s4
                  add          tp, s8, s2
                  c.nop
                  sltu         tp, zero, a7
                  c.and        a2, a0
                  c.srai       s1, 2
                  c.andi       a4, -1
                  c.lui        t2, 16
                  add          a0, s4, a6
                  or           s6, s9, t0
                  c.slli       t5, 18
                  c.nop
                  xori         s11, t1, 322
                  c.addi4spn   s1, sp, 96
                  srli         t1, s0, 26
                  sll          t3, t1, a4
                  remu         a7, s11, s8
                  c.andi       a2, -1
                  div          t0, ra, a6
                  and          t5, ra, t1
                  nop
                  sltu         s8, t0, a2
                  c.nop
                  c.andi       a2, -1
                  c.addi4spn   a3, sp, 960
                  remu         zero, s5, s2
                  sll          a5, s7, a0
                  slt          s4, s11, a7
                  slti         s1, s5, 543
                  div          ra, t6, t4
                  xori         t4, zero, 1909
                  or           t0, a2, ra
                  c.and        a2, a0
                  c.add        s10, a0
                  mul          s6, t6, a3
                  auipc        s1, 211613
                  nop
                  c.andi       s0, 13
                  srai         a6, ra, 31
                  srli         a2, t4, 30
                  ori          a2, t4, -219
                  and          s0, sp, s9
                  lui          a2, 865439
                  div          t4, a4, s7
                  add          s1, s3, tp
                  add          s10, a0, tp
                  c.addi16sp   sp, 16
                  div          a7, zero, a3
                  c.addi4spn   a3, sp, 592
                  lui          s10, 774756
                  c.and        a0, a5
                  xori         s4, s4, 1079
                  xori         a6, sp, 603
                  sltiu        a0, s3, -704
                  c.sub        a0, a3
                  sub          t0, s1, t2
                  slt          a2, s1, a7
                  c.lui        s6, 30
                  xori         a0, gp, 1728
                  c.xor        a2, a2
                  div          s4, t5, s8
                  srli         t5, s5, 11
                  addi         s0, s7, 1756
                  slli         s11, t2, 6
                  mulh         a0, s4, s0
                  mulh         tp, s6, s1
                  ori          ra, a3, 94
                  c.li         s11, 19
                  c.add        sp, tp
                  c.sub        a5, a2
                  mulhsu       s0, s0, a7
                  remu         gp, gp, zero
                  c.sub        a3, a4
                  slli         s5, s7, 17
                  slli         gp, t6, 30
                  c.lui        t1, 14
                  add          t0, s1, a0
                  add          tp, a7, t2
                  lui          a0, 482538
                  c.addi16sp   sp, 416
                  c.srai       a2, 9
                  add          a2, t4, tp
                  xor          sp, s8, s6
                  sra          a3, s1, s8
                  rem          sp, s1, zero
                  srli         gp, t2, 24
                  or           a5, t3, ra
                  c.addi       tp, 11
                  lui          gp, 726730
                  div          a5, sp, s6
                  c.andi       s1, -1
                  c.nop
                  remu         s11, a3, s11
                  andi         ra, s2, -1512
                  c.or         a3, a5
                  nop
                  slli         s6, tp, 27
                  add          t5, sp, t6
                  sub          s4, s8, a1
                  addi         ra, tp, 536
                  c.xor        s0, s1
                  slli         t5, s5, 24
                  and          s3, zero, a1
                  xor          t3, tp, s8
                  ori          a5, s6, 1124
                  sub          s6, t5, t6
                  add          a6, a4, a2
                  add          ra, a1, s4
                  c.srli       a0, 31
                  mul          t2, a3, ra
                  xori         s4, a0, -1149
                  slt          a7, sp, t6
                  c.andi       a5, 20
                  c.li         sp, -1
                  slt          a6, ra, a1
                  remu         s7, s9, s4
                  andi         sp, s7, 664
                  sltiu        t6, s10, -952
                  c.xor        s1, a0
                  lui          sp, 192732
                  mulhu        s4, a6, t6
                  or           a3, s3, s10
                  and          s4, s3, a4
                  c.and        s1, a5
                  c.srli       a0, 13
                  c.andi       a3, -1
                  c.slli       s5, 29
                  c.srai       a0, 17
                  slt          a5, zero, tp
                  srl          a2, s3, t1
                  c.and        a5, s1
                  divu         s0, zero, tp
                  xor          a4, sp, a6
                  remu         s5, s10, t3
                  srli         s5, a4, 0
                  c.xor        a5, a1
                  sra          s4, s2, gp
                  c.andi       a0, -1
                  remu         s11, t5, a3
                  c.andi       a2, 12
                  c.and        a5, a0
                  andi         s8, t0, 1262
                  sltu         t1, s8, s7
                  c.mv         t2, a5
                  andi         a5, a2, -1423
                  mulh         s6, a5, s10
                  xor          tp, zero, t2
                  srl          ra, s5, a1
                  or           t2, s11, s0
                  div          t3, s9, s8
                  srai         s7, a1, 27
                  srli         s1, a5, 15
                  srli         a4, s6, 27
                  andi         gp, a5, 1406
                  c.xor        a3, s0
                  mul          s10, sp, s9
                  c.or         a3, a4
                  srl          t3, zero, t3
                  sltiu        ra, a5, 1960
                  c.mv         a0, s1
                  sll          a4, t2, ra
                  addi         s11, t5, -1626
                  c.xor        a2, a4
                  sra          s1, ra, tp
                  divu         a2, a0, t3
                  remu         t6, zero, s4
                  div          s7, s1, s2
                  andi         s10, t2, -1599
                  c.srai       s1, 11
                  srl          s5, gp, s1
                  c.srli       s1, 21
                  srli         gp, s3, 31
                  srl          a2, s9, t4
                  addi         zero, zero, 85
                  c.srli       a2, 9
                  c.slli       s6, 16
                  slti         a0, t2, 1796
                  ori          a3, tp, -1384
                  sltu         s5, a3, t5
                  sra          s10, zero, s5
                  and          a3, s7, a3
                  c.srai       a3, 15
                  mulh         a6, s4, s9
                  c.or         a2, a1
                  c.or         a3, a0
                  c.addi       s3, 2
                  c.slli       ra, 22
                  c.slli       t6, 29
                  or           s5, a6, t3
                  andi         gp, gp, 1192
                  srli         zero, s4, 14
                  div          s5, s8, gp
                  sltu         gp, t5, t4
                  c.xor        s1, s0
                  c.xor        a0, a5
                  srl          tp, s4, t5
                  c.or         s0, a1
                  rem          s6, t6, sp
                  slli         s10, gp, 3
                  c.lui        ra, 6
                  c.li         t6, 12
                  c.add        t4, s8
                  c.sub        a2, a0
                  slli         s8, s5, 5
                  c.andi       a5, -1
                  sra          s0, t6, t0
                  div          a5, t3, tp
                  c.xor        a5, s0
                  c.srai       a2, 13
                  divu         t4, tp, a3
                  or           s8, s7, s7
                  c.addi16sp   sp, -16
                  c.srli       a5, 28
                  c.andi       s1, 31
                  mulhsu       s8, a4, a0
                  c.add        a2, a1
                  srli         a2, s9, 18
                  xori         ra, a7, 1557
                  c.xor        a0, s0
                  sltu         zero, ra, s3
                  remu         a0, t5, a2
                  c.lui        s4, 13
                  c.lui        a6, 23
                  or           ra, t0, a4
                  c.srai       s1, 14
                  c.xor        a4, a3
                  srai         t3, gp, 28
                  sll          zero, s3, a1
                  c.srli       s1, 9
                  c.or         a3, a4
                  remu         a7, sp, s11
                  c.nop
                  addi         s1, a6, -2018
                  divu         t5, a6, s7
                  lui          s0, 978618
                  auipc        s7, 168460
                  or           s6, s4, s7
                  sll          s8, a5, s9
                  sub          s7, s6, gp
                  c.addi       s7, -1
                  sll          s6, a3, t2
                  slt          t4, a1, s3
                  andi         a4, s4, 1770
                  mul          t4, a2, tp
                  srl          zero, s9, s1
                  c.srli       s0, 25
                  mulhu        s11, t4, a4
                  rem          s10, s10, t1
                  and          s11, s4, t2
                  sltu         ra, s8, sp
                  c.or         s0, a1
                  c.add        s11, ra
                  c.slli       tp, 21
                  and          t4, t3, a4
                  c.or         a2, s0
                  c.nop
                  c.and        a2, a5
                  and          s1, t6, s6
                  sltu         a5, s0, s6
                  c.mv         sp, ra
                  mulhsu       t4, t1, tp
                  srl          a4, t0, s4
                  addi         t0, t2, 1983
                  mulh         a7, a0, s1
                  c.addi       t3, -1
                  c.li         a2, 17
                  c.srli       s0, 5
                  c.addi4spn   a3, sp, 480
                  srl          t4, s7, s1
                  mul          s0, s11, s1
                  mul          s11, a6, s6
                  c.sub        a5, a3
                  sll          t4, s5, t2
                  c.li         s10, 6
                  c.and        s1, s1
                  c.srli       s1, 17
                  sra          ra, s7, s8
                  ori          sp, gp, -1873
                  mulhu        s5, s4, s8
                  remu         s11, a1, s7
                  sltiu        ra, s1, -723
                  mulh         s4, s5, a5
                  auipc        s0, 301219
                  rem          a7, t1, s11
                  c.li         s8, 19
                  c.srli       a5, 17
                  mulh         a5, gp, s3
                  c.sub        a5, a2
                  c.slli       s10, 10
                  sra          s1, t6, a1
                  c.nop
                  c.srai       a0, 9
                  ori          a5, t3, -1270
                  c.addi       sp, -1
                  mulh         t3, a3, s2
                  sra          sp, gp, a5
                  sltiu        t5, t1, -269
                  mul          ra, t3, a3
                  c.addi16sp   sp, -16
                  sll          t1, s11, gp
                  c.li         t2, -1
                  c.sub        a2, s1
                  mulh         tp, s7, s4
                  auipc        s8, 992996
                  mulh         t5, s9, s11
                  c.srai       s1, 17
                  c.nop
                  c.addi16sp   sp, 416
                  c.lui        s10, 22
                  auipc        a6, 10267
                  sltu         t3, tp, s8
                  slt          ra, a2, a0
                  mul          s6, a3, s7
                  srai         a0, s8, 6
                  andi         a2, a2, 533
                  slli         s3, t4, 18
                  c.or         a5, a4
                  or           a6, a5, gp
                  c.sub        a5, a3
                  c.add        t5, s10
                  slti         gp, s3, 1243
                  c.andi       a0, -1
                  remu         a2, t3, a3
                  slt          tp, a5, t3
                  divu         a4, t0, s6
                  c.addi16sp   sp, -16
                  c.addi4spn   a5, sp, 896
                  c.addi       s7, -1
                  mulhsu       t4, t4, sp
                  mulhsu       a7, a5, s11
                  c.lui        s10, 14
                  rem          a2, s8, t2
                  divu         sp, a1, zero
                  sra          t6, a7, s0
                  sub          s7, ra, a4
                  slli         t6, s0, 15
                  slti         t6, t2, -52
                  c.addi       sp, -1
                  slt          t6, sp, a7
                  sra          s0, s9, t3
                  srli         s5, s6, 27
                  addi         a6, s0, -1172
                  c.addi4spn   s1, sp, 624
                  nop
                  sub          ra, a4, s0
                  remu         s5, ra, s4
                  auipc        a3, 818008
                  nop
                  slt          t0, s8, ra
                  div          a2, t2, s3
                  rem          a4, s11, s8
                  c.lui        a2, 31
                  andi         a5, a2, -1729
                  xor          a5, s9, t2
                  add          t0, s7, t4
                  c.slli       t0, 2
                  andi         a0, a0, -1945
                  c.lui        s8, 4
                  srl          zero, a3, t3
                  sub          s11, t2, s7
                  slt          tp, s10, s5
                  remu         s3, s11, s9
                  c.srai       a3, 20
                  c.lui        t2, 20
                  c.addi16sp   sp, 144
                  c.addi4spn   a3, sp, 128
                  addi         t6, gp, -1635
                  add          s1, gp, a5
                  c.addi16sp   sp, 192
                  srai         t0, a3, 25
                  srli         a2, sp, 12
                  sll          a5, gp, a7
                  sltu         a4, t2, t0
                  div          s6, a2, t0
                  slti         t2, s11, -1567
                  srai         s10, a7, 27
                  mulh         s10, t3, t5
                  mulhsu       gp, a6, t0
                  mul          s1, s7, t4
                  c.nop
                  lui          t0, 938617
                  c.slli       t2, 11
                  c.andi       s0, 4
                  andi         a6, a4, 1533
                  sll          t3, s10, a0
                  c.addi       t3, 23
                  add          s8, s5, s6
                  xor          ra, t1, t3
                  slt          a4, a2, s1
                  slti         s6, a3, 981
                  lui          t2, 850722
                  auipc        t4, 611019
                  c.srai       a5, 11
                  ori          s5, zero, -279
                  lui          tp, 744334
                  ori          gp, s3, 562
                  mul          ra, t3, a2
                  sltiu        s1, a5, 271
                  c.li         ra, 3
                  c.and        a5, a2
                  c.or         a4, a2
                  slti         t4, t2, -513
                  c.addi16sp   sp, -16
                  c.sub        a2, s0
                  srli         a6, t3, 15
                  mul          s6, t5, s8
                  c.or         s1, a3
                  xor          t2, a7, a6
                  mulh         s4, a1, a5
                  c.sub        a0, a5
                  andi         s10, s7, -106
                  c.andi       a4, -1
                  rem          a0, s8, a7
                  xor          s1, a6, a4
                  c.and        a3, s0
                  sll          tp, a0, zero
                  c.slli       s8, 31
                  mulh         s10, s0, t0
                  c.srli       a4, 3
                  c.sub        a3, a4
                  divu         s4, s2, a6
                  c.and        s1, s1
                  c.li         a2, 17
                  addi         a7, gp, 1257
                  ori          s3, s4, -1782
                  mulhsu       t2, s4, s4
                  c.addi16sp   sp, -16
                  c.addi4spn   s1, sp, 560
                  c.add        ra, s9
                  srai         gp, s0, 0
                  c.add        sp, a5
                  mulhu        a2, s1, t2
                  addi         a6, s10, -1099
                  srai         gp, s4, 23
                  xor          s7, tp, zero
                  or           a2, s6, t6
                  or           a0, s3, s7
                  c.li         a0, 27
                  xori         s3, t3, 1443
                  c.slli       a7, 28
                  rem          s5, s2, a7
                  mulhu        tp, t5, s9
                  sltu         a3, tp, s4
                  c.andi       s1, -1
                  lui          a3, 938048
                  sub          a4, s0, sp
                  slti         s3, s4, 414
                  sra          t4, s3, s9
                  sll          a6, s3, a4
                  add          s11, a3, s2
                  sltu         a3, tp, t5
                  divu         t4, sp, a2
                  c.lui        t6, 21
                  c.xor        a4, a4
                  c.addi16sp   sp, 16
                  mulh         s4, a1, s0
                  ori          a4, s5, -1521
                  slt          t6, t6, t0
                  srli         s8, s7, 23
                  slti         t3, s0, 1999
                  srai         t2, a6, 11
                  sltu         t1, s3, a4
                  lui          s3, 415068
                  c.and        a4, a2
                  c.xor        a3, a4
                  sll          a0, s9, s4
                  sra          s10, a6, a1
                  remu         ra, s8, t4
                  slti         s0, t1, 543
                  c.add        t0, t4
                  mulhsu       t3, t0, a3
                  sra          tp, a6, a0
                  c.srli       a3, 3
                  sll          s4, a5, gp
                  c.addi       a6, -1
                  sra          s6, s10, ra
                  divu         t0, a5, t1
                  mulhsu       a2, s10, gp
                  div          sp, s2, s0
                  sll          gp, t0, s11
                  c.lui        s1, 29
                  sll          t5, s9, t1
                  nop
                  or           s8, s9, a5
                  c.or         s1, a3
                  sll          a3, a3, s8
                  nop
                  xori         s11, t1, 1366
                  rem          gp, s11, a7
                  auipc        s8, 845070
                  auipc        zero, 933191
                  mul          s7, s11, s3
                  remu         s3, a3, zero
                  mul          t5, gp, t5
                  slli         t2, zero, 28
                  srl          s11, t4, zero
                  c.nop
                  mulh         t0, a5, zero
                  c.sub        s1, a0
                  divu         t2, s5, s7
                  c.slli       s5, 4
                  c.slli       tp, 5
                  c.sub        s0, s1
                  c.li         s3, 24
                  srl          t6, t0, s6
                  add          t0, t4, zero
                  andi         sp, gp, 1055
                  divu         gp, s1, s11
                  xori         zero, s6, -1761
                  c.srli       s0, 11
                  slli         t6, a6, 16
                  xori         t4, gp, 1346
                  mulhu        t2, s1, a2
                  auipc        t0, 913634
                  srai         t4, t6, 3
                  srl          a2, s2, t0
                  xor          s10, a3, a3
                  c.or         a4, a2
                  c.addi16sp   sp, 448
                  c.li         s1, 31
                  c.mv         t3, s10
                  c.srai       a0, 31
                  xor          s3, t1, gp
                  divu         a3, t0, s6
                  c.addi16sp   sp, -16
                  auipc        s3, 980492
                  srai         tp, s10, 18
                  mul          t1, s11, sp
                  c.addi       s7, 2
                  srli         zero, t1, 17
                  c.add        s10, s0
                  sub          a6, a3, gp
                  nop
                  c.add        s4, a0
                  xori         s0, t3, -1633
                  remu         t1, a2, s4
                  mulhu        t2, a5, sp
                  c.andi       a0, 14
                  sltu         s0, zero, zero
                  sltiu        zero, s7, 1780
                  sra          s5, t3, t1
                  c.srli       s1, 25
                  c.addi4spn   s1, sp, 160
                  mulhu        s8, s1, a6
                  c.or         a0, s0
                  slt          zero, s6, s8
                  c.addi16sp   sp, -16
                  c.nop
                  and          zero, a6, a7
                  remu         s8, a2, sp
                  ori          s7, a3, 504
                  auipc        ra, 965463
                  c.srli       a5, 27
                  sltu         s4, sp, gp
                  lui          a0, 286451
                  nop
                  div          sp, a5, t5
                  lui          zero, 293545
                  remu         sp, a6, a3
                  c.addi16sp   sp, 416
                  sltiu        s7, t3, -8
                  slti         a0, s10, -939
                  sll          a7, s9, s5
                  remu         s0, s1, s3
                  c.srai       a5, 9
                  c.lui        s7, 16
                  c.nop
                  srl          ra, s5, a3
                  mulhu        t3, t4, t5
                  c.or         s1, s0
                  rem          t0, sp, t3
                  c.srli       s0, 4
                  sub          t6, a5, s10
                  rem          zero, a4, s7
                  slti         s8, a3, -667
                  c.srli       a5, 30
                  sub          t1, sp, s1
                  addi         s6, gp, 664
                  c.mv         s0, gp
                  xori         sp, ra, -619
                  c.sub        s0, a3
                  lui          a6, 644540
                  c.and        a2, a2
                  lui          a6, 134046
                  auipc        a4, 397600
                  c.slli       a0, 6
                  sltu         gp, s10, t1
                  mulhu        t0, s11, a5
                  c.nop
                  mulh         s5, t1, a3
                  c.mv         t1, s5
                  mul          t6, s10, tp
                  nop
                  c.sub        s1, a2
                  sll          s7, s7, a1
                  mulhu        a0, ra, tp
                  c.li         sp, -1
                  remu         s8, zero, tp
                  lui          ra, 990338
                  c.add        s10, a1
                  c.nop
                  ori          a7, s7, -220
                  mul          s3, t5, t6
                  c.or         s1, a1
                  mulhu        t1, t0, t2
                  c.add        a0, s2
                  div          a5, a3, s11
                  c.addi16sp   sp, -16
                  c.mv         s7, a2
                  xor          s10, s1, s3
                  rem          s10, s2, gp
                  sra          t5, a4, t3
                  and          s11, t1, s8
                  addi         t4, s7, -588
                  c.xor        a5, a3
                  srli         s6, s0, 0
                  div          s11, s10, t1
                  mulhu        a5, t0, a6
                  divu         s6, a5, s11
                  rem          s7, ra, s3
                  c.addi16sp   sp, -16
                  auipc        s11, 1014358
                  srli         t2, ra, 27
                  and          gp, t2, sp
                  and          a0, a1, s9
                  div          s1, a4, s1
                  mulh         s3, s0, t0
                  c.srai       s1, 21
                  div          a5, zero, a5
                  c.andi       s0, 20
                  c.add        a4, a3
                  c.li         tp, -1
                  auipc        s10, 213785
                  slti         ra, a0, 1925
                  c.nop
                  mulhsu       s0, t2, s1
                  auipc        gp, 441669
                  or           gp, t3, t5
                  nop
                  c.or         a3, a2
                  andi         gp, s5, 1244
                  slt          a0, s7, t5
                  c.nop
                  c.xor        a3, a0
                  sll          s11, t2, t1
                  c.xor        a0, a4
                  srai         s4, s9, 21
                  div          t5, t5, t1
                  c.addi16sp   sp, -16
                  c.sub        a3, a0
                  c.and        s0, a1
                  c.mv         a6, tp
                  c.xor        a4, s1
                  c.xor        a4, s0
                  sub          ra, s0, s10
                  xor          s10, t3, s8
                  mulhsu       gp, s1, s7
                  mulhu        t3, a7, s6
                  slt          a0, s9, sp
                  c.or         a0, a4
                  ori          s1, ra, -1112
                  srl          t6, t4, tp
                  sll          s5, s3, s5
                  addi         s7, t3, -189
                  addi         s6, s6, -1398
                  add          t6, t4, ra
                  c.addi4spn   a0, sp, 624
                  addi         tp, t0, 738
                  srli         a7, a1, 25
                  mulhsu       s11, s6, s11
                  c.srli       a4, 13
                  c.and        a5, a0
                  auipc        t6, 383106
                  slli         s8, t3, 1
                  sub          s8, t5, a0
                  c.sub        a4, a4
                  c.srli       a2, 16
                  auipc        t0, 443416
                  c.li         a5, 19
                  c.srai       a3, 13
                  or           s7, a0, a7
                  slt          ra, s1, t1
                  c.li         t4, -1
                  remu         a5, zero, t2
                  c.andi       s1, 27
                  andi         s6, s4, 1208
                  sub          s10, a6, sp
                  c.li         s3, -1
                  c.andi       a2, 22
                  nop
                  div          s6, t3, s10
                  div          t3, t0, ra
                  divu         t6, a7, a4
                  ori          t1, sp, 1203
                  sra          t0, t5, s11
                  mul          ra, gp, t0
                  addi         t6, s1, -714
                  or           t2, t6, s2
                  ori          t5, t2, -1710
                  mulhsu       a4, a7, a2
                  c.sub        a0, a4
                  div          t5, s3, t1
                  c.li         t1, -1
                  sll          s11, s8, tp
                  remu         a2, s5, a7
                  or           t6, t4, sp
                  and          t0, s9, s4
                  sltu         s10, zero, s5
                  xor          s4, tp, t6
                  c.addi16sp   sp, -16
                  lui          a2, 297892
                  c.srli       a0, 21
                  c.addi       s7, -1
                  c.andi       a5, -1
                  c.addi       s3, 23
                  c.andi       s1, 1
                  mulh         a7, s7, a1
                  c.and        a4, a2
                  srai         sp, gp, 3
                  lui          s11, 848520
                  c.nop
                  c.nop
                  c.add        t1, t6
                  c.addi16sp   sp, 352
                  c.add        a7, a3
                  c.srai       a3, 3
                  c.slli       t1, 23
                  c.li         t2, -1
                  sll          zero, s1, a1
                  xor          s4, s5, a3
                  lui          sp, 585010
                  sll          t2, t4, a3
                  mulhsu       zero, s3, s1
                  div          t5, a5, a7
                  div          s5, sp, sp
                  divu         s10, t6, s7
                  andi         s3, s2, -102
                  slti         s8, s1, -1394
                  sll          ra, t0, sp
                  div          t2, s1, a1
                  and          a2, s3, t5
                  srai         s4, a1, 28
                  mulhu        tp, gp, t1
                  mulhsu       s4, a1, s9
                  rem          t2, a4, ra
                  c.xor        a2, a2
                  c.and        a4, a0
                  slti         t6, tp, 1042
                  c.andi       s1, 13
                  c.andi       s1, -1
                  andi         s7, sp, 1501
                  sub          a2, s9, zero
                  nop
                  or           s10, s6, gp
                  srli         s4, zero, 23
                  slt          s3, a1, t4
                  rem          s6, t1, t3
                  and          s8, a0, t6
                  sub          s11, s5, zero
                  c.nop
                  c.xor        a5, a0
                  c.add        s11, a3
                  xori         t4, a6, 1480
                  srli         t4, t5, 17
                  addi         s11, t5, 559
                  mulh         gp, gp, a2
                  andi         a6, s11, 1472
                  c.mv         s1, t1
                  sltu         t4, a1, a2
                  and          s4, s6, tp
                  divu         a2, s11, a1
                  addi         t0, s7, 924
                  sra          t6, t6, a6
                  and          t1, a1, gp
                  nop
                  sltu         a3, t4, a3
                  c.mv         tp, s7
                  c.and        a4, s1
                  c.add        t2, a4
                  nop
                  c.slli       t5, 17
                  remu         ra, t4, a4
                  ori          t6, tp, 103
                  srli         zero, s3, 17
                  c.xor        a4, a1
                  c.addi16sp   sp, -16
                  sub          s7, t1, a2
                  srl          a0, t2, a5
                  slli         s3, a4, 21
                  sll          a2, t1, a2
                  c.slli       s8, 5
                  c.mv         ra, a4
                  slt          a7, a1, zero
                  auipc        t4, 517384
                  c.and        a5, a3
                  lui          s6, 604999
                  c.nop
                  c.nop
                  ori          s3, a0, -1442
                  slt          s3, tp, sp
                  srai         s4, s0, 23
                  c.addi       s11, -1
                  c.sub        a0, a4
                  c.lui        s5, 2
                  c.mv         s3, a1
                  srli         a7, s4, 23
                  andi         s0, s6, -2000
                  c.slli       s6, 10
                  mulh         s0, s5, s3
                  sll          s1, t4, sp
                  c.add        a4, t6
                  sltu         s6, t4, s1
                  slti         t6, s2, 95
                  nop
                  c.addi       t1, -1
                  addi         s4, s0, 780
                  sub          a4, a3, s9
                  xor          gp, zero, a3
                  c.mv         s3, s8
                  sub          sp, ra, s4
                  divu         a6, s11, s5
                  mulhsu       s1, t0, a6
                  auipc        t5, 1029334
                  c.addi4spn   a3, sp, 816
                  c.srai       s0, 16
                  divu         t5, t3, a0
                  mulhu        t2, a7, s3
                  srli         a6, s9, 6
                  xori         a0, a1, 1274
                  mulh         tp, t4, sp
                  andi         zero, s10, -743
                  add          t1, ra, a7
                  c.addi4spn   s1, sp, 832
                  slti         s11, t0, -1194
                  xor          t1, t5, a6
                  c.addi       a7, -1
                  sub          ra, s5, s0
                  c.andi       s1, -1
                  c.srli       a2, 20
                  nop
                  addi         s1, gp, 908
                  xori         a2, a4, 1157
                  andi         t2, a4, 1467
                  auipc        s1, 813439
                  sll          a6, a5, s11
                  sub          a5, t5, t5
                  c.or         s0, a1
                  mul          s10, s3, s5
                  mulh         t6, t3, a4
                  c.xor        s0, a0
                  xori         a3, t1, 1332
                  xor          s1, s4, s8
                  srai         s3, s6, 21
                  srai         a4, s4, 5
                  rem          zero, s2, t5
                  mulhsu       s8, s5, a3
                  divu         s3, zero, s0
                  rem          a0, t2, s10
                  andi         a3, s11, 1853
                  lui          s0, 185722
                  c.or         a0, a0
                  and          a5, t5, t0
                  mul          a3, t6, t4
                  srli         a6, a5, 0
                  xor          a7, a1, a2
                  c.li         s0, 20
                  rem          a0, s9, t6
                  c.and        s1, a4
                  c.srli       a2, 4
                  mul          s3, t5, t3
                  c.add        t6, a4
                  c.andi       a5, 24
                  lui          a6, 658600
                  mul          t4, s2, s7
                  c.nop
                  c.nop
                  addi         s3, s3, 1068
                  and          sp, t1, s1
                  c.lui        s6, 24
                  mulhsu       a3, t6, sp
                  c.lui        t1, 3
                  sltu         sp, gp, a7
                  remu         a3, a0, s9
                  c.lui        s3, 23
                  srl          tp, a0, s3
                  remu         a0, s4, t0
                  c.nop
                  c.addi4spn   a0, sp, 960
                  srl          t5, s1, a2
                  xor          a2, s7, a7
                  mulhsu       a4, s2, t0
                  and          s4, s1, s9
                  sub          t5, t4, a2
                  slt          s11, s8, a4
                  lui          zero, 932940
                  mul          a5, s11, a6
                  srli         a5, t2, 12
                  andi         t2, s10, 663
                  c.nop
                  remu         a2, s6, t3
                  c.slli       s8, 23
                  c.mv         t3, a6
                  sra          s11, sp, a0
                  sub          s7, gp, a5
                  div          ra, t2, s1
                  and          s6, t4, a5
                  sra          tp, a5, t1
                  div          t4, a5, s7
                  c.li         t5, -1
                  xor          s5, a6, s5
                  or           t5, a7, s11
                  slli         t6, a5, 18
                  mul          sp, a2, gp
                  srl          a7, a5, a0
                  remu         s11, t4, sp
                  c.nop
                  slti         t4, a1, -701
                  slli         t5, s8, 10
                  auipc        s5, 569066
                  sub          t3, a3, zero
                  andi         a5, a5, 1273
                  slli         t3, t3, 28
                  xori         a3, s8, 873
                  mul          zero, tp, t2
                  c.sub        a4, a5
                  auipc        t1, 146252
                  auipc        t1, 13708
                  slti         t3, s5, 1281
                  add          tp, a7, s3
                  c.addi       t0, 25
                  c.or         s1, a1
                  c.or         a5, a2
                  c.addi16sp   sp, 128
                  and          t0, t2, s3
                  sltu         a2, t2, s8
                  mulh         t4, a3, a6
                  divu         t2, a1, s4
                  c.srli       s0, 2
                  c.sub        a0, a2
                  xor          s11, a3, s9
                  c.nop
                  c.sub        a0, s0
                  c.mv         a7, s3
                  rem          sp, t5, a3
                  ori          s1, tp, -81
                  c.andi       a0, 30
                  c.li         s11, -1
                  c.andi       a2, -1
                  c.or         s1, s1
                  slt          t1, a2, a2
                  c.slli       s6, 9
                  c.slli       a3, 29
                  sub          gp, s10, zero
                  sll          tp, s6, sp
                  sltu         s7, a3, s2
                  c.addi16sp   sp, -16
                  sll          sp, tp, s9
                  divu         t0, s2, a2
                  rem          zero, a5, s2
                  srai         s8, t0, 24
                  add          a6, a0, a7
                  xori         s4, t5, 497
                  c.xor        a4, a2
                  c.li         t0, 2
                  rem          s3, t0, s6
                  sltiu        t5, t1, -1662
                  divu         t3, a4, s4
                  or           ra, s6, gp
                  srli         a2, zero, 24
                  c.addi16sp   sp, 368
                  ori          t5, s2, -349
                  c.addi       a3, 4
                  c.xor        a3, a4
                  c.srai       a0, 17
                  c.addi       t0, 3
                  c.sub        a0, a0
                  xori         s8, a6, 1223
                  c.sub        s1, a1
                  sltu         a4, s4, s5
                  c.nop
                  divu         s10, a0, s1
                  c.mv         t4, sp
                  nop
                  andi         t5, s9, -1951
                  c.and        a4, a1
                  sra          tp, sp, a3
                  remu         t0, sp, a7
                  xori         sp, a4, 1102
                  mulhsu       s7, sp, sp
                  srli         s3, a2, 9
                  c.srli       a0, 24
                  c.nop
                  c.mv         a2, a1
                  ori          a2, s10, -740
                  slti         a6, gp, 479
                  and          s6, a3, tp
                  srli         s3, s10, 12
                  sll          s6, s1, s11
                  nop
                  remu         t3, s5, t2
                  add          t0, tp, t6
                  c.add        s4, s5
                  c.andi       s0, -1
                  andi         s11, t4, 333
                  c.xor        s0, a2
                  and          s1, tp, s0
                  srai         t0, t0, 2
                  sltiu        t2, zero, 125
                  slli         zero, t1, 20
                  c.li         a5, 6
                  c.addi       a3, 21
                  ori          s1, t1, -1081
                  srai         t6, s5, 6
                  nop
                  slli         s8, a7, 16
                  c.nop
                  sra          a7, tp, t2
                  c.addi4spn   a4, sp, 64
                  sub          s11, a5, zero
                  addi         s7, t0, -1425
                  c.xor        a3, a0
                  and          s6, zero, t6
                  c.add        a0, ra
                  mul          t3, t6, a4
                  andi         t3, t3, -159
                  c.xor        a0, a2
                  ori          s11, s2, 1525
                  c.andi       a5, -1
                  c.addi4spn   s0, sp, 656
                  addi         a5, s0, 502
                  srl          t5, s3, s1
                  rem          s10, a5, t4
                  c.lui        s1, 3
                  sra          t6, a1, t3
                  mul          a0, a5, a1
                  slti         t3, zero, -14
                  sltu         s1, s10, gp
                  div          s7, s2, t4
                  slti         a7, s11, -1241
                  c.addi       s10, -1
                  c.slli       t6, 1
                  remu         s3, s9, s11
                  mul          s8, a2, gp
                  mulh         s6, a3, t1
                  auipc        t3, 869249
                  nop
                  mulhsu       a4, s3, t3
                  or           a0, a0, s1
                  c.nop
                  c.xor        a5, a1
                  c.addi4spn   a5, sp, 640
                  srl          a7, s8, a1
                  mul          s8, s7, a3
                  c.srli       s0, 17
                  c.addi16sp   sp, 496
                  c.srli       s1, 26
                  andi         a3, tp, 740
                  srl          s8, s11, t3
                  mulhsu       s4, s10, s10
                  xori         zero, t3, 1220
                  addi         t5, t0, 466
                  remu         s8, sp, s4
                  slt          a0, t3, a2
                  or           t0, t0, s5
                  c.nop
                  slti         s10, a7, -1640
                  remu         tp, s3, a4
                  c.xor        s1, s0
                  sra          a3, s10, s1
                  add          a3, s9, a5
                  srai         a6, s10, 31
                  srai         a6, t3, 8
                  c.addi4spn   s1, sp, 224
                  srai         a7, a7, 20
                  sltiu        zero, sp, 963
                  xor          t5, s2, a6
                  c.addi       t6, -1
                  c.or         a0, a1
                  c.slli       s5, 9
                  sltu         tp, a1, a2
                  ori          s3, a0, -876
                  slli         s7, a3, 16
                  sra          t0, t2, t3
                  remu         a7, sp, t2
                  lui          s1, 557150
                  and          s1, a1, a2
                  c.mv         t6, s8
                  c.andi       a0, -1
                  c.add        s10, t2
                  c.srli       s0, 9
                  div          t2, a0, tp
                  add          gp, sp, tp
                  c.addi       t3, -1
                  or           t1, s9, t1
                  xor          t0, s1, s8
                  c.nop
                  remu         gp, s1, a7
                  add          tp, a4, t5
                  remu         s5, s3, s2
                  ori          zero, s5, 1958
                  c.nop
                  auipc        sp, 340616
                  c.addi4spn   a5, sp, 496
                  c.xor        s1, a0
                  c.srli       a0, 14
                  c.addi       tp, -1
                  mulhsu       s7, s4, s7
                  srai         sp, a3, 4
                  c.lui        tp, 28
                  add          a2, s2, gp
                  c.xor        a5, a5
                  add          t1, t5, s1
                  c.sub        a5, a1
                  slli         s6, tp, 11
                  slli         s11, s4, 5
                  sll          s8, a6, gp
                  div          s11, s0, t2
                  c.slli       a3, 28
                  xor          t6, t0, zero
                  xor          s5, t3, tp
                  lui          s11, 834462
                  divu         a6, t4, sp
                  or           a6, ra, a3
                  mul          t1, s10, s3
                  andi         t4, a2, 1586
                  c.srli       a2, 24
                  srai         t6, a3, 26
                  rem          t5, s11, s5
                  mul          s3, zero, s4
                  c.lui        t3, 25
                  divu         t4, s0, t0
                  srl          a5, gp, t4
                  c.mv         ra, s0
                  c.li         s8, -1
                  c.li         s10, 29
                  and          s1, gp, t2
                  sltu         a3, a2, s6
                  srli         s0, s5, 5
                  slli         a3, s10, 28
                  c.srli       a5, 23
                  sll          zero, zero, sp
                  xori         t1, a0, -676
                  remu         a5, a2, zero
                  xor          a0, tp, s10
                  srli         s0, s5, 1
                  lui          s7, 356265
                  slli         a5, s3, 30
                  xor          s10, zero, t5
                  divu         s7, s11, ra
                  slli         t1, s3, 15
                  srai         a5, a4, 14
                  slt          s10, a0, s8
                  slli         s1, a2, 17
                  c.slli       s11, 9
                  c.xor        a5, a5
                  c.addi4spn   a3, sp, 240
                  mulhsu       t4, t0, t5
                  c.li         s10, -1
                  slt          t3, a4, t1
                  c.lui        a7, 17
                  xor          a7, a4, a1
                  c.sub        a3, a5
                  mulhu        a6, s5, t2
                  c.andi       a4, 8
                  rem          a0, tp, gp
                  srai         t4, a2, 10
                  c.lui        a4, 26
                  divu         a5, zero, a3
                  xor          a0, s4, a4
                  nop
                  c.nop
                  c.xor        a3, s0
                  c.nop
                  mulhu        t3, t6, a0
                  c.or         a2, s1
                  ori          gp, a7, -605
                  sltiu        t2, a2, 32
                  sra          ra, t1, t0
                  c.and        a5, a1
                  sltiu        s4, t0, 1451
                  mul          t3, zero, s9
                  c.lui        s0, 15
                  ori          s11, ra, -157
                  sltiu        a0, s6, -257
                  mulhsu       a5, s7, t0
                  addi         s1, a3, -407
                  divu         s4, s8, t0
                  add          t3, s0, gp
                  c.xor        s0, a4
                  sltiu        s3, s6, -1226
                  mulhu        a6, t3, ra
                  c.addi16sp   sp, 336
                  xori         s4, s5, 456
                  lui          s5, 136402
                  mul          s1, s11, t6
                  lui          ra, 514208
                  addi         s4, gp, -1284
                  slt          a4, t6, t4
                  auipc        a0, 712710
                  c.and        a4, a2
                  slli         zero, t6, 29
                  sltiu        t4, t6, -405
                  c.nop
                  c.andi       a5, 28
                  c.srli       a2, 1
                  c.addi16sp   sp, 352
                  divu         s7, zero, s4
                  c.addi4spn   a4, sp, 928
                  c.mv         s10, t5
                  c.addi       a7, -1
                  nop
                  add          t2, gp, s8
                  c.mv         a3, sp
                  c.add        sp, t4
                  auipc        a6, 814236
                  c.and        a3, a3
                  c.addi       t2, 17
                  nop
                  ori          s11, a5, -790
                  sltiu        a7, t4, -1932
                  ori          t2, tp, -1333
                  add          a3, t4, a2
                  c.xor        s1, a5
                  srl          s3, t3, a2
                  sub          a7, a0, t1
                  c.addi       s11, -1
                  sra          a4, tp, a0
                  and          s7, t1, tp
                  c.addi16sp   sp, 288
                  srl          t1, s7, t2
                  auipc        a3, 391524
                  slti         s11, s1, -1300
                  slli         a2, zero, 31
                  c.srai       a0, 11
                  c.add        a4, a1
                  c.lui        t5, 8
                  sub          a3, t1, gp
                  mulhu        t1, t2, t5
                  mul          sp, s10, s0
                  c.addi       s0, 16
                  c.nop
                  divu         gp, a4, s6
                  c.or         a2, a3
                  or           s8, a0, s2
                  remu         t1, ra, s11
                  remu         a0, s3, s10
                  c.srai       s1, 11
                  c.mv         t0, sp
                  mulhsu       s0, a3, a5
                  xor          a4, t3, s11
                  mulhsu       t6, t5, t2
                  andi         t6, a6, 616
                  c.addi16sp   sp, -16
                  remu         s11, tp, s10
                  c.addi16sp   sp, 384
                  c.or         s1, a3
                  sltu         a0, s8, a6
                  slt          s11, s6, s1
                  c.addi16sp   sp, 240
                  c.nop
                  c.sub        s1, a1
                  c.mv         t3, t3
                  c.addi4spn   a0, sp, 192
                  c.andi       a5, -1
                  c.or         a2, a2
                  slt          a5, t5, s1
                  xori         s3, t4, -735
                  c.addi       t2, 17
                  slt          a6, a3, t4
                  srai         t3, s1, 23
                  mul          s5, s7, gp
                  mulhsu       tp, s1, a1
                  slt          s0, a3, t4
                  sra          s1, t1, a6
                  srl          s10, s0, t2
                  c.and        a4, s0
                  c.addi16sp   sp, -16
                  or           s5, a2, s9
                  nop
                  c.addi16sp   sp, 192
                  xori         t4, s9, 1005
                  ori          s4, t1, -984
                  divu         a3, a0, s3
                  ori          s10, sp, -897
                  slli         gp, t0, 18
                  rem          s11, t3, t2
                  div          tp, ra, s10
                  or           t2, a6, t6
                  c.lui        ra, 1
                  srl          t4, s7, t0
                  mulhu        a6, s3, t4
                  srl          a6, ra, s4
                  srli         s10, t5, 22
                  mul          a6, a3, s3
                  auipc        tp, 887757
                  c.sub        s1, a1
                  c.addi4spn   s1, sp, 320
                  srl          s10, t1, t0
                  mulh         tp, t6, s5
                  c.or         a5, a3
                  srai         ra, a7, 11
                  c.nop
                  c.or         s1, a0
                  ori          a7, a1, -464
                  c.sub        a2, a0
                  srli         s10, sp, 17
                  div          s1, t1, s11
                  mulhsu       gp, gp, a2
                  sra          tp, a7, s7
                  xor          s3, s9, s8
                  c.lui        gp, 7
                  xori         s7, a5, 17
                  srai         s0, t3, 22
                  srli         t3, a2, 21
                  mulhu        gp, t6, a2
                  and          s3, a5, a5
                  xori         s11, s0, 1533
                  sra          s10, a7, a3
                  sltiu        a5, s9, -729
                  c.xor        a4, a4
                  c.srai       s0, 10
                  and          t6, s1, s0
                  addi         s10, ra, 145
                  xor          t6, a1, s1
                  sll          zero, t4, t2
                  mulhsu       s11, s5, gp
                  c.lui        a7, 3
                  c.andi       a5, 9
                  c.sub        s0, a5
                  srai         a5, ra, 31
                  c.li         a4, 22
                  andi         t5, a2, -1410
                  remu         s4, zero, s9
                  divu         s7, t5, sp
                  c.srai       a4, 23
                  mulh         a5, s3, s5
                  c.srli       s1, 16
                  c.and        s1, s1
                  c.slli       gp, 30
                  mulh         s0, gp, a5
                  c.xor        a0, a3
                  c.srli       a4, 2
                  c.srai       a3, 6
                  c.mv         s1, s6
                  xor          t3, a4, t3
                  addi         t4, ra, -626
                  c.srli       a4, 3
                  xor          s1, s5, s6
                  mulh         a4, s7, s11
                  mul          a3, s6, s6
                  mulhsu       a0, ra, s1
                  sra          a3, a0, s3
                  srli         a3, s10, 8
                  c.slli       sp, 6
                  ori          s11, t4, -779
                  xor          t2, t0, s2
                  c.li         tp, 21
                  rem          t0, s6, a6
                  sra          a7, s2, t6
                  c.add        t6, a6
                  xori         a0, s0, 1390
                  sltu         t3, s6, s6
                  c.add        s0, a4
                  srai         s8, t0, 11
                  add          s8, t3, s9
                  divu         s11, a4, s0
                  slti         s7, tp, -1932
                  c.srli       a3, 22
                  add          a7, a5, a3
                  c.nop
                  c.nop
                  nop
                  sra          a3, a2, t6
                  sll          s5, a3, t0
                  add          s5, s0, s5
                  c.mv         t6, s5
                  slli         s3, s6, 20
                  andi         s7, s11, -160
                  slli         s0, s5, 11
                  auipc        a2, 209981
                  andi         t0, a0, -1433
                  sltu         s10, t5, a3
                  c.lui        s8, 1
                  or           t1, s11, sp
                  c.and        s0, s1
                  c.addi4spn   a4, sp, 992
                  add          s11, t0, s8
                  remu         s6, s1, t2
                  or           s6, t2, s1
                  xor          s6, t5, t0
                  div          a5, s1, s5
                  c.or         a0, s0
                  sll          s8, s0, s11
                  c.or         s1, a5
                  rem          s10, a5, a3
                  c.mv         t2, t4
                  divu         s3, ra, t0
                  or           a3, ra, s1
                  xori         s10, a0, 378
                  sra          s0, t3, tp
                  sll          a2, s5, t2
                  c.li         s11, -1
                  c.srli       a3, 18
                  srl          s0, a2, s0
                  xor          s5, a3, s10
                  addi         gp, a4, 268
                  mulhu        a6, gp, s8
                  c.addi       s8, -1
                  xori         s1, tp, -1801
                  c.li         t3, 9
                  xor          t0, gp, t5
                  xori         a4, s11, 365
                  c.nop
                  c.and        a5, a4
                  c.slli       s4, 15
                  c.slli       t4, 5
                  c.nop
                  mulh         a3, t0, a4
                  mulh         s1, s1, t6
                  xori         s4, a5, 1161
                  c.add        a6, s11
                  slt          s3, s4, s2
                  addi         a4, t5, 222
                  c.and        a5, a3
                  xor          s4, sp, a1
                  mulhu        a6, s4, t2
                  c.srai       a5, 15
                  lui          s3, 101963
                  sll          a2, s4, s8
                  c.addi16sp   sp, 112
                  c.sub        a4, a4
                  mulh         t2, s2, s6
                  c.or         s1, a3
                  slti         s4, s9, -1600
                  c.mv         t2, s9
                  c.or         a4, a2
                  lui          s11, 911465
                  and          s11, a5, t6
                  c.slli       sp, 4
                  xor          a2, a0, sp
                  c.sub        s0, a0
                  divu         s10, s3, t5
                  c.li         sp, -1
                  c.li         s5, 24
                  slli         s10, s6, 15
                  sltiu        zero, s5, -1845
                  mulh         t2, s8, a7
                  c.nop
                  c.add        a4, a2
                  c.addi4spn   s0, sp, 400
                  sub          s3, a3, s3
                  c.li         s8, -1
                  c.sub        a2, a4
                  c.srai       s1, 10
                  c.mv         a7, tp
                  ori          t4, s11, 1105
                  ori          zero, gp, 657
                  slti         s11, t2, 665
                  mulhu        a7, s2, a5
                  auipc        s5, 752708
                  sub          a7, t6, s8
                  c.and        s0, s0
                  remu         t1, s6, t2
                  sra          s5, t2, a4
                  mulhsu       a7, t3, s3
                  rem          s3, zero, s0
                  add          sp, s9, s3
                  add          a6, a6, t2
                  mulhsu       a5, s11, s9
                  mulhu        t5, s0, sp
                  mulhu        a3, t4, a1
                  div          t5, s5, zero
                  add          s4, zero, t5
                  sltu         a4, s0, t5
                  slt          s4, t0, a3
                  slt          a0, s9, a0
                  c.mv         a0, s2
                  c.and        a4, a1
                  srli         s5, s6, 1
                  c.xor        s0, a3
                  mulhsu       a0, a6, a2
                  sltu         sp, a4, a0
                  mul          s1, t5, s8
                  c.addi       a3, 3
                  c.sub        a0, a2
                  slli         s3, sp, 21
                  c.add        a4, gp
                  sltiu        s3, s2, 405
                  c.mv         a2, ra
                  c.sub        a4, a0
                  auipc        a0, 119810
                  c.srli       s1, 12
                  sub          t3, zero, t6
                  or           a3, zero, s9
                  c.andi       s0, -1
                  xori         t2, t1, 1693
                  remu         a3, t2, a1
                  srli         a4, s2, 8
                  sltu         s11, s5, s8
                  c.srli       a3, 19
                  or           a2, a6, gp
                  c.srli       a4, 13
                  srai         tp, a0, 7
                  sra          s4, s5, s1
                  slli         zero, a1, 4
                  mulhu        zero, t0, s6
                  srli         a4, t5, 28
                  srai         s0, s9, 29
                  c.addi       a7, -1
                  c.addi16sp   sp, -16
                  or           t4, a4, t6
                  mul          a2, t1, t6
                  c.add        s6, t4
                  srai         s8, a0, 3
                  c.add        t2, ra
                  remu         s11, s3, zero
                  c.slli       a7, 15
                  c.lui        gp, 13
                  c.nop
                  and          t0, s11, a7
                  sltiu        s5, a6, -861
                  mul          t3, a7, s5
                  srl          s8, t2, a0
                  lui          s11, 742421
                  sub          t1, a1, t5
                  nop
                  and          t4, s3, s5
                  c.addi16sp   sp, -16
                  rem          zero, s11, tp
                  or           gp, a0, tp
                  c.nop
                  and          a5, s1, s6
                  c.addi4spn   s0, sp, 64
                  c.sub        a0, a2
                  add          t1, s11, s9
                  c.slli       s6, 8
                  slti         t1, gp, -1505
                  c.nop
                  c.srai       a2, 9
                  xori         t2, a6, -1515
                  c.add        s0, s1
                  or           s3, zero, s5
                  c.and        a0, a0
                  and          s0, s0, s8
                  c.nop
                  c.slli       tp, 11
                  mulhsu       tp, tp, a1
                  c.mv         s1, t5
                  mulhu        a4, a3, a4
                  c.addi16sp   sp, 208
                  c.srai       a0, 29
                  c.srli       s0, 13
                  sltiu        t4, s7, -474
                  ori          a4, s7, -195
                  slti         s4, a1, 1311
                  c.addi4spn   a3, sp, 688
                  c.addi       t4, 28
                  remu         t2, a0, a6
                  addi         s11, s8, -1936
                  addi         s8, t2, -1846
                  c.andi       a3, -1
                  sll          s3, s6, s11
                  c.srai       s1, 2
                  slti         t4, a3, -359
                  srl          s5, a7, a7
                  slti         s0, s6, -1761
                  mulhsu       t2, a4, a7
                  c.addi4spn   a0, sp, 912
                  sltu         t3, ra, t4
                  c.addi16sp   sp, 272
                  auipc        s7, 831901
                  ori          s0, s1, 747
                  sll          s5, s4, a7
                  sub          t0, s0, sp
                  add          s5, t0, s3
                  lui          a6, 667695
                  c.xor        s1, a5
                  srl          a0, a0, s6
                  c.addi4spn   s0, sp, 704
                  c.addi       s11, 5
                  c.or         a0, s0
                  slt          t3, a6, gp
                  andi         a5, t5, -723
                  mulhu        s6, s5, t4
                  ori          s1, s7, -69
                  srl          tp, sp, t3
                  srli         s10, s2, 6
                  srli         s3, a2, 6
                  mulh         s7, s3, a6
                  mul          s0, a6, gp
                  c.add        t1, gp
                  div          s5, s1, sp
                  rem          t2, a3, t3
                  rem          s1, s9, ra
                  c.srai       s1, 31
                  divu         s8, t0, s0
                  xori         a5, a3, -401
                  c.mv         t4, s1
                  c.or         a5, a0
                  c.li         gp, -1
                  slti         s3, a5, -715
                  c.li         s3, 15
                  c.addi4spn   a3, sp, 432
                  or           s8, a0, s2
                  c.or         a4, a1
                  c.andi       s1, -1
                  c.addi4spn   a2, sp, 528
                  divu         s5, s11, a7
                  slti         ra, a1, 720
                  andi         t0, a2, 1600
                  srli         s7, a3, 16
                  sra          s0, a7, s0
                  xor          ra, gp, t5
                  mulh         ra, a5, t1
                  sub          zero, a7, a2
                  c.sub        a5, a2
                  c.srli       s0, 1
                  c.addi       a7, -1
                  c.srli       a0, 12
                  c.lui        t6, 26
                  sra          tp, t6, s5
                  c.xor        s1, a1
                  addi         s8, s4, 439
                  c.andi       a0, 4
                  rem          s6, sp, t1
                  or           s3, t2, a1
                  mulh         a0, sp, s2
                  andi         s3, zero, -426
                  srli         a5, s1, 15
                  and          t2, gp, t4
                  div          gp, a5, a4
                  divu         a4, s6, s10
                  auipc        s4, 947275
                  xor          gp, a7, s7
                  ori          s11, t5, -172
                  mulhu        s8, a7, s0
                  c.slli       t3, 31
                  c.slli       a5, 21
                  c.xor        a2, a2
                  c.lui        a4, 21
                  sltiu        s6, t4, 351
                  mulh         s1, a0, s8
                  xor          t2, t4, t1
                  c.add        sp, s5
                  or           a0, sp, t4
                  or           a7, gp, t1
                  xor          t2, zero, t0
                  divu         s10, zero, s8
                  c.or         a0, a1
                  c.xor        s1, a2
                  div          zero, s6, a4
                  slti         s4, s3, -570
                  addi         sp, s9, 1714
                  srai         s6, s2, 3
                  c.andi       a4, -1
                  mulh         s0, s5, a2
                  sub          s3, t3, t0
                  sra          s3, ra, t0
                  nop
                  c.addi16sp   sp, 32
                  sub          t2, a5, t5
                  slli         a3, t6, 18
                  c.xor        a3, a3
                  c.and        a0, s1
                  auipc        gp, 296743
                  c.slli       t1, 8
                  sltiu        a5, a7, -1942
                  slti         a5, s0, 1168
                  c.slli       s0, 15
                  srli         t1, t2, 28
                  sub          a2, t1, a7
                  c.andi       a0, 6
                  lui          sp, 397432
                  mul          s5, s7, t4
                  c.addi       t4, -1
                  c.xor        a5, s0
                  auipc        t5, 333935
                  c.andi       s1, 6
                  mulh         s7, t0, s2
                  c.slli       t4, 18
                  mulhu        s5, a7, zero
                  c.sub        a5, a5
                  rem          a5, s8, sp
                  c.addi       t2, 10
                  c.srai       a0, 8
                  c.andi       s1, 28
                  sltu         gp, s0, ra
                  slli         tp, s2, 9
                  c.mv         a0, t4
                  andi         s0, s9, -766
                  c.addi4spn   a4, sp, 704
                  slt          t4, a2, a3
                  sub          a3, t5, s2
                  auipc        a3, 486028
                  c.srai       a0, 29
                  auipc        ra, 110277
                  srai         zero, t0, 28
                  rem          s4, ra, a4
                  xor          s11, s8, a2
                  c.addi16sp   sp, 272
                  sra          ra, a2, sp
                  sra          s1, a0, s3
                  div          t5, s1, tp
                  remu         s6, s10, a7
                  mulhsu       t4, s5, sp
                  mul          s11, s3, gp
                  slli         a2, s4, 19
                  c.add        s0, a4
                  c.andi       s1, -1
                  rem          s3, t0, a0
                  mulhu        s1, s11, a1
                  xori         s3, s2, 1675
                  slt          s3, s0, s11
                  srl          s6, a0, t0
                  add          s5, zero, a5
                  c.xor        a2, a1
                  mulhu        t0, s6, s7
                  lui          s8, 304103
                  c.or         a4, a3
                  c.xor        s0, a0
                  c.li         s3, 9
                  lui          sp, 154734
                  div          t2, a6, a3
                  mulhsu       t0, a3, s6
                  mulh         t3, s8, a3
                  sltu         a6, s0, s2
                  c.li         s4, -1
                  mulhu        s1, t3, t1
                  c.lui        a0, 18
                  sltu         s0, s0, t4
                  sra          t0, s3, a6
                  rem          s3, s1, s8
                  add          a3, s11, s11
                  srl          a6, a4, a1
                  remu         s11, t4, a1
                  slti         sp, a7, 1881
                  mul          a5, t4, a3
                  add          s4, a6, t5
                  c.or         s0, s0
                  rem          a3, t4, a2
                  slli         sp, a5, 30
                  c.slli       t0, 30
                  divu         a6, s11, a1
                  c.addi4spn   a4, sp, 544
                  c.mv         a6, t4
                  nop
                  addi         s6, s8, 347
                  c.srli       a2, 23
                  c.addi4spn   a4, sp, 112
                  srl          a2, s1, a6
                  mulh         t0, ra, s0
                  srl          ra, t4, s1
                  mulh         gp, t6, zero
                  auipc        s4, 696707
                  mulh         gp, gp, t6
                  c.lui        tp, 9
                  mul          t1, s4, a0
                  add          zero, t5, a0
                  mulh         a6, s10, t4
                  sltiu        t2, s11, 22
                  c.addi16sp   sp, 48
                  c.and        s1, s0
                  div          t5, a7, s8
                  c.addi       a2, -1
                  sltiu        tp, s5, 1674
                  c.nop
                  c.addi4spn   s0, sp, 128
                  c.add        a6, a0
                  mulh         gp, gp, tp
                  addi         s5, t4, -1500
                  c.add        s5, a0
                  slli         s0, t2, 28
                  c.mv         ra, gp
                  slli         t3, a1, 19
                  sra          a4, a7, t0
                  c.add        a5, a4
                  add          sp, s9, a5
                  slli         s1, a5, 11
                  add          s11, a6, ra
                  c.addi       a6, 30
                  sll          a7, a5, a6
                  mulhu        t4, sp, a2
                  slli         zero, a4, 21
                  sll          s0, s8, a0
                  c.nop
                  c.andi       a4, 12
                  c.lui        gp, 7
                  and          tp, a5, s7
                  c.add        t2, t5
                  c.lui        t0, 14
                  srl          a6, s10, s0
                  sltu         t3, a0, t5
                  c.addi4spn   a4, sp, 48
                  sll          s6, s6, t2
                  rem          t6, a7, t1
                  c.addi16sp   sp, 480
                  c.addi       t1, 17
                  c.addi       s4, 21
                  sll          s7, a1, a2
                  mul          t3, a1, a4
                  c.and        a5, a3
                  c.mv         s10, a2
                  c.xor        a3, a0
                  mulh         ra, zero, a0
                  c.srli       a0, 21
                  mulhu        s10, a1, s10
                  nop
                  c.and        a3, a2
                  c.addi       t5, -1
                  c.add        s3, a3
                  c.lui        t0, 13
                  slli         a2, s3, 4
                  andi         gp, s5, -1959
                  srai         a7, a7, 8
                  srli         sp, s6, 5
                  lui          t3, 1028303
                  mulhu        gp, s3, a3
                  add          t6, s11, s1
                  nop
                  remu         s1, s5, a3
                  nop
                  c.or         s0, a4
                  rem          a7, a0, s4
                  mul          s0, s9, s7
                  c.add        a4, s8
                  sra          s0, ra, a0
                  rem          s4, gp, s0
                  sub          a4, a5, t5
                  div          a2, zero, t2
                  sub          t4, a7, a5
                  rem          s1, s10, a0
                  c.mv         sp, s7
                  c.andi       a2, -1
                  srai         a4, s8, 17
                  c.xor        a5, a3
                  sltiu        tp, t4, 237
                  c.li         s3, -1
                  nop
                  srai         s0, s2, 31
                  c.addi       ra, -1
                  c.xor        a0, a3
                  remu         gp, a0, s2
                  sltiu        s11, s0, -166
                  div          a4, s11, s7
                  lui          a2, 153504
                  slti         a4, gp, 333
                  sub          t3, s9, s7
                  slli         s10, t3, 4
                  xor          s3, a0, t1
                  slt          s0, t6, t1
                  c.sub        s1, a2
                  c.li         sp, 22
                  and          a7, tp, s8
                  c.sub        s0, a0
                  mulh         t1, zero, zero
                  mul          s10, zero, t3
                  c.slli       ra, 20
                  mul          s1, t1, s8
                  sra          a7, s8, s7
                  c.slli       s8, 31
                  sra          s11, a2, s0
                  c.lui        t2, 27
                  xori         s7, s2, -1732
                  divu         t5, s1, s9
                  addi         s8, a6, -1440
                  nop
                  slt          t3, a6, s8
                  c.lui        t2, 6
                  mulh         a0, gp, gp
                  c.slli       t1, 8
                  c.li         t0, 28
                  remu         ra, t4, t4
                  remu         s7, t6, t2
                  rem          a7, s10, a2
                  mulhsu       t5, zero, s2
                  remu         s1, t3, t1
                  lui          t2, 772776
                  c.or         a2, s1
                  mulhsu       t5, a4, tp
                  c.srli       a0, 11
                  sub          t4, s0, t3
                  c.mv         a3, a2
                  c.li         a5, 29
                  c.slli       sp, 29
                  lui          a0, 231539
                  xori         s6, s3, 693
                  xor          s3, s6, s8
                  slt          ra, tp, tp
                  sltiu        t3, sp, 1363
                  c.andi       a2, -1
                  divu         a2, s11, s10
                  c.add        a3, s11
                  srl          s6, s9, a6
                  srli         t3, tp, 19
                  div          t2, s1, a0
                  c.nop
                  c.addi       tp, -1
                  remu         tp, a2, t4
                  divu         a0, a5, t2
                  rem          tp, t2, t0
                  xori         s5, s10, -699
                  slti         sp, a2, -1253
                  c.srai       a3, 22
                  sub          s8, tp, t1
                  c.addi4spn   a5, sp, 960
                  add          a3, ra, gp
                  rem          s0, t1, t5
                  andi         a5, sp, 1236
                  c.addi       gp, 5
                  or           s8, a6, s0
                  remu         a0, s7, a7
                  mul          t2, s7, s8
                  andi         a5, t0, -1795
                  auipc        a7, 520519
                  srl          a2, s0, a4
                  slli         a5, a3, 23
                  sra          s11, a7, s1
                  c.li         ra, 2
                  sltiu        s10, a0, 486
                  c.andi       a2, -1
                  c.sub        a0, a2
                  mulhu        s6, a3, gp
                  sltu         s7, s7, s4
                  slti         s4, t5, -1490
                  sltiu        t4, tp, 467
                  auipc        a5, 675968
                  c.and        a4, a5
                  mulhu        s4, s8, a7
                  div          s10, t0, s3
                  c.or         a3, a3
                  rem          a4, t5, a2
                  srl          a2, a7, ra
                  c.slli       t0, 29
                  slt          zero, s8, s9
                  rem          s11, a1, s11
                  sra          a4, t3, a1
                  xori         s3, s10, -1387
                  mul          s1, s5, t5
                  c.srai       a2, 6
                  c.add        t6, a3
                  slli         a6, s1, 4
                  c.addi4spn   a0, sp, 448
                  c.li         s0, 15
                  rem          sp, s8, sp
                  add          a6, t6, a1
                  c.and        a5, a1
                  sll          a6, t5, zero
                  sltu         s1, t5, s5
                  c.nop
                  srl          gp, s10, t0
                  addi         a0, t2, 1001
                  c.srli       a4, 18
                  ori          ra, s6, -612
                  c.addi16sp   sp, 352
                  c.add        a5, t2
                  c.srli       a4, 21
                  addi         a3, s9, -397
                  xor          tp, s11, s7
                  c.srai       a0, 24
                  xor          zero, s10, s1
                  c.and        a5, a4
                  srli         t2, s2, 28
                  srl          s6, a5, t5
                  mul          t6, a3, a3
                  sltu         s3, s5, s10
                  lui          sp, 501972
                  c.srli       s1, 21
                  xori         t4, s7, 168
                  xor          a0, a5, t0
                  or           t3, t2, t6
                  c.andi       a3, 7
                  remu         t5, t5, s6
                  c.addi       a2, 17
                  c.xor        s0, a4
                  c.srli       a4, 6
                  c.addi4spn   a5, sp, 624
                  addi         a6, a1, 1528
                  srai         s6, s9, 11
                  mul          s6, gp, s3
                  div          s4, s5, s9
                  c.sub        s0, a0
                  xori         a0, s1, 144
                  addi         a4, a0, -199
                  c.nop
                  c.li         a6, 8
                  c.mv         a0, a7
                  or           t4, a0, s4
                  lui          a4, 811405
                  c.add        a7, a5
                  lui          s4, 62943
                  c.andi       a0, 17
                  srl          t1, t4, s5
                  add          s3, gp, ra
                  c.nop
                  mulh         a0, tp, zero
                  rem          t4, t3, a6
                  c.andi       s1, 30
                  sltu         t4, a0, a7
                  srl          s11, t2, t5
                  mulhu        s8, t3, a6
                  srl          s1, a3, s7
                  c.li         s0, -1
                  nop
                  mulhsu       zero, s2, a3
                  sltu         s11, s3, t3
                  c.mv         ra, s5
                  remu         t1, t1, s0
                  c.addi       t0, -1
                  mulhsu       t3, s3, s5
                  nop
                  c.li         t1, -1
                  slt          s8, s5, tp
                  c.slli       s0, 14
                  auipc        tp, 161042
                  c.mv         s0, t6
                  c.or         s0, a5
                  c.slli       s8, 5
                  c.lui        a2, 10
                  c.srli       a5, 13
                  slli         s5, t4, 17
                  c.and        a4, s1
                  sra          ra, t2, a0
                  sub          t6, s1, s9
                  xori         t6, a5, -1479
                  sra          s1, t2, a1
                  c.or         a0, s0
                  c.srai       s1, 31
                  srai         s4, t1, 6
                  slli         s5, s9, 17
                  lui          a5, 454311
                  mulhsu       a3, s7, zero
                  lui          t6, 875972
                  sltiu        tp, a3, -585
                  addi         s6, t6, -1567
                  and          s5, s11, a2
                  mul          t5, s9, a4
                  mulhsu       a4, a5, a5
                  c.mv         t5, s5
                  c.addi4spn   a5, sp, 400
                  ori          s5, t2, -1380
                  c.add        t1, a4
                  c.lui        gp, 11
                  mulhu        a6, a6, t0
                  c.nop
                  c.srli       a4, 18
                  srai         s11, t6, 22
                  mulh         t3, s9, tp
                  or           zero, sp, a0
                  rem          a6, t6, s0
                  lui          sp, 19160
                  c.or         a5, a5
                  c.slli       sp, 1
                  c.nop
                  slli         a3, s1, 13
                  remu         t2, t0, tp
                  c.srli       s1, 28
                  mulh         a2, sp, a4
                  c.andi       a5, 25
                  mulhu        a7, a0, a2
                  srai         s8, s3, 12
                  mul          s10, s0, s2
                  c.slli       t1, 20
                  addi         s6, a4, 638
                  xori         t1, a3, 1969
                  mul          t3, a6, a7
                  lui          s4, 42035
                  sltiu        s4, a0, -1001
                  auipc        s0, 604331
                  ori          sp, s8, -171
                  c.add        a0, t0
                  or           s8, s2, t6
                  mulhsu       s8, s2, a5
                  mulhsu       a6, s1, t1
                  sltiu        s5, s4, -160
                  div          s3, s5, s7
                  slti         s11, a6, 707
                  c.or         a5, a3
                  sltu         s11, gp, s6
                  divu         t0, s10, s10
                  slli         s1, s7, 28
                  sra          zero, tp, s3
                  c.and        a3, a5
                  c.add        a4, s0
                  sub          t2, sp, t3
                  c.andi       a4, 29
                  divu         a4, s5, t4
                  c.srli       s1, 3
                  sltu         s3, t6, t3
                  c.srai       a4, 29
                  srli         s4, s11, 27
                  and          sp, s6, a6
                  c.andi       a0, 17
                  c.srai       a4, 19
                  xor          s5, t0, t2
                  srl          tp, s7, s11
                  sll          ra, s2, sp
                  sll          s7, s6, a7
                  c.li         t3, -1
                  and          sp, s5, t6
                  xor          tp, s4, s5
                  srl          t4, a5, ra
                  rem          a7, sp, a3
                  c.lui        ra, 28
                  slti         t5, t6, 1632
                  sra          sp, a0, a4
                  andi         s7, a4, 1516
                  sra          s8, t6, s3
                  rem          a2, s3, s5
                  addi         a4, t0, -522
                  mulhu        a2, t5, tp
                  c.srli       a0, 27
                  and          a0, a4, zero
                  c.lui        a3, 12
                  sltiu        t4, s9, -655
                  rem          sp, a0, a1
                  andi         t3, t6, -172
                  c.srai       a3, 4
                  c.or         s1, a1
                  c.addi16sp   sp, -16
                  slt          zero, a6, s7
                  srli         a5, s11, 23
                  c.srai       s0, 31
                  srl          t0, a1, t5
                  srli         s8, a3, 12
                  div          zero, s5, s6
                  add          sp, gp, s4
                  remu         zero, s1, s0
                  sra          sp, a6, ra
                  c.andi       s0, 14
                  sra          sp, s11, t4
                  c.and        s1, s0
                  c.addi       tp, -1
                  c.lui        a0, 20
                  xor          a7, a0, s2
                  c.or         s0, a4
                  c.or         s1, a2
                  xor          a4, s6, s10
                  c.li         a2, -1
                  c.or         a0, s1
                  div          s0, s7, a5
                  ori          t1, a2, -1481
                  srli         a0, a3, 13
                  c.and        s0, a3
                  srai         s6, s11, 28
                  c.slli       t2, 6
                  addi         t5, s7, 517
                  xor          a5, s0, a3
                  and          s7, a1, s2
                  c.addi16sp   sp, 224
                  c.xor        a2, a5
                  and          tp, a5, t5
                  c.or         a5, a3
                  andi         s4, s11, -650
                  lui          a4, 197941
                  c.and        a0, s0
                  xori         zero, s6, 848
                  c.addi16sp   sp, -16
                  remu         t0, s1, t0
                  c.slli       tp, 4
                  addi         a0, tp, 122
                  sltu         a4, t2, s1
                  divu         a7, gp, t0
                  sra          a4, t2, ra
                  sltu         t2, a4, t3
                  mulhsu       s3, s7, s9
                  mulh         s3, s10, a7
                  lui          a2, 915259
                  c.andi       a0, -1
                  c.addi       a2, -1
                  c.slli       s7, 25
                  srai         s10, a2, 19
                  addi         a2, t2, 250
                  add          t0, s1, t3
                  addi         s3, s5, -847
                  addi         a4, a3, 1250
                  c.slli       t2, 27
                  sltiu        ra, s5, 872
                  c.addi4spn   a0, sp, 704
                  divu         t4, s8, s8
                  c.addi16sp   sp, 416
                  slli         t3, s4, 20
                  and          t4, t5, a6
                  c.addi       t4, -1
                  c.add        t1, s10
                  mulhsu       s10, t4, s7
                  sub          t2, a2, t4
                  andi         t0, t3, 1432
                  auipc        a3, 566990
                  c.sub        s1, a0
                  xori         t5, a3, 603
                  sra          sp, gp, s9
                  remu         s5, s8, ra
                  xor          s1, t3, t1
                  c.andi       a5, -1
                  or           s1, s1, s10
                  div          t2, tp, a1
                  c.nop
                  c.and        s0, a0
                  c.and        s0, a1
                  c.addi16sp   sp, -16
                  c.andi       a4, 30
                  c.nop
                  c.or         s0, a5
                  or           a6, a1, s2
                  div          s1, a3, a3
                  xor          a7, gp, t6
                  sltu         a7, a4, tp
                  sub          t3, s1, a0
                  ori          a5, a7, -667
                  c.srli       a5, 18
                  or           t1, s5, s4
                  srli         s6, s5, 10
                  divu         s8, s6, a3
                  auipc        a4, 254768
                  sra          s3, t0, t5
                  mulhsu       a2, a6, s8
                  sub          s6, s11, t6
                  c.xor        a5, a1
                  sll          a2, tp, a2
                  mulhu        a0, s6, a0
                  srl          tp, s5, a1
                  c.nop
                  mulh         a5, sp, tp
                  remu         s4, t1, s8
                  c.slli       t2, 23
                  nop
                  c.nop
                  slt          a0, s10, t4
                  xori         t6, s11, 1362
                  c.srli       a4, 31
                  c.or         a3, a2
                  c.and        a4, a4
                  c.addi4spn   a5, sp, 736
                  mul          s11, zero, zero
                  c.li         s5, -1
                  lui          s8, 375155
                  addi         t1, zero, -1688
                  c.xor        a0, a4
                  srli         t0, t5, 27
                  sll          a7, s3, ra
                  lui          s1, 1035244
                  add          s6, t4, t6
                  remu         a7, s6, s6
                  srai         t4, sp, 1
                  c.or         a0, s1
                  c.addi       s4, -1
                  c.sub        a0, a0
                  c.srai       a4, 28
                  lui          s11, 166415
                  c.li         a6, 19
                  sub          t2, a4, a4
                  sub          zero, a3, sp
                  c.srli       a5, 15
                  c.nop
                  c.slli       a5, 21
                  rem          t0, a5, t6
                  sll          a3, t4, t6
                  c.add        t3, s7
                  slt          a7, sp, zero
                  c.nop
                  and          gp, a5, t4
                  ori          sp, t4, 1928
                  andi         tp, t6, -731
                  or           s3, s4, s7
                  c.lui        s6, 4
                  c.mv         s8, s9
                  c.srli       a4, 1
                  srai         s4, a0, 9
                  mulhsu       s11, t6, a7
                  sub          t4, tp, s10
                  rem          s1, t2, s8
                  or           t2, t2, t2
                  c.xor        a4, a2
                  and          s6, t5, s7
                  xori         zero, s10, 1329
                  sub          s8, gp, sp
                  div          t3, ra, t1
                  c.srai       a5, 18
                  c.nop
                  add          sp, a0, sp
                  srli         s5, t4, 1
                  addi         zero, a3, -1881
                  ori          a0, ra, -182
                  mulhu        a7, t2, s6
                  mulhu        gp, ra, t5
                  divu         a6, s6, s4
                  srli         t5, t4, 24
                  add          a6, s6, a7
                  slli         s6, s2, 25
                  mulhu        ra, s4, s4
                  addi         s6, t3, 1775
                  divu         t0, t4, s6
                  sub          tp, s9, t5
                  mul          s8, a5, s10
                  c.andi       a0, -1
                  sub          a2, s2, s4
                  rem          sp, a4, t5
                  mul          s5, t4, zero
                  c.add        a7, s6
                  auipc        s6, 51512
                  slli         s0, s9, 23
                  sub          ra, t2, a3
                  c.lui        a0, 17
                  mulhsu       a7, tp, s9
                  c.and        a5, a2
                  mulh         a6, t6, t4
                  slli         s11, a2, 18
                  nop
                  c.slli       t6, 12
                  c.addi       s7, -1
                  andi         t6, s1, 1056
                  sll          t0, a4, s3
                  srl          tp, a2, t5
                  srai         a5, t4, 31
                  c.li         a5, 27
                  c.addi16sp   sp, -16
                  srli         s0, gp, 7
                  c.slli       s5, 3
                  c.addi4spn   a4, sp, 752
                  mulh         tp, zero, s9
                  mulhu        s4, t5, t0
                  xori         t1, zero, -958
                  c.addi       a5, -1
                  slt          s3, s0, a2
                  c.addi16sp   sp, -16
                  c.add        a5, t0
                  srl          sp, t5, a0
                  c.lui        s7, 6
                  and          s8, a5, s2
                  div          s1, a2, t3
                  srai         t3, s0, 11
                  srli         t3, s10, 23
                  and          a5, a4, s0
                  c.li         s5, 15
                  c.andi       a4, -1
                  mulh         s6, t3, a7
                  div          s10, s10, t3
                  sub          s0, s7, zero
                  mulh         tp, zero, s9
                  c.addi16sp   sp, 368
                  mul          a6, s2, s6
                  srli         s3, a3, 9
                  and          s5, t5, s1
                  srai         ra, s5, 31
                  slti         gp, s0, -1110
                  nop
                  slt          s7, t2, s7
                  slli         s6, s10, 27
                  and          zero, t3, s0
                  c.sub        a5, a1
                  mulhu        t5, s9, s4
                  and          s6, t6, a4
                  rem          sp, s10, s5
                  c.lui        s7, 25
                  add          a5, s6, tp
                  c.andi       a5, -1
                  sra          t1, t3, s6
                  sub          a4, s10, s1
                  c.srli       a0, 22
                  sltu         t5, s0, a0
                  c.li         s0, 7
                  sra          a0, s8, s6
                  lui          a5, 942219
                  srai         a7, ra, 3
                  srl          t6, s2, s10
                  add          s8, a0, ra
                  c.andi       a5, 27
                  and          s8, t0, t3
                  addi         t5, t1, -416
                  c.add        s11, a5
                  c.srai       a5, 17
                  sub          a3, t3, tp
                  sll          s8, s11, t3
                  srai         s10, a3, 6
                  c.mv         t1, s1
                  or           a5, a4, a2
                  mulhsu       s4, s4, s1
                  c.sub        a0, a2
                  slli         s4, ra, 0
                  auipc        s6, 551344
                  slli         sp, s5, 8
                  slti         s8, t4, 854
                  c.mv         t4, s10
                  sub          a0, ra, a0
                  lui          t3, 855238
                  xor          s1, t4, sp
                  nop
                  c.li         t6, -1
                  mulh         a7, t1, s1
                  c.or         a4, a1
                  nop
                  c.xor        a3, a3
                  sltu         a5, t5, a2
                  c.andi       a0, -1
                  c.or         s1, a3
                  sub          t0, a4, t2
                  c.mv         s5, a3
                  c.srai       s0, 16
                  mul          a7, a1, a3
                  remu         ra, t6, s10
                  srai         sp, t3, 19
                  mul          s0, a0, t3
                  add          a6, s11, s4
                  c.add        a0, s0
                  c.nop
                  slt          a7, t0, s6
                  c.sub        a5, a2
                  sltu         t0, ra, a6
                  c.mv         s6, a3
                  or           a3, s9, a4
                  c.nop
                  c.srai       a3, 22
                  rem          t5, sp, a0
                  xor          s4, a1, t3
                  mulhsu       a4, t3, ra
                  sra          a7, s4, t3
                  mulhu        a5, a6, ra
                  c.add        s7, s2
                  slt          a4, s2, s5
                  div          a0, s1, t6
                  c.or         a0, a1
                  srli         s3, a4, 29
                  c.li         a2, -1
                  c.nop
                  c.add        s11, a2
                  nop
                  xor          s4, gp, a5
                  srl          zero, a2, s3
                  c.andi       s1, 21
                  mulh         s7, a1, sp
                  mul          s7, s4, tp
                  andi         a0, a7, -601
                  addi         a0, sp, -353
                  and          t4, t4, s6
                  c.or         a5, a1
                  c.mv         s1, a2
                  rem          s10, a7, t5
                  srl          s10, s0, t1
                  or           a2, t1, ra
                  divu         a2, t6, s11
                  c.srli       s0, 22
                  c.or         s1, s0
                  slti         t2, s8, 1332
                  sll          s8, t0, s6
                  c.addi16sp   sp, 320
                  nop
                  c.or         a5, a3
                  c.srli       a2, 16
                  c.mv         t4, a1
                  div          s11, s3, s5
                  sltiu        s1, t2, -1697
                  c.addi16sp   sp, -16
                  auipc        t1, 623668
                  mul          a3, sp, zero
                  c.li         t3, -1
                  sra          s7, s3, s10
                  mulhu        a6, tp, s9
                  div          s10, t2, t0
                  c.addi4spn   a5, sp, 48
                  c.srli       a4, 31
                  c.addi16sp   sp, -16
                  c.addi       a6, 13
                  sltiu        zero, a3, -557
                  c.addi4spn   s0, sp, 32
                  srl          t1, s11, s7
                  div          s1, zero, s9
                  xori         tp, a5, -510
                  sra          zero, s0, a3
                  xor          a5, t1, s7
                  or           s1, a4, a1
                  c.and        a5, a3
                  srl          t1, ra, a7
                  c.mv         a0, a6
                  c.srai       s1, 13
                  c.addi       a0, 27
                  c.mv         t2, gp
                  add          a5, a3, s4
                  auipc        tp, 907161
                  c.mv         a7, s11
                  c.or         s1, a2
                  nop
                  slt          s1, s10, a1
                  mulh         t4, s11, s7
                  sra          t5, t3, t3
                  srai         s11, zero, 6
                  mulh         tp, s4, t1
                  c.sub        a4, a5
                  c.andi       a2, 10
                  mulhu        s1, t2, t1
                  mulh         a4, t2, a3
                  c.add        ra, t5
                  c.addi       s7, -1
                  sub          sp, s5, s0
                  and          sp, zero, t2
                  remu         s4, s9, a5
                  mulhsu       a4, zero, t2
                  c.sub        s0, a4
                  c.slli       a6, 29
                  and          t2, a1, a3
                  xor          gp, s0, a3
                  sltu         s10, s11, a1
                  mulhsu       a4, s6, t2
                  mulhsu       a4, ra, a6
                  sltiu        a6, s11, -41
                  lui          sp, 816232
                  c.srai       a0, 14
                  sub          a6, a3, a1
                  or           tp, s4, t3
                  slli         a3, s9, 26
                  c.sub        a2, a3
                  sub          gp, a4, s4
                  remu         a5, tp, t3
                  c.sub        a3, a3
                  slt          s6, t3, a0
                  xor          s10, t3, t3
                  c.or         a3, a0
                  srli         a2, a4, 26
                  c.add        t6, t2
                  andi         gp, zero, -665
                  c.nop
                  sll          t1, s9, s5
                  rem          sp, sp, s11
                  c.add        t5, a5
                  c.add        a5, a5
                  srli         gp, a5, 18
                  or           sp, a5, sp
                  div          s4, s8, a2
                  rem          a6, t4, ra
                  c.add        s3, s10
                  c.andi       a0, 29
                  ori          a2, s3, 1714
                  c.slli       sp, 22
                  c.lui        a5, 11
                  c.srai       a3, 23
                  add          a7, tp, t3
                  c.srli       s0, 19
                  c.srai       a3, 25
                  c.mv         s3, s10
                  c.or         s1, s1
                  slti         s11, a5, -1104
                  c.andi       a2, -1
                  srl          t3, a7, zero
                  c.add        tp, gp
                  c.mv         a3, a0
                  c.addi       a5, 19
                  andi         s3, t5, -379
                  c.srli       s0, 16
                  c.mv         a7, t5
                  c.xor        a2, s1
                  and          t1, s2, t0
                  c.lui        s8, 23
                  c.sub        a4, a3
                  c.slli       s10, 13
                  mulhu        gp, t5, a5
                  sltiu        a2, a7, -899
                  sub          a5, s9, sp
                  sub          a7, tp, gp
                  c.sub        a4, a4
                  mulhu        s8, a1, a5
                  c.lui        s10, 6
                  c.xor        a0, a2
                  c.and        s1, a0
                  mulhu        tp, tp, a3
                  or           a7, s5, gp
                  srl          sp, t2, s9
                  div          s8, a5, a0
                  mulhsu       t4, s2, gp
                  slti         ra, s1, 1717
                  c.srai       s1, 31
                  c.lui        s10, 30
                  c.and        s1, s1
                  ori          a5, zero, -1562
                  sub          zero, t4, t3
                  andi         s6, s4, 1630
                  c.nop
                  c.nop
                  c.andi       s0, 0
                  rem          s6, s10, a4
                  c.or         s0, a1
                  srli         s11, a4, 29
                  mulh         a4, a7, s1
                  mul          a0, s2, t4
                  c.addi4spn   a5, sp, 128
                  c.nop
                  xor          a5, a3, a7
                  slli         tp, s3, 20
                  or           t4, t2, ra
                  c.sub        a2, a4
                  lui          t1, 445797
                  c.xor        a4, a3
                  addi         a6, gp, 1192
                  c.srai       a3, 24
                  c.mv         a0, a2
                  c.addi16sp   sp, 496
                  c.srli       a4, 9
                  c.and        a4, a5
                  sltu         t5, t1, s2
                  div          a5, a6, s2
                  sll          s10, s3, s1
                  c.mv         t6, t4
                  sra          zero, s4, s8
                  auipc        t2, 898101
                  c.xor        a0, s1
                  add          a6, t5, s6
                  c.addi4spn   a2, sp, 464
                  c.slli       s11, 23
                  c.li         a4, -1
                  c.addi16sp   sp, -16
                  srl          s3, s11, s9
                  sltiu        t3, a7, 1812
                  and          a6, t5, t6
                  remu         s5, s4, s0
                  sub          s1, a2, ra
                  ori          s0, s3, 888
                  remu         a6, t2, t3
                  slli         s8, t6, 9
                  c.srai       a5, 31
                  mulh         sp, t3, t2
                  rem          s4, s8, s3
                  srl          t5, a0, t0
                  mulhsu       a0, zero, sp
                  c.lui        t5, 25
                  sltiu        sp, a0, 1803
                  sra          t4, a1, gp
                  lui          s8, 269986
                  c.andi       a2, 10
                  xor          a0, a6, zero
                  c.mv         s8, a4
                  c.and        a5, a0
                  div          t6, t3, s1
                  remu         sp, s7, s2
                  andi         sp, s3, -1641
                  nop
                  sltu         zero, a2, a4
                  auipc        ra, 1003600
                  sltu         t2, a4, s6
                  c.srai       a5, 21
                  divu         t6, a3, t3
                  c.lui        gp, 10
                  c.xor        s1, a0
                  c.nop
                  xor          gp, a7, ra
                  c.srai       s1, 22
                  mulh         t3, t3, ra
                  c.li         a4, 11
                  c.addi4spn   a2, sp, 208
                  addi         s8, t5, -624
                  c.and        s1, a0
                  slli         s3, s7, 22
                  and          t4, zero, s7
                  srl          t0, gp, s11
                  c.lui        a4, 18
                  srli         s0, a1, 18
                  mulhsu       a5, a4, tp
                  c.add        a0, ra
                  srl          a6, s4, s0
                  c.lui        s4, 26
                  mulhsu       s4, t2, ra
                  rem          a5, t5, gp
                  srai         t4, s11, 1
                  rem          s11, t5, t0
                  c.add        t6, sp
                  mulhsu       s8, t0, a4
                  c.andi       a0, 6
                  addi         a5, s5, -473
                  c.lui        t6, 26
                  mulh         t3, a5, ra
                  c.add        s7, s4
                  rem          s4, a7, t2
                  srl          t3, a7, s9
                  nop
                  xori         a7, s8, 1359
                  or           t4, gp, t3
                  addi         s4, gp, 1550
                  c.addi16sp   sp, 176
                  c.xor        a4, a2
                  srli         a3, s2, 20
                  c.srli       a4, 7
                  srl          a7, a7, t2
                  xori         a6, gp, 1733
                  auipc        s3, 65354
                  c.and        s1, a4
                  xor          t0, gp, a5
                  mul          a5, a2, zero
                  c.or         a4, a4
                  addi         sp, gp, -143
                  andi         a6, tp, 724
                  mul          t2, s4, a2
                  c.sub        a0, a3
                  c.mv         a2, s1
                  c.xor        a2, a4
                  sltu         s5, a3, s2
                  mul          a2, s4, t6
                  mulhu        a3, s7, a2
                  lui          s10, 317372
                  c.addi16sp   sp, 48
                  xor          s6, t2, ra
                  slt          a0, a4, s1
                  c.li         s3, -1
                  rem          s6, s4, t4
                  c.srai       s0, 2
                  c.srai       a4, 22
                  mulh         s10, a6, gp
                  c.xor        a5, a4
                  mulhsu       t3, ra, s2
                  div          ra, a2, ra
                  c.srai       a4, 11
                  sltu         s10, a1, ra
                  xori         a7, zero, 1867
                  srl          ra, s0, s2
                  sra          t4, ra, t4
                  c.and        a3, a2
                  srli         a2, t6, 8
                  divu         a5, s0, t6
                  c.addi4spn   a0, sp, 544
                  c.and        a4, s0
                  lui          t1, 299093
                  ori          t2, a4, -1978
                  c.nop
                  c.sub        a4, s0
                  c.and        a3, a3
                  xor          s1, t4, a0
                  sltu         t6, s9, s1
                  c.srai       a5, 15
                  sub          sp, a7, sp
                  or           s3, gp, t1
                  srli         t4, s0, 27
                  andi         a4, s5, -232
                  sltu         t5, ra, s10
                  addi         t3, s9, 605
                  slli         t6, a4, 27
                  c.or         s1, s0
                  c.li         s5, 16
                  c.srli       a3, 12
                  c.addi16sp   sp, 464
                  ori          s11, s4, 1716
                  c.slli       a7, 12
                  sll          tp, zero, s0
                  div          sp, s5, s5
                  xori         s6, a4, -1975
                  c.addi16sp   sp, -16
                  c.andi       a4, 22
                  sltiu        ra, a2, -1472
                  sra          s4, s10, t3
                  sltu         a2, s0, s8
                  div          s4, s0, t4
                  lui          t4, 1033759
                  auipc        t2, 665838
                  c.andi       s1, 25
                  and          a6, s4, t0
                  c.srai       a0, 16
                  mulhu        s11, s3, s9
                  c.xor        a0, a2
                  c.nop
                  mul          s1, s7, ra
                  c.slli       gp, 12
                  sll          t1, a5, t0
                  sll          a0, t2, gp
                  c.nop
                  sub          a3, t2, s10
                  mulh         s7, t0, a7
                  c.xor        a4, a2
                  c.or         a2, a4
                  xor          s8, s2, t3
                  remu         s3, a1, t2
                  sll          s5, s8, t2
                  sltu         tp, a4, s2
                  sub          t3, a1, a6
                  and          a6, a2, a5
                  ori          a2, s8, -782
                  sub          t2, s1, t1
                  andi         t5, t0, 1163
                  xori         s7, s8, -1052
                  or           s0, s3, s5
                  slli         zero, s10, 17
                  srai         s3, ra, 16
                  c.and        s1, a4
                  c.srai       a2, 26
                  ori          ra, gp, 397
                  c.lui        t3, 25
                  c.srai       s1, 3
                  srai         s10, t3, 23
                  srli         a4, sp, 26
                  ori          ra, s1, 1597
                  xori         s8, a7, -1289
                  sltu         a7, t1, sp
                  xor          t5, tp, s11
                  c.addi4spn   a0, sp, 448
                  c.addi4spn   s0, sp, 816
                  mulhu        s4, gp, gp
                  c.sub        a4, a3
                  c.srai       a3, 2
                  c.li         s0, 13
                  div          s8, a7, s11
                  lui          a7, 345025
                  mulhsu       s4, a5, s2
                  mulhsu       a0, a1, s10
                  divu         sp, sp, a7
                  or           t2, s5, s3
                  c.srli       a0, 30
                  c.addi16sp   sp, -16
                  c.mv         a0, t5
                  srl          t6, s11, t2
                  xor          s4, s0, zero
                  c.srli       s1, 25
                  mulhsu       tp, a3, t4
                  nop
                  c.addi4spn   a0, sp, 560
                  c.or         s1, a2
                  srl          t0, t4, a4
                  and          s7, a3, s4
                  c.nop
                  srl          s3, s11, s3
                  mulhsu       t1, s10, a6
                  nop
                  addi         s10, s2, -909
                  mulhu        a4, ra, s6
                  srl          ra, a1, s0
                  c.lui        a0, 4
                  div          s10, s7, a2
                  rem          s6, gp, s5
                  slt          a0, a6, s4
                  sltiu        a2, a4, 1431
                  c.addi4spn   a5, sp, 672
                  c.sub        s1, a1
                  or           s1, ra, t0
                  slt          tp, s4, s1
                  sub          s7, t0, s4
                  c.slli       s7, 25
                  c.slli       s11, 5
                  nop
                  c.addi4spn   a2, sp, 112
                  c.add        ra, s3
                  or           t4, s7, t4
                  c.sub        a0, a0
                  auipc        gp, 901396
                  sll          s8, a3, a6
                  slli         t0, s0, 7
                  c.addi16sp   sp, 464
                  mulhu        a0, t2, s2
                  mul          s7, zero, t6
                  slli         a3, zero, 31
                  c.slli       gp, 10
                  remu         s11, s5, s9
                  srl          a3, s11, a2
                  addi         s1, t5, -930
                  lui          a5, 452358
                  addi         s8, s4, 235
                  and          tp, s5, tp
                  srai         t2, tp, 25
                  c.addi16sp   sp, 256
                  sra          s11, t5, s9
                  c.and        a5, a5
                  c.or         a5, s0
                  rem          a5, a1, a2
                  c.addi16sp   sp, 288
                  c.or         s0, s1
                  sll          a6, s1, a5
                  sll          a4, s8, t0
                  divu         t0, t4, ra
                  mulh         a5, t6, a1
                  or           ra, a5, t0
                  sra          tp, t2, t3
                  c.slli       t1, 30
                  sltu         t4, tp, s0
                  c.and        a0, a0
                  srli         t1, t1, 23
                  c.addi4spn   s1, sp, 176
                  xori         t3, s7, -377
                  sll          a2, a1, a3
                  lui          t2, 921511
                  or           a4, a2, t6
                  slli         s0, a1, 23
                  c.andi       a0, -1
                  divu         a2, s0, a5
                  mulhu        s6, sp, s10
                  c.slli       s7, 26
                  c.mv         a5, s5
                  sll          a6, s8, t5
                  c.addi16sp   sp, 48
                  remu         s11, a5, s6
                  andi         s11, s9, 1274
                  and          a6, t2, t5
                  c.lui        s8, 5
                  ori          zero, s8, 1695
                  add          s8, tp, a3
                  c.nop
                  c.add        t4, s5
                  slti         gp, t6, -118
                  c.addi16sp   sp, 256
                  mul          t1, a0, s7
                  c.srli       a2, 14
                  slt          t2, ra, s2
                  c.slli       t5, 20
                  c.and        a0, a0
                  c.lui        tp, 30
                  mul          tp, s5, a3
                  mulhu        a0, s1, a0
                  sltu         a3, zero, gp
                  xor          s10, gp, ra
                  auipc        zero, 788862
                  sltiu        a7, a1, -167
                  auipc        zero, 59221
                  or           a2, s4, a1
                  c.or         a3, a3
                  or           s8, ra, s9
                  sra          a7, a7, a4
                  c.srli       a5, 23
                  sltiu        t3, a5, -188
                  sltu         s11, a6, a7
                  divu         s7, s11, s0
                  xori         a3, s4, 1464
                  c.xor        a5, a3
                  ori          t6, s4, -1231
                  sltiu        a6, a4, 860
                  xor          a7, t5, a4
                  sltu         a6, gp, a6
                  sub          t2, gp, t0
                  c.nop
                  auipc        a6, 529790
                  c.nop
                  slti         t0, a7, 135
                  remu         a4, a1, sp
                  srli         s6, ra, 28
                  c.lui        gp, 13
                  xor          t5, s7, a4
                  c.addi       tp, 5
                  and          sp, s1, s3
                  addi         t6, a7, -1508
                  c.addi4spn   a5, sp, 272
                  c.addi4spn   a0, sp, 48
                  sra          s10, t5, s9
                  sltiu        a4, ra, -217
                  sltu         s1, a0, s10
                  mulhu        a3, s11, gp
                  c.add        a7, a3
                  add          t5, tp, a6
                  sub          s1, sp, s2
                  c.mv         gp, t3
                  and          s3, a6, s8
                  divu         ra, a6, s9
                  c.slli       a7, 6
                  srai         s10, a0, 5
                  andi         s8, zero, 1199
                  sra          s10, s8, a2
                  sub          a6, a6, s7
                  slti         s6, t3, 1088
                  mulh         s5, s9, s9
                  ori          t5, a3, 1098
                  slli         zero, t2, 14
                  mul          t4, s6, s11
                  c.andi       a4, 4
                  mul          t5, t5, a3
                  c.xor        a4, a0
                  auipc        s8, 763184
                  c.slli       tp, 17
                  mulhsu       gp, gp, s9
                  c.addi4spn   s1, sp, 608
                  srai         a7, a0, 27
                  rem          s5, a5, a2
                  srai         s3, t6, 15
                  c.srli       a0, 19
                  srli         a2, a1, 24
                  rem          a4, a5, t2
                  lui          a5, 833554
                  c.addi4spn   s0, sp, 16
                  sra          s5, t3, ra
                  or           t0, t1, tp
                  or           s3, a7, gp
                  slli         s10, t1, 27
                  div          s0, s6, a4
                  c.xor        a0, a0
                  mulhsu       a0, a5, a4
                  c.mv         a5, s9
                  xor          a5, a3, t2
                  mulhu        a2, s2, a6
                  auipc        s0, 105718
                  remu         a6, t0, s1
                  c.slli       a4, 10
                  sltu         a4, s5, sp
                  sll          s4, s5, ra
                  c.addi       t1, -1
                  srl          a7, ra, t4
                  c.srai       a0, 27
                  mulhu        t2, s7, s11
                  divu         s3, t6, t6
                  srl          s5, a1, zero
                  slti         t2, s10, 1484
                  sltu         s0, a7, t6
                  andi         t4, t0, 810
                  c.nop
                  or           tp, a2, ra
                  c.or         s1, a5
                  sltiu        a6, s11, 541
                  rem          a0, t6, t4
                  c.addi16sp   sp, -16
                  mulhsu       s10, t2, gp
                  c.or         a4, a0
                  div          s0, a5, a3
                  c.lui        s11, 4
                  mul          ra, a3, s0
                  c.or         s1, a4
                  andi         s10, ra, 1676
                  srl          s6, s7, s1
                  slti         t4, s3, 1586
                  auipc        s11, 578125
                  c.sub        a5, a0
                  slt          zero, t0, gp
                  sltu         a4, a4, s7
                  sll          t2, a0, a1
                  c.addi16sp   sp, -16
                  sra          a4, t5, s8
                  c.srai       s0, 5
                  slti         t6, a1, 279
                  c.srli       s1, 26
                  slt          s8, s8, s5
                  c.nop
                  sltiu        s3, s11, -1837
                  c.mv         s0, a6
                  srai         s8, s3, 17
                  c.mv         s10, a3
                  mulhu        t1, a1, t1
                  and          s1, s8, s11
                  c.nop
                  xori         s4, t1, 171
                  nop
                  sll          t1, t5, s10
                  c.srli       a2, 12
                  c.and        a0, a1
                  mulhu        a3, sp, zero
                  sra          a5, t4, a0
                  xori         a2, t2, -547
                  srl          sp, a4, tp
                  sltu         a6, s4, a0
                  c.andi       a0, -1
                  xori         a7, a5, -276
                  c.xor        a2, a0
                  mulh         s8, s9, s0
                  c.or         a4, a4
                  mulhsu       s11, s1, s10
                  sltu         a2, s5, s7
                  c.lui        a5, 15
                  mul          s7, s5, t1
                  sll          s6, s10, t1
                  c.slli       t3, 10
                  auipc        t4, 523668
                  add          s5, a0, s0
                  c.srli       s1, 8
                  add          s7, a1, s3
                  c.xor        a5, a5
                  sub          a7, ra, s6
                  c.sub        s1, a4
                  sra          gp, ra, s6
                  or           s8, a3, t0
                  slli         t4, t5, 28
                  c.lui        a6, 9
                  lui          a6, 722657
                  mulhsu       t6, a4, a2
                  c.mv         a0, a5
                  c.sub        s0, a0
                  lui          a3, 881939
                  mul          s7, t6, s0
                  c.addi16sp   sp, -16
                  xor          s11, t2, s7
                  c.addi16sp   sp, -16
                  andi         s1, s7, -1626
                  c.andi       a5, 29
                  lui          t6, 299484
                  divu         a5, t4, t5
                  c.andi       s0, -1
                  c.and        a5, a1
                  c.srai       s1, 1
                  c.sub        s1, a5
                  add          t6, s1, s0
                  c.slli       a7, 7
                  srli         s3, tp, 19
                  mulhsu       t4, s6, t4
                  remu         a5, a3, tp
                  srli         a5, sp, 3
                  c.add        a7, gp
                  c.li         a6, 8
                  sltiu        t4, a4, 1376
                  mulh         t1, s10, s0
                  srl          t3, a2, t2
                  xor          s6, t3, t3
                  or           s1, a6, a2
                  sltu         sp, s1, t0
                  c.sub        a5, a3
                  sltiu        s11, s10, -1360
                  sltu         tp, t4, ra
                  addi         sp, t5, -410
                  mulhu        a6, s5, ra
                  c.xor        a4, a4
                  slli         a0, s8, 16
                  c.and        a2, a3
                  c.sub        a4, a3
                  c.li         s6, -1
                  andi         a5, s3, 327
                  or           a6, s7, t6
                  remu         s6, sp, zero
                  c.li         t4, -1
                  srli         t5, s5, 9
                  sub          a2, s10, sp
                  divu         a2, s8, t6
                  srli         tp, s7, 19
                  sll          s3, s3, s0
                  c.slli       s7, 10
                  srli         s4, s10, 9
                  sll          t1, t1, s3
                  ori          t2, s9, -1449
                  c.addi16sp   sp, -16
                  c.mv         gp, s4
                  auipc        s5, 7607
                  c.srai       a0, 14
                  c.srai       a2, 19
                  mul          a2, t5, s0
                  div          s3, sp, a3
                  ori          t4, s1, 934
                  c.add        a6, s0
                  div          a5, s0, s3
                  addi         ra, a1, -477
                  andi         tp, a7, -1953
                  c.addi4spn   a4, sp, 960
                  c.nop
                  mulhu        s11, a3, s5
                  c.add        s11, s3
                  c.andi       a2, -1
                  c.srai       s0, 9
                  sra          a4, s11, s10
                  and          t1, t6, s11
                  xori         t0, t3, 1410
                  or           tp, s6, t0
                  c.addi16sp   sp, 128
                  andi         s0, s6, -1512
                  xor          t5, s2, a2
                  slt          t1, a0, t2
                  lui          gp, 948908
                  ori          s1, s0, 712
                  c.and        a3, a1
                  sltu         s11, s4, t3
                  c.lui        t3, 8
                  sltiu        a5, t0, 101
                  andi         t3, a0, 92
                  nop
                  add          t2, a6, s1
                  ori          a2, gp, -627
                  c.or         a2, a4
                  remu         s1, a3, s7
                  remu         s11, t1, s11
                  mulhu        t3, ra, a4
                  c.srli       s1, 15
                  mulh         s0, t0, t4
                  auipc        t4, 11604
                  sltu         s10, tp, s5
                  mulhsu       a3, s7, ra
                  c.addi16sp   sp, -16
                  divu         s1, a3, s4
                  c.addi       t6, 5
                  c.andi       a5, -1
                  mulhsu       t3, a6, sp
                  c.nop
                  srai         a3, a0, 20
                  remu         a0, s11, s6
                  andi         ra, a3, -10
                  div          s0, ra, a5
                  nop
                  addi         s3, a3, 817
                  sra          gp, s9, t6
                  sltiu        t6, t0, -1275
                  c.add        s11, tp
                  add          t2, a2, a1
                  c.mv         gp, ra
                  nop
                  c.srli       a2, 8
                  srl          t3, t5, t4
                  slt          s10, s2, sp
                  slt          s0, a3, a5
                  srai         s6, zero, 22
                  c.mv         a2, s5
                  sll          t0, t4, s0
                  slt          s7, a1, s4
                  c.srli       a5, 2
                  c.sub        a5, a2
                  sub          a6, t0, s10
                  and          s11, t1, s0
                  xor          s4, a0, t5
                  nop
                  slli         t1, sp, 17
                  c.nop
                  c.or         s1, s0
                  slli         s10, s1, 17
                  div          a3, a7, a2
                  c.or         a0, a4
                  xor          s0, a3, t2
                  sltiu        a4, a4, 1603
                  nop
                  c.lui        a5, 26
                  remu         t3, s7, tp
                  c.andi       s0, -1
                  c.andi       a0, 27
                  or           t4, a2, s3
                  sll          t3, a0, t5
                  c.add        a4, s7
                  c.mv         s3, s2
                  c.nop
                  add          a6, a1, s5
                  xor          a3, a1, s2
                  sll          a5, t3, s5
                  c.and        a4, a2
                  c.xor        a2, a1
                  rem          sp, t1, t1
                  srai         a2, t3, 29
                  mul          ra, s4, zero
                  xori         tp, a7, -1172
                  c.li         s8, 15
                  xor          s3, sp, a4
                  ori          s11, a0, -1689
                  c.or         s0, s1
                  srl          gp, zero, t6
                  or           sp, s10, a7
                  xor          a0, tp, zero
                  c.and        a4, a3
                  sra          s6, tp, s2
                  c.addi       s6, 19
                  andi         s0, s8, 390
                  remu         t4, t4, s0
                  c.xor        a0, a4
                  c.andi       s1, -1
                  c.srli       s0, 22
                  c.lui        s10, 28
                  andi         t4, a5, -500
                  xori         sp, a7, 352
                  srl          a5, gp, s10
                  c.or         s1, a3
                  c.or         a2, a4
                  divu         s11, s2, t3
                  c.slli       s0, 19
                  mul          t2, a1, a1
                  c.mv         s6, t3
                  sra          tp, t2, s9
                  sltiu        s11, a3, -65
                  srli         t0, s3, 8
                  mul          a4, t4, gp
                  c.sub        a0, a3
                  c.add        gp, a4
                  mulh         t4, t4, a5
                  c.li         a3, 31
                  slti         a4, a6, -1792
                  rem          s0, s5, s8
                  c.or         a2, a2
                  slli         s10, s4, 15
                  c.li         sp, 22
                  c.addi4spn   a4, sp, 48
                  and          s3, a5, tp
                  c.sub        a5, a2
                  srai         a3, s1, 21
                  c.addi4spn   a4, sp, 64
                  sltu         t0, s5, tp
                  c.or         a4, a5
                  slt          s5, s4, a2
                  c.sub        s1, a1
                  mulh         ra, t5, s9
                  divu         t1, t6, zero
                  c.and        a4, a2
                  srai         sp, t5, 11
                  xori         s7, gp, -253
                  c.srli       a2, 16
                  mulhu        a5, tp, t2
                  nop
                  auipc        a5, 86483
                  addi         t2, t2, 221
                  and          a0, t5, t3
                  sub          a5, a2, s11
                  xori         a6, ra, 993
                  c.srli       a5, 1
                  div          t5, a4, t1
                  c.addi       s8, 31
                  c.or         a5, s1
                  mul          ra, t1, a5
                  remu         a2, a3, s0
                  mul          zero, t3, s9
                  sltu         s5, s1, t1
                  ori          s1, s4, -1607
                  c.andi       s0, 14
                  c.add        s0, t0
                  or           s10, s3, tp
                  c.sub        a2, a1
                  div          s0, a2, s4
                  andi         t0, t2, 675
                  sub          a0, sp, t1
                  c.sub        a2, a1
                  xor          a2, s11, a6
                  c.srai       a0, 14
                  srli         s7, s10, 16
                  c.addi       ra, -1
                  addi         sp, t2, -1523
                  c.sub        s1, a2
                  slt          sp, s11, zero
                  srai         a0, s7, 20
                  xori         a0, t3, 104
                  c.nop
                  slti         a6, s1, -592
                  and          tp, tp, a1
                  c.xor        a2, a3
                  mulhu        s8, t2, t0
                  sub          a7, t4, ra
                  c.add        t4, gp
                  div          s5, t4, sp
                  sra          s7, a0, a0
                  remu         a4, t0, a2
                  c.xor        a2, s0
                  or           a7, s4, tp
                  remu         s0, t3, s7
                  addi         a2, tp, 1760
                  mul          a6, t6, s6
                  srli         s11, t6, 27
                  sra          t1, a5, s7
                  slli         t4, t2, 31
                  slti         s8, s6, -522
                  auipc        a6, 78309
                  mulh         a3, a7, t0
                  c.mv         s1, a7
                  c.li         a6, 22
                  c.add        s10, gp
                  div          s0, s3, a6
                  mul          a3, t2, s11
                  andi         t1, s0, 726
                  sra          a4, a7, t6
                  c.addi4spn   a4, sp, 464
                  andi         a6, s8, 641
                  xori         t1, sp, -981
                  mulhu        a7, t5, t4
                  c.and        a2, s1
                  sub          a2, t3, t4
                  lui          s7, 390685
                  c.srai       a5, 9
                  slli         a7, a4, 5
                  mulhsu       sp, s9, a7
                  c.sub        s0, a1
                  slt          s6, s7, a1
                  srl          s5, t3, t6
                  c.and        s0, s0
                  auipc        a6, 953977
                  and          a4, t0, zero
                  xor          t4, s3, a1
                  mulhsu       s11, gp, t0
                  mulhsu       t2, zero, s10
                  mul          s1, s0, t1
                  ori          a0, tp, 589
                  c.sub        a5, a3
                  sltu         s3, a4, s1
                  sra          s5, t1, s1
                  remu         zero, t5, s6
                  c.addi       s7, -1
                  c.slli       t4, 2
                  mulhsu       s5, gp, sp
                  c.add        s3, t1
                  remu         s1, t6, gp
                  sll          a7, a0, s11
                  c.addi       s0, 8
                  mul          s10, s4, a2
                  slti         s11, s4, -1922
                  c.addi16sp   sp, -16
                  divu         sp, a1, t1
                  c.sub        a5, a3
                  add          t4, s5, tp
                  sltiu        sp, s11, -388
                  xori         a7, a2, -995
                  auipc        tp, 844583
                  c.andi       a3, 27
                  xori         ra, t2, 531
                  andi         gp, s9, -258
                  ori          a2, gp, 1915
                  nop
                  andi         tp, s11, 161
                  c.srli       a4, 7
                  slti         s6, a1, 6
                  c.andi       s0, -1
                  xor          a4, s8, a4
                  c.or         a2, a4
                  rem          a2, tp, t3
                  xor          s10, sp, s7
                  slt          s10, t2, s6
                  c.and        a0, a5
                  c.lui        a3, 28
                  c.mv         s8, s11
                  c.andi       a2, -1
                  srl          a3, sp, t4
                  c.lui        s8, 9
                  lui          s7, 76901
                  c.lui        t4, 7
                  sra          a0, t6, s2
                  mulhu        a7, a4, a1
                  sll          t2, s7, s2
                  c.addi16sp   sp, 80
                  c.lui        t0, 17
                  c.addi16sp   sp, -16
                  ori          s10, s10, 957
                  nop
                  c.addi       s11, 11
                  mulhu        t6, t2, gp
                  xori         s7, s11, 1156
                  divu         s6, t0, s3
                  c.andi       a4, -1
                  xor          a2, t1, sp
                  rem          tp, a7, a1
                  c.andi       a3, -1
                  slti         s6, gp, 1148
                  div          s4, zero, sp
                  c.xor        s0, a4
                  c.and        a2, a4
                  c.sub        s0, s0
                  sub          s10, s8, s11
                  c.addi16sp   sp, 144
                  c.mv         t1, tp
                  divu         s11, s9, ra
                  rem          a3, t3, a2
                  slt          s10, s7, zero
                  xor          a6, t4, zero
                  auipc        t6, 195487
                  c.addi16sp   sp, -16
                  c.add        s0, sp
                  c.mv         ra, t2
                  sra          s10, ra, s7
                  c.or         s0, a3
                  c.addi       t4, -1
                  slli         tp, a5, 30
                  rem          ra, s10, a1
                  c.addi       tp, -1
                  c.addi4spn   a2, sp, 816
                  c.srli       s0, 12
                  c.and        a5, a4
                  c.slli       t6, 31
                  mulh         tp, ra, ra
                  mulhsu       a0, s4, s0
                  c.sub        a0, a0
                  c.lui        s11, 19
                  remu         a3, t5, s9
                  c.srli       s1, 7
                  sltiu        s0, s1, -1374
                  c.addi16sp   sp, 224
                  mul          t4, s3, s0
                  c.li         gp, -1
                  mulh         a3, a7, a6
                  add          s4, t1, sp
                  c.srai       a3, 3
                  c.addi4spn   s1, sp, 224
                  xor          a7, a0, t3
                  sra          s8, s11, zero
                  c.add        a3, s2
                  addi         s5, zero, 165
                  c.nop
                  div          s8, a2, s10
                  c.addi4spn   s1, sp, 368
                  c.sub        s1, a1
                  mulh         s5, t1, a6
                  xori         t0, t3, 987
                  nop
                  c.mv         t1, a4
                  c.lui        a6, 15
                  add          t5, a6, t5
                  remu         s10, t6, t6
                  srli         s6, s6, 11
                  srai         s3, s9, 1
                  c.addi       ra, -1
                  sub          t6, s4, s11
                  c.or         a4, a1
                  c.or         s1, a0
                  sll          sp, t1, s4
                  srli         tp, sp, 3
                  divu         t0, s11, t1
                  c.lui        s3, 21
                  rem          s0, s5, a2
                  sltu         s4, s11, s6
                  slti         s1, zero, -798
                  or           s0, s1, t4
                  rem          a3, a1, s5
                  c.addi16sp   sp, -16
                  xori         sp, s7, -784
                  sltu         sp, a1, s11
                  slti         s3, a6, -907
                  c.srli       a0, 31
                  mul          s7, t5, a2
                  c.sub        a5, a4
                  c.addi16sp   sp, 128
                  c.and        s0, a3
                  lui          a5, 113757
                  nop
                  c.lui        s3, 18
                  addi         t1, s5, -1084
                  c.sub        a0, s1
                  sub          t4, t6, a6
                  c.nop
                  remu         a0, a5, t5
                  auipc        gp, 59187
                  rem          s11, a6, s9
                  c.nop
                  mul          s11, t0, s2
                  nop
                  andi         s11, t3, 380
                  c.sub        a3, a4
                  add          a0, t6, ra
                  ori          gp, s11, 677
                  slti         a5, a3, 836
                  sltu         s0, a6, a7
                  lui          s8, 486803
                  c.mv         t6, t2
                  div          a5, zero, t2
                  srli         t3, a7, 26
                  sltiu        s1, a4, 1149
                  sll          a0, gp, a5
                  nop
                  c.li         s4, -1
                  srl          gp, s11, a0
                  c.srli       a4, 4
                  c.mv         s0, t5
                  sltu         s0, t0, t1
                  remu         sp, t3, s3
                  c.slli       t4, 9
                  sltu         s6, s1, gp
                  c.srli       s1, 17
                  c.xor        s0, a4
                  c.li         t0, -1
                  or           a6, s5, t6
                  c.mv         s4, a2
                  nop
                  c.sub        s1, a2
                  c.sub        s1, a2
                  auipc        tp, 496901
                  remu         s3, s5, t3
                  slti         ra, t6, 2020
                  xori         a7, t5, -794
                  auipc        a5, 60653
                  c.andi       a2, 22
                  sra          a4, sp, s2
                  c.addi4spn   a4, sp, 464
                  and          a0, s0, gp
                  srl          gp, t2, gp
                  andi         t1, a6, -781
                  c.add        s10, s4
                  srl          s8, a7, s4
                  nop
                  srl          a5, s11, t1
                  srai         t3, t2, 17
                  slti         s8, gp, 1236
                  mulhsu       a4, t2, s8
                  c.addi16sp   sp, 96
                  c.sub        a2, a3
                  c.srli       a5, 9
                  mulhsu       a0, s1, tp
                  c.addi       s6, -1
                  sra          gp, a2, a6
                  c.sub        a4, a3
                  mulhu        t3, t0, s10
                  divu         s1, tp, gp
                  c.slli       t5, 4
                  srl          s7, s4, s0
                  and          sp, t5, t0
                  or           s3, s11, ra
                  c.srai       s0, 24
                  slt          a7, s6, a4
                  srli         s8, zero, 30
                  c.or         s0, a2
                  c.sub        s0, s1
                  div          s7, s6, s1
                  or           s1, a7, t2
                  slti         a0, s1, -1680
                  c.addi16sp   sp, -16
                  rem          zero, sp, t5
                  c.lui        t1, 18
                  andi         a0, a7, -1503
                  xor          gp, t4, t2
                  slti         s11, s7, -595
                  xori         s0, s4, 24
                  sltiu        a7, s9, 343
                  c.nop
                  sub          t6, s10, s7
                  srl          tp, a2, a4
                  c.li         t6, 18
                  c.or         a4, s1
                  srl          t1, t0, t0
                  c.slli       a4, 17
                  mulhsu       s8, t6, a2
                  sltiu        s11, tp, 941
                  lui          zero, 83818
                  c.andi       a5, 21
                  andi         s5, t4, 586
                  mulhsu       sp, s5, a3
                  sll          s4, a3, s8
                  ori          t3, s9, -1264
                  sltu         t5, s3, s0
                  c.xor        a5, s0
                  sll          t2, s2, a7
                  mulhu        a0, s4, t0
                  nop
                  xori         t4, s7, -1731
                  addi         a4, a4, 429
                  or           t6, ra, s8
                  c.mv         s0, s2
                  slt          t0, s7, a0
                  c.slli       a0, 12
                  add          tp, s8, sp
                  c.addi       a2, -1
                  c.xor        s0, a0
                  xor          a2, a5, s9
                  c.slli       s10, 26
                  rem          a3, t2, s1
                  ori          s4, gp, 1917
                  lui          t5, 703577
                  c.add        gp, s0
                  slti         a3, s11, -224
                  srli         s8, t1, 4
                  divu         s10, zero, s0
                  slt          a7, ra, a7
                  srl          a3, s6, t2
                  mulh         s8, s4, a6
                  or           t1, tp, t6
                  slti         gp, s10, 1673
                  nop
                  c.slli       a6, 30
                  c.addi16sp   sp, 176
                  c.xor        a4, a5
                  c.srai       a4, 15
                  c.addi       s7, -1
                  slt          s4, a7, s7
                  mulh         a2, t1, s9
                  auipc        s1, 677491
                  c.addi       s6, -1
                  mulh         t1, a1, gp
                  c.or         a0, a5
                  slti         t4, a1, 899
                  sra          s5, a0, s0
                  srai         s6, a4, 15
                  remu         s1, t0, s4
                  mulhu        s11, s0, s1
                  c.or         s0, a0
                  sltiu        sp, s1, 1217
                  andi         s5, s0, -1258
                  c.srli       s1, 23
                  c.xor        s0, a1
                  remu         s6, a4, s7
                  c.sub        a2, a1
                  mulh         t3, s0, s10
                  sll          s6, sp, ra
                  nop
                  mulh         s7, gp, s8
                  sra          s4, s3, zero
                  c.xor        s1, a5
                  c.srli       a4, 15
                  sra          s11, a5, gp
                  mulhu        s1, s3, s10
                  addi         t4, a3, -799
                  ori          s7, a7, 655
                  sltiu        s8, s10, -1077
                  c.or         a3, a3
                  c.srli       s1, 4
                  mulhsu       ra, t2, ra
                  c.xor        a2, s1
                  c.lui        ra, 29
                  slli         tp, s4, 7
                  c.and        a2, a2
                  c.mv         s1, t5
                  c.lui        a2, 11
                  srl          s10, t5, a0
                  sltiu        a3, a6, 1908
                  sub          t4, a3, s7
                  srl          s8, ra, sp
                  xori         a3, t6, -2043
                  c.andi       s1, 4
                  mulhu        tp, s2, s0
                  c.slli       t4, 18
                  c.andi       a0, -1
                  sub          a6, t1, a7
                  or           zero, a3, s10
                  c.li         ra, 29
                  mulhu        a6, tp, s11
                  div          s1, a7, a6
                  mul          s4, t6, s5
                  c.srli       s1, 10
                  c.addi16sp   sp, -16
                  ori          t5, s3, -1972
                  c.lui        a6, 23
                  xori         s7, t5, 1747
                  sll          s1, t6, t1
                  c.add        tp, t6
                  ori          s5, s9, -154
                  div          s10, s1, s10
                  or           s8, zero, s0
                  mulhsu       s11, tp, s6
                  srl          a7, t2, t3
                  addi         s11, a3, 1291
                  divu         a7, s0, s3
                  c.addi16sp   sp, 64
                  sra          s1, a3, s2
                  c.mv         a4, a4
                  c.li         t1, 0
                  c.li         s8, -1
                  c.addi       a7, 2
                  or           t2, a1, s10
                  slt          gp, a2, s4
                  and          t5, t0, s11
                  srl          s5, s4, s7
                  divu         s6, a3, zero
                  c.addi       a6, 2
                  srli         t6, s6, 30
                  add          t5, a6, zero
                  srl          t2, gp, a1
                  xori         t4, a6, 1352
                  slt          s6, s2, t0
                  c.addi4spn   a3, sp, 992
                  sltu         t2, a7, a6
                  c.slli       sp, 3
                  slti         t0, s7, -1242
                  mul          s3, sp, a0
                  mulhsu       t5, t5, a7
                  srli         sp, s10, 20
                  c.li         s8, 27
                  sltiu        s4, s10, -150
                  ori          a3, t4, 1633
                  c.mv         s3, s6
                  add          t5, sp, s4
                  remu         a0, s0, s2
                  slli         s7, zero, 30
                  rem          s4, sp, sp
                  c.add        t6, sp
                  c.andi       s1, -1
                  add          t1, s7, s11
                  andi         zero, s6, 670
                  nop
                  andi         s10, t6, -690
                  srai         ra, s9, 7
                  add          t3, s10, t4
                  mulh         t1, t6, t6
                  c.xor        a2, a3
                  divu         s11, s1, t5
                  sltiu        s1, t4, -1199
                  divu         a7, a6, ra
                  mul          s6, s4, t1
                  rem          t1, t1, t4
                  srai         s6, s10, 25
                  andi         s5, a0, 1051
                  c.or         a4, a2
                  c.nop
                  srli         t3, a7, 2
                  or           s11, t2, gp
                  sltiu        t3, s3, 592
                  slt          s5, s9, s6
                  mulhsu       a5, a5, zero
                  c.sub        a2, a3
                  nop
                  div          s1, a0, a3
                  sltu         s1, a0, a7
                  c.nop
                  c.nop
                  c.li         a7, -1
                  sra          s0, s11, t5
                  sltiu        tp, a3, 146
                  and          s6, s2, t5
                  xor          t4, t6, a7
                  c.lui        s7, 2
                  c.addi4spn   a5, sp, 928
                  auipc        s11, 178612
                  c.and        a4, a0
                  slli         t4, t4, 19
                  sltu         s5, t5, s1
                  c.addi16sp   sp, -16
                  mulhsu       sp, t6, t5
                  c.srai       a3, 19
                  c.li         s5, -1
                  remu         s4, s5, t5
                  sll          a6, a7, s10
                  slti         a5, s5, -1182
                  srl          a6, s11, a4
                  sltiu        s4, a0, 1392
                  mulhsu       t1, a0, s8
                  sll          s0, a2, gp
                  sub          t6, s1, t4
                  c.xor        a2, a0
                  mulhu        s11, s0, t1
                  c.srai       a4, 6
                  c.srli       s1, 22
                  c.addi4spn   a0, sp, 112
                  or           sp, ra, s2
                  auipc        t2, 313261
                  c.addi       s8, -1
                  c.lui        s11, 12
                  c.li         s0, 28
                  ori          t6, a2, 729
                  or           s5, a1, zero
                  c.addi16sp   sp, 16
                  xori         t6, a7, 983
                  c.li         a0, -1
                  c.slli       a5, 18
                  slt          s3, t3, zero
                  andi         a0, a7, 1017
                  divu         s11, a6, a7
                  auipc        tp, 994843
                  addi         tp, t1, -268
                  srl          s10, t5, a5
                  mulhu        a5, a5, s10
                  c.add        s4, s2
                  c.addi       t3, 8
                  sub          t6, s3, s1
                  srai         t2, a4, 15
                  c.or         a4, a4
                  ori          t1, t1, 1240
                  divu         gp, s4, s8
                  and          s4, s10, s3
                  srl          t0, t1, a1
                  lui          s7, 623896
                  srl          t6, s1, a6
                  mulh         s6, s9, a2
                  rem          t2, ra, s4
                  lui          a4, 628271
                  andi         s5, tp, 1311
                  c.xor        a0, a0
                  srai         a5, s10, 9
                  mulh         s7, t6, tp
                  c.addi       t1, -1
                  srli         s3, t4, 10
                  srl          s5, s11, t4
                  sll          t5, s11, ra
                  andi         a6, a1, -1543
                  ori          a0, s10, 993
                  auipc        s8, 723419
                  xori         t0, t1, -1435
                  rem          a6, a0, t3
                  xori         gp, t5, 64
                  xori         t5, s4, 242
                  andi         t3, s0, 70
                  c.slli       s8, 21
                  sltiu        s11, s3, 1769
                  divu         s1, s2, a1
                  divu         zero, a1, s4
                  mulhu        a4, s3, a7
                  c.add        tp, s1
                  c.addi       tp, -1
                  c.nop
                  mulhu        zero, s10, s10
                  divu         a6, s10, gp
                  ori          s6, s4, 844
                  c.andi       a2, 20
                  c.xor        a0, a3
                  xor          a6, t0, s7
                  slt          sp, a4, t6
                  sll          gp, t6, tp
                  sltu         t4, a7, a5
                  c.addi       ra, -1
                  xor          a0, a4, t5
                  mul          t5, a5, a7
                  slli         gp, zero, 19
                  c.srli       a3, 8
                  sub          sp, s6, a6
                  and          a2, s8, a0
                  andi         s11, t5, -612
                  c.andi       s1, -1
                  addi         t2, t4, 1586
                  sltu         a0, t1, s5
                  nop
                  xor          s4, gp, tp
                  srli         t2, a2, 22
                  sltu         a3, a1, a0
                  c.andi       a0, -1
                  addi         tp, a5, 733
                  xor          a7, s2, s4
                  rem          s11, t0, sp
                  c.li         s1, -1
                  lui          t5, 294305
                  slli         t5, t5, 17
                  xor          ra, a2, a7
                  slti         a6, s8, 819
                  xori         s11, a2, 519
                  remu         a3, s9, s6
                  mulhsu       a7, s9, tp
                  slti         t4, a6, -1438
                  srai         a7, s6, 10
                  srli         t0, t1, 24
                  xor          t0, sp, a7
                  andi         t5, gp, 933
                  sltiu        t2, ra, -1649
                  rem          s7, t6, s4
                  srl          s1, a6, a3
                  mul          a6, s9, t5
                  rem          a0, s1, t2
                  mulhsu       t2, s5, s5
                  ori          t5, a2, -1268
                  andi         t1, s5, -1944
                  c.slli       s0, 15
                  ori          t1, a5, 1883
                  slt          t1, t0, t6
                  slt          s8, s6, a6
                  c.addi4spn   s0, sp, 656
                  slti         zero, s8, 717
                  c.or         a0, s0
                  sltiu        t0, a2, 1664
                  c.andi       a2, -1
                  c.xor        a0, a3
                  srli         tp, zero, 21
                  c.xor        a3, s1
                  c.lui        t4, 3
                  and          sp, t3, t5
                  rem          t5, a6, s6
                  c.and        a4, a5
                  sltu         s8, a0, sp
                  rem          zero, s11, t6
                  c.srli       a2, 17
                  slti         s1, s8, -464
                  xor          s5, a2, t3
                  c.srli       a0, 12
                  c.and        s0, s0
                  srli         tp, a4, 27
                  sltiu        gp, tp, 1823
                  sub          a2, s7, s4
                  remu         t2, a3, tp
                  c.xor        a0, a2
                  and          t1, s10, a5
                  c.and        a4, a5
                  add          t6, t5, a4
                  sltiu        a0, s8, -1102
                  xori         t0, a0, -513
                  c.and        a5, a2
                  c.mv         t4, t2
                  c.li         ra, 8
                  c.sub        a5, a4
                  srl          s11, s1, s8
                  add          s11, s0, zero
                  srai         t2, a3, 6
                  mul          sp, ra, s3
                  auipc        s8, 514372
                  c.or         a0, s0
                  mulhsu       s10, a6, t2
                  sll          s7, a7, t6
                  srai         a0, a1, 12
                  c.nop
                  mulh         s6, a4, a2
                  addi         a3, gp, 552
                  c.addi16sp   sp, -16
                  auipc        a2, 520812
                  sltiu        ra, t3, -344
                  add          s8, s1, zero
                  or           s4, s9, gp
                  sra          s3, t3, s7
                  remu         s5, s2, zero
                  remu         t3, a1, a5
                  c.mv         s6, t3
                  c.lui        s4, 28
                  c.andi       a2, 27
                  mulhsu       t2, a2, tp
                  slt          t6, sp, s5
                  mulh         t6, t5, t6
                  xori         s6, s7, -975
                  sltiu        s11, s9, -1883
                  c.andi       s1, -1
                  c.add        s4, a4
                  c.lui        a5, 30
                  c.add        gp, s11
                  mulh         t6, a0, t6
                  srai         a6, a4, 2
                  mulhsu       sp, s5, sp
                  c.addi4spn   a5, sp, 304
                  c.nop
                  slti         s3, t0, -1753
                  srai         s1, s7, 20
                  lui          gp, 642223
                  sub          t5, t0, tp
                  c.andi       a2, 25
                  c.addi       t4, -1
                  srl          s8, t4, a5
                  c.addi4spn   a4, sp, 672
                  div          a6, s3, s4
                  remu         s7, a6, s1
                  and          s7, t6, t4
                  c.addi16sp   sp, -16
                  sltu         gp, a6, gp
                  mulhu        ra, gp, a3
                  c.sub        a2, a5
                  c.slli       s0, 11
                  ori          zero, t0, -1711
                  mulhu        a5, t6, s11
                  c.add        s4, a4
                  c.srai       a5, 1
                  mulhu        t5, s9, a4
                  c.addi16sp   sp, -16
                  srai         s1, t1, 23
                  mulh         ra, a3, s7
                  remu         a2, gp, t4
                  srl          t1, s5, t0
                  sll          t5, t0, s4
                  c.addi4spn   a3, sp, 992
                  srli         s6, t0, 21
                  c.xor        a0, a3
                  auipc        s11, 173910
                  nop
                  mul          s11, a0, t4
                  andi         s1, s8, 84
                  sltiu        a5, a0, 1887
                  xori         s10, t6, -273
                  c.andi       a5, -1
                  xor          s11, t4, tp
                  xori         s7, a1, 1567
                  andi         a0, t4, -894
                  addi         ra, s3, 669
                  remu         t3, a6, s9
                  remu         a2, t6, a5
                  sll          s0, a4, t5
                  sra          a0, tp, sp
                  or           t2, a5, a4
                  remu         s8, s9, s10
                  sltu         ra, sp, a4
                  mulhsu       t5, gp, s10
                  c.mv         a7, t4
                  c.li         t1, 14
                  c.nop
                  sub          t1, t3, zero
                  add          a6, a1, s7
                  andi         s1, s10, -2033
                  srl          t4, a4, t3
                  addi         a5, s4, -199
                  mulhsu       s5, t0, s2
                  sra          zero, t0, a3
                  rem          tp, tp, t1
                  srai         s1, s11, 19
                  srai         a0, t2, 5
                  rem          s3, s5, s6
                  c.li         s6, 10
                  c.addi4spn   a2, sp, 16
                  sub          a7, t2, s7
                  c.sub        a3, a4
                  sltu         t1, a2, tp
                  srai         s8, a0, 24
                  c.sub        s1, a2
                  sltiu        t6, a1, -1377
                  c.addi16sp   sp, 96
                  slli         t1, a4, 7
                  addi         s1, s9, -657
                  sub          s8, s2, a0
                  sltiu        t3, t1, 1793
                  sll          s1, s2, s1
                  nop
                  div          a6, s8, s2
                  sub          ra, t6, sp
                  mul          tp, a2, s8
                  c.lui        t4, 23
                  sub          s4, s8, s1
                  add          a3, a7, s8
                  mulhu        t0, s6, a5
                  xori         t1, gp, -252
                  divu         a3, a0, a2
                  c.addi4spn   s0, sp, 192
                  c.xor        s0, a2
                  sub          t4, s0, s5
                  slt          sp, s5, ra
                  c.srli       a5, 4
                  slti         a2, s8, 869
                  lui          t5, 475618
                  add          zero, gp, a3
                  srai         a3, a1, 27
                  sra          a3, t0, s2
                  mulh         gp, s0, t6
                  c.and        a2, a4
                  div          t3, s9, t2
                  mulhsu       zero, a2, t0
                  c.xor        a0, s0
                  c.srai       a4, 30
                  sll          a7, s10, a3
                  xori         t3, gp, -1237
                  c.li         a0, -1
                  slli         t1, tp, 19
                  c.or         s1, s1
                  mulhu        s5, sp, s6
                  sub          a2, ra, s9
                  andi         a3, s5, 1317
                  ori          a5, s5, -406
                  c.sub        a5, s0
                  c.slli       s0, 8
                  rem          s8, sp, s9
                  c.slli       a0, 21
                  c.sub        s0, a5
                  slti         s10, a6, 1738
                  sll          s7, t6, s6
                  and          s8, s6, ra
                  slti         a6, s2, 767
                  srli         tp, s2, 12
                  c.lui        a5, 24
                  c.addi4spn   a5, sp, 304
                  div          a3, a4, gp
                  auipc        a5, 875728
                  c.andi       a5, 7
                  c.xor        s1, a5
                  sltu         t0, a5, a3
                  c.sub        a5, a4
                  and          s6, t4, tp
                  xor          s8, a5, a7
                  c.srai       s1, 24
                  mul          t5, s9, s7
                  divu         a3, t3, a4
                  c.srli       s0, 14
                  sll          s10, a3, a0
                  c.lui        t5, 10
                  mulhsu       t2, a0, a1
                  c.mv         a7, t4
                  c.mv         a3, s2
                  ori          a5, tp, 281
                  slli         tp, t3, 17
                  c.slli       s0, 12
                  rem          sp, a5, s8
                  addi         a7, s5, -1708
                  srai         zero, t0, 2
                  add          s3, a5, s4
                  addi         s11, s9, 1093
                  c.srli       s1, 22
                  addi         t2, a2, 158
                  srli         t2, zero, 15
                  and          s10, t6, a0
                  addi         t1, t0, -521
                  c.or         a5, a0
                  c.addi16sp   sp, -16
                  mulh         t3, a3, t2
                  xori         gp, a4, 1183
                  c.addi4spn   a2, sp, 416
                  auipc        s4, 501496
                  addi         ra, t0, 123
                  c.mv         a0, a1
                  andi         s1, ra, -535
                  mulhsu       tp, a2, s5
                  auipc        s10, 578226
                  c.srli       a5, 17
                  mulhu        t0, a6, ra
                  divu         s0, s8, s10
                  c.sub        s0, s1
                  sltu         t5, a6, s10
                  c.or         a2, s0
                  slli         a2, s8, 21
                  nop
                  sub          s5, s6, s8
                  andi         a7, tp, -635
                  c.andi       a2, -1
                  nop
                  c.li         a7, -1
                  mulh         a6, a6, t5
                  c.xor        s1, a0
                  c.srai       a0, 16
                  and          s1, t6, s11
                  c.srli       s0, 3
                  slli         a4, s3, 31
                  c.sub        a2, s0
                  slli         s8, s11, 7
                  c.li         s10, 22
                  div          s0, a2, a5
                  remu         zero, t5, s0
                  c.and        a4, s1
                  c.mv         s1, s1
                  andi         s3, a7, 1733
                  auipc        a3, 191663
                  c.and        a2, a5
                  rem          t5, ra, a6
                  c.srli       s0, 10
                  c.and        a3, a1
                  c.addi4spn   a2, sp, 1008
                  sub          s6, s2, s2
                  rem          tp, a4, a6
                  remu         s6, s9, sp
                  ori          t5, a2, -1520
                  sltiu        s1, a1, -934
                  and          sp, a7, t4
                  slti         t0, t3, -655
                  mul          s3, s10, sp
                  andi         a7, s1, 673
                  c.slli       a5, 22
                  slti         a7, s8, 253
                  c.andi       a5, 17
                  sll          t1, a6, a4
                  c.or         a3, a4
                  c.add        s7, s7
                  rem          tp, tp, a3
                  c.addi16sp   sp, 64
                  mulh         a0, t3, t5
                  c.slli       a7, 28
                  and          t6, s2, ra
                  lui          s8, 508622
                  c.srai       a0, 19
                  c.li         t4, 29
                  xor          t3, a7, ra
                  xor          s7, sp, gp
                  mul          zero, a1, zero
                  c.addi       s8, -1
                  and          a0, tp, gp
                  srai         tp, gp, 1
                  c.addi4spn   a5, sp, 48
                  sltu         t6, s11, a4
                  c.xor        s0, a3
                  slt          s5, a0, t0
                  rem          s3, gp, a6
                  xori         s8, t3, -186
                  add          t5, a0, a1
                  c.xor        s0, a5
                  sltu         t1, gp, gp
                  slt          s0, a4, s0
                  c.or         s0, a0
                  xor          a5, s9, s7
                  sltu         s8, t4, a0
                  lui          s10, 716559
                  c.nop
                  addi         s8, s11, -1785
                  or           s11, s5, s5
                  c.addi       s8, 1
                  c.xor        a3, s1
                  sltiu        gp, t3, 1048
                  remu         a2, t1, s8
                  srli         zero, t5, 21
                  c.li         t2, -1
                  auipc        a3, 146194
                  sltiu        s11, s11, -1430
                  sub          t6, a1, ra
                  c.and        s1, a2
                  c.addi       s11, 26
                  sra          s1, t1, a7
                  slti         a6, t2, -520
                  c.nop
                  sltu         s1, tp, a7
                  divu         gp, s7, s6
                  or           t4, zero, a7
                  xor          sp, s8, s0
                  c.and        a0, a1
                  c.addi       s11, -1
                  c.or         a4, a2
                  c.addi4spn   s1, sp, 992
                  c.nop
                  mulhu        tp, s8, t4
                  slti         s4, t5, -1820
                  c.sub        s1, a3
                  or           t2, a1, t5
                  mulh         sp, t4, t5
                  mul          t5, ra, s3
                  c.sub        s1, s1
                  addi         t6, t1, -689
                  c.sub        a4, a2
                  srai         t0, s10, 0
                  sltiu        t1, s8, -472
                  sub          a0, s5, s1
                  c.mv         gp, s1
                  c.addi4spn   s0, sp, 448
                  c.addi16sp   sp, -16
                  slt          s10, s10, t6
                  sltu         t6, s9, a4
                  div          a7, zero, a2
                  c.li         a6, 28
                  c.mv         t4, s9
                  c.mv         a0, s1
                  remu         s3, s7, t2
                  or           a6, sp, s6
                  srl          s0, s2, a7
                  c.addi4spn   s0, sp, 800
                  sll          a5, s0, a3
                  sltu         a7, a0, sp
                  c.srli       a4, 22
                  remu         s10, s1, a5
                  remu         s10, s6, ra
                  ori          tp, s1, 915
                  rem          s8, a2, s3
                  srl          s11, a7, zero
                  addi         s8, s1, -110
                  c.and        a3, s0
                  and          s1, s3, a0
                  c.add        a0, gp
                  ori          s4, s11, -466
                  c.srli       a2, 9
                  c.or         a5, a4
                  c.and        a0, a1
                  slli         a2, gp, 23
                  xor          a5, a4, s7
                  auipc        a4, 738636
                  and          s11, t2, t4
                  c.sub        a3, a4
                  c.mv         gp, a7
                  c.addi16sp   sp, -16
                  c.addi       a2, 27
                  c.mv         s4, s11
                  xori         a6, gp, -162
                  slt          a0, zero, a6
                  c.sub        a5, s1
                  rem          t1, s10, sp
                  nop
                  c.addi16sp   sp, 48
                  andi         ra, a5, 1669
                  sra          t4, s0, s10
                  rem          s11, a3, a7
                  mulhu        a0, sp, s5
                  srai         s10, t5, 17
                  c.mv         gp, s2
                  c.mv         t1, t6
                  sltu         s10, ra, a7
                  srai         s1, s2, 7
                  mulhsu       s3, s6, sp
                  or           ra, s4, s3
                  srli         s10, s0, 4
                  c.addi16sp   sp, 160
                  srli         s3, ra, 21
                  c.mv         s5, a5
                  lui          a2, 835427
                  andi         t3, t4, 1540
                  c.add        tp, s10
                  c.mv         gp, s10
                  sltu         s10, t0, zero
                  c.andi       s1, 2
                  sra          t1, s3, a4
                  c.and        a0, a5
                  srai         t2, s6, 3
                  c.and        a4, a1
                  c.sub        s1, s1
                  sltiu        a3, s5, 1355
                  rem          s7, a5, t2
                  c.srai       s1, 30
                  mulhu        t5, s8, a3
                  nop
                  slt          zero, s5, t5
                  and          s7, s3, tp
                  c.add        t6, a3
                  nop
                  sltu         s7, s2, t2
                  c.mv         tp, tp
                  auipc        s3, 695453
                  mulhu        a0, s2, a0
                  sltu         gp, a1, s2
                  mulh         a3, a7, s9
                  andi         a5, s0, -579
                  slt          s3, s7, s4
                  c.add        ra, a6
                  srai         a7, a3, 9
                  sra          t6, s11, s1
                  mulhsu       a5, s9, s3
                  ori          s8, s11, 1922
                  or           a2, a0, a3
                  ori          tp, a2, 1812
                  slt          gp, t3, tp
                  divu         t4, s0, s4
                  sub          s11, s3, t4
                  c.addi       a6, 6
                  sltu         a4, sp, a0
                  sub          a6, a7, s8
                  mulhu        t5, s11, s11
                  sll          s0, ra, s2
                  c.lui        s3, 2
                  c.slli       a3, 7
                  c.sub        s0, s1
                  srli         s7, ra, 14
                  and          s8, a3, t6
                  c.slli       s8, 31
                  c.or         a5, a1
                  slti         s7, sp, 1536
                  andi         t0, s0, -1504
                  xor          zero, t4, s2
                  c.addi       t6, 18
                  c.or         a5, a2
                  c.addi       s7, 21
                  slli         a6, s7, 5
                  c.srai       a0, 14
                  xor          tp, t1, s11
                  or           s4, s8, zero
                  srl          t6, t5, s0
                  mulhsu       s8, s5, zero
                  sra          t4, t6, t4
                  c.lui        s7, 9
                  add          s11, t5, a6
                  addi         gp, a4, 1503
                  divu         zero, a2, s6
                  mulhsu       s5, a2, a1
                  srli         a6, s6, 31
                  c.lui        t2, 17
                  srl          s10, zero, t6
                  c.and        a3, a0
                  srli         s7, a0, 9
                  remu         a7, s7, t3
                  c.sub        a3, a1
                  c.sub        s1, s0
                  sub          s4, s8, t1
                  c.add        a7, a4
                  mul          t0, s7, t2
                  xor          s1, s4, t0
                  rem          a5, t2, t0
                  c.sub        a0, s1
                  c.lui        s10, 30
                  add          s0, t0, t3
                  add          s5, a4, sp
                  xor          s0, s1, t2
                  slti         a2, gp, -388
                  srai         a6, s0, 26
                  rem          gp, s3, ra
                  c.lui        t3, 16
                  c.andi       a5, -1
                  mulh         t3, ra, t0
                  or           t1, a7, s0
                  srl          s10, t0, tp
                  mulh         a7, s7, tp
                  remu         zero, a0, sp
                  srai         s8, tp, 19
                  c.andi       a3, 16
                  c.addi4spn   a2, sp, 416
                  c.mv         t4, s0
                  and          tp, s8, s0
                  sltiu        s10, t2, -1088
                  andi         t4, zero, 1826
                  srl          s11, s7, s5
                  c.xor        a3, a5
                  c.li         s6, 13
                  c.and        s1, s0
                  c.sub        a0, s1
                  sll          tp, tp, s9
                  addi         s8, a0, -1207
                  c.addi4spn   a0, sp, 976
                  srai         a5, a4, 29
                  rem          s8, s10, s1
                  mulh         t6, a1, s10
                  slti         a0, ra, 905
                  remu         s0, a7, tp
                  c.sub        a3, a4
                  lui          tp, 161959
                  rem          a0, t1, t3
                  mulh         a0, s6, tp
                  c.sub        a3, s1
                  c.or         s0, a2
                  mul          s4, zero, a2
                  mulh         s11, a1, s2
                  mulh         ra, s4, t5
                  sra          t0, ra, s1
                  divu         s3, a6, s5
                  srai         a6, zero, 21
                  c.lui        s1, 30
                  c.or         a2, a1
                  srl          t5, t6, a7
                  xori         a5, s3, 1914
                  c.addi4spn   a5, sp, 880
                  mul          s11, s1, a1
                  auipc        t2, 257387
                  div          s4, s2, s0
                  addi         a6, t6, 582
                  srl          s10, s10, a7
                  c.addi       s11, 22
                  sltiu        s4, a2, -246
                  sltiu        s5, zero, 1318
                  c.add        ra, s6
                  srli         gp, a6, 4
                  mulhu        s6, t4, s8
                  c.srli       a4, 17
                  c.or         a4, a2
                  c.addi16sp   sp, -16
                  c.srai       a4, 13
                  c.li         s0, 12
                  rem          t0, s9, sp
                  mul          s4, s6, s8
                  addi         s5, sp, -447
                  c.mv         a5, s10
                  sub          s0, s4, zero
                  c.sub        a2, a0
                  lui          t5, 455766
                  remu         s1, s11, tp
                  c.addi       t2, 8
                  c.slli       t0, 27
                  mulh         t0, s5, s5
                  c.xor        s0, a4
                  c.slli       a2, 16
                  slti         s0, t2, -2035
                  xori         t1, s1, 1447
                  mulhsu       zero, s6, a6
                  c.addi16sp   sp, 128
                  slt          t5, s9, t1
                  c.slli       t3, 1
                  c.addi4spn   s0, sp, 464
                  c.add        a7, s0
                  c.srai       a5, 21
                  c.addi       s8, -1
                  mulhsu       a0, t5, s7
                  divu         s7, s2, s5
                  c.lui        s11, 13
                  c.addi16sp   sp, 64
                  c.xor        s0, a2
                  c.addi       t5, -1
                  c.nop
                  add          tp, s11, zero
                  mulhu        s0, t4, zero
                  srli         t3, a5, 19
                  sll          t0, a0, t3
                  slli         a6, a7, 11
                  c.addi       t5, -1
                  sra          a4, s8, a0
                  srai         t0, tp, 27
                  sltiu        zero, s1, 713
                  sltu         s6, s5, tp
                  c.andi       a4, 3
                  c.sub        s0, s0
                  addi         s1, tp, 729
                  srai         s3, a6, 21
                  c.srli       a3, 12
                  srl          s8, s7, s5
                  slti         t5, t0, -1401
                  sub          s7, s8, s0
                  addi         s5, s4, -1383
                  sra          a6, s2, a3
                  sll          s7, zero, t5
                  or           ra, tp, a2
                  c.andi       a2, -1
                  mul          zero, t6, a5
                  sll          a7, s6, s2
                  slli         gp, a3, 7
                  divu         s0, s2, a7
                  sll          sp, tp, a5
                  c.srai       a3, 29
                  mul          t6, s9, t3
                  auipc        t2, 641319
                  sltiu        s6, t5, 668
                  sltiu        gp, a5, 210
                  c.srli       a3, 14
                  c.srli       a0, 5
                  slt          a0, t6, s8
                  sub          s10, a7, a5
                  srl          t2, s3, t1
                  andi         gp, a7, 612
                  sltu         a7, s8, s10
                  nop
                  xor          a0, s3, s3
                  or           gp, s0, t4
                  srli         s11, t1, 10
                  c.sub        s0, a3
                  c.or         a0, a1
                  c.add        ra, t0
                  sub          t1, t1, a2
                  c.andi       s0, 11
                  and          s8, s10, s10
                  andi         a7, zero, 78
                  c.lui        s10, 29
                  auipc        a7, 143405
                  c.srai       a5, 6
                  auipc        t6, 646608
                  c.nop
                  c.xor        a5, a3
                  c.li         t1, -1
                  and          s5, a6, zero
                  c.add        gp, s4
                  xori         ra, a4, 1764
                  c.addi16sp   sp, 112
                  divu         t0, a1, a4
                  rem          s1, s7, a6
                  remu         s10, t3, a5
                  sub          a6, t2, a7
                  or           zero, t5, a6
                  srli         s8, sp, 14
                  c.srai       s0, 19
                  srl          ra, s11, s9
                  c.li         s10, 23
                  xori         a7, a6, 1279
                  andi         a7, s6, 1836
                  c.xor        a4, a4
                  div          a6, a4, s4
                  slt          a2, s7, a6
                  lui          zero, 692103
                  add          a7, s3, sp
                  add          s10, t4, s5
                  c.mv         s3, t6
                  srl          s8, t0, s6
                  slli         s7, s2, 15
                  addi         t3, a7, -738
                  srai         s6, a2, 14
                  c.slli       ra, 14
                  c.addi4spn   a0, sp, 736
                  c.addi       t2, -1
                  xori         s10, s9, 516
                  slti         a0, a7, -519
                  and          a2, t0, a7
                  slli         a3, t6, 17
                  ori          s5, s7, 1065
                  xori         s0, a4, -552
                  srai         s3, a0, 17
                  c.srai       s0, 7
                  c.xor        a3, a3
                  mulh         t1, ra, a7
                  srai         a3, s8, 11
                  c.xor        s0, s0
                  srai         t5, a7, 5
                  c.srai       s1, 29
                  sll          s1, a3, s8
                  slli         sp, sp, 7
                  c.addi       ra, 12
                  nop
                  mulhsu       s5, t6, s6
                  sll          a0, a4, a4
                  c.srai       a2, 21
                  c.nop
                  c.sub        a3, a3
                  sltiu        t0, ra, 1514
                  andi         s6, a0, -1384
                  remu         a2, a0, s7
                  c.sub        a5, a2
                  ori          tp, s5, -752
                  c.xor        s1, s1
                  sltiu        s11, t1, 859
                  c.lui        t2, 16
                  rem          a0, a5, s9
                  sltu         a6, s9, gp
                  c.and        s1, s1
                  andi         t2, s5, -1691
                  xor          t5, s11, s8
                  c.or         a4, a3
                  c.addi       s11, 2
                  c.addi       a5, 25
                  slti         t5, a0, 1196
                  add          s10, t3, s6
                  addi         a6, s7, 632
                  c.slli       ra, 28
                  sltiu        a2, s10, 205
                  c.addi4spn   a0, sp, 560
                  addi         s7, t3, 506
                  remu         gp, t5, zero
                  c.addi16sp   sp, -16
                  ori          a5, s10, 943
                  andi         gp, s1, 1593
                  c.lui        a0, 13
                  mulhu        t5, s0, a4
                  c.sub        a0, a4
                  c.mv         a5, t6
                  c.sub        s1, s0
                  sub          t5, sp, a4
                  c.nop
                  slli         s7, s0, 26
                  slt          t2, s3, s1
                  sltu         s7, tp, sp
                  sra          a0, t4, gp
                  c.or         a3, a0
                  slli         a4, a7, 3
                  or           t4, t3, t4
                  srai         s1, a6, 2
                  sra          s10, s6, t5
                  div          sp, s8, tp
                  sra          s11, s3, s8
                  slli         s11, t2, 1
                  remu         t4, t4, sp
                  c.srai       a2, 18
                  c.andi       a3, 12
                  addi         s8, zero, -1002
                  slti         s0, tp, 655
                  srl          ra, s0, a2
                  remu         t5, s8, a5
                  c.mv         s8, t4
                  ori          t5, a4, -235
                  c.lui        t6, 17
                  c.andi       s1, -1
                  c.sub        a4, a0
                  remu         t6, a7, a1
                  c.xor        a2, a3
                  mulh         a6, t3, a1
                  c.addi       t3, -1
                  c.mv         t3, t0
                  mul          s4, tp, t6
                  mulhu        gp, a3, t2
                  sll          a3, t0, s10
                  c.andi       a0, -1
                  srli         t5, tp, 4
                  c.lui        s3, 29
                  c.nop
                  and          s8, s8, s7
                  auipc        a7, 635747
                  mul          t5, a2, s2
                  mulhu        t5, s3, gp
                  c.mv         s10, s5
                  sltu         zero, t4, a0
                  div          a5, t6, s5
                  c.slli       s11, 17
                  c.xor        a2, a0
                  div          s1, ra, s8
                  c.addi       a0, 23
                  c.or         s1, s0
                  mulhu        s7, t0, a2
                  xor          a5, gp, t5
                  xori         s1, a0, -1524
                  mulhsu       sp, s4, a1
                  mulhu        zero, a3, s4
                  c.lui        t5, 28
                  mulh         a6, sp, a0
                  mulhu        t2, a4, s7
                  c.add        s1, s7
                  c.sub        a2, a0
                  c.srli       s0, 8
                  mulhsu       t3, s1, a3
                  sra          zero, a1, s3
                  lui          s10, 274520
                  sltiu        a4, s8, 1274
                  sltiu        s4, t3, -1095
                  addi         zero, a3, 576
                  nop
                  slti         a4, t4, 1575
                  c.srli       a5, 19
                  sltu         s5, t1, s8
                  c.lui        a4, 8
                  slt          s0, s2, a3
                  c.addi       a2, -1
                  srl          s10, sp, s11
                  c.nop
                  nop
                  andi         s8, t0, -1147
                  andi         a6, t2, -284
                  c.slli       s0, 10
                  c.slli       s7, 5
                  ori          t6, t6, 498
                  c.xor        a5, a0
                  and          s11, s5, s7
                  c.mv         t1, a2
                  divu         s11, a0, s8
                  rem          s11, s4, s8
                  rem          sp, a1, s8
                  xor          tp, s11, a5
                  mulh         s11, s7, a2
                  sltu         t6, t2, a6
                  divu         t3, a6, sp
                  nop
                  c.or         s1, s0
                  div          t1, t2, t4
                  slli         a3, a7, 16
                  c.srli       a0, 7
                  c.xor        a2, a5
                  or           t0, a5, a2
                  slli         s8, t4, 4
                  c.srli       s0, 17
                  xor          s10, zero, s5
                  sll          t2, t1, s11
                  sub          t3, t4, a0
                  c.addi16sp   sp, 224
                  slt          a7, s4, tp
                  c.xor        a0, s1
                  c.and        a3, a5
                  xori         s0, t2, -2000
                  auipc        s10, 414423
                  addi         s10, a1, 1903
                  c.add        a6, s0
                  c.addi16sp   sp, -16
                  c.andi       a0, 15
                  c.sub        a2, a1
                  rem          s6, s9, gp
                  sra          s6, s3, s2
                  add          s4, tp, t6
                  c.li         sp, 5
                  srl          s6, s11, a1
                  or           s6, s10, a2
                  xori         t3, t2, -1508
                  slti         s1, t4, -1021
                  srli         s0, a4, 24
                  xori         a2, ra, -162
                  c.and        a2, a1
                  c.xor        s1, s0
                  c.and        s1, a2
                  ori          gp, s1, -239
                  c.xor        a4, s1
                  srl          a5, sp, sp
                  c.or         s0, a5
                  auipc        s6, 665508
                  c.mv         tp, s0
                  c.srli       s1, 5
                  mulh         sp, s2, gp
                  sra          a5, t4, s10
                  sra          a7, sp, sp
                  slt          t6, s5, a5
                  c.srli       a0, 7
                  and          t0, ra, t4
                  divu         a2, t5, t3
                  mulhsu       s7, t4, s11
                  divu         s6, ra, s3
                  slti         t6, a3, 1722
                  xori         s5, t3, -259
                  c.srai       a0, 25
                  c.addi4spn   a5, sp, 240
                  xori         s5, t6, 688
                  sltu         s7, sp, s2
                  c.nop
                  lui          s3, 20150
                  sra          s8, gp, sp
                  c.mv         s0, t6
                  c.lui        a3, 24
                  c.srai       a5, 2
                  div          a7, s7, a0
                  c.mv         s10, s2
                  c.sub        s1, s1
                  mulhsu       s6, a3, s7
                  srli         s4, t5, 14
                  rem          s7, a0, a4
                  srli         s11, a5, 26
                  nop
                  c.and        a4, s1
                  c.li         t0, 28
                  xori         gp, a4, 1068
                  andi         s6, sp, 152
                  c.mv         tp, a1
                  rem          a7, s5, s2
                  sra          a6, sp, t5
                  slt          zero, s10, s0
                  lui          s0, 678884
                  mulhu        s5, s2, s5
                  srai         a0, zero, 22
                  divu         ra, a4, a0
                  sra          gp, s6, s9
                  mulhsu       s8, s11, a7
                  auipc        s1, 454664
                  mulhu        a7, ra, t0
                  c.xor        a5, a2
                  c.addi       a6, -1
                  mulh         t1, s11, s10
                  mulhsu       t0, s11, s6
                  c.addi       a7, 5
                  mulh         s0, a0, s8
                  xor          s4, t4, a7
                  ori          zero, a2, 1629
                  c.and        a5, s1
                  remu         sp, a6, zero
                  c.or         a5, a1
                  mul          gp, t4, a1
                  c.and        a0, s0
                  c.add        a0, t1
                  c.sub        s0, a2
                  sub          s11, s5, s4
                  or           s0, a0, a4
                  sltu         t5, gp, t5
                  c.add        a5, a6
                  c.slli       a4, 16
                  c.srli       a3, 20
                  divu         zero, s4, a5
                  c.add        t3, t0
                  sra          t2, ra, a2
                  c.nop
                  mulhsu       a4, s2, a2
                  sra          s8, sp, a2
                  sltu         a7, a0, a2
                  remu         s11, t3, s6
                  nop
                  c.lui        a5, 17
                  lui          s1, 470507
                  xor          s11, a4, t5
                  c.addi       t4, 22
                  divu         s1, s6, a4
                  sll          a4, s8, s7
                  c.xor        a5, a5
                  srai         s6, s4, 28
                  c.and        a4, a4
                  andi         t2, s0, -649
                  c.or         a3, a4
                  sll          zero, a4, a2
                  c.add        t2, a6
                  slt          s7, t1, t4
                  ori          s1, s0, 1471
                  sltiu        s0, sp, -281
                  srli         zero, sp, 4
                  div          t1, t0, s4
                  lui          s10, 123492
                  auipc        zero, 248919
                  mulhu        a7, a0, s5
                  nop
                  andi         a5, gp, 297
                  remu         s0, a0, a1
                  c.add        sp, s0
                  mulhu        tp, gp, t2
                  mulhsu       a4, s10, t4
                  c.or         s1, a2
                  nop
                  ori          s1, t0, 541
                  slt          a2, zero, s3
                  c.addi       s8, 1
                  mul          s8, s0, a4
                  c.li         t2, 15
                  divu         a0, t2, t5
                  mul          a2, s11, s1
                  addi         a0, a3, -894
                  c.sub        a0, a0
                  sltu         s11, zero, s1
                  c.or         a4, a1
                  c.srli       s1, 15
                  mulh         s10, s8, t6
                  mul          s3, t0, sp
                  addi         t4, t5, -334
                  sltiu        s5, s4, -1112
                  c.or         a3, a1
                  rem          a2, s7, s9
                  sub          s3, s8, a5
                  c.sub        s0, a1
                  c.and        a4, a5
                  sub          a0, s0, a2
                  auipc        s5, 1048274
                  c.nop
                  c.sub        a3, a4
                  c.addi16sp   sp, -16
                  sltu         s6, s5, t6
                  and          s5, ra, a3
                  ori          a6, s11, -763
                  c.nop
                  c.sub        a0, a2
                  mulhsu       s5, s11, ra
                  c.mv         t4, t5
                  srli         s6, t3, 0
                  rem          ra, s3, a6
                  c.mv         a5, sp
                  xori         s7, s1, -1414
                  c.nop
                  srai         s8, s2, 17
                  c.addi4spn   a2, sp, 288
                  c.srli       s1, 30
                  and          t4, t3, a3
                  slt          ra, a4, tp
                  sub          s8, a4, gp
                  xor          sp, s9, s10
                  c.sub        a5, a2
                  c.srli       s0, 7
                  c.sub        a5, s0
                  slli         s1, t2, 4
                  c.lui        s3, 19
                  c.srai       a5, 1
                  slti         s10, gp, 697
                  c.li         ra, 23
                  srai         t3, s9, 18
                  ori          zero, t3, 262
                  xori         sp, tp, 1800
                  divu         s3, s2, ra
                  c.xor        a0, a2
                  nop
                  c.addi4spn   s1, sp, 576
                  c.srli       a4, 28
                  nop
                  c.addi16sp   sp, -16
                  c.or         s1, s0
                  c.srai       a0, 13
                  xori         t6, a2, 1500
                  sll          s1, tp, a4
                  c.andi       a3, 15
                  c.li         t4, 1
                  srl          zero, tp, s2
                  c.addi       s3, 11
                  mulhu        s3, t2, a0
                  c.nop
                  nop
                  remu         s0, a0, a3
                  or           t3, t1, sp
                  nop
                  mul          a4, s11, a5
                  srai         a2, t6, 12
                  c.li         s6, 28
                  c.add        t3, gp
                  c.srai       a2, 24
                  rem          s11, zero, s1
                  c.mv         a4, sp
                  and          a5, s8, a1
                  c.slli       s5, 14
                  c.srai       a3, 31
                  srai         a6, sp, 28
                  srli         tp, a2, 21
                  and          gp, s10, a3
                  c.xor        s0, a0
                  and          s10, s3, a0
                  xor          s11, a3, a1
                  nop
                  sltiu        s10, s8, 296
                  mulhsu       tp, s9, t2
                  slt          zero, a1, s9
                  c.addi       s6, -1
                  or           a7, sp, t0
                  c.addi4spn   s1, sp, 336
                  c.addi16sp   sp, -16
                  srai         s3, sp, 20
                  mulh         t3, t5, a0
                  divu         gp, a3, t0
                  c.srli       a2, 26
                  c.addi4spn   a3, sp, 480
                  c.addi4spn   a3, sp, 576
                  or           s1, a5, t2
                  divu         t4, a1, t1
                  mulhu        a2, t6, s2
                  c.addi16sp   sp, -16
                  divu         t3, gp, s3
                  c.addi4spn   a0, sp, 272
                  andi         ra, a5, 567
                  c.add        s0, s4
                  c.add        s8, a4
                  c.nop
                  add          s4, a5, a6
                  andi         t2, t5, 1035
                  xor          s5, gp, s6
                  mulhsu       a4, ra, a5
                  ori          gp, s8, -1745
                  sltu         t2, a3, a3
                  divu         s1, tp, a5
                  c.or         a3, s1
                  sltiu        t5, s5, 317
                  c.srli       a5, 14
                  sub          a6, s6, a0
                  c.slli       a0, 19
                  c.mv         a4, s1
                  c.addi       a4, -1
                  mulh         t3, s8, a5
                  c.andi       s0, -1
                  or           t3, zero, tp
                  or           t1, s5, t5
                  c.nop
                  addi         s10, s7, 1301
                  divu         t3, t4, s5
                  c.srai       a4, 14
                  c.srli       a5, 30
                  xori         s7, t6, 342
                  sltu         ra, zero, ra
                  remu         t6, s6, s3
                  slt          s0, a5, gp
                  c.li         a4, 13
                  c.addi4spn   a5, sp, 544
                  c.mv         s3, s6
                  slli         tp, a5, 12
                  c.xor        a2, a2
                  c.sub        a4, s0
                  mulhu        ra, t3, s9
                  mul          s11, s0, a0
                  remu         s3, t1, t0
                  slti         s5, a7, 536
                  srli         t4, s8, 2
                  c.andi       a0, -1
                  c.andi       a0, -1
                  c.andi       s1, 19
                  c.or         s1, s1
                  srai         s3, a3, 5
                  addi         s5, s2, -823
                  c.add        t6, t6
                  xori         s7, s7, 1606
                  addi         s3, gp, -389
                  sll          s1, tp, a2
                  add          s7, t6, tp
                  c.or         a3, a2
                  c.addi       t2, 19
                  c.lui        s10, 7
                  auipc        s6, 455690
                  c.addi       s3, -1
                  add          gp, zero, zero
                  or           t2, s3, s10
                  c.sub        s1, a2
                  c.andi       a0, 27
                  ori          t5, s10, 1896
                  lui          tp, 224906
                  sll          gp, s9, s8
                  and          ra, t1, s0
                  slti         ra, s8, 1365
                  c.addi16sp   sp, -16
                  mulhu        a0, gp, s11
                  andi         sp, a6, -886
                  c.mv         t2, s8
                  sll          zero, t1, t5
                  or           t4, s7, sp
                  mul          a4, s8, a4
                  slli         t0, a3, 0
                  sll          s4, sp, s7
                  c.or         a5, a3
                  slli         a2, a4, 12
                  c.and        s0, s0
                  sltu         s7, s5, a7
                  c.andi       s0, -1
                  c.slli       s5, 31
                  addi         a2, a2, 459
                  c.addi16sp   sp, 80
                  sub          sp, s1, t4
                  divu         s7, s7, s7
                  or           s0, ra, s4
                  xori         ra, a3, 1279
                  slli         ra, s8, 2
                  c.nop
                  mulhu        a0, s2, s10
                  divu         a5, t2, a5
                  srl          t2, s2, s9
                  c.or         a4, a0
                  lui          t0, 621917
                  c.slli       s1, 2
                  ori          t1, s9, 939
                  srli         s3, s6, 20
                  xor          s11, t5, t2
                  c.nop
                  c.addi       s6, -1
                  lui          t5, 1006210
                  sltiu        t3, s9, 1307
                  c.andi       a5, 16
                  andi         s0, t1, -1967
                  c.slli       a4, 18
                  andi         sp, s0, 1229
                  lui          a4, 919740
                  add          zero, s1, ra
                  xori         t1, t4, 1644
                  srl          s0, t5, s10
                  c.addi16sp   sp, 336
                  c.xor        a3, a0
                  mul          s11, a7, s9
                  c.li         s4, 10
                  addi         s4, s7, -1243
                  divu         a3, a3, s11
                  sltiu        a4, t6, 277
                  or           t6, tp, s1
                  c.andi       a4, -1
                  sltu         a0, t4, s2
                  c.add        a2, s2
                  mul          zero, a7, a2
                  c.addi16sp   sp, 480
                  c.addi4spn   a2, sp, 176
                  c.srai       a2, 25
                  c.xor        s0, s1
                  c.lui        a7, 18
                  lui          s1, 808083
                  c.add        gp, s2
                  c.srli       s0, 10
                  c.nop
                  andi         t5, s3, 629
                  c.and        a4, s0
                  sltu         t5, t3, a0
                  addi         a6, s1, 1449
                  sub          zero, s2, tp
                  c.or         s1, a5
                  divu         a5, s7, s7
                  slti         t4, a6, 20
                  c.addi4spn   a4, sp, 704
                  nop
                  xor          s11, t6, s4
                  c.addi       s6, 31
                  sll          s11, t6, s1
                  slli         s10, s0, 4
                  c.sub        a4, a5
                  c.add        s0, s6
                  sll          t4, t6, s7
                  c.mv         a3, a0
                  c.srai       s1, 23
                  lui          s3, 477646
                  div          sp, s2, t5
                  c.addi4spn   a0, sp, 992
                  c.li         t6, -1
                  c.srai       s1, 2
                  addi         a2, s9, -1942
                  mulh         ra, a2, s9
                  srli         t6, t5, 14
                  c.and        a5, a1
                  c.andi       a5, -1
                  c.addi16sp   sp, -16
                  andi         s7, sp, -180
                  c.sub        a5, a5
                  c.addi16sp   sp, 144
                  xori         t0, t0, -1124
                  slti         t2, s8, 1142
                  c.nop
                  c.and        a0, s0
                  ori          a0, a4, -328
                  auipc        a7, 252655
                  slli         t0, s3, 17
                  mulhu        a7, s1, s9
                  rem          a5, t0, s11
                  slt          t5, s6, s6
                  andi         gp, t6, -1364
                  nop
                  c.addi16sp   sp, -16
                  slt          t3, s3, a6
                  slti         a4, a5, -1754
                  mulhu        s0, a7, t1
                  c.addi4spn   s1, sp, 560
                  srli         a7, a1, 28
                  c.xor        a5, a3
                  c.lui        a5, 30
                  auipc        a4, 81728
                  add          a0, s6, s7
                  nop
                  slli         ra, s5, 3
                  c.addi4spn   a5, sp, 112
                  sltu         t2, a0, zero
                  slti         t6, s11, 737
                  remu         ra, t5, a4
                  sll          tp, a1, t2
                  remu         s4, a0, s7
                  auipc        s1, 749498
                  mulh         s5, s11, s5
                  c.srai       a2, 19
                  nop
                  mulh         t3, t6, a0
                  c.slli       s1, 7
                  slt          t6, t4, t6
                  and          s1, ra, t5
                  mulhsu       t0, t5, t2
                  slli         t2, s4, 12
                  sltu         a3, t2, s8
                  xori         s6, ra, 1358
                  rem          s5, t5, s10
                  slt          a6, s4, s3
                  c.andi       a5, 8
                  mulh         t0, t1, s8
                  or           s8, a3, t0
                  mulhsu       s4, a0, t6
                  add          s4, gp, s0
                  c.and        a3, a0
                  c.nop
                  c.andi       a0, -1
                  c.or         s0, s1
                  nop
                  addi         t3, a1, 431
                  xor          gp, tp, a6
                  xor          a6, a2, a3
                  sltiu        s6, t2, -775
                  c.andi       a4, 11
                  c.lui        t1, 8
                  slli         tp, s1, 21
                  rem          a0, s1, t6
                  or           s8, a4, a4
                  c.slli       t1, 1
                  c.add        t0, s3
                  c.srai       s1, 16
                  mulh         s6, s2, tp
                  ori          gp, s9, -371
                  c.andi       a5, 1
                  c.add        s3, a6
                  srai         s0, s1, 14
                  ori          s5, a7, -1495
                  sltiu        t4, t0, -346
                  c.xor        a5, a5
                  nop
                  slt          a2, ra, tp
                  sll          s4, a4, s5
                  c.nop
                  c.sub        s0, a0
                  xor          a4, s4, a1
                  mulh         t0, t0, a4
                  xor          t4, t2, tp
                  divu         gp, s8, t6
                  c.li         s0, 2
                  mulhu        t3, s9, s1
                  lui          t4, 854155
                  sub          sp, s1, s1
                  c.andi       s0, 24
                  c.lui        t6, 9
                  sltu         a5, gp, s9
                  lui          t1, 541562
                  srl          ra, a3, t3
                  c.mv         a4, t3
                  c.and        a0, a5
                  auipc        gp, 911467
                  slli         s4, s5, 22
                  auipc        t2, 704742
                  c.xor        a4, a5
                  c.mv         s8, a3
                  c.slli       t3, 8
                  c.lui        a0, 9
                  c.xor        s0, a5
                  c.srli       a2, 20
                  auipc        t3, 249075
                  c.add        a5, t5
                  add          s10, a1, tp
                  addi         s1, s5, 1414
                  and          ra, s8, s7
                  sra          t0, ra, a5
                  srai         a2, t2, 2
                  mulhsu       t0, a2, s1
                  c.srai       s1, 7
                  sltiu        a2, a0, -1629
                  sltu         t2, s4, a3
                  andi         t2, a1, -1983
                  c.srai       a3, 7
                  xor          ra, s3, tp
                  sra          t5, a3, s6
                  c.andi       s0, 14
                  xor          t3, a3, t4
                  c.nop
                  c.slli       a3, 23
                  c.or         s1, a1
                  remu         s5, a4, s4
                  andi         s1, s0, -1363
                  addi         s6, s2, 1447
                  srli         ra, t6, 13
                  c.addi       s3, -1
                  c.nop
                  addi         a5, s8, -472
                  slt          ra, a1, s6
                  sub          t2, t6, s6
                  divu         s11, s5, zero
                  c.slli       t4, 11
                  c.and        s1, a3
                  c.addi4spn   a0, sp, 176
                  c.nop
                  xori         t0, t2, -407
                  c.addi16sp   sp, -16
                  c.addi4spn   s0, sp, 496
                  addi         a7, t2, 611
                  ori          s0, a4, 1915
                  c.mv         tp, a2
                  slti         s0, t5, -1116
                  slt          t3, sp, zero
                  mul          t2, t1, t1
                  sra          a6, a2, t1
                  c.srai       a4, 23
                  sltu         a6, s6, a2
                  slt          s3, s7, tp
                  rem          a6, t3, s6
                  divu         zero, a2, s9
                  sltiu        s1, s11, -408
                  remu         s10, a5, s7
                  c.srai       s1, 1
                  c.xor        s0, a4
                  c.mv         a4, s8
                  srai         s7, t3, 16
                  mulhsu       s11, s11, a7
                  add          s11, s10, tp
                  c.addi       s1, -1
                  c.addi16sp   sp, -16
                  srli         s0, s4, 3
                  or           a7, t4, t0
                  c.lui        t4, 28
                  sra          a3, ra, tp
                  c.add        gp, s9
                  c.xor        a2, s0
                  or           zero, t1, a5
                  c.andi       s0, -1
                  srli         s11, a3, 1
                  c.add        s10, t5
                  c.slli       t1, 3
                  sra          a3, s8, a2
                  c.addi16sp   sp, -16
                  c.slli       a2, 27
                  srai         a6, s1, 31
                  srai         a6, s7, 1
                  c.andi       a5, 31
                  sll          t5, t2, s4
                  slt          t4, sp, t4
                  auipc        t4, 114170
                  c.andi       a3, 11
                  srli         s1, tp, 0
                  remu         a0, s4, s2
                  or           a0, s2, zero
                  c.mv         tp, tp
                  xor          a0, s6, t4
                  srai         s10, s0, 21
                  c.srli       s1, 2
                  sltu         a3, s2, t6
                  c.addi       ra, -1
                  srai         t1, s6, 21
                  c.addi       tp, -1
                  nop
                  rem          s7, t1, s8
                  auipc        s3, 389178
                  ori          t4, s5, -143
                  c.or         a2, s1
                  or           s0, s8, s9
                  sltu         s8, gp, s2
                  auipc        a4, 676319
                  c.mv         sp, s5
                  mulh         a4, s0, gp
                  lui          s11, 469905
                  c.andi       s1, -1
                  slli         s11, zero, 9
                  sltiu        sp, a1, 169
                  c.sub        s0, a1
                  andi         tp, s3, 1308
                  c.srli       a5, 22
                  rem          sp, t6, s2
                  c.mv         t2, s0
                  sra          t5, a1, s1
                  c.add        ra, a4
                  srli         s6, s8, 4
                  ori          t6, s1, 75
                  c.or         s0, a4
                  sub          zero, t2, t2
                  div          s0, a1, a5
                  lui          sp, 28442
                  mulhu        gp, ra, gp
                  c.slli       ra, 11
                  divu         s8, t5, t2
                  addi         t3, t2, -773
                  auipc        a2, 960478
                  addi         sp, a5, -1399
                  c.slli       s1, 3
                  c.addi4spn   a4, sp, 80
                  c.xor        a2, a5
                  c.srli       a0, 14
                  auipc        sp, 250376
                  c.addi4spn   a3, sp, 736
                  div          t3, a7, s1
                  or           a7, s7, s6
                  nop
                  srli         t0, t1, 2
                  c.mv         s0, s11
                  mul          t2, s3, s3
                  sltiu        a7, t1, 135
                  ori          gp, a0, 1522
                  c.addi4spn   a0, sp, 224
                  srl          s11, t1, s10
                  sltiu        s11, t6, -1401
                  slti         t1, tp, -671
                  c.addi       s6, -1
                  c.andi       a4, 19
                  c.srai       a4, 4
                  addi         sp, s11, -808
                  remu         t3, zero, a5
                  rem          s3, s1, s5
                  rem          s8, t5, a7
                  c.xor        s0, a4
                  sltiu        s10, s2, 1945
                  slt          zero, t5, a6
                  c.or         s1, a2
                  c.xor        s1, a2
                  c.srli       a5, 7
                  srli         s6, t0, 28
                  c.andi       s0, 8
                  c.lui        t6, 25
                  slti         s1, s8, 1325
                  srl          s1, s4, a6
                  mul          s1, s7, s1
                  c.andi       s0, -1
                  c.andi       a2, 1
                  addi         a4, t5, 1127
                  ori          s6, a1, 1561
                  c.or         s1, a2
                  remu         t4, sp, s6
                  c.li         gp, -1
                  ori          s8, zero, 478
                  sub          s10, a7, t0
                  or           s5, sp, t1
                  c.lui        s11, 24
                  auipc        t1, 529232
                  xori         a4, sp, 657
                  srli         tp, sp, 24
                  mul          s6, gp, s9
                  c.addi       tp, -1
                  slti         sp, t2, 517
                  sub          t2, a0, s11
                  c.xor        s0, a2
                  c.srai       a5, 31
                  c.srai       a0, 27
                  srl          a3, a0, s7
                  c.or         a2, a0
                  c.li         sp, -1
                  mulh         sp, s3, gp
                  addi         ra, s1, -1898
                  xor          a6, sp, a1
                  mulh         s8, s0, t0
                  c.mv         sp, t2
                  srl          t3, s4, ra
                  c.addi4spn   a3, sp, 704
                  c.addi       t4, -1
                  ori          a6, a0, 786
                  c.xor        a2, a4
                  c.slli       a5, 30
                  mulhsu       t0, t0, a2
                  div          s3, s8, s2
                  remu         a3, a7, a5
                  sub          t0, a5, a1
                  c.mv         a7, s3
                  c.xor        a5, a3
                  c.addi4spn   a0, sp, 736
                  div          s0, t5, s5
                  slt          ra, s3, ra
                  c.or         a2, a0
                  and          t2, zero, s4
                  add          a4, a3, a6
                  remu         a4, a4, t3
                  c.andi       a3, -1
                  c.andi       a4, 6
                  c.addi       a2, -1
                  sub          t2, a6, zero
                  c.xor        a5, a5
                  addi         s10, a3, -635
                  srl          t0, a2, s6
                  slt          a6, a4, s0
                  slti         s11, s10, 1918
                  c.and        a3, s0
                  divu         s6, s4, a6
                  andi         t2, a4, -1923
                  andi         s11, s6, 1743
                  c.slli       s10, 11
                  mul          ra, t1, t2
                  c.sub        a2, a3
                  sll          t6, s2, s2
                  xor          a3, a6, sp
                  srli         s8, s8, 11
                  c.li         s8, -1
                  c.or         a5, s0
                  slti         sp, a0, 1299
                  or           t1, s3, a6
                  c.xor        a3, a1
                  xor          t2, t3, a1
                  slli         t0, s7, 28
                  lui          s7, 467268
                  slt          s3, t3, a1
                  sub          a0, ra, s11
                  xor          s3, a6, t5
                  or           s0, a5, a2
                  xori         s10, s7, -1736
                  sub          sp, s11, s4
                  c.sub        a5, a5
                  c.xor        a2, a5
                  lui          s10, 109714
                  sll          a0, s0, s6
                  sll          sp, s7, a3
                  div          s1, a7, ra
                  div          t1, s9, ra
                  c.addi4spn   a3, sp, 736
                  c.or         s1, a4
                  and          a0, a2, gp
                  srli         t0, zero, 17
                  srai         t0, t5, 26
                  c.mv         s10, a6
                  c.addi4spn   s1, sp, 928
                  c.mv         a6, s9
                  srl          a4, s2, s8
                  andi         a5, tp, 889
                  c.mv         sp, s9
                  c.srli       s0, 27
                  c.and        s0, a4
                  sub          s11, s11, s7
                  c.or         s1, a4
                  sub          a5, t2, s9
                  srai         a6, a1, 16
                  slli         s8, s9, 0
                  rem          a6, t6, s0
                  srli         t0, s9, 26
                  c.andi       a2, 15
                  remu         t4, s6, s1
                  addi         s11, gp, 1207
                  srl          t4, a1, a1
                  c.andi       a0, 9
                  srli         a5, t3, 14
                  c.add        a3, t3
                  xor          s5, s9, t4
                  c.addi4spn   s1, sp, 432
                  mul          ra, a7, a3
                  auipc        t2, 660345
                  sltu         sp, sp, gp
                  or           t4, s11, s10
                  div          a5, t0, s6
                  c.sub        a0, a5
                  sub          s1, t0, t4
                  c.sub        a4, a4
                  c.mv         t4, a2
                  c.slli       s1, 12
                  slt          s4, t3, s8
                  lui          s6, 373802
                  slti         s8, t3, 636
                  addi         a5, s8, 899
                  c.addi4spn   a3, sp, 400
                  c.mv         s3, a1
                  c.srai       a0, 17
                  slli         t3, a4, 26
                  c.nop
                  c.addi       sp, 15
                  xori         t1, s6, -152
                  c.addi       s0, 23
                  sltu         s0, a2, s3
                  sub          t3, s10, a3
                  c.slli       t5, 6
                  srli         s4, t1, 9
                  sltiu        t3, a0, 751
                  add          s0, zero, s11
                  rem          s11, t4, t6
                  srai         a5, t5, 11
                  div          s1, s0, a0
                  sub          zero, t2, t3
                  slli         t1, a2, 10
                  c.li         s1, -1
                  c.addi16sp   sp, 320
                  c.slli       s11, 24
                  sra          s4, s1, s9
                  mulh         a5, t2, s6
                  c.add        a4, t5
                  c.addi       a2, 26
                  sltu         t6, ra, a3
                  c.li         s7, -1
                  lui          t2, 915780
                  srai         a3, sp, 15
                  mulhsu       t4, t0, t1
                  mulhsu       tp, a4, s11
                  c.add        t4, a2
                  ori          t4, tp, -346
                  mulhu        t1, tp, a3
                  add          tp, a4, t5
                  c.lui        t1, 3
                  xori         s4, gp, 97
                  c.add        s7, gp
                  c.sub        s1, s1
                  or           a5, t6, a4
                  c.addi       t1, 15
                  xor          s10, s6, a5
                  c.nop
                  or           t1, a2, s2
                  c.lui        t1, 15
                  c.srli       a4, 13
                  c.addi4spn   s0, sp, 896
                  c.srli       a4, 23
                  srai         t6, t0, 24
                  addi         a3, zero, 1489
                  sltu         s11, a5, s11
                  c.or         a4, a4
                  and          s11, a1, t5
                  srai         t6, a2, 9
                  div          t6, s10, s3
                  nop
                  c.xor        a0, a0
                  c.slli       a0, 1
                  slt          gp, zero, a6
                  mul          a7, t4, a7
                  c.addi       ra, 24
                  srai         a4, a4, 5
                  slt          a5, s2, t2
                  srai         s8, a7, 20
                  add          s1, a1, gp
                  sltiu        s6, s0, -1388
                  sub          ra, s6, t0
                  mulh         t2, a0, s3
                  c.xor        a4, s1
                  c.and        s1, s1
                  c.andi       s1, 19
                  mul          s8, a4, s6
                  nop
                  c.xor        a4, a3
                  and          s0, t5, s9
                  remu         s10, s1, t1
                  sll          s4, tp, t1
                  addi         s10, s5, -229
                  c.or         a0, a5
                  divu         t0, zero, a4
                  c.and        a0, a0
                  mulh         s5, a1, a2
                  xor          t4, s9, s11
                  mul          t4, t3, a7
                  c.li         tp, 7
                  c.nop
                  srl          t2, s5, s7
                  remu         a0, a7, a5
                  c.mv         a6, a1
                  div          s1, t5, s1
                  c.xor        a0, a2
                  c.lui        a2, 13
                  andi         zero, s9, -1552
                  c.andi       s0, -1
                  sub          s6, s9, sp
                  andi         s11, a3, -1903
                  c.and        a4, a0
                  sltiu        a6, s9, -955
                  mulh         zero, s2, s3
                  sll          a6, t4, a3
                  sltiu        sp, gp, -176
                  c.xor        a0, s1
                  sll          s6, t6, a3
                  c.mv         sp, s1
                  divu         t2, t6, gp
                  c.add        s0, s5
                  c.slli       s3, 18
                  c.slli       s8, 18
                  auipc        a5, 949142
                  c.and        a3, s1
                  div          a7, a6, gp
                  mulhu        a0, t4, t5
                  div          a4, s0, tp
                  and          a7, s1, s1
                  xori         zero, tp, 1756
                  add          t2, s6, a4
                  srli         s8, s7, 8
                  c.and        s0, a2
                  rem          t0, gp, tp
                  div          s8, tp, a3
                  c.and        a4, s0
                  remu         s1, s3, a3
                  xor          s6, t6, s4
                  c.addi       t4, -1
                  sll          s1, s8, s10
                  c.li         a4, -1
                  slli         tp, sp, 11
                  mulh         a7, zero, a6
                  c.nop
                  andi         sp, a5, 1654
                  mulhu        sp, s7, tp
                  xori         s7, t1, -871
                  ori          gp, a4, 1024
                  mulhsu       a7, t5, tp
                  c.srli       s0, 2
                  xor          a2, a3, s1
                  c.nop
                  sra          t1, s8, a7
                  c.mv         a6, tp
                  sub          t2, a0, a1
                  ori          s11, s4, -234
                  srl          s10, s7, tp
                  c.add        s5, ra
                  c.mv         a5, s9
                  ori          s8, a4, 404
                  sub          gp, s11, s2
                  add          ra, s3, s6
                  andi         t5, t4, -1149
                  c.addi16sp   sp, 480
                  srli         s0, sp, 28
                  remu         a0, s10, s4
                  rem          sp, s2, s6
                  c.nop
                  sltiu        a6, gp, -1304
                  mulh         t1, t4, s2
                  sltu         s10, s10, a5
                  srl          t2, t3, s5
                  sltiu        t0, t5, -345
                  srl          s11, s2, s2
                  sltu         t3, gp, zero
                  lui          t3, 167987
                  and          s7, t2, s9
                  c.xor        a0, s0
                  sltiu        s7, s0, 497
                  c.mv         s0, s11
                  xor          a4, s1, s9
                  xori         t4, t2, 587
                  xor          a3, sp, s2
                  and          a3, s10, s7
                  and          zero, a6, ra
                  c.srai       a5, 5
                  c.addi16sp   sp, -16
                  c.li         s1, 25
                  or           s11, t2, a0
                  c.addi       ra, 30
                  nop
                  mul          gp, tp, s11
                  c.lui        s6, 29
                  c.addi4spn   a0, sp, 1008
                  c.sub        a0, a5
                  add          t2, t3, s7
                  and          t0, s5, a2
                  srli         s6, a6, 19
                  sltiu        s6, tp, -1982
                  sltiu        s10, t6, -1514
                  slt          s4, a6, s6
                  mulhu        a5, gp, t4
                  sll          t3, s2, s7
                  c.mv         ra, a0
                  c.mv         s1, a0
                  slti         s3, t5, 624
                  mulh         t4, zero, zero
                  c.addi       s1, 26
                  and          tp, t2, s4
                  c.or         a5, a5
                  mul          s5, sp, t1
                  c.and        s0, s1
                  xori         s6, tp, 501
                  addi         t0, t6, -1085
                  and          a2, s6, s0
                  c.li         t3, -1
                  srai         a3, s2, 10
                  or           a3, a0, a6
                  srai         s3, s0, 24
                  slti         s0, t0, -1501
                  c.or         a4, a0
                  mul          t2, a0, gp
                  c.srli       a4, 3
                  mul          t0, s1, s2
                  ori          s6, a0, -1933
                  sll          a6, s1, s1
                  c.addi16sp   sp, -16
                  slti         t6, s11, -1898
                  div          s6, s1, a4
                  xor          t3, t0, s11
                  nop
                  c.nop
                  mulh         s6, s3, a5
                  xor          a5, a3, a6
                  addi         s1, s8, 1278
                  xor          t1, t2, s6
                  add          a5, a1, a2
                  lui          t2, 488534
                  c.nop
                  c.slli       t6, 12
                  c.lui        s1, 9
                  c.srai       s1, 18
                  lui          s10, 342055
                  divu         a4, a5, t1
                  mul          gp, a5, s9
                  c.srai       a3, 30
                  sll          t6, t5, t3
                  c.mv         a7, s1
                  andi         gp, a1, 939
                  andi         gp, s0, 220
                  srai         t6, s9, 2
                  lui          gp, 984870
                  sra          tp, a5, s11
                  ori          a3, t2, 1537
                  mulhsu       s6, t2, s7
                  addi         a2, s7, -481
                  c.xor        a5, a1
                  addi         s6, s3, -1867
                  sll          a7, a2, s7
                  srl          s5, s11, s5
                  mulhu        a7, sp, t5
                  add          t1, s3, s1
                  sltu         a5, s5, s7
                  c.or         a0, a3
                  xori         t6, zero, 850
                  rem          a0, s5, zero
                  lui          a3, 506699
                  andi         s7, s8, -1406
                  add          t1, s0, t4
                  srli         a2, s11, 24
                  andi         s8, s5, 626
                  lui          a2, 36536
                  c.srli       a4, 19
                  srli         s1, s0, 2
                  c.mv         gp, a1
                  c.and        a2, a5
                  c.srai       a5, 10
                  c.add        s11, s3
                  xor          t5, t2, ra
                  or           a6, a0, t4
                  c.addi4spn   a3, sp, 416
                  sub          t1, s10, a4
                  auipc        t6, 270654
                  sra          s5, s2, a4
                  auipc        a2, 163933
                  c.nop
                  c.andi       a4, -1
                  sll          gp, t3, gp
                  mul          s6, s8, s7
                  c.and        a5, a2
                  mulhu        t4, s4, s5
                  srai         s8, gp, 16
                  or           a4, s10, t3
                  c.and        a3, a2
                  remu         t0, s3, s2
                  remu         tp, tp, zero
                  c.slli       s7, 26
                  c.li         s6, 26
                  slli         s1, ra, 8
                  c.srli       a3, 8
                  sra          t4, a1, a7
                  c.andi       a2, -1
                  c.or         a5, s1
                  sll          sp, sp, t6
                  c.add        s10, a0
                  div          t4, zero, tp
                  c.addi16sp   sp, 16
                  xori         s6, a3, 1804
                  lui          t1, 700463
                  c.xor        s1, a3
                  lui          t0, 115594
                  c.nop
                  c.mv         s8, a0
                  and          t0, t5, s8
                  rem          a2, zero, t6
                  c.addi       s1, -1
                  c.xor        a2, a5
                  c.lui        a2, 23
                  c.xor        a2, a5
                  mulh         t5, a6, s5
                  xori         a3, a0, -613
                  c.addi       t5, 29
                  c.lui        tp, 4
                  and          s7, t2, a3
                  srli         gp, zero, 12
                  sltu         s5, gp, s9
                  mulhsu       a2, t2, tp
                  div          t3, t3, s3
                  c.nop
                  addi         ra, sp, -1297
                  slt          s8, t3, t4
                  c.nop
                  c.srli       s1, 8
                  mulhsu       zero, tp, t2
                  slt          a3, a5, s0
                  c.andi       a2, -1
                  remu         t6, s10, s7
                  c.and        a4, a3
                  xori         a6, s9, -1933
                  slt          t2, a3, sp
                  or           ra, s4, ra
                  c.nop
                  c.add        tp, t0
                  sltu         s0, s7, gp
                  sll          t1, t2, a7
                  c.xor        a5, a4
                  sltu         zero, a3, a6
                  c.li         s1, 15
                  c.li         gp, -1
                  c.slli       s5, 26
                  mul          a3, t6, s10
                  srli         a0, s0, 19
                  c.lui        t1, 20
                  auipc        s4, 42873
                  c.addi4spn   a5, sp, 208
                  c.srli       a3, 23
                  slti         s7, ra, -575
                  c.lui        a4, 21
                  addi         a0, s9, -967
                  c.sub        a0, s1
                  xori         a3, t1, -605
                  c.or         a2, a3
                  c.nop
                  mulhu        a7, zero, a0
                  c.lui        gp, 7
                  c.or         a0, a5
                  div          s1, s3, a3
                  slti         s1, a0, 1314
                  c.srli       s1, 13
                  c.lui        s1, 24
                  c.li         s4, 9
                  c.addi16sp   sp, -16
                  xor          s6, zero, a5
                  sltiu        t5, a1, 469
                  c.li         s10, 23
                  mulhsu       t2, s1, a4
                  rem          t1, a7, t1
                  srli         a4, t6, 24
                  mulh         tp, tp, zero
                  c.lui        tp, 20
                  xor          a7, s8, zero
                  c.addi       a5, -1
                  ori          s5, s7, 715
                  c.sub        s0, a3
                  c.and        a0, a4
                  xori         t6, s10, 642
                  and          t4, s2, s9
                  c.addi4spn   a0, sp, 928
                  xor          t5, t3, a0
                  xor          a6, t4, s7
                  andi         t4, tp, -480
                  slt          a7, t1, s9
                  remu         s10, s9, a4
                  c.xor        a2, s1
                  srl          s10, t2, t0
                  remu         sp, t3, s5
                  c.nop
                  or           s10, a3, s0
                  auipc        s7, 448872
                  nop
                  nop
                  add          t0, a5, s1
                  mulhu        s5, s4, tp
                  sra          gp, a3, sp
                  mulhsu       a7, a0, a0
                  mul          a5, t0, s5
                  sub          a6, t2, t1
                  c.addi4spn   s1, sp, 864
                  srl          s11, s8, s2
                  srli         s5, a3, 12
                  mul          s7, sp, s0
                  auipc        s3, 586182
                  slt          s1, a6, t0
                  srl          a0, s3, a1
                  slli         a5, t0, 1
                  srai         t4, a5, 25
                  c.mv         sp, s8
                  add          t6, s7, a4
                  slt          a5, a4, t6
                  c.srai       a5, 25
                  addi         t6, t1, -1845
                  mul          a4, a6, s5
                  c.addi       a6, 11
                  mulhsu       zero, a5, s7
                  c.and        a4, a5
                  xori         gp, t5, -1816
                  mulhu        s11, zero, s3
                  divu         s1, t2, a2
                  remu         a7, s3, s7
                  srli         s3, sp, 6
                  c.xor        s1, s0
                  remu         s4, s0, t3
                  c.and        a5, a0
                  nop
                  mulh         s10, a0, a6
                  slti         sp, t1, -1700
                  addi         s6, zero, 2007
                  mul          a4, t2, t6
                  nop
                  slli         tp, t2, 25
                  slti         t6, t3, -694
                  andi         sp, s4, 560
                  sll          gp, a6, zero
                  add          t6, sp, t5
                  mulhu        a5, a7, sp
                  c.add        a4, s11
                  andi         a6, s3, 1790
                  xor          a4, s5, tp
                  srli         s4, t2, 1
                  c.or         a3, s1
                  c.slli       s10, 29
                  slli         t5, a1, 25
                  remu         s1, s5, a7
                  sltu         s0, sp, s10
                  mulhu        s0, s9, a2
                  xori         tp, a2, 990
                  c.addi       t1, -1
                  srl          s7, a2, a1
                  c.srli       a4, 22
                  slt          s6, a3, s1
                  sll          s5, s6, s10
                  c.andi       s0, 1
                  div          gp, a0, t0
                  mul          a6, s1, s2
                  c.and        a3, s0
                  xori         t2, s9, -781
                  mul          a2, s11, a4
                  sll          a2, s11, a5
                  divu         t0, s9, s4
                  mulhsu       a7, s5, a1
                  c.srai       s1, 14
                  remu         s6, s9, s9
                  c.sub        a5, a4
                  srl          t0, s4, t4
                  slt          a5, zero, s10
                  and          t4, t3, s6
                  mul          s1, a7, s11
                  div          s8, tp, t2
                  slli         sp, s8, 27
                  c.nop
                  div          s11, t5, t1
                  srli         t4, t3, 30
                  c.addi       s4, 5
                  xor          ra, t0, s1
                  slli         zero, a5, 17
                  nop
                  sll          a0, s10, zero
                  and          t1, s6, a5
                  c.lui        t1, 27
                  andi         s3, a2, 1379
                  sll          a7, s2, s4
                  sltiu        a0, s1, 1687
                  mulhu        t3, t0, t3
                  andi         t6, t5, -1851
                  c.addi4spn   a5, sp, 752
                  add          a3, a4, s10
                  c.li         t6, 30
                  slli         t4, s4, 30
                  sltu         a0, s0, a1
                  mulhu        zero, s0, sp
                  c.addi4spn   a5, sp, 656
                  c.add        s11, t1
                  mulh         ra, gp, t0
                  c.addi       t0, -1
                  remu         a7, ra, tp
                  c.srli       a4, 1
                  xori         s1, a0, -1189
                  c.srli       s1, 24
                  slt          s10, gp, a1
                  c.xor        a0, a5
                  div          s3, tp, a0
                  auipc        t3, 980744
                  mulhsu       s4, t6, s5
                  c.and        s0, s0
                  c.xor        a0, a0
                  c.xor        a5, a5
                  or           s10, t5, s7
                  xori         ra, s9, 1511
                  divu         t1, a3, a6
                  c.addi16sp   sp, -16
                  sltu         tp, t3, t4
                  c.li         a3, 17
                  mul          a4, a6, sp
                  c.sub        a0, s0
                  nop
                  xor          a2, t5, a5
                  add          sp, s9, gp
                  auipc        s0, 799137
                  auipc        sp, 226629
                  rem          s8, t4, t4
                  c.xor        a2, a1
                  mulhu        a4, t5, a0
                  nop
                  mulh         a0, t5, t5
                  c.li         a0, 15
                  xor          ra, t1, a4
                  c.addi       t5, 19
                  srli         t2, s7, 12
                  sub          a7, t5, t4
                  and          t5, s3, t0
                  mul          t4, t6, s7
                  c.or         a2, a4
                  c.slli       ra, 14
                  sub          a3, s3, t4
                  c.sub        a3, s0
                  addi         s6, t1, 385
                  or           s3, s11, s11
                  div          t3, s10, s4
                  c.slli       a4, 10
                  remu         a2, t2, a0
                  mul          t4, t6, s6
                  andi         s3, t2, -477
                  sub          s11, gp, a3
                  rem          t5, s1, a1
                  nop
                  mul          ra, s0, s5
                  c.sub        a5, a0
                  lui          s8, 123570
                  div          a3, a1, s8
                  c.addi16sp   sp, -16
                  rem          t4, a6, s11
                  c.or         a0, a1
                  c.slli       tp, 5
                  mulh         t1, t3, tp
                  auipc        a7, 833345
                  mulh         a4, s1, a0
                  mulhsu       s10, t1, t4
                  ori          s3, ra, 2017
                  mulhsu       s1, a7, s4
                  srai         a0, gp, 18
                  srai         s11, a7, 6
                  c.addi16sp   sp, 128
                  remu         s5, a2, t6
                  ori          tp, a6, -465
                  slli         a2, s0, 29
                  addi         sp, s1, -952
                  srli         a6, s6, 17
                  mulhu        t5, s5, t4
                  xor          a4, a7, a4
                  mulhsu       a0, sp, zero
                  srli         s11, s9, 9
                  or           zero, a6, s6
                  ori          a0, gp, -252
                  auipc        s5, 250372
                  andi         t1, s0, 2022
                  c.li         ra, -1
                  ori          s0, s0, -27
                  andi         a3, a2, 1803
                  srai         a4, s5, 18
                  ori          t2, a2, -848
                  lui          s5, 469551
                  c.slli       sp, 29
                  slli         t6, a4, 28
                  c.mv         ra, gp
                  sll          s1, a5, s6
                  sub          t0, s10, a3
                  slli         a6, s2, 29
                  c.addi       sp, -1
                  c.addi       s1, 19
                  slt          s6, s6, gp
                  mulhsu       a7, s5, t1
                  c.lui        a7, 14
                  c.addi16sp   sp, -16
                  rem          a5, s2, a1
                  mul          s8, a0, ra
                  slli         s3, a0, 31
                  c.srai       a5, 28
                  sltiu        t0, a1, 433
                  c.add        t5, s8
                  mulhsu       sp, t1, t2
                  srli         t3, t5, 30
                  nop
                  c.addi4spn   s0, sp, 544
                  c.lui        s8, 16
                  c.li         t1, 18
                  ori          s6, t5, 1174
                  add          t3, t0, a7
                  srli         t3, sp, 5
                  c.addi       tp, -1
                  ori          a0, s4, -933
                  addi         a7, a4, 1850
                  mul          s10, a2, s6
                  div          a4, a4, a2
                  div          t1, gp, a4
                  xor          t3, s11, gp
                  or           gp, s9, s10
                  div          s10, s5, s2
                  sltiu        s5, s10, 821
                  c.andi       a2, -1
                  c.li         a5, -1
                  andi         zero, t1, -450
                  srai         t6, a2, 17
                  c.addi       t0, -1
                  c.srai       a0, 18
                  ori          s10, a2, 455
                  c.nop
                  ori          a2, tp, 497
                  c.add        s7, gp
                  remu         s8, t3, a3
                  andi         t6, s9, -1836
                  andi         a4, ra, -2030
                  ori          s10, a4, -31
                  c.addi16sp   sp, 352
                  c.mv         a5, s4
                  sub          t0, t5, s3
                  or           a2, tp, a2
                  c.andi       s1, -1
                  srl          s11, gp, t1
                  divu         s8, s5, s5
                  c.srai       s1, 25
                  srai         s3, ra, 5
                  mulhsu       a5, s1, a1
                  xor          s10, s3, t6
                  divu         a3, s0, a7
                  mulhu        t2, a6, t5
                  srl          s3, s7, s9
                  xor          a0, t4, t0
                  sltu         s10, s5, s9
                  c.or         a5, a4
                  xor          s11, zero, a3
                  nop
                  slt          sp, t5, s2
                  c.xor        a0, a5
                  rem          ra, a6, zero
                  c.addi4spn   a5, sp, 448
                  mul          tp, s2, s3
                  ori          s10, t2, 1049
                  xori         a4, a2, -129
                  divu         a4, gp, s11
                  slli         s11, s4, 18
                  mul          t6, a2, s3
                  rem          gp, s3, s2
                  ori          s7, a0, -368
                  c.add        t1, s11
                  add          s8, t0, t0
                  mulhu        t6, s10, s11
                  divu         s3, s2, s2
                  srl          s4, sp, gp
                  c.add        a3, tp
                  srai         a0, a7, 29
                  c.li         a4, 29
                  mulhu        t1, t1, s8
                  c.or         a0, a5
                  srai         s1, tp, 13
                  sll          s4, s9, s6
                  and          s10, tp, t6
                  sll          t0, s1, s3
                  c.li         s1, 13
                  nop
                  rem          s7, s2, t3
                  sltiu        s1, t5, 1141
                  slli         a2, a7, 3
                  remu         gp, t4, t5
                  c.srli       a0, 9
                  c.mv         tp, a5
                  andi         t0, s9, -814
                  c.nop
                  c.andi       a2, -1
                  srai         gp, a6, 9
                  add          s5, a2, a0
                  lui          a3, 702402
                  andi         a2, gp, -1772
                  c.sub        a0, a3
                  divu         s6, a2, a2
                  c.srli       s1, 26
                  sltu         s4, s7, t3
                  ori          s8, t0, -617
                  divu         gp, s1, t0
                  rem          t2, s0, tp
                  srl          t1, t5, t5
                  c.srli       a0, 6
                  mulh         a7, s0, s8
                  remu         zero, zero, s0
                  auipc        a0, 580272
                  c.xor        a3, a2
                  mul          s6, a4, a0
                  c.sub        s0, a2
                  c.addi       sp, 26
                  c.andi       a0, -1
                  c.addi16sp   sp, -16
                  andi         t2, a4, -790
                  sll          gp, t6, s10
                  c.xor        a0, a4
                  c.sub        s1, a3
                  xor          gp, s6, s9
                  mulhu        s6, s9, a4
                  srai         zero, s11, 31
                  mulhsu       a7, s11, s3
                  srli         s10, s4, 9
                  remu         s5, s5, sp
                  rem          s5, t1, s4
                  sub          a3, t5, s3
                  c.addi16sp   sp, 368
                  slti         s3, s0, 1073
                  and          tp, s2, a3
                  rem          ra, a3, a1
                  andi         s11, s0, -168
                  srl          gp, a4, t2
                  mulh         a2, s2, s3
                  mulh         ra, s2, t1
                  auipc        s1, 121586
                  auipc        gp, 178957
                  div          s6, a4, zero
                  xor          s11, s1, a6
                  c.and        a5, a5
                  add          s3, s10, s11
                  lui          a7, 848565
                  sltu         t0, tp, a1
                  xori         t4, s8, -904
                  srl          ra, t4, t1
                  c.nop
                  remu         zero, s10, t6
                  ori          t3, zero, 54
                  sub          zero, t4, s3
                  xori         s5, s8, -293
                  addi         zero, a5, 332
                  srl          sp, t6, t4
                  and          s3, a4, s2
                  slt          s7, s7, s9
                  and          s3, t2, t1
                  add          t4, a7, s2
                  auipc        t4, 851293
                  srl          t3, s10, t1
                  slt          s0, s1, s10
                  c.srli       a0, 6
                  c.and        a4, a0
                  slti         a0, sp, -2040
                  and          a5, t4, t1
                  rem          s10, t2, a5
                  srli         a6, s7, 2
                  mulhsu       s8, t0, s9
                  mulhu        s0, t5, s2
                  sra          t2, t3, s1
                  xor          sp, t1, s4
                  xori         t0, t5, 18
                  slt          s5, sp, s3
                  srli         s8, s5, 27
                  sub          s3, t2, t5
                  mulhu        sp, tp, s7
                  sra          a5, a3, t3
                  c.lui        s4, 5
                  sub          a4, tp, t3
                  c.srli       a0, 1
                  srai         s10, a2, 4
                  sltiu        t2, s6, 875
                  c.slli       a6, 18
                  mulhsu       s5, a2, t2
                  nop
                  c.nop
                  mulhsu       a3, s3, s6
                  div          t3, s9, s11
                  c.li         sp, -1
                  xor          s0, a5, s0
                  sll          s8, zero, zero
                  add          t3, s7, ra
                  c.nop
                  mulh         a4, a7, s10
                  rem          t6, s5, a4
                  remu         a2, t1, a0
                  addi         s6, t2, -1312
                  mulhu        a5, s2, s0
                  mulhu        t1, a3, s1
                  and          t1, s11, s4
                  c.sub        s0, a0
                  c.xor        a3, a4
                  c.and        a0, a2
                  add          gp, s4, s4
                  c.add        s7, s0
                  c.xor        a4, a5
                  sra          s5, s3, t4
                  lui          t3, 524146
                  sltiu        sp, gp, 0
                  divu         t1, s5, a3
                  mul          s5, t4, s8
                  nop
                  c.addi       a0, -1
                  mulh         a7, a3, gp
                  div          a4, s5, a4
                  remu         s0, a0, t3
                  slt          gp, s4, a3
                  nop
                  sltiu        s7, t3, -33
                  mulhsu       a5, s9, a5
                  sltu         a5, s7, s10
                  c.addi       a4, 25
                  lui          a2, 741051
                  c.nop
                  srl          s1, s9, t0
                  c.lui        a5, 21
                  ori          t0, a2, 1506
                  c.mv         t0, s4
                  srai         gp, a1, 8
                  or           sp, sp, gp
                  divu         s3, a6, t2
                  divu         t0, t5, a1
                  or           a3, s8, a2
                  c.sub        a5, a5
                  c.add        a0, a2
                  mulhu        s6, s11, t0
                  c.li         s10, -1
                  slt          s8, s2, a2
                  xori         s4, a3, 1063
                  c.nop
                  slli         s6, a0, 26
                  mulh         sp, s1, s6
                  xor          ra, s0, s9
                  or           a4, a4, ra
                  c.nop
                  sll          a6, sp, s8
                  mul          t2, a3, s10
                  c.addi       tp, -1
                  sra          s1, s3, a1
                  srl          zero, a5, a2
                  c.slli       s10, 29
                  slt          a6, a5, s4
                  c.lui        s0, 8
                  sub          s11, a1, s8
                  c.xor        s1, s0
                  sub          a3, s10, s11
                  srl          t5, t2, t1
                  c.srai       a3, 23
                  c.srai       a0, 29
                  sltu         s6, t1, zero
                  slti         s5, t2, -851
                  sra          s1, t3, sp
                  srli         t6, a1, 5
                  slti         s0, t1, 713
                  mulhu        a5, a3, s8
                  slli         zero, s7, 24
                  c.or         a4, a1
                  divu         s5, s4, s7
                  nop
                  c.nop
                  sra          s8, s0, s9
                  auipc        a7, 534130
                  srai         t0, ra, 20
                  mulh         s4, s9, a0
                  remu         s7, t6, s9
                  or           s8, a6, s10
                  c.nop
                  mulhsu       s8, a6, a7
                  and          t5, a7, tp
                  andi         sp, a5, 1504
                  mul          t1, t6, s11
                  c.addi16sp   sp, -16
                  c.nop
                  sub          a4, t0, a7
                  xor          s0, s3, a6
                  div          t0, t5, t5
                  div          sp, s10, sp
                  mulhu        t4, s3, s9
                  or           s10, t3, s6
                  sub          a4, a2, a0
                  c.addi16sp   sp, -16
                  andi         s5, s7, -1357
                  srl          gp, a1, a2
                  sltiu        ra, zero, -1857
                  c.sub        a0, a4
                  c.sub        s1, s1
                  c.nop
                  srai         s6, s2, 19
                  mulh         s7, t6, gp
                  or           t4, t1, s5
                  c.lui        t4, 23
                  slt          t2, t3, s1
                  c.addi       s4, 14
                  remu         tp, s7, s6
                  sll          t3, a4, s2
                  mulhsu       t6, s4, s0
                  xor          s6, t6, a0
                  sltu         tp, s6, ra
                  nop
                  c.add        s8, t1
                  mulhsu       tp, t1, s10
                  lui          t6, 880668
                  srli         t4, s6, 22
                  xor          a7, s5, a2
                  c.andi       a4, -1
                  c.addi4spn   a3, sp, 144
                  c.and        a0, s0
                  slt          t5, s5, gp
                  mulh         sp, t0, s11
                  c.addi       a4, -1
                  c.addi4spn   a0, sp, 640
                  c.srli       a4, 14
                  auipc        s11, 338920
                  c.add        a4, sp
                  sub          s0, t5, a7
                  sll          t5, s7, a5
                  add          t0, gp, t2
                  xor          a5, s3, a7
                  c.sub        a4, a3
                  lui          t2, 782132
                  c.sub        a3, a0
                  c.and        a2, s1
                  slli         a0, s8, 0
                  div          a6, a0, gp
                  auipc        gp, 69022
                  divu         a5, s11, a4
                  add          s8, a2, zero
                  add          s11, a4, t2
                  auipc        a7, 6179
                  c.add        gp, s4
                  ori          s11, t4, -1714
                  c.lui        t5, 13
                  sra          sp, a6, s6
                  andi         s1, zero, 1765
                  addi         t3, t4, 992
                  srai         t3, sp, 24
                  sltiu        s5, t2, 1601
                  c.xor        s1, s1
                  mulhsu       sp, s7, t1
                  c.mv         s1, s11
                  addi         a2, s5, -1767
                  c.addi16sp   sp, -16
                  c.xor        s0, s1
                  andi         t5, tp, -195
                  c.lui        a3, 15
                  srli         s10, s11, 10
                  xori         gp, ra, -1664
                  rem          t4, gp, a2
                  c.add        a7, a0
                  nop
                  slti         s8, s6, 239
                  nop
                  c.slli       t2, 11
                  addi         t2, a7, -160
                  auipc        tp, 609192
                  mulhsu       a0, t2, t1
                  c.lui        t2, 15
                  mul          t5, a7, t2
                  sll          tp, s6, s9
                  c.andi       s1, 22
                  c.or         a2, a0
                  c.mv         a7, s5
                  c.sub        a5, a1
                  sltiu        t6, t3, -1293
                  and          a4, ra, s0
                  sltu         t1, a0, s3
                  and          s5, a7, gp
                  add          a4, s2, a1
                  c.srli       s1, 26
                  c.addi16sp   sp, 48
                  c.li         a4, -1
                  c.xor        a3, a3
                  and          a0, s7, s2
                  c.add        tp, s4
                  c.add        s11, s4
                  c.srli       a5, 15
                  c.add        t5, a2
                  c.add        sp, a6
                  slt          a2, s0, s11
                  auipc        s1, 680745
                  sll          t5, sp, s11
                  sra          a3, a4, a7
                  sltu         s3, s1, s5
                  c.add        t4, s3
                  mul          a0, s7, zero
                  mulhsu       s7, zero, s10
                  and          s0, s0, s1
                  c.andi       a4, 13
                  c.srli       a5, 10
                  ori          s4, zero, 420
                  lui          t1, 82774
                  xor          s1, t1, a7
                  slli         a6, gp, 26
                  addi         s4, t2, -2
                  c.srai       a0, 23
                  c.add        s4, a6
                  xor          a3, a0, s11
                  div          t3, gp, s2
                  sub          t0, zero, s3
                  c.mv         ra, a6
                  mulhsu       t2, s5, t3
                  slt          zero, a1, s6
                  or           s6, a1, ra
                  c.add        s10, a6
                  c.andi       a5, 26
                  sub          s7, sp, s11
                  sltiu        s5, a0, 659
                  auipc        t3, 58022
                  c.add        s6, s5
                  slt          t6, a7, a4
                  sub          t5, s7, s10
                  c.add        s1, s10
                  mulhu        t0, s6, zero
                  xori         tp, a4, 1446
                  srli         s8, s4, 15
                  sltiu        s11, s9, 698
                  addi         a4, sp, -1273
                  c.xor        a3, a5
                  mulhu        s10, s4, s1
                  mulhu        t6, t4, t0
                  rem          a3, s3, a1
                  rem          s7, zero, s6
                  c.li         s0, -1
                  c.nop
                  mulhsu       t6, ra, s9
                  div          s11, a7, gp
                  sltu         t0, t3, t1
                  c.or         a2, a4
                  sltiu        s10, s11, 187
                  add          s0, s6, t1
                  slt          t1, ra, t0
                  c.or         s1, a2
                  c.addi16sp   sp, 32
                  mulhu        s7, s5, tp
                  divu         a6, t3, gp
                  and          s4, t6, a0
                  addi         s7, t3, -1528
                  c.srai       a2, 15
                  slli         s7, s0, 12
                  c.xor        s1, a5
                  addi         t0, t3, 860
                  c.xor        a0, a2
                  add          zero, s8, a4
                  auipc        t4, 517615
                  c.srai       a5, 22
                  c.addi4spn   s0, sp, 608
                  sltiu        t3, a3, -1764
                  mul          s5, tp, a3
                  sltu         s11, a0, t3
                  mul          t1, zero, a5
                  c.addi       t5, 31
                  divu         s7, gp, s10
                  nop
                  xori         s7, zero, 1429
                  sub          s8, zero, a2
                  c.srli       a3, 17
                  slli         a3, s9, 14
                  c.sub        s1, a0
                  add          gp, a1, sp
                  slti         t2, tp, 977
                  c.and        a2, a5
                  c.li         t5, -1
                  c.xor        a5, a4
                  srli         s11, t6, 11
                  mulhu        t5, s0, t6
                  sub          tp, a4, a6
                  or           s3, a3, s1
                  xori         s3, sp, -1627
                  sll          s1, s5, s2
                  mulh         t1, t4, s1
                  mulh         s11, a4, ra
                  andi         s8, a1, -1344
                  mulhsu       t4, t4, a3
                  and          zero, a3, s6
                  sll          s7, t0, a6
                  c.lui        t5, 31
                  rem          a2, a1, zero
                  ori          t2, s8, -1348
                  mulhsu       a7, s1, a0
                  mulh         s4, a1, t2
                  mulhu        s1, t1, s10
                  rem          zero, t1, ra
                  xor          a5, s2, t3
                  slti         t0, t6, -1934
                  c.addi4spn   a5, sp, 16
                  slti         s8, a3, 149
                  and          s1, s5, s0
                  c.sub        a0, a0
                  mul          a2, s4, s10
                  c.andi       a5, 13
                  c.lui        a3, 12
                  add          s0, s6, s9
                  and          s1, t1, t2
                  sra          s4, tp, t1
                  andi         s4, s6, -227
                  c.sub        s1, a5
                  rem          s11, t4, a2
                  sll          s6, a2, s0
                  c.srai       a0, 4
                  mulhu        a5, t2, s5
                  divu         s4, s8, a0
                  auipc        s6, 127776
                  xor          a0, tp, a3
                  c.sub        a4, a1
                  divu         s3, t6, tp
                  c.or         a0, s0
                  sub          t5, s0, a6
                  c.addi       t6, 27
                  srli         s4, a3, 19
                  sub          s10, tp, a1
                  c.nop
                  sltu         s10, s7, ra
                  sub          gp, t0, s7
                  sltu         a5, s2, s10
                  c.nop
                  c.addi4spn   a5, sp, 720
                  slt          s0, s4, a7
                  and          a7, t0, s8
                  xori         t3, s2, 440
                  remu         s4, t4, ra
                  c.srli       a3, 7
                  c.lui        t3, 8
                  sll          s3, a3, t3
                  c.addi       a0, -1
                  rem          t6, s3, s2
                  c.sub        a3, a2
                  sra          t2, a6, s0
                  c.lui        s5, 10
                  c.srai       a2, 16
                  addi         t5, s2, -131
                  c.andi       a4, 15
                  xori         zero, s10, -346
                  c.lui        s5, 27
                  mulhu        t6, t6, s1
                  auipc        t6, 25688
                  srli         s6, a3, 5
                  sra          a4, t3, a4
                  c.addi16sp   sp, 304
                  slli         s11, t6, 16
                  srai         a7, s10, 15
                  c.slli       a5, 22
                  slli         t5, t5, 21
                  sltu         s10, s10, a2
                  c.sub        a4, a0
                  auipc        tp, 881607
                  c.add        s7, a3
                  xor          s8, s9, s0
                  c.addi16sp   sp, -16
                  andi         s6, s11, -144
                  divu         s3, a5, s0
                  c.xor        a4, a5
                  sll          s4, s7, s8
                  c.addi16sp   sp, -16
                  slli         t1, ra, 14
                  sub          t0, s9, ra
                  c.li         gp, 6
                  auipc        s11, 848503
                  divu         t6, a7, s8
                  c.srai       a3, 20
                  nop
                  or           t0, s8, s5
                  mulh         s4, s5, s5
                  srl          a3, a5, s6
                  sltu         a7, s7, a2
                  c.and        s0, a3
                  and          s0, tp, t6
                  sltiu        s10, a2, -1770
                  c.addi16sp   sp, 464
                  c.addi4spn   a4, sp, 64
                  sll          a7, s9, t6
                  c.andi       a0, -1
                  sub          t6, zero, a1
                  c.and        a2, a2
                  rem          s3, s1, s0
                  c.srli       a0, 22
                  sll          a5, a5, ra
                  xori         s0, t1, 995
                  nop
                  c.lui        s6, 1
                  srl          s0, a4, a2
                  slli         s6, s6, 10
                  c.srai       s1, 21
                  mulh         s3, t6, a1
                  c.sub        a4, a1
                  sra          t6, a2, tp
                  xori         s11, s0, -1622
                  mul          s0, s0, t2
                  mul          tp, a7, t3
                  sra          s7, a3, a4
                  c.andi       s0, -1
                  c.and        s1, s1
                  c.addi       gp, 21
                  c.li         sp, -1
                  sltu         t1, ra, a1
                  c.srai       a4, 12
                  mulhsu       zero, tp, s2
                  or           zero, s3, a1
                  xori         s7, s9, 346
                  mulhsu       t2, a7, s4
                  c.mv         gp, a3
                  srli         s11, a4, 6
                  slli         s5, s5, 4
                  c.andi       a4, -1
                  c.lui        a6, 23
                  xori         a6, zero, 393
                  srli         s0, a2, 6
                  xori         t3, tp, 1455
                  c.lui        t0, 17
                  srai         zero, s3, 29
                  or           t2, zero, s2
                  c.lui        s4, 28
                  xor          ra, s6, a0
                  slli         s6, a2, 8
                  c.lui        a2, 11
                  c.addi4spn   s1, sp, 944
                  add          s8, a4, t0
                  c.mv         a6, s10
                  c.and        a4, a0
                  andi         gp, s3, 811
                  slli         s7, s10, 1
                  ori          a3, s8, 248
                  and          a4, a2, s4
                  sltu         s4, s2, t6
                  rem          s10, t4, tp
                  mulhsu       a6, a0, s3
                  xor          gp, s7, a5
                  mul          s8, t3, t6
                  c.mv         s5, t5
                  c.xor        s1, a2
                  c.lui        a6, 11
                  auipc        gp, 275840
                  c.sub        s0, s1
                  divu         s7, sp, s6
                  c.lui        s4, 2
                  c.addi       s10, -1
                  rem          s10, s7, a3
                  xor          t4, a3, t0
                  c.xor        s1, s0
                  slli         zero, s4, 23
                  c.andi       a0, 0
                  rem          ra, t2, tp
                  srli         ra, s6, 10
                  nop
                  sltiu        s11, zero, 652
                  c.srai       a0, 16
                  c.add        a2, s5
                  c.or         s0, s0
                  sra          gp, s4, a3
                  mulh         s1, t1, s6
                  sub          a2, s8, a3
                  c.addi16sp   sp, 352
                  slti         tp, s9, -266
                  add          s10, t3, s6
                  lui          ra, 79366
                  c.xor        a5, a0
                  andi         a6, t2, 66
                  lui          s1, 1046990
                  mulhu        t0, a2, s9
                  or           tp, t6, s3
                  auipc        a7, 743524
                  or           s1, sp, gp
                  mulh         t4, a1, s9
                  div          s8, s11, s0
                  or           tp, a5, s3
                  sltiu        a5, s2, -1546
                  c.sub        a2, a4
                  slt          s8, s0, t3
                  c.li         s1, 3
                  c.xor        a3, s1
                  slti         t3, t0, 1470
                  srl          t5, a1, a1
                  c.or         a5, a0
                  sltu         a2, t2, t5
                  slt          t4, s5, t0
                  c.srai       a5, 23
                  c.add        t3, a2
                  slti         s8, a0, 567
                  c.lui        s11, 15
                  add          s10, zero, s5
                  c.srli       a5, 16
                  c.xor        a5, a2
                  lui          sp, 912184
                  mulh         gp, s4, s4
                  c.sub        s0, s0
                  c.lui        a2, 12
                  c.lui        s11, 4
                  c.nop
                  mulhu        t6, t6, a5
                  andi         s6, s9, 1679
                  c.lui        a5, 3
                  andi         s8, s6, 1944
                  lui          t4, 470462
                  mulh         tp, s9, t5
                  sll          s7, s7, t1
                  sra          s6, a6, a4
                  mulhsu       zero, a5, s2
                  slli         s11, s4, 20
                  mul          s11, s5, s8
                  c.nop
                  xori         a2, s0, -1900
                  mulh         sp, ra, a1
                  sltu         s11, s9, a2
                  ori          a2, a7, -1930
                  auipc        s6, 981677
                  c.addi4spn   s0, sp, 64
                  c.lui        a3, 29
                  c.mv         t5, a6
                  c.lui        s10, 9
                  c.or         a4, a5
                  slti         s0, s7, -1304
                  xori         t1, sp, -1091
                  sub          a4, a2, t1
                  srai         s5, a3, 5
                  div          t2, s3, ra
                  sll          zero, s5, t6
                  ori          s6, sp, 1856
                  srl          s11, s4, s8
                  divu         sp, t2, s2
                  mulh         s5, t6, a2
                  c.and        s1, a2
                  c.addi16sp   sp, 112
                  c.srai       s1, 31
                  div          tp, t0, gp
                  mulhu        s1, zero, s9
                  remu         s10, zero, a1
                  c.slli       s0, 4
                  xori         t0, s11, -221
                  remu         s6, a2, ra
                  c.addi4spn   a3, sp, 144
                  c.sub        s1, a0
                  c.mv         a6, a5
                  sltiu        s11, t1, 780
                  addi         ra, a7, -1166
                  c.sub        a3, s0
                  divu         s11, s11, t2
                  and          zero, gp, a6
                  c.andi       a5, -1
                  sltu         sp, a1, s10
                  c.srli       s1, 7
                  c.srli       s0, 13
                  andi         a6, a4, 727
                  rem          s1, a3, a3
                  divu         t1, s0, s8
                  mulhsu       s6, t0, s2
                  addi         t0, ra, 654
                  mulh         s1, s11, t0
                  addi         s3, t4, 243
                  sra          a4, s6, t3
                  c.or         a0, a3
                  slti         zero, a2, 1305
                  c.addi       a7, -1
                  c.srli       a2, 10
                  c.srai       s0, 6
                  c.or         s0, s1
                  sltu         t0, s6, s2
                  add          ra, s0, t1
                  c.srai       a0, 16
                  div          a5, t0, a4
                  and          ra, ra, a7
                  auipc        a2, 982789
                  c.nop
                  c.or         a0, a5
                  mulh         t0, t1, a3
                  rem          s11, t5, s5
                  c.srli       a0, 21
                  c.srai       a5, 15
                  c.addi4spn   a4, sp, 320
                  sltu         a5, s5, s10
                  c.lui        t2, 26
                  addi         s6, a2, -958
                  sra          a0, s3, s8
                  nop
                  mulh         t6, s10, s6
                  mulh         t6, s3, s10
                  sltu         t4, t1, s11
                  lui          t2, 940713
                  sra          t4, sp, t6
                  c.and        a2, a5
                  c.xor        s0, a0
                  and          t6, tp, s4
                  c.addi       s4, -1
                  srai         a3, a3, 15
                  c.li         s0, -1
                  div          s4, s1, t0
                  or           s3, zero, gp
                  c.add        s1, s6
                  c.addi16sp   sp, 256
                  slti         s4, s4, -1038
                  c.addi4spn   a4, sp, 736
                  or           a7, a0, s5
                  nop
                  c.addi       s0, 28
                  srl          gp, sp, s6
                  srai         t0, gp, 10
                  or           a2, a0, a4
                  c.sub        s0, a3
                  auipc        s0, 197344
                  or           ra, s8, s1
                  c.or         a0, a1
                  c.addi       a7, 31
                  addi         a3, t2, 590
                  c.addi4spn   a5, sp, 336
                  slt          s0, s8, ra
                  c.xor        a5, a3
                  c.sub        s1, a2
                  slli         a3, t0, 15
                  sll          a2, t4, s3
                  divu         s7, a4, ra
                  c.add        s1, s4
                  c.addi       s1, -1
                  mul          s5, s5, t3
                  slli         s7, s7, 18
                  mulh         tp, t0, gp
                  c.mv         t6, a2
                  c.addi       a0, 10
                  remu         t1, a2, s4
                  c.mv         s10, s0
                  div          ra, t6, t5
                  mulh         a5, gp, a2
                  c.srai       a0, 26
                  xor          s11, t5, s8
                  c.sub        a0, s1
                  nop
                  nop
                  ori          t0, s7, -410
                  c.sub        a0, a0
                  div          tp, s7, s7
                  slti         s4, s8, 1763
                  mulh         a7, zero, a1
                  rem          s4, s3, t3
                  add          a2, t5, s5
                  c.sub        s0, a3
                  c.srai       a5, 6
                  sltiu        a6, s11, -698
                  sll          zero, s4, s11
                  c.srli       s0, 9
                  c.li         t2, -1
                  sra          ra, a1, a0
                  c.add        s6, a0
                  xori         zero, a5, -183
                  add          a0, ra, gp
                  add          t3, a4, t2
                  c.add        s8, s0
                  sll          a5, t0, sp
                  auipc        ra, 610058
                  add          t6, a5, s6
                  sub          t1, t0, a2
                  rem          s3, a4, t0
                  andi         zero, a6, 1817
                  srl          a7, tp, a4
                  rem          s1, t2, t2
                  rem          s11, s4, a4
                  add          s3, tp, t6
                  remu         t6, a4, s9
                  sra          t4, t0, t6
                  mulhu        a7, a5, t1
                  c.andi       a4, 2
                  c.mv         t5, a6
                  c.srai       s1, 15
                  sll          gp, s9, s0
                  slti         s6, t4, 1358
                  c.or         a5, a3
                  c.srli       a2, 30
                  c.xor        a5, a1
                  c.addi4spn   a4, sp, 992
                  c.andi       a3, 27
                  and          gp, s7, s11
                  auipc        a3, 417526
                  nop
                  xori         a7, a0, -1501
                  sltiu        a6, a2, -893
                  c.addi4spn   a5, sp, 976
                  c.add        s10, tp
                  c.nop
                  add          s8, t0, s7
                  c.addi       ra, -1
                  c.sub        a5, a5
                  mulh         t4, s7, t4
                  divu         s11, s1, s5
                  slt          t1, a0, t2
                  sltu         s6, s3, t1
                  xori         s3, s4, 967
                  slli         t2, a5, 30
                  slt          t2, a2, ra
                  divu         t0, a6, a5
                  mul          s11, a6, t2
                  nop
                  c.addi       tp, 13
                  srl          tp, s5, a1
                  xori         t1, a3, 2009
                  divu         s0, a1, zero
                  sltu         t6, t4, zero
                  sltu         s6, s8, a2
                  c.mv         a3, a1
                  xori         t2, a4, 1592
                  nop
                  mulhu        s5, t3, a6
                  div          gp, a5, a0
                  c.addi       s5, -1
                  c.andi       s1, -1
                  c.srai       a3, 9
                  sll          a2, s9, s3
                  mulh         s8, s8, t5
                  mul          a3, a2, t3
                  slti         s1, s3, 1630
                  c.or         a3, s0
                  srai         a5, a5, 15
                  srl          s5, s3, s7
                  c.sub        a4, a0
                  srl          t2, s8, s7
                  addi         a4, s3, 1901
                  sltiu        t2, a2, -149
                  srl          s3, t4, a5
                  mul          zero, s9, s1
                  srl          s4, a5, t1
                  c.addi4spn   a2, sp, 448
                  c.or         a2, a2
                  mulh         t5, t6, s5
                  xori         t0, tp, -1587
                  mulh         gp, zero, sp
                  c.addi16sp   sp, 256
                  c.and        a5, a2
                  c.slli       a6, 10
                  c.nop
                  c.slli       a6, 25
                  srai         ra, a0, 13
                  c.xor        a5, s0
                  div          t4, s2, tp
                  andi         s6, ra, 1134
                  srai         ra, t1, 3
                  c.lui        s3, 18
                  mulh         s11, s11, a5
                  div          sp, tp, s9
                  c.andi       a2, 0
                  c.li         sp, -1
                  c.li         a4, -1
                  c.addi       t3, 20
                  c.addi4spn   s1, sp, 192
                  div          t0, ra, s4
                  c.nop
                  slti         t4, a5, 1959
                  divu         t6, gp, s0
                  andi         a0, tp, -215
                  c.xor        s0, a5
                  xori         s4, a1, -459
                  srai         s1, a5, 20
                  and          tp, t3, s8
                  c.addi       a6, -1
                  auipc        a7, 339905
                  srai         t1, zero, 27
                  nop
                  remu         s4, a1, a0
                  c.lui        s1, 24
                  slt          s10, t3, s10
                  andi         gp, t0, 244
                  mulh         s7, s0, t4
                  xor          t6, a5, gp
                  add          s0, t6, t2
                  add          a4, a0, t6
                  sll          a2, s11, sp
                  mul          gp, a3, t2
                  sra          s1, t5, gp
                  nop
                  c.and        a4, a4
                  c.sub        s0, a2
                  c.or         a5, s1
                  remu         s10, s3, a6
                  divu         t4, s6, s2
                  add          t0, t3, a2
                  xor          tp, a4, s10
                  add          s8, s10, a3
                  sub          a2, tp, a6
                  c.xor        s0, a0
                  auipc        a0, 914528
                  andi         a5, sp, 1689
                  c.addi       s11, 28
                  add          a0, a2, s7
                  srli         sp, a3, 30
                  lui          a3, 778751
                  addi         zero, s4, -280
                  addi         sp, s10, -1732
                  auipc        t6, 956078
                  div          a7, a6, zero
                  div          a4, a2, a4
                  sltiu        t6, t6, -1049
                  srl          s8, ra, ra
                  srai         tp, a0, 19
                  divu         t3, t0, gp
                  c.sub        a5, s1
                  auipc        s0, 736762
                  mul          tp, zero, t1
                  c.li         s4, -1
                  or           gp, t3, a7
                  srai         s1, a1, 13
                  slli         s5, s1, 22
                  lui          s3, 456872
                  sub          s4, t3, a3
                  div          s6, s10, a1
                  addi         s5, a2, -58
                  auipc        s5, 477244
                  mul          s4, a3, a6
                  div          tp, a2, s5
                  slt          s0, a1, s5
                  lui          gp, 535221
                  nop
                  sltu         s7, a0, a0
                  andi         s3, s11, -1510
                  auipc        s1, 432991
                  srl          s11, s8, t6
                  remu         sp, a0, t0
                  mulh         a3, zero, s4
                  divu         s6, a7, t5
                  c.andi       a3, -1
                  slt          a6, a4, a5
                  c.addi       ra, -1
                  c.addi16sp   sp, -16
                  xori         t0, s8, -298
                  sll          s4, a3, s2
                  divu         s10, ra, a1
                  rem          a0, s5, a5
                  c.slli       s11, 31
                  c.mv         t4, s5
                  c.srai       a2, 19
                  c.lui        t1, 27
                  c.mv         tp, t2
                  sub          s10, s7, s4
                  slt          s11, a2, s7
                  c.add        a4, s10
                  c.srli       a4, 11
                  slti         s6, a4, -1588
                  auipc        a3, 869158
                  sll          s6, ra, a5
                  auipc        t0, 534068
                  xor          t1, t4, s4
                  mulh         t4, a4, t6
                  xor          gp, a7, a4
                  c.xor        s0, a2
                  c.srai       s1, 30
                  slt          s7, s10, a7
                  c.mv         s0, a7
                  mulhsu       a7, zero, s3
                  c.sub        s0, a0
                  sub          sp, a5, a5
                  c.add        t5, tp
                  sltu         t4, t5, gp
                  c.add        t1, a0
                  mulhsu       t0, ra, s10
                  mul          zero, tp, s5
                  nop
                  lui          a2, 981494
                  xor          s1, a3, t6
                  lui          s6, 671970
                  c.addi16sp   sp, 272
                  srai         s8, s6, 27
                  c.sub        a2, a3
                  mulh         t4, s10, s10
                  auipc        t1, 9160
                  mulhsu       a7, t1, s8
                  rem          a0, t5, s10
                  mulhsu       s8, s0, t0
                  slt          tp, t3, s10
                  auipc        t4, 857196
                  slli         tp, a5, 5
                  srli         s0, t4, 7
                  c.or         s0, a2
                  c.mv         s1, gp
                  xor          gp, t6, s6
                  c.addi16sp   sp, -16
                  c.lui        a6, 28
                  c.or         a2, s1
                  mulhu        t4, t4, a0
                  c.xor        a5, s0
                  c.slli       t4, 29
                  xor          t4, t3, t2
                  srli         s7, s8, 20
                  srli         t1, a5, 3
                  and          t0, s6, s8
                  slli         t1, s0, 26
                  slti         t3, s0, -7
                  sltiu        zero, a1, -1555
                  c.mv         s10, a3
                  mulhsu       s1, s4, t5
                  mul          s10, s5, a2
                  c.addi4spn   s0, sp, 960
                  rem          s4, t0, s5
                  or           tp, a3, a7
                  nop
                  mulhu        ra, gp, t3
                  or           s5, s5, t3
                  c.or         a2, a0
                  xor          a4, s7, tp
                  sra          t2, a6, t5
                  c.nop
                  mulh         a5, a7, a6
                  remu         tp, a3, gp
                  sll          t0, zero, s3
                  c.addi4spn   a2, sp, 304
                  div          a6, s2, s10
                  srai         s1, a5, 21
                  mulhsu       a6, s2, s6
                  nop
                  c.srli       s0, 17
                  xor          s6, zero, a3
                  div          t0, s3, a3
                  mulhsu       s11, s7, sp
                  addi         t1, sp, 1733
                  c.addi16sp   sp, -16
                  divu         a7, s3, a5
                  c.addi4spn   s1, sp, 112
                  slli         t3, s8, 30
                  mulhu        t6, a4, s7
                  c.sub        a5, a0
                  c.andi       s1, 31
                  sltu         t5, t4, s1
                  sltu         ra, a7, tp
                  remu         t0, s10, zero
                  c.srai       a0, 22
                  sltu         gp, s0, a4
                  c.li         t6, -1
                  xori         t3, tp, -940
                  mulhu        t1, a7, a2
                  mulhu        s6, a7, s7
                  c.srai       a5, 13
                  sub          sp, s2, s8
                  sub          s6, s0, t0
                  andi         a6, gp, -656
                  c.nop
                  sra          t3, a3, t3
                  ori          ra, a1, -1940
                  sll          a0, s4, tp
                  c.addi4spn   a4, sp, 48
                  sll          s4, s7, zero
                  nop
                  xori         ra, s5, -1414
                  remu         a5, s11, s4
                  sub          a0, a2, a6
                  ori          s6, a7, 1672
                  rem          tp, zero, t1
                  slti         a5, s8, -346
                  mulhu        s7, zero, a6
                  mulhu        a5, a1, s2
                  slti         a4, t4, 1577
                  addi         t0, zero, -1979
                  rem          ra, a6, a7
                  div          t1, s8, ra
                  slli         t3, s8, 17
                  srli         t2, a5, 20
                  mulhsu       sp, a4, t6
                  c.addi16sp   sp, 384
                  c.li         a0, 6
                  mulhu        ra, s2, a2
                  c.nop
                  sltu         a7, a1, s9
                  c.sub        a4, a1
                  and          t4, t3, t3
                  srli         a2, t4, 30
                  slti         s10, s10, 318
                  srai         ra, t0, 14
                  slti         s11, ra, 375
                  sltu         s1, s4, zero
                  c.addi       s0, 7
                  srai         t3, a2, 27
                  c.and        a5, a0
                  andi         tp, s1, -1485
                  c.sub        s1, a0
                  c.srai       a3, 12
                  xor          s6, a0, s7
                  and          t2, a2, t1
                  c.or         s1, a5
                  and          a7, s10, s9
                  srai         t4, s8, 2
                  sll          a6, s3, s2
                  slti         t0, s2, -1366
                  mulh         t0, s2, a2
                  sra          a4, s7, s11
                  c.addi       ra, -1
                  mul          s6, s8, ra
                  sltiu        t2, a2, -862
                  auipc        t1, 901938
                  c.sub        a5, a5
                  auipc        s4, 246369
                  c.slli       gp, 28
                  c.nop
                  c.srai       a4, 29
                  mulhsu       a3, a1, s6
                  auipc        t6, 244991
                  sltu         gp, t6, s11
                  srl          s6, a6, t5
                  c.andi       a2, -1
                  add          a5, ra, s5
                  andi         s7, tp, 285
                  divu         t1, gp, t3
                  lui          s1, 696338
                  div          t6, sp, ra
                  c.li         s6, -1
                  c.add        a6, s4
                  andi         gp, t1, 780
                  c.xor        s1, a1
                  c.addi4spn   a0, sp, 592
                  and          s5, tp, a2
                  add          s11, t6, t0
                  c.andi       a2, 27
                  slti         gp, s6, 1188
                  mulh         a4, a4, a3
                  c.mv         a5, t5
                  c.srli       s1, 2
                  sltiu        ra, ra, -508
                  xor          a0, s8, zero
                  and          s0, ra, s6
                  c.andi       a4, -1
                  c.andi       s1, 11
                  xor          s0, s10, a2
                  add          a6, ra, t5
                  divu         t1, t0, a6
                  c.and        a0, a4
                  div          t2, tp, t3
                  auipc        a7, 849900
                  sltu         s5, t6, t5
                  c.or         a0, a4
                  slti         s10, s10, 324
                  mul          s5, t6, s11
                  c.add        sp, t3
                  slti         tp, s11, -1349
                  c.srai       s0, 31
                  rem          ra, s1, a7
                  ori          s7, t4, -300
                  c.slli       s0, 12
                  auipc        t5, 684044
                  sltiu        s1, t5, 467
                  sltiu        t3, s7, 771
                  mulhsu       t4, zero, s6
                  rem          s10, t6, t0
                  sub          t5, t6, t4
                  sltu         t4, a1, a5
                  rem          t4, t0, a1
                  andi         a3, t5, 1604
                  c.srai       s1, 1
                  c.addi4spn   a0, sp, 304
                  c.xor        a3, s0
                  sll          a0, s8, a4
                  rem          s4, t1, a4
                  nop
                  c.mv         a7, t1
                  c.mv         gp, a6
                  mulhu        a5, s4, t0
                  c.addi16sp   sp, 448
                  nop
                  sra          t6, s11, ra
                  srai         a3, s3, 14
                  c.nop
                  c.add        s10, t2
                  c.add        t5, t2
                  c.and        s0, s1
                  and          s3, a7, s2
                  c.addi4spn   a2, sp, 464
                  ori          a6, s5, -1074
                  mulh         s7, s4, s4
                  sra          s1, sp, s9
                  srai         t1, a1, 21
                  sll          tp, t5, gp
                  slt          s10, t1, s0
                  mulhu        a7, a4, s1
                  ori          tp, s11, 435
                  divu         gp, s6, s1
                  srl          sp, t4, a5
                  c.and        s0, a0
                  c.sub        a0, a1
                  remu         s11, gp, a0
                  add          s10, s6, s2
                  c.or         a0, a1
                  auipc        gp, 374916
                  auipc        zero, 857034
                  sub          a7, s2, t0
                  c.addi4spn   a4, sp, 736
                  c.xor        a5, a0
                  c.srli       a0, 27
                  slli         gp, a2, 10
                  andi         s5, s2, -816
                  slt          a3, t6, ra
                  mulh         a6, a7, s10
                  auipc        a7, 924124
                  c.slli       a3, 2
                  c.addi4spn   a5, sp, 128
                  srl          ra, s3, t3
                  srl          a5, a4, s5
                  c.lui        t1, 1
                  xori         t0, a4, 416
                  c.mv         t0, s10
                  sub          a7, a4, sp
                  addi         t1, t4, -1809
                  c.or         a3, s1
                  slt          s1, gp, s9
                  auipc        s6, 513640
                  slt          s1, a5, t2
                  c.nop
                  or           gp, s1, s0
                  xor          s11, a0, s2
                  c.slli       s7, 10
                  nop
                  divu         t4, a1, s3
                  and          ra, s4, s3
                  srai         a5, sp, 2
                  xori         a3, a1, -394
                  slli         s5, s5, 12
                  c.lui        a2, 13
                  sra          sp, s1, s6
                  lui          t0, 40213
                  mulhsu       s4, s6, s9
                  srli         a6, s2, 19
                  c.andi       a2, 8
                  c.li         tp, -1
                  c.add        sp, s3
                  slt          sp, s7, t5
                  mulh         zero, a7, s4
                  c.lui        s10, 29
                  c.nop
                  c.sub        a3, s0
                  c.srli       a2, 13
                  slli         t3, a6, 10
                  mulhsu       s1, t1, t6
                  slli         a7, a2, 22
                  mulh         t2, s1, s0
                  c.and        a5, a3
                  c.andi       a2, 4
                  andi         a7, t5, 426
                  auipc        a0, 170359
                  sra          s3, t5, ra
                  slli         t4, zero, 21
                  auipc        t5, 613485
                  remu         a7, t1, s7
                  mulhu        t4, s4, a1
                  c.slli       s0, 4
                  and          t5, a6, zero
                  sll          s7, s3, sp
                  sra          a4, gp, a1
                  slli         zero, ra, 4
                  srl          s10, s7, s11
                  mulhsu       s8, t1, a3
                  c.and        a0, a3
                  c.mv         tp, a3
                  srli         a4, a2, 2
                  c.li         gp, -1
                  c.addi16sp   sp, -16
                  sltu         s3, sp, t2
                  div          a2, s9, s7
                  c.slli       t3, 12
                  srli         sp, t3, 27
                  c.addi16sp   sp, -16
                  c.slli       a6, 6
                  sltiu        s1, zero, 1537
                  c.srli       a0, 19
                  sub          t3, a3, a2
                  c.mv         s4, a3
                  lui          s5, 454718
                  and          s6, s1, a5
                  and          s6, s7, t6
                  c.srli       s0, 2
                  remu         s0, a0, s11
                  c.sub        a0, a0
                  slt          s6, a1, s0
                  auipc        s5, 951026
                  c.addi       s0, 10
                  and          s7, a1, t5
                  c.or         a3, a5
                  nop
                  mul          s8, a0, a5
                  c.li         t5, 3
                  c.andi       a4, -1
                  c.andi       a0, -1
                  srl          a3, s10, a1
                  c.mv         s3, t5
                  mulh         s7, s1, s9
                  lui          s1, 184399
                  mulhsu       t5, s7, sp
                  lui          s0, 237228
                  c.add        s8, s11
                  remu         a7, s3, a2
                  c.sub        a5, a3
                  sltiu        t6, t1, 1753
                  c.li         a7, -1
                  andi         t6, a7, -1430
                  xor          sp, a6, s6
                  srli         tp, a6, 22
                  c.mv         s0, s3
                  c.nop
                  srl          t4, tp, a5
                  xor          s6, t5, s1
                  c.slli       t3, 17
                  c.sub        a0, s1
                  slti         s0, s9, 1941
                  rem          s10, s5, t4
                  srli         ra, a0, 8
                  div          a4, a6, s3
                  sll          s1, s2, t6
                  mulhsu       a3, ra, a6
                  rem          t3, a6, a1
                  c.addi4spn   s1, sp, 640
                  divu         sp, s0, t5
                  nop
                  slt          a0, s1, t6
                  addi         s11, s11, -1390
                  c.lui        s11, 17
                  c.lui        t5, 16
                  c.slli       t0, 25
                  mul          zero, t4, s0
                  c.mv         a7, t2
                  mulhu        ra, t6, a0
                  remu         tp, tp, t2
                  srli         s0, a7, 1
                  xori         s4, a1, -1366
                  rem          a2, a5, a3
                  srl          s11, s5, s1
                  sub          a5, t4, sp
                  c.add        s6, s9
                  c.or         a0, a3
                  c.sub        a4, a4
                  sltu         s4, s9, t0
                  c.or         s1, a5
                  divu         t2, t3, a7
                  mulhu        s5, t2, a6
                  sll          zero, ra, t0
                  rem          a4, t1, a4
                  andi         gp, t4, -1114
                  c.and        s0, a1
                  nop
                  sltiu        a7, s2, 375
                  slt          s4, s9, s3
                  remu         s8, s10, s7
                  andi         t4, t4, 1798
                  mulhu        t3, t5, ra
                  sltiu        a6, s0, 647
                  c.andi       a4, -1
                  sll          a0, s3, s2
                  andi         t2, a3, 932
                  mulhu        t1, ra, a3
                  slti         a4, s11, -1459
                  or           sp, s1, t0
                  mulhsu       s0, s1, a2
                  c.andi       a0, 23
                  c.nop
                  xori         a4, a3, -210
                  c.addi       t0, -1
                  c.nop
                  mulhsu       s6, s8, t4
                  slti         a7, a1, 368
                  slt          s1, t4, a2
                  sra          t2, s6, s0
                  mulhu        s7, s3, s0
                  ori          a6, a4, -390
                  sltu         tp, t6, t4
                  srli         a0, s10, 20
                  srl          a3, s1, ra
                  slti         s5, tp, 1100
                  c.or         s0, a5
                  add          s7, t1, t6
                  or           s1, s1, a2
                  addi         a6, a0, 962
                  sltu         ra, s5, t0
                  mulhu        a0, t4, t3
                  lui          t5, 543647
                  div          t1, sp, s11
                  divu         s11, t0, t0
                  add          a3, a7, s7
                  xor          a7, s4, t0
                  rem          s1, zero, s6
                  slli         t2, s8, 22
                  auipc        sp, 574631
                  c.addi4spn   s1, sp, 16
                  c.sub        s1, s1
                  c.addi       t0, 18
                  c.and        a5, a3
                  c.or         a0, a5
                  srli         a7, s5, 0
                  auipc        a5, 680544
                  c.mv         a2, s9
                  auipc        zero, 278138
                  c.xor        s0, a4
                  mul          sp, zero, gp
                  mulhsu       s10, s5, s8
                  slli         tp, t6, 6
                  remu         zero, t3, a3
                  mulh         a5, a2, a0
                  srl          a6, gp, s10
                  sll          a2, s6, s8
                  lui          tp, 101588
                  c.add        a4, a2
                  c.addi4spn   a3, sp, 848
                  add          s8, t6, s7
                  divu         s1, s11, s5
                  srl          a4, s11, s10
                  c.addi4spn   a0, sp, 464
                  c.addi4spn   s1, sp, 288
                  srai         s11, a6, 15
                  sra          s6, s4, t2
                  add          t4, tp, t5
                  slli         s7, a4, 23
                  slti         a2, s0, 1442
                  mul          tp, t2, t6
                  c.nop
                  srl          s6, s11, t4
                  mulhu        t1, tp, s2
                  xor          a4, t6, s6
                  andi         a7, a1, -497
                  srl          s3, t5, s0
                  divu         t4, a7, t0
                  slt          t2, s10, s9
                  divu         s5, sp, s4
                  srl          t2, s9, tp
                  div          a0, tp, a7
                  ori          s0, a6, 584
                  c.li         s11, 8
                  mulhu        tp, s7, t4
                  c.slli       t6, 28
                  remu         s0, s2, s11
                  and          t0, t6, t4
                  nop
                  c.mv         s0, a7
                  c.slli       tp, 26
                  xor          t4, a6, s10
                  mulh         a0, s0, s8
                  slt          s10, tp, zero
                  auipc        a3, 231292
                  sll          s1, t4, a7
                  sltu         a6, t0, s10
                  add          s5, s2, tp
                  add          sp, t4, ra
                  auipc        ra, 257519
                  andi         a0, a7, -884
                  add          a6, t5, s5
                  addi         a7, a0, -1866
                  c.and        s0, a1
                  slli         a0, tp, 15
                  mulhu        t2, t2, s8
                  c.addi16sp   sp, 144
                  addi         a6, s9, 1492
                  c.xor        a0, a2
                  c.srai       a3, 4
                  slt          t4, s6, a7
                  srl          s1, a3, t4
                  lui          s11, 727992
                  sll          s6, a1, s10
                  mulhu        s1, a6, a6
                  andi         t5, t3, -419
                  remu         t5, sp, s0
                  srl          a2, s6, gp
                  divu         a2, sp, a0
                  xor          a7, s10, a5
                  slt          t2, t4, ra
                  remu         gp, t3, sp
                  c.li         s5, 13
                  slli         t0, s7, 21
                  rem          s3, s11, s3
                  andi         s11, s5, 722
                  mulhsu       s5, a2, s4
                  slti         a0, a3, -456
                  c.and        s1, a5
                  c.andi       s0, 1
                  srli         t2, s10, 6
                  c.mv         s11, t6
                  srl          s8, a4, a1
                  andi         s4, s8, -1667
                  c.andi       a0, 31
                  rem          s4, zero, s8
                  xori         s7, s1, 678
                  mulhu        a7, s11, a2
                  auipc        s8, 983533
                  slli         a5, s2, 18
                  srli         a7, zero, 12
                  sub          a2, s0, a6
                  c.addi4spn   a5, sp, 752
                  c.add        t4, a1
                  mulh         s4, t1, t3
                  mulh         a0, sp, a5
                  c.xor        s1, s0
                  mulh         s10, s0, a2
                  sll          s11, s6, s6
                  c.xor        a3, s1
                  or           a5, a7, a0
                  srai         s8, t3, 18
                  mulh         s10, s2, s5
                  c.sub        s0, s1
                  xori         s6, t6, 1525
                  sltu         s8, s0, a5
                  remu         s0, a7, s8
                  c.lui        gp, 13
                  c.lui        a7, 4
                  or           ra, tp, s9
                  c.srli       s1, 10
                  c.addi16sp   sp, -16
                  c.xor        a4, a0
                  c.slli       t3, 21
                  sll          a4, s10, s11
                  c.and        s1, s0
                  xori         ra, a1, -664
                  divu         t1, s11, s9
                  c.xor        a2, a0
                  c.or         s1, s0
                  or           s1, tp, s8
                  mulhsu       s6, s0, t1
                  slti         sp, s1, 434
                  c.xor        s1, s0
                  c.or         a0, s0
                  c.srli       a4, 26
                  sll          t2, s9, s6
                  slti         s3, a0, 1866
                  slt          a3, s9, a4
                  sltiu        s7, t2, -1121
                  c.and        a3, s1
                  remu         t4, s7, s8
                  c.nop
                  auipc        a5, 599741
                  sltiu        t0, a1, 172
                  c.addi       tp, 16
                  mulhsu       a4, s5, a6
                  c.srli       a0, 12
                  c.add        s4, a3
                  c.srli       a3, 28
                  slt          ra, a7, ra
                  rem          a7, t0, s4
                  mul          a7, t2, t0
                  remu         t1, s2, s2
                  remu         t6, t2, s1
                  c.xor        s1, s0
                  c.mv         t3, sp
                  c.nop
                  srli         a3, a0, 25
                  div          tp, a5, a3
                  sub          s5, s0, s9
                  c.or         a2, a4
                  c.srli       a2, 23
                  rem          zero, a4, a7
                  sub          a3, s1, a6
                  c.sub        a5, a2
                  remu         a0, t1, s1
                  c.addi4spn   a4, sp, 288
                  c.li         gp, -1
                  c.addi       t2, -1
                  c.andi       a0, -1
                  mul          a5, t0, s7
                  c.sub        a2, a1
                  nop
                  c.andi       a3, 5
                  mulh         t1, s3, t1
                  divu         sp, s1, s1
                  mulh         ra, s9, a0
                  srai         s10, a5, 30
                  c.add        s5, s1
                  ori          s4, s9, 540
                  c.and        s1, a3
                  c.mv         t3, a0
                  c.add        a3, s6
                  xor          s0, a5, a3
                  c.sub        a5, a1
                  slt          t3, a3, a5
                  and          s5, s10, s10
                  c.mv         s8, t6
                  mulh         a6, a4, t2
                  c.addi4spn   s1, sp, 448
                  divu         t0, s8, s10
                  sltu         s10, a0, s0
                  srai         a6, ra, 31
                  slt          a5, s4, a7
                  srli         gp, a4, 16
                  sub          t1, tp, s6
                  mul          ra, ra, a4
                  ori          s10, s3, -1382
                  and          s4, s6, s6
                  c.sub        a2, a2
                  sll          a7, s6, t3
                  sltiu        s0, s6, -1809
                  c.lui        s6, 10
                  and          s7, a3, s5
                  srl          a7, sp, ra
                  div          s3, a6, t2
                  slli         s0, sp, 30
                  c.mv         a7, t0
                  and          s0, s4, t0
                  srl          t0, s4, s2
                  c.addi4spn   a0, sp, 112
                  or           s1, t6, s0
                  add          s11, a6, t3
                  xor          a7, a2, tp
                  sra          ra, a7, gp
                  mul          t3, ra, sp
                  c.srai       a0, 15
                  c.addi16sp   sp, 480
                  c.addi       ra, 18
                  c.xor        a0, a5
                  c.addi16sp   sp, 480
                  mulhu        s5, a5, zero
                  srai         s6, zero, 26
                  c.srai       s1, 9
                  c.nop
                  xori         s1, zero, -1096
                  c.mv         tp, s10
                  c.addi4spn   a2, sp, 480
                  c.addi4spn   a2, sp, 832
                  srli         tp, s5, 1
                  sltiu        s8, s8, -1056
                  and          t4, s0, sp
                  c.addi4spn   a2, sp, 816
                  slt          ra, a6, s3
                  slli         a2, s10, 10
                  sltu         gp, a4, s5
                  c.or         a2, s0
                  sub          s7, s8, a7
                  c.srai       s0, 26
                  c.li         sp, -1
                  c.slli       s1, 25
                  c.lui        s4, 18
                  nop
                  mulhu        a0, a7, s5
                  rem          zero, s1, ra
                  c.lui        a2, 25
                  c.li         s11, -1
                  c.nop
                  mulhu        s1, a2, ra
                  sltu         s4, s11, t0
                  c.mv         a4, a3
                  srli         a6, sp, 31
                  mulhsu       zero, tp, a0
                  c.addi       tp, 17
                  addi         gp, a7, 1522
                  sra          s11, t2, zero
                  c.mv         a0, s5
                  c.add        s3, s7
                  c.lui        a4, 5
                  slt          s8, a4, t6
                  c.li         tp, -1
                  slti         a4, s9, -613
                  slti         s3, s1, -268
                  mul          t5, a2, s3
                  sltu         ra, t2, t2
                  sltiu        a0, gp, -1658
                  sra          t1, a0, s2
                  c.li         t3, -1
                  sra          s6, a1, s6
                  ori          a5, t6, -345
                  mulh         s1, zero, t0
                  mulhu        t6, s8, s0
                  rem          a5, s0, t4
                  rem          a4, s9, a4
                  c.addi4spn   a2, sp, 544
                  remu         s11, t0, t6
                  c.li         s10, 12
                  mulhu        s0, s5, ra
                  c.sub        a0, s0
                  sll          s11, t2, tp
                  ori          s8, zero, -486
                  sra          t6, s2, s1
                  srli         t1, t3, 20
                  or           s5, a7, s8
                  srl          s4, ra, t0
                  lui          a3, 851124
                  c.addi       s8, -1
                  mulhsu       s11, s3, s2
                  divu         s3, t3, s5
                  c.xor        a4, a1
                  c.and        s0, s1
                  srai         s1, s1, 31
                  xor          s10, a3, t1
                  sltiu        t6, a6, 1042
                  c.sub        a3, a5
                  sll          s11, s5, tp
                  c.add        t6, s3
                  auipc        s1, 608382
                  c.nop
                  c.xor        a3, a3
                  c.lui        t4, 20
                  c.sub        a2, s1
                  c.addi16sp   sp, -16
                  remu         t5, s3, s1
                  c.srli       a0, 1
                  div          s8, t3, s0
                  lui          t5, 95699
                  remu         s1, s2, a1
                  c.addi4spn   a4, sp, 384
                  c.addi       a3, -1
                  srai         t4, t0, 14
                  remu         s10, t5, t4
                  c.add        a4, s0
                  c.srai       a4, 17
                  c.xor        s1, a3
                  c.nop
                  rem          a6, a6, zero
                  mulhsu       t4, s5, s11
                  c.and        a0, a1
                  c.mv         a7, s6
                  c.srai       a5, 27
                  c.srai       s1, 26
                  sub          s1, a1, s2
                  c.mv         s1, tp
                  add          t0, a6, t3
                  ori          s1, s3, -1173
                  slli         s7, s2, 16
                  c.addi       s3, 2
                  c.xor        a3, a1
                  mulhu        a7, t1, gp
                  c.nop
                  c.slli       t4, 10
                  rem          s8, a0, sp
                  mulhsu       s3, s7, s10
                  nop
                  mul          a7, a0, zero
                  mulhu        t2, a3, t2
                  sltu         a6, a6, t1
                  add          s8, s5, zero
                  lui          a5, 1021020
                  sra          t5, t3, s5
                  nop
                  rem          s1, s1, a4
                  c.addi       sp, 6
                  c.andi       a0, -1
                  c.add        sp, s3
                  divu         s0, sp, s0
                  lui          t4, 426005
                  c.addi16sp   sp, 320
                  divu         s1, s0, a6
                  c.andi       a0, 13
                  andi         s1, ra, -269
                  c.addi4spn   a2, sp, 176
                  addi         ra, tp, 797
                  add          t2, s4, t3
                  sltu         s5, a4, s4
                  srli         s4, s2, 2
                  c.xor        a0, a2
                  slt          s4, s9, s4
                  sltiu        gp, s0, -433
                  slli         a4, sp, 8
                  mulhu        t4, t0, a1
                  mulhsu       a3, t5, t2
                  c.nop
                  add          gp, tp, s9
                  sltu         a3, zero, t2
                  c.addi4spn   a2, sp, 16
                  c.nop
                  slli         a6, a4, 9
                  div          a2, s0, s7
                  nop
                  c.andi       a5, -1
                  sll          s11, t0, t6
                  lui          a7, 210202
                  c.addi       a0, -1
                  c.addi4spn   s1, sp, 128
                  sltiu        zero, gp, -868
                  divu         s1, a6, t1
                  div          s5, s2, t0
                  xori         t3, t5, -1359
                  c.xor        a2, a3
                  divu         a7, a3, a4
                  add          t0, s2, t5
                  ori          ra, a5, -689
                  or           s0, t1, tp
                  c.li         a7, 21
                  srai         gp, a0, 31
                  or           s1, a0, a5
                  c.and        a5, a4
                  sll          s1, gp, a5
                  mulhu        s1, s6, s7
                  lui          s4, 133577
                  c.add        s3, t4
                  divu         t3, s1, t2
                  lui          a7, 343969
                  c.addi4spn   a3, sp, 288
                  c.andi       a5, 28
                  sltiu        tp, s0, 1960
                  c.mv         a2, s7
                  mul          s11, tp, s6
                  mul          gp, t2, sp
                  c.xor        a2, a1
                  c.add        s10, s6
                  sll          a3, s4, s3
                  c.and        a0, a3
                  c.add        s5, gp
                  c.or         a2, a4
                  mulhu        s6, tp, s10
                  c.xor        a5, a5
                  c.addi16sp   sp, -16
                  c.sub        a4, s0
                  c.addi16sp   sp, -16
                  c.srli       a0, 29
                  c.or         s1, a1
                  c.add        t2, a1
                  and          t1, s9, s11
                  slt          t4, s0, ra
                  nop
                  c.lui        s10, 5
                  c.slli       tp, 5
                  c.sub        a5, a5
                  sra          sp, t6, s9
                  c.srai       s0, 18
                  c.xor        s1, s0
                  div          t2, t1, s11
                  srli         t4, zero, 1
                  c.or         a0, a5
                  c.nop
                  divu         t1, t5, t1
                  mul          sp, s5, t1
                  c.sub        a3, a3
                  mulhu        t6, s5, tp
                  mul          t3, tp, s0
                  c.slli       t1, 28
                  mulhu        t5, tp, sp
                  slt          gp, a5, s4
                  slt          s4, a6, t0
                  c.slli       a3, 3
                  sra          sp, a6, s9
                  c.andi       a5, 20
                  c.addi4spn   s1, sp, 720
                  c.addi4spn   a2, sp, 544
                  srl          t2, zero, a7
                  sltu         t3, tp, s7
                  c.addi16sp   sp, -16
                  c.andi       a2, 15
                  slti         s10, a3, 384
                  mulh         s10, s10, a1
                  c.li         ra, -1
                  c.lui        t5, 4
                  c.addi16sp   sp, 128
                  c.nop
                  xori         a7, t4, 1597
                  ori          s5, s6, 852
                  sra          s10, gp, s8
                  c.srli       a2, 28
                  srai         s7, s4, 30
                  sltiu        t3, s1, -616
                  mul          s3, zero, s11
                  c.srli       s1, 17
                  c.nop
                  xor          t3, sp, a4
                  c.xor        a4, a5
                  srli         sp, a0, 0
                  c.mv         s4, s1
                  sll          a5, s0, s10
                  mul          s11, a5, t2
                  srli         s1, s5, 21
                  c.addi       t6, 11
                  mul          tp, tp, t5
                  c.xor        a4, s0
                  c.srai       a5, 12
                  slt          t1, s8, t5
                  sltiu        a7, s9, -1012
                  c.srai       a4, 13
                  c.srai       s1, 30
                  c.nop
                  sltu         a2, a6, a2
                  rem          s5, s6, t2
                  c.and        s0, s0
                  xori         t0, a0, -70
                  lui          gp, 791166
                  div          s7, a1, a3
                  addi         s10, zero, -480
                  c.lui        t5, 25
                  xor          s5, t1, s0
                  c.srli       a4, 24
                  sltiu        a4, a2, 1893
                  divu         a2, s0, t6
                  mul          s10, sp, gp
                  ori          s4, s3, -954
                  andi         a2, zero, -482
                  remu         s8, sp, s6
                  mulhsu       s11, a1, a7
                  sub          a0, s1, a1
                  c.sub        s1, a1
                  div          zero, s4, zero
                  sll          gp, s4, s0
                  sltu         s7, a3, s1
                  c.srai       a5, 24
                  xori         a2, a1, -401
                  xori         s7, s11, -1466
                  c.nop
                  nop
                  mulh         s0, tp, a6
                  c.xor        a5, s1
                  mulh         a6, a0, s9
                  c.srai       s0, 11
                  mul          s7, a3, a6
                  rem          a6, a1, a2
                  c.slli       s4, 30
                  c.srai       s0, 19
                  c.srai       a2, 24
                  c.andi       s1, -1
                  nop
                  addi         s1, a7, -1380
                  c.sub        a3, s1
                  c.srli       a5, 23
                  slli         a5, t3, 7
                  c.xor        a3, a0
                  c.addi       s3, 14
                  c.addi16sp   sp, -16
                  rem          a5, a1, t2
                  mulh         s7, sp, zero
                  c.srai       s0, 20
                  c.or         a0, s1
                  addi         a5, a6, -1928
                  andi         s8, s0, 745
                  remu         s4, t0, s10
                  mulhu        a0, s5, s10
                  c.add        s3, a2
                  ori          s10, s5, -1006
                  div          s11, a4, s4
                  sltu         a5, t6, s3
                  c.srli       s1, 21
                  slli         a7, a0, 2
                  slli         t3, s3, 13
                  c.li         s1, 2
                  div          a4, zero, a5
                  slli         s10, zero, 8
                  and          s1, t2, s5
                  slli         s4, t5, 4
                  rem          s4, a0, t5
                  srli         ra, t3, 7
                  nop
                  c.or         a0, a1
                  srl          a4, s10, t5
                  c.addi4spn   a5, sp, 864
                  c.xor        a4, a1
                  ori          a4, s8, 972
                  c.li         t4, 19
                  sra          sp, s6, a7
                  mulhu        s1, s1, t1
                  mulh         s7, s8, s9
                  lui          s5, 193245
                  c.mv         t2, t3
                  mulhu        sp, tp, t1
                  c.addi       t3, 11
                  c.mv         gp, a6
                  sra          s11, t1, a5
                  sub          a2, s0, t5
                  c.slli       a5, 16
                  mul          t2, ra, s5
                  rem          s11, s5, s4
                  c.addi       s4, 24
                  c.andi       a0, 1
                  and          zero, a2, s4
                  c.addi       s3, -1
                  add          t0, t6, a0
                  c.mv         s5, a4
                  mulhsu       t3, s10, tp
                  c.sub        a5, a2
                  c.add        t2, s0
                  slti         s4, t4, -143
                  c.srai       a0, 20
                  c.lui        s8, 20
                  sra          t6, sp, t6
                  c.lui        a4, 16
                  div          gp, a5, t2
                  addi         t3, zero, -54
                  mulh         a5, a0, a5
                  c.addi4spn   s1, sp, 384
                  c.addi16sp   sp, 368
                  c.mv         s1, t1
                  add          a5, s4, t0
                  xori         a0, t0, 1342
                  and          s6, s4, t6
                  addi         s1, t0, -1637
                  auipc        t4, 899151
                  sra          s7, a0, tp
                  c.andi       a3, -1
                  c.mv         t4, s2
                  c.andi       a2, 5
                  sub          t3, s2, a2
                  andi         sp, s2, 758
                  c.addi16sp   sp, 240
                  ori          s7, a5, 474
                  srli         t1, sp, 17
                  auipc        s11, 212506
                  slti         gp, a1, -2022
                  c.mv         t0, s5
                  slli         s4, a2, 17
                  remu         s6, a5, s3
                  c.xor        a4, s1
                  c.or         a4, a5
                  sltu         s1, s2, s9
                  c.sub        a3, s1
                  srai         s8, t2, 12
                  c.srai       s1, 11
                  sltu         gp, t1, gp
                  c.add        s3, t3
                  sra          t6, s5, s0
                  slt          s8, t0, a6
                  c.addi       s10, -1
                  c.xor        s1, s0
                  slli         s5, s1, 15
                  mulhu        s5, gp, a1
                  c.or         a5, s1
                  mulh         s0, s9, s5
                  xor          a5, a7, t4
                  slli         gp, gp, 13
                  sltu         s6, t1, t3
                  c.sub        s0, s1
                  mulhsu       t1, t2, a5
                  andi         ra, a7, 123
                  div          s6, s5, s9
                  mulhu        t0, zero, a3
                  c.add        ra, a2
                  c.addi       t3, -1
                  mulh         sp, a7, ra
                  c.and        a5, a1
                  and          a3, ra, s5
                  ori          s11, t4, 1808
                  c.xor        s0, a1
                  c.slli       a4, 17
                  rem          a5, t6, s0
                  or           s8, s8, gp
                  c.lui        ra, 23
                  c.nop
                  c.andi       a5, -1
                  c.sub        a2, a4
                  c.and        a0, a3
                  c.and        a0, a0
                  c.srai       a4, 28
                  mulhu        s1, s5, s9
                  c.andi       s0, -1
                  c.srli       a3, 3
                  c.addi4spn   a5, sp, 848
                  auipc        s3, 933785
                  rem          t0, s7, t3
                  auipc        s8, 745336
                  c.mv         t3, t2
                  c.addi       a5, -1
                  srli         s1, s11, 3
                  mulh         a3, t6, s10
                  c.li         s11, 26
                  nop
                  slli         s6, s7, 5
                  c.addi4spn   a3, sp, 464
                  andi         s10, a1, 1053
                  mul          zero, a0, s1
                  c.mv         tp, sp
                  mulh         ra, s6, s7
                  c.lui        t3, 12
                  addi         sp, a3, 177
                  c.add        s6, a1
                  lui          a7, 611611
                  lui          s3, 159329
                  srai         t3, s4, 31
                  c.add        s11, gp
                  c.mv         a7, a6
                  c.addi4spn   s1, sp, 496
                  nop
                  slt          a3, s6, sp
                  sltiu        ra, a5, -1240
                  c.or         s0, a5
                  addi         sp, a1, 1196
                  c.addi       t3, -1
                  lui          s1, 350428
                  srli         tp, s6, 11
                  auipc        s3, 214424
                  mulhsu       s1, s8, a1
                  slt          s5, s7, t6
                  nop
                  c.and        a0, a0
                  c.nop
                  c.andi       a4, -1
                  c.sub        a4, a2
                  mulh         gp, s4, a6
                  mulh         s6, tp, s6
                  sltu         a7, s2, a2
                  sub          s3, s4, tp
                  divu         s6, s4, t3
                  or           a6, a5, t6
                  srai         t6, tp, 14
                  add          zero, sp, a0
                  slli         s11, sp, 3
                  c.slli       t2, 7
                  rem          zero, s10, s5
                  c.sub        s1, a0
                  ori          t4, a5, 131
                  c.mv         a7, s5
                  nop
                  and          a6, s8, a5
                  c.add        sp, t1
                  c.addi16sp   sp, -16
                  mulhsu       t5, zero, s2
                  c.slli       ra, 12
                  slt          s4, sp, t6
                  and          sp, a1, t4
                  andi         s4, s0, -349
                  auipc        s11, 814630
                  sll          a4, s1, s10
                  xor          s0, t0, s9
                  mulhu        a3, s7, s0
                  sra          s0, t5, sp
                  c.li         s6, 0
                  sltiu        s10, s3, 1982
                  mulh         s8, a5, s8
                  sra          t2, a0, s8
                  mulh         t2, t4, t6
                  c.addi4spn   a5, sp, 640
                  c.li         a4, 31
                  c.srai       a4, 4
                  slti         s8, s0, 1515
                  xori         s7, t3, 789
                  remu         s4, s3, a7
                  c.addi4spn   a5, sp, 880
                  slt          a2, a6, a1
                  c.addi       a6, 1
                  c.srai       a5, 22
                  nop
                  c.slli       s5, 14
                  c.addi       t2, 2
                  slt          s5, s5, s5
                  c.nop
                  c.nop
                  slt          ra, s11, t4
                  c.addi4spn   a2, sp, 336
                  div          t2, s5, s5
                  and          t0, s9, ra
                  c.xor        a5, a4
                  c.addi       ra, 13
                  mul          t1, a6, t0
                  remu         s8, a5, a2
                  c.srli       a0, 20
                  c.addi16sp   sp, -16
                  add          a0, gp, gp
                  mulh         s8, s3, a2
                  nop
                  c.nop
                  c.andi       a2, 26
                  mulhu        a6, a5, a6
                  mulh         t1, s5, a4
                  c.lui        t3, 3
                  c.add        t3, a7
                  or           s5, s2, a6
                  mulhu        t0, s8, ra
                  sra          a0, s9, t1
                  xori         s10, a1, -42
                  c.srli       a2, 12
                  srl          s3, s1, t2
                  ori          a0, tp, -1695
                  xori         sp, s2, -456
                  c.slli       t4, 26
                  c.or         s1, a4
                  mulhu        zero, gp, s1
                  lui          s6, 27664
                  sltu         sp, s6, s4
                  c.srli       a3, 30
                  mul          s1, t3, s4
                  nop
                  sltu         s1, a2, tp
                  slti         t1, t4, 1058
                  auipc        a0, 408319
                  mul          gp, t0, a4
                  nop
                  add          s3, t5, a3
                  andi         t5, s0, 1900
                  slt          s6, gp, a0
                  rem          t4, a7, s7
                  c.and        s0, a1
                  srl          a3, t6, a4
                  xori         sp, a6, -1640
                  c.srli       s1, 7
                  c.addi       t5, 3
                  add          s0, t5, a4
                  remu         s10, t3, s6
                  c.or         s0, a4
                  c.and        s0, a4
                  mulhsu       s10, tp, t0
                  c.xor        s0, s0
                  c.nop
                  c.addi4spn   a0, sp, 432
                  andi         t1, a6, -336
                  lui          a0, 205910
                  c.or         a3, a3
                  and          a6, t2, zero
                  c.andi       a5, 17
                  c.add        s11, t5
                  c.andi       a0, 2
                  slti         zero, t6, 10
                  c.add        s1, s11
                  sll          t3, gp, t1
                  c.addi4spn   a3, sp, 960
                  nop
                  c.addi       s4, 13
                  and          s5, t6, a6
                  c.addi4spn   a4, sp, 736
                  lui          a7, 518166
                  rem          s11, zero, a2
                  nop
                  div          a7, tp, zero
                  nop
                  mul          s5, t6, t0
                  and          t4, a1, sp
                  c.and        s1, a3
                  c.addi       s5, 3
                  rem          s3, s2, t0
                  or           tp, a2, s9
                  c.or         a3, a2
                  addi         zero, s7, 1180
                  ori          s7, zero, -539
                  ori          t0, s0, -1485
                  c.or         a2, a3
                  xor          a4, s7, s4
                  c.srai       a5, 5
                  srl          sp, s8, t1
                  xori         s10, a6, -111
                  slt          a5, t5, t5
                  slli         a5, tp, 21
                  divu         t5, a6, t1
                  sll          a4, tp, sp
                  slti         t1, t1, 1340
                  slt          t1, t4, sp
                  sub          t1, s0, s10
                  auipc        s11, 854319
                  mulhsu       t0, t0, s3
                  srl          a2, s10, a2
                  srl          t4, s9, a3
                  sra          a7, a5, s6
                  nop
                  div          s0, a1, t0
                  sub          a3, zero, t3
                  c.srai       s0, 14
                  andi         t0, tp, -415
                  c.sub        a0, a5
                  div          s10, t1, a5
                  c.addi16sp   sp, -16
                  c.lui        s8, 21
                  xor          t5, t0, s9
                  c.srli       s1, 27
                  mulh         s0, a7, t0
                  c.lui        ra, 18
                  c.li         s11, -1
                  c.sub        a0, a2
                  srai         s4, s0, 15
                  c.srli       s1, 16
                  srli         s8, zero, 0
                  c.sub        s0, a4
                  c.addi4spn   a5, sp, 976
                  c.li         s4, 8
                  c.srai       a4, 19
                  auipc        a2, 336237
                  c.srai       a3, 9
                  c.addi4spn   s1, sp, 608
                  remu         s11, t0, a3
                  slt          s10, s7, a7
                  c.and        a4, a3
                  c.addi       a0, 9
                  c.lui        a5, 25
                  sra          a6, s9, t4
                  mul          a7, t5, s7
                  sub          t3, s10, sp
                  c.add        t0, a2
                  c.xor        a0, a0
                  sltiu        ra, s5, 1461
                  c.or         a5, s1
                  c.add        t6, s3
                  slli         s1, s5, 19
                  c.add        s7, tp
                  andi         s11, a2, 360
                  c.lui        s8, 26
                  remu         t1, s2, tp
                  ori          a5, s9, -775
                  sra          t3, t5, s3
                  auipc        a2, 584880
                  c.add        a0, a5
                  xori         a5, t6, 839
                  c.slli       s3, 16
                  andi         s1, t5, 374
                  slti         t2, sp, 1240
                  c.addi4spn   s0, sp, 656
                  sub          a7, t0, s4
                  sltu         tp, s4, s9
                  ori          s0, gp, -132
                  c.srai       a4, 5
                  sltiu        t4, s1, 671
                  lui          a7, 539437
                  c.addi16sp   sp, 288
                  c.srli       s1, 23
                  c.slli       t6, 19
                  c.nop
                  c.li         s3, -1
                  div          a7, s7, a2
                  srl          zero, s9, s1
                  mul          ra, a1, zero
                  c.or         a4, a3
                  mulhsu       s10, t5, t0
                  slli         a7, s9, 2
                  c.nop
                  c.srli       s1, 21
                  nop
                  c.or         s1, s0
                  slt          tp, s1, a3
                  add          a5, s2, s11
                  add          sp, s3, t0
                  sltu         s11, ra, s4
                  c.slli       s6, 9
                  c.addi4spn   s0, sp, 304
                  divu         t2, s0, s5
                  xor          s7, sp, s2
                  c.or         a3, a3
                  sll          t4, t6, gp
                  auipc        a6, 617139
                  remu         ra, s9, tp
                  xori         zero, gp, 754
                  slti         t5, gp, 91
                  ori          a3, s7, 1416
                  c.srai       s0, 25
                  and          t5, t6, a6
                  sltiu        sp, s4, 136
                  mulh         s11, t3, t2
                  c.andi       a0, -1
                  sltiu        t6, tp, -406
                  c.add        t5, a1
                  or           s7, s10, s11
                  slt          tp, s5, s11
                  sltiu        zero, a1, 1947
                  c.srli       a5, 30
                  rem          ra, s7, a3
                  sltiu        t6, s6, -880
                  mul          a7, a6, s8
                  c.add        sp, s4
                  addi         s11, gp, -1956
                  c.sub        s0, a0
                  andi         s3, t4, 264
                  sub          a3, tp, a1
                  sra          a6, a5, s6
                  c.addi4spn   a5, sp, 880
                  xor          zero, s7, a3
                  c.lui        gp, 3
                  slti         a3, ra, -695
                  srli         a5, a1, 16
                  auipc        s8, 611563
                  srl          gp, s9, s10
                  c.lui        s11, 31
                  slt          ra, t3, ra
                  sltiu        s0, s5, -1202
                  slt          t3, t4, a5
                  lui          a4, 126863
                  sltu         t2, s7, s9
                  andi         s8, s6, -1421
                  mulhsu       gp, s10, s6
                  slti         t0, ra, -1130
                  slli         s3, t6, 17
                  slli         s11, sp, 3
                  divu         a7, s4, a5
                  sltiu        s8, s9, -45
                  rem          gp, t3, a2
                  c.srai       a4, 11
                  mul          zero, s0, tp
                  c.addi       s10, -1
                  srli         s0, s1, 29
                  or           s0, tp, s4
                  remu         s5, s5, s3
                  or           tp, s5, s5
                  div          t1, a0, t2
                  rem          zero, a5, a0
                  or           gp, zero, a1
                  addi         gp, s4, -982
                  slt          t0, zero, t6
                  nop
                  slt          a5, a5, t1
                  sltu         s0, a7, a3
                  divu         zero, gp, t0
                  c.xor        a4, s0
                  c.xor        a2, a4
                  c.or         a0, s1
                  srl          s0, a6, s5
                  c.or         a4, a3
                  srl          t0, s4, s7
                  div          s11, gp, s9
                  srli         a0, t0, 2
                  c.slli       s1, 21
                  c.lui        s1, 31
                  slt          a7, sp, t2
                  nop
                  rem          s0, zero, a6
                  c.addi16sp   sp, 352
                  remu         s0, s11, s7
                  rem          sp, a2, a6
                  c.or         s1, a2
                  srl          a4, t0, ra
                  sub          s11, a7, t0
                  c.slli       a4, 12
                  xori         a0, ra, -1632
                  or           tp, a3, s6
                  slti         a5, a2, 49
                  c.addi4spn   s1, sp, 288
                  divu         s11, a1, t5
                  rem          gp, zero, s11
                  c.li         s11, -1
                  ori          zero, a5, 1208
                  c.srai       a0, 13
                  mulhsu       s8, t5, s6
                  c.addi       a6, -1
                  xor          a0, t0, t2
                  srai         zero, gp, 18
                  lui          a0, 889690
                  ori          s1, s3, 469
                  c.andi       a5, 25
                  c.srai       a4, 16
                  c.andi       a4, -1
                  sltiu        gp, s0, 916
                  c.add        a6, a0
                  slli         s3, s1, 19
                  ori          zero, a3, 28
                  c.addi       t0, -1
                  mulh         s10, s1, s5
                  c.and        a5, a4
                  mul          s3, t3, t1
                  c.srli       a0, 11
                  srl          a6, s1, s5
                  sub          s7, s2, s4
                  slt          a4, a5, a4
                  and          zero, s9, s5
                  c.xor        a2, a4
                  auipc        s1, 332907
                  c.andi       a0, -1
                  lui          a0, 729403
                  slti         t5, sp, -1712
                  c.add        s8, t2
                  mulhu        s5, s2, ra
                  ori          t4, sp, -1128
                  lui          zero, 497895
                  c.add        a4, s4
                  auipc        s5, 677721
                  c.lui        t5, 20
                  srai         s11, t3, 24
                  mul          a2, a7, s11
                  slti         s5, s11, -45
                  srl          s4, a3, s2
                  c.add        s8, t0
                  c.and        a0, a2
                  xor          a5, zero, a6
                  c.andi       s1, -1
                  srai         t6, t6, 24
                  c.and        a2, a0
                  sub          t3, s0, s4
                  c.addi       s7, -1
                  and          t4, s1, t0
                  c.xor        a5, s1
                  andi         a6, ra, 938
                  andi         a5, t3, 726
                  or           a5, s10, s11
                  andi         t1, a1, 716
                  div          s5, t0, s5
                  remu         a7, sp, t2
                  srli         a5, t0, 23
                  slt          s3, s3, a1
                  sra          s11, t6, s4
                  xor          s1, t6, a7
                  c.addi4spn   a0, sp, 784
                  c.and        a5, s1
                  sll          a3, s3, sp
                  mul          a7, t3, a4
                  and          t4, s9, t2
                  sll          a6, a5, s3
                  c.lui        a6, 30
                  nop
                  c.lui        gp, 1
                  rem          s8, s4, a3
                  c.nop
                  mulhsu       tp, s0, s8
                  c.addi16sp   sp, -16
                  andi         t3, a6, 1540
                  xor          ra, t6, a2
                  c.xor        a0, a0
                  lui          t4, 246389
                  auipc        a5, 798351
                  sub          s0, t1, a2
                  ori          s4, a2, -1447
                  div          t6, a4, s5
                  c.and        a3, a0
                  rem          t2, s7, s7
                  lui          s6, 536822
                  mul          gp, gp, s7
                  c.or         a2, s1
                  c.andi       a5, -1
                  sra          s3, zero, a7
                  sub          zero, ra, a2
                  slli         s7, s10, 25
                  add          t4, a7, s5
                  div          a6, a4, tp
                  c.and        a0, a0
                  c.add        s7, t6
                  rem          s3, a3, sp
                  c.andi       a5, -1
                  sll          a3, t4, a2
                  xori         sp, a0, -564
                  auipc        t1, 786589
                  c.and        a2, a3
                  sra          ra, a1, s11
                  div          a5, s7, s1
                  sll          s11, s3, t4
                  add          a5, s5, zero
                  c.slli       s8, 11
                  andi         a5, t0, 1085
                  xor          zero, tp, a7
                  mul          a5, t4, ra
                  c.or         s0, a5
                  sll          s4, s3, t0
                  sra          a0, a3, t1
                  c.nop
                  sltiu        s7, t0, 740
                  c.addi       t2, 19
                  c.xor        a0, s1
                  c.sub        a3, a5
                  andi         a0, s5, 1366
                  c.li         a3, -1
                  c.li         t5, 11
                  c.xor        a5, s0
                  ori          tp, s0, -75
                  sltu         s1, t3, a5
                  c.srli       s1, 31
                  c.addi       a3, 28
                  c.addi4spn   a0, sp, 832
                  c.srai       a5, 11
                  c.and        a5, a5
                  remu         a7, s0, t2
                  c.addi       t2, -1
                  c.andi       s0, -1
                  c.li         t2, 20
                  ori          t0, s4, 1951
                  remu         gp, a3, s7
                  divu         s8, a2, zero
                  c.sub        a2, a1
                  and          t4, a2, a3
                  c.li         s7, 28
                  c.addi       a2, -1
                  slt          gp, t6, t5
                  lui          t2, 205249
                  c.nop
                  nop
                  c.lui        a5, 4
                  slti         s3, s3, -1969
                  lui          a0, 360405
                  nop
                  c.or         s0, a4
                  srl          a6, ra, a2
                  mulhsu       t6, t4, a6
                  c.xor        s0, s0
                  or           tp, s10, s3
                  c.slli       a7, 9
                  sltiu        s11, zero, 54
                  slti         t3, s0, 497
                  c.nop
                  c.srli       s1, 19
                  c.li         t5, 20
                  mulhsu       s11, sp, t5
                  c.slli       s0, 25
                  remu         s8, t1, t4
                  xor          tp, gp, tp
                  xori         s6, s6, -1180
                  xori         a7, s1, 1216
                  add          t0, s3, a7
                  sltu         t0, t6, a0
                  slt          a7, gp, tp
                  or           a4, a1, a4
                  remu         t2, a4, s4
                  mulhsu       a7, t5, s9
                  sra          s7, zero, t4
                  c.mv         t3, sp
                  srli         s3, a7, 6
                  slt          s6, a3, s7
                  c.addi4spn   a5, sp, 992
                  sltiu        s1, t3, 716
                  xor          s11, a1, a3
                  srai         zero, s5, 0
                  c.nop
                  add          a3, gp, s5
                  slti         gp, zero, 1583
                  c.andi       a2, -1
                  sra          s7, a0, tp
                  xori         a3, s5, -1411
                  slt          s10, t3, s10
                  c.srli       a0, 14
                  mulhu        t5, a1, a0
                  srl          t5, s4, s10
                  and          sp, s1, t2
                  sll          t0, a5, t5
                  slt          t3, t6, a3
                  remu         s11, s7, a2
                  and          t3, gp, t1
                  div          s5, zero, s4
                  c.addi16sp   sp, 256
                  mulhu        s8, t1, a4
                  sll          s4, t4, t5
                  sra          s0, s9, t2
                  c.nop
                  sltiu        a4, s11, -884
                  srli         s7, s8, 29
                  c.xor        a5, s1
                  srl          s7, s6, s2
                  mul          s10, s4, a4
                  sltiu        t4, t5, -1578
                  c.and        a4, s1
                  slt          t2, t2, s6
                  c.andi       a0, 10
                  mulhsu       s5, a1, a0
                  mulhu        t2, a5, ra
                  c.slli       s11, 11
                  mulh         t5, t5, gp
                  remu         t0, s7, zero
                  srl          s11, a1, t0
                  c.or         a5, a3
                  mulhsu       t2, t5, t2
                  div          zero, t2, s7
                  sll          a5, s3, s9
                  rem          s10, a1, s10
                  xori         s1, s9, -1789
                  xor          a4, s9, s0
                  c.and        a5, a1
                  mulhu        tp, t1, s3
                  rem          a7, s5, s7
                  mul          gp, t6, t3
                  c.srai       s0, 8
                  c.add        s11, a2
                  srl          t4, s3, s10
                  c.xor        a2, a2
                  ori          s11, s1, 1259
                  c.addi       s7, -1
                  mulh         t1, t2, t3
                  c.sub        a5, a4
                  xor          a3, s4, a6
                  remu         t6, t5, sp
                  xori         ra, s3, 1350
                  andi         s5, a3, -1864
                  rem          sp, a0, t2
                  andi         a0, s7, 1840
                  mulh         s7, zero, s7
                  c.andi       a5, -1
                  lui          ra, 201774
                  addi         t1, a2, -1567
                  c.slli       sp, 24
                  addi         s10, a1, 838
                  mul          s8, s1, t2
                  sltiu        ra, a7, 1817
                  or           t2, s0, a2
                  sra          t5, a6, a7
                  slli         sp, t1, 1
                  c.mv         s3, a1
                  slli         s1, tp, 9
                  c.xor        a5, a4
                  c.sub        a3, a3
                  c.andi       a5, 15
                  c.srli       a5, 20
                  or           a0, s10, s1
                  andi         s4, ra, 816
                  c.srli       a5, 11
                  slti         tp, t4, -945
                  mulhsu       t2, s3, s9
                  slt          a0, s8, t0
                  c.nop
                  addi         t0, s8, -1037
                  xor          t3, ra, tp
                  div          s0, ra, a2
                  or           a2, s10, s2
                  c.addi16sp   sp, -16
                  and          t4, s6, t3
                  div          s6, t6, a4
                  c.mv         s0, t0
                  slli         s11, zero, 25
                  srli         a2, s8, 31
                  remu         s7, s3, s11
                  nop
                  div          s7, s1, s3
                  c.andi       a0, 7
                  srl          a0, t6, s0
                  mulh         a5, t1, s10
                  slti         t4, s2, 1923
                  slli         a3, a4, 7
                  xor          a7, a2, zero
                  slti         s0, gp, 113
                  c.nop
                  remu         s8, gp, t0
                  c.mv         s7, a7
                  c.srli       a0, 5
                  slt          zero, s6, s9
                  xor          zero, a5, t1
                  sltiu        sp, t4, -1133
                  add          t3, gp, s6
                  c.mv         tp, a7
                  c.li         t4, -1
                  lui          s0, 465827
                  c.addi4spn   s1, sp, 688
                  andi         s3, t2, 1072
                  nop
                  c.sub        s0, a2
                  srli         a2, a7, 3
                  sltu         a3, s3, s1
                  sra          s5, s0, s10
                  nop
                  c.srli       s0, 5
                  ori          s4, s10, 650
                  xor          a7, t3, s6
                  add          t6, s10, t3
                  c.xor        a3, a5
                  divu         s6, zero, a1
                  sltiu        t1, s6, -746
                  auipc        zero, 308935
                  mulh         s0, a7, s0
                  c.li         t6, 5
                  mulhsu       t4, t5, gp
                  andi         t3, a5, -622
                  c.andi       a4, -1
                  c.addi16sp   sp, -16
                  xori         tp, t1, -216
                  lui          t1, 267923
                  sltu         s8, gp, a5
                  c.xor        s1, a1
                  ori          s4, t2, 853
                  c.addi16sp   sp, -16
                  c.slli       s8, 4
                  xori         t2, s0, -1978
                  mulhsu       s4, a5, s3
                  lui          t3, 394328
                  c.add        tp, a2
                  sltiu        s3, s5, -445
                  c.addi4spn   s0, sp, 336
                  and          t1, s10, t5
                  c.nop
                  srl          a5, zero, s3
                  sub          s4, s10, s3
                  c.addi4spn   a3, sp, 880
                  c.addi4spn   a0, sp, 864
                  c.andi       a0, 2
                  c.sub        s1, a5
                  c.nop
                  add          t5, s1, gp
                  nop
                  mulhsu       t5, t4, s7
                  c.andi       a0, -1
                  divu         t2, s11, s7
                  remu         a4, s1, gp
                  c.and        a5, a4
                  c.xor        a5, s1
                  nop
                  ori          s3, sp, -273
                  lui          s10, 574261
                  sub          s7, a2, s10
                  ori          a5, a1, 1466
                  sra          gp, a2, t0
                  slt          ra, a6, ra
                  c.addi4spn   s1, sp, 784
                  srai         s8, t2, 18
                  add          t2, s4, a1
                  sltu         s8, a5, s4
                  slt          s7, t4, s4
                  slt          s7, s2, a0
                  xor          a3, sp, t5
                  sltiu        s5, a2, -859
                  slti         t1, t0, -457
                  xori         a2, t0, 1964
                  sub          sp, s3, a3
                  c.addi4spn   a5, sp, 752
                  c.srai       a2, 21
                  ori          ra, s0, -191
                  c.srli       a3, 26
                  sra          s7, a3, t5
                  c.andi       a3, 22
                  sltu         gp, t3, s5
                  ori          s11, t3, 330
                  srai         s0, ra, 18
                  nop
                  mulhsu       t1, s1, s4
                  mulhu        t4, tp, s9
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  c.xor        s1, a3
                  mul          a4, a5, t4
                  lui          gp, 350456
                  ori          s10, s6, 636
                  rem          s4, tp, s5
                  rem          t2, s11, s4
                  c.mv         s3, t3
                  c.nop
                  srli         t0, s9, 11
                  sra          s0, t6, s10
                  c.lui        a7, 31
                  and          t5, s11, s10
                  c.addi16sp   sp, -16
                  c.srli       s1, 16
                  c.addi       a3, 29
                  divu         s0, ra, a5
                  c.lui        s10, 26
                  srl          sp, s0, t1
                  c.lui        ra, 29
                  auipc        a4, 292820
                  c.addi       s0, -1
                  or           a7, s1, s1
                  c.lui        s10, 16
                  sltiu        gp, s8, -90
                  mulh         zero, s6, a2
                  srl          s11, s7, s3
                  slli         ra, tp, 16
                  mulhu        s5, a0, t3
                  sll          a0, s5, t3
                  slti         t2, t5, -58
                  xor          a6, a0, t5
                  c.or         a0, a4
                  mulhu        tp, s8, a6
                  ori          t6, zero, -1971
                  c.lui        s10, 6
                  sll          a7, a1, a6
                  srli         s1, t6, 23
                  srai         t4, a7, 29
                  and          s10, t0, a4
                  srli         gp, a2, 6
                  auipc        t6, 729412
                  ori          t4, s9, -1803
                  c.addi       t2, 29
                  mulh         t0, a2, a6
                  xor          a0, a0, s5
                  c.or         s0, a0
                  c.sub        a2, a1
                  div          s0, gp, s8
                  addi         s1, a3, 358
                  auipc        t2, 62663
                  sltu         t6, s7, t4
                  divu         t2, a0, a6
                  mul          t3, zero, a3
                  divu         s11, t4, s6
                  add          t5, t1, t3
                  addi         s11, gp, -77
                  xor          s3, zero, s7
                  divu         a5, a5, sp
                  mulhu        sp, s0, s4
                  srl          ra, tp, a3
                  xor          tp, a3, a3
                  c.li         tp, 18
                  auipc        s10, 65655
                  mulhsu       t2, t0, s7
                  mulhsu       s3, s9, t0
                  remu         s5, zero, sp
                  c.xor        s1, a2
                  xor          a4, a6, zero
                  sltu         a5, s8, s2
                  remu         a0, s8, t1
                  mul          t1, a6, a7
                  c.addi16sp   sp, 480
                  or           s3, ra, s9
                  auipc        a7, 904549
                  add          a6, t6, s8
                  c.addi4spn   s1, sp, 720
                  c.srai       a2, 7
                  andi         s1, s7, -1195
                  and          s7, a2, a2
                  div          s11, s0, a4
                  sra          s1, s4, s4
                  c.addi4spn   a3, sp, 304
                  ori          t2, a0, 748
                  mulhsu       t2, t3, zero
                  mulhsu       a4, a0, a0
                  sra          s4, s4, a5
                  c.slli       tp, 31
                  srli         t4, a1, 17
                  c.lui        t4, 15
                  c.addi       t1, -1
                  remu         s1, tp, t2
                  xori         s7, gp, -105
                  c.or         s1, a2
                  xor          zero, t0, t5
                  srli         s7, a0, 20
                  c.srai       s1, 26
                  ori          s6, gp, -1365
                  nop
                  sll          a6, s4, ra
                  sltu         a2, zero, gp
                  c.add        t3, s7
                  ori          t1, t5, -622
                  slt          a3, s5, t5
                  mulhsu       a2, ra, t6
                  and          a6, s10, a0
                  divu         t6, t5, a1
                  mulh         s1, a3, s0
                  divu         t1, s4, zero
                  c.addi       sp, -1
                  mulhsu       sp, s4, tp
                  lui          t3, 558472
                  c.sub        a0, a2
                  sra          t6, tp, a3
                  srli         t6, s11, 13
                  rem          zero, a7, t2
                  mul          a3, s11, a3
                  c.li         t3, 3
                  addi         t1, gp, -927
                  add          zero, s5, s1
                  c.sub        s1, a4
                  c.slli       t2, 25
                  ori          s7, gp, -1642
                  c.lui        a7, 21
                  c.andi       a5, -1
                  srl          ra, a1, zero
                  sltiu        s5, sp, 316
                  c.add        s1, s4
                  c.or         s0, a4
                  or           a7, s10, s10
                  srai         s7, tp, 13
                  slt          a3, t2, a1
                  xori         s6, a0, 665
                  srl          s0, s11, zero
                  lui          s7, 866168
                  nop
                  c.li         a0, 24
                  mulh         a5, gp, s1
                  c.or         a5, a0
                  rem          t5, s7, sp
                  xori         tp, s9, -1502
                  c.and        s0, a4
                  mulhsu       a5, ra, s6
                  sra          s6, s7, s0
                  c.add        s8, a3
                  c.sub        a2, a4
                  slli         t5, t1, 12
                  div          a4, s11, s0
                  remu         t2, t6, s5
                  c.addi4spn   a3, sp, 416
                  xor          zero, s0, s8
                  nop
                  mulhsu       s1, t2, t1
                  and          t2, gp, t3
                  c.srli       a5, 9
                  lui          sp, 391089
                  mulhsu       a3, t3, zero
                  sub          s0, a1, a3
                  mulh         s8, a7, s5
                  c.and        a2, a5
                  andi         s11, s8, 907
                  c.addi       t3, 26
                  and          s11, t3, a2
                  and          a2, s9, t1
                  andi         a7, a6, -758
                  srli         s11, s3, 15
                  or           a5, s4, s4
                  c.andi       a5, 11
                  auipc        s0, 252889
                  c.addi       t0, 29
                  c.add        t1, s5
                  mul          s11, s11, t1
                  sll          a5, t4, s9
                  c.li         ra, 24
                  addi         s7, t6, -1728
                  nop
                  xor          a7, s5, s7
                  remu         t6, t6, a5
                  and          a0, a4, a1
                  remu         a4, t1, s4
                  xor          s11, a7, a7
                  c.add        a7, s11
                  slti         s7, s7, 1652
                  sltu         gp, tp, s11
                  andi         s11, zero, -1613
                  c.xor        a5, a1
                  remu         ra, s11, s0
                  slti         s3, gp, 706
                  c.li         gp, -1
                  c.mv         t5, sp
                  add          tp, t0, s3
                  sltiu        t3, s5, 1298
                  c.addi       a0, 28
                  addi         tp, ra, 642
                  or           t6, s7, zero
                  c.li         s11, 20
                  c.add        s6, s3
                  slli         zero, s10, 10
                  c.nop
                  c.xor        a5, a1
                  c.mv         t4, t5
                  mulh         ra, tp, a6
                  c.mv         s8, a6
                  c.and        a3, a0
                  c.mv         ra, t2
                  slli         t6, s8, 0
                  divu         t0, s5, a6
                  slti         t0, sp, -1011
                  ori          s5, t3, 154
                  sra          sp, gp, s2
                  slli         s11, a6, 9
                  c.srli       s0, 23
                  c.or         a3, a4
                  sra          a6, a2, s4
                  remu         s1, t1, a1
                  andi         s7, s5, 706
                  lui          t2, 335282
                  c.addi16sp   sp, 464
                  lui          gp, 604867
                  mulhu        s11, s0, s8
                  c.andi       a3, 30
                  rem          ra, a5, a7
                  xor          a2, s11, s6
                  nop
                  remu         a0, s8, s10
                  c.andi       a0, 11
                  mulhsu       a4, a4, a7
                  ori          t6, a6, 976
                  c.andi       a0, -1
                  add          s4, s0, s9
                  c.mv         a0, s0
                  c.addi16sp   sp, 144
                  sltu         t3, a6, a2
                  c.xor        a2, a3
                  nop
                  sra          s10, t0, s11
                  and          a5, s6, t3
                  sltu         a2, s7, t3
                  add          a6, ra, t1
                  mulh         a6, a3, tp
                  c.xor        s0, a2
                  mulh         ra, a5, t1
                  mulh         s5, a0, gp
                  rem          s3, a6, s5
                  mulhu        s1, s2, gp
                  xor          s0, s5, a2
                  c.li         s0, -1
                  slli         t0, a2, 7
                  add          s5, a5, t5
                  auipc        s6, 290646
                  mulh         s1, t3, t2
                  rem          t3, a1, t1
                  slli         ra, s5, 10
                  div          a7, t2, a3
                  slt          t3, s3, a6
                  c.or         s0, a4
                  remu         zero, t6, s8
                  c.sub        a3, a1
                  c.srli       a0, 27
                  rem          a7, tp, sp
                  rem          sp, a0, a2
                  xor          a7, t2, s7
                  xori         s5, a7, -1417
                  sltu         a4, a4, ra
                  c.sub        a3, a4
                  srl          t0, zero, ra
                  c.or         a0, s0
                  srl          t4, a3, s5
                  addi         s3, a3, -555
                  divu         a4, s4, gp
                  srli         a0, s7, 11
                  rem          a6, ra, s5
                  srli         t2, gp, 14
                  remu         s8, s2, zero
                  ori          s7, s3, -725
                  c.srli       a5, 22
                  c.sub        a3, s0
                  c.srai       a3, 18
                  ori          s0, a7, -437
                  sltiu        a5, zero, 181
                  c.addi4spn   a3, sp, 464
                  c.srli       a5, 21
                  ori          s3, zero, 1913
                  srli         t6, a1, 5
                  lui          s1, 381088
                  nop
                  c.andi       s1, -1
                  slti         t5, s1, -212
                  c.and        s1, a2
                  divu         a6, zero, s1
                  c.xor        a3, a5
                  remu         a2, a3, ra
                  c.addi4spn   a4, sp, 400
                  auipc        s3, 471669
                  rem          s6, tp, s3
                  srai         sp, a2, 10
                  c.andi       s0, -1
                  srai         a5, s9, 18
                  c.srli       a5, 13
                  srai         s6, gp, 29
                  sltu         s4, t3, s3
                  c.mv         a4, a5
                  slti         s7, t6, 1268
                  divu         a6, t0, s5
                  c.add        s1, t1
                  mulhu        t3, s11, a3
                  lui          sp, 738739
                  rem          ra, s6, zero
                  c.add        t2, s7
                  c.mv         sp, s4
                  sltu         gp, s4, s0
                  c.add        s0, a0
                  c.addi4spn   a2, sp, 832
                  c.addi4spn   a0, sp, 912
                  andi         a2, a4, 134
                  sll          s5, t2, s0
                  andi         zero, s10, -1138
                  addi         s7, t0, 787
                  addi         a0, t2, 155
                  srli         t5, tp, 30
                  xori         t0, a0, 818
                  c.addi16sp   sp, 16
                  mulhu        t3, s8, t1
                  lui          t2, 483330
                  andi         t6, a3, 795
                  sra          a5, s8, s1
                  and          t5, s11, a7
                  c.addi4spn   a2, sp, 384
                  srli         a0, s6, 8
                  andi         a5, s11, 573
                  c.add        t2, s2
                  mul          t4, tp, a5
                  addi         t3, s1, -1769
                  slt          sp, a4, s1
                  sll          s6, a3, t4
                  or           s0, a4, s0
                  xori         s10, s10, -95
                  nop
                  srai         a6, s8, 29
                  mulhsu       s0, s11, t1
                  divu         a3, s1, a5
                  sub          t3, a5, gp
                  andi         a2, t3, 1173
                  srl          t0, s2, ra
                  slt          a6, t2, s5
                  c.addi16sp   sp, 240
                  c.addi4spn   s1, sp, 704
                  xor          s5, s7, t5
                  mulh         t0, gp, a1
                  remu         t2, t6, a3
                  srl          s8, s6, s0
                  c.slli       t2, 30
                  mul          s4, s10, a2
                  c.andi       a5, -1
                  c.or         a0, a3
                  c.addi       s5, -1
                  andi         a3, a6, 566
                  c.addi16sp   sp, 368
                  c.srai       a2, 12
                  sltu         a0, a7, a6
                  c.mv         a2, a2
                  sra          t2, tp, a4
                  c.lui        t6, 21
                  mul          t5, s8, a0
                  c.add        a3, s2
                  sra          a2, a7, t0
                  c.addi4spn   a0, sp, 896
                  div          a4, s3, t2
                  c.nop
                  sll          s10, tp, tp
                  c.nop
                  mulh         t3, s8, t1
                  xori         s6, t6, -1505
                  c.or         a0, a1
                  c.xor        a2, a3
                  srai         sp, s9, 30
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 256
                  and          s1, s3, t3
                  nop
                  slli         sp, a2, 26
                  c.sub        a4, a0
                  sll          s5, s9, a0
                  xori         tp, s7, -1613
                  c.xor        s0, s0
                  c.addi4spn   a2, sp, 208
                  c.addi       s7, 28
                  sll          a7, a0, tp
                  c.or         a2, s1
                  c.addi       a0, 28
                  sub          t1, a2, gp
                  sltiu        a7, s8, -651
                  c.srai       s1, 19
                  c.srli       a5, 26
                  and          s0, s3, t4
                  c.lui        t0, 23
                  srl          s1, t4, s2
                  srli         s8, s3, 11
                  c.slli       s7, 2
                  c.lui        s10, 5
                  c.sub        a3, a3
                  slti         s3, s0, 1298
                  c.nop
                  c.lui        s4, 30
                  sltiu        a3, s2, -1318
                  slt          s6, s3, s0
                  c.addi       s10, -1
                  lui          tp, 663994
                  srl          t1, s8, s5
                  xori         s1, s4, 421
                  sll          s11, t2, t1
                  srai         s1, s5, 29
                  slt          s5, s2, a3
                  div          s1, a6, t4
                  c.or         a3, a4
                  sub          s11, a2, t1
                  c.andi       s0, -1
                  nop
                  or           a2, t0, s6
                  sltu         s3, s4, a2
                  sub          s3, sp, a1
                  c.add        s0, s4
                  mulhu        a6, gp, s10
                  ori          sp, a5, -281
                  srl          t3, s9, a1
                  andi         s5, a2, 954
                  c.or         a2, a2
                  or           s6, s10, s6
                  xori         a3, t6, 550
                  or           t5, s5, t6
                  sltu         s11, tp, t4
                  slti         t2, zero, -33
                  c.srli       a2, 28
                  c.sub        a5, a2
                  c.andi       a3, -1
                  xor          tp, s2, t3
                  remu         t1, t3, t0
                  and          ra, s10, t1
                  rem          s5, a0, sp
                  srli         s1, tp, 12
                  nop
                  c.srli       a0, 28
                  div          t5, s8, sp
                  remu         t4, t0, a7
                  and          s4, s0, s10
                  c.or         a5, s1
                  sra          s6, a5, t1
                  slt          t3, a2, s1
                  mulhu        s11, gp, s10
                  c.addi       gp, 4
                  sub          s3, gp, s2
                  sra          s7, a7, a2
                  sltiu        a3, a4, 1681
                  nop
                  c.srai       a3, 11
                  c.addi       s11, -1
                  slli         a7, t5, 2
                  c.and        s1, a5
                  sltiu        t1, s9, 660
                  c.nop
                  slt          a6, a6, a7
                  c.andi       a2, 26
                  ori          t6, t6, -726
                  mulhu        s0, a7, t0
                  mulhu        s0, a7, zero
                  mulhu        a6, t3, s11
                  sll          s4, a2, t0
                  add          s3, s5, a5
                  div          s5, s11, s7
                  mulhu        s10, t2, t5
                  xor          t2, sp, a1
                  sltiu        gp, t5, -268
                  sll          s8, a0, s0
                  srai         a4, t6, 19
                  c.nop
                  c.srli       a5, 17
                  div          s4, t6, a1
                  addi         s8, s7, 1609
                  add          sp, t5, a6
                  c.srai       s1, 21
                  auipc        a0, 870437
                  c.and        s0, a3
                  andi         a4, t6, -1066
                  and          s11, s4, s6
                  c.lui        t5, 14
                  c.sub        s1, a5
                  c.sub        s1, a0
                  divu         t3, s10, s7
                  c.addi16sp   sp, -16
                  rem          t6, sp, a0
                  sltiu        gp, a0, 893
                  sra          s3, a3, a6
                  c.add        t3, s8
                  andi         a3, s11, -380
                  c.srli       s0, 9
                  mul          s10, a4, a0
                  srai         s0, a4, 28
                  slt          s7, a1, t1
                  remu         ra, a6, t0
                  srli         ra, tp, 3
                  c.add        a0, t1
                  remu         ra, gp, sp
                  slt          a7, tp, s10
                  c.srai       a3, 13
                  sub          s7, a3, s9
                  c.sub        a3, a2
                  add          s4, t0, s9
                  c.nop
                  sltiu        s1, t5, 1686
                  slli         t6, s1, 19
                  and          s10, t1, a1
                  c.sub        s1, a5
                  c.addi       a6, 10
                  c.lui        a6, 14
                  c.srai       a5, 28
                  sra          a7, a0, gp
                  and          a2, s3, a3
                  div          s4, s7, a7
                  auipc        t1, 279316
                  mulh         s3, s11, s5
                  mulhu        t2, ra, s2
                  mulhsu       t4, a5, t5
                  mulhu        s3, s8, ra
                  sll          t4, s5, s8
                  c.xor        s1, a0
                  mulhu        sp, gp, s7
                  c.or         s1, a3
                  divu         a3, zero, s3
                  mulhu        tp, a6, a5
                  c.li         a5, -1
                  mulhsu       s0, s0, s9
                  c.mv         a2, s11
                  c.and        s1, a2
                  c.addi4spn   a2, sp, 480
                  slt          a4, t6, t5
                  or           t5, a2, a3
                  c.and        a4, a5
                  sltiu        a2, t0, 1904
                  mulh         s6, t0, t4
                  slti         t5, a2, 644
                  c.xor        a4, s1
                  c.and        s0, a3
                  srl          a3, t1, t5
                  rem          s1, s3, sp
                  sll          s1, s6, zero
                  mul          zero, a3, a4
                  c.lui        s4, 13
                  c.add        s4, s3
                  sltiu        s7, t6, -136
                  nop
                  sltiu        t3, s3, -753
                  srai         t0, t4, 27
                  addi         s1, a6, 1816
                  c.addi4spn   a4, sp, 848
                  c.addi       a0, -1
                  c.add        a0, t2
                  c.or         s0, a4
                  c.andi       s1, -1
                  remu         s1, s4, s2
                  xor          t1, zero, a6
                  c.slli       a5, 26
                  c.andi       s0, -1
                  c.srai       s0, 21
                  addi         s11, s2, 855
                  c.add        ra, s6
                  xori         s5, s0, -1062
                  c.slli       t3, 13
                  or           a5, s7, s11
                  c.and        a0, a5
                  c.slli       ra, 17
                  ori          a5, ra, -566
                  andi         a0, a0, -1579
                  c.and        a4, a1
                  c.andi       a5, -1
                  mulhsu       t4, s11, ra
                  lui          s10, 996696
                  c.srai       a2, 23
                  sub          t1, a6, s8
                  mulhsu       tp, s5, gp
                  c.add        s11, s1
                  srl          t4, s8, s2
                  c.mv         sp, t5
                  srai         s0, s9, 1
                  c.srai       s0, 22
                  c.xor        a4, a2
                  ori          t4, a0, 1125
                  addi         t3, t0, -961
                  srai         sp, gp, 31
                  div          s5, s9, a5
                  div          s7, t3, t4
                  remu         s8, a3, t0
                  ori          s0, s2, 1010
                  xor          a2, gp, a1
                  slli         a4, s6, 30
                  c.addi4spn   a4, sp, 176
                  c.nop
                  lui          s6, 404269
                  slli         t4, a0, 4
                  mulh         t4, s6, s9
                  sltu         tp, a7, sp
                  sub          a6, s1, t3
                  div          s1, zero, sp
                  c.or         a4, s0
                  c.srli       a3, 21
                  c.srli       a2, 7
                  slli         s11, ra, 10
                  c.and        a2, a1
                  c.nop
                  c.nop
                  c.srai       a5, 21
                  slt          s4, a0, zero
                  sltiu        s3, s5, 1921
                  add          ra, s6, t6
                  div          ra, s5, a5
                  nop
                  c.slli       a4, 23
                  srli         ra, s7, 9
                  c.xor        a4, a4
                  sll          s0, s3, a1
                  c.li         ra, -1
                  divu         s6, t1, a4
                  c.add        sp, a5
                  add          t4, s1, s11
                  srl          a0, s7, tp
                  srli         s5, s5, 22
                  c.nop
                  lui          t4, 596460
                  sub          zero, a5, ra
                  c.mv         s11, gp
                  sll          a4, s9, zero
                  xori         a0, s2, 1024
                  srli         a4, gp, 9
                  c.slli       gp, 7
                  xor          t6, a5, tp
                  sltiu        t6, s8, -132
                  auipc        t4, 571296
                  sltiu        s3, s11, 701
                  c.xor        s1, a0
                  xor          s11, sp, a7
                  sll          t6, s3, t3
                  slli         a2, ra, 25
                  srai         t0, sp, 22
                  slt          s8, t3, s5
                  sltu         s10, a7, s11
                  c.srai       s0, 14
                  rem          a3, ra, a6
                  c.and        a2, a3
                  rem          gp, t2, t3
                  c.mv         a4, s8
                  xor          a3, tp, a5
                  nop
                  c.sub        a3, a5
                  c.srai       a4, 27
                  mulhsu       s4, zero, a7
                  c.slli       tp, 13
                  slli         t5, s5, 14
                  mulhsu       s10, t2, a3
                  srai         a0, s1, 24
                  lui          a4, 717229
                  sra          s1, s9, t3
                  c.xor        a4, a2
                  nop
                  c.or         a0, a2
                  rem          a5, tp, a5
                  xori         a5, tp, -226
                  add          t6, sp, tp
                  xor          a0, s9, a2
                  lui          a0, 715269
                  sltiu        s7, gp, 670
                  srli         a2, t2, 3
                  srli         t6, ra, 19
                  slt          t3, s4, a2
                  srl          a7, a6, s1
                  c.mv         s8, tp
                  lui          s7, 696466
                  c.xor        a4, a3
                  mul          s0, s6, zero
                  sub          a2, s5, t3
                  mulhu        s7, a6, t3
                  addi         a7, a7, 188
                  c.addi16sp   sp, -16
                  addi         gp, s1, 1999
                  and          s3, ra, s6
                  ori          s3, s8, 2010
                  c.srai       a4, 7
                  c.li         s8, 25
                  c.addi4spn   a0, sp, 480
                  sltiu        t5, s9, -20
                  and          a2, a4, a3
                  ori          a6, t6, 284
                  c.mv         a6, s3
                  xor          a7, zero, s11
                  c.addi       s7, 5
                  c.or         a3, a5
                  slti         a3, t3, -1543
                  xori         s3, a1, -1656
                  srli         s1, a0, 16
                  srli         s7, a0, 20
                  c.andi       a3, -1
                  divu         ra, s0, s9
                  sra          s1, t1, s8
                  mulhu        s8, tp, s10
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
mmode_intr_vector_1:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_2:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_3:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_4:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_5:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_6:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_7:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_8:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_9:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_10:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_11:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_12:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_13:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_14:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_15:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

.align           4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15
                  .option rvc;

mmode_exception_handler:
                  addi x18, x18, -4
                  sw  x11, (x18)
                  add x11, x18, zero
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x18, x11, zero
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x29, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x29, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x29, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x29, x4, ecall_handler
                  li x4, 0x1
                  beq x29, x4, instr_fault_handler
                  li x4, 0x5
                  beq x29, x4, load_fault_handler
                  li x4, 0x7
                  beq x29, x4, store_fault_handler
                  li x4, 0xc
                  beq x29, x4, pt_fault_handler
                  li x4, 0xd
                  beq x29, x4, pt_fault_handler
                  li x4, 0xf
                  beq x29, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x11, x18, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x18, x11, zero
                  lw  x11, (x18)
                  addi x18, x18, 4
                  mret

load_fault_handler:
                  add x11, x18, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x18, x11, zero
                  lw  x11, (x18)
                  addi x18, x18, 4
                  mret

store_fault_handler:
                  add x11, x18, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x18, x11, zero
                  lw  x11, (x18)
                  addi x18, x18, 4
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x11, x18, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x18, x11, zero
                  lw  x11, (x18)
                  addi x18, x18, 4
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x11, x18, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x18, x11, zero
                  lw  x11, (x18)
                  addi x18, x18, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x11, x18, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  add x18, x11, zero
                  lw  x11, (x18)
                  addi x18, x18, 4
                  mret;

kernel_instr_end: nop
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 3999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
