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
                  li x27, 0x40001105
                  csrw 0x301, x27
kernel_sp:        
                  la x22, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 1
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  li x27, 0x0
                  csrw 0x304, x27 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0xf1ca20a3
                  li x4, 0x3f6ef38e
                  li x5, 0x6e5981ec
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0xb
                  li x9, 0x0
                  li x10, 0x4
                  li x11, 0xf569a52a
                  li x12, 0xf43251c8
                  li x13, 0x80000000
                  li x14, 0x8
                  li x15, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x8
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x5
                  li x23, 0xf5eef40b
                  li x24, 0x8
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0x8
                  li x28, 0x80000000
                  li x29, 0x4b52eba6
                  li x30, 0x9
                  li x31, 0x8
                  la x16, user_stack_end
main:             c.andi       a5, -1
                  c.srli       s0, 20
                  c.mv         a1, a1
                  slt          a2, a6, a0
                  rem          tp, s4, s7
                  divu         s2, s11, t4
                  sltiu        a4, zero, -471
                  and          s4, s11, tp
                  c.add        t2, a5
                  c.lui        a3, 11
                  c.and        a2, a4
                  c.slli       t5, 21
                  c.nop
                  srli         t1, ra, 2
                  xor          s7, s6, s2
                  remu         s2, sp, a1
                  slli         t5, zero, 30
                  and          t3, gp, t0
                  sltiu        zero, a6, -115
                  c.lui        s2, 25
                  sltiu        a3, s10, 465
                  c.andi       s1, -1
                  c.mv         a5, a2
                  sltiu        s10, s2, 223
                  nop
                  c.nop
                  addi         s2, tp, 1648
                  andi         t4, zero, 8
                  slti         t0, a0, -1251
                  c.addi       s7, 15
                  c.addi       gp, 12
                  c.nop
                  c.lui        t1, 1
                  srai         a7, t1, 29
                  c.srai       a3, 25
                  c.sub        s0, a5
                  c.nop
                  srai         t5, a7, 10
                  remu         zero, a3, s11
                  mulhu        a3, t2, a0
                  c.sub        a4, s1
                  sll          s2, t5, s3
                  xor          t4, s6, s8
                  slti         a2, a5, 1192
                  c.li         s0, 7
                  c.or         a4, s0
                  c.add        t4, s10
                  sltu         a4, a4, a4
                  c.addi       a1, 11
                  auipc        t0, 778336
                  sra          gp, a7, t0
                  c.xor        a2, a1
                  c.and        a0, a5
                  sra          t4, a6, s3
                  c.mv         a3, a0
                  sll          t4, zero, t5
                  c.srai       s1, 5
                  c.nop
                  c.add        s5, a0
                  andi         s9, s3, 294
                  divu         a3, t3, s2
                  mul          zero, t5, t5
                  andi         s7, s0, 360
                  c.andi       a2, 12
                  addi         t4, a6, 1362
                  mulh         t4, s3, s10
                  divu         t6, a6, a2
                  xori         s0, s3, -697
                  rem          a1, t2, s2
                  c.li         tp, -1
                  mulhu        ra, zero, s4
                  addi         t4, t1, 1129
                  c.mv         a0, a7
                  mulhu        zero, t4, sp
                  c.addi       a0, -1
                  xor          s3, a5, s9
                  sll          zero, t1, s9
                  c.or         a2, s0
                  ori          s5, t2, -852
                  xori         t3, t2, -1811
                  rem          a7, s9, a2
                  add          s10, a1, zero
                  c.sub        s1, s0
                  ori          s3, a6, -1619
                  mulhu        s9, t2, ra
                  addi         t0, a7, 390
                  andi         t4, t0, 576
                  c.or         a1, s0
                  c.addi       s8, 28
                  srai         t6, gp, 6
                  xor          tp, s8, t5
                  sub          a2, s2, a4
                  c.xor        a0, a0
                  sltiu        s11, s9, -1541
                  xor          a7, t5, tp
                  sltu         s10, t4, s6
                  c.li         s0, -1
                  c.nop
                  sll          t3, a5, t6
                  mulhsu       s7, a3, s4
                  or           s10, s3, a1
                  c.slli       ra, 3
                  c.addi       s1, -1
                  c.nop
                  c.lui        a4, 8
                  ori          t3, t6, 412
                  srli         a3, s3, 22
                  divu         s2, a5, gp
                  sltiu        s5, s0, 1544
                  c.addi       t0, -1
                  c.nop
                  srl          s4, a4, s2
                  c.srai       a2, 19
                  srai         t0, t0, 17
                  add          a5, sp, a3
                  sra          zero, tp, s5
                  rem          s11, s11, t0
                  c.srli       a0, 20
                  c.add        s1, s9
                  slti         s2, ra, -1040
                  c.mv         gp, s2
                  srai         a4, a5, 14
                  xor          a2, t4, s11
                  c.srli       a1, 31
                  c.sub        s1, a2
                  c.xor        a0, a5
                  c.nop
                  sltiu        t0, s4, 317
                  remu         gp, a5, s2
                  c.addi       s8, -1
                  divu         a4, t0, a6
                  remu         t1, s1, ra
                  or           s11, t2, s10
                  add          a4, t0, a7
                  nop
                  c.li         tp, 3
                  sltu         s1, s0, tp
                  and          s10, t1, t3
                  remu         a2, s2, zero
                  c.addi       s4, 20
                  c.xor        a5, a4
                  add          s7, s9, t4
                  andi         s10, a0, -792
                  remu         zero, gp, a6
                  c.or         a5, s1
                  mulhsu       t4, s6, sp
                  and          s10, t2, a6
                  c.add        t2, t5
                  xori         t5, a4, 662
                  c.xor        a1, a1
                  c.slli       t6, 13
                  or           ra, t6, a6
                  sltiu        s2, s6, -438
                  sra          s2, gp, ra
                  c.mv         tp, a5
                  andi         ra, sp, 1129
                  srai         s2, t0, 9
                  c.lui        a4, 25
                  divu         s10, s11, ra
                  div          s8, a1, s6
                  c.and        a4, s0
                  sltiu        s2, a5, 1122
                  mulh         s0, s0, t3
                  c.xor        a2, a5
                  c.slli       a5, 11
                  c.xor        a4, s1
                  c.srli       a2, 10
                  nop
                  c.li         s8, -1
                  addi         s10, a1, -865
                  auipc        a7, 789356
                  div          a0, t1, s3
                  c.addi       a0, -1
                  srli         t5, ra, 26
                  addi         s3, sp, 1763
                  xori         s2, zero, -1228
                  srl          a3, s9, tp
                  auipc        s9, 203020
                  ori          t2, s1, -1574
                  rem          a7, ra, s9
                  c.andi       a3, -1
                  c.and        a1, a3
                  sub          t4, sp, gp
                  sltu         s3, s4, s8
                  sub          ra, t4, t3
                  c.sub        a2, a1
                  mulhu        s5, t1, ra
                  mulhu        s1, t4, t6
                  c.srai       a5, 13
                  ori          s7, a6, -1235
                  and          gp, s6, s1
                  mulhu        a0, t4, a2
                  sub          s0, a4, s6
                  c.srli       s0, 20
                  c.xor        a2, s0
                  andi         zero, a4, -560
                  andi         s8, a6, -582
                  srai         a4, a1, 11
                  mul          s8, tp, t3
                  sltiu        s0, s4, -1366
                  c.mv         t2, a3
                  ori          t3, a6, 980
                  c.sub        a0, s1
                  or           t4, a0, s4
                  sra          s10, s7, t1
                  c.addi       a5, 6
                  c.slli       a2, 5
                  auipc        t4, 131191
                  c.srli       s0, 9
                  sltu         zero, s10, s3
                  divu         s0, a0, s7
                  xor          ra, sp, a6
                  sll          s7, s0, t2
                  slli         gp, s2, 22
                  mulhu        s2, s10, s8
                  rem          a1, s10, t4
                  add          a3, s6, t0
                  ori          zero, s11, -1540
                  xor          s10, t3, t0
                  c.li         t4, -1
                  slli         a0, t3, 26
                  or           s8, a4, a6
                  xor          t2, s7, s3
                  mulh         ra, a6, s5
                  auipc        t3, 765354
                  sltu         gp, s7, a1
                  c.srai       a3, 19
                  xor          t1, s4, s1
                  c.li         s5, 30
                  c.srli       a2, 30
                  slti         a2, a1, -1400
                  c.srli       a0, 4
                  sll          t3, s2, a2
                  remu         a5, s6, s10
                  c.li         t4, -1
                  and          tp, t3, a4
                  mulhu        a3, s11, a3
                  c.add        ra, s3
                  c.li         s2, 28
                  remu         a3, t6, s1
                  sra          t2, s10, t3
                  c.addi       s11, 15
                  slti         s0, ra, -1578
                  c.addi       a5, 11
                  c.srli       s0, 28
                  srai         a3, s2, 21
                  c.lui        t3, 27
                  or           zero, a6, a4
                  srli         t2, t2, 24
                  slli         t4, t5, 20
                  c.srai       a1, 30
                  addi         s8, gp, -228
                  slti         t2, t5, 1162
                  sltu         t3, sp, t0
                  slli         s0, t2, 6
                  sltu         gp, a0, s8
                  c.xor        s0, s0
                  c.mv         s2, t0
                  mulhu        zero, s11, tp
                  sub          tp, a4, sp
                  auipc        t5, 148281
                  slti         a3, t3, 1234
                  sub          zero, a4, zero
                  c.add        t5, a1
                  sll          a5, s6, s0
                  addi         t4, s2, 279
                  sltiu        s10, t3, -1236
                  nop
                  mulh         a2, s5, t3
                  ori          a4, s4, 448
                  c.addi       s8, 1
                  c.srai       a4, 17
                  c.srai       a2, 15
                  srl          a3, t3, s9
                  srl          t1, a0, s9
                  add          t4, s10, t6
                  slli         gp, s0, 9
                  slli         t4, s0, 26
                  addi         a2, s7, -1006
                  and          ra, s2, s1
                  srai         a5, a4, 10
                  xor          a2, a7, s4
                  srli         t4, a1, 2
                  mulhu        a5, gp, t2
                  srl          s5, zero, t5
                  slt          s11, ra, a3
                  xori         t4, s8, -847
                  c.and        s0, a3
                  c.lui        tp, 15
                  sll          ra, s6, s6
                  c.mv         a4, s6
                  divu         s3, t1, a2
                  c.xor        a1, a2
                  c.or         a4, s1
                  c.xor        a4, a3
                  add          s4, s8, a4
                  mulhsu       s5, s10, ra
                  sra          t3, s10, s0
                  and          s3, sp, s6
                  c.slli       s10, 31
                  c.srai       s1, 9
                  c.li         s9, -1
                  c.add        a5, s7
                  c.mv         tp, t6
                  c.or         a3, a1
                  srai         s2, tp, 2
                  andi         s11, a4, 1881
                  div          s2, s6, a0
                  c.li         a4, -1
                  c.andi       a3, 8
                  ori          s8, tp, -1580
                  sll          s3, t3, ra
                  c.and        a2, s1
                  xori         s1, t6, 20
                  c.slli       s8, 26
                  nop
                  divu         zero, s10, t5
                  c.slli       s0, 22
                  mul          a5, s7, s5
                  sll          t4, a3, s10
                  c.and        a1, s0
                  srai         t6, zero, 13
                  c.nop
                  srl          t1, a7, s7
                  mulhsu       a2, a5, s11
                  c.li         a0, -1
                  slt          t1, zero, s4
                  xori         ra, gp, 1506
                  mulhu        t2, t4, t5
                  c.srli       s0, 7
                  lui          t5, 62347
                  add          t6, a0, s3
                  remu         gp, t5, gp
                  sra          a3, t1, s7
                  srli         t5, s8, 12
                  remu         t2, s5, s5
                  srl          s10, a4, t1
                  or           s11, s6, t5
                  slti         a1, zero, 484
                  c.nop
                  c.add        t0, a1
                  c.or         s1, a1
                  c.andi       a0, 20
                  c.and        a5, a3
                  xor          tp, s4, t3
                  c.and        a3, s0
                  c.nop
                  c.addi       tp, 19
                  mulh         s5, a6, s10
                  sltu         s5, s1, a2
                  mulh         t4, ra, s10
                  c.andi       a4, -1
                  c.andi       s1, -1
                  ori          t5, a4, -1879
                  srli         s3, a0, 15
                  srli         s9, a0, 12
                  slt          ra, gp, sp
                  c.and        a5, s1
                  c.andi       s0, -1
                  mulhu        s2, s2, s8
                  sltu         t3, t4, a3
                  auipc        a3, 869710
                  divu         t5, a6, a2
                  c.andi       a0, -1
                  c.andi       a3, 15
                  slli         gp, s3, 9
                  c.li         t1, -1
                  mulhsu       t6, s7, s5
                  c.srli       a1, 17
                  lui          s9, 439011
                  lui          s10, 59378
                  divu         s2, s0, t4
                  mulhu        a4, zero, t1
                  c.slli       t0, 1
                  div          t3, a2, t0
                  c.srli       a2, 15
                  sltiu        s7, s2, 1468
                  andi         s2, s5, -1109
                  mul          s8, s9, s2
                  mul          t2, t6, sp
                  nop
                  c.add        s10, ra
                  or           t2, a0, ra
                  auipc        ra, 961489
                  c.or         s0, a1
                  srli         t5, s4, 23
                  c.slli       gp, 30
                  c.mv         t1, ra
                  sltiu        s5, a2, 275
                  sltu         a4, a4, gp
                  andi         s8, s4, -1827
                  c.sub        a5, s1
                  nop
                  c.and        a1, s0
                  c.andi       a5, 13
                  slli         t4, s10, 31
                  xor          a1, s11, a7
                  or           s11, s6, t1
                  c.nop
                  xor          a3, a2, tp
                  c.add        t6, a2
                  sll          t6, t3, a3
                  sltu         s3, t2, tp
                  nop
                  remu         t3, s8, a1
                  add          t0, t1, s10
                  rem          s2, zero, t4
                  c.mv         s0, s2
                  sltiu        s5, a0, 1494
                  c.slli       a5, 7
                  auipc        s4, 368610
                  or           ra, a4, t3
                  addi         s11, s9, -115
                  div          a0, s9, s2
                  c.and        s0, a5
                  slti         s2, a2, -753
                  slti         t6, gp, 383
                  srai         s2, gp, 0
                  c.slli       a0, 8
                  auipc        t5, 724398
                  sra          ra, s11, a0
                  c.andi       s1, -1
                  c.nop
                  rem          s5, s4, t4
                  c.xor        a1, a4
                  c.add        s7, t5
                  and          t5, s8, s2
                  mul          t3, t3, t0
                  xor          gp, a6, t1
                  c.sub        a0, s1
                  andi         tp, s7, -1926
                  c.li         ra, -1
                  andi         a3, t4, -1082
                  div          t2, a7, sp
                  ori          s2, t6, 56
                  and          a7, gp, s10
                  mulh         a4, a6, t5
                  mulhu        t6, s5, t4
                  c.mv         s5, a2
                  rem          s2, t4, t3
                  remu         t3, t0, a0
                  c.mv         t3, t0
                  mulhsu       a1, s2, sp
                  xor          t0, sp, a2
                  mulh         s4, a1, s9
                  ori          a5, a4, -562
                  addi         t4, a6, -48
                  lui          a2, 998274
                  add          a0, s4, t4
                  ori          s0, ra, -1220
                  c.andi       s1, -1
                  slli         t0, t0, 4
                  add          a3, t1, a7
                  c.mv         t5, s0
                  addi         zero, tp, 1241
                  c.lui        s10, 7
                  ori          s1, s2, -861
                  addi         a2, s10, -2047
                  xori         s0, t4, -1855
                  sra          t2, zero, t4
                  add          t2, t1, s6
                  sub          s11, sp, s10
                  c.addi       s7, 28
                  remu         zero, a5, s3
                  sra          s9, a2, s6
                  c.mv         a1, a1
                  auipc        a1, 942651
                  sub          s4, s11, s8
                  c.li         a2, 27
                  div          a1, s6, t6
                  div          a2, ra, s5
                  andi         t6, t4, 1951
                  slti         zero, s6, 2044
                  mulhu        t1, a2, a5
                  xor          s11, s3, tp
                  c.mv         s7, s4
                  xor          zero, t3, s2
                  or           s1, s0, a6
                  nop
                  andi         t1, s6, -382
                  sltu         s4, a7, s8
                  c.andi       s1, 23
                  sub          s4, s4, a7
                  c.srai       a4, 25
                  srl          a7, a7, gp
                  sltiu        ra, s9, -499
                  c.xor        a3, a3
                  sltu         ra, a0, gp
                  c.mv         s7, a2
                  c.mv         a7, t3
                  and          a0, t1, s11
                  lui          t5, 936789
                  mulhsu       a7, s5, t5
                  c.or         s0, a0
                  c.srli       a1, 15
                  slli         a0, s2, 14
                  c.or         a1, a0
                  lui          s3, 752828
                  mulh         s0, t1, t4
                  andi         s1, ra, -1181
                  c.addi       a0, 27
                  and          s2, t0, s2
                  c.slli       a4, 10
                  sltu         t0, t6, s2
                  sra          tp, t5, a0
                  mul          s3, t0, a2
                  sltiu        a5, zero, 1984
                  div          t1, s4, s0
                  c.li         s1, 27
                  nop
                  auipc        s1, 182721
                  c.addi       s5, 31
                  sra          t3, s4, t1
                  sltu         s7, a1, s7
                  sltu         s4, s11, s5
                  sll          s2, s9, s8
                  c.li         s10, -1
                  mulhu        t2, s6, tp
                  c.or         a4, a3
                  slt          s9, tp, a6
                  mulhsu       t2, s3, a0
                  c.mv         a0, a2
                  div          s7, t3, a0
                  srai         t0, t2, 20
                  srli         t1, s10, 4
                  sltu         zero, s9, s1
                  xor          s11, s2, s6
                  srl          a1, s9, t5
                  addi         s2, a7, 1267
                  div          a3, s7, a3
                  addi         a7, t1, 1967
                  mulhsu       s3, t5, s11
                  xori         ra, a1, 18
                  slli         zero, a5, 12
                  mulh         s3, a0, s4
                  c.srli       s0, 22
                  sub          s11, t3, a0
                  srai         t0, s3, 12
                  divu         t1, tp, s8
                  div          a7, s10, a6
                  c.nop
                  c.xor        a4, s0
                  srai         t4, gp, 23
                  sll          t5, a7, a2
                  or           gp, ra, a2
                  or           s9, sp, s2
                  or           t2, s11, a4
                  mul          ra, t2, gp
                  sltiu        s2, t5, 651
                  srl          t1, s4, ra
                  ori          t2, s5, -1363
                  divu         t5, t5, s1
                  srli         a3, s4, 10
                  srli         s8, s6, 28
                  remu         s7, s8, s0
                  c.lui        t0, 25
                  slli         a0, s7, 24
                  ori          a0, a4, -1462
                  c.mv         s1, s4
                  and          s11, t2, s9
                  and          s8, s7, ra
                  sltu         t0, s11, t6
                  sra          a5, s8, s2
                  c.add        t3, s0
                  c.and        s1, s1
                  c.and        a1, a1
                  add          s10, a0, t3
                  c.srai       a3, 2
                  andi         t1, s2, -662
                  c.xor        s0, a5
                  ori          t2, sp, -317
                  slti         s0, a4, -1701
                  mulh         s1, s3, a0
                  srli         zero, ra, 2
                  srl          t2, t5, a1
                  c.lui        t4, 15
                  c.add        a0, t1
                  divu         a2, s8, gp
                  sltiu        t3, a4, -1887
                  c.nop
                  sltu         t6, a6, s8
                  and          s9, sp, tp
                  c.or         a2, a4
                  c.andi       a4, -1
                  remu         a7, tp, ra
                  sub          gp, a6, a4
                  c.lui        s2, 14
                  remu         tp, t5, s7
                  c.nop
                  c.or         a5, a0
                  c.addi       a3, -1
                  c.add        s10, t3
                  sltu         a0, t5, a2
                  c.and        a5, a0
                  c.sub        a5, s1
                  sub          zero, s8, s8
                  sll          s5, ra, a2
                  c.srli       s0, 17
                  remu         t1, t1, a7
                  and          t3, zero, sp
                  srai         s2, s2, 17
                  c.andi       a1, 12
                  sub          a4, tp, s3
                  rem          t0, t3, t1
                  srli         s2, gp, 11
                  nop
                  sltu         a3, s4, a4
                  ori          a2, s7, -782
                  rem          t1, s3, a6
                  mul          t3, a2, t1
                  sub          s1, a6, a7
                  sll          s10, s4, t4
                  mul          s7, a5, t2
                  srl          s5, s2, zero
                  ori          a7, a2, 1213
                  c.and        a2, a3
                  srai         zero, a6, 4
                  srli         t1, s5, 21
                  rem          t4, a7, a4
                  or           s11, t4, gp
                  c.andi       a3, 25
                  nop
                  mulhu        zero, t4, a7
                  remu         s8, s6, gp
                  c.addi       a5, -1
                  sra          s7, s11, s8
                  srl          ra, s5, tp
                  slli         s0, a7, 19
                  divu         a4, s10, s0
                  divu         s2, t2, a0
                  srl          s10, a0, t2
                  divu         a0, t1, t0
                  sub          t6, a7, s0
                  c.and        s0, a5
                  c.srli       a0, 27
                  c.srli       a2, 4
                  c.xor        s1, a4
                  srli         a4, a7, 9
                  auipc        t4, 63392
                  c.addi       s3, 30
                  mulhsu       tp, s3, a3
                  c.srli       s0, 21
                  or           s4, a5, t6
                  slti         zero, t6, -637
                  srli         t2, a2, 28
                  mulhu        s4, a3, t5
                  c.addi       s8, 25
                  c.and        a3, a0
                  c.add        t1, s3
                  remu         s5, s5, s7
                  and          t1, a5, s9
                  add          a7, s8, t0
                  mulh         s1, s9, t5
                  mulh         a4, t6, t1
                  ori          ra, s9, -829
                  auipc        s2, 79923
                  divu         t2, a2, a1
                  sll          a7, t0, t0
                  slli         s5, sp, 14
                  c.nop
                  divu         gp, t6, s11
                  c.mv         ra, t0
                  lui          s9, 214247
                  add          s5, s0, t6
                  c.srai       a3, 10
                  or           t0, s0, a0
                  sltu         t1, s3, a4
                  c.slli       a2, 1
                  or           a5, t5, t4
                  c.srai       a5, 30
                  mulhsu       t4, t5, s11
                  c.nop
                  mulhsu       a5, a0, a3
                  remu         s11, s2, s5
                  mulhu        gp, zero, t6
                  ori          a5, t6, -1995
                  mulhu        s10, s11, a4
                  srli         s8, s8, 1
                  c.or         a3, s0
                  remu         t4, gp, t2
                  c.srli       s1, 8
                  nop
                  srli         a0, t5, 1
                  c.addi       a0, 24
                  xor          a4, a4, a2
                  slli         s10, a3, 11
                  lui          s3, 521478
                  c.and        a2, s0
                  c.mv         a3, t1
                  c.li         s7, 4
                  xori         a3, s3, 1967
                  c.or         a5, a0
                  sltu         s10, s1, a4
                  add          a2, t4, t0
                  remu         t1, a1, tp
                  ori          t3, gp, 1230
                  srl          s7, t1, s7
                  c.and        a1, s0
                  divu         s9, t1, a4
                  c.sub        a0, a5
                  add          s9, s1, t0
                  slli         gp, a3, 31
                  c.srli       a0, 25
                  c.li         t2, 6
                  c.addi       a3, 30
                  c.mv         s8, s9
                  add          s2, s0, s4
                  ori          ra, zero, -1082
                  c.nop
                  srli         a5, t3, 13
                  ori          t2, tp, 1459
                  mul          s9, zero, tp
                  divu         a7, zero, s6
                  addi         a4, s9, -1631
                  c.slli       a1, 15
                  c.or         a2, a1
                  mulhsu       s2, t3, a5
                  c.srli       a2, 25
                  nop
                  remu         s7, sp, t2
                  div          a7, s11, s9
                  sltu         t6, a0, a2
                  xor          a5, t4, s6
                  add          t1, s9, t2
                  mul          s7, s11, s6
                  rem          ra, gp, s4
                  or           s4, a0, a0
                  c.sub        s0, s0
                  slli         t2, s10, 22
                  divu         gp, t6, t1
                  c.sub        a3, s1
                  lui          a2, 152756
                  mulhsu       a0, a3, a3
                  c.xor        a0, a4
                  c.slli       s2, 2
                  nop
                  c.nop
                  xor          zero, a0, t6
                  c.mv         a3, a4
                  ori          t5, t0, -1081
                  sll          t4, a6, a0
                  srl          a4, s0, a0
                  div          a0, s9, s8
                  addi         a3, a1, 1306
                  div          a2, s1, a6
                  sltu         a1, s5, sp
                  nop
                  rem          s10, t2, sp
                  srai         s10, gp, 9
                  nop
                  xor          a3, t2, gp
                  auipc        s11, 1015874
                  mulhsu       a2, a0, s4
                  div          s5, a6, s7
                  remu         gp, t0, a2
                  c.srai       s1, 22
                  nop
                  addi         zero, s6, 828
                  addi         t3, t2, -2021
                  sll          s7, sp, s8
                  srl          s0, t5, a1
                  sub          t6, s9, tp
                  mul          a2, tp, a2
                  lui          s9, 168422
                  c.xor        s1, s1
                  sltiu        s11, s9, -1102
                  c.slli       t3, 17
                  sra          s7, a3, a5
                  c.slli       a0, 16
                  mulhsu       s7, t0, s6
                  c.slli       ra, 10
                  mulhsu       t1, s0, s1
                  mulhu        s11, a1, s10
                  xori         t2, s2, -1064
                  sltu         t0, s3, a3
                  addi         a1, s4, -1436
                  c.xor        a1, a2
                  mulhsu       a0, sp, s5
                  sltu         a2, ra, s0
                  xor          s4, s2, ra
                  c.slli       ra, 16
                  remu         a7, s10, s10
                  srl          t0, s10, s6
                  c.lui        s7, 11
                  or           a0, t4, t0
                  add          zero, s4, t6
                  andi         s7, s11, -1860
                  mulhsu       s2, s3, t4
                  sltiu        t6, t4, -1496
                  add          tp, s1, a0
                  sll          a2, t6, s11
                  nop
                  c.addi       t2, -1
                  c.addi       s10, -1
                  srai         s0, a2, 29
                  sltu         t0, t6, t5
                  auipc        a5, 557582
                  c.xor        s0, a5
                  c.or         a4, s0
                  auipc        tp, 733921
                  c.addi       a3, -1
                  c.srai       a2, 24
                  c.or         a4, s0
                  div          a7, t0, gp
                  remu         s4, s6, gp
                  lui          gp, 620193
                  c.and        a5, s0
                  mulhsu       t0, a2, s6
                  ori          t5, s5, 1565
                  remu         s5, a6, s3
                  c.slli       t5, 10
                  div          s8, a0, s6
                  add          zero, s10, t6
                  c.sub        a2, a5
                  c.li         s2, 15
                  nop
                  srli         ra, sp, 25
                  srl          s5, s6, s7
                  c.srli       s1, 11
                  slt          s3, tp, s7
                  mulhu        s8, a1, gp
                  sub          t2, s8, s9
                  c.sub        a2, s1
                  sll          gp, s10, tp
                  slli         t4, s10, 2
                  auipc        s3, 338108
                  c.lui        gp, 23
                  auipc        s2, 528656
                  mulhsu       s5, t5, a4
                  c.andi       a4, -1
                  remu         a0, s6, s9
                  xori         a5, s0, -1766
                  rem          a4, t1, a4
                  c.mv         a0, a6
                  div          a2, s6, s7
                  sll          s4, s9, s6
                  auipc        a1, 801346
                  c.lui        s2, 31
                  c.andi       s0, -1
                  addi         s1, s6, -620
                  sub          t0, a6, sp
                  c.xor        a4, a2
                  addi         s10, a4, -21
                  srli         gp, gp, 25
                  andi         s2, s1, -1875
                  srai         s10, s2, 20
                  srli         s10, a2, 26
                  sltu         t2, s6, s0
                  and          a2, t6, a5
                  andi         tp, a5, -245
                  c.add        a2, t5
                  or           zero, a2, s8
                  srl          ra, t2, zero
                  add          s11, s7, s2
                  mul          tp, s9, s5
                  c.addi       tp, -1
                  slt          a4, a7, sp
                  slt          s1, s4, s0
                  srl          s11, s7, a7
                  slti         a5, sp, 360
                  c.xor        a4, a4
                  c.addi       a4, 12
                  c.and        a3, a3
                  xor          t1, gp, t2
                  slti         s4, t3, 1600
                  slt          gp, zero, t1
                  mulh         t1, a3, s0
                  c.mv         t4, t3
                  rem          a3, s2, s10
                  xor          t5, s8, ra
                  rem          s11, s6, a2
                  c.slli       s3, 24
                  srl          zero, a7, s11
                  sra          t1, s2, s4
                  andi         a7, s6, 436
                  c.li         s11, 28
                  remu         tp, a5, a3
                  xor          a3, a2, a0
                  andi         a0, t6, 1684
                  c.mv         a5, a6
                  srai         gp, t3, 2
                  lui          a0, 633338
                  c.sub        a4, a0
                  slt          t5, t1, a2
                  c.slli       s2, 30
                  c.addi       s8, 4
                  c.li         t5, 18
                  c.srli       s0, 27
                  sltiu        s1, tp, 292
                  c.xor        s0, a4
                  c.sub        s0, a5
                  xori         a4, t4, -172
                  xori         t4, s3, 1001
                  nop
                  xor          a0, s2, s4
                  srl          s7, t0, s8
                  or           a0, s5, s2
                  remu         s9, a7, t1
                  c.and        a0, a2
                  c.slli       s7, 30
                  xori         zero, s11, 175
                  c.sub        a4, s0
                  and          a2, gp, t3
                  andi         a7, a6, -2022
                  srli         s2, a6, 17
                  slti         s10, s8, -48
                  c.nop
                  srl          a3, t1, t4
                  c.or         s1, a1
                  divu         zero, a4, a3
                  srli         t6, a7, 5
                  mul          s4, ra, s1
                  mulhu        gp, a7, s1
                  add          t3, zero, t6
                  mulhu        s8, a6, s5
                  rem          t1, t0, s11
                  c.andi       a3, 13
                  div          s9, a5, s6
                  mul          s10, s11, s5
                  lui          s10, 252671
                  c.mv         a5, s6
                  c.addi       a4, 22
                  c.lui        tp, 5
                  rem          s0, a5, s3
                  srl          t1, a7, t4
                  andi         t3, a5, 48
                  c.lui        s9, 5
                  auipc        t2, 532526
                  or           t3, s3, s2
                  srai         s2, zero, 1
                  ori          a3, s1, -635
                  c.li         s10, -1
                  div          t6, t4, t1
                  c.sub        a0, a4
                  slti         s4, s11, 1161
                  remu         t4, s3, s9
                  c.nop
                  xori         t4, zero, 1801
                  c.xor        a5, s0
                  rem          a2, t1, s5
                  add          s3, s9, a1
                  nop
                  nop
                  add          t1, s2, s4
                  add          t5, a5, s1
                  auipc        t0, 595576
                  auipc        t4, 46086
                  slti         ra, s10, -757
                  sub          a7, t4, t3
                  addi         a3, s4, 1016
                  c.srli       a3, 19
                  mulhsu       s9, a4, a2
                  sub          s5, s2, a0
                  srai         a7, s7, 12
                  srai         s1, s0, 4
                  c.slli       s0, 17
                  rem          t4, a4, s3
                  mul          a4, a3, s2
                  mulhsu       s7, gp, s6
                  c.srli       a4, 8
                  c.add        a7, s5
                  c.and        a0, s1
                  c.mv         s5, s1
                  mul          s7, t2, s1
                  c.nop
                  lui          a1, 51754
                  add          a1, s7, t4
                  xori         t2, s4, 551
                  srli         s11, s6, 0
                  xor          s9, t3, a3
                  c.sub        a1, s1
                  andi         s11, a3, -1282
                  c.add        t2, t1
                  c.nop
                  lui          s7, 414611
                  mulhu        s9, s7, a6
                  xori         a1, t4, 1147
                  addi         a4, s9, 723
                  c.lui        t1, 26
                  c.slli       s4, 14
                  xori         t3, s1, -696
                  lui          s10, 518534
                  c.lui        t3, 30
                  sltu         s3, a6, s0
                  ori          s2, a1, 917
                  addi         t4, t5, 267
                  srl          a3, s6, s1
                  auipc        t2, 629543
                  slt          s11, s10, s4
                  c.or         a3, s0
                  c.andi       a0, 3
                  mulhu        a5, t3, zero
                  xori         a0, s3, 1107
                  c.sub        s1, a3
                  c.add        a5, tp
                  slt          a2, s11, s4
                  addi         s9, s4, -355
                  nop
                  divu         s4, s10, ra
                  c.and        a5, a2
                  sra          s4, s3, gp
                  slt          t2, t1, tp
                  nop
                  c.addi       tp, -1
                  c.srli       s1, 6
                  c.addi       t5, 25
                  rem          s10, zero, s3
                  c.lui        s3, 8
                  mul          s3, t5, sp
                  sltu         t3, t3, s4
                  andi         s1, s9, -817
                  divu         t1, s1, t4
                  auipc        a0, 607946
                  c.sub        a3, a0
                  mulhu        gp, a6, t0
                  remu         t3, s6, a7
                  sltiu        s11, a6, -1534
                  remu         a5, s11, s8
                  slli         t6, s1, 7
                  c.addi       s5, -1
                  rem          s10, s3, s2
                  c.nop
                  slt          s10, t6, a3
                  nop
                  srl          s7, a2, s0
                  div          t1, a7, zero
                  sll          s4, s9, t5
                  c.srai       a1, 31
                  ori          t1, a3, 1158
                  mulh         tp, s6, s7
                  rem          tp, s4, s6
                  c.add        s8, s3
                  c.slli       a5, 31
                  divu         s9, ra, zero
                  sra          s9, s10, zero
                  slli         ra, a4, 4
                  remu         a1, gp, t6
                  and          zero, s5, a2
                  xor          s9, s10, a6
                  sub          t6, a1, a2
                  c.and        a1, s1
                  c.and        a0, a5
                  slti         tp, t4, 1071
                  mulhsu       tp, t0, s3
                  rem          t1, a2, t5
                  c.add        ra, a0
                  c.li         gp, -1
                  c.slli       s3, 15
                  divu         s7, t5, zero
                  c.lui        s1, 3
                  srl          a3, a2, tp
                  sltiu        zero, t1, 375
                  srli         s9, s6, 21
                  sub          s5, s9, t3
                  or           s11, a4, ra
                  andi         s2, a5, -159
                  c.add        t6, a5
                  c.srai       a1, 21
                  slli         s8, sp, 27
                  c.sub        a4, a2
                  divu         s4, t5, s2
                  srli         s7, a5, 31
                  c.or         a2, a0
                  sra          tp, s11, gp
                  srl          a3, t6, zero
                  slt          s8, t5, a6
                  rem          s4, ra, s10
                  nop
                  slt          zero, t6, s4
                  mulh         ra, gp, a1
                  add          s2, t6, t5
                  nop
                  slli         s10, s6, 19
                  c.mv         s7, t3
                  mul          ra, a1, ra
                  c.add        gp, s8
                  sltiu        s7, s6, 1487
                  c.nop
                  mulhu        a0, s9, a7
                  divu         a0, a3, a7
                  sub          a7, s4, s2
                  and          s5, s2, a0
                  c.srli       a0, 30
                  c.slli       t2, 30
                  mulhsu       t1, a1, t3
                  and          a0, t1, t5
                  srl          s1, s4, a5
                  slti         t3, t3, -790
                  addi         tp, sp, 1858
                  remu         t2, t3, t0
                  mulhsu       t3, s7, t2
                  lui          s8, 463810
                  ori          s9, sp, 1928
                  sll          t0, s5, gp
                  sub          s3, t1, t0
                  mulhu        t3, ra, t4
                  xor          s2, s4, a7
                  c.and        a0, a1
                  nop
                  or           a1, a5, tp
                  c.add        t0, a1
                  slt          a7, s2, zero
                  c.nop
                  c.and        s0, a0
                  srl          a3, gp, t5
                  c.or         a0, a2
                  auipc        s8, 311626
                  addi         zero, s9, -17
                  c.and        a5, a4
                  c.sub        a5, a5
                  addi         a0, s11, -975
                  slt          s2, t1, t4
                  remu         s7, t4, gp
                  srai         t2, sp, 29
                  mulhu        a4, tp, s3
                  slli         a1, s10, 16
                  mulhsu       s8, s7, ra
                  slt          s5, zero, a2
                  addi         s10, ra, 810
                  slt          a4, a6, s3
                  c.li         s11, -1
                  c.and        a5, a2
                  mul          a7, a5, t0
                  xor          a0, a7, a4
                  lui          s11, 128298
                  addi         t4, t5, -729
                  xori         t4, s2, 1362
                  slli         t3, s1, 9
                  srli         t5, t3, 21
                  mul          s11, s1, s4
                  rem          s10, a1, a5
                  rem          s5, s2, s3
                  sra          s3, a4, s3
                  auipc        a7, 470203
                  lui          s10, 477280
                  sltu         a3, s1, t4
                  lui          t5, 578273
                  c.srli       a5, 3
                  sll          s8, t6, ra
                  c.li         a3, 10
                  c.li         s5, -1
                  auipc        a5, 353997
                  c.add        t1, s8
                  c.addi       t6, -1
                  c.addi       s1, 19
                  c.mv         s8, s2
                  c.srai       s0, 22
                  srai         s7, s9, 1
                  div          zero, t3, zero
                  sltiu        t0, s0, -137
                  sll          t5, s3, t4
                  lui          t5, 1008989
                  c.nop
                  nop
                  c.or         s1, a3
                  ori          t2, s11, -756
                  c.or         a5, a5
                  remu         a4, t5, a1
                  rem          s2, s3, t3
                  sub          a2, s6, ra
                  xor          t0, s3, s10
                  rem          a1, t0, t4
                  andi         s11, t2, -886
                  c.andi       a2, 13
                  c.addi       t1, -1
                  xori         t5, a5, -1836
                  sra          s3, t1, t4
                  slti         s4, a1, 1666
                  c.andi       a0, 16
                  c.slli       s3, 16
                  sra          t3, t3, s8
                  sra          s7, a7, s3
                  nop
                  sll          s1, a6, t1
                  mulhu        zero, s2, zero
                  c.sub        a4, a2
                  c.add        t1, t2
                  c.add        t3, s4
                  c.xor        s0, a3
                  srl          gp, tp, ra
                  auipc        s7, 572123
                  xor          a3, a1, s11
                  sll          a0, gp, sp
                  srli         s7, t5, 12
                  sra          t5, s5, ra
                  sltiu        tp, s4, -220
                  slli         a3, a0, 4
                  and          t0, a6, t0
                  c.mv         s10, a5
                  slli         s8, a1, 18
                  mulhu        a4, t6, s2
                  c.lui        a2, 23
                  sll          s7, ra, s11
                  sll          gp, a0, t4
                  addi         zero, a5, 1480
                  srai         s0, s9, 30
                  andi         s7, t1, 1008
                  c.add        t4, s10
                  xor          s11, t4, s10
                  addi         s3, a3, 1133
                  div          s11, s8, sp
                  xori         s1, s1, 1627
                  andi         s4, t1, -1375
                  slli         s11, zero, 5
                  and          s5, t0, ra
                  remu         s8, s7, sp
                  mul          a5, a2, s5
                  c.andi       a1, 2
                  sltiu        tp, s6, -361
                  c.addi       s2, -1
                  sra          t2, a7, a2
                  slti         s10, ra, 1024
                  and          a2, s4, s8
                  auipc        t3, 595510
                  sltiu        t3, zero, -1066
                  rem          t2, tp, a1
                  srli         tp, t2, 9
                  auipc        gp, 689582
                  div          a5, a4, t4
                  auipc        s2, 925119
                  c.addi       s3, -1
                  c.li         s2, 14
                  sra          s2, a5, t6
                  mulhu        t0, gp, s4
                  c.srli       a1, 31
                  c.nop
                  c.add        a0, t3
                  c.add        ra, gp
                  remu         a1, s5, a6
                  nop
                  sra          t3, s3, s11
                  div          s11, ra, a1
                  xori         t2, a1, 651
                  c.and        a4, a0
                  ori          tp, a4, -17
                  c.add        s7, t0
                  remu         t1, s1, t4
                  c.add        gp, t5
                  sll          s11, t4, a0
                  rem          a2, s9, t5
                  lui          t3, 316315
                  slt          t0, s11, t4
                  ori          a7, s9, 1629
                  sll          s7, a7, sp
                  c.sub        s1, a3
                  c.or         a0, s1
                  remu         s7, a6, a4
                  c.xor        a4, s1
                  srli         s4, t1, 13
                  slti         tp, a0, 655
                  c.slli       t2, 4
                  lui          t2, 440231
                  srli         t5, tp, 2
                  divu         s9, s8, s11
                  mul          a5, s9, s0
                  or           s2, a3, t1
                  slli         s1, a5, 0
                  c.li         t2, -1
                  c.and        a5, a3
                  c.andi       a2, -1
                  auipc        a3, 5659
                  c.li         tp, -1
                  mulhsu       a0, s0, s3
                  srl          t5, a2, zero
                  andi         tp, t6, 516
                  c.add        a7, s9
                  c.xor        a4, s0
                  mulh         s2, s8, sp
                  c.and        a1, s1
                  auipc        s8, 1040602
                  sltu         s9, zero, sp
                  c.li         a4, 27
                  c.srli       a4, 4
                  c.li         s9, 1
                  andi         a2, t4, 805
                  or           t0, a0, s10
                  ori          s3, s2, -159
                  srl          a2, s4, t2
                  c.li         a3, 13
                  c.add        s10, t1
                  slli         tp, t6, 23
                  xori         s11, a4, -1772
                  c.lui        a2, 27
                  c.slli       s4, 23
                  auipc        a2, 373702
                  mulhsu       s4, sp, t6
                  rem          a2, sp, a1
                  c.lui        s2, 13
                  addi         s4, s2, -1064
                  srai         s7, t5, 2
                  sra          s0, t5, a2
                  add          s7, tp, a7
                  remu         a4, s3, s3
                  c.addi       a7, -1
                  sra          s3, t6, a5
                  sll          ra, t5, a2
                  srl          t1, s2, s1
                  srl          s4, a0, t1
                  c.add        s10, tp
                  c.mv         a5, s8
                  or           tp, s9, s11
                  srai         a0, a2, 12
                  sub          s7, a4, s8
                  mul          s10, s10, t4
                  sll          t3, ra, s6
                  c.or         a4, s1
                  c.mv         s7, tp
                  c.xor        a1, a5
                  srl          s3, s8, s4
                  c.srli       a5, 14
                  div          s10, zero, a3
                  srai         t2, zero, 21
                  c.srai       a3, 8
                  div          a3, a0, a4
                  nop
                  c.lui        a7, 23
                  and          a1, s9, s9
                  nop
                  sll          a5, s10, s3
                  sra          a3, tp, sp
                  c.lui        s5, 12
                  auipc        s0, 656767
                  and          a0, a7, s9
                  slt          t6, a5, s11
                  srai         s0, s3, 9
                  c.nop
                  c.andi       a5, -1
                  mul          gp, a6, t4
                  c.andi       a1, -1
                  or           a7, t2, s0
                  srl          ra, a0, a6
                  c.or         a5, a3
                  c.xor        a1, a2
                  addi         s5, a7, 568
                  auipc        zero, 365675
                  c.li         a5, -1
                  lui          s0, 652762
                  mulhsu       t6, t2, s9
                  div          a5, s0, t1
                  srli         s7, s6, 23
                  or           a7, t0, a5
                  nop
                  c.or         a2, s0
                  c.slli       s11, 21
                  divu         s10, s8, t6
                  div          s9, t2, s7
                  c.add        t2, s5
                  mulhu        a4, tp, gp
                  mul          s9, s1, s6
                  sra          s2, t6, a0
                  sll          a7, zero, s5
                  mulhu        t3, s9, a4
                  xor          t0, t6, s4
                  c.sub        a0, a3
                  slli         a7, a6, 16
                  c.mv         a3, ra
                  c.lui        s2, 3
                  slt          s3, t5, s1
                  c.srai       a4, 6
                  nop
                  and          t4, a6, a7
                  c.mv         ra, s10
                  c.or         a2, a5
                  c.srai       a3, 29
                  c.nop
                  slli         s0, a5, 3
                  andi         t4, ra, -1055
                  c.andi       s1, -1
                  mulh         a1, s10, sp
                  slt          s9, s1, t4
                  slli         s11, s8, 31
                  and          a5, t1, t2
                  xor          s10, s4, a4
                  c.slli       s2, 12
                  c.mv         t1, a5
                  c.sub        a0, a0
                  srai         t3, a6, 10
                  c.lui        s2, 11
                  c.or         s0, a2
                  remu         a4, t6, s10
                  divu         a2, tp, a6
                  c.addi       t1, -1
                  mul          zero, t3, s6
                  c.slli       a5, 28
                  sltiu        s7, s3, -1662
                  slti         s11, s7, -62
                  c.add        a3, tp
                  srl          s11, s0, a7
                  rem          s4, s5, a4
                  addi         t5, t1, -475
                  sll          a1, a6, s2
                  ori          t0, t6, -428
                  sra          t1, t1, t4
                  nop
                  sub          s3, s8, zero
                  sltiu        s4, t6, -322
                  c.srli       a5, 9
                  mulh         a3, t2, s0
                  mulhsu       t6, a4, t3
                  sltiu        t3, t1, 883
                  addi         a2, s11, 62
                  sub          s7, ra, a4
                  c.srli       a3, 9
                  rem          a7, t5, a0
                  c.srli       s0, 30
                  c.li         tp, -1
                  andi         s10, gp, 592
                  c.srli       a1, 31
                  srai         t1, a2, 31
                  c.addi       a1, -1
                  c.xor        a5, a5
                  c.addi       a3, 11
                  c.nop
                  sra          t4, a6, s4
                  c.slli       s0, 22
                  c.and        a0, a1
                  or           tp, s10, t2
                  remu         s5, a3, a7
                  sltiu        s10, t5, 1546
                  slt          t1, t0, s0
                  sra          s10, a6, t6
                  c.srai       a1, 1
                  mulhu        t6, a0, s7
                  slti         a0, zero, -438
                  c.mv         t0, gp
                  and          s4, t5, s9
                  srli         t3, s0, 6
                  slt          s1, t6, t1
                  c.mv         s7, a0
                  sltu         s8, a4, s5
                  or           tp, s2, gp
                  c.nop
                  rem          gp, s6, ra
                  rem          a7, s10, s5
                  sub          s7, a3, s6
                  c.andi       s1, 17
                  c.and        a4, a0
                  c.lui        t6, 19
                  c.nop
                  srli         t2, s11, 31
                  auipc        t1, 209936
                  remu         a0, t1, a3
                  slt          s9, a6, tp
                  c.li         a3, 11
                  sltiu        s7, a1, -182
                  c.li         s3, 30
                  c.lui        s8, 5
                  remu         s4, s7, ra
                  slt          s11, s7, gp
                  c.mv         tp, s5
                  c.li         a1, -1
                  c.li         gp, -1
                  add          s3, t1, s4
                  c.and        a5, a1
                  c.add        tp, s6
                  c.nop
                  c.mv         a0, s6
                  c.lui        t0, 28
                  c.srli       s0, 27
                  mul          s11, s0, sp
                  or           a0, s7, sp
                  c.srli       a1, 2
                  c.lui        s9, 3
                  c.addi       s11, 5
                  ori          a3, s10, 205
                  c.mv         a7, a1
                  xor          t4, t6, s7
                  c.li         s8, 13
                  slli         s7, s4, 14
                  c.srli       a5, 9
                  c.sub        a5, a0
                  c.mv         s3, s3
                  sltiu        t4, s3, -1803
                  xori         t2, a7, 1060
                  mul          s8, s6, s4
                  slti         s9, s3, 241
                  xori         s11, s10, -1692
                  andi         a7, t4, -354
                  nop
                  rem          s8, s2, t3
                  c.add        s1, tp
                  sub          a1, t4, t0
                  c.slli       s10, 6
                  sub          t1, s1, t3
                  c.addi       s0, -1
                  add          a4, tp, t6
                  srai         t1, a2, 21
                  c.slli       a0, 5
                  or           t5, t4, a2
                  c.mv         s4, a7
                  srli         s5, a7, 22
                  c.slli       s0, 5
                  addi         s11, t2, -1005
                  c.srai       s1, 18
                  andi         s2, t5, 1713
                  sltu         a5, a4, s6
                  xori         s5, t2, 1511
                  ori          a4, tp, -750
                  c.add        tp, s0
                  c.sub        a2, s0
                  c.xor        a3, s0
                  mulhu        t2, t4, t5
                  mulhsu       s10, a4, t4
                  c.and        a5, s1
                  sll          t4, sp, s3
                  mulh         a1, gp, a2
                  srli         s7, s11, 27
                  mulhu        gp, ra, s4
                  c.slli       a4, 14
                  mulhsu       tp, s1, a5
                  addi         a1, t4, -1032
                  div          s3, s9, a3
                  lui          t3, 713299
                  rem          s3, t5, s11
                  c.srli       a3, 27
                  slti         s3, s6, 1541
                  sra          t4, s9, s9
                  slli         t2, a4, 6
                  sra          t4, t3, a0
                  sltiu        tp, a2, 1501
                  mulhu        a2, a2, a3
                  add          t0, t4, s0
                  c.or         a3, a4
                  mul          s4, s9, s7
                  sll          t5, a2, t4
                  c.addi       a1, 6
                  ori          s11, s6, -1466
                  c.srli       a2, 15
                  divu         t2, t3, a2
                  andi         a5, s11, 1059
                  mul          a0, sp, a5
                  slli         a1, s2, 1
                  or           t3, t1, s9
                  slt          s8, s1, s2
                  or           t5, t6, a0
                  c.xor        a3, s0
                  mul          s1, s3, a4
                  sltiu        t2, s1, 1043
                  c.slli       s0, 30
                  c.add        gp, t4
                  srl          s10, s11, ra
                  divu         s1, s3, t1
                  remu         a3, a7, s4
                  mulhsu       t2, tp, ra
                  mulh         a7, t0, t4
                  xor          s8, t2, t6
                  c.xor        a0, a1
                  or           t4, s8, a7
                  c.addi       s4, -1
                  srl          t4, a1, t6
                  and          s2, s0, t2
                  c.slli       gp, 12
                  and          s1, s9, t4
                  sra          t6, t6, s2
                  c.xor        a0, a1
                  c.slli       s1, 23
                  srai         a2, zero, 1
                  or           s2, a6, s4
                  lui          zero, 159410
                  sll          s5, t1, zero
                  slli         s5, a6, 23
                  srli         s9, s9, 11
                  c.srli       a5, 1
                  mulhsu       s1, t1, t2
                  slli         a1, s9, 23
                  or           t2, s10, s2
                  or           s7, t5, a6
                  c.slli       s0, 31
                  xor          s2, a6, s0
                  sltiu        s5, s2, -159
                  c.sub        a1, s0
                  c.li         a7, 25
                  sltiu        s7, s2, 1436
                  c.xor        s1, s1
                  c.xor        a2, a1
                  nop
                  c.li         t3, 22
                  add          s2, a4, s1
                  sra          s9, t6, s5
                  c.slli       a5, 2
                  c.andi       s1, 24
                  xor          a7, a7, s0
                  c.srai       s1, 31
                  rem          s7, gp, s7
                  c.or         a5, a3
                  slti         s7, t2, 1172
                  nop
                  c.nop
                  sltiu        a7, sp, -1710
                  andi         s8, t1, 1757
                  mulhu        tp, s7, a1
                  c.li         t1, 0
                  c.xor        s0, a1
                  nop
                  slti         a2, ra, -1946
                  c.addi       a5, 21
                  c.addi       t4, 12
                  sub          t2, ra, s6
                  slt          s1, a0, s4
                  c.slli       a0, 24
                  andi         s7, a0, -1024
                  mulhsu       t6, a6, t5
                  c.srli       a1, 22
                  nop
                  c.xor        s0, a0
                  remu         t1, s10, s0
                  c.andi       s0, -1
                  c.addi       s10, 30
                  nop
                  c.add        tp, t1
                  add          t5, s0, s11
                  srl          s9, a6, s8
                  c.or         a2, a0
                  auipc        tp, 252616
                  nop
                  sltiu        zero, gp, -668
                  xori         a5, s6, -415
                  and          s7, t4, a2
                  c.nop
                  c.and        a4, a2
                  add          a7, a2, a5
                  c.srai       s1, 15
                  xor          s7, ra, a3
                  auipc        s0, 414768
                  sll          s2, a0, sp
                  remu         s0, s4, gp
                  ori          gp, tp, 1469
                  c.sub        a1, a0
                  slli         s1, s0, 3
                  c.srli       a2, 11
                  addi         s2, ra, 212
                  c.lui        gp, 31
                  c.lui        s2, 1
                  c.srli       a0, 5
                  c.sub        a3, a5
                  srai         s7, t2, 25
                  c.nop
                  c.sub        a5, s1
                  slti         t6, s10, 37
                  div          s0, t2, t4
                  c.slli       a4, 29
                  rem          a3, s6, s1
                  xor          t3, a3, a1
                  c.mv         a1, s2
                  slt          a4, s4, t4
                  c.andi       a1, -1
                  addi         gp, t5, 779
                  nop
                  c.or         a5, a1
                  c.andi       a1, -1
                  mulh         t4, s0, s9
                  c.sub        a5, a3
                  c.and        a1, a5
                  xor          a0, a7, s0
                  c.li         a0, -1
                  sll          zero, gp, s10
                  rem          t0, a0, s9
                  mulhsu       s4, t0, s8
                  c.and        a1, a1
                  sltu         a2, a3, s1
                  sll          s0, t4, a2
                  mul          s8, t6, a6
                  andi         t1, s0, -150
                  xor          s3, t5, s7
                  add          s2, t3, s4
                  c.and        a2, a5
                  xor          s10, s10, s6
                  addi         a4, t2, 1426
                  c.add        s7, a5
                  add          t3, s5, s1
                  sltiu        tp, a7, -1706
                  c.srli       a4, 25
                  c.addi       t6, 29
                  sub          s5, zero, tp
                  c.xor        a2, a2
                  c.addi       a0, 23
                  c.mv         t4, s11
                  c.srai       a4, 31
                  and          s1, t0, a5
                  div          gp, s0, sp
                  rem          s0, s8, s3
                  or           s7, a1, a4
                  add          s9, s7, s0
                  slti         a2, a2, -392
                  xori         s10, s0, 470
                  srli         zero, t3, 7
                  mulhsu       a5, a1, t5
                  addi         s4, ra, -1817
                  c.sub        s0, a2
                  c.or         a1, a4
                  c.lui        s7, 16
                  ori          s2, a4, -258
                  mulhu        s3, a5, s0
                  c.slli       s10, 27
                  c.srli       a4, 2
                  slt          s10, s10, s5
                  c.xor        a5, a3
                  and          s2, a6, t0
                  lui          a5, 102054
                  or           ra, a2, s1
                  c.slli       s2, 26
                  c.srai       a0, 26
                  c.lui        s8, 7
                  c.srli       a5, 23
                  mulhu        s7, s0, s3
                  mulhu        t6, s11, zero
                  rem          t3, tp, s1
                  div          s7, a2, a5
                  addi         t6, t4, -1592
                  mul          t6, s6, zero
                  c.srai       s1, 28
                  srli         t3, t2, 8
                  mulhsu       s3, t0, s7
                  c.slli       t5, 7
                  auipc        t2, 662870
                  sltiu        s4, a2, -1847
                  divu         s5, a0, s6
                  srai         a2, a2, 27
                  c.nop
                  srl          a3, s5, s1
                  sll          s1, a3, a7
                  c.slli       s3, 12
                  c.sub        a2, a0
                  div          t6, t6, sp
                  c.sub        s1, s1
                  c.or         a4, a1
                  srl          t6, s10, s1
                  c.addi       s9, 4
                  c.nop
                  sra          s7, s6, s3
                  c.li         s3, 27
                  divu         t2, s1, s5
                  c.sub        a2, a3
                  mulhsu       s11, a0, s0
                  lui          t3, 700041
                  c.and        a5, a0
                  c.srli       a3, 31
                  c.srli       a0, 29
                  c.slli       s7, 24
                  mulhsu       a1, s5, s6
                  sll          t0, s1, t0
                  srli         a5, a5, 24
                  and          a5, s10, a6
                  xor          s8, s2, t5
                  srl          t3, s1, s4
                  sltiu        s10, s6, 1991
                  slt          a5, a6, s10
                  rem          a2, s1, s5
                  c.nop
                  srli         s8, s3, 19
                  addi         gp, a2, 19
                  srli         a0, a7, 11
                  mulh         t3, s10, a1
                  rem          a1, s10, s5
                  auipc        ra, 436151
                  c.or         s0, a4
                  c.lui        s5, 3
                  addi         gp, s7, -354
                  c.nop
                  c.nop
                  c.li         a0, 3
                  c.andi       a3, 4
                  andi         s9, a3, -1023
                  divu         s2, gp, s4
                  srli         t3, zero, 9
                  sltiu        a5, sp, 953
                  srai         s4, t1, 10
                  c.or         a0, a4
                  divu         s8, s6, s7
                  c.lui        s2, 11
                  c.lui        ra, 6
                  slt          a0, s8, s2
                  xor          a7, a4, a7
                  sra          s5, t6, t1
                  c.mv         ra, t4
                  andi         s11, a3, -1719
                  sltiu        a4, s5, -364
                  c.srli       s0, 23
                  xori         s11, s2, -1172
                  rem          t3, zero, t5
                  sub          t5, a7, s8
                  slli         a1, s10, 4
                  remu         a0, t0, s4
                  c.lui        t3, 18
                  and          a4, zero, s6
                  sra          s4, a1, s10
                  xor          s11, s5, s1
                  slti         s11, gp, -429
                  divu         s5, s10, s0
                  c.add        s0, tp
                  srl          tp, t3, s4
                  c.andi       a4, -1
                  or           t6, a5, a1
                  remu         t5, t3, s2
                  rem          t1, t0, gp
                  c.srli       a3, 3
                  divu         t1, a3, s7
                  slti         s4, s11, 711
                  rem          a1, s11, s9
                  c.slli       t0, 13
                  c.mv         a5, a7
                  and          a7, t4, s2
                  srli         t6, a4, 14
                  c.lui        t5, 27
                  nop
                  sub          t5, a2, t1
                  divu         s8, s4, s6
                  and          s1, a5, a7
                  mulh         gp, a3, zero
                  c.and        a5, a1
                  c.mv         s5, s4
                  srl          s1, s4, s0
                  c.lui        t4, 26
                  mulhu        t1, t3, a3
                  and          s2, gp, t1
                  xori         s5, s8, -1682
                  c.nop
                  mulhu        a4, sp, a6
                  remu         a5, t4, s10
                  sra          t2, gp, a6
                  xori         a3, a5, 550
                  c.mv         t5, s0
                  c.add        gp, s2
                  mulh         tp, tp, ra
                  remu         t5, t6, s3
                  c.andi       a0, -1
                  or           s2, t2, a7
                  c.xor        a0, a4
                  mulh         zero, t5, t3
                  mul          s11, s2, s10
                  remu         s1, a7, s9
                  andi         a7, s5, -1403
                  mul          s8, t1, a0
                  sltu         s9, a4, a6
                  and          a2, a7, t0
                  c.andi       a2, 16
                  remu         t0, t6, a5
                  c.mv         s1, t0
                  c.or         s0, a5
                  sra          s2, t0, gp
                  c.srai       a4, 15
                  add          a4, t2, sp
                  xori         s4, s3, -1904
                  auipc        a1, 556585
                  addi         s8, s9, 1423
                  xori         a5, a1, -1632
                  srl          a4, s2, s5
                  mulh         t4, a1, s1
                  c.lui        s2, 24
                  sll          a3, t3, zero
                  slt          a1, a3, s0
                  srai         a4, s7, 29
                  mul          s5, s6, s9
                  sll          a0, a5, s6
                  sll          t3, s8, t2
                  c.srli       s0, 24
                  srai         a5, s5, 0
                  sub          t6, s11, t5
                  c.slli       s9, 3
                  c.andi       s1, -1
                  sra          a3, zero, s7
                  srai         s11, a3, 25
                  andi         a3, s3, -392
                  or           s9, a4, t0
                  c.xor        s0, a4
                  c.andi       a1, 8
                  sltiu        s1, a1, 652
                  srli         tp, s11, 14
                  sll          a2, a2, s11
                  xori         s3, a6, -1801
                  andi         s0, t0, -1712
                  c.xor        a0, a3
                  mulh         s10, s9, s2
                  ori          tp, a1, -1357
                  slti         t0, sp, -756
                  addi         s1, zero, -143
                  c.slli       s3, 15
                  c.mv         s3, s0
                  xor          s4, s6, tp
                  lui          s11, 229545
                  xor          s1, s1, t5
                  and          ra, s7, s10
                  c.slli       t0, 22
                  sll          t3, t0, s11
                  c.srai       a1, 16
                  ori          gp, a1, -1653
                  or           s8, tp, zero
                  srl          s5, a2, s6
                  c.or         a4, a0
                  c.or         s1, a3
                  c.nop
                  c.nop
                  sub          t0, a4, sp
                  c.slli       s11, 27
                  xor          s4, t4, a5
                  div          a2, s9, s0
                  mul          t4, s0, s11
                  mul          t6, t1, gp
                  andi         s0, s5, 45
                  div          t2, s1, tp
                  slli         s7, t6, 28
                  c.addi       s9, -1
                  remu         a3, t1, s4
                  slt          s3, t2, a5
                  srl          s7, t3, s8
                  c.mv         s11, t0
                  sub          t1, s1, a2
                  c.add        t4, s4
                  slli         s2, t3, 4
                  mulh         s10, s11, s6
                  c.addi       a1, 8
                  srai         s10, s0, 15
                  c.sub        a0, s0
                  c.li         s1, -1
                  lui          t6, 31270
                  xori         s4, ra, -1969
                  c.andi       a1, 16
                  sltiu        t1, a5, -751
                  c.and        a1, a4
                  mulh         s8, a2, t6
                  c.and        a3, a4
                  div          a4, a1, s10
                  slti         s4, a1, -1668
                  sll          a3, s4, a1
                  c.lui        ra, 1
                  remu         s11, s8, a7
                  c.lui        s2, 5
                  slti         t2, s6, -1053
                  mulhu        a3, ra, s1
                  c.sub        a0, s0
                  and          t4, s10, s6
                  c.addi       s11, 11
                  c.or         a0, a0
                  and          s0, zero, a5
                  mulh         t3, s2, gp
                  c.srai       a1, 19
                  nop
                  c.lui        s3, 14
                  ori          t1, t2, -1454
                  slt          a1, s3, gp
                  nop
                  c.and        a5, s1
                  slt          a2, a0, a5
                  c.mv         tp, s10
                  mulhu        a0, s9, s9
                  slt          s7, tp, s2
                  mul          a0, a1, t2
                  ori          s3, tp, 1011
                  c.lui        a0, 25
                  auipc        tp, 827838
                  c.lui        a0, 19
                  and          s8, s3, a1
                  xori         s11, s6, 1597
                  add          a3, a7, t2
                  c.mv         a0, a4
                  c.xor        s0, s1
                  c.lui        a2, 9
                  c.srai       s0, 27
                  xor          s2, a1, s11
                  c.and        s0, s1
                  c.or         a3, a2
                  c.andi       a1, 12
                  mulhu        a7, s3, a7
                  addi         s0, s10, 398
                  c.or         a4, s0
                  add          a3, s6, a4
                  lui          a7, 530220
                  xor          zero, gp, gp
                  c.sub        a4, a2
                  sltiu        s9, s7, 118
                  c.sub        a2, s0
                  c.andi       s0, 22
                  xori         s10, a4, -1115
                  slti         s7, t4, -1531
                  add          t1, t2, t3
                  c.or         s1, s0
                  c.and        a0, a4
                  mulhu        s8, t5, s11
                  addi         t1, t2, -484
                  auipc        a0, 1020703
                  c.slli       s4, 28
                  sub          a2, t6, a2
                  srli         s5, s0, 20
                  remu         gp, zero, tp
                  xori         a3, t5, -685
                  xor          t1, t4, t1
                  srli         s0, sp, 30
                  c.addi       a1, -1
                  c.lui        a5, 26
                  mulhsu       s5, t1, t0
                  auipc        s8, 133540
                  c.addi       t3, -1
                  add          s2, s3, s4
                  slti         s8, t0, -361
                  addi         gp, s10, 1467
                  c.nop
                  nop
                  srai         t4, a2, 6
                  sltiu        zero, tp, -1867
                  c.lui        s2, 10
                  c.or         s1, a4
                  remu         s1, s9, s0
                  rem          s2, t4, s0
                  and          zero, s1, t0
                  c.or         s0, a3
                  nop
                  c.xor        a5, a3
                  or           s5, s6, s7
                  rem          a7, s6, a6
                  and          t6, a1, a5
                  add          zero, t6, a2
                  c.nop
                  srli         a0, t2, 30
                  ori          a4, s7, 878
                  c.li         gp, 15
                  c.sub        a4, s1
                  addi         a4, tp, -994
                  slti         s10, t0, 726
                  mul          a5, s10, t3
                  c.slli       t5, 26
                  c.sub        a3, a1
                  andi         a3, a1, -1798
                  c.add        t5, ra
                  div          gp, s8, s0
                  c.srai       a0, 28
                  div          s7, a5, a0
                  div          s7, s7, s5
                  sltu         t0, t6, s10
                  slt          s0, s10, s2
                  c.srai       a1, 11
                  rem          t2, s9, s11
                  remu         t0, a4, s6
                  c.li         t4, 14
                  c.sub        a3, s0
                  sll          s4, s8, a6
                  xori         s4, t2, 559
                  c.and        a2, a3
                  lui          s1, 772109
                  c.sub        a1, a3
                  srli         t4, t1, 15
                  c.nop
                  andi         t1, s2, 159
                  c.and        a1, s0
                  c.nop
                  xori         t1, s7, -1146
                  add          s11, a5, t1
                  sltu         t0, s6, a5
                  div          a5, a1, s4
                  and          a3, a6, s0
                  mulhu        t3, s4, s2
                  c.slli       a2, 22
                  andi         s5, s9, 1235
                  div          t5, t4, s4
                  c.andi       a0, 17
                  mulh         a0, s5, t6
                  sra          s2, tp, a2
                  sltu         s7, s7, ra
                  c.srli       s0, 6
                  slti         t3, s2, -1990
                  slli         s0, a1, 9
                  sltu         ra, s10, s1
                  or           a4, a7, a4
                  sub          a7, t3, t1
                  rem          t3, s6, sp
                  add          t3, s9, s3
                  c.add        t2, a3
                  c.or         s1, s1
                  xor          t0, ra, t6
                  c.slli       t1, 17
                  c.nop
                  srli         s11, s10, 26
                  c.mv         a7, s0
                  c.lui        tp, 11
                  sub          s7, a2, a3
                  c.andi       a2, -1
                  c.addi       t2, -1
                  srai         s2, t0, 17
                  xor          zero, gp, t5
                  lui          s10, 597479
                  c.nop
                  divu         a1, a6, t6
                  remu         s9, s10, s0
                  c.or         a2, a5
                  c.add        t3, a0
                  c.mv         s8, s7
                  sub          tp, a7, s9
                  srli         s5, t1, 23
                  c.sub        s0, a5
                  c.srai       s1, 21
                  c.srli       a0, 13
                  mul          s11, a0, a2
                  c.xor        s1, s1
                  slti         a2, a1, 788
                  c.mv         a5, a6
                  sra          a1, gp, a3
                  sub          t0, s3, s5
                  sll          t6, s10, a2
                  srli         s11, t3, 16
                  addi         a7, s8, -372
                  andi         a1, a7, 1139
                  lui          a0, 511473
                  c.and        a0, s1
                  sltiu        s8, ra, 628
                  sltu         s5, a3, a5
                  xor          a3, t2, t2
                  srai         s2, t6, 18
                  c.slli       t4, 3
                  mulhsu       zero, t5, s0
                  lui          t5, 662074
                  ori          s2, s2, 330
                  srai         t1, a1, 4
                  c.slli       a3, 17
                  sltiu        s0, a4, 1345
                  xori         a3, tp, 421
                  srli         s3, s4, 15
                  sltu         s0, a4, s5
                  auipc        s4, 830212
                  auipc        s7, 496664
                  or           s8, a5, a7
                  c.sub        a5, a2
                  c.lui        t6, 27
                  slti         tp, sp, -1366
                  c.slli       s8, 21
                  c.slli       s2, 30
                  mulh         ra, t5, t6
                  c.lui        s11, 26
                  c.srli       a0, 27
                  remu         s5, a4, t3
                  c.nop
                  slli         t1, a4, 16
                  c.add        s1, t5
                  auipc        a5, 995398
                  sra          s11, s5, a0
                  slti         t1, t3, 1627
                  sub          tp, a4, s0
                  sll          tp, t6, t2
                  srai         a2, gp, 8
                  divu         t5, s1, s3
                  rem          a3, tp, t6
                  c.andi       a4, -1
                  mulh         a4, s5, a1
                  and          t6, a6, a3
                  c.or         s0, a4
                  c.li         gp, -1
                  addi         zero, t3, 619
                  slli         s2, s10, 12
                  srai         s3, a4, 0
                  sltiu        a2, t6, 1968
                  c.or         a5, a2
                  xori         s3, a0, -902
                  c.add        s0, tp
                  lui          t4, 213934
                  c.xor        s0, s0
                  slli         s5, s8, 14
                  srli         s7, sp, 11
                  sub          s0, a4, s2
                  srli         a0, s9, 13
                  c.li         s4, -1
                  and          a5, a7, s6
                  divu         s0, t5, a5
                  c.mv         t0, a5
                  c.srai       a1, 8
                  c.add        s5, t3
                  sll          a0, t2, s7
                  sub          s4, s3, s9
                  c.addi       ra, 31
                  c.li         t5, -1
                  auipc        s11, 815482
                  div          a1, s3, s2
                  and          a7, a5, a2
                  divu         t5, s4, ra
                  and          s2, s10, a6
                  c.xor        a0, a3
                  and          s1, a5, sp
                  nop
                  srai         a7, t1, 23
                  c.nop
                  c.srli       a0, 22
                  srl          s4, s0, s9
                  slti         s2, s1, -1425
                  slti         s0, a2, 1801
                  xor          a3, s9, tp
                  c.andi       s0, -1
                  xori         t2, t3, -409
                  srai         a1, a2, 13
                  sra          tp, s11, s10
                  c.add        s0, a7
                  sub          a3, tp, s2
                  c.mv         t1, a7
                  andi         s9, s11, 658
                  slt          t2, s10, s9
                  mulh         s5, s2, s0
                  divu         t0, s9, s0
                  rem          s11, a2, t4
                  sub          s5, a4, s8
                  and          a1, a7, a1
                  sll          a5, ra, a0
                  srai         s8, a3, 31
                  or           s11, gp, s5
                  div          zero, sp, gp
                  slt          zero, sp, s4
                  add          ra, t6, s9
                  mulhsu       zero, ra, s3
                  addi         t2, t6, 2026
                  ori          t0, t0, 1365
                  slli         s0, t0, 20
                  rem          s3, zero, t1
                  c.add        s10, a5
                  div          s7, s4, s1
                  c.nop
                  c.srli       a2, 27
                  c.add        t3, t3
                  mul          ra, t3, s6
                  c.sub        a2, a5
                  srl          s1, s10, s3
                  div          s5, s10, s5
                  rem          s10, s4, a6
                  mulhu        tp, s9, s9
                  c.srli       s0, 21
                  c.srli       s0, 23
                  slti         a1, s2, 424
                  mulh         t1, t3, s8
                  divu         t2, a6, ra
                  c.lui        t1, 22
                  c.nop
                  auipc        a1, 44389
                  c.and        s1, s1
                  c.li         t1, 27
                  c.and        a4, s0
                  sll          a2, s7, a6
                  c.nop
                  sltu         a4, zero, s6
                  c.nop
                  c.or         a3, a5
                  and          a7, a4, s1
                  srli         s0, s3, 13
                  c.srli       a2, 20
                  mulh         a4, s1, t4
                  sll          s0, s10, s2
                  xor          t1, t2, tp
                  slli         zero, a4, 8
                  or           tp, s2, s3
                  sltiu        ra, a6, -1763
                  div          a3, s3, t5
                  sltiu        a7, sp, -1387
                  c.nop
                  c.andi       a3, -1
                  sll          t2, a4, a0
                  mul          t4, t5, s10
                  mulhsu       s5, s6, t6
                  c.sub        a0, a5
                  slli         s10, t1, 24
                  srl          a1, sp, t3
                  xori         s8, gp, 1287
                  ori          a4, s0, 548
                  c.sub        a2, a4
                  and          tp, a0, a2
                  c.srli       a2, 1
                  srai         s7, tp, 6
                  add          t2, a3, t1
                  c.slli       s10, 22
                  andi         s2, a7, -1849
                  add          a0, s6, t2
                  xor          s0, a1, t6
                  c.and        s0, a2
                  mulhu        s7, a7, s6
                  mulh         s1, t4, tp
                  c.andi       a0, 15
                  nop
                  divu         zero, s3, a2
                  mulhu        gp, a2, sp
                  mul          a1, t3, t4
                  c.addi       a0, 28
                  divu         ra, a6, s3
                  c.mv         s8, t3
                  c.li         t6, 3
                  mulh         gp, s1, tp
                  add          a5, a3, s2
                  addi         t1, a7, 1575
                  srli         t0, t6, 15
                  c.andi       a3, 19
                  andi         s7, s8, -2017
                  c.and        a5, s0
                  c.li         a7, -1
                  div          s8, s1, s0
                  auipc        a4, 736984
                  mulhsu       zero, a1, t4
                  c.srli       s0, 9
                  and          gp, sp, a4
                  c.xor        s1, a3
                  or           a0, sp, s2
                  rem          t0, t6, s9
                  xor          t4, s3, s7
                  sub          s2, a6, a7
                  lui          a3, 975043
                  sll          s7, a6, t4
                  c.andi       a0, 16
                  add          s3, a3, a6
                  mulhsu       s2, s4, s7
                  c.xor        a1, s0
                  c.srai       a2, 19
                  slt          t3, a6, a5
                  c.nop
                  divu         t0, a1, s5
                  divu         a4, s3, sp
                  lui          t3, 269022
                  c.or         s0, a0
                  c.nop
                  xor          a5, s7, a0
                  add          a1, t6, a4
                  c.add        t0, s9
                  slt          zero, a7, s10
                  mulhu        a2, gp, s7
                  c.mv         s8, s6
                  or           t5, a6, s6
                  c.mv         s4, gp
                  sra          zero, t1, a7
                  c.add        a5, gp
                  sltiu        a4, s5, 1774
                  remu         s0, a5, a5
                  c.srai       a5, 20
                  srli         s0, s4, 12
                  srai         zero, s3, 25
                  andi         t3, s5, 745
                  c.srai       a3, 27
                  sltiu        s0, s7, -1123
                  divu         t5, a1, s5
                  ori          t6, a4, 1158
                  and          s2, tp, s6
                  c.lui        s3, 15
                  addi         s2, t6, -1203
                  sra          a1, s3, tp
                  add          zero, tp, ra
                  lui          t3, 766568
                  srl          s9, a6, t2
                  auipc        zero, 36525
                  remu         t1, s7, s1
                  and          s2, s7, a1
                  divu         a3, s7, s0
                  c.srai       a2, 30
                  c.addi       s2, 22
                  c.sub        a2, a3
                  mulh         t2, s1, ra
                  srl          s10, a6, s6
                  and          a3, s7, s7
                  c.add        s3, s5
                  c.and        a1, a1
                  sltiu        a3, a2, 1441
                  c.and        a3, a2
                  slti         t3, s11, -1087
                  c.andi       a0, 3
                  remu         tp, a5, t6
                  c.li         a3, 1
                  lui          s5, 434002
                  mulhsu       a4, tp, a7
                  andi         s8, s8, 578
                  c.or         a0, a3
                  c.add        t5, t2
                  c.srai       a0, 17
                  addi         a0, s8, -586
                  c.or         a1, s1
                  nop
                  xor          t1, s4, s10
                  c.and        s0, a0
                  srli         s8, a1, 7
                  rem          s5, t1, s11
                  srl          s2, sp, s8
                  add          gp, s11, s9
                  c.srli       a0, 31
                  or           a2, s6, s8
                  andi         gp, s6, 531
                  mul          t2, t2, s9
                  sltu         ra, t0, zero
                  srli         t1, s11, 14
                  andi         zero, t2, -397
                  xor          tp, s9, t6
                  rem          s4, t2, s2
                  c.add        a1, a6
                  sltiu        a4, t4, -1473
                  slli         ra, a4, 30
                  rem          s4, a0, t2
                  sub          s8, a3, s7
                  remu         a7, a2, s1
                  sra          t5, s6, t5
                  c.srli       a1, 16
                  and          s8, a7, s5
                  auipc        s9, 762696
                  c.lui        a3, 30
                  and          s2, t6, s3
                  mulhu        tp, sp, a7
                  c.andi       a5, 9
                  and          t1, s11, gp
                  c.slli       s0, 4
                  andi         a7, s5, 1208
                  srai         zero, s2, 13
                  sra          zero, a2, t0
                  srai         ra, t1, 23
                  sll          t6, t6, a7
                  c.xor        a5, a2
                  remu         tp, a1, t1
                  sra          a0, a1, s2
                  c.add        s1, a6
                  c.mv         a7, s8
                  sltu         a3, tp, s4
                  sub          t4, tp, s4
                  c.srli       a5, 26
                  srli         t4, sp, 26
                  c.xor        a5, a2
                  c.addi       s0, 22
                  c.and        s1, a2
                  and          zero, s4, a6
                  nop
                  sltiu        s1, s0, -1714
                  c.or         a3, a5
                  remu         s8, s6, a2
                  c.slli       t1, 6
                  c.addi       t3, 17
                  c.and        s0, a5
                  c.srli       a2, 10
                  sltiu        s0, a6, -1639
                  and          t5, t2, a0
                  c.addi       ra, -1
                  slti         a4, tp, -377
                  xori         t5, t1, -1224
                  xori         t1, s8, 1549
                  remu         zero, a4, t2
                  sub          s2, a4, t3
                  c.xor        a3, a0
                  c.xor        a3, s1
                  remu         s7, a6, a0
                  mulhsu       a4, s7, s8
                  c.mv         a7, t5
                  rem          a0, s4, a3
                  c.srai       a3, 19
                  or           t1, ra, s0
                  mul          tp, zero, s4
                  slt          s11, a5, t1
                  slli         t4, t3, 23
                  rem          zero, s10, s7
                  c.andi       s1, 19
                  auipc        t0, 569972
                  ori          t4, s2, -1967
                  c.add        s3, a4
                  slli         s8, t2, 2
                  ori          zero, s11, -2013
                  c.srli       a1, 30
                  rem          s2, a2, a7
                  add          a3, gp, a7
                  srli         ra, s2, 20
                  srai         t6, a7, 29
                  add          s3, a3, a7
                  slt          s9, ra, t4
                  sll          s4, s10, s7
                  c.addi       t3, 11
                  sll          t3, s6, a3
                  c.slli       s10, 29
                  xori         a7, gp, -23
                  c.nop
                  c.addi       s1, 11
                  c.srli       s1, 3
                  sltiu        s5, t6, -362
                  srli         t6, s2, 10
                  rem          t6, sp, ra
                  slt          t5, s6, s6
                  sltiu        zero, s0, -980
                  addi         s0, s9, -615
                  auipc        a5, 362345
                  div          s10, s0, gp
                  lui          t3, 985921
                  mulh         t2, a7, a0
                  andi         a5, a4, -150
                  add          gp, t2, t3
                  ori          s9, t6, -1099
                  srl          zero, s5, s1
                  add          gp, s4, s8
                  srl          t0, a0, a3
                  andi         s8, a4, 1214
                  c.srli       a3, 9
                  c.xor        a2, a2
                  c.slli       t1, 28
                  sub          s11, s4, a3
                  sll          zero, a5, t2
                  rem          s0, s5, t5
                  xor          zero, s2, s9
                  c.andi       s0, -1
                  slt          s9, s3, s6
                  mul          s7, a5, s5
                  rem          s10, s0, a1
                  or           a0, s6, s8
                  mulh         a1, s4, a6
                  c.andi       a4, -1
                  auipc        s9, 479558
                  sltiu        t6, s4, -1863
                  mul          a0, s2, t1
                  c.mv         tp, t6
                  mulh         s4, a4, t3
                  mulhu        zero, a7, s11
                  xori         t3, a3, 1041
                  c.srli       a3, 7
                  or           t4, s7, t3
                  c.add        s10, t5
                  c.sub        s0, a2
                  nop
                  c.lui        s8, 13
                  c.or         a4, a1
                  c.sub        a5, a1
                  mul          s0, sp, s9
                  xor          s4, s11, gp
                  and          s7, sp, a7
                  divu         t0, a0, ra
                  ori          s9, s6, -1731
                  c.lui        s0, 31
                  slti         a0, zero, -1582
                  sltu         s7, a5, ra
                  sub          t5, t5, a7
                  div          s4, t0, a6
                  srli         s10, s5, 26
                  xori         gp, a5, 1547
                  c.sub        a1, a0
                  mulh         t5, s9, t3
                  mulhsu       t1, tp, ra
                  div          t2, a2, t4
                  or           a2, s1, t1
                  sub          s2, t2, s7
                  ori          s8, t4, 40
                  xori         s4, a2, -163
                  addi         s4, t5, 1718
                  add          a2, s9, t0
                  c.sub        s1, s0
                  mulh         s8, s6, a4
                  addi         s4, t1, -1089
                  mul          s9, gp, a3
                  div          s9, t1, s5
                  srli         t4, a5, 1
                  srai         s7, s11, 7
                  mulhu        s3, s0, a4
                  mulh         t5, s2, s9
                  auipc        a5, 558561
                  c.mv         t3, t0
                  or           s2, t0, a5
                  xori         a5, gp, 1479
                  auipc        tp, 11884
                  mul          a7, t1, s10
                  c.srli       a5, 9
                  mulhsu       t5, a0, s8
                  sra          s8, s2, a0
                  c.add        a7, a0
                  sltiu        a1, a5, -1115
                  c.andi       s0, 17
                  sltu         s5, a2, s0
                  c.sub        a1, s0
                  sll          t0, a5, a3
                  srai         s1, a3, 16
                  c.lui        s0, 7
                  c.andi       a3, 5
                  c.mv         a7, t2
                  slli         t6, t5, 3
                  c.or         a4, a1
                  c.add        s2, t2
                  add          zero, a3, s7
                  mulh         s2, t5, s8
                  c.lui        t1, 6
                  sltu         s4, s11, t6
                  sltiu        t1, t5, 64
                  slti         s7, t4, -16
                  c.nop
                  slti         s3, a5, 1712
                  mulhsu       gp, a6, t3
                  c.sub        a4, a2
                  remu         zero, a1, a6
                  c.xor        a0, a3
                  xori         a1, t0, -1544
                  c.add        t6, t0
                  xori         s2, a5, 246
                  sltu         a2, a5, s0
                  xori         s5, a1, 2042
                  sra          t0, t0, s0
                  c.or         s0, s1
                  c.xor        a1, a1
                  and          ra, t2, s5
                  nop
                  add          t5, t1, a6
                  slti         a2, t3, 1269
                  sub          a7, gp, ra
                  c.mv         ra, ra
                  rem          s11, s6, s7
                  c.add        s2, gp
                  c.andi       a3, 11
                  c.and        s1, a4
                  sltiu        s8, a3, -7
                  srli         t6, s6, 24
                  c.nop
                  mulh         s0, s10, tp
                  c.andi       a1, -1
                  mul          s9, t2, t2
                  addi         gp, a0, 412
                  sltiu        a4, a0, 279
                  c.lui        t3, 3
                  slti         t3, s3, 1982
                  andi         t2, t3, 668
                  c.lui        t6, 2
                  rem          s8, t1, t1
                  mulhu        a4, t6, t1
                  ori          t1, s10, -1403
                  c.or         a4, a2
                  addi         s1, a7, -607
                  divu         t5, a5, a2
                  c.addi       ra, 18
                  c.mv         a7, s2
                  xori         a2, a7, -172
                  sra          s7, s11, t0
                  or           s4, a1, a5
                  c.xor        s1, s0
                  auipc        t4, 669076
                  ori          t0, a6, 942
                  and          s10, ra, s6
                  divu         s7, gp, a2
                  c.srai       a0, 4
                  srl          a0, a3, a7
                  or           s3, s5, sp
                  rem          s4, s4, a1
                  sltu         a5, a7, a5
                  c.srai       s1, 31
                  and          s1, s6, a1
                  mulh         a7, s2, s0
                  c.or         a0, a0
                  c.mv         s10, s11
                  srl          a4, s11, t2
                  c.li         s7, -1
                  and          t3, s8, a4
                  c.and        a5, a1
                  ori          s1, s4, -2027
                  xor          a7, t4, s6
                  xori         s2, a3, 963
                  sltu         a1, t2, t5
                  c.or         a3, a0
                  c.xor        a4, a3
                  mulhu        gp, a4, a7
                  c.andi       a2, -1
                  mulhu        gp, s8, s4
                  add          s5, ra, t0
                  and          s5, a2, s1
                  sltu         s0, t0, s4
                  c.add        s1, a0
                  lui          t5, 908842
                  c.mv         a7, t3
                  xor          s5, s5, t3
                  rem          t1, gp, sp
                  sub          ra, s10, s11
                  slli         a7, a2, 6
                  mulh         t3, a1, tp
                  ori          zero, t4, -1205
                  c.andi       s0, 4
                  divu         tp, sp, s1
                  c.nop
                  and          zero, t4, a6
                  or           a4, s8, t6
                  sltiu        t1, s10, 1376
                  c.srli       s0, 29
                  lui          s11, 544318
                  srli         t1, s7, 7
                  remu         gp, t2, t6
                  c.mv         s9, t6
                  slt          s4, t6, a2
                  c.li         s1, 30
                  srl          s3, s5, a1
                  mul          a2, s5, s5
                  c.slli       a0, 1
                  mulh         s4, s11, a5
                  or           a3, a7, a6
                  nop
                  sra          t2, a0, gp
                  c.and        s1, a1
                  c.nop
                  divu         s2, a4, s0
                  c.xor        a4, a1
                  sub          tp, ra, s3
                  c.lui        s4, 29
                  c.slli       a4, 20
                  mulhu        a4, s6, s11
                  nop
                  sll          t3, s7, a7
                  lui          a5, 24880
                  slti         s8, a2, 1986
                  c.srli       s0, 19
                  sub          s11, s10, s1
                  nop
                  div          t5, s1, t6
                  mulhu        s11, t0, t1
                  mulhu        s5, s11, a4
                  lui          t1, 614863
                  c.srli       a4, 17
                  srli         s2, s1, 5
                  c.li         t5, -1
                  addi         a1, s2, 1362
                  sltu         a3, a6, t6
                  slt          s3, ra, s10
                  c.add        s0, t2
                  slli         s2, a4, 10
                  or           a1, a5, s0
                  and          a2, s2, a1
                  divu         t1, s3, tp
                  remu         s5, t4, s6
                  auipc        t5, 319375
                  c.srai       a2, 23
                  sra          s2, a2, s0
                  c.nop
                  mulhsu       s2, tp, a6
                  mulhu        tp, t4, t1
                  remu         a7, t4, s11
                  c.add        t2, a7
                  c.li         a3, 17
                  rem          t3, zero, sp
                  srai         a1, t4, 29
                  mulh         ra, t5, t4
                  mulh         s1, s7, t6
                  c.srli       a5, 22
                  xori         tp, a7, -531
                  divu         tp, ra, t1
                  c.nop
                  srli         s11, a4, 18
                  c.addi       a0, 29
                  mulhu        t0, t2, s0
                  remu         t3, t3, s5
                  srl          ra, a7, t6
                  c.mv         a2, a6
                  sltiu        ra, a5, -2025
                  slt          a0, t4, s11
                  sra          s1, a2, s7
                  addi         s10, s5, 1258
                  c.lui        s2, 22
                  srai         zero, gp, 15
                  c.srli       a3, 12
                  c.xor        a3, a2
                  c.or         a5, a4
                  mulhu        s9, s6, s7
                  slti         zero, a3, -607
                  srl          a1, s4, t0
                  xor          a2, a1, t0
                  c.srai       a4, 7
                  c.li         tp, 10
                  c.li         s1, 0
                  sltu         a7, a4, a3
                  sltu         t2, s8, s6
                  addi         t4, s9, -1416
                  divu         zero, tp, gp
                  divu         t4, a6, s8
                  xori         t1, s9, -651
                  sltiu        t5, t1, 1720
                  c.nop
                  and          a5, a4, a3
                  srl          a4, t6, a6
                  c.xor        a3, a4
                  slt          s9, gp, gp
                  srli         s2, a3, 23
                  xori         s10, gp, 561
                  c.add        a2, s3
                  c.srai       a0, 1
                  sltu         s4, t3, tp
                  and          t1, s9, s0
                  c.mv         tp, tp
                  c.li         a4, 17
                  ori          t5, a0, 602
                  mulhu        gp, s2, t0
                  mul          tp, sp, s8
                  div          a4, s3, gp
                  slli         s0, a0, 28
                  remu         t3, t5, s7
                  andi         t0, t3, 632
                  c.or         a1, a4
                  mul          s5, t3, s3
                  or           a5, s6, s6
                  mul          s4, a2, a7
                  xor          s0, t6, a4
                  mulhu        t6, t4, s8
                  xor          s3, t6, t1
                  lui          tp, 362757
                  sltiu        s1, s11, -1184
                  add          t6, s8, a2
                  c.andi       s0, 16
                  slli         zero, tp, 18
                  add          t4, t0, s9
                  c.li         gp, -1
                  xor          s7, a5, s3
                  div          s7, s11, t0
                  sra          s3, gp, sp
                  sll          t4, t0, zero
                  mul          s9, a4, s2
                  srai         ra, a3, 21
                  c.add        t1, s9
                  c.addi       a5, -1
                  c.andi       a4, 14
                  addi         a0, a1, 319
                  c.and        a4, s0
                  sltiu        s10, a1, -2046
                  divu         ra, s1, a1
                  divu         a1, a2, s1
                  rem          s0, s7, t2
                  remu         a4, s0, ra
                  ori          s4, tp, 412
                  rem          a3, s5, s4
                  slli         a3, t4, 17
                  srli         s1, s3, 30
                  mulhu        s1, a5, a2
                  mulhsu       s0, a6, s5
                  add          a1, tp, s3
                  divu         s4, a1, a2
                  div          t4, s9, t2
                  sltiu        a3, zero, -1245
                  or           a3, s10, a7
                  add          t4, a2, t2
                  slt          t6, s9, s10
                  srl          t5, t4, t2
                  sltu         a4, ra, s7
                  c.or         a2, a5
                  sltu         s4, s10, s2
                  lui          s10, 657
                  mulhsu       s0, t2, s0
                  ori          a1, a1, 1493
                  slli         ra, zero, 23
                  c.nop
                  ori          s5, zero, 515
                  nop
                  srli         s3, zero, 22
                  ori          s8, tp, -1342
                  c.and        s0, s1
                  slti         a0, ra, 1089
                  mulhu        a2, a1, s8
                  slti         s1, a4, 63
                  c.add        s9, a6
                  mulhu        s2, s7, s3
                  c.lui        t3, 6
                  xori         s1, s1, -1884
                  c.or         s1, s0
                  slt          a2, t0, s4
                  c.srai       a0, 11
                  remu         s8, a1, t5
                  sll          s9, t2, s2
                  c.li         s5, -1
                  divu         t3, a3, t6
                  and          a0, zero, t2
                  sll          t2, s8, s8
                  add          s11, s4, tp
                  c.xor        a5, a4
                  c.addi       a0, 19
                  srli         t3, zero, 6
                  c.nop
                  mulhu        s8, sp, a7
                  c.srai       s1, 20
                  remu         gp, sp, a1
                  addi         s7, a2, 1877
                  sra          s2, a2, tp
                  slti         ra, t4, 2008
                  or           s10, s5, s10
                  rem          s1, t1, s10
                  srli         t6, s10, 24
                  c.add        s2, a0
                  add          s8, a0, zero
                  c.or         a1, s0
                  mulh         a1, t1, s9
                  addi         t2, s10, 15
                  nop
                  mulhu        a7, s10, a3
                  or           s10, t4, s10
                  sltiu        s7, sp, -17
                  c.andi       a1, 17
                  c.andi       a5, -1
                  div          s2, t3, s6
                  mulh         zero, s11, zero
                  srl          s10, s2, a7
                  c.add        s2, a4
                  c.srli       a4, 11
                  c.srli       a4, 6
                  divu         s10, a7, a1
                  mulhsu       t1, a6, t6
                  c.lui        a3, 30
                  srl          s8, a2, s11
                  srl          t0, a5, s4
                  c.srli       a0, 5
                  lui          zero, 302115
                  srli         s5, s2, 26
                  sub          s8, zero, t6
                  rem          t1, s2, zero
                  add          ra, t5, a0
                  slti         a3, a1, 1655
                  c.or         a2, a1
                  c.lui        s1, 30
                  sltiu        s4, s1, -597
                  c.and        a3, a3
                  mul          a4, a1, a1
                  xori         gp, t4, -1748
                  srli         s7, a7, 24
                  ori          t3, s8, -1126
                  c.lui        s2, 16
                  sll          s5, a7, a5
                  divu         t4, ra, t6
                  c.srli       a5, 21
                  c.srai       s1, 28
                  lui          t6, 552890
                  slt          t2, t0, s2
                  c.srli       a3, 24
                  c.sub        a2, s1
                  sll          s0, sp, ra
                  c.xor        s0, a3
                  srai         gp, a5, 11
                  mulhsu       a0, a6, tp
                  sltu         t2, a3, s5
                  or           a7, a7, a2
                  slti         a0, a3, -1748
                  remu         t5, s0, a1
                  c.srli       a5, 2
                  divu         s0, s0, a4
                  slli         s0, a6, 23
                  nop
                  srl          t4, tp, s1
                  lui          s0, 698431
                  sltiu        t3, t4, -70
                  andi         s0, t2, 1731
                  c.li         t2, 2
                  c.addi       a3, -1
                  srli         t2, a2, 17
                  remu         s2, s0, s11
                  c.mv         s8, tp
                  srl          s7, t2, t4
                  c.andi       s0, -1
                  c.xor        a4, a3
                  div          gp, a4, s7
                  c.nop
                  c.lui        s8, 15
                  sll          a2, s0, t4
                  sll          s5, tp, t3
                  div          s9, s2, t5
                  c.andi       a3, -1
                  mulh         s4, s4, a2
                  srl          t2, s9, s8
                  srai         t4, s5, 4
                  mul          s2, s11, zero
                  c.srai       a5, 30
                  srl          t6, s8, s5
                  c.srli       a3, 11
                  remu         tp, s11, t5
                  ori          t5, s11, -298
                  c.li         s2, -1
                  sll          t2, ra, s1
                  sltiu        s1, s2, -357
                  and          a5, zero, t5
                  andi         t4, s5, 932
                  mulhsu       s4, s3, s1
                  slt          t1, t6, a2
                  xori         s7, t5, 1848
                  or           a0, a3, s8
                  ori          t0, a4, -1594
                  sub          a1, t3, a0
                  c.slli       s4, 12
                  c.sub        s0, a3
                  slt          gp, a5, zero
                  add          ra, sp, s4
                  c.sub        a5, a3
                  c.add        a1, t2
                  nop
                  sltiu        tp, s1, -575
                  or           s3, ra, s11
                  or           s2, s0, s3
                  sub          a3, a1, tp
                  srli         s11, a7, 29
                  ori          t1, t1, 1807
                  c.srai       a1, 30
                  sra          t4, a1, s2
                  slti         s2, t1, -648
                  slli         s3, s7, 22
                  auipc        t5, 353329
                  slt          t4, s6, a5
                  xor          gp, s10, zero
                  c.andi       s1, 20
                  xori         s4, s2, -1987
                  c.addi       t6, 10
                  mulhu        t1, ra, s1
                  divu         gp, s6, s11
                  srli         a2, t4, 0
                  div          s3, a3, t2
                  c.nop
                  c.srli       s1, 21
                  slli         gp, s8, 0
                  c.sub        a4, a0
                  c.xor        a3, a3
                  div          ra, s8, t3
                  c.nop
                  xor          s4, tp, a6
                  c.andi       s1, 11
                  andi         s11, t0, 1293
                  slt          a5, s2, s10
                  andi         t4, a1, -1573
                  and          t1, s2, zero
                  slt          s5, s6, tp
                  mulh         gp, s10, a3
                  c.xor        a4, s1
                  c.lui        s8, 17
                  srl          s0, s3, t4
                  sll          a0, ra, a7
                  and          tp, s8, s6
                  div          ra, tp, s8
                  srl          gp, a4, s8
                  remu         gp, s2, a6
                  sra          t2, s4, t0
                  lui          gp, 786288
                  c.addi       s3, 27
                  c.sub        a1, a0
                  srl          t6, t5, a4
                  c.mv         t3, tp
                  c.srai       a2, 27
                  add          a2, a0, t3
                  c.and        a4, a4
                  c.and        a0, a2
                  c.sub        a3, a5
                  auipc        t2, 774916
                  slti         s8, s0, 1064
                  c.or         a3, a3
                  sltiu        a1, gp, -447
                  slli         ra, t2, 16
                  addi         zero, a7, 607
                  srli         s8, t6, 25
                  slli         a7, s11, 7
                  sub          a7, t6, gp
                  c.lui        s10, 15
                  c.sub        a0, a0
                  ori          t2, a5, -224
                  c.mv         gp, a4
                  slt          a0, gp, sp
                  nop
                  sltu         t3, t6, s3
                  mulhsu       s2, s8, t5
                  c.addi       a2, -1
                  mulhu        a7, s11, a7
                  add          s5, s0, t0
                  sra          t2, a7, sp
                  mul          a3, s4, s5
                  c.andi       a5, 14
                  or           t1, sp, a7
                  remu         s3, t1, s8
                  c.andi       a1, -1
                  c.srli       s1, 28
                  c.li         a3, 6
                  sltu         a5, tp, a3
                  sltiu        a3, ra, 1128
                  c.li         a3, -1
                  div          a5, s2, s9
                  c.li         t1, 22
                  or           s3, zero, gp
                  rem          s10, t1, s5
                  c.xor        a4, a4
                  slt          t4, a4, t6
                  mulhsu       t0, s5, t4
                  sra          t4, a4, s5
                  divu         s5, s7, s9
                  slti         s2, t0, 702
                  rem          s4, t5, s6
                  sll          t5, a1, s4
                  srai         tp, s9, 27
                  sub          s3, ra, t0
                  rem          s9, sp, a0
                  slti         ra, gp, -1214
                  slli         s4, a5, 14
                  ori          t3, t0, 570
                  srl          s4, a2, s9
                  mulhu        t5, a0, t5
                  srai         t2, t4, 24
                  c.and        a3, s1
                  c.and        a2, a1
                  c.mv         t3, tp
                  mulh         t1, gp, gp
                  divu         t2, t6, s6
                  c.slli       a7, 1
                  andi         a3, a4, -1645
                  sll          s2, t2, a6
                  slt          gp, s6, a6
                  mulh         s0, s5, s11
                  sub          a4, t5, t4
                  sra          a3, a7, sp
                  sll          s2, gp, s5
                  xor          zero, a4, s6
                  srai         a7, a7, 19
                  andi         t6, a1, -1359
                  andi         a4, t2, -1615
                  xor          a2, tp, s5
                  xor          t6, s3, s7
                  div          t4, s10, t6
                  mul          s4, gp, tp
                  slt          t6, t4, sp
                  srl          a5, t6, tp
                  mul          a4, s5, ra
                  ori          a0, ra, 288
                  mul          s0, a7, s2
                  srai         t6, s3, 27
                  xori         s8, a3, -1321
                  sll          a2, a2, s1
                  or           t4, s9, t0
                  c.li         s7, 0
                  ori          a0, a4, -1791
                  sltu         ra, a6, a2
                  sltiu        s5, t2, 1141
                  xor          zero, s7, t3
                  c.srai       a4, 29
                  c.lui        s9, 27
                  sra          a7, t5, s3
                  sltu         a3, s1, s3
                  ori          t1, a5, -633
                  c.nop
                  auipc        s8, 57088
                  and          s4, t5, s5
                  nop
                  c.nop
                  srai         a0, s1, 10
                  srl          a3, t4, t3
                  slt          tp, s6, a6
                  and          a1, t6, sp
                  and          tp, a4, zero
                  mulhsu       t4, a6, s11
                  div          t3, s11, s0
                  andi         t0, t2, 998
                  and          s5, t3, s11
                  c.slli       s4, 28
                  mul          t2, s2, a0
                  c.addi       t0, 25
                  andi         ra, t6, 1450
                  c.srli       a5, 16
                  divu         a5, s1, zero
                  slt          s0, s6, s3
                  remu         t2, s10, a2
                  div          gp, s3, s8
                  c.andi       a0, -1
                  rem          zero, ra, a3
                  c.srli       a5, 1
                  c.and        a1, a2
                  xori         s7, t4, -1102
                  c.andi       s0, -1
                  srai         s9, t1, 18
                  c.li         a0, -1
                  auipc        s4, 478789
                  nop
                  c.mv         a3, s6
                  c.lui        a1, 5
                  remu         t3, t1, zero
                  rem          t0, a4, a4
                  c.srai       a0, 1
                  slli         t5, a7, 28
                  sltu         t5, a1, t0
                  c.sub        s0, a1
                  or           t2, a1, s9
                  srl          t6, tp, s11
                  c.srli       a3, 20
                  xor          t1, s11, ra
                  sltiu        s11, a6, 1781
                  c.mv         s10, t0
                  mul          s0, t5, s6
                  srai         s3, a3, 25
                  c.and        a0, s1
                  slli         t2, a6, 26
                  or           a0, s1, s7
                  mul          t1, s5, t3
                  c.or         s0, a4
                  c.lui        ra, 30
                  c.andi       a0, 1
                  mulhsu       s0, sp, t5
                  slli         s7, s1, 23
                  sub          a2, t4, a4
                  add          a4, s11, a6
                  c.nop
                  lui          t6, 650880
                  c.addi       s2, 3
                  mul          s2, s3, a4
                  xor          s11, s10, s2
                  ori          a4, t3, -676
                  mulhu        s1, t3, t5
                  sltiu        a0, a1, -730
                  divu         s8, t6, s3
                  add          a0, t5, t2
                  auipc        a0, 708871
                  c.addi       t5, 18
                  sltiu        gp, s9, -354
                  andi         a7, s8, 789
                  c.slli       s7, 22
                  sra          tp, t3, t1
                  ori          t2, a2, 1536
                  lui          s5, 1010841
                  div          s4, a5, t0
                  or           a0, a6, a1
                  ori          a7, tp, -619
                  c.and        a5, a0
                  c.li         t6, -1
                  div          s2, s9, s11
                  slt          t0, a0, s10
                  auipc        t2, 303118
                  c.mv         t3, s6
                  c.sub        a2, a1
                  sra          t5, a0, gp
                  nop
                  lui          s5, 481693
                  remu         s10, s6, s4
                  addi         t2, s2, -169
                  rem          s8, s9, a0
                  c.slli       s8, 13
                  addi         s5, s6, -199
                  c.mv         s1, t2
                  and          a1, a7, t2
                  c.lui        s8, 12
                  sltu         t1, t5, ra
                  sltu         t1, a5, t5
                  xori         s9, s1, 1507
                  srli         a0, s6, 18
                  divu         s3, t5, s11
                  mulh         t0, s3, s7
                  c.xor        a1, s0
                  c.nop
                  sra          s4, a1, s6
                  auipc        s4, 793333
                  c.xor        a1, a2
                  c.mv         tp, s6
                  c.li         s10, -1
                  c.and        a4, a4
                  c.li         s11, -1
                  c.li         s2, 21
                  slt          s1, s11, t2
                  divu         a0, a5, a0
                  divu         s3, gp, s1
                  c.addi       t4, 31
                  c.andi       s0, -1
                  mulhu        t3, t2, a1
                  c.sub        a0, a2
                  andi         s7, a3, -1740
                  c.srli       a0, 10
                  c.and        s1, a4
                  mul          s9, ra, ra
                  mulhsu       s11, a6, a7
                  andi         s5, a3, -1079
                  c.addi       t0, -1
                  slt          s7, s10, a6
                  c.add        s2, s0
                  slti         tp, t1, -1731
                  nop
                  c.and        s1, a5
                  slti         t3, a5, 490
                  c.xor        a0, a0
                  auipc        s9, 311752
                  andi         zero, s0, 920
                  div          a2, sp, a0
                  andi         t5, a3, 1766
                  sra          s0, s9, t0
                  c.andi       a2, 12
                  divu         s0, t4, zero
                  srli         s2, t6, 29
                  mul          zero, ra, a5
                  c.nop
                  sll          s10, s4, t2
                  addi         t0, s2, -1347
                  andi         zero, s9, -1353
                  sll          s4, s7, t3
                  c.or         a5, a4
                  mulh         s5, a4, t3
                  sll          a4, s4, s2
                  srl          t5, s10, s10
                  andi         s7, t2, 1070
                  remu         gp, t0, a3
                  slli         s8, a4, 14
                  mul          a2, s3, a6
                  add          t5, zero, a4
                  c.and        a1, a3
                  c.nop
                  xori         a3, tp, -1270
                  c.li         s0, 19
                  mul          s1, s2, a3
                  sltiu        gp, t1, 1720
                  mulh         s2, s11, gp
                  sub          s8, a6, ra
                  slli         s8, a1, 23
                  c.addi       t1, -1
                  c.lui        t5, 22
                  slt          s0, s0, a6
                  slli         t3, s9, 29
                  c.addi       tp, -1
                  and          a5, a1, a5
                  sll          s10, s10, t2
                  c.lui        s4, 13
                  nop
                  c.addi       t4, -1
                  and          t6, a2, t0
                  slti         tp, s11, -398
                  mulhsu       s7, a3, s1
                  mulhu        a0, sp, a1
                  add          s2, t3, a1
                  c.mv         s2, t6
                  c.add        t3, s6
                  addi         a5, a7, 439
                  and          s1, s11, t5
                  slt          s2, s2, a1
                  mulhu        t1, t3, a4
                  auipc        a5, 46169
                  andi         s2, a4, 358
                  srl          gp, gp, t5
                  sll          t3, s6, s10
                  add          s2, a6, s2
                  c.and        a4, s1
                  c.andi       a4, 11
                  nop
                  nop
                  c.addi       t1, -1
                  sra          s3, zero, s9
                  c.or         a2, a0
                  c.srai       a0, 28
                  sltu         a3, s9, s6
                  c.andi       a4, -1
                  c.addi       s10, 15
                  ori          a0, t2, -1863
                  c.and        a2, a2
                  remu         s1, a5, a4
                  slti         a1, t3, 46
                  sra          t1, t5, ra
                  or           a5, t3, a1
                  div          a4, ra, gp
                  c.nop
                  c.sub        s1, s0
                  slt          s0, s6, ra
                  auipc        zero, 463873
                  mul          t6, t1, a1
                  add          a2, t6, s9
                  srai         ra, s10, 9
                  slti         s2, ra, -733
                  srli         zero, t0, 2
                  srai         a0, tp, 2
                  c.addi       s0, 31
                  c.or         a0, s1
                  remu         s7, a5, tp
                  ori          a1, s9, 600
                  mulhu        a1, t6, a0
                  c.andi       a2, 15
                  slti         t5, t2, -313
                  sll          a0, zero, t0
                  mul          t4, s7, a0
                  or           s7, tp, a0
                  or           a3, s9, s3
                  ori          s0, tp, -626
                  xori         s1, t4, -1714
                  mulhsu       s2, a5, a6
                  mulh         s11, sp, s1
                  srai         s4, sp, 13
                  c.nop
                  divu         s10, a7, s1
                  sub          t6, t1, t2
                  c.lui        t5, 11
                  rem          a1, s9, tp
                  srai         a2, gp, 4
                  c.srai       s1, 4
                  c.nop
                  mulh         t4, s10, s7
                  slli         s4, sp, 16
                  c.lui        s8, 5
                  slli         s10, t4, 17
                  c.add        a4, a4
                  and          a4, a3, a5
                  mulhu        s10, ra, s8
                  nop
                  slti         t5, a3, 833
                  slli         s2, s2, 24
                  ori          t1, s1, -1661
                  c.add        a7, a0
                  mulh         a3, t2, s6
                  c.or         a2, a1
                  mulh         a5, t3, s7
                  lui          t5, 242752
                  srli         ra, s0, 7
                  srl          s8, t5, t1
                  c.srli       a5, 20
                  remu         t3, tp, s5
                  c.srai       a0, 15
                  srli         t5, s11, 19
                  sll          s0, t2, gp
                  remu         a0, s3, t1
                  c.srai       a5, 23
                  addi         s1, t6, -1235
                  div          s10, s1, ra
                  mulhsu       a2, s7, s3
                  rem          a4, ra, t2
                  add          s11, a3, a6
                  nop
                  andi         a4, s3, -226
                  mulhu        s10, s7, zero
                  auipc        a5, 947600
                  srli         t2, s3, 23
                  remu         s2, ra, s10
                  and          s1, t6, a7
                  mul          s2, tp, t1
                  remu         t5, sp, a4
                  addi         a7, s3, -1063
                  slli         t5, a2, 9
                  c.andi       a2, 6
                  c.li         a5, -1
                  div          t6, a0, a2
                  c.mv         a7, t3
                  div          a7, a6, a3
                  mulh         s2, ra, s5
                  auipc        gp, 951155
                  sub          t4, t2, s1
                  xori         t1, zero, 1694
                  c.mv         s4, gp
                  nop
                  c.add        t2, t3
                  slti         ra, t1, -1159
                  sltiu        s2, s2, 1697
                  srai         zero, a7, 6
                  and          t4, s8, s8
                  mulh         zero, s4, ra
                  c.xor        s1, a3
                  mulhu        s0, t5, ra
                  ori          a3, t0, -595
                  c.addi       a4, -1
                  remu         t5, a2, a7
                  c.srli       a4, 15
                  nop
                  c.srli       a1, 30
                  xori         s7, s4, 219
                  remu         a1, s6, s6
                  add          zero, s8, a2
                  and          zero, s4, s0
                  slli         s8, t5, 0
                  c.andi       a1, 16
                  c.slli       s5, 12
                  c.slli       t4, 15
                  c.sub        a5, a1
                  rem          s2, t4, a4
                  c.li         a7, -1
                  rem          zero, s10, s1
                  and          t5, a2, a7
                  mulh         s0, s11, t6
                  mulh         s1, t0, t2
                  srl          gp, a7, t5
                  ori          tp, t2, 1021
                  c.lui        s2, 19
                  c.nop
                  c.addi       s4, -1
                  ori          s3, t5, -1406
                  sltiu        s8, tp, 1153
                  c.add        tp, s5
                  divu         a2, t0, a5
                  ori          s4, t5, 66
                  mulh         zero, s9, t4
                  srai         s4, tp, 17
                  mul          zero, s6, s10
                  c.add        t2, a3
                  c.sub        a2, a0
                  remu         a5, a1, s8
                  c.lui        s0, 18
                  mulh         a7, t2, t1
                  mul          s1, s6, t1
                  c.slli       t6, 2
                  slli         s1, s8, 21
                  c.mv         t0, s10
                  and          gp, t4, a2
                  c.andi       a5, 29
                  andi         a0, a1, -1111
                  c.slli       s2, 14
                  c.srli       a5, 21
                  mulhu        s4, s10, a4
                  srai         a0, s2, 0
                  c.srai       a0, 21
                  mulh         t4, s9, tp
                  srl          s5, tp, s5
                  sra          a1, a1, s11
                  xori         s7, s9, -1717
                  slti         s0, s0, 634
                  rem          s9, s6, s0
                  sra          ra, s5, t5
                  andi         s8, ra, -1986
                  auipc        s10, 502801
                  mulh         a0, gp, s4
                  sll          t3, a0, a0
                  mul          t1, s11, a6
                  nop
                  or           t6, t6, s1
                  sll          s0, t5, s10
                  remu         t6, s5, a3
                  c.andi       a4, 1
                  slli         a7, a2, 18
                  lui          s4, 475766
                  andi         s11, a1, -1615
                  srli         zero, s2, 7
                  c.andi       a3, 29
                  addi         s3, a3, 1700
                  nop
                  andi         a7, s11, 116
                  mulhu        t4, a2, s1
                  slli         s1, a6, 22
                  ori          t0, s6, 1592
                  add          a3, t6, s2
                  slti         s5, t6, -819
                  c.srai       a3, 7
                  add          s7, t3, t0
                  xor          s3, t3, a1
                  sub          t2, t3, a6
                  c.or         s0, a4
                  srli         a3, s8, 16
                  sll          s7, t5, gp
                  c.mv         a2, s11
                  slt          a0, a2, zero
                  slli         s7, a0, 25
                  c.srai       a4, 4
                  mulhsu       s3, gp, t3
                  c.sub        a0, a1
                  sltu         s0, t6, a0
                  mulh         t1, a5, a3
                  c.lui        a1, 3
                  c.and        s0, a4
                  andi         ra, a6, 1750
                  sltiu        s2, a5, 456
                  sub          t1, s5, t4
                  c.or         a1, a1
                  c.mv         a4, t4
                  sll          t1, s4, zero
                  c.slli       s7, 31
                  nop
                  srli         t3, s1, 17
                  srl          s1, s3, s2
                  mulh         a2, a3, s11
                  c.add        gp, s10
                  c.lui        ra, 11
                  srli         s11, t3, 0
                  c.srli       a5, 12
                  add          t2, s0, sp
                  srli         a5, a6, 8
                  mulhu        s4, s4, sp
                  c.lui        s0, 16
                  ori          s8, ra, 1308
                  sltu         t2, s6, s9
                  c.or         a3, a4
                  add          t4, a1, t5
                  c.slli       s4, 1
                  auipc        zero, 246056
                  slt          zero, s5, s4
                  mulh         t4, s7, s3
                  c.mv         s0, a5
                  c.add        a7, a0
                  c.srli       a3, 16
                  xor          s4, s4, t0
                  c.nop
                  sra          s7, t3, s8
                  c.lui        a4, 8
                  sub          tp, t6, a0
                  and          t5, sp, t1
                  add          t6, s10, a3
                  c.slli       a7, 18
                  divu         a7, s11, t2
                  srl          a3, a2, gp
                  xori         t3, zero, -543
                  sll          s9, s0, tp
                  slli         a3, a7, 18
                  c.and        a5, s0
                  sll          t1, sp, t0
                  c.addi       s7, -1
                  c.li         a7, 17
                  sltu         zero, a7, s0
                  c.lui        a2, 25
                  c.add        s5, a3
                  c.sub        a1, a0
                  ori          s8, s7, 932
                  lui          s10, 1044953
                  add          t4, a2, s2
                  divu         t2, t2, gp
                  c.li         s7, -1
                  srl          t3, s6, s2
                  c.or         s0, a5
                  divu         zero, a2, a5
                  add          gp, s9, a6
                  sra          a5, s0, t0
                  slti         a3, s8, -1159
                  c.lui        gp, 7
                  c.andi       a5, -1
                  c.andi       a2, -1
                  xori         zero, s9, -1392
                  sub          a3, zero, s4
                  slti         t2, a6, 1039
                  c.andi       s0, 14
                  andi         t2, a2, 81
                  c.nop
                  and          t3, a5, a5
                  or           s4, sp, t0
                  slti         a0, gp, 1007
                  slt          s2, a1, s1
                  add          t5, zero, gp
                  remu         s10, a5, t2
                  c.and        a1, a4
                  sll          s11, s11, s8
                  c.andi       a5, -1
                  mul          s1, t2, gp
                  andi         tp, ra, -1529
                  c.mv         s2, t6
                  c.li         gp, -1
                  sll          s2, a4, t1
                  mulh         a5, s9, a6
                  srai         t2, s2, 13
                  c.mv         tp, a4
                  andi         a3, s10, 951
                  add          s2, a3, a3
                  ori          zero, gp, 1115
                  xori         a0, sp, -1406
                  c.mv         a4, s9
                  div          a0, zero, tp
                  slli         zero, a1, 25
                  srai         s5, a7, 8
                  slti         gp, s2, -1934
                  sll          ra, gp, sp
                  sltu         a5, t4, s1
                  sub          t1, t2, zero
                  srli         a2, a7, 12
                  sltu         s9, t0, a4
                  sra          t1, a4, ra
                  mulhsu       s8, t6, s9
                  and          s2, a3, t3
                  sra          t1, t0, t4
                  div          t5, t3, s9
                  c.add        t0, t1
                  c.mv         tp, s2
                  mulh         t1, t6, s9
                  c.srli       a0, 13
                  sub          a5, s0, tp
                  c.lui        s3, 9
                  c.srai       s1, 21
                  c.lui        t1, 3
                  c.xor        a0, a5
                  c.addi       a5, -1
                  mulhu        t1, s6, s1
                  slt          s2, ra, tp
                  and          tp, tp, t3
                  c.xor        s1, a1
                  mul          s0, ra, s0
                  mul          t1, s3, s5
                  add          a0, a5, s4
                  auipc        s9, 611500
                  srl          a2, zero, s5
                  srai         s2, s6, 28
                  c.srai       s0, 2
                  slt          s8, a5, s8
                  sltu         t6, s6, s2
                  sll          s9, t4, t5
                  c.andi       a2, 15
                  mulhsu       s8, a1, a7
                  c.slli       s3, 5
                  sub          s4, s7, s4
                  c.sub        s0, a4
                  srl          s8, gp, s11
                  mulh         s7, s4, t2
                  rem          t5, s4, sp
                  c.slli       a5, 11
                  add          t1, a5, s1
                  addi         s1, s8, -1553
                  c.add        s2, s7
                  c.nop
                  xori         a4, a3, -220
                  c.and        a1, s1
                  addi         t4, sp, -673
                  mul          t3, s5, a4
                  c.mv         ra, s3
                  c.mv         a0, a0
                  sll          t1, a6, sp
                  slli         a7, a2, 22
                  auipc        t1, 164559
                  c.addi       ra, -1
                  mulhu        t5, s8, s9
                  srai         gp, s5, 20
                  c.nop
                  xori         ra, s2, -1807
                  c.addi       t5, -1
                  slli         zero, t3, 7
                  c.lui        a3, 14
                  or           t1, a3, s8
                  c.andi       a5, 4
                  sra          s5, s11, gp
                  c.andi       s0, -1
                  xori         s5, s6, 1650
                  lui          t6, 41874
                  c.add        t5, s0
                  add          s3, t3, s7
                  auipc        s11, 640161
                  andi         ra, s8, -590
                  add          s4, a4, a7
                  xor          tp, s11, a7
                  c.lui        a7, 23
                  lui          a0, 835879
                  rem          s0, s3, a5
                  sll          ra, t4, t6
                  xori         s4, s7, -60
                  rem          t6, a2, s0
                  sll          a1, a7, a2
                  c.mv         gp, a3
                  srl          a3, s9, s1
                  c.li         s10, 9
                  xori         t6, s10, 1847
                  c.xor        s0, a5
                  c.srai       a1, 10
                  c.li         s4, 0
                  c.sub        a0, a0
                  auipc        t1, 910620
                  mul          t3, sp, ra
                  slti         t3, t0, -257
                  c.sub        a3, a0
                  c.add        tp, s8
                  xor          zero, s11, s1
                  c.mv         a3, s4
                  divu         s9, s8, t0
                  srli         s8, a7, 29
                  sltu         a4, a7, t3
                  srai         a7, s7, 0
                  c.mv         a7, s1
                  sll          a0, a0, a5
                  sra          a2, zero, a1
                  xor          t6, ra, s1
                  c.srli       a4, 22
                  c.and        s0, a0
                  mulhsu       t1, s8, a7
                  sub          t4, zero, s4
                  c.or         s1, a4
                  slti         s0, ra, -1683
                  c.addi       t4, -1
                  add          t2, a1, gp
                  c.nop
                  c.mv         s8, t3
                  xor          s8, s0, a5
                  addi         tp, a3, 356
                  auipc        s7, 7657
                  add          s9, s9, s9
                  slti         s4, t2, 656
                  add          t3, a1, sp
                  slli         a4, s1, 11
                  mulhu        s7, a3, t2
                  rem          a2, t6, tp
                  andi         zero, sp, 436
                  c.addi       s5, 13
                  c.li         s11, -1
                  c.srli       a3, 24
                  c.mv         s3, s11
                  sll          gp, s3, s1
                  c.sub        s0, a0
                  mul          t5, a3, t1
                  c.nop
                  and          a5, s4, s10
                  xori         s3, ra, 1857
                  rem          s4, t1, t0
                  srl          t4, sp, t2
                  slti         t5, s6, 1179
                  c.nop
                  ori          t4, t1, 1995
                  c.or         a1, a5
                  c.slli       t1, 10
                  lui          s8, 651868
                  xori         s4, a0, -1619
                  or           tp, t0, s8
                  c.mv         s7, s4
                  c.srli       a2, 24
                  c.andi       s0, 8
                  div          a2, a1, a6
                  c.srai       a2, 18
                  andi         t4, s11, -396
                  and          a2, a3, tp
                  c.mv         ra, t1
                  mulh         t5, s4, s5
                  mul          a7, t0, t0
                  c.addi       a7, 26
                  c.and        a1, a2
                  slti         t3, s3, 857
                  remu         gp, a0, s10
                  mul          s2, s2, a7
                  c.and        s0, s1
                  add          t4, t4, s11
                  slli         s9, s1, 29
                  div          t1, a2, t6
                  mulhu        s3, s10, s3
                  srl          a1, s0, s5
                  c.lui        s0, 9
                  remu         a2, s5, a0
                  c.srli       a5, 10
                  mulhu        ra, s8, ra
                  c.slli       s1, 6
                  slt          a0, s0, a7
                  srli         t3, zero, 21
                  rem          a1, a7, t0
                  or           a1, t3, s9
                  and          a5, a1, s11
                  c.srai       a1, 6
                  c.nop
                  div          s1, s9, t5
                  c.nop
                  srai         s9, s5, 23
                  addi         ra, s5, 1145
                  add          s5, s6, a0
                  mulhsu       gp, tp, gp
                  add          s10, sp, a2
                  mulh         zero, s3, tp
                  addi         a5, a7, -1193
                  div          t2, s3, a3
                  mulhsu       t2, s8, a2
                  div          a0, a4, s8
                  or           s1, gp, s10
                  c.sub        a4, a3
                  mulhu        a1, a6, tp
                  c.addi       s10, -1
                  c.srai       a1, 28
                  c.slli       s8, 10
                  c.and        a2, a0
                  mulh         t3, a5, t1
                  slti         t5, s8, -706
                  addi         tp, a3, 16
                  c.srli       a4, 5
                  c.or         a5, a4
                  c.xor        s1, a1
                  c.sub        a4, s1
                  c.mv         s8, s0
                  c.add        t4, a6
                  c.slli       s2, 28
                  c.xor        a0, a1
                  c.add        s3, s9
                  sltu         t6, a1, t3
                  c.add        s0, t3
                  slli         a4, t2, 20
                  addi         s2, a3, -242
                  sltiu        s5, s10, 1635
                  andi         a2, a6, 1221
                  srli         s4, a1, 29
                  xor          s11, a1, ra
                  or           t6, sp, s0
                  mulh         s7, a0, zero
                  c.nop
                  and          zero, a7, a3
                  mulhsu       a3, t5, a7
                  sra          s10, s3, a6
                  c.or         a4, a1
                  sltu         a4, s3, s7
                  srai         t4, s9, 18
                  c.or         a5, s0
                  xor          tp, s10, t2
                  mul          s3, t1, t2
                  nop
                  c.xor        a0, s0
                  sra          gp, gp, s8
                  mul          a1, s0, t1
                  addi         s2, s6, 1964
                  sub          a4, t1, t5
                  c.lui        s4, 10
                  c.nop
                  andi         t5, s8, 1605
                  c.slli       a7, 5
                  c.andi       s1, 16
                  div          s8, a7, t3
                  sub          tp, a5, gp
                  addi         gp, a5, -671
                  c.and        a3, a4
                  or           t1, gp, a0
                  div          s10, s0, s1
                  c.nop
                  srl          s9, a2, a7
                  sub          a1, s4, zero
                  slli         t0, s10, 7
                  c.and        s0, s0
                  rem          s3, s9, zero
                  c.srai       a3, 29
                  nop
                  div          t4, t0, tp
                  rem          a7, s5, t0
                  divu         t6, s2, sp
                  addi         s11, a6, 2029
                  c.add        tp, sp
                  nop
                  nop
                  mulhu        ra, a0, t5
                  c.and        a5, a3
                  c.and        a1, a2
                  c.and        s0, a3
                  c.srli       a3, 18
                  srai         a1, s4, 0
                  sltiu        t6, s11, -1747
                  mulh         s2, a5, s11
                  slti         t6, s4, 65
                  addi         ra, s2, 260
                  c.add        s3, a1
                  mulh         t1, t2, t6
                  c.addi       t3, 5
                  or           s11, t0, a7
                  sll          s9, s9, a5
                  sll          s9, t1, s10
                  c.sub        s0, a5
                  mul          s8, a3, s10
                  or           s0, s4, ra
                  mulhu        s2, t0, t6
                  sll          s10, a6, sp
                  mul          s1, t2, ra
                  srli         s4, s3, 5
                  c.add        t1, gp
                  c.lui        a3, 8
                  srl          t1, t0, t4
                  xor          s10, s2, a6
                  c.add        t1, s0
                  slli         t1, t5, 24
                  lui          ra, 305842
                  addi         t4, s6, 384
                  sltu         s0, a5, a7
                  remu         s0, a6, t6
                  slti         a4, s10, 933
                  or           s3, s6, sp
                  c.srai       a5, 3
                  c.srli       a4, 24
                  or           s2, t2, s9
                  c.mv         s3, s6
                  c.or         a5, s1
                  sra          a2, s6, s11
                  c.slli       t6, 16
                  c.mv         s10, t2
                  c.mv         a0, s3
                  auipc        s4, 882503
                  rem          s2, sp, s10
                  lui          a4, 37935
                  andi         s8, t5, 652
                  andi         t1, a5, -536
                  andi         s10, s8, -1371
                  mulhu        t6, t0, s3
                  slli         a7, a1, 30
                  c.srai       a3, 16
                  remu         t2, zero, t2
                  remu         gp, a4, t1
                  c.slli       s9, 12
                  auipc        t4, 407671
                  sltu         s2, t3, t0
                  c.andi       a2, 22
                  rem          a3, a0, s0
                  c.slli       a0, 4
                  or           t6, s4, t0
                  c.addi       s0, -1
                  slti         zero, a3, 397
                  c.addi       s0, -1
                  div          gp, s6, zero
                  slli         s4, t4, 19
                  andi         t2, a0, -1627
                  c.or         a1, s0
                  slti         s3, t0, 935
                  c.and        s0, s0
                  srai         s0, s1, 31
                  c.xor        s0, a0
                  andi         tp, a3, -469
                  srai         s4, a1, 30
                  srai         s5, t2, 0
                  mulhsu       s2, zero, s10
                  mulh         s0, ra, s5
                  mulh         s8, s8, s5
                  c.add        a5, s9
                  sub          t6, t4, s2
                  mulhsu       s7, t4, gp
                  c.or         a5, s1
                  slli         t4, s10, 11
                  mul          s3, t2, a7
                  xor          t6, a2, a7
                  c.and        a0, s0
                  xori         s8, s3, 872
                  slt          a4, a0, a6
                  mul          a0, s5, a0
                  c.mv         t0, s11
                  mulh         tp, zero, s11
                  divu         a7, gp, t5
                  c.sub        a0, a3
                  c.srai       a0, 17
                  c.andi       a2, -1
                  remu         gp, a3, s8
                  or           t6, s2, s7
                  c.sub        a2, a2
                  c.lui        t2, 10
                  andi         a2, t1, 2032
                  ori          t1, a3, 1731
                  mul          s8, t6, a4
                  c.slli       t2, 28
                  addi         t2, a6, 1905
                  nop
                  ori          t3, a3, -5
                  c.add        s4, tp
                  sltu         t0, ra, t3
                  rem          s3, s5, s5
                  sll          ra, s7, s9
                  c.xor        a3, a2
                  mulh         s2, a6, a4
                  mulhu        s10, t2, tp
                  or           a5, s2, t3
                  and          t5, s9, t1
                  mulhsu       t5, a3, t2
                  andi         s5, t2, -1044
                  c.add        s0, gp
                  srai         a0, a1, 28
                  c.slli       a5, 2
                  srai         ra, tp, 0
                  sltu         a3, a3, s7
                  c.slli       s0, 15
                  c.andi       a5, 27
                  sub          a1, gp, tp
                  divu         s4, s0, s3
                  auipc        a1, 615000
                  mulh         tp, a6, a7
                  add          a4, s0, ra
                  c.sub        a4, s1
                  mul          a4, gp, t5
                  sltu         t6, s9, s6
                  divu         s9, t0, t1
                  c.slli       t1, 18
                  srl          zero, a5, a5
                  remu         a2, t4, a6
                  divu         a1, a2, s0
                  c.andi       s1, -1
                  c.lui        s0, 20
                  sll          s8, a7, s4
                  lui          s1, 502603
                  xori         s5, s10, -2
                  srai         a0, a5, 24
                  srai         a2, sp, 3
                  c.or         a0, a3
                  andi         t6, a6, -1907
                  c.sub        a5, a0
                  mul          ra, s2, a7
                  slli         s3, t4, 10
                  mulhsu       s3, tp, a0
                  auipc        a7, 2226
                  mulhsu       a0, t6, ra
                  or           tp, t1, a5
                  or           t6, s2, s2
                  sub          s8, a5, t3
                  sll          t0, a4, s0
                  ori          a0, s1, -280
                  slli         t5, t0, 4
                  c.nop
                  rem          a1, t2, a5
                  c.or         a0, a4
                  mulh         s11, a2, ra
                  c.lui        s10, 6
                  add          a0, gp, s5
                  addi         zero, a1, 1502
                  c.srai       a2, 31
                  sltiu        s1, tp, 1389
                  c.li         s3, 22
                  xori         tp, a2, 1573
                  sub          t4, a7, t3
                  sra          s7, t4, t0
                  c.srai       a5, 31
                  nop
                  c.sub        a5, a5
                  mulh         t2, s9, s8
                  srli         t2, sp, 31
                  sll          a7, t5, s4
                  c.add        a0, a4
                  srl          a7, t0, s2
                  auipc        t2, 434525
                  and          s1, a6, t4
                  c.li         s1, -1
                  c.addi       s1, 17
                  sltu         t1, a5, a7
                  c.srai       s0, 7
                  div          a1, a3, a3
                  c.and        a3, a4
                  addi         t4, sp, -1966
                  c.li         s1, -1
                  srl          s0, sp, t1
                  sra          t1, t6, s8
                  c.addi       t6, -1
                  mulh         s0, t2, a7
                  slli         s11, t0, 24
                  srai         a7, t0, 20
                  divu         t2, t5, s9
                  divu         s4, s10, tp
                  mulhsu       t6, s2, zero
                  rem          s1, a1, s4
                  c.srli       a4, 22
                  slt          s7, s10, s5
                  c.andi       s0, 22
                  ori          s11, s11, 417
                  c.addi       s4, 15
                  c.and        a1, a1
                  remu         t1, s8, a0
                  c.mv         t1, tp
                  sltiu        s11, sp, 1826
                  slli         a7, s4, 20
                  c.lui        a7, 24
                  c.add        s5, t3
                  c.slli       ra, 16
                  lui          s2, 254889
                  rem          a4, s4, t2
                  addi         a3, t6, 680
                  mulhsu       s9, s0, a0
                  c.srai       a0, 8
                  divu         a5, t5, s4
                  mulhu        zero, tp, s6
                  xor          a4, a0, s4
                  ori          ra, s9, -1707
                  lui          a2, 584489
                  andi         a3, a1, -1301
                  divu         zero, a3, s7
                  div          s2, a6, a3
                  ori          s9, s6, -717
                  lui          s8, 463328
                  c.mv         t2, s5
                  c.andi       a3, -1
                  mul          t2, sp, a4
                  mulhsu       a7, s2, s6
                  c.li         s4, -1
                  c.and        a0, s1
                  xor          a5, zero, a1
                  add          s0, s9, s9
                  addi         s3, s9, -1707
                  slli         s1, s2, 16
                  ori          s10, s2, 131
                  rem          s10, gp, ra
                  c.mv         s4, a4
                  sltiu        a7, t6, 74
                  c.nop
                  mulh         s0, s2, s10
                  auipc        t1, 905071
                  sra          a5, s3, gp
                  c.or         a1, a0
                  c.li         s0, 30
                  andi         t0, t1, 1639
                  xori         s0, s3, 1435
                  sra          a2, a6, s6
                  auipc        t0, 1016467
                  c.sub        a3, a1
                  c.andi       a3, 0
                  sra          t1, gp, sp
                  slti         s2, a6, -1414
                  divu         a0, s0, t4
                  andi         a7, a1, -165
                  rem          a4, gp, s11
                  sub          t1, t6, s8
                  xori         a7, s1, -4
                  c.andi       a4, 19
                  divu         t4, t2, s7
                  c.addi       t0, -1
                  c.li         a1, 22
                  mul          s10, a2, s5
                  ori          a3, s2, -1962
                  mulh         a1, a4, ra
                  remu         s7, s10, tp
                  nop
                  srai         a4, s1, 19
                  mul          a5, a6, s2
                  xori         a1, a4, -1634
                  slti         gp, s4, -425
                  c.slli       ra, 31
                  c.addi       t2, -1
                  c.and        a0, a2
                  sltiu        t0, s3, -297
                  lui          s1, 141064
                  c.or         a0, s1
                  c.lui        ra, 19
                  c.nop
                  c.srli       s1, 9
                  c.srli       a3, 10
                  c.add        s4, s2
                  divu         t1, a0, a7
                  c.lui        a7, 12
                  sltiu        a3, gp, -1523
                  add          t1, zero, s11
                  andi         ra, a1, -1268
                  c.slli       s1, 9
                  sltiu        s9, zero, 1244
                  srl          s2, t5, a0
                  c.xor        a2, s1
                  srai         a0, ra, 19
                  auipc        gp, 500333
                  slti         s5, t6, 1399
                  c.and        s1, a3
                  c.xor        a0, a5
                  slti         a2, a2, 903
                  c.li         t2, -1
                  c.or         a1, s1
                  c.andi       s1, -1
                  c.srai       s1, 27
                  c.li         t2, 29
                  srli         t2, a0, 9
                  srai         s0, a6, 22
                  c.slli       s8, 12
                  c.add        s0, s11
                  c.srli       a3, 15
                  xor          t3, a2, s0
                  sltiu        t5, s0, -1220
                  c.or         s1, a1
                  c.nop
                  srai         s9, s10, 26
                  mulh         s7, t6, t5
                  slti         a4, t4, 749
                  srli         s11, zero, 22
                  c.srli       a1, 12
                  and          s10, tp, s6
                  c.add        a7, a7
                  c.and        a3, s1
                  sll          s9, s4, a4
                  c.sub        a0, a2
                  slt          s9, s5, sp
                  c.xor        a5, a5
                  c.srai       a5, 25
                  lui          s9, 416900
                  mulhsu       s1, a6, s11
                  slli         s5, t0, 6
                  c.andi       a5, 11
                  sll          a2, s7, a0
                  lui          a4, 430798
                  c.li         s8, 3
                  c.lui        s3, 11
                  mulhu        s5, s3, a0
                  addi         t3, a7, -1269
                  c.xor        s0, s0
                  c.sub        a2, a5
                  or           s5, a7, s5
                  rem          gp, s2, a4
                  srai         t2, a4, 18
                  srli         s9, s10, 4
                  slti         tp, s5, 1547
                  sub          t0, a0, a6
                  c.andi       a1, 11
                  xor          s0, s4, a0
                  addi         a1, a2, -1402
                  c.addi       s0, -1
                  srai         s1, gp, 24
                  andi         t1, s5, 1805
                  sub          t1, s9, a6
                  c.addi       a4, 28
                  c.mv         a2, t1
                  sub          a5, s2, a6
                  mulhsu       t6, s4, s10
                  or           a7, a6, a6
                  sra          a1, s2, a5
                  c.nop
                  auipc        s4, 364502
                  slt          s2, s3, t4
                  c.and        a1, s0
                  rem          t2, a3, sp
                  srl          t5, a3, t0
                  srai         t1, a4, 17
                  c.srli       a0, 28
                  c.andi       a1, 29
                  lui          s8, 826488
                  c.nop
                  c.mv         s4, a3
                  lui          s8, 398955
                  slti         s4, s3, -1277
                  srai         s11, zero, 23
                  or           s7, s10, s2
                  c.andi       a5, -1
                  slti         gp, t0, -1283
                  c.or         a0, s1
                  sltiu        a4, a2, 1920
                  mulh         s4, s4, t5
                  srai         s4, a0, 7
                  sltu         t5, a7, sp
                  mul          s8, sp, sp
                  c.lui        s0, 6
                  sltu         tp, a4, tp
                  c.lui        a7, 15
                  slti         s1, ra, 1680
                  slti         t3, gp, 871
                  c.mv         a2, s0
                  sltiu        a1, t1, 508
                  sra          t6, s0, a4
                  c.srli       a2, 13
                  c.andi       s0, 29
                  srai         t2, ra, 7
                  slti         s2, a1, 1967
                  sltu         t5, ra, s3
                  andi         s0, a7, 241
                  and          a0, a2, a3
                  ori          s11, s4, 1316
                  sltu         t5, a5, s6
                  srli         s7, zero, 16
                  divu         s3, s10, s1
                  srl          t6, a3, s1
                  c.sub        a1, a4
                  srl          a0, ra, s7
                  srl          t3, a1, a3
                  slt          a2, a0, t4
                  andi         s9, sp, 607
                  nop
                  c.srli       a1, 29
                  and          t4, a7, ra
                  c.and        a2, a3
                  add          t2, a5, zero
                  or           t1, s8, t5
                  c.or         a3, a1
                  slli         s11, tp, 23
                  c.srli       a2, 11
                  srai         s0, s5, 22
                  c.srai       a5, 17
                  or           t5, s9, ra
                  c.lui        s8, 17
                  c.li         a1, -1
                  c.mv         a7, s4
                  c.or         a4, a3
                  nop
                  sub          s3, sp, a4
                  mulhu        s8, a0, t6
                  c.li         a4, -1
                  srli         t5, s4, 28
                  c.slli       ra, 19
                  div          a1, a3, t6
                  divu         t3, t1, s6
                  rem          a7, gp, t5
                  ori          s5, a4, -1540
                  c.add        s7, s2
                  mulh         zero, a5, a7
                  slt          s2, ra, s8
                  slli         s10, a7, 25
                  c.lui        s4, 11
                  c.or         s0, s0
                  xor          t5, s7, sp
                  rem          t6, s9, s4
                  auipc        t3, 912589
                  sltu         s1, t1, s4
                  andi         a7, s6, -99
                  and          s0, t0, a6
                  mul          a5, s7, gp
                  remu         t0, s8, s11
                  srli         t1, s1, 2
                  slt          a7, t0, t3
                  ori          a5, t0, 1876
                  sub          s2, s9, s1
                  srl          s4, t4, s7
                  divu         a1, s2, a0
                  sub          zero, t6, s8
                  c.nop
                  c.sub        a2, s0
                  c.nop
                  mul          a7, a5, s6
                  c.and        a4, a2
                  sll          s2, t0, s8
                  addi         zero, s6, -84
                  c.xor        a3, a5
                  nop
                  mulhsu       s4, s6, s1
                  srai         a2, s1, 0
                  srai         s1, t3, 31
                  c.lui        s2, 9
                  addi         tp, s5, 867
                  c.mv         ra, a5
                  srl          s2, s3, a0
                  mulh         t1, ra, t1
                  sra          a4, s6, a2
                  add          s0, s0, s4
                  c.xor        a5, a3
                  sll          a4, s3, t3
                  addi         gp, s9, -785
                  div          a4, ra, t5
                  mul          a4, s1, s6
                  divu         gp, s8, s9
                  auipc        a1, 926373
                  andi         s11, sp, -1302
                  mulhsu       t0, s7, a4
                  nop
                  c.sub        s1, s1
                  c.lui        t0, 22
                  divu         zero, s8, t2
                  add          zero, t4, s5
                  slli         gp, s4, 30
                  c.srli       s1, 28
                  lui          s1, 947658
                  rem          tp, tp, t4
                  c.addi       t1, -1
                  xor          s2, a2, a1
                  c.and        a4, a3
                  mulhu        s7, zero, s1
                  c.andi       s0, -1
                  slli         t2, a1, 11
                  rem          s5, s7, s8
                  or           t1, s11, s2
                  c.sub        a5, s0
                  slli         a0, ra, 17
                  c.add        a1, a7
                  ori          t4, s3, 2001
                  mulhu        s8, tp, tp
                  mulhsu       t1, s0, sp
                  auipc        t2, 31475
                  and          t6, gp, s0
                  c.or         s1, s0
                  ori          s5, s6, -483
                  nop
                  srli         t1, s3, 0
                  sltiu        tp, sp, 764
                  c.addi       t1, -1
                  c.srli       s1, 6
                  c.addi       s10, 30
                  addi         a5, s10, 901
                  remu         s4, a3, a1
                  c.sub        a2, a0
                  sltiu        a1, s0, 1278
                  mulh         t3, s11, a5
                  xor          s4, s5, ra
                  ori          s10, t1, 1990
                  sra          a7, s11, s1
                  or           t5, t1, a6
                  andi         s8, a1, 1451
                  srl          a2, t2, s10
                  c.srli       a5, 11
                  mulh         s1, a5, gp
                  nop
                  mulh         s4, s2, t0
                  sltu         s7, a0, s11
                  xori         t0, a1, 403
                  c.sub        s0, a3
                  c.mv         s0, t1
                  c.or         a0, s1
                  or           a3, s4, s8
                  xor          t0, tp, s5
                  c.andi       s1, -1
                  c.sub        a0, a3
                  xor          s3, s7, gp
                  xor          tp, gp, s7
                  divu         s11, ra, zero
                  srl          s1, gp, s11
                  mulhsu       a3, s3, s1
                  remu         t2, zero, s3
                  c.nop
                  mulhu        t6, sp, gp
                  c.sub        a3, a0
                  div          s0, s2, a5
                  xor          a0, t3, sp
                  c.and        a5, a2
                  sll          t3, a4, sp
                  c.slli       t3, 17
                  slti         tp, zero, 1491
                  div          a1, sp, a7
                  slt          s11, t2, t3
                  c.lui        a1, 5
                  ori          s11, t6, -1187
                  c.srli       s1, 20
                  c.mv         s7, t3
                  andi         a2, s5, 1927
                  ori          t5, a0, -1572
                  c.li         tp, -1
                  mulh         a1, s11, tp
                  xor          s4, s6, sp
                  sra          a3, s6, a6
                  divu         a1, s5, a3
                  sltiu        s5, t6, -1350
                  c.or         a5, s1
                  slti         t4, s6, 753
                  auipc        t1, 76203
                  remu         s9, a3, s0
                  mulhu        a1, sp, s3
                  remu         t0, a2, s11
                  xori         ra, a6, 1883
                  nop
                  nop
                  c.xor        a1, a2
                  slt          t6, t2, gp
                  srai         a5, a3, 3
                  sub          gp, s10, s4
                  rem          s3, tp, a3
                  srli         s1, t5, 22
                  c.add        t2, s4
                  ori          s11, a6, 1333
                  divu         s1, s5, t5
                  lui          a5, 582146
                  addi         a3, a1, -114
                  div          t2, t1, s8
                  c.srai       a3, 14
                  srai         ra, t4, 12
                  xor          t4, a1, s2
                  and          zero, t1, ra
                  slli         s2, t0, 14
                  sltu         tp, s11, s11
                  slli         s11, s11, 7
                  mulhsu       t1, t5, ra
                  remu         tp, t4, a6
                  sltu         t3, gp, t6
                  c.srai       a1, 8
                  c.li         s9, 17
                  c.add        s1, s9
                  sltiu        t1, s3, -875
                  mul          gp, s5, a0
                  divu         tp, s0, a1
                  remu         a4, a5, s3
                  c.add        s5, s6
                  auipc        a0, 55603
                  c.sub        a1, a3
                  srl          t4, s2, a4
                  sra          a5, s9, t0
                  c.li         gp, 29
                  auipc        s2, 400702
                  ori          ra, t4, -1338
                  sub          t5, s8, s5
                  xor          zero, gp, a4
                  srl          ra, a1, a5
                  slt          t2, s3, a1
                  c.sub        a1, s1
                  c.sub        s0, a5
                  srai         t1, t4, 15
                  remu         a3, t6, sp
                  slti         s2, s6, -1732
                  sra          s7, t0, gp
                  addi         a1, a4, -279
                  srli         s5, t5, 4
                  c.nop
                  c.slli       a0, 22
                  c.add        t3, s7
                  mul          t6, s2, t5
                  or           t5, ra, t5
                  nop
                  srai         s0, s6, 12
                  c.sub        a5, s1
                  srl          s4, s4, s1
                  lui          s3, 450457
                  c.addi       s7, -1
                  slt          tp, a5, a4
                  c.slli       a5, 26
                  c.and        a5, a5
                  xor          t0, t3, t3
                  sltiu        s7, zero, 189
                  c.add        tp, s5
                  srai         a5, s8, 16
                  andi         t1, a7, -611
                  c.addi       t0, -1
                  c.addi       t6, -1
                  c.nop
                  slt          zero, s11, t2
                  c.or         a0, a1
                  c.or         a4, a2
                  c.and        a5, a0
                  ori          s10, t1, -1947
                  rem          s4, tp, a6
                  mul          zero, s6, s1
                  add          s8, ra, a0
                  remu         s5, s11, s11
                  remu         s2, sp, a3
                  xor          s8, s9, t6
                  addi         s11, t6, 1319
                  slti         a1, s10, -393
                  srai         t6, ra, 19
                  c.sub        a5, a0
                  remu         s11, a0, s9
                  nop
                  div          t0, a5, s8
                  nop
                  c.lui        s10, 24
                  mulh         gp, t6, a3
                  srai         s0, a7, 18
                  sub          t5, t1, s8
                  sra          a1, t3, t4
                  c.lui        t5, 8
                  c.nop
                  c.sub        a1, a3
                  slli         t1, t2, 24
                  c.li         a0, -1
                  c.andi       a1, 24
                  slti         s1, t5, -1238
                  andi         a0, zero, -542
                  xori         t1, t1, 1098
                  rem          tp, t0, s10
                  add          t6, s2, s1
                  c.or         s1, a4
                  sll          t1, a6, s9
                  xori         t6, t2, 751
                  c.mv         s10, a2
                  sra          s0, t4, s9
                  c.xor        a5, a1
                  slli         s4, s7, 8
                  lui          s7, 637844
                  sltiu        t2, t2, -1829
                  sra          t2, a5, t4
                  auipc        a0, 743973
                  c.slli       s4, 30
                  c.lui        t2, 13
                  sub          zero, t3, tp
                  sll          s8, zero, tp
                  nop
                  c.addi       a3, 5
                  rem          gp, sp, t6
                  nop
                  mulh         s8, a5, a5
                  c.slli       gp, 20
                  auipc        s3, 737622
                  c.srli       s0, 25
                  srli         s4, a1, 11
                  slt          s10, s2, s6
                  rem          s5, s5, t0
                  add          zero, s7, t1
                  srli         s5, s8, 28
                  rem          a1, s5, t4
                  c.slli       ra, 2
                  and          a1, a3, s8
                  c.srli       s0, 25
                  c.li         s4, 17
                  mulhsu       s7, t5, a5
                  add          t3, s2, t4
                  addi         gp, a3, 621
                  ori          s11, a4, 1230
                  slli         t5, a2, 2
                  lui          t4, 465104
                  c.and        a0, a2
                  add          gp, s11, s2
                  c.slli       ra, 1
                  rem          s4, s6, a6
                  xori         s9, a4, -1330
                  ori          s2, s2, 1877
                  c.and        a2, a3
                  c.and        a4, a3
                  and          a4, s9, s6
                  or           a2, t1, s11
                  mul          t6, s9, s10
                  c.lui        a5, 9
                  srli         a2, a2, 2
                  xor          s5, s1, t5
                  andi         s11, t3, 1143
                  and          t3, tp, s8
                  c.add        gp, a1
                  mul          s10, s10, s9
                  rem          s7, t3, a5
                  mulhsu       s10, t3, a6
                  sltiu        a0, t0, 107
                  srai         t3, t1, 27
                  rem          s11, t2, s7
                  mulhu        ra, t4, s1
                  c.slli       s8, 27
                  sub          a0, s6, a3
                  srai         s9, s9, 17
                  mulhsu       s9, a5, t6
                  mulhu        a7, s5, s7
                  or           s5, ra, s4
                  c.addi       a5, 29
                  sll          ra, s11, s11
                  sub          s11, a3, gp
                  c.srai       a0, 23
                  c.add        a7, s6
                  srai         t0, t1, 1
                  mulhsu       a2, a1, a1
                  sltiu        t2, t5, 125
                  mulh         s11, s10, a0
                  ori          a1, s11, -733
                  mulh         s3, a4, zero
                  srli         t0, s7, 25
                  mulh         a0, ra, a5
                  srai         tp, a7, 15
                  c.addi       s10, 9
                  and          s0, a1, a5
                  slt          s8, a3, t1
                  c.srai       a3, 5
                  mulhsu       a1, a1, gp
                  c.or         a2, s0
                  c.and        a3, a5
                  divu         s7, s0, a6
                  c.li         a0, 12
                  sub          a4, a0, s5
                  slt          gp, s9, t0
                  srli         s3, t6, 12
                  or           a5, s1, s11
                  sra          a1, t6, t1
                  c.andi       s0, -1
                  slli         s8, gp, 14
                  c.slli       t0, 16
                  and          zero, t0, a7
                  lui          s2, 84015
                  c.and        a5, s1
                  c.addi       tp, -1
                  sltu         zero, t1, s5
                  remu         t6, ra, sp
                  slli         a5, t4, 14
                  divu         s10, s1, gp
                  srli         a3, t5, 15
                  c.mv         t4, t2
                  slli         t2, s6, 18
                  mul          t3, a6, ra
                  sub          s4, t6, a0
                  mul          s10, t4, s10
                  c.srai       a2, 9
                  mulhu        s11, s4, t2
                  c.lui        s8, 16
                  xori         a0, a0, 575
                  mulhu        s1, t3, t1
                  mulhsu       t4, s11, s10
                  sra          s4, s9, s4
                  andi         s9, s9, -617
                  c.mv         t3, a6
                  c.lui        t4, 18
                  ori          a2, s2, -23
                  c.addi       s8, -1
                  c.or         s1, a2
                  slt          a1, s8, s0
                  divu         s1, t2, s0
                  and          ra, a4, ra
                  andi         s9, sp, 332
                  slli         s8, a4, 24
                  srli         s3, s3, 23
                  c.nop
                  c.lui        s1, 3
                  c.sub        s0, a1
                  srai         a2, ra, 18
                  nop
                  srai         s0, a7, 6
                  c.or         s1, s1
                  c.add        s5, s6
                  xor          a7, a6, ra
                  slt          t5, sp, zero
                  mul          s2, s11, a5
                  c.or         s0, s0
                  nop
                  xori         s8, zero, 30
                  ori          s4, s7, 745
                  xor          s1, t4, ra
                  mul          a2, t2, zero
                  c.li         t0, 21
                  or           s5, tp, a7
                  mul          s10, gp, ra
                  rem          s11, gp, s6
                  c.or         a1, a5
                  srai         s4, s7, 18
                  c.sub        a2, a5
                  addi         t6, s10, 1619
                  andi         s4, gp, -907
                  c.or         a4, a0
                  rem          a0, s6, zero
                  sltiu        t5, s9, -309
                  c.srai       a3, 19
                  c.li         a5, 26
                  nop
                  slti         a2, s2, 1632
                  and          a7, a0, gp
                  slli         s9, a0, 18
                  mulhu        s0, s8, ra
                  remu         a0, t0, sp
                  mul          s2, a1, s6
                  c.and        s1, a4
                  div          a3, a3, t5
                  mul          s2, t3, t6
                  c.lui        t2, 26
                  nop
                  c.mv         t5, t4
                  sltu         t6, a3, t0
                  and          s2, gp, s1
                  add          s3, s4, t0
                  srli         t2, a5, 5
                  and          s9, s4, s10
                  c.lui        s1, 31
                  srli         s5, a2, 31
                  srl          s0, t3, zero
                  xor          s8, a6, tp
                  slt          a0, a5, s2
                  mul          a3, s5, a0
                  slt          gp, s11, s10
                  mulhu        s10, s2, t5
                  mulh         s2, a2, t6
                  sub          s9, s5, s3
                  nop
                  c.lui        a4, 10
                  xori         t1, a0, -1866
                  sltu         s0, s9, a3
                  auipc        s4, 304048
                  auipc        s2, 438882
                  c.srli       a4, 2
                  c.sub        a4, a3
                  divu         s4, s7, gp
                  addi         t2, t3, -1515
                  c.or         a5, a3
                  c.or         s1, s1
                  srli         ra, a1, 27
                  mulhu        s3, s11, t3
                  c.addi       a7, -1
                  nop
                  srai         t6, s7, 11
                  lui          ra, 910553
                  c.srli       a4, 25
                  c.and        a2, a3
                  mulhsu       s5, t1, t6
                  c.xor        a4, a4
                  c.and        a1, a2
                  srai         t1, s0, 16
                  slt          s8, a5, sp
                  sltiu        gp, s3, -995
                  rem          a7, t6, s8
                  sltiu        a4, s6, 1869
                  sub          t5, t2, s8
                  addi         ra, a5, 1757
                  nop
                  div          zero, ra, a1
                  addi         t6, s9, 1837
                  sltiu        s1, a0, 218
                  mulhu        a0, a2, a0
                  andi         a2, s9, -628
                  srl          a0, a6, s2
                  or           t5, sp, t1
                  sll          s7, s9, a1
                  c.nop
                  c.or         a1, a0
                  addi         t1, t4, -725
                  mulh         gp, t1, s6
                  divu         a4, tp, a5
                  sll          a0, ra, sp
                  rem          t5, s8, s1
                  srai         s2, t3, 29
                  xori         a1, s1, 345
                  c.mv         t4, a3
                  srl          t2, t5, s9
                  c.mv         s11, s1
                  remu         s11, a1, a0
                  auipc        s4, 744632
                  sll          t5, a3, s6
                  c.add        s2, sp
                  sltiu        s10, tp, 522
                  c.srai       s1, 9
                  sltu         t1, t2, s3
                  sltiu        ra, t4, 547
                  slti         s3, zero, 529
                  c.andi       a2, -1
                  sltu         t3, s10, tp
                  sra          a7, s0, t2
                  slti         ra, s8, -795
                  and          a5, s4, s10
                  lui          zero, 361173
                  c.nop
                  sltu         s8, a5, s8
                  ori          s11, s0, 1798
                  c.slli       t2, 11
                  srli         a7, t6, 18
                  lui          t1, 1009298
                  lui          a1, 824482
                  c.and        a3, a2
                  c.sub        a4, a1
                  rem          s1, t0, s9
                  c.li         a2, -1
                  c.xor        a1, a2
                  sll          tp, a4, a5
                  remu         a5, s10, s5
                  srli         s8, a0, 30
                  c.mv         s7, sp
                  c.andi       a4, 11
                  div          t1, a4, gp
                  srl          a5, s11, s3
                  rem          s7, t0, a3
                  add          s9, s7, s0
                  div          s9, a3, s3
                  mulhsu       t3, a5, a4
                  c.lui        t0, 19
                  nop
                  auipc        s10, 842263
                  srai         t3, s3, 1
                  sll          gp, a7, a1
                  c.xor        a0, s0
                  c.srli       s1, 17
                  slti         t5, ra, -186
                  c.slli       ra, 16
                  c.mv         s2, a6
                  c.srli       s0, 20
                  slt          s1, a0, sp
                  sltu         a1, a7, s8
                  sltiu        zero, s11, -1011
                  c.or         s1, a0
                  c.mv         s9, a1
                  or           s9, t4, zero
                  sltu         a4, a6, a5
                  or           ra, t0, s8
                  addi         s3, sp, 374
                  or           t3, a7, zero
                  c.srai       a2, 18
                  c.andi       a5, -1
                  sltiu        t1, a5, -1497
                  addi         s3, s8, 1485
                  andi         s4, s4, -765
                  c.or         a0, s1
                  remu         a3, a4, zero
                  divu         t5, a3, t5
                  xori         s7, s6, 1806
                  nop
                  c.add        t0, s10
                  c.xor        a1, a4
                  c.slli       s10, 24
                  c.add        s3, t5
                  div          t6, s9, sp
                  sltiu        a0, s5, -1888
                  c.add        tp, t5
                  srl          tp, a6, a7
                  sll          a7, s6, s2
                  c.srai       a5, 29
                  slti         s9, s8, -1672
                  srl          tp, s3, s6
                  c.or         a3, a2
                  rem          ra, t0, s5
                  rem          a7, a6, s8
                  c.add        a4, t5
                  c.lui        s2, 6
                  xor          t4, a0, s7
                  c.andi       a2, 19
                  xor          ra, s2, s8
                  c.addi       ra, 20
                  c.mv         a3, s7
                  c.or         s1, s1
                  slti         s4, t6, 1530
                  divu         s1, s0, s8
                  mul          s4, gp, gp
                  srli         a2, zero, 30
                  c.li         ra, -1
                  c.and        s1, s1
                  c.lui        t6, 16
                  c.or         a4, a5
                  addi         ra, t2, -1451
                  c.andi       a2, 19
                  srai         s11, a3, 13
                  slli         t3, t5, 17
                  slli         a0, a0, 23
                  srl          a7, s11, zero
                  div          s9, t2, s3
                  sltu         s10, t2, a0
                  srai         zero, s5, 7
                  nop
                  remu         a1, a2, zero
                  c.nop
                  srai         s10, a3, 22
                  and          t0, a1, tp
                  xori         t1, s10, 722
                  auipc        t6, 1007527
                  c.and        a5, a4
                  sub          a0, s10, zero
                  mulhu        s4, t1, t4
                  sll          zero, tp, a2
                  c.add        a5, t4
                  nop
                  c.addi       t1, -1
                  slt          t0, tp, sp
                  c.and        a4, s1
                  srl          s3, s5, s2
                  xori         s10, tp, 1164
                  c.add        a0, t0
                  ori          s9, t6, 929
                  slli         gp, a6, 25
                  div          s11, t6, a7
                  c.mv         a7, s10
                  lui          t1, 536591
                  slt          a0, s1, s9
                  srl          zero, s11, s1
                  andi         s5, a6, -1904
                  c.slli       t5, 15
                  c.or         a2, a0
                  c.li         a4, -1
                  c.nop
                  c.lui        s2, 18
                  c.slli       s9, 18
                  c.xor        s0, s1
                  srli         t0, tp, 10
                  srl          s1, a1, s7
                  c.and        a2, a4
                  c.nop
                  mulhu        a4, s10, a6
                  srl          tp, s9, tp
                  mul          t4, s0, s7
                  srli         s5, s6, 16
                  c.slli       s0, 15
                  c.or         s1, a5
                  rem          s7, zero, t2
                  c.srli       s1, 11
                  addi         s9, s11, -807
                  srli         t2, a4, 4
                  remu         tp, a7, s5
                  or           t1, t3, ra
                  c.and        a3, a2
                  sra          a3, a2, s5
                  srl          a7, zero, gp
                  xor          a0, t4, s3
                  c.add        t5, a1
                  mulhsu       a7, tp, s9
                  c.slli       tp, 20
                  mulhsu       s8, tp, a0
                  srai         s8, a2, 18
                  or           t4, zero, s11
                  sltu         a4, a3, s9
                  divu         tp, gp, t6
                  sltiu        s11, s2, 1381
                  slti         s3, a7, 461
                  lui          a3, 989096
                  mulhsu       t5, t2, gp
                  xori         a0, a2, -1420
                  slli         ra, t5, 28
                  ori          a0, tp, -635
                  c.sub        a0, a1
                  c.mv         s11, t0
                  sltu         s7, t5, a6
                  slti         t5, s2, -960
                  ori          s2, s3, -859
                  sltu         s4, s8, s7
                  c.xor        a3, a2
                  c.mv         ra, s7
                  and          s1, a4, s1
                  mulhsu       gp, s4, s7
                  rem          a2, s7, s4
                  divu         gp, a7, a3
                  sll          s5, t0, a3
                  srai         s10, s2, 4
                  remu         s4, s4, a2
                  mulhsu       a0, a6, s9
                  div          s4, zero, t5
                  c.add        t3, t3
                  sltu         s4, a0, ra
                  srai         a2, t6, 22
                  divu         zero, t0, sp
                  xori         t4, s10, -1168
                  mulh         t0, s10, s11
                  c.xor        a3, a3
                  c.andi       a2, 11
                  c.addi       t5, -1
                  c.slli       gp, 26
                  c.add        s2, s1
                  sltiu        s9, t3, 1939
                  srai         a7, s7, 14
                  mulhsu       a4, tp, s1
                  sub          s5, t0, s11
                  or           t5, a5, a4
                  c.mv         t3, a7
                  srai         a4, s5, 21
                  c.and        a5, a0
                  c.andi       a5, 3
                  ori          s3, s2, -1854
                  c.xor        a3, a5
                  and          a1, tp, t0
                  c.mv         a3, s3
                  c.andi       a5, 26
                  srai         zero, t3, 20
                  c.srli       a3, 9
                  c.add        t5, s1
                  mulhu        a3, a3, ra
                  rem          s9, zero, s10
                  nop
                  slli         a3, a1, 30
                  add          t5, ra, s2
                  c.or         a2, a0
                  c.sub        a0, a3
                  srli         a2, gp, 25
                  srl          t4, s5, s3
                  mulh         t2, t2, t1
                  slti         s10, a5, 1074
                  slt          zero, t1, a6
                  mulhu        s1, t4, s11
                  lui          a4, 990270
                  c.or         s1, a5
                  rem          a1, a1, s8
                  sll          zero, s5, a3
                  sra          t1, s6, tp
                  srai         t1, t5, 0
                  srli         s0, a5, 30
                  c.sub        a3, a2
                  mul          s8, t2, t6
                  c.srai       s1, 27
                  nop
                  sltiu        t4, s5, 805
                  auipc        a5, 870398
                  and          tp, s5, t4
                  and          s8, s9, s6
                  mulhu        s4, gp, gp
                  nop
                  ori          ra, s0, -207
                  sra          t3, s6, zero
                  c.xor        a4, s1
                  slt          a0, s8, s1
                  c.lui        s9, 16
                  c.slli       t6, 9
                  mulhu        t6, s7, a6
                  c.mv         a4, s3
                  slli         a7, t4, 4
                  c.xor        a0, s1
                  slt          s3, s10, s9
                  mulh         t3, a2, s8
                  addi         s7, t0, -590
                  lui          t4, 323510
                  mul          ra, a5, s8
                  addi         a5, t4, 478
                  mul          s5, s2, gp
                  div          s4, s9, t0
                  and          a7, a6, s0
                  c.srai       a1, 23
                  c.xor        a4, a2
                  and          s7, s2, s9
                  mulhsu       t6, t0, a5
                  slti         zero, a4, -45
                  c.add        s4, t5
                  c.nop
                  remu         gp, s6, s3
                  sra          tp, s0, s2
                  c.srli       a0, 10
                  c.srai       a5, 15
                  c.add        s0, s1
                  divu         s0, t0, t2
                  c.and        a5, s0
                  addi         a2, s10, -1857
                  sll          gp, a7, a6
                  c.add        gp, a6
                  c.li         s2, 19
                  c.andi       s0, 30
                  c.slli       s0, 26
                  c.and        s1, a3
                  ori          ra, a0, -862
                  srl          t6, s3, s0
                  srl          t2, t5, t4
                  c.xor        a3, a4
                  or           s8, s2, gp
                  div          a1, tp, s3
                  srai         s10, s0, 24
                  c.srli       s0, 1
                  c.andi       a2, 21
                  or           t4, s10, s6
                  c.srai       a1, 27
                  mul          t0, a5, ra
                  slti         t2, a7, 887
                  c.sub        a2, a4
                  and          t0, t0, t2
                  slt          s11, sp, t5
                  auipc        t1, 745069
                  slt          t0, a6, a1
                  c.nop
                  xor          zero, t4, sp
                  c.addi       s5, -1
                  sltu         a5, s2, a4
                  c.nop
                  c.or         a5, a1
                  mul          s8, s7, t0
                  c.xor        a0, a1
                  rem          t0, gp, t4
                  sub          s2, s8, s6
                  mulhsu       s4, s6, s7
                  ori          t6, s3, 1037
                  mulhsu       a0, sp, ra
                  sll          s4, s9, s11
                  rem          s0, a1, a7
                  c.sub        a2, a5
                  slti         s0, tp, -1612
                  srai         gp, t2, 23
                  nop
                  andi         t4, a0, 308
                  slt          t4, zero, ra
                  rem          a0, s2, a1
                  auipc        s1, 679332
                  slti         a5, a3, 1470
                  mulh         gp, t1, a1
                  nop
                  auipc        zero, 117442
                  c.srli       a3, 10
                  c.add        t4, t3
                  rem          a1, t4, a4
                  divu         t2, t6, s4
                  slti         s8, a2, 1479
                  mulh         zero, a4, s9
                  remu         s5, t1, a2
                  or           t4, s1, s10
                  sltiu        a4, t0, 32
                  c.lui        t1, 16
                  slli         a5, s11, 11
                  nop
                  c.addi       t4, -1
                  c.sub        a1, a3
                  c.andi       a4, 12
                  srli         t1, ra, 11
                  mulhu        a1, t0, sp
                  c.addi       s1, 18
                  and          t5, s9, s1
                  c.srai       a4, 20
                  c.lui        t2, 25
                  c.andi       a0, 31
                  sra          a1, s11, a1
                  sub          ra, t3, a0
                  addi         s2, s2, 2032
                  c.nop
                  c.srai       a3, 3
                  xori         t1, a0, -389
                  c.sub        a1, a1
                  xor          a4, a6, s5
                  sltiu        s2, t0, 2025
                  sub          t5, t4, a1
                  mulhsu       a5, s2, a7
                  srli         zero, s3, 7
                  slt          gp, s8, t6
                  addi         s3, a4, -1965
                  sltu         s9, s9, t4
                  c.srai       a0, 16
                  mulhu        t5, t0, t5
                  slli         ra, a3, 15
                  xor          t5, s10, s7
                  c.li         a1, 15
                  rem          zero, s6, a0
                  c.or         a5, a3
                  or           a5, s6, s11
                  mulh         ra, s1, t1
                  ori          s2, a4, -987
                  divu         ra, t0, t3
                  nop
                  c.nop
                  addi         ra, s4, 198
                  sll          s7, a3, s2
                  rem          tp, a7, a6
                  ori          a0, t2, 1851
                  mulh         a4, zero, a7
                  c.srai       a1, 10
                  xor          s10, t2, a5
                  divu         s9, s10, a1
                  add          t6, s0, a4
                  nop
                  c.and        a2, a4
                  srli         s11, a2, 10
                  add          s4, t4, s2
                  sll          t2, t6, s9
                  xori         s0, s9, 1556
                  nop
                  c.sub        a1, a1
                  lui          s9, 488540
                  slti         a2, s4, 496
                  c.or         s0, s0
                  c.lui        s11, 16
                  mulhsu       t2, t0, a3
                  sra          s2, t4, a5
                  auipc        a5, 735893
                  c.mv         a7, s5
                  slli         zero, t4, 15
                  divu         s8, tp, t0
                  sub          t0, s8, s8
                  slli         zero, t2, 10
                  mulhu        t3, s8, a3
                  c.lui        gp, 22
                  c.nop
                  srli         a2, s6, 4
                  mul          t5, gp, a3
                  c.lui        s7, 9
                  mulhsu       a7, a7, zero
                  c.xor        a2, a5
                  sub          s0, s10, gp
                  auipc        zero, 519047
                  ori          s11, t2, -434
                  c.sub        s0, a0
                  mulhsu       a1, s10, t3
                  c.and        a3, a0
                  xor          s4, t1, gp
                  auipc        a7, 1007539
                  srai         a7, t1, 9
                  xor          s9, a2, a1
                  xori         s9, t2, -1907
                  xor          s0, t5, ra
                  sra          t3, s10, t2
                  ori          a1, t6, -1394
                  slli         t0, t5, 29
                  divu         a3, t3, t4
                  slt          s1, s11, t6
                  and          t5, t3, s4
                  add          t0, s1, s8
                  c.srli       a2, 31
                  auipc        a0, 864454
                  c.addi       a4, -1
                  add          s1, s9, s9
                  srai         s9, s2, 10
                  add          t3, a1, s4
                  c.sub        a0, s1
                  c.srli       a2, 28
                  sra          zero, s0, tp
                  c.add        a7, a6
                  c.and        a2, a1
                  c.li         s8, 26
                  remu         t0, ra, zero
                  mul          s5, a0, t0
                  xor          a2, s2, a6
                  add          zero, s6, tp
                  ori          tp, ra, 1348
                  divu         t1, s10, s10
                  xori         s3, t3, -1342
                  c.slli       s11, 21
                  nop
                  sltu         s4, s0, a2
                  srai         s5, s3, 1
                  c.xor        a5, s1
                  sub          t2, t2, s4
                  srli         s4, a0, 21
                  xor          t5, t2, a6
                  auipc        zero, 322719
                  c.li         s2, -1
                  mulhu        t3, a1, s7
                  c.xor        s1, a1
                  c.and        a2, s0
                  c.nop
                  c.or         a4, s0
                  mulhsu       a5, t5, s4
                  slt          a5, s1, s1
                  c.lui        t1, 21
                  c.nop
                  and          gp, s10, s4
                  add          a3, s11, tp
                  or           s4, a4, s7
                  andi         s0, a4, -1382
                  remu         s4, sp, a0
                  sll          s11, s7, s6
                  c.or         a2, a2
                  c.srli       a1, 14
                  slli         t5, t3, 19
                  c.or         a3, a5
                  and          a4, a6, s8
                  sltiu        t4, s8, 1684
                  srai         s11, t1, 18
                  divu         a7, sp, t0
                  add          t3, t2, a6
                  divu         a7, t6, s8
                  c.xor        a4, s1
                  lui          t2, 351082
                  add          a4, s1, a6
                  or           tp, gp, ra
                  slli         t1, a2, 19
                  c.srai       a3, 29
                  xor          tp, s5, t1
                  remu         s10, t6, s1
                  c.and        a3, a5
                  c.xor        a4, a2
                  div          t0, gp, a5
                  add          t1, a0, t2
                  srl          s10, s4, s6
                  xori         s2, t1, 2011
                  c.srli       a4, 7
                  remu         a4, s4, a5
                  slt          t2, a7, a7
                  sltiu        a5, a4, -1217
                  c.sub        s1, a2
                  xor          s2, t5, t3
                  remu         zero, a7, s8
                  and          t1, s11, s3
                  c.addi       s4, 30
                  mulhsu       a3, a6, a3
                  sra          s4, t2, s6
                  auipc        a3, 440639
                  addi         t4, t1, -650
                  andi         s11, t5, 841
                  c.sub        s1, a5
                  lui          t4, 615776
                  srai         s3, s7, 19
                  lui          s7, 168994
                  mul          s7, tp, s4
                  ori          s7, t4, -1495
                  sltu         zero, a3, s10
                  c.slli       s8, 22
                  c.sub        s1, a2
                  mul          a2, a3, a7
                  divu         s8, t2, s6
                  sub          zero, a2, a2
                  remu         s11, s6, t1
                  sra          t5, t0, a7
                  c.sub        a2, a4
                  sll          a4, s5, s3
                  srl          t5, s7, s7
                  c.addi       t5, -1
                  c.nop
                  srl          a0, a5, t5
                  auipc        t6, 1041534
                  mul          s11, a0, tp
                  or           a2, a0, a7
                  sltu         t2, a5, s10
                  nop
                  mulh         s8, s4, a1
                  slli         s0, ra, 30
                  c.addi       s2, 10
                  c.add        s3, a1
                  divu         a0, t1, s6
                  nop
                  c.nop
                  and          s5, a7, a3
                  and          s5, t6, t5
                  c.nop
                  addi         ra, s4, -1767
                  c.or         a1, a0
                  sltu         t5, t2, t6
                  c.nop
                  rem          t3, s2, s3
                  c.srli       a1, 1
                  ori          s11, ra, -1935
                  or           s11, t0, s5
                  c.or         s0, a0
                  auipc        s7, 993652
                  nop
                  sltiu        a1, s4, 177
                  divu         s4, s5, ra
                  c.slli       s11, 17
                  c.sub        a3, a4
                  lui          s5, 400339
                  add          t3, s9, s10
                  c.sub        a0, a4
                  srl          a1, s1, s11
                  xori         t1, s6, -801
                  mulhu        s11, s11, s10
                  srai         a5, a4, 3
                  c.andi       a3, 29
                  nop
                  c.addi       s5, 8
                  slli         s1, s5, 21
                  srai         s7, a5, 5
                  c.li         a7, -1
                  c.srli       s0, 23
                  c.lui        t1, 10
                  or           tp, t0, t5
                  c.or         a3, a2
                  c.add        t0, a2
                  mul          ra, t1, sp
                  c.xor        s1, a2
                  or           s0, t2, t4
                  mulhu        t2, t3, a6
                  xori         t4, gp, 585
                  divu         s4, a2, t3
                  c.or         a0, a0
                  rem          s2, zero, t1
                  slt          s3, s10, a3
                  c.srai       a5, 9
                  mul          zero, gp, a6
                  srai         t6, a6, 10
                  slti         a2, tp, -1992
                  add          t1, t0, a5
                  sltiu        t1, s4, -408
                  c.srai       s0, 11
                  srli         t6, s1, 2
                  mulhu        s7, t6, s5
                  sltiu        s9, a0, -438
                  auipc        a3, 837498
                  c.or         a2, a3
                  sltiu        s5, tp, 690
                  slli         t4, t3, 23
                  add          zero, t6, s4
                  lui          t2, 1017435
                  c.addi       a0, 3
                  nop
                  auipc        a5, 394516
                  slt          t1, a4, s7
                  ori          t2, s9, 34
                  add          s10, s1, s11
                  or           s4, a3, zero
                  c.add        ra, a4
                  and          t2, s0, s5
                  c.andi       a5, -1
                  or           a1, a5, a0
                  auipc        s8, 595345
                  slli         t2, a5, 27
                  c.add        s9, t5
                  c.add        tp, a1
                  c.or         a3, a5
                  mulhu        s5, a3, s2
                  c.mv         s2, a4
                  mulhu        zero, gp, s7
                  c.li         s0, 22
                  c.xor        a5, s1
                  slti         s9, t3, 1638
                  xor          a0, s5, a4
                  or           t1, a0, s10
                  c.or         a0, s1
                  slli         s9, s11, 12
                  sltu         gp, a7, s1
                  ori          zero, t2, -2
                  sltiu        a1, a2, 704
                  c.li         s11, -1
                  c.addi       a7, -1
                  sltiu        s8, s7, -753
                  c.andi       s0, -1
                  auipc        s7, 179765
                  sra          a4, s2, s2
                  slt          s7, t2, s6
                  c.srli       a1, 5
                  c.mv         gp, a1
                  c.lui        a5, 1
                  c.and        a3, a4
                  c.add        s7, ra
                  sll          s8, a7, s2
                  and          t0, t5, a1
                  and          zero, a4, t5
                  mulhu        t1, ra, s8
                  c.srli       a4, 25
                  slti         s8, s3, -1341
                  c.andi       s1, -1
                  c.andi       a0, -1
                  slli         zero, sp, 16
                  slti         s3, s11, -545
                  c.sub        a4, a5
                  c.srli       s0, 15
                  lui          s8, 915397
                  c.srli       s0, 20
                  mulhu        s4, zero, s3
                  addi         s0, zero, 1261
                  div          a3, a0, tp
                  lui          tp, 712773
                  addi         tp, s3, 1671
                  addi         s5, t3, -1947
                  c.slli       ra, 1
                  andi         s5, s2, -1391
                  lui          a4, 588802
                  sltu         t1, a7, a5
                  c.mv         s5, s6
                  mulhsu       t5, s9, a7
                  xori         s2, a0, 1673
                  add          zero, s2, s11
                  add          a7, a6, t2
                  mul          s1, t2, t5
                  ori          a2, s3, 1155
                  add          gp, t4, a5
                  mulh         t6, t0, a5
                  c.srli       a5, 12
                  mulhu        s11, s10, s2
                  auipc        s9, 277285
                  lui          s7, 8695
                  mulh         a0, s7, ra
                  c.or         s0, a1
                  and          s7, a3, t3
                  and          s7, s8, a5
                  sub          t1, a5, s7
                  div          a7, a5, t3
                  rem          s2, gp, a7
                  div          s4, a3, ra
                  rem          a0, a1, a0
                  srli         gp, a7, 20
                  rem          s5, gp, s4
                  sub          a4, s9, s1
                  slti         s11, s11, -809
                  sub          a7, t4, a6
                  divu         t3, a6, s10
                  c.add        s0, ra
                  nop
                  sltu         a5, a2, t6
                  c.srai       a1, 8
                  and          t6, t3, s4
                  nop
                  xor          t6, a6, s7
                  c.mv         t2, t5
                  c.and        s0, s1
                  andi         tp, s8, -1168
                  c.li         t6, 25
                  sra          s2, a6, a6
                  slli         a0, s3, 9
                  sltiu        s2, s10, -237
                  c.lui        s2, 25
                  mulhsu       tp, zero, s5
                  c.sub        s0, a1
                  c.li         a5, 7
                  ori          t2, t0, 1783
                  slli         s11, s10, 26
                  add          tp, t2, a5
                  add          t5, s9, t2
                  c.xor        a1, s0
                  andi         a3, t3, -518
                  andi         t3, a4, 1536
                  srai         a3, gp, 22
                  c.or         a5, a0
                  or           a4, s2, t0
                  mul          ra, tp, s0
                  ori          s2, a5, 421
                  mulhsu       a7, t1, s10
                  slli         a7, a3, 21
                  xor          a7, t0, s7
                  remu         zero, a5, t5
                  c.srli       a5, 22
                  srai         t4, tp, 20
                  xor          t0, t2, s9
                  c.addi       s9, 30
                  mulh         a0, s11, t1
                  auipc        s4, 558364
                  mul          a2, a5, t2
                  c.srli       s1, 13
                  c.addi       s10, 27
                  slti         s9, t4, -1748
                  divu         s2, s0, s4
                  c.li         a2, 26
                  srl          s7, a2, s5
                  slti         s8, s4, 365
                  c.nop
                  mulh         t0, s5, s2
                  sltiu        a0, a6, 1209
                  c.add        s7, s0
                  c.li         ra, 16
                  auipc        t4, 720548
                  srl          t6, t2, s2
                  xor          zero, s11, t1
                  remu         s3, t2, s2
                  sltiu        a2, t3, 547
                  slt          a0, t5, s4
                  or           t1, s7, a3
                  c.and        a0, a1
                  sll          s0, s3, a5
                  c.andi       s1, -1
                  sltu         t4, s0, a7
                  divu         t3, s4, t6
                  c.addi       a0, -1
                  c.slli       s3, 6
                  sltu         ra, s9, t0
                  c.sub        s1, a5
                  mul          tp, s1, t2
                  mulhsu       t1, gp, s5
                  c.slli       s8, 20
                  andi         t5, zero, 1637
                  mulhsu       gp, s1, s10
                  c.nop
                  mulhsu       tp, t6, t6
                  addi         t4, a1, 1911
                  c.srli       a4, 29
                  ori          a3, s10, 1829
                  c.add        s9, t0
                  sltu         s0, a7, s3
                  srai         s5, s0, 30
                  divu         t2, s5, ra
                  addi         a1, a4, 1310
                  and          s3, sp, t3
                  or           s2, s9, a4
                  c.andi       a0, -1
                  slli         t2, a4, 6
                  auipc        tp, 642257
                  andi         s0, tp, -720
                  slli         t4, sp, 3
                  div          s2, s8, a0
                  c.li         t0, -1
                  auipc        t4, 635642
                  slt          s1, s1, t4
                  sub          a3, tp, s3
                  c.mv         s2, s3
                  add          a5, a4, ra
                  sltu         ra, s8, t6
                  andi         a0, sp, -1378
                  srai         s7, t5, 16
                  andi         s0, sp, 1994
                  sra          s3, s5, a0
                  divu         t1, s0, s10
                  c.or         a5, a5
                  c.andi       a1, 26
                  sub          s9, a6, a3
                  sltu         s9, s8, a7
                  sltu         zero, a0, s9
                  c.srli       a2, 8
                  nop
                  c.li         a7, 18
                  xor          t4, s4, t6
                  auipc        a3, 1030703
                  srli         zero, s6, 10
                  divu         t6, ra, s1
                  c.addi       t5, 22
                  c.li         s8, -1
                  slli         s3, a4, 6
                  slli         ra, a3, 10
                  c.add        a7, t1
                  nop
                  nop
                  c.slli       t2, 11
                  divu         t5, a2, ra
                  div          s8, s8, a4
                  srai         s11, tp, 20
                  xor          s2, s5, a3
                  srai         s7, s8, 12
                  sltu         t6, t5, s10
                  and          ra, sp, s3
                  slti         ra, a6, 215
                  c.srai       a2, 29
                  c.sub        s0, a2
                  c.and        s0, a0
                  c.li         s11, 5
                  c.sub        a1, a5
                  lui          a3, 820702
                  c.or         s0, a2
                  mulh         gp, t6, s9
                  sltu         s2, sp, s5
                  sltiu        s10, s11, 1497
                  sra          gp, t5, a3
                  slti         s1, s3, -1810
                  rem          ra, a1, a3
                  slli         t4, a2, 10
                  c.sub        a2, a4
                  c.srai       a2, 3
                  slt          s0, t3, s0
                  xori         t3, s8, 1648
                  slli         s5, s11, 2
                  c.srai       a4, 7
                  slt          s4, s0, a6
                  rem          s3, s10, s8
                  ori          s10, t5, 558
                  srli         a3, s3, 8
                  mulh         s5, t6, a6
                  div          tp, t3, t4
                  c.srai       a2, 31
                  srl          tp, sp, s1
                  sltiu        t6, a2, -1186
                  andi         a3, s5, -1509
                  divu         t1, t2, s8
                  xori         ra, t6, -145
                  div          a7, a4, s4
                  ori          zero, t4, 857
                  srai         a0, a0, 25
                  and          a4, a7, s1
                  c.andi       a0, -1
                  mulhsu       t5, s8, ra
                  sra          a4, a4, s10
                  c.xor        a1, s0
                  srai         a4, s5, 30
                  nop
                  remu         t6, t2, a6
                  slti         t2, t6, 2024
                  auipc        t4, 812214
                  c.li         t5, 20
                  sltu         a7, a0, s4
                  remu         s2, a6, s7
                  mul          a4, a2, t2
                  lui          a7, 222153
                  sub          t5, zero, s8
                  addi         gp, gp, -1670
                  div          s3, s2, t5
                  c.or         s0, a2
                  remu         t1, a0, a5
                  srli         s4, t0, 22
                  c.or         s0, a1
                  mulhsu       tp, a4, s5
                  c.lui        s3, 3
                  ori          a2, s7, 1477
                  add          zero, t0, a1
                  andi         t3, s2, 1805
                  sra          a5, s4, s4
                  mul          s0, ra, t1
                  mulhsu       t3, a2, s6
                  lui          s7, 184873
                  auipc        t5, 683126
                  slli         s4, s8, 23
                  srl          s11, tp, t1
                  or           t0, t1, a2
                  slti         s3, a7, 566
                  slt          s1, t6, s3
                  c.sub        s1, a2
                  mulhsu       zero, t3, t1
                  c.sub        s1, s1
                  sltu         a7, s11, a6
                  auipc        zero, 960815
                  c.nop
                  c.nop
                  mulh         s3, a3, t3
                  slli         t3, tp, 23
                  c.mv         a0, s4
                  slti         s7, gp, 2023
                  add          t1, a6, s3
                  c.mv         gp, s4
                  divu         s0, s0, s8
                  c.li         t1, 1
                  c.addi       s0, -1
                  sll          s10, gp, s8
                  c.addi       gp, 10
                  c.or         s1, a1
                  sltiu        a0, s3, -83
                  auipc        t1, 944597
                  andi         s4, t1, 1557
                  nop
                  c.lui        s9, 17
                  add          zero, s8, a5
                  mul          s10, a0, a3
                  mulhsu       s4, t1, t1
                  mulhu        s1, s5, t1
                  mul          a5, s0, sp
                  c.li         a3, 0
                  slli         ra, s6, 24
                  c.xor        a0, a0
                  nop
                  sltiu        t4, sp, -1054
                  c.addi       a4, -1
                  c.li         ra, -1
                  sub          a3, s5, a0
                  xor          s8, a2, s10
                  c.slli       a0, 9
                  sra          a7, a7, s6
                  mulhu        t0, s5, s9
                  divu         ra, s8, a0
                  nop
                  c.and        a0, s1
                  divu         s7, s1, t1
                  srai         t1, a1, 10
                  c.add        ra, t3
                  and          s11, a0, s2
                  c.srli       a4, 17
                  xor          t6, t3, s0
                  sltu         a1, t1, s10
                  slti         s3, tp, -871
                  div          gp, t4, a2
                  c.add        a4, t5
                  slli         s11, s10, 16
                  divu         t0, tp, s7
                  div          s0, tp, s11
                  c.li         a4, -1
                  sltiu        s2, a3, 151
                  c.srai       a0, 12
                  c.addi       s10, 30
                  sltiu        t1, t0, -723
                  srli         a1, t1, 6
                  c.add        s7, t3
                  and          a7, s7, s1
                  c.sub        a3, s1
                  addi         t1, t2, -1209
                  slti         s4, s10, 1438
                  c.lui        tp, 21
                  andi         s10, s5, 180
                  c.li         t4, 12
                  c.srli       s0, 7
                  auipc        s4, 457238
                  slti         s4, a2, 63
                  srli         s7, gp, 30
                  mulhsu       t4, t4, s7
                  addi         a2, t6, 312
                  sltiu        t2, a1, 331
                  remu         a0, s5, s9
                  c.addi       t1, 14
                  div          a2, sp, gp
                  mulh         s2, s3, a7
                  xori         zero, gp, 1503
                  srli         a0, t1, 22
                  c.lui        s8, 25
                  srai         gp, gp, 7
                  sll          s0, a3, s4
                  c.sub        s1, a1
                  andi         a5, zero, 1703
                  c.xor        a1, a5
                  mulh         s1, a1, s4
                  mulh         t2, zero, s6
                  c.addi       a5, -1
                  mul          ra, s9, sp
                  slli         gp, a3, 18
                  div          t6, t6, sp
                  lui          s0, 80447
                  and          a4, a0, s7
                  ori          s1, s1, 76
                  c.mv         t2, a3
                  c.li         s2, 10
                  c.slli       a0, 16
                  xor          gp, gp, a7
                  xori         s8, s10, 31
                  c.andi       a0, -1
                  auipc        a2, 967294
                  xori         s9, t1, 1305
                  c.li         a1, -1
                  slti         zero, s7, -672
                  nop
                  add          t5, t1, t0
                  mulhsu       s9, s9, sp
                  divu         s1, s10, a0
                  remu         s3, s10, a5
                  addi         s8, tp, -309
                  remu         a1, s3, a4
                  lui          a5, 2345
                  c.nop
                  sra          t0, t5, s11
                  c.lui        a5, 15
                  remu         t2, s1, t0
                  srl          t4, s2, s7
                  srai         s7, s9, 5
                  srli         ra, a7, 5
                  slli         s3, a0, 8
                  ori          a3, s3, 1223
                  xor          s9, a7, t5
                  slli         s8, a1, 18
                  ori          t4, s1, -938
                  c.slli       a7, 6
                  mulh         zero, ra, s11
                  or           a7, t0, a4
                  andi         t5, a4, -1992
                  srai         s4, t2, 0
                  mulh         s1, s3, zero
                  c.nop
                  c.nop
                  or           zero, a6, zero
                  addi         gp, t6, -1914
                  div          a0, zero, sp
                  ori          s8, s1, 829
                  c.slli       s8, 8
                  rem          a7, a2, t3
                  add          s1, sp, a5
                  c.andi       a4, -1
                  andi         s0, s7, 1023
                  lui          ra, 841582
                  c.add        t1, sp
                  srl          a2, t6, s6
                  addi         s11, t5, 733
                  xori         a0, t2, 977
                  remu         s9, s6, a3
                  auipc        s1, 575842
                  c.andi       s1, -1
                  c.addi       a1, -1
                  sra          s0, s2, a0
                  mulhsu       a7, t5, t5
                  c.nop
                  sltiu        s7, s4, -1030
                  nop
                  addi         t3, a1, -901
                  c.mv         a7, a0
                  c.and        a2, a5
                  c.sub        a5, s0
                  mul          s4, gp, t0
                  addi         a0, t5, 1656
                  c.mv         s11, sp
                  nop
                  c.sub        s1, a2
                  lui          tp, 1027104
                  c.slli       a0, 6
                  c.xor        s1, s0
                  c.mv         a0, s4
                  add          t0, t5, a3
                  c.srli       a5, 13
                  auipc        s8, 91027
                  remu         s1, s4, t3
                  divu         a2, a2, gp
                  andi         gp, t4, 773
                  sltu         a7, zero, s4
                  slli         s5, s4, 10
                  rem          s1, tp, a4
                  or           t4, t1, s11
                  c.and        a3, a0
                  xor          a7, a2, t2
                  sra          s2, zero, a3
                  sra          s7, a3, s11
                  srli         a7, s7, 24
                  nop
                  or           a0, a7, s10
                  c.li         s11, -1
                  lui          t4, 268974
                  lui          s5, 1024862
                  mulhu        s0, a7, s3
                  sltu         s10, s9, s2
                  c.srai       s0, 20
                  c.xor        a4, s1
                  mulhu        t3, a4, a3
                  slt          a7, s4, gp
                  addi         s9, s9, 1064
                  c.addi       t4, -1
                  c.xor        a0, a1
                  mulh         t6, s5, t3
                  rem          s9, a1, a3
                  c.andi       a0, 19
                  remu         zero, a3, t1
                  andi         a4, ra, 308
                  c.addi       s7, 29
                  srai         t0, t1, 27
                  c.li         s1, -1
                  xori         s11, t6, -199
                  c.and        s0, a0
                  c.li         s10, -1
                  mulhsu       t0, a3, t1
                  sra          t1, t6, a6
                  c.li         t2, -1
                  slt          a7, t2, a5
                  sll          zero, zero, s2
                  sra          a7, t1, s8
                  c.li         a3, 5
                  srai         a3, t6, 6
                  c.slli       t6, 2
                  add          t1, t6, s1
                  c.andi       s1, 19
                  and          t1, s7, a0
                  c.and        s0, s0
                  c.li         t4, -1
                  c.li         s11, -1
                  ori          s2, zero, 933
                  divu         s9, t4, s5
                  c.li         t4, 18
                  addi         s2, a7, -1366
                  sltu         a3, zero, s2
                  c.or         s1, a3
                  div          gp, s3, ra
                  c.xor        a5, a1
                  sltiu        a4, ra, -702
                  c.li         s2, -1
                  or           t1, s10, s0
                  sll          s10, a2, a6
                  c.slli       t5, 23
                  c.srli       a2, 9
                  ori          gp, s8, -1683
                  div          s2, a7, t1
                  c.slli       s4, 20
                  c.xor        s1, a0
                  slt          s8, t5, tp
                  divu         s11, a0, a1
                  divu         s2, gp, gp
                  or           a2, s11, a5
                  sub          zero, a1, a2
                  div          t1, s7, a5
                  lui          t1, 276410
                  c.andi       a5, -1
                  srl          s0, gp, s9
                  c.li         t0, -1
                  ori          s4, s3, -1077
                  c.or         s0, s1
                  c.add        s3, a7
                  sltiu        t5, s2, 1323
                  srli         t6, s5, 16
                  div          t1, tp, sp
                  mulhsu       s2, t6, zero
                  rem          a1, s9, s8
                  mulhu        s2, t6, s11
                  c.xor        a3, a1
                  srl          s9, a7, sp
                  c.li         s0, 12
                  c.nop
                  and          s5, t6, a5
                  srl          t4, s7, t5
                  div          gp, t2, t6
                  c.nop
                  srli         s2, t5, 21
                  divu         s2, t2, a3
                  slli         t4, a0, 13
                  c.mv         s1, s5
                  srli         a0, s4, 23
                  addi         gp, a0, 418
                  c.or         a4, a4
                  ori          t6, s0, 561
                  srli         s9, t6, 19
                  srl          gp, a3, gp
                  div          t4, t2, s2
                  remu         s7, t2, a1
                  c.sub        a0, s0
                  c.srli       a1, 27
                  srai         t2, s6, 19
                  andi         a2, a2, 898
                  mulhu        s2, t4, a7
                  mul          a1, a3, t1
                  nop
                  sll          t2, a0, a0
                  c.xor        a3, a1
                  c.lui        s0, 1
                  c.sub        a5, a5
                  ori          t0, a5, 1310
                  c.or         s0, a5
                  mulhu        tp, s8, a4
                  lui          s5, 733173
                  and          t1, s6, a0
                  c.xor        a0, a5
                  xor          s2, a3, s7
                  c.li         s8, 16
                  mulh         s4, s6, a6
                  c.or         a4, s0
                  divu         zero, a7, ra
                  mulhsu       a1, a5, t1
                  nop
                  remu         a2, s4, t3
                  c.srai       s1, 18
                  or           s2, s4, s4
                  xor          s7, zero, a0
                  srli         t4, a0, 25
                  rem          ra, t6, s5
                  c.sub        a3, a5
                  srli         s0, t1, 7
                  c.srli       a5, 6
                  c.li         a5, -1
                  c.srli       a3, 10
                  mulhsu       a4, zero, s3
                  slli         s8, t4, 6
                  div          s11, ra, t6
                  srli         s0, t6, 23
                  xor          s1, tp, s5
                  sltu         s9, s1, t5
                  slli         s2, s5, 17
                  srli         t1, a3, 30
                  c.andi       a5, 9
                  sub          a7, t2, a7
                  mul          a4, s2, a7
                  remu         a7, s8, s8
                  sltiu        s1, t3, 55
                  c.xor        a3, a3
                  slli         a4, t1, 29
                  c.nop
                  ori          s3, s2, 103
                  rem          t1, a5, s11
                  mul          a5, a6, sp
                  ori          a0, a0, 864
                  rem          t3, s3, a5
                  c.add        ra, s2
                  auipc        ra, 817099
                  nop
                  c.slli       s9, 20
                  mul          gp, s6, t4
                  and          s9, s8, t5
                  c.sub        a2, s1
                  srai         s7, t3, 6
                  lui          s7, 662643
                  c.li         s7, -1
                  c.sub        a0, a0
                  c.srli       s0, 29
                  sll          t5, s3, t6
                  mulh         t3, t1, s0
                  c.or         a4, a4
                  mulhu        a1, s0, t5
                  and          s3, t2, t0
                  rem          t0, t3, t0
                  srl          s11, s8, tp
                  remu         t6, s5, gp
                  slt          t3, t6, gp
                  lui          s4, 726989
                  ori          s2, a3, -1942
                  sll          s0, zero, s0
                  c.andi       s1, -1
                  c.nop
                  srl          a4, s10, t0
                  div          t5, s0, s4
                  c.sub        a4, s1
                  c.andi       a1, 8
                  c.nop
                  xori         gp, s1, -1068
                  c.srai       s1, 14
                  add          t4, t0, s8
                  auipc        s9, 807924
                  auipc        t3, 725504
                  mulh         s8, s1, s10
                  slti         ra, a5, -79
                  srai         s8, a3, 11
                  andi         s2, a2, -1836
                  c.srai       a1, 28
                  slti         s2, s5, -1482
                  sll          s5, t3, a5
                  auipc        a7, 751759
                  slt          a5, a7, s11
                  ori          a1, a5, 1703
                  sltu         t5, a4, tp
                  addi         a7, s4, -1021
                  remu         s1, s0, sp
                  auipc        a1, 369904
                  c.add        t2, a7
                  lui          t4, 520765
                  and          s11, t1, sp
                  mul          s7, s11, a4
                  xori         tp, s9, 556
                  srai         a3, a6, 5
                  nop
                  c.andi       a3, 26
                  c.li         s5, -1
                  c.andi       a2, -1
                  c.lui        s3, 5
                  sra          a7, t4, a1
                  addi         t2, a5, -407
                  srli         s3, t0, 25
                  mulh         t4, tp, s1
                  c.mv         s7, s3
                  c.li         a0, 18
                  sub          s3, s4, t6
                  sra          a4, a0, a0
                  mul          a2, s3, a6
                  c.or         a0, a4
                  c.srli       a5, 2
                  c.andi       s1, 9
                  divu         t3, a5, t1
                  remu         t3, gp, s9
                  sll          t2, s3, t3
                  c.sub        s0, s0
                  sra          s0, s5, gp
                  andi         t4, t4, 738
                  sub          a1, t0, t5
                  and          ra, s5, s2
                  c.li         s7, -1
                  c.xor        a4, a5
                  c.add        s1, a2
                  c.lui        t2, 19
                  c.and        a5, s0
                  sll          tp, s7, s3
                  sll          t5, a2, t3
                  divu         s2, a2, s7
                  c.andi       a1, 9
                  srl          a7, s2, t0
                  c.add        a4, t3
                  srli         t0, s7, 5
                  slli         s11, s11, 20
                  c.add        s4, gp
                  sra          a7, s8, s1
                  add          s4, t3, s0
                  add          s5, a3, s1
                  c.or         a4, a0
                  slli         s10, a4, 21
                  c.slli       a1, 14
                  srl          a7, a4, a7
                  add          tp, s3, s1
                  slt          ra, a0, a2
                  srli         tp, t5, 8
                  c.xor        s0, a4
                  c.srli       a1, 27
                  srl          s10, a0, t6
                  srl          s2, s6, t6
                  addi         s11, sp, -1817
                  sub          a4, ra, a7
                  srai         t0, gp, 3
                  rem          a5, a0, s1
                  c.lui        s7, 7
                  sll          s3, t2, t3
                  c.srli       a4, 13
                  andi         s10, t0, 86
                  sra          s2, gp, s11
                  xor          t6, a7, a2
                  c.or         s0, a4
                  divu         s10, s9, t0
                  c.or         a2, a0
                  srli         a7, a3, 24
                  auipc        a0, 455745
                  c.nop
                  auipc        tp, 627178
                  c.srai       s0, 17
                  and          a3, s2, a6
                  nop
                  sub          tp, s10, t5
                  c.srli       a0, 15
                  c.lui        s2, 21
                  c.mv         s4, s7
                  c.addi       s2, 21
                  andi         s10, a2, 1512
                  sub          s3, t0, gp
                  c.or         a2, a3
                  mul          s11, a3, a2
                  xori         a7, a4, -1566
                  div          s5, s2, s2
                  c.srai       a2, 7
                  div          t6, a5, a1
                  addi         t0, t6, -1778
                  lui          s7, 974107
                  c.li         a0, -1
                  addi         s7, t0, 826
                  slti         t6, zero, -580
                  addi         t3, a4, -156
                  c.nop
                  c.srli       a2, 25
                  ori          s2, s4, 2014
                  c.or         a3, a3
                  rem          s10, ra, t3
                  c.andi       a2, -1
                  nop
                  c.add        s3, a6
                  div          t2, s3, a3
                  c.nop
                  sltiu        t0, s11, -114
                  c.add        a5, a5
                  mulh         a7, a1, t4
                  c.andi       s0, -1
                  c.addi       s11, -1
                  c.mv         t1, a4
                  sltu         a0, ra, gp
                  sltiu        zero, s8, -2009
                  sll          a0, s10, s0
                  srli         a5, sp, 20
                  mulhsu       s2, t5, s9
                  c.addi       t0, 29
                  sltiu        s9, s3, -2019
                  slli         t0, a5, 25
                  c.li         s9, -1
                  mulh         t1, s1, a0
                  remu         s1, t4, s2
                  c.add        s7, a5
                  xor          a1, a3, t6
                  andi         a4, s8, -303
                  div          t0, a7, tp
                  divu         a2, s11, a6
                  slli         tp, a0, 18
                  c.srli       a2, 20
                  slt          a0, a7, s10
                  slti         t0, a4, 805
                  slt          t0, s5, a7
                  ori          a0, t0, -1780
                  mul          a1, s11, t0
                  c.sub        a4, a5
                  c.and        a0, s1
                  div          t5, t3, t6
                  c.addi       t5, 26
                  xori         t1, s1, -1477
                  srai         s5, t5, 12
                  andi         s1, s7, 504
                  srai         zero, t4, 10
                  srli         a1, s9, 23
                  c.and        s0, a5
                  mulhu        s2, s0, t3
                  c.srai       s0, 7
                  c.addi       s10, -1
                  srl          t1, gp, sp
                  sub          s7, s4, a1
                  srai         t4, s5, 30
                  slt          t1, t5, gp
                  mulh         t5, gp, s4
                  c.nop
                  div          s9, s11, s10
                  sll          s11, s3, s4
                  mul          a1, t1, a3
                  divu         t3, s9, s8
                  add          a7, s9, t3
                  lui          s3, 330477
                  slli         t0, s11, 4
                  mul          s9, t4, a2
                  c.or         a1, a4
                  c.nop
                  remu         s5, t0, s2
                  srai         s8, a4, 30
                  c.addi       t1, -1
                  sltu         s2, a6, a0
                  c.srai       s0, 10
                  xori         t3, t4, 808
                  sra          t3, a1, gp
                  c.or         s1, s1
                  c.or         a4, s1
                  mul          zero, zero, t4
                  mulh         s10, tp, gp
                  slt          zero, s4, s9
                  sub          t4, a0, t4
                  rem          s2, t4, s6
                  slt          ra, s11, a6
                  c.slli       s3, 4
                  and          gp, a6, zero
                  ori          s5, a0, 298
                  sra          s2, gp, a5
                  mulhu        s3, t4, sp
                  c.add        s3, a5
                  and          s10, sp, tp
                  or           zero, s7, a6
                  or           gp, a7, sp
                  sra          ra, a1, a5
                  xor          s4, t4, t2
                  sltiu        t2, s2, 1679
                  and          t5, a4, s1
                  c.mv         s5, s7
                  c.addi       t2, -1
                  c.lui        a5, 18
                  andi         t2, a2, -1430
                  mulhsu       s0, a6, s1
                  ori          a1, t0, 933
                  sltiu        a7, s4, 414
                  andi         s3, s6, 1051
                  sltu         zero, t2, s8
                  c.slli       s5, 27
                  srli         a2, s10, 24
                  c.srli       a3, 17
                  srai         zero, t0, 5
                  slli         s9, tp, 12
                  sra          t2, t3, s3
                  c.xor        a1, a2
                  c.slli       s8, 16
                  sltiu        s7, s10, 1195
                  c.sub        a3, a1
                  sra          s1, s1, a4
                  auipc        tp, 298748
                  sra          a1, t4, ra
                  c.srli       a1, 25
                  c.mv         a1, a6
                  sub          t3, t1, s7
                  srai         s1, a0, 3
                  slt          t1, sp, a3
                  slli         s11, s9, 5
                  div          a3, s3, t2
                  mulhsu       t5, a1, a5
                  c.and        a5, a1
                  mulhu        s11, s7, s8
                  div          a2, a4, a6
                  c.or         a1, a2
                  nop
                  slt          s11, t3, s5
                  c.xor        s0, a2
                  mulh         ra, s2, zero
                  c.srai       a3, 27
                  divu         a0, a4, t5
                  lui          t1, 1013740
                  addi         s5, t1, 69
                  mul          s9, zero, t6
                  c.add        a2, t4
                  divu         t1, s6, t0
                  c.mv         s9, ra
                  c.srli       a2, 19
                  nop
                  c.sub        a3, s1
                  sltu         s2, t2, s1
                  sltiu        a7, sp, -703
                  c.addi       s9, -1
                  or           t0, s7, s3
                  c.andi       a3, -1
                  divu         s2, s2, t1
                  c.xor        a5, s1
                  addi         s10, t1, -589
                  srl          tp, tp, t2
                  c.sub        s0, a1
                  mulhu        s7, s11, a2
                  c.mv         s1, a6
                  slt          s0, a7, a7
                  srl          t2, t1, s3
                  xor          s3, s11, s7
                  mulhu        t1, a4, s4
                  srl          s7, t2, t2
                  c.or         a5, a4
                  c.slli       tp, 27
                  div          gp, a1, s10
                  srl          a0, t2, s10
                  sra          ra, t5, a6
                  c.srli       s0, 24
                  mul          a2, t3, t4
                  sub          t6, s9, ra
                  sra          s4, a1, tp
                  sra          a5, s8, t0
                  c.nop
                  div          t0, s10, a0
                  remu         t5, s10, gp
                  or           a1, s9, a5
                  xori         a0, a1, -1384
                  srli         s9, a6, 25
                  c.li         t1, -1
                  c.addi       s5, 20
                  c.or         a0, s0
                  c.srli       a0, 20
                  nop
                  c.sub        a4, a5
                  mul          a7, s11, t1
                  c.mv         t0, a7
                  and          zero, t4, a3
                  c.lui        s2, 24
                  ori          s2, s11, 1831
                  sub          t3, s8, a1
                  slt          t1, s8, t1
                  c.and        a3, a4
                  or           s5, a6, t6
                  c.addi       s7, -1
                  c.slli       s8, 24
                  c.mv         s0, s6
                  c.srli       s0, 5
                  slt          s7, t2, s9
                  or           t1, s0, sp
                  xor          s1, t2, a5
                  c.lui        a0, 9
                  slti         s1, a5, 1656
                  c.mv         a1, t0
                  sub          s9, s6, t1
                  c.mv         t5, a7
                  c.xor        s1, a4
                  xori         zero, a1, -887
                  nop
                  nop
                  auipc        t3, 102313
                  sltu         a0, a6, a4
                  sll          s2, t1, gp
                  ori          s7, t6, 1202
                  slt          t5, s9, t1
                  remu         s1, t3, t5
                  addi         tp, s1, 1598
                  srli         s0, s9, 25
                  mulh         a5, s6, s0
                  c.or         s0, a2
                  sub          s9, sp, a2
                  xori         s11, s8, -680
                  slli         ra, s4, 2
                  andi         t3, a2, 1337
                  mulhu        a0, t3, s4
                  div          t3, s5, s3
                  ori          s1, gp, -107
                  sll          t5, s3, gp
                  sltiu        gp, a2, -495
                  div          s4, a3, s2
                  ori          t0, a2, -656
                  and          t1, ra, s11
                  div          t0, gp, s1
                  srli         t0, s8, 30
                  c.mv         a5, a0
                  c.nop
                  slt          zero, zero, s8
                  sltiu        a5, a1, -510
                  c.li         s4, 14
                  slli         a5, a0, 16
                  andi         t1, a1, 20
                  srl          zero, ra, a6
                  c.xor        a0, a2
                  srl          t3, tp, tp
                  lui          t3, 268481
                  mulhsu       s9, s0, a2
                  addi         gp, a7, -130
                  slt          s10, t1, s6
                  srl          s2, a7, s4
                  mulhsu       t3, a3, s10
                  slli         t1, t2, 31
                  sra          zero, a2, t2
                  nop
                  sra          s4, t6, t1
                  c.or         a1, s1
                  rem          s3, s3, s2
                  mulhu        a0, ra, t0
                  andi         t1, t4, -497
                  c.xor        s1, a5
                  sll          t4, s2, s8
                  addi         ra, a6, 808
                  c.add        t1, t5
                  slli         s4, a5, 0
                  c.addi       s3, -1
                  nop
                  addi         s7, a3, 252
                  sltiu        s7, zero, 1104
                  xori         a1, a3, 1515
                  xor          s9, a2, s3
                  c.mv         a1, a6
                  sub          s3, ra, a0
                  slli         gp, a5, 31
                  sra          t2, a4, a0
                  sub          ra, a4, a5
                  mulh         s11, s6, s10
                  auipc        a0, 894280
                  c.and        a5, s1
                  c.mv         s2, t2
                  c.or         a1, a1
                  div          s7, t6, a5
                  remu         a1, tp, zero
                  c.and        a4, a1
                  c.andi       a2, 29
                  c.srli       a4, 25
                  divu         ra, ra, t1
                  or           a4, zero, zero
                  xori         t2, s4, 1182
                  slli         s0, a0, 31
                  c.addi       s8, 23
                  c.mv         t2, t2
                  lui          t2, 232755
                  slli         a7, t0, 21
                  c.srli       s0, 21
                  c.andi       s1, -1
                  mul          tp, s9, t6
                  sltu         s1, s5, t0
                  ori          s8, s7, -987
                  slli         ra, tp, 26
                  c.and        a1, s0
                  c.slli       t4, 4
                  andi         s8, s7, -1652
                  c.nop
                  ori          s1, a2, -2032
                  sub          s3, s11, a6
                  mulh         s0, a4, a0
                  mulhu        s4, s6, a0
                  xor          tp, s0, a3
                  div          ra, s4, a3
                  c.sub        a5, a4
                  c.slli       s7, 25
                  sra          t6, s7, a2
                  mulhu        t4, s2, a4
                  rem          a1, s5, s11
                  div          t6, s3, s9
                  xori         s4, a4, -1070
                  c.sub        a5, a3
                  c.srli       a0, 28
                  addi         s8, s7, 516
                  c.add        a5, gp
                  and          t6, a4, zero
                  c.and        s0, a3
                  lui          a4, 457059
                  c.mv         a0, t6
                  mulhsu       a4, s5, a0
                  addi         t0, a2, 1187
                  c.slli       t5, 21
                  xor          t6, s7, t1
                  c.addi       a7, 4
                  sra          s4, gp, a0
                  addi         s1, t6, -1737
                  c.mv         a0, a0
                  mulh         a7, zero, s8
                  ori          t0, tp, -1141
                  lui          t0, 544647
                  c.srai       s1, 16
                  lui          s8, 319616
                  xor          a7, gp, t6
                  mulhsu       zero, s9, s5
                  xor          s1, s10, s1
                  addi         s10, s3, 1289
                  srai         zero, t4, 12
                  ori          a7, gp, -1448
                  remu         t3, t2, t0
                  sltiu        s7, s3, 755
                  c.add        ra, a6
                  sra          s3, s8, s2
                  or           t2, t1, a4
                  c.sub        a1, s0
                  mulh         zero, t6, a0
                  sltu         s4, s5, s10
                  srai         a7, s8, 10
                  sltiu        a2, s2, 1684
                  slt          zero, s0, tp
                  sltiu        zero, s7, 1387
                  srai         tp, a3, 9
                  sltiu        a4, s10, 1104
                  addi         s4, s10, -318
                  and          t5, s2, a4
                  remu         t3, t1, zero
                  div          s7, a5, sp
                  c.andi       a4, -1
                  ori          t1, s9, -1820
                  lui          s5, 1044023
                  sub          a0, ra, s9
                  c.mv         a3, s7
                  srli         t4, gp, 20
                  addi         a0, t3, 768
                  sltiu        s10, a1, -57
                  c.mv         s8, s8
                  sub          t6, a6, a6
                  c.addi       a2, -1
                  remu         t2, s8, a1
                  srli         zero, t1, 21
                  and          zero, a4, s1
                  xor          s8, a6, t0
                  c.slli       t5, 24
                  slli         s2, a0, 0
                  ori          tp, ra, -842
                  mulhu        a3, a4, a4
                  sltiu        a5, t5, -1966
                  c.sub        a4, a3
                  c.add        ra, s11
                  slti         a1, t5, -917
                  srli         t2, t2, 8
                  rem          s1, s1, a3
                  add          zero, a5, t2
                  srli         a5, t2, 5
                  xori         t1, s1, 1733
                  mul          s4, t2, a6
                  divu         s3, s11, t3
                  srai         zero, s1, 15
                  remu         t0, s0, s1
                  add          a7, t3, t4
                  slli         t1, a0, 16
                  c.andi       s1, 11
                  mulhsu       a1, a6, a2
                  xori         t0, a4, -802
                  addi         s4, a0, 614
                  divu         s0, sp, a1
                  xor          s11, t2, s4
                  c.li         a4, -1
                  sltiu        a7, tp, 54
                  slli         s5, a7, 8
                  mulhu        a0, a0, zero
                  c.andi       a0, -1
                  remu         s2, s4, s8
                  c.srli       a3, 5
                  or           tp, a7, s4
                  c.xor        s0, a5
                  sltu         a3, s5, sp
                  nop
                  mulh         s3, ra, a2
                  add          zero, a1, s10
                  add          a4, s4, t1
                  sub          s8, sp, zero
                  rem          t6, zero, gp
                  c.srai       a4, 31
                  c.li         a5, 22
                  c.xor        a2, a4
                  sll          t4, t2, s8
                  c.andi       a1, -1
                  c.add        s11, a5
                  mulhu        s4, s8, a6
                  or           s2, s2, s4
                  c.and        a0, s1
                  c.srai       a4, 18
                  div          t0, t5, a4
                  or           a7, tp, a0
                  slt          t5, a2, a6
                  rem          s4, s8, t2
                  c.srli       a1, 31
                  c.slli       a1, 24
                  ori          ra, a6, -90
                  xori         t1, t2, 1527
                  sltiu        a1, t3, 918
                  c.and        a5, s0
                  c.srai       a2, 14
                  mulh         a1, sp, s0
                  or           a3, s6, a0
                  srai         s4, s11, 8
                  srl          t3, s2, a4
                  c.and        a5, a0
                  lui          a2, 497155
                  xori         t6, s4, 1134
                  xori         ra, s1, -847
                  xor          t6, s5, t3
                  lui          t4, 492380
                  srli         s3, s3, 26
                  slt          ra, s2, t3
                  srl          s7, a1, gp
                  c.slli       s10, 16
                  c.srai       s1, 6
                  c.andi       a1, -1
                  slti         s2, s7, 778
                  c.slli       a2, 27
                  sltu         s2, s1, t5
                  add          s0, s0, gp
                  mulhsu       a7, s1, s8
                  c.andi       a4, 31
                  c.and        s0, a0
                  sub          s2, t1, s2
                  c.xor        a2, a3
                  mulh         s9, a2, s8
                  c.li         a0, 22
                  addi         zero, s11, -300
                  addi         t2, s7, -1726
                  c.mv         s0, s11
                  sltu         s8, s11, a7
                  andi         s8, zero, 625
                  mul          t3, s5, a4
                  c.xor        a4, a3
                  c.andi       a3, -1
                  nop
                  mulhu        a4, zero, t3
                  srl          t2, t5, ra
                  c.lui        a5, 7
                  c.srai       a5, 21
                  srli         s3, zero, 20
                  auipc        tp, 207550
                  sub          s10, a3, a7
                  c.nop
                  xori         s4, a4, -1025
                  sltu         zero, s0, s8
                  c.andi       a3, -1
                  sltiu        s4, s5, -1059
                  sltiu        t1, s1, -375
                  xori         s1, s2, -805
                  mulhu        s1, sp, gp
                  c.or         a4, a2
                  c.li         s3, -1
                  slti         s10, s7, 412
                  sub          t4, t5, gp
                  mulh         s2, gp, t4
                  xori         s9, s11, 1803
                  slli         s7, t4, 23
                  or           s4, s0, t0
                  nop
                  xori         s11, t6, 1970
                  add          t1, s10, gp
                  lui          t2, 840389
                  ori          t5, s5, 534
                  c.li         tp, 22
                  sll          a3, s8, s11
                  srai         gp, sp, 10
                  c.mv         s5, s3
                  and          a2, t6, ra
                  rem          s1, zero, s1
                  xor          s9, s0, s7
                  sll          a2, s7, s8
                  c.srai       a5, 16
                  c.li         ra, -1
                  add          a1, s2, s0
                  mul          ra, gp, sp
                  slt          s2, s2, sp
                  c.add        a4, t4
                  c.addi       tp, 13
                  c.lui        s7, 11
                  srli         tp, s0, 27
                  ori          ra, s8, -247
                  c.add        s9, s0
                  c.lui        t3, 11
                  c.addi       s2, 29
                  xori         tp, s8, 440
                  div          s2, s11, t2
                  sltiu        a7, s10, 464
                  lui          s4, 143823
                  c.add        s5, s9
                  srli         s10, s5, 12
                  mul          s3, s7, a2
                  rem          a7, s10, t1
                  c.lui        t3, 6
                  and          t1, s6, s8
                  c.sub        a0, a1
                  nop
                  and          s10, s11, a4
                  c.xor        s0, s0
                  mulh         t1, s8, s6
                  slli         gp, a1, 26
                  c.li         a4, 29
                  srai         s3, s7, 1
                  c.or         a5, a0
                  remu         t2, a6, a6
                  auipc        a3, 196042
                  sltiu        a1, a2, -642
                  slti         s4, s3, 1039
                  c.andi       s0, 22
                  ori          t4, s4, 1044
                  c.xor        s0, a2
                  div          s4, s1, s6
                  c.srai       a0, 18
                  sltiu        a3, s5, 1687
                  c.nop
                  addi         a5, sp, -1758
                  nop
                  mulhsu       t5, gp, a3
                  mulhu        ra, sp, s7
                  ori          s4, s11, 111
                  div          s2, sp, zero
                  c.sub        a5, a5
                  auipc        s0, 903414
                  c.and        a5, a1
                  c.srai       a2, 15
                  sra          t1, s2, zero
                  ori          s1, a3, 1884
                  srl          s9, t3, s7
                  c.andi       a4, -1
                  srli         zero, t1, 1
                  and          s1, a5, t0
                  rem          t5, a7, s4
                  addi         s0, a5, 1644
                  xor          s3, t0, s10
                  c.srai       a3, 1
                  slt          t1, gp, a3
                  c.andi       a3, 5
                  c.or         a2, a0
                  nop
                  srli         s4, a3, 28
                  andi         s10, a5, -62
                  divu         s9, s4, a6
                  xor          ra, t5, t6
                  c.sub        a3, a3
                  mulhu        t0, t2, s2
                  srl          s2, t3, tp
                  remu         t6, gp, a2
                  c.nop
                  c.nop
                  slt          a0, t4, s10
                  c.andi       a5, -1
                  ori          s9, t4, -1733
                  c.srli       s0, 1
                  srli         zero, a3, 6
                  slli         a7, s8, 1
                  xor          t3, s1, zero
                  divu         s11, a2, s1
                  srai         gp, ra, 3
                  c.andi       a5, -1
                  srli         s2, s10, 21
                  sltiu        t4, sp, -165
                  sltiu        s7, t1, 1103
                  mulhu        a3, zero, a5
                  c.slli       a0, 12
                  div          tp, s9, s5
                  c.or         a1, a3
                  ori          t4, a4, 671
                  c.sub        a3, a2
                  c.or         s0, a2
                  c.and        s1, s0
                  c.add        s2, t1
                  mulhu        a4, a3, s1
                  c.mv         s11, t3
                  mulhu        a4, t3, t6
                  mul          a7, s9, a7
                  mulhu        tp, t4, gp
                  c.addi       a1, 26
                  slt          s10, tp, s1
                  c.slli       s7, 28
                  c.mv         t5, a0
                  slli         t0, a4, 24
                  sll          s5, zero, a1
                  slli         a5, a5, 17
                  andi         a0, a3, -1823
                  c.srli       a3, 22
                  c.sub        a4, s1
                  sltiu        s2, tp, 1796
                  srli         s5, t2, 11
                  nop
                  divu         s7, s6, tp
                  remu         zero, s2, a3
                  divu         t2, t4, t2
                  c.addi       s8, 11
                  c.addi       s9, -1
                  sra          a1, ra, a3
                  c.nop
                  addi         a2, s4, -1941
                  c.or         a1, a1
                  slti         t3, t1, -443
                  auipc        s7, 970993
                  srl          a3, ra, t2
                  sub          s2, gp, t5
                  c.slli       s8, 7
                  sltu         zero, s3, t1
                  c.andi       s0, -1
                  add          t5, s8, s0
                  c.li         t5, 25
                  add          t0, s2, s10
                  c.andi       a1, -1
                  slti         s8, a0, -1280
                  or           s0, a7, t4
                  c.nop
                  c.andi       a0, 11
                  slti         s1, tp, 625
                  slti         a1, s3, 1304
                  div          s0, t1, a2
                  c.mv         t3, s7
                  c.lui        t6, 19
                  auipc        a4, 599595
                  mulh         s10, zero, t6
                  c.andi       a0, -1
                  c.lui        s8, 12
                  slli         s11, s1, 4
                  srai         s1, t5, 31
                  mulh         s0, t4, ra
                  slti         a3, a3, 671
                  c.xor        s0, a3
                  sra          s5, t0, s0
                  c.add        tp, s5
                  c.xor        a2, s0
                  sltiu        s0, a4, -1919
                  sub          gp, s8, a1
                  c.li         tp, -1
                  div          s2, t6, zero
                  nop
                  nop
                  c.li         s1, -1
                  c.li         a5, -1
                  sra          a3, s8, s6
                  slt          zero, s6, s6
                  lui          tp, 449493
                  c.and        a2, s1
                  mulhu        s11, s6, ra
                  add          s5, tp, s11
                  remu         s7, ra, sp
                  slt          t4, t0, s1
                  c.slli       s2, 27
                  c.and        s0, a4
                  c.add        a2, s10
                  sra          s1, a7, s3
                  c.sub        s0, a2
                  c.li         s0, 28
                  c.lui        t2, 13
                  lui          tp, 551280
                  ori          a2, s10, 1078
                  c.nop
                  or           s2, a2, s6
                  andi         s9, s10, -1673
                  divu         a4, gp, a1
                  xor          a4, t6, ra
                  xor          a1, tp, a4
                  mulhsu       t1, ra, sp
                  c.srai       a4, 4
                  or           s2, a3, t6
                  and          s10, s1, s9
                  andi         s10, a4, 92
                  sra          t6, t1, s5
                  rem          s7, ra, a7
                  remu         a0, a5, t4
                  slti         a0, s4, -1443
                  sll          a5, s5, t1
                  c.slli       s4, 6
                  slli         s7, s4, 27
                  c.xor        a4, a4
                  addi         t4, zero, 275
                  c.nop
                  and          t4, t5, s6
                  addi         a4, t3, -1212
                  add          s4, s2, a5
                  xori         s8, t3, 995
                  c.sub        a5, a1
                  andi         t2, s4, -1078
                  c.add        a7, gp
                  sll          s5, a5, s6
                  mul          a1, gp, gp
                  c.xor        a3, a5
                  c.mv         a2, s0
                  xor          s9, s8, s10
                  c.xor        a3, s0
                  sub          s4, gp, s10
                  or           t3, s6, t5
                  andi         a7, s11, -1444
                  sltiu        a7, s5, 1643
                  andi         s8, s7, -335
                  srai         zero, s9, 28
                  andi         a2, s9, 1072
                  mulh         a5, a6, t4
                  srli         s2, t0, 11
                  srl          a3, a7, zero
                  add          t4, s11, s11
                  auipc        t0, 406534
                  slti         a2, s11, -1856
                  c.srai       a1, 26
                  or           gp, sp, a6
                  div          t2, sp, tp
                  slt          tp, s0, s2
                  c.and        a1, a3
                  c.mv         a1, ra
                  c.andi       a4, 20
                  c.xor        a2, a1
                  and          t5, s9, t6
                  slli         a7, tp, 5
                  mulh         s4, t1, a7
                  mul          s8, s2, a6
                  ori          t0, a6, -1259
                  andi         s11, ra, -757
                  remu         s7, a7, a1
                  srli         t3, t3, 12
                  c.andi       a3, 21
                  auipc        s7, 429562
                  addi         a5, a3, -1584
                  div          a4, t0, gp
                  addi         t5, s6, 1926
                  c.add        t5, s8
                  addi         t1, t3, 1695
                  srai         a2, t5, 4
                  c.srai       a3, 21
                  sub          s4, s0, t3
                  sll          s8, t5, a7
                  c.or         a5, a2
                  c.andi       a5, -1
                  or           s1, t6, sp
                  slt          s5, sp, s2
                  srli         a2, a1, 2
                  and          t4, a5, s8
                  nop
                  ori          a5, t1, -130
                  srai         s3, s5, 11
                  c.or         a5, a3
                  c.srli       a2, 7
                  lui          a4, 914765
                  c.mv         gp, ra
                  c.mv         s7, s9
                  sltiu        s7, s0, -273
                  and          a0, a7, s10
                  and          s10, a0, a5
                  ori          a2, s2, 59
                  srli         s2, gp, 28
                  c.li         a4, -1
                  div          s5, a6, s6
                  or           t5, a3, t1
                  div          ra, ra, t2
                  slti         t1, zero, -1649
                  c.sub        a5, s1
                  c.nop
                  rem          s2, t0, a6
                  sltiu        zero, a4, -1152
                  c.add        t1, s6
                  ori          t0, t0, 944
                  c.or         a4, s1
                  sra          t0, s6, t0
                  slti         a1, t2, -1738
                  mulh         s9, s8, s9
                  add          s11, t6, a1
                  and          t0, t5, a5
                  add          zero, gp, s6
                  xor          t0, a3, s0
                  ori          gp, s5, -1542
                  c.or         s0, a1
                  ori          a2, a6, -338
                  xor          s2, a3, a0
                  remu         s4, t2, s4
                  srli         ra, s7, 17
                  mul          s9, s5, zero
                  c.or         a4, s0
                  add          a3, t4, sp
                  c.sub        a2, s0
                  mul          tp, s1, s11
                  div          ra, a1, t5
                  remu         a0, t0, s11
                  sltu         zero, t1, s2
                  xori         a5, s6, -548
                  div          a7, s1, t0
                  nop
                  sll          s2, t0, s3
                  c.srai       a3, 30
                  srl          s3, a1, gp
                  srl          s11, s5, s6
                  srl          t3, t6, s2
                  c.li         a3, 18
                  mulhsu       s7, t3, t0
                  rem          gp, a3, a4
                  c.and        s0, a2
                  sra          ra, a0, zero
                  mulhsu       a4, ra, t3
                  c.srli       s0, 22
                  remu         s2, a1, s5
                  nop
                  ori          gp, t2, 618
                  c.slli       s1, 10
                  mul          s1, ra, a5
                  c.li         s0, 2
                  c.andi       a5, 4
                  nop
                  c.add        gp, gp
                  auipc        t0, 634225
                  c.nop
                  c.srli       a0, 13
                  divu         a5, s6, tp
                  sub          s8, t1, zero
                  slti         t0, a1, 394
                  auipc        s7, 301964
                  c.mv         s7, t4
                  or           s2, a5, t1
                  addi         tp, s1, -969
                  add          s9, t6, t1
                  slt          s0, s9, a2
                  auipc        s1, 1019415
                  c.slli       s11, 17
                  xor          s2, a4, s1
                  srl          a0, a2, a6
                  c.sub        s1, s0
                  c.and        a0, a4
                  xor          s4, a5, sp
                  c.srai       a3, 2
                  and          zero, s1, s8
                  c.srai       s0, 23
                  sltiu        a0, t1, -312
                  andi         t1, s8, -41
                  c.mv         t2, s9
                  c.nop
                  addi         t4, a6, -461
                  c.xor        s1, s1
                  c.lui        t4, 23
                  slti         tp, ra, -1034
                  and          t5, a3, a0
                  srai         a3, a3, 26
                  c.xor        s1, s1
                  c.xor        s1, a2
                  xori         a5, s2, 841
                  slt          s0, s11, t4
                  divu         s1, s8, a1
                  c.mv         t5, s9
                  lui          s8, 86085
                  sltiu        s3, t1, -1882
                  divu         a7, a7, s9
                  c.sub        a2, a3
                  c.and        a4, a0
                  srai         t0, a1, 17
                  c.add        ra, s0
                  srli         ra, a5, 16
                  c.srli       a5, 6
                  c.lui        a1, 12
                  xori         s3, tp, 123
                  srl          t2, s2, a3
                  srai         s3, t4, 20
                  sra          a7, gp, s1
                  sub          s0, t6, t6
                  mul          s8, t0, s9
                  add          a1, s1, s6
                  c.mv         a4, s0
                  sll          a0, t2, a2
                  c.or         a0, s0
                  srli         a5, s11, 29
                  and          s2, a5, tp
                  c.and        a3, a2
                  c.andi       s0, 23
                  c.nop
                  mulhu        s9, gp, s6
                  mulhsu       s4, s8, a3
                  andi         tp, a1, -1328
                  divu         a2, tp, zero
                  srai         a7, sp, 3
                  sra          s11, a3, a0
                  mulh         t2, a5, a3
                  c.or         a3, a2
                  slt          a4, t4, a2
                  div          tp, t3, s1
                  and          t3, sp, t1
                  xori         s5, t3, -392
                  c.sub        a5, s0
                  c.xor        s0, a5
                  sll          gp, s1, zero
                  andi         s3, s0, -433
                  auipc        tp, 887929
                  auipc        zero, 153639
                  and          s7, s7, a0
                  sub          t3, s1, s10
                  c.srli       s0, 24
                  sltiu        s1, t2, -1345
                  sltu         s2, s11, s2
                  xor          s1, s11, s7
                  andi         a5, gp, -1883
                  mul          a4, s3, s3
                  ori          t6, a0, -1968
                  slli         t3, s5, 2
                  sll          t2, s1, a6
                  c.nop
                  srl          a1, t3, s1
                  mul          s11, t2, t4
                  nop
                  c.nop
                  c.and        a1, a1
                  nop
                  addi         s0, t6, 1767
                  lui          t1, 463187
                  div          t1, s7, s8
                  divu         s2, a1, s7
                  c.sub        a5, a0
                  sltu         a2, t3, zero
                  c.srli       s1, 26
                  and          s9, s0, ra
                  div          t6, s0, s6
                  c.or         s0, a1
                  c.andi       s0, -1
                  c.add        s11, a2
                  divu         s2, sp, ra
                  sltiu        s11, a6, 627
                  and          a1, s1, t3
                  c.srai       a5, 16
                  sll          t1, s10, a2
                  xor          t2, a6, t0
                  c.xor        a0, a2
                  sub          t1, t3, s7
                  c.and        s1, a2
                  c.lui        t6, 5
                  c.lui        s9, 16
                  sltiu        a0, a7, -1504
                  and          s5, t3, a4
                  c.sub        s1, a5
                  sra          s1, s4, t0
                  addi         zero, t5, -1444
                  srli         t2, zero, 10
                  remu         t2, t6, s3
                  c.andi       a0, 27
                  auipc        a3, 999955
                  sll          s4, s4, s1
                  mulhsu       t6, s1, s10
                  c.nop
                  xor          s5, t4, ra
                  c.li         s0, -1
                  c.mv         a3, s8
                  sra          s4, s7, a2
                  sltiu        a3, s9, -171
                  slli         s10, a5, 13
                  or           t4, t5, s6
                  c.srai       a1, 25
                  sra          t3, t2, ra
                  c.and        a4, a1
                  addi         s2, a0, 1459
                  srai         s3, a2, 11
                  c.xor        a1, a1
                  sra          t1, s1, s5
                  and          a0, s7, s0
                  slt          s2, ra, zero
                  c.srli       a2, 7
                  mul          a2, a3, t6
                  div          t1, s11, a5
                  sll          a3, s5, a2
                  divu         a7, tp, t6
                  ori          a7, a2, 803
                  c.addi       s0, -1
                  c.add        a0, t4
                  and          s3, t6, t3
                  lui          s3, 163837
                  sll          zero, a6, a2
                  c.slli       a3, 27
                  c.lui        s2, 4
                  addi         s7, ra, -429
                  remu         t3, a0, gp
                  c.lui        s1, 6
                  and          t6, a5, s4
                  c.srli       a5, 21
                  mul          a4, a2, s6
                  xor          s7, t4, a1
                  and          a2, s1, s5
                  mul          t6, t5, t3
                  sltiu        s2, a3, 1575
                  add          a4, a3, s0
                  xor          t4, s5, s2
                  auipc        a4, 1041884
                  mulhsu       s2, s6, t5
                  xori         a0, ra, 653
                  sltiu        s7, t3, 790
                  c.srai       a0, 12
                  sub          s10, t2, s4
                  sub          s11, tp, s2
                  andi         s11, s2, 440
                  div          tp, s3, s10
                  slli         ra, s7, 6
                  mulhsu       ra, gp, s8
                  c.add        s2, s0
                  sltu         s1, s5, s3
                  andi         t4, a1, -624
                  c.lui        a4, 1
                  srai         s0, s1, 8
                  c.sub        a5, a4
                  auipc        zero, 335138
                  add          gp, t6, s3
                  c.mv         tp, t3
                  andi         t1, s0, -244
                  srai         s2, a1, 23
                  sra          t5, s2, ra
                  c.lui        s0, 25
                  divu         a3, s11, s7
                  c.and        a5, a5
                  slti         t2, s1, -644
                  c.addi       gp, -1
                  add          t3, t4, a0
                  mulh         t5, s4, t4
                  slti         s3, a2, 1546
                  divu         t5, a3, a0
                  sltiu        s5, t6, -995
                  sub          a1, sp, a1
                  divu         s8, s3, t5
                  slli         a7, s10, 5
                  remu         t2, gp, a6
                  sra          s8, t4, t2
                  lui          t6, 82422
                  c.nop
                  c.srai       a4, 1
                  mulhsu       s1, t4, s2
                  addi         s8, t0, -69
                  c.sub        a4, a2
                  srai         s9, s7, 27
                  c.slli       s5, 12
                  mulhsu       a3, s3, s11
                  nop
                  remu         t3, tp, t0
                  srai         s1, s3, 10
                  div          a7, a4, s2
                  srl          s2, s2, s3
                  and          tp, tp, gp
                  mulhu        t4, s5, t6
                  or           a0, s3, a6
                  xor          t1, s9, t2
                  div          t0, gp, gp
                  mulhu        s10, t2, tp
                  c.add        t1, s3
                  rem          a1, a2, a0
                  sll          s8, s10, s5
                  lui          t2, 1028138
                  rem          a0, s3, s3
                  divu         gp, s8, a6
                  srl          a0, t5, t6
                  or           s1, s7, gp
                  sra          s3, s4, s11
                  c.or         a0, a1
                  auipc        ra, 103572
                  c.xor        a5, s1
                  nop
                  srl          t4, t0, a6
                  mulhu        ra, t5, t4
                  c.xor        a1, a0
                  mulhsu       s2, tp, s5
                  add          s2, a6, a3
                  c.nop
                  sll          a2, s1, zero
                  sltu         a3, s0, s8
                  c.and        a0, s0
                  sltu         gp, gp, t0
                  sltu         zero, a6, a0
                  c.xor        s0, s0
                  mul          t3, ra, t0
                  c.srli       a2, 25
                  c.and        s0, a5
                  slti         t6, s6, 473
                  ori          s9, a6, 1288
                  c.addi       t5, -1
                  ori          s0, a1, 1361
                  c.add        s1, a0
                  slli         s7, s10, 16
                  c.srai       a3, 11
                  slti         a0, sp, -1505
                  rem          s10, sp, s11
                  lui          zero, 750082
                  mulhsu       a5, s8, t2
                  mul          s2, s0, a7
                  c.sub        a2, s1
                  mulhsu       t6, ra, sp
                  c.slli       a1, 25
                  sra          zero, a2, s8
                  mulhu        zero, s10, t2
                  xor          t1, s7, a4
                  srl          s10, s9, ra
                  nop
                  div          t6, s2, a3
                  xor          t5, s0, gp
                  andi         t5, sp, -1403
                  sra          a3, t6, t1
                  srl          a2, s1, t5
                  andi         t5, s8, 1059
                  srai         t1, a1, 0
                  srai         s10, zero, 1
                  ori          s9, ra, 926
                  srl          a1, s9, a5
                  srl          t3, tp, s10
                  add          gp, s9, gp
                  ori          a5, t0, 2046
                  mulhsu       t4, a3, s10
                  ori          t1, a3, 508
                  c.lui        t5, 10
                  ori          zero, s6, -852
                  c.li         t5, -1
                  andi         a0, s5, -915
                  mulhu        a7, a4, t1
                  srli         a0, s3, 29
                  add          s11, s10, a1
                  sra          t6, a4, tp
                  c.or         a5, a3
                  div          gp, s9, a7
                  sltiu        s10, a2, -1555
                  sra          t6, a5, s3
                  sub          s1, tp, t5
                  mul          s9, s6, s7
                  c.srli       a4, 3
                  srli         s11, ra, 10
                  divu         s3, s1, s4
                  and          s1, s9, a3
                  c.srai       a4, 30
                  andi         gp, t4, -540
                  andi         s7, gp, 501
                  addi         s4, s9, 1020
                  sra          s0, s9, a1
                  c.addi       s2, -1
                  mulhu        s10, s0, a0
                  srli         a1, a0, 17
                  mulhu        gp, a3, s5
                  addi         t3, s5, -1860
                  and          tp, s0, t0
                  c.nop
                  mulhsu       ra, a2, s11
                  c.srai       a3, 28
                  sltu         ra, a3, s7
                  slt          s1, s7, s1
                  andi         ra, s4, 986
                  sltiu        s1, tp, 240
                  and          a1, s3, s1
                  mul          gp, s11, a4
                  mulhu        t6, s2, ra
                  mulh         s11, a2, t0
                  c.nop
                  c.sub        a4, a0
                  sra          s11, s0, t2
                  rem          s2, t5, a7
                  srai         a2, t4, 9
                  or           s10, a5, t4
                  add          s2, tp, s1
                  xor          tp, ra, t2
                  nop
                  c.srai       a0, 11
                  div          a3, s10, a3
                  c.srli       a1, 25
                  c.slli       s8, 29
                  andi         gp, s11, 688
                  mulhsu       a5, t2, s4
                  sltu         a3, s5, t1
                  c.addi       gp, 22
                  mulhu        t0, a5, zero
                  c.andi       a4, -1
                  c.li         a2, 16
                  ori          s3, s9, 1943
                  c.xor        s1, a0
                  sltu         t1, s3, t6
                  c.lui        t2, 12
                  c.srai       a0, 17
                  auipc        s4, 320077
                  srai         zero, t5, 4
                  c.mv         s9, t1
                  mulhsu       s11, a0, gp
                  sra          s9, a2, a2
                  c.add        s2, s11
                  c.andi       s0, 1
                  auipc        t0, 54242
                  and          a3, gp, t6
                  c.xor        a4, a3
                  slt          s5, a5, s10
                  c.li         a7, 26
                  rem          s2, s10, zero
                  srli         tp, a7, 24
                  mul          s9, s4, s6
                  c.srai       a5, 17
                  c.li         t3, -1
                  srli         t0, t3, 21
                  xori         a5, a4, -1378
                  sll          zero, a5, s11
                  andi         t3, t1, 967
                  srli         a1, s1, 21
                  slt          s0, s3, a6
                  c.mv         s9, t3
                  c.srli       a3, 2
                  c.srai       a3, 22
                  divu         s3, s1, s9
                  and          s10, s7, a5
                  remu         s4, t3, a3
                  slli         t6, a5, 10
                  c.add        t3, a4
                  mulh         a7, zero, s10
                  sll          s3, s5, s1
                  sltu         a1, t2, a6
                  and          s9, t4, s3
                  c.or         a3, a4
                  andi         a4, t3, 1796
                  mulh         zero, t1, t6
                  c.addi       t4, 26
                  c.and        a1, a0
                  remu         a0, s9, a6
                  c.li         a2, 3
                  ori          t2, tp, -88
                  sltu         s2, t5, s10
                  c.andi       a5, -1
                  lui          a3, 366379
                  ori          s1, gp, 55
                  sll          gp, t4, t5
                  c.add        s3, s1
                  slli         t2, zero, 1
                  c.and        s0, a1
                  c.add        t6, s9
                  c.lui        t6, 13
                  c.slli       a5, 2
                  divu         a0, ra, s5
                  xori         s0, s5, 1724
                  c.li         s10, 27
                  c.addi       a1, 8
                  c.andi       s1, 23
                  c.andi       a5, -1
                  c.nop
                  mulh         t1, t3, zero
                  c.xor        a3, s1
                  srl          t6, t4, s5
                  or           s10, t3, t5
                  div          s2, sp, t5
                  c.andi       s1, -1
                  nop
                  divu         s2, a6, t6
                  mulh         s5, t6, s1
                  mul          gp, s7, ra
                  sll          s1, a5, s10
                  c.nop
                  xor          s1, gp, a5
                  srai         ra, s11, 0
                  sll          t5, tp, s8
                  sub          s4, a5, a4
                  divu         a0, t4, ra
                  sltiu        a7, a5, 360
                  div          t0, s8, a2
                  c.srai       a5, 5
                  c.add        s0, a0
                  ori          t6, t5, 1480
                  c.mv         tp, t1
                  mul          t5, t2, ra
                  srli         zero, t2, 19
                  c.xor        a4, a1
                  nop
                  andi         gp, tp, -717
                  sltu         a2, a5, tp
                  div          s10, s7, s4
                  c.or         a4, s1
                  nop
                  c.srai       s0, 26
                  c.li         ra, -1
                  c.add        a0, a3
                  c.add        s7, a5
                  c.srai       a5, 5
                  slli         t3, sp, 19
                  sltu         a7, zero, t6
                  or           a4, s5, gp
                  slt          s9, a3, zero
                  addi         t2, s1, -321
                  srli         s10, t0, 30
                  c.sub        a1, a5
                  xor          a4, a4, tp
                  slti         t4, zero, 783
                  mulhu        tp, a1, s10
                  c.xor        a2, a5
                  sltiu        s9, a6, 1676
                  srli         s8, zero, 2
                  auipc        s7, 669983
                  mulhsu       t4, t1, sp
                  xor          gp, s3, tp
                  sltiu        t1, a7, 4
                  auipc        s11, 836610
                  c.xor        a5, a1
                  c.xor        s0, a3
                  c.sub        a0, a4
                  sra          ra, gp, a3
                  xori         t5, s11, 496
                  sra          a2, s11, a7
                  mulhu        zero, t6, s6
                  rem          t3, gp, a0
                  c.srli       a1, 31
                  lui          s9, 758344
                  sra          a5, tp, a0
                  sra          s2, a7, s3
                  rem          s2, s6, tp
                  or           s9, a1, tp
                  mulh         t3, a1, s3
                  c.add        a7, s2
                  srai         s7, t5, 15
                  c.and        a3, a1
                  andi         gp, sp, 981
                  c.xor        s0, a4
                  sltu         a2, s10, sp
                  sltiu        a4, s9, 2014
                  srai         s9, s8, 3
                  c.lui        gp, 16
                  slt          t4, s1, s6
                  xor          a4, s7, sp
                  slli         s2, a1, 11
                  mulhu        t1, ra, a1
                  srli         t4, t6, 22
                  c.or         s0, s0
                  srli         s8, a5, 11
                  sll          s8, ra, s7
                  sub          zero, s5, tp
                  rem          a0, a1, a5
                  c.li         t1, -1
                  c.add        a0, s11
                  rem          s1, s10, s8
                  xor          t1, gp, s2
                  or           t0, s1, t4
                  c.add        s1, a4
                  c.xor        a2, a3
                  lui          s9, 395226
                  sub          s10, a3, a1
                  c.sub        a3, a2
                  c.li         t4, -1
                  c.lui        s2, 27
                  c.and        a4, a4
                  srai         s9, s7, 17
                  srl          t3, s9, s2
                  xori         t1, t5, -1661
                  c.mv         t5, s6
                  nop
                  c.mv         t1, s7
                  srl          t0, a7, t4
                  andi         s10, a0, 833
                  sltu         a5, s6, t5
                  mulhu        s11, s6, t3
                  divu         a7, a0, a3
                  auipc        t6, 888189
                  sltiu        s7, sp, -274
                  sra          s11, a1, t4
                  add          ra, a7, t5
                  c.sub        a2, a4
                  c.add        t4, a0
                  c.srli       a2, 21
                  c.li         s0, 5
                  c.li         ra, 26
                  srl          s8, t2, t6
                  srli         gp, t5, 27
                  c.srai       s0, 23
                  c.sub        a1, a5
                  remu         t0, a0, a7
                  c.xor        a1, s0
                  mul          s7, s11, s4
                  c.andi       a4, -1
                  mulhsu       t2, s11, s8
                  addi         s10, t5, -708
                  c.li         a5, 1
                  c.li         s2, -1
                  div          ra, a1, t1
                  mulhu        tp, s4, tp
                  sll          t2, s11, t2
                  c.or         a1, a0
                  sub          s2, s1, s11
                  nop
                  ori          s8, t4, 1143
                  sub          a7, s0, s0
                  mulh         s3, s11, s3
                  add          t4, t0, sp
                  c.srai       a4, 7
                  srli         s2, a6, 7
                  c.li         t4, -1
                  c.slli       t4, 17
                  mulhu        t1, s10, a0
                  c.lui        a7, 13
                  srl          tp, t2, s2
                  slli         a5, a1, 12
                  xor          t5, t6, ra
                  sltiu        a7, a1, -466
                  c.slli       s5, 23
                  and          a5, a3, s4
                  slt          s4, a3, a4
                  mulhu        a5, ra, t0
                  c.and        s0, s0
                  mulhu        s1, gp, t1
                  sub          s2, s11, s0
                  remu         a3, s4, s5
                  addi         s11, gp, 483
                  slt          a0, t4, t4
                  c.sub        s0, a4
                  nop
                  div          s8, s11, t1
                  sltu         s7, s2, s10
                  c.or         a3, a1
                  auipc        s5, 772923
                  sll          a3, t1, a3
                  c.xor        s0, a4
                  slli         s10, gp, 12
                  ori          gp, s3, -417
                  sltiu        ra, zero, 160
                  rem          a0, zero, a0
                  c.addi       gp, -1
                  divu         a0, s1, a2
                  sltiu        a5, t1, 847
                  mulh         s9, a6, ra
                  c.slli       s2, 22
                  sltu         a3, zero, s1
                  sll          s9, a0, tp
                  and          a1, s6, s10
                  sltiu        t2, a5, 1104
                  c.srli       s0, 5
                  rem          a1, sp, t6
                  c.or         a5, a1
                  c.sub        s0, s0
                  addi         a2, a2, -2031
                  slli         a5, t5, 17
                  srai         s1, gp, 11
                  slti         ra, t6, 487
                  sub          a5, s2, s3
                  sltiu        tp, s7, -345
                  c.nop
                  divu         zero, s5, gp
                  slti         a5, s6, 459
                  and          s7, t2, tp
                  and          s8, a2, a6
                  c.srli       a1, 16
                  remu         t5, t2, s1
                  c.nop
                  divu         t1, a7, s1
                  sltiu        a2, s11, 413
                  lui          s0, 693600
                  or           a5, a5, sp
                  auipc        a3, 692810
                  and          a7, t6, s8
                  sra          s0, a3, t0
                  rem          a4, t3, ra
                  c.xor        a2, a5
                  c.andi       a5, -1
                  mulhu        s0, a5, a7
                  c.slli       a7, 14
                  c.srli       a3, 30
                  or           t3, tp, s9
                  xor          s3, a1, a4
                  c.and        a2, s1
                  divu         s5, s11, gp
                  slt          s5, s4, a5
                  srai         t5, t3, 31
                  remu         s8, a3, s7
                  srl          t6, s8, ra
                  c.andi       a3, 11
                  mulh         a0, s8, t6
                  srli         ra, zero, 20
                  sltiu        zero, t0, -482
                  slli         a1, s4, 18
                  c.addi       s11, 31
                  slli         t6, t0, 27
                  sra          s8, tp, a7
                  c.slli       s5, 12
                  c.li         s2, 20
                  c.li         s4, -1
                  c.andi       a5, -1
                  srli         gp, t3, 26
                  c.or         a3, s0
                  xor          t5, gp, a7
                  c.srli       s0, 27
                  c.and        a2, a4
                  ori          s7, s3, -1778
                  c.lui        t6, 16
                  c.add        s2, s10
                  nop
                  c.slli       s4, 30
                  c.srli       a3, 10
                  rem          s10, t6, zero
                  slti         s2, t1, -1923
                  c.andi       a5, -1
                  mulhu        t3, a1, t6
                  c.mv         s3, t2
                  lui          tp, 724567
                  c.addi       s8, -1
                  andi         s5, s7, 361
                  slti         s5, t0, -838
                  addi         ra, s6, -1187
                  xori         t5, a2, 1211
                  c.lui        s9, 21
                  sltu         s4, s10, ra
                  sltiu        s5, a0, 1853
                  slt          a5, s1, s3
                  and          s2, s3, t1
                  div          s11, s0, t6
                  sltu         s7, s11, t6
                  c.sub        a1, s1
                  slti         a2, ra, -957
                  slli         s8, s2, 21
                  div          t4, s7, a5
                  c.sub        a0, a3
                  xor          s7, t0, a5
                  srl          s0, a7, t3
                  mulhsu       a2, t2, s3
                  nop
                  c.srli       a0, 22
                  sra          s10, s1, t6
                  c.addi       t0, 20
                  addi         t1, s4, -562
                  mul          a3, t2, a3
                  c.lui        a0, 25
                  slt          s10, t6, t6
                  remu         s8, t3, a3
                  srli         s9, zero, 14
                  c.lui        ra, 23
                  rem          s4, a7, ra
                  mulh         a7, s11, t1
                  andi         t1, t4, 339
                  c.sub        a2, a0
                  c.or         s1, a1
                  sltiu        s8, a1, -1602
                  slti         s2, s10, -80
                  rem          t5, s10, t3
                  mulhu        t4, s11, ra
                  sltu         s1, a5, tp
                  slti         s4, zero, 1462
                  auipc        t5, 346667
                  c.li         a5, -1
                  srai         s10, t1, 29
                  srai         a4, s6, 29
                  sltu         tp, a3, a5
                  c.and        s1, a1
                  mul          s5, s6, s2
                  add          tp, t6, t6
                  c.srli       a0, 11
                  c.slli       s9, 7
                  or           s3, a3, s0
                  mul          s3, s1, s0
                  mulh         s10, a4, tp
                  c.andi       a1, 0
                  lui          a5, 982818
                  xori         tp, t2, -186
                  c.and        a4, a3
                  c.slli       a1, 26
                  c.addi       t2, 27
                  c.srli       a1, 26
                  c.addi       a5, 10
                  auipc        ra, 543400
                  slti         t6, a0, 128
                  div          s1, s1, s8
                  sll          gp, s5, a5
                  c.sub        s0, a4
                  lui          t1, 389892
                  lui          gp, 969632
                  c.addi       s7, 25
                  sub          t6, a2, t2
                  srl          zero, t1, t0
                  nop
                  andi         s5, t3, 1607
                  srl          s2, s11, s10
                  sub          ra, t6, s5
                  div          a7, a3, t3
                  or           t1, s11, t2
                  sltiu        a3, gp, -72
                  c.lui        s2, 14
                  mulhsu       s9, a1, a5
                  sra          s9, t0, t5
                  c.and        a1, s0
                  addi         t3, s4, 217
                  xor          zero, zero, s1
                  sll          s9, a4, ra
                  c.li         s7, 29
                  c.srli       a5, 16
                  c.nop
                  c.lui        s2, 12
                  mulhsu       gp, s0, s11
                  srli         s4, s4, 3
                  slti         s2, s5, 581
                  sub          ra, s0, s3
                  c.and        s0, a4
                  divu         ra, ra, t1
                  c.nop
                  c.or         a2, s1
                  mulhsu       t1, s7, tp
                  mulh         s11, s8, gp
                  c.sub        a5, a2
                  slti         s5, a6, -1157
                  srai         s10, s8, 6
                  andi         a0, sp, 1211
                  mulhu        t0, t6, s8
                  c.srai       a0, 18
                  c.mv         s3, s0
                  c.xor        a3, s1
                  divu         s3, s8, ra
                  ori          s2, t6, -265
                  c.xor        a3, a1
                  remu         s0, sp, a6
                  add          s8, a7, sp
                  xori         s2, t4, 1925
                  c.srai       a4, 20
                  slli         ra, sp, 16
                  srl          s9, s6, a7
                  c.xor        a3, a4
                  c.mv         s2, gp
                  div          ra, a4, s11
                  c.li         s3, 28
                  srli         t3, gp, 31
                  c.xor        a2, a1
                  c.nop
                  sltiu        s7, a6, -539
                  slt          s1, s1, t0
                  srl          s10, s1, s10
                  sra          ra, sp, s1
                  div          t1, s3, a0
                  c.andi       a1, -1
                  sra          tp, zero, a4
                  addi         s4, s2, -527
                  sub          s2, a4, zero
                  srai         a1, a5, 1
                  c.slli       a4, 23
                  c.xor        s0, a0
                  mulhu        t3, a2, t2
                  c.and        s1, a2
                  slli         gp, s11, 12
                  c.and        a2, a2
                  rem          a5, a3, t4
                  xor          s3, a4, t2
                  rem          t1, a6, a3
                  slt          a0, t2, a6
                  div          s9, a5, zero
                  rem          tp, a2, t1
                  mul          s11, a5, t5
                  slli         t0, a6, 24
                  c.andi       a3, -1
                  mulhu        tp, a7, t4
                  mul          s3, a0, t3
                  sub          a7, t4, sp
                  auipc        a5, 754860
                  c.or         a0, s1
                  nop
                  srl          s9, s8, ra
                  slt          s4, s3, t0
                  srai         t2, tp, 11
                  srl          a2, sp, s2
                  and          s2, t3, s0
                  mulh         s3, t5, t0
                  add          t6, a5, s8
                  xor          t5, a1, t0
                  sra          a5, s5, t1
                  lui          s8, 767759
                  ori          t4, s11, -1444
                  divu         a4, s8, tp
                  c.andi       a3, 30
                  c.nop
                  c.srli       a3, 19
                  srai         gp, t4, 18
                  c.li         s2, -1
                  c.nop
                  c.add        s2, sp
                  remu         s1, a1, s3
                  sll          a7, t4, t6
                  c.andi       s1, -1
                  or           t2, a0, s1
                  c.mv         a4, s2
                  srai         t0, t1, 21
                  c.andi       a1, 26
                  c.andi       s0, 5
                  c.lui        a3, 14
                  ori          ra, s2, 997
                  rem          t3, t4, t6
                  andi         s0, s8, 232
                  c.andi       s1, -1
                  c.sub        s0, a4
                  srai         s1, s5, 8
                  srl          s1, zero, s7
                  c.sub        a1, a5
                  slti         s8, ra, 1153
                  c.addi       s11, 26
                  c.sub        a0, a4
                  c.lui        s0, 8
                  c.slli       t0, 29
                  auipc        a1, 387009
                  c.and        a0, a0
                  slli         a2, a5, 12
                  nop
                  sll          s8, gp, s4
                  sltiu        zero, s11, -324
                  sub          t5, t1, t5
                  nop
                  lui          s7, 954454
                  mulh         t2, s5, a0
                  remu         a5, t4, ra
                  sub          tp, t5, gp
                  c.lui        a7, 1
                  c.lui        t1, 25
                  or           s11, t1, a7
                  c.xor        a4, a2
                  c.li         s1, -1
                  ori          gp, s1, 1509
                  sll          s2, t3, t5
                  c.nop
                  c.add        s1, a2
                  mulhu        a5, s5, sp
                  sltu         a2, s9, s4
                  c.sub        a1, s1
                  addi         gp, s8, -1748
                  sub          a4, a3, a6
                  andi         a3, a5, 659
                  remu         s11, t5, s9
                  xor          s11, s8, s10
                  srli         t1, t4, 5
                  sll          a1, sp, s0
                  auipc        ra, 227304
                  c.lui        s1, 17
                  c.mv         t1, s11
                  c.slli       gp, 9
                  sub          a7, a2, s3
                  remu         s7, a6, s5
                  slli         s4, a4, 14
                  srli         s0, t5, 29
                  addi         s2, a3, -841
                  sub          s10, s11, t1
                  c.andi       a0, 22
                  div          a3, s3, s0
                  c.li         a0, -1
                  srli         s4, s0, 3
                  ori          t6, gp, 1265
                  slli         s2, s4, 10
                  addi         a7, a2, 1755
                  mulhu        t4, a5, tp
                  c.xor        a1, a3
                  mulhu        a7, s4, zero
                  slli         t4, a3, 6
                  c.srli       a4, 26
                  slti         a5, s5, 1616
                  c.add        a2, a7
                  div          t3, s7, a5
                  srai         gp, s7, 17
                  andi         s8, s2, 673
                  c.and        a0, s0
                  divu         s7, t5, s7
                  c.and        s1, a0
                  c.andi       s0, 6
                  slli         s10, a7, 9
                  c.srai       a5, 2
                  slli         t3, t6, 13
                  addi         tp, a7, 882
                  xor          s7, t0, s2
                  sub          a4, s6, a1
                  sltu         a3, sp, a2
                  srai         s0, ra, 7
                  c.li         a0, -1
                  c.srli       a4, 10
                  c.srli       a5, 27
                  srai         s8, a4, 1
                  sra          a7, s7, a2
                  lui          zero, 1043432
                  rem          t4, a3, s1
                  c.sub        a4, s0
                  slli         s9, s11, 10
                  slti         t5, zero, -1049
                  srli         s10, t2, 27
                  c.addi       a5, 22
                  mulhsu       s11, gp, t6
                  sub          tp, s11, tp
                  remu         s1, s4, s6
                  c.xor        a0, a5
                  add          s1, s7, a1
                  mulh         t1, gp, s3
                  nop
                  srli         s11, a4, 31
                  and          s4, tp, s5
                  c.andi       s1, -1
                  c.li         s2, 4
                  c.xor        a5, a0
                  c.mv         ra, t4
                  c.nop
                  div          a5, s5, s10
                  srl          tp, a5, t5
                  sltu         t5, s7, a0
                  xori         s2, s5, -196
                  sltiu        t5, t4, -1832
                  c.andi       a4, -1
                  sub          t2, t2, s11
                  c.add        s0, s10
                  c.srli       a5, 2
                  sll          gp, s4, a5
                  c.sub        a1, s1
                  slti         a7, t6, -842
                  srli         t6, s8, 26
                  c.add        t3, a5
                  c.addi       a7, -1
                  c.sub        a2, a1
                  remu         s2, gp, a7
                  slt          a7, s4, a4
                  xor          a3, s6, s0
                  c.srli       a1, 21
                  nop
                  rem          a1, s10, a4
                  divu         t1, s11, s10
                  nop
                  srli         a5, t0, 23
                  mulh         ra, a6, s9
                  c.li         s1, -1
                  rem          ra, ra, a5
                  slli         t3, a1, 28
                  mulhsu       s10, s3, s6
                  xori         t4, s2, 964
                  srl          s5, zero, a1
                  sub          s2, a5, t4
                  auipc        t3, 772444
                  lui          a2, 76273
                  mulhsu       t4, t1, zero
                  sll          t1, t5, s11
                  sll          s5, s10, s9
                  c.xor        a3, s0
                  c.li         s2, 12
                  c.xor        s1, a4
                  nop
                  mulhu        s2, tp, s9
                  c.srli       s0, 17
                  and          ra, s6, s11
                  c.sub        a0, a4
                  mulh         zero, s1, s9
                  rem          a3, t2, gp
                  ori          s7, tp, 908
                  andi         a3, s3, 1217
                  sll          s5, s5, s5
                  divu         t4, a7, s1
                  c.nop
                  sll          a1, s3, s10
                  sub          s2, ra, s9
                  c.and        a4, a3
                  c.or         s0, a4
                  c.li         gp, 30
                  addi         t3, s2, -1294
                  and          ra, gp, a1
                  srai         a7, a3, 14
                  xor          ra, s10, a7
                  sltiu        t4, t5, 444
                  c.add        t1, t5
                  c.mv         gp, s4
                  c.lui        tp, 20
                  auipc        a1, 377871
                  c.srli       s1, 13
                  c.slli       s4, 20
                  sltiu        t3, gp, -454
                  add          t4, s0, s2
                  c.andi       a3, -1
                  remu         s10, a3, s6
                  mulhu        s9, ra, t5
                  c.mv         s2, t2
                  srli         t1, tp, 11
                  c.slli       s3, 18
                  xori         t6, a3, 411
                  div          a0, t2, s11
                  addi         zero, a0, 700
                  nop
                  mulhu        zero, a5, gp
                  c.or         s0, a5
                  or           tp, a4, a1
                  xori         s3, s10, 469
                  c.sub        a4, a1
                  nop
                  c.or         a4, a1
                  sra          s8, s9, s8
                  c.andi       s0, 28
                  auipc        s3, 757950
                  sltiu        a3, tp, -1904
                  mulhsu       s0, s1, ra
                  mulhsu       s3, a7, a0
                  c.add        t0, t1
                  c.andi       a5, -1
                  or           t6, t5, t5
                  nop
                  c.addi       t5, 11
                  remu         t1, zero, s9
                  c.nop
                  mulhsu       s2, t2, t5
                  mulhsu       t5, a2, s0
                  mul          a7, s2, s9
                  c.mv         s9, t3
                  andi         t0, s11, -385
                  addi         s10, s0, -35
                  or           zero, s4, a3
                  divu         gp, t3, a6
                  slli         s9, zero, 29
                  ori          s8, a0, -2044
                  sltiu        tp, s8, -1297
                  rem          s11, s4, t2
                  xori         s10, ra, -392
                  c.or         a3, a1
                  srli         a5, s1, 3
                  mulhu        a2, s6, s9
                  c.srli       a2, 3
                  c.sub        a0, s1
                  sll          s0, s5, a0
                  auipc        s3, 290687
                  c.slli       s7, 19
                  add          t2, s9, t4
                  srai         t1, t5, 3
                  andi         t4, t4, 816
                  c.xor        a2, a0
                  sltu         s7, t0, s11
                  c.or         s0, s1
                  sra          t5, s10, ra
                  srli         t2, t2, 13
                  auipc        a7, 429340
                  slti         a0, t4, -1921
                  mulhu        s2, t5, t5
                  c.slli       t4, 8
                  slt          a2, t5, s5
                  c.sub        a5, a4
                  c.srli       a1, 2
                  divu         s11, s0, tp
                  c.sub        a2, a0
                  c.or         a3, a1
                  c.mv         a2, a1
                  mulhsu       t1, s8, a3
                  srai         a5, gp, 28
                  or           a7, a1, a6
                  slti         ra, s3, 1214
                  andi         s7, a2, -2047
                  andi         ra, t3, -386
                  addi         s1, s11, -993
                  add          s3, s1, a1
                  mulhu        s11, s8, zero
                  c.andi       a5, 10
                  lui          t6, 85958
                  mulh         zero, a3, s7
                  c.addi       a7, -1
                  rem          s11, t4, a5
                  srai         a7, a0, 17
                  nop
                  mulhsu       s1, s10, s11
                  mul          s9, a1, t4
                  c.lui        gp, 7
                  xori         s4, s5, -1363
                  srli         t2, t2, 25
                  div          a4, t3, a7
                  mulh         s0, ra, t2
                  c.mv         t0, t0
                  xor          s5, s11, t1
                  ori          t4, tp, 1206
                  addi         s7, s2, 1932
                  sltiu        a1, s9, 1986
                  c.srli       s1, 15
                  c.xor        a0, a5
                  xori         a4, a2, -2000
                  srli         t3, t0, 2
                  sra          s9, s6, ra
                  c.addi       s1, -1
                  slli         a0, sp, 29
                  divu         zero, s8, a1
                  mulhu        s4, s8, t3
                  c.mv         t4, t5
                  and          zero, a6, s11
                  sltiu        a3, s5, 1252
                  nop
                  c.andi       a0, -1
                  nop
                  c.nop
                  sra          a7, a4, zero
                  lui          s0, 707620
                  mul          a0, t5, t0
                  sub          s9, a7, s7
                  and          t4, t4, a4
                  or           a4, a2, t2
                  c.sub        s0, a5
                  c.srli       s0, 30
                  sll          s1, a4, s9
                  mul          ra, t5, s3
                  c.addi       s4, -1
                  mulhsu       t0, s7, s7
                  addi         a0, t5, -728
                  c.slli       t4, 31
                  mul          a3, t1, t0
                  c.nop
                  auipc        t4, 966427
                  c.or         a1, s1
                  mulhu        s8, s6, t0
                  slt          a3, ra, s9
                  remu         s11, t0, t6
                  c.mv         a4, s8
                  c.slli       s8, 7
                  rem          t5, s10, a7
                  slli         gp, t6, 19
                  slti         s0, s7, 1905
                  slt          s0, sp, s1
                  sll          zero, s2, ra
                  xor          s4, ra, s8
                  andi         s4, zero, 258
                  andi         gp, t5, 1541
                  rem          s1, a0, zero
                  c.slli       tp, 27
                  ori          s11, s4, -1902
                  sub          t0, t6, a3
                  c.andi       a2, -1
                  c.nop
                  mulh         s2, s10, t4
                  sub          s11, a7, s8
                  mulhsu       t0, a1, s6
                  sub          s5, t6, a1
                  c.sub        a1, a1
                  rem          s8, t2, a7
                  c.lui        s4, 31
                  c.srai       s1, 3
                  ori          zero, s0, 1597
                  c.mv         s5, s11
                  auipc        s2, 660723
                  c.sub        s1, a1
                  c.or         a4, a1
                  remu         t1, s9, s10
                  c.xor        a0, a0
                  or           s7, s6, s0
                  c.srai       s1, 18
                  xori         s7, a1, 1653
                  addi         a7, s2, -1971
                  srai         a1, s1, 1
                  c.lui        t2, 21
                  add          a4, t6, t5
                  c.or         s0, a5
                  c.nop
                  xor          s4, gp, t6
                  slli         t5, s8, 27
                  or           zero, s7, t6
                  slt          gp, sp, t6
                  remu         s10, t5, s5
                  mulhu        t4, s8, a3
                  srai         a7, t0, 12
                  slli         s2, s5, 21
                  mulhu        t6, s0, s4
                  c.and        a5, a1
                  c.srli       a0, 6
                  rem          t0, s4, s11
                  c.srai       a2, 28
                  c.lui        t1, 5
                  mulh         t3, a4, t3
                  div          s2, a6, a4
                  c.addi       a2, -1
                  c.add        tp, gp
                  divu         a3, s5, t0
                  slt          a3, s10, s0
                  slti         s0, a1, 1606
                  c.add        a4, s9
                  c.and        s1, a4
                  mul          t2, zero, t1
                  srai         s11, t0, 9
                  div          a5, t6, a3
                  sub          a1, ra, t2
                  add          t6, a5, s7
                  c.srli       a0, 5
                  srl          t5, a0, a3
                  c.addi       a3, -1
                  srai         a4, zero, 9
                  add          s8, a7, zero
                  nop
                  c.nop
                  c.li         s8, -1
                  slti         t5, a6, 397
                  rem          t6, s5, gp
                  lui          a4, 522790
                  c.mv         t4, a0
                  sra          s9, s0, s11
                  c.or         a1, s0
                  c.andi       a4, 3
                  or           s7, a5, s5
                  c.addi       s2, -1
                  c.mv         t2, sp
                  c.nop
                  or           s10, sp, t6
                  c.addi       gp, 22
                  or           a4, sp, s6
                  c.slli       t5, 3
                  c.andi       a5, 3
                  c.slli       s4, 17
                  xori         a2, tp, 611
                  sltiu        t4, gp, 1014
                  c.srli       a0, 17
                  srai         s4, zero, 22
                  c.lui        t4, 7
                  mul          s7, s0, a7
                  mulhu        a0, s7, a0
                  srai         s8, s11, 0
                  remu         gp, t5, a7
                  mulhsu       t1, t5, a6
                  c.sub        a4, a1
                  c.srai       a2, 28
                  mulh         a4, s6, zero
                  c.add        s7, s9
                  or           s9, t5, a2
                  c.add        a5, s6
                  c.addi       s2, 2
                  xori         s0, a3, -745
                  mulh         t3, t0, a4
                  and          t3, s2, s10
                  srl          a3, s9, t3
                  rem          s8, s0, s5
                  c.andi       a4, 18
                  slti         t5, s11, -1796
                  ori          s0, t4, -779
                  xori         a3, s1, -1254
                  c.sub        s1, a1
                  c.andi       s0, 29
                  mul          s10, a4, s11
                  divu         t6, ra, t0
                  sub          t0, t0, ra
                  c.li         tp, 8
                  addi         t3, t1, 1632
                  mulhsu       s7, gp, sp
                  srai         t6, t6, 13
                  ori          s3, t4, 514
                  ori          s7, s8, 1213
                  slt          a1, ra, ra
                  c.li         tp, 9
                  and          zero, s9, s9
                  nop
                  or           gp, s8, t2
                  or           a3, t5, s11
                  c.or         a5, a4
                  c.mv         t0, tp
                  c.nop
                  lui          a2, 489287
                  and          t0, s2, t5
                  add          gp, a1, ra
                  c.sub        a3, a4
                  sltiu        gp, t5, 32
                  slt          s1, s4, t1
                  c.andi       a0, 18
                  sub          a7, tp, a6
                  c.and        a1, a4
                  nop
                  sltiu        s9, a3, 166
                  c.lui        s0, 30
                  c.srai       s1, 12
                  xori         t4, s10, -2027
                  mulh         t0, a5, zero
                  c.addi       t5, -1
                  nop
                  mulhu        t3, t5, t6
                  andi         ra, tp, -1894
                  lui          a2, 623767
                  c.nop
                  rem          s2, s5, a4
                  c.srli       a5, 8
                  c.or         a1, a4
                  andi         s2, s8, 995
                  c.xor        s0, a4
                  c.srai       s0, 7
                  slti         s0, a7, 1917
                  sltiu        s8, a1, -754
                  c.li         s1, -1
                  c.lui        t3, 22
                  rem          a2, a0, s5
                  ori          s7, s0, 248
                  slti         s3, gp, 2005
                  mulhsu       a4, t0, s3
                  xor          s4, t1, s10
                  divu         s8, s0, s0
                  sltiu        s1, s1, -308
                  mulhsu       s11, a1, s6
                  c.xor        a1, a1
                  c.slli       s3, 16
                  srl          t1, t3, s2
                  sltu         s4, t3, a5
                  xori         a3, a4, -1868
                  xori         s7, s9, -80
                  c.sub        a5, s1
                  c.li         s4, -1
                  c.addi       t2, 15
                  add          s11, a4, s1
                  sra          s2, a6, s10
                  c.or         s1, a2
                  ori          t0, s8, 91
                  srai         t6, a7, 24
                  c.slli       t0, 31
                  mulh         a7, zero, s10
                  c.xor        s0, a5
                  xori         a2, t3, 1960
                  mulhsu       a4, s6, s7
                  add          s11, s3, s7
                  xor          zero, s5, a7
                  c.xor        a1, a1
                  c.slli       a4, 15
                  c.srai       s0, 30
                  slti         t5, a4, 797
                  remu         t6, s5, s2
                  sltu         tp, a7, t0
                  c.xor        a4, a3
                  mul          s1, t5, s11
                  c.nop
                  c.xor        s0, a3
                  c.lui        t1, 17
                  c.and        s0, a0
                  c.sub        a0, a0
                  remu         s11, s11, t5
                  sra          gp, s11, t4
                  srli         a0, a1, 7
                  c.add        s4, t4
                  c.mv         a4, a6
                  c.mv         a4, a3
                  c.mv         t3, gp
                  ori          s7, ra, -333
                  xor          a1, a0, s11
                  div          t1, s8, a6
                  srl          t3, a4, s11
                  mulhu        s4, s11, ra
                  c.addi       s10, 25
                  and          s0, gp, s1
                  c.addi       t1, 23
                  c.sub        s1, a1
                  or           s0, s4, s3
                  and          s11, s6, ra
                  xori         t5, gp, 685
                  c.srli       a1, 12
                  slti         t6, ra, -112
                  rem          a4, s6, s7
                  mulhsu       s4, s11, t4
                  c.mv         s1, s10
                  div          s2, a7, gp
                  nop
                  slli         t1, ra, 17
                  srli         s9, sp, 10
                  c.andi       s1, 25
                  mulh         a5, s2, a4
                  c.li         s4, -1
                  addi         t0, gp, -1759
                  rem          t4, ra, s4
                  sltu         ra, s2, s1
                  nop
                  c.andi       s1, -1
                  c.srai       a5, 10
                  slt          s1, s7, zero
                  remu         s8, s0, a2
                  slli         a4, a5, 30
                  divu         t5, ra, t2
                  mulh         a0, ra, a4
                  sll          t2, s5, tp
                  slt          a4, gp, gp
                  c.slli       a2, 8
                  c.or         a2, a3
                  sra          t6, zero, s1
                  xor          s3, t5, s3
                  c.li         a2, -1
                  srli         a7, a4, 0
                  c.srai       a2, 29
                  c.mv         a3, a5
                  mul          t6, a0, t3
                  sltiu        s0, s7, -1255
                  mulhsu       t6, s10, a2
                  mulhu        s2, s2, ra
                  c.and        a5, a5
                  c.mv         a0, a4
                  mulhu        gp, s9, a2
                  mulhu        t4, t3, s6
                  slli         s2, t0, 16
                  mulhsu       zero, a0, s6
                  xor          s1, s1, s4
                  c.slli       t2, 19
                  mulh         s4, s0, s9
                  divu         a1, a7, s5
                  xor          s1, t5, t6
                  c.xor        a5, s1
                  c.lui        s4, 18
                  lui          t3, 31700
                  c.or         a4, a2
                  mulhu        t2, s3, s1
                  divu         s9, s8, s3
                  c.sub        a0, s1
                  c.slli       t4, 4
                  c.slli       t6, 23
                  sll          t4, a3, a3
                  c.add        ra, t6
                  mulhu        ra, s2, gp
                  sltu         tp, a2, s11
                  sltu         ra, sp, t6
                  sll          ra, sp, a7
                  c.srai       a2, 27
                  c.srai       a5, 18
                  c.or         a5, a3
                  srai         s2, t1, 22
                  auipc        zero, 667399
                  ori          s9, s10, 1692
                  and          t1, s8, s10
                  c.and        a4, a1
                  c.srli       a3, 16
                  sub          t0, s7, t3
                  mulhu        s11, t3, a4
                  sub          a4, a7, a3
                  div          a5, s3, s8
                  mulhsu       a7, t3, s8
                  add          t5, s7, a0
                  srai         gp, a7, 8
                  xor          t2, a0, s5
                  auipc        a7, 380764
                  div          s0, s4, a5
                  c.add        s11, s10
                  xori         s2, s3, 1395
                  c.mv         s7, s8
                  c.addi       s7, -1
                  addi         t1, a5, 830
                  sll          a0, a0, s3
                  c.li         t1, -1
                  rem          gp, s3, s2
                  mulhsu       t0, s3, s6
                  or           a0, zero, a5
                  mulh         t6, s0, s3
                  remu         s8, t5, a1
                  add          s8, a1, a6
                  slti         s10, a0, -1937
                  div          t1, s0, s2
                  c.and        a3, s1
                  c.add        s8, t3
                  lui          t5, 771090
                  mulhu        s3, t3, a4
                  ori          zero, zero, -441
                  slt          t2, gp, s7
                  srl          s3, t6, gp
                  c.srai       s1, 8
                  sll          s3, s1, t3
                  sub          t3, t3, a3
                  srai         s7, a6, 9
                  slti         s7, a3, -1441
                  xori         t4, s11, -360
                  c.xor        a3, a4
                  c.lui        s5, 23
                  c.andi       a4, 7
                  auipc        s7, 224736
                  and          a3, s2, t6
                  nop
                  srl          s0, s6, s5
                  div          t1, a3, a6
                  or           s9, s9, t4
                  sub          t6, s8, s10
                  slt          s0, t5, t2
                  c.addi       a0, -1
                  mul          a1, s5, t3
                  mul          a2, t6, s2
                  c.mv         s2, s1
                  c.srli       a3, 9
                  div          ra, s4, zero
                  srli         a0, a6, 13
                  lui          a0, 15228
                  mul          t1, a2, a2
                  xori         a4, a0, 448
                  lui          tp, 237290
                  mul          s10, zero, a3
                  c.addi       a0, 3
                  remu         s1, s9, a1
                  sltu         t4, s0, a7
                  sltu         s1, s2, a7
                  xor          s10, t2, s11
                  c.addi       s0, 21
                  slt          t4, a0, t6
                  xor          s4, a2, s1
                  c.mv         tp, s1
                  xori         a2, a4, 796
                  mulhsu       t0, t2, a4
                  mulhsu       s11, a7, t1
                  addi         t5, s10, 1245
                  andi         s10, s7, 1276
                  c.sub        a0, a2
                  sltu         s8, s4, s6
                  remu         a4, a1, a1
                  srli         s11, s7, 12
                  auipc        s2, 860213
                  ori          t3, s4, 1190
                  c.li         a5, -1
                  c.sub        a1, a0
                  slti         s2, a7, -679
                  or           s4, s9, a3
                  add          s11, t2, t1
                  c.sub        s0, s1
                  sltu         t0, t5, s6
                  c.or         a5, a1
                  srai         s1, s2, 13
                  sltiu        s10, t6, -459
                  sra          a7, t1, ra
                  mulhu        a2, a4, a0
                  c.xor        a5, s0
                  sub          s5, t3, a0
                  add          a0, s10, tp
                  add          t5, s10, t3
                  c.andi       s0, 13
                  slli         tp, s7, 5
                  andi         a0, t4, -523
                  c.mv         s1, a4
                  ori          a2, t6, -1870
                  add          t0, s8, a6
                  sra          s1, a5, ra
                  slt          t2, s4, a0
                  nop
                  sltiu        t0, s6, 842
                  auipc        a1, 368750
                  andi         tp, s10, -1340
                  c.add        a2, s10
                  sltu         a1, s8, s6
                  sub          zero, a1, a3
                  slt          s8, s10, gp
                  slt          zero, t1, s7
                  andi         t4, t2, 191
                  sltiu        t2, s10, -240
                  sub          a3, gp, a1
                  slt          t2, a5, t0
                  mulh         s1, a0, s0
                  c.nop
                  c.add        a5, s10
                  c.add        s7, a5
                  slt          s1, a6, s8
                  c.and        a4, a3
                  auipc        a0, 511460
                  rem          gp, t1, tp
                  ori          t5, gp, 1963
                  c.xor        s1, a1
                  c.srai       s1, 21
                  c.lui        s9, 24
                  ori          s7, gp, -1752
                  nop
                  slli         a7, s11, 9
                  c.sub        a3, a4
                  c.xor        a2, s0
                  c.add        t2, s6
                  mulh         s2, tp, t3
                  slti         t4, a5, -172
                  c.sub        s1, s1
                  sll          tp, s8, s2
                  c.nop
                  c.xor        a5, a1
                  mul          s11, s1, s2
                  c.add        t4, a1
                  c.srai       s0, 3
                  srai         t4, s2, 20
                  mulh         t3, a6, s6
                  sub          s3, a3, sp
                  c.sub        a0, a3
                  mulh         zero, s0, s5
                  rem          gp, t4, s7
                  nop
                  ori          a4, a4, -900
                  mulhsu       a7, s8, t2
                  ori          t0, t1, -1739
                  add          gp, sp, s7
                  rem          t0, t5, s6
                  slli         a4, tp, 7
                  c.slli       t0, 23
                  mulhu        s2, t4, t1
                  nop
                  srli         t1, s6, 15
                  auipc        t2, 663998
                  slti         t1, s10, 187
                  addi         t1, s0, 1206
                  sltiu        zero, zero, -464
                  xor          t6, a6, t6
                  remu         s9, ra, t6
                  slt          t6, tp, t6
                  c.srli       a3, 24
                  c.mv         a0, s8
                  sltu         t5, s5, s9
                  sll          s8, s3, s6
                  c.xor        a1, a0
                  c.xor        a1, a1
                  c.slli       a5, 23
                  mulh         t0, s8, a6
                  remu         s2, t3, a0
                  c.li         a4, -1
                  add          a0, ra, t4
                  slti         t6, s10, 1909
                  c.lui        a5, 22
                  sltu         t4, s2, s5
                  sra          t0, zero, s9
                  xori         s9, a4, 1997
                  srai         s8, a0, 8
                  xori         t4, a3, 635
                  sltiu        s4, t0, 568
                  or           ra, t6, t4
                  c.mv         gp, sp
                  srli         s9, s7, 11
                  c.and        a1, a5
                  c.lui        s0, 21
                  mulh         t1, a6, s7
                  slt          s5, a2, s10
                  c.addi       s5, 5
                  andi         a5, t1, -784
                  divu         a1, tp, t3
                  slli         zero, a3, 15
                  c.andi       s0, -1
                  c.slli       a3, 19
                  c.li         s9, -1
                  sll          a0, a0, t5
                  div          a7, s7, t5
                  slti         s4, s2, -1081
                  mulhu        a4, s6, a6
                  c.sub        s0, a3
                  c.nop
                  c.addi       s1, -1
                  sltu         t0, a1, t3
                  div          a7, t2, ra
                  slti         s3, s5, -689
                  srli         a7, s5, 30
                  c.li         s10, 21
                  sub          s2, a4, s0
                  sltu         a5, a7, a0
                  ori          s2, a7, -1586
                  c.mv         s3, a4
                  add          s4, s8, t0
                  add          t2, a2, gp
                  div          t2, s1, a6
                  div          s4, a1, gp
                  srl          ra, s3, s5
                  lui          s0, 512541
                  slt          t4, s0, a1
                  srli         s11, gp, 23
                  slt          t1, t6, a7
                  mulhsu       s4, s11, t3
                  xori         gp, a4, 2015
                  rem          a4, a7, a4
                  mulhsu       t1, gp, a2
                  sra          s11, t6, a2
                  mulhu        s10, s0, s5
                  and          s4, s4, s4
                  sltiu        s4, sp, 1122
                  auipc        s2, 166716
                  c.slli       s8, 30
                  c.andi       a4, -1
                  add          t4, a7, t0
                  add          s10, t3, s9
                  divu         t1, s3, s1
                  add          a7, t0, a3
                  and          gp, a1, zero
                  c.mv         a1, a2
                  slti         ra, s8, -1615
                  slti         a0, t2, 1991
                  c.addi       s4, 4
                  xori         s9, t2, 410
                  sltiu        tp, s9, -1544
                  srai         s4, a1, 22
                  andi         t0, sp, 155
                  div          s10, t3, tp
                  or           s11, a6, gp
                  sub          a7, a0, a2
                  sll          t1, s0, t0
                  mul          t2, t6, s11
                  div          s4, t4, s9
                  srli         t0, t0, 25
                  remu         a7, t1, s6
                  srli         s4, t1, 8
                  c.nop
                  c.slli       s9, 25
                  auipc        t0, 26474
                  srl          s7, t0, a7
                  or           t4, s2, a0
                  mulhu        a7, s4, a7
                  c.srai       a4, 12
                  add          a5, a0, s9
                  nop
                  c.and        a5, a1
                  c.lui        t4, 18
                  c.and        s1, s0
                  sltu         s1, a2, s10
                  c.and        s1, a5
                  slt          t1, a1, a5
                  divu         s7, s9, a6
                  mulhu        a5, s9, a3
                  c.and        s0, a0
                  c.slli       s0, 10
                  c.addi       t3, -1
                  slt          t1, t5, s5
                  c.andi       s1, 10
                  slt          s11, a0, a0
                  c.slli       s4, 16
                  nop
                  srli         s10, t1, 28
                  sra          t6, a3, s0
                  c.srli       s1, 21
                  c.srli       a2, 30
                  c.srli       a5, 17
                  srli         t4, a5, 16
                  mulh         zero, a4, s6
                  ori          gp, sp, -417
                  sra          s7, s11, sp
                  mulhsu       a7, s5, s3
                  mulh         s1, s2, s11
                  c.li         t2, -1
                  and          a1, a2, a2
                  and          s8, s8, s8
                  slli         s4, s8, 14
                  or           s10, t3, s7
                  c.mv         t6, t4
                  slt          t0, t1, a3
                  c.srai       a4, 12
                  mulh         a0, s5, a1
                  c.srli       a5, 10
                  srli         s4, gp, 24
                  nop
                  lui          t6, 531026
                  c.add        t1, t0
                  andi         a4, s11, 1882
                  c.add        t1, a7
                  sll          s10, a2, s7
                  c.xor        a4, s0
                  remu         t4, gp, a6
                  srli         tp, s8, 10
                  ori          t4, a4, 1092
                  c.slli       t6, 2
                  rem          s10, s7, tp
                  c.add        s0, s6
                  c.li         s11, 21
                  c.or         a1, a0
                  c.lui        a0, 17
                  srli         gp, a2, 12
                  slli         t1, s8, 16
                  c.slli       gp, 20
                  lui          a5, 99510
                  addi         t4, t1, -1886
                  sltu         a0, a4, a2
                  srai         s7, t2, 18
                  mulhu        tp, t4, s10
                  lui          s11, 100526
                  srli         s11, sp, 29
                  c.slli       t5, 18
                  add          s8, s6, s2
                  xori         s7, s5, -1345
                  ori          s10, s2, -1968
                  c.xor        a4, s0
                  srl          t6, s8, zero
                  c.xor        a4, a2
                  remu         s9, s5, gp
                  srli         s0, ra, 13
                  srai         t4, t5, 21
                  c.and        a3, a1
                  c.li         a0, -1
                  c.li         a5, 15
                  auipc        a4, 663701
                  mulhu        s1, s8, s4
                  ori          t3, s11, -268
                  nop
                  srai         s5, s11, 18
                  c.andi       a3, 1
                  remu         s9, a4, zero
                  mulh         s4, t6, s1
                  c.and        a2, a5
                  sltiu        gp, ra, -2024
                  c.add        t3, a1
                  sltiu        s0, tp, -1182
                  sltiu        tp, s9, 39
                  c.lui        t1, 27
                  ori          a2, t5, -1717
                  rem          s8, s0, t3
                  xor          t6, t3, zero
                  div          t5, a1, s0
                  slt          ra, t6, s2
                  divu         gp, a2, gp
                  slt          s10, s0, s8
                  nop
                  c.andi       a3, 7
                  lui          s0, 1002802
                  mulh         t4, a0, s8
                  c.sub        a4, a1
                  slti         a0, s7, 1120
                  and          t6, sp, tp
                  remu         t5, sp, t1
                  srai         s4, s4, 0
                  sltu         a7, s0, t6
                  c.andi       a3, 8
                  c.xor        a0, a1
                  c.xor        a3, a5
                  c.srli       a5, 19
                  sltiu        s4, zero, -164
                  c.or         a4, s0
                  lui          t1, 571046
                  mul          s8, zero, a5
                  ori          gp, s2, -289
                  andi         a5, t2, 142
                  slt          a5, s0, s10
                  c.and        a3, a5
                  xor          zero, a6, ra
                  mulhsu       a0, s5, s7
                  nop
                  sll          s5, t0, s10
                  c.srli       a3, 25
                  c.srai       a5, 13
                  auipc        t6, 167066
                  rem          s5, a3, s10
                  slli         s2, ra, 9
                  lui          a5, 772681
                  slt          a0, a4, s6
                  slti         s11, s9, 1279
                  sra          a3, a4, a4
                  c.xor        a2, a2
                  andi         s4, s3, -865
                  sub          a2, s1, tp
                  slli         t1, s7, 29
                  c.slli       t3, 18
                  sub          t2, t0, t2
                  lui          t5, 670876
                  c.addi       a0, 20
                  slt          t2, s5, ra
                  c.mv         s1, a4
                  ori          s3, a6, -1547
                  mul          t2, t1, tp
                  c.srli       s0, 21
                  c.andi       s0, -1
                  c.sub        a2, a2
                  slli         s4, a0, 19
                  nop
                  c.li         s9, 21
                  lui          a7, 636285
                  sltu         s8, s10, tp
                  sltiu        a7, zero, -84
                  srli         s8, s2, 3
                  srli         s4, gp, 25
                  c.slli       s7, 13
                  c.andi       a2, -1
                  divu         s7, tp, s11
                  slti         a5, gp, 1170
                  mulh         s1, s4, sp
                  mul          zero, t0, s6
                  remu         s2, a6, s1
                  mulhu        s8, a4, t6
                  slti         a3, s6, 1092
                  c.add        tp, a6
                  sub          s7, a2, a6
                  auipc        zero, 574937
                  xor          s3, s8, s10
                  remu         tp, a1, t5
                  mulhsu       ra, tp, s4
                  or           gp, zero, t0
                  or           s2, s8, s1
                  sra          t1, gp, t2
                  slti         t3, s8, -1216
                  rem          s3, t3, s8
                  nop
                  add          s8, t5, a2
                  c.srli       a4, 25
                  c.li         a1, -1
                  sub          a7, a5, a3
                  srai         s8, s11, 5
                  c.addi       t2, -1
                  slli         s11, zero, 3
                  c.srai       s0, 10
                  remu         t0, tp, s11
                  xori         zero, t6, 442
                  c.srai       s0, 21
                  srai         s8, s3, 27
                  srai         s11, s1, 25
                  and          gp, t1, s2
                  xori         s11, t0, 1117
                  c.addi       ra, -1
                  lui          a5, 115133
                  xor          zero, s7, a7
                  add          a2, t4, a7
                  c.sub        a1, a0
                  sll          s9, t6, s7
                  addi         t2, a1, -258
                  sub          a2, gp, a5
                  addi         t1, t3, -1574
                  mulhsu       t0, s2, s1
                  mulhu        s11, t3, s0
                  auipc        a5, 497229
                  c.srli       s1, 28
                  c.or         a1, s0
                  c.slli       a5, 15
                  c.xor        a2, a4
                  or           ra, t6, a3
                  sltiu        s5, s4, 748
                  divu         s11, a3, a3
                  srli         s11, t0, 18
                  or           s4, s6, s11
                  sltu         s9, t0, a1
                  rem          s5, s8, s8
                  c.andi       a2, -1
                  c.srai       a0, 1
                  c.lui        t0, 19
                  c.sub        s1, s0
                  mul          a1, s11, t6
                  c.srli       a0, 7
                  slti         t4, a4, 1628
                  addi         a4, zero, -680
                  srli         t5, a1, 31
                  c.andi       a4, 7
                  auipc        t2, 890097
                  c.andi       a0, 30
                  addi         a3, s1, -42
                  slti         a5, t4, -346
                  andi         s3, a0, 997
                  add          a1, s0, tp
                  xor          ra, a2, zero
                  mulh         s8, a7, t0
                  c.xor        a4, s1
                  addi         s4, ra, -501
                  divu         s4, s9, s0
                  nop
                  c.nop
                  slti         a3, s0, -182
                  c.or         a2, a3
                  ori          s11, s3, -542
                  mul          s4, ra, a3
                  c.addi       s10, -1
                  srli         a2, s10, 2
                  c.and        a3, a0
                  c.srli       a5, 19
                  sltiu        t5, s1, -1769
                  c.nop
                  mulhu        t1, ra, a4
                  lui          s3, 801257
                  c.xor        a1, a2
                  mulh         t4, s4, zero
                  c.li         t0, 3
                  c.add        gp, a1
                  c.xor        a3, a4
                  ori          s4, s3, -149
                  c.or         s0, a2
                  sub          zero, a3, t5
                  srli         t3, a4, 11
                  c.mv         s10, a3
                  andi         s0, a6, 454
                  div          s10, s1, s11
                  srai         s5, sp, 11
                  sra          a0, t5, s6
                  andi         s8, t3, 303
                  c.andi       a3, 30
                  or           a7, t5, s3
                  slli         a4, s4, 22
                  remu         t5, s6, t1
                  and          s0, a7, s0
                  div          s5, a1, a2
                  and          zero, t2, s5
                  c.mv         t2, a2
                  slti         s8, sp, 1651
                  srl          a1, ra, s5
                  mul          t4, s4, s0
                  c.srai       a2, 23
                  c.and        s1, a1
                  c.sub        a4, s1
                  slli         t2, t1, 26
                  div          a4, a2, s5
                  c.srli       a2, 28
                  c.and        a2, a5
                  c.srli       a1, 18
                  c.and        a4, a2
                  mulh         a4, t1, t5
                  mulhu        t4, a4, a1
                  sltiu        zero, t4, 1194
                  c.and        a2, a0
                  c.addi       a2, -1
                  c.srai       a0, 24
                  sltu         a0, s8, s4
                  c.add        s11, ra
                  auipc        s5, 211490
                  xori         zero, s10, -336
                  c.srai       a0, 18
                  c.li         a0, -1
                  sra          t1, s10, a3
                  slti         tp, s4, -1429
                  mulhsu       a1, s2, a5
                  c.srli       a3, 3
                  sltu         gp, ra, s10
                  andi         s11, s10, 1154
                  mulh         t2, a2, s0
                  c.li         t1, 24
                  mulhu        a4, s0, a5
                  srai         t6, s6, 16
                  sltiu        s1, a5, 1838
                  c.mv         s2, ra
                  c.andi       s1, -1
                  c.or         s1, a3
                  sltu         s1, s10, s10
                  ori          s2, a7, -1666
                  c.addi       s0, 16
                  div          t5, a5, s4
                  xori         a3, a2, -517
                  rem          s7, t4, t6
                  or           s2, s7, a3
                  c.xor        a3, a4
                  mul          a4, s11, t6
                  auipc        s0, 479303
                  divu         ra, t5, a4
                  slti         a2, s11, -1640
                  c.add        s11, s2
                  c.srli       a1, 8
                  remu         t0, s9, t6
                  srai         zero, t4, 14
                  c.li         a4, 26
                  c.xor        a3, a4
                  c.andi       a4, 13
                  ori          t1, a5, 1646
                  mulh         s4, a1, s4
                  lui          s9, 338748
                  srai         a1, t5, 7
                  or           t4, t1, t4
                  mulh         t5, zero, s10
                  mulhu        s8, tp, s1
                  c.mv         t0, a5
                  andi         t1, s2, -967
                  sub          a0, t3, s7
                  rem          a5, t1, t2
                  c.srli       a1, 3
                  c.slli       a0, 23
                  add          s7, a6, t4
                  c.addi       tp, 7
                  andi         t5, s7, -509
                  c.add        s3, s9
                  divu         a2, a3, a0
                  c.srai       a2, 9
                  mulhu        a1, t0, a1
                  mulh         s10, a0, s8
                  sll          a0, s2, a1
                  c.addi       s0, -1
                  mul          s2, t4, zero
                  sltiu        zero, t0, -1169
                  slli         a4, s2, 7
                  srai         t3, t0, 28
                  srl          s10, gp, s7
                  c.nop
                  and          t4, a7, s5
                  lui          t1, 574381
                  sra          t2, s2, s1
                  sll          t1, a6, ra
                  sltu         a3, s1, t3
                  divu         a0, a7, s0
                  and          tp, t3, t4
                  add          s7, s10, sp
                  c.xor        a2, a2
                  sra          t1, a5, a5
                  mulhsu       a1, t3, sp
                  slti         t1, t5, 1218
                  sltu         t1, t2, s5
                  div          a7, s11, t3
                  andi         s3, s10, -774
                  srl          a2, tp, s2
                  c.add        s4, a1
                  div          s0, s4, t0
                  div          s2, t5, sp
                  mulhu        a5, gp, s1
                  c.nop
                  div          s5, tp, a1
                  ori          t5, a0, -44
                  c.srli       a4, 10
                  mul          tp, s1, tp
                  c.lui        s2, 19
                  xori         tp, ra, 1147
                  sra          a3, t2, a4
                  sub          a2, a4, a6
                  c.li         s7, -1
                  divu         s1, t5, s0
                  c.and        a2, s1
                  divu         t3, s5, s7
                  mulh         t5, s0, s0
                  c.nop
                  c.or         a0, a3
                  c.sub        a1, a1
                  andi         s2, a1, -822
                  c.li         a7, 14
                  div          a2, s1, t3
                  c.add        t0, t3
                  andi         s2, a6, -1637
                  remu         s10, s9, a2
                  addi         s5, t4, -1410
                  or           t3, s1, sp
                  addi         t0, s5, 286
                  srai         s7, t3, 15
                  xor          a4, ra, t0
                  c.srai       a5, 12
                  c.slli       s10, 20
                  c.xor        a3, a4
                  c.sub        a4, s1
                  c.xor        a5, a5
                  srli         t5, zero, 10
                  mulhsu       a7, s7, a5
                  sra          s7, s5, a7
                  andi         t6, sp, 1183
                  or           t5, zero, a3
                  remu         t5, t3, s0
                  c.srai       a3, 16
                  andi         s8, a4, -363
                  sll          s8, t0, s10
                  and          s4, a6, zero
                  add          s2, t5, s10
                  sll          t5, gp, s2
                  remu         t3, a7, s4
                  or           s4, zero, a5
                  c.andi       a3, 7
                  mul          a5, a1, a6
                  auipc        s2, 722015
                  srai         s1, s10, 29
                  c.srli       a5, 31
                  c.mv         a3, t1
                  slli         zero, s10, 17
                  andi         s11, s9, -500
                  and          gp, s3, a4
                  or           s3, s6, t5
                  nop
                  addi         t5, t1, -1995
                  xori         a2, a7, -553
                  c.addi       s5, -1
                  sltiu        s1, t1, 1873
                  srl          s8, a4, t2
                  c.srli       a2, 11
                  lui          s7, 532720
                  srl          a0, s6, s9
                  c.slli       s8, 30
                  addi         a2, t2, -150
                  slti         s4, t6, 363
                  nop
                  mulhu        t5, a5, a6
                  slli         s9, t1, 31
                  c.lui        s7, 22
                  c.nop
                  c.and        a2, a2
                  auipc        s9, 656067
                  xor          a7, tp, a1
                  lui          a2, 404969
                  lui          a7, 577099
                  lui          a1, 1033327
                  ori          s7, t4, -592
                  rem          s8, s4, t0
                  c.add        a7, s10
                  c.srli       a3, 6
                  sra          t2, a0, s8
                  sub          s10, s5, s11
                  xor          gp, s6, tp
                  c.slli       s2, 13
                  addi         s9, t5, 1309
                  c.slli       s9, 4
                  c.lui        s0, 4
                  mulhu        t5, a4, a4
                  remu         t2, s2, s0
                  div          a1, s4, s5
                  sra          t1, a2, zero
                  sltu         s7, s9, sp
                  xor          a0, s1, a6
                  c.and        a4, a2
                  c.or         a2, s1
                  c.add        ra, s4
                  sll          t3, s10, s7
                  c.add        t6, t3
                  slti         s10, s10, 398
                  c.and        a0, s0
                  ori          a3, t5, -1810
                  c.sub        a2, a5
                  c.andi       a1, -1
                  sltu         t1, gp, sp
                  sltu         gp, ra, t5
                  mulh         s1, t6, t0
                  or           s8, a2, s6
                  xori         zero, tp, 1502
                  c.or         a5, a1
                  srl          t6, a4, s8
                  div          t4, t5, a2
                  mulh         s7, a6, s6
                  addi         a5, a3, -1348
                  c.andi       a5, 19
                  nop
                  slt          a3, a6, s7
                  div          t5, s1, a6
                  ori          a7, s1, 1212
                  srl          a7, a4, zero
                  slt          t0, a2, a7
                  addi         s7, s9, -1719
                  mul          t6, t5, s10
                  ori          a0, t1, 293
                  divu         s1, a1, s6
                  or           s3, s10, t1
                  c.srli       a2, 27
                  c.srli       a1, 14
                  nop
                  div          t5, s10, t2
                  c.addi       t3, -1
                  mulhu        ra, s3, zero
                  slti         zero, s6, 1323
                  ori          t5, gp, -1858
                  mulhu        t5, s11, t5
                  c.lui        a1, 1
                  c.addi       t5, 19
                  c.nop
                  nop
                  c.mv         tp, a5
                  addi         t2, t1, -1855
                  add          zero, sp, s11
                  divu         t3, s5, a5
                  c.nop
                  c.srai       a5, 8
                  sltu         s1, zero, a1
                  mulhsu       t0, ra, t3
                  c.srai       s0, 18
                  nop
                  c.and        a0, a4
                  c.li         t3, 19
                  sra          a4, a3, t4
                  c.srai       a0, 6
                  c.add        s11, ra
                  ori          zero, a7, -1079
                  c.andi       a4, -1
                  addi         a0, s8, -559
                  c.and        a3, s1
                  sll          s2, a5, s8
                  c.srai       a2, 21
                  c.mv         a7, t0
                  c.srli       a4, 22
                  sub          t1, t0, s4
                  mulhsu       t3, tp, a0
                  xor          s5, t0, t2
                  lui          a4, 812332
                  c.addi       a7, -1
                  addi         t6, t4, -579
                  srli         t1, t4, 5
                  ori          s2, a3, -653
                  sll          tp, s3, s8
                  c.addi       t0, 1
                  div          s8, sp, t6
                  sub          t1, a3, gp
                  sra          s2, s9, zero
                  addi         a1, s4, -1726
                  or           t6, t0, s5
                  sub          t2, sp, s10
                  remu         s8, a4, ra
                  mulhu        gp, zero, a1
                  sltiu        tp, t1, -1571
                  sub          s7, t2, s3
                  andi         a1, t6, -227
                  slt          t2, s3, tp
                  c.and        a5, a2
                  mulhsu       s8, gp, a1
                  srli         a3, t3, 29
                  mulhsu       t0, s6, s6
                  sll          a3, a3, zero
                  sltiu        t1, a7, 996
                  or           s7, zero, s0
                  mulh         t2, t3, s6
                  mulh         t1, ra, s5
                  addi         s11, s10, 407
                  mulh         s1, t0, t5
                  and          t1, s2, t3
                  divu         t4, s5, s3
                  c.xor        a0, a0
                  mul          a4, t3, zero
                  c.addi       s7, 11
                  auipc        s2, 130396
                  c.nop
                  sltu         a2, a0, t3
                  c.andi       a0, 22
                  mulhsu       s4, s3, a5
                  c.nop
                  xori         a5, a4, 195
                  rem          a4, a4, a1
                  mulhu        s7, ra, t2
                  sub          zero, s1, s10
                  c.srli       s1, 8
                  add          a4, t1, a5
                  sltiu        a2, ra, 1973
                  xor          t1, zero, s9
                  or           t1, s5, tp
                  div          s5, s7, s1
                  auipc        t1, 778959
                  slli         t6, s3, 19
                  c.xor        a2, a1
                  c.slli       a7, 28
                  c.xor        a4, a4
                  div          t3, s10, zero
                  xori         s4, a2, -664
                  add          s2, gp, s3
                  sll          ra, zero, s11
                  c.or         a2, a5
                  slt          a3, t3, s6
                  xori         zero, tp, -619
                  xor          zero, a3, t3
                  sub          t1, s6, zero
                  auipc        s0, 992643
                  c.srli       a4, 15
                  c.lui        a5, 2
                  c.or         a2, a2
                  c.xor        a2, a1
                  xori         t2, t3, -134
                  srli         s2, s10, 26
                  divu         t3, t5, s7
                  c.xor        s1, a3
                  mulh         zero, s6, t4
                  mulhu        a0, gp, s9
                  nop
                  or           t0, sp, tp
                  nop
                  srai         a2, a0, 28
                  lui          s4, 181474
                  slli         a1, t0, 14
                  c.li         a7, -1
                  or           s4, s6, ra
                  slt          a5, t4, a2
                  div          a1, s4, t5
                  sra          s9, sp, s7
                  srai         t2, a1, 14
                  divu         a7, a7, a7
                  c.xor        s0, a0
                  remu         t3, a1, s8
                  c.srli       a4, 28
                  c.srai       s1, 5
                  lui          s2, 42234
                  c.and        a1, s0
                  c.xor        a4, a3
                  c.srli       a1, 22
                  c.add        s4, a6
                  c.li         s3, 25
                  srl          s5, t2, s8
                  divu         t5, sp, s5
                  c.andi       a0, -1
                  lui          t2, 4348
                  c.mv         a2, t5
                  sltu         s5, a6, a4
                  and          gp, sp, t4
                  auipc        s4, 134063
                  add          a5, s1, s3
                  c.mv         t5, s8
                  c.lui        t1, 27
                  slli         tp, s9, 5
                  sll          s3, tp, s2
                  xori         t5, a2, -2020
                  c.li         a7, 11
                  or           a0, s2, t4
                  mulhsu       s3, a5, ra
                  mulh         s0, t6, a3
                  sub          t3, s0, ra
                  ori          zero, t5, 812
                  slli         t0, a1, 1
                  srl          ra, s8, s2
                  mulh         a2, a7, s2
                  srli         t2, a0, 11
                  and          t5, t1, t2
                  c.lui        s11, 8
                  auipc        a0, 701757
                  srai         s5, s4, 4
                  slti         s8, s4, -1475
                  c.addi       s7, 5
                  ori          t3, t5, -437
                  c.mv         a4, s3
                  slti         t6, s2, -1220
                  add          a5, a0, a6
                  divu         zero, s3, a4
                  mulhsu       s0, a3, a6
                  c.andi       a2, 24
                  add          t1, t0, a0
                  or           t4, s9, a6
                  auipc        ra, 101458
                  c.add        a0, t2
                  slti         t4, gp, -95
                  c.or         a5, s1
                  srli         zero, s11, 4
                  c.andi       s0, 26
                  slli         t3, t3, 5
                  srl          t4, a7, t2
                  remu         ra, sp, a5
                  sltu         zero, tp, t5
                  nop
                  srli         t6, a3, 18
                  sltu         s1, s3, a6
                  mulhsu       t0, tp, a1
                  slt          s4, s4, tp
                  xori         t5, s5, 815
                  c.xor        a3, a2
                  c.lui        t6, 30
                  xori         t1, a0, 770
                  mul          t6, a3, s6
                  and          a7, t5, s0
                  srl          a0, s11, s3
                  srai         s4, t0, 24
                  sltu         s7, a6, a4
                  mulhu        a7, a6, a4
                  srli         s0, tp, 12
                  div          s1, t2, s4
                  srli         tp, ra, 2
                  auipc        gp, 423869
                  addi         s4, t6, -662
                  or           s7, s2, s3
                  auipc        s2, 359228
                  xori         t2, a2, 1085
                  rem          a0, t5, a3
                  sltiu        zero, a4, -1830
                  slli         a5, a4, 27
                  mulh         s2, s2, a0
                  xori         t3, s3, -1500
                  mulhsu       a2, a0, s5
                  addi         a3, t2, 420
                  c.or         a5, s0
                  sra          s1, t5, a7
                  xor          s3, a0, s8
                  srai         zero, sp, 21
                  remu         s2, tp, s1
                  xor          s9, s4, t4
                  ori          t0, s5, 599
                  mulhsu       s11, s8, s11
                  sltu         t2, t0, sp
                  remu         zero, a7, s2
                  add          s3, a7, a6
                  sll          t1, a5, t1
                  sltiu        tp, a3, 1712
                  div          s9, tp, t0
                  srai         s10, a4, 23
                  and          t0, t5, t0
                  c.or         s0, a4
                  xor          s8, s7, t6
                  sltiu        a7, s0, 1909
                  c.sub        a4, a0
                  mulh         s11, t6, t6
                  c.srli       a1, 17
                  sltu         ra, t5, t3
                  c.lui        a0, 1
                  remu         s2, t2, t5
                  c.srai       s0, 29
                  c.xor        a2, a4
                  add          s9, t5, s0
                  sltiu        s2, t4, 161
                  auipc        t6, 175764
                  c.lui        t0, 31
                  addi         t0, gp, 1669
                  slti         t6, t5, 529
                  remu         t6, s5, a7
                  srli         s7, a3, 0
                  c.sub        a4, s1
                  div          t1, tp, a4
                  srai         a2, t1, 8
                  c.xor        a3, a3
                  c.li         t4, 22
                  sll          a0, t5, a0
                  srl          a4, a3, a4
                  ori          a1, t5, 660
                  slti         a0, s9, 1420
                  sll          a4, t2, s6
                  c.andi       a2, 27
                  c.or         a4, s0
                  c.addi       tp, 4
                  xori         ra, a6, -1853
                  andi         s4, s5, -1895
                  mul          s8, s6, s4
                  sub          a1, t0, gp
                  c.lui        a0, 22
                  mul          s7, a1, s5
                  sll          ra, a6, t4
                  c.andi       a2, 20
                  sltiu        s10, zero, -1588
                  remu         a4, s8, s10
                  nop
                  c.srli       a5, 29
                  slt          zero, t3, s6
                  mulhsu       a4, a7, a3
                  xori         s9, a6, -1445
                  mulhsu       t5, t3, t5
                  c.sub        s0, a5
                  sub          s10, a7, s2
                  sltu         a5, t0, a3
                  sll          t4, a3, a6
                  mul          a1, s0, a7
                  add          gp, s7, ra
                  mul          t1, s5, t1
                  c.and        s1, a5
                  xor          a1, a0, s7
                  mulh         tp, a5, a6
                  div          gp, s8, a5
                  xor          a3, t2, ra
                  c.addi       s0, 14
                  nop
                  c.nop
                  slli         s11, s9, 12
                  c.li         s2, -1
                  mulhu        ra, s0, s10
                  c.srai       a2, 25
                  mulhu        zero, zero, s7
                  xori         s11, a0, -156
                  auipc        a1, 143039
                  mulh         zero, t0, gp
                  xori         gp, t4, 1387
                  c.slli       a3, 4
                  rem          s10, a3, t0
                  sltu         s1, t4, a5
                  slt          a0, t1, a7
                  c.srli       s0, 25
                  ori          a2, gp, -753
                  mulhsu       s5, a2, sp
                  c.lui        t3, 13
                  srai         t5, tp, 29
                  srl          s3, a5, t2
                  div          t3, s10, t6
                  addi         s0, s10, 1410
                  mulhu        s11, a7, tp
                  and          t1, s4, gp
                  slt          a7, a1, sp
                  or           t1, t2, a0
                  slli         gp, t5, 25
                  add          a4, a5, s2
                  slt          t1, a4, tp
                  c.srli       s0, 29
                  c.and        a0, a4
                  add          s10, t2, t0
                  rem          t0, a3, sp
                  c.and        a5, a1
                  c.lui        s1, 10
                  mulh         s11, s1, a3
                  c.and        s0, a2
                  or           gp, zero, a2
                  rem          s10, s1, zero
                  rem          s10, s0, t2
                  andi         zero, s7, 980
                  mul          ra, t0, s8
                  xori         t6, a1, 123
                  div          s7, t5, a6
                  nop
                  andi         a2, s5, 1249
                  xor          s3, s9, s7
                  slt          gp, s9, s10
                  auipc        a3, 360397
                  and          gp, s6, s6
                  auipc        s9, 716905
                  c.slli       t2, 8
                  c.slli       t6, 24
                  c.xor        a3, s0
                  c.sub        s1, s1
                  sltiu        t6, s3, 407
                  c.srli       a0, 19
                  slt          a7, t0, t6
                  c.li         s10, 8
                  c.xor        s0, a1
                  c.nop
                  c.add        s2, s11
                  slt          gp, a2, t3
                  div          gp, sp, t1
                  sltiu        s4, ra, 129
                  auipc        s3, 323718
                  lui          t0, 693804
                  mulh         a2, s1, a0
                  c.mv         s11, t5
                  xor          tp, t5, a5
                  rem          a5, t0, s11
                  c.add        s9, t2
                  div          t2, s2, s11
                  sltu         s2, a6, s4
                  c.slli       t0, 15
                  c.slli       a5, 13
                  c.xor        a5, s0
                  addi         gp, t1, -1855
                  sltiu        a4, s1, 1813
                  mulhsu       s10, a4, t1
                  srai         t0, gp, 27
                  sltiu        s0, ra, -1542
                  c.andi       a4, 19
                  or           s2, zero, t0
                  sub          gp, a6, s11
                  c.slli       a2, 2
                  c.andi       a4, -1
                  auipc        t2, 343626
                  mulh         t2, s7, s9
                  xor          gp, zero, a6
                  xor          t1, t1, a6
                  sltiu        a5, gp, -91
                  addi         s5, t0, -1701
                  xori         s10, gp, 1235
                  xor          t5, s10, t4
                  sltiu        a7, s9, 590
                  sll          s2, s9, s4
                  c.li         a5, -1
                  c.srai       a0, 16
                  mulhu        t4, s3, t5
                  sub          a4, t4, t4
                  or           t6, s2, s4
                  slli         s9, zero, 30
                  remu         zero, a7, s2
                  sltiu        s10, a6, -407
                  mulh         a7, s4, a2
                  mulhsu       t1, s1, s2
                  sra          s9, t3, s11
                  c.add        t1, s0
                  c.andi       a0, 10
                  c.srai       a1, 7
                  or           t4, t1, a1
                  auipc        a3, 336394
                  c.srli       s0, 18
                  c.add        s1, a5
                  c.srli       a5, 1
                  and          s11, a3, a3
                  nop
                  mul          t4, s1, t5
                  xori         s11, t1, -236
                  sltiu        tp, a3, -936
                  c.srai       a1, 18
                  addi         s10, t4, -1856
                  c.xor        a1, s1
                  c.or         a5, a0
                  slt          s11, t1, s8
                  rem          s2, tp, s8
                  c.or         a1, a3
                  mulh         s5, s4, gp
                  sltiu        a4, s3, -1801
                  c.xor        s0, a5
                  c.addi       t5, 2
                  srl          a0, s2, t2
                  slli         s0, sp, 24
                  addi         s2, s2, -683
                  srli         ra, t5, 12
                  ori          a3, s4, -1620
                  c.nop
                  ori          s2, ra, 1353
                  c.addi       t0, -1
                  c.sub        a0, a3
                  c.or         s0, a0
                  xori         a4, s3, 547
                  or           s11, t0, tp
                  c.add        s8, s5
                  nop
                  slt          t1, sp, sp
                  add          t1, t5, t1
                  auipc        a3, 517811
                  andi         a2, a4, -332
                  slli         t1, gp, 3
                  mulh         s10, zero, s9
                  mulhu        tp, s11, ra
                  c.mv         s10, gp
                  sub          a3, t6, s8
                  c.mv         s4, t1
                  xor          a2, s0, s5
                  and          a3, ra, s8
                  c.li         gp, 4
                  c.andi       a0, 8
                  add          s9, t2, s4
                  div          t2, t3, zero
                  slli         s4, t5, 18
                  c.add        s2, s4
                  mulhu        s4, s4, s4
                  xor          s4, s8, gp
                  divu         gp, ra, a1
                  ori          ra, s4, -1538
                  andi         a3, a7, -222
                  c.mv         a3, s5
                  sltiu        a3, t1, 844
                  add          s10, s10, s4
                  c.mv         s2, t3
                  sll          a1, s7, t5
                  sltiu        s1, a2, 1382
                  div          s0, t2, a6
                  andi         a2, s5, -1413
                  sll          s4, s1, t1
                  c.srai       a5, 16
                  ori          t4, zero, -491
                  div          s2, s0, a6
                  c.slli       a5, 1
                  addi         s2, s4, 598
                  or           s2, a4, t0
                  and          t6, t3, zero
                  sltu         s7, tp, tp
                  and          a0, s3, s8
                  sub          s7, s8, sp
                  divu         a1, zero, s8
                  slli         a0, s9, 14
                  srl          a2, s2, a1
                  mulh         s3, t4, s6
                  sltu         s2, s10, ra
                  ori          a1, t6, -1296
                  xori         zero, t4, 1068
                  divu         t1, a6, s5
                  slt          s4, sp, s1
                  c.nop
                  c.and        s1, s1
                  sra          s8, a6, gp
                  c.srli       s1, 26
                  xor          s4, tp, s5
                  c.mv         s1, a7
                  auipc        t2, 137566
                  or           s0, s5, zero
                  mul          a0, s10, a5
                  slti         a0, a4, -438
                  c.sub        a1, a0
                  and          zero, t6, s6
                  c.add        s7, s5
                  add          a3, sp, t2
                  lui          s0, 941757
                  c.and        a5, a2
                  slli         s10, t0, 11
                  sll          a5, a1, a0
                  c.srai       a2, 23
                  c.slli       s3, 19
                  c.xor        a3, a0
                  c.addi       ra, -1
                  lui          s11, 704811
                  c.lui        gp, 9
                  c.srai       a4, 19
                  add          a5, a1, tp
                  c.mv         s10, a6
                  slti         s4, zero, 1525
                  srli         s7, ra, 16
                  divu         s3, a3, a5
                  lui          s3, 718455
                  mulhsu       s2, gp, t5
                  xori         s8, t0, 800
                  sltiu        s9, s11, -430
                  ori          t4, a1, 1353
                  xor          t3, s8, ra
                  div          tp, s9, s11
                  c.srai       s1, 18
                  ori          s2, s3, -347
                  c.mv         ra, a2
                  mulh         s11, s4, s1
                  c.addi       tp, 8
                  div          s2, a2, a5
                  c.li         s4, 0
                  c.or         a1, a3
                  xor          s10, a4, s4
                  c.xor        a2, a4
                  mul          gp, s5, s4
                  slli         s9, a3, 30
                  andi         t2, s0, 1716
                  srli         t3, s7, 11
                  c.addi       s8, -1
                  xor          s11, t6, a5
                  mul          s9, s5, gp
                  srai         s1, t5, 3
                  c.sub        a2, s1
                  divu         a4, ra, s7
                  mul          a3, t6, s11
                  auipc        s9, 126573
                  mulhu        a5, t0, a0
                  andi         a7, a7, -576
                  remu         zero, s6, s4
                  or           a2, s11, a7
                  c.sub        s1, a5
                  c.slli       a2, 28
                  xor          s0, t0, sp
                  c.andi       s1, 13
                  ori          a4, t0, -1448
                  sra          s8, a5, s11
                  c.nop
                  or           a0, t4, t3
                  c.andi       a1, -1
                  rem          s8, a7, a1
                  sll          s3, a4, s7
                  add          s4, a2, ra
                  auipc        t6, 1028579
                  sltu         s1, t4, a3
                  sltu         s3, t6, a0
                  remu         a0, t4, t0
                  srli         a5, a4, 13
                  slt          a7, s1, s3
                  lui          s3, 691622
                  div          a7, t5, a1
                  c.slli       a4, 5
                  c.addi       a0, 29
                  slli         s2, t1, 29
                  xor          a4, t5, a3
                  sub          a3, t0, gp
                  and          zero, s8, t0
                  sub          s9, zero, a6
                  mulhsu       t1, a7, zero
                  sll          s7, t2, t2
                  xor          a0, a7, s1
                  c.add        a4, t0
                  c.nop
                  mulhu        t2, s8, zero
                  c.li         s2, 24
                  c.addi       s7, -1
                  addi         a5, s5, 1413
                  mulhu        s10, gp, s6
                  c.mv         t0, s8
                  slti         s7, a6, -221
                  remu         a3, a0, a5
                  slti         t6, s10, 585
                  c.srai       s0, 16
                  divu         s9, t2, sp
                  andi         a2, t2, -269
                  remu         a7, tp, a1
                  slli         s11, t2, 6
                  slti         s11, a4, -1806
                  c.and        s1, a1
                  c.addi       s5, 14
                  sub          s5, a3, s3
                  addi         s11, s4, -1477
                  c.srli       s0, 30
                  c.slli       t4, 22
                  c.slli       t1, 4
                  ori          s7, a5, 11
                  srl          s7, s9, a2
                  add          s3, s9, a5
                  c.li         t2, 8
                  sub          a0, s1, gp
                  xori         t0, a2, -819
                  c.lui        gp, 11
                  c.srai       a2, 8
                  slti         s7, s2, -854
                  remu         s2, ra, s10
                  c.slli       t1, 24
                  and          t5, s4, t6
                  srli         zero, t0, 26
                  c.and        a2, s1
                  divu         a5, a6, t5
                  sltu         gp, ra, t5
                  c.lui        s3, 2
                  slt          t2, s3, t0
                  rem          ra, s5, a4
                  sra          t5, s7, s0
                  c.andi       a5, 10
                  c.andi       a0, -1
                  mulhsu       s2, zero, t2
                  sll          t6, s1, a7
                  srai         a0, t6, 8
                  c.lui        s7, 9
                  addi         s4, t6, 1958
                  sll          a0, t2, a4
                  remu         gp, a3, t2
                  rem          a5, t6, s5
                  srai         a0, s11, 13
                  mulh         t1, ra, s4
                  slti         t2, s9, 1960
                  divu         zero, s3, a5
                  sub          t0, s7, s8
                  srai         t4, tp, 12
                  c.xor        a3, a4
                  or           t0, a2, s5
                  c.sub        s1, s0
                  div          s9, t1, a4
                  auipc        gp, 440550
                  xor          s9, s1, s11
                  c.xor        a1, a1
                  lui          s8, 626514
                  c.slli       t2, 30
                  c.slli       ra, 14
                  c.li         s2, -1
                  sltiu        s5, s11, -175
                  andi         s9, a1, 628
                  slt          s1, a1, s9
                  sltu         t6, a7, t1
                  slt          t3, sp, s4
                  sltu         t5, ra, t0
                  sra          s2, zero, t5
                  slli         a0, t3, 7
                  div          t4, t6, t3
                  c.add        s0, t5
                  c.mv         gp, s6
                  c.or         a3, s1
                  mulhu        t3, sp, a1
                  rem          zero, a2, t6
                  srl          t3, a5, t1
                  mul          a1, t6, a2
                  c.xor        a1, a2
                  sltu         a2, t2, t4
                  slti         tp, a2, 482
                  sltiu        gp, s11, -872
                  addi         t6, t3, -1429
                  or           zero, s6, s6
                  remu         t6, t5, s3
                  addi         s3, s11, -1619
                  lui          s2, 497005
                  c.srli       a5, 3
                  c.addi       s2, -1
                  slti         t5, s9, -617
                  slti         s5, a7, -608
                  andi         zero, zero, 247
                  divu         a4, s11, a3
                  remu         s5, gp, a7
                  and          s5, t6, s6
                  c.or         a0, a2
                  c.nop
                  slti         zero, s6, 1499
                  c.and        a3, s0
                  andi         s9, t3, 677
                  mulhu        t4, a0, a0
                  c.lui        a5, 19
                  c.sub        s0, a3
                  lui          s11, 758009
                  c.srli       a2, 29
                  sub          t4, t4, a5
                  sltiu        a7, gp, -921
                  mul          gp, a2, s5
                  auipc        s9, 98127
                  div          ra, a4, t6
                  div          tp, t6, a6
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
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_2:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_3:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_4:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_5:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_6:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_7:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_8:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_9:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_10:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_11:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_12:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_13:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_14:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_15:
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
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
                  addi x22, x22, -4
                  sw  x16, (x22)
                  add x16, x22, zero
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
                  add x22, x16, zero
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x27, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x27, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x27, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x27, x4, ecall_handler
                  li x4, 0x1
                  beq x27, x4, instr_fault_handler
                  li x4, 0x5
                  beq x27, x4, load_fault_handler
                  li x4, 0x7
                  beq x27, x4, store_fault_handler
                  li x4, 0xc
                  beq x27, x4, pt_fault_handler
                  li x4, 0xd
                  beq x27, x4, pt_fault_handler
                  li x4, 0xf
                  beq x27, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x16, x22, zero
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
                  add x22, x16, zero
                  lw  x16, (x22)
                  addi x22, x22, 4
                  mret

load_fault_handler:
                  add x16, x22, zero
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
                  add x22, x16, zero
                  lw  x16, (x22)
                  addi x22, x22, 4
                  mret

store_fault_handler:
                  add x16, x22, zero
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
                  add x22, x16, zero
                  lw  x16, (x22)
                  addi x22, x22, 4
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x16, x22, zero
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
                  add x22, x16, zero
                  lw  x16, (x22)
                  addi x22, x22, 4
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x16, x22, zero
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
                  add x22, x16, zero
                  lw  x16, (x22)
                  addi x22, x22, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x16, x22, zero
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
                  add x22, x16, zero
                  lw  x16, (x22)
                  addi x22, x22, 4
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
