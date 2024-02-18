.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x9, 0x40001105
                  csrw 0x301, x9
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 1
                  csrw 0x305, x9 # MTVEC

mepc_setup:       
                  la x9, init
                  csrw 0x341, x9

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x9, 0x1800
                  csrw 0x300, x9 # MSTATUS
                  li x9, 0x0
                  csrw 0x304, x9 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xfadf4df5
                  li x2, 0x80000000
                  li x3, 0xfcafe4b9
                  li x4, 0x0
                  li x5, 0xfa7d2274
                  li x6, 0xf3a1f7c7
                  li x7, 0x9
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0xc
                  li x12, 0x7
                  li x13, 0x0
                  li x14, 0x7
                  li x15, 0xfea345dd
                  li x17, 0x0
                  li x18, 0x8049d410
                  li x19, 0x6
                  li x20, 0xa830ec60
                  li x21, 0xfda5503b
                  li x22, 0x0
                  li x23, 0x9a677844
                  li x24, 0xd
                  li x25, 0x0
                  li x26, 0x7
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x3535e97a
                  li x30, 0xf94732f
                  li x31, 0xf479c528
                  la x16, user_stack_end
main:             xori         t2, a1, -454
                  c.add        t1, a4
                  srli         t3, a4, 25
                  c.or         s1, a3
                  srai         s8, a1, 18
                  c.mv         a5, s8
                  c.srli       a1, 7
                  remu         s10, s1, gp
                  c.nop
                  slli         tp, s8, 19
                  mul          a5, t2, t5
                  c.nop
                  mulhu        a1, t2, gp
                  c.srli       a3, 3
                  slti         t4, t0, -413
                  sub          zero, tp, a2
                  c.lui        a2, 15
                  c.srli       a3, 8
                  c.nop
                  rem          zero, a6, a6
                  addi         zero, s1, 467
                  ori          zero, a3, 887
                  c.andi       a5, -1
                  sltiu        t0, s8, -907
                  or           t2, a5, t4
                  sltu         s1, ra, a1
                  sltiu        t6, s8, -644
                  slt          t0, a7, s10
                  c.and        a3, a2
                  c.addi       s8, -1
                  c.slli       t2, 11
                  sltiu        a5, t4, -1006
                  c.li         a0, 11
                  sltu         s6, s6, s10
                  slt          gp, a2, s3
                  slti         a2, gp, 664
                  srl          zero, t1, zero
                  sra          t5, s5, s8
                  divu         s8, s4, s1
                  addi         s10, a7, 1161
                  divu         s6, t2, ra
                  mulh         s2, t0, a2
                  sltu         s8, s4, s2
                  slli         t3, s9, 6
                  slt          s2, t5, s2
                  mul          s10, s7, s9
                  mulh         s1, a1, a4
                  mulh         a2, s9, t4
                  add          s8, t5, t2
                  c.add        s8, t1
                  and          t4, s4, t3
                  c.li         t2, 12
                  add          t4, s4, a4
                  div          s9, a6, gp
                  xor          a5, a3, a5
                  srai         a5, s2, 10
                  c.add        tp, s4
                  c.addi       a1, -1
                  sltu         t2, a5, s8
                  mul          a1, a7, a5
                  c.mv         s9, t2
                  and          s4, s6, tp
                  c.lui        a2, 13
                  lui          a1, 634256
                  ori          a7, s4, 896
                  remu         s5, a4, s10
                  sub          s8, s1, t4
                  sltu         s8, t5, s11
                  add          a7, s7, s11
                  c.nop
                  sltu         s11, t6, a3
                  srli         a2, sp, 0
                  srli         a7, sp, 2
                  slli         zero, t5, 19
                  divu         s8, t5, gp
                  c.add        s9, t6
                  xor          ra, sp, s0
                  c.li         t5, -1
                  srai         s10, s7, 16
                  remu         zero, s8, t3
                  c.or         a0, a3
                  ori          s9, t4, -276
                  c.srai       a5, 25
                  remu         tp, a5, sp
                  xori         a7, zero, -1548
                  slt          ra, s6, s6
                  mulhsu       tp, s5, s11
                  remu         gp, s10, s8
                  sltu         t4, t6, gp
                  rem          a0, ra, s10
                  and          a4, t5, t0
                  slli         s6, t0, 27
                  addi         a5, s9, -859
                  c.lui        s4, 18
                  slt          s10, ra, a7
                  add          s3, s4, s0
                  c.srli       a0, 10
                  c.slli       ra, 1
                  c.srli       a2, 29
                  sra          s5, s1, t5
                  div          a3, s8, s2
                  sra          a3, s8, s8
                  slt          t6, t3, a2
                  c.nop
                  sltu         a4, a1, t2
                  remu         a5, s11, tp
                  or           ra, s11, s9
                  c.slli       t6, 12
                  c.mv         s3, a4
                  addi         s11, t5, 524
                  c.mv         s5, tp
                  sll          s4, t3, t2
                  c.and        a2, a4
                  c.nop
                  ori          s5, s3, 1973
                  slt          s1, s7, a2
                  or           s2, a0, t1
                  c.lui        tp, 27
                  add          a4, s2, t3
                  mulh         t3, sp, sp
                  mul          s11, a6, a3
                  c.andi       s1, -1
                  c.srai       s1, 12
                  mulh         a4, s7, a4
                  c.sub        s1, s1
                  divu         a7, s7, a4
                  srl          a0, s4, a0
                  sra          t5, gp, t1
                  sltiu        s2, s6, 314
                  addi         a3, ra, -448
                  lui          s8, 829075
                  divu         s7, a6, a2
                  c.mv         s2, s2
                  sltu         s11, a7, s5
                  srli         s5, s6, 19
                  xor          a2, s0, zero
                  c.andi       a3, 17
                  or           s11, t1, s0
                  c.andi       a2, 14
                  sltiu        s8, a7, -155
                  srli         a1, ra, 30
                  sra          s1, sp, a0
                  c.xor        a5, s1
                  ori          ra, ra, -1270
                  c.xor        a3, a1
                  or           a0, t4, a5
                  xor          t4, t5, s5
                  c.nop
                  c.sub        a1, a5
                  srli         a0, s4, 10
                  sll          t3, s0, t0
                  c.srli       a1, 16
                  lui          t4, 836331
                  or           s10, s2, sp
                  mul          s7, a1, a7
                  divu         t0, s9, t4
                  c.addi       t1, -1
                  c.and        a0, a5
                  sub          a0, s1, a2
                  c.lui        s10, 24
                  c.srai       a3, 21
                  c.or         a5, a3
                  addi         s4, s2, -570
                  c.and        a4, a3
                  mulh         s2, s2, t5
                  div          ra, a1, t4
                  slti         t3, a1, 109
                  ori          t3, s4, -186
                  srl          a2, t1, a2
                  c.addi       a2, 27
                  andi         a1, s11, 121
                  slli         tp, t4, 1
                  slt          s11, t6, s3
                  nop
                  or           a1, a5, s9
                  mulhsu       a0, s4, t2
                  xori         t5, t2, 1271
                  sll          s3, a2, s8
                  mulhu        t1, a6, t4
                  c.and        a3, s1
                  sll          s4, t0, t2
                  c.mv         s8, s10
                  c.add        t1, sp
                  mulh         s5, s10, zero
                  sltiu        a1, s6, -1239
                  c.slli       s6, 8
                  c.lui        s2, 11
                  c.sub        a4, a4
                  andi         t5, s1, 1390
                  slli         gp, a3, 16
                  c.nop
                  c.nop
                  mul          s11, s7, t6
                  c.srli       a4, 8
                  slt          ra, s9, a5
                  slti         a2, a7, -1153
                  c.lui        ra, 2
                  slli         a5, t0, 31
                  c.mv         gp, s8
                  c.srli       a5, 12
                  auipc        t2, 806180
                  divu         t5, s0, a5
                  slt          tp, s9, a4
                  c.or         a2, a4
                  srl          s8, s5, a3
                  addi         a0, t5, -1904
                  mulhsu       s6, t5, s5
                  c.srli       a0, 7
                  slt          a1, t0, s1
                  addi         t1, a3, -505
                  srai         s10, s9, 4
                  c.srai       a2, 27
                  addi         s10, a5, -1523
                  c.or         a0, a4
                  c.add        s10, t6
                  mulhsu       s4, s4, t4
                  sltiu        s6, s10, -1027
                  and          s4, s10, s1
                  div          t1, s10, t5
                  lui          a0, 401623
                  c.xor        a2, a5
                  c.andi       a1, -1
                  sra          t1, s4, a0
                  c.sub        a1, s0
                  srai         t2, s1, 14
                  srai         a7, s0, 25
                  andi         t5, s11, -809
                  srli         s1, t1, 9
                  xor          a4, s5, gp
                  srai         s8, tp, 24
                  div          a7, s7, s7
                  srl          gp, s4, t3
                  slt          t6, a5, s8
                  div          a4, a6, a7
                  add          zero, t6, tp
                  slli         t6, gp, 28
                  and          a3, a3, s9
                  c.addi       a7, 22
                  xori         s9, s0, -851
                  nop
                  srli         t3, s8, 0
                  c.addi       a3, 27
                  div          a0, gp, t2
                  c.sub        a5, a0
                  mulh         s7, s11, tp
                  c.andi       a0, -1
                  slti         a1, a0, -777
                  c.or         s1, s1
                  mulh         a0, zero, s1
                  c.lui        t3, 2
                  and          zero, t2, a2
                  and          a3, t2, s6
                  auipc        t5, 993586
                  ori          t4, a5, 285
                  rem          t3, s8, s0
                  c.and        a2, a2
                  divu         t2, a5, s10
                  c.and        a4, a0
                  c.slli       t3, 10
                  rem          a1, a3, a2
                  c.sub        a5, a1
                  slt          t4, ra, s9
                  remu         t6, s7, t4
                  slti         a1, a7, 938
                  srl          t3, s2, ra
                  c.slli       t4, 15
                  c.addi       s8, -1
                  auipc        tp, 907073
                  srl          s5, t1, t2
                  xori         s1, s1, -933
                  c.or         a2, a3
                  ori          t0, t6, -922
                  mulhu        t0, a4, a0
                  slt          t5, a3, a5
                  c.li         s6, -1
                  slt          t3, t5, s3
                  c.sub        a5, a5
                  sltiu        tp, s4, 1627
                  lui          a0, 844522
                  ori          t6, sp, 1033
                  div          s9, a3, t5
                  sltiu        ra, t3, 1494
                  c.lui        t2, 9
                  c.srli       a4, 22
                  c.nop
                  auipc        a0, 771959
                  or           a7, s10, s0
                  c.lui        t2, 7
                  c.srai       a4, 26
                  rem          a1, t5, a1
                  remu         s11, a2, sp
                  andi         t1, s11, -1248
                  addi         zero, a1, -468
                  c.mv         t1, s0
                  sub          t5, s1, t2
                  c.srai       a0, 23
                  slli         a7, a6, 30
                  srai         zero, a2, 13
                  c.and        a3, a3
                  srai         s11, a5, 18
                  c.mv         s9, s0
                  ori          a7, a7, 491
                  sub          t4, tp, t6
                  srli         gp, s7, 29
                  c.slli       a0, 20
                  sll          s11, s2, gp
                  slt          zero, a1, a1
                  sra          a1, a0, s3
                  c.mv         s8, a1
                  mul          s2, s8, t2
                  c.slli       s1, 19
                  remu         t6, s11, ra
                  andi         s10, s0, 665
                  or           s8, ra, a2
                  and          t4, s11, s7
                  slti         a5, s1, 583
                  remu         s11, s8, s9
                  c.addi       a7, -1
                  c.add        s3, s2
                  auipc        s8, 155390
                  rem          a0, t5, tp
                  slt          s8, t2, s7
                  ori          t1, t3, -861
                  c.nop
                  srl          a3, sp, a2
                  ori          a4, s1, 1207
                  c.li         a2, -1
                  c.sub        a2, a0
                  addi         t2, s3, -1192
                  mul          a4, a6, a4
                  rem          a5, a1, t1
                  c.nop
                  c.sub        a5, a5
                  xori         a3, s6, 211
                  andi         t1, t6, 1965
                  add          s5, s5, tp
                  sub          t6, a6, gp
                  div          s10, ra, a2
                  div          a2, a5, a7
                  c.mv         t5, s0
                  c.slli       a7, 30
                  andi         s10, s2, 480
                  xor          t2, a1, s4
                  c.or         a2, s0
                  sltiu        a3, a3, 1661
                  c.addi       s2, -1
                  c.lui        ra, 30
                  andi         s6, a3, 322
                  mulh         t2, t2, ra
                  sltiu        s8, ra, -1192
                  c.mv         t5, s9
                  c.srli       a5, 27
                  slt          s2, s3, s2
                  nop
                  add          t0, s2, a7
                  mul          ra, a7, s1
                  div          t2, a3, a3
                  c.mv         s2, a4
                  xori         s10, a6, 1709
                  xori         ra, sp, 1600
                  srli         t6, t2, 29
                  or           a2, s11, tp
                  xori         s10, gp, 1730
                  slli         a7, a7, 13
                  auipc        gp, 420525
                  add          a0, a0, a2
                  div          t5, a1, a5
                  xor          ra, s2, s9
                  c.add        s7, a2
                  slti         a4, a1, -1956
                  and          a3, t6, zero
                  srai         s1, s6, 28
                  andi         gp, s6, -22
                  or           a7, tp, gp
                  sub          s2, s1, a4
                  srl          t0, t0, t5
                  mul          s8, s3, s0
                  andi         tp, gp, -1750
                  nop
                  lui          s1, 230719
                  or           a2, tp, s6
                  c.li         s9, -1
                  sltiu        s9, a7, -1822
                  divu         t4, a0, s11
                  mulhu        s8, s3, a1
                  sltu         s2, tp, t2
                  c.sub        a4, s1
                  lui          t2, 812175
                  slti         t6, s6, 197
                  divu         a0, t0, a6
                  xor          s2, gp, s5
                  auipc        t6, 337428
                  or           s4, s10, s8
                  c.andi       a4, -1
                  sltu         t1, t6, s11
                  c.and        a3, a2
                  srai         s9, a5, 24
                  c.or         a1, a3
                  srli         a2, tp, 23
                  remu         s1, sp, s11
                  c.and        a0, s0
                  c.add        s8, s6
                  nop
                  xori         s1, s3, -187
                  div          s7, t4, s11
                  c.mv         s8, a3
                  c.li         ra, 2
                  lui          a4, 57351
                  slti         t1, s11, 1003
                  c.nop
                  sll          t2, s6, s8
                  lui          t6, 837676
                  c.and        a4, a3
                  mulh         a0, zero, a6
                  c.andi       a2, 16
                  remu         ra, s1, s1
                  xor          tp, a6, t2
                  c.srai       a2, 11
                  sltu         s7, t6, t6
                  or           s2, t5, s1
                  slti         s9, ra, -237
                  remu         a0, t6, s2
                  c.and        a2, a1
                  mul          s2, a1, zero
                  sltiu        a1, sp, -207
                  slt          zero, tp, a4
                  sltu         a3, s6, t1
                  andi         s11, zero, -613
                  slt          tp, s10, ra
                  c.or         a0, a0
                  c.lui        t6, 17
                  add          a7, a6, zero
                  c.nop
                  mul          t3, a4, t6
                  or           s8, gp, s6
                  auipc        a7, 726351
                  c.lui        s6, 1
                  mul          gp, tp, tp
                  mulhsu       s7, s3, zero
                  rem          s3, a5, t6
                  sub          a7, a2, s4
                  c.and        a4, s0
                  c.srli       s1, 11
                  sltiu        s2, t1, -1015
                  rem          s2, s7, t5
                  c.nop
                  mul          t5, s8, a3
                  sra          t5, gp, gp
                  srl          s1, t1, s2
                  sra          a3, t1, t0
                  c.slli       t2, 12
                  remu         s3, s4, s5
                  srai         t3, a7, 9
                  sub          t4, gp, s10
                  mulhu        t0, s1, s10
                  slli         s11, s10, 10
                  slt          t4, t4, t2
                  xor          ra, s11, a0
                  sub          t3, s4, s9
                  auipc        s6, 782674
                  sltiu        t5, s2, 24
                  slli         t4, s7, 28
                  sltu         tp, a1, t0
                  sltiu        t5, a6, 1044
                  c.mv         tp, a0
                  xor          a7, t5, t3
                  srai         s11, zero, 4
                  mul          s1, a3, gp
                  c.li         t6, 29
                  rem          a7, t4, s6
                  sub          a0, t6, t1
                  c.or         a0, a2
                  andi         s9, a3, -1404
                  and          s3, s2, ra
                  and          a1, t1, a3
                  remu         gp, sp, zero
                  c.sub        a4, a5
                  c.li         a7, -1
                  c.andi       a0, 4
                  nop
                  sra          s5, s6, zero
                  sra          s7, t5, s6
                  sra          t4, s1, s5
                  c.lui        a3, 14
                  div          s5, t0, a5
                  addi         t1, s3, 1355
                  c.srai       a0, 7
                  srli         s9, s6, 29
                  remu         t2, a4, t1
                  c.slli       a4, 31
                  c.li         s11, -1
                  c.slli       a0, 28
                  c.srli       s1, 3
                  rem          t4, s2, tp
                  sltiu        s10, s8, 1326
                  c.mv         a0, tp
                  or           s8, t0, s5
                  c.lui        t0, 12
                  c.sub        a1, a0
                  c.li         s11, 24
                  c.slli       t0, 7
                  c.add        s1, ra
                  srli         a2, s0, 26
                  sltiu        ra, a4, -1547
                  divu         t3, s3, a6
                  rem          a4, t5, t1
                  ori          a0, gp, 374
                  and          s2, sp, gp
                  andi         s1, zero, 2041
                  remu         a0, s6, gp
                  srl          s3, t2, s7
                  mulhsu       a7, s7, s3
                  slti         a0, t2, -12
                  c.slli       s6, 25
                  xori         s11, s9, 1374
                  c.li         s11, -1
                  xor          a5, t5, a6
                  and          t1, s6, gp
                  mulh         s8, s6, t5
                  c.addi       s3, -1
                  remu         a2, gp, a4
                  nop
                  c.slli       t0, 19
                  div          a4, t0, a4
                  sub          s5, s8, s8
                  c.srai       a2, 19
                  ori          gp, s9, 178
                  c.xor        a4, a4
                  andi         s6, tp, 828
                  c.or         a0, a1
                  xori         t6, t1, 1808
                  mulhu        t6, a6, t1
                  or           a7, s4, s7
                  c.xor        a2, a5
                  mulhu        tp, s0, zero
                  xori         gp, a1, -1665
                  and          a2, t1, gp
                  c.andi       s1, -1
                  auipc        a5, 450340
                  andi         s4, s4, 665
                  auipc        t0, 5155
                  c.srai       s1, 31
                  srai         a2, a4, 9
                  mulhsu       t1, s2, a1
                  c.addi       t1, -1
                  mulh         a7, s7, a0
                  and          a0, a6, s7
                  c.sub        a3, a4
                  c.addi       t0, 7
                  addi         s8, s10, 923
                  add          s3, s6, s4
                  divu         a2, t4, t1
                  srai         s4, a5, 21
                  or           a2, s6, t5
                  mulh         s7, a7, t1
                  c.add        t4, t6
                  ori          s3, t6, -785
                  srl          s8, tp, s0
                  c.srai       a4, 19
                  c.or         a5, s1
                  c.and        a5, a4
                  c.add        s2, s2
                  mulhu        a2, tp, s6
                  sltu         a3, a4, t3
                  srai         s1, s3, 28
                  srai         s4, a7, 10
                  andi         a2, t4, 1590
                  c.srai       s1, 18
                  sltiu        s2, t5, -920
                  add          gp, s8, a3
                  c.srli       s1, 1
                  sra          a0, t3, t3
                  auipc        a5, 613549
                  sll          a1, t4, s2
                  c.and        a4, a4
                  c.lui        s8, 28
                  c.add        a1, t4
                  mul          t6, s4, a4
                  c.nop
                  c.sub        a4, a4
                  addi         a5, a0, 1043
                  or           s11, s5, a4
                  rem          s10, s0, a4
                  c.lui        s6, 4
                  c.add        s2, ra
                  lui          t4, 632224
                  c.li         a0, 10
                  srli         t6, s4, 25
                  sll          t3, t0, s3
                  ori          tp, gp, 1063
                  and          t3, a0, t5
                  c.slli       tp, 22
                  c.sub        a1, a1
                  sltu         s10, gp, a5
                  c.li         a2, 12
                  ori          a1, t4, -1307
                  c.and        a5, a1
                  c.and        a1, a5
                  c.add        s9, t3
                  mulhu        a7, s4, s2
                  div          s5, s11, gp
                  c.sub        s1, a1
                  c.mv         s1, t0
                  c.sub        a0, a4
                  srli         a5, a6, 25
                  slti         tp, t3, 1908
                  or           s8, a3, s10
                  c.addi       tp, -1
                  c.slli       s11, 22
                  c.srli       a0, 22
                  c.srai       s1, 24
                  c.xor        a5, a1
                  c.add        a1, s4
                  c.slli       t5, 23
                  or           gp, t0, sp
                  slli         s8, s7, 4
                  and          a5, s1, s10
                  div          s4, zero, s5
                  mulh         a1, a5, zero
                  c.add        a1, t1
                  mulh         a4, t1, zero
                  lui          gp, 590397
                  mulhsu       t1, t6, a1
                  slt          zero, ra, s11
                  and          s5, t1, a3
                  mulhsu       s3, a0, a3
                  srai         s4, s6, 28
                  mulhsu       s3, a7, t0
                  c.slli       ra, 29
                  mulhsu       s10, s7, a3
                  c.or         a0, s0
                  srl          a3, s4, s5
                  srli         s9, t1, 4
                  or           a0, sp, s8
                  c.lui        a0, 31
                  c.lui        s8, 1
                  mulhsu       s6, t5, s9
                  sll          s2, zero, a2
                  c.lui        a4, 11
                  lui          gp, 256875
                  and          a0, s5, tp
                  and          ra, s3, a7
                  and          s7, t1, s6
                  lui          t5, 417831
                  remu         s4, t0, zero
                  mulhu        a4, s3, ra
                  andi         t1, a3, 1182
                  mul          t5, t2, s9
                  sub          zero, s4, s1
                  xor          a5, t3, a6
                  mulhu        t2, s11, tp
                  div          s2, a1, s11
                  c.sub        a5, s1
                  c.slli       s5, 9
                  and          s9, s3, t6
                  srl          t0, t0, s7
                  sltiu        a3, tp, -808
                  auipc        s10, 1047947
                  mulhu        s1, s3, t1
                  andi         a4, t1, 583
                  ori          s4, a1, -87
                  c.lui        a2, 23
                  or           s7, a5, t2
                  xor          a7, s10, a2
                  and          zero, s5, t0
                  c.nop
                  mulh         s2, s4, s11
                  sll          t0, a4, t0
                  ori          s1, t2, -1290
                  mul          a5, s1, s6
                  xor          t2, a2, s2
                  divu         s9, t3, s0
                  slt          ra, s9, t3
                  auipc        s8, 854977
                  c.and        s1, a4
                  sltu         zero, t3, s1
                  xori         gp, a6, -856
                  sub          s7, a5, gp
                  andi         t6, t2, -1092
                  srl          s7, a2, s10
                  rem          t3, sp, tp
                  c.add        s4, tp
                  srli         s8, a2, 29
                  c.mv         a4, s2
                  sub          a1, a1, t2
                  c.li         s6, -1
                  srai         t5, a6, 17
                  div          s7, a7, sp
                  sltiu        t0, a7, -815
                  c.sub        a1, s1
                  srai         tp, s11, 22
                  sub          t5, s5, s3
                  sltu         a0, a3, s9
                  slli         s3, a3, 24
                  or           zero, a0, s10
                  c.add        a0, s2
                  addi         a0, s4, -1817
                  srai         t1, s11, 1
                  remu         t4, ra, t2
                  srli         a7, a7, 15
                  addi         s3, s1, 758
                  c.mv         s2, s5
                  c.nop
                  mulh         zero, s1, t5
                  c.andi       a4, 21
                  sub          s9, s9, s6
                  divu         t5, s3, t4
                  sub          s1, s2, ra
                  slti         s7, t0, -25
                  nop
                  c.lui        s1, 9
                  c.or         a0, a4
                  ori          t1, s8, 87
                  mulhsu       s6, a2, a2
                  srl          s6, s0, t4
                  c.or         a2, a5
                  slti         a5, s4, 207
                  sltu         a3, s8, s2
                  c.andi       s1, 22
                  c.srai       a3, 14
                  remu         a4, s5, zero
                  mulh         s1, s6, s7
                  ori          zero, s9, 49
                  xor          s1, a5, ra
                  sltu         t0, a2, s10
                  addi         s1, s11, 1076
                  c.slli       a5, 4
                  nop
                  xori         a3, s4, 687
                  mulh         a4, t0, t6
                  and          t3, s9, s0
                  div          t1, s6, s11
                  srl          a3, a3, s3
                  c.mv         tp, s11
                  c.mv         s11, t0
                  or           gp, a1, a4
                  sltu         t0, t1, s9
                  c.li         tp, 26
                  srli         a4, gp, 1
                  c.and        a5, a4
                  srl          a0, t6, s5
                  nop
                  mulh         tp, a4, s8
                  slli         t6, s10, 1
                  c.li         s6, -1
                  c.lui        s2, 5
                  sll          s1, t0, s7
                  sll          gp, s9, a3
                  c.and        a2, s1
                  c.slli       a3, 1
                  mulhsu       s11, s1, s10
                  and          a1, s1, a7
                  c.slli       t6, 25
                  sltiu        s4, a0, 1894
                  c.srli       a3, 12
                  sub          a0, a5, zero
                  mulhsu       s10, a2, a2
                  c.srli       a4, 20
                  addi         gp, a1, 1298
                  and          s8, t3, s9
                  sub          t3, a6, sp
                  c.sub        a0, a0
                  c.mv         s3, s9
                  c.li         a3, -1
                  and          a7, s2, t2
                  c.mv         t6, a1
                  sltiu        a3, t5, -1417
                  c.mv         s1, a6
                  sltiu        s3, t6, 1320
                  slti         a4, t0, 669
                  div          t5, t2, t2
                  c.srli       a2, 28
                  nop
                  c.or         a5, a3
                  and          a3, s4, a4
                  auipc        t1, 228464
                  c.li         a0, -1
                  mulh         a3, a1, a2
                  xor          a3, tp, t6
                  slt          a1, sp, tp
                  or           zero, s6, a5
                  sltiu        gp, s6, 204
                  slt          a7, a4, a4
                  slt          ra, s7, s5
                  and          t6, a0, t6
                  add          zero, s7, t4
                  c.or         a0, a5
                  xor          a1, ra, s8
                  c.add        a0, s1
                  c.addi       t4, 9
                  srl          t5, gp, t1
                  c.srli       a4, 3
                  srai         s4, a4, 13
                  addi         a4, a4, 1777
                  c.srli       s1, 7
                  add          a7, s7, t1
                  sub          s1, s0, t3
                  auipc        s11, 309981
                  srli         zero, s7, 3
                  c.srai       a4, 22
                  c.srai       a3, 19
                  and          a7, t6, s5
                  slti         t4, s8, -627
                  and          a5, tp, gp
                  srai         ra, a4, 29
                  andi         s2, gp, -3
                  mul          t2, s5, s3
                  c.xor        a3, a4
                  c.and        a0, s0
                  sltu         s10, t5, t4
                  addi         s1, ra, 1883
                  xori         a2, s5, 676
                  remu         a7, t0, t4
                  c.addi       s8, 21
                  slt          a3, t2, s1
                  slti         gp, s10, 483
                  ori          s6, s6, -317
                  c.sub        a2, a3
                  srli         a1, t4, 30
                  xor          t1, s4, s10
                  c.nop
                  xor          s10, s0, s1
                  sltiu        a5, s2, 572
                  c.sub        a0, s1
                  c.addi       gp, 27
                  xori         a4, t6, 976
                  mulhu        a0, t6, t5
                  sltiu        a5, sp, -1976
                  c.or         a5, a0
                  srl          t4, a6, s3
                  slti         t3, zero, -414
                  c.mv         s9, s9
                  slti         t4, t3, 598
                  c.srli       a1, 27
                  c.srli       a0, 17
                  sltu         gp, a7, s11
                  ori          s10, s5, 1571
                  c.slli       s3, 24
                  c.xor        s1, s1
                  c.li         s6, -1
                  remu         tp, gp, a4
                  c.lui        t6, 4
                  slli         s6, s7, 4
                  c.add        s3, t2
                  slli         s3, tp, 24
                  c.and        a5, a4
                  and          gp, s3, ra
                  add          a2, s1, zero
                  slti         s4, t0, -629
                  xor          a5, s1, s2
                  addi         t0, t6, 386
                  c.lui        ra, 17
                  or           t2, t5, s11
                  srl          t6, a1, a0
                  and          t5, gp, a6
                  sltu         t3, sp, s0
                  slt          ra, t0, s2
                  srai         s1, s1, 0
                  div          a2, t6, s6
                  c.add        s3, a5
                  or           s5, s10, t1
                  c.sub        a4, s1
                  c.andi       a2, 25
                  auipc        gp, 764183
                  sltiu        a0, a6, -1786
                  xori         s8, a7, -1350
                  c.lui        s9, 12
                  nop
                  auipc        a7, 666156
                  c.sub        s1, a2
                  c.xor        s1, a2
                  c.or         a0, a1
                  sub          t4, tp, s2
                  rem          t3, s7, a0
                  srli         ra, gp, 15
                  sub          t4, s6, a4
                  c.andi       a5, -1
                  slli         s11, zero, 17
                  srl          s9, s3, a5
                  mulh         t1, a3, s8
                  c.and        a2, a3
                  sltu         ra, s10, s0
                  slt          gp, a1, s5
                  srai         a2, a3, 26
                  auipc        s4, 927944
                  c.slli       s2, 7
                  srl          s3, s0, s1
                  sll          s7, a3, t6
                  sub          a7, s0, a1
                  divu         gp, s10, t2
                  c.lui        s2, 29
                  xori         a4, s6, 132
                  srl          s1, s0, a4
                  auipc        s8, 516250
                  mulh         a4, s2, t0
                  add          zero, a1, sp
                  add          gp, s2, a4
                  c.mv         a5, s7
                  rem          a3, s7, ra
                  c.add        a1, s10
                  xori         a5, a5, -36
                  mulh         t4, s1, a0
                  c.and        a1, a0
                  sra          t3, t4, s9
                  xor          s2, zero, tp
                  c.slli       a7, 15
                  c.slli       s4, 5
                  c.srai       a3, 20
                  c.add        a5, s2
                  divu         zero, s10, s11
                  c.srai       a3, 12
                  nop
                  sltu         s1, t3, s5
                  c.srli       a0, 13
                  c.sub        a2, a4
                  slli         s5, t5, 0
                  c.srli       s1, 19
                  c.mv         s2, s2
                  slt          t6, s4, t5
                  c.lui        gp, 6
                  sra          t6, a6, s8
                  nop
                  mulhsu       ra, t5, s1
                  div          a3, gp, t6
                  slli         a7, a7, 4
                  auipc        s5, 311911
                  mulhsu       s9, ra, t6
                  and          ra, a1, a0
                  c.srli       s1, 10
                  mul          s4, s6, ra
                  c.srai       a2, 8
                  slti         gp, s6, 970
                  lui          a0, 410920
                  sub          s10, s6, s5
                  sltiu        t4, t4, -1980
                  mulh         s3, a6, s4
                  c.and        a0, a0
                  sltu         t3, s5, t2
                  c.lui        t3, 8
                  c.add        a4, s11
                  srl          s8, gp, a5
                  srai         s3, s3, 15
                  mulhu        s3, s8, sp
                  slti         t2, t2, -1236
                  c.and        s1, a3
                  remu         a1, zero, s2
                  sltu         a3, s6, a4
                  xori         t4, a0, -815
                  div          t2, t0, ra
                  c.add        a2, a0
                  add          t1, s3, s2
                  andi         s1, a7, -412
                  and          t4, t6, a0
                  auipc        tp, 63039
                  srli         a5, a0, 15
                  c.addi       t0, 25
                  sll          s11, t0, t5
                  mulhu        s10, t4, s7
                  c.mv         ra, t1
                  srai         s8, t6, 29
                  srl          s7, s5, s4
                  ori          zero, s11, -1398
                  slli         t1, s0, 20
                  mulh         a3, s11, tp
                  ori          t2, s3, 58
                  xori         s5, ra, 1625
                  divu         t1, t3, s4
                  c.li         gp, -1
                  slt          a7, t4, s5
                  sltu         s3, s6, ra
                  auipc        t5, 422304
                  mulh         ra, s5, s10
                  c.nop
                  nop
                  c.nop
                  sltu         zero, s7, s0
                  sub          zero, t5, s6
                  and          a1, t6, s7
                  xor          t1, a5, s4
                  sltiu        gp, sp, -966
                  sltu         s7, a1, t3
                  c.addi       s2, 23
                  srli         a2, s6, 9
                  andi         t6, s10, 1983
                  slli         a2, a6, 18
                  mul          zero, s2, s7
                  c.or         a3, s0
                  srai         s8, a0, 19
                  c.add        a2, a3
                  and          s5, s3, t2
                  addi         s7, sp, 224
                  sltiu        a1, t0, 818
                  slti         a3, s1, -562
                  xor          s8, s5, a3
                  ori          a3, sp, 590
                  c.lui        a0, 5
                  mulhu        a5, a0, ra
                  c.srli       a0, 9
                  mulhu        s1, s1, ra
                  c.addi       a5, 15
                  xori         t1, a5, -533
                  div          s8, t5, s10
                  c.addi       t0, 8
                  c.lui        a4, 16
                  srli         a1, t3, 29
                  slti         s8, a7, -1323
                  sub          a3, a1, s3
                  and          s8, s9, a6
                  c.srai       a4, 17
                  sltu         tp, a5, a5
                  slti         a1, a0, -230
                  c.li         s6, -1
                  ori          t4, s8, -797
                  mulh         a1, t5, a7
                  add          a4, tp, s10
                  mulhu        zero, gp, s2
                  c.andi       a4, -1
                  srai         s6, a3, 14
                  slti         zero, s10, -734
                  c.nop
                  c.lui        s3, 8
                  srl          a7, t6, a6
                  c.and        a2, s1
                  srli         a1, s1, 21
                  c.xor        a5, a3
                  div          gp, t3, s1
                  or           tp, s7, a4
                  srai         s11, t2, 16
                  c.srli       a0, 22
                  c.srai       a4, 3
                  andi         a3, s5, 1051
                  sra          t6, s10, s9
                  slli         gp, sp, 21
                  andi         a0, a0, 420
                  c.xor        s1, a0
                  add          s2, s6, s5
                  srl          a0, t0, s0
                  rem          zero, s4, tp
                  sltu         t3, s5, sp
                  and          a5, s11, s8
                  div          s8, tp, s9
                  slti         t1, a5, 2044
                  sra          ra, t5, s9
                  rem          a7, s2, a3
                  add          a2, s6, s5
                  slli         a4, t0, 14
                  c.or         a2, a4
                  lui          s10, 836952
                  c.lui        s7, 9
                  c.addi       t3, -1
                  rem          s1, s7, s6
                  mulhu        s5, a7, s9
                  sltu         a1, sp, s6
                  mul          a4, ra, s6
                  divu         a1, s3, t0
                  c.mv         tp, t5
                  div          t4, s8, a0
                  srai         gp, t0, 10
                  or           a5, s7, t0
                  srai         t1, a1, 23
                  c.mv         ra, s9
                  sub          s3, s5, sp
                  sub          t2, a5, sp
                  and          s3, a0, s0
                  auipc        s7, 868798
                  mulhu        s8, s8, s6
                  sltu         a5, s5, a7
                  c.addi       s2, -1
                  srai         s10, t1, 21
                  sll          t3, s1, s2
                  c.andi       a4, 31
                  c.add        a0, s9
                  c.addi       s2, -1
                  srli         s3, t2, 13
                  c.xor        s1, a3
                  c.srai       a3, 13
                  auipc        a7, 523162
                  rem          tp, a5, a2
                  c.slli       a5, 8
                  sll          a5, s6, s0
                  c.lui        s4, 31
                  srai         a1, t0, 6
                  c.andi       a5, -1
                  c.li         t3, -1
                  c.and        s1, a4
                  c.addi       a7, 4
                  c.andi       a2, 17
                  c.addi       t0, -1
                  and          ra, s4, s9
                  c.andi       s1, -1
                  add          s6, s11, a3
                  c.add        s5, s8
                  c.add        s7, s10
                  c.and        a3, a2
                  andi         s8, a5, -1294
                  c.lui        t0, 20
                  lui          t6, 236012
                  c.lui        s2, 21
                  addi         t4, a6, -549
                  nop
                  slt          t5, t0, t0
                  and          ra, s7, sp
                  sltiu        a0, t5, 774
                  c.addi       s8, 1
                  c.add        t6, t2
                  sub          a4, s8, s2
                  xori         t3, t5, 1255
                  addi         t6, s0, 372
                  andi         t6, s3, -1501
                  sltiu        s1, a1, 1497
                  add          s6, sp, a4
                  c.and        a4, a1
                  xori         t2, s8, -1716
                  sra          s7, t5, s6
                  c.li         a5, 7
                  divu         s3, a0, s5
                  sltu         gp, s7, a4
                  srl          s9, a7, s6
                  mulh         s4, s4, s3
                  slti         gp, a6, -823
                  divu         zero, tp, t4
                  div          t2, zero, s0
                  ori          t0, s5, 313
                  and          s2, gp, t4
                  mulhu        t3, s5, sp
                  c.sub        a0, a4
                  remu         s1, a1, a4
                  sltu         s8, a5, s11
                  mulh         t1, a4, s2
                  slti         a3, t5, -377
                  xori         s10, s2, 610
                  c.srai       a1, 12
                  xori         tp, s10, -662
                  sub          gp, t2, s1
                  addi         s3, t5, -1888
                  c.and        a5, a4
                  slt          ra, a2, a4
                  c.lui        t0, 13
                  c.add        a2, s3
                  c.sub        s1, a4
                  c.nop
                  c.xor        a1, a4
                  c.slli       a5, 14
                  mulhsu       t1, s10, a6
                  c.and        a1, a1
                  c.nop
                  c.addi       tp, 31
                  c.slli       t0, 20
                  c.andi       a3, 27
                  andi         a5, t6, -1181
                  slti         t2, sp, 1240
                  sll          t3, t2, t2
                  nop
                  c.addi       s8, -1
                  c.or         s1, a4
                  srli         zero, s5, 3
                  c.xor        a2, s0
                  c.mv         s4, s5
                  mulh         s9, t6, s5
                  c.or         a1, s1
                  srl          s5, s9, a4
                  c.srli       a0, 15
                  srai         a3, a3, 0
                  add          t2, t6, gp
                  andi         a5, s6, 293
                  c.sub        s1, a2
                  c.slli       s1, 8
                  lui          s1, 806388
                  c.li         s6, -1
                  c.mv         t0, a0
                  ori          a0, s2, 207
                  slti         s11, s2, -529
                  sltiu        t1, s3, -587
                  remu         s7, zero, s4
                  c.addi       t1, -1
                  mulh         s1, a1, s6
                  slli         s4, s11, 3
                  c.mv         a2, s5
                  andi         s11, t0, -580
                  xori         a3, s11, -1958
                  srl          a3, t3, s2
                  nop
                  srli         t5, a1, 11
                  mulhsu       t1, s3, t4
                  c.or         a5, a1
                  c.lui        s11, 8
                  mulhu        ra, sp, s5
                  div          a4, s8, s4
                  divu         a1, s8, gp
                  auipc        s10, 254105
                  srl          t6, s10, a0
                  c.and        a4, a4
                  divu         t4, s1, t0
                  and          gp, t1, s7
                  c.lui        a0, 14
                  c.andi       a3, 23
                  sub          ra, s3, s4
                  srli         s4, s1, 16
                  andi         t3, s3, 599
                  lui          ra, 282049
                  c.sub        a3, a5
                  mulhu        a0, t2, a2
                  and          s8, t4, a0
                  c.sub        a3, a4
                  slt          s8, s1, s4
                  divu         s8, s3, a3
                  sltu         s11, a0, s5
                  sra          s4, s6, a4
                  c.and        a1, a2
                  srai         a0, a7, 14
                  c.slli       a5, 8
                  andi         s2, s1, -1242
                  c.xor        a4, a1
                  slt          t3, tp, s0
                  c.srli       a2, 25
                  c.slli       tp, 13
                  nop
                  c.andi       a5, 5
                  srai         s10, s0, 25
                  mulhsu       tp, s5, s6
                  mulhsu       s2, t4, tp
                  c.li         s5, 7
                  c.lui        ra, 22
                  c.li         s4, 25
                  slti         t1, s10, -657
                  c.lui        s11, 1
                  xor          s1, a1, zero
                  c.and        a5, a5
                  ori          t3, t4, 708
                  ori          s11, a4, 2007
                  ori          zero, ra, 1352
                  sltiu        s6, a7, -1943
                  c.li         s2, -1
                  nop
                  srli         s1, a6, 14
                  sra          tp, s6, s2
                  c.mv         s2, a2
                  mul          a4, s11, a6
                  sll          s4, sp, t2
                  c.add        t1, s11
                  auipc        a1, 92109
                  slli         s9, a5, 3
                  c.lui        a5, 10
                  c.addi       s6, 15
                  nop
                  xori         a2, tp, -332
                  c.andi       a5, -1
                  div          gp, a1, s0
                  add          s1, s0, a6
                  c.nop
                  c.and        a4, a5
                  srai         ra, tp, 5
                  c.andi       a1, -1
                  sra          s11, s2, t3
                  xor          s3, gp, s11
                  c.and        s1, s0
                  c.nop
                  sll          s10, tp, t4
                  sltiu        zero, s1, -601
                  and          s3, t3, a3
                  c.addi       s1, 11
                  sll          s6, s7, s8
                  c.lui        s7, 17
                  c.xor        a1, a4
                  mulhu        a1, s2, t2
                  srl          a0, t2, s6
                  remu         ra, s4, a0
                  addi         s7, a0, 1137
                  xor          s11, a0, a7
                  mul          t2, s9, a3
                  srai         t4, sp, 3
                  slti         a1, s7, 979
                  c.srli       a2, 6
                  nop
                  nop
                  divu         a4, s4, s9
                  lui          t4, 421357
                  c.srli       a4, 10
                  slt          s6, a6, s2
                  ori          s5, t6, -2044
                  c.nop
                  c.xor        a2, s1
                  c.srli       a2, 7
                  sltiu        s1, s2, 1736
                  c.addi       s3, 3
                  c.nop
                  div          t5, a1, s2
                  andi         a1, gp, 735
                  sltiu        s9, s2, 887
                  mulh         t1, s5, s5
                  sub          a0, a0, t0
                  c.srai       a0, 13
                  andi         a7, a3, 763
                  remu         a3, ra, a4
                  slti         t5, s3, 1598
                  c.sub        a0, a4
                  div          a5, s8, t1
                  sll          a5, a1, s3
                  c.li         a4, -1
                  remu         zero, tp, s10
                  srai         a3, t3, 25
                  c.andi       a5, 15
                  sltu         a1, a0, a7
                  and          gp, zero, sp
                  mul          t4, s7, s11
                  addi         s11, gp, 1168
                  sll          ra, a6, tp
                  c.addi       gp, 19
                  sll          s6, s5, gp
                  c.xor        s1, a5
                  or           tp, t6, a2
                  slt          t1, a5, t1
                  rem          tp, ra, s7
                  auipc        t3, 355762
                  c.lui        s6, 30
                  remu         s4, a3, a7
                  c.or         s1, a2
                  c.sub        a1, a1
                  c.addi       a2, 20
                  sltiu        tp, a5, 1169
                  and          s11, s6, s3
                  c.xor        a1, a3
                  c.mv         gp, s9
                  sra          t4, gp, s11
                  div          t5, t4, a5
                  sltu         gp, s7, t4
                  mulhsu       t3, s6, t1
                  srai         t6, t0, 18
                  c.andi       a0, 30
                  sltu         gp, t2, tp
                  c.or         a0, a0
                  c.li         a7, -1
                  slli         a1, t0, 17
                  c.lui        a7, 26
                  srai         s1, t5, 4
                  srl          s8, tp, t0
                  c.sub        a1, a5
                  c.add        s9, a3
                  rem          t4, zero, s8
                  sll          t2, zero, s2
                  c.srli       a2, 5
                  c.srai       s1, 15
                  mul          t2, a1, tp
                  srai         t5, t2, 3
                  divu         s2, t6, t0
                  c.srli       s1, 2
                  mulhu        s1, s1, s0
                  addi         t0, s2, -1392
                  c.xor        a4, a4
                  lui          t6, 780602
                  sra          s10, s9, s11
                  srai         s3, a7, 7
                  sltu         t4, s4, t3
                  xori         s11, ra, -210
                  c.add        a4, a1
                  c.li         tp, -1
                  c.srli       a0, 21
                  lui          t4, 670064
                  lui          s8, 318537
                  or           a2, t3, a6
                  slti         a0, a1, -1610
                  sltu         s2, s1, s7
                  srl          s2, t2, a2
                  mul          ra, t3, s1
                  c.sub        a3, s1
                  c.lui        t0, 9
                  div          t3, tp, s7
                  slt          zero, t6, s2
                  xori         ra, t0, 1257
                  srli         a0, sp, 21
                  auipc        s5, 776935
                  divu         t6, t1, a0
                  c.nop
                  c.srai       s1, 12
                  add          tp, s4, t3
                  auipc        s11, 86124
                  sub          t6, a7, tp
                  sra          s5, s1, a2
                  slti         s11, zero, -417
                  c.srai       a0, 18
                  c.add        a7, sp
                  c.mv         s8, gp
                  remu         s7, s11, t2
                  c.sub        a2, a2
                  c.mv         a2, a0
                  mulhsu       s3, s0, gp
                  andi         zero, s11, 1692
                  srli         a5, s11, 9
                  c.srli       a2, 31
                  c.nop
                  sra          s2, s11, a4
                  c.or         a2, a3
                  rem          s6, a0, tp
                  c.sub        a1, a1
                  xori         a1, t1, 1189
                  addi         s5, a5, -1187
                  c.or         a3, a1
                  xori         ra, s0, -1996
                  nop
                  sub          s9, gp, t3
                  nop
                  xori         s8, t0, -1326
                  nop
                  slli         t1, a3, 11
                  c.and        a0, a2
                  divu         t1, a3, s8
                  slli         a4, gp, 19
                  mulhu        s8, a4, tp
                  or           a4, t4, a3
                  c.nop
                  divu         a0, a2, a6
                  c.nop
                  div          s11, s6, zero
                  c.lui        gp, 4
                  sra          a2, t1, a0
                  c.slli       s1, 29
                  rem          t4, s10, tp
                  c.lui        tp, 21
                  c.and        a2, a4
                  slti         t1, a3, -987
                  slli         t1, s10, 28
                  mulhu        s6, s9, s7
                  mulhsu       a2, s10, t3
                  addi         t0, s3, 504
                  sra          a4, t2, tp
                  auipc        s10, 64460
                  c.xor        a2, a2
                  sltu         s6, a4, t4
                  srai         t4, s7, 13
                  remu         s1, a7, s9
                  sra          a7, s11, gp
                  sub          a3, t1, s5
                  xor          zero, s0, a6
                  c.mv         s2, a3
                  c.nop
                  c.sub        a4, s1
                  and          s7, t4, s1
                  c.nop
                  c.nop
                  mulh         a0, s9, t6
                  rem          a1, s2, a1
                  addi         s2, sp, 140
                  c.mv         t4, s10
                  c.add        t1, t3
                  mulhsu       s7, t2, s10
                  add          s10, s11, s5
                  sltiu        a3, t5, 1233
                  srli         s11, s8, 15
                  divu         s3, tp, t4
                  srai         s7, s7, 6
                  nop
                  auipc        tp, 855806
                  c.and        a4, a0
                  addi         zero, a2, -1227
                  c.mv         t6, a3
                  c.mv         a3, sp
                  xori         a7, s6, -921
                  c.mv         s8, s6
                  divu         t1, s10, s10
                  andi         s4, s1, -1385
                  c.addi       a0, 20
                  srai         a1, s3, 15
                  add          s1, s4, t6
                  c.xor        a1, a2
                  slt          a3, s2, a6
                  divu         t0, t4, s4
                  and          a3, s8, t5
                  srai         s5, t5, 25
                  sltiu        t4, t6, 1009
                  slti         s10, ra, -246
                  c.li         t0, -1
                  divu         tp, s0, a2
                  andi         t4, s3, -1426
                  xori         zero, s10, 1411
                  c.nop
                  slti         t0, zero, 891
                  slli         t2, s7, 15
                  c.srai       a1, 27
                  slli         s6, t5, 17
                  srl          a3, a3, t5
                  srai         a1, s10, 0
                  divu         a5, a4, s6
                  and          t1, t3, a5
                  slt          tp, s1, a4
                  xor          a2, s1, a0
                  c.lui        a3, 28
                  c.andi       a5, -1
                  c.addi       a0, -1
                  mulhsu       s4, t2, s10
                  sltiu        a2, t4, 93
                  andi         a0, a7, 1323
                  mulh         a7, gp, a3
                  sra          t4, ra, t4
                  nop
                  c.or         a3, s1
                  div          a2, s0, ra
                  or           t3, a5, t6
                  mulh         s5, s9, t2
                  c.slli       a0, 7
                  sub          t0, s6, s5
                  c.and        a2, a1
                  add          zero, s7, s6
                  divu         a2, tp, a0
                  sll          t0, t4, a1
                  andi         s8, s1, 698
                  slli         s11, a2, 29
                  or           s4, t1, s8
                  srai         tp, s8, 8
                  srai         a0, s9, 28
                  c.lui        a2, 2
                  or           gp, t3, a1
                  mulhu        t2, s5, t2
                  lui          t0, 854631
                  nop
                  c.srli       a3, 18
                  sub          s1, t4, s6
                  sll          t0, t5, a5
                  c.andi       s1, 1
                  rem          t0, t1, tp
                  srli         s4, ra, 9
                  lui          gp, 778053
                  add          a1, s11, t5
                  c.xor        s1, a4
                  lui          s4, 970703
                  sra          s2, s9, sp
                  c.addi       s3, -1
                  c.xor        s1, a0
                  c.sub        a0, a2
                  or           s4, s2, a2
                  ori          zero, a7, 1662
                  slli         ra, a6, 16
                  slti         s10, s8, -565
                  c.sub        s1, a1
                  sltu         s1, a0, s5
                  remu         a2, a7, ra
                  auipc        gp, 673573
                  c.mv         s1, t2
                  slti         s4, t6, 1395
                  c.addi       tp, -1
                  addi         s2, s7, 1164
                  auipc        zero, 400167
                  rem          a7, t3, s0
                  nop
                  c.mv         gp, s5
                  sll          ra, t1, a1
                  div          a3, s11, s4
                  c.sub        a4, a5
                  mulh         s5, t2, s4
                  c.addi       a1, 24
                  or           t6, ra, s3
                  sltiu        ra, a0, 1204
                  c.mv         s6, s11
                  mulhsu       s2, t5, s9
                  slli         a4, s11, 14
                  srai         a0, t4, 7
                  andi         s5, a0, 180
                  sll          t0, s9, s3
                  mulhu        s5, t1, a1
                  or           tp, a4, s4
                  and          s11, t0, t5
                  ori          s3, a4, -166
                  c.sub        a1, a5
                  c.nop
                  c.srli       a3, 23
                  c.addi       a0, 16
                  c.add        t1, s0
                  auipc        s1, 602701
                  c.srai       a3, 28
                  srli         s10, s0, 29
                  nop
                  mul          a2, s9, sp
                  ori          s8, s10, -778
                  lui          s9, 898461
                  ori          t4, s3, 1664
                  c.add        tp, s5
                  slli         s6, t6, 30
                  sltu         ra, tp, s1
                  add          s6, a5, s3
                  c.andi       a0, 27
                  mul          s4, s7, a4
                  slti         gp, zero, -867
                  ori          t2, a5, 1948
                  rem          a7, s6, gp
                  c.andi       a3, -1
                  or           s1, t0, s1
                  lui          s3, 423491
                  srli         a0, s2, 6
                  c.li         ra, -1
                  c.lui        s4, 21
                  andi         zero, s7, -929
                  ori          a2, sp, -1806
                  sll          s9, s6, tp
                  addi         t2, a2, -1326
                  div          a3, a1, s5
                  nop
                  sub          s8, s9, t5
                  auipc        a5, 529498
                  xori         ra, sp, 899
                  c.or         s1, a5
                  sll          t6, t4, t2
                  sltu         t6, a5, a5
                  c.andi       a0, -1
                  slli         a0, zero, 28
                  slt          gp, s3, tp
                  auipc        a1, 66844
                  and          s4, a7, s2
                  srli         s3, s2, 24
                  c.mv         a5, s2
                  slti         s5, gp, 323
                  add          s11, s2, a1
                  or           s9, a0, s1
                  c.slli       t2, 19
                  c.mv         s2, t0
                  srl          s1, t5, s9
                  c.and        a2, a4
                  slli         t2, t6, 25
                  c.li         s4, -1
                  mulh         s2, a7, sp
                  sll          s1, a2, a7
                  add          t4, a5, a3
                  auipc        s2, 277738
                  or           s2, t1, s10
                  slti         zero, a4, -590
                  xori         t1, a6, -1823
                  c.and        a1, a4
                  nop
                  addi         s8, a0, 346
                  c.nop
                  ori          s2, t4, 1144
                  add          t5, a7, a1
                  c.addi       s1, 2
                  srl          s7, t5, a3
                  slli         s3, a4, 4
                  srli         t1, t0, 15
                  c.slli       s6, 29
                  sub          s4, a3, t4
                  c.add        s8, t1
                  slli         s8, s2, 9
                  sub          gp, a5, t2
                  srl          s6, a7, a5
                  c.sub        s1, a1
                  slt          s1, a4, s6
                  slt          a3, a7, s7
                  c.srli       s1, 6
                  c.srai       a5, 23
                  sll          s10, ra, a6
                  sltiu        s4, s8, 550
                  ori          s2, s9, -739
                  auipc        s11, 318014
                  c.and        s1, a3
                  mulh         a5, s0, gp
                  andi         s3, s5, -1952
                  slti         t5, s1, -185
                  andi         s3, s10, 1349
                  c.and        a2, s1
                  addi         s11, s7, 1155
                  c.mv         s6, t2
                  rem          a7, a2, s3
                  mul          a1, gp, t5
                  c.lui        t3, 21
                  c.srli       s1, 11
                  sltu         t5, t3, ra
                  mulhsu       s8, a3, s5
                  andi         s2, s2, 1154
                  c.slli       a0, 10
                  xor          s2, t0, t2
                  mulhu        t1, s6, a0
                  lui          s8, 731853
                  rem          s10, a6, a5
                  xor          s2, a5, tp
                  slti         t5, a7, 1346
                  remu         s5, s0, a1
                  mulhu        a7, a6, a5
                  xor          s6, s4, s0
                  c.addi       ra, 24
                  c.sub        a3, a4
                  srl          s11, a4, s1
                  slt          t4, t0, s8
                  ori          s11, t3, 1660
                  sra          s11, zero, s5
                  c.andi       a0, -1
                  remu         t2, zero, t4
                  c.slli       a0, 12
                  nop
                  c.lui        s7, 16
                  ori          s11, t3, -1669
                  c.slli       t1, 19
                  remu         a1, t5, a3
                  xor          s2, s7, s10
                  slt          s11, a4, a3
                  slli         s7, s11, 15
                  c.or         s1, a2
                  auipc        a5, 622164
                  srai         s8, s11, 11
                  xor          s1, t4, s3
                  sra          tp, a3, t4
                  sll          t3, a7, a1
                  sra          a3, s9, a7
                  srl          ra, s3, t1
                  nop
                  ori          a4, a0, -2045
                  c.or         a0, a2
                  and          t1, s9, a4
                  c.lui        t1, 16
                  mulhu        a4, s5, s9
                  xor          s6, a5, s4
                  xori         tp, ra, -1337
                  c.xor        a5, a0
                  slli         s3, zero, 31
                  c.xor        a4, s0
                  lui          a3, 697398
                  c.and        a0, a0
                  srai         t5, s0, 13
                  slt          t3, s10, s1
                  xori         a4, zero, -1797
                  andi         s11, s2, -434
                  mul          s10, a2, t0
                  sltu         s11, s9, t6
                  c.slli       tp, 20
                  div          zero, s2, t3
                  sra          s1, s4, gp
                  and          t1, zero, sp
                  c.slli       tp, 20
                  c.slli       s10, 22
                  add          t1, t3, s8
                  sltu         a3, s6, s2
                  mulh         s6, t0, s11
                  andi         a7, s5, -288
                  sll          s1, a6, s2
                  c.sub        a3, a2
                  mulhu        s6, a6, a5
                  c.sub        a4, a1
                  andi         ra, sp, -1615
                  c.sub        a3, a2
                  addi         a4, s10, 1780
                  xor          ra, s5, gp
                  mulhsu       t3, t1, s9
                  c.sub        a1, s0
                  mulhu        s8, s8, t6
                  mulh         t1, a0, s1
                  c.lui        s1, 31
                  sub          s10, s6, s4
                  and          a5, zero, s5
                  c.and        s1, a2
                  mulhsu       s8, ra, t5
                  c.xor        a0, a1
                  srl          a0, t5, s7
                  and          s3, sp, s6
                  divu         gp, s6, a0
                  srai         s6, gp, 21
                  c.srai       a0, 14
                  mul          s3, s2, a1
                  ori          a7, t3, -2030
                  mulhu        t6, a3, s2
                  srli         a1, a2, 31
                  remu         zero, zero, a3
                  c.and        s1, a3
                  c.addi       t2, -1
                  c.xor        a5, a3
                  c.nop
                  slli         t4, sp, 9
                  c.nop
                  add          t2, tp, s3
                  xor          tp, t0, t0
                  nop
                  c.li         a3, 23
                  nop
                  lui          t3, 264378
                  or           s9, s3, zero
                  c.slli       t1, 21
                  mulhsu       a2, t1, t4
                  sra          s5, gp, t3
                  c.mv         t6, t1
                  c.nop
                  rem          a7, s7, t1
                  srl          a2, a2, t5
                  c.and        a0, a2
                  add          ra, t3, a5
                  sltu         t1, s4, a5
                  addi         t6, t6, -933
                  c.li         s7, 10
                  and          gp, s4, ra
                  rem          s3, t5, zero
                  lui          a0, 791746
                  rem          s2, t6, a4
                  xor          a0, t3, s10
                  c.add        s10, a4
                  sll          s8, s10, s6
                  srl          a5, gp, s11
                  c.xor        a5, s1
                  nop
                  xor          a0, t0, a3
                  xor          s6, a2, t4
                  c.srai       a2, 29
                  c.nop
                  divu         t3, s3, a1
                  mulhsu       s7, s9, a2
                  or           s1, s8, t5
                  xori         t1, t0, 73
                  xor          s1, s6, s5
                  auipc        ra, 305707
                  c.mv         a4, a1
                  add          s1, gp, a4
                  slli         t4, a4, 24
                  and          gp, tp, a5
                  srli         s6, t6, 30
                  sub          s8, t5, s11
                  mulhu        s9, gp, zero
                  rem          s1, a1, a7
                  slli         t5, a5, 19
                  c.and        a4, a1
                  mulh         s6, s7, a7
                  c.nop
                  sltu         s4, s9, s10
                  nop
                  sra          s5, s6, s8
                  c.or         s1, s1
                  mulh         tp, s3, a0
                  c.and        s1, a0
                  c.slli       ra, 21
                  c.lui        t3, 24
                  nop
                  c.slli       t2, 24
                  srai         t6, zero, 21
                  sltiu        a2, s5, 892
                  sll          t5, a7, s0
                  srli         a2, t3, 18
                  addi         s1, s10, -1093
                  remu         tp, t2, s1
                  divu         a3, t0, tp
                  c.nop
                  mulh         s9, s3, s9
                  or           a2, gp, t0
                  slt          s8, gp, a4
                  srl          a1, a5, a0
                  sll          s2, a1, a2
                  add          s6, gp, t4
                  divu         t1, s8, t1
                  c.srai       a0, 25
                  srl          a3, sp, s7
                  c.andi       a5, -1
                  srli         tp, t5, 24
                  or           s11, a5, s8
                  c.li         t1, 24
                  c.addi       a7, 6
                  c.srai       s1, 24
                  srai         zero, s3, 15
                  and          s1, tp, s7
                  c.li         s2, 23
                  mulh         a1, a5, t3
                  c.mv         t1, s9
                  sltu         s1, s0, s5
                  rem          a0, s3, zero
                  srai         s3, zero, 26
                  slli         a2, s10, 23
                  or           s4, a2, a2
                  divu         t1, t1, a3
                  mul          s4, a1, s0
                  and          s10, t4, s10
                  c.srli       a4, 31
                  xori         s8, s11, -430
                  ori          a3, zero, -1292
                  sll          s11, s2, s8
                  srl          t4, ra, t2
                  slti         s1, sp, 920
                  c.sub        a3, a0
                  c.addi       s7, 15
                  xor          t5, ra, a0
                  lui          s8, 480665
                  c.sub        a4, s0
                  srli         s2, t6, 8
                  c.lui        a0, 19
                  c.srai       a3, 2
                  c.addi       a4, 14
                  slli         s2, t2, 1
                  c.mv         s3, s8
                  mulhu        a3, a1, t2
                  nop
                  sltiu        a5, s2, 150
                  rem          gp, tp, s4
                  sra          ra, s0, t2
                  sll          s8, ra, a3
                  xor          a4, sp, ra
                  srli         s8, s11, 1
                  lui          s10, 588623
                  c.mv         s2, s1
                  sltu         a4, s11, a0
                  c.xor        s1, a1
                  lui          s7, 21331
                  mul          s4, s3, s7
                  andi         t2, s6, -1791
                  xori         t6, t3, 676
                  c.lui        a1, 13
                  mulhu        a7, t5, s6
                  or           gp, a4, a6
                  slti         a5, tp, -1797
                  mulhu        a0, s9, a4
                  divu         t6, a2, a0
                  lui          s7, 539434
                  auipc        s8, 44599
                  mulh         t6, s4, a1
                  div          s5, a6, a3
                  c.xor        a4, a1
                  slti         t3, s6, 1206
                  srai         s4, t4, 5
                  c.srai       s1, 10
                  add          t6, s5, ra
                  mulh         s7, a4, a7
                  c.and        a0, a4
                  sltu         s2, s7, tp
                  sltu         tp, s6, t3
                  c.add        gp, a7
                  c.xor        a4, a4
                  rem          zero, gp, s3
                  c.sub        a0, a4
                  srli         a7, a1, 5
                  c.srai       a4, 8
                  mulh         a0, a3, s1
                  c.sub        a3, a0
                  c.lui        a3, 11
                  xori         s7, a5, -2045
                  mulhu        a4, s3, a4
                  andi         s9, a5, 1132
                  rem          t5, s7, s2
                  div          ra, s0, t1
                  and          s7, s5, gp
                  srai         a0, s4, 30
                  divu         s10, tp, a6
                  add          t6, s5, zero
                  add          a7, t4, s2
                  sll          a0, zero, s10
                  nop
                  slti         t2, s4, 903
                  c.andi       s1, 13
                  c.slli       a3, 4
                  sll          a1, s9, s9
                  sub          ra, s2, a0
                  nop
                  c.and        a0, a1
                  slti         s1, s2, 982
                  sra          s8, a0, s4
                  lui          a0, 270563
                  nop
                  c.sub        a1, a4
                  c.mv         a1, a6
                  c.and        a3, a3
                  andi         t2, a6, 472
                  c.add        s3, tp
                  slt          a7, s0, a5
                  c.lui        t1, 13
                  mulh         a7, t4, t5
                  srai         s3, s5, 31
                  mulh         a3, gp, s6
                  c.xor        a2, s1
                  c.xor        a5, a3
                  addi         t0, s9, 211
                  c.and        a0, a5
                  slt          s7, a3, a5
                  divu         s9, a6, a6
                  sltu         ra, tp, s3
                  c.slli       a1, 15
                  mulhsu       gp, a2, s2
                  remu         s10, a0, a7
                  mulh         s1, a1, ra
                  divu         ra, gp, t2
                  c.mv         t5, s9
                  srl          zero, s3, tp
                  add          s6, a5, a0
                  xori         s9, s11, -1918
                  xori         s10, s3, 1658
                  sltu         s8, s4, tp
                  c.slli       t1, 2
                  sra          s10, tp, gp
                  mulh         s8, a6, s4
                  c.or         s1, s1
                  srai         s1, s8, 31
                  rem          tp, s0, t0
                  add          s2, s6, zero
                  ori          a7, s5, -364
                  c.mv         a2, a6
                  slli         t6, gp, 31
                  sra          zero, a4, a6
                  remu         s5, ra, t5
                  c.li         s10, -1
                  c.lui        a7, 2
                  srai         s9, s11, 8
                  sltu         t5, a3, t6
                  auipc        gp, 260632
                  divu         s4, a4, a3
                  c.slli       a5, 16
                  nop
                  auipc        a2, 66513
                  nop
                  auipc        s2, 892946
                  c.or         a0, s0
                  c.nop
                  nop
                  addi         t1, sp, 950
                  slti         s5, a2, -1827
                  c.slli       a0, 23
                  sra          t4, a2, a1
                  c.srli       a1, 31
                  sll          a4, s8, a5
                  sltiu        a0, a2, -713
                  nop
                  c.add        s1, a1
                  xori         s9, a5, -505
                  sltu         t4, t6, a2
                  mul          gp, a1, s1
                  mul          t5, a3, ra
                  c.srai       a2, 25
                  sltu         s3, a4, a4
                  addi         a4, s0, 949
                  nop
                  c.and        a4, a4
                  c.lui        s4, 18
                  c.srli       s1, 11
                  c.li         s10, 19
                  lui          a7, 363701
                  c.nop
                  mulh         s8, s4, zero
                  andi         s4, t0, 1987
                  sra          s2, tp, t5
                  sra          t3, s7, zero
                  slti         a0, t1, -392
                  mulh         s3, a1, s8
                  andi         s9, a4, 384
                  srl          a0, s10, s2
                  ori          s8, s9, -1850
                  mulhu        t1, a1, a1
                  xori         s10, s4, 355
                  c.slli       t1, 9
                  divu         gp, s4, t1
                  andi         t0, t2, 1689
                  sra          s4, tp, t2
                  andi         s7, t5, 268
                  slt          t0, s8, tp
                  rem          s6, t5, s1
                  ori          s9, s1, 1994
                  rem          zero, s2, a3
                  mulhu        t2, a2, s9
                  slti         t2, tp, -788
                  sltiu        gp, t5, 161
                  andi         t2, s7, -1360
                  or           s2, t5, a2
                  c.or         a5, s1
                  c.li         s3, -1
                  andi         ra, s4, -619
                  nop
                  c.mv         t5, a6
                  nop
                  c.mv         s6, t2
                  or           s9, a6, t6
                  sltu         t4, s4, s6
                  mul          s10, s8, s11
                  sra          s10, a2, gp
                  divu         gp, a7, s1
                  remu         t1, s11, t0
                  c.lui        s8, 5
                  lui          tp, 573219
                  c.slli       s4, 5
                  slli         t5, s11, 3
                  sltiu        a1, t4, 1464
                  nop
                  c.mv         t3, t2
                  slt          t2, s7, s3
                  c.and        s1, s0
                  sltu         s4, s2, t6
                  andi         s2, t2, -1131
                  c.mv         a4, t3
                  c.nop
                  xori         s6, a0, -1474
                  c.srai       s1, 29
                  div          s9, gp, t1
                  c.lui        ra, 11
                  c.srai       a4, 19
                  slti         s3, gp, -1463
                  mulhu        gp, t5, t6
                  c.add        tp, a7
                  c.srai       a2, 1
                  srli         t4, t4, 15
                  sll          s2, tp, s3
                  slti         s8, t2, -1614
                  srl          s4, s8, s1
                  c.addi       a3, 29
                  c.nop
                  divu         s11, s0, s7
                  c.srli       a1, 12
                  mulhu        t1, t4, a4
                  mulh         s11, sp, a0
                  c.add        gp, s11
                  c.addi       a1, -1
                  sltiu        t1, tp, 1415
                  c.srai       a5, 23
                  add          s10, a5, s10
                  srl          s11, s8, sp
                  divu         s8, s0, a7
                  auipc        t2, 315071
                  c.sub        a5, s1
                  addi         s4, s9, 25
                  c.lui        s4, 24
                  c.and        a0, a4
                  c.mv         s11, s10
                  auipc        s10, 659168
                  sltu         s11, s9, t4
                  addi         s11, zero, -1061
                  sll          t5, s11, a1
                  sll          a0, t6, s5
                  c.slli       s5, 24
                  sll          a0, s2, a4
                  c.lui        s9, 13
                  mul          gp, t0, a0
                  c.addi       s3, 3
                  c.sub        a5, a1
                  ori          s4, s5, 1649
                  auipc        t2, 738971
                  mulh         a4, gp, t1
                  c.srli       s1, 9
                  rem          s9, sp, s7
                  c.addi       s1, -1
                  slti         s11, t3, -740
                  xori         s7, s4, -119
                  sltu         t6, gp, ra
                  c.mv         s2, s5
                  div          t3, s8, ra
                  sltu         zero, a4, a3
                  andi         a1, t3, -196
                  c.add        s8, t6
                  xori         s2, s5, -325
                  c.srli       a3, 2
                  c.nop
                  c.addi       s4, 7
                  slt          s2, s10, tp
                  mul          a1, s10, s1
                  c.srai       s1, 13
                  c.and        a4, a1
                  ori          a3, a4, 727
                  ori          s6, a6, 290
                  sub          a3, s1, a2
                  sub          t3, s0, s8
                  sll          a4, ra, t3
                  c.lui        a7, 9
                  c.srli       s1, 22
                  sltu         a4, sp, s7
                  c.nop
                  c.li         s5, 27
                  slli         s3, t0, 25
                  srl          t4, s2, s1
                  mulh         s3, t0, a4
                  sltu         a1, a3, a1
                  lui          a2, 197507
                  c.lui        s6, 25
                  srai         zero, a3, 29
                  c.srai       a0, 3
                  c.lui        a7, 17
                  remu         t1, t1, zero
                  sltiu        s2, a4, 57
                  mulh         s7, t6, t5
                  c.xor        a2, a4
                  c.srli       a3, 30
                  srl          t3, t0, a0
                  c.slli       s10, 31
                  mulh         tp, s0, t1
                  sra          t3, t1, sp
                  srl          s10, t0, a1
                  srai         s4, a2, 18
                  addi         s10, s11, 619
                  auipc        s1, 639134
                  divu         s6, t2, s10
                  and          t3, t5, a6
                  c.or         a3, a1
                  srli         s8, t5, 19
                  mul          t1, s1, s8
                  addi         s2, a2, 1984
                  srli         s5, s9, 9
                  c.slli       t1, 19
                  rem          t5, s10, a5
                  nop
                  c.li         gp, 3
                  addi         s2, t2, 1101
                  c.lui        s11, 1
                  mulhsu       tp, a4, a0
                  c.slli       a0, 1
                  mulhsu       s4, sp, a3
                  xor          s7, t3, s5
                  srli         a2, s0, 7
                  sub          s9, t6, s10
                  remu         t2, s4, s8
                  slt          a7, a5, a1
                  c.or         a5, s1
                  andi         a5, a0, 738
                  sltiu        s10, a7, -1168
                  c.addi       tp, 5
                  add          tp, s10, a2
                  andi         t4, t0, -441
                  c.add        a2, s1
                  slti         t3, a7, -837
                  srli         s4, a1, 19
                  mulhu        a7, gp, t3
                  mul          a4, a6, a2
                  nop
                  srli         s1, s3, 24
                  c.andi       a1, 3
                  c.slli       t0, 2
                  rem          a3, t5, s8
                  c.andi       a0, 22
                  add          s9, a7, tp
                  auipc        s4, 535017
                  sub          t1, s2, tp
                  divu         s5, s11, a2
                  c.nop
                  c.andi       a3, 4
                  div          a1, t3, t5
                  ori          s3, t6, -1572
                  andi         a0, a4, -357
                  slt          t6, t5, s3
                  nop
                  xor          s3, a2, t1
                  remu         a2, s4, s3
                  slt          a2, s2, t1
                  c.or         a3, s0
                  slli         zero, a7, 17
                  sltiu        s6, a7, 1076
                  mulhsu       s5, ra, a0
                  nop
                  slt          s7, s3, a1
                  mulh         tp, a1, s5
                  remu         t2, s4, t5
                  c.add        t0, s0
                  c.srli       a2, 9
                  or           s4, sp, ra
                  or           t4, s5, t6
                  c.li         a2, -1
                  c.srli       a2, 11
                  sub          ra, s8, a5
                  c.lui        t4, 17
                  nop
                  c.sub        a2, s1
                  sltu         s9, s0, gp
                  srl          t4, sp, s4
                  mulhu        t1, gp, a2
                  sll          tp, s8, a1
                  divu         s2, ra, t1
                  srli         zero, s8, 25
                  c.slli       t2, 31
                  c.addi       s2, 20
                  c.mv         s1, t5
                  c.nop
                  div          s5, s5, s2
                  and          s5, gp, a7
                  c.srai       a2, 20
                  c.and        a3, s1
                  c.nop
                  div          a7, a3, s1
                  xor          t0, s0, sp
                  c.slli       t0, 19
                  sub          s5, t3, s11
                  c.xor        a5, a1
                  sub          a2, s11, gp
                  c.lui        tp, 11
                  c.or         a1, a4
                  srai         s4, t4, 21
                  c.andi       a4, 13
                  andi         s10, s1, -1355
                  c.and        a3, a0
                  slt          s11, s1, s0
                  slli         s7, s6, 28
                  slli         s7, s4, 26
                  srl          ra, s0, s7
                  c.xor        a5, a3
                  addi         t5, t5, -912
                  auipc        s8, 584350
                  c.slli       a1, 5
                  slti         t1, t6, -1419
                  srl          a4, s7, a4
                  c.and        a2, a1
                  c.lui        s10, 12
                  mulh         s2, sp, s5
                  c.nop
                  c.nop
                  andi         t6, gp, -324
                  srli         t5, s5, 23
                  addi         s10, s10, -805
                  mulhsu       s8, ra, t3
                  divu         gp, a0, t1
                  srli         a0, a2, 21
                  sltu         t5, s4, t6
                  c.slli       t6, 15
                  c.slli       s3, 16
                  auipc        t0, 443828
                  mul          s9, s7, s8
                  slti         gp, a1, -400
                  c.xor        a3, a2
                  addi         a0, a6, -795
                  mul          s2, t6, s0
                  slt          s1, s9, s0
                  or           zero, a6, s6
                  c.xor        a3, a1
                  c.mv         s5, s3
                  sltiu        a2, ra, 1911
                  srli         a5, s4, 26
                  rem          a3, t3, a3
                  mul          gp, s7, a7
                  slt          s5, s3, s8
                  c.nop
                  c.mv         t4, a0
                  c.srli       a1, 28
                  srl          t6, s6, sp
                  sub          t6, s1, t2
                  c.li         s4, -1
                  slti         t5, tp, 1888
                  c.sub        a5, s0
                  slti         t2, a4, 1826
                  mulhsu       s3, s8, t0
                  c.addi       t4, -1
                  andi         tp, t3, -56
                  ori          gp, a1, -1126
                  sub          t6, a0, t1
                  slli         t5, t0, 1
                  c.addi       t1, -1
                  c.slli       s7, 10
                  srl          t5, t2, t6
                  c.sub        a0, a2
                  mulhsu       s3, s11, s1
                  c.li         s11, -1
                  slli         zero, zero, 9
                  addi         s4, s7, 1607
                  sltu         t4, s2, a2
                  c.srai       a2, 9
                  slti         ra, ra, 1479
                  srai         t4, s0, 22
                  c.add        a3, s5
                  c.addi       a2, -1
                  c.sub        a2, a3
                  c.add        t6, sp
                  auipc        t3, 227830
                  mulhu        s7, sp, s7
                  c.sub        s1, s1
                  mulhu        s7, a4, a4
                  divu         s7, t4, t5
                  mulhsu       s9, s9, a3
                  c.andi       s1, -1
                  div          s9, a0, t3
                  mulhu        s2, tp, t6
                  c.mv         s7, tp
                  auipc        zero, 590442
                  sra          ra, s0, a7
                  nop
                  andi         a4, s1, -1325
                  c.xor        a2, a3
                  auipc        s4, 451953
                  c.srli       a3, 15
                  or           t5, a5, s2
                  xor          s4, s8, s3
                  nop
                  auipc        a7, 123196
                  c.andi       a5, -1
                  sltu         a0, gp, s0
                  srli         t0, s7, 3
                  c.addi       tp, -1
                  c.andi       a3, 16
                  rem          s4, s10, zero
                  rem          t5, s7, a0
                  sub          gp, s3, s0
                  srai         a0, s8, 0
                  nop
                  mulhsu       s6, zero, a1
                  mul          s9, a5, ra
                  auipc        t4, 678124
                  andi         t4, s4, -1709
                  srai         s10, s3, 11
                  mul          a1, s10, s3
                  slt          a7, t0, t1
                  remu         t5, t3, a0
                  srai         a7, s5, 17
                  c.mv         ra, s1
                  and          a3, s0, s11
                  divu         s4, t0, s9
                  c.nop
                  sltiu        gp, t4, 591
                  mulh         gp, tp, a0
                  slti         tp, sp, -1526
                  c.or         a4, s1
                  sll          s1, sp, a6
                  ori          ra, t1, 1428
                  c.addi       tp, 17
                  srl          ra, s3, s8
                  addi         gp, a0, -788
                  c.mv         s2, s9
                  mulh         a2, t0, s0
                  xor          t4, a1, t6
                  c.or         a0, a1
                  c.mv         s6, ra
                  c.slli       s6, 3
                  remu         s7, s7, a5
                  nop
                  add          s10, s4, s8
                  sltiu        zero, a7, -1014
                  div          s5, s2, s11
                  andi         s7, s9, 440
                  rem          s4, t6, a5
                  rem          a2, s3, s8
                  sltu         s7, s3, tp
                  slt          s10, a1, a2
                  lui          s11, 694560
                  mulh         a7, t4, s5
                  c.mv         s1, ra
                  nop
                  and          s2, s1, t2
                  c.and        a0, a3
                  nop
                  c.andi       a1, 24
                  c.and        a0, a5
                  c.xor        a0, a5
                  c.or         a2, a4
                  mul          ra, s8, ra
                  srai         s10, sp, 21
                  mulhu        t6, tp, a4
                  slti         t2, gp, -333
                  mulhu        t5, ra, a6
                  srai         a1, s11, 21
                  mulhu        s7, s3, gp
                  auipc        s3, 240273
                  sra          a3, ra, s3
                  c.nop
                  div          t2, t0, a2
                  srai         tp, t5, 1
                  divu         s2, s6, a3
                  sltiu        t3, a2, -1228
                  xori         t0, a7, -1633
                  c.lui        s3, 18
                  and          a2, s11, t0
                  c.sub        a1, a4
                  c.srai       a5, 7
                  c.srli       a0, 21
                  c.add        a2, tp
                  mulhu        t3, s1, s1
                  sll          s2, a2, s1
                  srai         s3, a1, 22
                  andi         zero, t5, -494
                  addi         s7, s4, 411
                  sll          t2, a4, a5
                  andi         a0, s6, 1389
                  c.add        s11, s7
                  xor          a1, t5, t5
                  nop
                  c.or         a0, a2
                  c.and        a5, a2
                  c.lui        s1, 31
                  add          t1, s8, s6
                  c.xor        s1, a1
                  c.add        s9, s8
                  c.slli       a2, 15
                  c.lui        gp, 24
                  add          t5, t1, a6
                  c.mv         a7, a3
                  nop
                  srli         s3, t1, 11
                  c.sub        a1, a5
                  c.li         s9, 14
                  slt          t0, t2, s1
                  slti         t6, gp, -1603
                  mulhsu       s1, s8, s11
                  c.and        a3, a2
                  add          s1, s8, t5
                  c.or         a1, s0
                  mul          t3, a0, a6
                  mulh         t2, s4, s5
                  mulhsu       a3, s2, s10
                  srli         a3, s11, 27
                  rem          a5, a5, a5
                  c.lui        a2, 1
                  sltiu        a7, s1, 56
                  c.nop
                  slt          a4, s9, t5
                  mulhsu       s10, s0, sp
                  mulh         s10, t5, s6
                  c.nop
                  sra          s11, a4, zero
                  ori          s8, s8, 96
                  c.srli       s1, 5
                  c.add        t0, s10
                  c.srli       a1, 19
                  sra          zero, t6, a3
                  add          s4, a3, t6
                  div          t1, a6, a4
                  rem          s2, ra, a5
                  auipc        s3, 252649
                  c.lui        s6, 1
                  sltiu        a7, sp, -2012
                  c.lui        t6, 31
                  c.srai       a5, 1
                  mulhsu       s11, s10, t5
                  xor          a2, s1, s6
                  mulh         s10, gp, t2
                  remu         s10, s11, t2
                  xor          s5, t1, s8
                  or           t3, s2, a2
                  mul          s6, a0, a0
                  nop
                  mul          t1, s6, a4
                  sll          s11, a5, s1
                  slti         a2, t4, -1575
                  c.andi       s1, 20
                  mul          s8, ra, s11
                  sltu         a4, s9, a6
                  c.addi       a0, 24
                  sll          s5, a6, t1
                  c.mv         a2, a2
                  c.srli       a2, 17
                  andi         s4, t0, -852
                  mulhsu       s8, t0, a3
                  slli         s9, a4, 5
                  c.addi       t3, -1
                  c.srli       a5, 17
                  sub          s11, zero, a0
                  c.or         a2, s0
                  srai         gp, tp, 21
                  sub          t5, t6, zero
                  addi         t6, a5, -595
                  c.xor        s1, a0
                  sltiu        s5, t4, 33
                  sra          gp, s0, tp
                  c.or         a2, a0
                  ori          a0, s3, 1073
                  lui          s1, 625124
                  andi         s4, s8, -109
                  c.add        s10, s0
                  rem          gp, a2, s6
                  c.nop
                  addi         t1, a4, 34
                  sub          a5, s6, t1
                  xori         s4, a2, -1161
                  addi         a3, a5, -1039
                  srai         s5, t4, 2
                  c.li         t0, 4
                  nop
                  c.or         a2, a0
                  ori          ra, t1, 1532
                  c.or         a0, a2
                  xor          s1, t6, gp
                  c.srai       a1, 29
                  srai         s11, a6, 31
                  c.addi       s5, 26
                  srli         a2, a1, 12
                  c.lui        a0, 14
                  ori          t0, s8, 1284
                  c.srai       a0, 4
                  xor          s10, t1, s11
                  sub          t4, s2, t0
                  lui          zero, 493492
                  srai         s6, s8, 10
                  xori         t6, t4, -442
                  c.li         t2, 23
                  sra          t1, a5, a1
                  addi         tp, a3, 1525
                  or           t3, s7, a0
                  c.xor        a2, s0
                  srli         s10, s8, 30
                  c.nop
                  slt          a1, s11, a4
                  ori          t6, s7, 284
                  srl          t6, t2, s6
                  c.srai       s1, 15
                  c.add        s8, s7
                  xori         t3, a0, -888
                  andi         a3, s6, 2009
                  srl          a5, s3, s0
                  c.mv         t4, t0
                  mulhu        s2, t1, t6
                  c.nop
                  xori         s1, s0, -1971
                  c.andi       a3, -1
                  remu         s1, t0, s10
                  sltiu        s2, s1, 1228
                  remu         s4, a7, s1
                  c.slli       a0, 9
                  sltiu        s2, t4, -1063
                  mulhsu       gp, s1, a0
                  mulh         gp, ra, s8
                  srai         a4, t4, 20
                  c.sub        a0, a1
                  c.addi       t4, -1
                  slli         a0, s0, 23
                  ori          t6, a2, -1251
                  c.li         s8, 31
                  sub          a2, s10, t6
                  mulhu        ra, s9, s9
                  addi         s1, t4, 1214
                  andi         t5, a5, 616
                  nop
                  slti         t5, s9, 1343
                  mul          a1, a2, a1
                  c.and        a5, a2
                  andi         s3, s11, 513
                  c.addi       a7, 5
                  ori          gp, t6, -1229
                  c.nop
                  lui          gp, 541031
                  ori          a3, s9, 1468
                  or           s8, a7, a2
                  srai         t3, zero, 10
                  addi         s2, tp, 403
                  c.xor        a0, a5
                  c.nop
                  or           ra, s0, s0
                  c.and        a3, a0
                  c.add        a0, a1
                  mulh         t0, a3, t4
                  div          t1, t1, t0
                  mulhsu       a0, a1, s5
                  andi         t0, t0, -1623
                  mul          t4, s5, s0
                  c.and        a1, a2
                  sltu         t6, s1, s9
                  divu         t6, s10, s5
                  sll          s8, s11, t2
                  andi         s10, tp, -206
                  slli         s7, gp, 6
                  srai         s8, a5, 21
                  mul          t5, s11, s4
                  add          a7, t3, a5
                  nop
                  remu         t4, s5, s5
                  xori         a5, tp, 94
                  slt          t4, tp, a2
                  div          s1, s6, a4
                  slt          s1, s9, a0
                  xor          s5, ra, s8
                  remu         s8, s5, s4
                  remu         a5, s8, a5
                  and          s6, s0, ra
                  mulhu        s1, a4, t6
                  divu         ra, s5, t4
                  sra          s3, t4, t1
                  sltiu        s6, s11, -1266
                  nop
                  slti         a2, s9, 99
                  rem          ra, s6, s8
                  slt          a0, s1, a1
                  sub          a5, gp, s0
                  or           s2, s1, t4
                  c.sub        a4, s0
                  div          s7, t4, s1
                  c.srli       a2, 20
                  c.mv         s11, t1
                  divu         ra, a0, a2
                  addi         s11, s10, -107
                  c.or         a0, a3
                  c.or         a2, a5
                  c.andi       a0, -1
                  auipc        ra, 294273
                  sltiu        gp, s4, -383
                  remu         t2, s5, s0
                  srl          t6, s0, s1
                  c.xor        a0, a5
                  or           s9, t5, zero
                  c.slli       s2, 29
                  c.and        a4, s0
                  divu         s5, s5, a3
                  remu         s6, t6, t5
                  mul          a3, s9, s1
                  auipc        zero, 964332
                  sll          s1, a2, s1
                  nop
                  mulh         ra, s9, a3
                  mulhu        s11, s9, t4
                  mulhu        s5, a2, t3
                  c.li         t1, 5
                  rem          a4, s10, t2
                  and          a2, s11, a1
                  addi         a2, t0, -610
                  divu         t6, s7, s8
                  auipc        t4, 854187
                  divu         s5, s2, zero
                  sub          a5, s2, tp
                  c.srli       s1, 4
                  c.mv         a5, s8
                  c.andi       a1, -1
                  sra          zero, sp, t2
                  c.lui        a0, 13
                  xori         a1, t6, 740
                  c.lui        a2, 18
                  srai         a5, s4, 13
                  sub          a5, s9, gp
                  srai         s8, t3, 8
                  c.xor        a0, s1
                  c.or         a5, s1
                  mul          t4, s1, s7
                  c.addi       gp, -1
                  c.or         a4, a0
                  slli         s10, s2, 23
                  sltiu        a0, s5, -1024
                  mulhsu       t0, t2, s8
                  c.add        gp, s9
                  srl          t6, t0, t0
                  c.nop
                  sra          t0, s2, s1
                  auipc        s6, 781819
                  addi         a1, s7, 1994
                  xor          a2, s2, s2
                  srl          a7, a7, a2
                  sub          s5, s3, t5
                  div          s5, a4, s2
                  remu         a1, s1, t4
                  ori          a7, s2, 1954
                  c.lui        tp, 4
                  c.or         a0, a1
                  c.slli       t3, 9
                  srli         a3, sp, 12
                  auipc        a2, 231800
                  mulhsu       a2, s4, gp
                  sll          t4, s5, ra
                  or           t0, zero, s1
                  sltiu        zero, zero, 1734
                  c.addi       gp, -1
                  slt          tp, s0, s1
                  or           s8, tp, t5
                  c.nop
                  srli         t4, t1, 24
                  div          ra, a4, t5
                  sra          s9, s0, a6
                  sltiu        a7, s3, 1833
                  c.addi       a5, -1
                  rem          gp, s2, a0
                  srl          s2, a2, t6
                  sub          a0, a4, a2
                  mulhu        a3, t5, gp
                  mulhu        t6, a6, a0
                  c.slli       s9, 5
                  div          s2, a3, t5
                  c.nop
                  sltiu        s9, zero, -30
                  c.slli       s10, 30
                  andi         t2, t1, 1076
                  sltiu        ra, a0, -574
                  c.mv         a5, ra
                  nop
                  c.andi       a2, 26
                  c.lui        a1, 24
                  srai         t4, a5, 30
                  c.and        a3, a1
                  c.addi       a4, 17
                  xor          s2, sp, t0
                  rem          a0, s8, s5
                  mulhu        zero, s9, sp
                  c.addi       s9, 16
                  sltiu        s8, s1, -227
                  div          s7, a7, t5
                  srl          ra, s5, s11
                  c.add        s8, gp
                  add          s1, s7, a3
                  srl          t0, s7, s2
                  c.li         s9, -1
                  mulhu        t5, s8, a7
                  lui          a0, 840209
                  nop
                  sll          a2, t4, t2
                  nop
                  c.andi       a3, -1
                  sub          s8, t6, s2
                  c.xor        a2, a3
                  c.and        a3, s1
                  slli         s6, s1, 31
                  c.nop
                  c.andi       s1, -1
                  lui          ra, 410230
                  ori          s8, a1, -1773
                  sltiu        t6, s7, -1837
                  sltu         t0, s6, a7
                  sub          a3, t6, s9
                  andi         a0, s3, 1033
                  slli         t1, t6, 13
                  lui          s2, 616015
                  remu         a7, t3, zero
                  c.slli       s7, 13
                  xor          a2, t1, a1
                  xor          t6, a6, t1
                  ori          t2, s2, 1714
                  mulh         tp, ra, t0
                  lui          s1, 903526
                  c.li         t6, 26
                  div          s3, s2, s0
                  c.slli       s2, 25
                  c.add        s2, s7
                  divu         t4, t1, s7
                  ori          s5, a4, -1429
                  addi         s5, s4, -943
                  c.li         a2, 0
                  c.addi       a3, 29
                  rem          s5, t2, a6
                  lui          s10, 335499
                  slli         a5, s10, 15
                  slt          tp, s4, s8
                  nop
                  rem          s4, t0, t3
                  c.srai       s1, 22
                  c.mv         s11, gp
                  nop
                  c.and        a3, s1
                  div          ra, t2, s4
                  slli         s8, zero, 3
                  add          t3, a3, a4
                  andi         s10, a7, 2003
                  c.srai       a2, 12
                  xor          s2, s7, s4
                  div          s10, tp, zero
                  ori          s11, s8, -1033
                  c.mv         a0, sp
                  c.add        a1, gp
                  c.andi       a0, -1
                  xor          s1, t5, t2
                  srli         s7, s4, 9
                  div          t3, s11, t2
                  remu         s9, s4, a3
                  c.sub        s1, a1
                  c.and        s1, s0
                  slli         a2, s7, 30
                  c.slli       a2, 4
                  mul          s2, s11, s11
                  c.add        gp, a7
                  sltiu        t2, s5, -1472
                  xor          zero, s4, s0
                  srl          s2, a6, s1
                  and          t5, a3, s4
                  c.lui        s2, 11
                  or           tp, a2, s9
                  rem          t0, t4, a2
                  srl          a7, a2, tp
                  c.nop
                  rem          t1, s2, s9
                  div          s10, t4, ra
                  nop
                  rem          s6, a6, sp
                  c.sub        a0, s0
                  c.addi       ra, 5
                  srl          s2, t2, ra
                  sltiu        a2, a2, 657
                  sll          t1, s11, t2
                  sll          s8, t0, a2
                  and          zero, a2, sp
                  srai         a4, s11, 15
                  c.lui        t5, 4
                  lui          zero, 218064
                  or           t3, a5, s2
                  c.and        a4, a0
                  c.andi       a2, 2
                  mulhsu       t2, a1, t0
                  addi         s9, s5, -254
                  add          a3, s10, t2
                  c.slli       s5, 19
                  c.andi       a2, -1
                  mulh         t5, s0, a7
                  remu         a0, a6, a3
                  auipc        t4, 718707
                  mulh         t4, tp, s10
                  slli         a2, a2, 2
                  sra          t2, t2, a4
                  c.sub        a0, a2
                  c.and        a3, s0
                  sll          zero, s5, t5
                  remu         s1, t1, t6
                  mulhu        a0, a0, a5
                  slli         a0, s0, 21
                  c.slli       s3, 29
                  mulhsu       gp, s3, t0
                  c.srai       a0, 22
                  divu         t5, t2, s9
                  c.and        a2, a0
                  sub          t3, s3, gp
                  sltu         t2, a1, s4
                  rem          a7, a5, t3
                  sra          t3, a3, t3
                  c.xor        a0, a0
                  slli         a0, a3, 7
                  add          s6, s4, t1
                  addi         zero, s1, 1318
                  c.lui        t6, 20
                  add          s9, t6, a1
                  c.xor        s1, a3
                  andi         s3, a5, -2017
                  c.slli       tp, 26
                  ori          s7, sp, -1653
                  c.slli       tp, 26
                  slli         s11, s0, 21
                  c.addi       s8, -1
                  or           a2, s5, s3
                  ori          gp, s8, -1831
                  slti         t1, ra, 179
                  ori          s1, s2, -1592
                  addi         s7, t0, -1747
                  ori          s5, t1, 877
                  srli         t4, a1, 17
                  mul          a5, s0, s0
                  div          s1, s11, a1
                  c.srli       a0, 14
                  sub          tp, s5, s9
                  mulh         tp, s5, t5
                  c.xor        a4, a4
                  lui          a7, 599841
                  divu         a7, s5, s10
                  sra          gp, gp, s8
                  srl          t4, s7, t4
                  remu         s7, s10, a4
                  slti         gp, a5, -1899
                  mul          s1, s1, t4
                  c.srli       s1, 3
                  sll          s10, s5, s0
                  c.and        a3, a5
                  sll          s3, s8, s0
                  mulhu        s11, zero, t6
                  lui          s8, 72993
                  add          t1, t3, s0
                  slt          t1, sp, s2
                  auipc        s3, 417397
                  c.andi       a5, -1
                  c.sub        a4, a4
                  c.and        a5, a2
                  c.srai       a0, 12
                  c.or         a0, s1
                  c.xor        a0, a4
                  or           t2, s9, ra
                  c.nop
                  c.mv         a7, s6
                  mulhsu       t5, s5, a6
                  c.srai       s1, 3
                  divu         s2, zero, s5
                  sltu         t0, s5, s5
                  xori         s2, t2, 681
                  slt          a0, a7, s5
                  sltiu        t6, t3, -513
                  slti         a7, a4, -753
                  sltu         a3, a3, a0
                  sra          zero, ra, t0
                  c.sub        a5, a5
                  c.sub        a2, a3
                  c.or         a1, a5
                  or           s10, t6, s10
                  sltu         a0, t0, s7
                  rem          a3, a3, t6
                  sltu         s6, tp, s7
                  andi         s1, s11, 1466
                  mulh         a4, a1, a4
                  ori          t2, s0, 588
                  mulh         s8, s6, t6
                  srl          zero, s10, zero
                  sltiu        t1, a4, 199
                  srai         gp, t2, 9
                  nop
                  and          a0, s11, t3
                  sub          s2, s3, a1
                  div          s5, t6, zero
                  add          s4, s6, a2
                  or           tp, t3, s4
                  nop
                  lui          t1, 99741
                  c.li         a0, -1
                  slt          a4, s2, t0
                  c.or         s1, a0
                  add          t4, s8, t0
                  div          s11, s9, t6
                  auipc        t2, 927568
                  mulhsu       a5, s11, a3
                  srai         zero, s10, 29
                  sltiu        a5, tp, -1670
                  mul          s5, sp, s6
                  nop
                  sltiu        t3, s2, -600
                  c.nop
                  or           s4, t2, s6
                  andi         s3, s3, -1814
                  and          t1, t4, a7
                  sltu         s1, s11, s5
                  sltu         s11, zero, t0
                  slt          s8, a0, s9
                  c.li         a5, -1
                  slli         s5, s4, 30
                  srli         t1, a6, 15
                  ori          s8, s4, -1063
                  c.slli       s5, 1
                  c.slli       a3, 12
                  xor          s4, s3, tp
                  c.mv         s2, s5
                  c.li         s6, 2
                  sub          t1, a1, a6
                  add          zero, t2, tp
                  c.slli       t1, 26
                  and          a2, a1, gp
                  c.and        a5, a2
                  div          s1, s6, s5
                  slli         s9, tp, 3
                  mulhu        a5, s8, t1
                  c.xor        a2, s1
                  auipc        s5, 962906
                  xori         s2, sp, 475
                  c.slli       s7, 3
                  sra          a3, t0, a5
                  sltiu        a0, s0, -916
                  slli         zero, a3, 4
                  divu         s1, s5, s1
                  c.or         a5, a4
                  srli         s4, a1, 18
                  c.mv         a3, a1
                  sra          zero, s5, s6
                  divu         s1, gp, s0
                  c.mv         s3, tp
                  c.addi       s1, -1
                  c.li         s8, -1
                  add          t6, ra, s2
                  andi         a7, s1, -174
                  c.lui        a4, 8
                  c.or         a3, a2
                  xori         a0, s11, 1241
                  c.addi       s8, -1
                  c.and        s1, a3
                  c.andi       a2, 14
                  c.xor        a3, s1
                  sltiu        t3, s3, 501
                  slli         t5, ra, 2
                  c.li         s2, 16
                  c.andi       a3, -1
                  sltiu        zero, t3, -372
                  sra          s5, s5, s4
                  c.andi       a2, -1
                  slli         a1, s8, 16
                  c.sub        a2, a2
                  add          s1, a3, t6
                  add          s3, s0, a4
                  sub          s8, s2, s8
                  c.li         a3, 5
                  sll          s9, s10, s6
                  add          s4, a7, s2
                  srai         tp, t0, 4
                  ori          a1, ra, 1382
                  c.addi       s6, -1
                  auipc        s7, 837182
                  c.mv         s2, gp
                  c.li         s7, 0
                  c.srli       a0, 29
                  c.li         a4, 24
                  sltu         s11, t4, ra
                  sltiu        a4, t2, 1815
                  sub          t4, s1, s11
                  rem          s2, s2, s11
                  lui          tp, 663282
                  c.mv         s3, s5
                  sub          zero, t1, a7
                  c.li         tp, 30
                  addi         a7, s1, 1883
                  mulh         a3, t6, s0
                  or           t0, gp, a0
                  c.nop
                  c.and        a4, a3
                  sub          tp, s6, t1
                  sll          s2, s3, a6
                  c.sub        s1, a5
                  andi         s6, a5, -1610
                  srl          s3, a4, s11
                  srl          s9, t5, s4
                  divu         a4, zero, t2
                  mul          s1, t4, zero
                  c.srli       a2, 21
                  c.srai       a0, 23
                  divu         a0, a7, t2
                  c.sub        a2, a0
                  nop
                  c.lui        t1, 22
                  c.srai       a2, 25
                  ori          s10, s2, 368
                  c.slli       s5, 2
                  c.li         s7, -1
                  add          zero, a0, t2
                  nop
                  c.addi       a2, -1
                  srai         a0, a2, 12
                  c.or         a3, s0
                  xori         zero, sp, 1370
                  c.and        s1, s1
                  sltu         s1, t5, a4
                  mulhsu       zero, a2, a3
                  c.srli       s1, 9
                  c.nop
                  c.addi       s2, 20
                  sltu         a3, t2, s1
                  slli         a2, s6, 27
                  div          zero, ra, s8
                  ori          s6, a1, -54
                  addi         t3, a4, 1868
                  c.addi       t0, -1
                  div          s11, gp, a3
                  divu         a2, ra, t2
                  mulh         s2, s9, s7
                  slt          t4, a2, s6
                  mulhsu       s7, a1, s9
                  add          ra, a0, s4
                  ori          a0, s3, 45
                  c.slli       s3, 21
                  rem          t0, t2, a4
                  slli         t0, sp, 15
                  sll          gp, t5, s1
                  sltiu        s6, s4, -1060
                  and          t4, t5, a1
                  c.lui        t6, 11
                  auipc        t3, 58596
                  add          s10, a7, s8
                  nop
                  c.lui        a0, 19
                  nop
                  c.srai       a5, 31
                  sll          s7, a5, s4
                  c.srai       a4, 24
                  c.li         s7, 29
                  slti         ra, s9, 431
                  xori         gp, a6, 1696
                  sll          s3, gp, s6
                  srli         zero, gp, 17
                  c.sub        a0, a5
                  c.mv         t5, t5
                  addi         tp, t5, -186
                  xori         s8, s0, -1726
                  slti         t2, a0, 551
                  sra          ra, sp, s7
                  lui          t6, 563359
                  sub          t3, t6, s11
                  srai         ra, s4, 7
                  c.sub        a4, a2
                  c.xor        a0, s0
                  and          a1, s1, t0
                  c.sub        a4, a1
                  or           a5, zero, zero
                  c.nop
                  srai         a5, s11, 21
                  xori         t4, tp, -76
                  mulh         a3, t4, s1
                  slli         t4, s1, 19
                  c.sub        s1, a1
                  c.xor        a1, a0
                  rem          ra, a3, a6
                  c.slli       s6, 14
                  remu         s8, s11, s5
                  sll          ra, t1, a0
                  c.add        s7, t3
                  c.or         a3, a2
                  divu         s11, s0, t0
                  sra          t1, tp, t2
                  c.slli       ra, 26
                  c.or         a0, a0
                  auipc        a2, 1009693
                  srai         s7, s10, 10
                  c.and        a0, a4
                  ori          t3, s0, -1839
                  ori          t3, a7, -500
                  srl          t3, a5, ra
                  div          s2, s8, a2
                  c.li         a5, -1
                  divu         s2, gp, t1
                  mulh         s4, ra, s5
                  sll          a0, a0, t4
                  c.srai       a1, 21
                  c.addi       a7, -1
                  srli         a1, s2, 4
                  c.or         a0, a2
                  slt          t3, a2, s4
                  c.add        a3, s6
                  or           s10, zero, t3
                  c.andi       s1, 18
                  or           s5, s9, s2
                  addi         s2, s5, -417
                  auipc        t2, 956277
                  c.sub        a2, a4
                  xori         a3, s11, -345
                  div          s10, a7, t6
                  addi         s10, s6, -1909
                  nop
                  c.li         a0, 30
                  c.lui        a5, 28
                  addi         zero, a1, -1594
                  sltu         s5, s8, t3
                  c.xor        a1, a4
                  ori          gp, sp, 1927
                  ori          s8, a4, 563
                  c.nop
                  mulhsu       s8, ra, t5
                  rem          s1, zero, s3
                  slti         t1, a2, -67
                  div          s4, s9, s5
                  c.li         a2, -1
                  srli         t1, a3, 6
                  mul          s1, a6, a3
                  andi         t3, s10, -1501
                  ori          a1, s0, 122
                  c.srai       a4, 25
                  c.li         a1, 1
                  slli         s2, tp, 19
                  auipc        a1, 855383
                  mulhu        t1, s9, sp
                  srai         s8, s5, 18
                  div          a1, a6, a6
                  c.nop
                  srai         a3, s8, 10
                  c.srli       a3, 2
                  mulhsu       t3, tp, a7
                  divu         zero, a1, s3
                  c.li         t1, -1
                  add          s8, a2, s1
                  slti         s8, s2, 1243
                  and          t6, a5, s3
                  sltiu        s8, s8, 620
                  sra          t4, sp, a0
                  slti         t1, a7, -1314
                  c.or         a3, s0
                  sll          s11, s10, sp
                  addi         s2, s0, -1401
                  c.nop
                  c.add        s10, ra
                  ori          s1, t3, 1424
                  c.slli       ra, 22
                  c.nop
                  div          s5, a4, a6
                  c.or         a3, a4
                  divu         t2, a5, t1
                  rem          a5, a3, s1
                  lui          zero, 953150
                  div          gp, s0, t4
                  slt          tp, s3, s6
                  mulhsu       gp, s6, t1
                  c.xor        a3, a4
                  lui          a1, 86362
                  andi         s1, tp, 1583
                  xori         t4, t4, 370
                  mul          a7, s8, a2
                  sltiu        a3, s3, -1814
                  sub          t3, a4, a4
                  nop
                  slt          a7, s6, gp
                  c.and        a4, a3
                  remu         t6, s9, s5
                  c.slli       a0, 16
                  sub          t3, s1, zero
                  c.slli       a7, 4
                  c.xor        a1, a4
                  c.srai       s1, 21
                  sltu         s1, s2, s5
                  srl          s10, s2, tp
                  c.srli       s1, 15
                  mulhsu       s2, s8, s7
                  nop
                  addi         s4, t6, -898
                  and          a1, s6, s1
                  divu         tp, a6, a4
                  sll          s8, s4, zero
                  mulhsu       s9, a1, s10
                  c.andi       a4, -1
                  c.li         t0, 0
                  slt          ra, t1, sp
                  lui          a3, 931627
                  or           s7, t2, s7
                  add          zero, s5, s2
                  c.li         s2, -1
                  or           t2, s6, gp
                  c.sub        s1, a5
                  c.li         t1, 4
                  add          t0, ra, t4
                  mulhu        gp, a1, s3
                  lui          a4, 32718
                  add          s11, ra, a4
                  remu         s6, s6, ra
                  nop
                  c.addi       a0, 7
                  or           a4, a1, ra
                  ori          zero, a7, -259
                  auipc        s11, 410739
                  div          t6, s4, s11
                  c.srai       a1, 28
                  nop
                  c.add        a5, s3
                  xori         t3, t2, 2013
                  c.lui        s4, 5
                  add          t3, a7, gp
                  c.mv         s5, s0
                  xor          s2, tp, t2
                  sltiu        a0, t0, 297
                  add          t0, a4, s5
                  c.lui        s6, 15
                  c.andi       a5, -1
                  slt          t1, tp, zero
                  mulhsu       zero, s6, s8
                  c.and        a5, s1
                  mulhu        gp, t3, sp
                  mulhsu       t1, gp, t4
                  c.and        a3, s0
                  c.slli       a2, 21
                  c.srli       a0, 19
                  srl          a7, s1, ra
                  srl          s6, s8, t3
                  div          t1, s8, t6
                  mulhsu       a1, s10, a4
                  slt          s8, t4, t6
                  ori          tp, s10, -631
                  sra          t4, gp, s7
                  addi         a3, t1, 1328
                  auipc        tp, 950346
                  c.li         ra, 13
                  slti         s2, a6, -146
                  add          s7, a2, a6
                  div          a2, s0, s0
                  c.add        s4, s8
                  c.andi       a1, -1
                  sra          s4, t5, t3
                  remu         t1, t4, a7
                  mulhsu       s6, t1, tp
                  c.sub        a2, a1
                  sltu         s11, s11, s5
                  c.slli       s8, 31
                  div          a1, a2, zero
                  remu         s6, s10, t3
                  slt          a2, t2, s11
                  remu         s2, a4, a2
                  addi         zero, a6, 517
                  sltiu        s2, t4, -1929
                  sltu         s7, a1, s0
                  divu         a4, t5, ra
                  mulh         a2, t1, a3
                  slli         t3, zero, 28
                  c.slli       t0, 8
                  srl          s4, t6, t3
                  slli         t4, a7, 12
                  add          a3, t4, a1
                  sll          s1, zero, s9
                  sub          t2, t3, s11
                  slti         s7, s0, -1811
                  xor          t1, t6, s2
                  srai         gp, a2, 7
                  srai         t3, t5, 5
                  c.srli       a2, 30
                  mulh         a5, s4, t5
                  c.andi       a3, 28
                  xor          a7, gp, t3
                  ori          s2, sp, 1166
                  c.or         a4, a5
                  sltiu        s9, s1, 936
                  lui          a5, 759127
                  c.nop
                  remu         s7, a5, a3
                  sltu         s3, ra, s0
                  mulhsu       t2, t1, s4
                  mulhu        s6, s5, a0
                  mulh         s4, t2, s3
                  c.lui        s11, 2
                  mulh         s8, a3, s11
                  sra          t4, s0, a1
                  srli         gp, s3, 31
                  c.addi       s7, -1
                  c.lui        s6, 30
                  ori          s8, s3, -328
                  divu         s2, zero, a0
                  slt          t1, s0, s4
                  sub          a2, a7, zero
                  auipc        ra, 399790
                  divu         a3, s5, s2
                  c.srli       a4, 4
                  srl          s4, a2, t0
                  add          s1, s9, t5
                  sll          s2, t6, a1
                  sub          s6, a0, s8
                  slli         t0, tp, 20
                  c.mv         s2, t4
                  mulhu        s10, t4, s4
                  c.lui        t5, 6
                  mulhsu       a0, gp, t1
                  c.andi       s1, -1
                  c.xor        a4, a2
                  sltu         a0, a3, zero
                  xori         a0, a1, -1011
                  divu         s8, a0, s8
                  nop
                  c.nop
                  sltiu        a4, a1, -107
                  xor          t2, a6, s6
                  slti         a3, zero, -1938
                  c.li         s1, -1
                  divu         a5, zero, t6
                  addi         a7, s3, -1645
                  c.lui        s8, 16
                  auipc        s9, 261876
                  c.andi       a1, 22
                  sub          a3, t4, sp
                  xori         a5, s11, -949
                  div          t3, a7, a0
                  c.lui        s3, 10
                  lui          s1, 841437
                  addi         tp, s0, -1724
                  add          s11, t2, s1
                  sltu         s10, s3, a3
                  nop
                  c.sub        a3, s1
                  and          s10, s6, s7
                  slt          a3, a6, s4
                  nop
                  c.xor        a3, a4
                  c.li         ra, 7
                  mulhsu       a0, zero, s4
                  mulhsu       t3, s11, a5
                  c.xor        a3, a0
                  divu         a0, a6, t0
                  c.srai       a5, 28
                  nop
                  srli         a2, t1, 17
                  divu         zero, a0, gp
                  sub          s6, t5, s4
                  mulhu        s3, tp, zero
                  c.srli       a2, 18
                  mul          t2, a0, s5
                  c.srli       s1, 26
                  c.slli       s11, 31
                  c.andi       a3, 1
                  divu         a0, s7, s0
                  c.xor        a5, s0
                  auipc        t1, 1045798
                  c.addi       t5, -1
                  nop
                  slli         gp, s10, 11
                  mul          gp, a3, tp
                  c.li         a2, 0
                  c.lui        a4, 18
                  mulhu        ra, ra, sp
                  c.mv         s2, s10
                  sll          s5, a2, t0
                  c.li         a2, 9
                  c.mv         s1, t1
                  srai         a7, t3, 21
                  rem          s3, t4, a2
                  sll          a0, s11, t2
                  c.srai       a1, 16
                  sltu         s11, a3, t2
                  c.mv         tp, gp
                  sll          s10, a3, s4
                  c.lui        a5, 18
                  sltu         s5, t1, s7
                  rem          zero, zero, s5
                  c.and        a0, a0
                  ori          t4, a4, -613
                  and          a7, ra, s6
                  ori          s8, s7, -585
                  mulhu        s3, a1, t1
                  c.addi       t5, 13
                  xor          s8, s11, s1
                  divu         t1, t0, a1
                  sra          a0, a7, t6
                  lui          s7, 895113
                  srai         s4, s2, 3
                  c.sub        s1, s0
                  srli         a4, s1, 1
                  slli         t3, a4, 20
                  c.or         a0, a2
                  c.and        s1, a4
                  remu         ra, t3, t4
                  c.lui        t0, 27
                  sll          a7, t5, tp
                  remu         zero, t2, a1
                  srai         a0, s7, 15
                  nop
                  c.addi       t6, -1
                  slt          t6, t2, sp
                  ori          s6, s7, -953
                  sltu         s4, t3, s8
                  c.srli       a5, 9
                  c.mv         t3, s3
                  divu         s2, zero, s0
                  sltu         t1, s4, a0
                  xor          a1, a0, a7
                  mulhsu       a5, s11, a4
                  divu         gp, t2, s8
                  ori          a3, s9, -133
                  srai         a7, s6, 27
                  lui          s8, 663493
                  mulh         t4, ra, t6
                  c.addi       s2, 7
                  sltiu        t6, a3, -444
                  c.or         a0, a0
                  rem          tp, s5, t2
                  and          a2, a4, t0
                  c.mv         t4, t0
                  xori         t2, a5, -1105
                  c.sub        a5, a0
                  slt          a2, tp, s7
                  c.mv         t0, s7
                  c.srai       a2, 29
                  sub          t2, t4, s5
                  xor          tp, t3, ra
                  c.lui        tp, 26
                  c.or         a2, a0
                  or           s2, a1, s1
                  c.or         a5, a4
                  rem          a1, zero, s4
                  c.sub        a2, a5
                  mul          s11, gp, a6
                  srai         s9, s8, 20
                  c.addi       t2, -1
                  sra          t5, ra, sp
                  srl          s1, s4, s3
                  c.slli       t2, 9
                  mulhsu       s5, s4, a0
                  ori          t3, a0, 1481
                  mulhu        a7, s0, t0
                  c.or         a4, a2
                  c.lui        t2, 9
                  srai         a5, a6, 24
                  nop
                  nop
                  c.and        a5, s1
                  srli         zero, s3, 31
                  c.and        s1, a1
                  slti         a0, a1, 1367
                  c.addi       t5, 22
                  srli         s9, a2, 9
                  mulhsu       s2, a5, t0
                  srli         s6, gp, 0
                  c.nop
                  and          s10, s4, a7
                  c.slli       a3, 22
                  c.add        a0, t0
                  sra          t3, a0, t0
                  srli         t5, t1, 22
                  sltu         s8, s5, s10
                  slli         s2, gp, 9
                  divu         a2, s10, a5
                  and          t6, t5, s11
                  remu         t5, s2, s7
                  slt          t0, t4, ra
                  nop
                  auipc        t5, 227978
                  auipc        a5, 333781
                  c.sub        a3, a2
                  c.add        a1, s2
                  c.andi       a1, 20
                  slt          tp, a0, sp
                  mulhsu       t4, s4, t0
                  srli         s6, a1, 17
                  slli         a3, a4, 14
                  c.addi       t0, 2
                  c.andi       a0, 4
                  andi         a1, s6, 896
                  srl          s10, s8, t3
                  slli         a0, s10, 4
                  rem          a0, a5, t5
                  mulh         tp, s3, s11
                  lui          t5, 215556
                  c.sub        a3, a4
                  c.lui        a5, 5
                  xor          s9, a5, t3
                  div          s6, s11, s11
                  srai         s11, t4, 18
                  lui          a4, 679198
                  sll          s7, s11, sp
                  c.srai       a1, 2
                  mulhu        a1, s9, s11
                  sub          s4, t1, a3
                  c.sub        a3, s1
                  ori          s7, a6, -389
                  lui          a2, 32611
                  sltiu        a2, a4, 1055
                  c.li         t5, 18
                  nop
                  c.lui        ra, 20
                  c.mv         s4, t3
                  ori          s9, t0, -1977
                  and          s7, a5, tp
                  c.sub        a2, a2
                  c.or         a0, a3
                  add          a2, s10, gp
                  remu         zero, s7, t2
                  c.nop
                  c.add        s11, s4
                  auipc        t3, 574616
                  auipc        t0, 210662
                  xor          t4, t5, a7
                  and          s11, s7, s10
                  srli         t3, a1, 20
                  c.add        ra, s10
                  c.srai       a2, 13
                  remu         s10, t0, t6
                  xori         a3, s10, -452
                  remu         ra, sp, a2
                  and          t5, a1, a6
                  mul          a7, a0, zero
                  mulh         s1, s7, ra
                  xor          s1, sp, ra
                  srli         s11, s1, 4
                  div          s8, s7, a3
                  c.lui        a3, 26
                  c.nop
                  sra          zero, s7, zero
                  c.xor        a4, s0
                  sll          s8, s0, a7
                  add          s2, s3, s8
                  mulh         t5, s4, gp
                  slli         a2, a3, 0
                  sll          t3, s1, a6
                  srai         s1, a7, 5
                  c.srli       a4, 6
                  sra          s8, t0, a2
                  srai         s3, a7, 31
                  mulhu        zero, t6, s4
                  mulh         s1, t5, s7
                  lui          zero, 908763
                  c.nop
                  or           s2, ra, s5
                  c.li         s5, -1
                  rem          s9, a0, tp
                  slti         t4, s3, 1324
                  mulhu        s1, t1, s4
                  srai         s6, t4, 8
                  add          s1, a3, a0
                  remu         s7, zero, t4
                  slt          a7, a2, t1
                  add          s7, sp, s2
                  mulh         t3, a1, t2
                  nop
                  c.xor        a2, a2
                  srl          a3, s0, t4
                  srl          zero, ra, s0
                  ori          s11, s3, 185
                  mulhsu       s7, t1, a5
                  slt          a2, gp, t5
                  andi         s2, a3, -1796
                  mulhsu       t5, s4, t1
                  andi         s2, t1, 1089
                  sub          s8, t5, s5
                  srli         t3, s7, 13
                  c.and        a0, a5
                  sltu         t4, a3, t2
                  c.li         s3, 24
                  sra          s11, sp, sp
                  sltu         t1, a0, t3
                  c.xor        a1, a5
                  sub          s2, s10, s7
                  or           s7, t5, a5
                  sll          a3, a2, zero
                  mulhu        t0, a0, s10
                  remu         s3, t6, s5
                  c.and        a2, a5
                  c.or         a1, a4
                  c.xor        a4, a1
                  srl          s8, a3, gp
                  c.li         s3, 12
                  div          s3, a4, s11
                  sltu         t5, s1, s7
                  nop
                  srli         t3, s10, 30
                  c.srli       a3, 8
                  ori          gp, t6, 1583
                  slti         gp, a4, 1658
                  xor          t2, a4, a2
                  c.slli       gp, 18
                  srli         s2, t0, 22
                  c.li         s9, -1
                  c.xor        a1, a2
                  c.li         t4, 20
                  slti         s2, s1, 943
                  c.or         s1, a0
                  lui          t5, 727539
                  c.and        s1, a4
                  xor          t6, t6, a1
                  mul          s7, a3, s1
                  c.add        a3, t6
                  slli         t3, s1, 29
                  c.mv         s8, s9
                  remu         s1, s10, t5
                  srli         a4, t2, 31
                  mulhu        a5, tp, s6
                  c.srai       s1, 3
                  mulhu        t3, s5, s2
                  addi         a7, s5, -1380
                  nop
                  srl          a2, zero, t0
                  div          a7, s10, s2
                  srai         t4, a7, 10
                  and          gp, a0, s2
                  rem          zero, a0, s2
                  addi         t4, sp, -1930
                  mulh         s8, a1, s2
                  addi         a2, t6, -1597
                  slt          s9, t3, sp
                  add          s1, s9, s0
                  rem          s11, t5, s8
                  c.srli       a0, 31
                  srli         s2, t5, 0
                  sll          s10, s0, a1
                  mul          s7, t6, t5
                  c.sub        a4, a3
                  srli         t6, a5, 29
                  mulhsu       s6, a7, a7
                  mulh         s4, a3, tp
                  c.nop
                  c.or         a2, a1
                  srai         s3, sp, 10
                  c.nop
                  div          a2, t6, sp
                  c.srai       a3, 23
                  c.add        s1, a2
                  c.nop
                  sltiu        a2, t1, -2014
                  srai         s9, ra, 8
                  c.add        s3, s10
                  auipc        t1, 623821
                  c.mv         a2, ra
                  c.addi       a1, 4
                  add          tp, s0, a2
                  mul          ra, t3, s2
                  ori          a4, t3, -1371
                  c.nop
                  sll          s1, s9, s4
                  c.and        a1, a5
                  c.sub        s1, s0
                  c.and        s1, a3
                  c.srli       a1, 6
                  and          s9, s5, s3
                  slti         t5, ra, 1380
                  slt          t4, ra, a2
                  c.lui        t2, 29
                  sltiu        t3, s9, -481
                  c.or         a3, s1
                  mul          t3, a2, s11
                  div          a5, a4, t6
                  srli         s6, gp, 0
                  c.nop
                  c.srli       a3, 17
                  nop
                  slli         s7, s7, 27
                  div          s2, a1, zero
                  sll          a4, s8, a5
                  and          t5, a1, s7
                  add          s1, t0, t3
                  addi         a3, tp, -1576
                  and          a0, s9, tp
                  or           a4, s8, a5
                  div          s10, a2, t1
                  sub          s4, a7, a7
                  xori         tp, gp, -1436
                  srai         s1, a1, 9
                  slt          s10, s5, s3
                  xor          s4, ra, t3
                  sltu         s8, s8, t4
                  xori         a1, a7, 260
                  c.slli       t1, 3
                  c.and        a4, s0
                  div          a1, s8, s3
                  mulhsu       t3, a5, s3
                  srl          t6, t4, s6
                  sll          t1, s7, s8
                  slti         a4, a7, 384
                  add          s2, a2, t4
                  sra          a4, s9, s3
                  and          s4, s7, a3
                  c.nop
                  ori          tp, a3, -1348
                  mulh         s5, s8, s7
                  mul          zero, s5, t4
                  c.mv         s11, s0
                  divu         s3, a0, t2
                  c.srli       a5, 27
                  c.xor        a1, a0
                  srli         t5, a5, 13
                  remu         t5, t0, a1
                  c.mv         s9, t4
                  sltiu        a1, t1, 315
                  lui          zero, 301130
                  add          t2, a5, s11
                  ori          s9, s11, 665
                  c.sub        a2, s0
                  addi         s6, a3, -865
                  xor          a1, t0, s7
                  c.and        a0, a1
                  sll          s5, s5, a2
                  andi         s9, a1, 2021
                  c.srai       a3, 12
                  c.and        a2, a3
                  c.nop
                  div          a2, gp, tp
                  c.nop
                  and          a0, t2, s9
                  addi         zero, s3, 520
                  c.sub        a1, s1
                  and          ra, t4, s8
                  c.srai       a4, 23
                  c.xor        s1, a2
                  rem          t2, a0, a1
                  div          s1, a3, t6
                  srli         a7, s11, 20
                  auipc        s2, 846060
                  div          t6, a3, a3
                  c.lui        t1, 15
                  xori         a0, zero, 392
                  srai         t0, sp, 28
                  add          t5, t2, s6
                  mul          a1, sp, gp
                  sub          s6, gp, a0
                  rem          s6, a7, s0
                  remu         a0, a4, s11
                  div          s9, s2, a5
                  srli         s9, t2, 27
                  sltiu        s8, s7, -692
                  sll          t1, t0, t6
                  add          tp, a7, t2
                  c.srli       a5, 17
                  c.srai       a0, 8
                  slt          t1, s1, tp
                  c.or         a1, s0
                  auipc        s11, 1002116
                  nop
                  rem          s7, sp, s1
                  sltu         s4, t5, t5
                  c.srli       a3, 1
                  c.xor        a2, a3
                  xor          t1, t5, s9
                  sltiu        a7, a2, -1866
                  ori          a0, t4, 632
                  xori         t0, s2, 185
                  mulhu        s8, s8, ra
                  c.and        a2, a5
                  rem          t2, a5, t3
                  slti         a7, s8, 1805
                  sltu         s2, a2, s3
                  andi         t5, t6, -1840
                  xori         t2, t6, 485
                  nop
                  mul          a1, s4, s11
                  mulhu        tp, a7, s8
                  xor          s7, a7, s2
                  c.andi       a1, -1
                  or           s7, s8, a2
                  c.nop
                  add          a4, t3, s4
                  c.li         s11, -1
                  c.slli       s9, 16
                  sltiu        s6, a5, -289
                  mulhsu       s2, t5, s1
                  c.li         t2, 31
                  slti         zero, s9, 677
                  c.addi       s8, 13
                  srl          s4, a4, s6
                  slt          s7, t3, s8
                  c.lui        s7, 9
                  mulhu        t1, a0, a3
                  c.srai       a0, 12
                  c.andi       a5, 21
                  slli         tp, s6, 2
                  or           s8, s2, s11
                  mulhu        t5, a3, t6
                  sll          s2, a5, sp
                  c.andi       a2, 18
                  sltiu        t5, t6, -1717
                  xor          t1, s4, s1
                  sltiu        s8, a7, 187
                  lui          tp, 345701
                  srl          a5, s11, t1
                  lui          tp, 403168
                  c.lui        a3, 4
                  mul          s5, a3, t2
                  c.add        a1, ra
                  lui          zero, 538948
                  c.add        t0, t0
                  c.slli       s4, 1
                  xor          s2, s10, t5
                  slli         s3, s0, 2
                  lui          a2, 803242
                  sub          a2, s3, a5
                  c.lui        t0, 10
                  and          t4, s1, s3
                  divu         a0, a5, t1
                  xori         s3, a6, 1440
                  c.or         a0, a1
                  c.and        a2, a5
                  c.addi       s7, -1
                  c.nop
                  c.addi       gp, -1
                  c.srli       a2, 6
                  rem          a2, s6, a7
                  c.or         a5, s0
                  sll          t5, s11, s7
                  lui          t1, 101012
                  mul          s9, s6, s5
                  slti         zero, s8, 673
                  c.xor        a5, a0
                  add          s8, t2, s11
                  xor          a7, s4, s5
                  add          t0, ra, tp
                  c.sub        a4, a0
                  c.xor        a0, a0
                  c.slli       a7, 3
                  auipc        a3, 245481
                  mulhsu       t3, t0, s2
                  xor          s4, a0, t5
                  sltiu        s2, a1, -659
                  mulhsu       gp, s9, t3
                  lui          s4, 561364
                  sll          ra, a5, s1
                  slli         a0, s6, 25
                  andi         s6, a0, 383
                  c.li         tp, 19
                  sltiu        t1, s7, 312
                  c.andi       a0, -1
                  sra          s4, s8, a1
                  divu         a7, s0, s7
                  c.or         s1, a0
                  slt          s4, a7, zero
                  srai         tp, a1, 29
                  slt          a4, t5, s3
                  auipc        s4, 499907
                  srl          a5, a4, ra
                  sltiu        s4, a0, 1889
                  sra          t3, sp, s5
                  c.slli       tp, 31
                  sra          s8, s11, t0
                  nop
                  remu         s6, s4, gp
                  slt          t0, zero, s0
                  sltiu        zero, t5, -1515
                  add          s2, s11, s4
                  c.mv         s6, s9
                  nop
                  c.or         a1, s0
                  sltu         t3, s4, tp
                  remu         s5, t5, a3
                  c.nop
                  c.sub        a2, a4
                  c.srli       a3, 6
                  auipc        tp, 80856
                  c.mv         s2, s2
                  c.addi       t3, 28
                  c.or         s1, s1
                  mul          zero, t3, a1
                  nop
                  srai         t6, s0, 4
                  sltiu        s9, a7, 982
                  and          s2, zero, zero
                  c.and        a2, s1
                  mul          t1, a7, s4
                  or           t4, sp, a1
                  srl          s9, s9, s1
                  slt          s7, zero, s11
                  andi         t5, s0, 1102
                  c.add        s8, s2
                  srai         gp, s11, 15
                  mulhu        a7, ra, t3
                  sltiu        a2, a6, -1453
                  c.nop
                  c.nop
                  and          t1, t1, s5
                  mul          t5, sp, a4
                  sltiu        s1, t4, 978
                  rem          s3, s2, s10
                  sltiu        a2, s0, 781
                  addi         s4, s3, -309
                  xori         t4, s1, 1231
                  c.lui        s5, 9
                  add          zero, a7, t5
                  slli         s9, s4, 4
                  xori         s4, s7, -1453
                  srl          t4, s1, ra
                  mulhsu       t4, s5, tp
                  divu         tp, a0, a3
                  c.nop
                  c.slli       s6, 27
                  and          t5, s0, s11
                  auipc        t5, 1046589
                  slti         s8, gp, -608
                  c.srli       a1, 16
                  c.andi       s1, 9
                  srli         s3, s4, 7
                  mulhu        gp, s11, s0
                  c.addi       s2, -1
                  sub          a3, zero, sp
                  lui          a0, 973735
                  srli         s1, t0, 23
                  slt          t3, tp, tp
                  mulhsu       s4, a7, s5
                  addi         t1, t3, -1114
                  c.add        a4, t4
                  slti         a1, s1, 2032
                  andi         t1, s2, 804
                  sra          s10, s2, t5
                  c.mv         s8, s6
                  andi         s11, a3, 1192
                  mulhu        t3, t2, t6
                  slli         a1, tp, 25
                  add          s10, sp, s8
                  sub          s5, a7, t5
                  c.nop
                  slli         tp, s5, 11
                  divu         s11, t5, s4
                  c.mv         s1, s3
                  mul          tp, s5, a2
                  slt          s7, a1, a5
                  c.srli       a2, 19
                  div          t3, s4, s10
                  c.li         a3, 26
                  mulh         ra, s3, ra
                  c.nop
                  c.mv         t4, s8
                  sll          s8, a3, a0
                  c.addi       s3, 5
                  srli         a3, t2, 3
                  c.or         a2, s1
                  auipc        t1, 911857
                  sltiu        a7, s4, 272
                  c.srai       a2, 4
                  sub          s1, s11, s9
                  sltu         s2, ra, s6
                  mul          s1, a0, s7
                  c.srli       s1, 20
                  lui          a0, 738112
                  c.andi       a5, 23
                  add          zero, tp, s9
                  slt          s6, t1, gp
                  rem          a0, s10, s5
                  xori         a5, t1, 1469
                  andi         t1, s4, -869
                  c.srli       a1, 9
                  c.nop
                  c.or         a2, a5
                  sra          a5, gp, s1
                  c.srai       a2, 29
                  c.srai       a0, 24
                  sltu         a5, t5, a0
                  xori         zero, s8, 1129
                  mulhsu       s2, a1, s9
                  remu         t3, t3, a5
                  slli         tp, zero, 19
                  srli         s4, s5, 11
                  c.slli       t4, 27
                  c.sub        a1, a4
                  slli         a4, s9, 12
                  mulhsu       t5, t1, t3
                  auipc        s10, 558820
                  nop
                  xori         a1, s11, 1481
                  srai         s10, s10, 24
                  ori          s1, a3, 1404
                  c.srli       a1, 29
                  srl          s10, s6, t3
                  rem          a1, s5, a1
                  c.srai       a5, 12
                  div          a4, s3, gp
                  slti         s10, s11, -23
                  mul          t0, s5, t4
                  slt          tp, ra, t0
                  c.lui        a4, 9
                  srai         a2, s4, 19
                  add          s4, a1, s7
                  c.mv         s3, t4
                  c.srli       a3, 21
                  xor          t2, s6, s10
                  andi         s1, a0, 1549
                  divu         s3, t1, s7
                  ori          s9, s11, 1349
                  slt          t6, t2, tp
                  sltiu        a4, s7, -278
                  c.xor        s1, a5
                  slli         t2, s4, 27
                  c.mv         a4, s0
                  mulh         s1, t2, t0
                  lui          s4, 570569
                  slli         a7, s6, 23
                  c.li         gp, -1
                  slli         s7, tp, 11
                  sltu         a5, t2, tp
                  xori         a1, s4, 493
                  divu         a7, tp, s0
                  c.lui        t6, 23
                  c.andi       a4, 5
                  and          s7, zero, sp
                  srli         t3, zero, 21
                  slli         t1, a3, 0
                  andi         s2, s1, 1970
                  auipc        t4, 1018472
                  c.add        a1, t2
                  c.slli       a3, 16
                  remu         s10, s6, s6
                  or           a4, ra, t0
                  c.sub        a4, a2
                  srl          t3, a6, s7
                  c.li         s10, 0
                  and          s7, t1, s6
                  mulhsu       a3, s11, s4
                  xori         a3, s5, -1708
                  div          a2, s10, s8
                  sltu         s3, t1, t3
                  c.add        s9, s5
                  c.lui        s1, 7
                  c.nop
                  slti         gp, t0, 1603
                  divu         gp, a4, s11
                  sltu         gp, t2, a0
                  c.li         ra, -1
                  add          a2, a4, t0
                  sll          s6, zero, s6
                  and          ra, s10, s9
                  sltiu        s7, ra, 635
                  divu         a3, a3, t4
                  c.nop
                  srai         s4, a3, 21
                  lui          s6, 79768
                  c.slli       a7, 16
                  xori         a7, a0, 1790
                  c.slli       s9, 12
                  c.mv         s3, t3
                  c.sub        a2, a0
                  nop
                  remu         s4, t3, a4
                  rem          t6, s10, s0
                  sra          t1, s10, s7
                  c.li         t1, -1
                  srai         t5, s10, 27
                  c.add        a3, a4
                  c.srli       a2, 11
                  andi         s1, t6, 811
                  c.and        a0, a2
                  ori          s3, a0, -1586
                  xor          t2, s11, s7
                  xori         s3, a4, 1009
                  c.or         a5, s1
                  and          a0, a6, s9
                  c.slli       tp, 31
                  c.mv         t6, s7
                  c.lui        t0, 8
                  slt          t5, s10, t4
                  sra          a3, tp, s11
                  andi         tp, s5, 823
                  sltiu        gp, s3, -137
                  sll          s8, a4, s2
                  c.xor        a0, a5
                  slli         gp, t3, 12
                  c.or         a5, a5
                  mulhu        s3, tp, t4
                  c.nop
                  andi         tp, zero, 685
                  ori          s7, a1, 1679
                  andi         t5, s9, -599
                  andi         s4, ra, -1381
                  mulhsu       s11, s4, s5
                  c.nop
                  or           s2, a4, a6
                  sll          s11, s5, s10
                  divu         ra, t1, t0
                  ori          ra, t6, -1037
                  auipc        zero, 402973
                  or           s1, a2, gp
                  xor          s8, a1, t1
                  auipc        s10, 535377
                  sub          t6, t0, s10
                  nop
                  add          s8, t2, s0
                  slli         s10, t0, 27
                  c.sub        a1, s0
                  c.andi       a0, 2
                  nop
                  c.lui        s2, 10
                  rem          s8, t3, ra
                  mulh         t0, t1, s2
                  c.addi       t2, 23
                  c.lui        a0, 30
                  divu         s2, s7, zero
                  ori          tp, sp, -254
                  srai         t3, s1, 11
                  mulhsu       a4, t2, s2
                  c.slli       t1, 2
                  c.slli       a5, 11
                  mul          a2, s4, a2
                  c.nop
                  mulhsu       a5, t4, tp
                  addi         s4, a7, 874
                  srai         s5, s2, 26
                  addi         s6, s4, -1268
                  remu         a7, s6, a1
                  mul          tp, a7, s8
                  sub          a3, a4, sp
                  c.sub        a0, a5
                  sltu         t1, a2, tp
                  c.srai       s1, 8
                  xori         t4, s7, -443
                  mulh         s5, s7, gp
                  or           a4, t5, a5
                  or           s8, s9, t2
                  c.slli       ra, 1
                  addi         zero, t0, -1667
                  c.srli       s1, 12
                  c.addi       s11, -1
                  rem          a1, t5, s11
                  or           s4, a4, t5
                  sra          s10, a1, s7
                  c.lui        s5, 5
                  c.mv         s7, t1
                  or           s2, t2, ra
                  c.addi       a5, 25
                  slli         a3, t4, 20
                  c.sub        a0, a0
                  c.andi       s1, -1
                  c.xor        a2, a4
                  or           t1, tp, tp
                  c.slli       a3, 21
                  and          s1, t3, ra
                  mulhu        a2, t0, s7
                  c.nop
                  ori          t4, sp, 956
                  c.add        t2, t4
                  sll          a5, s2, t0
                  mulh         gp, a6, s11
                  div          t0, tp, s8
                  mulhsu       t1, s11, a4
                  c.nop
                  sra          a2, zero, t1
                  c.srli       s1, 10
                  c.addi       a3, -1
                  or           t2, gp, s10
                  c.or         a1, s1
                  lui          tp, 703801
                  addi         gp, s9, -1043
                  srl          s5, s2, t3
                  c.andi       a3, -1
                  mul          a3, s1, t3
                  c.add        a0, sp
                  and          s4, s3, t5
                  ori          zero, s3, -1209
                  and          a4, s0, sp
                  srl          t3, zero, t1
                  sll          tp, t5, s1
                  c.mv         a1, s7
                  srl          s7, a7, a1
                  c.add        s4, a3
                  sra          s2, t0, ra
                  sltu         t4, t6, s9
                  div          t2, t2, zero
                  lui          s1, 63649
                  ori          t2, t6, 1214
                  nop
                  c.and        a1, a3
                  c.li         s1, 3
                  c.add        t3, s10
                  srai         s10, ra, 14
                  srai         gp, s7, 5
                  slti         s3, s4, 1266
                  c.and        a0, a3
                  srai         t3, s2, 31
                  c.srai       a0, 8
                  c.nop
                  add          s1, s4, t3
                  c.sub        s1, s1
                  srli         t4, a0, 12
                  lui          a2, 764837
                  c.lui        gp, 18
                  or           s11, sp, s0
                  ori          t0, s4, 1850
                  srli         t6, t2, 10
                  add          a4, t1, ra
                  c.add        s9, s2
                  c.addi       a2, -1
                  c.xor        a1, a2
                  div          s8, t1, t3
                  c.li         s4, 24
                  c.andi       a3, 23
                  xori         zero, ra, -1702
                  srli         s7, s7, 14
                  mulh         s4, t5, t5
                  c.andi       a5, 15
                  c.sub        a0, a2
                  sub          a4, s5, ra
                  sltiu        s2, t4, -596
                  c.or         a3, a5
                  c.mv         s10, gp
                  lui          a5, 572754
                  slli         t1, a7, 15
                  c.or         a1, a0
                  c.li         t3, -1
                  srli         s6, a4, 25
                  c.addi       s9, -1
                  divu         s7, a0, s7
                  xori         s2, s2, 1800
                  xor          s10, a3, s7
                  sub          s11, ra, s0
                  mul          a4, s7, s0
                  c.add        t5, s2
                  mulhsu       zero, s11, a6
                  xori         s4, s1, -586
                  sltu         a2, zero, t3
                  srai         a3, s2, 13
                  mulhsu       t6, sp, a4
                  or           a3, t6, s5
                  c.li         t2, -1
                  srai         s4, s10, 31
                  andi         t5, gp, -1499
                  rem          ra, s3, t0
                  c.xor        s1, a0
                  and          t4, tp, a5
                  mul          s11, zero, s7
                  nop
                  remu         a7, a6, t4
                  c.nop
                  ori          gp, t2, 1294
                  add          a0, s3, s3
                  andi         ra, t0, 667
                  c.and        a4, a0
                  c.andi       a4, -1
                  nop
                  c.or         s1, a1
                  slt          a0, t6, s5
                  c.sub        a0, a4
                  div          s7, gp, s11
                  slt          s2, s7, s3
                  sltiu        s6, gp, 1724
                  srai         s9, tp, 4
                  c.lui        t0, 20
                  andi         a2, a3, -1168
                  auipc        a5, 440451
                  c.srai       a0, 28
                  nop
                  sll          t5, s7, gp
                  c.add        s11, tp
                  divu         a0, t3, a5
                  c.slli       t0, 9
                  sltiu        s11, a5, -1164
                  c.sub        a5, a4
                  slti         zero, gp, 258
                  c.li         s9, 9
                  slti         s4, t4, -1606
                  mulhsu       s8, t3, s9
                  ori          s1, s11, 1929
                  mulhu        a2, t5, s10
                  c.mv         tp, a4
                  rem          s2, t4, a5
                  sra          zero, s8, a1
                  mul          s5, t2, s5
                  addi         gp, a0, -1541
                  slli         s1, s8, 19
                  srai         a2, s2, 17
                  remu         t1, t1, t0
                  mulhsu       s4, t6, a2
                  slt          t0, s2, t1
                  nop
                  c.add        t5, sp
                  remu         s3, sp, gp
                  c.sub        a0, a5
                  srl          zero, a0, t3
                  sub          ra, s0, a7
                  c.slli       a1, 20
                  mul          s6, s8, t2
                  xor          a0, t0, sp
                  c.or         a3, a1
                  c.add        s11, ra
                  nop
                  srai         t1, sp, 11
                  slt          s6, s2, t1
                  nop
                  c.and        s1, s1
                  c.sub        a3, s1
                  sra          a2, s10, sp
                  c.slli       s9, 13
                  c.sub        s1, a4
                  add          a3, s0, s5
                  nop
                  srai         tp, s0, 9
                  c.slli       a5, 3
                  xor          zero, s2, a6
                  sll          t3, t5, sp
                  andi         a1, t2, 1519
                  c.or         a0, a5
                  nop
                  ori          s3, s9, 1338
                  rem          s6, a6, s6
                  andi         t5, a3, -554
                  srai         s2, t1, 25
                  and          a5, t3, sp
                  c.srai       a3, 5
                  divu         s8, s7, t3
                  divu         tp, s8, a7
                  lui          zero, 636562
                  c.slli       s10, 6
                  auipc        a4, 599848
                  sll          ra, s11, a2
                  mulh         s4, t4, t2
                  c.or         s1, s1
                  and          a5, s6, s10
                  sub          t3, s3, t4
                  srl          s11, t2, s9
                  mul          a2, s1, t5
                  xor          t6, ra, a3
                  xori         t3, s5, -210
                  sra          t6, s8, s6
                  c.li         t1, 10
                  slt          s9, s3, sp
                  srli         s10, s3, 11
                  srai         t3, s10, 7
                  slti         a3, t5, 1593
                  andi         s10, a5, 1186
                  c.xor        a0, s1
                  c.andi       a1, -1
                  c.lui        s8, 31
                  c.mv         a0, s10
                  addi         zero, t2, 787
                  remu         t3, a5, tp
                  slti         ra, t4, -635
                  and          a1, s5, a3
                  sltu         ra, a1, s10
                  srli         s11, sp, 11
                  srl          a1, tp, sp
                  sltiu        t5, s3, 1481
                  sub          t1, s11, s2
                  add          zero, a4, t5
                  xor          s10, s6, a5
                  c.add        s4, s10
                  c.addi       t6, 17
                  add          a3, s0, t2
                  c.xor        a0, s1
                  c.srli       a2, 8
                  andi         s7, a3, 843
                  c.nop
                  xori         a4, zero, 1004
                  xor          ra, s10, s11
                  c.or         s1, a4
                  xor          t3, a1, s10
                  slti         a2, s4, -108
                  andi         s5, t3, 1836
                  c.mv         s7, a0
                  mulh         s1, a3, sp
                  nop
                  c.sub        a0, a3
                  srai         t5, s4, 25
                  c.nop
                  c.nop
                  slli         tp, a1, 14
                  c.xor        a2, s1
                  div          s6, t6, ra
                  c.lui        s9, 18
                  ori          a3, a0, -1087
                  sra          ra, t0, s9
                  auipc        a0, 782750
                  slli         s8, a3, 13
                  sll          a3, ra, s9
                  c.add        a3, s5
                  srai         s5, t3, 21
                  addi         s11, a0, -1203
                  c.sub        a2, a4
                  srli         t6, a5, 20
                  rem          a5, s10, a6
                  slt          s7, s11, s3
                  lui          a3, 393278
                  add          gp, t2, t6
                  remu         a3, a6, t3
                  mul          a0, t3, t5
                  xori         gp, t5, -1281
                  c.lui        s1, 13
                  slti         t2, s3, 1471
                  slti         t6, t3, 1552
                  ori          t1, s4, 1010
                  and          t3, t3, zero
                  mulh         s2, a7, s2
                  c.mv         a2, ra
                  c.or         a1, a0
                  xor          s5, ra, a2
                  sltu         s6, t5, zero
                  slti         s1, s0, -1871
                  nop
                  mul          a0, a5, s6
                  slti         a4, s10, -583
                  mulhsu       ra, s4, zero
                  c.add        a7, s2
                  div          t5, s10, s3
                  and          s5, gp, a0
                  remu         s7, gp, t3
                  c.addi       s3, -1
                  c.srai       a5, 3
                  addi         s3, s10, -293
                  c.or         a5, a4
                  mulhu        s5, t4, t3
                  c.srli       a4, 26
                  remu         ra, a6, gp
                  sltiu        s4, s7, -259
                  sll          s9, a5, s2
                  remu         s6, a6, t6
                  or           t0, tp, s8
                  slli         a2, s5, 7
                  c.slli       s3, 31
                  slt          s5, s10, a4
                  mulhu        a5, s9, a5
                  slli         a2, t1, 27
                  and          a0, t0, s10
                  c.li         s7, -1
                  lui          t4, 966491
                  c.xor        a5, a4
                  mulhu        s5, t2, t1
                  andi         s3, s10, -546
                  auipc        zero, 816601
                  add          s4, t3, s0
                  sltiu        t4, t6, 217
                  c.lui        a4, 18
                  ori          t0, s8, 241
                  c.andi       s1, 11
                  srli         s5, s11, 31
                  c.addi       s8, -1
                  rem          s2, s5, t1
                  mulh         t2, a4, tp
                  mul          t1, a6, a7
                  sltu         t4, gp, a7
                  c.and        a5, a1
                  sltu         s4, a5, a6
                  mulh         a3, t0, t3
                  sltu         s1, s11, a3
                  xor          a2, sp, s6
                  mulh         a3, a4, sp
                  mulh         t1, t2, t0
                  auipc        a3, 472819
                  sltu         s7, t1, s1
                  ori          a0, t1, -1466
                  c.sub        a4, s0
                  c.addi       s4, 21
                  mulh         ra, s8, ra
                  c.li         t0, 2
                  srl          s5, a4, sp
                  slt          s2, s5, a1
                  xori         ra, s9, -1525
                  slti         s3, s9, -1875
                  mulh         a4, t1, s10
                  sltiu        t3, a1, 242
                  rem          a4, tp, a4
                  xori         a7, s10, -663
                  c.xor        a0, a5
                  slt          a4, s0, tp
                  mulhsu       s7, t5, zero
                  sltu         s10, s11, s0
                  slli         a4, zero, 5
                  c.or         a2, s1
                  c.slli       s10, 24
                  auipc        ra, 398929
                  rem          s10, a6, t4
                  div          t6, a4, s7
                  lui          tp, 302661
                  sltiu        s8, t4, -1833
                  c.add        a0, s7
                  sltiu        a1, s8, -344
                  mul          a7, a3, s10
                  c.xor        a4, s1
                  slti         s8, t6, 1273
                  slti         zero, t5, -1929
                  addi         ra, s5, 726
                  mul          s9, s8, t4
                  rem          zero, t2, t4
                  c.sub        a0, a0
                  nop
                  c.nop
                  mulhsu       t1, s11, a6
                  mulhsu       ra, s11, t3
                  c.slli       a0, 5
                  sltiu        t4, s7, 1592
                  sltu         a2, s11, s4
                  add          s10, zero, sp
                  c.lui        a0, 7
                  slti         a1, s2, -414
                  slt          t2, a3, a0
                  sltu         zero, s6, a6
                  add          s10, s11, s0
                  c.li         a2, 12
                  auipc        a0, 1023261
                  sltiu        tp, s0, 1453
                  auipc        a3, 525021
                  nop
                  ori          t2, a4, -249
                  c.li         a4, 10
                  ori          t1, s8, 857
                  remu         s2, t1, a5
                  mulhsu       a7, t6, s2
                  c.nop
                  rem          ra, t2, s8
                  sltiu        ra, t4, 640
                  addi         ra, s3, -1441
                  rem          s7, zero, a4
                  mulhu        a7, t3, s9
                  mulhu        a3, tp, ra
                  or           a0, s2, t4
                  remu         s11, sp, t1
                  slti         a2, s7, 832
                  c.or         a5, a4
                  add          a2, a3, t4
                  srli         s7, gp, 6
                  c.li         t1, 18
                  xor          s5, a5, s0
                  xor          s2, ra, t2
                  sub          a4, t6, s10
                  c.slli       a3, 15
                  mulh         s4, t0, s6
                  rem          s6, s9, s1
                  c.srai       s1, 6
                  auipc        a0, 266482
                  sltiu        zero, t3, -1166
                  c.andi       s1, -1
                  auipc        s8, 687712
                  sltu         ra, zero, s0
                  c.add        t2, a7
                  slli         t2, s11, 15
                  c.and        a1, a4
                  slti         a0, s11, -1197
                  slt          t5, a7, a2
                  c.mv         a2, t4
                  rem          gp, s3, t4
                  nop
                  c.addi       s8, 16
                  remu         s3, a3, s6
                  c.or         a2, a3
                  nop
                  slli         t1, ra, 22
                  c.nop
                  add          s10, a3, a6
                  srli         t6, sp, 20
                  slti         a0, tp, 981
                  mul          s7, t0, s5
                  c.slli       a1, 23
                  auipc        t1, 561902
                  xori         a5, t3, -1776
                  c.li         ra, -1
                  lui          s6, 629152
                  auipc        t2, 790269
                  rem          t6, a0, a7
                  c.xor        a0, a3
                  slti         s4, t3, -1466
                  slt          s3, s1, a6
                  c.andi       a1, 3
                  srai         s11, t4, 24
                  mulhsu       s7, a6, a5
                  srli         a7, s3, 0
                  c.addi       a7, -1
                  c.srai       a0, 2
                  c.or         s1, s0
                  xor          a1, s4, a1
                  add          t5, t3, gp
                  mul          a4, a2, s7
                  c.add        t6, s3
                  c.add        s4, a6
                  c.andi       a3, -1
                  mul          zero, s2, a7
                  nop
                  c.or         a5, a5
                  nop
                  ori          a4, a1, -1369
                  c.mv         s1, t1
                  auipc        a7, 930310
                  sltiu        a0, sp, -1133
                  xori         s1, a1, -1782
                  andi         t0, s6, -1350
                  or           gp, t1, t4
                  mulhu        a1, s0, a6
                  c.andi       s1, 23
                  lui          t4, 1000033
                  and          a2, s9, s3
                  c.slli       a5, 14
                  slti         t2, s5, -816
                  srl          t2, s2, a3
                  c.addi       s2, -1
                  mul          s4, s1, t2
                  addi         a7, t3, 1569
                  xor          s1, s10, s1
                  c.li         tp, -1
                  ori          s8, a5, 936
                  c.andi       a2, 2
                  mul          s1, zero, tp
                  c.andi       a3, 31
                  and          t2, s10, tp
                  c.li         s8, -1
                  srli         s10, ra, 0
                  c.addi       t4, 9
                  srli         s2, a7, 17
                  slti         t2, t3, 900
                  slti         s2, t6, -560
                  c.sub        a1, a5
                  mulhsu       t4, t5, t4
                  mulhu        s8, a1, sp
                  c.nop
                  c.srli       a5, 24
                  c.srli       a3, 9
                  srai         t1, s9, 4
                  c.slli       t0, 22
                  mulh         a0, s9, t0
                  or           tp, ra, s7
                  xor          a4, s5, ra
                  sltiu        s9, s0, 1251
                  mul          t3, t5, a4
                  c.andi       a2, -1
                  slti         s7, s6, 749
                  or           s6, s11, s2
                  c.slli       s11, 6
                  auipc        s10, 640283
                  nop
                  c.sub        a5, s1
                  mul          a7, a4, a0
                  auipc        t1, 384096
                  ori          t2, s4, 2038
                  c.li         t6, 16
                  mul          a0, s2, t4
                  sub          zero, s7, t2
                  and          s6, t2, gp
                  mulhu        s11, tp, s8
                  c.slli       t2, 5
                  remu         s3, a4, s6
                  add          s5, zero, ra
                  mulh         ra, a5, s6
                  sll          s5, s5, a1
                  c.srai       a2, 27
                  srli         t5, t0, 4
                  xor          s4, s8, a6
                  andi         a4, t0, 1304
                  sub          a4, a1, a6
                  add          s2, s6, s10
                  mulhsu       t1, a6, a3
                  srl          t6, a5, t0
                  xori         a7, t0, 1238
                  c.xor        s1, a5
                  sltu         s11, a3, gp
                  srli         t2, s7, 5
                  add          t2, t0, t4
                  c.and        a5, a3
                  c.mv         t6, s0
                  c.addi       s7, 24
                  sltiu        t6, t3, -1037
                  div          a0, t4, a1
                  rem          s10, t3, a3
                  or           s8, tp, a4
                  c.mv         gp, s10
                  c.srli       a0, 20
                  slt          a1, s7, a0
                  mulhu        t3, t5, zero
                  c.xor        a2, a2
                  rem          s1, t4, t0
                  sltu         gp, t5, t3
                  c.li         t4, -1
                  sltiu        t4, s0, 1038
                  ori          a0, s6, -1051
                  c.addi       s11, 25
                  ori          a2, sp, 246
                  mulhsu       s7, t1, s1
                  mulh         s1, gp, a7
                  srli         s11, a1, 29
                  auipc        t4, 34745
                  lui          a5, 545309
                  sltu         s9, ra, s2
                  sltu         t4, t2, a1
                  mulhsu       a1, s10, s6
                  slti         a4, gp, 898
                  addi         s3, s6, -421
                  auipc        s5, 1026961
                  div          t4, s3, s6
                  slt          s5, s1, t2
                  div          s7, t5, a4
                  slli         s3, ra, 2
                  c.xor        a4, a4
                  c.mv         a7, t1
                  lui          t4, 26807
                  c.andi       a2, 16
                  remu         t3, t6, a2
                  nop
                  remu         a2, s4, s7
                  c.li         a0, 23
                  or           s7, a6, s0
                  c.and        s1, s0
                  sltiu        s7, s7, -397
                  c.li         a1, 2
                  c.and        a2, a0
                  c.lui        s2, 22
                  c.add        s11, s3
                  c.or         a4, a5
                  c.and        a2, a3
                  mulh         t1, s11, a4
                  c.and        s1, s1
                  c.add        s1, a3
                  divu         s9, zero, s0
                  add          a4, ra, t6
                  or           t0, a4, s5
                  c.mv         s4, a7
                  slli         a5, t2, 5
                  c.xor        a2, s0
                  ori          t3, t3, -1182
                  remu         zero, a3, t4
                  srai         a3, a7, 11
                  sltiu        a2, a7, -1096
                  srl          t6, s4, a7
                  c.and        s1, s1
                  c.srli       a2, 3
                  c.xor        a0, a1
                  c.or         s1, s1
                  mulhsu       t5, s1, zero
                  slt          t0, gp, ra
                  c.and        a1, s1
                  andi         a3, a4, -1206
                  add          t4, s3, a0
                  slli         t2, ra, 24
                  and          t1, sp, a7
                  xori         a3, t1, 620
                  slli         a5, s7, 12
                  sltiu        gp, t6, -1199
                  c.mv         s8, t1
                  addi         s9, s10, -955
                  add          s7, t4, tp
                  xori         zero, a3, -807
                  xori         a3, a4, -10
                  rem          s2, s4, s8
                  c.sub        a3, s1
                  c.lui        s7, 30
                  srli         s11, a6, 24
                  nop
                  slti         gp, s11, -1025
                  c.add        s8, sp
                  xor          zero, s4, s5
                  remu         s6, s2, gp
                  c.lui        s6, 10
                  c.or         a0, a4
                  and          s3, a2, a3
                  remu         t2, t0, a7
                  c.add        gp, s3
                  c.addi       s10, 25
                  srai         zero, s11, 10
                  c.srli       a5, 3
                  xor          ra, zero, s11
                  remu         s10, ra, a4
                  c.slli       s6, 31
                  mulh         s8, t6, a5
                  srli         s4, s4, 3
                  sltiu        s7, s11, 802
                  rem          s3, a6, t3
                  c.srai       s1, 29
                  mul          s8, a6, s3
                  mul          s3, ra, s11
                  divu         s1, a7, s6
                  c.add        s1, t1
                  c.andi       a1, 6
                  addi         a0, gp, 1419
                  c.srli       a2, 2
                  divu         s9, t2, t5
                  xori         a0, s9, 484
                  divu         s3, s10, s2
                  c.or         s1, a1
                  xori         a3, s6, 1350
                  xori         tp, s10, 831
                  sll          t3, t0, a4
                  divu         t6, s6, zero
                  c.sub        a0, s1
                  c.or         a1, a2
                  srli         tp, s9, 27
                  c.sub        a0, a3
                  sll          t3, ra, s6
                  and          s8, a5, a5
                  srai         s7, a0, 2
                  addi         s4, a6, 1192
                  remu         s9, s5, t6
                  srli         a1, t6, 17
                  srai         t6, gp, 29
                  nop
                  xor          s4, t3, s0
                  slt          t4, a6, t2
                  mulhsu       s3, a5, a1
                  c.add        gp, a5
                  c.mv         t3, s1
                  slt          t0, s8, a7
                  sub          s10, tp, sp
                  c.srli       a2, 27
                  sltiu        s5, ra, 668
                  xor          a2, t0, a1
                  c.srai       s1, 28
                  lui          a0, 877463
                  and          s1, zero, a7
                  remu         a4, s0, s11
                  div          s7, s8, a7
                  c.mv         s7, s6
                  mulh         t3, a2, s7
                  and          s7, tp, a3
                  slt          s11, a5, s3
                  c.li         s5, -1
                  nop
                  sra          t4, s9, t0
                  c.xor        a0, a2
                  mul          s4, t3, t0
                  auipc        s1, 89284
                  slt          a1, gp, gp
                  divu         s5, s11, ra
                  sltu         a2, s6, a1
                  xori         t3, s6, 593
                  slli         s8, zero, 19
                  add          t3, s2, s7
                  sub          t6, s11, s7
                  and          s4, t1, gp
                  ori          a5, t2, -977
                  sub          a1, s3, t0
                  sll          a7, a4, zero
                  c.addi       a1, 26
                  c.andi       a1, -1
                  c.andi       a4, -1
                  slli         s6, a6, 23
                  c.nop
                  xor          t6, t1, s10
                  c.li         a2, -1
                  mulhsu       s9, t3, s1
                  or           s9, s4, t0
                  add          s8, s2, t6
                  c.nop
                  mulh         s7, s0, a2
                  c.srli       a4, 18
                  sltiu        zero, s0, 1770
                  sltu         t5, a7, sp
                  sltiu        s2, zero, -157
                  remu         a7, a4, t3
                  srli         s8, a6, 11
                  c.lui        a0, 1
                  sra          a0, zero, s0
                  c.and        a0, a5
                  srai         a1, s6, 17
                  auipc        s4, 1007098
                  auipc        t5, 110232
                  lui          t6, 263779
                  sub          a3, s2, t1
                  xor          a7, ra, s10
                  andi         s9, s1, -1252
                  ori          s7, s1, 1141
                  andi         zero, s7, -1707
                  c.lui        t6, 9
                  c.mv         t1, a1
                  c.srai       a4, 30
                  sub          t2, s8, t6
                  auipc        t3, 40863
                  c.srai       a4, 16
                  c.li         gp, 26
                  c.add        s9, a1
                  nop
                  c.addi       t0, 24
                  sltu         s9, ra, a0
                  mulhu        a7, gp, a4
                  add          s3, s0, a6
                  c.addi       gp, 28
                  mulhsu       s9, s7, s10
                  sltu         t5, s1, s1
                  or           t3, a3, a4
                  ori          s3, s9, -642
                  c.or         a0, a0
                  ori          s8, t6, -108
                  mulhsu       tp, s9, a6
                  rem          s6, ra, s7
                  c.or         a4, a3
                  c.srli       a0, 1
                  c.and        a5, a5
                  mulh         gp, a3, a0
                  srli         zero, a3, 2
                  srli         t5, t0, 3
                  c.lui        s5, 28
                  mul          s4, sp, a1
                  slt          s2, a4, t3
                  sra          s8, s1, t6
                  sltiu        s7, s2, -194
                  div          a1, s0, gp
                  nop
                  nop
                  srli         t1, a0, 6
                  xor          s3, a1, s4
                  c.add        s11, t1
                  add          s5, a6, s1
                  mul          gp, t0, s5
                  addi         s2, s9, -529
                  rem          t4, a7, ra
                  c.xor        s1, a2
                  andi         s2, a6, 1110
                  mulhsu       gp, a7, a4
                  slt          s3, a1, tp
                  sra          s9, s3, a0
                  c.nop
                  srai         s6, t3, 20
                  c.sub        a5, s1
                  mulhu        t0, a6, s7
                  c.li         ra, 29
                  c.addi       a5, 23
                  mul          a4, s9, zero
                  c.and        a5, a2
                  c.slli       a0, 14
                  c.or         a4, a2
                  slti         a0, t2, -2011
                  c.xor        a4, a4
                  c.andi       a1, 16
                  addi         s4, a7, 753
                  sll          tp, a7, a7
                  c.nop
                  srli         s3, a0, 8
                  lui          s9, 385755
                  c.srli       s1, 17
                  slti         gp, a5, -1901
                  c.and        a2, a3
                  divu         s8, a0, s8
                  mulhsu       s3, t4, a4
                  c.xor        a1, a4
                  c.andi       a4, 2
                  sub          a2, a7, t3
                  c.and        s1, s0
                  mulhu        gp, s5, s7
                  sltiu        t5, a5, 335
                  and          zero, tp, gp
                  mulh         a3, zero, t4
                  sll          a7, t1, s7
                  srai         s5, a4, 18
                  srai         tp, s8, 28
                  div          a4, t4, t2
                  mulhsu       a2, a6, a1
                  c.li         t3, 29
                  slli         t1, s7, 19
                  c.or         a2, a1
                  c.lui        s11, 6
                  mulhu        s5, a6, a4
                  and          s2, a4, a1
                  andi         s4, t2, -1097
                  slt          s9, s4, s3
                  div          a1, a6, a2
                  c.nop
                  andi         s11, t4, -1346
                  slti         t6, a5, 1450
                  mulhsu       t1, sp, zero
                  slt          t4, t0, s0
                  sub          s6, t6, a3
                  c.xor        a1, a1
                  sll          t3, s0, a2
                  add          s8, a7, s11
                  c.addi       ra, -1
                  sll          gp, a4, a1
                  c.lui        s5, 18
                  sra          ra, a3, t0
                  auipc        s8, 643761
                  nop
                  lui          t2, 73989
                  sltiu        a5, a0, -155
                  c.sub        a4, a5
                  sltu         t5, a3, zero
                  c.nop
                  auipc        t5, 473420
                  and          a3, s6, t3
                  mulh         t3, a3, a4
                  sltu         a0, a7, s9
                  c.add        s5, a4
                  or           a2, s11, s10
                  c.slli       s1, 9
                  c.andi       a1, -1
                  addi         t6, a0, 1622
                  c.mv         t6, t3
                  lui          s7, 897990
                  srli         s3, s0, 17
                  lui          s11, 602605
                  or           s4, s2, a0
                  c.srli       a2, 15
                  div          s7, s8, a6
                  sra          t1, s10, s11
                  slt          a5, a0, a5
                  sub          t3, t4, a5
                  slti         t0, t5, -402
                  or           tp, s6, gp
                  srl          ra, a6, s11
                  c.andi       s1, 20
                  srl          s5, tp, s1
                  nop
                  rem          a3, s2, s5
                  slti         a3, s1, -1494
                  c.add        a2, sp
                  lui          tp, 974706
                  c.srai       a2, 26
                  or           s10, a5, t4
                  mul          s8, s2, s1
                  rem          a2, ra, s5
                  srl          t3, t6, s4
                  slti         t3, s4, -851
                  c.addi       a1, -1
                  mulhsu       t1, s11, s0
                  mulhu        s6, s10, s7
                  remu         gp, s0, ra
                  ori          a2, a6, -714
                  c.srli       a0, 18
                  slli         a0, s11, 2
                  srai         t4, t4, 21
                  and          zero, s6, a3
                  lui          s8, 487174
                  c.addi       s7, 28
                  c.srli       a4, 27
                  c.lui        a1, 14
                  slti         t5, s5, 1928
                  mulhsu       ra, s2, a3
                  c.srli       a1, 29
                  srai         s2, t0, 17
                  divu         t2, ra, s5
                  slt          t6, ra, t1
                  xor          a7, gp, gp
                  sra          a4, s10, s8
                  div          t5, t5, a1
                  srl          t4, s2, a6
                  lui          s6, 429979
                  c.or         a0, a5
                  c.xor        s1, s0
                  c.and        a2, a2
                  mulh         t6, a4, gp
                  div          t4, s8, a1
                  c.addi       t0, 22
                  c.nop
                  divu         t5, s10, ra
                  slli         s1, t0, 8
                  ori          t0, t4, -2029
                  slti         s3, s8, -1270
                  sll          t0, s7, a7
                  slt          zero, s1, s2
                  sra          s9, a7, t4
                  div          t1, a3, t0
                  xor          t5, ra, a0
                  slti         s8, a7, -1611
                  or           ra, tp, s9
                  srai         zero, t1, 29
                  sltu         t6, s9, s4
                  c.sub        a4, a4
                  srli         tp, t3, 25
                  mulhsu       t2, a3, s2
                  c.add        s4, s10
                  srai         s6, t2, 1
                  c.and        a1, a0
                  sll          a0, a6, s3
                  c.or         s1, a2
                  rem          zero, s10, t5
                  c.srai       a3, 4
                  srai         t2, s11, 12
                  slli         gp, sp, 21
                  add          a7, a3, t2
                  c.and        a0, a0
                  c.slli       t0, 8
                  remu         s3, a3, t4
                  c.lui        s5, 5
                  c.li         t0, -1
                  nop
                  sltu         t5, t5, s11
                  mulhsu       a4, s4, a3
                  sltiu        t5, zero, -1318
                  c.srli       a4, 22
                  c.addi       t2, 3
                  or           s10, s7, s10
                  c.li         a1, 29
                  addi         s9, s9, 679
                  rem          s6, s8, t3
                  auipc        t4, 756832
                  xori         a3, s0, -1237
                  c.srai       a2, 31
                  slti         s1, gp, -919
                  c.li         t2, 3
                  mulhsu       a7, s4, s6
                  srl          ra, a2, t1
                  c.mv         a2, t3
                  sltiu        s8, t2, -1991
                  xori         s10, t0, -647
                  lui          a5, 634870
                  c.slli       a7, 4
                  sltiu        a3, s10, 1510
                  slti         a0, t1, 1634
                  srli         t2, zero, 12
                  sra          s3, s11, sp
                  mulhsu       t2, s3, a7
                  mul          t0, t2, a0
                  srli         t6, ra, 15
                  c.sub        a3, a3
                  mulhsu       s2, zero, a2
                  slli         zero, gp, 0
                  slti         a7, a5, 1641
                  c.xor        a3, s1
                  andi         s4, s9, -1996
                  slli         t1, s5, 28
                  c.nop
                  and          s6, t0, t2
                  c.mv         s3, s7
                  c.and        a0, s0
                  sltu         a4, a4, s9
                  c.lui        ra, 7
                  c.andi       a0, 15
                  mulh         s8, s10, t2
                  c.srai       a0, 14
                  srai         t1, s5, 30
                  sra          s8, t6, s10
                  c.slli       s8, 16
                  c.or         a3, s1
                  mulh         s9, tp, s4
                  c.or         a2, s0
                  c.lui        gp, 27
                  sra          s9, s10, t2
                  mulh         a7, s1, a7
                  slt          s3, t2, s1
                  auipc        s9, 650842
                  slt          a2, s9, s10
                  c.addi       t6, -1
                  slli         ra, a4, 31
                  mulhu        s4, s5, t3
                  xori         a7, t0, 1415
                  c.andi       a5, 9
                  c.mv         s4, tp
                  mulhu        s5, gp, t1
                  c.mv         s11, t2
                  xori         gp, ra, 1140
                  sltu         t5, t5, a3
                  sltu         a1, a0, gp
                  srai         s4, t3, 30
                  or           s1, s9, tp
                  xor          a1, s7, s11
                  c.addi       s8, -1
                  c.nop
                  rem          t5, s2, s4
                  divu         a7, s5, tp
                  c.sub        a1, s0
                  c.add        s1, s4
                  lui          a5, 623778
                  sltiu        ra, t0, 1333
                  add          t1, a1, s7
                  mulhu        a7, s5, sp
                  slt          t4, s11, a6
                  mulhsu       tp, a1, t0
                  mulhsu       a1, s4, gp
                  mulh         s2, s1, a3
                  add          t6, sp, a6
                  c.nop
                  addi         s2, s5, 1189
                  lui          zero, 662319
                  c.addi       t0, -1
                  div          t0, t3, s6
                  mulhu        a2, a7, t6
                  c.sub        a2, a5
                  mulhsu       a1, a3, t0
                  c.slli       a7, 31
                  mulhsu       s2, t0, t3
                  nop
                  srl          gp, a0, t5
                  c.add        a7, t3
                  xori         a7, s5, 686
                  remu         s2, a3, zero
                  sltu         t2, gp, s2
                  and          t1, tp, gp
                  add          a5, s7, s4
                  c.mv         ra, tp
                  c.or         a2, a5
                  c.mv         a4, t3
                  addi         s4, s11, -1978
                  sltu         a2, zero, tp
                  slli         t5, s2, 22
                  slti         s1, tp, 1743
                  c.lui        t1, 27
                  c.slli       t3, 21
                  c.srai       a5, 10
                  sll          a5, a7, a4
                  divu         a5, a0, s3
                  c.andi       a1, -1
                  mulh         t4, s9, tp
                  remu         a2, s11, t5
                  slti         s1, s0, -145
                  c.andi       a4, 2
                  nop
                  c.xor        a4, a4
                  rem          t2, t3, s3
                  c.lui        t5, 15
                  mul          a2, s8, t5
                  mulhu        s10, a3, s10
                  ori          s3, a1, -2039
                  mulhsu       ra, zero, t3
                  mulh         s4, s3, t3
                  mulh         tp, s9, a6
                  srli         t4, s2, 19
                  srl          gp, a4, s9
                  xor          s4, s1, s1
                  addi         t1, t5, -972
                  auipc        t3, 147102
                  c.srai       s1, 7
                  div          t0, s11, a7
                  c.srli       s1, 31
                  nop
                  srai         s7, s7, 21
                  xor          t0, a6, t0
                  c.slli       a5, 30
                  div          a3, t3, s7
                  ori          a7, s4, -67
                  c.add        s4, s6
                  c.and        a3, s1
                  c.srai       s1, 1
                  srli         a3, a5, 26
                  remu         s7, s8, s4
                  slti         s7, t6, -1641
                  slti         s5, a0, 613
                  c.slli       s8, 7
                  c.mv         s10, tp
                  sltu         t0, t4, a3
                  c.sub        a3, a2
                  auipc        gp, 58954
                  c.or         s1, s0
                  c.or         a0, s0
                  xor          a1, s6, a4
                  lui          a0, 990460
                  xori         zero, t2, -1596
                  lui          s7, 481725
                  srli         t5, t6, 25
                  srl          s2, a3, a4
                  mulhsu       s2, s0, t5
                  sltiu        zero, s3, -1369
                  xori         s7, sp, -285
                  mulhu        a7, s8, t6
                  andi         a0, zero, -1842
                  slt          s10, s4, s3
                  ori          a3, a1, -893
                  srli         a7, s7, 0
                  c.slli       a1, 8
                  slt          t1, a2, t0
                  mul          t2, ra, s11
                  and          s11, t2, a1
                  c.and        a2, s1
                  divu         a7, s1, a0
                  c.srli       a0, 3
                  ori          s4, a6, -831
                  sltu         a1, a7, s8
                  mulh         gp, a4, s10
                  nop
                  div          a2, a4, s9
                  xor          s11, t5, s7
                  and          t5, a1, s7
                  c.li         a0, 29
                  slti         t2, a5, 478
                  c.add        s2, s5
                  srli         gp, ra, 11
                  c.mv         ra, s7
                  xori         s5, t3, 751
                  c.add        s3, t3
                  mulhu        a3, t1, s5
                  c.lui        a1, 8
                  c.sub        a2, s1
                  sra          t1, t3, a2
                  andi         s4, s9, -486
                  c.srai       a5, 16
                  sra          s2, s10, s2
                  c.addi       tp, -1
                  srl          a0, a0, s6
                  lui          a5, 984851
                  srl          s4, a1, s11
                  srai         a2, a7, 28
                  srli         s8, a0, 5
                  ori          a3, t6, 595
                  sra          tp, ra, zero
                  c.srli       a3, 5
                  srl          a3, s5, s8
                  nop
                  and          t4, s2, s2
                  c.li         tp, -1
                  c.xor        s1, a3
                  div          t1, sp, a3
                  c.mv         a0, s6
                  mul          t4, s8, t5
                  c.li         gp, 4
                  auipc        s7, 1039429
                  xor          s3, t2, s1
                  mulhu        s4, a5, ra
                  add          zero, t3, t0
                  c.mv         a0, a0
                  c.andi       s1, 25
                  andi         s3, ra, 220
                  xor          t2, s7, a7
                  c.mv         s2, s10
                  addi         t1, t0, -765
                  rem          t1, a7, zero
                  c.slli       a3, 8
                  divu         t3, s1, a6
                  auipc        tp, 771016
                  c.sub        a4, s0
                  c.and        a1, a2
                  c.nop
                  mulhsu       a7, s3, t2
                  sra          s4, a1, s5
                  mulhu        t4, s3, s8
                  sub          s3, s8, tp
                  andi         a5, s6, 916
                  sll          zero, a1, s8
                  c.or         a4, a3
                  sltiu        t5, a3, -1218
                  c.addi       t6, -1
                  slt          s1, a1, s3
                  slti         t5, s6, 972
                  ori          s1, t5, 703
                  slli         s10, a7, 2
                  c.andi       a0, 12
                  c.xor        s1, s0
                  c.mv         t4, a1
                  srl          s3, t5, s0
                  lui          a1, 804899
                  c.add        a3, a3
                  c.or         a2, a0
                  c.sub        a5, a5
                  xori         t2, a7, -1156
                  c.sub        a5, a5
                  mul          zero, s5, s6
                  c.nop
                  andi         t4, s6, 599
                  mulhsu       t5, t4, a2
                  and          a3, s1, a2
                  slli         zero, s4, 3
                  c.mv         t2, tp
                  slt          t0, s8, t3
                  and          s4, s1, s8
                  addi         tp, sp, 308
                  c.srli       s1, 20
                  srai         s7, s7, 19
                  mul          s8, sp, t1
                  c.add        s10, a1
                  c.srai       a5, 25
                  c.srli       a4, 17
                  c.srai       a3, 22
                  c.sub        a2, a5
                  c.add        s2, tp
                  nop
                  c.xor        a1, s0
                  mul          s3, zero, gp
                  c.lui        t1, 7
                  or           s10, s11, a4
                  mulhu        a3, a7, ra
                  remu         s9, t0, s3
                  c.lui        s1, 17
                  sltu         s2, t5, s0
                  addi         s8, a1, 1866
                  sltiu        s11, a0, -779
                  srai         a0, s6, 13
                  sltiu        a5, s4, 1841
                  slli         a5, t6, 30
                  srl          s10, s9, s6
                  mulhsu       t6, tp, s3
                  remu         s1, a3, a0
                  c.slli       tp, 17
                  c.lui        t5, 30
                  xor          a0, s8, gp
                  or           zero, t0, s2
                  srai         s7, t2, 14
                  div          a4, t5, a1
                  andi         t1, a0, -1307
                  srli         s3, t6, 22
                  c.addi       s10, -1
                  c.nop
                  c.sub        s1, s1
                  remu         s11, t0, t0
                  slti         a5, s6, -1742
                  divu         s8, s7, s2
                  remu         t3, s6, a6
                  slt          a5, s3, s1
                  c.sub        a3, a5
                  nop
                  remu         s11, s7, s5
                  nop
                  c.slli       a4, 20
                  sra          s6, s9, t3
                  slli         zero, sp, 20
                  c.mv         a7, s5
                  sll          a3, a4, a0
                  sra          zero, a7, s11
                  c.mv         s4, a0
                  c.sub        a2, s0
                  xor          a0, t5, s9
                  xori         gp, a3, -452
                  add          zero, t4, s3
                  c.li         s4, 8
                  lui          t3, 725037
                  srli         t5, s1, 24
                  c.or         a2, s0
                  rem          s2, t1, s9
                  remu         gp, gp, a1
                  c.and        a2, s0
                  lui          s7, 195285
                  c.slli       a3, 2
                  c.lui        ra, 2
                  nop
                  sra          tp, t5, gp
                  remu         a5, zero, a3
                  c.li         tp, 31
                  mul          t4, t0, t4
                  c.or         a2, a5
                  remu         s5, a5, s4
                  slli         a5, s4, 11
                  nop
                  rem          s3, zero, t5
                  andi         a1, t0, -667
                  sltiu        t0, s11, 619
                  sltu         s8, s1, a7
                  andi         s9, a0, -500
                  slti         t6, s4, -13
                  lui          t2, 336887
                  c.lui        t5, 25
                  c.xor        a4, a5
                  lui          gp, 1026837
                  or           zero, t6, s4
                  sra          t5, t2, s8
                  srl          t3, s0, s0
                  c.srai       a2, 3
                  divu         t1, s4, s8
                  c.and        a3, s1
                  remu         s5, t0, s1
                  slli         s6, s9, 24
                  c.xor        a1, a0
                  sra          t4, ra, t3
                  and          s7, s7, s5
                  c.slli       t0, 20
                  c.or         s1, a3
                  srai         s1, s9, 14
                  div          t1, t0, a1
                  c.add        s8, t2
                  sra          s9, s5, sp
                  ori          s9, s1, 368
                  andi         s7, a0, -870
                  c.xor        a5, a3
                  and          a7, s2, s7
                  sra          s7, s10, t5
                  mulh         s2, s1, s9
                  c.srai       a3, 23
                  divu         s4, a7, s5
                  lui          t1, 223067
                  c.sub        a5, a3
                  mulhu        a0, a5, t3
                  c.and        s1, s0
                  slt          t2, s9, a3
                  slti         gp, s2, 1357
                  slli         s9, a0, 24
                  mulhu        t3, t2, gp
                  srli         s2, a6, 1
                  c.and        a0, a0
                  auipc        s10, 908256
                  auipc        s4, 492300
                  ori          t4, s1, 1588
                  c.srai       a4, 14
                  c.xor        a2, a4
                  remu         zero, s5, t6
                  c.and        a3, a5
                  add          s2, a2, ra
                  ori          s5, a6, 1903
                  and          s9, t4, t1
                  andi         a7, a2, 1954
                  xori         s4, s8, 1497
                  slli         s1, t3, 28
                  nop
                  c.andi       a5, 22
                  xori         s1, s1, -85
                  andi         a1, t6, -878
                  mulhu        s9, a1, a4
                  divu         s3, ra, s2
                  mulhsu       t5, s3, s10
                  mul          s7, s2, tp
                  c.or         a4, a4
                  c.add        s7, s4
                  c.add        s2, a7
                  sra          a0, s9, zero
                  or           s9, s6, t6
                  remu         s5, ra, s9
                  sll          s11, sp, s3
                  sll          s9, s6, t1
                  c.xor        a5, a0
                  c.add        t1, t2
                  srli         zero, s11, 28
                  auipc        s10, 200408
                  slti         t0, a3, 380
                  sra          s8, t5, a5
                  c.li         ra, 20
                  mulh         s6, a5, s5
                  sltiu        t1, tp, 1602
                  srli         s2, t2, 17
                  sra          s1, t3, s7
                  sra          t2, a6, t1
                  and          s1, t4, a3
                  c.xor        a0, a1
                  sltiu        a1, s4, 1877
                  slli         s4, s5, 4
                  or           a1, a7, t6
                  div          gp, s10, s3
                  c.addi       s6, 1
                  c.srli       a0, 13
                  c.add        a2, gp
                  srl          a3, t6, s4
                  and          s8, s3, tp
                  lui          zero, 199418
                  c.li         t6, 4
                  xori         ra, ra, -1279
                  xor          t6, s0, t0
                  ori          s4, sp, -340
                  or           a5, s2, s1
                  add          s8, s2, t1
                  mulhu        t3, zero, a3
                  ori          a5, a5, -1536
                  c.addi       s11, -1
                  c.nop
                  and          s2, s2, s3
                  srli         zero, a7, 16
                  c.nop
                  c.sub        a0, a0
                  c.add        a7, s11
                  c.addi       t0, 8
                  c.addi       s10, 12
                  sltiu        a3, t5, -771
                  mulhu        a2, t6, s6
                  c.lui        t0, 30
                  c.srai       a1, 22
                  addi         ra, s3, 2035
                  c.slli       t5, 25
                  c.slli       gp, 12
                  c.mv         a3, s10
                  rem          t1, s11, sp
                  c.mv         t0, t3
                  lui          gp, 967957
                  mulhsu       t4, a5, s5
                  xori         a2, t6, 1148
                  xori         t6, a1, -1888
                  c.add        s6, s11
                  c.and        s1, a1
                  c.or         a3, a4
                  and          s4, t2, s4
                  addi         a7, a1, -432
                  and          gp, s3, t2
                  andi         s1, s8, 751
                  and          ra, a2, tp
                  sltu         gp, a3, s5
                  c.lui        t4, 30
                  c.sub        a5, a5
                  slti         a4, a4, -1525
                  rem          a0, gp, a0
                  xor          s8, a1, s3
                  mulh         t0, a1, s1
                  c.srai       s1, 7
                  nop
                  c.lui        s2, 23
                  mul          s10, ra, s3
                  slt          s5, t3, s5
                  mulhu        a3, s5, sp
                  lui          a7, 446377
                  c.srli       a5, 14
                  c.and        a3, s1
                  c.slli       a0, 11
                  divu         t4, s8, a4
                  remu         s11, s0, s0
                  addi         t1, s1, -1063
                  c.mv         t4, s2
                  c.xor        a0, a1
                  srli         tp, t1, 1
                  or           a0, s9, s8
                  srl          s5, t4, s6
                  c.nop
                  sltiu        a0, s3, 1533
                  slti         t3, t0, -416
                  ori          t2, tp, -1451
                  nop
                  auipc        tp, 538721
                  c.nop
                  and          s11, s6, s9
                  sltu         t1, zero, a1
                  add          t3, a1, a6
                  rem          s8, a0, a5
                  xor          a1, s4, s2
                  and          a2, zero, t0
                  sra          a4, s0, a1
                  mulhsu       s1, s9, s4
                  slli         tp, s1, 31
                  slti         t4, s11, -459
                  sra          s1, s11, a5
                  slt          zero, a5, s8
                  add          t5, tp, gp
                  slti         t5, a6, 318
                  remu         s2, t3, zero
                  slti         t5, a2, -1731
                  mulhu        a0, gp, t3
                  xori         t0, a5, -1140
                  mulhu        s10, s8, t3
                  c.addi       a5, -1
                  and          s3, zero, s2
                  c.slli       t2, 13
                  c.addi       a0, 24
                  xor          a0, s9, t4
                  mulhu        t2, s3, s1
                  divu         a2, t6, t3
                  sltu         s10, s5, s10
                  c.andi       a0, -1
                  or           zero, s8, ra
                  remu         gp, a1, ra
                  c.addi       s6, -1
                  c.mv         s9, s5
                  or           a3, s6, s3
                  c.srai       s1, 22
                  c.xor        a2, a2
                  auipc        t3, 986276
                  and          ra, s1, s3
                  sltiu        gp, t4, -769
                  div          zero, t1, a4
                  c.lui        s10, 15
                  slti         s6, a1, -943
                  remu         s9, a2, t0
                  srl          a4, t5, s9
                  c.lui        a5, 7
                  add          s2, s4, t3
                  andi         a5, sp, -521
                  addi         t5, a7, 588
                  c.addi       s10, -1
                  sltiu        s4, ra, 45
                  xori         a0, a3, -485
                  divu         t1, t5, a2
                  rem          s7, t0, s7
                  c.addi       a4, -1
                  and          a1, s10, a4
                  srli         a0, t1, 16
                  slti         s1, a6, -1784
                  c.li         s11, -1
                  c.add        t1, gp
                  rem          t3, s10, a0
                  c.lui        t5, 13
                  srl          s8, t6, a3
                  c.srli       a5, 12
                  mul          a7, t3, tp
                  c.xor        a0, a5
                  nop
                  mulh         a4, ra, s11
                  xori         s8, ra, 1861
                  srai         s4, t1, 28
                  c.slli       s3, 20
                  sltu         zero, s6, s7
                  slt          t3, s8, s9
                  or           a7, s11, a4
                  c.li         s7, -1
                  or           s11, a7, a1
                  slti         s7, t0, -379
                  srl          a5, t5, t4
                  srl          zero, t2, a7
                  slti         ra, ra, -1363
                  sltiu        t3, s4, -1906
                  mulhu        s7, s9, a2
                  remu         a2, a2, t1
                  div          s6, t2, s11
                  nop
                  andi         s1, ra, -119
                  srli         t0, a5, 1
                  sltiu        s10, t4, -1112
                  srl          s10, s0, t6
                  auipc        s8, 629249
                  lui          t1, 907123
                  andi         t5, t6, 124
                  or           tp, a7, s11
                  srai         a5, ra, 30
                  c.xor        a2, a1
                  slt          t0, a0, s10
                  c.addi       t6, -1
                  rem          t5, a5, s9
                  sltu         t2, t2, s7
                  slti         s8, s1, -1798
                  add          ra, gp, s7
                  c.and        a4, a5
                  auipc        a1, 147020
                  nop
                  slti         a2, s2, -990
                  divu         t4, s9, s4
                  ori          ra, t5, -1695
                  c.srli       a2, 28
                  mulhsu       s10, a1, s11
                  c.lui        ra, 21
                  sll          s9, zero, zero
                  c.srli       a3, 16
                  auipc        a3, 171667
                  xori         s5, zero, 187
                  sltiu        s3, a3, -142
                  sltu         s4, t6, s9
                  auipc        s6, 247885
                  mulhu        t0, t3, a4
                  mul          gp, s6, s9
                  sltiu        zero, s0, -1394
                  slti         s6, tp, 39
                  sll          t1, a7, s2
                  sltu         a3, sp, s10
                  c.addi       a5, -1
                  srai         a3, t3, 28
                  addi         s7, s9, 1493
                  slt          a5, s4, a2
                  c.add        a2, s7
                  slt          a7, s3, s3
                  addi         a4, a5, -506
                  c.xor        s1, a2
                  div          zero, a1, t1
                  c.and        a0, s1
                  c.nop
                  xori         tp, tp, -1162
                  c.li         s4, 20
                  slti         t1, a0, -212
                  c.slli       a2, 31
                  mulh         a2, s10, s6
                  c.nop
                  nop
                  sub          tp, a3, s8
                  remu         a4, s5, sp
                  c.srai       a2, 19
                  ori          s11, a6, 1469
                  c.xor        a3, s1
                  mul          a5, s9, a4
                  addi         s6, a1, -943
                  addi         s11, gp, 730
                  lui          t6, 123617
                  c.sub        a3, s0
                  mulhsu       gp, s0, s11
                  c.srai       a0, 19
                  andi         a0, s0, 200
                  mulh         a3, a4, gp
                  c.nop
                  c.and        a0, a2
                  nop
                  c.slli       s4, 29
                  andi         t0, a1, 492
                  c.andi       a0, -1
                  mulhsu       t3, s10, a5
                  slli         s7, s1, 10
                  slti         t5, s0, 68
                  sll          t6, t1, a2
                  c.nop
                  add          t4, a2, t6
                  mul          s10, s9, s10
                  remu         s10, t1, sp
                  auipc        a1, 722151
                  c.andi       a1, -1
                  c.sub        a4, a2
                  c.li         gp, 27
                  c.li         a0, -1
                  c.li         t0, 5
                  c.xor        s1, a5
                  sll          a4, a3, a4
                  mul          s4, ra, s11
                  c.andi       s1, 13
                  sll          zero, ra, t5
                  mulhsu       t2, t4, a1
                  sra          s5, t4, ra
                  nop
                  slli         t3, ra, 6
                  sll          a7, a6, a6
                  sltiu        a5, t0, 845
                  ori          s10, s10, -712
                  srli         a7, a2, 9
                  c.addi       s6, -1
                  div          s6, sp, t0
                  c.nop
                  add          t1, t6, a2
                  mulhu        t5, s1, s1
                  xor          s2, t4, zero
                  c.li         t2, 5
                  div          a1, s0, s11
                  sub          s8, s9, t2
                  c.srai       a5, 23
                  addi         zero, s1, 1241
                  andi         s10, s11, -1938
                  c.xor        s1, a0
                  div          s6, t4, s4
                  srai         t1, a5, 12
                  c.or         a1, s1
                  c.srai       s1, 10
                  c.lui        a2, 25
                  remu         t6, s6, a7
                  c.andi       a5, 12
                  c.lui        t4, 21
                  sltiu        s6, a5, -1803
                  remu         s7, t5, t3
                  c.nop
                  srai         a5, a6, 5
                  srai         t6, s11, 20
                  c.srai       a3, 29
                  slli         a7, a6, 4
                  ori          a0, a7, 1152
                  c.nop
                  slt          s2, gp, a0
                  mulhsu       s10, tp, s7
                  xor          s5, s9, s5
                  rem          s1, zero, s11
                  and          a1, gp, t3
                  sll          s6, a6, a1
                  or           a4, t2, tp
                  c.srli       a1, 7
                  or           t2, t4, tp
                  lui          t0, 648498
                  c.sub        a0, s0
                  xori         gp, t4, -377
                  mulhu        t2, zero, s3
                  c.xor        s1, s0
                  c.addi       s10, -1
                  slt          ra, s11, a4
                  sltiu        s8, t0, -142
                  mul          s8, s10, t0
                  divu         gp, t6, s7
                  add          a0, sp, a4
                  srli         ra, sp, 30
                  sll          zero, s0, a4
                  c.or         a3, s0
                  c.or         a5, s0
                  sll          s1, s10, s2
                  c.addi       tp, 24
                  xor          a1, a2, s9
                  slli         a1, s2, 25
                  nop
                  div          t6, s7, t3
                  c.or         a4, a3
                  c.li         a0, -1
                  remu         t4, a0, t6
                  c.xor        a5, s1
                  c.addi       a2, 21
                  mulh         t3, t1, s4
                  c.sub        a0, a3
                  divu         t1, s0, s7
                  c.add        t4, s8
                  sra          a7, gp, s10
                  c.andi       a0, -1
                  srli         s2, s1, 24
                  c.xor        a2, s1
                  rem          a1, s10, s9
                  nop
                  addi         a7, t4, -1625
                  sll          a2, s4, a2
                  nop
                  srli         zero, a5, 23
                  slt          s9, zero, s8
                  and          s1, t6, t1
                  srai         s9, a3, 21
                  andi         t3, s5, 1253
                  mulhsu       a4, zero, s5
                  slt          s5, s7, s4
                  sltiu        s5, a0, -2035
                  c.andi       s1, 26
                  c.nop
                  xor          zero, t4, a0
                  auipc        t0, 991689
                  remu         a4, s1, a2
                  xori         a4, a2, -1911
                  c.srli       a3, 13
                  mulh         a2, ra, s5
                  and          gp, s5, s4
                  rem          t5, s2, a2
                  c.and        s1, a5
                  c.lui        a3, 18
                  c.slli       a1, 6
                  c.xor        a5, a3
                  andi         a2, t6, 976
                  c.sub        a4, a2
                  sra          gp, tp, t1
                  nop
                  c.srli       a0, 18
                  lui          ra, 821854
                  c.andi       a2, 28
                  c.srli       a2, 12
                  or           s2, s3, s0
                  nop
                  auipc        gp, 804429
                  lui          s10, 93997
                  divu         a3, t2, t6
                  slti         s4, a2, -541
                  rem          t2, ra, zero
                  slli         s6, a1, 20
                  andi         a2, a3, -2011
                  andi         s1, t3, 1666
                  c.lui        a5, 22
                  c.or         a5, a5
                  c.lui        t1, 2
                  c.lui        t0, 10
                  lui          s1, 78651
                  nop
                  add          s10, s8, a5
                  c.lui        a0, 21
                  divu         s10, a5, a0
                  divu         gp, ra, s11
                  srai         t4, zero, 19
                  ori          gp, t2, 1482
                  c.srai       a0, 10
                  sra          s3, a1, tp
                  sll          t0, s0, t2
                  mulh         s1, a5, ra
                  rem          a2, a6, s8
                  and          tp, s2, t4
                  sltu         a3, s6, s5
                  c.nop
                  rem          t1, t2, a4
                  c.lui        s2, 18
                  lui          s4, 677806
                  andi         s2, a3, 1473
                  mulhu        s5, t3, gp
                  mulhu        gp, a5, t1
                  c.sub        a0, a1
                  mulh         ra, s9, a3
                  auipc        s5, 929364
                  auipc        t1, 396355
                  c.srai       a3, 11
                  nop
                  xor          s7, a6, a5
                  sltu         s11, a3, s4
                  div          s4, a1, t6
                  mul          s11, s11, t4
                  and          t0, s2, zero
                  or           tp, s9, t1
                  xori         s2, a6, 1716
                  slt          t0, t2, t4
                  c.nop
                  lui          s4, 791454
                  c.add        t1, s5
                  or           t2, sp, gp
                  srai         a1, a4, 24
                  mul          s11, s7, s5
                  mulh         a2, gp, s5
                  c.sub        a2, a5
                  c.slli       t2, 24
                  c.li         s11, -1
                  c.srli       a5, 21
                  srli         a1, s5, 0
                  auipc        s10, 227411
                  auipc        a7, 918642
                  sub          s6, t1, t6
                  c.andi       a5, 23
                  div          a4, s3, a1
                  c.or         a4, a4
                  c.addi       s10, -1
                  auipc        gp, 534385
                  c.andi       a0, 31
                  xori         t4, s0, -828
                  ori          a3, sp, 839
                  mulh         t0, t2, a6
                  div          s5, s8, s6
                  c.addi       t1, 12
                  c.andi       a2, -1
                  addi         t4, s1, -1292
                  add          a3, t4, a3
                  sltu         s3, t0, t5
                  c.li         t2, -1
                  auipc        s11, 900824
                  sltu         a2, s2, a3
                  c.lui        s7, 11
                  c.lui        gp, 12
                  sltu         s3, s1, a5
                  rem          s7, t4, a0
                  mulh         a2, a1, s11
                  sltiu        a0, a0, -463
                  slt          t5, t0, s3
                  and          a1, s3, a1
                  c.andi       a3, 19
                  c.andi       a2, 12
                  slt          gp, t5, s7
                  c.add        a0, s8
                  c.srli       a0, 14
                  c.add        a1, t0
                  srai         s1, s7, 9
                  divu         a7, a5, a5
                  mul          s11, s10, a3
                  mulhsu       s4, s3, sp
                  c.mv         s5, sp
                  and          a1, t1, gp
                  divu         s8, t2, zero
                  c.mv         gp, tp
                  sra          t1, s4, t3
                  nop
                  addi         ra, a5, -357
                  slti         s7, t5, -1144
                  c.lui        t4, 8
                  slti         a5, gp, 1775
                  ori          ra, t3, 1143
                  addi         t0, a2, 1972
                  andi         a7, s3, -1827
                  xori         s6, sp, 1268
                  xori         s9, s8, 921
                  c.xor        a4, a5
                  remu         a4, s0, t3
                  lui          tp, 169008
                  divu         s6, s5, s1
                  rem          t0, t4, a6
                  c.addi       s8, -1
                  slt          s1, s5, a3
                  sll          s10, t4, ra
                  add          s4, tp, s8
                  auipc        t4, 186530
                  divu         t1, s2, s10
                  sltiu        s8, t4, 1382
                  sll          tp, tp, t2
                  sll          s6, t3, tp
                  sltu         a2, s11, zero
                  div          a1, t3, s8
                  c.lui        s5, 7
                  lui          tp, 441296
                  c.srli       a2, 26
                  slti         zero, t1, -270
                  sltiu        s3, s5, -266
                  slli         s7, s9, 23
                  c.li         s10, 19
                  c.sub        a2, a4
                  mulhsu       s1, a6, s1
                  c.slli       a5, 10
                  mulhu        zero, t5, s3
                  c.mv         s4, a6
                  lui          t3, 425415
                  mul          s4, a4, t4
                  sll          s1, t0, t6
                  div          s8, t6, tp
                  c.srai       a5, 22
                  divu         t2, a4, a7
                  rem          s11, a7, s0
                  sltiu        t1, s5, -288
                  add          s3, t2, t5
                  c.add        ra, a3
                  c.nop
                  c.sub        a1, a3
                  mulhsu       s1, t1, s11
                  mulhu        s7, t0, s6
                  c.andi       a5, 27
                  or           a1, ra, a0
                  c.srai       a4, 9
                  slli         s5, s11, 17
                  slt          t4, s3, gp
                  c.mv         t6, a4
                  ori          a7, a3, 1442
                  mulhsu       s9, s10, ra
                  srai         a2, t1, 18
                  c.srai       a5, 19
                  nop
                  slti         a3, a1, -940
                  sll          zero, a7, a5
                  mulhsu       t2, a0, a3
                  lui          s10, 12646
                  sub          t4, a1, gp
                  c.addi       s10, -1
                  and          tp, a4, t4
                  auipc        t5, 412346
                  srli         a4, sp, 9
                  rem          s1, s10, t4
                  slt          s11, a5, s1
                  c.slli       a0, 24
                  andi         a4, tp, -543
                  c.sub        s1, a3
                  c.and        a3, a3
                  nop
                  mulhu        s4, t5, s3
                  c.li         s8, 1
                  c.addi       a7, 24
                  addi         s1, s7, -1721
                  slti         t6, s1, 1507
                  xori         t6, t3, -1407
                  sra          s8, s2, a6
                  and          a4, t5, gp
                  c.xor        a2, s1
                  c.or         a1, a3
                  srli         t3, s6, 15
                  c.li         a7, 7
                  sltiu        s1, s8, -722
                  sltiu        a0, zero, -852
                  c.nop
                  mulhsu       a2, t6, a7
                  c.sub        a0, s1
                  divu         a1, s11, a2
                  sltu         a5, a3, a1
                  c.slli       ra, 21
                  lui          a1, 460312
                  c.and        a3, a5
                  div          s10, s8, a3
                  andi         zero, t0, -1168
                  lui          t4, 456448
                  div          s1, a3, a5
                  mulhsu       tp, s7, t2
                  c.lui        s7, 26
                  mulh         t2, a6, s4
                  slli         t5, t2, 26
                  c.mv         ra, a6
                  xori         t3, a6, -1793
                  c.andi       a5, 9
                  div          a1, t4, gp
                  c.lui        s10, 25
                  c.nop
                  srai         a2, t2, 2
                  rem          t1, s6, t5
                  ori          s1, s9, -1467
                  addi         t6, a4, 616
                  nop
                  add          s2, t3, gp
                  sub          a0, t3, a1
                  ori          t6, a0, 1099
                  sltu         a4, tp, s7
                  sra          zero, s10, a4
                  c.sub        s1, a3
                  remu         t5, s9, s8
                  mulh         t4, s5, s5
                  or           a2, a7, a6
                  div          s6, s8, a6
                  c.and        s1, a1
                  or           tp, t3, gp
                  add          s8, t0, t2
                  c.sub        a2, a5
                  rem          t1, t4, s0
                  c.lui        tp, 28
                  srai         a2, a5, 31
                  sra          s3, a2, zero
                  or           t5, s1, s2
                  and          s4, s5, gp
                  srl          gp, a4, t3
                  slt          s2, s10, s8
                  c.nop
                  c.or         a0, a2
                  divu         t3, a2, s0
                  sub          tp, t0, a4
                  divu         a0, s8, s6
                  ori          s10, a7, -1321
                  c.li         s11, 27
                  c.add        s8, a5
                  c.lui        t0, 24
                  sll          s10, a0, a0
                  sll          gp, t5, t4
                  or           s5, s2, t6
                  sltu         s9, s3, s3
                  divu         t2, s10, s10
                  c.andi       a3, -1
                  c.add        a7, t6
                  c.or         a2, s0
                  and          s4, a5, a0
                  add          s1, s10, s9
                  c.xor        a2, a1
                  c.add        s4, a2
                  auipc        t3, 98356
                  srli         s1, t5, 27
                  and          t0, s1, s3
                  c.li         a1, -1
                  div          s5, s8, s2
                  c.sub        s1, a1
                  c.nop
                  divu         t0, zero, t3
                  auipc        t4, 315744
                  mulhu        a3, s8, s1
                  sll          s9, gp, a1
                  xor          a7, s5, t6
                  c.slli       t2, 6
                  c.xor        a5, a0
                  mul          t3, t0, t4
                  add          s1, s0, s1
                  slt          a2, a6, s6
                  addi         s2, tp, -1050
                  slli         s5, a5, 14
                  add          t3, sp, a7
                  sll          t4, ra, a1
                  xor          a3, a3, s6
                  srli         a4, s0, 18
                  rem          gp, a7, t6
                  div          s2, gp, t3
                  c.add        a7, a7
                  auipc        gp, 386130
                  c.and        s1, a2
                  c.xor        a3, a0
                  c.srli       a1, 20
                  add          s9, s8, s7
                  c.nop
                  c.and        a4, a4
                  mulhu        tp, t2, t5
                  mulhu        s4, t4, t0
                  and          s11, s2, ra
                  xori         s8, ra, 1573
                  sra          s2, t3, s10
                  add          s3, a4, s10
                  sltu         t5, sp, t3
                  c.lui        s6, 20
                  c.mv         t0, s4
                  sll          tp, s6, s7
                  srai         s8, s5, 4
                  nop
                  c.nop
                  slli         s2, s9, 25
                  lui          a5, 166286
                  mul          s4, s10, t0
                  slt          a3, t1, t6
                  sub          a5, s8, s10
                  c.add        tp, a6
                  div          s10, gp, t3
                  remu         a7, gp, s9
                  auipc        tp, 640233
                  ori          ra, t1, -1895
                  lui          a4, 255118
                  mulh         tp, s8, t3
                  xor          s7, ra, s1
                  c.mv         gp, a1
                  c.srli       a2, 9
                  xori         gp, a0, 1719
                  c.or         a4, a3
                  divu         t1, s4, sp
                  or           t5, gp, s5
                  divu         s2, s8, a6
                  c.xor        a3, a1
                  c.and        a5, a5
                  mul          gp, s7, a3
                  c.slli       s1, 5
                  c.add        t1, t0
                  rem          t1, a1, tp
                  slli         gp, a0, 17
                  div          s11, s1, s11
                  c.addi       tp, 17
                  auipc        a2, 120787
                  add          s10, s11, a1
                  sra          a0, sp, gp
                  add          a4, s5, s4
                  mulh         a5, s3, s0
                  xori         s2, t3, -1897
                  srl          t0, t1, a5
                  div          a4, sp, s1
                  andi         a0, a4, -1953
                  remu         zero, s1, gp
                  xori         s1, s10, 1471
                  add          ra, s0, ra
                  nop
                  c.lui        s6, 4
                  c.add        s2, s1
                  srai         t2, sp, 22
                  rem          t0, s9, s5
                  rem          t5, sp, s0
                  and          a0, s1, s8
                  c.nop
                  div          t5, a0, gp
                  c.lui        gp, 14
                  xor          a5, a6, a4
                  srl          s5, s10, s4
                  sra          a3, t1, ra
                  c.srli       a3, 14
                  c.xor        a0, a2
                  ori          a2, a1, 2033
                  c.srai       a0, 15
                  c.andi       s1, -1
                  c.lui        s6, 15
                  nop
                  mul          a4, s4, tp
                  c.xor        a4, a1
                  c.addi       s2, -1
                  ori          s4, sp, 1566
                  c.srai       a5, 19
                  mulhsu       gp, t5, a4
                  c.xor        s1, a0
                  srli         s2, a1, 2
                  c.andi       s1, 24
                  c.sub        a2, a4
                  add          gp, a4, t0
                  andi         s1, s4, 279
                  c.slli       s2, 30
                  mul          t5, a1, tp
                  sltu         s11, t3, t6
                  remu         s8, s7, sp
                  srl          s8, gp, s4
                  lui          t6, 585689
                  slt          zero, s1, s9
                  div          s7, s5, s7
                  add          tp, t5, s10
                  sll          s5, a0, a2
                  c.slli       s6, 4
                  mulhsu       s10, tp, a2
                  sltiu        t6, s6, -1860
                  c.li         s6, -1
                  or           s7, s9, a2
                  remu         s7, t4, s10
                  mulhsu       s5, s8, tp
                  c.add        s9, s1
                  andi         s5, sp, 789
                  srai         t6, a6, 8
                  sub          a7, t1, s4
                  slli         ra, t6, 31
                  srai         s9, ra, 8
                  lui          s1, 1041679
                  c.nop
                  c.add        t0, s8
                  srai         gp, ra, 15
                  mulhsu       a5, s1, ra
                  nop
                  sltiu        a2, tp, -1199
                  c.sub        a1, a4
                  srli         s8, s9, 11
                  xori         t0, s11, -452
                  add          s9, a6, s3
                  srl          t2, t5, s10
                  and          s1, a0, a4
                  andi         a4, ra, 243
                  nop
                  c.nop
                  xor          t2, t2, t0
                  xori         t6, s4, -469
                  slti         s8, s7, -1113
                  xori         s1, s7, -605
                  sll          s4, s5, s0
                  nop
                  sll          a0, zero, a7
                  c.add        s4, s4
                  divu         s9, s7, t1
                  rem          s9, s2, t6
                  sra          a7, s4, sp
                  div          t0, a2, a6
                  auipc        t3, 747816
                  andi         a0, a6, 1190
                  sll          s3, s11, a1
                  c.add        s7, s9
                  slti         s2, a2, 1038
                  srai         t3, s5, 9
                  add          a7, a6, s0
                  auipc        s8, 376441
                  xor          gp, s9, t1
                  c.srai       a5, 30
                  nop
                  c.srai       a3, 28
                  rem          tp, s8, a5
                  mul          gp, t3, t1
                  xori         a4, sp, 906
                  c.sub        a0, a0
                  div          s4, s0, s6
                  srl          s5, s7, s8
                  srli         s9, zero, 30
                  c.xor        s1, a0
                  mulhu        a3, a5, t3
                  rem          s3, s8, s10
                  divu         a2, sp, t4
                  mulhsu       s6, zero, t1
                  auipc        ra, 88578
                  srai         t4, s7, 8
                  mulhsu       s1, s8, a6
                  sltiu        s11, s7, -1233
                  addi         a1, t2, -1675
                  mulh         a5, s11, a2
                  c.sub        a5, a2
                  addi         t2, t3, 342
                  slti         a5, gp, -138
                  slt          t1, a5, t4
                  ori          t0, s3, 1797
                  srli         t0, a3, 21
                  c.or         a1, a1
                  and          a1, a7, s8
                  c.or         s1, a4
                  mul          a4, t6, t1
                  c.andi       s1, -1
                  mulhsu       s6, t4, s0
                  c.slli       a1, 28
                  c.lui        a0, 13
                  lui          s10, 462356
                  c.sub        a1, s1
                  c.nop
                  slt          s2, s8, t0
                  c.sub        a1, a0
                  mulh         s5, s10, zero
                  ori          t1, a6, -267
                  divu         t5, t6, zero
                  mul          s9, t0, s8
                  c.xor        s1, s0
                  auipc        a1, 418066
                  srai         s3, ra, 11
                  slti         s9, sp, -1616
                  xor          ra, gp, s7
                  divu         t2, a4, t5
                  c.slli       s6, 12
                  sub          s3, t1, a2
                  sltu         gp, a0, s8
                  slli         ra, a1, 20
                  c.srli       a0, 6
                  c.addi       a0, 7
                  nop
                  c.andi       a2, -1
                  mulhu        a7, s3, s0
                  andi         a1, t3, 1197
                  lui          s6, 526829
                  c.sub        a1, a4
                  mul          gp, s10, t0
                  srai         s6, t1, 3
                  div          t5, a4, t1
                  sltu         s2, s10, a6
                  c.andi       a0, 19
                  c.mv         t5, t0
                  slli         s4, gp, 24
                  or           a3, t4, a7
                  mul          a2, t1, s10
                  andi         s3, t5, 1178
                  andi         a2, s10, -124
                  srai         s1, zero, 10
                  slti         s8, s7, 600
                  c.add        s1, ra
                  sltu         tp, gp, a3
                  c.lui        s9, 9
                  nop
                  c.addi       s10, -1
                  or           s7, t0, t0
                  slli         s6, t1, 21
                  nop
                  mulhsu       s11, s9, s2
                  c.srli       s1, 26
                  slti         s8, t3, 1320
                  c.addi       a5, -1
                  and          s7, t6, t0
                  c.andi       s1, 7
                  srai         a7, gp, 11
                  mul          a2, t2, t4
                  or           tp, t3, a2
                  c.and        a4, s1
                  or           t4, s11, t1
                  c.srli       a0, 27
                  c.slli       a4, 16
                  mul          gp, t1, s5
                  srai         s6, t5, 9
                  c.srli       a0, 19
                  remu         t6, s10, a2
                  c.srli       a1, 27
                  div          t1, gp, a0
                  sra          t4, t3, a2
                  slt          t1, gp, s9
                  ori          s3, a1, 1045
                  c.and        a0, a0
                  xor          a2, s7, a2
                  lui          s6, 784795
                  sltiu        t1, s9, 564
                  srl          a4, t0, s5
                  srli         t1, t0, 27
                  c.and        a1, a2
                  sra          tp, a2, t1
                  c.nop
                  andi         t0, tp, 929
                  mul          t3, s6, sp
                  c.srai       a2, 20
                  c.li         a0, -1
                  c.xor        a1, s0
                  xori         s6, a0, 108
                  c.xor        a0, s0
                  c.mv         gp, s10
                  c.or         a1, a0
                  c.nop
                  slli         ra, a0, 7
                  c.mv         a3, s7
                  c.add        s6, s3
                  sra          s1, s9, gp
                  slti         zero, s4, 1237
                  mulhu        s9, s5, a7
                  srli         a5, tp, 17
                  c.and        s1, a2
                  addi         zero, s11, 801
                  rem          s4, s7, s8
                  div          s7, s1, a4
                  lui          s6, 504583
                  c.srai       a0, 23
                  sll          s3, a5, s8
                  c.andi       a5, -1
                  xor          t1, a1, a2
                  add          s8, s10, a1
                  srai         s3, s3, 25
                  add          a0, a4, s9
                  slli         zero, s3, 6
                  c.add        s11, a1
                  c.xor        a0, a0
                  auipc        a3, 600964
                  c.addi       t2, -1
                  c.lui        a7, 24
                  sub          t1, s0, gp
                  slti         s3, a4, -1893
                  mulhsu       t5, a1, a3
                  and          a2, t0, a4
                  mulh         s9, t0, s2
                  remu         tp, s9, t5
                  srai         s3, s2, 7
                  div          t2, a5, s5
                  slti         ra, s7, 1553
                  slti         a4, s2, 457
                  c.addi       t2, 13
                  c.andi       a3, 17
                  add          tp, a1, s4
                  auipc        t5, 933382
                  auipc        s8, 1043910
                  sub          a1, t0, a7
                  sra          s11, a3, t3
                  c.srai       a3, 28
                  slt          a0, a6, s4
                  c.or         a2, a3
                  srai         ra, s0, 16
                  c.and        s1, a0
                  slt          a0, s6, gp
                  xor          s6, s3, a5
                  slli         s2, a0, 15
                  sra          s3, s10, t2
                  ori          s9, s6, -100
                  slti         s9, gp, 180
                  c.or         a0, a4
                  add          t4, a1, t3
                  xor          a7, a1, a1
                  slli         a4, t0, 17
                  slt          s6, t5, a7
                  sll          s10, s6, s9
                  sll          t0, t1, a5
                  andi         t1, t1, 363
                  mul          a3, a3, zero
                  c.lui        t4, 18
                  c.srai       a1, 28
                  c.srai       a0, 6
                  c.sub        a2, a3
                  c.add        s8, a4
                  srli         a1, s6, 28
                  auipc        s4, 1001426
                  slti         s3, t3, 1447
                  c.add        s2, s4
                  add          s7, t3, gp
                  nop
                  ori          a1, a6, 1053
                  mulhsu       a1, s5, s6
                  xor          t2, s3, t0
                  c.srai       a4, 1
                  add          a3, a4, s4
                  nop
                  c.andi       a5, -1
                  or           gp, t6, t2
                  nop
                  nop
                  divu         a1, ra, a5
                  remu         ra, s10, t6
                  nop
                  addi         a0, s7, 741
                  mulh         s1, t0, a2
                  c.slli       s1, 25
                  mulhu        a5, zero, s1
                  divu         a4, sp, s3
                  sltu         a7, sp, s7
                  sltu         t3, s1, a7
                  c.xor        a0, a4
                  xor          a2, a7, a4
                  and          tp, s4, a2
                  nop
                  addi         t1, t1, 1137
                  c.or         s1, a1
                  and          s1, s11, s7
                  mulhsu       zero, a4, a0
                  sltiu        a0, t3, -532
                  c.srai       a1, 3
                  mul          a2, a3, a7
                  sltiu        s2, t2, -651
                  lui          a7, 554045
                  c.or         s1, a4
                  c.srli       a1, 12
                  mul          t6, a0, s0
                  lui          s8, 746238
                  mulh         s4, s2, s5
                  c.or         a1, a4
                  sll          a3, a4, t3
                  andi         a5, a1, -696
                  srli         s3, s1, 12
                  sltu         a3, a4, a4
                  add          a2, s3, s6
                  mulh         t5, t5, s7
                  div          t6, s0, a2
                  c.add        t5, a3
                  addi         s3, t0, -1015
                  sltiu        t4, a3, 1463
                  sra          t4, a3, a7
                  ori          ra, gp, -101
                  c.add        s5, a3
                  c.srai       a5, 18
                  or           t4, s1, t0
                  c.sub        a2, a4
                  c.addi       ra, 13
                  or           t4, zero, s0
                  andi         a7, ra, 535
                  srli         a0, s2, 25
                  and          tp, gp, t6
                  srl          t3, s3, a2
                  mulhu        a7, t4, s6
                  sub          s3, tp, sp
                  sltiu        a0, t2, 1028
                  mulhu        zero, s0, s9
                  andi         s8, t1, -320
                  auipc        ra, 58212
                  rem          t0, s0, t6
                  c.srli       a1, 31
                  c.li         a3, 13
                  mulh         t1, a4, sp
                  addi         zero, t2, 517
                  div          t0, s6, t0
                  c.xor        a1, a5
                  and          s7, s4, s6
                  ori          t4, sp, 1758
                  c.sub        a0, a2
                  or           s10, s3, s4
                  sltiu        t1, a3, -369
                  mulhsu       s5, sp, a6
                  srl          gp, s8, t5
                  c.add        t5, a4
                  c.and        a3, a4
                  slt          s1, t4, t5
                  c.slli       t5, 8
                  c.add        t4, sp
                  remu         a5, t0, t4
                  c.xor        a1, a2
                  divu         s5, a7, a6
                  slti         s6, s8, -305
                  divu         s10, s1, a0
                  srl          a3, s1, s7
                  auipc        s8, 156348
                  srl          s8, a3, s1
                  c.srli       a1, 18
                  divu         gp, ra, s2
                  lui          t0, 555681
                  add          a3, t4, a1
                  div          a4, s0, t5
                  sra          a0, t6, sp
                  slt          tp, s4, a3
                  c.and        a1, a3
                  andi         s2, s7, -1954
                  srai         s4, s5, 29
                  mulhsu       t1, t2, a4
                  remu         s10, s3, t1
                  nop
                  andi         a0, t6, -805
                  mulhsu       a7, t1, a7
                  c.add        a0, a7
                  and          tp, t5, s11
                  c.and        a1, a3
                  sub          ra, s1, s10
                  slli         s9, a0, 21
                  c.xor        a2, a1
                  xori         ra, a6, -663
                  xori         tp, a2, -1836
                  xori         s9, s5, -1613
                  divu         s1, t5, a6
                  andi         s1, tp, -868
                  c.mv         t3, a1
                  div          s8, t6, zero
                  c.sub        s1, a3
                  c.li         s4, 0
                  div          t0, a7, s3
                  add          tp, zero, sp
                  srai         s8, a1, 22
                  c.li         a1, 13
                  sub          s10, t4, a0
                  c.nop
                  xori         a0, s2, 1440
                  c.srli       a1, 7
                  nop
                  slti         t5, s2, -1873
                  mulhsu       gp, t0, s7
                  c.nop
                  c.srli       a0, 14
                  add          a7, a2, a5
                  srl          a7, s11, t6
                  slli         s6, s1, 31
                  c.srai       a4, 14
                  sra          s2, s10, t5
                  ori          s4, t6, 1788
                  c.xor        a3, a0
                  and          s2, zero, s2
                  lui          t6, 821402
                  c.mv         s2, s5
                  divu         s1, a6, t5
                  srl          a2, t5, t4
                  c.slli       a2, 6
                  srai         s3, gp, 28
                  slli         s8, s6, 16
                  or           t6, t6, a6
                  sltu         t6, t6, a5
                  xori         t4, s6, 191
                  xori         t1, sp, 1098
                  srli         a4, a1, 18
                  xor          s8, zero, t2
                  lui          s2, 164424
                  slli         s8, s3, 12
                  divu         a2, ra, s7
                  c.xor        a5, a4
                  lui          gp, 164498
                  c.add        a7, sp
                  c.srli       a2, 24
                  c.addi       a3, 24
                  c.or         a0, a0
                  c.slli       t0, 11
                  add          s1, tp, s6
                  srl          s4, s5, a2
                  c.srli       a1, 17
                  srai         a7, gp, 27
                  sll          s6, s2, a3
                  c.mv         a1, s9
                  nop
                  c.addi       s6, -1
                  c.nop
                  xor          s1, s5, s6
                  div          t3, ra, gp
                  div          t2, s7, s8
                  c.lui        tp, 9
                  divu         s1, ra, s6
                  rem          t1, s1, a1
                  c.andi       a0, 26
                  c.addi       a2, 18
                  xori         ra, a0, -1111
                  c.mv         a1, t6
                  xori         t4, sp, 983
                  div          t2, a2, s11
                  lui          s4, 442001
                  c.or         a0, a1
                  c.sub        s1, a4
                  nop
                  c.lui        a3, 26
                  sra          a0, a7, t1
                  add          a1, t0, t2
                  lui          a4, 1018657
                  sra          t5, t6, s5
                  slt          t6, gp, a0
                  slti         t1, s0, 1212
                  c.sub        s1, a4
                  mulhu        s10, t5, s10
                  add          s7, s2, a1
                  sub          t5, s4, t6
                  c.xor        a3, s0
                  mulhu        s8, s11, s4
                  c.and        a3, a4
                  c.add        t2, a2
                  c.srai       a0, 26
                  mulhu        t1, s6, a4
                  c.nop
                  mulhsu       s8, s2, s11
                  c.or         a5, a0
                  andi         t1, tp, 455
                  c.add        gp, s1
                  xor          s2, a5, s2
                  c.nop
                  sub          t4, a2, s2
                  srai         zero, t4, 16
                  c.lui        a4, 25
                  c.li         a2, 27
                  mulhu        s11, a3, s8
                  lui          a7, 48713
                  c.add        t1, a0
                  c.xor        a4, s1
                  c.add        s3, s5
                  c.nop
                  nop
                  slt          t1, a7, s10
                  nop
                  rem          ra, a6, s0
                  srl          s11, s11, s10
                  c.addi       s11, -1
                  add          ra, s7, s0
                  c.or         s1, a4
                  c.li         s2, 14
                  srl          tp, t0, sp
                  sltiu        s10, s11, -1468
                  rem          s9, t1, s9
                  c.srai       a2, 10
                  and          gp, a6, ra
                  srli         a4, s2, 10
                  c.srli       s1, 3
                  c.and        s1, s0
                  or           s9, t5, s2
                  div          t4, s4, s5
                  auipc        s5, 873134
                  mulh         t3, s5, sp
                  andi         zero, a1, 562
                  div          s3, t2, s6
                  ori          s5, s10, -723
                  mulh         t1, s11, s1
                  mul          t6, a4, t5
                  c.mv         t4, s10
                  sll          zero, s3, sp
                  c.or         s1, a1
                  and          s3, s9, a0
                  xori         zero, s6, 1834
                  slt          t4, s7, t2
                  xor          s8, s9, s3
                  slli         s9, ra, 7
                  div          zero, a2, a0
                  c.xor        a3, s0
                  ori          s8, t2, 1437
                  c.mv         a7, s1
                  mul          s5, s10, t1
                  sltu         s2, s10, s4
                  andi         t4, t6, 1968
                  c.li         s8, -1
                  c.and        s1, a0
                  srl          t5, tp, t5
                  xori         a3, a4, -1609
                  srai         s3, s8, 3
                  sltu         t6, s9, s8
                  and          t6, s7, t3
                  ori          t1, s1, -789
                  slt          a5, s5, s0
                  sltu         a2, zero, s3
                  xori         s4, t1, -614
                  c.andi       a3, 16
                  c.sub        a0, a5
                  div          a5, t1, t4
                  c.slli       t1, 5
                  c.and        a4, a5
                  mul          s11, s2, s9
                  and          s5, a6, s3
                  and          a4, a4, s10
                  xor          gp, a0, a1
                  sltiu        a0, t2, -1496
                  c.add        a7, s8
                  c.addi       tp, 26
                  sltiu        zero, s0, 189
                  c.slli       tp, 21
                  c.xor        s1, a1
                  sltiu        a0, s6, 905
                  ori          a2, a0, 311
                  or           a5, zero, t5
                  auipc        zero, 337096
                  c.addi       gp, -1
                  c.or         a3, a2
                  lui          t1, 72431
                  and          a5, s5, a5
                  c.addi       s4, 31
                  slli         a7, s9, 24
                  c.mv         t1, t5
                  div          s1, t6, s0
                  sra          s4, s3, s0
                  sll          a0, t6, s7
                  sltiu        s1, s3, -530
                  and          s4, a6, a0
                  xori         s4, s1, -136
                  c.srli       a3, 18
                  xori         t6, s6, -1247
                  sll          t3, s3, s10
                  c.nop
                  slt          t0, t4, t0
                  sltu         gp, t4, gp
                  c.add        t1, a0
                  srai         a2, a7, 17
                  c.lui        a0, 17
                  addi         s4, s4, 452
                  srli         s1, zero, 18
                  sltiu        s11, s1, 213
                  nop
                  c.xor        s1, a4
                  remu         t0, a0, a1
                  c.li         t5, 3
                  c.andi       a2, -1
                  srai         t2, s3, 22
                  c.andi       a1, 28
                  andi         a0, s6, -650
                  xori         zero, s3, 2005
                  mulh         s6, zero, a1
                  srl          t5, s9, t0
                  mul          s1, ra, s7
                  mulhu        tp, t2, t0
                  slti         a0, a1, 1653
                  auipc        t0, 290459
                  c.lui        s5, 29
                  c.li         a4, -1
                  add          a0, s9, a2
                  srl          a2, s1, s5
                  sltiu        a2, tp, -1171
                  add          s9, a5, zero
                  auipc        zero, 33201
                  c.add        s2, t1
                  c.sub        a3, a1
                  c.xor        a4, s1
                  divu         s1, gp, s10
                  c.add        t0, s7
                  mul          a7, t3, s11
                  c.add        s10, s4
                  auipc        t0, 345998
                  nop
                  c.sub        a5, a3
                  slti         gp, s10, 631
                  mulhu        a7, s4, a3
                  c.xor        a0, a5
                  sra          a5, ra, t1
                  mulhsu       t3, t3, s3
                  c.andi       a1, 6
                  c.srai       a3, 12
                  mulhu        t6, a7, t5
                  c.nop
                  srli         s8, tp, 10
                  slli         t5, a2, 26
                  c.addi       s8, 17
                  c.nop
                  slli         s8, a0, 23
                  remu         a2, s3, s8
                  nop
                  slt          a5, tp, t3
                  sll          t2, a3, t4
                  sll          ra, ra, s0
                  rem          a3, a3, s9
                  xori         tp, t3, -1835
                  c.xor        a4, a1
                  nop
                  rem          a3, t3, s6
                  slli         a1, t2, 0
                  c.mv         t1, tp
                  srli         t3, s5, 21
                  sltiu        tp, a2, -1955
                  slt          a0, zero, t5
                  add          t0, s9, t0
                  c.add        a5, s2
                  sub          t4, s3, tp
                  mulh         zero, s9, a4
                  sra          s6, t0, s0
                  andi         t3, s3, -1126
                  c.add        s11, gp
                  slt          gp, zero, a1
                  add          t4, a2, s7
                  c.andi       a5, 21
                  c.lui        a4, 4
                  c.srai       a2, 28
                  mul          s3, a2, a5
                  xor          t1, tp, sp
                  sll          a3, t4, a6
                  add          t5, t4, s0
                  sll          a1, s2, a4
                  mul          s9, t6, t4
                  mulhu        t1, t4, s2
                  c.or         a2, a2
                  divu         s6, s1, s7
                  c.sub        a1, a0
                  remu         s11, tp, s7
                  slli         a3, a2, 11
                  mul          t3, a6, s4
                  c.li         t0, 20
                  mulhsu       zero, s11, a4
                  add          t0, s10, s3
                  auipc        t2, 354677
                  mulhsu       t0, s10, t0
                  slti         a0, s5, 1351
                  c.srli       s1, 26
                  c.xor        s1, a2
                  mul          a4, s6, s10
                  c.srli       a5, 7
                  and          s10, s0, gp
                  rem          t5, a7, s7
                  srai         gp, ra, 17
                  remu         s7, s3, a0
                  c.mv         t1, a7
                  c.nop
                  auipc        a5, 37362
                  c.slli       a5, 16
                  c.srai       a4, 15
                  srai         a1, a2, 21
                  c.add        s10, t2
                  divu         t2, s7, zero
                  mulhu        s3, s5, s2
                  mulh         s3, gp, t4
                  xori         a1, a6, 467
                  c.and        a0, a3
                  srli         s5, a0, 19
                  c.addi       a0, -1
                  rem          zero, s6, t2
                  mulhsu       a5, sp, s7
                  add          a5, s1, a4
                  auipc        t2, 820071
                  sltiu        a7, a3, 1689
                  div          t3, s5, s6
                  mulhsu       t4, s10, s5
                  c.and        s1, a5
                  auipc        a4, 700396
                  c.nop
                  xori         t4, s9, 508
                  sltu         gp, s10, t3
                  div          s7, a5, gp
                  c.and        a1, s0
                  mulhsu       t1, a0, s1
                  srai         ra, t2, 2
                  sltiu        s5, t2, 969
                  remu         s11, a2, s2
                  c.xor        a2, a4
                  andi         a2, a6, -1677
                  c.sub        s1, s1
                  slti         s2, a2, 1308
                  c.li         a0, 23
                  sub          t5, t1, s5
                  c.andi       a3, -1
                  srl          a4, t4, t4
                  and          s3, a5, s9
                  c.lui        s2, 20
                  c.andi       a0, -1
                  mulhu        a1, a5, t2
                  c.srai       a1, 26
                  srl          a7, a4, t6
                  add          t2, ra, s2
                  mul          a4, s4, s2
                  auipc        t3, 559585
                  c.sub        a0, s1
                  mulhu        gp, s11, t6
                  sub          tp, a5, a0
                  sll          gp, a7, s7
                  sltu         s1, a0, s7
                  divu         a5, a3, s3
                  xor          t2, t5, s8
                  c.li         a3, -1
                  c.lui        t6, 13
                  c.sub        a1, a3
                  slt          t1, a5, s2
                  c.xor        a4, a5
                  xor          t5, t4, s0
                  remu         s11, s10, a1
                  c.add        s5, tp
                  c.sub        s1, a4
                  srl          s11, a1, a3
                  mulhsu       a1, t6, a5
                  mulhsu       s11, s3, s6
                  c.li         a0, -1
                  andi         a2, t0, 200
                  mul          gp, a3, gp
                  c.or         a0, a1
                  c.andi       a5, -1
                  slli         t2, s2, 0
                  c.slli       a1, 5
                  c.li         a3, 11
                  xori         t4, a0, 1906
                  div          t0, s9, gp
                  lui          t4, 489540
                  mulhsu       s7, s2, t1
                  slt          s8, a5, a6
                  remu         s6, t0, t5
                  andi         t5, s9, -20
                  c.add        s5, a7
                  c.or         a1, a2
                  xor          s9, sp, a0
                  c.li         t2, 4
                  auipc        zero, 318365
                  sltiu        t6, ra, -112
                  srl          s8, t3, s2
                  divu         a7, a1, t6
                  slt          t6, s0, s6
                  ori          s10, t5, -1155
                  srli         s8, s7, 9
                  c.slli       s8, 4
                  c.xor        a4, a2
                  c.xor        a2, s0
                  c.sub        a5, a2
                  sll          t5, t5, s2
                  rem          zero, s3, s3
                  srai         s6, s4, 10
                  c.li         a1, -1
                  ori          gp, t0, 1421
                  mulh         s4, t5, a0
                  divu         s9, t6, t0
                  remu         s5, a1, s3
                  srli         zero, a5, 31
                  slti         t1, t3, -984
                  c.slli       ra, 9
                  sra          a0, zero, s2
                  sll          t4, t5, t0
                  c.or         a0, a2
                  ori          t2, a7, -402
                  sub          t0, a5, a6
                  c.lui        t2, 9
                  srli         t1, a3, 8
                  mulhsu       a2, s9, s0
                  auipc        s6, 373829
                  andi         s6, s7, -1991
                  c.li         t0, 9
                  c.lui        tp, 10
                  c.nop
                  c.nop
                  add          s8, s7, ra
                  c.andi       a4, -1
                  c.srli       s1, 7
                  c.and        s1, a4
                  slti         a5, gp, -61
                  c.and        a0, a2
                  remu         ra, a4, a3
                  divu         a2, t6, gp
                  slt          s9, a2, a7
                  c.xor        a5, a4
                  c.lui        s8, 15
                  xori         s10, t6, 553
                  auipc        t4, 225392
                  c.andi       a2, -1
                  c.addi       s7, -1
                  slli         a7, t6, 4
                  sltiu        s5, a1, -1017
                  sra          s2, s6, a4
                  sub          gp, t1, sp
                  c.srli       a5, 4
                  mulhu        s1, s2, t1
                  sub          a0, t4, tp
                  xor          s6, s10, ra
                  or           s7, s1, s10
                  slli         t1, a3, 18
                  c.addi       s3, -1
                  c.sub        a0, a5
                  c.or         a0, a1
                  c.xor        s1, a0
                  c.addi       s11, -1
                  slli         t6, a3, 29
                  xori         s3, s11, 600
                  c.srli       s1, 3
                  mulh         gp, ra, a3
                  slti         s9, t1, -1437
                  or           a3, t2, zero
                  divu         s4, gp, t3
                  xori         s1, a5, 785
                  sltiu        a3, s1, -1780
                  c.srli       a3, 19
                  remu         s11, gp, a1
                  remu         a3, s11, s5
                  c.mv         a0, s6
                  c.li         s1, -1
                  c.add        t4, a0
                  c.srli       a4, 14
                  c.srai       a1, 17
                  sltiu        s4, s7, 430
                  sltiu        s1, s3, 2009
                  sltiu        a7, s0, -1300
                  lui          s2, 640480
                  srl          s6, s2, ra
                  addi         s3, t0, 55
                  sra          a3, s0, s5
                  slli         t5, s4, 31
                  c.and        a1, a4
                  remu         t5, s0, s2
                  c.or         a4, a3
                  c.nop
                  divu         s6, s7, s4
                  rem          s11, a0, s4
                  c.or         a3, a4
                  sll          t6, t1, s1
                  div          s3, gp, a5
                  mul          a0, t3, t2
                  c.andi       a1, 7
                  nop
                  mul          s9, a1, a5
                  c.andi       a0, -1
                  c.slli       s3, 20
                  c.xor        a0, a5
                  srli         s11, a5, 18
                  c.or         a3, a3
                  c.srli       a4, 22
                  remu         s10, t4, a2
                  slt          a7, s1, t2
                  c.and        a0, a0
                  c.xor        s1, a3
                  c.nop
                  mulh         gp, s5, a1
                  remu         s8, sp, tp
                  ori          a2, t2, 1306
                  c.and        a4, a2
                  auipc        s4, 734159
                  slli         t3, t4, 17
                  mulhsu       a0, a4, a4
                  xori         s3, ra, 20
                  srli         zero, t5, 8
                  sll          s4, a0, s1
                  nop
                  c.srli       a3, 11
                  mulhsu       s11, s2, t2
                  slti         s1, t1, 563
                  mulhsu       s1, a6, s10
                  mulhu        s2, s4, t3
                  slli         t6, a2, 5
                  c.slli       s2, 1
                  and          a4, a4, s10
                  c.lui        a0, 25
                  c.sub        a3, a5
                  c.lui        tp, 19
                  mulhsu       zero, t4, s10
                  auipc        s11, 561988
                  c.or         a0, a3
                  c.srli       s1, 16
                  xori         s10, ra, 73
                  c.andi       a4, 25
                  divu         t6, tp, a7
                  srli         a0, s4, 22
                  mulh         s2, a6, a3
                  lui          s4, 668610
                  mulhsu       t0, s1, a7
                  srl          s8, s2, a2
                  c.or         a4, a4
                  slli         a3, t4, 6
                  rem          s2, t3, a0
                  srl          t3, t3, s6
                  srai         s4, s3, 13
                  add          s1, s3, t2
                  c.sub        a1, a5
                  sltu         a5, s9, t2
                  c.lui        a7, 12
                  or           tp, tp, ra
                  c.srli       a3, 17
                  c.srai       a4, 8
                  sll          zero, a3, t2
                  remu         s6, s2, a7
                  c.xor        a3, s0
                  srl          s7, a7, gp
                  c.add        t5, a2
                  xor          s3, a2, t4
                  remu         s10, gp, t3
                  sra          a7, t6, s1
                  slli         t1, t6, 4
                  remu         s11, a0, a1
                  slti         t3, t0, 757
                  slti         a1, s6, -472
                  c.lui        s10, 10
                  xori         s11, t3, 1980
                  c.and        a5, a2
                  divu         tp, s0, sp
                  c.srai       a0, 27
                  or           t1, a0, s7
                  c.and        a5, s0
                  sra          a1, a3, a2
                  c.slli       a0, 31
                  ori          a5, a7, -1026
                  slli         a4, s4, 23
                  sub          a0, t1, s9
                  or           t4, s9, a5
                  addi         a0, s0, 1176
                  mulh         a1, s9, s3
                  c.andi       a2, 9
                  ori          t1, zero, -1983
                  nop
                  sll          a1, t3, a0
                  c.srai       a3, 22
                  div          a7, t6, a2
                  add          s2, tp, a5
                  and          a2, t1, t5
                  mul          tp, s11, a4
                  c.addi       t1, 11
                  ori          s2, t1, 1993
                  c.srli       a3, 12
                  c.and        a4, a2
                  andi         s9, a3, 985
                  c.xor        a4, a4
                  c.mv         s8, a6
                  c.slli       s5, 3
                  c.nop
                  c.li         s8, 30
                  c.andi       a0, 9
                  c.slli       s3, 24
                  sra          s2, a5, a0
                  and          t2, zero, s6
                  c.and        a0, a1
                  rem          zero, a0, t5
                  c.xor        a3, a3
                  slti         zero, s10, 947
                  mulhsu       a1, s3, s2
                  c.add        tp, a7
                  sltu         t3, s7, gp
                  xor          s9, a5, sp
                  c.or         s1, s1
                  c.and        a1, a4
                  or           s3, a6, s11
                  slti         a5, s8, -1499
                  mulh         a0, t1, s6
                  c.nop
                  mulhsu       a0, s6, s5
                  sltiu        t0, t2, 1080
                  ori          s9, s3, -1936
                  xori         t3, a5, -241
                  div          s9, s11, s11
                  c.srai       a0, 22
                  divu         s6, s6, t6
                  remu         a2, s8, a7
                  c.sub        a4, s1
                  c.or         a5, s1
                  ori          s2, t4, 1705
                  srli         a5, a2, 25
                  c.xor        a2, a3
                  ori          t5, t5, -582
                  and          a7, a2, s11
                  ori          t4, a2, 384
                  remu         a0, s0, s8
                  or           s10, sp, s4
                  c.add        a0, a1
                  srai         tp, zero, 2
                  c.and        a5, s1
                  c.srai       a2, 21
                  slti         ra, t3, 440
                  slt          t4, s6, s6
                  xori         a0, s0, -1683
                  div          gp, a0, ra
                  c.and        s1, a2
                  mulhu        a4, t0, gp
                  mul          s1, t3, sp
                  c.sub        a4, a4
                  slti         a2, s2, -1090
                  c.sub        a4, s0
                  c.addi       t0, 23
                  c.nop
                  ori          s10, s10, 1970
                  sub          a4, s4, a3
                  sll          s4, s7, t3
                  slli         zero, a7, 4
                  xor          s6, s2, a2
                  c.or         a3, a5
                  mulhu        tp, a1, a3
                  lui          zero, 539238
                  div          ra, s2, a3
                  slti         s7, gp, -65
                  srli         s1, a0, 29
                  slti         t6, t4, -253
                  c.sub        a1, a0
                  c.and        a2, a3
                  sltiu        a3, s2, 1012
                  slli         a0, t4, 19
                  or           a3, s7, zero
                  srai         ra, t4, 29
                  c.sub        a2, a4
                  sltiu        s8, a1, -1865
                  xori         s10, tp, -866
                  mulhsu       zero, gp, a2
                  srli         s10, t5, 31
                  c.or         a0, a5
                  sll          t3, s7, s1
                  and          s10, tp, s6
                  mulhsu       t6, t2, s7
                  c.lui        t5, 23
                  slti         s3, tp, -578
                  c.add        ra, t0
                  c.addi       a3, 9
                  sub          s2, s6, s8
                  or           t3, a5, s0
                  c.lui        t5, 16
                  sltiu        t6, s4, 1230
                  sll          t5, a0, a7
                  mulhsu       s6, tp, a0
                  slti         a2, s1, 1128
                  divu         s6, s3, a7
                  and          ra, a2, s10
                  c.addi       t6, -1
                  sll          s4, a3, s5
                  c.addi       t4, -1
                  c.srai       a2, 20
                  c.and        a5, s0
                  srli         a2, a4, 8
                  slti         s1, s4, -1339
                  slli         s6, t2, 11
                  sltiu        s9, t1, 1615
                  xori         t4, t6, 773
                  c.addi       a5, 13
                  mulh         ra, t3, a3
                  or           s8, s4, s9
                  c.andi       a3, -1
                  add          a1, a5, s10
                  c.mv         a4, s2
                  nop
                  c.slli       a7, 3
                  and          s2, s9, a3
                  rem          t5, a1, tp
                  andi         s3, a5, -1660
                  c.li         t1, 8
                  and          t1, a5, t0
                  srli         zero, s5, 31
                  c.add        a1, a6
                  mul          s3, a1, t0
                  mulhu        s8, zero, t2
                  c.srai       a0, 4
                  ori          s1, s1, 502
                  slt          zero, s0, a1
                  rem          ra, a7, zero
                  c.srai       a0, 17
                  slti         s9, t2, 1021
                  c.add        a3, t1
                  andi         t3, s0, 163
                  slt          s6, ra, s6
                  sll          s4, s7, s0
                  xori         a1, s10, 1574
                  slt          s8, s9, a6
                  and          s9, s0, a0
                  c.addi       a5, 30
                  c.add        s10, s1
                  c.xor        a0, s1
                  remu         s9, sp, t2
                  mulhu        s11, s6, a3
                  c.srai       a0, 29
                  c.sub        a2, s1
                  xori         gp, sp, -85
                  nop
                  mul          ra, s10, a7
                  mulh         s7, a6, a3
                  slli         zero, sp, 13
                  lui          a1, 560466
                  c.nop
                  sub          a2, t0, s6
                  srl          s4, s10, a6
                  srai         s2, s3, 0
                  lui          t0, 333691
                  c.mv         a0, s8
                  sll          s6, s6, t4
                  c.or         a2, a0
                  auipc        tp, 676807
                  ori          ra, sp, 221
                  nop
                  xor          t5, gp, s9
                  slt          s4, s1, s7
                  auipc        a4, 1042302
                  mulhu        ra, s5, tp
                  c.srai       a1, 31
                  c.slli       s1, 28
                  c.nop
                  c.mv         gp, s5
                  nop
                  c.andi       a2, 24
                  and          s2, t5, a5
                  addi         a7, a6, -493
                  c.slli       a5, 16
                  c.li         tp, 12
                  div          t5, s4, s11
                  c.addi       s10, 3
                  sra          a1, s1, a0
                  mul          s8, t5, a5
                  ori          a4, s2, -118
                  xori         ra, s9, -1417
                  c.srli       a2, 19
                  lui          a0, 912752
                  add          t6, s6, s2
                  slli         t6, a4, 18
                  c.srli       a1, 16
                  srli         a2, t1, 24
                  lui          s4, 35457
                  c.addi       t5, 12
                  c.srli       a1, 5
                  auipc        s10, 1004522
                  slti         a2, s4, 1193
                  mulhu        zero, t1, t4
                  sltu         tp, t3, a2
                  or           ra, t6, a2
                  auipc        s11, 47516
                  c.andi       s1, 8
                  slti         t2, s6, -59
                  c.li         s10, -1
                  sra          t1, s9, s10
                  sltiu        t1, t1, 1699
                  div          s2, s10, s8
                  c.addi       a7, 22
                  c.addi       s5, -1
                  c.srai       a2, 4
                  sra          s4, gp, s2
                  sll          s1, s6, sp
                  sra          s5, s10, s10
                  sll          s3, t1, ra
                  or           s10, s9, s0
                  remu         s10, sp, s0
                  c.sub        s1, a5
                  xori         zero, a7, 1236
                  srli         t0, s6, 2
                  auipc        t2, 386055
                  ori          t3, t2, -897
                  slt          s6, s7, a1
                  c.li         a5, 5
                  addi         zero, t6, -1936
                  sll          t5, s4, t2
                  and          a2, gp, ra
                  rem          a1, t3, s3
                  c.or         a0, s0
                  slti         a1, a2, -1668
                  div          s2, s4, t6
                  c.nop
                  c.addi       s8, 1
                  sra          zero, s5, a4
                  lui          a4, 830767
                  rem          t2, t3, s2
                  addi         gp, t2, -120
                  c.lui        a7, 3
                  remu         tp, s8, s3
                  sll          s7, s3, a7
                  and          t0, a6, t5
                  remu         a5, s1, s4
                  c.lui        ra, 31
                  c.and        a4, a0
                  slt          s2, zero, s9
                  rem          zero, sp, a0
                  sub          t4, s7, t6
                  c.slli       s8, 14
                  c.addi       s11, 30
                  xor          zero, a0, a2
                  sll          s3, a4, s6
                  sub          t4, s7, s3
                  c.mv         s8, s4
                  c.srli       a4, 28
                  sll          a4, ra, t0
                  slt          s8, a2, zero
                  sltiu        s4, s4, -1897
                  remu         a1, s10, a6
                  c.nop
                  mulh         a7, s5, t4
                  mulh         ra, s10, s5
                  slti         s11, a0, -1004
                  rem          a2, a5, a7
                  srai         ra, a2, 22
                  srai         gp, s10, 20
                  or           s6, t4, s3
                  slt          s4, s2, a6
                  div          s9, a4, s9
                  srl          t4, s7, t3
                  c.nop
                  slt          s1, s10, a3
                  or           gp, s8, t3
                  sltiu        t3, s7, -1648
                  c.srli       a0, 27
                  sll          t1, t2, s4
                  srl          t1, a1, a7
                  xor          s2, gp, a7
                  c.lui        s2, 25
                  srli         s5, t4, 14
                  sltu         a1, sp, t3
                  c.slli       a1, 4
                  c.mv         s9, s7
                  mul          t5, t3, t3
                  or           zero, t3, a5
                  slli         s4, s11, 29
                  lui          a1, 258525
                  xori         s8, s0, -1565
                  c.srai       a0, 10
                  and          t1, t5, t3
                  addi         s3, s1, 106
                  nop
                  c.lui        tp, 8
                  sltu         a7, s7, s3
                  mulhu        zero, s2, s11
                  andi         s2, t3, -161
                  auipc        ra, 971870
                  c.or         a2, a0
                  sra          s7, a4, t0
                  mul          ra, s9, s1
                  c.nop
                  add          s3, t0, a2
                  srli         t4, t4, 30
                  c.nop
                  slli         s8, a3, 27
                  slt          s3, s7, a6
                  divu         s9, t4, s1
                  c.add        t4, a2
                  c.andi       a5, 5
                  mulhsu       t2, ra, s9
                  andi         t3, s10, -224
                  c.addi       tp, -1
                  c.addi       t5, 26
                  mulhu        t2, s10, t4
                  c.srli       a2, 27
                  slti         s3, s2, 823
                  mulhu        zero, t5, s11
                  c.nop
                  srl          s9, a0, t6
                  sub          a3, s10, s8
                  nop
                  div          s7, s2, a1
                  addi         s9, a7, -930
                  or           s11, gp, t2
                  c.or         s1, a5
                  divu         a0, t5, a4
                  c.slli       s1, 27
                  c.xor        s1, a3
                  sltu         a1, a2, a1
                  addi         s9, tp, 811
                  mulhu        s7, a4, s9
                  mulhu        t1, a0, t3
                  lui          zero, 506021
                  sra          gp, a4, ra
                  c.sub        a2, a1
                  mulhsu       s9, s4, s5
                  mul          t3, s1, sp
                  remu         t0, gp, t6
                  c.srli       a3, 13
                  or           t3, t6, s0
                  c.slli       ra, 9
                  srai         s8, sp, 11
                  mul          tp, ra, t4
                  nop
                  c.xor        a5, a1
                  ori          t1, a2, -1398
                  c.sub        s1, a3
                  slt          t5, t1, t2
                  c.andi       a3, 0
                  xor          t4, s9, a1
                  srli         ra, s7, 0
                  ori          ra, t4, -1810
                  nop
                  sll          a1, a6, t6
                  nop
                  c.srai       a3, 24
                  xor          a7, s2, t0
                  xor          a0, a6, a2
                  add          a5, sp, a2
                  c.nop
                  lui          s2, 337740
                  c.andi       a5, -1
                  mulhsu       s11, sp, s9
                  c.and        a1, s0
                  andi         t0, s10, -1509
                  c.srli       a2, 19
                  mulhsu       s1, s2, a3
                  addi         a7, zero, -1295
                  c.sub        a1, s1
                  c.and        a3, a2
                  rem          a7, a4, a3
                  mulhsu       ra, s1, s4
                  addi         gp, s6, -537
                  or           a5, tp, s11
                  mulhu        ra, a3, t1
                  divu         t6, a3, a0
                  srl          t3, t4, s2
                  sll          a2, t5, a3
                  divu         a2, s10, t4
                  c.mv         ra, t3
                  slli         a3, s10, 5
                  slli         s3, s9, 16
                  lui          t6, 210546
                  srai         t0, s7, 26
                  c.addi       t4, -1
                  c.srai       a1, 12
                  c.mv         s2, a1
                  slti         s8, a6, -173
                  slli         t1, s11, 3
                  c.sub        a4, a3
                  srl          t1, a4, s9
                  mulhu        s9, t0, ra
                  sltiu        t4, t1, 398
                  mulhu        a7, s11, t3
                  lui          s5, 851418
                  lui          t5, 603742
                  sltiu        s7, zero, -280
                  ori          a1, s0, -1165
                  andi         zero, s3, -1814
                  auipc        s8, 312291
                  c.srai       a0, 10
                  c.li         s8, 12
                  slt          s1, t5, s4
                  xor          a0, t3, ra
                  slt          gp, s4, t6
                  srli         s3, t6, 20
                  and          a3, t2, s0
                  slli         a4, t6, 18
                  auipc        s1, 957500
                  c.slli       a0, 19
                  c.and        a1, a3
                  rem          zero, a1, a7
                  c.nop
                  mulhsu       a0, s11, zero
                  srai         s11, s0, 13
                  slli         ra, a6, 21
                  div          s7, t6, t2
                  mulhsu       s8, t1, s7
                  c.addi       s4, -1
                  c.andi       a5, -1
                  c.mv         a1, s8
                  c.srli       a0, 16
                  sra          s11, s10, t3
                  srai         s4, sp, 5
                  mul          a0, t4, s3
                  xori         s8, s11, 1846
                  xor          s11, a5, a6
                  c.lui        s5, 23
                  c.lui        s2, 6
                  lui          s2, 377413
                  rem          t1, t6, s9
                  slt          s2, a2, s4
                  div          t0, s7, t3
                  divu         t0, tp, sp
                  sra          a7, s4, t3
                  addi         s4, a1, -640
                  sltu         s11, tp, s9
                  c.nop
                  c.slli       t1, 20
                  sltu         s10, t4, zero
                  c.nop
                  sub          s2, a3, s8
                  c.andi       a1, 29
                  lui          t4, 326720
                  div          tp, s10, s4
                  c.mv         a2, a4
                  c.mv         a4, s7
                  remu         s1, a1, a1
                  sub          t1, s11, s9
                  c.nop
                  c.srli       a1, 18
                  sll          s8, s8, a3
                  c.nop
                  xor          a1, s3, s0
                  div          a5, s1, ra
                  or           s1, s7, s4
                  add          ra, t2, a4
                  c.xor        a1, a4
                  mulhsu       t5, t1, s10
                  srli         a0, t2, 30
                  c.slli       s3, 10
                  c.and        a1, a0
                  c.slli       s2, 29
                  andi         s1, gp, 906
                  srli         a0, s9, 17
                  or           s6, t6, zero
                  slli         t3, s4, 6
                  and          gp, s0, a0
                  c.mv         s4, s6
                  c.srli       a3, 31
                  and          a0, s8, a6
                  c.li         a0, 17
                  or           s8, tp, t3
                  addi         t1, a7, -1256
                  c.and        a1, s1
                  c.add        a0, tp
                  c.lui        s5, 28
                  c.mv         tp, t4
                  c.addi       s8, 27
                  lui          t6, 785107
                  xor          s4, a5, a7
                  c.add        a0, s3
                  c.xor        a3, s0
                  slt          t3, a1, s0
                  c.lui        s8, 23
                  div          zero, s2, tp
                  c.slli       s2, 22
                  and          s11, t4, a6
                  sltiu        a5, s0, 1781
                  mulh         tp, sp, s6
                  c.andi       s1, -1
                  lui          s1, 614249
                  c.li         a3, 31
                  sltiu        s5, t6, -900
                  rem          a1, t4, t1
                  mulh         s8, a1, t0
                  c.andi       s1, 10
                  mulhsu       t2, s9, t4
                  srli         gp, t2, 17
                  lui          s4, 1032073
                  div          s2, a0, s0
                  mul          s11, s7, s7
                  mulhsu       a0, s8, s4
                  c.and        a2, a3
                  addi         s11, tp, -1279
                  c.srai       a1, 10
                  slli         s8, zero, 27
                  c.sub        a0, s1
                  c.li         s8, 29
                  sll          s8, t1, a3
                  c.add        gp, t0
                  sub          t5, s0, s5
                  and          s11, s5, a7
                  lui          s4, 408373
                  or           s8, s10, t6
                  add          s7, s4, a4
                  mulhsu       t4, s11, s11
                  slt          s7, s1, t2
                  div          s11, a7, t2
                  sra          a1, t3, a6
                  andi         s9, s2, 2032
                  c.addi       t4, -1
                  xori         a7, s1, 74
                  c.xor        s1, s0
                  remu         t0, s6, a0
                  c.or         a5, s1
                  slli         s3, s5, 12
                  c.or         s1, a3
                  addi         t0, s10, 1512
                  addi         tp, a7, 1319
                  slli         a5, a0, 23
                  slt          a5, a7, s5
                  ori          t3, s11, -1887
                  c.li         a1, 26
                  and          s6, sp, t4
                  c.andi       a4, -1
                  xori         t0, s6, 1220
                  slt          a1, s7, s9
                  sltiu        t3, s1, 392
                  srli         t3, s11, 7
                  mul          s7, zero, zero
                  c.or         a2, s1
                  divu         s4, s6, zero
                  c.srai       s1, 15
                  c.or         a1, a0
                  slti         a3, s1, 902
                  slt          ra, gp, ra
                  c.sub        a0, a0
                  xori         a4, s1, -1995
                  mulhsu       t5, s3, ra
                  mulhu        a5, a5, t5
                  xori         t4, t2, -673
                  sltiu        gp, a4, -1046
                  sltu         t3, sp, t4
                  c.add        s8, t2
                  or           s8, a1, t2
                  xori         zero, a5, -259
                  ori          s3, sp, -802
                  xor          gp, s9, a5
                  xor          t2, tp, s4
                  c.xor        a4, a4
                  add          t1, s5, a7
                  remu         s8, sp, s7
                  c.add        a7, a4
                  c.sub        a4, s1
                  add          s2, tp, sp
                  c.and        a5, a0
                  slt          gp, t2, gp
                  nop
                  add          ra, zero, s5
                  ori          s11, a1, 1913
                  sll          gp, t1, a5
                  c.xor        a0, a5
                  sra          t4, s11, s3
                  c.li         a1, 23
                  xor          s5, gp, ra
                  sub          t3, s8, s6
                  mulh         zero, t3, ra
                  ori          tp, s0, 1621
                  slt          s11, s2, a2
                  c.xor        a4, a2
                  c.xor        a3, a1
                  c.or         s1, a4
                  nop
                  c.add        s8, s8
                  lui          a0, 784698
                  c.nop
                  or           s5, t6, t0
                  xori         s9, s9, 62
                  c.mv         a1, a4
                  addi         a2, s10, 1680
                  c.lui        a0, 11
                  c.xor        s1, a3
                  c.slli       a5, 2
                  mulhsu       s7, s2, t0
                  c.addi       s5, -1
                  slti         a0, t1, -779
                  mul          s5, a2, s7
                  c.and        s1, a4
                  c.andi       a5, 0
                  c.andi       a0, -1
                  c.nop
                  auipc        s2, 916057
                  srli         a4, a7, 25
                  slli         a3, t4, 12
                  remu         s6, s8, s4
                  c.or         s1, a1
                  c.slli       a2, 11
                  mulh         a3, s5, t2
                  sltu         t6, s7, s10
                  sltu         a5, zero, a4
                  mul          a3, tp, a3
                  or           s9, a0, s0
                  andi         gp, s9, 1455
                  c.lui        a5, 28
                  c.addi       a5, -1
                  c.xor        a1, a1
                  c.nop
                  slt          a7, s10, t2
                  and          s4, a3, s5
                  sltu         s10, zero, t2
                  xor          t5, s6, a0
                  xor          a1, a0, a5
                  ori          tp, s2, 2
                  sll          a4, a2, t2
                  or           s10, s8, t2
                  c.or         a2, s0
                  c.li         a3, -1
                  c.and        a5, a5
                  srli         s1, s8, 13
                  remu         a2, a4, sp
                  c.and        s1, a4
                  mul          t0, s8, t6
                  c.and        s1, a0
                  c.and        a2, a2
                  andi         a3, a6, 837
                  nop
                  sra          s4, a1, a2
                  lui          a3, 750778
                  c.srai       a2, 16
                  div          a3, t6, s5
                  nop
                  mulhu        s4, tp, a2
                  mulh         a0, s6, s0
                  rem          s8, a5, t6
                  div          s7, a3, sp
                  c.and        a5, a3
                  c.or         a2, a0
                  divu         a3, s2, a6
                  div          a2, t2, s9
                  rem          t2, sp, s7
                  mulh         s2, s7, s2
                  mulhu        s10, tp, ra
                  c.and        a1, a2
                  c.slli       t3, 9
                  slt          s6, s3, ra
                  c.srai       s1, 2
                  mul          s5, a7, a1
                  mulh         s10, s8, tp
                  c.srli       a2, 15
                  sltiu        t3, tp, 2044
                  srl          s3, a3, a4
                  c.mv         a7, s4
                  c.sub        s1, a0
                  sll          tp, s6, t4
                  sll          tp, t4, t4
                  srai         a2, s0, 26
                  srai         t5, s7, 7
                  remu         ra, a5, s10
                  mul          s2, s3, gp
                  mul          s11, tp, s0
                  sltu         a0, s6, zero
                  sub          s9, s6, s4
                  c.li         s6, 29
                  sub          s10, zero, t2
                  srl          s8, t4, t2
                  nop
                  c.xor        a4, s1
                  mulhsu       t5, t5, t6
                  auipc        s1, 522597
                  c.addi       a5, -1
                  c.li         s2, -1
                  xori         a2, s1, 777
                  slli         s8, s0, 23
                  add          a4, t0, sp
                  slt          t3, s11, gp
                  sltiu        s7, s7, 1933
                  c.li         t1, -1
                  mul          zero, s3, zero
                  c.mv         ra, s3
                  srl          a1, s7, a1
                  slt          a5, a1, s8
                  remu         s9, s3, s10
                  c.nop
                  add          s2, s11, a3
                  c.add        ra, ra
                  c.add        a5, t3
                  c.srli       a5, 17
                  divu         a7, s1, a5
                  srli         t1, t4, 16
                  sll          s7, t6, a5
                  c.li         s11, -1
                  sltiu        s1, s10, 1008
                  c.add        s3, t4
                  rem          t2, t2, s11
                  sra          t0, zero, t4
                  srai         a5, s3, 3
                  addi         t4, s1, 1501
                  xori         ra, s10, 1023
                  mulhsu       gp, s7, ra
                  c.srli       a5, 8
                  lui          s11, 200729
                  nop
                  sltu         t4, s10, s0
                  c.addi       s1, 3
                  srai         s1, gp, 16
                  xor          a7, t0, ra
                  mulh         tp, s3, s8
                  div          tp, t4, a2
                  mulhsu       t1, s8, s2
                  c.sub        a4, a3
                  auipc        zero, 511703
                  sra          a5, a7, t3
                  auipc        s4, 420879
                  andi         a1, t5, 912
                  mulh         t5, tp, s3
                  slt          s6, a2, s3
                  c.xor        s1, a2
                  srai         t1, t3, 22
                  slt          tp, a6, s1
                  slti         zero, sp, 515
                  c.srai       a1, 23
                  div          t2, s9, a1
                  slt          a7, t4, s6
                  mulhu        s2, a4, s11
                  c.srai       a4, 18
                  add          t6, a3, s3
                  c.li         s1, -1
                  sltiu        s2, a0, -1743
                  c.or         a3, a5
                  ori          a1, sp, -191
                  nop
                  c.nop
                  slti         a5, a4, -1504
                  slti         s1, t6, 1218
                  addi         a1, a4, -588
                  sltu         a7, gp, t6
                  xori         a1, a3, -1521
                  c.mv         a0, ra
                  div          s4, s1, t2
                  c.sub        a0, a3
                  c.slli       s10, 18
                  slti         s2, s8, -1192
                  c.srli       a4, 18
                  c.addi       s10, 5
                  c.srai       a2, 4
                  c.li         ra, -1
                  srl          t0, s9, zero
                  c.li         t1, 31
                  c.and        a5, s0
                  sra          s5, t5, s11
                  lui          s9, 665888
                  c.or         a0, a4
                  divu         t2, t6, a5
                  xori         s5, a6, 1458
                  lui          a2, 359504
                  mulhsu       s2, t0, s2
                  c.or         a5, a2
                  mulhu        s9, s7, a1
                  andi         a2, tp, -1523
                  srai         tp, s5, 26
                  c.lui        s11, 22
                  sltu         a0, gp, s7
                  sll          t5, sp, s0
                  c.slli       s4, 4
                  or           gp, a2, t5
                  remu         s7, tp, t3
                  xor          a1, s2, a2
                  srl          s10, s7, t4
                  rem          t3, t6, t0
                  c.and        a2, a2
                  xori         s1, a1, -1550
                  mulhu        a1, s1, ra
                  xor          s5, a1, t4
                  c.mv         s6, s4
                  div          t1, ra, a7
                  mulh         a1, s5, s2
                  sltu         s9, a3, s3
                  sll          a3, s1, s5
                  nop
                  lui          ra, 869272
                  rem          t1, t0, a1
                  ori          s8, s8, 1559
                  auipc        s2, 920420
                  c.sub        s1, s0
                  divu         s8, a7, s6
                  c.or         s1, a0
                  mul          s6, t4, s9
                  xor          t5, s6, t2
                  sra          s9, s5, s5
                  xor          a2, a3, a4
                  sltiu        gp, a0, -677
                  c.addi       a3, 24
                  srli         t6, t2, 31
                  mulh         tp, a4, sp
                  auipc        a1, 920545
                  rem          s8, tp, a1
                  c.srli       a1, 12
                  slt          a7, zero, s8
                  c.or         a2, a4
                  or           s8, s6, a3
                  c.li         s11, 11
                  slti         ra, s2, -1381
                  add          gp, s5, s10
                  remu         s1, zero, s2
                  sll          s3, a2, a3
                  srai         s11, a5, 24
                  slt          tp, ra, a7
                  c.add        t0, t2
                  mulhsu       a1, t0, s2
                  mul          s1, a1, zero
                  c.add        a0, s3
                  div          s8, s8, s3
                  sub          a2, s10, t6
                  xor          gp, ra, a1
                  c.mv         s7, s6
                  c.li         t6, -1
                  ori          a2, t1, -421
                  c.srai       a3, 6
                  srl          t2, s2, s4
                  lui          tp, 486521
                  c.mv         a0, a3
                  c.srli       a5, 25
                  mulh         s5, gp, a2
                  mulh         a1, a2, s4
                  c.nop
                  c.srli       s1, 29
                  c.addi       tp, -1
                  slt          a2, s2, sp
                  c.add        s7, ra
                  c.and        a1, a0
                  mulhsu       s11, s5, s8
                  srai         a1, s4, 24
                  c.mv         s10, s5
                  sltiu        a7, t2, 1373
                  slti         s2, t1, 1071
                  mulh         t5, t0, a4
                  add          zero, s2, tp
                  c.lui        s2, 3
                  c.lui        s8, 30
                  mulhu        zero, s0, s11
                  c.or         s1, s1
                  sltiu        t6, s10, 1929
                  remu         s3, s1, s6
                  sra          s6, s9, s6
                  c.mv         s1, t2
                  divu         a2, s9, s8
                  mulhsu       s10, t4, a5
                  c.sub        a0, a0
                  mulh         zero, s2, a5
                  or           t0, gp, tp
                  mul          t4, a5, a2
                  slti         s5, t1, 1522
                  c.srai       a0, 1
                  divu         zero, s6, s11
                  c.mv         a7, s5
                  slt          a3, t4, t1
                  srl          s9, gp, s5
                  rem          t4, t6, a1
                  c.srai       a5, 28
                  sltiu        t3, a2, -402
                  c.addi       ra, 8
                  sltiu        a3, s10, 701
                  add          s9, s7, sp
                  srli         s3, a2, 18
                  c.add        t2, a6
                  andi         gp, t4, -1270
                  c.or         a5, s0
                  or           s5, t4, s7
                  mulhu        t3, tp, t6
                  and          s4, t6, t5
                  nop
                  c.sub        a4, s0
                  sll          zero, s0, a2
                  remu         tp, a3, t4
                  slli         s8, s11, 26
                  sub          t5, s7, a0
                  sub          t0, s11, ra
                  ori          a1, s8, -1860
                  mulhsu       s8, zero, s2
                  c.addi       a2, -1
                  remu         a7, t5, a6
                  c.xor        a0, a3
                  xor          s3, a4, a1
                  remu         t1, a0, s10
                  srai         t3, s5, 21
                  andi         a3, a3, -201
                  lui          zero, 791716
                  sub          t0, t5, s0
                  div          s4, ra, s3
                  srl          a0, a3, t5
                  lui          s11, 400607
                  slti         s11, s9, -1393
                  c.srai       a2, 9
                  remu         t2, s7, gp
                  sll          s1, t4, t5
                  xor          t3, t4, t1
                  lui          s2, 1010895
                  lui          s1, 534542
                  mulhu        s6, sp, s3
                  c.and        s1, a2
                  c.srli       a3, 8
                  ori          s3, s9, -1500
                  remu         s2, s9, s6
                  c.xor        a1, s0
                  c.xor        a3, a5
                  c.add        s4, s0
                  divu         t6, s11, s0
                  c.lui        a1, 15
                  sltu         a0, a0, gp
                  slt          t0, s9, t0
                  c.srli       a0, 10
                  addi         s9, zero, -1627
                  c.sub        a0, a2
                  mul          t2, a6, t6
                  sra          a2, a7, s6
                  mulh         a4, s5, s9
                  c.srli       a4, 11
                  sub          a2, s9, s4
                  slt          s2, a2, tp
                  divu         a0, s6, s3
                  c.mv         t2, ra
                  remu         gp, a2, a3
                  slt          s7, s10, zero
                  rem          s9, ra, tp
                  c.nop
                  nop
                  c.add        s6, gp
                  add          s9, a2, s10
                  c.andi       a5, 26
                  rem          a7, s11, s2
                  c.srli       a1, 8
                  srli         t2, t1, 15
                  sub          s4, gp, t4
                  sra          a2, s2, a7
                  nop
                  auipc        s2, 800359
                  c.li         s11, 30
                  c.or         a3, a5
                  c.add        t5, a6
                  slt          a5, s11, sp
                  or           s2, s6, t5
                  addi         s2, t0, -1187
                  c.andi       a0, -1
                  sra          s1, s11, gp
                  c.xor        a0, a0
                  add          s6, t4, t2
                  add          s6, a2, s11
                  slli         a5, s2, 28
                  sltu         a3, s5, s0
                  slti         s8, s1, -1582
                  srli         s8, zero, 2
                  xor          t6, s7, a3
                  srl          ra, a7, t5
                  c.lui        t2, 16
                  sltiu        a3, a4, 1290
                  xor          ra, s2, s11
                  c.mv         a5, s8
                  c.slli       tp, 31
                  sltu         t4, s4, s2
                  c.lui        s11, 28
                  sra          t3, sp, s6
                  add          zero, t6, a3
                  c.xor        a1, s0
                  c.add        s11, a3
                  c.li         a0, -1
                  sub          t2, a1, s1
                  slti         t5, ra, 834
                  divu         gp, s9, ra
                  mulhu        s1, a7, s10
                  c.andi       a1, -1
                  c.xor        a5, a5
                  slti         s11, s1, -61
                  c.sub        s1, a3
                  rem          a2, a5, gp
                  mulhu        s7, a5, s1
                  srl          t2, t4, s6
                  srai         s11, t4, 20
                  sra          t6, s5, s6
                  slti         s7, t3, -2041
                  sltiu        zero, t1, -1737
                  add          a2, a7, t5
                  slti         s6, a1, -1176
                  c.or         a3, s0
                  sub          t2, s2, s0
                  mulhu        s10, a1, a1
                  slli         s4, t4, 23
                  sub          s7, s4, a5
                  c.nop
                  c.and        a0, a2
                  remu         s6, a2, s7
                  c.add        t6, s6
                  mulhu        gp, s8, s0
                  c.or         a2, a0
                  add          tp, s0, a3
                  andi         s10, ra, -1893
                  c.or         s1, s0
                  add          t2, s3, a3
                  c.srli       a0, 8
                  c.or         a2, a5
                  c.andi       a0, 27
                  rem          t1, t3, s10
                  srl          s10, s8, a7
                  c.add        t4, t1
                  c.li         a0, -1
                  c.nop
                  c.li         s3, -1
                  lui          a1, 31879
                  c.mv         a3, t4
                  sltiu        t6, s3, -142
                  c.li         a4, -1
                  mulhu        s3, a2, sp
                  mulh         a0, s1, s0
                  mul          t2, t1, s6
                  div          t3, s6, t2
                  andi         s4, a6, -749
                  auipc        a4, 299368
                  lui          zero, 29604
                  c.addi       s2, -1
                  and          s4, a4, s11
                  srai         s3, s4, 8
                  and          a5, t6, a2
                  and          s8, a7, s11
                  c.addi       t3, -1
                  slti         s4, s9, -1423
                  sltiu        s1, s2, 59
                  mulhu        a4, a2, t0
                  sub          a2, s6, s6
                  sll          s11, t4, a0
                  c.addi       s10, 1
                  c.slli       t3, 25
                  nop
                  c.srai       a5, 1
                  c.xor        a1, s0
                  divu         s1, gp, a5
                  andi         s5, s4, -1959
                  xor          t3, s4, s3
                  mul          zero, a2, s1
                  andi         t2, s7, 143
                  srl          a4, ra, a5
                  srl          s4, s4, t6
                  add          a5, t5, s11
                  and          t3, t5, a7
                  nop
                  divu         s4, a2, s10
                  slli         s11, s1, 4
                  xor          a7, ra, a2
                  xor          s4, a3, a7
                  andi         t0, t1, 348
                  c.li         a5, 18
                  rem          zero, s3, gp
                  andi         t1, s8, 534
                  sub          s3, s9, s7
                  c.slli       t2, 15
                  mulhu        t2, s8, s11
                  addi         t0, s1, 1859
                  c.andi       s1, 3
                  c.mv         s6, s9
                  c.slli       s8, 9
                  mul          s8, s11, t1
                  c.slli       a5, 13
                  auipc        s7, 68151
                  ori          s1, t4, 659
                  c.li         t6, 14
                  srli         a2, s5, 9
                  slt          t1, t4, a1
                  sltiu        a2, a4, 1388
                  c.or         a2, a1
                  c.srli       a0, 3
                  mul          t3, sp, a5
                  c.xor        a1, a5
                  c.add        a7, s2
                  c.srli       a0, 22
                  divu         t6, s0, s3
                  mulhu        s6, a1, gp
                  c.lui        s8, 18
                  c.addi       a3, -1
                  andi         t2, s2, -492
                  ori          t3, s4, 1819
                  c.or         a2, a0
                  remu         ra, a4, s11
                  c.or         a3, a0
                  srai         a2, a7, 26
                  c.li         t2, -1
                  srl          tp, s3, a4
                  divu         t3, t1, t2
                  c.andi       s1, -1
                  slti         a0, s2, -365
                  c.xor        a1, s1
                  slti         a7, tp, -927
                  auipc        a4, 254797
                  mulhsu       s1, a7, t1
                  c.sub        a1, a5
                  sll          t4, a4, t1
                  c.andi       a5, -1
                  c.slli       a4, 18
                  add          s2, a4, a0
                  slti         a7, s7, -491
                  c.xor        a1, a5
                  c.xor        s1, s1
                  sltu         a2, s4, s6
                  xor          zero, a0, a2
                  remu         s10, t5, s8
                  remu         s4, a2, t0
                  c.sub        a3, a0
                  c.and        a0, a0
                  rem          s1, s0, t3
                  c.li         t5, 12
                  sra          a2, s8, s8
                  c.mv         tp, a0
                  lui          a2, 834787
                  c.add        a0, s0
                  divu         t6, t2, s0
                  auipc        s1, 772577
                  c.andi       a5, -1
                  c.slli       s2, 9
                  rem          s1, ra, s8
                  and          t2, t1, a2
                  rem          s4, a6, t4
                  div          s10, a1, zero
                  or           s4, a3, a5
                  srl          t2, s2, t4
                  c.sub        s1, a5
                  c.add        s11, t4
                  lui          a3, 479311
                  lui          t5, 375282
                  c.or         a0, a0
                  ori          gp, a1, 1106
                  xor          s9, s0, a5
                  sll          s4, a1, a7
                  divu         s2, t2, s8
                  nop
                  c.xor        a2, a1
                  andi         a2, s2, -976
                  sll          s1, t3, a7
                  c.andi       a1, 31
                  c.add        t0, s5
                  ori          gp, t4, -1872
                  c.sub        a3, a2
                  c.andi       s1, 1
                  sll          s6, t2, s7
                  c.add        s1, t6
                  mulh         ra, s7, t0
                  mulhu        s11, t3, s5
                  slli         t2, s0, 24
                  c.lui        a3, 10
                  c.lui        tp, 14
                  c.xor        a0, a5
                  divu         a1, tp, a0
                  srai         s11, t3, 4
                  lui          a7, 1019623
                  c.sub        a2, a0
                  sll          t0, t5, s0
                  c.li         t1, -1
                  addi         a2, s5, 623
                  nop
                  auipc        zero, 207568
                  ori          a5, s9, -234
                  mulhu        zero, a0, a3
                  xori         a5, a6, 862
                  divu         s1, s8, s5
                  sll          gp, ra, t5
                  xori         s1, t2, -920
                  c.and        a2, a5
                  c.andi       a2, 7
                  slti         t1, t1, -216
                  div          s7, a6, s7
                  xori         t4, sp, -985
                  or           t0, tp, a4
                  c.addi       s7, -1
                  c.xor        a1, a2
                  c.srai       a0, 19
                  c.or         a2, a5
                  c.andi       s1, -1
                  xor          s7, a5, s7
                  nop
                  sltu         t3, gp, a2
                  c.slli       ra, 1
                  c.add        t4, tp
                  sra          zero, s4, t4
                  c.and        a0, a2
                  srli         t0, t2, 23
                  c.srai       a2, 24
                  slli         s9, t4, 26
                  c.lui        ra, 8
                  sll          s9, s7, zero
                  c.nop
                  sll          s5, a1, s9
                  mulhu        a1, sp, a6
                  slti         s7, a4, -237
                  add          a0, sp, s11
                  nop
                  c.srli       a0, 2
                  div          s1, t3, s9
                  c.srai       a2, 26
                  mul          a4, a4, s9
                  c.nop
                  c.or         a0, a3
                  divu         s3, s5, t5
                  nop
                  c.srli       a1, 28
                  sra          zero, a5, t5
                  c.addi       s3, 8
                  slti         s5, a2, 1903
                  c.nop
                  c.or         a1, a5
                  c.li         a1, -1
                  c.add        t5, a5
                  andi         s2, t5, 686
                  lui          s4, 324590
                  sub          s10, s2, a3
                  xori         a4, s4, 200
                  sub          s4, s6, s0
                  c.mv         a3, a5
                  c.and        a0, a0
                  slti         a5, s4, -1449
                  and          s6, s2, s11
                  sub          s8, tp, t4
                  c.xor        a5, a3
                  c.srli       a0, 7
                  slli         a5, sp, 21
                  slti         s8, s10, 294
                  auipc        t0, 282003
                  rem          ra, t0, s10
                  or           s5, a4, ra
                  addi         s9, t6, 295
                  remu         s5, t4, a5
                  c.add        a5, s0
                  mulh         a5, gp, s7
                  c.addi       a0, -1
                  slti         t6, s0, -355
                  slti         s1, s5, 77
                  or           t0, s1, t5
                  slt          a0, t1, tp
                  slti         gp, a7, 1664
                  srai         a2, zero, 13
                  ori          s5, s3, 247
                  and          s2, a4, s0
                  auipc        a1, 626203
                  or           t3, ra, a1
                  mulhsu       s7, a5, a0
                  mulh         s11, a6, s7
                  sltu         gp, zero, s5
                  mul          t5, a1, s5
                  c.li         s3, -1
                  sub          ra, t4, t5
                  add          a2, s4, t3
                  rem          s9, a4, s0
                  add          s9, s2, s4
                  sra          s11, t6, a6
                  c.mv         s10, s3
                  mul          t1, sp, a6
                  nop
                  slli         zero, s5, 28
                  slli         ra, a3, 5
                  sll          a2, a3, s8
                  c.xor        a5, s1
                  srl          zero, t5, s1
                  srai         s1, a5, 19
                  sub          tp, a4, s7
                  c.nop
                  mulh         s2, a7, t3
                  sra          zero, s6, a6
                  c.and        a1, a4
                  c.add        s9, t2
                  srl          tp, a5, a7
                  slti         s9, s6, -419
                  lui          s1, 934535
                  nop
                  xori         t6, s9, 351
                  c.nop
                  xor          t1, a2, t2
                  srai         a2, t3, 19
                  c.and        s1, a1
                  mulhu        a5, a6, tp
                  srai         s4, t0, 18
                  andi         a0, s5, 111
                  andi         s2, zero, 423
                  srai         gp, s9, 28
                  addi         t0, a5, 581
                  slli         gp, s2, 1
                  srai         a1, a4, 9
                  addi         t6, t2, -711
                  mul          tp, a4, t5
                  srli         tp, s2, 30
                  sltu         zero, t4, t4
                  sll          a3, a6, gp
                  srl          a3, t5, sp
                  xor          t4, sp, s5
                  sltiu        s3, s4, 1299
                  lui          s3, 793306
                  slt          s8, s10, s4
                  and          tp, s11, s0
                  sll          a7, s1, s4
                  nop
                  lui          a3, 897158
                  sltu         s3, a6, s5
                  c.mv         s10, s4
                  or           a0, s0, a6
                  sub          gp, a6, a3
                  mulhu        s4, s3, s1
                  mulhu        zero, t5, a3
                  remu         a7, s7, zero
                  c.mv         s6, ra
                  xor          t6, t5, s5
                  sltu         s6, a5, t0
                  div          s6, a6, t5
                  sll          s8, s6, s5
                  add          t4, a7, tp
                  sltiu        t3, s2, -1714
                  and          s9, s8, s0
                  mul          s9, t4, sp
                  div          ra, t1, t0
                  sub          a3, zero, t3
                  c.srai       a5, 10
                  rem          a5, a0, t1
                  slti         s2, s9, -1570
                  slti         s8, a2, -623
                  c.or         a3, s1
                  sub          t4, s11, t5
                  srli         s9, zero, 26
                  remu         t4, s11, a6
                  mulhu        s2, s11, s1
                  srai         a4, s7, 13
                  c.srai       a2, 5
                  c.lui        s1, 10
                  and          a1, tp, tp
                  c.lui        s4, 20
                  srai         s11, gp, 30
                  slti         s6, t4, 490
                  xori         s5, s10, -830
                  div          a0, zero, s5
                  srai         s2, s0, 30
                  sltu         a2, t0, gp
                  c.mv         s4, a1
                  nop
                  c.mv         s6, t2
                  or           ra, s1, s6
                  or           gp, s5, a1
                  c.and        a0, a1
                  sll          a0, t6, a5
                  mulhsu       gp, t4, a5
                  mulhsu       s2, t6, ra
                  remu         t5, gp, a6
                  srai         a0, s2, 27
                  c.or         a4, a5
                  remu         s3, s4, a6
                  c.li         s11, -1
                  mulhu        t2, a1, s8
                  c.addi       t1, -1
                  srl          t3, t1, s3
                  rem          a4, ra, s4
                  slli         t2, a0, 14
                  sltu         zero, a6, s11
                  c.sub        a1, a3
                  add          a4, a6, sp
                  div          tp, zero, s7
                  rem          s2, s10, a7
                  sll          ra, s10, s5
                  c.srli       a2, 11
                  xori         gp, a0, -1492
                  c.sub        a0, a5
                  lui          s2, 934988
                  srl          s1, s5, s6
                  divu         a1, s9, t6
                  sra          s7, t3, sp
                  and          a0, s1, gp
                  addi         a1, a4, -1024
                  srai         s1, a7, 29
                  add          ra, t2, s8
                  c.sub        s1, a0
                  nop
                  slt          a7, a5, s3
                  slti         zero, s5, 979
                  remu         s8, tp, s8
                  srli         s4, s10, 23
                  c.and        a2, a2
                  slti         s5, s5, 639
                  c.srai       a2, 26
                  c.srai       s1, 2
                  c.mv         s5, s8
                  xor          t4, a0, s10
                  divu         a0, a4, zero
                  add          s8, s10, a3
                  xori         s1, a4, -29
                  c.srai       s1, 27
                  remu         t4, s0, a3
                  c.xor        a5, s0
                  remu         s6, t4, t4
                  mulhsu       t0, sp, tp
                  c.li         t2, -1
                  srli         zero, t6, 17
                  lui          s2, 465870
                  c.add        gp, sp
                  c.andi       a5, 8
                  auipc        t6, 292702
                  c.add        t1, t3
                  add          a1, s3, s5
                  srai         t0, a3, 24
                  mulh         t4, s10, tp
                  sll          tp, s3, a0
                  c.nop
                  c.xor        a5, a2
                  lui          s6, 87089
                  sll          a1, s0, t6
                  c.and        a0, a1
                  auipc        t5, 785111
                  and          t2, t1, a4
                  srl          a5, a2, a1
                  c.andi       a0, 14
                  sra          a4, a3, s1
                  nop
                  c.add        t1, a0
                  mulh         a1, a5, a2
                  nop
                  sltu         t6, t2, s9
                  sra          a5, s10, s8
                  mulhu        a7, s8, s8
                  andi         t2, a0, 1021
                  c.and        a0, a3
                  divu         zero, s5, t3
                  andi         s2, t3, -1063
                  c.sub        a2, a4
                  c.srli       s1, 28
                  xor          a1, t5, a7
                  remu         t0, t0, a2
                  mulhsu       a5, a7, s8
                  xor          ra, gp, sp
                  c.srli       a2, 1
                  andi         a3, t1, -1359
                  slti         t5, t2, 2030
                  c.slli       s2, 24
                  slli         t2, a1, 8
                  sra          s6, t2, s11
                  c.sub        s1, s0
                  c.li         gp, 13
                  c.nop
                  sll          s2, a5, s8
                  xori         s3, t1, 677
                  c.and        a4, s1
                  srai         s3, a0, 7
                  c.andi       a4, 21
                  and          s1, a6, a6
                  c.addi       s4, -1
                  mulhu        a0, ra, s9
                  c.or         a3, s0
                  nop
                  sra          a0, t0, s6
                  andi         a4, s1, -1998
                  srli         t4, s9, 17
                  srli         gp, t0, 6
                  divu         s6, a3, s1
                  auipc        t4, 768223
                  nop
                  c.mv         t4, s10
                  mulhsu       gp, s8, gp
                  c.add        s11, s0
                  sll          s6, a1, a4
                  auipc        gp, 982440
                  c.sub        a0, a2
                  slti         a0, tp, 2000
                  lui          a4, 339389
                  slli         a0, a4, 17
                  c.add        a0, a4
                  or           a0, a4, t6
                  div          s2, sp, s7
                  c.xor        s1, s0
                  remu         t3, s8, t2
                  slli         a4, t3, 27
                  c.mv         a4, gp
                  c.and        a1, a1
                  srai         s10, a1, 4
                  divu         s6, a1, s3
                  c.addi       a4, -1
                  sra          s7, t0, s1
                  srai         s6, t6, 12
                  div          s9, tp, s3
                  slt          s8, a6, sp
                  nop
                  c.and        a5, a5
                  c.mv         a0, s9
                  slti         t3, ra, 1698
                  c.mv         a2, s9
                  c.slli       ra, 8
                  auipc        t0, 910882
                  andi         t6, zero, 1628
                  sra          t3, a1, s9
                  or           s3, ra, t2
                  remu         t4, t5, s9
                  sra          s10, a5, t3
                  sra          zero, gp, a2
                  srai         s9, a5, 30
                  c.or         s1, a2
                  srli         t5, t0, 4
                  c.sub        a3, a5
                  add          s10, s6, a3
                  c.addi       s4, -1
                  c.add        gp, gp
                  andi         a4, a7, 722
                  addi         s6, t6, 662
                  andi         s6, zero, 1542
                  c.addi       s10, 23
                  auipc        a3, 739480
                  srl          t6, a3, s10
                  c.sub        a2, a3
                  c.andi       a3, -1
                  c.srai       a3, 14
                  add          s2, s2, sp
                  sll          zero, s10, t3
                  c.srli       a1, 31
                  slti         zero, s4, -1902
                  c.or         s1, a5
                  xori         zero, a2, -1190
                  div          ra, t3, tp
                  mul          t6, s2, s11
                  c.srai       a4, 18
                  srai         t4, a4, 3
                  srl          s8, s0, s5
                  andi         s2, sp, -76
                  sra          a1, ra, zero
                  xor          s5, s7, tp
                  c.sub        a4, a2
                  c.nop
                  sltiu        s9, tp, 1237
                  mulh         a7, s0, t5
                  srli         zero, t5, 21
                  auipc        t2, 7031
                  c.slli       s2, 18
                  c.nop
                  c.andi       s1, -1
                  sub          s1, t3, s10
                  divu         s3, s9, s6
                  auipc        a5, 71875
                  c.and        a1, s0
                  ori          a0, t4, -970
                  nop
                  ori          s1, s3, -1174
                  c.slli       s11, 15
                  rem          tp, a6, s0
                  sll          gp, s1, sp
                  srl          t5, a4, t2
                  c.andi       a5, -1
                  slli         t4, s4, 19
                  slli         t2, a5, 10
                  rem          gp, s4, s4
                  mulh         ra, s0, s11
                  c.addi       a7, 8
                  c.srli       a1, 17
                  c.srli       a0, 14
                  sra          ra, t3, a5
                  or           s10, a7, gp
                  mul          tp, t1, sp
                  sub          a1, s4, a5
                  slli         zero, s1, 10
                  c.addi       s11, 2
                  c.sub        s1, s0
                  mulh         a4, s7, s5
                  mulhu        s1, s1, t4
                  divu         s10, a6, a3
                  c.slli       s8, 2
                  c.xor        a1, a3
                  mulh         s2, a0, s4
                  divu         a2, zero, a6
                  srli         s6, s1, 17
                  c.andi       s1, 8
                  addi         t4, zero, -195
                  c.andi       a0, 30
                  auipc        a0, 289885
                  srai         s9, t4, 6
                  sub          a2, s6, s8
                  div          s5, a1, t6
                  or           s4, t5, zero
                  sltiu        s1, s10, 440
                  nop
                  c.slli       a0, 1
                  ori          s9, tp, 1143
                  srli         s2, s4, 10
                  c.li         a7, -1
                  div          s2, a2, s8
                  mulhsu       s9, a5, a3
                  srli         t6, s0, 9
                  remu         s4, s10, s9
                  mulh         gp, t3, zero
                  div          zero, t3, a1
                  div          a7, s6, a5
                  xor          a1, s8, s5
                  slti         ra, s0, 458
                  c.srli       s1, 1
                  divu         zero, s1, s5
                  mulh         t1, sp, s0
                  lui          a2, 467470
                  mulhu        s7, a0, s2
                  auipc        a2, 775596
                  sll          a4, a4, s1
                  nop
                  add          ra, sp, s8
                  addi         t6, t6, 1906
                  xor          a2, s2, t6
                  mulhu        a1, t2, t2
                  c.or         a2, s0
                  mulhsu       a0, a4, a4
                  nop
                  c.srai       a3, 22
                  sub          s6, s0, a7
                  nop
                  remu         s1, s1, gp
                  mulh         s4, t2, a2
                  c.mv         t2, a6
                  addi         zero, s0, 1803
                  div          s7, a4, s1
                  c.lui        t5, 6
                  slti         ra, s3, 1924
                  c.add        s5, a2
                  sra          t1, tp, a0
                  mulh         t0, a5, t2
                  xori         s2, s0, 1009
                  div          s3, s1, t1
                  andi         a7, a5, 706
                  or           s1, s6, s5
                  sltu         tp, a1, t6
                  c.or         a3, s1
                  mulhu        s5, s9, a1
                  sll          t3, a2, a7
                  srl          a5, sp, a4
                  auipc        s2, 661454
                  rem          s8, sp, a7
                  c.srli       a0, 20
                  nop
                  andi         t1, ra, 420
                  sra          t4, t3, a7
                  div          t0, s10, zero
                  slli         s8, s2, 0
                  c.mv         t4, a4
                  c.addi       s8, -1
                  mulhsu       t4, a2, tp
                  xor          zero, a6, t3
                  c.add        t3, gp
                  sltu         t4, s1, a1
                  and          tp, zero, t6
                  slli         t4, s8, 15
                  xori         ra, a7, 652
                  c.nop
                  divu         s11, s2, t0
                  c.li         t3, 1
                  divu         s2, a6, t0
                  c.lui        a2, 26
                  c.and        a2, a2
                  c.mv         t2, t3
                  remu         zero, s3, a5
                  rem          s9, s3, zero
                  sltu         s4, a3, s1
                  remu         t5, a4, s8
                  addi         t3, t1, -680
                  and          a1, s0, s11
                  addi         s8, a2, -459
                  ori          a1, s8, -70
                  srli         s2, ra, 14
                  auipc        a2, 417239
                  xori         a1, ra, 703
                  andi         a2, t4, 529
                  xor          t6, a4, s5
                  sltu         s9, tp, s2
                  auipc        t2, 678910
                  sll          s9, gp, a6
                  c.srli       a0, 18
                  auipc        t1, 555328
                  c.addi       t3, 29
                  c.or         a0, s0
                  slli         tp, s8, 23
                  sub          a7, s11, t3
                  rem          s4, t3, s9
                  ori          a5, t4, -1106
                  and          a5, t1, t4
                  nop
                  auipc        gp, 534556
                  c.add        s10, t5
                  srli         a0, sp, 15
                  and          zero, t6, s10
                  mulh         gp, gp, s10
                  srli         t1, t1, 30
                  c.lui        t3, 26
                  xor          t4, sp, a6
                  xor          a4, s8, a7
                  xor          s1, s1, s7
                  c.mv         tp, a7
                  slti         a5, ra, -1582
                  c.li         s8, -1
                  slli         a4, a7, 28
                  c.sub        s1, s0
                  slli         a5, sp, 2
                  c.or         a4, a2
                  c.srai       a3, 11
                  addi         s10, s11, 1717
                  sll          s9, a6, a1
                  mulhu        s11, s10, a0
                  slti         s5, s1, 1047
                  mulh         s8, s8, s1
                  c.add        a7, s11
                  sll          ra, t4, a3
                  andi         a7, gp, 1622
                  sltiu        s5, tp, 977
                  sltu         s10, a7, s11
                  c.li         gp, -1
                  c.andi       a0, -1
                  and          a2, a5, zero
                  mul          s11, tp, s2
                  div          s2, tp, s1
                  c.mv         a2, t2
                  c.srai       a1, 25
                  sll          s4, a6, s1
                  sll          s10, zero, a4
                  mulh         s2, sp, gp
                  mulhsu       t5, s4, t4
                  c.slli       t1, 24
                  lui          s9, 845078
                  mulhsu       t6, a4, ra
                  mul          s3, a2, s11
                  andi         a1, a4, -377
                  rem          s4, t3, s9
                  c.xor        a5, a0
                  remu         ra, a1, a5
                  c.nop
                  slli         s2, t5, 24
                  c.sub        a0, a2
                  andi         t2, t4, 749
                  c.mv         t1, s10
                  slt          a0, s9, s1
                  srai         s2, t5, 17
                  auipc        tp, 379782
                  addi         a0, s3, -159
                  srai         a0, s3, 0
                  rem          s10, a3, t1
                  sra          t3, s1, t0
                  slt          s7, t4, t4
                  c.xor        a0, a1
                  sra          t2, sp, s7
                  xori         s5, tp, -1963
                  rem          t0, a5, s11
                  xori         t1, ra, 644
                  slli         t4, tp, 22
                  div          a2, s10, a6
                  mul          s1, t4, s5
                  andi         t2, s5, -1373
                  c.and        a4, a2
                  c.srli       a0, 15
                  xor          a2, s1, a3
                  slt          t1, sp, s4
                  sll          a3, s7, s2
                  ori          s6, a7, -639
                  rem          s10, gp, t3
                  or           s5, a7, gp
                  or           s5, gp, a3
                  mulhsu       s9, t5, t4
                  c.mv         t2, a1
                  xori         a7, sp, 37
                  andi         ra, s4, -2031
                  c.srli       a3, 20
                  c.or         a4, a1
                  andi         gp, s9, -1862
                  andi         s8, t1, -978
                  c.srli       a2, 12
                  slt          a3, s7, t1
                  c.slli       a0, 28
                  xori         s7, a6, 1517
                  mulhu        t4, t6, s7
                  c.lui        s6, 11
                  addi         a3, a0, -465
                  c.lui        s6, 19
                  mul          a4, s4, t2
                  c.srli       a3, 5
                  ori          a5, s6, 1672
                  mulh         s4, gp, zero
                  c.or         a1, a3
                  c.and        a0, a4
                  c.add        s1, s8
                  c.add        ra, t0
                  sltiu        a0, a3, -1667
                  add          a3, s7, s6
                  mulhsu       zero, t1, s11
                  srli         gp, t3, 28
                  c.slli       t4, 27
                  mulh         a3, a3, s3
                  c.srli       a0, 19
                  or           t3, zero, s4
                  lui          s11, 291502
                  c.slli       s5, 24
                  srl          s4, s8, s4
                  slli         s8, a0, 19
                  div          tp, s11, a4
                  andi         zero, zero, 1238
                  srli         s4, a1, 4
                  c.add        a4, t3
                  c.or         a3, a1
                  sub          tp, s2, a6
                  slli         s1, s4, 24
                  auipc        a1, 423457
                  sra          t0, s8, ra
                  andi         gp, a0, -131
                  ori          s2, t5, 1749
                  div          s8, s6, s4
                  divu         t4, t5, a0
                  c.or         a4, s0
                  slt          s7, a1, a6
                  addi         s3, a5, -825
                  c.andi       a1, -1
                  nop
                  sll          a5, sp, t5
                  mulhu        s4, gp, s3
                  auipc        t1, 465708
                  slt          s1, zero, s9
                  sll          s10, s0, s4
                  sra          s8, t0, a3
                  lui          s3, 310491
                  c.or         a3, a3
                  slli         s6, s6, 26
                  c.lui        t0, 12
                  c.slli       a5, 27
                  slt          s11, t3, s5
                  c.addi       s7, 10
                  sll          a4, tp, s4
                  mulhu        t1, a0, s11
                  c.nop
                  c.xor        a3, s1
                  c.andi       a0, 6
                  c.sub        a5, a1
                  mulh         s8, sp, sp
                  div          s3, s10, s4
                  mulhu        gp, t5, t0
                  mulhsu       s5, sp, s0
                  c.li         ra, 10
                  c.srai       s1, 29
                  c.mv         a2, t0
                  sltiu        zero, s8, 335
                  sltiu        s3, s2, 1950
                  sra          t4, s11, t2
                  c.lui        s2, 27
                  xor          s3, t3, t4
                  c.and        a2, a4
                  sltiu        t5, a4, -1892
                  c.lui        s2, 2
                  sub          a0, a5, s11
                  sltu         t4, s1, a0
                  mulhsu       t1, a2, ra
                  c.nop
                  slti         zero, t1, 2016
                  and          t3, a6, zero
                  addi         a4, t3, -509
                  and          t0, t5, a4
                  srl          s4, a6, s9
                  c.or         a4, a2
                  c.andi       a1, 9
                  c.mv         ra, s7
                  c.slli       a4, 22
                  and          s2, t6, t3
                  c.mv         s8, a5
                  sub          t3, s5, a6
                  c.andi       a1, 15
                  sll          s11, zero, s7
                  c.sub        a2, a3
                  c.lui        s6, 2
                  slli         gp, t6, 7
                  mulhu        ra, s4, t5
                  c.lui        ra, 12
                  rem          t6, s3, s2
                  c.andi       a1, 28
                  c.addi       t1, -1
                  remu         s3, tp, s1
                  sub          t2, s7, s4
                  or           s4, t2, t2
                  sltiu        a7, t6, -1337
                  sltu         s2, zero, s11
                  mul          a4, s1, t4
                  srli         s8, zero, 28
                  slli         ra, gp, 1
                  sll          a4, gp, s8
                  divu         s7, s11, t5
                  srl          t2, t3, t0
                  mul          ra, a6, a5
                  and          s4, a6, sp
                  c.andi       a0, 14
                  mulhu        s8, tp, t0
                  xor          s2, s1, s2
                  addi         zero, a3, -1932
                  c.xor        a0, a3
                  mulhu        t0, tp, tp
                  remu         s5, s4, a4
                  srli         s10, a0, 16
                  ori          a3, a6, -1247
                  ori          t1, t2, 1601
                  rem          t5, s9, a5
                  andi         s7, t5, 1208
                  c.sub        a0, s0
                  sltu         s9, s6, t6
                  c.li         s11, -1
                  c.srli       a4, 8
                  andi         a7, s4, -1092
                  c.nop
                  addi         t1, s11, 1263
                  c.li         t6, 0
                  c.lui        s2, 17
                  sltu         gp, s3, tp
                  and          s8, t4, s3
                  srli         s3, t2, 31
                  mulhsu       a2, s0, zero
                  c.andi       a1, -1
                  c.xor        s1, a4
                  c.mv         s2, a3
                  slti         s3, s11, -1520
                  mulhsu       a1, t1, s7
                  xori         tp, t4, -1371
                  mulh         t5, s9, sp
                  c.srai       a4, 27
                  or           zero, t2, sp
                  mul          s10, ra, a6
                  slti         gp, s0, 608
                  slli         gp, zero, 21
                  lui          s10, 898251
                  sltiu        t5, sp, 1810
                  slt          s9, s2, sp
                  xori         a0, zero, 1786
                  slt          a3, a0, a4
                  mulh         ra, a6, s5
                  srli         ra, zero, 29
                  c.nop
                  srai         s7, gp, 17
                  c.addi       s11, -1
                  c.and        a2, s0
                  sltiu        t5, s0, 1946
                  rem          t1, t5, t4
                  xori         t1, t4, 1451
                  c.add        s3, sp
                  c.xor        a3, a5
                  slti         t5, a6, 2023
                  c.xor        a4, s1
                  mul          zero, ra, a0
                  slti         t3, ra, -1010
                  c.lui        t6, 13
                  c.mv         a3, a6
                  c.and        a3, a5
                  nop
                  srl          s5, tp, tp
                  slli         t6, t1, 5
                  nop
                  slli         a4, t2, 0
                  xor          t4, t0, ra
                  mulhu        s1, s2, t2
                  sra          s3, t0, s1
                  add          t0, s7, t1
                  c.add        ra, sp
                  andi         s4, t4, -447
                  slt          gp, t5, t5
                  or           t5, zero, s2
                  c.slli       tp, 12
                  c.slli       tp, 5
                  and          a0, s11, t3
                  srli         t6, a0, 8
                  srl          s1, a2, a7
                  c.andi       s1, -1
                  mulhsu       s2, ra, a6
                  rem          s9, gp, a6
                  xori         a1, sp, 590
                  c.sub        a4, a0
                  sll          a3, s10, zero
                  and          s11, s6, s5
                  c.srli       a4, 1
                  mul          s11, s1, a7
                  c.sub        a2, a4
                  c.slli       t0, 31
                  nop
                  add          a2, a1, s3
                  mul          s2, s1, a0
                  mulh         s5, t3, s0
                  c.sub        a5, a1
                  and          gp, a3, gp
                  sra          gp, t6, t4
                  c.mv         t2, t4
                  mulh         s4, s6, a3
                  mulhsu       t1, s8, a2
                  xori         s10, t3, -1194
                  xor          a0, a7, s8
                  c.li         a1, 25
                  or           tp, t2, a3
                  mulhu        s8, s2, s1
                  c.li         s7, 28
                  slt          s9, t6, tp
                  or           zero, t6, s7
                  andi         a3, sp, -1586
                  c.add        t5, a6
                  nop
                  c.srai       s1, 10
                  and          t4, t4, gp
                  lui          t4, 62987
                  srai         a5, a0, 30
                  rem          t0, t5, s7
                  c.lui        a0, 18
                  or           a4, s0, s0
                  c.nop
                  nop
                  c.addi       a3, -1
                  slli         t5, s1, 9
                  xor          t2, s4, a2
                  c.srli       s1, 7
                  nop
                  lui          s4, 773366
                  mulh         s9, t4, s8
                  sltiu        a4, s2, 301
                  c.srli       a5, 20
                  srl          a0, a3, s8
                  and          a3, t6, t5
                  sll          tp, a6, s11
                  remu         s5, s0, s2
                  c.li         t5, 4
                  c.xor        a3, a5
                  mulhsu       a7, s7, s7
                  c.mv         s8, s5
                  add          zero, a5, a3
                  add          gp, s3, a5
                  divu         s1, s9, a7
                  c.addi       a3, 8
                  mulhu        t1, t4, t6
                  c.addi       s4, -1
                  remu         tp, s3, s2
                  slt          s2, a3, s0
                  c.li         a3, -1
                  sltu         t3, s7, s6
                  mulhu        a7, a1, a1
                  ori          t0, t2, -423
                  sltiu        s11, t3, 547
                  andi         s2, ra, 1642
                  sll          a7, s11, t6
                  remu         s3, a4, t2
                  c.nop
                  c.srai       a3, 21
                  c.and        a4, a3
                  mulhsu       a2, s3, a1
                  and          zero, s3, t0
                  mulh         t1, a7, a5
                  c.xor        a3, a1
                  auipc        a3, 171263
                  c.srli       a1, 2
                  c.nop
                  or           tp, s7, s8
                  xor          a1, s6, t2
                  rem          a7, gp, s2
                  and          s9, t5, t3
                  c.nop
                  srl          t3, a4, s5
                  andi         t4, a5, -914
                  add          zero, t0, s7
                  or           a1, s3, s4
                  addi         a3, t2, -1791
                  c.xor        a3, s0
                  xori         t5, zero, -4
                  mulh         a5, t1, t5
                  c.srai       a0, 31
                  addi         s1, t5, 1217
                  sra          gp, zero, a7
                  srl          s3, s0, s2
                  sra          ra, ra, s3
                  c.and        a5, a0
                  slt          a3, a0, s7
                  mulhu        a4, a0, s1
                  slli         a7, s5, 9
                  and          s4, s2, t4
                  auipc        s11, 398976
                  c.sub        a5, a4
                  nop
                  c.slli       s9, 3
                  c.or         s1, a5
                  c.andi       a3, 26
                  and          s1, sp, s7
                  srli         s5, t1, 2
                  xori         zero, s6, -1081
                  ori          a0, tp, -2008
                  sll          a5, a1, a6
                  c.mv         t2, a6
                  div          s2, a4, s1
                  c.slli       a7, 31
                  addi         s10, s1, 1093
                  mulhsu       s2, s4, s3
                  mulhsu       s7, t4, s8
                  c.sub        s1, s0
                  c.addi       s8, -1
                  c.li         s7, 8
                  ori          a2, a4, 1197
                  auipc        a7, 301709
                  srai         t5, s6, 4
                  addi         s11, s3, 254
                  c.and        a4, a1
                  mulhsu       ra, a4, s9
                  or           t3, s5, s5
                  c.andi       a5, 14
                  mulhu        zero, sp, a7
                  and          s8, a3, s1
                  auipc        a3, 705246
                  c.srai       a0, 8
                  mulhu        s4, a5, a6
                  c.srai       s1, 30
                  c.add        t5, t3
                  divu         t6, a4, t2
                  sltu         gp, t3, a3
                  c.lui        a5, 14
                  div          s2, a6, t5
                  c.slli       a3, 1
                  c.and        a5, a4
                  sra          t4, t6, s10
                  ori          s7, a4, -1717
                  mulh         s2, a4, a3
                  slti         a1, t0, -185
                  mulhu        s6, s1, t4
                  mulhsu       a4, t2, t5
                  ori          t5, s0, -44
                  addi         t3, a2, -1890
                  add          s1, t2, t2
                  srli         a0, t6, 26
                  c.lui        s8, 17
                  mulhu        t3, t0, s2
                  add          t4, gp, a6
                  addi         t6, t1, -273
                  mulh         s1, s0, s0
                  srl          a0, tp, a2
                  sltiu        t4, gp, 1712
                  sll          s2, a3, s9
                  c.andi       a4, -1
                  auipc        s2, 261709
                  c.or         s1, a0
                  c.or         a2, a0
                  nop
                  c.slli       gp, 13
                  c.addi       t6, -1
                  srl          a2, s1, a4
                  srli         a0, s9, 7
                  c.srai       a4, 11
                  c.srli       a1, 26
                  sltiu        t4, a7, -302
                  c.li         s4, 10
                  c.lui        s10, 25
                  c.nop
                  c.srai       a2, 9
                  sub          ra, sp, a3
                  auipc        s2, 251094
                  andi         t3, a3, 1195
                  div          ra, t3, a7
                  c.addi       gp, 21
                  c.andi       a0, 21
                  c.srai       a0, 12
                  c.srli       s1, 25
                  c.lui        s10, 10
                  c.lui        s5, 4
                  c.mv         gp, a7
                  nop
                  c.li         gp, 4
                  lui          gp, 151355
                  c.li         a5, -1
                  remu         s10, t0, zero
                  slti         t0, a7, -1997
                  c.andi       a0, 23
                  add          s8, a2, tp
                  srli         s7, s0, 6
                  c.or         s1, a4
                  sll          ra, a4, s8
                  slli         t2, a4, 25
                  andi         t1, t4, 1146
                  sra          s6, t5, tp
                  mulhsu       a1, t6, a4
                  c.slli       t5, 16
                  ori          s6, ra, 1208
                  auipc        t4, 1028512
                  srl          t3, t5, s9
                  nop
                  c.addi       gp, 5
                  ori          s7, s6, -1301
                  slti         t2, s9, -1604
                  c.mv         a7, a1
                  c.or         a1, a2
                  mul          a7, s9, t6
                  srli         t1, s2, 10
                  sll          t6, t0, t6
                  srai         s8, s0, 12
                  mulhu        t5, zero, s0
                  sub          s8, s6, a2
                  c.slli       s7, 24
                  sub          s8, t2, a7
                  mulhu        s6, a2, s7
                  ori          s9, a6, -361
                  c.li         t4, 31
                  auipc        s4, 1025943
                  nop
                  remu         a2, a2, s2
                  slli         a2, t6, 28
                  lui          s1, 748259
                  slti         a0, t2, 290
                  slli         a0, t6, 31
                  rem          a5, s8, sp
                  sra          a0, a4, a4
                  and          t1, a7, s11
                  mulhu        s9, t3, tp
                  mulhsu       zero, a7, s4
                  sub          s4, t2, s0
                  c.mv         a4, s7
                  nop
                  c.mv         s6, a1
                  div          s3, s2, t1
                  mulh         s8, s0, s9
                  c.sub        a0, a2
                  nop
                  mulh         s7, tp, s2
                  addi         a2, zero, 1476
                  ori          t1, a4, 1068
                  c.lui        t3, 30
                  c.add        s11, a7
                  or           a0, s2, sp
                  sra          t0, s4, s5
                  c.andi       a0, -1
                  srai         s7, a6, 27
                  srai         s3, t1, 18
                  sra          s1, s1, zero
                  c.and        a5, a0
                  c.lui        s3, 19
                  addi         a0, s10, 675
                  c.mv         a2, s5
                  c.nop
                  c.li         gp, 3
                  c.xor        a1, a1
                  xor          s5, s7, s4
                  divu         t4, t1, s5
                  andi         ra, s7, 18
                  c.nop
                  divu         t6, s2, t1
                  sltu         t5, tp, s9
                  nop
                  srli         a7, s4, 3
                  slli         s5, s4, 1
                  lui          s1, 532738
                  lui          s4, 671818
                  c.andi       a5, 21
                  c.or         a2, a1
                  lui          a0, 939057
                  srai         a2, a4, 29
                  srai         s11, sp, 26
                  nop
                  c.xor        a3, a5
                  nop
                  c.andi       a3, 10
                  and          s9, t2, a1
                  lui          a0, 866347
                  sltu         t0, s3, t3
                  andi         t1, s6, 117
                  addi         zero, a3, 937
                  add          s3, s0, s10
                  c.slli       t5, 12
                  slt          s10, s3, a1
                  c.nop
                  c.srai       a4, 11
                  remu         a5, gp, s11
                  xor          s8, a5, s0
                  c.or         a4, s1
                  slt          zero, s0, s2
                  srai         s8, s3, 10
                  add          s7, tp, a2
                  mulhsu       t4, t0, s5
                  c.li         a5, -1
                  auipc        a4, 571834
                  divu         t3, t1, a6
                  c.srli       a0, 24
                  andi         s5, t5, -512
                  c.andi       s1, 14
                  lui          t3, 139976
                  c.lui        t0, 25
                  c.srli       a5, 18
                  sltiu        a1, a7, -902
                  c.andi       s1, 3
                  c.lui        s1, 2
                  sltu         ra, s4, t6
                  divu         tp, s4, s7
                  c.nop
                  sra          a4, a5, tp
                  auipc        s11, 108041
                  sltu         t3, t2, a4
                  ori          a3, s2, 78
                  add          s2, a2, s3
                  c.add        s7, s3
                  srli         a5, s11, 2
                  addi         t2, s11, -931
                  c.add        s10, s6
                  c.and        a5, s0
                  andi         ra, a7, 1000
                  lui          s11, 703442
                  xori         s2, s7, -1887
                  div          tp, gp, sp
                  mulh         tp, s5, a7
                  mulh         t3, s2, t2
                  c.slli       gp, 25
                  remu         t6, t2, s2
                  srl          s6, s5, t4
                  mulh         a5, a0, a0
                  sub          s4, s0, s10
                  mulh         a0, t4, t2
                  slli         s3, a6, 10
                  c.add        tp, tp
                  sltu         s10, t5, s11
                  mulhu        a3, a4, t1
                  c.mv         a2, a6
                  rem          s3, ra, t1
                  mulhsu       t1, a6, t5
                  lui          gp, 957245
                  xor          a2, t1, a2
                  mulhu        t1, s11, s10
                  mulh         s8, a4, ra
                  srl          s9, t1, s2
                  slli         a2, sp, 21
                  c.lui        t4, 23
                  mul          s8, sp, s10
                  div          a1, s3, s8
                  andi         a4, gp, -1239
                  srai         s6, t6, 18
                  c.addi       t5, 18
                  or           s4, t6, t2
                  add          s5, tp, a2
                  sra          zero, t0, a1
                  srli         tp, a3, 9
                  xori         t6, s11, 459
                  mulhsu       a3, s10, t1
                  c.addi       s6, 18
                  mulhsu       a7, s8, a6
                  addi         a2, zero, -1396
                  srai         a4, s11, 2
                  srli         s8, a7, 6
                  c.sub        a1, a3
                  and          a7, ra, t5
                  c.mv         s5, gp
                  c.nop
                  mulhu        tp, sp, s8
                  srli         s10, t6, 24
                  c.xor        a0, a1
                  lui          a5, 677890
                  addi         s3, ra, -1591
                  xori         a0, s2, 735
                  c.add        tp, s10
                  nop
                  ori          a7, a3, 1331
                  mul          ra, a0, t6
                  divu         s1, s4, s6
                  slt          s3, a1, s6
                  div          t6, s2, a1
                  auipc        t0, 393960
                  addi         t2, s3, 1839
                  sub          s10, t1, zero
                  c.nop
                  sra          s3, s1, s4
                  divu         t5, s4, s2
                  sltiu        tp, t0, -836
                  sub          s5, s4, s5
                  srl          a1, t4, sp
                  mulhsu       a1, a3, s2
                  srl          t1, s1, s7
                  c.andi       a0, 16
                  c.li         ra, 17
                  lui          a5, 176360
                  srai         s4, tp, 4
                  nop
                  c.mv         a1, s7
                  srli         s11, t1, 9
                  slli         s5, a2, 1
                  mulhu        zero, s8, t1
                  slli         a2, a7, 24
                  mulhu        t5, s11, t2
                  sra          s4, a2, s2
                  c.srli       a2, 18
                  srl          zero, a5, gp
                  nop
                  remu         tp, a4, s9
                  andi         t6, a0, -5
                  srl          t0, t4, a2
                  slli         tp, s1, 7
                  c.mv         a4, s10
                  c.lui        s8, 24
                  remu         t2, s5, s2
                  c.and        a4, s1
                  c.add        a2, s0
                  remu         s2, t6, a4
                  add          s1, a0, a3
                  c.srai       s1, 10
                  c.xor        a3, a4
                  slli         a1, s0, 15
                  mul          t6, a0, s1
                  remu         t4, t5, s11
                  c.nop
                  sra          s8, t6, a4
                  c.or         a2, s0
                  c.srli       a0, 14
                  addi         s2, a5, 161
                  c.andi       a0, -1
                  mulh         a4, t3, a5
                  srli         tp, s5, 21
                  c.slli       s4, 26
                  divu         ra, sp, a6
                  mulhsu       s9, a7, t3
                  srli         s10, a3, 18
                  xor          t6, a6, t4
                  and          t6, a4, t4
                  xor          zero, s1, s0
                  sub          s11, s6, zero
                  addi         a0, a1, 309
                  c.li         a5, -1
                  c.srli       a2, 18
                  c.srli       a1, 1
                  c.srai       a3, 19
                  sltiu        t1, s8, 698
                  c.andi       s1, -1
                  c.andi       a4, -1
                  c.add        a7, gp
                  c.xor        s1, s0
                  c.li         s2, -1
                  rem          zero, gp, t3
                  sub          s11, t1, a6
                  c.srli       a1, 6
                  slti         s4, s4, -163
                  addi         a1, a2, 668
                  c.slli       s8, 1
                  slti         a3, s5, -43
                  c.li         t6, -1
                  nop
                  slti         t3, s5, 203
                  sltu         a4, s11, a7
                  sltiu        s3, a7, -1044
                  sltiu        t2, s11, 334
                  divu         t1, s6, s5
                  c.addi       t4, -1
                  add          t5, a5, s1
                  remu         t4, a1, t2
                  c.addi       s8, 15
                  and          a2, a6, a7
                  c.and        a1, a1
                  c.or         a0, s0
                  c.slli       s1, 1
                  andi         s2, s7, -1597
                  srai         s6, a5, 3
                  slt          s7, ra, t4
                  c.xor        a3, s1
                  mulh         s8, a1, s5
                  mulhsu       a0, t1, a4
                  slti         t5, s4, 1384
                  sra          t0, s10, s5
                  slli         a2, t1, 6
                  add          a3, t3, s6
                  and          tp, a1, s3
                  c.mv         s4, s1
                  sra          s8, s5, s10
                  sll          s4, t3, gp
                  c.xor        a1, s0
                  c.lui        a4, 29
                  c.xor        a1, a0
                  slt          t3, a7, a5
                  c.li         s4, -1
                  c.sub        a4, a1
                  c.srai       a5, 16
                  c.sub        a4, a4
                  c.lui        s8, 3
                  mulh         s1, s0, t3
                  mulh         s9, a4, ra
                  mulhu        t0, t3, s0
                  c.nop
                  sll          s8, t6, s1
                  andi         s9, a0, 266
                  sltu         a7, s4, a0
                  sltu         s7, s7, s1
                  c.slli       a4, 18
                  remu         tp, s8, t2
                  srl          s8, a1, t2
                  c.and        a2, a2
                  slti         t5, t5, -691
                  c.andi       a1, 15
                  remu         s8, t3, gp
                  sub          t4, a5, t6
                  c.lui        a4, 17
                  remu         s9, t6, a6
                  c.nop
                  nop
                  and          a1, tp, a6
                  div          s2, t1, a7
                  srl          t3, gp, s9
                  div          t1, a4, s9
                  c.sub        a1, s1
                  lui          t3, 29516
                  c.nop
                  c.slli       s2, 31
                  add          a3, s5, s7
                  srai         s1, s5, 2
                  lui          a0, 814279
                  c.slli       t4, 20
                  srai         s1, s2, 20
                  c.slli       s6, 19
                  mul          s10, a4, t3
                  srl          zero, t4, t1
                  sltu         s5, s10, s4
                  c.andi       a5, 15
                  srai         s9, s11, 19
                  sltiu        a3, ra, 855
                  srli         t6, t0, 28
                  xori         s2, gp, -1356
                  mulhsu       t2, s0, tp
                  divu         s8, gp, s11
                  mulhsu       s11, t2, a0
                  srl          s11, a7, a3
                  sub          a3, s10, t5
                  sra          t5, t5, a4
                  slt          t6, t6, t6
                  sra          s5, a4, s2
                  c.li         s2, -1
                  nop
                  srai         t3, s6, 8
                  sltiu        s7, s7, 587
                  srli         a3, tp, 1
                  srai         s4, tp, 5
                  mulhu        t1, t0, t0
                  c.slli       s2, 9
                  c.lui        t3, 21
                  c.sub        a1, a5
                  c.addi       s9, 22
                  andi         t5, t1, -1726
                  slli         t5, s2, 10
                  slti         a2, s1, 53
                  c.li         s5, 26
                  c.or         a2, a2
                  nop
                  auipc        tp, 527415
                  mul          t6, s8, t2
                  c.sub        a0, a3
                  c.add        s11, gp
                  xor          s8, t4, s4
                  c.addi       tp, 1
                  mulh         a2, a7, t6
                  andi         ra, ra, 536
                  sra          a5, s3, s1
                  remu         t0, s2, s8
                  and          s1, t6, a5
                  slti         t5, s4, 727
                  and          s5, s9, a7
                  sra          a5, sp, s10
                  div          s1, s5, a1
                  sub          t1, a6, s9
                  mulhsu       a7, t4, s6
                  c.srai       a3, 3
                  sltu         a7, ra, t4
                  mul          gp, t6, a4
                  nop
                  mulh         s9, a2, a0
                  c.lui        s3, 8
                  addi         a4, s11, -1769
                  slti         t2, s11, -102
                  c.andi       a0, -1
                  c.slli       t5, 9
                  c.srli       a2, 27
                  lui          s3, 824963
                  c.slli       a5, 16
                  mul          tp, sp, t6
                  slli         zero, s3, 9
                  sra          t2, a6, a1
                  mulh         a3, zero, s8
                  c.add        a0, t2
                  srai         a7, s6, 19
                  c.mv         a2, s9
                  c.add        s2, gp
                  mul          s2, s4, t0
                  add          s8, tp, s8
                  c.add        a0, s9
                  and          t1, a7, s11
                  c.srli       a2, 5
                  srli         a5, tp, 10
                  or           s1, s11, t2
                  auipc        s10, 76951
                  srli         t2, s6, 9
                  c.slli       a5, 25
                  div          t0, t1, a0
                  divu         t4, s9, a0
                  addi         a2, a4, -1409
                  c.and        s1, s0
                  c.addi       t3, -1
                  mulhsu       s7, tp, t0
                  rem          t3, s5, t1
                  slti         s5, t4, -413
                  andi         s10, s6, -453
                  or           a2, s9, t3
                  or           gp, t2, s2
                  c.nop
                  c.lui        a3, 13
                  slt          ra, tp, s6
                  addi         t3, t0, -1202
                  c.addi       s1, -1
                  div          s3, s8, t0
                  srli         gp, t6, 23
                  rem          s8, a0, s10
                  xor          s2, s7, s8
                  andi         t4, s10, 63
                  c.sub        a0, s1
                  xor          a7, tp, a2
                  c.addi       s2, -1
                  c.add        a4, s4
                  mul          s3, zero, s11
                  andi         t1, a4, 1501
                  mulh         t6, t0, t0
                  c.lui        a0, 2
                  c.addi       t4, -1
                  c.andi       a2, -1
                  or           a1, t5, a1
                  andi         zero, s4, 262
                  srai         s7, a1, 6
                  srli         a0, t1, 19
                  sub          s1, t0, t2
                  c.nop
                  srli         t1, s4, 26
                  srl          t6, a7, s4
                  divu         zero, a4, a4
                  c.srli       a5, 3
                  c.xor        a4, s0
                  mul          t4, t2, a2
                  mul          tp, gp, ra
                  sltu         s8, a7, a3
                  sub          s2, ra, s11
                  sltu         a0, s5, s10
                  c.andi       a0, -1
                  or           zero, a4, sp
                  andi         s2, t5, 1820
                  mulhsu       s11, s5, sp
                  remu         t0, a6, t1
                  c.addi       s8, -1
                  sll          t3, s5, a0
                  c.addi       s6, -1
                  c.addi       a7, 16
                  and          a3, a0, s2
                  xori         t4, t1, 1530
                  and          s7, s10, t0
                  remu         s8, s8, s11
                  or           s1, t6, a7
                  sltu         t6, a3, s1
                  sub          s5, gp, gp
                  c.srli       a2, 10
                  c.and        a2, a0
                  mulhsu       s2, s3, s0
                  sltiu        a2, s10, 269
                  mulh         a3, a0, s1
                  mulh         a3, a6, a1
                  c.xor        a5, a3
                  sra          a1, sp, s5
                  sltiu        t5, s6, -1061
                  divu         a5, a2, a6
                  c.or         a0, s0
                  nop
                  lui          s4, 398679
                  ori          s9, a3, -1055
                  mulhsu       s8, a0, s2
                  sra          t2, s9, t2
                  c.andi       a5, -1
                  c.srai       a2, 31
                  c.xor        a3, a3
                  mulh         s4, t5, t4
                  c.slli       a4, 9
                  addi         a2, s0, 908
                  sub          s8, s4, a2
                  c.xor        a2, a2
                  addi         a0, s9, 359
                  sra          tp, a7, s1
                  auipc        zero, 42749
                  c.srai       a3, 25
                  andi         s8, t3, 861
                  mul          s10, t1, a5
                  c.and        a2, a1
                  ori          t3, gp, -2013
                  mulhu        zero, s2, t5
                  div          a3, s1, a0
                  srai         s10, a2, 6
                  c.or         a3, a0
                  mul          s1, s9, t0
                  mulh         s10, gp, t5
                  c.mv         t0, s1
                  div          a5, a6, s4
                  xori         t3, a2, -1515
                  c.mv         s1, t5
                  c.nop
                  addi         s10, t4, 1450
                  div          s2, s1, s6
                  mulhsu       a5, ra, s5
                  srl          t1, t2, tp
                  xori         a2, a2, -261
                  c.sub        s1, a5
                  c.and        a4, a3
                  srli         t6, s7, 19
                  or           s5, tp, sp
                  addi         a2, t2, -58
                  mulh         ra, s10, s4
                  slli         s6, a2, 7
                  and          t1, t2, s0
                  div          s8, a0, s5
                  auipc        s5, 952645
                  mulh         s3, s0, s11
                  sra          a4, s6, ra
                  c.add        t5, a1
                  or           t1, s8, sp
                  ori          s3, a0, 1763
                  sub          s8, s8, s11
                  c.lui        ra, 10
                  la x2, test_done
                  jalr x0, x2, 0
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
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_2:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_3:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_4:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_5:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_6:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_7:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_8:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_9:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_10:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_11:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_12:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_13:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_14:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_15:
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 0x1f
                  beqz x9, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  addi x8, x8, -4
                  sw  x16, (x8)
                  add x16, x8, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x8, x16, zero
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x9, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x9, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x9, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x9, x17, ecall_handler
                  li x17, 0x1
                  beq x9, x17, instr_fault_handler
                  li x17, 0x5
                  beq x9, x17, load_fault_handler
                  li x17, 0x7
                  beq x9, x17, store_fault_handler
                  li x17, 0xc
                  beq x9, x17, pt_fault_handler
                  li x17, 0xd
                  beq x9, x17, pt_fault_handler
                  li x17, 0xf
                  beq x9, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x9, _start
                  sw x0, 0(x9)
                  sw x1, 4(x9)
                  sw x2, 8(x9)
                  sw x3, 12(x9)
                  sw x4, 16(x9)
                  sw x5, 20(x9)
                  sw x6, 24(x9)
                  sw x7, 28(x9)
                  sw x8, 32(x9)
                  sw x9, 36(x9)
                  sw x10, 40(x9)
                  sw x11, 44(x9)
                  sw x12, 48(x9)
                  sw x13, 52(x9)
                  sw x14, 56(x9)
                  sw x15, 60(x9)
                  sw x16, 64(x9)
                  sw x17, 68(x9)
                  sw x18, 72(x9)
                  sw x19, 76(x9)
                  sw x20, 80(x9)
                  sw x21, 84(x9)
                  sw x22, 88(x9)
                  sw x23, 92(x9)
                  sw x24, 96(x9)
                  sw x25, 100(x9)
                  sw x26, 104(x9)
                  sw x27, 108(x9)
                  sw x28, 112(x9)
                  sw x29, 116(x9)
                  sw x30, 120(x9)
                  sw x31, 124(x9)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x8, x16, zero
                  lw  x16, (x8)
                  addi x8, x8, 4
                  mret

load_fault_handler:
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x8, x16, zero
                  lw  x16, (x8)
                  addi x8, x8, 4
                  mret

store_fault_handler:
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x8, x16, zero
                  lw  x16, (x8)
                  addi x8, x8, 4
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x8, x16, zero
                  lw  x16, (x8)
                  addi x8, x8, 4
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x8, x16, zero
                  lw  x16, (x8)
                  addi x8, x8, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x16, x8, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x8, x16, zero
                  lw  x16, (x8)
                  addi x8, x8, 4
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
