.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x6, 0x40001105
                  csrw 0x301, x6
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 1
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  li x6, 0x0
                  csrw 0x304, x6 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x3, 0xfb45d7f6
                  li x4, 0xff7a2afe
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x3
                  li x10, 0x2
                  li x11, 0xf961f1d2
                  li x12, 0xf3934247
                  li x13, 0x80000000
                  li x14, 0xa
                  li x15, 0x0
                  li x16, 0x2aca6965
                  li x17, 0xfce98e59
                  li x18, 0xa09c2e51
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x24f6f359
                  li x22, 0x0
                  li x23, 0x3
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x9f43644e
                  li x28, 0xf9b66173
                  li x29, 0xf0f1aa21
                  li x30, 0xfdfcd0fb
                  li x31, 0xf41f2388
                  la x27, user_stack_end
main:             andi         a0, t2, -1652
                  c.or         a3, s1
                  div          a5, tp, gp
                  slti         s1, s8, 1316
                  c.xor        a5, a1
                  srai         s9, t6, 10
                  ori          s10, ra, -1354
                  c.li         s8, 1
                  sll          t6, s1, t4
                  c.or         a4, a2
                  xor          s6, s1, t5
                  c.slli       gp, 25
                  auipc        t2, 716125
                  mulhu        ra, s8, a2
                  and          a0, a2, s2
                  sltu         s9, a7, a0
                  nop
                  and          tp, s6, s7
                  mul          s9, s11, s1
                  slli         a1, s0, 24
                  nop
                  mul          s9, a1, s5
                  div          t3, s6, sp
                  xori         gp, t6, -1742
                  srai         a6, a3, 22
                  slti         s8, ra, -1130
                  srai         a7, s2, 13
                  c.slli       a7, 13
                  sltu         t6, s4, t4
                  or           s6, s11, s6
                  sra          t4, t5, zero
                  sub          s10, a3, zero
                  c.nop
                  and          t0, a3, gp
                  c.li         s7, 13
                  sub          s0, t1, zero
                  c.add        s0, t5
                  sub          t1, t6, t2
                  c.or         s0, a5
                  c.add        s3, s0
                  nop
                  mulh         gp, a3, a0
                  c.mv         gp, sp
                  c.mv         t4, a0
                  xori         s2, t6, -67
                  nop
                  div          s3, s9, s8
                  c.slli       s4, 27
                  addi         gp, s0, 1032
                  c.or         a4, a5
                  c.and        a4, s1
                  add          s0, a6, ra
                  srl          s10, s5, sp
                  c.mv         s7, s7
                  c.mv         s10, s10
                  mul          s0, s7, t2
                  sltiu        tp, t6, 46
                  c.add        s7, s11
                  xori         s10, s1, 1130
                  slt          s9, s6, s7
                  remu         tp, a3, ra
                  nop
                  c.nop
                  mulhu        t3, a0, s3
                  sll          s2, s8, a0
                  c.lui        s10, 3
                  srli         s5, s11, 9
                  sltiu        s7, s10, -2048
                  xor          a3, a0, s3
                  xor          a0, s9, t5
                  mul          s7, a3, zero
                  c.li         a0, -1
                  srli         s5, s2, 25
                  div          t4, t0, t0
                  auipc        s1, 313290
                  rem          t0, t1, ra
                  mulh         s2, s7, s2
                  mulh         a3, s7, s7
                  mulhsu       gp, sp, t1
                  srai         ra, s5, 28
                  slli         s0, tp, 3
                  mulhsu       a1, s11, s2
                  c.andi       a4, -1
                  slti         t2, s2, -1069
                  c.xor        a5, a1
                  rem          a1, s6, s9
                  srl          s4, s6, a4
                  c.sub        a5, a0
                  sra          a5, a3, a3
                  mulhu        s4, s7, t4
                  c.nop
                  c.or         a4, s0
                  xori         t5, s5, -202
                  sra          gp, s6, s3
                  srai         a6, ra, 24
                  c.andi       a0, 30
                  xori         s2, a6, -153
                  c.and        s1, a3
                  xor          a3, s8, t1
                  andi         t5, a4, -94
                  and          t0, s1, s6
                  c.slli       s3, 25
                  mulhsu       gp, t4, s10
                  mulh         s0, gp, a7
                  mul          a1, s10, a5
                  and          t0, a6, tp
                  slli         t2, a2, 27
                  srli         s3, zero, 24
                  sltiu        a1, s0, -1130
                  andi         t0, gp, 1937
                  sra          t3, a7, t6
                  add          t4, s6, t2
                  c.xor        s1, a3
                  slli         t5, s5, 26
                  mulhu        t4, sp, tp
                  mulh         s4, t6, a0
                  c.srai       a3, 10
                  c.slli       a7, 13
                  div          ra, t5, a7
                  mulh         a3, a4, t5
                  c.srai       s1, 23
                  div          a0, t2, s6
                  lui          t1, 701241
                  sub          tp, a1, s10
                  ori          s0, t5, -738
                  c.srai       a3, 19
                  c.xor        a4, a5
                  sra          a3, t3, a7
                  slti         ra, t2, 878
                  slt          t5, zero, s2
                  ori          a4, t6, 1362
                  sll          t5, gp, s9
                  sra          t3, s10, tp
                  add          a6, sp, s8
                  sub          s9, a1, t5
                  c.srli       a0, 19
                  c.or         a3, a0
                  sll          t1, a4, a5
                  mulh         s2, s2, t3
                  c.addi       a0, 29
                  c.slli       s3, 8
                  srl          t3, s0, s11
                  c.li         a1, 3
                  c.sub        a0, a3
                  c.li         s5, 12
                  sra          s9, s6, s4
                  c.sub        a4, a3
                  or           s8, s9, a0
                  c.add        s1, sp
                  c.mv         a4, t6
                  c.or         a5, a3
                  mul          a0, a2, ra
                  add          t3, a2, t0
                  srl          s9, s5, ra
                  c.and        a4, a4
                  srai         a6, a6, 27
                  add          t6, s2, ra
                  srl          t4, t6, a5
                  div          a3, s9, s8
                  srl          t4, s8, t3
                  c.add        t0, a7
                  c.sub        s1, a5
                  sltu         a5, s4, zero
                  c.mv         t1, s2
                  slt          s10, t3, s2
                  mul          s6, a2, s11
                  c.addi       a4, 21
                  c.slli       ra, 6
                  ori          a4, s4, -1452
                  c.sub        s0, a0
                  or           a0, a3, s6
                  c.nop
                  slti         a0, t4, -1800
                  div          t2, t6, ra
                  divu         t3, s6, t5
                  mulhu        a5, ra, s6
                  slt          a1, s7, a3
                  c.and        a4, a5
                  or           a5, a6, tp
                  or           t2, a0, a7
                  mulhu        a1, s2, s0
                  c.srai       s0, 20
                  srli         t1, t3, 14
                  c.or         a1, a5
                  srl          s0, t3, a5
                  rem          gp, zero, t2
                  ori          a7, sp, 90
                  c.mv         s3, t2
                  c.srai       s0, 3
                  c.li         t6, 11
                  addi         t4, a5, -92
                  srli         t3, s9, 12
                  nop
                  c.or         a5, s1
                  rem          a6, s2, a7
                  nop
                  c.addi       s7, -1
                  rem          t5, t4, t6
                  sub          ra, s8, s5
                  sltu         ra, tp, zero
                  slti         s9, s9, -310
                  c.nop
                  c.addi       a0, 15
                  c.addi       t2, 6
                  c.srai       s1, 3
                  c.or         a3, s0
                  c.or         a4, a2
                  c.or         a1, s1
                  c.lui        s8, 27
                  sll          s2, s11, s4
                  mulhu        t4, gp, s6
                  andi         s3, zero, -1981
                  srai         a1, s7, 28
                  c.nop
                  xori         t3, s5, -430
                  c.srli       s0, 8
                  sltu         t4, a2, a3
                  c.or         a3, a0
                  div          s10, gp, t5
                  rem          t5, zero, s5
                  add          s3, t2, a5
                  c.srli       s1, 4
                  slti         zero, s1, 1731
                  mulhsu       s9, sp, t6
                  mulh         a7, s10, t0
                  c.nop
                  c.li         s9, 1
                  rem          a0, ra, s2
                  slt          s2, t6, t5
                  c.xor        s1, a3
                  c.slli       s0, 24
                  xori         a4, s8, 4
                  c.mv         t1, s7
                  c.lui        t1, 23
                  c.srli       a0, 18
                  remu         ra, s5, s10
                  c.sub        s0, a5
                  lui          a1, 771273
                  andi         a1, s7, -1348
                  divu         t6, s7, t1
                  srli         a5, t5, 1
                  or           a6, ra, ra
                  remu         t4, t1, s6
                  ori          t3, s0, 1750
                  slti         zero, s0, 1052
                  lui          t0, 1028121
                  xor          a3, ra, ra
                  c.srai       a3, 28
                  divu         gp, t2, s1
                  c.nop
                  rem          gp, t2, a2
                  lui          t4, 255127
                  ori          tp, s3, 968
                  div          a3, s0, a3
                  mul          s1, s7, s7
                  remu         tp, s5, a6
                  c.addi       s3, -1
                  sltu         t2, s7, a1
                  slti         s2, a1, 1986
                  c.srai       a4, 28
                  slli         s1, s5, 11
                  addi         tp, a1, -266
                  xor          s1, a5, t6
                  c.slli       a4, 15
                  rem          s2, a0, s4
                  c.add        s1, s4
                  or           zero, s10, a5
                  xori         a6, zero, -1104
                  c.addi       s2, -1
                  c.li         s7, 8
                  c.and        a1, a4
                  sltiu        s9, s7, 17
                  mul          a1, t6, a0
                  or           t4, t6, a4
                  c.srli       a1, 2
                  addi         a0, ra, 792
                  xor          t1, a1, s5
                  srai         t4, t3, 8
                  c.li         a7, -1
                  c.slli       t0, 20
                  srli         s4, s5, 3
                  c.mv         t2, a0
                  slti         zero, s1, -1134
                  lui          t6, 838726
                  c.sub        a0, a2
                  c.or         a0, a0
                  and          a4, a2, s7
                  c.add        s2, t1
                  and          s0, s8, t0
                  rem          tp, s0, t1
                  remu         t5, s2, s6
                  c.lui        a1, 4
                  mulhsu       s0, s5, s5
                  c.srli       a3, 9
                  mulhu        s5, a7, a6
                  c.and        a1, a2
                  sltu         t0, s4, s0
                  c.sub        s0, a5
                  c.and        s0, a1
                  nop
                  sltiu        s8, s1, -1419
                  sltu         t4, a3, s1
                  c.andi       a0, -1
                  sltu         tp, a4, t4
                  mulh         s5, s8, s0
                  xor          a3, s1, t5
                  remu         t3, s0, s0
                  slti         s3, s11, -1565
                  c.slli       t5, 5
                  c.add        t5, a5
                  div          s3, a0, a6
                  nop
                  sub          a7, a3, s9
                  c.srai       s1, 28
                  sltiu        t0, tp, 2014
                  c.and        a3, a3
                  sra          zero, s4, s5
                  slti         a5, a7, -1003
                  xor          tp, a4, s7
                  or           s7, s5, s1
                  div          s9, gp, t4
                  c.xor        a5, a4
                  c.or         s0, a1
                  divu         a3, t1, t6
                  mulhsu       t5, t0, t6
                  sra          s7, s2, s5
                  addi         t0, t5, -468
                  mulhu        gp, t0, s3
                  addi         t2, s9, 167
                  sll          s3, a7, s8
                  nop
                  srai         a3, s11, 14
                  mulhsu       t2, s11, a1
                  srli         a0, t5, 16
                  mulh         s6, s9, s10
                  c.xor        a0, a2
                  c.slli       t3, 28
                  mulhsu       t5, t1, a7
                  divu         s6, tp, zero
                  c.and        a3, a2
                  addi         t5, t4, -571
                  xori         s8, a1, -440
                  c.mv         s0, s2
                  c.slli       s4, 30
                  mulh         t2, t5, sp
                  remu         a5, s11, s6
                  slti         t5, sp, 1924
                  c.li         s4, 23
                  auipc        t4, 459327
                  c.andi       a3, -1
                  mulhu        zero, a1, a4
                  c.mv         a6, s8
                  c.slli       s6, 2
                  remu         gp, zero, a4
                  mul          t6, ra, s8
                  div          s0, a4, zero
                  remu         tp, t5, t4
                  mulhu        gp, a0, s3
                  andi         t1, a4, -1726
                  mul          s5, s3, a2
                  sra          t2, s8, s2
                  c.add        tp, s8
                  sltu         zero, s1, ra
                  c.li         s9, -1
                  mul          t3, gp, t6
                  lui          t1, 45406
                  auipc        a6, 567315
                  mulhsu       s6, s3, tp
                  srli         t3, a2, 24
                  nop
                  andi         s7, tp, 177
                  c.or         s0, s1
                  div          s9, s7, s0
                  xori         t3, t1, -1571
                  add          t3, ra, a5
                  c.andi       a4, 23
                  ori          a3, t4, -1893
                  c.li         t4, -1
                  or           a3, s1, tp
                  c.srai       a4, 19
                  mul          a5, s9, t6
                  srli         a7, tp, 23
                  c.andi       s0, 25
                  c.srli       s0, 25
                  mulhu        a1, a0, a2
                  mul          s4, ra, a1
                  c.and        a4, s1
                  c.addi       a0, -1
                  addi         t1, t1, -245
                  srli         s6, s7, 31
                  div          a3, s5, zero
                  mulhu        a4, s3, a6
                  c.mv         tp, a6
                  mul          s7, a7, t5
                  add          t5, s7, a3
                  mulhsu       t0, sp, a5
                  c.nop
                  c.srli       a3, 28
                  c.add        s6, t6
                  srl          s7, tp, a1
                  c.or         s0, s0
                  c.slli       a1, 22
                  and          t6, tp, t5
                  nop
                  nop
                  srli         t6, s11, 2
                  divu         zero, s11, a4
                  c.andi       a5, 1
                  sltiu        s6, s11, -1737
                  srai         t1, a0, 18
                  mulhu        gp, a0, s10
                  sltu         s10, s2, sp
                  c.or         a4, a2
                  andi         t1, s10, -383
                  and          t1, s10, s8
                  c.lui        gp, 29
                  mul          t1, s7, s11
                  rem          a7, t6, a3
                  sub          s10, a6, s3
                  mul          a1, sp, s1
                  mulhsu       s6, s3, t3
                  or           t3, s3, t5
                  nop
                  c.addi       t4, 12
                  slli         t0, s4, 12
                  mulhsu       t1, s0, s9
                  nop
                  remu         s0, t6, s8
                  c.li         s8, -1
                  sll          s3, t6, s1
                  c.slli       a3, 25
                  nop
                  c.xor        a1, a3
                  remu         ra, s1, a4
                  or           s8, t0, a0
                  sub          a4, t2, a7
                  lui          a0, 871025
                  slli         s4, ra, 11
                  sra          s2, s11, s4
                  slli         s2, s10, 4
                  or           t3, a4, s11
                  c.or         a0, a0
                  srai         a5, s2, 25
                  auipc        a5, 111517
                  c.addi       ra, -1
                  and          s0, gp, a3
                  andi         s1, t1, -282
                  nop
                  divu         s8, s8, a0
                  or           s0, t2, s0
                  c.sub        s0, a5
                  c.addi       s8, -1
                  c.or         a5, s0
                  rem          a7, s1, tp
                  srli         t1, s1, 25
                  c.mv         s6, t0
                  mulhu        s10, s5, s7
                  c.srli       a3, 26
                  rem          s4, s10, t3
                  c.and        s1, a0
                  remu         s6, s10, a7
                  c.slli       s4, 30
                  c.sub        s1, a0
                  c.and        s0, a2
                  c.andi       a4, -1
                  srli         t2, t4, 16
                  slli         tp, t0, 29
                  c.nop
                  slt          s3, zero, gp
                  srai         t2, a4, 0
                  mulhsu       a7, t2, s8
                  srl          zero, gp, s8
                  rem          a0, t4, ra
                  sub          ra, sp, a3
                  addi         a6, s10, 323
                  c.mv         tp, t3
                  slt          t1, zero, a6
                  sra          s9, s9, tp
                  c.mv         t4, t3
                  c.add        s8, a4
                  c.slli       s8, 2
                  xor          s7, t4, a1
                  c.sub        s0, s0
                  c.xor        a0, a0
                  srli         s3, t5, 10
                  ori          a6, tp, -48
                  mulh         ra, sp, t2
                  c.slli       a4, 31
                  nop
                  c.li         s4, 27
                  c.lui        s3, 7
                  c.li         a3, -1
                  andi         zero, t6, 582
                  addi         t6, ra, -1748
                  c.mv         a6, ra
                  c.nop
                  c.lui        t5, 2
                  xori         ra, t1, -374
                  ori          s3, t0, -618
                  slli         gp, t6, 6
                  c.andi       a3, -1
                  lui          s5, 618467
                  ori          s6, t0, 880
                  mulhsu       t3, s5, t6
                  rem          a5, s1, s11
                  c.and        a5, a3
                  div          s8, s9, s7
                  srl          t6, s5, a6
                  srl          s1, a6, gp
                  remu         zero, s7, t1
                  auipc        s5, 558327
                  mulh         t1, a4, s1
                  xor          t4, a7, t5
                  addi         t4, s8, 1681
                  srai         a1, t5, 23
                  slt          a3, t2, ra
                  andi         a7, s4, 507
                  c.mv         s1, t1
                  slli         a7, a2, 9
                  c.xor        a1, a5
                  c.or         a0, a1
                  xor          a4, s3, t4
                  c.xor        s1, a3
                  c.slli       a0, 1
                  c.nop
                  c.or         a1, a3
                  slt          a1, s4, s5
                  sltu         gp, tp, s9
                  sltiu        a7, s6, 337
                  slt          a7, s0, a7
                  xor          t4, sp, t2
                  add          t3, a6, ra
                  c.li         s8, -1
                  c.addi       gp, -1
                  mulhsu       t0, tp, s7
                  add          t6, s0, a0
                  sub          gp, s2, s10
                  addi         t0, ra, 1956
                  or           a6, a0, s8
                  c.addi       s0, 29
                  xor          t1, tp, s11
                  slti         a6, a6, -1745
                  sra          s4, t0, s0
                  xori         s7, a6, -716
                  c.xor        a4, a3
                  sll          t6, s5, a7
                  addi         zero, a1, -697
                  sra          s7, s8, t2
                  c.lui        a3, 10
                  nop
                  div          t3, ra, t6
                  c.li         a0, 7
                  c.srai       s0, 9
                  auipc        gp, 742657
                  xori         a6, a7, 1841
                  sra          tp, sp, s3
                  slli         s6, s10, 6
                  srli         s10, t0, 6
                  slti         s10, ra, -308
                  c.or         a1, a0
                  nop
                  c.addi       tp, -1
                  remu         s1, s0, s6
                  xor          s0, s2, t2
                  remu         t3, a4, t4
                  sll          s7, gp, a3
                  c.andi       a5, -1
                  slt          zero, a6, s2
                  c.nop
                  c.nop
                  auipc        s7, 728695
                  srai         a6, s2, 31
                  add          tp, s11, zero
                  c.sub        a1, a4
                  mulhsu       s3, ra, s0
                  c.andi       s1, -1
                  slt          gp, s3, zero
                  c.xor        a4, a0
                  c.nop
                  nop
                  c.mv         a4, t3
                  c.nop
                  ori          tp, s1, 852
                  srai         s6, t6, 9
                  c.or         a1, a4
                  auipc        a4, 136237
                  c.srai       a5, 25
                  c.xor        a5, a3
                  c.add        a1, a1
                  c.srai       s0, 16
                  c.add        a7, gp
                  rem          s9, t1, t5
                  nop
                  c.lui        a3, 23
                  c.lui        t6, 9
                  add          tp, a3, t6
                  c.xor        a3, a1
                  c.andi       a5, 16
                  div          t0, a2, a5
                  slti         s1, a6, 1428
                  c.add        a7, a7
                  mulhu        s1, s0, a1
                  sltiu        a6, a2, -1178
                  sub          s1, s5, s8
                  c.srli       s1, 30
                  mulhsu       t2, s7, s8
                  mulhu        a1, a1, a7
                  slti         a7, t4, 631
                  c.xor        s0, a4
                  srai         s6, s9, 8
                  c.mv         a5, a5
                  mulh         s8, t2, t0
                  addi         t0, ra, -1074
                  auipc        tp, 497565
                  slli         s5, ra, 0
                  slli         zero, zero, 17
                  rem          a0, t3, sp
                  ori          a1, t4, -671
                  mulh         gp, s5, t0
                  c.andi       s1, -1
                  mulh         a6, s3, t0
                  sra          a4, a3, a6
                  auipc        tp, 46400
                  c.srli       a1, 16
                  c.add        s0, s3
                  ori          t1, s2, 351
                  mul          s9, a7, a5
                  sub          s7, s10, s2
                  srl          s6, t3, s1
                  c.add        s9, t3
                  xor          a4, s5, gp
                  ori          a4, t6, -1800
                  div          t1, a1, a4
                  c.mv         s6, sp
                  add          s10, a1, t6
                  or           a0, t2, a4
                  c.xor        s0, a4
                  nop
                  slti         s1, a1, 1637
                  c.addi       s2, 30
                  mulhu        t4, s7, gp
                  c.slli       a6, 9
                  c.lui        a6, 18
                  c.li         ra, 30
                  slli         t3, s1, 21
                  auipc        zero, 888860
                  srai         a0, t2, 5
                  c.sub        a4, s1
                  slt          a6, sp, t2
                  sltiu        a7, tp, 1390
                  addi         a3, gp, -844
                  or           a1, tp, zero
                  sra          a0, s9, a5
                  and          a5, t0, a3
                  c.srai       a4, 15
                  remu         t4, a5, a7
                  sltiu        zero, s2, -1427
                  c.srli       s0, 9
                  remu         ra, s7, s7
                  mulhsu       s2, s5, a7
                  sltiu        zero, t0, 1410
                  xori         s4, s1, -733
                  c.addi       a3, -1
                  mulhsu       zero, s0, a7
                  c.li         gp, -1
                  mulh         s1, t3, s2
                  c.and        a5, s1
                  srli         s0, s2, 24
                  div          s9, a3, zero
                  sub          a5, a0, tp
                  c.srai       s1, 23
                  ori          a4, tp, -1090
                  andi         t6, a6, -40
                  mulhu        a1, s11, t3
                  and          tp, s9, s4
                  mulhsu       a3, a7, gp
                  c.li         a0, 30
                  slli         s4, ra, 8
                  lui          a0, 25171
                  c.slli       s2, 6
                  mulhsu       s5, a3, t2
                  sub          s0, sp, t0
                  c.srai       a3, 25
                  add          a1, s10, t1
                  sub          t2, sp, t3
                  or           s10, s4, a7
                  srli         t5, a5, 5
                  remu         zero, s6, t3
                  c.srai       a0, 31
                  c.nop
                  addi         a4, s9, 1620
                  mul          s7, s4, s8
                  ori          s8, tp, 275
                  slti         s2, zero, -1568
                  c.li         s6, 22
                  addi         s2, s2, 1643
                  xori         gp, a7, 361
                  add          a4, a0, a3
                  mulhsu       s5, t1, ra
                  c.li         s0, 27
                  c.or         a4, a2
                  c.srai       s0, 9
                  auipc        a3, 719993
                  c.nop
                  mulh         a0, s5, ra
                  mul          gp, s0, t0
                  c.addi       s10, -1
                  c.or         s0, a5
                  c.add        s0, a1
                  c.add        tp, t2
                  slli         a5, s6, 25
                  c.slli       a0, 24
                  mulhu        ra, s8, a5
                  c.srli       a0, 28
                  c.slli       s7, 4
                  slli         s1, zero, 29
                  c.slli       gp, 13
                  mulhu        a7, sp, a6
                  andi         s4, s1, -2023
                  lui          t0, 437083
                  sub          s2, gp, t5
                  c.srai       a0, 8
                  sltiu        a7, t0, -394
                  sub          t4, a7, a6
                  sll          a6, s1, s8
                  nop
                  sub          t1, gp, s7
                  addi         tp, s6, 134
                  mulhsu       a1, s10, tp
                  rem          s9, a1, t5
                  or           a7, s9, s1
                  c.andi       s1, -1
                  c.srai       a1, 24
                  slt          zero, a1, a0
                  slt          a7, a3, s1
                  xori         s5, zero, -566
                  ori          a5, zero, -1012
                  sll          gp, zero, zero
                  c.nop
                  sltu         t3, tp, a0
                  divu         s9, s1, t3
                  andi         t3, s8, -953
                  c.and        a3, a4
                  divu         a1, s11, s5
                  divu         t1, a5, a4
                  and          s2, s0, s6
                  slt          a0, s6, t5
                  c.or         s0, a2
                  div          zero, t5, t0
                  c.andi       a5, 11
                  ori          t1, zero, 1526
                  c.or         a3, a3
                  nop
                  and          s9, t5, s1
                  c.sub        a3, a2
                  srl          tp, t4, a0
                  lui          s1, 1026507
                  nop
                  c.and        a3, a5
                  xori         s9, s1, -58
                  sub          s9, a2, gp
                  nop
                  or           t4, s6, a5
                  mulh         t5, s2, s1
                  c.and        s1, s1
                  c.sub        a0, a2
                  slli         a0, gp, 12
                  mulh         a6, a4, a3
                  rem          a1, sp, s3
                  c.sub        a0, a0
                  c.nop
                  slti         t5, a4, 425
                  divu         s5, s11, s1
                  c.and        a3, s1
                  mul          tp, sp, t1
                  c.srli       s1, 30
                  and          t1, zero, gp
                  mulhsu       a7, s6, s8
                  mulhu        s6, s3, t3
                  c.sub        a4, s0
                  div          t3, s2, a2
                  sll          a0, t5, t6
                  sltu         t5, s6, a2
                  lui          a0, 717460
                  c.sub        a4, a1
                  or           a6, t0, s10
                  sra          s9, t3, s5
                  sltu         t3, s0, s3
                  mul          s6, s9, s7
                  nop
                  slti         a6, tp, -298
                  c.sub        a3, a3
                  sltiu        s5, s6, -847
                  c.or         a5, s0
                  ori          a0, a1, -582
                  c.add        a1, s1
                  mulhu        s7, t0, a0
                  auipc        a5, 854574
                  mul          s3, ra, a3
                  c.sub        s1, s0
                  sltu         s5, a3, t6
                  c.or         a5, s0
                  nop
                  andi         s1, t3, -1256
                  srli         gp, s2, 17
                  c.and        a1, a0
                  remu         t1, a1, sp
                  slti         t4, s4, 1319
                  andi         t1, t1, 1467
                  c.add        t4, t2
                  sll          a6, a7, ra
                  c.xor        a1, a3
                  c.addi       a0, -1
                  sltiu        a5, a6, 128
                  srli         s0, t1, 3
                  c.srai       a4, 11
                  c.and        a0, a2
                  addi         tp, a6, 2009
                  or           a6, s8, t6
                  addi         a0, t2, 1383
                  c.li         a5, 24
                  divu         t5, t1, t3
                  sltu         t6, s9, t0
                  c.addi       s3, 24
                  c.add        s4, t6
                  nop
                  c.lui        a0, 22
                  or           s2, t2, t1
                  c.lui        s5, 20
                  sll          t1, s4, t4
                  rem          zero, s8, tp
                  mulh         t0, s11, t0
                  mulh         s0, s11, a5
                  mulhu        s8, s10, a0
                  nop
                  divu         a4, t6, t6
                  slti         gp, a4, 1715
                  auipc        t5, 521649
                  mulhu        t3, s3, a6
                  srai         t1, a1, 16
                  c.xor        a3, a3
                  sub          s1, a0, a6
                  c.or         s0, a1
                  sll          s10, zero, a4
                  mulh         t1, t4, s4
                  c.lui        t5, 23
                  andi         zero, s11, 662
                  sll          s4, a7, s11
                  c.srli       s0, 20
                  sltiu        a6, t0, -979
                  c.or         s0, s1
                  c.xor        a0, s1
                  addi         t4, t0, 1854
                  mulh         a5, zero, t3
                  xor          s8, s1, sp
                  srai         a7, s0, 16
                  mulh         a0, s1, t6
                  c.addi       t1, 28
                  nop
                  nop
                  c.and        a1, a4
                  c.srai       a1, 30
                  and          s1, s4, zero
                  c.andi       a4, -1
                  slti         a5, s10, 1477
                  slti         s0, s2, 233
                  c.nop
                  nop
                  rem          s9, a5, gp
                  rem          s6, t2, s10
                  or           tp, t0, a6
                  sltiu        t6, a1, -1078
                  divu         a6, ra, a6
                  c.andi       s0, -1
                  c.mv         s2, s11
                  c.lui        a6, 28
                  c.li         s9, 7
                  and          a5, s5, s6
                  addi         a0, s4, 615
                  c.xor        a4, a0
                  or           s10, ra, a6
                  nop
                  slt          t1, t2, a0
                  c.andi       s0, -1
                  addi         t6, s8, -591
                  sra          a4, t1, s11
                  sltu         t6, a5, s11
                  divu         t0, a6, zero
                  c.and        a1, s1
                  or           a7, s7, t6
                  slt          tp, a1, ra
                  addi         tp, s9, 948
                  add          t0, s7, sp
                  ori          zero, t2, 484
                  divu         s6, s2, a5
                  srl          t5, s6, t6
                  slli         a6, t2, 8
                  sltu         t5, s6, sp
                  c.lui        s9, 19
                  remu         tp, t2, s5
                  srl          gp, a6, s4
                  c.addi       s5, 31
                  xori         zero, s2, -622
                  c.li         gp, -1
                  divu         s8, a7, a2
                  addi         t3, a7, -897
                  c.add        a3, gp
                  c.add        a6, a6
                  c.mv         a6, s8
                  rem          s9, a5, s11
                  nop
                  sub          a0, t1, sp
                  or           a0, s5, s1
                  sltiu        s3, s9, 1468
                  sll          a7, s10, a3
                  addi         s0, t2, -1401
                  srli         a5, t1, 26
                  slli         s10, a7, 1
                  lui          gp, 213261
                  sra          t6, tp, s7
                  sltiu        zero, t6, -1385
                  c.add        s3, t1
                  div          s2, s6, a4
                  and          s4, s8, a0
                  c.srai       s0, 11
                  c.andi       a3, -1
                  slli         ra, a7, 25
                  auipc        s1, 268990
                  mulhsu       t0, a3, a6
                  xor          zero, a3, a2
                  or           s8, gp, s8
                  mulh         t0, t1, a1
                  add          s9, s5, t4
                  andi         a3, ra, 683
                  remu         gp, a0, a3
                  c.srai       a1, 15
                  sltiu        a0, t1, -369
                  div          a5, t6, s5
                  c.li         t0, -1
                  mulhu        s4, a5, t0
                  c.or         a3, s0
                  c.sub        a5, a4
                  andi         t6, s7, 994
                  c.mv         s5, s7
                  c.andi       a5, -1
                  c.or         s0, a5
                  c.srli       a4, 29
                  c.add        s0, a1
                  c.lui        a5, 4
                  mul          a1, s10, t6
                  and          s1, t5, s8
                  srl          s8, a1, a5
                  and          gp, t0, s3
                  sll          a5, s7, s10
                  xori         t5, t2, -285
                  lui          s10, 763240
                  c.mv         t6, s11
                  srli         s8, s5, 4
                  and          s3, s0, s11
                  addi         s0, s9, 1782
                  srai         zero, gp, 29
                  div          a5, a7, tp
                  sra          a5, a1, sp
                  c.mv         t3, s9
                  xor          gp, a4, a6
                  xori         t0, s3, 1376
                  or           gp, t6, t3
                  or           zero, t3, a2
                  or           s10, a5, s7
                  srl          s2, a7, s5
                  addi         t1, t5, 1692
                  c.xor        s0, a4
                  slli         t2, s3, 1
                  mul          s4, s1, ra
                  nop
                  sltiu        s7, s4, 948
                  xor          s5, s10, t1
                  addi         s10, zero, 1771
                  slli         a1, s0, 11
                  and          t0, s5, a6
                  sltu         a1, ra, t3
                  sub          t0, s3, s9
                  mulhu        t1, t1, t4
                  c.add        s3, a7
                  remu         s8, s9, tp
                  xori         tp, t1, 142
                  c.sub        s0, a1
                  mulhu        a0, s11, s2
                  slt          tp, s11, s10
                  sltu         s3, t4, ra
                  c.srli       a5, 9
                  div          zero, s9, a4
                  rem          s2, tp, s10
                  slt          a1, t2, s7
                  srai         t5, s9, 12
                  c.sub        a0, s0
                  addi         t0, a4, 801
                  rem          s5, t4, t3
                  mulhsu       ra, a4, s1
                  slli         t0, t1, 31
                  c.or         a3, s1
                  sra          a5, a7, s4
                  sltiu        s1, t6, -1480
                  and          a3, a0, a7
                  and          s4, a1, s4
                  srai         t4, a5, 15
                  mul          s3, s8, s6
                  c.lui        s5, 25
                  c.nop
                  lui          ra, 680236
                  remu         t1, s3, s9
                  c.lui        s7, 5
                  c.addi       s2, 2
                  mulhsu       s0, t2, s5
                  c.mv         s10, s11
                  sub          s10, s5, t3
                  sltu         s10, a1, ra
                  add          t5, s10, s6
                  c.add        t6, s6
                  srli         a0, t0, 27
                  slli         a3, gp, 25
                  mulhu        a0, s11, a2
                  c.or         a3, s1
                  andi         t6, t3, -1328
                  sub          s0, s5, sp
                  rem          a4, a3, s4
                  mul          s8, s7, s9
                  srl          tp, a1, a1
                  c.andi       s1, 19
                  srl          gp, t3, tp
                  sub          s4, s11, t3
                  and          t2, tp, gp
                  sub          s5, t0, sp
                  sll          s10, s8, a2
                  c.srli       a4, 23
                  c.addi       ra, -1
                  mul          s8, sp, a3
                  slti         a1, tp, 372
                  mulh         s7, a2, s8
                  ori          s8, a4, -1627
                  sltiu        t4, t6, -129
                  srai         t3, a7, 22
                  xori         t6, s3, 1503
                  srli         s3, ra, 1
                  srli         s0, a4, 0
                  c.li         t0, 13
                  or           s9, t4, t0
                  sll          t1, sp, sp
                  lui          s1, 60537
                  c.nop
                  divu         t0, a6, s11
                  divu         t1, s3, a3
                  c.lui        s10, 9
                  c.and        a5, s1
                  ori          s8, s0, -1126
                  c.sub        a1, a2
                  c.srai       a3, 30
                  andi         t1, s9, 1522
                  sra          s9, s3, a5
                  c.nop
                  slt          s1, s9, t0
                  mulhsu       ra, a0, a2
                  mulhu        gp, s7, tp
                  remu         s9, gp, t4
                  slt          a1, s3, a3
                  div          tp, s7, s3
                  c.li         s1, 22
                  c.andi       s1, -1
                  c.addi       tp, 10
                  c.andi       s0, -1
                  xor          tp, a0, s1
                  c.lui        s1, 12
                  div          s0, s3, gp
                  c.sub        s0, a0
                  add          s4, s4, s5
                  mul          zero, s5, s7
                  c.add        ra, tp
                  srli         a5, s0, 14
                  mulh         t3, a5, s6
                  divu         a6, s3, a5
                  rem          a5, t1, s2
                  sra          t5, zero, tp
                  sltu         s9, s6, s10
                  sll          a4, s8, a6
                  srli         t0, s7, 30
                  divu         a6, t5, t4
                  auipc        s3, 947613
                  sltiu        a5, a4, -598
                  slti         s5, t3, 189
                  srl          s0, t6, tp
                  ori          s9, a3, -1643
                  c.andi       a0, 16
                  c.srli       a0, 3
                  srli         ra, s0, 21
                  c.and        s0, a5
                  c.srli       a3, 27
                  c.srli       a3, 24
                  sra          s6, s10, s10
                  c.xor        a0, s0
                  xori         t0, s0, 147
                  mul          zero, sp, t1
                  c.addi       tp, 17
                  sltiu        s0, s5, 507
                  c.srli       a1, 16
                  c.addi       gp, -1
                  remu         t0, a6, a6
                  slli         tp, gp, 4
                  slli         ra, zero, 17
                  sub          zero, s0, zero
                  c.mv         tp, a6
                  sra          t5, s7, s4
                  c.andi       a1, -1
                  c.andi       s1, 15
                  srl          s7, t6, s6
                  c.and        a1, s0
                  c.lui        t3, 9
                  c.or         a5, a2
                  c.addi       s9, -1
                  sub          s6, s1, t1
                  lui          s7, 7365
                  slt          a5, a7, a5
                  c.addi       s1, -1
                  c.nop
                  slt          zero, gp, a0
                  c.li         a1, 16
                  c.addi       s0, 13
                  xori         tp, a1, -431
                  c.or         a4, a3
                  slli         s0, a6, 2
                  sub          s3, s6, a4
                  remu         s7, ra, a2
                  rem          s4, s1, t3
                  c.li         a0, 14
                  divu         gp, a4, a1
                  lui          zero, 182007
                  c.mv         a7, a1
                  mulh         a6, s4, t1
                  lui          t4, 105896
                  rem          t0, a4, s11
                  sltiu        t4, s9, -1988
                  c.mv         s2, s2
                  xori         s9, sp, -368
                  slli         t1, a0, 13
                  andi         s6, tp, 1986
                  auipc        s10, 402560
                  and          s0, a6, s7
                  mulhu        s5, s7, zero
                  c.lui        s3, 14
                  c.addi       s2, 13
                  divu         s0, s8, s9
                  c.or         s0, a5
                  lui          t4, 411988
                  c.add        s0, t0
                  c.and        s0, a0
                  sub          a1, a7, zero
                  c.slli       s8, 26
                  andi         ra, sp, 918
                  remu         t3, t1, s1
                  slli         gp, a2, 6
                  andi         s5, a4, -846
                  xor          zero, s7, a0
                  mulh         s8, a6, t1
                  mul          zero, s4, t1
                  slli         ra, t5, 12
                  c.slli       t4, 26
                  c.andi       a4, 29
                  mulh         t5, a2, s0
                  auipc        s9, 904623
                  lui          t6, 268255
                  c.and        s0, a2
                  mulh         zero, sp, s8
                  c.nop
                  c.slli       a1, 5
                  andi         s2, s5, -1482
                  and          t1, a4, t2
                  div          t2, a4, t1
                  divu         s2, a7, s5
                  c.lui        a3, 28
                  srli         a1, gp, 6
                  remu         t0, s4, t3
                  sra          s3, a5, t6
                  srai         s1, s11, 15
                  sltiu        s4, a6, -828
                  c.lui        t6, 1
                  andi         tp, zero, 465
                  c.addi       a3, 9
                  c.sub        a1, s0
                  slli         t1, a4, 27
                  mulh         a5, t4, s8
                  c.xor        a4, a1
                  c.srai       a4, 17
                  sll          gp, s0, s0
                  c.li         s4, -1
                  slt          s6, a1, s8
                  slti         s2, s5, -1458
                  mulhu        t1, s6, sp
                  slt          s7, gp, s2
                  or           gp, s5, t6
                  sltu         t5, a4, t6
                  div          t4, s2, a7
                  sub          s0, s2, a2
                  nop
                  sra          s7, a6, a6
                  sub          s5, a1, zero
                  c.srai       a4, 2
                  c.or         a0, a3
                  c.li         a1, -1
                  c.slli       s1, 8
                  c.and        a1, a4
                  auipc        s2, 677816
                  c.srli       a3, 11
                  c.and        a1, a4
                  c.and        a5, a4
                  auipc        gp, 62785
                  auipc        t2, 935774
                  srai         t5, zero, 29
                  c.andi       a3, -1
                  slli         t1, s8, 17
                  nop
                  c.sub        a3, a4
                  sra          a4, s11, s2
                  auipc        a0, 721342
                  andi         t1, a0, 1153
                  sub          s0, a1, t5
                  slli         a1, s9, 2
                  and          t0, a5, ra
                  srai         s5, s10, 23
                  slti         t1, a3, -1660
                  c.mv         a0, s9
                  and          t0, t5, a5
                  slli         a4, s3, 0
                  mulhu        t0, s8, a7
                  div          t6, s8, a5
                  srl          s0, t2, t3
                  xori         t3, s0, 734
                  mul          s2, s4, s5
                  c.lui        s10, 11
                  c.slli       t0, 8
                  c.sub        a1, a0
                  sra          t2, s10, t4
                  c.or         a4, a0
                  c.srli       s0, 16
                  slti         a0, t0, 2016
                  div          a1, a6, s0
                  slli         s1, a6, 24
                  mul          s7, t5, t4
                  mulh         a4, s1, s5
                  c.xor        a4, a1
                  mulhu        a7, t2, a4
                  c.li         s2, 15
                  sra          s7, s2, s4
                  srl          t0, t5, a6
                  mul          s10, s1, s1
                  c.xor        a4, a5
                  c.and        s0, s1
                  srai         a3, s2, 25
                  ori          s9, tp, 1601
                  mulh         s3, a1, s9
                  srli         t5, t3, 11
                  sll          a0, s1, s5
                  c.srai       s1, 20
                  andi         t4, s6, -1634
                  c.add        s10, s10
                  divu         t1, t2, sp
                  lui          a0, 575210
                  slli         t2, s1, 25
                  c.lui        t0, 19
                  lui          s3, 850378
                  c.lui        s6, 6
                  div          s1, a5, t1
                  c.andi       a0, 13
                  sll          s6, s0, t2
                  c.addi       s3, 28
                  auipc        a0, 667346
                  sltu         t2, a6, s9
                  c.or         s0, s0
                  c.slli       a7, 17
                  lui          a4, 265009
                  srl          a0, ra, t2
                  mulhsu       s0, t5, s7
                  c.or         a4, a5
                  c.srli       s1, 7
                  c.mv         t3, s0
                  mulhsu       a4, t1, t1
                  div          t5, zero, a2
                  c.add        t1, s5
                  andi         s8, t5, -246
                  c.andi       s0, 14
                  slt          s0, s9, a5
                  lui          s3, 49572
                  c.andi       a5, -1
                  c.mv         a1, s4
                  sltiu        a1, t3, -642
                  xori         t0, s2, -820
                  sra          s10, s2, t4
                  srai         zero, ra, 11
                  c.slli       s10, 1
                  c.sub        a3, a4
                  add          a5, t3, t4
                  srli         s10, s6, 21
                  c.or         a3, s1
                  xori         t6, t0, 1133
                  c.lui        s6, 16
                  c.add        s0, sp
                  or           s9, ra, s3
                  ori          t0, tp, -1073
                  auipc        s9, 44297
                  mul          a3, a3, zero
                  c.li         s2, 24
                  c.add        a3, tp
                  addi         gp, a1, 1385
                  c.lui        a1, 5
                  lui          s1, 905142
                  sltiu        s3, a1, 365
                  nop
                  xor          s9, a1, a5
                  sltu         t1, s5, ra
                  c.srli       s0, 12
                  mulh         s9, t2, t5
                  c.and        a4, a3
                  remu         a3, a5, a2
                  c.slli       gp, 10
                  and          s9, a6, s2
                  c.addi       s3, -1
                  ori          s3, t6, -1751
                  mulh         gp, s1, s10
                  remu         t3, s2, s3
                  slli         s7, s5, 25
                  c.or         a3, a1
                  sltiu        s2, a7, 1087
                  sra          a6, t1, t3
                  srli         s5, tp, 17
                  c.mv         s10, a1
                  sra          gp, a5, s5
                  c.mv         tp, a5
                  sltiu        s7, t6, 1584
                  c.and        a0, s1
                  or           tp, gp, gp
                  ori          t0, s6, 1267
                  slli         s2, ra, 11
                  sub          s1, s3, t3
                  c.mv         t4, s11
                  c.xor        s0, s1
                  mulhsu       tp, t5, zero
                  addi         a3, t4, -31
                  sub          a0, s11, s0
                  c.addi       gp, 21
                  rem          t3, sp, s0
                  c.and        s0, a0
                  mul          a0, s3, zero
                  div          s1, zero, s6
                  slt          s7, t5, a4
                  sub          t5, ra, a6
                  c.srai       a5, 27
                  rem          a1, s7, sp
                  srl          t6, s3, t1
                  sltu         a0, s11, s3
                  c.xor        a4, a1
                  sra          s5, s5, t6
                  c.lui        s3, 12
                  sltiu        a7, a3, 982
                  c.xor        a3, a3
                  andi         zero, t2, 1995
                  slti         s6, s5, -1547
                  c.sub        a3, s1
                  c.sub        a5, s1
                  mulh         t1, s11, s11
                  c.lui        a0, 15
                  sltiu        a4, s7, 1464
                  slti         t6, t6, -892
                  slt          a4, s8, t2
                  divu         s3, a7, s9
                  mulhu        tp, a6, s4
                  c.xor        a5, a1
                  c.srai       a3, 25
                  slt          tp, a4, s3
                  sltu         s4, s2, zero
                  srai         t2, s10, 28
                  c.slli       s9, 26
                  mul          a5, t5, t6
                  sltu         tp, s8, a6
                  sll          s10, s4, t4
                  divu         a4, a3, a0
                  c.add        tp, s9
                  xori         s1, t6, -794
                  mulhsu       t6, t2, s7
                  mulhu        a6, zero, t4
                  mulh         a4, s9, gp
                  remu         s3, s11, t0
                  c.lui        a7, 12
                  c.srai       a1, 3
                  sra          a0, s1, s2
                  ori          zero, s9, -681
                  slti         t3, t3, -1037
                  c.and        s0, a3
                  sll          t3, tp, t2
                  mul          s4, a7, t4
                  srli         zero, zero, 21
                  c.li         a6, -1
                  ori          gp, s9, 249
                  c.lui        a3, 15
                  c.addi       ra, 5
                  sltiu        a5, a1, -67
                  slli         s4, sp, 18
                  srli         tp, t6, 17
                  ori          s2, t2, 814
                  sub          t3, s11, s8
                  nop
                  sltu         t3, s6, t5
                  addi         t5, s2, -1118
                  sltiu        a5, s11, 808
                  ori          a3, a4, -421
                  sltiu        t0, t0, 1672
                  c.lui        a3, 18
                  c.li         s3, -1
                  nop
                  divu         a0, sp, a0
                  srl          a1, s2, sp
                  srai         s8, s5, 26
                  c.srai       a3, 1
                  rem          s9, gp, a7
                  xor          s2, sp, s4
                  c.li         a0, 10
                  srl          t6, s6, t0
                  divu         s6, t6, t1
                  sub          s0, a3, s0
                  c.li         s8, -1
                  c.xor        s1, s0
                  sll          tp, t4, t6
                  remu         a0, t0, zero
                  mul          s6, t4, s5
                  mulhsu       s2, s4, s2
                  slt          a3, a0, s7
                  sltiu        t0, s2, 1167
                  c.xor        a4, a1
                  xor          a6, a3, s7
                  xor          t3, sp, a4
                  rem          s2, t4, s0
                  addi         a4, s3, 322
                  xor          a0, t3, a0
                  and          gp, s8, t3
                  c.and        s0, s1
                  srai         s6, zero, 7
                  auipc        s1, 637511
                  srli         t4, s6, 10
                  sltu         a3, t5, t1
                  xori         a7, a0, -1920
                  c.xor        a4, s0
                  c.nop
                  c.srai       s0, 18
                  sltu         t2, t5, a5
                  c.slli       t3, 25
                  c.lui        t6, 14
                  addi         s6, s3, 483
                  c.addi       s8, -1
                  c.srai       a4, 4
                  c.srai       a5, 25
                  sub          s10, t2, a3
                  andi         t6, t5, -869
                  sll          s5, a3, s6
                  c.and        s0, a4
                  sll          s1, a2, a3
                  rem          s9, s8, s4
                  xori         s4, sp, -1779
                  slt          a5, t4, a1
                  sltiu        s0, a0, -177
                  c.nop
                  mulhu        a4, zero, t5
                  slti         s5, a5, -1277
                  mulhu        s7, a3, tp
                  rem          gp, a5, s5
                  mulh         s10, t4, s9
                  sltiu        t3, a0, -1027
                  sltu         s0, t6, s7
                  c.and        a3, a1
                  xor          s9, s2, a4
                  c.li         t2, -1
                  srli         s5, a2, 27
                  c.addi       s0, 31
                  c.srli       a1, 6
                  rem          a3, sp, a3
                  div          t0, zero, s10
                  c.lui        t0, 22
                  or           t5, ra, sp
                  div          gp, a0, s8
                  mulhu        s3, s11, s1
                  c.xor        s0, a4
                  srl          tp, sp, s3
                  srl          s4, a7, a3
                  sra          t3, a0, tp
                  xori         t6, s11, -912
                  srl          t1, a3, s6
                  c.mv         t1, a6
                  c.andi       s0, 0
                  sra          s0, s1, s9
                  c.li         s2, 13
                  auipc        s5, 1653
                  c.and        s1, a1
                  c.nop
                  mul          ra, s4, t3
                  sltu         gp, sp, t2
                  c.addi       t1, -1
                  sub          a3, zero, a6
                  or           s0, s2, t2
                  c.srli       s0, 18
                  or           a1, t0, s10
                  rem          s2, ra, s0
                  sltu         s7, s4, t4
                  ori          a7, a4, 414
                  c.srai       a4, 16
                  c.andi       a0, -1
                  lui          a5, 850766
                  andi         a4, s1, 1255
                  sra          s5, a0, a2
                  c.nop
                  c.mv         a7, t6
                  and          zero, t6, a0
                  slt          t6, a1, s1
                  and          a1, s7, s0
                  lui          t6, 120127
                  and          t2, zero, t2
                  divu         s0, t2, ra
                  c.nop
                  add          s4, s6, a4
                  srli         a3, a5, 11
                  slt          s3, a4, s10
                  nop
                  c.add        t1, s2
                  xor          gp, t6, t3
                  c.nop
                  addi         a0, a6, 99
                  sltiu        gp, s4, -1185
                  sra          s9, t2, tp
                  srl          s8, s2, sp
                  sltiu        s6, zero, 723
                  srl          a3, gp, s1
                  mulh         s1, t6, t5
                  nop
                  remu         a4, s4, sp
                  and          s2, s6, s7
                  rem          s10, a6, s1
                  mulhsu       s8, t5, t6
                  c.srli       s0, 10
                  auipc        s0, 757668
                  slli         a0, a6, 20
                  c.slli       tp, 9
                  mul          ra, tp, t5
                  remu         s6, a7, s0
                  sltiu        t5, t3, 768
                  mul          s9, t5, ra
                  rem          a6, s3, a6
                  c.andi       a1, -1
                  c.nop
                  mul          tp, a5, s9
                  c.slli       ra, 9
                  srl          s5, s4, a7
                  slti         a4, s7, -1980
                  or           t3, s9, s4
                  c.xor        a4, s1
                  nop
                  nop
                  c.mv         t0, tp
                  sltiu        a1, t4, -915
                  c.li         tp, -1
                  c.and        a4, s1
                  rem          gp, t2, gp
                  nop
                  sra          a7, s7, s0
                  xor          a7, t2, t5
                  c.or         s0, a4
                  nop
                  c.add        t0, t1
                  srli         s5, t4, 14
                  c.addi       a5, 28
                  xori         s7, t6, 1300
                  c.and        s0, s0
                  rem          a5, gp, s9
                  and          zero, a7, tp
                  mulhsu       a6, tp, s5
                  xori         s9, zero, -61
                  slti         s10, sp, 762
                  auipc        s7, 58289
                  remu         zero, tp, s8
                  c.srai       a4, 4
                  mulhsu       tp, a7, gp
                  sll          t0, s4, a0
                  divu         t0, t5, t3
                  c.nop
                  sra          s6, t1, t1
                  c.slli       a1, 11
                  sra          s8, t6, s3
                  mul          gp, zero, s7
                  rem          t3, s4, t1
                  c.or         a0, a0
                  c.mv         a1, a0
                  c.li         ra, -1
                  sub          a0, s1, a7
                  c.or         a1, a0
                  lui          s8, 118464
                  sra          tp, s10, a5
                  addi         t2, t5, -938
                  sll          tp, s6, t1
                  divu         a7, t4, gp
                  xori         a4, a4, 1474
                  divu         s0, a0, tp
                  c.lui        s7, 4
                  srli         t0, s2, 8
                  andi         s6, t1, -917
                  sltiu        s6, t6, 873
                  srai         t3, t3, 12
                  divu         s4, tp, s2
                  andi         t2, s1, 1624
                  sltu         a3, a2, t6
                  c.nop
                  c.slli       s7, 18
                  mul          s1, t2, s7
                  divu         s2, a3, s3
                  c.xor        a3, a0
                  remu         a5, a5, s10
                  rem          zero, t0, t2
                  c.li         a1, -1
                  c.li         s2, -1
                  sltu         a7, a0, tp
                  c.sub        a3, a0
                  andi         s4, a6, 1423
                  c.nop
                  c.and        a3, s1
                  c.or         a4, a3
                  c.addi       a1, 4
                  c.and        s1, a2
                  slt          s3, t4, a6
                  ori          a0, t3, 1153
                  divu         s8, s9, a7
                  sll          s1, sp, t6
                  divu         t3, a2, s1
                  div          s1, t3, zero
                  srai         s9, s5, 9
                  c.add        a3, sp
                  mulhu        s1, s4, s5
                  mulh         s6, a0, a1
                  c.andi       a1, -1
                  c.slli       a1, 11
                  c.andi       a0, 24
                  nop
                  slti         t1, t4, -1586
                  or           t1, t6, gp
                  add          s10, a3, s1
                  sub          t6, a7, t4
                  slti         s10, s8, 1648
                  slti         s10, a6, 58
                  sltu         t1, t3, t0
                  nop
                  c.and        a4, a5
                  srai         a5, s0, 28
                  c.or         a1, a3
                  sub          tp, s2, t0
                  sra          s3, sp, zero
                  xori         a6, t4, -969
                  c.add        s8, s8
                  c.li         a1, 19
                  auipc        gp, 422824
                  srai         s0, t5, 9
                  andi         t0, s4, -316
                  c.addi       ra, 31
                  addi         t0, a4, 17
                  mul          t0, a4, s5
                  mul          t5, s6, a0
                  c.addi       s8, -1
                  srli         gp, s7, 0
                  nop
                  slti         s10, s8, -1381
                  srli         t4, s10, 29
                  srli         a7, t3, 29
                  and          s1, s5, s6
                  remu         s2, gp, s4
                  ori          t3, t6, 548
                  sra          s9, a7, t3
                  mulhu        t1, t5, a3
                  addi         gp, s8, -688
                  slti         a3, tp, -1302
                  sltiu        ra, s1, 912
                  xori         s1, t2, 1823
                  xori         t6, t0, -545
                  sub          t4, ra, s7
                  addi         s5, gp, -1408
                  xori         t2, a5, -1551
                  xori         a0, a3, 1705
                  andi         s8, t2, 212
                  c.srli       s1, 26
                  add          a3, a0, zero
                  addi         zero, tp, -61
                  sltu         s9, s9, s3
                  sltiu        s3, s3, -606
                  xori         a0, tp, -1504
                  srli         t3, a2, 1
                  c.xor        a0, s0
                  sub          t5, tp, t3
                  sltiu        a4, t4, -1899
                  and          a6, a1, a3
                  addi         a4, s6, -1616
                  c.and        a0, a2
                  srli         s7, t1, 15
                  sra          a6, s8, gp
                  ori          t5, s6, -1746
                  c.addi       t3, -1
                  remu         s3, t5, a1
                  slli         a0, tp, 28
                  mulhsu       a7, s0, sp
                  divu         ra, t6, a3
                  c.addi       a6, 15
                  or           t5, tp, zero
                  c.srli       a5, 21
                  c.mv         s6, gp
                  c.add        s1, a6
                  srl          s7, s4, a5
                  divu         ra, t0, t6
                  mulhu        s1, s2, t5
                  slti         s1, a3, -1588
                  div          s6, zero, s9
                  lui          zero, 839271
                  sltu         s9, zero, s5
                  sltu         t1, a2, t5
                  c.or         a1, a3
                  lui          s9, 501111
                  mulhu        ra, s10, t2
                  sub          a7, s3, a2
                  c.and        a4, s0
                  c.nop
                  srai         a3, a7, 6
                  c.srli       a1, 13
                  mulh         t4, a3, s8
                  mulh         s0, a0, s3
                  sra          tp, zero, ra
                  c.nop
                  addi         t5, s6, -1349
                  slti         a4, s2, 1921
                  xor          tp, a5, t3
                  sub          a6, t1, s4
                  c.li         s5, 10
                  c.srai       a4, 29
                  slli         a1, t0, 25
                  c.xor        a4, a2
                  divu         s0, s10, t5
                  c.nop
                  div          s1, s7, s9
                  c.addi       t2, -1
                  sra          ra, t3, s8
                  mulh         t0, s5, zero
                  slli         zero, t2, 21
                  mul          s2, a1, s5
                  c.srli       a3, 14
                  c.srai       s0, 13
                  c.slli       s5, 17
                  c.lui        gp, 26
                  slli         t0, s4, 29
                  or           a1, s9, a3
                  c.mv         s6, sp
                  divu         ra, s2, a6
                  slti         s4, t2, -86
                  srl          gp, s8, gp
                  c.srli       a1, 18
                  addi         s9, s1, -1894
                  divu         s0, s2, t1
                  mulh         t4, t4, t1
                  c.addi       s8, -1
                  c.srai       s0, 7
                  rem          zero, a6, zero
                  c.srli       s0, 4
                  c.addi       t6, 19
                  auipc        a4, 629025
                  rem          s8, s5, a2
                  c.mv         t3, a0
                  auipc        t1, 145703
                  xori         t5, s9, 564
                  c.li         s9, 10
                  sltiu        gp, a3, 1724
                  c.lui        s0, 9
                  addi         t0, t0, -420
                  nop
                  sltu         t5, s1, t5
                  mulhu        s6, t2, zero
                  c.srli       s0, 16
                  lui          a5, 451285
                  mul          t1, t6, t4
                  sll          a0, s4, s5
                  sll          s0, a1, a4
                  c.mv         a7, a0
                  c.mv         tp, gp
                  c.srai       a4, 26
                  or           s4, tp, s9
                  c.and        s1, s1
                  mulhu        a5, s5, t4
                  srli         a4, a0, 30
                  c.lui        s5, 11
                  c.addi       a6, -1
                  mulhsu       t3, s3, t5
                  lui          t3, 640687
                  or           s2, s10, zero
                  xori         s1, s2, 1890
                  c.or         s0, a5
                  sub          a1, s2, t0
                  srl          s7, t5, t1
                  srai         s7, s6, 26
                  slt          s10, t3, t4
                  xor          ra, s6, a3
                  mul          s5, a6, a4
                  and          a5, s5, gp
                  srli         t6, a0, 29
                  srai         a3, t2, 14
                  c.andi       a3, 4
                  andi         gp, t6, 284
                  auipc        a7, 74257
                  sltiu        s3, tp, 1627
                  addi         s0, gp, 1089
                  and          s0, s1, s3
                  c.addi       ra, -1
                  and          t6, a2, a3
                  or           s10, ra, a6
                  ori          s6, t3, 962
                  c.srai       a1, 19
                  remu         s7, t2, a5
                  c.slli       t3, 3
                  mulh         a6, a5, t6
                  nop
                  srai         a1, a4, 20
                  nop
                  srai         a6, tp, 2
                  slt          a3, t0, s6
                  c.and        a3, a0
                  mulhu        a3, gp, t6
                  rem          s0, t1, t1
                  c.and        a5, a1
                  andi         s4, a3, 1568
                  sll          a4, a4, t4
                  srai         s3, t2, 6
                  srl          s8, a5, t2
                  addi         t0, ra, -1868
                  rem          s3, a4, tp
                  mulh         s8, s4, s2
                  nop
                  c.add        s4, a1
                  c.srai       a0, 3
                  xor          t3, s5, a2
                  or           a5, t1, a0
                  c.nop
                  ori          a3, s7, -215
                  addi         s6, a0, 527
                  c.add        ra, s7
                  and          t1, zero, a7
                  c.nop
                  lui          gp, 107148
                  srli         zero, gp, 6
                  auipc        a1, 831867
                  srai         t6, a7, 20
                  sltiu        gp, ra, -637
                  sltu         a4, s9, s7
                  c.li         a5, 24
                  mulh         s6, a1, s6
                  slti         a3, t1, -1784
                  rem          zero, ra, a7
                  c.add        s0, t6
                  slli         s1, ra, 17
                  auipc        a7, 328533
                  ori          s9, s5, -1213
                  c.and        a5, a0
                  c.xor        a3, s0
                  srai         t6, t2, 12
                  c.xor        s1, a0
                  c.srli       a5, 27
                  c.srai       s0, 18
                  mulhu        a6, t0, s2
                  sltu         s9, a1, s6
                  c.li         t3, -1
                  sra          t1, a2, t3
                  c.andi       s1, 13
                  xori         s3, s4, -1243
                  c.srai       s0, 17
                  or           s3, t3, s2
                  lui          s5, 270797
                  slli         s8, a6, 9
                  mul          a5, a4, s9
                  xori         s10, a4, -1875
                  c.srli       a0, 27
                  c.and        a3, a4
                  sltiu        s4, a7, -654
                  c.srai       a4, 28
                  rem          s0, ra, t2
                  mulhu        t0, t1, s8
                  c.xor        a5, s1
                  mul          s2, gp, t1
                  mulhsu       a1, t4, tp
                  sltu         t1, ra, t1
                  sub          zero, zero, gp
                  mulh         tp, t2, s7
                  c.srli       a5, 22
                  srli         gp, a2, 26
                  srai         t1, a2, 1
                  c.and        a0, a4
                  mulhsu       t1, t6, s1
                  addi         s9, t2, 121
                  c.li         s10, 14
                  andi         s4, s2, 743
                  xori         s4, s5, -523
                  c.or         a1, a5
                  c.mv         a6, sp
                  xori         t4, s10, 781
                  c.andi       s0, -1
                  c.and        a0, s0
                  div          s10, s3, s2
                  c.lui        s6, 5
                  c.andi       a4, -1
                  c.srli       a4, 31
                  sltu         a0, a0, s11
                  c.srai       a4, 10
                  c.slli       ra, 23
                  lui          s1, 1016158
                  mulhu        s4, t1, s10
                  c.nop
                  addi         a1, t3, -521
                  c.srai       a1, 21
                  lui          t3, 654831
                  c.add        t3, s4
                  sra          tp, a4, t4
                  c.srai       a0, 7
                  div          zero, a5, a1
                  c.slli       s9, 31
                  slti         s1, s4, -1351
                  rem          s10, s11, a7
                  divu         t6, gp, s11
                  and          t1, t0, sp
                  mul          s9, t0, s4
                  xori         tp, s10, 1205
                  c.lui        a0, 8
                  srl          a0, s10, a2
                  sltu         s2, s3, a2
                  c.slli       t1, 1
                  add          s7, s1, a3
                  slt          s6, a2, gp
                  srli         t4, t2, 11
                  c.and        a1, a5
                  sll          s6, sp, t6
                  slt          a0, a1, a4
                  slli         t6, s9, 13
                  srli         a4, s3, 29
                  and          a0, s9, ra
                  sra          t3, t0, a5
                  sltu         t4, t5, t0
                  c.slli       s10, 9
                  slt          s4, a4, t1
                  rem          s9, gp, s3
                  slt          t5, a3, a4
                  c.addi       a3, -1
                  nop
                  c.sub        a1, a0
                  srai         a0, s11, 4
                  c.addi       s0, -1
                  srl          a4, sp, s2
                  c.lui        t1, 4
                  xori         gp, a4, -642
                  srai         t5, s3, 29
                  c.srli       s1, 11
                  remu         s10, t5, zero
                  rem          t0, s11, s7
                  c.andi       a5, -1
                  add          tp, s10, s9
                  sra          t6, s5, s9
                  c.mv         gp, s5
                  c.slli       s2, 27
                  addi         s8, s11, 1409
                  srli         ra, t2, 27
                  c.lui        s4, 3
                  srai         t0, s11, 31
                  srli         s8, tp, 11
                  mulhu        a5, a0, a6
                  nop
                  c.xor        a5, a0
                  sll          tp, a1, a3
                  c.and        s1, a3
                  ori          s1, a1, 1169
                  mulh         s0, gp, t2
                  sra          s2, a5, tp
                  c.lui        a0, 30
                  sll          s5, s6, s6
                  mulhu        s0, a5, a0
                  rem          s2, a1, a0
                  c.mv         s9, t1
                  c.addi       a4, -1
                  mul          s5, a3, a2
                  addi         s0, a2, 969
                  c.or         a1, s0
                  or           t5, s5, t2
                  c.add        s0, ra
                  c.add        s7, t5
                  lui          s3, 686232
                  c.sub        a4, a0
                  rem          s8, s0, t2
                  srai         zero, a0, 21
                  srli         a1, s1, 18
                  c.add        s2, s0
                  sll          zero, a7, s9
                  and          s10, s6, sp
                  andi         a0, s11, 303
                  lui          s10, 18190
                  sra          t2, s7, s8
                  c.li         s4, -1
                  c.andi       s0, -1
                  c.add        a1, s5
                  and          tp, zero, a1
                  slt          s9, a6, a5
                  srl          t1, a4, s3
                  srli         t5, a5, 27
                  div          s1, tp, a6
                  auipc        s4, 197811
                  c.andi       a1, -1
                  sltu         a0, sp, s5
                  mulh         a5, a1, a5
                  c.nop
                  nop
                  c.lui        a0, 9
                  c.xor        a0, s0
                  mulh         a5, sp, a6
                  c.add        a3, s7
                  sub          t2, t3, s0
                  rem          s2, a4, s6
                  c.li         s7, -1
                  or           ra, a4, t6
                  andi         a7, a0, 1084
                  c.slli       a3, 18
                  sltu         s6, a2, t6
                  c.srai       a1, 9
                  srai         a4, s9, 3
                  slti         t5, ra, -736
                  c.li         s1, -1
                  c.or         a4, s0
                  srl          s5, a5, t1
                  slt          t5, a5, t4
                  c.sub        a3, a5
                  divu         s3, t6, a7
                  divu         t1, a6, s10
                  c.andi       a5, -1
                  andi         s5, t3, -12
                  auipc        a7, 524948
                  add          t2, t6, gp
                  sra          t6, t1, s4
                  c.add        tp, s10
                  sltu         s6, tp, zero
                  and          a3, s4, a5
                  rem          t5, gp, t4
                  c.andi       a0, 7
                  and          a0, s4, s9
                  xori         a5, t1, -762
                  c.li         s7, 12
                  srli         a6, t5, 13
                  xori         a4, a7, -196
                  c.li         s7, 5
                  add          t3, t4, tp
                  and          t0, s0, s1
                  c.add        t3, t5
                  mulhu        a1, sp, a5
                  srli         s10, a7, 29
                  c.nop
                  c.sub        s0, a0
                  slti         a6, t2, -847
                  c.addi       s0, 2
                  add          a1, s10, zero
                  mulhsu       a6, t6, gp
                  and          s4, gp, s8
                  sltu         zero, s8, s6
                  mul          a3, gp, s10
                  sltu         tp, s0, t0
                  c.add        s9, tp
                  c.sub        s1, a1
                  c.srai       a4, 12
                  c.slli       a3, 17
                  addi         s10, a5, -631
                  c.and        s0, a3
                  xor          tp, t3, sp
                  slt          a1, a4, t3
                  srli         gp, a5, 30
                  mulhu        a0, s6, a5
                  srli         s9, s3, 21
                  rem          a0, s8, s10
                  c.srli       a3, 24
                  c.nop
                  c.xor        a5, s0
                  divu         t1, s5, s7
                  slli         t0, a6, 2
                  c.mv         s0, a4
                  c.xor        a4, a0
                  mul          s1, s7, t3
                  slti         a1, gp, -170
                  sll          a3, a0, s5
                  auipc        t6, 247702
                  or           s7, t3, a3
                  auipc        a1, 621916
                  mulhu        t1, a5, s5
                  c.xor        a0, a1
                  sll          t4, a4, a1
                  c.slli       s0, 21
                  xor          s3, t2, t0
                  lui          ra, 569411
                  mul          s1, s0, t6
                  addi         s4, s11, 1156
                  slt          gp, a2, t2
                  c.or         a4, a0
                  c.li         t0, -1
                  sub          s8, a7, t2
                  c.nop
                  c.andi       s1, -1
                  srl          a7, s4, t3
                  c.or         a0, s0
                  or           s0, s5, t3
                  sltiu        a6, s9, -1692
                  srli         a7, s3, 5
                  slli         s3, a2, 19
                  slt          s10, s4, t5
                  mulh         t2, a0, t4
                  c.and        s1, a4
                  c.lui        t3, 13
                  srli         t0, s1, 3
                  sub          a7, s6, t1
                  lui          a3, 793070
                  nop
                  lui          s3, 487672
                  sub          ra, t5, a6
                  mulhsu       a5, s8, a0
                  c.addi       a1, -1
                  or           s9, ra, ra
                  c.add        s0, s2
                  mulh         t3, a7, t6
                  sltiu        t4, s7, 103
                  sll          s3, a5, zero
                  ori          s2, a6, -1668
                  c.addi       t0, -1
                  auipc        s2, 1032090
                  c.slli       a0, 27
                  c.andi       a0, 28
                  srli         s5, s11, 9
                  andi         tp, t2, -465
                  ori          tp, ra, -933
                  slli         t5, s5, 4
                  divu         t6, t3, a2
                  mulh         t3, zero, s11
                  c.slli       t3, 24
                  c.andi       a1, 23
                  c.mv         a3, s9
                  c.and        a4, s1
                  mul          s9, a4, s0
                  ori          s6, t3, -1851
                  and          a5, t2, t1
                  xori         s2, s6, -359
                  c.sub        a3, a3
                  c.and        a4, a4
                  mulhu        zero, s6, t2
                  slti         s4, s4, -126
                  mulh         a4, tp, t6
                  addi         t2, s7, -27
                  addi         t4, a2, -608
                  c.andi       s1, 21
                  andi         s1, sp, -902
                  sltu         s1, t5, s9
                  rem          t5, s5, s5
                  sltu         s9, t3, s5
                  slti         t3, s4, 1544
                  srai         ra, zero, 16
                  addi         t0, ra, 1635
                  c.li         a6, 14
                  rem          ra, t3, t0
                  lui          s3, 717419
                  div          a4, t2, s6
                  srli         t4, s5, 9
                  slt          t2, a7, s3
                  c.lui        a6, 24
                  mulhsu       s4, a2, a4
                  c.srli       s1, 1
                  slli         s3, a3, 7
                  lui          s10, 569348
                  sll          a0, t0, s8
                  c.slli       s0, 12
                  sltiu        s4, ra, 794
                  c.or         a3, s0
                  c.nop
                  xor          t1, s9, s9
                  or           t3, a7, sp
                  addi         t4, t0, 1218
                  c.sub        a1, s0
                  sll          s2, s7, gp
                  xor          a4, s9, s1
                  c.nop
                  c.mv         a1, ra
                  c.and        a5, a3
                  mulhu        t5, s11, s11
                  sra          t5, s5, s8
                  mulh         s9, s0, s3
                  rem          zero, a6, t1
                  remu         a3, t4, ra
                  srl          t6, t2, t1
                  lui          t6, 59446
                  c.and        a1, s1
                  srl          zero, s11, s2
                  sltiu        t0, s0, -1078
                  srl          a7, s11, s10
                  c.add        a0, sp
                  srli         s0, t3, 7
                  remu         gp, s11, a0
                  or           a1, s3, s5
                  c.srli       a3, 13
                  sra          s5, a7, s8
                  auipc        s6, 1026579
                  and          s10, s1, s10
                  c.li         t0, -1
                  sltu         s5, s8, sp
                  c.srli       s1, 26
                  mulhu        s3, a3, s0
                  srl          s8, s9, a5
                  c.add        a3, a2
                  add          s7, t0, s10
                  lui          s10, 567245
                  srl          s9, t3, s4
                  mul          a1, tp, sp
                  c.srai       a3, 8
                  c.mv         s6, a3
                  c.addi       s10, 11
                  rem          s9, a2, s7
                  mul          s4, t6, a6
                  ori          gp, a6, -1682
                  c.xor        a5, a0
                  lui          s7, 366828
                  srai         t2, t1, 23
                  rem          zero, a2, t3
                  sra          a5, zero, t6
                  mulhsu       a6, t2, s10
                  c.xor        a3, a0
                  c.mv         ra, s7
                  c.or         a0, s0
                  slti         a7, s2, 704
                  c.andi       a0, -1
                  mulhu        s1, s3, s9
                  andi         a0, s3, -1316
                  slti         a0, a2, 406
                  and          s9, s6, t3
                  or           t3, a4, s7
                  c.lui        a7, 25
                  c.li         t4, 11
                  mulhsu       s5, a6, s4
                  rem          s3, sp, s3
                  xor          s9, a6, s10
                  addi         s10, s3, -1106
                  c.and        a5, a3
                  sltiu        a5, s3, 49
                  c.addi       t4, 10
                  mul          a5, s5, a3
                  srli         t1, s7, 30
                  or           tp, tp, t2
                  c.and        a1, a0
                  divu         t4, a4, s6
                  c.andi       a0, -1
                  slt          t6, s4, s0
                  xor          gp, t0, t1
                  andi         t6, ra, 1192
                  slli         t0, sp, 6
                  sub          a5, s0, sp
                  sra          a1, t6, t2
                  andi         s7, ra, -575
                  div          s2, s4, sp
                  c.or         a3, s1
                  c.srai       a1, 31
                  slli         s2, s0, 24
                  c.addi       t5, 31
                  srai         s0, s10, 19
                  c.srli       s0, 19
                  c.srli       s1, 6
                  addi         s0, t2, 1218
                  sltu         a4, a3, t6
                  ori          s3, s7, -621
                  mulh         t1, a2, ra
                  c.and        s0, a1
                  slti         tp, t1, 1400
                  c.slli       t1, 20
                  lui          t0, 977643
                  mulhsu       s0, s10, s6
                  c.xor        s1, a3
                  div          gp, a2, t3
                  c.srli       s1, 30
                  and          zero, a4, t5
                  c.xor        a4, s1
                  slti         ra, a1, 1035
                  c.srli       a4, 23
                  c.srli       s0, 16
                  and          zero, s7, t0
                  srli         s8, s6, 18
                  andi         a3, s8, -1866
                  rem          a3, t5, t0
                  sra          s9, t5, tp
                  c.srli       s0, 15
                  mulhu        s10, s10, t0
                  mulh         a3, s6, a5
                  c.sub        a4, a1
                  c.lui        a4, 24
                  div          a1, s5, s10
                  xor          s10, a4, s3
                  remu         a5, s6, s0
                  c.lui        s7, 17
                  c.and        a0, a1
                  rem          s6, gp, zero
                  sll          s0, t3, t4
                  remu         gp, s6, a1
                  srli         t4, t3, 1
                  c.sub        a0, a3
                  srli         tp, s6, 1
                  c.xor        a0, a3
                  c.xor        a4, a4
                  srl          zero, a7, s4
                  mulhsu       zero, s4, s0
                  addi         s5, a0, 521
                  c.sub        a5, a2
                  mulhu        a0, t4, t6
                  c.add        a1, s3
                  srl          t0, t0, t4
                  nop
                  divu         t2, t5, s2
                  c.mv         s8, a5
                  c.addi       tp, -1
                  lui          s4, 717771
                  c.add        a0, t5
                  ori          s7, a0, -1414
                  c.or         a1, a4
                  sltu         s9, t5, s7
                  c.nop
                  ori          a4, s10, 490
                  div          s1, a6, a6
                  addi         s9, s7, 885
                  slli         a1, a4, 23
                  divu         t1, zero, t1
                  c.sub        s0, a4
                  or           s5, s11, s5
                  slli         s9, t0, 5
                  xori         s2, a3, -1354
                  c.add        t4, ra
                  sltiu        t0, s10, 1849
                  add          s3, t4, sp
                  mulhsu       s8, a4, s8
                  sltu         a3, s5, sp
                  c.slli       s4, 16
                  sltiu        a6, a1, -675
                  c.mv         s9, s6
                  add          a6, a1, t4
                  sra          s2, s5, a3
                  div          ra, t6, a1
                  sub          zero, a6, s6
                  rem          s3, s10, t3
                  slli         a7, t0, 3
                  c.or         s1, s0
                  c.or         a0, a0
                  mulh         a1, s11, t1
                  sltu         s3, t6, a5
                  slt          a3, a5, s8
                  c.li         s7, 14
                  auipc        s4, 550743
                  auipc        t3, 426669
                  divu         a0, s10, a6
                  mulhsu       a6, s1, t1
                  addi         t0, a2, 623
                  sub          zero, s0, s10
                  sltu         s9, t4, ra
                  xori         s2, tp, 26
                  sll          t4, t0, s10
                  andi         t1, t1, -1945
                  mulhu        t6, s4, s5
                  c.mv         t3, a6
                  mulhu        s0, t4, a0
                  sub          a3, s3, a6
                  sub          s2, tp, gp
                  div          t6, tp, t3
                  srl          s9, tp, t1
                  xor          t3, s4, t6
                  c.slli       a6, 13
                  slt          ra, gp, s9
                  divu         t2, zero, a2
                  divu         tp, t3, t5
                  c.srai       a0, 17
                  c.srai       a5, 13
                  c.or         a5, a4
                  sltu         a7, s4, s11
                  c.slli       s3, 11
                  srai         s5, a0, 4
                  c.and        a3, a0
                  or           s9, a4, s9
                  c.li         t4, -1
                  slt          s2, s10, t5
                  ori          s9, s5, -1206
                  add          a0, gp, t2
                  remu         a0, t2, a3
                  sll          a5, s1, s9
                  c.srli       s0, 7
                  srai         zero, a1, 0
                  sub          t6, a0, s11
                  c.andi       a5, 26
                  slli         s6, s6, 7
                  srli         t3, a4, 28
                  c.addi       s9, 23
                  c.li         s4, -1
                  andi         t3, t5, -239
                  c.addi       tp, 3
                  c.xor        s0, s0
                  div          a0, s5, t5
                  mul          t6, a2, s0
                  c.or         a3, a3
                  slli         ra, t2, 3
                  andi         a1, sp, 1292
                  mul          s4, a6, s7
                  srai         s7, s5, 24
                  c.nop
                  c.lui        t4, 31
                  lui          a5, 330384
                  divu         s3, s8, s2
                  srl          t1, s11, s7
                  sub          a1, a4, a4
                  c.srli       a5, 26
                  sltu         gp, t2, t4
                  divu         s2, s6, t6
                  sra          a3, s7, ra
                  srli         t3, s9, 17
                  sltiu        a5, a0, -1973
                  mulh         a6, zero, a3
                  xor          a7, t5, t6
                  srai         s3, s6, 29
                  slli         s0, s1, 19
                  c.andi       s1, 29
                  c.slli       t5, 20
                  slli         t0, t3, 4
                  add          a4, s9, s7
                  ori          t1, t2, -31
                  sltiu        s3, s1, 1311
                  c.add        s5, ra
                  c.mv         s1, s6
                  auipc        t1, 625477
                  slti         a3, a2, 2002
                  divu         t1, tp, s3
                  addi         t0, a1, -835
                  slti         t2, s2, 1460
                  srai         s9, t4, 18
                  nop
                  sra          t0, s7, t2
                  rem          t4, s9, s2
                  mul          ra, s4, s3
                  andi         gp, t1, -1251
                  c.mv         t6, s4
                  ori          s5, t2, -591
                  c.lui        a7, 18
                  sub          s6, s4, sp
                  mulhsu       s1, t3, a2
                  c.srli       a5, 28
                  c.xor        s0, a4
                  c.and        a0, a3
                  div          t3, tp, a6
                  c.or         a5, s0
                  div          a7, tp, zero
                  xor          s0, gp, a6
                  c.srli       s0, 25
                  slti         t3, s7, -1162
                  slli         tp, s10, 20
                  c.nop
                  c.slli       t3, 21
                  c.sub        a0, s1
                  c.slli       a3, 31
                  rem          tp, s5, s0
                  sra          s7, ra, t4
                  slt          a3, t0, s0
                  slti         t4, s9, -920
                  c.srai       a0, 3
                  remu         a1, t5, s3
                  c.addi       s4, -1
                  c.srai       s0, 16
                  addi         s3, a0, -993
                  sub          ra, s2, ra
                  sub          t4, a7, s3
                  rem          s5, a7, t4
                  add          s4, tp, s8
                  c.addi       s7, 28
                  xor          s6, tp, a0
                  nop
                  srli         gp, t6, 21
                  c.or         a5, a4
                  c.addi       gp, -1
                  sltiu        zero, t4, -1753
                  c.sub        s1, s1
                  c.or         s1, a4
                  slli         gp, a1, 25
                  srli         s5, s1, 4
                  c.or         a4, s0
                  xori         s2, a1, 1747
                  remu         t6, s5, a2
                  c.lui        s4, 22
                  c.srai       a0, 7
                  c.sub        a3, a4
                  xori         s2, a1, -1648
                  c.addi       a4, 29
                  c.nop
                  srli         a1, t4, 30
                  divu         a0, gp, s4
                  mul          gp, s11, t2
                  sll          s10, s7, t0
                  mul          a1, a1, sp
                  mulhsu       a5, s9, a0
                  c.add        t3, sp
                  srli         t1, t3, 6
                  slti         t3, t0, -1307
                  c.andi       a1, 6
                  or           s0, s10, t5
                  slli         s6, a2, 11
                  sll          zero, s4, s5
                  slli         s5, t4, 19
                  slt          s2, s6, a2
                  divu         t6, s1, t4
                  ori          s2, s10, 146
                  sll          s2, t3, s1
                  addi         t3, a3, -1655
                  c.mv         s1, gp
                  srli         t0, s3, 27
                  andi         s0, s7, 1232
                  sltiu        s7, s6, 923
                  sltu         t3, t1, s1
                  and          s1, t5, s0
                  xori         s3, t1, -509
                  srl          s9, s6, s0
                  c.andi       a4, 18
                  srl          gp, s6, t4
                  mulhsu       a7, gp, t3
                  divu         a1, t0, a0
                  lui          s10, 1039105
                  c.nop
                  c.lui        s4, 28
                  c.srai       s0, 21
                  mulhu        s5, tp, s4
                  or           s4, sp, t4
                  or           ra, sp, t3
                  addi         a1, gp, 516
                  add          a1, s11, s2
                  slti         tp, s7, 1619
                  c.sub        a5, a1
                  sub          a4, a3, s10
                  c.lui        s8, 19
                  andi         t6, a5, 422
                  srli         t4, s6, 6
                  c.nop
                  sub          s3, t5, tp
                  sub          zero, a3, t5
                  c.addi       ra, 28
                  divu         s10, s1, a5
                  divu         s2, a0, a1
                  srl          s3, a6, t1
                  sltu         a3, gp, t0
                  mulhu        s5, a7, gp
                  c.and        s0, s1
                  auipc        s7, 979023
                  rem          s6, s8, t2
                  c.lui        t4, 5
                  auipc        s7, 599275
                  addi         a0, a5, -1154
                  srai         t3, a7, 6
                  auipc        s2, 119771
                  c.srli       a0, 29
                  c.nop
                  srli         a6, s8, 8
                  andi         t2, s11, 1995
                  c.xor        a3, a2
                  mulhu        a0, s2, s11
                  c.or         a0, s1
                  slt          a7, t3, s7
                  sra          t1, s11, zero
                  sub          zero, ra, s8
                  c.srli       a4, 15
                  c.lui        s4, 15
                  sltu         ra, zero, a6
                  rem          tp, t6, a7
                  c.and        a1, a0
                  srl          s8, tp, sp
                  mulhsu       tp, a7, zero
                  c.or         a3, a2
                  c.andi       a1, -1
                  nop
                  sra          s8, a3, ra
                  sra          t3, s1, a4
                  sra          s10, t3, t6
                  c.nop
                  add          t6, t6, t5
                  c.lui        gp, 28
                  mulh         t3, s1, ra
                  mulhu        s7, zero, tp
                  sub          s3, a6, a6
                  nop
                  slt          s5, s3, t3
                  sltiu        s3, a2, 349
                  sltiu        s7, s0, -335
                  sra          s3, a0, a6
                  xor          s4, s11, a5
                  nop
                  lui          t2, 19934
                  divu         s1, a5, sp
                  sll          t3, s5, a0
                  srl          s8, s9, s0
                  sll          zero, s2, a5
                  or           s4, t0, s0
                  andi         s2, s9, 597
                  c.lui        t4, 31
                  sltu         a1, t4, s3
                  sub          a0, t4, a0
                  srli         a7, a1, 29
                  mul          t6, s7, s2
                  c.nop
                  addi         s2, a1, -58
                  c.sub        a4, a0
                  sra          s6, s10, s4
                  sll          s6, a3, t6
                  div          s8, t1, s2
                  divu         s8, a5, sp
                  c.or         a4, s1
                  slli         ra, s1, 16
                  and          a5, ra, t6
                  c.sub        a3, a2
                  c.mv         s1, a4
                  div          s0, s9, s11
                  sltiu        t4, a0, 731
                  mulh         zero, t1, a1
                  andi         gp, t0, 490
                  mul          s5, a2, s1
                  mul          s2, s9, ra
                  slti         a4, t1, 939
                  c.srai       a4, 19
                  sra          t0, s10, t3
                  c.add        tp, a7
                  mulhsu       a0, t3, t6
                  slt          s7, s8, ra
                  sltu         s6, a1, a5
                  xor          s7, t1, s1
                  srai         zero, s1, 19
                  divu         s3, a5, s5
                  sltiu        s2, a1, -397
                  mul          s5, t3, s0
                  c.slli       a1, 31
                  mulhu        s2, s2, a1
                  c.and        s1, a2
                  remu         t3, s11, t6
                  mulhsu       s2, t5, a3
                  c.sub        s0, a2
                  c.nop
                  c.and        a4, a2
                  c.lui        gp, 17
                  ori          gp, a6, -747
                  or           t1, s11, ra
                  c.addi       t6, 10
                  divu         t2, s1, a2
                  slli         s10, a7, 1
                  or           t1, a3, zero
                  mulh         t5, ra, a6
                  mulhsu       t3, sp, s0
                  srli         s7, a3, 23
                  divu         s2, s4, a1
                  c.andi       a4, -1
                  c.srai       a0, 25
                  mulh         s10, a3, s11
                  mulhsu       s2, s3, a6
                  addi         s2, s4, 1101
                  slli         t0, a2, 24
                  nop
                  c.xor        a3, s0
                  or           s0, t6, a6
                  mulhsu       t5, s4, s11
                  slti         t6, sp, 761
                  c.and        a4, s1
                  srai         t6, s7, 11
                  mul          s2, t0, a6
                  c.and        a1, a0
                  c.sub        a0, s0
                  remu         t0, t4, a5
                  c.andi       a1, -1
                  c.nop
                  slli         t1, t2, 29
                  c.slli       s2, 23
                  c.li         t5, -1
                  srli         t3, s0, 9
                  auipc        t5, 739474
                  addi         s2, t1, -1283
                  c.add        a1, gp
                  slli         a5, s2, 20
                  lui          a7, 670846
                  or           t3, a3, s6
                  div          t1, t1, a7
                  mulh         t1, a0, a6
                  or           a5, s1, a3
                  andi         a3, a3, -922
                  sll          t3, t0, s2
                  andi         s9, s5, 1442
                  sltiu        t3, t3, 1571
                  c.li         s9, 25
                  div          a5, zero, t0
                  or           t4, s1, s9
                  sltu         a3, t3, a5
                  sub          s0, tp, s1
                  srai         t1, a3, 26
                  xori         a0, t3, 1532
                  or           t2, s3, a7
                  rem          t2, s5, s6
                  addi         s7, s9, 568
                  slt          t2, t1, s5
                  xor          s1, a7, s9
                  rem          s0, t1, t5
                  div          a5, s6, s8
                  c.slli       a3, 16
                  mulhsu       s0, gp, t1
                  c.xor        s0, a5
                  srl          a6, a4, s4
                  slti         s6, a3, -56
                  c.lui        gp, 9
                  xor          t2, t4, t0
                  srai         s3, s11, 25
                  sra          t0, s11, t3
                  divu         a0, ra, ra
                  add          s6, a1, gp
                  nop
                  xor          ra, gp, s4
                  c.andi       a1, -1
                  addi         s2, a0, 1791
                  srl          ra, gp, t0
                  slt          s0, ra, s8
                  c.slli       a7, 26
                  c.sub        a5, a4
                  auipc        a6, 140291
                  sltu         t5, a1, sp
                  nop
                  addi         s4, sp, 1462
                  c.and        s1, a1
                  srli         a4, a6, 19
                  or           t3, s0, gp
                  srai         s8, s0, 29
                  c.li         s7, 0
                  c.add        a3, s4
                  mulh         a4, a1, s9
                  ori          tp, s10, -669
                  addi         gp, s10, -1670
                  slli         ra, s8, 10
                  add          s9, t4, a5
                  sll          s4, t2, zero
                  divu         gp, t3, a0
                  ori          t2, s10, -469
                  xori         t3, tp, 1892
                  c.li         ra, 17
                  remu         a1, a7, a6
                  c.sub        s1, a4
                  mulhu        s1, a2, tp
                  sltiu        zero, ra, 1389
                  xori         a6, s2, -1219
                  c.or         a4, a1
                  c.or         s1, s0
                  c.li         ra, -1
                  sltiu        t4, ra, -349
                  c.slli       s10, 25
                  mulhsu       t4, s11, s3
                  c.srai       a3, 2
                  andi         s8, zero, -133
                  slt          gp, s6, a1
                  sra          t3, s4, a5
                  srai         a5, s11, 6
                  auipc        s6, 910795
                  mul          a1, a1, a7
                  remu         s5, a3, a2
                  c.li         s10, 4
                  mul          zero, ra, a6
                  c.and        a1, s0
                  mulhsu       s2, a2, sp
                  srai         a5, t5, 6
                  sra          a5, zero, t0
                  addi         gp, sp, 923
                  srli         a1, t1, 0
                  srl          t0, t0, s8
                  c.xor        s0, a5
                  c.mv         a4, s8
                  divu         a1, t5, zero
                  c.slli       t5, 17
                  sub          s9, a7, s6
                  and          s8, s4, s5
                  sltiu        tp, t0, 1808
                  c.srli       s0, 28
                  c.andi       s0, -1
                  slt          ra, t6, a6
                  slti         a4, t0, -1399
                  sra          s5, a1, t0
                  nop
                  c.slli       s9, 8
                  c.and        a1, a1
                  c.lui        a7, 9
                  c.srli       a0, 21
                  div          s8, t0, t0
                  rem          s1, s5, t4
                  andi         s2, t4, -332
                  c.srai       a0, 19
                  srli         s8, s2, 23
                  mul          s3, tp, s6
                  c.nop
                  and          s10, a6, sp
                  mulhu        s10, s1, a6
                  c.mv         tp, a6
                  ori          t5, t1, -994
                  slt          t5, s0, s7
                  c.add        s3, a5
                  xor          t4, t0, s0
                  auipc        s4, 430220
                  add          ra, a6, a4
                  mulh         s10, t1, a3
                  c.slli       ra, 26
                  xor          s8, t0, s9
                  or           s10, a5, s10
                  c.mv         s9, a5
                  c.slli       a1, 19
                  mulhu        s4, s8, t5
                  xor          s3, s10, sp
                  and          s0, ra, s0
                  mulhu        s3, a1, a7
                  c.xor        a4, a0
                  c.mv         s1, s0
                  c.srai       a4, 8
                  c.or         s1, s0
                  mulhu        a3, a3, t4
                  c.li         s1, -1
                  c.srli       s1, 9
                  mulhsu       a3, zero, s9
                  remu         a5, s1, t6
                  c.srai       a1, 7
                  div          a4, s10, ra
                  xori         s5, s2, 510
                  c.slli       a6, 18
                  c.li         t1, -1
                  xori         t6, zero, -1624
                  srl          t3, t2, s8
                  c.mv         gp, s5
                  div          a5, a0, ra
                  auipc        s4, 376738
                  xori         a6, t1, -900
                  c.sub        s0, a5
                  lui          s0, 264343
                  slti         a4, t5, 198
                  mulhsu       a3, s10, t1
                  c.andi       a0, -1
                  slti         a0, a1, 425
                  slti         t2, a5, -1893
                  c.li         tp, -1
                  sll          t4, a7, a1
                  c.andi       s0, 25
                  c.and        a5, a4
                  c.sub        a0, a4
                  andi         gp, gp, -166
                  c.li         t4, -1
                  remu         a0, a1, a0
                  srai         s4, s9, 10
                  c.lui        s4, 4
                  c.nop
                  c.add        s8, t4
                  div          zero, s6, s3
                  and          t1, sp, t3
                  sra          t6, a1, a6
                  nop
                  sub          s9, tp, t2
                  slti         s1, s7, 920
                  lui          a0, 562852
                  slt          s2, s3, a5
                  c.andi       s0, 15
                  c.and        a0, a0
                  mulhu        s10, s0, t3
                  nop
                  auipc        t0, 955700
                  ori          s2, s0, -1140
                  sltu         a6, tp, a5
                  sra          a7, t3, s11
                  srl          gp, sp, tp
                  c.srai       s0, 17
                  c.srli       a3, 30
                  ori          s4, t0, -620
                  c.srai       a0, 20
                  or           t6, s7, t5
                  srai         a7, a6, 15
                  mulhu        t3, t4, s9
                  divu         s4, a2, s2
                  nop
                  c.srai       a0, 16
                  c.xor        a0, a4
                  sub          t0, s7, a5
                  sltu         a4, s10, s2
                  xori         s1, s7, 112
                  sltu         s8, a4, s2
                  c.srai       s1, 19
                  sltiu        t5, s9, 1096
                  c.srli       a4, 1
                  slli         ra, ra, 5
                  addi         s10, a5, -970
                  c.and        a0, a0
                  auipc        s10, 886246
                  xori         a4, s5, 1988
                  srai         t3, t5, 31
                  lui          ra, 726285
                  addi         t6, t6, -1546
                  sub          s4, a0, s5
                  c.mv         s0, s6
                  add          gp, t2, a5
                  c.srli       a4, 5
                  slt          zero, a5, t3
                  c.addi       s0, -1
                  mul          s1, t6, s9
                  xori         s8, a3, -727
                  sltiu        s6, t0, -62
                  andi         s0, sp, 1749
                  c.xor        a4, a5
                  add          s0, s3, s4
                  srai         s0, s3, 11
                  xori         s4, s2, -1208
                  srl          a6, s1, t6
                  slti         s4, s7, -839
                  c.srli       s0, 23
                  auipc        t3, 731844
                  c.li         s3, 8
                  sra          a0, s4, s5
                  c.or         a4, a4
                  c.nop
                  c.srli       a4, 27
                  c.andi       a4, 30
                  auipc        s10, 234191
                  sltu         t2, s10, a6
                  sub          s1, t6, a5
                  c.srai       a5, 21
                  lui          t0, 984783
                  srl          t6, s3, tp
                  c.and        a3, s1
                  c.xor        a0, s0
                  slt          a1, tp, t4
                  divu         t5, a0, s8
                  slti         s6, a6, -169
                  c.sub        a1, a0
                  c.srli       a0, 30
                  mulh         tp, a5, sp
                  sltu         ra, gp, gp
                  rem          s8, ra, t4
                  or           s9, s7, t2
                  srl          t2, s5, a6
                  srl          s2, sp, s8
                  xori         a3, ra, 278
                  addi         s9, sp, -1296
                  c.and        a1, a5
                  mulhu        s9, t3, a1
                  c.and        a4, a5
                  slli         gp, s8, 20
                  c.nop
                  slt          t1, t0, s5
                  c.li         a7, -1
                  or           s8, s6, s2
                  add          s9, a1, s7
                  c.srli       a0, 28
                  sltiu        zero, s1, 1818
                  and          s3, s8, s8
                  c.li         s3, -1
                  srl          t3, tp, s3
                  c.addi       s1, 16
                  c.nop
                  nop
                  c.mv         t0, t2
                  c.nop
                  divu         s5, a4, s2
                  c.nop
                  c.mv         s2, s6
                  c.lui        ra, 11
                  xor          a5, s2, zero
                  xori         tp, t5, 1134
                  mulhu        t6, a5, a1
                  xor          t6, s2, t3
                  c.sub        s0, s0
                  c.add        tp, a0
                  div          a6, a3, s5
                  c.srli       a1, 26
                  sra          s5, a1, ra
                  c.sub        a0, a2
                  mul          s10, t5, s11
                  slt          s8, a0, zero
                  sltu         ra, s5, s6
                  c.lui        a3, 22
                  nop
                  c.xor        s0, a3
                  sll          a0, a6, a3
                  c.add        a4, t0
                  c.xor        a1, a4
                  c.andi       a1, -1
                  mulhu        s10, a0, t1
                  c.addi       s2, -1
                  addi         t3, s8, 1895
                  sra          gp, s2, t4
                  mul          s5, s10, a2
                  div          a6, t2, s0
                  c.and        a1, a4
                  lui          s3, 222612
                  c.mv         t4, a4
                  or           s6, a7, s5
                  sltu         a1, t0, a3
                  c.add        tp, t6
                  srl          a3, t5, a1
                  c.srai       a1, 1
                  c.addi       s10, -1
                  rem          s6, s9, a3
                  mul          s7, s2, s11
                  slti         a3, t2, 40
                  ori          tp, sp, 1798
                  andi         t3, tp, 1842
                  lui          a0, 746215
                  c.add        t1, s2
                  add          zero, s0, t0
                  mulhsu       a0, sp, t6
                  xor          t4, sp, a6
                  mulhsu       t6, s11, a4
                  and          s2, a4, sp
                  slt          a3, s10, tp
                  c.lui        t3, 1
                  sll          s10, sp, s9
                  sra          t2, a4, s0
                  c.li         a0, -1
                  and          s10, s6, s10
                  mul          zero, s4, s5
                  c.lui        gp, 8
                  c.or         s0, a4
                  remu         s4, s1, t2
                  add          s6, a7, a2
                  and          s6, t4, s9
                  add          s9, t3, s10
                  and          tp, tp, s4
                  sra          a7, a1, s1
                  mulh         zero, s4, a0
                  and          s7, t1, t4
                  c.li         t6, 19
                  c.nop
                  nop
                  xori         a7, t6, -164
                  srli         a3, gp, 25
                  andi         s2, a2, -1720
                  srl          ra, s5, a3
                  rem          ra, a7, s5
                  sltu         s5, s10, a6
                  c.addi       s10, -1
                  c.sub        a4, s1
                  c.srli       a1, 17
                  c.srai       a1, 19
                  ori          a1, s2, 328
                  addi         s10, t6, 1323
                  rem          zero, t1, s1
                  mulhsu       t5, a6, s3
                  srli         t6, a3, 28
                  xor          t4, s10, s5
                  auipc        s4, 930697
                  sltiu        s8, s1, -1953
                  auipc        a5, 202044
                  ori          s1, a2, 402
                  mulhsu       s7, t0, t4
                  srai         t2, sp, 8
                  sltiu        t0, tp, -1205
                  remu         s0, t4, s2
                  srl          a0, a0, ra
                  and          a1, s5, a0
                  lui          s5, 234354
                  c.and        a0, a0
                  ori          s5, t3, 433
                  sll          a6, a6, s1
                  lui          zero, 406378
                  c.li         a5, 23
                  ori          s5, s10, 345
                  srl          zero, zero, s4
                  ori          a0, t1, -491
                  nop
                  xor          s6, s4, sp
                  slt          s8, t5, t4
                  slli         ra, a3, 20
                  c.andi       a1, -1
                  c.srli       a4, 6
                  divu         a6, s7, s10
                  c.slli       s2, 30
                  sltiu        s9, zero, -1831
                  c.addi       t5, 14
                  sll          a1, s4, sp
                  c.slli       a1, 30
                  c.li         a6, 22
                  ori          s7, s6, 1532
                  remu         s6, t0, s5
                  c.and        s0, a5
                  and          s8, s0, a0
                  mulh         s10, t0, a5
                  or           ra, s0, s11
                  sltiu        a3, zero, 1164
                  slli         s8, zero, 21
                  div          s1, t0, ra
                  c.sub        a1, a4
                  auipc        a6, 521726
                  or           s3, t6, a3
                  c.srli       a4, 7
                  or           t4, a5, t1
                  xor          a0, a0, a2
                  mul          s5, s5, s5
                  c.lui        a5, 13
                  slli         gp, a5, 26
                  c.nop
                  slli         a0, s6, 29
                  sltiu        a1, s0, 440
                  srai         a4, a4, 10
                  slli         s4, s7, 0
                  mulhu        a3, tp, s11
                  c.or         a5, a0
                  sll          s0, a0, s3
                  xori         tp, s0, 1409
                  slli         a1, s0, 25
                  add          t0, tp, a4
                  mul          a4, t0, s8
                  remu         s6, a6, t0
                  c.lui        s6, 25
                  add          s10, t0, t2
                  c.mv         s0, t4
                  xor          gp, zero, s7
                  c.lui        s0, 29
                  c.nop
                  slli         s2, s2, 23
                  add          s3, s9, t4
                  slt          t2, t2, s8
                  auipc        a7, 527404
                  mulhu        t0, tp, s11
                  c.li         t6, 7
                  c.srai       s1, 29
                  nop
                  c.slli       a3, 29
                  ori          t1, s7, 294
                  ori          a7, t2, -718
                  lui          s4, 283625
                  or           t1, ra, gp
                  c.sub        a1, a3
                  c.xor        a5, s0
                  and          t1, a0, s7
                  add          s1, tp, a1
                  sll          t4, s1, s0
                  ori          a3, s9, -771
                  mul          t3, s3, t5
                  xori         a5, s1, -1784
                  srai         s6, s7, 11
                  divu         t2, ra, zero
                  or           s1, ra, s4
                  srl          s3, gp, s7
                  and          t0, ra, gp
                  c.srai       a0, 8
                  divu         tp, s0, a0
                  remu         t4, a7, s0
                  nop
                  c.srli       s1, 25
                  sub          s9, a1, s6
                  mulhsu       ra, s9, t6
                  divu         a6, sp, a4
                  divu         t1, s5, s9
                  c.mv         s2, s8
                  sll          s1, a4, a1
                  divu         zero, s7, s7
                  rem          t1, gp, t4
                  srai         gp, s11, 26
                  c.add        a6, t1
                  slt          t6, a0, ra
                  c.lui        s4, 19
                  slli         s3, t4, 23
                  ori          s7, t0, -1189
                  auipc        a6, 945329
                  sltu         t3, t0, s8
                  sltiu        s8, a7, -69
                  xor          t3, s9, s10
                  xori         ra, s8, -801
                  mulhsu       s10, a6, s6
                  c.andi       a3, 24
                  ori          s2, s6, 53
                  xori         a3, s4, 1952
                  divu         s9, s9, a7
                  c.srli       a3, 29
                  c.li         s6, -1
                  ori          s7, t0, 166
                  c.srli       s0, 28
                  auipc        s6, 129260
                  ori          s1, a0, 825
                  c.srai       a4, 19
                  andi         t5, s0, -1729
                  slt          s0, t2, s0
                  rem          t2, gp, t2
                  remu         s10, t6, s6
                  c.or         s1, a5
                  addi         s5, a0, 1194
                  c.slli       a1, 18
                  sra          gp, s10, s2
                  addi         a5, s3, 274
                  c.li         s7, 8
                  rem          s7, a0, a2
                  sltu         s4, a7, s6
                  or           s5, t5, s4
                  c.andi       a0, 25
                  c.li         t4, 20
                  addi         s4, sp, -781
                  div          a1, a6, t6
                  slli         s3, s8, 7
                  c.andi       s1, 23
                  srli         a6, ra, 21
                  srl          a3, s5, s5
                  c.sub        a5, s0
                  sll          a0, a7, t5
                  divu         s5, s7, s8
                  slti         s3, t0, 48
                  srl          zero, zero, s3
                  c.slli       a3, 25
                  nop
                  lui          t3, 640721
                  auipc        s4, 624381
                  c.li         t0, -1
                  sltiu        gp, s6, -977
                  srai         tp, t0, 25
                  c.or         s0, a0
                  c.li         t1, -1
                  auipc        ra, 44003
                  c.and        a5, a3
                  mul          s9, gp, a1
                  mulh         s3, a0, t0
                  srli         s8, a7, 24
                  srli         s5, sp, 14
                  addi         s1, t1, -1303
                  srli         t4, a1, 1
                  sub          t0, a4, a1
                  ori          t1, a5, -1111
                  divu         a1, sp, a4
                  mulh         t5, t5, sp
                  slli         s6, sp, 25
                  c.slli       s10, 26
                  c.addi       s7, -1
                  or           t0, t0, s11
                  mulhu        s2, a3, a0
                  lui          s7, 845960
                  slt          s1, a7, tp
                  and          t0, t1, a3
                  remu         t4, s2, tp
                  sll          a4, t4, a0
                  c.addi       t3, 4
                  remu         s8, s11, tp
                  c.xor        s1, a2
                  c.slli       s8, 24
                  andi         a0, a1, -508
                  c.srai       s0, 15
                  remu         t1, a0, gp
                  mulhsu       s8, s0, s9
                  remu         s0, sp, t1
                  c.sub        a5, s1
                  xori         s2, s3, 1338
                  rem          s1, s7, t5
                  c.srai       s0, 22
                  sltu         gp, t5, t3
                  ori          s8, a0, -120
                  c.nop
                  auipc        s4, 922182
                  c.add        s9, a0
                  c.mv         s10, a4
                  c.srai       a0, 6
                  srli         a0, t0, 28
                  c.addi       a5, -1
                  mulhu        s6, t3, t0
                  lui          t4, 122302
                  srli         zero, t5, 1
                  rem          t4, t0, s2
                  andi         s5, a1, -86
                  div          a1, zero, tp
                  addi         t4, a2, 970
                  c.li         s6, -1
                  andi         s0, t4, -787
                  slt          s0, tp, a0
                  sub          t1, a6, s10
                  andi         t4, a0, 448
                  rem          s3, s8, t3
                  srl          s5, a1, zero
                  and          t3, t2, tp
                  srai         t6, gp, 31
                  mulh         s0, tp, s6
                  sltu         a7, a4, t5
                  c.slli       s7, 7
                  nop
                  c.li         t1, -1
                  rem          t2, s6, s1
                  xor          s10, zero, a6
                  sll          t0, s8, s1
                  remu         s3, a1, s4
                  c.or         s1, s0
                  mulh         a7, s4, s9
                  c.srli       a1, 3
                  slli         a3, t6, 1
                  c.li         tp, -1
                  c.srai       s1, 24
                  and          s4, s1, s11
                  c.or         s1, a0
                  add          t2, t6, tp
                  c.or         a5, a0
                  div          ra, sp, tp
                  mulhu        t3, s6, s8
                  slti         s1, gp, 1265
                  c.or         a1, a1
                  c.lui        ra, 7
                  slt          zero, s1, s6
                  c.li         t5, -1
                  mul          t1, s11, a0
                  c.sub        s0, s1
                  mulhu        a1, a4, s6
                  c.slli       a4, 9
                  c.and        s0, a4
                  sra          s1, s5, ra
                  slt          t6, s0, a5
                  c.nop
                  div          tp, s5, s8
                  rem          s0, a7, a2
                  c.andi       a5, -1
                  c.and        a3, a5
                  c.addi       t6, 30
                  srli         t5, a7, 13
                  and          s9, zero, s9
                  nop
                  c.sub        a3, a5
                  and          s10, a2, tp
                  xori         gp, s2, 1239
                  c.slli       tp, 8
                  mulh         t5, t5, s1
                  c.add        t0, s4
                  sltiu        a1, s2, 489
                  sll          gp, s0, s10
                  xori         s8, s9, 388
                  ori          zero, a4, -1830
                  xor          a0, zero, a1
                  remu         t1, s10, s1
                  nop
                  c.slli       a5, 11
                  auipc        s6, 150260
                  slt          t3, ra, a1
                  c.lui        t3, 12
                  slli         ra, t6, 10
                  sll          s6, s1, a1
                  slt          a5, a4, s7
                  sltu         a6, a0, a3
                  xori         s5, a6, -621
                  or           t2, t0, tp
                  addi         s10, t6, 1282
                  srai         a1, sp, 31
                  div          s7, s1, sp
                  nop
                  mulhsu       t6, a7, s7
                  xori         t6, s3, -1180
                  xori         t5, t1, -1026
                  and          t5, s5, tp
                  ori          t3, s1, 547
                  srli         a1, s7, 19
                  c.andi       a4, -1
                  mulh         a0, s8, s9
                  c.addi       s3, 11
                  remu         t4, ra, s11
                  or           zero, a1, s5
                  andi         a1, t6, -2037
                  lui          t6, 49434
                  nop
                  c.srai       a1, 2
                  xor          t4, s0, a4
                  sltiu        s9, a4, -874
                  c.slli       tp, 27
                  sub          gp, a0, t1
                  sltiu        s6, t2, 1214
                  srli         a3, gp, 29
                  xor          zero, s8, s5
                  c.lui        a6, 2
                  c.addi       a6, 23
                  mulhu        t5, a5, s4
                  c.sub        a3, a2
                  sltu         s2, a0, t1
                  sll          t2, s0, s0
                  sltiu        s1, a5, 1190
                  or           a6, s10, s0
                  or           s5, a5, a7
                  mulhu        a0, t0, t1
                  auipc        s4, 1040043
                  ori          a7, a1, 1708
                  sltiu        s9, s3, -1765
                  divu         a4, zero, s1
                  ori          s1, a4, 1113
                  slli         s0, s4, 18
                  or           t1, s7, a3
                  mulh         s0, a6, tp
                  srai         gp, s8, 22
                  div          a7, s9, sp
                  c.li         ra, -1
                  srl          s2, s9, t5
                  c.add        t2, a1
                  c.lui        a6, 3
                  c.slli       a1, 3
                  xori         s5, zero, -875
                  slt          zero, a2, t3
                  rem          a0, s1, a5
                  slli         a4, s11, 14
                  c.srai       s1, 24
                  sltu         a1, t4, s2
                  sll          s1, a0, s1
                  slli         a1, t3, 0
                  slli         t3, sp, 23
                  c.slli       a7, 24
                  c.andi       a3, 16
                  c.li         s7, 24
                  andi         s8, t1, 999
                  ori          s2, s3, -1812
                  sltiu        ra, ra, 1928
                  mulh         a3, t4, ra
                  nop
                  c.xor        a0, a0
                  auipc        a4, 999840
                  mulhu        a3, s11, a0
                  srai         s8, s0, 11
                  xor          t1, a3, a5
                  sub          s1, s0, s10
                  c.xor        s0, s1
                  ori          ra, t4, -1575
                  andi         gp, gp, 1234
                  rem          s2, a6, a3
                  sll          gp, s1, s5
                  mulhu        a4, t6, t1
                  c.xor        s0, a5
                  c.mv         tp, gp
                  sra          s7, t3, a7
                  div          s3, t6, t0
                  c.xor        s0, a2
                  mulhsu       a4, a5, a3
                  c.li         s0, 5
                  c.mv         s8, t4
                  andi         s7, a7, 2035
                  c.or         s0, a4
                  remu         s1, a1, zero
                  xor          t3, s11, a5
                  c.li         ra, -1
                  c.nop
                  ori          s6, t6, 941
                  c.mv         s4, s8
                  c.addi       t4, 27
                  and          t1, s11, t6
                  or           t3, a6, gp
                  c.sub        a5, a0
                  c.mv         a7, s4
                  c.lui        gp, 6
                  c.or         s0, a5
                  divu         t6, t1, a2
                  add          s8, ra, t0
                  addi         t0, a7, 934
                  slli         s3, s2, 6
                  mulhsu       t2, s7, s5
                  lui          a7, 373415
                  lui          t1, 68315
                  c.add        s2, s2
                  mulhu        a5, a4, s2
                  slti         s4, t6, -355
                  sltu         s8, a6, gp
                  mulhu        t4, a3, s7
                  slli         a4, a6, 24
                  slt          t1, s4, s3
                  c.nop
                  mulhsu       s8, s9, s7
                  mul          a1, s5, t2
                  sltu         a6, s7, s3
                  rem          t2, t3, s5
                  slti         zero, a7, 385
                  c.srai       s0, 15
                  c.lui        t2, 16
                  c.addi       s2, -1
                  mulhu        t6, a2, a0
                  or           t6, sp, a2
                  mul          t3, s10, a4
                  sltiu        ra, s11, -1838
                  c.slli       t3, 18
                  addi         a5, zero, 772
                  mulhsu       a6, s5, s5
                  slt          a1, s3, t6
                  c.srli       a3, 8
                  remu         zero, ra, s5
                  mulhu        s10, t6, s2
                  sll          a3, t0, gp
                  sltu         t4, s8, zero
                  c.xor        s0, s1
                  mulh         s2, t4, s11
                  c.slli       t1, 9
                  c.srli       a5, 9
                  sll          a6, s2, s5
                  divu         a6, s3, a5
                  div          t0, t0, a2
                  remu         s0, s6, t1
                  mulhu        s6, s3, s4
                  ori          s4, t0, 988
                  sra          s8, t0, t6
                  c.or         s0, a5
                  auipc        t6, 298573
                  c.slli       s0, 18
                  c.add        s3, s4
                  xor          t0, sp, a3
                  divu         t1, s8, a0
                  c.slli       a1, 6
                  xori         a4, t1, 283
                  lui          s3, 448336
                  sll          s5, t4, t3
                  c.addi       s8, -1
                  c.lui        a3, 6
                  auipc        a4, 1010304
                  mulhu        s2, t3, t1
                  srl          a5, s9, tp
                  mul          s0, a3, s0
                  and          t2, sp, s7
                  or           s4, s2, t6
                  srai         s3, sp, 12
                  sra          s0, t4, s5
                  lui          s10, 343967
                  c.sub        a3, a3
                  add          gp, s5, s0
                  mulh         a6, a2, zero
                  lui          t4, 669835
                  rem          gp, s9, a3
                  divu         s3, tp, s4
                  mul          s8, a2, a0
                  and          zero, t2, zero
                  lui          s10, 185886
                  srl          t5, t3, s8
                  xori         t4, a0, 841
                  mulhu        a0, s7, s4
                  c.lui        s4, 7
                  mulhu        a1, s11, s11
                  slt          s8, a1, s9
                  mulhsu       gp, t3, gp
                  ori          t1, a6, 1267
                  mulh         s1, a2, s0
                  and          a1, sp, a2
                  mulh         a3, a7, t3
                  c.slli       a0, 4
                  nop
                  sll          a3, gp, a1
                  srl          t6, s1, s0
                  sra          a0, s1, s6
                  mulh         a7, t0, a6
                  slt          s1, t4, a3
                  c.sub        a3, a5
                  div          t4, s6, a4
                  c.nop
                  c.mv         s0, s10
                  sltu         tp, a7, s9
                  c.mv         s5, a1
                  c.addi       a1, -1
                  mulh         t6, s11, tp
                  srl          s6, a0, t2
                  remu         t2, s3, s2
                  slli         s4, t1, 2
                  c.addi       s4, 26
                  srl          s6, s9, t4
                  c.srli       a3, 6
                  xor          s1, s5, zero
                  sltu         s1, gp, s7
                  c.xor        a1, a0
                  andi         t6, tp, -2017
                  c.xor        s1, a0
                  lui          a5, 823935
                  mulhsu       s5, s1, a0
                  add          t4, t5, zero
                  lui          t0, 662542
                  c.or         a3, a3
                  c.andi       a3, 25
                  div          t3, t2, a6
                  slli         a0, s10, 11
                  div          a4, s4, s3
                  remu         t0, a1, a1
                  slli         a7, s11, 1
                  c.mv         a7, s6
                  mulhu        s3, sp, s10
                  auipc        t3, 567823
                  mulhsu       a0, a6, s5
                  mul          t4, t4, s2
                  c.nop
                  div          s4, t1, s7
                  c.nop
                  div          t5, ra, s3
                  mulh         s10, a6, s6
                  sub          zero, gp, a5
                  auipc        t2, 778807
                  c.nop
                  c.and        a3, a1
                  remu         a7, s5, ra
                  lui          t5, 37879
                  c.addi       t3, 8
                  srli         s4, a3, 4
                  c.addi       a1, 9
                  c.sub        a3, a4
                  c.sub        a5, a0
                  mul          tp, s1, a4
                  divu         s5, s9, s4
                  c.slli       s9, 18
                  slli         t2, s6, 25
                  sltiu        a5, gp, -433
                  or           s0, s4, s7
                  c.sub        a4, a3
                  auipc        t1, 182970
                  srai         s5, s7, 27
                  mulhsu       gp, s8, a7
                  slti         s8, a2, 1375
                  mulh         t5, t6, a6
                  xor          t3, s11, s5
                  auipc        t5, 673742
                  c.mv         a1, a2
                  c.addi       s9, -1
                  nop
                  or           a6, s3, a0
                  mulhsu       s0, a5, t1
                  divu         a0, s7, zero
                  srli         s3, s0, 21
                  c.add        s2, a0
                  c.nop
                  lui          s5, 892265
                  sll          a6, ra, s9
                  c.mv         t4, a6
                  slti         s2, s0, 1168
                  c.or         s0, s1
                  c.lui        s9, 11
                  slti         t3, s7, 513
                  div          ra, t1, s2
                  c.nop
                  c.li         t4, -1
                  slt          tp, t0, ra
                  sltu         s3, ra, a2
                  c.andi       a1, 10
                  srai         a3, s7, 1
                  c.and        a4, a0
                  c.lui        t2, 2
                  srai         s10, s5, 24
                  c.slli       s9, 8
                  sltu         a1, t4, s9
                  c.lui        gp, 11
                  c.and        a0, s1
                  c.mv         s4, s0
                  c.and        a1, s0
                  c.xor        s1, s1
                  mul          s8, t6, s8
                  c.and        a5, a3
                  auipc        t4, 925875
                  nop
                  xori         a6, s6, 106
                  auipc        a7, 254702
                  c.srli       a0, 7
                  div          t2, s11, tp
                  div          tp, t6, a4
                  nop
                  or           t1, s9, a7
                  sltiu        tp, a6, 1239
                  sltu         t3, tp, zero
                  mulhsu       a3, a2, tp
                  xor          a7, gp, s7
                  sra          a6, s5, t2
                  sll          s4, gp, s7
                  sll          t2, s7, tp
                  slt          s0, s10, t3
                  xori         t3, a0, 1077
                  slt          a6, t0, s10
                  divu         t1, s7, sp
                  xor          a1, t4, a0
                  divu         s9, gp, a7
                  div          s10, s10, a5
                  add          s10, a5, a2
                  c.srai       a4, 12
                  c.srli       s0, 22
                  mulhu        t3, gp, s0
                  srli         s10, t1, 13
                  or           zero, t5, t4
                  slli         s10, a6, 18
                  div          t3, t1, s4
                  srli         a3, t4, 8
                  c.lui        s2, 4
                  sltiu        s4, a0, 814
                  c.srli       s1, 2
                  c.lui        t3, 26
                  sll          t4, tp, s3
                  c.nop
                  lui          s9, 163331
                  c.and        s0, a0
                  slti         a7, t3, 443
                  srl          a7, s9, tp
                  c.sub        s1, a5
                  c.and        a1, a0
                  c.nop
                  c.sub        a5, a4
                  add          s6, s4, tp
                  add          s8, a2, tp
                  c.or         a4, s1
                  c.lui        t4, 19
                  auipc        zero, 303464
                  srli         ra, a3, 2
                  sub          t4, s9, s9
                  rem          s1, a5, a4
                  c.and        a4, a5
                  rem          t3, a7, zero
                  mulhu        s0, t0, t2
                  c.mv         t2, a0
                  c.li         t0, 7
                  nop
                  andi         t5, a0, 156
                  div          a5, a7, a6
                  srai         ra, tp, 4
                  sub          s9, s7, ra
                  ori          s7, t1, -1524
                  srl          s4, gp, s3
                  c.or         a5, s0
                  c.mv         s1, a5
                  sra          t4, s2, s11
                  srli         a7, sp, 22
                  lui          a5, 658076
                  sltu         s9, t3, t5
                  c.and        a3, a2
                  remu         s2, s5, t4
                  c.andi       a5, 1
                  ori          t2, s3, 1604
                  div          s7, sp, a2
                  c.addi       t1, -1
                  add          t4, s1, s6
                  slti         t1, t0, -704
                  mulhu        a1, a3, a7
                  slli         t2, s2, 23
                  addi         zero, s6, -216
                  slti         s0, s6, -654
                  sub          t6, a1, a1
                  rem          a7, zero, t0
                  mulh         t0, sp, s5
                  c.slli       a1, 31
                  auipc        t5, 1019025
                  srai         gp, t2, 18
                  ori          ra, a1, 492
                  and          gp, s3, s9
                  mulhu        gp, a0, s9
                  slt          s6, a5, t6
                  c.addi       a5, 21
                  srl          t5, s6, ra
                  c.mv         t1, ra
                  srai         s3, s6, 25
                  auipc        a5, 899164
                  and          ra, t5, a5
                  c.mv         a1, t6
                  auipc        a5, 12279
                  xori         zero, a4, -733
                  add          tp, a2, a0
                  c.slli       s1, 8
                  mulhsu       t1, t5, a1
                  lui          s1, 548720
                  ori          t3, t2, -524
                  slt          t0, t3, s0
                  divu         s10, s6, a2
                  mul          a6, gp, a4
                  andi         s1, t0, 1392
                  c.addi       t0, 31
                  slt          s2, s9, s3
                  slt          zero, s2, tp
                  lui          tp, 525400
                  sltu         gp, s5, s5
                  and          a5, s4, a4
                  xor          t3, t1, a7
                  srai         t2, t0, 3
                  srl          tp, a2, s9
                  andi         s4, t1, -1312
                  mulhsu       a6, s0, s7
                  andi         ra, t2, -958
                  c.sub        s0, a2
                  c.lui        a0, 15
                  mulhu        s2, a3, s8
                  xor          t1, tp, s1
                  sll          a5, s7, t6
                  or           a5, a4, s2
                  andi         s0, s5, 1444
                  c.lui        t5, 18
                  sub          t5, s8, s3
                  slli         s10, a6, 27
                  c.slli       a1, 2
                  xori         t6, a3, 2006
                  c.addi       s4, -1
                  remu         s9, t0, sp
                  ori          a4, zero, -215
                  c.nop
                  mulhsu       s2, t5, a3
                  c.srli       a0, 26
                  mul          t5, gp, s11
                  mulhu        a5, a1, s9
                  c.addi       s0, 29
                  xor          ra, s0, s10
                  srli         t1, s9, 18
                  mulh         gp, ra, s9
                  srai         s6, t3, 0
                  srai         s9, a5, 28
                  c.or         a4, a0
                  mul          a4, s8, s5
                  lui          s9, 120568
                  c.srai       s1, 25
                  sltiu        a3, t2, -633
                  slt          a7, ra, a5
                  and          s9, zero, t5
                  lui          s0, 1014420
                  lui          s6, 618778
                  or           tp, a2, s3
                  c.li         t2, 30
                  xor          t1, t4, s10
                  c.lui        s3, 24
                  lui          tp, 638725
                  c.add        s6, s4
                  c.slli       s0, 20
                  c.srli       a4, 1
                  mulh         s7, ra, s10
                  divu         s1, t1, tp
                  c.andi       a5, 19
                  srai         a1, t2, 5
                  c.xor        s0, a1
                  c.mv         tp, s8
                  c.mv         s6, t1
                  andi         s5, s10, -1082
                  sltu         gp, t0, sp
                  rem          a1, tp, s10
                  slli         t2, a6, 24
                  c.add        s3, s5
                  sra          a0, a1, s11
                  ori          a6, a2, 1111
                  srai         a0, s3, 31
                  c.xor        a3, a1
                  c.srai       s0, 16
                  c.or         s0, s1
                  mulh         s3, a5, s3
                  c.sub        a3, a0
                  srl          a4, s10, t3
                  slti         s3, t3, -1708
                  c.slli       s2, 15
                  sll          a0, s10, s10
                  c.sub        s1, a4
                  srai         zero, s10, 31
                  addi         s4, s2, 1753
                  c.andi       s0, -1
                  c.or         s1, a5
                  c.or         s1, a2
                  srl          s10, gp, tp
                  nop
                  sra          s10, a0, t5
                  xori         t0, a2, -1730
                  ori          t0, a3, -647
                  slt          a1, a6, a6
                  ori          zero, a3, 405
                  c.addi       a1, 10
                  xor          zero, sp, a4
                  c.lui        s2, 15
                  sub          s7, sp, s7
                  c.li         a7, -1
                  auipc        ra, 411418
                  andi         a1, t2, -276
                  slti         a0, a1, -1228
                  c.andi       a4, 15
                  slli         s8, gp, 6
                  nop
                  div          s9, s11, a1
                  slli         t0, s7, 18
                  slti         a0, t1, 285
                  sltu         t5, t0, s6
                  slt          gp, t3, a1
                  srl          s7, s7, t4
                  or           tp, t4, a4
                  remu         a0, t5, zero
                  mul          tp, a4, gp
                  slti         a1, sp, -808
                  rem          s3, t5, s4
                  ori          t3, s3, 1862
                  lui          tp, 317638
                  c.xor        a4, a2
                  andi         s9, sp, 944
                  mulhu        t4, t5, ra
                  add          t5, s10, s5
                  divu         s10, t5, s10
                  auipc        gp, 1045772
                  mul          t4, ra, t1
                  mulhu        t6, gp, s7
                  ori          a6, a2, 1354
                  c.lui        s7, 2
                  c.mv         s2, s8
                  c.mv         t1, s11
                  c.nop
                  sub          s10, t5, zero
                  c.slli       t5, 10
                  c.lui        a6, 17
                  or           s9, tp, s8
                  srli         zero, a1, 8
                  xor          a5, sp, ra
                  sltiu        s3, a4, 1589
                  c.lui        s1, 1
                  slt          s4, t0, zero
                  or           t0, t2, s9
                  slli         gp, s10, 19
                  c.slli       s7, 15
                  lui          s3, 944325
                  c.srli       s0, 23
                  add          s2, t4, t5
                  srli         a4, s10, 9
                  andi         s2, sp, -1305
                  lui          s4, 18168
                  or           s3, sp, s7
                  c.mv         a1, a5
                  srl          t1, s8, a6
                  srli         a0, s10, 4
                  c.srli       a5, 28
                  sra          a0, s1, s0
                  srl          s3, s9, s8
                  c.add        s8, a7
                  slli         a0, a7, 23
                  c.slli       a3, 22
                  c.slli       t3, 21
                  c.add        t0, ra
                  slli         t5, t0, 0
                  slt          t1, a4, s1
                  c.xor        a4, a5
                  auipc        t5, 309280
                  lui          a0, 702339
                  auipc        s6, 446718
                  c.xor        a3, s0
                  div          t5, a5, s3
                  sra          tp, s11, s8
                  add          s10, zero, a7
                  c.lui        s8, 25
                  c.and        s0, a5
                  sltu         s0, a2, t1
                  mulh         a7, a3, t2
                  c.srai       a5, 8
                  addi         s2, s3, 1382
                  c.andi       a4, -1
                  c.addi       s2, -1
                  c.sub        a4, a1
                  div          t2, t3, s4
                  srl          ra, s10, a5
                  or           t3, s2, s2
                  c.slli       s1, 8
                  c.srai       a4, 20
                  srli         ra, zero, 18
                  mulh         s2, s2, a1
                  slti         s9, s6, 21
                  sub          t6, sp, a7
                  c.slli       ra, 12
                  mulhu        s2, s11, s9
                  sll          s9, t3, tp
                  c.lui        s0, 23
                  sltiu        gp, t6, -793
                  c.slli       t4, 26
                  c.or         a4, a1
                  sub          tp, s9, s9
                  c.lui        t1, 7
                  c.sub        s0, a2
                  slli         s9, tp, 14
                  xori         s0, sp, -45
                  slti         s8, s0, -998
                  lui          ra, 362737
                  sltiu        gp, a0, 1676
                  and          s5, s5, s7
                  c.mv         tp, s9
                  xor          s4, s10, tp
                  divu         s3, s2, a2
                  mulhsu       s8, s7, s7
                  rem          t1, a4, s5
                  ori          a5, s2, 1185
                  mulh         s6, t6, a0
                  c.xor        s0, s0
                  srai         s10, a2, 11
                  sll          a6, t3, s9
                  slt          a3, s3, t1
                  sltu         s10, s4, t6
                  xor          s2, t4, ra
                  c.sub        a3, s1
                  add          t4, sp, t0
                  srli         s8, a0, 11
                  slti         t1, s9, 1222
                  nop
                  lui          a0, 558989
                  c.andi       a4, 24
                  srli         t0, a7, 24
                  mul          s3, s0, s8
                  add          s8, a0, s7
                  rem          s7, a5, s5
                  sra          tp, a2, zero
                  nop
                  srai         t5, zero, 3
                  auipc        a0, 38690
                  lui          s5, 130528
                  xori         s5, a0, 857
                  c.andi       s0, -1
                  ori          t3, a2, 13
                  sltiu        zero, s9, 1560
                  c.sub        a0, a4
                  sll          t5, ra, a2
                  c.andi       a1, -1
                  c.nop
                  slt          tp, s2, s11
                  sub          t5, s10, s6
                  and          gp, s5, t4
                  ori          t3, t5, 1568
                  and          a6, s8, sp
                  lui          a5, 23378
                  c.srai       a0, 5
                  or           s3, s0, a1
                  sltu         s7, a3, a6
                  lui          a1, 165100
                  slti         a3, t1, -60
                  div          s10, sp, a5
                  auipc        s1, 579509
                  c.li         gp, 1
                  add          s3, a0, t1
                  c.lui        t3, 29
                  c.mv         s9, a5
                  xori         t1, s11, 1622
                  sltiu        t2, a2, -652
                  c.sub        s0, a2
                  sltu         s1, ra, t3
                  c.and        a0, a2
                  ori          zero, s7, 1745
                  addi         t1, t1, -1770
                  auipc        s6, 19508
                  c.andi       s0, 29
                  add          s10, a7, zero
                  c.xor        s1, a1
                  and          s1, a4, t3
                  add          a4, s0, a5
                  c.andi       a3, 2
                  mul          t4, a0, t4
                  c.add        s1, t3
                  slti         t6, t0, 1431
                  remu         s10, a7, s3
                  sltu         s6, t1, s0
                  c.xor        a1, a2
                  c.add        a1, t1
                  slt          s10, sp, t5
                  sltiu        s3, s2, -402
                  c.or         a0, s1
                  rem          ra, s9, tp
                  remu         s10, a6, s3
                  or           ra, s1, t4
                  c.srai       s0, 22
                  andi         zero, s11, -1613
                  remu         t4, s9, s8
                  remu         a0, sp, s0
                  sub          s10, s2, sp
                  c.add        a7, s8
                  srl          s7, a1, gp
                  sll          tp, t2, s10
                  c.add        s8, s9
                  mulhu        t0, zero, s4
                  c.addi       gp, 3
                  slti         s9, zero, 86
                  sltiu        t6, gp, 1568
                  c.and        a3, a3
                  sll          s2, zero, t6
                  slt          t5, sp, s10
                  c.srli       s1, 15
                  xori         a0, t2, 589
                  nop
                  add          t1, t0, sp
                  c.slli       tp, 4
                  slti         t0, t2, -338
                  c.xor        a1, s1
                  rem          a4, s10, a3
                  c.slli       t2, 17
                  c.and        s1, a2
                  sra          a3, t6, sp
                  andi         s4, a2, -1216
                  mulhu        s6, s5, s3
                  sll          a7, s4, t2
                  addi         s3, a0, 1093
                  divu         a5, s2, tp
                  div          a5, zero, a0
                  c.andi       a3, 6
                  c.mv         s1, s11
                  sltiu        t4, s5, 1447
                  divu         s8, t3, s1
                  c.add        t5, s3
                  c.li         tp, -1
                  c.or         a1, a0
                  srl          zero, t6, s6
                  or           t1, s0, sp
                  auipc        a7, 948773
                  c.andi       s0, 14
                  slli         zero, a2, 5
                  xor          gp, zero, zero
                  mul          s5, s6, t5
                  c.and        a3, a4
                  or           t5, s9, s10
                  mulh         a4, s2, t4
                  c.slli       t4, 18
                  srl          s10, a5, s11
                  div          a3, a7, s1
                  slli         s5, gp, 22
                  sltu         tp, s9, s8
                  add          t4, a4, a3
                  mulhu        t3, zero, s4
                  remu         t4, a6, a5
                  rem          zero, s3, s1
                  sll          a1, a3, a4
                  add          a0, s8, s10
                  c.or         a3, a3
                  c.srli       a3, 5
                  sltu         t4, t5, s7
                  rem          s10, t5, s9
                  sll          s7, s0, tp
                  xori         ra, a4, -1236
                  mulh         s6, sp, a3
                  nop
                  c.andi       s1, -1
                  xori         s0, s10, 140
                  andi         a5, s9, -418
                  slti         s0, t1, -1709
                  mul          s7, s1, s11
                  sub          a7, s10, s0
                  c.xor        a0, s1
                  c.lui        gp, 17
                  div          a0, s7, t5
                  c.and        s1, s1
                  lui          t2, 308202
                  xor          zero, gp, s6
                  mulh         a3, zero, s5
                  c.sub        a3, a5
                  sra          a3, gp, t2
                  sub          zero, s9, zero
                  c.xor        s1, a4
                  c.nop
                  divu         a1, sp, t6
                  c.srli       a4, 25
                  c.and        s1, a3
                  c.xor        a4, s1
                  mul          a7, s10, a4
                  c.or         a3, s0
                  srl          s3, a0, a5
                  c.andi       a0, 31
                  and          t5, s0, s11
                  lui          s9, 381277
                  c.add        t4, t0
                  divu         gp, s11, s1
                  c.or         s0, a3
                  slti         s4, zero, -195
                  c.li         s2, -1
                  mul          zero, t2, tp
                  div          s3, s7, s4
                  and          s5, s8, a0
                  add          zero, s8, a5
                  c.sub        s0, a2
                  c.slli       a6, 1
                  mulhu        s2, s8, t0
                  add          s2, s6, s0
                  divu         s2, tp, t4
                  mulhsu       ra, t1, s10
                  lui          a1, 412898
                  mulhsu       a6, zero, a5
                  srl          t4, zero, sp
                  c.add        s0, a0
                  xor          a0, s5, a2
                  div          s5, s5, a0
                  lui          a0, 50909
                  c.or         a3, a5
                  c.lui        s0, 10
                  slt          t1, s1, t6
                  c.li         a5, 18
                  xor          ra, a7, t4
                  c.srli       a4, 10
                  srl          a3, ra, s5
                  c.li         a0, -1
                  c.sub        a0, a3
                  srai         t3, s1, 14
                  srl          s0, gp, s4
                  sltiu        s0, s3, 1941
                  xori         a0, s9, 1333
                  c.and        s0, a2
                  c.xor        a1, a2
                  c.or         s1, a3
                  xori         t6, t0, 252
                  c.sub        a4, a0
                  nop
                  c.li         a7, -1
                  c.slli       a3, 26
                  add          a7, t6, a1
                  sltu         t6, gp, a7
                  c.or         a4, a4
                  and          t5, a6, a5
                  add          s4, a3, zero
                  ori          s9, s4, 140
                  sra          gp, t4, a7
                  sltu         s4, s5, ra
                  sub          s1, t6, s2
                  mul          t1, s7, a5
                  and          s3, sp, ra
                  divu         s3, gp, a4
                  mulhu        tp, a6, s7
                  srl          a3, a6, t3
                  c.xor        s1, a4
                  sltu         s7, gp, a0
                  c.addi       a6, -1
                  mulh         s7, a2, s2
                  ori          t4, t6, 359
                  auipc        s8, 516526
                  srai         a5, s9, 9
                  divu         s4, t6, a2
                  addi         s1, t4, 1380
                  sltu         s3, s10, t3
                  mulh         s3, s9, t0
                  sll          a1, s7, t5
                  c.andi       s1, -1
                  c.add        s3, t4
                  srli         ra, s0, 25
                  mul          a1, t5, t5
                  mulh         t2, sp, a0
                  c.xor        a3, a3
                  srai         tp, s2, 23
                  sltu         a0, s1, a4
                  sra          s6, s0, a3
                  sltiu        a4, ra, 631
                  c.slli       s10, 2
                  xor          s0, a7, s8
                  divu         a6, t5, s2
                  sub          ra, a3, t1
                  c.or         a3, a0
                  add          a1, s1, gp
                  auipc        s8, 368978
                  c.sub        s1, a2
                  sra          a7, s4, s6
                  c.slli       s0, 7
                  c.add        s10, a4
                  xori         s6, a0, -141
                  xori         t6, s2, -37
                  slli         gp, s1, 29
                  c.srli       s1, 31
                  c.or         a5, a2
                  c.add        s2, s9
                  c.nop
                  srli         t6, a4, 20
                  rem          zero, a1, s9
                  srli         ra, zero, 7
                  mul          a6, sp, a5
                  c.addi       s0, -1
                  or           s7, s10, s6
                  nop
                  c.or         a1, s1
                  divu         t1, a1, s7
                  and          s0, t0, s0
                  ori          s5, t6, 1677
                  sub          a5, ra, a4
                  slli         s3, t4, 12
                  mulhsu       gp, t3, t3
                  andi         a3, s5, 1946
                  sra          s1, s4, a3
                  div          zero, t2, s10
                  c.andi       s1, -1
                  andi         a5, t2, 1637
                  c.and        s1, a0
                  sltu         t5, a3, s8
                  remu         s6, a6, a5
                  c.or         a5, a1
                  remu         a5, s11, a0
                  ori          a0, a7, -1508
                  addi         zero, s11, 535
                  srai         zero, s11, 11
                  mulh         t0, s8, s11
                  c.sub        a5, s0
                  xori         a3, a7, -1451
                  c.and        a4, a3
                  mul          s0, a2, s8
                  xori         s0, s7, -1484
                  c.andi       a3, 8
                  lui          a3, 41903
                  divu         s8, t5, a4
                  c.srli       a1, 19
                  or           s4, tp, a1
                  div          t6, t5, a3
                  c.and        a3, a4
                  c.lui        ra, 23
                  nop
                  slti         s3, t3, 230
                  div          tp, gp, zero
                  sll          s4, t0, tp
                  slli         s7, t2, 7
                  rem          zero, t2, a1
                  c.srai       s0, 3
                  mulh         t3, a3, sp
                  sll          tp, t5, t0
                  and          s9, a3, t2
                  slti         a7, s0, -316
                  ori          gp, a7, 43
                  c.sub        a5, s0
                  xor          gp, s0, t4
                  addi         s6, a3, -1178
                  sll          s2, t5, a4
                  mulhu        s7, a4, t1
                  sub          s3, s1, s0
                  rem          t4, t5, t2
                  c.slli       s2, 4
                  sltu         s8, a4, s7
                  addi         t3, zero, 1203
                  divu         t0, a6, s6
                  c.sub        a4, a4
                  slt          s8, s0, s7
                  srli         s6, a5, 1
                  c.mv         s2, tp
                  srai         s5, a0, 16
                  rem          s10, t4, gp
                  c.slli       tp, 10
                  andi         a7, ra, -485
                  srli         t4, s9, 25
                  mulhsu       s4, a4, gp
                  xori         a1, t6, -1315
                  c.srai       a0, 30
                  c.sub        a3, s1
                  rem          a3, t1, a1
                  nop
                  sra          s5, ra, ra
                  slt          a6, t6, a0
                  rem          t6, a6, s9
                  c.xor        a5, a1
                  srli         zero, t2, 28
                  sll          a7, ra, t3
                  mul          s2, s8, s4
                  srai         t0, s0, 16
                  sll          t6, zero, gp
                  mulhsu       t1, s8, t3
                  xori         s5, tp, 344
                  ori          s5, s4, -13
                  slli         t2, t6, 16
                  c.addi       t5, -1
                  andi         t5, gp, 1832
                  xori         ra, s6, -1324
                  slt          a4, s9, a7
                  c.sub        a4, s1
                  sra          s3, s9, s9
                  mulhsu       tp, t6, s1
                  c.srli       s1, 3
                  srl          t1, zero, sp
                  add          t4, t2, s2
                  c.lui        ra, 30
                  mulh         s0, s9, gp
                  ori          a3, s8, 1305
                  c.lui        ra, 17
                  nop
                  sltiu        t0, tp, 1847
                  xori         t0, t1, -1730
                  lui          s2, 766939
                  xori         s6, s5, -175
                  rem          a1, a2, s7
                  c.addi       s6, -1
                  add          ra, a2, s3
                  c.li         a7, 21
                  sltu         t0, s9, a2
                  div          s4, a3, a7
                  slt          s6, sp, a2
                  addi         s6, s8, -1110
                  slti         s2, t3, 1750
                  mulhsu       a1, a6, tp
                  sltu         s5, s0, a4
                  xori         a0, a6, 458
                  c.andi       a4, -1
                  srai         s1, s3, 7
                  lui          s7, 345842
                  mulhsu       zero, gp, zero
                  c.srai       a3, 11
                  c.or         a5, a0
                  lui          a1, 347895
                  c.lui        t5, 31
                  c.andi       s1, 4
                  srli         s5, s9, 4
                  ori          t3, s11, -908
                  c.xor        a1, a2
                  remu         gp, s8, t4
                  slt          a3, t3, a0
                  c.sub        a0, a2
                  c.add        s0, s11
                  slt          ra, ra, t5
                  mul          zero, s9, sp
                  mulhsu       s6, a0, s0
                  add          s0, t0, a3
                  slti         s7, s7, -796
                  sltiu        t4, s11, -1993
                  div          s10, s2, s9
                  c.add        t5, gp
                  xor          ra, a6, t4
                  sra          s4, s1, s4
                  div          t0, t3, s9
                  c.nop
                  srai         s3, a1, 29
                  xori         s2, a4, -1648
                  srai         s10, a3, 0
                  mul          s5, tp, t6
                  c.add        s10, a3
                  c.addi       gp, 9
                  andi         a7, s8, 1926
                  c.sub        a0, a1
                  mulh         s0, a2, s9
                  c.slli       a0, 15
                  c.add        s8, s4
                  slli         s2, a4, 31
                  slti         ra, ra, -351
                  ori          t5, t2, 1104
                  c.li         t5, 28
                  c.add        a4, t2
                  c.xor        a3, a0
                  c.add        s9, t3
                  srli         a0, sp, 23
                  srl          zero, s5, s2
                  add          s6, s4, tp
                  mulh         zero, t3, a5
                  c.nop
                  c.andi       a4, -1
                  srl          s3, s10, s2
                  srl          a4, t5, a6
                  slt          a5, s3, tp
                  srl          s9, zero, a4
                  div          zero, s5, t1
                  remu         a6, t6, s0
                  c.andi       a1, 15
                  sra          t2, t0, s2
                  xori         s3, a0, 503
                  and          t5, t2, a0
                  c.mv         s2, a6
                  slli         zero, a6, 31
                  c.nop
                  mulhu        a3, s11, tp
                  slli         s4, gp, 29
                  c.srai       a4, 8
                  rem          t2, a0, s6
                  c.lui        a4, 8
                  divu         t4, a5, s7
                  div          tp, sp, t4
                  slli         s10, gp, 9
                  c.andi       a5, 1
                  mulh         s2, sp, a5
                  c.nop
                  sltiu        s6, a6, 436
                  c.sub        s0, a1
                  c.xor        a5, a3
                  c.nop
                  c.add        s10, s10
                  c.srli       a0, 4
                  slt          a6, sp, sp
                  c.or         a4, a3
                  divu         t2, s11, t4
                  slli         s7, t2, 17
                  xori         a3, t5, -1604
                  c.sub        a1, a4
                  c.sub        a5, a2
                  c.and        a5, a4
                  mulhsu       s3, gp, t3
                  rem          s4, t3, s10
                  lui          a0, 163788
                  c.and        a0, s1
                  c.and        s0, a3
                  andi         t1, s11, 582
                  srai         s5, a3, 13
                  slli         s7, sp, 28
                  divu         a1, s7, s3
                  srai         t4, a2, 6
                  slti         zero, sp, 1242
                  srai         a4, s11, 17
                  c.add        s10, a0
                  sll          a1, t4, s2
                  sltiu        s2, a5, 1788
                  c.srai       a0, 6
                  addi         s0, t1, 421
                  mulhsu       gp, a1, a5
                  c.li         s2, -1
                  sra          gp, s11, s4
                  mulh         tp, s7, s4
                  mulhsu       s10, ra, a3
                  auipc        s4, 622391
                  nop
                  slt          a5, a7, s9
                  c.nop
                  slt          tp, s9, a2
                  or           a4, a1, zero
                  remu         s2, s5, zero
                  andi         t0, a0, -985
                  c.sub        a4, a5
                  sra          t5, t6, s1
                  srl          s6, t1, a1
                  add          t0, s9, t0
                  sub          s5, zero, t1
                  andi         s9, a0, 184
                  ori          s1, s4, 1976
                  mulhu        t0, s2, a0
                  auipc        s5, 84000
                  c.lui        s9, 25
                  xori         s9, s3, 542
                  c.mv         s8, s1
                  nop
                  srai         a5, t0, 24
                  c.lui        s9, 27
                  c.li         s10, 12
                  xor          s4, a7, t2
                  c.addi       t6, 26
                  xori         s3, t4, 979
                  c.or         a0, a0
                  auipc        t3, 710569
                  mulhsu       s9, s4, a2
                  srli         t5, t6, 30
                  c.mv         a5, s5
                  xori         s4, a6, -1167
                  slti         s0, s3, 961
                  c.srai       a5, 21
                  slli         ra, a4, 4
                  and          a4, s5, s8
                  divu         zero, t5, a3
                  c.sub        a1, a0
                  auipc        gp, 755993
                  xori         gp, t1, -1517
                  and          gp, sp, t4
                  xor          a6, s0, s1
                  c.andi       a3, -1
                  ori          a6, s10, -1889
                  c.andi       a4, 1
                  rem          t3, t0, a0
                  c.xor        s0, a0
                  nop
                  nop
                  mulhu        t6, t2, sp
                  srl          a6, t1, a0
                  and          s1, t4, a3
                  slt          s4, t3, gp
                  xor          t3, t5, t2
                  c.lui        a7, 30
                  andi         s3, t1, -1587
                  sra          s4, s8, s0
                  addi         s10, a3, 833
                  mulh         s6, a6, s11
                  c.srli       a4, 31
                  slli         s8, s9, 26
                  remu         s5, zero, t3
                  c.li         a5, -1
                  nop
                  c.mv         t5, s9
                  xor          t0, s11, a6
                  sll          t1, s11, t2
                  c.and        a4, a5
                  mulh         t2, s9, a6
                  and          s4, s0, ra
                  c.srli       a3, 4
                  add          t5, s3, zero
                  c.add        t2, s11
                  c.lui        ra, 5
                  or           t3, s2, gp
                  mulh         t3, s5, t0
                  mulhsu       s5, s9, ra
                  srai         gp, s9, 17
                  sltu         t0, t3, s4
                  mul          t3, a7, s11
                  add          a6, s7, a5
                  divu         t2, t4, t0
                  sra          a0, zero, ra
                  c.andi       s0, -1
                  mulhsu       tp, sp, a0
                  c.addi       s3, 30
                  c.lui        t0, 10
                  xor          a1, s8, zero
                  mul          s8, t1, s11
                  mul          t3, a6, s1
                  c.srli       a4, 24
                  remu         a6, t5, s5
                  c.srli       s1, 16
                  mul          s4, s4, s3
                  c.andi       a4, -1
                  sub          s6, s6, t1
                  sll          s10, s0, ra
                  remu         t6, a1, s11
                  add          a3, s1, a0
                  c.addi       t2, 18
                  mulhu        t0, s2, sp
                  srl          a7, s4, s1
                  c.nop
                  slt          t6, a1, t1
                  mulhsu       s6, zero, s5
                  andi         gp, s9, -423
                  mulhu        s7, s4, a5
                  mulh         a7, t1, s10
                  c.srli       a0, 2
                  c.mv         t1, a6
                  c.lui        a5, 26
                  slti         s9, a7, 1115
                  sub          a7, s5, s10
                  c.and        a4, a5
                  c.xor        a5, s0
                  rem          s3, a5, s1
                  xor          tp, t2, t0
                  srli         s8, s7, 11
                  c.mv         s10, a2
                  c.li         s2, -1
                  c.lui        a1, 25
                  mulhu        t5, a3, s6
                  rem          s8, s9, a6
                  c.or         s0, a5
                  c.sub        a3, a0
                  c.addi       t3, -1
                  sra          zero, s6, t2
                  c.li         s2, -1
                  c.addi       s2, -1
                  ori          s8, t1, -1554
                  c.srai       s0, 16
                  c.lui        a5, 17
                  mulh         a6, s6, ra
                  c.xor        a5, a4
                  sra          gp, zero, s5
                  remu         a3, s6, t4
                  add          t2, zero, t0
                  c.mv         s9, t2
                  auipc        tp, 427384
                  mulhsu       s3, ra, s10
                  andi         s0, a0, 1982
                  xori         t6, s3, -23
                  nop
                  sra          t5, a2, a4
                  mul          a1, t0, s4
                  c.xor        a1, a3
                  c.lui        s8, 21
                  or           s2, s3, t4
                  slt          s7, s7, a3
                  slt          s0, s3, t2
                  c.lui        a7, 4
                  slli         a7, t2, 3
                  c.nop
                  addi         a4, s3, 1569
                  c.mv         s0, s4
                  c.slli       t4, 20
                  or           s7, t5, tp
                  nop
                  addi         t6, t3, 540
                  srl          s4, s10, a0
                  slti         gp, s6, 231
                  mulh         t1, a2, sp
                  c.srli       a1, 8
                  c.nop
                  c.or         a4, s1
                  slt          s1, t6, a1
                  slt          s3, s4, s1
                  sll          s10, s4, t5
                  mulhu        s10, s1, t5
                  div          a0, t6, t1
                  c.add        s4, s2
                  mulhu        s9, t2, s8
                  c.add        s3, a7
                  c.srai       a5, 1
                  rem          a6, s6, s5
                  c.nop
                  ori          s10, t3, 1625
                  c.and        s1, s1
                  add          a3, t4, gp
                  c.nop
                  rem          tp, t4, t1
                  lui          s6, 27154
                  xor          zero, s6, a7
                  c.mv         a1, a1
                  c.nop
                  remu         s7, tp, t0
                  c.mv         t2, a6
                  srai         t0, a1, 12
                  div          s1, s9, a6
                  c.lui        a6, 12
                  c.lui        s6, 22
                  c.lui        a0, 5
                  c.slli       s3, 1
                  srl          s2, a3, t4
                  rem          tp, tp, s10
                  xori         a7, s1, 1455
                  div          a5, t2, s6
                  srai         a0, t3, 3
                  c.sub        a4, a4
                  sltiu        a4, s0, 1631
                  c.xor        a3, a3
                  sll          a1, t2, a7
                  c.xor        a4, a1
                  c.li         t2, -1
                  rem          a5, a5, a1
                  sltu         a0, s10, a3
                  addi         t3, s6, 1096
                  rem          t4, gp, t5
                  mulh         gp, t3, t4
                  c.andi       a3, 23
                  div          gp, tp, tp
                  c.addi       a5, -1
                  slti         a0, s8, -1088
                  sltu         t6, a1, a4
                  mul          a6, a2, s0
                  and          s3, s9, a6
                  c.xor        a3, a1
                  srli         t6, t4, 10
                  xor          s4, s4, s10
                  auipc        t6, 40635
                  sltiu        s10, a6, -1713
                  c.srai       s0, 7
                  c.sub        a3, s1
                  srli         t0, t4, 8
                  sub          s7, a5, s8
                  and          t2, s1, s2
                  xori         t0, s2, 37
                  c.add        t0, s10
                  ori          s3, a0, -1460
                  sll          a6, t3, s2
                  srl          s3, t3, t5
                  rem          a3, t2, s2
                  c.add        a4, a4
                  slli         s6, s8, 26
                  mul          s9, gp, ra
                  srl          s2, a5, s5
                  c.lui        ra, 8
                  c.li         s9, 19
                  sltu         s3, s8, ra
                  lui          gp, 985868
                  or           a1, s8, a0
                  slti         s10, s10, 610
                  slt          t1, s11, tp
                  c.slli       s6, 26
                  c.slli       s1, 31
                  sltu         t0, s9, s0
                  c.and        a1, a4
                  srai         t4, s3, 6
                  srai         s7, zero, 4
                  nop
                  xori         s7, t1, 186
                  c.li         a7, -1
                  slti         t0, t6, 1068
                  xor          t2, a5, s8
                  lui          gp, 205909
                  srli         a4, sp, 25
                  sltiu        s10, ra, 54
                  auipc        a4, 227376
                  xori         s9, sp, -1773
                  divu         zero, s2, t6
                  slti         a3, s4, 1801
                  or           t5, a4, s0
                  srai         a0, a6, 24
                  remu         gp, t2, s6
                  srli         a4, sp, 17
                  c.li         a5, -1
                  c.or         a3, a2
                  rem          a5, s1, s6
                  or           ra, t1, tp
                  addi         gp, s8, 1602
                  c.li         a1, -1
                  mulhsu       a6, t3, s9
                  c.li         t1, -1
                  c.lui        a0, 19
                  c.srli       a5, 17
                  andi         a1, a1, 531
                  remu         s7, t6, sp
                  c.add        gp, a0
                  nop
                  c.mv         s0, a2
                  add          ra, t5, s8
                  slti         a4, t1, -864
                  slli         s5, t2, 19
                  auipc        zero, 263255
                  c.andi       a3, 21
                  andi         s1, s8, -525
                  c.and        s1, a2
                  mulhu        s3, a3, a0
                  c.andi       s0, 6
                  c.srai       a3, 6
                  c.slli       s6, 24
                  xor          s9, s6, t0
                  sltu         t1, t5, tp
                  sll          t4, a0, s7
                  c.add        s7, s7
                  addi         s6, tp, -1021
                  andi         a5, a2, -1817
                  c.or         a1, s0
                  c.srai       a1, 24
                  lui          s4, 223131
                  sub          a5, a6, s8
                  c.srai       a0, 12
                  mulhsu       s6, s5, a3
                  xor          t5, a6, s11
                  srli         a4, t3, 5
                  srai         a0, s9, 12
                  sll          zero, s8, a6
                  div          a3, t3, a0
                  srli         t0, s11, 5
                  and          tp, s2, t2
                  addi         s7, a5, 1535
                  c.slli       a6, 8
                  slli         a0, gp, 12
                  mulhu        s7, s8, s3
                  div          a5, tp, t4
                  xor          t4, s2, t6
                  sra          a3, sp, tp
                  ori          a7, a0, 870
                  c.and        a5, a1
                  remu         a5, s2, s5
                  c.sub        a4, a3
                  c.and        s1, a4
                  c.addi       a0, -1
                  andi         t3, a4, -259
                  add          a5, s10, tp
                  c.li         t5, -1
                  slli         s0, ra, 24
                  mulh         s6, t2, a5
                  c.andi       s0, -1
                  c.or         a1, s0
                  sll          s3, s6, t3
                  divu         s6, a7, a5
                  slli         s8, zero, 14
                  slti         t3, sp, 715
                  xor          t6, s8, a2
                  slli         s4, s11, 1
                  ori          s5, s7, 13
                  addi         zero, s4, 1560
                  xori         s5, t1, -1400
                  divu         tp, t1, s5
                  ori          s10, s3, 252
                  lui          a6, 60753
                  slt          t5, t5, a4
                  mulh         a0, ra, s7
                  remu         a7, gp, s0
                  divu         a1, s0, s3
                  srl          s5, sp, sp
                  c.addi       s2, -1
                  auipc        s2, 306841
                  c.srai       a0, 11
                  c.add        tp, s9
                  lui          t4, 424483
                  c.or         a4, a5
                  sltiu        t3, s2, -154
                  srai         s1, s6, 13
                  srl          a1, s0, t0
                  lui          s3, 237501
                  nop
                  c.srli       a5, 21
                  remu         ra, t5, a5
                  c.sub        a1, s1
                  c.srli       a0, 21
                  add          s0, s8, s7
                  c.slli       s2, 14
                  mulh         zero, tp, t4
                  slti         s1, s4, -532
                  sll          s2, s10, s0
                  c.add        a1, s7
                  c.slli       a1, 27
                  mulhsu       a1, t6, a5
                  c.andi       s0, -1
                  c.mv         gp, a4
                  sll          t5, s0, tp
                  div          t1, a7, s9
                  srai         tp, s11, 31
                  c.nop
                  c.slli       gp, 7
                  c.and        a0, a3
                  addi         a0, a6, 514
                  c.li         a6, 15
                  c.srli       a5, 27
                  srl          tp, a5, t5
                  srl          s0, s5, s0
                  mulhsu       s7, t4, t5
                  sra          zero, a7, ra
                  c.andi       s0, 8
                  sub          s1, s0, s5
                  sra          s0, zero, s8
                  div          s10, a4, a0
                  sltu         t3, s10, a7
                  c.lui        s5, 1
                  c.srli       a4, 10
                  c.srli       a0, 12
                  srli         a1, t4, 2
                  slt          s1, zero, t5
                  sub          t6, s6, a3
                  mulhsu       s4, a7, a3
                  mulhu        s3, s4, ra
                  c.nop
                  c.or         a1, a4
                  xori         s4, a6, 1531
                  auipc        a7, 830725
                  mul          a3, s1, s4
                  add          gp, s2, a4
                  mulhsu       a3, a3, s9
                  c.and        s0, a1
                  auipc        s10, 702621
                  c.nop
                  and          s1, a3, tp
                  lui          gp, 623479
                  sltu         a0, t2, s4
                  c.xor        a0, s1
                  c.srai       a5, 15
                  sra          t4, s10, a4
                  c.mv         tp, t1
                  c.slli       t3, 22
                  c.lui        t1, 1
                  div          s8, s2, s7
                  slt          t4, a6, s0
                  c.andi       s0, -1
                  andi         t0, s8, -1939
                  addi         t0, t1, -184
                  srl          t5, a2, t0
                  or           s2, a2, s11
                  c.xor        a4, s1
                  nop
                  sra          s4, a0, a4
                  xor          a7, a0, s0
                  slti         t6, s8, -1828
                  andi         t5, a0, -1626
                  auipc        tp, 412604
                  ori          s6, tp, -312
                  mulhsu       tp, s8, s1
                  mul          s3, s1, a6
                  c.xor        a0, a0
                  c.xor        s0, a1
                  sub          s10, s7, sp
                  c.srai       s0, 13
                  mulhu        a0, s10, s8
                  sra          s1, t4, a5
                  c.or         a1, s0
                  srli         s1, a3, 19
                  remu         a4, s11, s2
                  c.and        a0, a2
                  andi         s8, t3, -501
                  ori          ra, a3, -1533
                  srl          t2, t1, sp
                  srl          t2, t2, tp
                  divu         s6, a3, s0
                  mulhu        gp, a0, gp
                  addi         s7, a6, -1350
                  mulhu        s10, t5, a6
                  rem          t3, s11, s9
                  c.slli       a1, 1
                  or           s6, a1, gp
                  srl          s5, s6, s8
                  rem          s8, gp, sp
                  slli         a0, s3, 9
                  ori          t4, s5, -508
                  auipc        tp, 560757
                  c.sub        s1, a2
                  lui          t2, 416439
                  remu         a1, a5, t3
                  or           s5, s11, s9
                  xori         ra, tp, 117
                  srai         a1, a1, 16
                  addi         a4, s7, -72
                  mulhu        s3, s7, sp
                  c.li         t3, 14
                  div          s7, a0, s6
                  sub          s3, zero, s3
                  slti         s9, a2, 1628
                  c.nop
                  c.or         a3, s1
                  addi         a3, s9, 874
                  ori          s10, t1, 1479
                  slt          gp, t1, s4
                  slli         a1, a4, 21
                  rem          s10, sp, a4
                  c.nop
                  c.addi       t5, 5
                  sll          t5, s1, t6
                  andi         s7, s1, -348
                  lui          s1, 906981
                  srli         t6, s2, 23
                  c.li         gp, 22
                  and          s7, s9, gp
                  sra          s0, t0, a2
                  xor          a6, a1, t3
                  srai         t2, t3, 6
                  c.li         s9, -1
                  slli         t1, s0, 23
                  srai         t5, s3, 30
                  sltu         s7, s0, s1
                  mulhu        t0, a1, t4
                  c.srli       a1, 10
                  c.or         a5, a0
                  mul          s2, s5, sp
                  c.mv         s4, t5
                  srli         s0, s3, 16
                  c.andi       s1, -1
                  c.add        t4, a6
                  srai         s5, s9, 14
                  and          gp, s5, a1
                  c.and        a0, a2
                  mulhsu       a4, s8, a3
                  auipc        s6, 186838
                  lui          s2, 911149
                  or           tp, a7, a2
                  xori         s0, t0, -497
                  srai         s3, s6, 17
                  lui          gp, 220865
                  c.srai       a0, 14
                  div          zero, sp, t3
                  nop
                  sll          t3, s9, s7
                  rem          a6, s2, t6
                  sll          s1, s7, s10
                  c.srai       a4, 9
                  c.li         a4, -1
                  sub          tp, t0, s1
                  sra          a0, s9, t3
                  c.addi       tp, 15
                  add          a7, s9, sp
                  divu         t1, a3, a5
                  slt          ra, t5, s11
                  sll          s6, sp, a6
                  div          a0, tp, a3
                  remu         t3, t0, t5
                  addi         gp, s5, 1454
                  c.addi       t0, 30
                  c.lui        t3, 14
                  c.add        s7, a3
                  xori         t5, t1, -996
                  c.li         ra, -1
                  sltiu        a1, tp, -1128
                  srai         a0, s1, 27
                  sra          s3, tp, s5
                  srl          t4, s7, sp
                  or           a5, s7, ra
                  c.andi       a4, -1
                  c.slli       s10, 9
                  or           s2, t1, s6
                  slt          a0, s2, s11
                  c.andi       a4, 23
                  c.srai       a5, 18
                  c.or         a0, s1
                  sub          a7, s8, t0
                  and          t6, t0, s8
                  xor          s5, t0, a5
                  c.mv         a0, a4
                  c.andi       a0, 9
                  c.slli       gp, 2
                  div          t3, tp, a6
                  mulh         a1, a2, t1
                  sll          ra, t5, s5
                  c.lui        t4, 13
                  slli         t6, a5, 1
                  xori         a6, t1, -1400
                  c.andi       s0, -1
                  xori         s1, gp, -187
                  add          a0, t1, t4
                  c.xor        s1, a4
                  mul          s4, t2, a0
                  add          a7, s6, a0
                  c.andi       a4, 22
                  c.srli       a0, 7
                  mulhsu       s2, ra, t1
                  remu         tp, a6, t4
                  c.slli       a6, 28
                  c.sub        s1, s1
                  addi         zero, t5, -139
                  or           t2, s9, tp
                  sll          t5, t2, t4
                  rem          a0, a3, s0
                  c.xor        a1, s1
                  nop
                  slt          t3, s5, s6
                  and          s5, t6, s2
                  mul          s10, s3, a0
                  c.xor        a5, s1
                  add          t6, a0, t0
                  mulhsu       a4, t4, a3
                  sltiu        t0, t1, 177
                  c.addi       s5, -1
                  sll          t1, tp, a3
                  c.li         s2, -1
                  c.sub        a3, a3
                  and          s8, a2, s0
                  c.srai       s0, 17
                  auipc        t2, 764123
                  nop
                  sltiu        s4, a1, -271
                  c.li         t5, -1
                  c.srli       a1, 8
                  add          t3, s0, s5
                  srli         s1, t6, 9
                  sll          t0, gp, s7
                  slti         s8, s0, 1264
                  c.slli       s0, 11
                  mulhu        s10, sp, t3
                  slli         zero, a4, 8
                  and          a3, t4, t3
                  c.srai       s0, 7
                  sltiu        s9, t4, -956
                  divu         s9, s5, zero
                  xor          t6, s8, a5
                  srai         tp, t2, 29
                  c.srli       a0, 5
                  c.add        t3, s9
                  slli         s1, t2, 22
                  auipc        a7, 886414
                  c.mv         a4, ra
                  and          s1, sp, s8
                  divu         t5, a5, t1
                  sra          a4, a4, gp
                  c.add        a1, a0
                  c.xor        a4, s0
                  and          s2, s4, a6
                  mulh         a6, t1, s3
                  andi         s3, s5, -610
                  slt          s4, s10, t4
                  rem          t0, s9, a4
                  sll          gp, gp, t5
                  slt          a3, s10, s6
                  ori          a1, s9, 568
                  andi         t0, ra, 132
                  c.or         a1, a2
                  ori          t4, s10, 366
                  c.srai       a0, 24
                  slti         s0, zero, 718
                  remu         t4, gp, a3
                  remu         t2, s10, s5
                  or           s9, sp, t4
                  auipc        t0, 99799
                  and          tp, s7, t1
                  c.xor        a0, a2
                  divu         t0, a3, s6
                  c.and        a4, a0
                  xor          s8, t5, s5
                  sltiu        s4, a4, -380
                  slli         t4, a4, 17
                  sub          s9, s6, s5
                  slti         a4, s9, 754
                  nop
                  c.lui        a5, 10
                  slli         s7, zero, 25
                  c.mv         t0, ra
                  mulhu        s0, a2, ra
                  and          t2, t6, t0
                  mulhsu       s10, s11, s7
                  c.xor        a1, a2
                  ori          t1, s8, -1078
                  auipc        s3, 216967
                  xor          t6, s9, s3
                  c.slli       s3, 3
                  c.li         s9, -1
                  sll          t5, s3, a1
                  c.slli       a0, 26
                  add          s9, s11, a6
                  addi         s2, a6, -184
                  auipc        a5, 772282
                  slt          ra, s11, a5
                  srli         s1, s11, 10
                  sub          tp, a1, s5
                  mulhsu       t4, a1, tp
                  and          a0, t0, t6
                  divu         s5, t0, s9
                  c.srai       a0, 12
                  c.andi       s0, -1
                  or           gp, zero, ra
                  c.add        s3, t3
                  remu         a3, s6, a4
                  rem          s2, t0, gp
                  c.or         s1, a1
                  c.andi       a1, 13
                  mulhu        s7, s10, a0
                  c.and        a5, a0
                  c.addi       s7, 21
                  mul          t3, s6, tp
                  srai         t3, s5, 24
                  c.srli       a3, 27
                  sra          tp, s0, s11
                  c.addi       s10, -1
                  addi         s2, t5, -1489
                  c.andi       s0, 10
                  ori          tp, sp, -358
                  srli         s10, t1, 16
                  c.add        s8, t1
                  sra          ra, a2, a5
                  addi         a6, t6, 398
                  c.srli       a3, 27
                  sub          s3, t5, s11
                  c.and        a5, a3
                  and          s9, t4, a5
                  c.andi       a5, 5
                  remu         t3, a4, ra
                  sltiu        t3, s3, -1884
                  srai         t6, a5, 27
                  c.li         a7, 6
                  srli         ra, t4, 13
                  slli         s6, gp, 23
                  mul          s8, tp, s11
                  xor          s3, s8, s6
                  mul          s7, s10, t3
                  mul          a4, t3, s7
                  or           t5, t5, s3
                  mul          a0, s3, t5
                  mulhu        t2, s6, t3
                  c.nop
                  lui          a4, 605675
                  c.xor        a5, a2
                  mulh         a7, t4, t4
                  c.andi       a1, 3
                  c.li         s9, 2
                  nop
                  mulhu        s1, s1, a3
                  slli         t3, s1, 26
                  c.mv         ra, ra
                  slli         a4, a7, 11
                  c.slli       s5, 21
                  c.li         s9, 3
                  div          t0, sp, s0
                  lui          s1, 778757
                  sub          gp, a3, a0
                  c.srai       s1, 18
                  slti         a0, s9, -221
                  mulh         s3, s5, t5
                  remu         a3, t0, s2
                  sub          s8, s6, s10
                  c.slli       t3, 21
                  or           s1, a5, sp
                  lui          zero, 127796
                  srli         a7, s1, 3
                  xori         s2, a4, 1867
                  srli         s2, s4, 0
                  sltiu        t6, a3, 1800
                  srl          s4, t4, t4
                  addi         zero, a2, 1999
                  c.andi       a5, -1
                  mulh         s0, t1, s9
                  add          a1, a6, t1
                  mulhsu       s3, tp, s8
                  xor          t2, t0, s2
                  c.srli       s1, 17
                  div          t6, t5, a6
                  c.xor        a3, a0
                  c.sub        a4, a3
                  xor          s0, s10, s7
                  c.sub        a1, a0
                  auipc        gp, 515664
                  c.add        s10, a3
                  c.addi       a1, -1
                  c.add        t6, a7
                  mulhu        s8, s8, a3
                  slli         s6, zero, 22
                  slli         a1, t5, 1
                  auipc        s0, 1020802
                  sra          tp, s8, a4
                  addi         a1, a7, 1079
                  sltiu        a7, gp, -850
                  and          a6, a7, a6
                  c.slli       t3, 3
                  add          t1, a5, t1
                  srai         s2, s9, 30
                  c.srai       a0, 27
                  srl          a0, s6, a0
                  c.and        a3, a2
                  c.xor        a0, a0
                  remu         t5, s6, s3
                  c.andi       a3, -1
                  mulhsu       gp, ra, s7
                  remu         t0, a6, s10
                  c.mv         s4, a1
                  sltiu        t6, t6, -1111
                  c.xor        a3, s1
                  ori          s0, s4, 1839
                  sll          s5, s2, s2
                  div          s7, gp, a3
                  mulh         t1, a2, t5
                  rem          tp, s10, s4
                  xori         a3, s8, -1363
                  addi         t5, zero, 1592
                  c.and        a1, s0
                  and          s10, t2, a0
                  slt          s7, a3, s4
                  sll          t3, t2, s0
                  c.add        s10, tp
                  c.srli       a4, 7
                  add          s2, s11, s11
                  div          s4, t0, s8
                  mulhsu       a5, gp, s10
                  c.addi       s3, -1
                  add          t6, t1, t5
                  mulh         s7, t4, a4
                  slt          a1, s10, sp
                  srli         zero, gp, 17
                  c.add        ra, s11
                  c.andi       a3, 17
                  c.xor        s0, a2
                  c.or         s0, a3
                  sub          a3, a3, s1
                  lui          tp, 50599
                  c.lui        a4, 2
                  c.sub        a3, s0
                  auipc        s5, 119788
                  lui          t6, 288795
                  c.sub        s1, s0
                  c.srli       a5, 29
                  rem          a1, a4, t1
                  srai         a5, s1, 31
                  c.slli       ra, 9
                  xori         a6, sp, -843
                  mulh         t5, tp, sp
                  c.mv         gp, s6
                  c.sub        s0, a4
                  mulhsu       a0, t5, s3
                  auipc        s4, 862220
                  c.srli       a3, 10
                  c.add        t5, gp
                  auipc        a1, 583881
                  c.addi       a7, -1
                  mulh         s2, a3, s3
                  c.sub        a3, s1
                  mul          s8, t4, t5
                  c.slli       s0, 1
                  c.li         s7, -1
                  c.nop
                  slt          s2, t3, t3
                  and          a3, s5, t3
                  slli         t4, s4, 7
                  sll          tp, a2, ra
                  slli         zero, s0, 5
                  auipc        a4, 612824
                  andi         s0, t5, -1505
                  c.mv         a7, a1
                  sub          ra, a3, s8
                  divu         t6, s1, gp
                  c.and        a4, s1
                  ori          a1, t1, -1804
                  xor          t4, a1, s0
                  c.andi       a0, -1
                  lui          a1, 699073
                  c.or         a4, s0
                  c.li         s9, 26
                  xori         a0, t6, 241
                  slli         s2, s5, 4
                  divu         a4, s6, a3
                  c.lui        t6, 1
                  xor          s2, ra, a7
                  auipc        s7, 455373
                  c.addi       a1, 6
                  srai         a6, a2, 7
                  add          t1, s4, t0
                  srai         s4, t4, 28
                  divu         tp, s6, tp
                  rem          t3, t4, s8
                  xor          s9, s5, s4
                  sltu         t1, a0, s5
                  c.or         a1, a3
                  c.mv         s6, s0
                  c.lui        a5, 19
                  lui          t4, 504212
                  andi         a5, s1, -1062
                  sltu         a6, a6, sp
                  xori         t6, t1, 1386
                  div          gp, s3, s9
                  and          a0, t4, s9
                  sub          zero, s9, s0
                  slt          s8, s3, t5
                  c.mv         s3, a3
                  andi         s9, a6, -349
                  c.or         s0, a5
                  srli         a4, t1, 5
                  sub          a3, s4, s2
                  div          t4, a4, s3
                  srli         t6, s11, 12
                  rem          gp, s7, a5
                  sll          s5, tp, t4
                  slt          s9, a0, s10
                  sltiu        tp, s3, -695
                  divu         t1, a3, s10
                  srli         s8, s3, 10
                  xor          t6, zero, s5
                  mul          a6, a7, s5
                  lui          t3, 679724
                  sltu         t2, a1, t3
                  srli         s4, a7, 0
                  add          t6, s3, s10
                  mulhu        a1, a1, s9
                  c.andi       a3, 3
                  sub          a7, t0, sp
                  c.or         a4, a4
                  sltiu        a1, s8, -1900
                  andi         t2, s4, -1136
                  sltiu        s4, a6, -462
                  slli         s8, s9, 16
                  and          tp, gp, a4
                  sub          s6, a2, s4
                  slli         a1, s2, 18
                  ori          ra, s10, -74
                  xor          s9, s1, a0
                  div          tp, a5, a2
                  c.addi       a1, 9
                  srli         gp, s11, 14
                  ori          t2, a3, -1271
                  auipc        ra, 435157
                  div          t0, s5, a7
                  c.srai       s0, 19
                  sll          t4, t1, t1
                  c.mv         t1, sp
                  xori         tp, t0, -1136
                  c.li         s9, 10
                  add          t3, s10, t1
                  xori         s8, t0, -226
                  sra          t2, s5, t2
                  c.srli       a5, 31
                  srl          a5, gp, t0
                  c.lui        s0, 3
                  c.add        t1, s9
                  mulhsu       a3, s2, zero
                  divu         a3, t5, t0
                  c.and        a4, s0
                  lui          a3, 493934
                  andi         a7, t5, 41
                  c.mv         t0, s6
                  c.and        a1, s0
                  c.srli       a1, 24
                  c.xor        s1, a4
                  slli         zero, s0, 10
                  mulh         s2, t3, a3
                  mulhu        tp, ra, s5
                  mulhsu       s10, s7, s10
                  mul          a4, a7, a5
                  c.li         s0, 24
                  srli         s0, t5, 20
                  c.li         a1, 10
                  srl          s9, ra, t4
                  and          a3, s9, t4
                  div          s0, tp, t2
                  xori         s5, t2, 1338
                  slti         s0, s2, 1642
                  slli         s3, a5, 13
                  c.li         s3, 14
                  c.xor        a4, s1
                  nop
                  c.mv         s7, s0
                  mulhsu       s8, s1, t0
                  srli         s10, t1, 28
                  div          s1, t4, a0
                  mulhu        t3, s9, tp
                  div          s9, t4, sp
                  xor          a1, t1, s0
                  c.xor        a5, a0
                  c.nop
                  add          s5, ra, s4
                  c.xor        a1, a4
                  divu         a7, s0, a1
                  nop
                  sltiu        t2, a4, -1667
                  ori          s2, s10, -1407
                  c.xor        a0, s1
                  and          a5, s4, a6
                  c.add        s5, t5
                  xori         s9, s1, 713
                  slt          a5, zero, t0
                  mul          t3, t1, a7
                  srl          s2, s4, s6
                  or           a0, zero, a3
                  divu         s3, t1, gp
                  c.and        a0, a2
                  xor          a4, ra, t4
                  divu         ra, a6, a7
                  div          s1, zero, s10
                  srl          a3, s3, t2
                  and          t0, a6, a7
                  xor          a5, t3, a2
                  c.add        s3, a0
                  c.slli       s0, 4
                  c.sub        s0, a2
                  srl          zero, t4, gp
                  xor          ra, a3, a7
                  c.li         s9, 23
                  auipc        t3, 512560
                  div          s6, s8, t4
                  xor          s2, a0, s9
                  c.li         a7, 0
                  auipc        s4, 742317
                  slt          s0, t5, a5
                  sub          zero, a6, s7
                  sra          t5, a1, s3
                  sltiu        zero, tp, -1454
                  c.li         t4, 18
                  srli         gp, s10, 18
                  slli         a7, t4, 20
                  c.addi       t1, 17
                  or           t3, s11, t3
                  c.li         s0, -1
                  nop
                  slti         a4, a1, -222
                  c.slli       t1, 29
                  c.li         s9, -1
                  xor          ra, s3, a0
                  c.srai       s0, 5
                  mulh         zero, s6, zero
                  andi         zero, s11, 445
                  c.srai       a4, 14
                  sltiu        a0, t2, 1825
                  xor          s1, s9, t4
                  sltu         t6, t5, a3
                  c.srli       a4, 29
                  sra          s9, sp, t3
                  mulhu        tp, s6, ra
                  c.li         ra, 23
                  auipc        a0, 940249
                  c.slli       ra, 9
                  c.srli       s1, 2
                  c.li         s8, -1
                  c.slli       a0, 5
                  srai         s0, s11, 10
                  c.xor        a3, s0
                  add          t3, t2, t0
                  c.xor        a4, s1
                  sltu         s9, a0, t6
                  xor          s0, a4, s1
                  c.nop
                  lui          s9, 470593
                  rem          s4, s3, t5
                  divu         s2, tp, s6
                  or           a4, s9, a6
                  andi         s8, s9, -1070
                  slti         s10, a6, -126
                  mulhu        s4, a5, a0
                  mulh         s6, gp, a7
                  auipc        s2, 133217
                  c.andi       s0, 18
                  auipc        s10, 907397
                  sltu         a0, s9, s6
                  add          s6, a6, t0
                  c.or         a3, a1
                  rem          s2, sp, s2
                  c.or         a5, a5
                  addi         t5, s1, -1137
                  c.li         t2, 31
                  rem          t2, a2, a2
                  srli         t3, s8, 25
                  mulh         s7, a1, s7
                  c.add        t6, a4
                  c.or         a3, a4
                  nop
                  c.add        s4, a5
                  andi         s4, zero, -512
                  c.xor        a5, s1
                  c.srai       s0, 28
                  c.srli       a4, 26
                  or           tp, a5, a5
                  xor          a6, t2, s8
                  mulh         t5, s1, t3
                  mulh         s0, s6, s3
                  c.add        a1, t0
                  c.or         a5, a1
                  rem          a7, t6, s1
                  mulhu        t0, t2, a5
                  c.mv         s7, t6
                  slti         a5, s8, 1049
                  c.li         a0, 24
                  mulhsu       a3, tp, sp
                  c.srli       s0, 4
                  sltu         t6, s8, gp
                  sltiu        s8, a4, 854
                  div          t4, s2, a1
                  divu         zero, a1, t2
                  sltu         a0, s10, a3
                  add          a0, s3, a1
                  nop
                  srai         ra, a6, 8
                  c.or         a4, s1
                  c.add        s3, s0
                  c.and        a5, a4
                  c.add        s4, s6
                  or           ra, t1, s5
                  mul          a3, s10, s1
                  remu         s7, zero, a4
                  c.or         a0, a4
                  srli         a5, t6, 19
                  c.srli       a5, 11
                  ori          zero, a5, 270
                  sra          gp, t5, s1
                  c.srli       a1, 6
                  nop
                  sra          tp, s4, a7
                  add          s8, s8, s5
                  add          t2, a3, t4
                  srai         t3, t6, 8
                  c.srli       a3, 5
                  slli         a0, s3, 28
                  c.slli       a5, 3
                  mulh         s0, a6, a3
                  rem          s7, s7, s9
                  slt          s5, s9, s4
                  mulhu        t2, s3, tp
                  c.slli       t5, 27
                  ori          zero, gp, -1623
                  c.sub        a3, a5
                  and          s1, t1, t0
                  c.li         tp, -1
                  mulh         zero, a5, s8
                  c.andi       a3, 2
                  andi         s7, s7, -26
                  c.srli       a4, 11
                  slli         t4, a0, 22
                  c.srli       a0, 27
                  mul          tp, t2, s8
                  c.mv         s1, a7
                  slt          a0, gp, t0
                  rem          a1, t5, a4
                  and          s6, s7, s3
                  c.andi       a1, -1
                  sltu         t1, s3, s5
                  c.li         ra, -1
                  c.or         s1, a2
                  c.add        s1, a2
                  c.sub        a1, a4
                  sltiu        s0, s10, 1695
                  c.li         s2, 16
                  sltiu        s6, t4, 988
                  or           ra, s9, s3
                  divu         t0, a1, a2
                  xori         a5, a1, 563
                  srai         t2, a0, 8
                  srli         tp, t1, 7
                  sub          t3, s7, t0
                  srai         t5, sp, 2
                  xor          s1, s9, s3
                  c.slli       t0, 23
                  c.srai       a1, 20
                  or           a3, t4, gp
                  c.or         a1, a0
                  div          s7, s5, a7
                  sll          s7, s5, t5
                  sub          gp, s7, a7
                  c.or         a5, a1
                  divu         s10, t1, t6
                  auipc        t1, 613580
                  slti         a1, s9, 1603
                  or           s5, t3, t6
                  c.lui        s3, 31
                  mulhsu       t3, t0, s9
                  xori         a3, t3, 307
                  c.xor        a0, a0
                  slti         s7, tp, -645
                  c.lui        s5, 31
                  sll          s7, tp, s7
                  sll          a0, s4, s2
                  divu         zero, a6, s1
                  add          ra, t0, a7
                  c.mv         t6, sp
                  slli         t4, s5, 31
                  slli         zero, t5, 26
                  sltu         t5, sp, t2
                  and          t5, s7, s11
                  sra          a1, sp, s3
                  srli         a6, t1, 28
                  c.or         a5, a5
                  srli         ra, s9, 10
                  c.sub        a5, a0
                  addi         s3, a2, 909
                  srli         t6, a2, 1
                  srli         tp, a5, 10
                  srli         gp, a2, 8
                  c.srai       a1, 11
                  remu         s0, s4, a6
                  mulhu        a0, t1, s2
                  mulhsu       a0, a6, sp
                  lui          a7, 779801
                  mulh         s4, zero, s6
                  mulhsu       a1, a7, a6
                  ori          s6, a2, 1286
                  remu         s6, ra, a6
                  lui          t5, 831907
                  rem          s5, a7, t1
                  xor          s6, s3, s3
                  c.sub        a3, a5
                  slli         s1, s8, 16
                  xor          t0, a5, gp
                  sll          a4, t6, sp
                  srai         a0, a1, 17
                  lui          t0, 26491
                  div          t3, s2, s2
                  c.sub        s0, s0
                  and          zero, a6, t4
                  mulh         s2, zero, t5
                  c.andi       a5, 2
                  slti         a5, s6, -215
                  sll          gp, s4, s8
                  srli         gp, t3, 1
                  c.or         s0, a4
                  sll          s3, ra, gp
                  c.li         s3, -1
                  c.andi       a1, 3
                  mulh         a3, zero, a2
                  srli         t0, t0, 13
                  div          s0, a7, a0
                  sltiu        a0, a6, -133
                  andi         s1, t0, 427
                  c.srai       s0, 28
                  sra          t6, a5, ra
                  sltu         s2, ra, gp
                  slti         s10, t4, -635
                  c.addi       s7, 28
                  andi         s2, t3, -1804
                  divu         t1, s5, s5
                  c.mv         gp, gp
                  mulhu        t0, a7, sp
                  srli         s10, s9, 27
                  slli         t1, t6, 23
                  rem          s10, zero, gp
                  c.lui        s10, 23
                  sub          t3, ra, ra
                  c.add        a3, a5
                  c.srli       s0, 9
                  divu         t3, ra, s7
                  slti         a1, a1, 851
                  mulhsu       t0, zero, a4
                  mulhu        s7, gp, s11
                  mulhu        t5, a6, s10
                  xor          s1, tp, gp
                  sub          t1, s2, sp
                  srli         s3, a6, 18
                  remu         s8, a3, a4
                  auipc        s1, 619720
                  c.li         s7, -1
                  rem          s6, s8, s4
                  slt          tp, a3, t4
                  auipc        t1, 901045
                  sra          t2, s5, a4
                  addi         s4, t2, -1507
                  and          ra, s3, s7
                  c.sub        s1, s0
                  divu         s2, tp, s8
                  remu         s5, s4, t3
                  mulhu        ra, t6, t3
                  sra          s0, s8, s4
                  c.xor        a1, a3
                  srai         zero, t6, 21
                  div          t6, s6, t4
                  srl          a4, s7, t3
                  lui          s4, 158470
                  div          ra, t2, t4
                  ori          ra, t5, -1650
                  slt          ra, s9, a0
                  add          a1, t0, s4
                  c.srai       a3, 4
                  mulhu        tp, s11, zero
                  sll          s6, t1, tp
                  add          t2, s7, a2
                  c.srai       a3, 1
                  srli         a5, a5, 25
                  srl          a1, a0, sp
                  sub          zero, t3, t5
                  rem          a4, zero, a5
                  xori         t1, t0, -1813
                  or           s9, s11, gp
                  div          s8, a1, a6
                  c.or         a0, a2
                  c.sub        s0, a3
                  c.xor        a5, a3
                  sub          a4, s10, s2
                  slli         t2, s4, 12
                  rem          s1, s6, s3
                  c.add        a3, t1
                  or           s6, s8, s1
                  lui          a1, 274437
                  remu         tp, a0, t3
                  sub          gp, a4, t5
                  mulhu        s0, tp, a2
                  c.add        t5, a2
                  or           t3, a6, zero
                  sltu         a4, s7, gp
                  c.mv         s7, a4
                  c.addi       s5, -1
                  ori          a4, t3, 1517
                  c.nop
                  c.and        s1, a3
                  c.or         a0, a3
                  divu         t6, gp, s2
                  div          tp, s2, t4
                  auipc        zero, 101137
                  sltiu        a0, tp, 1156
                  lui          t6, 801386
                  c.srli       a4, 5
                  c.add        a6, t6
                  srai         tp, gp, 13
                  sltiu        a0, s1, -191
                  addi         t1, a5, -1781
                  remu         s1, s6, t2
                  c.li         s8, -1
                  mulhu        gp, s3, tp
                  c.lui        s5, 4
                  mul          t6, a3, zero
                  c.addi       s9, -1
                  c.xor        a5, s0
                  xor          s4, a4, t4
                  xor          t6, s4, a5
                  slti         s2, s4, 1812
                  c.or         a4, s1
                  remu         a0, s10, s4
                  srai         tp, s5, 20
                  slt          s6, s11, tp
                  sltu         s2, s4, ra
                  xor          s6, s9, s7
                  div          s10, s9, zero
                  andi         s10, ra, -1418
                  mul          s3, s10, t0
                  rem          s0, t6, a1
                  c.li         a5, 20
                  add          s8, s5, s3
                  c.xor        a4, a2
                  addi         a0, s2, -724
                  c.addi       s7, -1
                  sltiu        s2, t2, 1514
                  auipc        a4, 678016
                  c.add        s6, t0
                  add          a0, t4, a4
                  c.nop
                  and          a5, s11, t0
                  ori          s4, s6, 1350
                  c.nop
                  sra          s3, t3, s4
                  slt          ra, s7, a7
                  c.slli       t5, 6
                  slti         gp, zero, 1174
                  mul          ra, s7, s5
                  slli         s7, gp, 27
                  addi         gp, t5, -1175
                  auipc        a1, 214981
                  remu         s3, s11, ra
                  rem          s7, t3, s3
                  c.lui        s9, 16
                  xori         a1, s4, -647
                  and          a0, s10, s0
                  c.xor        s0, a1
                  add          a1, tp, s11
                  c.srli       a0, 11
                  c.srai       s1, 6
                  ori          t3, t4, -844
                  sra          s10, s8, tp
                  mulhsu       s1, a4, t1
                  slti         s5, a0, 494
                  c.xor        a1, a0
                  c.sub        a3, a5
                  remu         a1, s2, a7
                  rem          t3, a1, a5
                  mulhu        s0, sp, t0
                  slt          a7, t1, a1
                  c.lui        a6, 1
                  c.slli       a5, 25
                  xor          a5, s0, s2
                  ori          a5, a4, 969
                  c.add        a0, a3
                  c.sub        a1, a1
                  mul          s8, s8, a4
                  c.and        a4, a3
                  srai         s9, s5, 20
                  c.add        s3, s2
                  mul          a7, s10, a2
                  sltiu        t5, tp, -527
                  and          s0, s5, s6
                  mul          t4, s11, a6
                  nop
                  mulhu        s9, zero, a2
                  sltiu        a4, tp, 1159
                  nop
                  mulh         s4, t1, s10
                  c.addi       gp, 29
                  sub          t1, t5, s2
                  mul          s9, s2, a1
                  mulhsu       s1, tp, s3
                  srl          s6, tp, sp
                  c.sub        a0, s1
                  c.and        s0, a2
                  c.add        t2, a4
                  c.xor        s0, a5
                  slt          s3, gp, t1
                  sltu         zero, t6, a1
                  mul          ra, t2, ra
                  c.nop
                  slli         s2, s8, 18
                  mulhu        a0, s2, t3
                  addi         a4, s0, -354
                  c.lui        s4, 6
                  auipc        t4, 153138
                  andi         a0, s9, -834
                  c.li         gp, -1
                  c.addi       gp, -1
                  sltiu        a6, t3, 509
                  c.add        a4, t0
                  srl          a0, t0, a4
                  lui          t4, 1043239
                  sltu         a4, a1, s1
                  srai         t1, s6, 27
                  nop
                  mulhu        gp, s11, s7
                  mulhsu       a1, s9, s7
                  c.or         s0, s1
                  auipc        t3, 1045037
                  xor          a0, gp, a4
                  nop
                  c.andi       s1, 5
                  c.sub        s0, a5
                  srl          s7, t3, a1
                  mulhu        t2, t1, s0
                  auipc        s3, 616187
                  c.li         t0, -1
                  andi         a0, t3, 344
                  c.xor        a3, a0
                  sra          a1, t4, tp
                  xori         s2, s10, 317
                  sub          t2, tp, s3
                  srli         ra, s11, 0
                  slt          t5, s6, t5
                  c.mv         a1, t3
                  divu         a5, t6, a2
                  srli         tp, a0, 15
                  c.nop
                  srai         a5, gp, 2
                  andi         t3, t4, -1353
                  c.nop
                  sll          s2, s5, s4
                  c.andi       a4, 23
                  c.andi       s0, 8
                  sub          a7, s6, s2
                  c.mv         gp, s6
                  ori          s2, zero, -1454
                  slti         gp, t6, -1453
                  ori          ra, s0, 1344
                  slti         t0, t5, 1540
                  c.slli       s4, 17
                  sub          zero, s7, s9
                  c.srli       a3, 6
                  c.sub        s0, a1
                  c.slli       a6, 5
                  sltiu        tp, s4, -429
                  remu         a4, zero, s2
                  ori          ra, t3, 674
                  and          s3, s1, gp
                  slt          s0, t4, a1
                  c.or         a5, a5
                  andi         a6, s7, 1427
                  c.srai       a0, 27
                  c.andi       a4, -1
                  and          s8, t2, a7
                  andi         tp, s9, -160
                  c.lui        t1, 24
                  sltu         s9, s1, s9
                  sll          gp, a4, zero
                  mulhu        s4, s6, t5
                  slti         t0, a7, -1766
                  slt          a7, s7, a5
                  mulh         t3, a1, t3
                  c.or         a1, a0
                  c.srli       s0, 19
                  c.andi       a5, 28
                  lui          t6, 202264
                  c.xor        s1, a3
                  c.and        s0, a2
                  c.addi       t5, -1
                  remu         tp, s9, sp
                  divu         tp, t4, ra
                  sra          s4, s10, s2
                  sltiu        s9, ra, -1969
                  c.or         s0, s1
                  c.xor        a5, a1
                  mul          a4, t1, s11
                  c.li         t3, 19
                  c.srai       s1, 11
                  remu         s8, t1, s3
                  or           t5, zero, a6
                  sub          s1, s5, a1
                  c.andi       a5, -1
                  c.sub        a4, s1
                  c.srai       s1, 10
                  addi         s7, ra, 1528
                  andi         s1, s10, 165
                  c.srai       a4, 5
                  add          a5, ra, a5
                  sub          a6, s4, zero
                  c.xor        s0, a0
                  slli         t3, ra, 27
                  srli         a4, a6, 18
                  sra          t0, t3, t0
                  sltiu        s8, t1, 306
                  slli         s6, s11, 7
                  sra          s8, ra, sp
                  nop
                  c.sub        s1, s0
                  and          a4, t4, t4
                  sll          a5, t1, a3
                  xori         s8, a5, 1006
                  sll          t4, t0, ra
                  mulhu        ra, a1, t0
                  slt          t2, a5, t2
                  ori          a0, t5, -85
                  add          s1, s8, s8
                  c.nop
                  or           a4, s7, s0
                  c.lui        s3, 13
                  c.sub        a1, a3
                  remu         a3, s5, s2
                  slti         a7, s1, -24
                  sra          t0, s11, s0
                  slli         s2, t2, 18
                  div          s7, s1, s7
                  srli         s7, a7, 17
                  c.srli       a3, 22
                  xor          t0, s11, a5
                  mulhsu       s8, s3, s2
                  auipc        s8, 348531
                  c.and        a4, a4
                  sll          s3, t6, t3
                  c.andi       a3, 2
                  mulhsu       zero, a6, t0
                  divu         a7, t0, t5
                  mul          a1, t5, a0
                  xori         s1, a6, -463
                  sub          t6, s11, s5
                  srli         ra, a1, 25
                  srai         a6, s5, 16
                  c.addi       s6, 31
                  c.andi       a5, 4
                  add          t4, t5, a2
                  mulhsu       a5, s1, a7
                  xor          s7, a1, s7
                  mulhsu       t5, s3, a0
                  lui          a0, 590790
                  mul          s9, sp, s6
                  c.and        a5, s0
                  xori         s6, a7, -247
                  auipc        t2, 177984
                  ori          a7, s10, -2005
                  c.andi       a5, 14
                  c.srli       a4, 27
                  ori          s4, a4, -269
                  mulhu        s8, a2, gp
                  sub          a4, a0, sp
                  and          s10, s4, t1
                  c.lui        s10, 23
                  slt          t1, tp, s2
                  c.or         a1, a3
                  mul          s2, a1, t5
                  mulhsu       t1, s1, a2
                  sra          t6, a6, a5
                  srl          t4, a7, a3
                  slt          s10, ra, a3
                  divu         s5, a3, a0
                  c.slli       t2, 8
                  slt          t4, sp, s7
                  c.srai       a5, 16
                  c.or         a5, a3
                  c.andi       a4, 20
                  remu         ra, s5, s4
                  add          t5, s8, t6
                  sltu         s2, t2, t2
                  slt          a1, s9, t2
                  rem          t5, s0, t6
                  c.xor        a4, s0
                  div          t0, s10, zero
                  addi         s10, t0, 1854
                  slti         a4, a2, -942
                  c.addi       t4, 14
                  lui          s5, 58176
                  c.andi       a0, 5
                  sub          t5, a7, t2
                  auipc        s9, 811819
                  srli         a3, a2, 0
                  nop
                  and          t4, s7, s11
                  auipc        a4, 166636
                  andi         t6, s1, -2019
                  div          gp, a4, s8
                  addi         a7, t3, -632
                  and          a0, tp, a1
                  c.srai       a5, 1
                  slli         s1, s2, 0
                  auipc        a1, 534400
                  srli         t1, s5, 27
                  srai         t0, s4, 23
                  c.addi       a3, -1
                  andi         zero, a2, -556
                  or           zero, a0, t6
                  ori          s1, s6, 1996
                  auipc        a4, 331683
                  c.xor        a4, a4
                  c.addi       a1, 30
                  div          t3, zero, a0
                  c.srli       a1, 15
                  mulhu        s10, s7, t4
                  c.andi       a4, -1
                  c.mv         s3, a0
                  c.sub        a3, a0
                  lui          a6, 957773
                  c.and        a1, s0
                  andi         s7, zero, -1849
                  lui          s10, 479999
                  c.srai       a5, 8
                  srai         t3, s2, 18
                  c.srai       s1, 16
                  xori         s1, a6, 608
                  lui          t1, 462261
                  mulhsu       s5, t0, s2
                  slt          t5, s3, sp
                  rem          s9, s4, a1
                  c.and        s1, a1
                  sub          a3, sp, s6
                  mulh         s6, t6, s11
                  slli         s1, a1, 22
                  c.mv         s6, s7
                  slt          s3, a1, a6
                  or           tp, a5, t4
                  srli         a1, s8, 4
                  mulhu        s7, a4, s3
                  c.andi       a5, -1
                  sll          gp, t4, a0
                  slt          s4, tp, s8
                  srai         s10, s11, 29
                  addi         tp, a6, -1572
                  mulhu        t0, a6, s7
                  mulhsu       s9, a2, s6
                  slli         t2, s1, 6
                  c.add        ra, a3
                  or           s8, a0, t1
                  andi         s2, gp, 340
                  rem          t5, s5, t2
                  andi         a4, s1, 1022
                  mulhsu       tp, t5, a0
                  c.srli       a3, 6
                  c.slli       a7, 14
                  c.srli       a1, 22
                  nop
                  auipc        s1, 347617
                  srl          t0, a7, s9
                  lui          a6, 417714
                  xori         s1, s8, 212
                  divu         t6, s5, s6
                  srli         zero, t5, 3
                  div          t2, s10, a0
                  xor          t6, s7, t0
                  c.mv         s1, s4
                  sltu         t5, s0, tp
                  slt          s4, tp, s6
                  c.nop
                  xori         s6, s0, -1034
                  slli         s5, s4, 31
                  c.and        a5, s0
                  xori         s0, s8, 1282
                  slti         a5, tp, -1873
                  and          s3, a6, a2
                  andi         s6, s2, -932
                  mulhsu       t4, t0, a2
                  auipc        tp, 162209
                  c.and        s0, a0
                  c.srli       a3, 9
                  c.slli       s3, 31
                  xori         s8, a1, -1567
                  c.sub        a5, a0
                  c.add        a0, s10
                  mul          ra, s4, s11
                  sub          s6, a4, s2
                  srai         t1, sp, 7
                  srai         s6, s2, 12
                  sra          t0, t6, t6
                  sltiu        a1, s2, 1597
                  c.addi       a6, 31
                  sltiu        a6, a3, 483
                  c.xor        s0, a3
                  divu         s9, a2, a6
                  c.li         s0, -1
                  div          t1, tp, s5
                  c.addi       s4, -1
                  nop
                  c.li         t0, 29
                  mulh         a6, t5, t2
                  srl          a7, a3, t4
                  c.andi       a0, -1
                  sll          s1, zero, t6
                  xor          s10, s5, s3
                  srli         s5, s4, 14
                  c.lui        s4, 31
                  c.add        s2, tp
                  slti         t4, s8, -59
                  srli         a7, t5, 19
                  or           s1, t3, s7
                  divu         a5, s10, t3
                  sll          a7, a0, t3
                  c.add        t2, t0
                  mul          a0, a0, s2
                  c.andi       a3, -1
                  xor          s3, t1, t3
                  rem          s0, t6, s6
                  rem          s1, s3, zero
                  c.li         s10, 23
                  lui          s0, 620160
                  and          s4, a5, a5
                  remu         a6, s10, s2
                  div          s8, s0, t0
                  c.srli       a3, 20
                  addi         a5, zero, -1551
                  srai         s7, a0, 16
                  mulhsu       s5, sp, sp
                  srli         a3, a2, 12
                  c.nop
                  mulh         s5, a4, t5
                  c.or         a1, s1
                  mulhsu       t1, s6, s3
                  xor          s10, s0, s11
                  xor          t6, s2, t0
                  c.lui        s9, 17
                  rem          gp, ra, gp
                  c.addi       ra, 14
                  nop
                  c.li         s0, 31
                  mulhsu       s8, t6, a4
                  sub          a4, t4, a2
                  c.sub        a4, a5
                  sltu         s2, s9, s4
                  addi         a5, s9, -369
                  c.nop
                  xori         ra, a2, -577
                  nop
                  xor          gp, s3, s6
                  mulhsu       s4, t5, s1
                  rem          ra, s7, a5
                  ori          s10, a5, 1765
                  c.addi       t2, -1
                  mulhu        s8, s9, s9
                  c.slli       s7, 31
                  auipc        gp, 17476
                  div          t3, a4, t4
                  auipc        gp, 88008
                  nop
                  c.sub        a0, a2
                  c.and        a0, s0
                  srai         ra, s5, 21
                  c.addi       s8, 5
                  c.mv         t2, tp
                  sll          s7, a4, t3
                  srli         gp, t5, 15
                  srai         s1, s0, 27
                  addi         s1, a3, -1269
                  addi         s1, t0, 1957
                  mulh         t3, sp, s7
                  c.andi       a3, 8
                  c.srai       a1, 25
                  addi         t5, s5, -1438
                  c.slli       a6, 11
                  c.xor        a0, a3
                  c.andi       s1, -1
                  c.lui        s5, 9
                  remu         s10, s3, a0
                  ori          s7, sp, -549
                  srli         s7, sp, 4
                  sll          t1, t1, a7
                  c.mv         t4, gp
                  c.srai       a0, 27
                  c.addi       a5, 31
                  c.sub        s0, a3
                  c.add        t3, s8
                  div          s4, s4, t2
                  rem          a7, s3, a0
                  andi         s4, s2, 580
                  lui          zero, 717619
                  srli         t0, a6, 4
                  mulhu        t1, a6, a7
                  sll          s6, t5, s3
                  c.mv         s10, sp
                  mul          ra, a0, sp
                  addi         t0, t2, -761
                  divu         a3, s2, s9
                  xor          s10, s3, zero
                  c.nop
                  lui          s1, 907994
                  remu         s4, gp, a3
                  addi         a6, s0, 1444
                  lui          t6, 921113
                  c.or         a1, a5
                  xor          t1, a1, a7
                  xor          s8, t5, s8
                  slli         t3, sp, 5
                  srl          a5, t5, s7
                  c.srli       a3, 24
                  remu         gp, ra, s7
                  mul          s3, a7, s7
                  sll          s10, s8, s6
                  div          s3, s0, s4
                  lui          zero, 890172
                  lui          s10, 631900
                  nop
                  rem          t5, tp, s3
                  sltiu        zero, s0, 590
                  and          s1, t2, t0
                  divu         s10, s10, s6
                  mulhu        s2, a2, t2
                  add          s9, t2, s0
                  mulh         s1, t4, t6
                  c.mv         ra, s4
                  mulh         t6, s3, t4
                  slt          a0, t0, a2
                  c.mv         tp, s2
                  andi         a4, gp, 2019
                  mulhu        s2, a7, a2
                  div          s0, s0, s10
                  slt          tp, tp, s10
                  c.nop
                  mulhsu       zero, t3, s7
                  srai         a5, s4, 30
                  c.sub        a3, a2
                  c.addi       a5, 27
                  mul          t5, s3, s6
                  ori          ra, t3, 156
                  srli         gp, t0, 5
                  srai         s1, s5, 2
                  mulhu        s8, s4, s7
                  sll          zero, t5, s2
                  c.andi       a3, 19
                  c.mv         a5, gp
                  mulhu        a1, s1, a6
                  xor          a7, a0, t4
                  and          s9, zero, s11
                  divu         zero, zero, s10
                  c.mv         s9, s1
                  c.mv         s7, t1
                  c.nop
                  or           t2, t1, s8
                  c.addi       t0, 27
                  c.slli       tp, 2
                  c.or         a0, s1
                  c.sub        s1, a1
                  sltu         s0, s11, ra
                  and          gp, s6, s1
                  or           a0, s4, t1
                  c.nop
                  xori         s4, s3, -1098
                  c.add        t2, t5
                  c.or         a5, a4
                  c.or         a5, a3
                  slli         a0, s7, 3
                  mulhu        ra, t2, s7
                  remu         s7, zero, s9
                  c.lui        a3, 10
                  c.nop
                  addi         s8, sp, -393
                  xor          s1, s10, s7
                  divu         a3, s10, s3
                  c.mv         ra, s8
                  slli         s4, t4, 26
                  c.add        s6, a7
                  and          t5, t4, s10
                  xori         a3, s2, -1435
                  c.add        s3, a1
                  slt          s10, s2, ra
                  and          t2, t6, t2
                  slt          a3, zero, a7
                  c.lui        ra, 31
                  nop
                  c.xor        a4, a1
                  c.slli       s10, 31
                  andi         zero, s5, 1818
                  c.sub        s0, a5
                  add          s5, gp, a1
                  divu         s2, s3, a6
                  c.li         t0, -1
                  slli         ra, t4, 4
                  nop
                  srai         t5, s2, 21
                  c.nop
                  c.nop
                  c.srai       a5, 17
                  srl          s5, t2, t6
                  slti         s5, a7, 862
                  c.and        s1, a5
                  c.addi       t2, 1
                  divu         s0, t4, s3
                  remu         t4, s1, s7
                  sra          s7, t6, a6
                  c.srai       a1, 2
                  c.and        a4, a1
                  sub          a5, s6, t1
                  auipc        a0, 506316
                  ori          t6, zero, -426
                  sltiu        tp, a2, 1178
                  srl          s0, s4, s6
                  sll          t0, s8, a2
                  and          s4, s7, t0
                  sltu         a1, s2, t1
                  div          t3, s8, s6
                  c.xor        s0, a0
                  sll          a3, ra, t2
                  remu         t5, s4, zero
                  sltu         a0, s7, s3
                  c.xor        a0, a2
                  mulhu        s5, s8, a0
                  c.or         a3, a1
                  c.srli       a3, 16
                  nop
                  xor          s8, a5, ra
                  srl          s9, s8, s5
                  c.mv         a6, a2
                  c.xor        a4, s1
                  c.andi       a3, -1
                  sltu         a6, s11, a1
                  c.or         a1, a4
                  sub          a1, a6, sp
                  sltiu        s9, s7, -1213
                  c.xor        a1, a3
                  sra          t6, s5, ra
                  ori          tp, s1, 1146
                  c.srli       a3, 6
                  sltiu        s4, t0, 1371
                  xor          a6, s8, t5
                  c.nop
                  mulh         ra, s3, t0
                  c.srai       s1, 12
                  c.addi       t0, -1
                  c.andi       a3, -1
                  addi         s3, s5, -1988
                  addi         s3, s4, -1353
                  add          ra, s1, t3
                  c.nop
                  c.nop
                  or           s9, s0, sp
                  sra          t5, ra, zero
                  sub          s9, t4, a1
                  srl          s5, s5, t2
                  mulh         a7, t1, zero
                  srli         a6, s11, 20
                  lui          s3, 470453
                  xor          s6, t5, a1
                  srli         a6, a2, 1
                  c.slli       ra, 20
                  and          a3, s0, s6
                  srl          t5, zero, s8
                  slti         a5, a1, -932
                  ori          t5, a0, 864
                  or           t0, s2, a7
                  c.and        a0, a2
                  xori         tp, a2, -785
                  sltiu        t3, t5, 628
                  sltu         s0, t4, s7
                  c.slli       a3, 10
                  and          a0, a1, a2
                  slti         a7, a2, -1240
                  c.and        a3, a5
                  c.addi       t4, 30
                  c.lui        s10, 12
                  c.nop
                  sra          tp, s8, t3
                  lui          t3, 769541
                  c.or         a5, a5
                  c.nop
                  slt          s10, t6, gp
                  c.nop
                  xor          gp, s5, t1
                  c.mv         s10, s7
                  add          s0, s0, sp
                  sub          t6, s5, a3
                  mulhu        s4, s9, a4
                  mulhsu       tp, t3, a1
                  divu         s8, s5, a1
                  c.lui        a4, 14
                  and          s10, s5, s3
                  divu         gp, a0, a3
                  remu         t4, a1, tp
                  slli         s10, zero, 7
                  c.nop
                  mulhsu       s9, t5, a1
                  c.andi       a5, 10
                  c.li         a7, 28
                  slt          s1, t4, gp
                  mulh         t5, a0, t5
                  srl          t6, a3, t3
                  div          a6, s0, a7
                  c.sub        a0, a4
                  sll          s3, s3, t4
                  sltu         tp, ra, t1
                  c.srai       a5, 22
                  ori          t5, a7, 1739
                  srli         s2, t6, 19
                  srli         tp, t0, 0
                  divu         s6, s2, a6
                  c.and        a1, a2
                  mulhu        s5, a4, t5
                  c.add        s1, tp
                  auipc        ra, 259216
                  slt          zero, s1, gp
                  c.xor        s0, a5
                  c.mv         t2, s11
                  xor          a4, s4, s8
                  srai         s3, sp, 3
                  srl          ra, a7, s5
                  c.add        tp, ra
                  mulhu        s0, a0, a1
                  srai         s8, s8, 21
                  c.srai       s0, 30
                  c.xor        a1, a2
                  c.slli       gp, 8
                  c.srai       a0, 21
                  slli         ra, t6, 27
                  c.srai       s1, 28
                  c.lui        a6, 16
                  ori          s6, s6, -1587
                  auipc        s7, 405008
                  c.slli       t4, 25
                  c.sub        a3, a0
                  mulh         ra, t2, s1
                  xori         s0, a6, -1560
                  c.srli       s0, 26
                  c.addi       s7, -1
                  c.slli       s10, 6
                  c.andi       a4, -1
                  c.slli       s0, 6
                  c.sub        a3, a0
                  slt          tp, s0, s7
                  c.sub        a1, a4
                  slli         t4, s9, 24
                  xori         s4, s7, -1913
                  c.nop
                  c.slli       t3, 8
                  add          a0, s6, s3
                  addi         t3, zero, 1371
                  c.slli       a5, 27
                  sltiu        a1, ra, 1359
                  srl          s10, a3, t1
                  xori         ra, s6, -867
                  add          s5, s4, a2
                  c.nop
                  c.and        a3, s0
                  div          a3, t6, t1
                  lui          a5, 884925
                  div          a4, t1, a7
                  mulhu        t1, s11, s4
                  c.addi       t3, 26
                  nop
                  c.nop
                  c.andi       a4, -1
                  mulh         s5, a5, a4
                  rem          a0, zero, t6
                  ori          s5, s11, 1139
                  c.sub        a1, a1
                  c.addi       s0, -1
                  c.xor        a5, a4
                  c.srli       s0, 26
                  andi         s4, s7, -94
                  slli         a4, t4, 23
                  c.andi       s0, 12
                  slli         s7, t6, 27
                  sub          a6, a7, s10
                  c.nop
                  sll          a3, s10, s8
                  remu         s10, s2, s10
                  remu         s3, sp, s5
                  slli         t6, a0, 14
                  c.add        t4, a2
                  ori          a1, t1, -1453
                  c.andi       a4, -1
                  slt          t5, s2, a7
                  remu         s9, s0, t5
                  c.nop
                  xor          zero, a2, a5
                  c.xor        a3, a3
                  xori         t6, s0, -988
                  c.sub        a0, a0
                  or           s4, a6, gp
                  lui          s2, 209722
                  c.lui        t1, 27
                  sub          s8, s10, a0
                  c.li         a5, 10
                  or           a4, s9, s2
                  c.nop
                  lui          a0, 519679
                  sltu         a0, s9, s2
                  div          gp, tp, s5
                  slti         a3, s4, 889
                  c.srli       a4, 17
                  auipc        s5, 613213
                  srai         s2, s10, 20
                  c.sub        s0, a3
                  sltu         t6, s8, a2
                  c.nop
                  add          s9, a0, s5
                  c.mv         s5, t2
                  mulh         gp, s7, a4
                  divu         s2, s3, t6
                  c.andi       a4, 19
                  slti         t2, s9, 112
                  sltu         s5, t6, t4
                  lui          a5, 949714
                  slt          s2, t3, t4
                  c.xor        a3, a0
                  addi         a4, s6, 269
                  c.lui        a5, 11
                  sltu         a5, s7, gp
                  divu         t3, s3, t4
                  div          t3, t1, t1
                  mulh         s3, a6, s9
                  sll          s6, s2, s7
                  ori          t3, s9, -1447
                  srai         s9, sp, 26
                  div          a0, a6, s6
                  c.sub        a4, a5
                  slli         s7, s8, 24
                  c.li         ra, 12
                  sub          t5, a6, a3
                  c.and        a0, a1
                  c.lui        a3, 11
                  mulh         s0, a5, s1
                  nop
                  divu         s6, t1, t5
                  c.addi       t3, 28
                  slli         t1, a4, 24
                  slt          s6, s4, gp
                  c.li         t5, -1
                  mulh         gp, a5, s10
                  c.or         a3, s0
                  srl          a3, s5, t0
                  mulhu        s4, s7, s10
                  c.nop
                  c.add        t0, ra
                  mulhsu       s4, s6, t5
                  sra          zero, a2, s4
                  c.li         t3, -1
                  srli         t2, s4, 21
                  xori         a0, t4, -929
                  divu         t2, t5, sp
                  c.or         a3, a5
                  c.slli       s7, 12
                  sltu         s9, t3, s5
                  slti         a0, a4, -1335
                  c.or         s1, a0
                  mul          gp, a3, t4
                  c.mv         s5, a7
                  mulhu        s8, ra, s4
                  c.li         t4, -1
                  sll          s6, s10, s11
                  lui          s9, 724240
                  lui          s2, 814752
                  srai         t0, s10, 3
                  divu         a7, s2, s7
                  srli         s7, s2, 2
                  srli         s10, s8, 11
                  srli         s0, a5, 15
                  c.lui        s1, 13
                  rem          s5, t0, a0
                  srai         tp, s2, 30
                  andi         a1, a5, -1568
                  mulhu        t5, t6, a3
                  c.slli       a7, 12
                  xori         a0, a0, -778
                  c.slli       ra, 13
                  srl          a4, s4, t3
                  sll          s10, t5, a1
                  sltiu        t3, s9, 2025
                  rem          a6, t0, t5
                  c.xor        a3, a0
                  c.xor        a0, a2
                  c.li         t0, -1
                  sltu         s7, s5, gp
                  c.xor        s0, a3
                  srli         s6, a2, 14
                  srl          s4, s1, a2
                  c.or         a5, s1
                  sltu         s5, a6, s6
                  andi         a7, a0, 1475
                  c.slli       s8, 23
                  xor          a6, tp, t3
                  remu         s0, a0, a4
                  mul          gp, t3, a1
                  srl          ra, t4, t6
                  sltu         t6, a4, t5
                  sra          s6, t4, t6
                  c.mv         s10, t6
                  c.sub        a4, a1
                  srl          a0, a1, t4
                  add          s5, t5, a3
                  divu         s5, t2, t0
                  c.andi       a0, 2
                  mulhu        a5, t3, s7
                  add          s10, s0, sp
                  srl          gp, a3, t0
                  c.li         s10, -1
                  div          s10, s4, s9
                  mulhsu       a5, a1, t3
                  rem          t3, a5, s10
                  srli         s8, t2, 18
                  c.mv         tp, a5
                  c.xor        a1, a3
                  srli         a4, sp, 21
                  nop
                  slti         a0, sp, -396
                  sltu         s4, sp, s5
                  srli         s10, a6, 14
                  c.srai       a1, 23
                  srai         tp, s2, 30
                  c.mv         a6, a2
                  rem          ra, t4, zero
                  nop
                  ori          a6, t4, 648
                  remu         s7, t4, t4
                  and          a4, s3, a1
                  srai         s0, a4, 7
                  c.xor        a3, s1
                  c.nop
                  sub          s4, t4, a1
                  addi         a5, t0, -901
                  slli         s5, s3, 2
                  addi         tp, gp, -403
                  sltu         a7, a3, a1
                  nop
                  c.slli       t1, 3
                  slli         a1, a3, 21
                  srai         s10, s11, 2
                  srai         t0, a3, 31
                  c.addi       a4, 8
                  xori         t1, t1, 608
                  add          t5, a0, s8
                  andi         zero, t0, -1033
                  c.nop
                  c.li         s9, 6
                  c.nop
                  mulhu        a3, a4, t1
                  c.srai       a1, 25
                  c.lui        s4, 25
                  ori          s6, s6, -1439
                  mul          s1, zero, s7
                  mulhsu       t6, a2, t6
                  rem          zero, s4, sp
                  c.add        t0, a0
                  c.add        a5, sp
                  c.nop
                  c.sub        a0, a3
                  c.or         s0, a5
                  sub          a0, s1, s7
                  c.addi       t6, 10
                  xor          t3, t1, zero
                  srai         s1, tp, 8
                  mul          a0, t6, s6
                  slti         s2, s0, 573
                  xori         t0, a4, 1497
                  rem          s3, a7, s10
                  lui          t6, 403858
                  sub          s10, s7, t3
                  slti         s8, gp, 288
                  slt          t1, s1, sp
                  mulhsu       t0, zero, s0
                  slti         a0, gp, 950
                  c.and        s0, a1
                  c.add        ra, t3
                  remu         a5, s1, t2
                  c.lui        s7, 5
                  slt          a5, s5, s11
                  divu         s3, a5, t2
                  c.nop
                  c.and        a5, s1
                  auipc        t1, 741131
                  c.mv         s7, s10
                  sll          t4, t3, s5
                  srai         a5, a1, 5
                  addi         gp, t3, 314
                  c.li         a6, 7
                  c.li         s5, -1
                  c.add        a7, ra
                  c.mv         t5, sp
                  c.lui        s4, 26
                  c.add        a6, a4
                  auipc        t0, 856635
                  srai         t0, s3, 24
                  c.sub        s0, a2
                  c.sub        s1, a3
                  add          zero, s9, sp
                  nop
                  remu         s8, t3, t4
                  sll          s7, a5, s9
                  ori          s6, sp, -1190
                  sltu         s10, s9, t0
                  or           a6, s6, t0
                  mulh         t6, s8, s10
                  div          a7, s4, a2
                  mulh         a7, s1, a6
                  or           a0, t4, t3
                  sltiu        s7, zero, 583
                  rem          ra, a0, a1
                  divu         s6, s0, tp
                  ori          s10, a1, 1666
                  slt          a5, s10, a0
                  nop
                  c.sub        s0, a5
                  div          gp, t3, s8
                  c.sub        a4, a3
                  sltu         s4, a3, zero
                  nop
                  sltiu        s3, s7, -594
                  c.nop
                  mulhsu       tp, s8, s5
                  mul          a7, a6, t3
                  andi         a0, s3, 517
                  and          a6, a1, s10
                  c.li         s8, -1
                  c.srli       a0, 12
                  nop
                  srli         s5, s9, 28
                  srl          s2, s9, tp
                  c.addi       ra, -1
                  srai         t3, a4, 12
                  c.li         s1, -1
                  c.mv         s6, a2
                  sub          a4, a0, ra
                  srai         zero, s4, 10
                  ori          gp, a3, -1526
                  sub          t6, s1, t2
                  slli         t3, a5, 31
                  div          s9, a7, s3
                  nop
                  auipc        a3, 500846
                  divu         s4, gp, t4
                  mulh         zero, a5, t3
                  c.and        s1, a3
                  ori          a4, s1, 1267
                  nop
                  slti         tp, tp, -2032
                  c.or         a1, a1
                  andi         t0, a2, 417
                  c.or         s0, a1
                  c.lui        s0, 29
                  xori         a5, t1, -1555
                  sub          a5, sp, ra
                  c.lui        s1, 4
                  remu         a1, t6, a0
                  c.add        s0, s7
                  c.addi       t4, -1
                  andi         s5, s10, -1103
                  andi         a1, s8, 1185
                  sub          s7, ra, a5
                  c.addi       s1, -1
                  mulh         t3, s9, s6
                  c.sub        a0, a0
                  c.xor        a3, s1
                  mul          s9, a0, s9
                  add          s2, a4, tp
                  divu         a3, t4, a1
                  c.sub        a4, a4
                  c.or         s0, a1
                  sltiu        s5, a1, -1131
                  sltu         s0, a4, a1
                  add          s1, sp, a6
                  c.xor        s1, a4
                  c.mv         t0, ra
                  mulhsu       t1, a4, t0
                  sll          a4, a6, s0
                  div          a4, s6, sp
                  auipc        t1, 19239
                  mulhsu       a4, s8, t5
                  sra          a0, a1, s7
                  srl          a4, gp, gp
                  div          t1, s6, a7
                  or           t4, gp, s2
                  or           t1, s2, a3
                  mulhsu       a1, a3, s4
                  c.lui        s9, 9
                  div          t1, s1, a4
                  xor          gp, s1, a0
                  c.andi       a3, 16
                  and          a5, zero, s2
                  sll          s4, s9, tp
                  c.xor        a3, s0
                  mulhsu       a1, s9, a6
                  slli         t3, t6, 9
                  xor          a3, tp, s5
                  c.xor        a5, a5
                  nop
                  div          s6, t1, t2
                  add          t5, s11, s9
                  c.addi       a1, -1
                  add          s8, a1, s1
                  c.srai       a3, 6
                  c.srli       a1, 7
                  srli         a1, s6, 20
                  c.li         s5, 10
                  slli         t0, t1, 25
                  xor          t0, a1, s3
                  mul          a3, t2, s4
                  c.addi       s8, -1
                  c.add        tp, s6
                  slt          s8, a7, s6
                  remu         t2, s4, a1
                  sltiu        ra, s3, 608
                  c.andi       a5, -1
                  rem          s5, s7, a5
                  add          s0, s5, s10
                  divu         a0, a6, s1
                  c.addi       tp, -1
                  c.or         s1, a5
                  addi         a7, t5, -900
                  srli         tp, s1, 11
                  c.srli       a0, 21
                  c.sub        a5, a1
                  xor          s5, t0, s1
                  andi         a6, a0, 233
                  or           s4, t5, t0
                  c.xor        s1, s0
                  div          s7, zero, s9
                  sub          s5, s1, s6
                  auipc        a6, 788266
                  lui          s7, 434028
                  c.slli       tp, 27
                  srai         t4, t2, 2
                  mulhu        s5, s2, s4
                  or           zero, a1, s1
                  c.andi       a1, 11
                  xor          a7, s6, a3
                  xori         s5, a7, -1702
                  c.and        s0, s1
                  divu         t4, ra, s2
                  c.or         a4, a0
                  mul          t6, a6, a7
                  srai         a4, t4, 17
                  and          a4, s11, a6
                  and          t0, a1, t2
                  xori         gp, a7, -13
                  c.srli       a5, 5
                  addi         s2, gp, -1169
                  andi         s1, t2, -1193
                  nop
                  andi         s5, t0, -580
                  auipc        s10, 684376
                  c.nop
                  c.sub        a5, a3
                  c.srli       a5, 27
                  c.nop
                  c.add        a1, sp
                  mulhsu       a1, s3, t0
                  div          s8, t0, a3
                  c.add        s7, s0
                  c.xor        s0, a0
                  slt          s1, s11, s7
                  sub          t2, gp, a0
                  mulhsu       t6, s2, s1
                  c.mv         s10, a4
                  c.srai       a4, 1
                  srli         t4, s7, 19
                  andi         s1, t2, 46
                  c.or         a4, a3
                  srai         t6, s9, 15
                  c.and        s1, a4
                  c.srli       a3, 30
                  c.addi       s3, -1
                  mulhu        t0, t1, s0
                  c.lui        t0, 22
                  c.andi       s0, 16
                  c.slli       s4, 22
                  sltiu        a1, s7, 561
                  srai         s0, t0, 26
                  mul          a5, t5, a7
                  c.or         a0, a3
                  c.srli       s1, 22
                  c.mv         t2, s5
                  andi         a3, s0, 1780
                  c.nop
                  xor          t1, t4, s11
                  c.srli       a5, 21
                  addi         ra, t1, 1994
                  rem          a5, a0, s1
                  c.lui        t0, 22
                  andi         a3, s4, 1490
                  xori         s9, s6, 334
                  sll          a0, s11, s5
                  c.add        t0, tp
                  xori         s5, sp, -1475
                  slli         a4, s6, 24
                  c.srai       a4, 6
                  sltu         s5, s7, s0
                  andi         a6, s3, -216
                  xori         a1, s0, 323
                  srl          a5, t5, s3
                  sra          s7, a1, a7
                  c.mv         t0, s1
                  sll          s0, a1, a0
                  sra          s2, ra, sp
                  c.andi       a3, -1
                  rem          s4, a1, s11
                  srl          a0, s0, t1
                  remu         s5, s0, sp
                  c.or         a4, a5
                  srai         a5, gp, 8
                  remu         s2, s5, a1
                  mulh         s0, t4, s2
                  addi         s9, ra, -940
                  c.addi       a5, 26
                  c.li         a4, -1
                  mulhsu       t1, gp, zero
                  c.add        t4, tp
                  divu         ra, t1, s8
                  srai         t0, s9, 17
                  sub          s10, a7, a3
                  remu         t3, s10, a5
                  remu         s2, a3, t3
                  lui          gp, 948969
                  mul          t0, gp, a6
                  auipc        t2, 149214
                  sra          t1, t2, s7
                  xori         a1, a4, 1273
                  c.add        s3, ra
                  c.slli       a4, 30
                  xor          ra, s9, a3
                  xor          t3, t6, s1
                  c.lui        a3, 18
                  c.addi       t0, 7
                  srai         s4, t6, 20
                  c.mv         s6, a2
                  c.srli       s1, 27
                  and          t0, tp, s5
                  c.add        t3, gp
                  xor          s5, s4, a7
                  xori         s4, s3, -839
                  slti         s0, t6, 1506
                  remu         tp, t0, t1
                  c.slli       a7, 24
                  srai         s0, a7, 22
                  ori          s0, t4, 1285
                  c.srai       a5, 31
                  mulh         t6, s0, t5
                  c.sub        a4, s1
                  c.add        ra, ra
                  mul          tp, t4, a2
                  auipc        s2, 1010520
                  add          s3, t1, s5
                  sltiu        s8, a6, -34
                  sltiu        t1, t3, -541
                  c.andi       a3, -1
                  c.or         a1, s0
                  c.nop
                  lui          a6, 312208
                  mulh         s0, s1, a2
                  srl          s5, t2, s2
                  c.slli       t0, 23
                  sltu         ra, s10, s9
                  c.nop
                  lui          s8, 1025122
                  or           a0, s11, tp
                  slli         gp, a2, 27
                  divu         zero, a2, t2
                  c.and        a4, s1
                  srai         s6, a1, 14
                  or           a3, a4, t1
                  srli         s4, a3, 26
                  c.nop
                  sltiu        t2, s4, 1149
                  or           zero, a5, a5
                  c.andi       a1, 29
                  c.add        s0, s2
                  andi         ra, a0, 794
                  c.srai       s0, 22
                  nop
                  rem          a1, t2, a3
                  c.srli       a3, 31
                  sra          a3, sp, s6
                  sll          tp, a7, zero
                  c.sub        s0, a5
                  sltu         s10, s0, s8
                  c.and        a1, a2
                  auipc        zero, 900690
                  div          a3, s2, a0
                  rem          a7, t3, s9
                  lui          t3, 1048191
                  andi         s0, a1, 1303
                  slt          a1, a6, s6
                  c.xor        a4, a0
                  c.nop
                  c.sub        a3, a4
                  c.andi       s0, -1
                  mulhu        s4, t3, t6
                  rem          gp, s8, s11
                  c.li         tp, 7
                  and          a7, tp, a0
                  ori          a1, a2, 342
                  slt          s10, s2, s4
                  mulhu        s10, a0, a5
                  slt          s0, s5, s1
                  c.mv         a4, sp
                  andi         s10, a7, -782
                  c.and        s1, s0
                  c.li         s0, -1
                  c.addi       ra, -1
                  mul          t6, a1, ra
                  c.lui        gp, 8
                  c.mv         a4, t0
                  lui          s4, 888105
                  ori          a3, s10, -830
                  c.nop
                  c.xor        s0, s1
                  add          t3, s3, s7
                  add          t0, s9, a1
                  sll          a3, tp, t2
                  slti         s10, a7, -345
                  sltiu        s2, s11, 1791
                  c.addi       s6, 25
                  c.add        a3, s8
                  c.li         a3, 23
                  slli         a4, a0, 17
                  xor          a6, a1, t6
                  c.srli       a5, 14
                  xor          a0, tp, a7
                  c.and        s1, a5
                  auipc        t6, 444245
                  c.slli       t1, 16
                  slli         s10, t4, 5
                  c.sub        a3, a0
                  c.addi       tp, -1
                  sll          zero, s11, t5
                  auipc        s10, 346391
                  c.srai       a0, 5
                  c.mv         s4, s3
                  div          t4, t6, a2
                  nop
                  c.srai       a5, 9
                  srli         s5, t3, 13
                  srai         s10, a0, 4
                  ori          s1, t0, -770
                  srli         s4, t3, 8
                  auipc        s4, 29667
                  and          a6, t0, t2
                  c.nop
                  mulhsu       t6, t3, a5
                  c.andi       a0, 5
                  c.addi       s0, -1
                  mulh         s0, s0, t4
                  mulh         t1, a2, a1
                  xori         t3, a0, 524
                  mulhu        t1, t1, sp
                  remu         s10, s0, t5
                  c.li         a6, -1
                  slti         a7, a7, -1129
                  and          s7, s0, t2
                  sub          a5, a0, t6
                  divu         s1, a6, t3
                  c.add        s0, s2
                  c.sub        a3, s1
                  c.srai       a0, 29
                  sltiu        s6, s11, 574
                  c.and        s0, a1
                  remu         s6, t3, s2
                  sltiu        t1, s5, 906
                  rem          s3, t0, a5
                  c.slli       a7, 10
                  remu         s2, s10, s3
                  c.slli       s1, 8
                  c.srli       a4, 9
                  div          s9, t5, s5
                  rem          s5, s1, s8
                  andi         a5, t3, 261
                  c.or         a1, a2
                  srli         s1, a6, 5
                  c.nop
                  c.srai       a3, 10
                  c.sub        s1, a5
                  c.addi       t2, -1
                  sra          a3, s7, sp
                  sra          s7, ra, s4
                  mulh         s8, a0, s7
                  srai         zero, a5, 15
                  mul          a7, gp, s6
                  c.or         s0, a5
                  c.add        a7, t2
                  c.nop
                  remu         t2, s2, a0
                  rem          s0, s4, s4
                  addi         tp, a2, -665
                  c.and        s1, a5
                  addi         a0, s11, 1916
                  sltiu        ra, a3, 1194
                  slli         s7, a3, 0
                  ori          s1, s8, 1214
                  or           a6, ra, s5
                  sltu         a4, t0, gp
                  or           ra, s5, s7
                  slti         tp, ra, 1394
                  c.srli       s0, 1
                  c.add        s4, t1
                  remu         s3, s10, s2
                  c.slli       s3, 10
                  c.srai       s0, 8
                  mulh         a0, sp, zero
                  mulhu        a7, s0, t6
                  mul          s7, t2, t4
                  rem          t4, s11, s4
                  auipc        a4, 517801
                  c.and        s1, s1
                  srl          s6, s4, s1
                  sll          t2, sp, s7
                  mul          a6, t4, s4
                  ori          s5, tp, 2040
                  sltu         a1, a5, tp
                  sra          ra, s0, t3
                  c.li         a0, -1
                  nop
                  sltu         s6, s2, s9
                  addi         a1, sp, 1148
                  auipc        t0, 521677
                  sltiu        s7, zero, 416
                  c.sub        a1, s0
                  slti         s6, a5, -1101
                  c.srai       a1, 13
                  c.andi       a0, -1
                  lui          zero, 642677
                  sltiu        a3, a6, 901
                  addi         a0, a2, -272
                  c.or         a1, a4
                  sub          a0, a7, s0
                  remu         s5, s7, s5
                  ori          a5, s8, -1689
                  c.addi       gp, -1
                  auipc        tp, 685046
                  c.srai       a4, 25
                  c.add        t0, gp
                  rem          gp, s0, t2
                  mulhsu       a5, a7, s0
                  slti         tp, s2, -540
                  c.and        a5, a3
                  c.nop
                  c.lui        t6, 30
                  sll          a6, a3, gp
                  slli         tp, s6, 6
                  mulh         s3, tp, zero
                  ori          a4, t6, 1639
                  andi         ra, gp, 1668
                  mulhu        s10, s11, sp
                  sll          s7, a0, t2
                  mulhsu       a5, t0, s9
                  rem          t4, a3, t1
                  xor          s5, s10, t3
                  divu         a0, s5, t1
                  sra          s0, gp, t3
                  mulh         s5, a3, t3
                  xor          s7, zero, s6
                  c.andi       a1, -1
                  and          a3, a3, a7
                  c.and        a3, a2
                  c.addi       s6, 30
                  divu         a4, t3, s8
                  c.slli       s6, 18
                  auipc        a7, 396792
                  c.lui        ra, 30
                  andi         t3, t3, -823
                  slt          gp, t1, t3
                  xori         t0, tp, 1468
                  xori         s9, s2, 368
                  c.add        s0, t6
                  srai         s6, a5, 25
                  c.and        a3, s0
                  xori         s5, s0, -1957
                  ori          t3, s2, -1684
                  c.nop
                  andi         a0, t4, -214
                  c.or         s1, s0
                  mulh         s8, s8, t4
                  sll          s3, s7, t2
                  remu         s10, s5, a0
                  or           t0, s0, t1
                  xor          s10, a5, a3
                  or           s4, sp, s3
                  c.sub        a0, a2
                  c.xor        a5, a0
                  sll          t0, s2, s1
                  add          t1, t4, s10
                  mulh         t0, t3, t6
                  divu         a0, t4, s6
                  remu         s3, s9, s5
                  lui          s2, 282695
                  srli         a0, s0, 23
                  rem          s7, a4, s6
                  addi         t5, t0, 2040
                  c.srai       s1, 13
                  c.or         a5, a3
                  remu         t5, s4, t6
                  auipc        s3, 665108
                  c.addi       s0, -1
                  nop
                  slti         t3, t2, 1731
                  c.slli       s6, 15
                  sltu         s2, tp, a2
                  xori         s5, s7, -299
                  c.nop
                  srai         s3, t3, 11
                  c.sub        s1, a0
                  sra          s3, a5, a1
                  slt          a6, s4, t0
                  divu         s5, s11, s0
                  sra          s1, s3, t6
                  sltu         a0, s6, t5
                  c.lui        tp, 1
                  srl          t5, s8, tp
                  slt          tp, s8, a5
                  c.sub        a5, a0
                  rem          s9, a3, t6
                  c.nop
                  add          s5, t4, t6
                  auipc        t0, 860503
                  mulh         t2, s2, a1
                  c.add        a3, t3
                  ori          t1, a5, -1380
                  mulhu        zero, s2, s7
                  slti         t4, s5, 1901
                  c.lui        s5, 6
                  nop
                  c.srai       a4, 26
                  slt          t2, s5, s9
                  div          s8, t5, a4
                  nop
                  sub          s8, t4, t2
                  c.li         s2, -1
                  c.andi       a0, -1
                  sll          t6, s3, t1
                  sll          t2, a0, a2
                  remu         s7, s5, zero
                  c.lui        a6, 30
                  srai         s1, a4, 11
                  mulh         s7, tp, a7
                  sub          gp, tp, a5
                  mulhu        a5, a3, t3
                  mulhsu       tp, s3, ra
                  rem          a6, zero, s1
                  mulhu        s6, s9, t6
                  srl          t0, s11, s3
                  sll          s4, s8, s10
                  c.andi       a4, 29
                  or           a7, s11, s3
                  mul          s10, t5, ra
                  c.or         a3, a0
                  c.li         a5, -1
                  c.or         a5, a2
                  c.and        a1, a5
                  add          a6, s1, s2
                  divu         ra, gp, sp
                  remu         s2, sp, s6
                  slti         s4, s8, 988
                  and          t3, t6, s2
                  and          s3, t1, t2
                  c.or         a1, a0
                  c.addi       t6, 21
                  slt          a3, s8, a0
                  srai         t1, s8, 11
                  srl          s9, ra, s3
                  sltu         s10, a7, t1
                  c.li         a1, -1
                  srai         a4, s11, 11
                  xori         s1, s3, 1464
                  c.mv         s10, s4
                  andi         s6, s4, -629
                  sltu         zero, gp, s9
                  lui          a1, 858058
                  add          s5, s8, a6
                  divu         t3, s2, s9
                  c.or         a3, s1
                  mulhu        t6, s9, t4
                  lui          a3, 502439
                  and          s7, ra, a7
                  c.srli       s0, 4
                  div          s7, s0, a6
                  auipc        a1, 295071
                  sltu         zero, s8, t1
                  srli         a1, t2, 7
                  remu         a0, a3, s1
                  xori         a6, a4, 1456
                  c.andi       s1, 24
                  lui          t2, 299320
                  c.xor        s1, a1
                  c.or         a1, s0
                  lui          a6, 460448
                  remu         s2, a6, a6
                  ori          s10, sp, 738
                  or           t6, s6, a5
                  c.slli       s10, 20
                  slli         s4, s9, 21
                  div          gp, a0, gp
                  addi         a4, zero, -1445
                  slli         a6, ra, 18
                  slt          s4, s3, a5
                  c.nop
                  c.andi       a1, 30
                  c.andi       a1, -1
                  sra          ra, gp, a0
                  c.and        a0, a2
                  c.addi       s10, -1
                  auipc        a3, 678866
                  c.add        s10, sp
                  srli         s9, ra, 31
                  c.addi       a6, 3
                  and          tp, s6, a1
                  c.nop
                  c.addi       tp, 7
                  c.and        a0, a3
                  mul          tp, a4, sp
                  mulhu        a5, s7, s7
                  andi         t0, s3, 1763
                  slt          s0, s4, s7
                  c.slli       s4, 30
                  c.sub        a1, a5
                  sra          s2, s0, t1
                  c.addi       s1, 1
                  slt          t3, a2, s11
                  c.mv         a3, a4
                  c.lui        a7, 20
                  srai         t5, a5, 25
                  slt          a0, t5, s8
                  slti         a1, a7, 1686
                  xori         s5, s4, 1681
                  mulhu        s5, a6, a6
                  sltu         a3, t6, s8
                  sra          gp, a1, s9
                  sltu         ra, t0, s1
                  c.li         s2, -1
                  remu         s8, s5, tp
                  mulh         t1, a3, zero
                  xor          s0, s4, ra
                  nop
                  c.srli       s1, 30
                  sll          t6, s1, s9
                  nop
                  mulhsu       s0, s1, a3
                  c.andi       s1, 28
                  remu         s4, s10, t4
                  sra          s0, a7, sp
                  addi         a4, a6, 1035
                  ori          gp, s6, -420
                  slti         t5, s6, 1927
                  c.slli       a3, 2
                  mulhu        a1, t2, s9
                  c.add        s8, a4
                  addi         ra, t6, 336
                  c.sub        a4, a3
                  mul          zero, zero, a7
                  c.xor        a1, a2
                  mulhsu       zero, a5, t4
                  c.srai       a1, 8
                  c.addi       t5, 12
                  and          gp, s7, s0
                  slti         t2, s1, 870
                  c.lui        s4, 11
                  rem          t4, t1, a7
                  c.andi       a1, 22
                  ori          a3, t1, 1244
                  slt          t6, a7, s10
                  c.srai       s1, 9
                  nop
                  divu         s10, t1, s3
                  sll          t0, a1, s5
                  srl          t6, s9, t4
                  mulhsu       s4, tp, s5
                  auipc        t5, 1042757
                  c.mv         s7, sp
                  slli         s10, t6, 11
                  srli         s8, t3, 3
                  mulh         t0, ra, s8
                  ori          a7, s8, -107
                  slti         s1, a5, 1817
                  srai         zero, s7, 11
                  c.add        t3, tp
                  div          a4, s9, tp
                  c.add        s2, s9
                  c.srli       a3, 19
                  c.slli       tp, 3
                  sll          t5, t0, t5
                  slli         a0, a5, 19
                  c.and        a4, a2
                  mul          t2, t6, t1
                  sra          s8, a7, zero
                  sltiu        a5, t0, 331
                  c.addi       s10, -1
                  sub          s10, t6, s7
                  slli         s5, a3, 20
                  c.srai       a5, 6
                  c.slli       t2, 13
                  and          a6, ra, t3
                  c.lui        t0, 20
                  xori         s6, s4, -582
                  remu         a0, s5, a7
                  c.nop
                  slli         a5, zero, 26
                  sltu         s2, s3, t0
                  sub          t3, t0, t0
                  c.andi       a1, -1
                  mulh         s6, s6, ra
                  lui          t1, 795944
                  slti         a6, s6, 70
                  c.lui        tp, 23
                  srli         zero, s9, 31
                  c.sub        s0, a1
                  srl          s10, t6, s4
                  c.andi       a4, 8
                  or           t3, tp, gp
                  c.nop
                  and          s6, s8, a4
                  andi         s7, t3, -182
                  ori          s2, a7, 1738
                  auipc        t6, 52783
                  c.li         s8, 28
                  nop
                  srai         t0, a7, 12
                  rem          zero, a3, s2
                  or           a6, s10, tp
                  srli         t1, gp, 5
                  xor          a1, a7, s2
                  nop
                  or           a0, a0, s9
                  slti         s8, s10, 1106
                  c.nop
                  sub          s2, t1, s11
                  c.or         a1, a1
                  remu         a7, t2, s1
                  c.add        t6, s4
                  nop
                  xor          s3, a7, a1
                  or           a6, a4, gp
                  srli         t1, gp, 28
                  c.srli       s0, 27
                  srl          a3, s9, t1
                  rem          t6, sp, a4
                  divu         s0, zero, t2
                  or           s6, s6, ra
                  mulhu        a7, ra, t0
                  c.addi       t1, 3
                  divu         t4, t2, s10
                  c.srai       a3, 22
                  add          a3, a6, a6
                  add          s6, a2, s10
                  c.or         a5, a4
                  c.xor        s0, a2
                  sltu         t5, s6, s9
                  sub          tp, a2, s10
                  slli         s5, a4, 23
                  c.xor        a4, s0
                  mulhu        s3, s9, a4
                  mul          t6, a2, a5
                  c.srai       a0, 13
                  c.li         s3, -1
                  xori         t1, a6, -860
                  sltu         a3, a1, a0
                  slt          t6, gp, s2
                  c.andi       a3, 19
                  ori          s5, s5, -1036
                  c.add        s6, t3
                  c.andi       s0, -1
                  xori         a5, t4, 1219
                  c.nop
                  srai         t4, s6, 0
                  c.xor        s0, a3
                  c.xor        a1, s1
                  and          a3, s0, tp
                  sll          s1, s1, t3
                  divu         tp, t0, s10
                  addi         tp, gp, 851
                  srli         t2, t3, 12
                  c.and        a4, a5
                  sltu         s8, t6, s8
                  c.addi       a5, 16
                  c.xor        a1, a0
                  slli         t1, a0, 28
                  or           a1, s10, s7
                  mulhsu       zero, a5, sp
                  remu         s7, a7, a5
                  slt          a0, t2, a5
                  addi         a7, tp, 2007
                  or           s9, ra, a7
                  mulh         s9, zero, t6
                  lui          t2, 480486
                  mul          s7, s10, s9
                  c.add        s4, s3
                  remu         t3, a5, t4
                  c.srai       a4, 14
                  ori          a3, s10, 1521
                  andi         s8, tp, 1476
                  slli         s6, a1, 3
                  c.or         a0, s1
                  lui          s3, 428477
                  srai         s4, a7, 21
                  c.and        a3, a0
                  c.srli       s1, 29
                  xor          t6, t3, a6
                  andi         t1, s7, 1943
                  c.sub        a3, a3
                  or           s2, t4, s9
                  sub          tp, s10, t4
                  c.li         s3, 2
                  sll          t4, s10, a1
                  remu         s8, s4, a1
                  c.slli       s5, 8
                  xori         zero, s3, -1163
                  slt          t5, a0, s2
                  slt          t1, t3, s9
                  c.or         a1, a3
                  c.srli       a4, 15
                  mulh         t2, t0, a5
                  c.xor        a5, a5
                  divu         s2, s8, t4
                  mulh         a5, a7, t5
                  sub          s6, s2, t4
                  c.slli       t1, 19
                  mulhsu       s9, a4, a1
                  c.lui        s6, 18
                  andi         s6, a6, 231
                  slti         s9, s3, -1048
                  mulhsu       t1, s11, s6
                  sra          a5, s2, s8
                  srai         a6, a4, 2
                  slt          gp, s2, s9
                  or           s1, t1, s5
                  andi         a0, s1, 1231
                  lui          t5, 836552
                  sltu         s1, a5, t1
                  slti         a0, a0, 401
                  c.sub        a5, a2
                  divu         s3, a2, t2
                  c.srai       a3, 23
                  c.and        a4, a1
                  auipc        a0, 548269
                  c.lui        t1, 11
                  srai         tp, s9, 7
                  c.srai       a3, 29
                  andi         ra, t3, -582
                  srai         a4, t1, 0
                  or           s5, t3, tp
                  sra          t3, zero, t2
                  or           a4, a3, a0
                  ori          s2, s11, 600
                  sra          s1, t2, a6
                  srl          t6, a3, ra
                  addi         a1, a0, -456
                  addi         ra, t5, -1226
                  sltu         s10, s6, s8
                  srai         s8, s11, 4
                  and          s10, a0, zero
                  sltiu        gp, a3, 1594
                  mulh         t2, s5, t3
                  c.and        a4, a2
                  div          ra, t0, t2
                  c.srai       s1, 28
                  c.li         t5, 20
                  andi         s6, a3, 428
                  c.sub        s1, s1
                  andi         s7, a4, 538
                  divu         zero, s8, t1
                  addi         a0, zero, -212
                  sltu         s4, s7, t0
                  c.add        s9, a1
                  lui          s10, 427323
                  c.mv         t2, s5
                  c.add        a6, a3
                  c.and        a4, a0
                  c.srai       a0, 20
                  div          s5, a1, sp
                  sltu         ra, t6, s4
                  sra          a4, t1, s5
                  add          s6, tp, s7
                  srli         a5, a1, 13
                  c.and        a1, a1
                  c.srli       a1, 26
                  c.srli       s1, 16
                  sub          t0, s4, s1
                  c.srai       a3, 3
                  c.mv         s6, a6
                  addi         s7, a3, 1597
                  c.and        a4, a4
                  c.srli       a4, 15
                  sll          s4, t5, sp
                  c.srli       a5, 18
                  add          t2, s2, t5
                  mulhsu       a6, s10, a6
                  slli         s0, s1, 22
                  sll          s5, s1, t4
                  sltu         t2, t2, a2
                  div          t2, s8, a4
                  c.mv         s3, s5
                  c.li         s5, 4
                  addi         s2, s8, -419
                  c.slli       a6, 21
                  c.and        a5, s1
                  srl          a6, t2, t2
                  andi         t0, t4, -276
                  auipc        t0, 349579
                  divu         a3, t6, t1
                  addi         s10, t2, 578
                  divu         a3, a6, s5
                  c.lui        t4, 19
                  mulh         t5, zero, t6
                  srai         s2, a0, 8
                  mul          s0, zero, a2
                  and          zero, s1, tp
                  div          s6, gp, a0
                  c.andi       a3, -1
                  divu         s1, t4, t2
                  c.add        a0, t2
                  and          gp, s8, a1
                  xor          s1, t1, gp
                  xor          ra, s0, s8
                  srai         t4, sp, 26
                  lui          a0, 1037994
                  slli         t1, t5, 23
                  lui          a3, 959891
                  c.srai       s0, 19
                  c.xor        s1, a4
                  xor          s7, s1, t4
                  srai         s1, t5, 0
                  lui          t6, 511303
                  mulh         t5, t3, s8
                  c.xor        s0, s1
                  andi         ra, ra, -1300
                  c.lui        tp, 22
                  c.lui        a6, 6
                  c.addi       a1, -1
                  srl          a3, ra, t2
                  ori          s5, s6, 97
                  mulhu        gp, s1, t5
                  auipc        s8, 148810
                  xor          t4, s8, s3
                  c.addi       t4, -1
                  sub          a5, zero, a7
                  c.xor        a3, a5
                  mul          s8, tp, t5
                  auipc        s10, 630173
                  srai         t3, a0, 15
                  rem          a4, a1, tp
                  lui          s3, 964369
                  c.sub        s1, a4
                  addi         a3, t2, -997
                  remu         s7, a6, a5
                  andi         s3, a1, -28
                  c.or         a5, a0
                  ori          a1, t5, -1930
                  srli         tp, t2, 14
                  addi         t4, ra, -316
                  sltu         s0, a2, s11
                  c.andi       a1, 2
                  c.addi       s0, -1
                  auipc        s3, 101200
                  and          s5, t0, a3
                  xori         t6, s8, 190
                  sltu         gp, s4, s4
                  c.srai       a5, 28
                  c.mv         s10, s6
                  c.add        t1, t5
                  sltu         t6, t6, s5
                  and          s1, a1, tp
                  mul          a6, t0, t6
                  mulhu        s6, t4, t6
                  xor          a5, s10, a0
                  ori          s9, t2, 1158
                  nop
                  and          s10, a4, ra
                  c.andi       s0, -1
                  srai         s2, a4, 5
                  c.slli       s10, 10
                  srli         a3, tp, 26
                  div          t6, a4, t6
                  or           s4, s11, s8
                  srai         s9, zero, 23
                  sub          s2, t4, tp
                  xori         s3, s8, -411
                  rem          s8, tp, t0
                  sub          a6, a6, t5
                  nop
                  c.lui        t5, 23
                  c.srli       a0, 22
                  addi         s9, a3, 1005
                  c.or         a0, a1
                  or           a4, s2, s3
                  sll          s9, ra, gp
                  addi         t1, s11, 980
                  slti         t4, t5, 79
                  ori          tp, s11, 152
                  slt          t0, t3, s8
                  addi         a5, s11, -513
                  slli         a6, s9, 15
                  c.sub        s0, a4
                  nop
                  xor          tp, a2, a3
                  lui          tp, 500904
                  lui          s4, 473312
                  c.lui        s3, 24
                  slli         t1, gp, 26
                  ori          zero, t5, 988
                  sll          a7, s7, t2
                  rem          t3, a3, t3
                  c.mv         tp, t3
                  and          s0, t4, t4
                  addi         t4, a2, 966
                  c.lui        a0, 30
                  remu         zero, a0, a1
                  sra          a0, s1, s8
                  c.li         t5, -1
                  c.li         t5, 26
                  mulhu        t1, s7, sp
                  sra          s8, s8, a0
                  mulh         a3, t0, a6
                  andi         gp, s2, 644
                  c.srai       a3, 14
                  slli         a1, t0, 14
                  srl          s3, ra, a7
                  nop
                  c.mv         t6, s0
                  c.srai       a3, 7
                  andi         s5, s8, -1952
                  and          s7, s3, s11
                  sltiu        t6, tp, 567
                  add          s10, a4, a0
                  c.lui        a5, 23
                  sub          t0, s7, s7
                  xor          a0, s7, a6
                  c.add        a0, s8
                  c.andi       a0, 9
                  srl          t2, t1, s4
                  divu         t0, ra, a6
                  andi         s0, s2, -959
                  c.xor        a4, a1
                  srli         t2, s8, 27
                  slt          zero, s11, a0
                  c.xor        a4, a4
                  sub          s3, a4, a6
                  add          s4, s5, a2
                  sll          gp, zero, sp
                  c.nop
                  xor          s3, t5, t4
                  c.xor        a5, a4
                  mul          s6, s11, s5
                  c.and        a1, a4
                  rem          t4, a2, s6
                  c.add        t4, s7
                  sltu         t2, t3, a2
                  srli         zero, tp, 8
                  xori         s10, a3, -596
                  mulhu        s8, s4, t6
                  sltu         s10, a1, a2
                  auipc        a7, 916859
                  ori          s1, s8, -97
                  andi         a6, s5, -1158
                  c.add        gp, s8
                  c.srai       s1, 8
                  c.mv         tp, a4
                  c.srli       a3, 2
                  div          t2, a6, s0
                  sra          ra, t4, s8
                  c.li         a6, -1
                  c.xor        a0, a5
                  c.slli       s1, 17
                  srl          s9, t0, s2
                  c.and        a5, a4
                  div          tp, zero, zero
                  srl          s9, s2, t2
                  c.xor        s1, s1
                  c.xor        a4, s1
                  slli         ra, a3, 14
                  c.and        s1, a1
                  c.lui        s4, 10
                  c.nop
                  slli         a0, s8, 16
                  mulh         s6, gp, a7
                  ori          t6, a5, 17
                  and          s0, gp, t2
                  addi         a5, a1, 517
                  slli         gp, a6, 18
                  remu         gp, s7, zero
                  c.sub        s1, a0
                  c.or         s1, a5
                  srli         t5, s2, 12
                  c.xor        a5, a3
                  div          s6, s1, s2
                  xori         t3, a2, 1528
                  auipc        ra, 31868
                  mulh         s7, s10, s1
                  c.and        a4, a4
                  add          s8, a1, t2
                  rem          s2, s0, t6
                  auipc        a6, 645931
                  rem          s2, s10, s9
                  lui          a1, 672947
                  sltiu        gp, s10, 593
                  sub          t6, a4, s2
                  add          a7, s4, s4
                  add          ra, a0, s8
                  mulhsu       t5, zero, a1
                  auipc        t0, 372381
                  slt          gp, s1, t0
                  nop
                  ori          a4, t4, 1782
                  c.andi       a4, -1
                  slt          a1, t2, zero
                  andi         s10, s4, -846
                  c.addi       s10, 28
                  ori          tp, s2, -2043
                  c.srli       a3, 27
                  slti         s9, s3, -1406
                  mul          t1, s0, s5
                  xor          t6, t2, a6
                  c.slli       tp, 9
                  c.srai       a1, 10
                  addi         t1, s7, 1079
                  andi         a1, a0, -1557
                  mulh         t6, s8, s10
                  srai         t0, tp, 14
                  sltiu        t6, a3, -511
                  slli         t4, s8, 18
                  sll          a4, t0, a5
                  c.or         a0, a0
                  nop
                  c.add        t3, s9
                  mulhsu       a5, a4, s3
                  remu         t6, a4, t4
                  c.sub        a4, a2
                  c.andi       s0, -1
                  mulhu        t1, a2, t5
                  mulhsu       s6, a6, s0
                  xori         ra, ra, 1892
                  c.addi       s0, 17
                  c.and        a0, a5
                  remu         a6, s11, a5
                  xori         tp, s5, 423
                  lui          a3, 647268
                  rem          a4, s6, a5
                  c.li         s2, 27
                  xor          s2, s3, a2
                  lui          t3, 625915
                  c.srli       a0, 1
                  srl          t3, ra, tp
                  lui          s7, 11079
                  c.srli       a0, 13
                  c.or         s0, a4
                  andi         a0, zero, 1203
                  div          a3, s7, a4
                  add          a1, s10, s0
                  c.xor        a1, a1
                  add          a5, t3, t4
                  xor          s2, a2, s9
                  c.srai       a0, 13
                  andi         s7, s10, 1014
                  auipc        s1, 167377
                  sltu         t2, t3, s10
                  slti         s0, a7, 217
                  lui          s9, 674448
                  c.addi       t2, 25
                  mulh         a6, a7, t3
                  c.slli       a5, 7
                  c.add        s9, ra
                  mulhsu       s3, a1, a3
                  mulhsu       tp, tp, s7
                  c.or         s0, a4
                  mulh         t4, s7, a5
                  slti         t5, s11, -915
                  c.slli       s1, 17
                  ori          tp, t3, 1094
                  c.addi       s1, 15
                  sra          gp, a5, s2
                  sub          s5, s10, s4
                  c.srai       a1, 15
                  c.add        s5, s8
                  c.sub        a0, a0
                  sub          zero, s4, s3
                  sub          a0, s7, t3
                  c.mv         t3, s5
                  andi         s3, s9, 70
                  and          t3, zero, ra
                  c.andi       s0, 5
                  div          tp, a6, t5
                  c.addi       t1, 5
                  or           s5, s7, sp
                  c.mv         a3, a4
                  srai         t5, s0, 16
                  andi         zero, s10, -1335
                  slti         zero, s2, 1458
                  lui          s6, 969486
                  slti         s3, s9, 1516
                  remu         t6, t4, t0
                  add          t0, s1, s8
                  lui          t5, 531553
                  slti         t5, a4, -1063
                  sll          a5, t1, s0
                  slti         s1, s0, 1630
                  sltiu        ra, a7, -10
                  c.nop
                  c.sub        a1, a5
                  c.nop
                  sll          ra, a3, a6
                  div          t3, ra, s7
                  mul          t5, a3, s10
                  c.andi       a3, -1
                  add          s0, a0, t5
                  sltu         s2, a2, sp
                  c.lui        t3, 26
                  c.li         s4, -1
                  slt          zero, s4, s1
                  lui          s0, 552117
                  rem          a3, s10, sp
                  addi         t1, s1, -982
                  remu         s3, a7, a5
                  slli         a7, s5, 8
                  c.nop
                  sltiu        s9, a6, 1315
                  sltiu        s5, a0, -1223
                  srai         gp, s4, 2
                  or           s8, s6, t3
                  c.add        s6, a5
                  c.xor        a5, a1
                  xor          a1, s1, s9
                  c.lui        gp, 15
                  slti         ra, s11, 1034
                  addi         s0, s0, 1301
                  slli         s5, ra, 1
                  slti         s9, sp, -618
                  xor          a1, a4, t3
                  c.sub        s0, a0
                  c.addi       a1, 28
                  sltu         a0, a1, zero
                  div          s2, tp, s0
                  div          s7, tp, s6
                  srl          s10, s4, t0
                  sltu         s2, s8, s8
                  mulhsu       t4, s7, s6
                  or           s5, s1, ra
                  mulh         t1, sp, t4
                  c.andi       a5, 18
                  c.srli       a3, 11
                  lui          t6, 311538
                  auipc        a3, 910488
                  mulh         t4, t0, s11
                  nop
                  lui          a4, 183667
                  c.lui        tp, 18
                  mul          s3, a2, s4
                  c.nop
                  c.srli       s0, 14
                  srli         t3, t0, 10
                  addi         t5, s0, -1232
                  xori         s1, sp, -1461
                  slti         s8, s10, 1499
                  add          s4, ra, a3
                  slli         t1, s10, 26
                  c.sub        a0, a3
                  ori          gp, s5, -239
                  c.srai       a1, 27
                  sltu         s1, a3, a4
                  mul          s7, t4, a0
                  mulh         s0, t2, s10
                  c.addi       gp, -1
                  slli         s8, gp, 26
                  c.addi       s10, -1
                  andi         a6, a6, -1639
                  or           s6, a7, s6
                  c.sub        a4, s0
                  c.srli       a4, 26
                  ori          zero, t0, 1735
                  c.srli       s0, 2
                  andi         a6, s8, 125
                  c.srai       a1, 19
                  srli         t5, sp, 11
                  c.andi       a0, 30
                  xor          s0, tp, s5
                  sra          zero, a4, s8
                  sll          zero, a3, t3
                  xor          t0, s10, a0
                  c.mv         ra, t3
                  xor          t3, a2, a2
                  addi         s3, a2, 1845
                  mul          t1, s9, t0
                  add          a7, s0, s1
                  xor          s4, s6, s10
                  c.addi       t6, -1
                  sll          zero, zero, sp
                  srl          s10, s6, t1
                  c.and        s0, a0
                  ori          s9, a2, -1897
                  sltu         s5, s11, zero
                  sltiu        s6, t3, 255
                  c.lui        t6, 22
                  add          tp, t5, s0
                  mulh         a1, s4, a4
                  sltu         s9, a5, s2
                  slli         t2, s9, 27
                  sub          s9, s6, s7
                  c.sub        a0, a2
                  div          s9, s5, t6
                  c.slli       s0, 17
                  xor          a6, a0, s4
                  c.nop
                  slli         t1, t5, 0
                  mulhu        gp, a0, a4
                  srl          s10, a4, s4
                  srl          tp, t6, s10
                  mulhu        a3, zero, s10
                  sub          s2, tp, s3
                  ori          t5, a7, 840
                  xor          t2, t1, s8
                  slli         ra, a5, 10
                  c.addi       s1, -1
                  auipc        s2, 802115
                  c.add        a3, s10
                  c.nop
                  mulh         gp, tp, tp
                  c.addi       s5, 1
                  srl          s0, a3, s5
                  sub          s0, s5, a0
                  c.or         a0, a5
                  lui          t5, 425553
                  c.sub        a4, a5
                  srli         s2, a6, 22
                  srl          s3, s10, s3
                  and          zero, a0, t4
                  c.or         s1, a5
                  c.or         s0, a4
                  sra          t6, a2, a4
                  mulh         s9, a2, a7
                  slli         s9, s8, 14
                  mulhu        a1, s10, s6
                  ori          tp, t4, 465
                  c.mv         s9, s1
                  auipc        t0, 651082
                  ori          s8, t0, -837
                  mulh         s10, t1, a5
                  c.add        s10, a7
                  slt          t6, a0, t0
                  c.li         s2, 19
                  div          a1, s11, s1
                  andi         a4, a4, 218
                  c.nop
                  c.and        s0, s0
                  xor          a6, s10, a6
                  c.slli       a1, 25
                  and          t2, s2, t3
                  xor          gp, t5, a5
                  c.lui        s2, 29
                  c.sub        a0, a4
                  div          a6, t5, gp
                  add          s5, a0, gp
                  c.lui        t0, 5
                  slti         a4, a6, 1886
                  c.mv         s1, t6
                  c.srli       a5, 16
                  or           t3, t4, tp
                  mul          zero, s2, t0
                  c.lui        t6, 23
                  addi         s8, a2, -157
                  c.mv         a5, s4
                  mul          s10, a1, a3
                  ori          zero, a4, -1213
                  mulh         a0, s4, s4
                  c.li         a1, -1
                  div          s2, s11, zero
                  slti         gp, s3, 1128
                  mulhsu       s3, s8, a4
                  ori          s6, tp, 1544
                  slti         ra, s11, -1020
                  c.srli       a3, 29
                  rem          ra, t6, ra
                  srl          tp, s8, s5
                  sltu         zero, sp, a6
                  c.li         t1, 4
                  c.srai       a4, 29
                  add          s10, s0, a5
                  ori          s8, s0, -1137
                  lui          a7, 964301
                  c.add        t5, a3
                  add          a5, ra, a5
                  sltiu        t3, s7, -291
                  slti         s10, a4, 272
                  c.addi       a0, 31
                  c.andi       a1, -1
                  rem          s5, a2, s1
                  div          s4, s0, s1
                  ori          s2, a7, -242
                  addi         gp, a1, -1381
                  andi         tp, s1, -2010
                  mulhsu       s5, s7, t0
                  c.addi       t6, -1
                  c.li         tp, -1
                  divu         s9, a7, s9
                  or           a1, s3, a3
                  c.addi       t0, 28
                  add          t0, a0, s8
                  c.xor        s1, a4
                  c.addi       s9, 14
                  c.and        a4, a0
                  srai         s9, a1, 23
                  c.addi       a4, 13
                  c.li         s8, 3
                  slti         zero, s4, -1582
                  c.lui        tp, 1
                  mulh         zero, a1, a6
                  srl          a0, a7, s6
                  srai         ra, s0, 31
                  slti         a1, a5, 1042
                  srai         s9, zero, 10
                  srli         s5, a4, 25
                  divu         t6, t6, gp
                  sll          t6, s5, t5
                  c.xor        a3, s0
                  xor          t3, a1, t5
                  sra          a5, a3, sp
                  rem          s10, tp, t1
                  and          s8, t0, a3
                  xori         gp, t3, 1149
                  c.srai       a1, 4
                  add          s7, t4, a2
                  rem          t1, sp, s7
                  remu         s3, tp, t6
                  slti         a4, s4, -1932
                  div          t2, s8, s2
                  mul          zero, s0, s8
                  mulh         tp, t2, s2
                  mulh         s0, s10, s7
                  divu         t2, tp, t0
                  xor          a0, s8, t0
                  c.add        tp, a0
                  c.or         s1, a4
                  c.mv         a6, s4
                  c.sub        s0, a1
                  sra          tp, s3, s5
                  c.mv         t1, a7
                  sltu         t0, gp, tp
                  srl          s0, s10, zero
                  c.sub        a3, a5
                  and          s1, s2, a7
                  c.mv         ra, t1
                  divu         s7, a7, a0
                  mulhu        a4, s11, a1
                  c.or         a5, a3
                  sltiu        s6, s9, -476
                  remu         tp, s11, tp
                  sra          s0, s7, ra
                  sub          t1, s0, a5
                  srl          s3, s8, a5
                  c.srai       a3, 21
                  c.srai       a1, 17
                  srai         a1, gp, 1
                  mulhu        t3, a1, s9
                  c.srli       s0, 1
                  and          zero, a6, t2
                  and          s7, t5, s7
                  c.srai       a3, 24
                  sub          t1, s3, a3
                  c.addi       a0, 21
                  slt          s9, t1, a6
                  c.xor        s1, a3
                  rem          s5, s11, tp
                  c.addi       a3, -1
                  c.nop
                  addi         t1, a2, -1107
                  sll          a3, t1, t5
                  c.or         a5, a3
                  rem          s7, s3, s6
                  sra          t6, s8, s3
                  div          a7, a4, t4
                  c.lui        s4, 16
                  slti         zero, t2, -926
                  c.addi       s6, 25
                  slt          s9, a6, s9
                  and          s3, zero, s4
                  nop
                  and          s10, t4, tp
                  lui          a0, 618484
                  c.addi       a3, -1
                  c.and        a4, a2
                  mulhsu       s7, a2, tp
                  c.addi       s2, 24
                  c.slli       tp, 10
                  c.nop
                  mulhsu       tp, a7, t0
                  srli         a0, a6, 21
                  nop
                  srli         tp, a3, 26
                  c.mv         s8, t6
                  sltiu        a1, s4, -360
                  c.srli       a1, 18
                  srli         zero, zero, 14
                  sltiu        a7, gp, -478
                  xori         a5, zero, 1812
                  c.srai       s1, 23
                  c.nop
                  lui          s0, 424684
                  c.add        s8, a2
                  mulhsu       a3, gp, s5
                  srli         s5, a2, 5
                  c.slli       t6, 20
                  addi         s9, t1, -1129
                  nop
                  c.nop
                  remu         s7, t4, a0
                  c.lui        t4, 18
                  sll          t6, t0, a2
                  c.add        gp, ra
                  c.and        s0, s1
                  srli         s9, t3, 23
                  ori          s1, a6, 965
                  and          t2, s1, s5
                  slli         a0, s6, 30
                  c.addi       s10, 13
                  mulhsu       tp, t2, a7
                  add          a0, a3, s6
                  c.add        s0, s10
                  c.lui        a1, 23
                  c.or         s1, a4
                  divu         ra, t1, s11
                  ori          t3, s3, 1006
                  auipc        t1, 501024
                  nop
                  sltu         ra, zero, t1
                  mulhu        a1, t4, s0
                  mulhu        zero, s0, t4
                  c.srai       s0, 3
                  c.mv         ra, a7
                  remu         t5, t1, s5
                  c.srai       a3, 28
                  srai         s0, s3, 24
                  sub          s6, s8, a2
                  slt          a5, s5, s2
                  slt          s5, t5, s10
                  div          s2, a3, t4
                  mul          gp, a4, s1
                  mulhsu       t0, a0, a6
                  slt          tp, zero, gp
                  sll          s5, s8, t2
                  sra          s6, sp, a2
                  rem          a1, ra, t6
                  divu         a3, s10, t0
                  sub          s4, a3, a5
                  c.or         s0, a3
                  and          t4, gp, a4
                  c.add        ra, s2
                  c.nop
                  c.lui        t0, 13
                  sra          zero, s2, a2
                  sub          t2, t6, a7
                  srai         t6, s0, 19
                  ori          t5, t3, -633
                  c.or         a1, a2
                  c.add        s1, t2
                  c.lui        t3, 13
                  c.add        a1, a7
                  c.andi       a5, -1
                  or           a6, s0, s2
                  c.xor        a4, a2
                  addi         t6, s7, 1350
                  c.xor        s0, s1
                  sll          s6, gp, s7
                  addi         a7, s8, 877
                  and          t6, t3, s4
                  mul          s8, tp, a6
                  slti         s8, s10, 865
                  c.add        s9, s3
                  add          a0, a5, a0
                  c.or         s0, a3
                  ori          t6, s5, 1081
                  c.andi       a3, -1
                  c.srai       a1, 16
                  div          s9, t5, s11
                  sltiu        gp, a2, 1703
                  div          a4, s9, s5
                  sltu         t6, t5, a2
                  c.sub        s0, a5
                  sub          a1, s10, gp
                  c.lui        a3, 18
                  slti         a1, t0, 1218
                  c.slli       t2, 14
                  c.add        a4, ra
                  add          s1, a7, s6
                  sll          t1, a0, s6
                  remu         s5, tp, s5
                  c.lui        a0, 20
                  sub          s1, a4, s7
                  srl          s1, s10, a6
                  mulhu        t2, t2, t5
                  mulhu        t6, t3, a7
                  sltu         a1, tp, s4
                  div          s5, s5, s3
                  sub          t3, s7, t0
                  sub          tp, t4, s2
                  c.xor        s0, a5
                  sub          a7, s4, t5
                  c.srai       a3, 16
                  sra          s9, a4, s6
                  mulh         s8, t6, s4
                  mulhu        tp, s6, s9
                  sub          t0, a5, t5
                  sub          a3, a7, s9
                  c.add        s3, s7
                  srl          s9, t3, s5
                  nop
                  c.mv         t3, t3
                  c.or         a5, a4
                  c.add        a3, s4
                  nop
                  srai         tp, t3, 8
                  nop
                  remu         a1, s2, t1
                  sra          s9, s11, a2
                  divu         s8, t0, s10
                  slti         s6, s8, 927
                  auipc        a1, 582539
                  c.srli       a4, 22
                  c.sub        s0, s1
                  c.sub        a0, a2
                  xor          s8, zero, gp
                  and          t2, gp, s3
                  c.or         a5, s1
                  xor          a6, t6, sp
                  divu         s3, t3, s8
                  srai         s2, zero, 23
                  c.slli       a6, 29
                  mul          s6, s0, sp
                  srai         t1, zero, 17
                  c.srli       a5, 27
                  c.srli       s0, 29
                  sltu         a3, tp, t0
                  slt          gp, a3, zero
                  divu         t5, a3, sp
                  c.add        t6, ra
                  c.sub        a1, a5
                  mulhu        t1, t5, a6
                  c.slli       a5, 15
                  c.add        s4, t0
                  or           a7, a2, tp
                  c.nop
                  rem          a4, gp, s3
                  auipc        a1, 878730
                  sra          s2, t1, t0
                  srai         a4, t6, 0
                  c.sub        a3, s0
                  slti         a3, tp, -438
                  remu         t4, a7, s2
                  c.srli       s0, 4
                  slti         tp, s7, 1514
                  c.sub        a3, s1
                  remu         a0, a0, a0
                  srai         t2, t6, 24
                  or           t2, s2, a6
                  c.sub        s0, s1
                  lui          t2, 943573
                  slt          tp, s9, t3
                  sub          s3, a0, s7
                  slt          t1, a1, ra
                  xor          s9, sp, s0
                  lui          ra, 452370
                  sll          t4, t2, s9
                  andi         s10, a4, 14
                  c.or         a1, a1
                  c.and        a3, s0
                  mul          tp, a2, a4
                  ori          s10, t0, -493
                  add          s9, t1, a2
                  srl          s9, s5, zero
                  c.addi       t5, 21
                  addi         a0, sp, 1361
                  c.mv         s8, s11
                  auipc        a4, 182340
                  xori         a3, a4, 281
                  mulhsu       a1, t5, s0
                  sltu         a6, s6, s9
                  c.sub        a5, a5
                  slti         s6, s8, 1306
                  c.li         t5, 27
                  slt          t5, t1, a5
                  c.li         s6, -1
                  mulhsu       a6, s10, gp
                  divu         s1, s5, a0
                  xor          s1, t3, a5
                  c.nop
                  c.add        t0, s4
                  sltiu        t4, tp, -977
                  sub          s8, t2, a3
                  c.add        t1, s10
                  addi         a4, s2, -340
                  slti         gp, a6, -1115
                  c.li         tp, 30
                  c.slli       a0, 17
                  slti         tp, a7, -413
                  slti         s10, a5, 310
                  c.and        a3, s0
                  mulh         t0, zero, sp
                  c.and        s1, s1
                  srli         s9, a1, 1
                  c.sub        a5, s0
                  slli         s5, sp, 31
                  srai         t2, a4, 7
                  xor          s7, tp, s11
                  c.addi       t3, 9
                  c.or         a1, s0
                  c.and        a4, a1
                  lui          s7, 480272
                  mul          t2, t5, t6
                  srl          gp, a3, s8
                  c.srli       a4, 3
                  c.srli       a3, 5
                  c.xor        s0, a1
                  ori          s7, s3, 2043
                  div          t6, a0, sp
                  c.srli       a1, 22
                  xori         s3, s8, -419
                  c.add        s7, a7
                  c.lui        s0, 9
                  srl          t2, s2, t6
                  auipc        t2, 730291
                  srai         t0, s0, 30
                  slti         ra, ra, 1379
                  c.xor        s1, a1
                  c.nop
                  sub          t2, a6, sp
                  xor          t2, s9, s1
                  slli         s6, s3, 30
                  ori          s8, a3, -1430
                  andi         a6, s6, 727
                  c.andi       a3, 10
                  c.mv         s0, t6
                  sltu         s2, t1, a1
                  mulh         s0, s1, s0
                  xor          a3, a3, s2
                  add          a1, a1, t6
                  remu         a4, zero, t2
                  div          a4, s9, s11
                  mulhsu       t5, s0, sp
                  c.add        ra, a7
                  andi         s8, a5, 1607
                  c.xor        s0, a4
                  c.srli       a3, 25
                  nop
                  sltiu        t0, s7, 73
                  lui          a6, 393504
                  addi         s0, t3, -2032
                  c.slli       ra, 16
                  slt          a6, sp, t5
                  c.add        t5, sp
                  c.lui        s5, 30
                  c.sub        s1, s0
                  c.andi       a0, 26
                  slti         gp, s6, 587
                  div          t6, s10, a6
                  or           t6, s11, a4
                  srli         t5, s1, 24
                  c.andi       a5, 24
                  mulhu        t0, t0, s9
                  or           t1, t5, s5
                  divu         s10, s7, a3
                  xori         s8, a6, -1693
                  rem          s6, s3, t6
                  c.or         a0, s1
                  c.add        s2, s11
                  c.or         s0, s1
                  auipc        a7, 789692
                  sll          t0, sp, a5
                  c.xor        a3, s1
                  c.xor        s0, a4
                  rem          ra, s11, t6
                  c.addi       t6, -1
                  xori         s1, s10, -1403
                  mulh         a4, s7, s0
                  c.lui        t2, 17
                  rem          s5, a0, a5
                  sll          t2, t5, s9
                  xor          a3, t1, ra
                  c.xor        s0, a3
                  c.add        a0, s2
                  sll          gp, s11, s8
                  andi         t1, t4, -90
                  srl          s8, s3, t4
                  slli         a5, s3, 28
                  div          s7, s3, a3
                  and          ra, sp, gp
                  sub          a3, t3, t0
                  c.addi       a0, 29
                  c.xor        s0, a0
                  and          s3, a7, s2
                  divu         s4, t0, s7
                  rem          s2, s9, gp
                  c.sub        a3, a5
                  nop
                  rem          t5, zero, s7
                  mulhu        zero, s3, sp
                  c.addi       a4, -1
                  addi         s5, t0, 557
                  c.srli       a0, 20
                  srli         s9, a6, 23
                  slti         zero, a4, 1531
                  divu         s5, zero, sp
                  mulhu        s9, a0, t5
                  c.add        a4, s6
                  c.andi       a0, 23
                  c.add        s8, t0
                  c.and        s0, a4
                  c.andi       s1, 22
                  or           a1, s3, a1
                  or           t1, s0, zero
                  xori         s5, t0, 514
                  srl          tp, s7, t6
                  remu         s0, s5, s1
                  srai         a0, s3, 31
                  mulhsu       a5, t5, a7
                  c.andi       a0, 4
                  srai         t1, s1, 2
                  nop
                  mulhsu       a7, ra, s11
                  c.andi       a1, -1
                  xori         a5, t6, 1928
                  c.slli       t4, 4
                  mul          t4, t2, a3
                  mulhsu       s8, zero, s4
                  sra          s10, t4, s5
                  c.srai       a5, 1
                  mul          tp, s1, ra
                  sltiu        s5, a7, 1759
                  c.nop
                  c.mv         ra, s1
                  mulhu        t0, a5, tp
                  xori         t1, s6, 1746
                  c.addi       t5, 18
                  c.mv         t5, gp
                  c.add        t1, sp
                  c.and        s1, a0
                  xori         s6, s4, 1686
                  ori          a0, a1, 564
                  andi         t1, t5, -1559
                  xor          t4, a6, s4
                  c.add        s2, s1
                  c.and        a5, s0
                  div          a4, s1, s1
                  c.li         a3, -1
                  sll          ra, t5, a0
                  c.sub        a4, a2
                  add          t2, tp, t0
                  or           a1, s2, a4
                  c.srai       a4, 11
                  rem          t2, s0, s7
                  lui          t5, 366693
                  sltiu        tp, s4, 489
                  c.andi       a4, 10
                  or           a0, t3, t3
                  srli         s10, s5, 24
                  c.addi       ra, 13
                  sltu         s3, a3, t0
                  nop
                  lui          a3, 731664
                  slli         a0, s2, 13
                  c.lui        a6, 21
                  ori          s6, a0, -1386
                  sub          s7, a0, s7
                  andi         s0, gp, -1414
                  xori         s8, s1, -976
                  srl          gp, a0, t4
                  andi         s2, s10, -1697
                  mulh         zero, s7, ra
                  srli         a3, gp, 19
                  andi         s9, t4, -2032
                  mulhsu       t1, t2, t0
                  divu         s3, s4, a5
                  srai         t6, a2, 9
                  div          s7, s2, a0
                  sltu         a5, s7, t1
                  sra          a6, t3, t6
                  mulhsu       s10, s9, t1
                  and          a0, s5, s8
                  sub          s6, a1, s7
                  rem          s4, a5, a6
                  sltu         a7, s9, s5
                  c.li         s3, -1
                  and          s0, s0, zero
                  divu         a5, s8, sp
                  sll          s5, t0, s10
                  rem          s5, s8, t3
                  c.add        s2, s5
                  or           a1, s0, s0
                  sltiu        t2, s10, 1219
                  c.add        s10, s5
                  rem          s4, a5, s11
                  mulh         a6, s0, a4
                  c.mv         s1, t4
                  srl          t5, a7, t1
                  nop
                  c.or         s0, s0
                  ori          t1, s7, 1523
                  c.and        a1, s0
                  sltu         s9, ra, a2
                  srli         t3, gp, 28
                  sll          a6, a6, a6
                  xori         t6, s8, -1854
                  srl          t0, s1, zero
                  addi         s2, tp, -839
                  remu         a3, t6, tp
                  c.srai       s1, 11
                  nop
                  slti         s6, zero, 794
                  remu         a1, sp, ra
                  addi         s1, gp, 1741
                  sltu         gp, t6, gp
                  or           s2, a0, a4
                  sltiu        a0, gp, 1593
                  mul          s4, t2, t4
                  mulh         t4, s4, s5
                  xori         t4, s1, 1483
                  divu         a3, s2, a3
                  srli         a3, a4, 19
                  c.nop
                  slli         gp, zero, 28
                  xor          t3, s8, t2
                  and          s2, s5, a7
                  srli         a0, ra, 3
                  addi         t4, a7, -247
                  sltiu        s4, s8, 1216
                  sltiu        s0, t5, -1364
                  rem          a1, s1, gp
                  ori          t0, s4, 1458
                  c.andi       a3, -1
                  c.srai       s0, 12
                  mul          t3, tp, t3
                  sll          gp, s9, t5
                  srai         s5, s3, 23
                  div          s5, a7, t5
                  and          s10, a4, gp
                  c.li         gp, -1
                  add          tp, t3, s3
                  c.lui        s10, 1
                  c.xor        a0, a2
                  c.mv         a4, a2
                  nop
                  sltiu        zero, a0, -1141
                  xori         a0, s1, -912
                  c.add        s0, s11
                  addi         s1, a3, -279
                  lui          ra, 195223
                  addi         ra, a3, 1388
                  nop
                  c.add        a6, s8
                  srl          a4, s9, s9
                  nop
                  andi         t2, s2, 955
                  remu         s6, a5, a2
                  c.nop
                  srli         s5, t3, 16
                  mulhsu       t3, s6, ra
                  remu         tp, gp, a4
                  div          t3, t4, s0
                  c.srli       a3, 7
                  sra          t1, a0, a5
                  c.mv         s6, s6
                  c.andi       a0, -1
                  c.andi       s1, -1
                  c.lui        ra, 16
                  auipc        t6, 648682
                  rem          s6, s1, t3
                  c.srai       a0, 7
                  c.srai       a4, 7
                  c.srli       s1, 17
                  divu         t1, ra, ra
                  c.srai       s1, 4
                  c.li         t2, -1
                  sub          s7, a5, s8
                  or           s4, ra, a1
                  c.srai       a3, 5
                  c.slli       ra, 21
                  mulh         a1, t6, a5
                  slt          t1, gp, a6
                  c.slli       s8, 8
                  c.lui        a3, 10
                  srai         t5, s8, 23
                  mul          t3, a2, s7
                  mulh         ra, zero, t6
                  c.add        s1, t1
                  add          s2, s2, s5
                  c.xor        a4, a0
                  and          tp, t3, t4
                  mulh         s2, s3, s10
                  c.addi       s6, 21
                  c.add        a4, a5
                  remu         s3, t3, s6
                  mulh         s0, gp, s3
                  xor          a0, s8, s1
                  slt          s9, a3, sp
                  slt          s7, a3, t1
                  or           a4, s4, s2
                  srl          t6, s8, s4
                  or           s5, zero, s2
                  c.add        a5, s2
                  c.sub        s0, a0
                  c.xor        a5, a2
                  c.srli       a4, 5
                  slli         s3, zero, 27
                  c.or         a0, a1
                  sra          a1, a0, a6
                  slli         s0, s4, 5
                  andi         a6, s8, -628
                  c.srli       a5, 17
                  c.addi       s4, -1
                  ori          s3, zero, 931
                  sll          a6, t1, s11
                  xor          s5, a7, a1
                  add          a1, zero, a4
                  c.sub        a3, a2
                  xori         s8, s1, -172
                  and          s8, tp, s10
                  srli         t4, a7, 30
                  sltu         t6, s9, a5
                  srli         a0, t4, 20
                  srli         a6, s7, 18
                  div          t3, ra, t4
                  sra          a4, s0, a5
                  srli         a3, s4, 1
                  sltu         t5, tp, s9
                  ori          t0, ra, 391
                  c.slli       t4, 28
                  div          s7, zero, a6
                  c.and        a0, a4
                  ori          tp, tp, 1788
                  div          t5, ra, s1
                  addi         s1, a5, 891
                  c.andi       a0, -1
                  sra          s2, a1, s4
                  slti         t4, s2, -199
                  sra          a7, s11, a4
                  slti         t2, tp, -952
                  addi         s4, t6, 761
                  xor          t0, s9, t1
                  mulh         t0, a3, s7
                  c.lui        t4, 4
                  c.li         a1, 23
                  lui          s3, 562246
                  and          t0, t3, a1
                  sll          s9, a7, a3
                  c.andi       a4, -1
                  c.xor        s1, a2
                  lui          s8, 802299
                  andi         a7, t4, -934
                  or           s0, zero, s5
                  c.mv         a3, s11
                  c.sub        a3, a2
                  ori          s9, a5, -968
                  srli         s10, s4, 20
                  ori          s6, tp, -1052
                  c.add        t1, s2
                  sll          zero, a6, ra
                  c.nop
                  mulhu        s3, a6, s10
                  c.sub        a1, s0
                  slti         s0, t2, 966
                  slti         s2, t1, 431
                  or           zero, a4, s2
                  mulhsu       a3, s9, s10
                  c.xor        a0, a3
                  div          s0, a2, s5
                  c.or         s0, s0
                  or           t5, s4, s2
                  c.add        a1, t2
                  mulh         a3, s6, tp
                  c.lui        t4, 6
                  sltiu        a0, t2, 1504
                  c.nop
                  or           a4, ra, t3
                  andi         s9, a1, 164
                  sra          t4, a4, t0
                  slti         s5, a1, -481
                  c.nop
                  c.nop
                  c.nop
                  c.mv         t4, s6
                  c.sub        a5, a4
                  sub          s3, a5, zero
                  slti         t3, t3, 777
                  sra          t0, s2, sp
                  c.mv         tp, gp
                  sltu         s7, a6, s5
                  slti         s9, a2, -52
                  lui          t0, 44181
                  c.mv         a0, a0
                  addi         ra, s6, -1590
                  auipc        a7, 299188
                  c.sub        a5, s1
                  lui          a1, 29951
                  lui          a4, 878890
                  slli         a0, s2, 3
                  srai         a4, s6, 17
                  mul          gp, zero, t4
                  mulhu        a6, t0, s2
                  srai         a5, s2, 24
                  mulhu        t6, s8, a0
                  c.nop
                  slt          ra, t2, s6
                  c.nop
                  c.andi       s1, 25
                  c.li         t2, -1
                  sltu         s5, ra, s6
                  mul          a1, s9, a0
                  or           s3, a7, s6
                  and          a6, s8, a5
                  sltu         a7, a5, t3
                  ori          a1, t4, 1516
                  sltu         s3, s9, a1
                  srli         s0, t2, 18
                  srai         t4, s4, 13
                  remu         a0, t1, a3
                  c.xor        a5, a4
                  slli         s8, s3, 7
                  sltiu        a4, s9, 1433
                  slti         s2, t2, -285
                  sltu         t0, t0, a7
                  auipc        a3, 779287
                  divu         s10, t5, s7
                  c.srli       a5, 8
                  c.xor        a4, a1
                  mul          ra, s4, t1
                  c.sub        a3, a2
                  c.sub        a1, a1
                  remu         a7, s0, s6
                  srli         a6, a1, 17
                  xor          a4, t3, tp
                  sra          gp, gp, t3
                  divu         s5, s1, a2
                  c.srai       s1, 1
                  c.andi       s1, -1
                  slti         a7, s7, 1030
                  c.mv         s0, s0
                  mulh         a0, s8, s3
                  addi         t1, gp, 2030
                  remu         t2, t5, s11
                  srli         zero, s9, 4
                  mulhu        zero, s0, s0
                  lui          ra, 994476
                  c.and        a3, a5
                  nop
                  slt          t2, s2, a3
                  mulhsu       tp, a0, zero
                  and          s9, a5, a5
                  srl          t6, t0, a3
                  c.mv         t2, s8
                  sltiu        t1, s11, 941
                  mul          a4, gp, a4
                  mulh         s10, ra, t0
                  c.xor        a4, a1
                  and          s10, a6, s5
                  srli         s8, a7, 2
                  sltu         t6, a4, a0
                  srai         t4, a0, 13
                  srai         tp, t5, 8
                  mulh         a6, s5, a4
                  slli         s3, s3, 20
                  c.mv         a1, t4
                  sltiu        gp, s0, -1046
                  add          s4, a3, a1
                  xor          s7, s2, ra
                  c.xor        s1, a1
                  c.mv         s5, s7
                  div          s3, gp, sp
                  lui          a7, 949629
                  div          a7, s0, a0
                  ori          a4, a7, 1585
                  c.nop
                  mulhu        a3, s5, tp
                  andi         a0, s4, -566
                  c.srai       s0, 15
                  or           a3, a7, t0
                  sll          gp, s1, a1
                  c.srli       s1, 31
                  nop
                  lui          a6, 398357
                  sll          zero, s7, s7
                  andi         t3, t2, -1367
                  slti         t2, t4, -1887
                  mulhu        t3, t2, sp
                  mulhu        zero, t0, a0
                  div          a3, gp, tp
                  c.andi       s1, 30
                  c.andi       s0, 30
                  xor          s7, a7, s2
                  slli         t5, tp, 5
                  auipc        a4, 351065
                  div          s10, a7, t6
                  c.andi       s0, 31
                  c.addi       t5, 18
                  div          s1, s5, a7
                  xori         a5, tp, 1461
                  remu         a0, a6, s7
                  sll          s1, a1, s9
                  addi         ra, a1, -895
                  slti         gp, a1, 467
                  c.addi       t6, 26
                  or           zero, a7, t0
                  slt          tp, s10, s7
                  mulhu        t1, t3, s5
                  c.and        s0, a3
                  slt          t2, a2, a7
                  sltu         s3, s6, t3
                  c.sub        a3, a5
                  sltu         t1, a6, a7
                  nop
                  remu         a5, s6, s10
                  mul          a1, a3, s11
                  sub          t6, s9, s9
                  c.mv         t3, a7
                  c.lui        t0, 18
                  c.xor        a4, a5
                  ori          a1, a0, 1740
                  mulh         s4, tp, ra
                  c.addi       t6, -1
                  c.mv         t5, a1
                  andi         s2, t4, -993
                  andi         t3, s3, -855
                  nop
                  srli         a3, t0, 26
                  c.andi       a1, 29
                  c.srai       s0, 3
                  ori          t2, a3, -721
                  mulhu        s5, a6, s0
                  ori          s8, a6, 1247
                  xor          tp, s6, s3
                  c.slli       t1, 15
                  c.add        a1, a0
                  sltu         s5, a7, t6
                  addi         a0, s10, 1508
                  c.addi       t6, -1
                  xori         s1, s3, 625
                  srai         a5, s8, 5
                  mulh         s7, a3, t0
                  c.srai       a1, 18
                  mulhsu       s1, t4, t1
                  c.addi       s7, -1
                  addi         a6, s7, 1835
                  remu         t1, t2, a5
                  mul          a4, s3, t0
                  c.addi       a4, 26
                  c.lui        a7, 18
                  sltu         s2, s9, s5
                  xori         s8, t5, -1103
                  divu         t4, t6, t0
                  c.and        a0, a1
                  auipc        s6, 955845
                  and          t3, t6, a6
                  sltu         t3, s10, ra
                  slli         gp, sp, 14
                  c.mv         ra, t0
                  c.andi       a5, 22
                  lui          s3, 156855
                  c.addi       t6, -1
                  c.srai       a4, 18
                  c.add        a3, a4
                  sra          a4, s3, t0
                  or           s8, t0, s3
                  srl          s0, s2, gp
                  and          a6, t4, t3
                  c.or         a5, a3
                  mulh         s4, s3, s11
                  c.slli       t2, 25
                  or           s8, ra, a6
                  auipc        t1, 967081
                  mulhsu       s10, a6, a3
                  xor          s4, a7, sp
                  c.andi       a3, 9
                  sll          s1, tp, t3
                  c.andi       a4, -1
                  slti         a0, t1, 217
                  c.nop
                  srli         s8, s11, 6
                  c.srli       a5, 25
                  ori          s10, zero, 9
                  c.mv         a4, a0
                  sra          a6, t0, a7
                  sll          a7, s8, s0
                  c.add        ra, s6
                  sub          t6, a2, t4
                  c.srli       s0, 13
                  c.li         a3, -1
                  sll          a4, s3, t2
                  sltiu        t0, s8, 622
                  sltiu        s2, s4, -2039
                  mulhsu       t1, a2, a4
                  sltu         t6, s4, s8
                  c.sub        a1, a2
                  c.lui        s5, 20
                  c.srli       s0, 2
                  slt          a3, a5, t5
                  nop
                  c.srai       s0, 8
                  srl          t4, sp, t5
                  c.or         s1, s0
                  ori          a0, s7, 80
                  auipc        a7, 780053
                  c.mv         s3, s6
                  c.sub        a1, a3
                  lui          t1, 686945
                  c.and        a4, s0
                  add          s3, t5, s3
                  sub          a7, a7, t4
                  lui          t3, 1012640
                  c.xor        a1, a1
                  sub          a0, s9, sp
                  c.nop
                  c.andi       s0, -1
                  c.and        a0, a2
                  divu         s2, zero, tp
                  mulhsu       s1, t4, t1
                  sll          a4, a4, s1
                  mul          a4, t1, ra
                  or           s7, s11, a7
                  sltu         s0, tp, a4
                  andi         s10, t5, 999
                  auipc        s6, 37927
                  remu         s3, s5, s9
                  c.mv         tp, ra
                  srl          a3, a0, a3
                  mulhu        s3, t2, a6
                  addi         s3, t5, 1812
                  srl          a3, t5, t3
                  c.srli       a0, 19
                  srl          t6, t6, s0
                  mulhsu       a6, t3, t4
                  c.li         t6, -1
                  c.srli       a4, 4
                  mulh         s2, s3, s5
                  c.or         a0, a3
                  slt          tp, a5, t3
                  srai         t2, t2, 12
                  sub          a0, s8, a2
                  c.lui        t3, 4
                  c.nop
                  addi         a4, t0, -1229
                  c.nop
                  nop
                  mul          t6, ra, t3
                  sub          s10, t4, s7
                  c.li         s7, 1
                  remu         a6, s11, s7
                  c.sub        a0, a2
                  lui          t1, 773066
                  divu         a6, t0, s2
                  slt          ra, ra, s2
                  auipc        t5, 404869
                  xori         s8, a2, -1387
                  div          t5, s4, s10
                  c.srli       a1, 23
                  sll          s5, a6, a5
                  sll          a0, s6, s4
                  mulhsu       s2, a1, t4
                  c.xor        a3, s0
                  and          s3, a2, gp
                  mulhu        a1, t4, t0
                  lui          s5, 7501
                  c.srai       a3, 20
                  or           gp, a4, a6
                  srli         t1, s11, 2
                  c.sub        a4, a0
                  addi         t5, s9, -937
                  addi         t0, s0, -69
                  sll          s3, s10, t0
                  sub          a7, a3, a4
                  ori          s9, s7, -1765
                  remu         tp, ra, s3
                  andi         s8, s6, 1714
                  mulhsu       s6, a6, t6
                  divu         s8, t3, t3
                  mulh         s6, sp, a2
                  c.slli       s10, 3
                  srli         a4, a6, 0
                  srl          s6, s11, a5
                  rem          s2, a7, s0
                  c.and        a5, s0
                  c.addi       s0, 10
                  c.mv         s3, s3
                  sub          s8, s0, s7
                  or           a0, a1, s6
                  srl          gp, s1, s9
                  xor          tp, a2, s2
                  sltiu        s0, a5, -117
                  c.addi       a6, -1
                  lui          t1, 693742
                  add          a1, t6, t3
                  sll          a5, a6, a0
                  c.andi       a4, -1
                  add          a3, s11, s3
                  c.andi       a4, 21
                  sra          t1, t1, t5
                  sra          t6, s8, t0
                  auipc        a7, 632325
                  auipc        s9, 77947
                  mul          a1, ra, a3
                  c.addi       s7, -1
                  mul          s6, a1, tp
                  lui          t6, 155023
                  auipc        s5, 204498
                  div          t6, gp, t5
                  c.srai       s0, 3
                  slti         a4, s8, -1163
                  c.li         s2, 14
                  c.mv         ra, a1
                  mulhu        s9, s2, a1
                  mulh         a4, a1, a0
                  c.sub        a0, a5
                  and          t1, a4, s10
                  divu         t5, a3, t1
                  remu         t5, t0, a1
                  div          t6, a2, s9
                  srl          t6, zero, a2
                  c.and        a0, a2
                  c.and        a3, a5
                  srl          a6, t5, s10
                  lui          s7, 1038122
                  sra          t2, tp, t4
                  rem          s8, t0, a6
                  rem          s7, s1, s11
                  c.mv         t4, a3
                  c.nop
                  lui          t4, 914653
                  divu         a4, s11, ra
                  c.mv         t3, s2
                  c.sub        a0, a3
                  c.srli       a3, 18
                  andi         t0, t3, -769
                  sltu         t2, t4, t2
                  c.srai       s0, 20
                  add          t4, t2, t0
                  c.srli       a3, 20
                  c.andi       a5, -1
                  slt          gp, t3, a0
                  mulhsu       s0, a0, a6
                  sra          t1, a4, t5
                  andi         t1, s11, 792
                  sltiu        s6, t0, -1903
                  lui          t2, 414499
                  c.srli       a4, 24
                  c.add        a1, s11
                  auipc        a7, 438042
                  c.srai       s0, 4
                  sra          ra, s5, t3
                  c.mv         s2, t4
                  sltu         s2, t6, t0
                  sub          s6, s4, t0
                  slli         t3, a2, 21
                  mulhu        t6, a6, s5
                  c.slli       a5, 7
                  xori         tp, a5, -1564
                  and          ra, a6, s3
                  sra          s6, s3, t4
                  srli         a3, a2, 26
                  c.slli       s6, 3
                  c.xor        a3, a5
                  slti         t0, a0, -1900
                  c.li         s0, 5
                  remu         a3, ra, t5
                  c.li         s0, 23
                  mulh         s1, t2, t0
                  srli         a0, a1, 15
                  c.nop
                  sra          t2, s10, ra
                  sltiu        s6, s2, 1371
                  c.nop
                  addi         tp, t0, 2034
                  addi         a7, a2, -1156
                  sra          s0, t4, a3
                  ori          s8, a5, 307
                  lui          t6, 184363
                  auipc        a1, 534159
                  andi         a5, a4, 206
                  mul          s2, s4, t0
                  srai         t2, a7, 17
                  div          s5, t5, s10
                  mulhu        s10, t5, s9
                  c.mv         s10, s2
                  xor          s5, zero, s7
                  auipc        s4, 36635
                  ori          a3, a4, 1451
                  c.slli       a7, 12
                  or           a1, t1, a0
                  sra          a1, a5, gp
                  sub          s4, zero, t4
                  mulhsu       s0, s1, t6
                  sra          s10, sp, s9
                  slt          s4, s0, s5
                  rem          s9, sp, sp
                  div          t0, t6, a7
                  remu         t4, t2, t6
                  sra          a7, sp, s7
                  c.add        a6, t2
                  xori         s3, s9, 1426
                  ori          ra, a2, 77
                  sub          s9, s3, sp
                  or           a3, s9, s3
                  div          t6, a1, t2
                  andi         s4, t2, -962
                  xor          t6, t0, a3
                  mulh         t2, a1, a5
                  lui          s1, 177051
                  rem          s1, s10, s7
                  srai         s2, a6, 7
                  rem          t3, s1, a3
                  rem          zero, t0, s7
                  mul          a5, a6, t5
                  c.slli       s6, 14
                  c.addi       s10, 30
                  srai         t3, a2, 28
                  c.xor        s0, a2
                  sll          t0, t0, s1
                  xori         s5, a3, 1431
                  c.addi       gp, 22
                  c.slli       ra, 29
                  rem          a0, s4, a5
                  c.addi       a6, 27
                  mul          ra, s2, s1
                  add          a3, a1, t4
                  or           s5, s9, s0
                  c.nop
                  add          s5, gp, a1
                  srai         ra, t2, 26
                  srli         ra, a6, 6
                  sll          a3, t3, s11
                  divu         zero, t1, s3
                  div          s9, s6, t4
                  c.add        t4, a5
                  c.nop
                  and          t4, s1, s0
                  lui          a1, 270591
                  c.slli       t0, 11
                  auipc        a1, 572842
                  srl          s2, s1, s6
                  slti         t2, zero, -1488
                  or           t5, t3, s0
                  srl          tp, s3, s4
                  nop
                  addi         a1, s8, 1912
                  and          a4, a7, s8
                  or           t6, t0, t5
                  c.li         t6, 11
                  nop
                  xori         t3, s1, -273
                  slli         a4, s2, 0
                  c.sub        a4, a3
                  c.and        s0, a3
                  sub          s5, s6, a6
                  sltiu        s0, t1, 1462
                  or           a1, tp, a0
                  mul          t2, s2, t2
                  mulhsu       s1, ra, sp
                  xori         t3, t4, 1801
                  srl          zero, a1, a0
                  xori         s1, a5, 527
                  srl          a3, s9, s6
                  c.li         s0, 27
                  slti         s6, s0, 100
                  divu         s9, a1, s11
                  mulhsu       a0, a6, zero
                  sltiu        t2, s10, 1297
                  srai         s4, a0, 7
                  sltiu        s10, gp, 1500
                  c.nop
                  c.srli       s0, 7
                  sll          a3, t1, a7
                  andi         s2, s1, 285
                  srli         zero, a1, 5
                  c.slli       a4, 25
                  srl          s6, tp, t0
                  auipc        s0, 669573
                  xor          t5, s1, t0
                  srai         s0, a3, 28
                  c.or         s1, a3
                  c.srli       a3, 23
                  divu         a7, s6, t3
                  mulhu        s6, t0, gp
                  xori         a5, t3, 433
                  sltiu        gp, a6, 1898
                  slt          t3, a6, t6
                  c.slli       t5, 15
                  ori          gp, t5, -837
                  xor          s0, s7, s9
                  slt          s0, gp, s8
                  auipc        a3, 654482
                  mulh         s3, a0, t0
                  ori          a5, a6, 78
                  srli         a3, t0, 26
                  ori          gp, t0, -1127
                  c.mv         s6, s3
                  c.or         a5, s0
                  divu         a4, a0, s10
                  c.slli       a5, 26
                  rem          t3, s10, a1
                  addi         a7, a7, -339
                  srai         t6, s7, 7
                  auipc        s0, 115034
                  c.srli       a1, 1
                  c.lui        s6, 1
                  lui          s9, 476858
                  c.or         a4, a3
                  sub          t0, s9, gp
                  addi         tp, gp, -297
                  c.sub        a3, s0
                  c.addi       t3, -1
                  remu         s7, s6, a3
                  divu         s1, s10, t1
                  sltiu        t0, a2, -725
                  sra          t1, s5, gp
                  c.xor        a0, s0
                  c.srai       a0, 12
                  slti         s0, a2, 933
                  ori          t6, ra, -1552
                  slt          s2, t2, s6
                  andi         t5, a7, 732
                  andi         t2, s3, -897
                  c.nop
                  srai         ra, s0, 7
                  srli         s9, s4, 28
                  mulhu        s4, s2, sp
                  c.slli       ra, 9
                  c.addi       a0, -1
                  srli         a6, s0, 20
                  srai         s6, a3, 14
                  sub          s10, s5, a5
                  divu         tp, a4, s5
                  c.addi       a1, 14
                  xor          s6, s1, gp
                  c.slli       s9, 9
                  slli         t1, gp, 1
                  sltu         t4, t1, a7
                  c.and        a4, a3
                  xor          a3, a6, s5
                  add          s4, s7, s10
                  or           s4, a4, a7
                  lui          t6, 378819
                  c.andi       a4, -1
                  andi         gp, tp, -1769
                  ori          s5, s10, 842
                  andi         t0, t2, 1419
                  nop
                  slt          a1, a7, s3
                  c.slli       s2, 21
                  c.addi       s3, -1
                  sub          ra, sp, s7
                  c.srli       s1, 28
                  c.xor        a0, a2
                  c.and        a4, a4
                  mulhu        s7, a3, s0
                  sub          t4, zero, a6
                  sltiu        a6, s9, 1063
                  c.andi       a4, 28
                  c.add        t1, s4
                  c.slli       t6, 8
                  xor          t1, s5, a1
                  srai         s3, s3, 29
                  c.slli       t6, 27
                  lui          s1, 375189
                  slli         a0, s5, 30
                  mulhu        ra, s7, s2
                  mul          s3, a3, s5
                  sub          t6, t4, s0
                  nop
                  c.lui        tp, 20
                  c.mv         t0, ra
                  andi         s1, s6, 1623
                  c.xor        a3, s1
                  remu         a0, s7, ra
                  sra          tp, s5, t0
                  mulh         s1, s8, a0
                  rem          s1, s3, t0
                  c.and        a5, a5
                  mul          t3, s5, s9
                  slli         a5, s8, 12
                  c.or         a0, a0
                  or           t1, s4, a7
                  xor          tp, t4, s9
                  add          s10, a0, t3
                  xori         t6, s8, -80
                  c.addi       s3, 22
                  mulh         a6, a6, a3
                  xor          s8, a2, ra
                  slt          a5, s7, t3
                  c.slli       s6, 28
                  addi         a3, s6, 685
                  and          s0, s0, s8
                  srli         s4, a7, 2
                  c.xor        a4, a1
                  sub          s6, a1, tp
                  sub          ra, s2, a5
                  sub          a4, s7, tp
                  c.li         s7, -1
                  add          s9, s2, a6
                  c.slli       s7, 3
                  c.andi       s0, -1
                  c.addi       t6, 1
                  mulhsu       t5, s5, s8
                  mul          s2, t3, sp
                  sltiu        s7, sp, -1148
                  c.xor        a4, a5
                  rem          t0, s4, s9
                  sub          t3, t3, s7
                  c.andi       a5, 2
                  sub          a4, s4, t5
                  c.sub        a1, a3
                  slti         a0, a2, 1197
                  c.slli       s5, 22
                  nop
                  slli         s10, zero, 30
                  auipc        ra, 896019
                  mul          ra, a1, t2
                  c.addi       s8, -1
                  addi         s0, s2, 1976
                  c.lui        s7, 9
                  srai         a0, t5, 10
                  c.slli       tp, 24
                  divu         a0, tp, gp
                  c.xor        s0, a3
                  ori          s7, s4, 1314
                  c.andi       a0, 11
                  mulhsu       a4, t4, gp
                  xor          s10, a5, s2
                  srl          a6, s8, a1
                  div          t2, s11, t4
                  auipc        a6, 1005156
                  c.and        a1, a1
                  addi         s10, zero, -1348
                  lui          ra, 762053
                  nop
                  and          t1, a6, a1
                  auipc        t3, 671454
                  c.addi       s3, 3
                  auipc        a1, 811113
                  c.lui        s5, 15
                  sll          t0, a3, ra
                  slt          s4, t3, a5
                  c.xor        a4, a3
                  mul          tp, t1, t1
                  div          s0, s10, a1
                  c.xor        s1, a1
                  c.srli       a5, 30
                  div          s7, a7, s5
                  sltiu        a7, t0, 253
                  lui          t6, 137264
                  c.sub        a5, a4
                  c.andi       a4, 17
                  mulh         s3, ra, a4
                  mulhsu       s3, s8, t5
                  auipc        s1, 220915
                  c.li         s1, 18
                  c.andi       a1, 12
                  sltiu        s9, s9, 1001
                  andi         tp, t5, -320
                  mulh         s1, a3, sp
                  c.slli       s3, 14
                  xor          s9, t1, s7
                  c.slli       s3, 15
                  xor          s0, s8, a7
                  sltiu        t5, a7, 1961
                  sltu         t6, tp, zero
                  c.mv         a4, a1
                  slti         s0, a7, -259
                  and          t4, a7, zero
                  div          s0, t3, a5
                  nop
                  div          s0, gp, a5
                  sll          a5, a3, s0
                  remu         tp, t0, s7
                  ori          a6, a0, -396
                  c.srli       a4, 27
                  c.addi       t0, -1
                  c.li         s7, 15
                  and          s5, a7, a2
                  slti         s6, s6, -1905
                  c.xor        a3, a3
                  mulhu        a3, s4, s10
                  slt          a4, sp, a1
                  c.and        a3, a0
                  srli         t0, a6, 17
                  c.or         s0, a2
                  auipc        ra, 498520
                  slt          zero, s11, ra
                  mulh         t0, s7, a1
                  c.slli       s7, 30
                  c.andi       s0, -1
                  mul          s6, s6, s8
                  add          a4, tp, zero
                  sll          a5, a2, t4
                  c.li         a1, -1
                  and          a6, t4, s9
                  c.addi       a3, 18
                  xori         zero, gp, 1409
                  c.mv         t0, ra
                  divu         s2, s9, a0
                  slti         s1, tp, -1688
                  c.xor        a3, a5
                  c.add        s0, s0
                  c.andi       s1, 27
                  srli         a0, s1, 7
                  slt          a5, t4, s5
                  c.mv         s6, s3
                  andi         s8, t5, -232
                  div          ra, s7, a5
                  c.slli       s3, 17
                  srai         a5, s6, 26
                  c.srli       s1, 18
                  xor          zero, s0, s1
                  mulh         s6, s6, s3
                  ori          s8, s2, -1358
                  c.andi       a1, 22
                  auipc        a1, 37347
                  and          s0, s3, t3
                  mulh         a3, tp, s2
                  c.slli       a5, 2
                  c.lui        t5, 4
                  slt          t1, t2, t2
                  or           t0, s6, zero
                  xori         t6, s8, 851
                  add          t0, a4, s5
                  or           a6, t0, s3
                  c.and        a3, a2
                  remu         a0, s4, s9
                  sll          gp, a4, s3
                  rem          t0, a2, t5
                  rem          s7, gp, s3
                  c.srli       a1, 16
                  sra          t1, a2, s0
                  sltu         a5, s7, a3
                  slt          a4, t0, ra
                  c.andi       a3, -1
                  c.addi       t1, 31
                  sra          a4, tp, s4
                  c.srli       a4, 30
                  c.or         s1, s1
                  c.sub        s0, a3
                  ori          t2, a5, 658
                  rem          s1, a4, s7
                  c.or         a3, s0
                  rem          s10, sp, t0
                  c.sub        s0, a5
                  c.and        s0, a3
                  and          t0, s11, a0
                  addi         t2, t0, -1076
                  c.sub        s1, a1
                  andi         s4, a1, 878
                  addi         s2, a1, 497
                  xori         s0, a0, 107
                  div          t6, a5, t3
                  c.andi       a4, 20
                  remu         t2, a5, s4
                  div          a3, s3, t1
                  slli         t4, ra, 14
                  sub          s0, gp, ra
                  ori          s2, zero, -72
                  srai         a6, s11, 4
                  andi         ra, t1, 273
                  div          a7, a6, s9
                  c.addi       t5, -1
                  c.addi       a4, 26
                  slt          zero, a6, s0
                  srl          s2, t6, t5
                  c.mv         a5, t3
                  srli         t0, s2, 0
                  c.xor        a3, a1
                  ori          ra, sp, 244
                  auipc        s0, 300107
                  remu         s10, t3, t0
                  andi         t1, t2, -437
                  c.slli       s8, 22
                  c.or         a3, a5
                  sub          ra, s4, s10
                  andi         s10, tp, -687
                  divu         gp, sp, s5
                  or           t1, t1, s4
                  c.mv         s4, s6
                  slti         t5, s1, 691
                  auipc        a3, 230066
                  addi         ra, s0, -1332
                  srl          s8, ra, t1
                  mulhsu       t6, t5, a6
                  divu         s0, s3, s1
                  mulhsu       s9, s7, s5
                  slli         tp, ra, 8
                  c.nop
                  rem          tp, ra, a7
                  c.li         t0, 24
                  divu         s10, t2, a6
                  c.or         a3, a5
                  nop
                  and          s2, zero, zero
                  addi         s4, t5, -1397
                  srai         t5, s6, 19
                  c.srli       a4, 30
                  sltiu        a3, s2, 492
                  sub          a6, a1, t1
                  mulh         s9, a1, s5
                  slti         s6, tp, 273
                  srli         t4, s7, 6
                  xori         s1, a2, -198
                  sub          a0, s6, s8
                  xori         t1, ra, -293
                  c.srai       s1, 31
                  auipc        zero, 562114
                  mulhsu       a6, tp, a5
                  and          gp, a0, a0
                  sltiu        a6, ra, 1211
                  c.andi       a0, -1
                  auipc        a4, 909911
                  div          a4, ra, sp
                  mul          zero, t6, tp
                  add          s10, s7, s2
                  remu         t3, sp, s10
                  xor          t6, s5, s0
                  xor          ra, a6, s1
                  c.srli       a0, 5
                  nop
                  c.and        s1, s0
                  c.lui        s1, 19
                  c.li         a4, 21
                  srli         ra, s8, 31
                  sltiu        s10, zero, 1220
                  mul          zero, s7, s0
                  c.addi       a7, 7
                  sub          ra, a5, s3
                  addi         t4, a2, 513
                  c.xor        a3, s0
                  c.slli       s6, 19
                  c.add        s5, a4
                  andi         t1, a5, 203
                  sltu         t2, s10, a7
                  mulh         s10, t2, s6
                  c.lui        a0, 24
                  c.lui        s9, 8
                  addi         a1, s5, 432
                  c.xor        a4, a4
                  c.nop
                  sub          ra, s4, sp
                  c.lui        t4, 30
                  nop
                  c.li         s10, 22
                  c.xor        a3, a5
                  mulh         t3, s3, tp
                  c.srli       s0, 25
                  slli         zero, s11, 17
                  c.sub        a1, a2
                  c.nop
                  sll          t2, t3, a4
                  c.slli       tp, 24
                  srli         t1, a4, 13
                  ori          s2, s7, 1770
                  c.sub        a5, a0
                  slli         s9, s0, 24
                  ori          t2, s9, -151
                  sra          s7, a0, s11
                  or           t5, s10, a0
                  slti         a4, t4, 755
                  slli         t3, gp, 6
                  or           t4, s10, a7
                  or           t3, sp, s9
                  srli         s8, sp, 27
                  srl          a5, s10, s4
                  c.sub        a0, a3
                  ori          t3, s5, -1787
                  and          a1, s8, s7
                  remu         gp, s5, a4
                  sll          gp, t6, tp
                  c.nop
                  nop
                  c.mv         t1, a2
                  c.or         a0, a5
                  rem          s9, s10, a3
                  c.or         a0, s0
                  divu         s1, tp, sp
                  slt          a4, s11, zero
                  c.xor        a3, a0
                  slt          t3, gp, s0
                  c.addi       a0, 16
                  add          s0, s1, a2
                  slti         s3, s2, 846
                  mul          s4, a2, t2
                  div          s10, s5, t0
                  sra          t3, s6, t4
                  sltiu        s0, s1, 747
                  c.nop
                  xori         a1, tp, 1419
                  mulhu        t1, s2, tp
                  ori          tp, t0, -959
                  auipc        s10, 1019251
                  auipc        a7, 948932
                  c.add        t1, a6
                  c.or         a5, a2
                  add          s7, s10, a6
                  xori         s10, s10, -1104
                  c.nop
                  c.lui        t0, 9
                  sll          s6, a3, sp
                  srai         s4, s2, 21
                  c.srli       a3, 29
                  ori          s8, sp, 350
                  nop
                  div          a4, gp, a3
                  nop
                  addi         s3, s11, -1499
                  remu         a5, s6, a0
                  addi         s5, s1, -1990
                  or           a6, s11, a6
                  slt          tp, zero, a1
                  or           s5, s0, a4
                  c.mv         a1, s6
                  c.lui        a0, 12
                  c.add        s0, a7
                  c.xor        a3, a3
                  srai         s10, tp, 27
                  sltu         t5, a7, s5
                  c.mv         a5, s9
                  addi         ra, t2, -355
                  xori         s9, zero, 440
                  add          a4, t2, sp
                  remu         a4, s3, s11
                  mulhsu       tp, t5, a6
                  and          gp, s1, s9
                  c.or         a1, a2
                  srl          s1, s8, s8
                  divu         s3, a3, sp
                  mulh         s5, s5, a5
                  sub          a4, s4, t5
                  remu         gp, s3, gp
                  c.add        a4, t0
                  rem          a3, s9, a4
                  slt          a1, tp, gp
                  c.slli       a1, 23
                  sra          s1, s6, t1
                  sll          s6, s8, a7
                  c.sub        s1, a3
                  c.xor        a1, a5
                  mul          s4, sp, a4
                  xor          t3, a3, s7
                  mulh         s5, a3, t1
                  c.lui        a7, 19
                  c.srli       a4, 5
                  div          zero, s10, t2
                  mulhu        ra, t5, a3
                  sra          zero, s1, s3
                  srl          t6, ra, a2
                  mulhu        gp, a2, s11
                  c.lui        s1, 4
                  c.srli       a0, 8
                  c.lui        t5, 10
                  srai         t2, s11, 22
                  andi         s9, a3, 2032
                  c.mv         a7, a3
                  c.addi       a4, 9
                  srli         zero, s11, 2
                  nop
                  c.and        a3, s0
                  add          t6, a1, t5
                  c.li         s3, -1
                  sub          a6, t3, s2
                  c.srli       a3, 10
                  c.lui        s7, 2
                  mulh         ra, a2, t5
                  c.slli       a6, 29
                  c.srai       a1, 10
                  addi         ra, s7, 386
                  mulhu        a5, s4, t1
                  c.srai       a3, 10
                  mulh         s8, t5, a1
                  c.lui        s4, 5
                  sltu         gp, sp, t4
                  c.addi       s5, 8
                  c.add        a3, s0
                  slt          s3, sp, t6
                  remu         s8, a4, sp
                  ori          ra, a3, -1072
                  sltu         t2, a5, t4
                  slli         s1, s3, 1
                  lui          s3, 814321
                  xor          s1, t1, a6
                  lui          s9, 537226
                  rem          s9, sp, s10
                  c.slli       s1, 25
                  c.add        t4, a7
                  auipc        tp, 1012458
                  c.li         a5, 4
                  mulhu        s10, s6, a3
                  c.andi       a1, -1
                  c.nop
                  sll          ra, t5, gp
                  or           a7, s5, gp
                  xor          a7, s2, s11
                  and          t3, zero, s5
                  sltu         s5, a1, a3
                  divu         s10, a4, s1
                  sll          t2, t4, a4
                  mulhu        t6, s0, a2
                  c.sub        s0, a1
                  c.lui        s1, 7
                  c.and        a5, a4
                  slli         a7, s7, 3
                  c.xor        a1, a4
                  andi         s4, a1, 1186
                  sub          s2, a7, s5
                  rem          s7, t3, s11
                  mul          t6, s0, a6
                  add          s10, t5, t5
                  and          gp, a6, s0
                  c.lui        a3, 5
                  c.nop
                  div          s4, s1, s10
                  and          s10, s4, s7
                  remu         t1, s10, a0
                  sll          s0, s7, s5
                  slt          s8, tp, tp
                  mulh         a4, a2, a2
                  c.xor        a4, a5
                  c.srli       a4, 24
                  and          s7, a0, t0
                  xor          a4, tp, s4
                  addi         gp, gp, 1347
                  andi         zero, ra, -888
                  and          t2, s4, tp
                  xori         a7, s1, -1814
                  rem          t0, s4, s6
                  sll          t3, a2, a1
                  srai         a3, s9, 3
                  sra          s1, s10, s3
                  sltu         a5, t5, tp
                  sltiu        t1, s0, -920
                  xor          s8, gp, ra
                  sra          a6, tp, tp
                  sltu         s1, s3, a2
                  c.andi       a3, -1
                  c.nop
                  add          s1, s2, s8
                  nop
                  mulhu        s2, a6, s7
                  and          t2, a5, s1
                  sub          t4, s0, s4
                  c.nop
                  c.andi       a0, 22
                  div          a5, a4, s2
                  sll          a1, s11, s1
                  or           a3, s9, s11
                  mulh         a5, s11, t1
                  nop
                  srli         s1, t3, 16
                  andi         ra, s7, 602
                  c.xor        s0, a0
                  remu         t6, t5, sp
                  sltu         t2, s5, s4
                  div          s6, t4, s6
                  srli         t1, t1, 26
                  slt          tp, s10, s4
                  c.add        s5, t1
                  srl          s3, t5, s0
                  srl          s6, s5, t2
                  c.slli       a4, 13
                  c.sub        a5, a3
                  andi         a7, s0, -358
                  sltu         a5, s10, s10
                  sltiu        t2, a6, -614
                  slli         s0, s10, 14
                  or           s2, t1, tp
                  sll          s10, sp, t3
                  c.add        a4, t2
                  c.slli       s9, 28
                  slt          s1, s5, sp
                  c.srli       s1, 20
                  slti         s10, s0, 456
                  rem          s3, a2, zero
                  xor          a6, t5, s3
                  mulh         s5, t2, s6
                  c.add        t4, a0
                  c.xor        a5, s1
                  and          s10, t0, s6
                  add          gp, s11, zero
                  rem          t1, s9, s8
                  addi         ra, s10, -1128
                  div          s1, s10, a3
                  rem          a1, s5, s8
                  rem          s0, gp, s11
                  slli         a6, s0, 6
                  srai         s0, gp, 16
                  sll          t3, s11, ra
                  sltu         zero, t2, t6
                  c.sub        a1, a4
                  srai         t4, a2, 26
                  srai         s8, t6, 25
                  c.andi       s1, 1
                  sll          s5, s4, a2
                  ori          t0, t6, 1994
                  srli         s5, a0, 7
                  sll          s9, s10, s2
                  sra          gp, t3, s4
                  mul          gp, a4, s2
                  andi         s7, tp, -1157
                  nop
                  c.srli       a1, 14
                  c.andi       s1, -1
                  divu         s4, s2, t1
                  remu         t2, zero, gp
                  sltiu        s5, a4, -1900
                  mulhsu       s2, a5, s11
                  auipc        a3, 86588
                  c.add        s7, s5
                  c.add        t2, a0
                  rem          a4, sp, gp
                  mulhsu       t5, s1, sp
                  ori          s9, s9, 1625
                  lui          t2, 518828
                  mulhu        zero, t0, a7
                  sltu         s2, s4, a4
                  ori          t4, a4, 1886
                  c.mv         s9, s8
                  c.add        s5, a0
                  xori         t4, a4, 1917
                  ori          a6, t0, -1437
                  c.srli       s1, 25
                  div          t4, s7, a0
                  slti         s5, t0, -202
                  mulh         s6, tp, tp
                  c.li         s4, -1
                  sll          t1, a5, ra
                  c.andi       a0, -1
                  mulhsu       a6, a6, a5
                  c.and        a1, a0
                  c.srli       s0, 13
                  slti         s0, a0, -1499
                  c.and        a0, a0
                  c.mv         a3, t6
                  c.andi       a4, 2
                  xor          s1, s4, t1
                  div          a7, s6, s2
                  c.andi       a0, -1
                  srai         s2, t1, 22
                  xor          s0, s10, a1
                  c.sub        a3, s0
                  c.add        a6, gp
                  rem          s2, s1, t0
                  srl          a3, tp, s6
                  c.mv         a7, gp
                  auipc        t0, 906197
                  or           s10, a0, s7
                  c.srli       a3, 23
                  slli         a3, s1, 14
                  c.and        a3, a2
                  xor          a3, s2, t0
                  la x12, test_done
                  jalr x0, x12, 0
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
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_2:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_3:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_4:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_5:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_6:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_7:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_8:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_9:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_10:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_11:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_12:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_13:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_14:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_15:
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

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
                  addi x2, x2, -4
                  sw  x27, (x2)
                  add x27, x2, zero
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x2, x27, zero
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x6, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x6, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x6, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x6, x23, ecall_handler
                  li x23, 0x1
                  beq x6, x23, instr_fault_handler
                  li x23, 0x5
                  beq x6, x23, load_fault_handler
                  li x23, 0x7
                  beq x6, x23, store_fault_handler
                  li x23, 0xc
                  beq x6, x23, pt_fault_handler
                  li x23, 0xd
                  beq x6, x23, pt_fault_handler
                  li x23, 0xf
                  beq x6, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  add x2, x27, zero
                  lw  x27, (x2)
                  addi x2, x2, 4
                  mret

load_fault_handler:
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  add x2, x27, zero
                  lw  x27, (x2)
                  addi x2, x2, 4
                  mret

store_fault_handler:
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  add x2, x27, zero
                  lw  x27, (x2)
                  addi x2, x2, 4
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  add x2, x27, zero
                  lw  x27, (x2)
                  addi x2, x2, 4
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  add x2, x27, zero
                  lw  x27, (x2)
                  addi x2, x2, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x27, x2, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  add x2, x27, zero
                  lw  x27, (x2)
                  addi x2, x2, 4
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
