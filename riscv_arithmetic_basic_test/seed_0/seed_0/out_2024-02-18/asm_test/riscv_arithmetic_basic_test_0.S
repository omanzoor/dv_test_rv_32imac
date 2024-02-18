.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x24, h0_start
jalr x0, x24, 0
h0_start:
                  li x16, 0x40001105
                  csrw 0x301, x16
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 0
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  li x16, 0x0
                  csrw 0x304, x16 # MIE
                  mret
init:             
                  li x0, 0xfc861ff9
                  li x1, 0xb
                  li x3, 0x80000000
                  li x4, 0xf3129ae6
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0xfbfc2977
                  li x11, 0xcdc326ab
                  li x12, 0x6
                  li x14, 0x80000000
                  li x15, 0xd
                  li x16, 0x8
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0x3e1b7d8c
                  li x21, 0x81f57213
                  li x22, 0xab622866
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0xf4ee9fa9
                  li x27, 0x2a8e0d65
                  li x28, 0xfd64d33a
                  li x29, 0x8
                  li x30, 0x80000000
                  li x31, 0xf47e48a8
                  la x2, user_stack_end
main:             mul          s3, s7, t4
                  c.and        a0, a5
                  c.xor        a5, s0
                  slli         ra, s4, 7
                  slti         a1, t2, 420
                  c.srli       s1, 9
                  mulh         s7, a0, gp
                  c.or         a2, s1
                  div          t4, a5, ra
                  c.li         s7, 21
                  mulh         s2, ra, s8
                  sll          ra, s11, sp
                  srai         t6, zero, 27
                  rem          s6, s4, a5
                  slli         gp, s2, 1
                  or           s7, s7, s9
                  c.sub        s0, a2
                  c.add        t1, s7
                  sll          s4, s9, s6
                  c.srli       s0, 30
                  sll          t3, gp, s2
                  lui          s6, 277692
                  addi         t2, a3, -601
                  sra          ra, t4, s9
                  rem          s2, s10, s3
                  c.srli       a4, 29
                  srai         s0, s4, 15
                  c.sub        a2, a0
                  addi         s0, s9, -1414
                  addi         t1, t4, -157
                  srl          t1, t4, t4
                  nop
                  nop
                  c.srli       a5, 13
                  c.xor        a2, a1
                  sltiu        t2, t3, -1653
                  c.xor        a2, s0
                  or           a5, t1, a2
                  mulhu        a0, t6, a0
                  slli         a4, gp, 26
                  xor          t3, s11, s3
                  srli         gp, a1, 19
                  c.lui        t4, 14
                  slli         a2, a1, 23
                  c.andi       a5, 20
                  mul          t5, s11, s1
                  slti         zero, a1, 705
                  sll          t1, zero, a4
                  c.mv         ra, s10
                  divu         s4, s9, t2
                  c.and        a5, a0
                  ori          t1, ra, 1161
                  slt          s0, t4, s4
                  nop
                  sll          s4, a6, a0
                  sub          t6, t2, ra
                  ori          a0, a7, -1932
                  add          t0, t2, a6
                  and          a4, a0, tp
                  c.mv         a5, a1
                  c.nop
                  c.andi       a2, 6
                  xori         s9, a1, 382
                  or           a7, s9, s9
                  srli         t3, a6, 23
                  c.srai       s1, 24
                  slti         zero, tp, -1678
                  slt          t5, a2, a7
                  rem          t3, t6, t1
                  c.srai       a2, 2
                  and          gp, a5, sp
                  c.or         a4, s0
                  andi         s11, s6, 1472
                  c.srai       s1, 6
                  ori          s5, s11, 208
                  c.mv         t6, s7
                  ori          tp, t1, 1268
                  lui          a0, 967782
                  c.srli       a4, 20
                  nop
                  c.mv         s4, a3
                  or           t1, s0, ra
                  srl          s6, ra, s11
                  rem          t3, s4, s2
                  srli         s10, t4, 4
                  nop
                  nop
                  sltiu        s2, ra, -125
                  remu         a2, a5, a6
                  andi         t4, a4, -120
                  and          t5, t1, a4
                  and          t0, a1, gp
                  slt          a6, a2, t6
                  c.nop
                  c.addi       t4, -1
                  mulhu        t2, t3, a0
                  lui          t3, 66827
                  sltu         tp, s10, tp
                  or           t4, a3, a6
                  c.and        a0, a5
                  or           t4, a7, s1
                  c.slli       t5, 16
                  div          t4, t3, t3
                  c.srai       a5, 3
                  nop
                  divu         s5, s7, s11
                  add          t1, a4, s1
                  c.nop
                  c.slli       a0, 2
                  c.srli       a1, 23
                  slli         s5, s0, 19
                  ori          t4, a2, 1543
                  rem          gp, t2, zero
                  xori         t3, s9, 843
                  c.lui        t6, 6
                  nop
                  remu         s9, a3, t3
                  c.nop
                  xori         a1, a6, 1054
                  auipc        a0, 156488
                  xor          a5, a2, a5
                  nop
                  c.slli       a2, 1
                  sltiu        a4, s11, -1877
                  c.or         a4, a2
                  div          a6, t2, sp
                  lui          tp, 66290
                  sll          gp, s5, s8
                  xor          t1, a0, t0
                  slt          a1, s9, t0
                  addi         t2, a5, -1654
                  c.lui        s0, 10
                  rem          t6, a6, s9
                  mulh         s11, s11, sp
                  sra          a5, a4, a4
                  andi         t1, a3, 761
                  c.sub        a0, s0
                  or           t1, a0, s8
                  sub          s10, a4, s11
                  c.add        s10, s6
                  sltu         a5, a0, a3
                  sltu         t0, s7, a4
                  c.li         t6, -1
                  addi         t2, s1, 842
                  slti         tp, t4, 1410
                  sub          s2, s0, s9
                  mul          t1, a6, s5
                  c.mv         s11, a6
                  slli         t2, a5, 10
                  c.srai       a4, 15
                  sub          ra, gp, s7
                  ori          s5, tp, -17
                  c.nop
                  andi         a4, tp, -1768
                  remu         s0, a3, s2
                  xori         a5, t2, -769
                  sltiu        a7, s1, -1333
                  mulhsu       t0, tp, a3
                  div          a0, t5, s2
                  addi         t2, a4, 134
                  divu         t3, a5, t1
                  c.sub        a5, a3
                  andi         tp, a4, -1878
                  and          t6, a5, ra
                  div          a4, ra, s3
                  srl          s7, s6, a0
                  c.slli       ra, 26
                  mul          a2, t5, s11
                  remu         t3, s3, s0
                  remu         t0, t2, t3
                  rem          t4, s3, s2
                  c.nop
                  c.xor        a1, a2
                  c.mv         a1, a7
                  c.slli       a1, 14
                  c.srli       a2, 18
                  c.li         s10, 14
                  srai         a2, t1, 6
                  c.nop
                  c.lui        s1, 25
                  sltu         a4, t4, s11
                  srl          s10, s3, s11
                  andi         t3, a0, 1500
                  slti         a7, s7, 1289
                  sltiu        s1, gp, -123
                  c.or         a1, a2
                  add          a6, t3, s5
                  rem          zero, a6, t4
                  sltu         s7, t3, s4
                  mul          a0, a5, tp
                  srai         s3, a4, 21
                  srli         s6, s8, 9
                  ori          t3, a2, 427
                  mulhu        zero, a5, s6
                  c.nop
                  addi         gp, a6, -1663
                  sub          gp, s2, zero
                  c.nop
                  srli         t5, s10, 1
                  c.srai       s1, 8
                  sltu         s1, s8, s8
                  ori          t4, a3, -1829
                  sltiu        t4, t6, -2011
                  c.mv         s1, tp
                  sra          s2, a2, s8
                  sub          s9, a6, s1
                  c.lui        a5, 2
                  c.srli       a0, 23
                  remu         s1, t1, a1
                  andi         t4, s9, 195
                  c.mv         a7, a6
                  andi         s3, t6, -1826
                  mulhsu       t3, t4, a2
                  c.srli       a4, 3
                  srl          a0, t6, a5
                  mul          s10, s10, t6
                  remu         s1, s5, zero
                  div          t0, a2, s10
                  c.srai       a2, 11
                  sub          zero, s6, s5
                  c.andi       s1, 7
                  add          s1, t4, a7
                  or           a7, a1, zero
                  c.and        a4, a0
                  xor          s4, t0, s10
                  xori         a0, s10, -1950
                  c.srli       a1, 14
                  sra          s10, t3, t5
                  div          t3, s8, zero
                  c.srai       s0, 8
                  srai         s5, t5, 8
                  mul          s3, s10, sp
                  c.lui        a1, 2
                  c.add        s3, s11
                  nop
                  c.mv         a5, a5
                  srl          s4, t0, zero
                  c.lui        gp, 13
                  and          a4, zero, s4
                  mul          t6, t2, t0
                  mulh         s7, t0, s1
                  c.slli       s1, 12
                  c.and        a1, a5
                  c.mv         s3, s5
                  rem          t3, s10, s3
                  slli         s5, a5, 19
                  c.and        a1, a5
                  c.mv         s7, a6
                  remu         zero, zero, s5
                  c.andi       a1, 29
                  c.nop
                  sll          t1, a6, sp
                  c.or         s1, s0
                  auipc        gp, 978306
                  srli         gp, s7, 10
                  slti         a6, s8, 202
                  c.or         a1, a3
                  add          s3, tp, a4
                  srl          t3, s9, s5
                  auipc        tp, 356573
                  add          s10, s1, s3
                  srai         a0, a2, 10
                  remu         t5, a5, a4
                  mulhsu       gp, s11, zero
                  c.sub        s0, a2
                  slli         ra, a6, 3
                  sub          a2, zero, s2
                  addi         s6, s5, -1922
                  c.add        a7, t5
                  c.mv         t4, s5
                  sltu         zero, a2, s7
                  srl          s4, t2, s11
                  sra          s0, t2, s2
                  c.add        gp, t3
                  lui          s2, 259293
                  c.slli       t5, 19
                  xori         a5, a5, -587
                  c.slli       gp, 12
                  mul          s2, a5, s10
                  slli         s10, s11, 22
                  mulhsu       t5, a7, s5
                  sltu         tp, s8, s1
                  auipc        s9, 695060
                  srl          a0, s8, s9
                  mulhu        t6, s5, t4
                  remu         a0, t0, a3
                  sub          t0, t6, a5
                  remu         s2, a1, ra
                  rem          s9, s6, t0
                  c.lui        tp, 22
                  srli         s6, s4, 2
                  c.andi       a5, -1
                  srl          s7, t4, a1
                  and          s10, t2, t2
                  addi         a1, gp, 648
                  srli         a2, s4, 2
                  slt          t1, a0, s8
                  sltu         a4, a7, s5
                  c.or         a4, s1
                  addi         t6, zero, 868
                  c.mv         a4, a6
                  sltu         a5, a0, t1
                  mulhu        a1, s6, a3
                  nop
                  slli         gp, tp, 1
                  c.lui        a7, 31
                  c.srli       a4, 6
                  mul          s2, s10, s10
                  mulhsu       a0, a7, sp
                  slt          a2, t6, a0
                  c.xor        a5, s1
                  slli         s6, s3, 4
                  slli         s3, t1, 7
                  c.andi       a4, -1
                  xor          a6, t1, a1
                  slt          t4, s8, t0
                  srai         a4, a4, 1
                  or           s2, a5, s10
                  slt          s0, zero, a2
                  mul          s2, s7, s5
                  remu         s2, a3, a3
                  c.andi       a1, 3
                  sll          t4, s4, tp
                  slt          t6, a1, zero
                  nop
                  add          s9, t0, s2
                  div          t4, a2, s6
                  divu         s2, t1, sp
                  c.or         a2, a2
                  xor          a1, t6, t4
                  divu         a0, t4, t4
                  sub          zero, t6, s4
                  andi         t1, t2, -853
                  srli         s2, a3, 2
                  addi         t4, s6, 647
                  mul          a7, s7, t1
                  srli         s0, a2, 6
                  sub          a6, s0, t2
                  c.or         a2, a0
                  sll          s7, t5, a6
                  c.nop
                  div          s7, a0, a1
                  andi         a1, t6, -1601
                  sub          t2, a6, a7
                  slti         s2, a1, 1018
                  c.add        s11, a1
                  or           a6, a2, s5
                  slli         s6, s8, 4
                  c.add        t6, s3
                  sra          t3, s11, a5
                  c.li         ra, -1
                  c.srli       s1, 16
                  xori         t5, gp, 923
                  remu         s0, t4, s11
                  lui          t4, 426814
                  srai         a4, s1, 17
                  sltu         s9, s0, s11
                  srli         t1, s2, 17
                  sra          t3, ra, ra
                  slli         a1, s9, 10
                  sub          t5, zero, a0
                  c.nop
                  xor          a4, t5, t2
                  remu         a4, ra, ra
                  div          a0, gp, a6
                  mulhu        t2, a0, s7
                  c.sub        a5, a4
                  xor          s3, a7, s11
                  c.sub        a4, a0
                  auipc        t6, 558792
                  mul          tp, s0, gp
                  and          t4, s2, t3
                  c.or         a2, a0
                  c.mv         s2, t1
                  c.and        s1, a1
                  c.nop
                  ori          t6, a7, 157
                  sub          a0, t5, s5
                  sub          s5, a3, tp
                  c.xor        a5, a4
                  c.nop
                  nop
                  sub          s9, a5, gp
                  addi         s1, s11, 1545
                  div          t4, a6, a2
                  c.addi       t0, 1
                  mulhu        s6, s8, s2
                  sra          a5, a4, a6
                  sll          s9, t2, gp
                  sltiu        s2, a6, -530
                  c.slli       a7, 18
                  divu         t5, t4, s4
                  xori         s10, s1, 663
                  nop
                  c.mv         s5, s3
                  mulhu        tp, a3, t0
                  c.nop
                  andi         s1, t4, 189
                  mulh         s9, s0, t5
                  lui          zero, 255138
                  c.xor        a1, a5
                  c.mv         t3, t3
                  c.and        a0, a0
                  c.sub        s1, a2
                  nop
                  andi         a2, s9, -380
                  slli         tp, a4, 14
                  auipc        gp, 972827
                  slli         t6, sp, 30
                  c.slli       a5, 10
                  sltiu        s7, s11, 1865
                  c.lui        tp, 2
                  mulh         s4, t1, s4
                  c.srai       a1, 19
                  c.add        t6, sp
                  c.slli       s0, 31
                  mul          s6, s3, s1
                  mulhu        a5, t6, t2
                  mulhu        zero, t0, s7
                  nop
                  sltu         a2, t2, s3
                  remu         a1, t4, a7
                  sltu         gp, a5, s8
                  slt          gp, t5, s0
                  c.and        a2, a5
                  c.or         s1, a4
                  remu         s1, a6, t1
                  nop
                  nop
                  mulhsu       s2, t6, t5
                  xori         s2, a3, -471
                  sltu         s9, s0, t0
                  auipc        s5, 949332
                  sra          t2, tp, t5
                  c.li         t1, -1
                  c.nop
                  c.slli       s3, 6
                  c.mv         s2, a6
                  c.or         a5, a3
                  auipc        s10, 1826
                  c.or         a5, a3
                  xori         a2, t0, -274
                  xori         a2, sp, -231
                  lui          ra, 523015
                  c.li         s4, -1
                  sltiu        gp, s3, 981
                  mulh         t5, a3, a1
                  rem          zero, t4, s8
                  xor          s11, a2, t3
                  xor          t1, zero, a0
                  and          s6, s11, sp
                  c.andi       s1, 27
                  mulh         t0, t3, s10
                  xor          s3, t6, gp
                  srl          s6, tp, t3
                  c.andi       s1, -1
                  div          s10, s7, zero
                  auipc        s2, 994971
                  xori         a0, s0, -1048
                  c.srai       s0, 9
                  add          t0, a5, a0
                  remu         t0, s0, t2
                  rem          gp, t3, a4
                  c.slli       s6, 25
                  c.srli       a4, 10
                  or           a2, zero, s6
                  c.li         t0, 26
                  xor          t0, a0, s0
                  rem          a6, s1, s1
                  auipc        t4, 35836
                  c.slli       ra, 25
                  lui          a6, 314645
                  lui          s0, 151296
                  mul          t5, t5, a7
                  and          s6, a5, s3
                  mulh         s4, a6, s6
                  xori         a6, t1, -3
                  sra          s11, a0, s10
                  c.li         a6, -1
                  srli         t1, a6, 26
                  c.mv         gp, t0
                  andi         a7, s4, 489
                  or           s0, s7, a0
                  ori          zero, a7, 153
                  c.add        a5, a4
                  c.add        s1, t5
                  andi         a7, a0, -371
                  c.or         a0, a0
                  c.add        s11, t4
                  c.sub        s1, s1
                  andi         s1, gp, 1721
                  c.xor        a2, a4
                  ori          s3, a6, 861
                  mulh         s2, t3, t4
                  c.and        a4, a2
                  divu         gp, t0, sp
                  c.srai       s1, 21
                  sll          t6, ra, a0
                  and          a6, a4, t4
                  c.sub        a1, s0
                  srli         tp, t2, 5
                  andi         a0, s0, 1381
                  sra          t3, zero, s3
                  remu         a7, t1, a0
                  c.srai       s1, 10
                  lui          a6, 324575
                  and          zero, s3, t1
                  sra          a6, zero, s8
                  add          s0, t6, t3
                  mul          a6, t0, a4
                  slt          a5, gp, gp
                  sltiu        s7, s3, -850
                  c.and        a4, a3
                  srli         t1, gp, 2
                  c.li         t3, 5
                  rem          t5, s8, s7
                  and          t6, s2, zero
                  c.sub        a5, a2
                  c.mv         gp, a0
                  c.andi       s0, -1
                  c.slli       s4, 6
                  slli         t3, s8, 2
                  div          s7, s9, ra
                  c.add        s5, s0
                  divu         s2, s1, t0
                  remu         t6, t0, a0
                  slli         s6, a2, 25
                  mulh         s10, s6, a2
                  srli         t1, a1, 23
                  slti         t5, s6, 77
                  mulhu        t4, s5, a6
                  andi         s9, s1, -1007
                  auipc        s11, 731194
                  xor          s4, t6, a1
                  slti         s6, s3, 1654
                  xori         a7, t4, -1494
                  and          s0, s2, t3
                  slli         a2, s3, 13
                  addi         s3, t2, -1821
                  remu         a5, a1, s1
                  divu         t2, s2, a5
                  c.li         t3, -1
                  c.li         t5, -1
                  sltiu        t6, sp, -1557
                  addi         t2, t4, -1602
                  sll          a1, ra, s6
                  sltu         ra, s10, s4
                  slt          t3, a2, t3
                  lui          s11, 962892
                  rem          ra, t2, s11
                  andi         a5, a1, 1418
                  c.add        s5, s9
                  sltiu        a2, s10, 26
                  add          tp, s1, a4
                  and          t4, a4, t2
                  c.slli       s2, 1
                  sll          zero, s0, s4
                  c.nop
                  c.and        s1, s0
                  lui          t0, 167651
                  sub          s9, t2, s10
                  remu         a0, a0, t0
                  mulh         t3, a2, t0
                  srli         t0, tp, 7
                  c.add        s11, t5
                  c.lui        s7, 18
                  sltu         s11, tp, s11
                  remu         a2, s6, s7
                  slti         s7, t1, 219
                  add          t1, a0, a3
                  sltu         s5, t2, a6
                  xor          t4, s11, s2
                  divu         s3, a7, t4
                  c.sub        a0, a5
                  c.addi       tp, -1
                  addi         s1, s4, 997
                  divu         s4, t5, t6
                  slt          a5, s7, s1
                  srli         s0, t0, 23
                  c.and        a0, s1
                  slli         zero, t6, 21
                  mul          s6, a3, t6
                  xor          s9, t2, s1
                  c.xor        a0, a1
                  slli         s2, a3, 2
                  slti         s6, a3, -1094
                  mul          s10, s11, t3
                  remu         a6, t2, a1
                  sltiu        s10, s6, -390
                  c.srli       a1, 16
                  sltu         t4, a2, sp
                  lui          tp, 560032
                  mulhu        s3, a3, ra
                  xori         s4, gp, 64
                  c.add        t0, a3
                  sub          t6, a7, s7
                  auipc        ra, 284073
                  mulhu        s10, a3, s6
                  lui          zero, 659227
                  c.and        a2, a1
                  slti         s11, s6, -1488
                  and          s9, s3, tp
                  sltu         t6, t4, a5
                  c.addi       s9, -1
                  c.addi       t3, 6
                  srai         a5, ra, 19
                  nop
                  sub          t0, a7, s8
                  xor          t1, s7, s0
                  c.slli       t3, 22
                  c.li         a4, -1
                  remu         s2, s7, s7
                  c.andi       a1, -1
                  or           tp, t2, s0
                  sra          ra, zero, s11
                  or           a2, t3, a5
                  add          s1, t5, s0
                  sll          t5, s8, t3
                  rem          a7, a1, t0
                  ori          a2, s8, -2022
                  sll          a2, a3, t2
                  mulh         s3, s1, gp
                  sra          zero, tp, a3
                  mulh         s5, s10, a5
                  or           s4, s0, t0
                  remu         t2, s11, ra
                  c.andi       a0, -1
                  and          s6, zero, tp
                  mul          t1, a2, a1
                  c.sub        a0, a5
                  mulhsu       s6, s7, a2
                  c.nop
                  c.addi       t4, 26
                  c.srai       s1, 26
                  mulhsu       s2, a6, s4
                  slti         s4, a3, -768
                  c.lui        ra, 8
                  mulhu        s1, s1, a3
                  srl          s1, a3, a0
                  c.mv         a5, a3
                  srli         s3, t0, 16
                  c.add        s0, t4
                  mulhu        a2, a2, s7
                  xori         t6, t1, 1387
                  sll          gp, a4, a7
                  c.and        a5, s0
                  slt          gp, s11, a0
                  sltu         t2, s11, s3
                  sltiu        s0, t0, -1817
                  c.mv         a5, a0
                  divu         a7, sp, tp
                  div          s4, a4, s3
                  addi         s0, s3, -195
                  c.addi       t6, -1
                  mulhsu       a5, gp, s9
                  srli         t5, s10, 15
                  c.lui        gp, 12
                  c.sub        a0, a4
                  c.xor        a5, a2
                  ori          a6, s1, 1151
                  sll          s10, t0, zero
                  sltiu        gp, s2, -975
                  c.add        s4, t1
                  div          t2, s3, a3
                  addi         s6, s7, 104
                  c.slli       s4, 2
                  and          ra, ra, s1
                  c.xor        a5, a3
                  srl          s10, ra, t2
                  sll          a2, s11, s1
                  sltu         t5, a0, s3
                  lui          a1, 617913
                  andi         s9, t1, 1625
                  mulhu        s4, tp, a7
                  xor          tp, s1, s11
                  mulh         tp, a5, s1
                  auipc        t0, 564611
                  c.xor        a2, s1
                  mulhu        s1, t4, sp
                  c.nop
                  div          a6, a6, ra
                  c.nop
                  c.mv         tp, a6
                  c.xor        a1, a5
                  slt          tp, t5, gp
                  mulhsu       a6, s4, a3
                  c.sub        a5, s0
                  srai         zero, a6, 9
                  sltu         t4, a6, t2
                  c.or         a2, s1
                  c.nop
                  div          a6, t0, a6
                  c.add        tp, sp
                  slt          a4, s9, s6
                  c.nop
                  c.mv         tp, t3
                  or           t0, a5, gp
                  c.sub        a5, a0
                  ori          s1, tp, -200
                  mulhu        t4, t0, s6
                  c.addi       a0, 16
                  slli         s10, t0, 25
                  sub          s1, s10, a0
                  sltiu        t2, gp, -846
                  sll          t1, t5, tp
                  andi         a6, t2, 869
                  or           tp, s7, a0
                  c.and        a4, s0
                  c.addi       a0, -1
                  sra          t4, s11, gp
                  mul          t6, a6, s6
                  sll          t2, t2, s3
                  c.sub        s1, a1
                  c.srai       s1, 14
                  c.or         a4, a3
                  mul          s2, t5, t3
                  c.xor        s0, s0
                  xor          t5, sp, s3
                  c.and        s1, s1
                  andi         a5, t1, 1033
                  ori          s10, s7, -935
                  c.lui        s9, 5
                  rem          t4, a2, a3
                  mulhu        a4, sp, gp
                  c.and        a4, s1
                  mulhsu       s5, tp, a3
                  srl          s0, s4, a2
                  andi         zero, s1, -1147
                  and          s10, a5, a7
                  mulh         s7, t4, a3
                  mulh         zero, t6, s3
                  c.mv         s5, s2
                  sltu         s5, t6, s8
                  sltiu        t2, s6, -872
                  c.or         a5, a4
                  c.li         t0, 1
                  sltiu        s0, a5, 1102
                  c.slli       s9, 3
                  c.li         s3, -1
                  and          s7, ra, a1
                  c.slli       s7, 26
                  c.srli       a0, 4
                  srai         s1, t3, 27
                  remu         a1, t5, s8
                  c.nop
                  sra          t1, t6, s4
                  mulh         t0, s2, t0
                  c.srai       a5, 21
                  srl          s0, a7, t2
                  ori          a6, s11, 1543
                  c.slli       s4, 16
                  c.mv         a5, t4
                  remu         t0, tp, tp
                  srli         a4, t2, 17
                  and          s2, t4, s1
                  sll          s2, s6, s2
                  auipc        gp, 289098
                  mul          s11, zero, tp
                  remu         s0, sp, a5
                  and          s5, s4, s7
                  c.sub        a5, a1
                  c.add        s5, s8
                  remu         s0, a6, s0
                  ori          s0, a0, 1264
                  andi         a4, t5, -731
                  c.and        a1, a5
                  mulh         a0, a1, s0
                  rem          s10, a4, t4
                  sra          a7, s9, tp
                  div          a6, t0, s5
                  slti         s0, a7, 809
                  c.srli       a4, 9
                  sub          s1, s10, a5
                  c.sub        a2, a5
                  sltu         s0, t4, t6
                  c.and        a2, a2
                  addi         s1, a2, -1325
                  c.or         s1, a2
                  c.srli       s0, 22
                  add          a2, s5, t3
                  c.li         gp, 24
                  addi         t4, t2, -689
                  xor          s10, t6, s6
                  c.andi       s0, 4
                  sll          s5, s2, s4
                  c.srai       a5, 30
                  c.and        a1, a3
                  divu         a7, s3, a3
                  c.add        s4, ra
                  c.add        t6, t6
                  c.andi       a4, 2
                  andi         s9, gp, 1212
                  c.srai       a4, 4
                  slt          gp, s9, s7
                  c.slli       t0, 17
                  andi         s11, a3, 863
                  c.li         s11, 31
                  c.add        s4, s5
                  mul          s6, s2, s7
                  divu         s4, s0, t4
                  and          a4, ra, s2
                  addi         t3, a0, -1401
                  c.andi       a1, 18
                  c.andi       a2, 26
                  slti         s2, a7, 518
                  rem          s3, t6, s5
                  xori         s1, t4, 574
                  sra          s6, gp, tp
                  sra          s0, a5, s1
                  mul          a6, t5, s6
                  c.mv         a5, s8
                  srl          a2, s2, s10
                  c.srli       s1, 21
                  sub          a0, s7, s0
                  slti         s0, s11, 921
                  c.srli       a0, 14
                  c.srli       s0, 3
                  slli         s3, s8, 26
                  sltiu        a6, s8, -491
                  c.andi       a0, -1
                  slti         s7, a2, -790
                  mulhsu       zero, tp, a4
                  andi         a5, a6, 2022
                  c.lui        a2, 10
                  c.srli       s1, 1
                  c.addi       tp, -1
                  c.add        t5, tp
                  divu         a6, sp, s2
                  mulhu        zero, a7, a4
                  sltiu        a0, t2, 1468
                  c.srli       s1, 12
                  nop
                  slli         a2, ra, 29
                  mulh         a4, a6, s3
                  c.slli       t4, 25
                  add          a5, s3, a6
                  auipc        t6, 441929
                  c.and        a1, a4
                  slt          s7, s10, a0
                  c.or         s1, a5
                  c.li         a4, -1
                  addi         s6, s8, 454
                  srai         s7, sp, 8
                  c.sub        a1, a2
                  sll          t3, gp, t3
                  c.li         a5, -1
                  slli         a0, t6, 5
                  sra          zero, a4, t2
                  sra          s4, a1, s9
                  and          s9, sp, t0
                  c.srai       a5, 23
                  xor          t3, s8, zero
                  andi         t0, t3, -1508
                  c.sub        a2, a2
                  sll          ra, a1, s10
                  slli         t6, s6, 24
                  ori          s7, a6, -1724
                  or           s0, t3, zero
                  mulh         s7, a4, t6
                  auipc        ra, 844506
                  lui          a0, 501410
                  c.add        ra, a3
                  srai         s5, a7, 11
                  addi         s10, s11, 249
                  c.or         s1, a4
                  srl          s5, t6, a3
                  remu         a5, s7, a4
                  slt          a2, a4, s7
                  c.add        s0, t1
                  c.andi       a5, -1
                  and          t6, s11, s2
                  sltiu        a5, s0, 599
                  sltiu        s10, gp, -542
                  ori          s5, s10, 1992
                  rem          a4, s3, t2
                  add          t6, a1, t6
                  mulhu        s5, a3, s2
                  nop
                  c.srli       a1, 4
                  c.li         s10, 10
                  c.lui        t0, 11
                  mulhsu       s4, t2, s0
                  c.li         t4, 14
                  c.add        s2, s2
                  c.sub        a5, a5
                  mulh         t5, s9, a4
                  c.sub        a5, a5
                  c.slli       ra, 28
                  remu         s9, s4, a0
                  auipc        a1, 913898
                  or           a2, s2, s10
                  add          t4, a5, a4
                  nop
                  c.or         a0, a4
                  c.slli       s1, 18
                  c.srai       a0, 19
                  slli         a5, t4, 1
                  slt          s3, s7, sp
                  mulhu        t4, ra, t4
                  c.or         a2, s1
                  c.mv         s9, a6
                  nop
                  c.srai       a4, 31
                  srl          s6, a4, t5
                  c.srli       a0, 8
                  rem          a0, s0, s2
                  c.mv         s5, t3
                  c.lui        s7, 28
                  c.slli       t5, 9
                  srli         s11, t6, 2
                  add          a5, ra, a0
                  sra          t1, t2, s7
                  xori         tp, zero, -1736
                  auipc        s11, 270446
                  sltu         s0, a7, tp
                  c.and        a4, a2
                  c.sub        s1, a1
                  xori         a6, s11, 21
                  srli         t0, a4, 3
                  mulhsu       a7, s7, s1
                  c.and        s1, s1
                  divu         s7, t6, zero
                  or           s5, s5, s0
                  c.andi       a0, -1
                  c.addi       a6, 24
                  srai         s11, s9, 24
                  slli         s6, t6, 5
                  or           a7, a2, t5
                  sll          s2, t6, s6
                  c.and        a2, s1
                  xori         ra, s9, 149
                  slli         a6, gp, 8
                  sll          a0, t1, s3
                  mulh         s1, a0, a6
                  or           s4, s1, a0
                  sltu         s9, tp, s3
                  xor          s6, a4, a6
                  sll          s6, s1, sp
                  add          zero, t1, s2
                  srli         a6, t4, 6
                  srai         s0, a5, 26
                  slti         s3, a1, -2033
                  sra          a5, t2, s4
                  or           t1, t1, a2
                  remu         s2, tp, s7
                  c.addi       a7, 30
                  xori         gp, t6, 190
                  ori          s3, a0, -1422
                  srai         s11, t1, 26
                  srai         a7, t1, 15
                  or           s0, s0, s10
                  andi         a5, a3, -118
                  ori          a4, s1, -749
                  add          t0, s3, s5
                  auipc        s9, 161286
                  srai         s10, s1, 29
                  c.srli       a4, 27
                  div          a2, s0, a5
                  c.addi       s11, 16
                  c.addi       t4, 13
                  c.xor        s0, a2
                  andi         s10, a1, 1514
                  addi         ra, s6, 198
                  srai         s7, a0, 16
                  andi         a6, a6, 1085
                  mulhu        a6, s10, a3
                  andi         t1, s11, -1565
                  c.addi       s9, -1
                  addi         t0, t4, 1147
                  sll          a0, gp, a0
                  xori         s9, tp, 1536
                  nop
                  add          t2, a6, s4
                  mul          s9, t3, s7
                  srli         s9, a0, 27
                  c.lui        s9, 17
                  c.slli       s1, 22
                  andi         s1, a6, 549
                  sll          a2, t1, t2
                  c.sub        a5, a2
                  slli         s11, s5, 9
                  auipc        a2, 228440
                  c.slli       s10, 17
                  c.addi       t5, -1
                  mulhsu       tp, s7, s1
                  mulh         t6, s6, a5
                  c.mv         a1, t6
                  add          a5, s5, s5
                  slli         zero, t5, 2
                  c.sub        a0, a4
                  sltu         zero, sp, s7
                  c.nop
                  sra          s5, zero, t6
                  mulh         s11, t0, a5
                  or           s4, t6, a0
                  nop
                  addi         s0, t4, 2042
                  srl          t5, s1, t3
                  c.xor        s1, s0
                  rem          s0, s4, a6
                  sltiu        gp, a5, 1252
                  sra          s0, a7, s1
                  andi         t2, s6, -1283
                  xor          s6, s0, a6
                  c.srli       a0, 24
                  sltiu        s11, a0, -914
                  ori          a4, a2, -785
                  c.and        a4, a4
                  rem          s2, s0, a6
                  c.srli       s0, 10
                  sub          t5, s3, a4
                  andi         t2, s9, 1336
                  c.and        a0, a5
                  xori         ra, t4, 1760
                  nop
                  sltiu        s10, t5, -823
                  remu         s2, t1, s6
                  c.xor        a2, a4
                  div          t1, t3, t0
                  c.andi       a2, 23
                  c.addi       t3, -1
                  xori         s2, s7, -636
                  ori          s2, a4, 925
                  sltiu        a6, a7, 838
                  or           s3, a5, a4
                  c.slli       t1, 19
                  c.andi       s1, -1
                  c.add        s10, s11
                  add          s6, s7, s4
                  nop
                  slli         s9, s9, 14
                  div          t5, t0, sp
                  c.andi       a5, -1
                  sub          a0, a6, gp
                  auipc        t6, 825134
                  xor          s6, s2, s6
                  c.add        t1, t2
                  sra          s6, s11, a0
                  andi         s1, s4, 309
                  and          a7, t3, s1
                  c.sub        a2, a3
                  lui          zero, 355775
                  and          t4, a1, sp
                  xori         t6, t2, 903
                  mulhu        t1, sp, s2
                  and          s1, sp, s11
                  sra          s3, a5, a2
                  c.addi       s4, 19
                  sltu         s10, s0, t1
                  c.add        a2, tp
                  c.add        a6, t3
                  slli         t1, gp, 30
                  c.nop
                  xor          a2, t1, a6
                  c.srli       s0, 12
                  and          s10, t1, gp
                  srai         s2, gp, 15
                  nop
                  mul          gp, a6, s8
                  mulhu        s10, t5, a4
                  divu         s3, t0, s10
                  c.add        tp, gp
                  c.slli       a6, 28
                  add          tp, a4, a6
                  c.srai       s0, 10
                  srli         t5, s3, 28
                  add          a4, sp, a5
                  c.add        t6, t2
                  slt          s9, t6, sp
                  c.li         t2, 20
                  andi         s6, t3, -449
                  c.li         tp, 18
                  sll          a4, s7, a5
                  slli         t1, s9, 11
                  or           s3, s9, s11
                  sra          s3, t0, sp
                  slt          a0, a5, t6
                  xor          t1, t5, s2
                  remu         s11, a0, t1
                  mulhu        t5, gp, t6
                  sra          t2, gp, s8
                  andi         a6, gp, -1312
                  slli         a6, t3, 23
                  c.srai       a2, 13
                  c.nop
                  c.lui        s4, 28
                  sra          s10, a4, ra
                  sll          a7, gp, a7
                  srli         s9, s7, 17
                  c.add        s0, s9
                  sltu         s7, s2, s4
                  c.add        s1, ra
                  sltiu        s2, t0, -1401
                  slli         t3, t1, 3
                  c.andi       a5, -1
                  mulhsu       s1, s2, t1
                  slt          t3, a1, zero
                  and          s7, s11, sp
                  slti         t0, tp, 697
                  mul          t0, s3, s3
                  c.add        s0, a2
                  srli         zero, s3, 9
                  ori          s2, t0, 1286
                  auipc        t4, 946791
                  sltu         s0, t2, s10
                  div          s6, s2, a1
                  srli         s7, tp, 18
                  c.mv         t5, s11
                  xori         s9, s2, 276
                  or           s2, s3, s8
                  c.mv         s5, s9
                  slti         s2, s3, 1423
                  c.and        a2, s1
                  xori         a5, a0, 2010
                  c.and        s0, a4
                  andi         a6, t5, 513
                  sltiu        tp, a2, -1557
                  sra          s7, s2, t0
                  auipc        a0, 111061
                  c.add        s4, a5
                  c.addi       s7, 9
                  c.or         a4, a4
                  srli         t2, s7, 30
                  andi         t0, s5, 222
                  c.slli       t4, 16
                  c.and        a5, s1
                  slti         gp, a7, -385
                  c.xor        a0, a3
                  and          s5, a7, a2
                  c.srai       a1, 1
                  c.nop
                  c.and        a0, a4
                  c.srai       a4, 28
                  c.srai       a2, 25
                  mulhu        t0, a7, tp
                  c.mv         a1, a4
                  add          s11, s3, s9
                  ori          t3, a0, -903
                  slt          a5, a6, a1
                  lui          a6, 805694
                  ori          t5, s8, -507
                  c.sub        a5, a2
                  or           s6, s3, s11
                  c.add        s10, s3
                  or           a4, t3, s9
                  srai         t3, t6, 9
                  divu         tp, zero, zero
                  c.add        a5, t1
                  c.xor        a5, a3
                  c.xor        a2, a1
                  divu         s2, t1, t2
                  sll          s10, s0, s6
                  mulhu        a0, s1, a6
                  srli         tp, s6, 18
                  c.andi       a4, 17
                  c.srli       a2, 3
                  c.lui        a5, 9
                  srli         s2, a6, 19
                  c.lui        a6, 10
                  mulhsu       t4, sp, s1
                  and          t4, a5, t4
                  mulhsu       s1, t4, a7
                  ori          s0, t2, 865
                  c.srai       s1, 22
                  addi         s5, s8, 547
                  c.lui        ra, 27
                  c.add        a2, a1
                  c.slli       a0, 26
                  sub          a0, a0, s9
                  mulh         t3, s7, a6
                  c.mv         a0, s10
                  remu         t6, t6, t0
                  c.lui        s10, 9
                  or           s1, t2, a7
                  rem          t6, s0, zero
                  slli         a7, s7, 10
                  addi         s2, t2, 1546
                  c.slli       t0, 11
                  slti         s10, s9, 54
                  c.lui        s2, 11
                  slti         a4, t1, 1037
                  c.lui        ra, 4
                  c.slli       t0, 1
                  c.nop
                  sltiu        gp, s0, -1691
                  sltiu        gp, a3, -890
                  srli         s11, s5, 20
                  mulh         s2, t1, t3
                  c.li         s9, 0
                  c.lui        s2, 4
                  lui          t1, 354383
                  slli         zero, zero, 18
                  div          a7, s3, ra
                  c.add        t3, t3
                  srai         a6, s9, 3
                  c.srli       a5, 20
                  srli         t3, a5, 14
                  c.or         s0, s1
                  mulh         a4, zero, t0
                  c.sub        a5, s1
                  or           t2, t6, t5
                  c.srai       s1, 11
                  slt          a7, a0, sp
                  rem          t2, s7, a7
                  c.xor        s0, a5
                  c.slli       t0, 14
                  remu         s0, a7, s5
                  sltu         s7, t3, t5
                  add          a7, s2, a6
                  slt          t1, t2, a5
                  srai         a5, a4, 24
                  mulhu        s5, a3, t4
                  c.slli       s9, 10
                  c.mv         t2, s8
                  lui          a0, 330954
                  c.li         a0, 16
                  sll          s0, s5, t6
                  div          zero, s7, s1
                  mulh         s0, t0, ra
                  slt          s10, t3, sp
                  mulh         gp, a2, s9
                  addi         s0, s7, -1228
                  slti         s7, t6, 1235
                  c.li         s7, -1
                  slt          ra, s6, a7
                  c.addi       s11, -1
                  auipc        t2, 687498
                  srai         s4, s3, 27
                  sll          s9, t5, a1
                  mul          s4, tp, a6
                  andi         t3, a4, -864
                  c.or         a4, a0
                  auipc        t5, 521013
                  divu         a5, t3, s0
                  andi         t2, a0, 1875
                  srai         s3, t5, 9
                  c.sub        s0, a5
                  or           s3, t4, s7
                  slti         t5, s5, 1067
                  sra          a0, s7, s8
                  xor          s2, t3, zero
                  sra          s11, s0, s0
                  c.lui        s4, 6
                  c.or         a2, a3
                  div          t3, t4, t5
                  slti         s1, ra, 926
                  xor          a2, ra, a6
                  mulh         t3, s8, s2
                  sltu         s1, sp, s10
                  slti         t5, t1, 1630
                  c.srai       a4, 4
                  c.sub        a5, a3
                  andi         t0, a7, -177
                  c.lui        s10, 21
                  c.mv         a6, t5
                  c.xor        s0, s0
                  addi         s3, t4, 1634
                  rem          s5, ra, a0
                  lui          s7, 57535
                  add          s1, s2, sp
                  srl          zero, t0, t2
                  nop
                  andi         s0, s6, -825
                  sll          a7, a5, a2
                  mulhsu       a2, a7, s7
                  sll          s11, a3, s4
                  divu         t2, s7, a5
                  c.or         a4, s1
                  c.li         s2, 1
                  mul          s2, zero, s11
                  remu         t5, s4, s3
                  mulhu        a2, s6, s11
                  mulhu        s7, s6, s7
                  add          t6, t0, a6
                  mulh         a4, s7, t1
                  c.sub        a2, a3
                  c.sub        s1, a3
                  srli         tp, t3, 9
                  c.or         s0, s0
                  c.sub        s1, s0
                  ori          s4, s5, -506
                  c.and        a4, a0
                  mulhu        a4, s10, t2
                  c.xor        s0, a2
                  div          a0, tp, s9
                  c.sub        a4, a2
                  c.addi       a7, 4
                  srl          t2, a1, s9
                  rem          s4, s5, a2
                  c.xor        a1, a4
                  slt          zero, a2, t3
                  c.addi       s1, -1
                  mul          t4, a0, s0
                  sltu         t4, t0, s7
                  sub          t5, t0, t5
                  add          s10, t2, a3
                  c.li         a4, -1
                  div          ra, s9, sp
                  mulhsu       s9, a2, s6
                  sltu         t3, ra, a2
                  sltu         t4, a6, a7
                  div          a4, s8, ra
                  ori          s4, t0, -116
                  mulh         s0, a0, s3
                  div          a0, s6, a7
                  c.li         s7, 14
                  sra          zero, s1, s5
                  sltu         ra, s0, s9
                  srai         s2, a5, 3
                  add          zero, s9, t2
                  c.slli       t6, 30
                  c.xor        a2, a1
                  c.mv         a1, t0
                  c.or         a2, a0
                  or           gp, s9, t2
                  slli         s0, t6, 11
                  addi         ra, a4, 1697
                  c.srai       a1, 8
                  sltiu        zero, s0, -1948
                  srl          s3, t3, t3
                  c.andi       s1, -1
                  c.nop
                  slti         t4, s6, -1019
                  srli         s1, s1, 11
                  mulh         t3, a4, gp
                  c.and        a2, a1
                  sra          t4, a1, s9
                  c.srli       a2, 6
                  c.srli       a2, 8
                  xor          gp, sp, tp
                  c.li         ra, -1
                  c.li         a7, -1
                  slt          s2, tp, ra
                  sll          t4, s3, tp
                  mul          s9, ra, s1
                  andi         t4, t5, 1405
                  c.andi       a4, 4
                  c.andi       s0, 8
                  c.srli       a4, 15
                  mulhsu       a1, s11, s4
                  xor          s2, s2, gp
                  c.or         a0, s1
                  nop
                  rem          s10, a1, a4
                  addi         s0, sp, 1348
                  lui          tp, 983727
                  c.andi       a5, -1
                  c.add        s0, a3
                  c.nop
                  rem          s4, a0, s2
                  c.srli       a2, 14
                  c.mv         a7, t5
                  andi         s5, a4, 1455
                  slti         a1, a2, -1903
                  c.and        s1, a2
                  c.xor        a2, a5
                  mulhsu       a2, a3, sp
                  c.li         gp, 22
                  nop
                  sll          t0, gp, a2
                  or           a1, a0, t3
                  divu         t0, s5, s6
                  c.addi       a2, 22
                  c.mv         a7, t2
                  c.andi       a1, 19
                  c.addi       s4, 26
                  c.xor        a1, a0
                  c.add        s5, a1
                  mul          ra, t6, s5
                  sltu         a4, a3, sp
                  mulhu        t5, s2, t5
                  c.add        t4, s11
                  divu         s3, a2, t5
                  sltu         s2, tp, s1
                  add          t0, s3, a5
                  andi         t6, s0, 1835
                  slti         t1, t6, -498
                  nop
                  sltiu        t5, t2, 823
                  lui          s10, 105293
                  sltiu        s9, ra, 1893
                  andi         t6, s10, -1653
                  divu         t1, s7, a1
                  sltiu        ra, s1, 1600
                  c.srai       s0, 11
                  add          s6, s1, a3
                  sra          s1, t4, s0
                  sub          t0, s3, a7
                  c.sub        a0, a5
                  ori          ra, t3, -1985
                  sra          s7, a0, s2
                  c.srai       a1, 18
                  lui          s0, 545101
                  srai         s0, a3, 1
                  c.sub        s1, a1
                  mulhu        s1, a3, gp
                  and          s7, t4, sp
                  or           s9, s3, a0
                  c.slli       a7, 1
                  srli         gp, gp, 4
                  div          s4, s4, zero
                  mul          s1, t3, s6
                  sll          s0, s1, ra
                  sltu         a6, a3, a0
                  c.nop
                  c.slli       s10, 17
                  rem          a0, s6, gp
                  slti         s4, s10, 741
                  and          a0, a1, s4
                  srl          s2, a3, s9
                  c.srli       s0, 20
                  c.srli       s0, 30
                  remu         gp, ra, s0
                  c.mv         s6, gp
                  sltiu        tp, ra, 851
                  c.nop
                  divu         a6, t5, t2
                  c.add        s11, t0
                  c.xor        a1, a2
                  xor          t1, tp, a6
                  ori          s9, a1, 1234
                  c.nop
                  addi         s10, t3, 1020
                  sub          ra, a2, s10
                  or           a7, a6, a3
                  slti         t0, s4, 424
                  div          t3, t6, t0
                  divu         s6, s4, s0
                  c.addi       s11, -1
                  xori         t6, t5, 626
                  addi         zero, s5, -1864
                  sll          t4, s10, t0
                  c.slli       s10, 28
                  mulhsu       a0, a5, a5
                  xor          t2, s4, a1
                  srl          s9, a4, ra
                  slli         s10, a3, 11
                  srai         a5, t3, 1
                  mulhu        t5, a3, s0
                  mulhsu       s2, zero, t1
                  rem          s4, t0, a7
                  c.nop
                  c.xor        a2, a2
                  auipc        s9, 163734
                  mulh         gp, a5, t4
                  c.and        a4, a5
                  addi         s5, s2, -1874
                  c.lui        s0, 30
                  lui          a0, 262970
                  c.slli       a1, 4
                  slti         a2, t5, -1468
                  add          t3, s0, s6
                  c.lui        t3, 22
                  slli         t3, s2, 0
                  divu         s5, t5, s1
                  rem          zero, s0, s6
                  sub          s5, t2, gp
                  slt          tp, s8, t2
                  c.sub        s1, a5
                  sub          t5, t4, s9
                  auipc        a5, 16499
                  mulh         a1, s3, t5
                  slt          t6, t6, s10
                  ori          s3, a5, -1376
                  xori         a4, s11, 1016
                  or           s5, t4, s11
                  mulh         t3, a7, sp
                  sub          s10, t3, t5
                  c.li         s9, -1
                  slti         t5, t2, 551
                  mulhsu       a5, a6, ra
                  slti         a6, gp, 210
                  c.andi       a1, 26
                  c.and        a5, a0
                  c.srli       a1, 16
                  mul          a2, s5, sp
                  mulhsu       t5, a0, t6
                  srl          t0, ra, t0
                  sra          tp, zero, a1
                  div          s9, t1, s2
                  srai         zero, ra, 27
                  c.li         s9, -1
                  xori         a6, t5, -1992
                  c.slli       s9, 29
                  add          s1, ra, a2
                  rem          s5, s6, t1
                  c.and        a2, a2
                  slli         s6, tp, 3
                  sub          t5, t2, s2
                  srai         a2, a4, 3
                  c.mv         s2, t2
                  sra          t1, s10, zero
                  srai         s0, a7, 8
                  c.mv         a7, a3
                  srli         t5, t2, 12
                  c.addi       gp, -1
                  mulhsu       s2, a2, ra
                  c.or         s1, a3
                  or           s0, zero, s5
                  mulhsu       gp, s11, s4
                  addi         a2, a6, -525
                  sll          s4, ra, s11
                  nop
                  sll          s6, t6, s5
                  add          t3, t5, a6
                  srai         t0, a1, 3
                  mulh         a4, ra, s6
                  slli         t3, s5, 1
                  c.srli       a0, 28
                  remu         a7, s9, s2
                  sub          s11, s2, s8
                  remu         t4, a3, t2
                  c.nop
                  sll          t3, a6, zero
                  mulhsu       s11, t6, s4
                  c.li         t3, -1
                  c.and        a1, a2
                  xori         s7, s8, 182
                  slt          s5, a5, tp
                  srli         s10, a6, 7
                  mulhu        a0, zero, s6
                  mul          s10, s11, s11
                  sra          t4, t1, a3
                  c.and        a2, a0
                  sub          t1, t4, s4
                  c.nop
                  c.srai       a1, 24
                  srai         a6, s3, 25
                  ori          a5, s0, 544
                  addi         t1, t6, 478
                  sll          s6, s3, t2
                  nop
                  c.xor        a5, a3
                  sub          s1, s4, t5
                  srai         s11, a2, 2
                  sub          t3, s1, s10
                  c.or         a4, s0
                  c.or         a0, s1
                  c.andi       a4, -1
                  sra          a0, zero, s9
                  c.and        a5, s0
                  c.srli       a4, 21
                  c.and        a2, a5
                  c.or         a5, a2
                  and          t1, s1, s0
                  andi         t2, a7, 1633
                  or           s5, t4, s11
                  or           a1, s10, ra
                  c.li         t5, 18
                  c.xor        s1, a2
                  divu         t0, s5, s1
                  c.lui        s2, 15
                  srl          t2, s3, a7
                  c.or         a0, a4
                  c.li         a5, 24
                  auipc        t1, 54791
                  auipc        gp, 715960
                  xori         t0, s7, -1776
                  sltiu        t3, t4, 1316
                  ori          t6, a1, -814
                  c.and        a0, s0
                  div          s9, t6, t6
                  lui          a0, 661795
                  or           a5, s1, s4
                  c.addi       s4, 13
                  c.srai       a0, 24
                  c.srai       s1, 10
                  c.xor        a2, a5
                  srli         s6, a0, 12
                  c.sub        a1, a3
                  auipc        gp, 44039
                  mulhu        t6, s8, s6
                  and          zero, t2, sp
                  c.or         a5, a5
                  slt          s6, s11, s10
                  sltiu        tp, a4, 1457
                  sltu         a6, zero, s2
                  xori         a0, tp, 1067
                  divu         s3, t2, a1
                  c.add        s7, ra
                  srli         s4, ra, 16
                  c.mv         t5, s9
                  slt          zero, a7, t6
                  srli         s1, a7, 10
                  mulhu        zero, a1, s3
                  rem          t6, zero, t0
                  mulhu        s4, t1, t5
                  sll          s3, s10, tp
                  addi         s0, s10, -845
                  c.lui        s2, 28
                  div          s1, t0, s5
                  c.andi       s0, 23
                  nop
                  div          s1, s10, s11
                  xor          ra, t3, a4
                  sltu         s10, s10, tp
                  c.xor        s1, a4
                  c.mv         a5, s10
                  c.or         s0, s1
                  auipc        s2, 226420
                  xori         a4, t5, 159
                  c.and        s0, a0
                  c.or         s1, s1
                  mulh         s10, s7, t3
                  sra          t1, s6, s6
                  sub          s4, s9, t6
                  xori         s3, s10, -1430
                  divu         a6, s7, t2
                  rem          a1, t0, s8
                  lui          a2, 956483
                  or           t6, t5, a5
                  xor          t6, sp, s8
                  c.addi       a4, -1
                  c.addi       s3, 7
                  rem          s9, a2, t5
                  c.nop
                  c.addi       s9, -1
                  c.li         t5, -1
                  add          ra, s8, s11
                  c.xor        a1, a2
                  ori          t5, t1, 579
                  c.nop
                  c.andi       a1, 18
                  slli         gp, t1, 10
                  srl          s10, s0, s9
                  sltiu        t5, a6, 1464
                  c.nop
                  remu         a1, a1, s0
                  lui          zero, 326492
                  c.lui        s6, 11
                  c.or         s1, a5
                  mulh         s5, a7, a6
                  c.lui        t0, 30
                  srli         s10, t5, 25
                  c.srai       a1, 22
                  and          s7, t3, s5
                  c.li         s3, 10
                  mulhsu       s6, ra, a0
                  and          a4, t2, s4
                  div          a4, s2, s10
                  c.sub        s1, a0
                  srli         a6, t4, 11
                  mulhu        s3, s10, tp
                  c.xor        a2, a1
                  and          a0, tp, a0
                  andi         s6, zero, -1761
                  c.srli       s1, 10
                  c.or         a0, a1
                  c.or         a4, a4
                  c.xor        a0, s0
                  c.lui        a4, 29
                  sltiu        a5, t2, -1660
                  add          s10, t5, s4
                  slli         zero, a4, 2
                  sltu         t2, s1, a3
                  ori          s2, s7, 1582
                  c.sub        a5, a2
                  c.lui        s7, 18
                  c.or         s1, a1
                  c.andi       s1, 3
                  rem          s6, a6, zero
                  andi         a6, t4, -1639
                  c.xor        a4, s0
                  c.mv         s10, s8
                  mulh         a4, a2, t4
                  remu         s6, a6, t5
                  slli         gp, a2, 25
                  c.and        s0, a2
                  c.srai       a1, 11
                  srl          t4, a0, gp
                  rem          s10, s5, s11
                  mulhu        s9, t4, t5
                  c.nop
                  divu         t4, s4, t5
                  mulhu        a7, a3, s3
                  c.li         s10, 9
                  mulh         s7, t4, s6
                  srl          s5, s5, s7
                  c.li         s9, -1
                  ori          t4, s10, -305
                  div          t6, tp, s10
                  remu         ra, tp, zero
                  nop
                  srl          a6, t2, t3
                  sll          s4, sp, t2
                  sub          a1, t5, a0
                  c.slli       t1, 18
                  c.xor        s1, s0
                  c.li         s9, 0
                  div          gp, s6, s9
                  c.add        s2, a5
                  c.nop
                  lui          a5, 750283
                  c.and        a5, a0
                  c.lui        s10, 20
                  xori         t3, a3, -589
                  c.andi       s0, -1
                  srli         gp, s2, 26
                  c.nop
                  slti         t0, a2, -1346
                  lui          t0, 194317
                  div          t2, a0, t4
                  mulhsu       t1, t0, sp
                  c.srli       a1, 7
                  c.addi       t6, 22
                  srli         t5, s3, 18
                  slti         s7, s11, 894
                  auipc        s0, 136722
                  and          t1, t1, s11
                  c.andi       a0, 17
                  sll          t4, s1, s0
                  c.andi       a1, -1
                  srai         a6, t6, 19
                  c.lui        t1, 10
                  c.xor        s0, a1
                  add          gp, a5, t0
                  srl          s10, a3, s4
                  c.srli       s1, 12
                  c.srli       a4, 20
                  or           s7, s9, t1
                  andi         t0, a6, -645
                  rem          t4, s7, a7
                  c.slli       a0, 26
                  srai         a7, t5, 24
                  slt          t6, ra, t1
                  nop
                  c.add        s0, s6
                  andi         s9, s8, 1690
                  sltu         t2, t3, a1
                  c.andi       a4, 30
                  rem          s4, t6, a5
                  c.xor        s0, a2
                  or           s5, tp, s9
                  nop
                  c.slli       s4, 2
                  c.nop
                  c.li         s1, 17
                  slt          t3, s8, s0
                  nop
                  slti         s11, t5, -1269
                  auipc        s9, 597545
                  c.andi       a0, 17
                  mulh         s6, s2, a7
                  srai         s10, ra, 12
                  mulhsu       s0, gp, a1
                  remu         s7, s4, a7
                  c.li         t6, -1
                  c.and        s0, a2
                  c.slli       a1, 19
                  c.addi       t1, -1
                  and          a6, s9, s2
                  divu         t2, s11, s3
                  c.and        a4, a4
                  c.mv         s9, s5
                  c.and        a5, a2
                  sra          t4, a7, s3
                  c.srli       a0, 19
                  c.or         s1, a5
                  c.addi       t1, -1
                  div          a2, s9, s5
                  c.srli       a5, 22
                  c.srli       a1, 13
                  srli         t1, s9, 31
                  c.nop
                  c.and        a5, a1
                  div          a0, s1, zero
                  add          t2, a2, a5
                  slt          s9, s3, s7
                  c.addi       t4, -1
                  c.xor        a5, a2
                  c.nop
                  c.srai       a2, 27
                  remu         a0, a3, a3
                  c.slli       s4, 9
                  c.li         a5, 31
                  sll          a4, a2, s7
                  c.nop
                  and          a6, s4, a2
                  mulhsu       zero, s6, s9
                  srl          tp, a7, s5
                  mulhsu       s7, a1, ra
                  andi         gp, gp, -1003
                  divu         s6, t2, t2
                  andi         zero, ra, 1663
                  mulh         t0, a1, ra
                  and          tp, gp, t3
                  xori         s9, a5, -869
                  c.srli       s1, 17
                  sltu         gp, s1, s3
                  andi         s7, t1, -1212
                  xor          t5, zero, tp
                  nop
                  mulh         s1, s4, s7
                  mulhsu       s4, t0, a4
                  sra          t2, a4, t6
                  sub          s2, a4, t3
                  sltiu        s10, ra, 1623
                  or           s10, s5, s11
                  addi         s11, a5, -59
                  c.li         a6, 17
                  xori         t1, a4, 216
                  xor          a1, s9, s10
                  mul          t4, s9, t5
                  sll          a7, s4, a4
                  addi         a0, s5, 466
                  c.li         s3, 29
                  c.slli       s11, 13
                  c.mv         a4, s1
                  c.lui        s5, 1
                  c.sub        a2, a1
                  c.lui        tp, 14
                  sub          s5, t2, s4
                  c.srli       s1, 8
                  xori         a6, t4, -41
                  c.li         s3, 6
                  remu         a4, a7, s6
                  or           s10, s2, s0
                  mulhu        s5, s10, ra
                  div          ra, a4, s2
                  srl          t0, s8, s7
                  mulh         ra, s7, sp
                  sub          s5, s9, a5
                  andi         s11, t3, 1342
                  c.xor        a1, a0
                  c.mv         s9, a1
                  c.slli       s10, 28
                  c.or         s1, a0
                  slti         s10, t0, -1817
                  mulhsu       zero, s3, ra
                  lui          s7, 208055
                  sub          a7, t5, s8
                  srli         s1, a3, 7
                  c.li         s0, 31
                  sll          a5, sp, t0
                  xori         t4, t6, -467
                  mulh         t4, s2, s11
                  c.nop
                  ori          t1, a2, 1304
                  divu         zero, zero, a6
                  sub          s10, a7, t2
                  rem          a4, a2, t2
                  c.add        a7, s6
                  or           a1, s8, a2
                  remu         s7, s7, s0
                  sll          a1, t5, t2
                  srl          gp, a2, s3
                  slli         zero, a1, 0
                  sltu         t1, t2, s7
                  xori         tp, a3, -542
                  mul          s4, zero, s9
                  or           tp, a7, s8
                  c.add        a2, s10
                  nop
                  auipc        ra, 773850
                  addi         a6, t1, -82
                  mulhsu       s6, t0, s7
                  c.nop
                  xori         s1, gp, 1499
                  c.srai       a4, 29
                  c.srai       a2, 12
                  c.srli       a0, 11
                  mul          t1, t2, s11
                  sll          s2, sp, s10
                  sltu         a1, s5, t2
                  mulh         a2, zero, t5
                  sub          a2, gp, s7
                  c.srai       s1, 8
                  divu         s2, s1, s0
                  auipc        t3, 204394
                  addi         t1, s2, -1398
                  slti         s9, a3, 441
                  divu         s7, t2, s3
                  addi         a7, a1, -1637
                  c.xor        a1, s1
                  sltu         s5, sp, t4
                  c.sub        a5, a3
                  xor          t0, t2, ra
                  or           s2, t2, t6
                  ori          a2, s2, 844
                  c.andi       s1, -1
                  slli         a7, t3, 26
                  srai         s10, t0, 28
                  auipc        a5, 35690
                  c.srai       a1, 2
                  c.mv         t3, s6
                  c.srli       a2, 29
                  divu         a0, s10, zero
                  sll          a4, a5, a4
                  rem          s11, a5, s6
                  sll          a6, t2, t1
                  c.mv         t1, t3
                  ori          s6, zero, -885
                  c.slli       ra, 19
                  divu         t1, sp, sp
                  c.and        a5, s0
                  mulhu        s10, s3, s4
                  mulhsu       t6, a0, s6
                  slt          s10, sp, s5
                  rem          zero, tp, ra
                  divu         s0, tp, a5
                  sltu         a0, s0, s5
                  rem          tp, s10, s1
                  c.li         a0, 24
                  mul          s5, t2, s7
                  c.addi       s7, -1
                  sltu         gp, ra, s7
                  xor          a0, a1, t4
                  c.and        a1, s1
                  sll          s7, sp, s2
                  slt          t1, s7, t0
                  rem          s5, tp, t1
                  c.addi       a2, 16
                  or           a1, t5, s4
                  c.andi       s0, -1
                  mulhu        zero, s7, t4
                  srl          s4, s5, sp
                  c.sub        s1, s1
                  c.sub        s1, a5
                  c.add        t0, a2
                  add          s1, s1, s9
                  sltu         t1, t2, t3
                  sll          s4, zero, tp
                  xor          a2, a7, s1
                  div          a2, s7, t0
                  c.add        ra, ra
                  mulhsu       s2, a4, s2
                  slt          s11, a3, s2
                  div          a0, s10, a0
                  sra          t6, sp, t5
                  c.or         a0, a4
                  mulh         t3, a4, a6
                  sub          s10, t5, s7
                  mulhsu       s7, t2, s0
                  sltiu        gp, t4, 1403
                  c.li         t6, -1
                  c.or         s0, a1
                  slt          t1, s9, a3
                  c.andi       a5, 26
                  ori          t4, s2, -750
                  c.srli       a0, 24
                  slli         a0, t1, 25
                  c.srai       a2, 10
                  add          a6, t2, a5
                  srli         s4, t2, 18
                  srai         t6, s7, 22
                  c.andi       a0, 20
                  lui          a2, 840404
                  c.addi       s4, 23
                  slti         a2, a7, -354
                  sub          a6, a2, s6
                  and          s9, t1, a0
                  nop
                  andi         t3, t4, -66
                  c.nop
                  or           a2, a6, s6
                  ori          t3, s9, 408
                  and          s11, s10, s1
                  sltu         t3, ra, s4
                  add          t1, a0, zero
                  div          t2, s10, s6
                  c.srai       a0, 24
                  c.slli       gp, 24
                  sll          s3, s1, gp
                  div          zero, t4, a3
                  slli         a1, zero, 27
                  c.addi       tp, -1
                  c.mv         ra, a0
                  rem          zero, a3, s10
                  ori          s6, a3, -803
                  c.andi       s0, -1
                  rem          gp, zero, t4
                  sltiu        a5, s0, -1463
                  or           s4, a6, s8
                  c.nop
                  c.li         a0, 10
                  c.add        t0, s0
                  c.slli       ra, 5
                  auipc        s9, 516314
                  slti         a2, s6, 58
                  c.nop
                  lui          s6, 928039
                  mulhsu       a0, a4, a7
                  nop
                  srl          s4, t5, s3
                  c.li         s1, -1
                  c.and        a2, a5
                  sltu         zero, s2, t4
                  c.and        s1, a0
                  mulhu        t5, t0, s0
                  remu         s10, t6, s0
                  rem          a2, a0, s0
                  c.srai       a2, 10
                  c.mv         s9, gp
                  c.srli       s0, 20
                  slti         a5, s1, -2013
                  c.nop
                  c.sub        s1, a4
                  nop
                  rem          a7, a4, t6
                  sra          a2, s4, zero
                  auipc        a6, 329802
                  add          t1, t5, s4
                  ori          s6, s10, -1380
                  sub          tp, s9, a5
                  c.mv         t2, t4
                  sra          a7, a0, t3
                  slli         s3, s9, 8
                  c.xor        a1, s0
                  lui          t5, 18276
                  sra          a6, zero, s1
                  add          a6, a3, s0
                  add          t3, a7, s11
                  and          a6, a6, s2
                  c.lui        a7, 23
                  or           a6, t4, s5
                  c.mv         ra, t1
                  and          s1, gp, zero
                  c.andi       a1, -1
                  srli         t5, a0, 21
                  rem          gp, a3, s5
                  c.srli       a1, 10
                  c.addi       t5, 31
                  c.lui        s2, 26
                  xori         s1, t5, -391
                  nop
                  xori         zero, s2, 1168
                  srli         t6, tp, 4
                  mulhsu       s7, sp, s10
                  c.li         a6, 7
                  lui          s7, 458884
                  sll          a7, a5, a5
                  srl          a1, zero, a1
                  mul          s11, zero, sp
                  slli         t4, t4, 31
                  sra          s10, s2, t1
                  rem          s4, a5, t4
                  mulhu        t2, t1, s0
                  lui          a5, 7236
                  mulh         t6, a0, s0
                  addi         a5, a2, 863
                  addi         t3, a4, -1187
                  xori         a0, s4, 1191
                  c.li         a7, -1
                  srli         a2, ra, 19
                  slli         s2, ra, 21
                  rem          a2, t3, s6
                  c.sub        s1, a3
                  srli         t3, t5, 15
                  div          s4, t1, a6
                  c.srai       a2, 1
                  sltu         a2, a4, a6
                  srl          a2, s11, s9
                  c.xor        a4, a3
                  remu         s6, s9, zero
                  auipc        t0, 681382
                  xor          a6, sp, s3
                  add          s11, s2, s3
                  or           s0, t2, s9
                  srai         zero, t1, 0
                  xori         s6, s10, 594
                  ori          t5, t3, -1589
                  and          a4, s5, s6
                  nop
                  slli         a6, t3, 11
                  c.xor        a2, a3
                  remu         t0, a1, s0
                  sub          a5, a2, s11
                  ori          s2, s5, 764
                  addi         t5, a7, 1565
                  srl          s0, a0, s11
                  xori         t4, s0, 217
                  add          t0, s9, ra
                  mulhu        gp, s5, s10
                  xor          s11, sp, t6
                  c.and        s0, s1
                  c.lui        s1, 28
                  xor          a5, tp, a4
                  lui          tp, 241527
                  and          t6, s11, t5
                  slli         t6, a2, 4
                  mulh         t0, a0, ra
                  mulhsu       a6, t3, a6
                  xor          t0, t0, s6
                  c.slli       s10, 21
                  add          a5, a0, s9
                  slti         a5, t6, 1080
                  sub          s7, ra, s9
                  and          t1, s5, a2
                  div          t0, ra, s11
                  slti         t3, t2, 980
                  c.add        t5, s4
                  c.andi       a1, 0
                  sltu         s7, gp, t0
                  ori          s2, zero, -862
                  remu         t0, s9, s8
                  slt          s11, s3, s7
                  c.and        a2, s0
                  sra          s6, a3, ra
                  c.slli       s9, 1
                  mulhu        gp, t6, s0
                  c.addi       a5, 22
                  sub          s0, s6, a3
                  mulh         a5, a6, ra
                  remu         zero, s8, a4
                  mulhu        s4, a0, s8
                  c.and        a0, a3
                  slti         s4, t1, 1272
                  sra          ra, sp, a4
                  mul          t4, t4, s1
                  srai         t0, ra, 24
                  auipc        a7, 279640
                  c.add        s3, tp
                  c.addi       a0, -1
                  auipc        t1, 985367
                  c.add        t2, a0
                  sub          t0, a2, s7
                  xori         a6, tp, 1358
                  c.srai       a2, 17
                  andi         tp, a6, 302
                  mulh         a6, s10, a2
                  auipc        t6, 456111
                  c.nop
                  c.slli       t4, 18
                  addi         s10, s7, 1664
                  c.mv         t4, s2
                  sub          t1, t5, t1
                  slti         t4, a6, 135
                  mul          s11, ra, t1
                  or           a6, a1, tp
                  xori         s4, s2, 190
                  or           s11, s11, s0
                  c.li         s6, -1
                  div          t5, a6, ra
                  sra          a0, s9, t4
                  c.mv         a6, s9
                  mulhsu       a5, a2, a0
                  sra          zero, s4, a5
                  sra          t1, t2, tp
                  div          zero, t0, a2
                  andi         s4, s10, 1095
                  sra          s10, s6, a2
                  and          s3, a5, sp
                  c.sub        s0, a4
                  andi         s3, s1, -1312
                  remu         t3, s6, s10
                  rem          t2, t4, a5
                  c.and        s1, a1
                  c.srai       a1, 1
                  andi         t2, s11, -1572
                  addi         a5, tp, 982
                  c.xor        a5, a1
                  srli         s11, gp, 29
                  c.add        s3, s7
                  srai         s2, s6, 6
                  lui          a4, 665633
                  c.li         ra, -1
                  lui          a5, 599889
                  xor          a1, s11, a7
                  and          a4, s1, t6
                  ori          s11, a3, 1192
                  c.lui        s10, 16
                  div          s10, t0, s0
                  c.addi       s0, -1
                  srl          t4, s5, a2
                  c.nop
                  srli         t0, s3, 27
                  srl          s5, a6, s5
                  divu         a6, a1, s0
                  mulhu        s10, t6, t5
                  slt          s4, s11, s8
                  add          a2, tp, a1
                  slli         s11, s0, 18
                  addi         a6, a6, 13
                  auipc        s10, 829745
                  sll          a4, s2, s4
                  c.addi       s7, -1
                  sra          t4, a2, gp
                  divu         a0, a3, t3
                  mulhu        a0, a7, a4
                  c.sub        s1, s1
                  c.addi       s0, -1
                  c.li         s4, -1
                  sub          t1, zero, a2
                  slli         zero, s5, 10
                  sltu         t2, gp, s3
                  c.li         a1, 1
                  nop
                  xori         s6, s6, 1680
                  xor          s9, s3, t6
                  c.slli       a6, 2
                  sltu         t2, t5, a2
                  add          a0, s8, t4
                  rem          a4, s10, s1
                  mulhu        s5, s8, t4
                  c.slli       s3, 22
                  sltu         s5, a5, ra
                  c.mv         s4, t2
                  addi         s3, gp, 602
                  c.srli       a5, 22
                  slt          s5, t1, a3
                  srli         t5, s2, 22
                  c.andi       a1, 29
                  auipc        ra, 876077
                  mulh         a2, t0, s7
                  sll          zero, zero, a4
                  mulhsu       t5, a5, s8
                  srai         ra, tp, 16
                  addi         s3, tp, 1548
                  c.srli       a5, 12
                  add          t4, s4, t6
                  div          s1, ra, a0
                  sub          ra, s1, t5
                  and          a5, s4, s10
                  sll          t1, t1, s9
                  rem          a5, s3, s1
                  sltiu        s9, s4, -520
                  and          t4, gp, s5
                  andi         s1, gp, 1695
                  c.slli       a2, 18
                  addi         a0, s11, -305
                  srli         a1, t6, 11
                  lui          t0, 885908
                  c.srai       a1, 17
                  addi         s9, s5, 1411
                  sub          s4, tp, zero
                  rem          t2, a0, s10
                  c.mv         a0, t0
                  mulh         a0, s5, s10
                  add          t0, a0, s0
                  mulhu        s10, t0, s10
                  c.or         a4, a3
                  or           s6, t3, gp
                  c.add        s4, sp
                  c.srai       a2, 26
                  add          a7, t2, s4
                  sltu         tp, s5, a1
                  sub          s7, s6, zero
                  auipc        s7, 558213
                  mulhsu       s1, sp, t0
                  sltu         a7, s1, t3
                  mulhu        zero, s5, t0
                  remu         a2, s11, s0
                  slt          t6, s5, ra
                  and          a6, s6, a7
                  c.mv         a4, gp
                  mulhsu       s11, t1, a3
                  c.mv         t5, sp
                  remu         s4, s7, s7
                  srai         s4, gp, 14
                  mulhsu       s4, s2, a5
                  c.nop
                  xor          s5, s9, t1
                  sub          s5, a7, s2
                  sra          s5, t5, t4
                  addi         s0, t6, -989
                  c.addi       ra, 26
                  mulh         s6, t2, t6
                  xori         s1, tp, -265
                  mulhsu       a4, a1, t1
                  nop
                  c.lui        t2, 1
                  srli         a6, t1, 31
                  mulhsu       t1, t2, t3
                  remu         s1, t5, a7
                  slt          a4, zero, t6
                  c.lui        s11, 13
                  remu         s5, s10, s2
                  sltu         t5, a3, s1
                  srl          t0, s0, a4
                  andi         s7, sp, 888
                  c.xor        a1, a1
                  c.srai       a1, 27
                  mul          t0, a0, t1
                  c.add        s1, t6
                  and          a0, tp, t3
                  div          s11, a6, a3
                  sra          a4, a0, t0
                  c.addi       s10, 19
                  sltu         s9, s9, a4
                  c.srli       a2, 23
                  mulhsu       a4, a7, a4
                  c.andi       a2, 14
                  lui          ra, 658568
                  slt          a2, a6, a6
                  lui          t6, 975731
                  mulh         s2, a4, s9
                  xori         s3, a2, 491
                  srl          tp, s4, s3
                  addi         a0, sp, -1941
                  c.mv         t4, gp
                  c.sub        s0, s1
                  c.sub        s1, a0
                  addi         a7, s7, 1156
                  ori          s0, t0, 231
                  nop
                  sub          s11, s8, s8
                  sll          s6, t2, s11
                  mulhsu       t3, a0, s4
                  lui          t1, 847669
                  sltu         s7, a7, t4
                  and          ra, a6, s11
                  rem          gp, t4, a2
                  slt          t3, s5, zero
                  c.add        a6, t5
                  ori          gp, a2, 458
                  rem          t4, a7, ra
                  slli         a7, gp, 13
                  srli         t6, t2, 8
                  sltiu        s10, a2, -1152
                  mul          a5, a4, gp
                  c.nop
                  and          t2, zero, t5
                  rem          a7, t1, s6
                  c.add        a6, t0
                  srl          s4, sp, t3
                  slti         a2, s8, 214
                  slt          s10, a3, t0
                  srl          ra, sp, a2
                  c.or         a4, a2
                  or           t5, a4, a7
                  c.slli       t3, 13
                  c.and        a5, a0
                  c.sub        a0, a0
                  xori         tp, s3, 2038
                  slt          a2, a5, t4
                  c.andi       a5, 16
                  xori         s11, a1, 1096
                  c.sub        s0, a3
                  c.srli       a2, 29
                  srl          gp, s9, s7
                  c.add        s5, s7
                  c.add        ra, ra
                  slli         s5, s5, 23
                  c.and        s0, a4
                  c.xor        a1, a5
                  c.xor        a5, s1
                  xori         s6, gp, -1653
                  add          a6, s4, ra
                  rem          s10, s9, s7
                  mulhsu       s10, a6, s6
                  lui          t5, 980256
                  lui          s5, 114102
                  remu         t6, s4, s9
                  c.nop
                  rem          s10, s10, a6
                  c.or         a4, a0
                  divu         t5, s0, a7
                  mulhsu       s11, t2, ra
                  sltu         gp, a1, s7
                  c.nop
                  slt          s1, s1, t5
                  and          s2, s10, s3
                  nop
                  c.nop
                  or           t2, a3, a0
                  c.addi       a2, -1
                  div          t1, t5, s6
                  or           s7, s5, s5
                  c.and        s1, s1
                  divu         t3, a0, a4
                  nop
                  slti         t3, s1, 1219
                  xor          s5, gp, s0
                  divu         s0, tp, s5
                  remu         s10, t2, t4
                  nop
                  srl          s2, t3, t1
                  c.sub        a4, a1
                  slt          a2, zero, a5
                  divu         a6, a6, a0
                  ori          t1, s2, -839
                  mulhu        a1, a3, ra
                  andi         t3, a3, 1970
                  div          t6, s5, t1
                  divu         a7, s2, s0
                  c.sub        s0, a5
                  xor          ra, s9, s11
                  nop
                  ori          s3, s2, -993
                  mul          t0, t4, s5
                  xori         ra, s9, -1520
                  srli         s7, t1, 0
                  c.srli       a2, 6
                  mul          a2, s6, s6
                  slt          s1, s7, ra
                  mulhsu       s2, t3, a0
                  auipc        s2, 349234
                  srli         tp, s2, 20
                  andi         s6, s9, 857
                  slti         s5, a3, 279
                  addi         s2, s2, -236
                  srai         t1, a3, 16
                  c.sub        a1, a3
                  ori          a6, s1, 1600
                  c.andi       a4, 30
                  mulh         s10, t6, sp
                  slt          t2, a4, s10
                  or           s1, s7, t2
                  c.xor        a0, a5
                  srl          s6, s11, t4
                  xori         t1, t2, 2019
                  or           s6, s4, s11
                  c.nop
                  c.mv         s9, t3
                  c.sub        a2, s0
                  mul          s0, a1, s3
                  remu         a4, a1, s2
                  rem          gp, a2, t4
                  nop
                  c.srli       a4, 17
                  add          s9, t2, t3
                  c.and        a4, s1
                  mul          s5, t2, s2
                  remu         s0, t6, s9
                  mulhsu       tp, ra, s5
                  c.slli       s7, 15
                  sub          t1, ra, t5
                  c.slli       s11, 7
                  lui          s10, 99810
                  sltiu        t3, tp, 968
                  andi         zero, zero, -1787
                  c.lui        s2, 22
                  xori         s5, s10, -919
                  sll          tp, s11, a4
                  sltiu        s0, tp, 1415
                  c.srli       a5, 29
                  add          t3, t4, t6
                  xor          a4, zero, a4
                  c.srli       a0, 31
                  sra          t2, s9, t3
                  c.srai       s0, 5
                  divu         t1, t4, s9
                  c.or         s1, a3
                  c.sub        s1, s0
                  add          s4, t3, tp
                  c.mv         t1, gp
                  slt          s7, s5, a2
                  c.nop
                  c.and        s1, a1
                  srl          zero, a0, s8
                  sra          s11, t2, t2
                  srai         t6, s6, 9
                  c.srli       a5, 12
                  or           t6, a4, a6
                  c.mv         s4, sp
                  or           s4, tp, s2
                  sll          a0, s10, sp
                  slti         s1, t5, -1051
                  or           t3, t3, t3
                  c.lui        s9, 27
                  remu         s9, s1, s0
                  add          t4, a4, t5
                  c.and        s1, a5
                  c.addi       a6, -1
                  c.and        s0, a1
                  c.or         a0, a4
                  addi         a4, t5, 965
                  or           gp, zero, s7
                  mulhu        t0, t0, s2
                  slt          a6, tp, a5
                  c.add        s10, a3
                  c.or         a2, s1
                  and          s3, zero, a6
                  sub          a0, sp, a5
                  c.add        a4, t3
                  c.srli       s1, 10
                  sll          t2, zero, a1
                  c.lui        s5, 29
                  c.srli       s0, 20
                  and          a5, t0, s3
                  slt          s5, t3, a7
                  c.lui        a6, 3
                  c.or         s0, s1
                  c.mv         t0, s7
                  srai         gp, s4, 15
                  srai         s1, s5, 0
                  xor          a4, s1, t5
                  ori          t0, tp, -1161
                  or           a2, s1, a2
                  c.xor        a4, a0
                  c.nop
                  sll          t0, a1, s2
                  or           gp, t4, a6
                  addi         s11, gp, 739
                  lui          s10, 788831
                  c.srai       s0, 9
                  xor          gp, t1, a1
                  mulhu        t5, t3, s5
                  rem          t4, s2, a4
                  c.nop
                  srai         t6, t6, 8
                  mulhu        s4, a2, a4
                  remu         s11, ra, sp
                  or           s4, s4, s8
                  add          t2, gp, s0
                  sltu         t4, s5, ra
                  c.slli       s4, 22
                  div          a2, t2, a0
                  c.xor        a2, s0
                  addi         s2, s2, -1703
                  c.nop
                  srl          s0, t4, t6
                  mul          a2, zero, a2
                  slli         s1, t4, 10
                  sll          t0, gp, a1
                  remu         a6, s3, s2
                  c.slli       t0, 18
                  c.mv         a4, t0
                  xor          s5, a4, s8
                  sub          t4, a0, a2
                  slli         s11, s10, 17
                  slli         gp, s7, 2
                  remu         a7, a3, t1
                  xori         zero, tp, -1838
                  xori         s6, ra, 1483
                  slt          a2, s0, a4
                  c.slli       s0, 2
                  sub          a4, a7, t6
                  divu         tp, a4, s4
                  or           t4, s10, a7
                  c.li         t1, -1
                  c.xor        s1, a1
                  slli         a1, t3, 16
                  c.sub        s1, a3
                  xor          t6, s8, s1
                  c.addi       a5, 27
                  c.sub        a5, a1
                  slti         s9, s5, -1200
                  c.add        ra, a2
                  c.srli       s0, 21
                  and          s4, t0, a2
                  andi         a2, a7, 1465
                  c.lui        tp, 25
                  c.srli       a4, 15
                  c.nop
                  slli         t2, zero, 20
                  sra          s9, s6, gp
                  c.or         a4, a5
                  c.srai       s1, 31
                  mulhsu       s6, s6, t0
                  sll          s11, tp, sp
                  c.lui        tp, 4
                  sra          tp, t0, s9
                  lui          t5, 955418
                  addi         s6, s1, 2033
                  srl          s1, a4, a3
                  divu         ra, s3, t4
                  c.mv         ra, a5
                  c.mv         s1, s10
                  ori          s1, sp, 1064
                  c.add        t0, sp
                  ori          t5, s6, 634
                  sltiu        s0, s1, 1506
                  or           s9, s10, a5
                  c.lui        s0, 8
                  nop
                  div          a4, s0, a6
                  slt          a0, t5, a1
                  div          t1, s10, s3
                  mul          s0, s11, a7
                  c.addi       a0, -1
                  mulhu        a6, a4, a0
                  c.li         t4, -1
                  mul          t5, zero, a1
                  remu         s4, s7, a7
                  mulh         s6, s5, zero
                  divu         a4, s5, s0
                  sra          t2, t4, s1
                  lui          s10, 18815
                  sra          a2, t0, t2
                  sll          s10, s9, s8
                  c.sub        a1, a0
                  c.xor        a5, a1
                  srl          a5, tp, t6
                  slli         a7, a1, 13
                  c.add        s5, t6
                  div          a5, s2, s10
                  c.or         a1, s0
                  c.and        a0, a3
                  mulhu        t1, t6, a5
                  mulhu        s7, s11, tp
                  c.srai       s1, 26
                  xor          s6, ra, t2
                  div          a0, a0, tp
                  c.slli       s10, 18
                  c.addi       s6, 3
                  auipc        a1, 538317
                  slt          a5, s11, s3
                  remu         t2, s11, a5
                  srl          a2, t6, s4
                  c.lui        a6, 23
                  mulh         gp, s3, s6
                  c.slli       s10, 26
                  c.srai       s1, 3
                  srai         t0, a4, 7
                  c.lui        s10, 21
                  mulhsu       a2, s11, zero
                  srai         s5, s6, 17
                  mulh         gp, t2, a4
                  ori          t1, s3, -217
                  sub          s9, s1, s4
                  c.lui        gp, 31
                  sltiu        a5, t0, 1632
                  c.add        s2, s0
                  sltu         s1, sp, s11
                  lui          s6, 608224
                  c.andi       s1, -1
                  slti         s11, sp, 1415
                  srl          a5, gp, a5
                  xor          s2, s3, tp
                  ori          a2, s11, -769
                  divu         t1, s7, s4
                  mulh         a0, s8, s1
                  sra          a7, s3, s3
                  add          t3, a6, ra
                  and          t2, a3, a3
                  c.sub        a1, a2
                  xor          t6, t0, s5
                  sll          s0, t1, s11
                  c.mv         s5, s0
                  xor          t0, sp, s5
                  sltiu        a0, t3, 1793
                  c.xor        s1, a1
                  mulhu        s0, t0, s8
                  srai         t3, a4, 8
                  or           a5, ra, s6
                  xor          s0, s1, s7
                  mulh         a4, s11, s11
                  remu         t5, a6, gp
                  sltiu        zero, s8, 438
                  div          t2, tp, s8
                  srai         t6, t5, 2
                  c.addi       s6, -1
                  or           a6, a1, s7
                  mulh         tp, a6, zero
                  divu         a4, t4, s4
                  mulhsu       t2, t6, a5
                  div          s11, s5, a4
                  sub          s11, s11, t1
                  slti         t3, t1, -42
                  c.lui        t1, 24
                  srl          a5, a1, zero
                  c.srli       s1, 7
                  c.sub        a5, a4
                  sltiu        s11, s2, 1584
                  sll          s11, tp, t1
                  c.srli       s0, 14
                  c.srai       a5, 30
                  rem          a0, t0, a1
                  c.mv         t2, a2
                  sub          a0, ra, t4
                  c.srai       a4, 2
                  c.nop
                  and          t3, gp, t5
                  xori         s10, t6, 789
                  remu         a1, t1, sp
                  rem          tp, s9, gp
                  c.slli       s10, 6
                  srai         s0, t1, 23
                  c.sub        a0, a2
                  sub          ra, sp, gp
                  nop
                  mulhu        s9, s1, a2
                  sltu         s1, s1, s10
                  add          s4, s4, t2
                  c.or         s0, a5
                  sra          t0, a1, a5
                  c.mv         s6, sp
                  mulhsu       s5, t4, tp
                  ori          s9, s4, 824
                  srl          a2, s10, t3
                  c.srli       a0, 22
                  mulhsu       s0, gp, sp
                  sra          s9, s5, s1
                  c.lui        s1, 23
                  rem          s2, a6, a6
                  c.xor        a4, s1
                  divu         s11, a5, zero
                  srli         a1, zero, 26
                  c.lui        s10, 6
                  mulhsu       t3, a3, a6
                  slti         a6, a3, -466
                  sltiu        s5, t0, -1634
                  sltu         s0, s0, t0
                  mulhsu       s1, s3, t3
                  divu         a5, gp, t1
                  c.sub        a0, a1
                  sll          s10, gp, s0
                  slli         s11, t0, 27
                  c.xor        a4, a4
                  auipc        zero, 568045
                  slti         t5, s6, -326
                  sll          s10, t0, a6
                  c.add        s4, gp
                  or           t6, t6, s5
                  c.mv         tp, t4
                  c.andi       a5, -1
                  lui          a1, 989215
                  c.or         a1, a5
                  or           a1, t0, zero
                  c.andi       s1, -1
                  xori         t4, s9, -874
                  c.mv         t5, t5
                  c.srli       a2, 3
                  andi         s6, zero, -797
                  sra          zero, t3, a0
                  sll          a4, s5, a1
                  c.andi       a5, 14
                  xori         t0, t3, -914
                  c.add        tp, s1
                  addi         a2, t6, 2023
                  c.li         a0, 3
                  c.nop
                  c.sub        s0, s0
                  ori          t0, a4, 1338
                  addi         s1, t6, 1834
                  lui          s0, 561223
                  remu         s9, tp, s0
                  andi         s3, t5, -1111
                  c.andi       s0, -1
                  c.srai       a0, 25
                  c.or         a1, a4
                  lui          s0, 437936
                  c.add        s6, ra
                  c.and        a2, a3
                  c.andi       s1, -1
                  slli         s3, a7, 27
                  add          t0, ra, sp
                  xor          s2, ra, a1
                  srli         t0, s7, 18
                  sltiu        t0, s0, 1147
                  c.addi       gp, 8
                  mul          a5, t2, s6
                  mulhsu       a0, s3, a6
                  c.sub        a5, a3
                  lui          a6, 1011768
                  remu         t5, a4, t0
                  c.mv         s0, t3
                  c.or         a0, a3
                  sltu         t3, s10, t6
                  div          a7, s11, a6
                  xor          s3, s3, t4
                  rem          zero, t1, zero
                  sltiu        t1, s7, -181
                  divu         s1, gp, t0
                  and          zero, a3, t5
                  c.mv         t0, s7
                  slt          s11, s6, tp
                  slt          t4, a0, s7
                  c.add        t3, s6
                  mulh         s3, a6, s0
                  addi         t1, s4, -384
                  rem          s10, a2, s6
                  mulhu        t3, sp, s6
                  xori         s5, a4, -389
                  slt          t1, s2, a3
                  c.xor        a4, a4
                  sltiu        a2, s7, -1669
                  sra          s6, a4, sp
                  c.li         t1, -1
                  lui          gp, 112204
                  mulhsu       t2, t4, a2
                  c.li         t3, 14
                  mul          zero, a5, a7
                  c.xor        s0, a5
                  c.nop
                  slti         a5, s6, 1417
                  sll          t0, s4, a6
                  sltu         t3, t0, a4
                  divu         zero, s9, a4
                  srai         s6, s1, 22
                  c.sub        s1, a2
                  c.xor        a4, a4
                  slti         s2, s9, 2013
                  divu         a2, s11, t2
                  c.addi       a2, 24
                  c.srai       a4, 10
                  xor          s2, a4, s7
                  c.sub        a2, a5
                  remu         s3, ra, t4
                  sltiu        s5, a4, 725
                  addi         a2, s11, 1231
                  c.addi       t6, 15
                  sub          gp, tp, s2
                  remu         t5, s4, s8
                  sll          t4, sp, ra
                  sltiu        s5, s6, -1498
                  lui          s3, 72219
                  c.nop
                  andi         s1, t0, -1079
                  mulhsu       s6, tp, t5
                  rem          tp, zero, t1
                  slti         zero, s3, 949
                  slt          a0, ra, a6
                  c.xor        a1, a1
                  c.andi       s1, 29
                  mulhu        tp, a6, s10
                  xor          a2, s11, a2
                  lui          s4, 253314
                  c.srli       s1, 16
                  c.and        a1, s0
                  c.addi       a0, 18
                  rem          s3, a7, s6
                  divu         t3, a2, a4
                  c.li         a2, 10
                  add          t6, a2, s1
                  sub          s1, zero, s10
                  mulhu        a2, s11, s1
                  mulhu        s1, a3, s1
                  slli         t2, s4, 0
                  c.lui        t0, 2
                  c.and        s0, a2
                  mul          a0, s11, s9
                  c.lui        s1, 8
                  remu         a6, zero, t0
                  xor          a4, s2, a4
                  c.nop
                  xor          s3, s2, a5
                  c.slli       s10, 3
                  c.nop
                  c.andi       a5, 18
                  lui          s6, 685805
                  divu         a6, a4, t2
                  lui          a1, 898825
                  sll          s4, t5, a1
                  nop
                  sub          a1, s0, a4
                  slt          t0, s1, a4
                  c.and        a0, s0
                  mulh         t3, s2, s1
                  c.lui        gp, 6
                  remu         a4, a1, gp
                  lui          s11, 527337
                  mulhsu       a2, t2, a6
                  c.li         t2, 23
                  or           s4, sp, a5
                  ori          a2, zero, 1606
                  c.and        a4, a3
                  sltiu        t3, tp, 990
                  andi         t5, a3, -549
                  mulhsu       a0, a5, s2
                  c.mv         s0, ra
                  div          s11, a3, ra
                  mulh         gp, s10, s9
                  ori          a6, t0, -1723
                  c.lui        s5, 4
                  c.srai       a2, 25
                  div          a7, t5, t5
                  srli         t4, s1, 25
                  c.srli       a5, 29
                  mulh         a7, a4, t3
                  mul          t1, s5, a6
                  mul          gp, a0, s6
                  remu         t5, a0, a2
                  slt          gp, s9, s0
                  c.add        t3, a2
                  srli         s6, a0, 4
                  c.sub        a5, a4
                  auipc        s7, 432852
                  lui          a0, 856524
                  ori          t6, a0, -1367
                  rem          t0, s6, a5
                  c.xor        a0, a0
                  remu         s10, s4, gp
                  c.srli       a5, 20
                  sub          ra, a4, a0
                  div          t0, t6, s4
                  lui          a5, 290780
                  sltiu        s2, t0, 852
                  divu         s6, s5, s2
                  srai         a4, a0, 6
                  c.lui        t1, 2
                  c.mv         a7, s0
                  div          t1, sp, t3
                  auipc        tp, 865132
                  sub          t4, s7, s7
                  sll          a7, s11, s6
                  c.nop
                  c.mv         s0, t6
                  xori         t2, t6, -979
                  c.and        a5, a5
                  addi         t2, sp, -531
                  c.srli       a5, 3
                  andi         a4, s4, 503
                  c.lui        s6, 20
                  mulhu        s3, t1, t0
                  mulh         t0, s11, s11
                  srl          a6, s10, s10
                  sra          zero, sp, sp
                  c.or         a5, a4
                  remu         t1, t1, a3
                  c.add        tp, a4
                  c.srai       a1, 2
                  sltu         s0, t3, s7
                  sub          t3, s3, s10
                  andi         t1, s7, -985
                  divu         s7, s9, t6
                  or           a7, a5, s4
                  mulh         a0, s1, s9
                  c.addi       s5, 16
                  ori          a0, t0, -1931
                  c.sub        s1, a3
                  ori          s7, s10, 568
                  c.li         s11, -1
                  c.xor        a2, a3
                  sltiu        a1, t1, 669
                  c.sub        a5, s1
                  div          t4, t0, s0
                  c.li         t1, -1
                  sll          t0, tp, s7
                  sll          s9, s10, sp
                  rem          a2, s7, zero
                  c.add        s9, t1
                  c.li         a1, 26
                  slt          a5, t6, s3
                  or           s10, zero, t5
                  sll          t4, s6, zero
                  andi         s4, t5, 1425
                  xori         t5, s1, -1668
                  c.and        s1, a3
                  slli         a5, s0, 0
                  c.li         s0, 26
                  ori          s7, s6, -321
                  sra          s7, a5, gp
                  c.and        a5, a0
                  nop
                  and          t4, a5, t5
                  sll          t1, t1, s1
                  c.slli       t3, 6
                  xor          s6, s3, gp
                  xori         s11, a5, 2009
                  or           t0, s8, s4
                  div          a2, s2, a0
                  nop
                  c.sub        s1, a0
                  c.slli       s0, 7
                  c.srli       a1, 13
                  slt          zero, s11, a0
                  sltiu        tp, ra, 499
                  c.srli       a5, 25
                  rem          a6, a4, t1
                  nop
                  or           s10, s1, s0
                  sll          s11, s0, ra
                  lui          t2, 445965
                  xor          t6, s1, a6
                  add          a5, s3, s5
                  nop
                  c.lui        s9, 11
                  c.add        tp, s6
                  addi         gp, tp, -478
                  c.and        a1, a1
                  c.lui        a4, 13
                  c.slli       t6, 29
                  c.addi       t6, 28
                  xor          a7, t1, t0
                  xor          a2, s0, a7
                  c.andi       a5, -1
                  c.add        s2, t1
                  c.sub        a1, a3
                  or           t1, s10, s10
                  slli         s5, t5, 15
                  divu         tp, s4, a7
                  srli         s3, a0, 13
                  c.srli       a1, 13
                  mul          t1, t2, a7
                  add          zero, t2, t3
                  srli         s10, s1, 12
                  add          s3, s0, t6
                  c.slli       tp, 29
                  c.or         a1, a2
                  or           s9, a0, s1
                  and          s0, a4, sp
                  xori         s5, t1, -1165
                  slti         s3, a1, 171
                  sra          ra, tp, gp
                  c.slli       a2, 22
                  divu         gp, s10, a2
                  c.and        s1, a0
                  sra          s11, s9, s6
                  c.addi       tp, 19
                  or           t1, s4, t5
                  xori         t0, t5, -383
                  lui          a4, 811068
                  sra          a1, s4, s10
                  slti         s7, s0, -28
                  c.srai       a2, 21
                  c.slli       s0, 20
                  div          ra, s3, t6
                  c.or         a1, a3
                  mulhsu       a1, t4, a7
                  sub          tp, a3, s9
                  c.add        s0, t2
                  c.nop
                  mulhu        a1, a7, t5
                  slli         s6, s7, 22
                  mulh         a1, zero, a0
                  mulhu        t3, a6, a1
                  divu         t1, s10, s10
                  c.srai       s0, 21
                  slli         a2, a6, 27
                  sltiu        s1, t5, 75
                  slt          a6, t1, t1
                  rem          t1, s0, s6
                  c.andi       a1, -1
                  mulh         s7, s6, s10
                  xor          s0, sp, tp
                  c.nop
                  sub          t6, t3, s11
                  add          a2, a5, a4
                  c.xor        a5, s0
                  mul          zero, zero, s4
                  rem          a0, t3, t0
                  xor          s2, ra, a7
                  divu         a5, a4, t6
                  c.sub        a1, s1
                  slti         t5, s2, -576
                  c.srai       a5, 24
                  c.mv         s10, a4
                  remu         a0, t1, s9
                  or           s2, t5, t4
                  auipc        zero, 681024
                  sll          a2, t6, a6
                  c.srai       a4, 12
                  div          a2, sp, s2
                  mulhu        a0, t1, s11
                  xor          s1, tp, s8
                  c.nop
                  div          t3, t1, tp
                  c.xor        a4, a5
                  srl          t3, a3, s6
                  mul          s4, a6, t5
                  sltu         t5, a0, t1
                  remu         s5, gp, zero
                  divu         s5, s3, s0
                  and          s3, t2, t2
                  addi         a4, a7, 467
                  sltiu        s0, t1, -801
                  divu         s5, a2, a0
                  remu         s11, s2, s9
                  c.mv         t6, a2
                  lui          a7, 1035720
                  nop
                  c.sub        a4, a3
                  sub          zero, sp, s10
                  sub          s6, s9, s10
                  mulhu        s7, t4, s7
                  c.sub        a2, a4
                  or           s5, t3, s10
                  andi         s11, s0, -1119
                  remu         zero, s11, gp
                  c.add        ra, s11
                  c.xor        a0, s1
                  c.slli       a7, 24
                  c.addi       s6, 24
                  c.nop
                  c.mv         tp, t1
                  c.andi       a2, 8
                  srai         s10, s11, 0
                  ori          s0, ra, -556
                  srai         s9, a2, 29
                  c.mv         a2, t2
                  mulhu        s9, a3, s0
                  xori         t0, a0, 464
                  mul          t1, t6, t5
                  ori          gp, s6, 2000
                  nop
                  c.srai       a2, 15
                  div          a6, zero, s1
                  addi         a7, s10, 559
                  sra          tp, s9, a6
                  mulhu        s0, s5, t6
                  mulhu        s1, zero, s2
                  sub          s1, s5, s2
                  c.add        s7, s7
                  mulh         a2, a4, sp
                  sra          s2, s9, a5
                  sltu         a0, a0, s2
                  c.lui        a7, 8
                  c.or         s0, a1
                  addi         gp, s9, -947
                  sll          a5, s9, t3
                  slli         a1, a1, 15
                  divu         t1, a3, t5
                  sltu         t4, s1, t4
                  c.andi       a4, -1
                  add          a4, gp, s10
                  divu         s11, zero, tp
                  c.lui        a1, 9
                  c.mv         gp, tp
                  slli         t2, s2, 29
                  slti         t2, gp, -737
                  c.srai       s1, 21
                  slt          s7, a2, s9
                  c.nop
                  slt          t0, gp, s4
                  div          s10, a6, t1
                  and          s0, s2, a7
                  c.or         a4, a2
                  srl          s0, t3, t0
                  mulh         t0, s3, s9
                  c.xor        a4, a5
                  c.mv         t6, s1
                  sra          t6, s6, s7
                  divu         s5, t4, s11
                  xori         ra, sp, 314
                  c.mv         s4, s0
                  c.addi       s11, 18
                  c.mv         tp, t3
                  srl          t2, a0, a2
                  add          gp, t5, s5
                  slli         a7, a5, 15
                  mulh         s1, s1, a0
                  mul          a5, a2, t3
                  srli         ra, gp, 26
                  c.add        s0, tp
                  srli         s2, s9, 15
                  div          zero, t2, s11
                  slti         t3, s8, 1225
                  c.srai       a0, 24
                  lui          s1, 179601
                  c.xor        a4, a2
                  div          s9, a7, s2
                  xori         s5, s5, 9
                  c.add        gp, t0
                  c.li         gp, 13
                  c.li         ra, -1
                  c.or         a5, a2
                  mulhsu       s2, a6, s9
                  c.or         a1, s1
                  mulhu        zero, s11, t6
                  ori          t6, a5, 1768
                  nop
                  c.and        a0, a4
                  rem          t4, s3, t4
                  slli         a0, t3, 11
                  srli         a5, a6, 30
                  mulhsu       tp, s4, t3
                  rem          a2, s6, s7
                  c.sub        a0, s1
                  sll          s5, s1, s2
                  srl          a0, a6, a5
                  lui          t1, 412271
                  c.andi       a0, -1
                  c.nop
                  sltu         a0, t4, a4
                  mulhsu       t1, s7, ra
                  sll          s11, s11, t2
                  or           s4, t6, a5
                  xori         a4, s5, -954
                  mulh         ra, ra, gp
                  c.or         a0, s0
                  c.mv         a1, s9
                  divu         t5, a5, s4
                  xor          a2, a2, s5
                  nop
                  c.xor        s0, s1
                  c.xor        s1, a2
                  c.lui        a7, 24
                  and          s2, s5, t5
                  c.srli       a5, 15
                  mul          ra, t1, a2
                  and          t0, s2, t1
                  c.xor        a5, s0
                  c.andi       a2, -1
                  mul          zero, s9, a4
                  slt          s3, t6, sp
                  c.addi       t2, -1
                  c.li         tp, 1
                  andi         t0, s0, -467
                  divu         t0, s10, a4
                  auipc        t3, 264325
                  mulhu        s5, s8, t1
                  rem          t1, s7, s9
                  c.or         a2, a2
                  mulhu        s2, sp, s7
                  xor          s10, gp, s10
                  c.andi       a0, -1
                  xor          a4, sp, t0
                  divu         t1, s1, t5
                  and          t3, s6, t3
                  c.or         a0, a5
                  c.nop
                  mul          t1, t5, s10
                  mul          t2, t1, a5
                  c.and        s0, a0
                  srli         s3, a0, 5
                  ori          s1, t4, 780
                  c.mv         tp, ra
                  c.li         s9, -1
                  c.and        s1, a3
                  slt          a6, s7, a4
                  srai         t0, a5, 14
                  sltu         a5, s0, t5
                  slti         t4, a4, 729
                  c.slli       t2, 13
                  xori         s4, t1, 1322
                  c.and        a2, a2
                  sltiu        s0, s2, 1146
                  mulhsu       s9, s4, s11
                  srl          s10, s2, s1
                  sltu         t6, s6, s8
                  c.srli       a0, 30
                  slt          a7, a6, tp
                  c.srai       s1, 10
                  c.slli       ra, 4
                  mulh         a2, tp, s4
                  c.sub        s1, a2
                  c.srai       a5, 13
                  div          ra, t5, a2
                  add          t0, s0, ra
                  rem          t0, t2, s7
                  sub          gp, a7, a5
                  xor          s5, ra, t6
                  c.srli       s0, 21
                  srai         a6, s1, 1
                  remu         t0, a2, s8
                  ori          t2, a0, 1928
                  andi         zero, zero, -461
                  or           s5, s0, s2
                  and          a6, s7, gp
                  sltiu        s6, t6, -1075
                  slti         a1, a3, -1267
                  c.srai       s1, 24
                  div          gp, a5, s5
                  ori          a6, t5, 48
                  c.and        a2, a3
                  c.addi       s2, -1
                  c.nop
                  divu         s7, t4, t0
                  remu         t2, sp, t4
                  nop
                  lui          a4, 588602
                  c.and        a0, a1
                  c.or         a5, s1
                  c.srli       a4, 11
                  c.andi       s1, 9
                  c.lui        s5, 23
                  c.nop
                  srai         a2, s2, 17
                  slli         s10, s5, 8
                  c.add        t5, a3
                  c.lui        s4, 30
                  c.srli       a5, 5
                  c.addi       a7, 11
                  slt          s0, a6, s3
                  lui          gp, 45496
                  sltiu        a7, sp, -1044
                  c.nop
                  c.add        s2, s1
                  c.andi       s1, 12
                  srli         tp, t1, 7
                  c.srli       a5, 24
                  c.xor        a0, s0
                  slli         t1, t2, 23
                  rem          s10, s7, tp
                  sltiu        s5, tp, 339
                  mulhu        s0, t3, t2
                  or           s7, zero, s5
                  c.li         t4, -1
                  or           s2, a3, s11
                  auipc        t3, 351922
                  xori         a6, a1, 577
                  nop
                  add          a4, zero, s7
                  remu         a4, s7, a1
                  lui          gp, 289461
                  remu         s2, s5, s5
                  c.or         a0, s1
                  divu         t3, s7, a7
                  lui          t4, 793356
                  and          s1, t5, a2
                  sll          s2, t2, s10
                  divu         a2, t2, gp
                  add          t5, a1, sp
                  c.and        a5, a4
                  slti         t0, a3, 1770
                  slt          gp, s4, ra
                  ori          s5, a2, -793
                  mulhsu       t1, a4, s10
                  remu         a4, s6, s10
                  div          t1, s5, zero
                  lui          s6, 129295
                  c.and        a2, s0
                  c.srli       a1, 17
                  mulhsu       t1, t0, s7
                  remu         s6, t1, sp
                  auipc        s11, 604952
                  c.xor        s1, s1
                  c.and        a4, s0
                  divu         zero, t5, t2
                  c.mv         a5, gp
                  c.add        s10, s0
                  rem          zero, s5, s2
                  c.lui        t0, 18
                  auipc        s9, 566013
                  auipc        a4, 383239
                  add          s7, s1, t1
                  slt          gp, a3, s7
                  srli         a7, a4, 5
                  remu         t4, sp, t6
                  sra          a4, t1, s6
                  c.mv         a7, a5
                  lui          s0, 523387
                  c.add        s9, s11
                  lui          a2, 666250
                  divu         t5, s8, t0
                  andi         s2, s3, -1936
                  xori         s6, t1, 684
                  c.srai       a2, 17
                  slt          t5, t5, a6
                  ori          s2, a3, -731
                  sra          s7, a1, t1
                  sra          s4, a6, s2
                  mulh         a0, a0, s4
                  mul          t3, s5, sp
                  addi         t3, a3, 31
                  slli         a7, sp, 5
                  srl          s4, t5, s11
                  and          gp, s10, t0
                  c.add        a6, a5
                  srai         s0, sp, 10
                  rem          s1, s10, a2
                  slli         s2, s3, 13
                  srl          s5, s1, t6
                  sll          s9, s2, t1
                  sll          t1, ra, s11
                  slti         s2, s4, 720
                  mulh         t0, s11, t3
                  sra          t1, a3, ra
                  ori          s3, gp, -179
                  auipc        a4, 249794
                  lui          a7, 458844
                  c.andi       a4, 0
                  xor          t2, tp, s8
                  c.andi       a1, -1
                  sub          a1, t5, s4
                  slli         a5, s5, 9
                  c.nop
                  c.sub        a1, a0
                  auipc        tp, 746846
                  remu         t4, t3, ra
                  sra          s0, s4, t4
                  mul          s6, a6, s6
                  mulhu        zero, ra, a6
                  srli         zero, zero, 1
                  rem          s3, a2, s6
                  mulhsu       s1, s6, s1
                  c.srli       a0, 20
                  slt          t5, s9, t4
                  mul          s9, a1, a2
                  c.add        a1, t1
                  lui          t4, 796437
                  nop
                  c.add        s2, s6
                  srai         s4, s9, 25
                  c.andi       s0, 14
                  and          s3, a0, a3
                  c.andi       a4, -1
                  addi         s2, a1, -944
                  slli         s10, a5, 21
                  slt          zero, t4, s1
                  c.srli       s0, 22
                  xori         t5, ra, 267
                  c.sub        a2, a1
                  xori         s0, gp, -728
                  nop
                  c.srli       a4, 27
                  c.li         s7, -1
                  sra          t5, a5, a2
                  srai         a5, s10, 13
                  lui          s0, 899146
                  and          s3, ra, tp
                  sltu         a2, sp, t4
                  c.srli       s1, 26
                  auipc        s1, 851693
                  nop
                  c.slli       a1, 28
                  lui          a7, 785183
                  c.add        s6, t0
                  c.srli       s0, 26
                  and          t2, a0, s8
                  slt          a2, s1, t2
                  c.sub        a4, a3
                  c.sub        a5, a3
                  sltiu        s6, a7, -1765
                  srai         s4, s8, 28
                  sra          a0, s6, s0
                  srli         s9, sp, 12
                  c.add        s6, a0
                  rem          gp, s11, t6
                  remu         s7, a1, s6
                  xor          s0, tp, t6
                  lui          a5, 185971
                  mulh         s1, a2, a3
                  mulhu        a1, t6, a6
                  sll          t0, s4, s6
                  lui          zero, 801516
                  auipc        t2, 59703
                  slt          t5, a2, a5
                  slti         t6, s5, -444
                  and          s0, s8, t3
                  divu         s5, a7, s0
                  slli         s9, s7, 18
                  addi         a0, a5, -1238
                  c.srli       s1, 5
                  sltiu        t2, s11, 1037
                  c.mv         a4, ra
                  c.srli       a2, 20
                  srl          s3, s3, s5
                  slti         zero, s5, 505
                  add          s7, sp, zero
                  c.li         s7, -1
                  c.li         a4, 18
                  slt          s3, s9, a3
                  c.add        s5, a5
                  nop
                  and          t0, a5, s8
                  rem          s5, s6, s9
                  or           s2, a4, s3
                  c.xor        a0, a2
                  srl          a6, s2, zero
                  c.xor        s0, a2
                  c.li         s0, 23
                  c.sub        a5, a3
                  mul          a6, a2, zero
                  remu         a2, s1, s5
                  c.xor        a4, a1
                  ori          s6, s4, 797
                  mulhu        tp, ra, ra
                  slli         a2, s1, 31
                  xor          t6, t0, a1
                  slt          zero, zero, s1
                  divu         tp, s7, zero
                  div          s10, a7, zero
                  c.sub        a5, a4
                  sltu         a4, ra, sp
                  c.addi       t1, -1
                  sub          tp, a1, gp
                  c.addi       a4, -1
                  mul          zero, s2, ra
                  slti         a1, s4, -1529
                  sub          gp, t0, t1
                  c.nop
                  c.nop
                  c.mv         s1, s9
                  c.addi       s2, -1
                  remu         t1, ra, t4
                  c.srai       a2, 7
                  c.nop
                  mulhu        t2, t0, s5
                  or           t0, s7, tp
                  c.and        a5, s0
                  slti         s4, s4, 233
                  mul          s7, t4, s5
                  xor          t2, s5, ra
                  andi         a4, t0, -628
                  c.add        t2, a3
                  sll          t5, s5, t6
                  sll          tp, a2, a7
                  xor          t0, a0, t5
                  slti         a1, s10, 2017
                  c.lui        a6, 3
                  ori          zero, a0, -222
                  xor          s1, t6, a6
                  c.lui        a7, 27
                  slti         tp, t5, -1283
                  c.xor        s1, s0
                  slt          zero, s3, a1
                  slt          t1, s7, t6
                  div          gp, s2, s1
                  xori         ra, s3, 1964
                  lui          zero, 961766
                  rem          a5, a7, a4
                  addi         a1, s2, -851
                  c.or         s1, a3
                  sub          t2, a6, sp
                  c.srli       a1, 26
                  slli         a4, s8, 10
                  c.andi       s0, -1
                  auipc        s3, 969704
                  srai         gp, a1, 28
                  lui          gp, 961646
                  lui          s1, 274762
                  auipc        s2, 774882
                  c.addi       a6, -1
                  c.or         a1, a5
                  c.or         a1, s0
                  remu         tp, s0, s7
                  mulh         a2, a2, s5
                  c.add        a0, s1
                  sll          a6, s11, s3
                  divu         a4, s10, a7
                  sra          a7, a3, s2
                  ori          a1, s5, -1257
                  ori          a6, t5, -263
                  xori         t3, t0, 1781
                  sra          t0, s3, t1
                  c.or         a0, a4
                  c.li         s3, -1
                  c.srli       a5, 19
                  sltu         a2, a5, zero
                  srl          t1, s5, t5
                  xori         s3, a2, 921
                  sltu         t5, ra, s11
                  divu         a4, zero, sp
                  or           s11, s8, a2
                  srai         t3, a7, 9
                  c.srai       a0, 2
                  srl          zero, s2, t3
                  c.li         s10, -1
                  mulhsu       s10, s10, a5
                  auipc        s10, 767364
                  slli         s7, sp, 23
                  ori          s4, s4, -1642
                  c.srli       a4, 30
                  xori         t2, s2, -1995
                  c.addi       gp, -1
                  sra          s11, s8, a2
                  divu         s2, t5, a5
                  nop
                  srl          s2, s3, a4
                  remu         t3, a6, s7
                  c.mv         a7, a4
                  slti         s11, a5, -852
                  c.slli       s11, 22
                  divu         s5, t4, t1
                  mulh         t2, s5, t5
                  c.slli       s5, 10
                  c.lui        s4, 21
                  auipc        t1, 863751
                  c.li         a0, 30
                  c.xor        a0, a2
                  c.sub        a5, a5
                  addi         a2, a1, -1680
                  sltu         s0, s0, a0
                  divu         a0, t4, a4
                  lui          a7, 617227
                  c.mv         s9, a7
                  andi         s2, a6, -934
                  nop
                  mul          t5, s7, t2
                  slti         a0, a1, -1711
                  addi         s2, ra, 1362
                  sll          a5, s11, s4
                  add          a0, s6, t5
                  c.nop
                  c.and        s0, a5
                  mulh         t2, s8, a6
                  nop
                  c.li         s7, 23
                  or           a2, a2, s7
                  mulh         t1, tp, s6
                  srl          s10, t1, s8
                  nop
                  remu         a4, t0, tp
                  auipc        t1, 322937
                  srai         a1, t4, 0
                  srai         a1, gp, 12
                  slt          s9, s10, ra
                  auipc        a0, 326169
                  remu         a4, s8, a2
                  nop
                  c.srai       a4, 13
                  c.addi       a4, -1
                  c.sub        a2, a1
                  c.nop
                  c.lui        a7, 26
                  c.nop
                  c.addi       s2, 17
                  andi         s7, a3, -1096
                  mulhsu       s2, s0, t1
                  addi         s3, gp, 442
                  srl          s4, a1, a3
                  remu         s11, a2, t4
                  srl          t5, a1, s5
                  c.xor        a5, a2
                  mulh         s11, s0, s5
                  sra          s4, t4, t0
                  c.sub        a1, s0
                  lui          a7, 695949
                  c.slli       a6, 24
                  xor          ra, t1, a3
                  srai         a0, t1, 7
                  c.nop
                  sltiu        a1, a0, 1111
                  c.add        a5, t1
                  nop
                  c.xor        s1, a3
                  mulhu        s6, ra, s0
                  remu         t4, t4, t5
                  c.sub        a1, a1
                  c.lui        ra, 3
                  or           tp, s6, gp
                  mulhsu       s10, s10, s4
                  lui          s11, 45454
                  mulh         t4, s5, s6
                  srl          s2, s6, sp
                  slti         s6, a2, 1551
                  auipc        a7, 921750
                  c.lui        s9, 12
                  c.addi       s6, 9
                  slli         t3, s10, 7
                  srl          a5, tp, sp
                  andi         zero, a0, -1912
                  sll          t0, ra, s3
                  andi         t0, ra, 1503
                  andi         a0, a5, -435
                  sra          tp, a6, sp
                  sub          t2, a5, t0
                  c.addi       a1, 18
                  c.and        a2, a1
                  sra          s2, a7, t6
                  div          zero, s3, s4
                  c.sub        s1, a3
                  rem          s4, s5, t4
                  divu         s10, sp, a2
                  slli         a5, s6, 3
                  c.addi       tp, 24
                  divu         gp, s10, t2
                  c.andi       a0, -1
                  xori         t1, s8, 24
                  slti         t4, t1, 570
                  remu         s3, a1, t5
                  divu         t5, s8, s6
                  slli         s2, s8, 3
                  mulh         s10, t6, t3
                  c.slli       t2, 9
                  xor          ra, tp, a0
                  andi         s0, a6, 729
                  c.mv         t1, s1
                  slt          s0, t5, a7
                  c.addi       a0, 9
                  slt          s1, s4, a0
                  lui          a7, 309076
                  c.srli       s1, 16
                  slli         zero, t1, 22
                  c.srai       s0, 26
                  c.xor        a1, a0
                  mulhsu       s11, a0, s9
                  c.xor        a0, a5
                  nop
                  mulhu        a7, tp, s3
                  c.lui        s2, 14
                  nop
                  xori         s3, sp, -902
                  c.mv         s6, gp
                  div          s6, t4, a2
                  c.sub        s0, a3
                  slt          s9, a3, s10
                  c.add        s1, t4
                  sltu         s10, a7, t0
                  c.lui        a6, 4
                  add          s5, a6, s3
                  slli         s0, a5, 20
                  lui          s10, 1039188
                  c.addi       a7, 7
                  slli         s7, s1, 20
                  andi         a5, a7, 789
                  c.andi       a4, -1
                  ori          s4, a4, -917
                  c.or         s0, a4
                  andi         t1, a5, -1387
                  ori          zero, t1, 1374
                  divu         ra, gp, t5
                  c.or         a4, a3
                  srli         t5, t5, 3
                  sra          t3, t1, a0
                  c.lui        t3, 28
                  slti         s4, s1, 366
                  c.li         a7, -1
                  c.li         s11, -1
                  rem          ra, t1, s3
                  c.srli       a4, 5
                  add          s2, sp, a6
                  sll          a2, s7, t3
                  andi         t1, a4, -845
                  slt          s7, s6, a0
                  c.addi       ra, -1
                  sra          t6, s0, t1
                  rem          a7, t2, s10
                  c.lui        t2, 28
                  sra          t1, s2, a0
                  lui          t0, 955285
                  sub          t5, zero, t6
                  mulhu        t4, t4, zero
                  and          a2, a5, ra
                  c.mv         t1, s7
                  c.slli       t5, 28
                  sub          zero, sp, s7
                  auipc        tp, 77004
                  divu         zero, a0, s9
                  c.andi       s1, 8
                  c.add        s9, t1
                  divu         t3, a2, t1
                  divu         t2, t4, ra
                  add          s3, ra, a2
                  sltu         t1, a3, s3
                  c.addi       a4, -1
                  sltu         a7, s11, t2
                  c.srai       s1, 9
                  slli         zero, a4, 3
                  c.andi       a4, 21
                  c.nop
                  c.add        s0, t2
                  slli         a5, a5, 20
                  srl          t0, s10, zero
                  and          t0, t4, s0
                  sltiu        a7, s7, -1864
                  lui          tp, 797945
                  slti         a0, a0, 1999
                  xori         t3, s5, 1398
                  rem          gp, gp, a6
                  c.lui        s11, 24
                  srai         a7, t2, 31
                  slti         zero, s0, -921
                  div          s11, t6, a3
                  sltu         a0, a3, s2
                  sub          s0, zero, ra
                  slti         s4, a5, -507
                  sra          s5, s3, sp
                  or           s10, a4, s0
                  nop
                  mulhu        t5, zero, a6
                  c.nop
                  c.and        a2, a2
                  slti         a2, t0, -1771
                  slt          t5, a5, t3
                  sltiu        t0, a1, 986
                  divu         s5, t0, t2
                  nop
                  mulh         s5, s4, s8
                  add          t4, t1, t4
                  sltu         s7, t4, s7
                  slli         s1, s1, 23
                  divu         t5, s11, s5
                  mulhu        a1, zero, s10
                  c.li         a0, -1
                  sltiu        s5, s3, -1893
                  andi         s0, s10, 1418
                  mulhu        ra, sp, a5
                  sra          gp, s0, s6
                  c.addi       s11, -1
                  sll          s7, zero, a4
                  srai         s1, t0, 7
                  sltiu        s0, t5, -576
                  c.lui        a1, 18
                  c.lui        s5, 16
                  xor          a5, a7, a1
                  srli         t6, tp, 10
                  andi         t1, a2, -1202
                  and          s2, t0, s6
                  c.li         a7, 14
                  sra          gp, gp, s2
                  c.nop
                  mulh         a5, s7, s11
                  c.mv         s5, s10
                  rem          a5, sp, s8
                  c.slli       t5, 25
                  nop
                  slti         a4, a0, 1957
                  ori          a4, s6, -1919
                  c.addi       s0, -1
                  auipc        s9, 479255
                  slt          a6, s9, s9
                  slti         s0, s5, -166
                  divu         s11, s6, s2
                  slti         t1, t3, -1678
                  rem          t2, zero, a3
                  addi         s4, zero, 1153
                  c.andi       s1, -1
                  mulhsu       s5, s1, s0
                  or           s0, s7, s2
                  remu         s9, t1, sp
                  sub          t1, s0, gp
                  c.slli       a5, 10
                  c.add        gp, t5
                  rem          t6, a0, s1
                  sub          t3, tp, t5
                  c.srai       a5, 5
                  c.srli       a5, 11
                  sra          zero, sp, t4
                  c.andi       a2, 22
                  c.sub        s1, s0
                  add          a6, a3, s3
                  add          s10, s9, a0
                  xori         a0, a0, 691
                  div          gp, sp, a7
                  c.srli       s0, 1
                  sltu         t5, a4, t6
                  slli         ra, a7, 15
                  slti         t5, sp, -1783
                  c.mv         s11, s3
                  c.andi       a2, -1
                  rem          a2, s1, s7
                  xori         t2, t0, 830
                  c.nop
                  auipc        t6, 310425
                  sltu         s2, a2, tp
                  div          a4, ra, s2
                  div          ra, s5, s1
                  c.and        a4, a1
                  c.nop
                  mulhsu       s6, zero, zero
                  c.or         a5, s0
                  srl          a6, t6, s5
                  and          a5, t6, s6
                  or           s5, s9, a3
                  slli         s10, a2, 10
                  c.srli       a4, 8
                  sltu         s1, s3, s10
                  c.or         s1, a2
                  auipc        a4, 413634
                  sub          t3, t6, s11
                  c.addi       s9, -1
                  or           s0, tp, t3
                  addi         s5, sp, 1800
                  sub          s0, s4, a0
                  slli         a5, s5, 0
                  sltiu        a5, s10, 966
                  mulhu        t2, s9, t4
                  sll          t4, a6, a5
                  sra          t6, s4, a1
                  c.add        a1, t2
                  c.add        a7, tp
                  c.add        a2, s4
                  sltiu        s9, s9, 1037
                  c.or         a2, s1
                  sltu         a1, ra, a5
                  andi         s5, t0, -1927
                  add          a7, s5, s11
                  srl          a7, s11, a7
                  sub          tp, t3, s7
                  add          t0, s2, ra
                  auipc        gp, 797814
                  slti         gp, a4, 1117
                  srai         t5, a6, 5
                  divu         s10, t6, a1
                  remu         a7, s9, zero
                  c.andi       a2, -1
                  c.lui        t3, 7
                  sra          s11, s5, tp
                  sll          a0, t2, s2
                  mulhu        a6, a2, a1
                  srli         s6, s3, 12
                  remu         t5, s3, s9
                  c.srli       a1, 3
                  xor          t3, a3, zero
                  c.or         a1, a2
                  ori          t4, s9, 385
                  and          t6, t0, s3
                  xori         a1, s8, -80
                  c.add        a0, s4
                  c.addi       a0, 17
                  c.add        a5, a0
                  sll          s5, s4, s7
                  sltiu        zero, sp, 321
                  slti         s9, s2, -921
                  and          t2, t3, s7
                  c.srli       s0, 7
                  c.srai       a5, 12
                  mulh         t4, t5, s7
                  c.nop
                  srai         s11, t4, 9
                  auipc        a0, 193559
                  addi         zero, s8, -1064
                  slt          t3, s3, a2
                  add          tp, s7, s2
                  div          s10, s3, t4
                  c.or         a1, a3
                  auipc        s4, 374723
                  c.andi       a0, 22
                  rem          a1, s10, t6
                  c.li         s11, -1
                  lui          a6, 1005244
                  addi         zero, zero, 1961
                  c.lui        s7, 10
                  sltu         s3, s7, s6
                  c.or         s0, a2
                  c.lui        a6, 14
                  srai         a1, s7, 19
                  c.slli       s11, 6
                  lui          zero, 756853
                  mulh         a0, t4, a5
                  ori          s1, gp, -786
                  add          a1, a6, t0
                  lui          a0, 530401
                  slti         t3, s3, 1261
                  slti         t3, s7, -1774
                  mulh         t2, a2, tp
                  c.mv         s1, s3
                  c.or         a0, a1
                  c.andi       a0, 27
                  auipc        t4, 255619
                  nop
                  rem          t1, a7, s6
                  c.xor        a1, a2
                  c.nop
                  c.xor        a0, a5
                  andi         a7, s10, 1646
                  mulhsu       t6, tp, s9
                  srli         a2, gp, 24
                  rem          t4, a2, s7
                  sltiu        s11, tp, 1856
                  slti         zero, a6, -1112
                  c.andi       s1, 9
                  div          t2, s7, gp
                  slli         s7, s7, 17
                  c.add        s0, ra
                  sltiu        t2, t5, -1453
                  ori          t5, s2, 1525
                  c.lui        s9, 21
                  c.addi       s10, 5
                  addi         t4, zero, -535
                  remu         tp, t5, s2
                  srai         s5, t3, 15
                  c.slli       s9, 10
                  nop
                  c.xor        a4, a5
                  c.sub        a4, a4
                  sra          s6, t6, t3
                  addi         a0, t2, -1252
                  sub          t6, t4, s2
                  sltu         a2, a2, s0
                  remu         gp, t5, s1
                  srl          a0, s6, t5
                  add          s2, a3, gp
                  c.andi       a0, 5
                  divu         t5, a0, gp
                  remu         a5, s10, s0
                  slti         s0, s10, -77
                  div          t3, s1, s1
                  divu         a0, s9, t0
                  sltu         a0, s0, t4
                  mul          s9, a4, t4
                  xori         s6, t2, -1700
                  c.sub        s0, a0
                  c.sub        a4, a4
                  c.or         a2, a4
                  div          a5, t5, gp
                  c.sub        a2, a3
                  mulhsu       s6, t4, gp
                  c.srai       a1, 7
                  c.or         s0, a4
                  c.andi       s1, -1
                  mulh         s3, t6, a5
                  c.sub        s1, a2
                  xor          t6, a6, s8
                  slli         a6, s10, 10
                  c.mv         t3, a0
                  c.xor        s0, a2
                  c.or         a5, a1
                  c.andi       s0, -1
                  sltu         a5, t3, s10
                  slt          s6, s9, s3
                  c.and        s0, s0
                  addi         s6, a3, -154
                  c.and        s1, a2
                  sub          s11, s7, a6
                  c.sub        s1, a1
                  c.addi       s7, 18
                  addi         ra, s1, -1355
                  srl          ra, s3, a0
                  mulhu        s4, sp, t2
                  slt          s0, s5, s2
                  slti         a7, a5, 1327
                  ori          s10, s2, -286
                  mulhsu       s10, sp, gp
                  sltu         s9, t2, t0
                  slt          t0, t2, a3
                  mulhsu       a6, t4, s11
                  c.andi       a1, -1
                  ori          s5, a0, -648
                  c.andi       a5, 6
                  c.lui        t6, 12
                  mulhsu       t6, s6, s6
                  mulhu        gp, gp, s2
                  rem          s4, s2, t3
                  auipc        a4, 977936
                  addi         t3, t3, 431
                  mul          s7, gp, s7
                  c.sub        s1, s0
                  xori         s7, ra, -1693
                  or           zero, s10, a1
                  c.mv         s1, t2
                  c.or         s0, s1
                  mulhu        s11, s10, s6
                  srai         s1, a1, 1
                  auipc        a1, 867103
                  c.nop
                  c.and        a4, a2
                  c.and        a5, s1
                  slti         a5, s6, 655
                  c.or         s0, a4
                  add          s4, ra, s10
                  sll          a7, s8, t5
                  srl          t0, t2, s9
                  c.or         a4, a3
                  and          t3, a7, t5
                  sra          t2, a5, t5
                  divu         t5, a4, t0
                  ori          s10, t1, 946
                  c.and        a5, a1
                  rem          a7, t0, s7
                  sltiu        a7, s4, -824
                  divu         s3, a5, gp
                  rem          s1, sp, s11
                  lui          ra, 960916
                  slli         a6, a3, 31
                  srai         s2, s2, 14
                  nop
                  div          s3, s3, s6
                  sub          s4, s5, s11
                  lui          s11, 565358
                  mulhsu       s0, s3, t4
                  xori         s0, s5, -789
                  c.addi       a5, -1
                  auipc        t5, 116899
                  andi         s10, a4, 1201
                  add          a1, t3, s2
                  sltu         s7, s2, sp
                  divu         gp, ra, a3
                  add          s4, t5, t0
                  sltu         s9, sp, a2
                  rem          s9, a1, t1
                  c.or         a4, a1
                  xori         s1, tp, 1525
                  c.sub        s0, s0
                  divu         s2, s9, a6
                  c.slli       s2, 5
                  mul          s1, t2, s10
                  mulhsu       a1, s9, sp
                  c.srai       s0, 16
                  srli         s2, a4, 28
                  c.or         a5, a1
                  rem          t4, t5, t5
                  ori          t3, s11, -296
                  slt          a6, a5, s10
                  andi         t0, s4, 1917
                  slti         t3, s8, -1660
                  and          s6, zero, s9
                  c.srli       a0, 11
                  c.or         a2, s1
                  sltu         gp, s11, a1
                  mulhsu       a0, a0, a7
                  c.add        a0, t0
                  or           s7, s4, a3
                  sll          t4, a6, a6
                  c.and        a5, a5
                  srl          s7, t2, a3
                  srli         t1, s11, 29
                  c.mv         tp, a1
                  c.or         a2, a1
                  sra          t3, s7, s2
                  c.and        s1, a2
                  slli         a2, a4, 27
                  remu         t2, s6, t3
                  c.mv         s1, s10
                  c.srli       s0, 16
                  srai         s5, s0, 16
                  add          t1, a2, zero
                  add          s1, s11, a3
                  slti         t4, t4, 14
                  c.andi       s1, -1
                  c.andi       a5, 20
                  mulhu        s9, s11, a4
                  or           s3, a3, s6
                  c.and        a1, a4
                  srl          s10, a4, s6
                  srai         t3, a4, 1
                  srl          t1, t2, sp
                  c.lui        t5, 15
                  divu         s6, s1, s8
                  srl          s2, a6, a7
                  srli         a7, s0, 23
                  srl          s0, t0, t0
                  c.andi       a2, -1
                  div          s1, a1, a2
                  mulh         tp, sp, t6
                  auipc        gp, 941415
                  slti         t2, a7, 845
                  c.or         s0, a1
                  nop
                  c.slli       gp, 18
                  c.or         s0, a2
                  div          a4, t3, sp
                  auipc        a1, 552318
                  and          s11, s5, a6
                  xori         a2, t4, -979
                  lui          a7, 577972
                  divu         t3, a1, s8
                  c.li         t1, 9
                  xor          s2, s0, tp
                  c.add        a2, tp
                  and          s2, a4, t5
                  c.srli       s0, 24
                  sll          t3, zero, ra
                  mulhu        s6, s1, a1
                  remu         s5, a7, s1
                  ori          t6, a1, -541
                  c.addi       s11, -1
                  rem          zero, t5, s11
                  slti         s9, s6, -322
                  c.slli       gp, 30
                  mulh         s6, a1, s1
                  xor          s0, zero, t4
                  and          a7, s7, t6
                  add          t1, sp, s7
                  add          s9, s8, a6
                  nop
                  auipc        t5, 602647
                  sltu         gp, s4, s1
                  srl          a4, t6, t2
                  mul          s1, s10, t3
                  sltu         s9, s7, tp
                  srai         a2, t3, 25
                  mulh         s5, gp, a1
                  c.srli       a2, 12
                  or           a0, zero, sp
                  c.srli       a2, 30
                  mulhu        t0, s11, tp
                  nop
                  or           gp, s4, s3
                  lui          a1, 768388
                  c.mv         tp, a4
                  c.add        a1, s2
                  c.addi       s10, 6
                  divu         a0, t5, a2
                  c.andi       a1, 17
                  c.and        s1, a2
                  and          s5, s6, s0
                  nop
                  c.or         s1, s0
                  addi         s2, t2, -677
                  c.or         s1, s0
                  c.li         s11, -1
                  div          a0, t1, t3
                  sltiu        a1, a3, 1918
                  divu         s3, s0, s0
                  slli         t1, a5, 9
                  srl          ra, s10, t5
                  lui          s1, 645885
                  add          a0, t4, a1
                  div          zero, s6, gp
                  sltu         s10, a7, a3
                  sltiu        a2, t6, 745
                  slli         s1, a7, 27
                  andi         tp, tp, 1336
                  nop
                  sltiu        a2, a5, 842
                  addi         t4, s1, 1793
                  c.nop
                  c.sub        a2, a5
                  sltu         t4, s4, s4
                  mulh         s10, t2, s1
                  lui          gp, 383281
                  c.slli       a7, 25
                  c.and        a2, a0
                  sltiu        t4, a3, 789
                  srli         s10, t2, 7
                  slti         s4, s3, -798
                  mulhu        t4, a0, s0
                  c.addi       s3, -1
                  mul          t0, s2, s10
                  slt          a5, t3, s11
                  c.sub        s1, a2
                  add          s4, t4, gp
                  xori         a2, s7, -1536
                  srli         s9, a6, 28
                  c.slli       t6, 22
                  sltu         ra, a2, t2
                  c.or         a4, a4
                  nop
                  mulhsu       t0, s2, s8
                  srl          s0, a4, s3
                  sll          tp, s3, s10
                  sra          gp, t6, ra
                  xor          s9, t2, s10
                  nop
                  c.nop
                  c.slli       s9, 29
                  mulhu        a0, zero, tp
                  mulhsu       s3, s2, t4
                  ori          s11, s5, 150
                  sub          zero, zero, s3
                  divu         a0, s1, s11
                  sltu         s2, s6, s10
                  c.srai       s1, 21
                  rem          a0, sp, a0
                  sll          tp, a5, a0
                  addi         s0, a1, 728
                  mulh         a0, t3, s8
                  div          t4, t2, t6
                  sra          a5, t4, t2
                  xor          a6, t1, a7
                  div          t4, s6, t2
                  slt          s1, t0, a0
                  c.andi       a1, -1
                  mulhu        s3, s0, s10
                  sub          a1, t0, ra
                  c.xor        a4, s1
                  rem          t4, s5, t1
                  c.srli       s1, 29
                  mulhu        s2, a5, t3
                  sltu         a0, s6, s0
                  divu         a5, a5, s5
                  addi         t0, t5, 325
                  mulhsu       t0, t0, a2
                  or           a2, s7, a4
                  xori         s11, s6, 712
                  sra          s10, a1, a0
                  and          s1, t3, s3
                  c.mv         t6, t2
                  c.add        s9, a4
                  slti         a7, a3, 1949
                  auipc        s5, 714295
                  slti         s10, tp, -233
                  mulhu        t1, s9, t3
                  c.addi       a7, 31
                  rem          s1, s1, s7
                  srli         ra, a2, 26
                  c.andi       a4, -1
                  sll          a4, s6, t2
                  sll          a7, t0, ra
                  xor          zero, a2, t1
                  c.nop
                  c.slli       a5, 15
                  srl          s9, s1, t6
                  sltu         s6, gp, a6
                  c.and        a2, a1
                  divu         s7, s10, tp
                  sltiu        s3, zero, -1918
                  c.srai       s0, 11
                  nop
                  or           a0, ra, s7
                  slti         t3, t5, 753
                  srl          s3, s0, s1
                  and          s10, s3, a2
                  addi         a0, a3, 449
                  addi         tp, s5, 1484
                  xori         a2, a5, -1885
                  c.xor        a4, a1
                  c.addi       a0, 2
                  or           a6, s8, gp
                  addi         s9, t1, -1953
                  c.andi       a1, 29
                  c.xor        a2, s0
                  srl          a6, zero, s6
                  and          t2, s1, a6
                  div          gp, s6, s6
                  sll          zero, s2, t0
                  c.sub        a2, a5
                  lui          s9, 17921
                  sltu         zero, t3, t1
                  add          tp, t1, s9
                  slli         a1, gp, 12
                  auipc        a6, 299446
                  rem          t1, tp, s2
                  ori          s4, gp, 604
                  srai         zero, a6, 3
                  c.mv         s10, t4
                  add          t4, t2, tp
                  auipc        gp, 225236
                  c.lui        s6, 23
                  lui          s7, 780562
                  nop
                  c.mv         a1, s9
                  sub          t6, t3, a5
                  c.xor        a0, a3
                  andi         s0, t5, 924
                  sltiu        a1, s10, -1976
                  remu         tp, a0, t0
                  rem          s9, a0, s8
                  c.slli       a7, 22
                  c.sub        a4, a2
                  slli         t4, zero, 20
                  slti         t0, a0, -1615
                  c.addi       a2, -1
                  sub          a5, t4, s9
                  c.srai       a1, 19
                  srl          s10, s8, sp
                  srl          s6, a4, a7
                  c.li         t0, -1
                  mulh         a1, ra, s1
                  c.srli       a5, 9
                  c.nop
                  lui          t5, 610020
                  sub          s1, s4, s4
                  rem          a5, t5, tp
                  sltiu        ra, t0, -491
                  c.mv         s3, t6
                  c.srli       a2, 10
                  xori         s7, a1, -503
                  mulh         a0, t3, a2
                  mulhu        a0, s7, t2
                  auipc        s9, 552409
                  ori          ra, a6, -1338
                  c.sub        a2, a1
                  c.addi       a6, -1
                  ori          t4, s3, 1103
                  add          ra, t6, a5
                  sll          s2, a7, s10
                  c.sub        a1, a5
                  and          a7, s8, t3
                  c.xor        a1, a3
                  addi         t2, s0, -1090
                  mulhsu       s7, gp, s2
                  slti         t1, t6, -1253
                  ori          s5, zero, 676
                  c.mv         a5, tp
                  c.nop
                  divu         t6, t2, s10
                  addi         s10, a4, -571
                  mul          t3, s6, s10
                  c.srli       a0, 18
                  c.sub        a1, s1
                  auipc        zero, 49879
                  c.li         a6, -1
                  c.srli       s1, 21
                  sll          t2, a2, s8
                  c.li         s11, 9
                  srl          s6, s4, a5
                  c.li         t5, 23
                  c.slli       s1, 31
                  c.lui        a5, 31
                  and          s6, t4, a4
                  c.and        s1, a2
                  andi         a2, a6, 307
                  or           s2, a1, a0
                  c.mv         a7, tp
                  slt          s9, s6, s6
                  ori          t4, a5, -24
                  c.srai       s1, 12
                  and          s6, s9, a3
                  mul          t3, a3, s0
                  sltu         t4, a7, a7
                  mul          zero, a4, s9
                  and          zero, s2, s2
                  remu         s9, sp, gp
                  srl          s0, s9, a4
                  mulhsu       t6, sp, a3
                  and          s11, t5, a1
                  slt          a2, s4, s3
                  div          ra, sp, t0
                  c.li         s2, -1
                  rem          t6, s6, t0
                  c.and        a4, a1
                  mulh         t0, t0, s5
                  c.or         a5, a0
                  or           a7, a7, t0
                  c.mv         s5, a0
                  divu         a7, t6, a2
                  slli         a6, a1, 4
                  c.add        t0, s7
                  c.or         a2, a0
                  mul          t2, t0, a7
                  add          s1, gp, s2
                  c.nop
                  c.sub        a4, s1
                  div          t0, a1, s8
                  divu         a0, s0, t6
                  rem          s10, s7, t5
                  addi         s11, a7, 1433
                  slt          t3, a3, a0
                  srli         t1, s1, 27
                  slti         a2, s11, 1644
                  c.addi       a2, -1
                  c.add        s0, s1
                  c.srai       s1, 26
                  sub          t0, s1, s7
                  slti         a5, t2, -1125
                  auipc        a7, 821383
                  slti         tp, a2, 1263
                  sll          t3, a4, a5
                  addi         s6, t1, -1140
                  add          ra, t5, s7
                  srli         s1, a0, 1
                  rem          a2, a3, a4
                  sltu         s1, t0, t4
                  ori          a5, a6, -1583
                  sub          s6, gp, t4
                  srl          t1, a7, gp
                  c.slli       s4, 31
                  c.li         t6, -1
                  c.sub        a0, a2
                  auipc        tp, 761284
                  addi         s1, s5, -1707
                  c.addi       t2, -1
                  divu         s4, s4, a3
                  c.or         a1, s0
                  auipc        a2, 81045
                  c.sub        a0, s1
                  mulhu        a5, s0, a3
                  c.add        t5, a6
                  xor          a4, t5, a0
                  c.nop
                  mulh         s4, t5, s1
                  mulhu        ra, s11, t4
                  c.lui        t1, 11
                  sltu         s5, s9, a1
                  slti         a7, s3, -597
                  or           s1, s5, s10
                  c.mv         t5, t0
                  sra          s0, s0, tp
                  sltu         a5, t0, t6
                  and          a7, ra, s5
                  sra          a5, s7, s1
                  c.add        s10, s1
                  slli         a7, s5, 7
                  or           s7, t4, s10
                  mul          zero, gp, t4
                  slti         s2, s5, -952
                  c.slli       s6, 7
                  mulhu        s11, s7, s0
                  and          s0, t0, s10
                  mulhu        t4, gp, s3
                  c.li         a6, 4
                  c.mv         tp, a4
                  c.lui        t0, 15
                  slli         a0, t0, 0
                  xori         s6, s0, 1701
                  c.li         s0, -1
                  c.nop
                  slti         a4, s6, -1344
                  c.nop
                  remu         s10, s9, a1
                  add          a5, s2, a7
                  ori          a7, s8, -1621
                  and          t6, a5, t1
                  sltu         a0, a5, a0
                  addi         t2, a4, 1636
                  c.nop
                  xor          s2, s4, a7
                  srai         s10, ra, 26
                  nop
                  c.add        t5, t3
                  c.addi       t0, -1
                  sltu         s6, s2, s3
                  mulhu        a7, gp, s4
                  srai         a4, t6, 16
                  c.slli       a7, 26
                  c.srai       a5, 15
                  c.addi       s1, -1
                  mulhu        t0, zero, t3
                  c.slli       s6, 8
                  sltiu        t4, sp, -761
                  or           a7, tp, s1
                  xori         s5, t4, 1647
                  mulhu        t4, tp, s1
                  slt          t4, s10, a3
                  and          s3, s11, t1
                  srli         tp, sp, 24
                  c.and        s1, a0
                  c.srli       s0, 3
                  xor          s9, s6, a2
                  mulhsu       s7, s7, t5
                  c.andi       a5, 19
                  mul          s10, s2, gp
                  c.slli       s3, 8
                  c.slli       t1, 30
                  c.nop
                  c.nop
                  add          t6, s1, t3
                  c.li         t4, -1
                  slti         t4, sp, -64
                  add          s6, s9, a2
                  c.and        a0, a4
                  c.addi       s9, -1
                  c.addi       t3, -1
                  c.srli       s0, 1
                  slli         s6, s8, 2
                  c.andi       a1, 29
                  sll          s3, t4, s11
                  and          a5, s9, sp
                  auipc        t5, 723650
                  mul          s3, gp, zero
                  remu         a1, a4, a0
                  sltu         a2, a4, zero
                  sra          a1, a0, s6
                  c.or         a5, a2
                  srli         s0, zero, 18
                  c.add        gp, s1
                  xori         gp, s6, -1168
                  mul          t4, a0, s6
                  sll          s10, s10, t4
                  c.srli       s1, 7
                  sltu         s9, s7, gp
                  or           a7, s6, a2
                  div          t4, s2, a1
                  c.xor        a4, a0
                  c.and        a4, s1
                  c.add        ra, s0
                  addi         ra, t0, -1559
                  c.xor        a2, a2
                  c.add        t1, gp
                  ori          s6, s3, 1051
                  c.xor        a4, a1
                  srl          s10, ra, s10
                  c.andi       a0, -1
                  srli         zero, a6, 0
                  div          t3, s8, a7
                  c.addi       s0, 25
                  c.andi       a1, -1
                  srl          gp, t2, a4
                  c.add        t0, ra
                  ori          a2, s3, -1316
                  c.mv         t3, a1
                  add          s1, s11, s6
                  andi         s3, t1, -1414
                  c.addi       s0, -1
                  c.or         a1, a4
                  c.addi       a6, 23
                  srli         t3, s7, 16
                  srl          a0, s6, s6
                  c.or         a1, a4
                  slli         s2, a5, 2
                  add          s1, sp, t0
                  xori         t1, s5, 1884
                  c.add        s3, s4
                  c.xor        s0, a2
                  add          gp, s1, s0
                  add          s3, t5, a2
                  and          s5, t3, zero
                  xor          t1, s3, s11
                  sll          t3, t3, t6
                  c.and        a4, s0
                  c.andi       s1, 7
                  divu         a7, t5, s3
                  sltiu        s9, zero, -987
                  c.nop
                  mul          a6, t6, t1
                  c.mv         t4, s7
                  srl          t4, sp, gp
                  srl          s2, s9, s11
                  andi         a0, t6, -637
                  mul          t1, a3, t0
                  c.andi       s1, 23
                  c.lui        tp, 18
                  and          a5, t6, gp
                  xori         s7, a2, -1769
                  auipc        s10, 478797
                  c.add        t2, a4
                  lui          s5, 569603
                  lui          s10, 220079
                  lui          t5, 835531
                  addi         s1, s4, -239
                  mulhu        t0, t6, a5
                  c.and        a0, a1
                  sub          a1, a6, gp
                  c.xor        s1, a0
                  mul          s3, s11, t4
                  slt          a2, s0, s0
                  c.addi       a1, -1
                  c.nop
                  divu         s1, a2, gp
                  c.slli       a4, 4
                  auipc        s11, 546722
                  srai         t4, a3, 13
                  srai         s6, t4, 5
                  ori          s10, s8, 1984
                  c.srli       a2, 8
                  and          s6, t1, t3
                  slt          s3, t4, a3
                  c.or         s1, a0
                  or           s7, s10, s3
                  lui          t2, 901565
                  div          t3, ra, s6
                  c.mv         s1, s8
                  c.mv         t3, a6
                  c.addi       s9, 15
                  c.lui        t0, 7
                  c.andi       a5, -1
                  sub          s5, t4, a3
                  srli         a1, a4, 31
                  c.li         s10, 7
                  addi         s10, s6, 1804
                  srai         a1, s3, 31
                  mul          s1, t4, t4
                  xori         a4, a5, 1831
                  c.nop
                  c.lui        ra, 14
                  xor          zero, s9, s9
                  sra          a5, ra, gp
                  sra          s0, t1, s9
                  c.or         a2, a1
                  c.and        s0, a0
                  c.or         s1, a5
                  c.andi       a2, 27
                  sub          s4, s2, a5
                  andi         ra, a3, -600
                  c.andi       a5, 5
                  c.nop
                  sll          s10, s11, t0
                  sub          t5, a6, a0
                  srai         a0, s5, 24
                  c.and        a2, a0
                  divu         zero, a7, t1
                  srli         s3, t4, 27
                  c.nop
                  addi         t6, t6, -1070
                  c.and        a1, a3
                  c.srli       a1, 2
                  mulhu        t3, s4, t3
                  c.slli       a5, 23
                  c.xor        a5, a3
                  mulh         t0, a1, s2
                  c.andi       a5, 5
                  c.xor        a0, a2
                  c.li         gp, 22
                  add          s6, a0, a1
                  c.srli       s0, 26
                  nop
                  and          a0, a4, s9
                  or           s1, zero, t6
                  add          a7, s11, s3
                  c.andi       a5, 6
                  xori         tp, sp, -1053
                  sll          a5, a0, s5
                  addi         tp, tp, -1695
                  lui          a5, 720798
                  c.add        s3, s11
                  c.addi       s1, 22
                  andi         zero, t5, -168
                  srai         a7, s0, 26
                  c.addi       tp, 17
                  rem          gp, s2, s7
                  c.nop
                  c.or         a5, s0
                  ori          s11, a1, 1939
                  auipc        a0, 130347
                  mul          ra, a2, s6
                  c.slli       s0, 11
                  mulh         t1, ra, sp
                  c.mv         t2, s10
                  mulhsu       zero, a5, a1
                  c.andi       s0, -1
                  c.xor        a4, a2
                  ori          a5, zero, 0
                  srai         a5, a0, 14
                  c.nop
                  c.addi       s5, -1
                  and          zero, a4, s6
                  xori         a2, a0, -1673
                  slli         s10, zero, 13
                  slti         t0, s7, 270
                  xori         t2, t6, -1779
                  c.slli       s6, 19
                  rem          t3, t4, tp
                  srli         t2, s1, 26
                  c.lui        ra, 9
                  add          gp, t5, t2
                  c.add        s3, s2
                  c.addi       tp, 27
                  sltu         tp, a1, s8
                  srai         s9, s11, 22
                  sub          t0, t3, sp
                  srli         a4, s1, 13
                  c.nop
                  slti         a1, a0, -1899
                  divu         t6, a1, a7
                  auipc        t3, 654211
                  c.mv         t4, s3
                  slti         s6, gp, -254
                  c.mv         s4, ra
                  rem          s9, s2, gp
                  mulhu        s0, s5, t1
                  lui          s10, 320845
                  srai         s3, sp, 2
                  div          s11, s10, s5
                  remu         s11, s3, gp
                  rem          a2, t2, a4
                  slt          a5, s1, a2
                  slt          a5, gp, t5
                  c.addi       s7, -1
                  ori          t1, a1, -293
                  sll          s10, s9, s8
                  or           s4, gp, a3
                  xori         s3, t1, -331
                  c.xor        a4, a4
                  srl          t2, s9, s11
                  slli         s5, s5, 29
                  c.li         s0, -1
                  sll          s3, s7, s6
                  remu         s5, s5, a4
                  sra          s7, s5, sp
                  srai         ra, s10, 12
                  divu         t5, t0, s8
                  slti         s3, a5, 398
                  auipc        a5, 200418
                  c.addi       a0, 2
                  mulhsu       s6, a4, s3
                  c.xor        a5, a0
                  c.or         a0, a2
                  c.srai       s0, 31
                  sll          t2, a1, s11
                  c.sub        s1, a2
                  mul          a4, tp, a1
                  xor          a2, a2, s11
                  c.and        a2, a2
                  andi         tp, a3, 769
                  slli         t3, gp, 17
                  xor          tp, t5, a6
                  slli         tp, t3, 23
                  sltu         s0, s8, a2
                  rem          tp, s9, a4
                  srai         s2, a0, 5
                  slli         a7, tp, 23
                  xor          t0, s1, a1
                  auipc        s9, 19793
                  slt          s2, s6, t4
                  remu         a1, tp, sp
                  or           a4, s7, ra
                  andi         t5, a5, -1674
                  andi         t1, s0, 447
                  sltu         t0, a0, s0
                  srli         s10, t6, 12
                  auipc        t4, 7369
                  c.srli       s1, 29
                  c.li         t6, 24
                  c.lui        s3, 12
                  c.or         a5, a4
                  sll          s10, a6, a4
                  mul          s10, s0, a7
                  ori          gp, s7, -631
                  mulh         s6, ra, s1
                  srl          t1, a2, zero
                  and          t0, s7, ra
                  c.and        a5, a4
                  sltu         a4, tp, tp
                  nop
                  lui          s2, 366451
                  divu         a7, tp, t4
                  rem          gp, s9, t6
                  remu         tp, t2, t4
                  slt          t4, t1, t2
                  sra          s1, s3, a7
                  c.sub        a1, a0
                  remu         t3, s9, s5
                  remu         s6, sp, t2
                  c.srli       a1, 4
                  slt          s7, a2, tp
                  mul          s6, a7, s8
                  slli         t0, a5, 3
                  c.slli       a6, 31
                  xori         ra, s6, 358
                  andi         a7, s9, -892
                  c.xor        a2, s1
                  lui          s7, 412776
                  remu         gp, t2, t3
                  add          t6, a4, t1
                  c.srai       s0, 22
                  slli         s10, a4, 29
                  sltiu        gp, s11, 1463
                  remu         s10, s0, t1
                  xor          t2, sp, s5
                  divu         ra, ra, gp
                  c.sub        a5, a4
                  c.add        s9, t2
                  auipc        a0, 412484
                  c.srai       a4, 26
                  c.slli       a2, 2
                  c.addi       s9, 16
                  c.li         a1, 31
                  mulhsu       s9, a1, t1
                  and          s4, s0, t5
                  mul          tp, a5, s4
                  xor          s9, s10, t3
                  addi         tp, t6, 1802
                  remu         s7, tp, s11
                  srai         a2, zero, 21
                  div          s3, s4, t2
                  add          s9, s7, t2
                  c.nop
                  c.or         a4, s1
                  sub          t0, s5, s0
                  mul          a7, t4, a7
                  rem          s4, gp, t3
                  xor          a2, s3, s6
                  sub          t5, s9, gp
                  div          s4, s9, t6
                  or           t5, s4, s8
                  srl          t5, a3, a0
                  xor          a2, a6, s11
                  or           s5, t2, ra
                  xori         t0, s8, 1416
                  mulhu        a0, s11, gp
                  srl          a4, s8, a0
                  rem          t4, a5, s0
                  c.sub        a4, a1
                  xor          s4, s4, s7
                  sra          s5, tp, t4
                  xori         s7, s4, -1585
                  c.add        s3, gp
                  slli         a0, s0, 3
                  c.srai       s1, 3
                  c.xor        s1, a1
                  c.xor        a2, a4
                  add          s1, s11, s4
                  c.slli       s2, 4
                  rem          s2, s8, s2
                  mulhsu       zero, a4, s7
                  xori         s7, a3, -81
                  sra          s4, s3, gp
                  srli         tp, a1, 26
                  and          s1, t6, s4
                  lui          s5, 836704
                  and          a7, zero, t1
                  or           gp, s11, s8
                  addi         a6, ra, 1979
                  slli         a1, t0, 2
                  c.lui        s11, 22
                  c.nop
                  c.andi       a4, 10
                  sll          tp, s9, a5
                  c.li         s5, 7
                  andi         s1, s1, -1901
                  sub          a6, zero, s9
                  sltu         zero, s0, t6
                  c.andi       a0, -1
                  add          t5, t3, s7
                  mulh         s0, s10, t6
                  c.xor        a5, a1
                  auipc        t5, 653097
                  c.sub        a1, s0
                  mulhsu       a7, a1, gp
                  sll          a6, s8, s0
                  andi         t5, t2, -1044
                  slt          s11, gp, t1
                  c.sub        s0, a2
                  sub          s10, a6, s1
                  xori         a4, s11, 1431
                  mulhu        s9, t2, s7
                  c.xor        s1, a4
                  remu         s6, s10, s5
                  sltiu        a2, a5, -1754
                  mul          a0, a2, s1
                  div          s5, a5, s8
                  mulh         zero, t4, s9
                  slt          t5, s11, sp
                  sltu         t1, s9, tp
                  nop
                  or           t4, a4, t3
                  xor          a1, t3, a7
                  srai         gp, s10, 16
                  c.slli       s10, 15
                  mulhu        s6, s3, s1
                  auipc        ra, 111409
                  slli         s3, ra, 27
                  and          t6, s10, t5
                  c.mv         t2, a0
                  rem          t4, zero, s0
                  xori         s3, s7, 754
                  slt          t5, s1, zero
                  c.srai       a1, 25
                  c.lui        gp, 26
                  mul          a0, t6, t1
                  lui          a1, 89593
                  slt          a7, a4, tp
                  c.sub        a5, a2
                  or           a2, s4, a5
                  mul          t4, a6, s7
                  c.and        s1, a5
                  c.slli       a4, 18
                  div          a4, s4, t2
                  slti         a0, a5, 972
                  c.and        s0, s0
                  and          s3, a6, t3
                  ori          t3, ra, 1191
                  c.addi       s0, 10
                  c.nop
                  c.srai       a0, 25
                  mulhu        t5, s8, s8
                  ori          t6, s0, 1946
                  c.andi       a5, -1
                  slt          s4, s5, s6
                  mulhsu       a2, s5, a0
                  c.mv         a5, s9
                  rem          ra, a5, a0
                  xori         tp, a1, 554
                  srai         tp, tp, 8
                  sltiu        s3, t4, 1250
                  c.xor        s1, a1
                  c.li         a2, 23
                  srl          s11, zero, tp
                  srli         s5, t0, 20
                  auipc        a7, 302183
                  slli         t0, a4, 6
                  xor          t5, t0, a4
                  slti         t4, a5, 1773
                  sltiu        gp, s4, -294
                  sub          t2, s1, sp
                  c.sub        s1, a5
                  xori         s4, s7, 887
                  c.srli       a0, 29
                  c.srai       s1, 15
                  c.slli       a2, 27
                  c.sub        s1, a2
                  c.add        s9, s0
                  c.andi       a1, -1
                  addi         t0, s2, 573
                  c.and        s0, a0
                  nop
                  c.sub        s1, a4
                  sra          t4, a4, t4
                  slt          s1, s9, s3
                  mulhu        s10, gp, sp
                  c.lui        s1, 26
                  auipc        s4, 307264
                  mulhsu       s4, t6, a4
                  nop
                  srl          s9, s10, a0
                  c.li         t6, -1
                  rem          gp, a4, s5
                  c.srli       s0, 28
                  c.srai       a4, 28
                  c.srai       a4, 3
                  and          gp, t4, s1
                  c.mv         s3, t4
                  mulhsu       t1, sp, zero
                  slti         s0, s7, 905
                  and          a7, gp, a5
                  srl          s1, s11, a2
                  c.sub        a4, a4
                  or           s0, s5, t6
                  sltiu        s10, s5, 707
                  c.mv         s9, s1
                  div          s9, s8, a1
                  mulh         t6, a7, a6
                  c.slli       tp, 25
                  slt          a0, t5, sp
                  c.and        a1, a3
                  c.mv         s0, a4
                  srli         s4, sp, 26
                  c.nop
                  nop
                  lui          a1, 882722
                  sltu         s7, a4, a6
                  c.nop
                  c.sub        a2, a2
                  c.mv         t4, a4
                  c.mv         a2, t4
                  andi         s6, ra, 628
                  c.nop
                  mul          t3, t2, t5
                  c.mv         t5, a7
                  add          a5, gp, s3
                  mulhsu       t5, t4, t4
                  nop
                  auipc        a0, 571634
                  c.xor        s1, a3
                  sub          t6, a5, a1
                  c.srai       s1, 2
                  c.andi       a0, -1
                  c.srli       s1, 2
                  add          ra, a7, s8
                  slt          s6, sp, a3
                  c.and        s1, a2
                  xori         gp, a3, -1929
                  srl          s2, t6, t3
                  auipc        a1, 22545
                  c.mv         a4, a7
                  c.xor        s0, a5
                  div          a4, a0, t1
                  rem          a5, a1, s5
                  ori          a5, zero, 864
                  auipc        s6, 63260
                  c.nop
                  ori          t3, s11, -521
                  c.mv         a4, t1
                  div          s5, t3, a6
                  add          s4, a4, s2
                  div          s4, ra, s5
                  c.addi       a7, -1
                  sltu         zero, tp, s8
                  nop
                  sra          t5, gp, a2
                  add          a5, a1, s5
                  xor          t4, ra, gp
                  ori          t4, s5, 1582
                  c.xor        s1, s1
                  c.addi       s9, 22
                  slt          zero, a0, a5
                  sub          s9, s5, a3
                  auipc        t3, 380929
                  and          gp, t5, s3
                  c.sub        s1, a5
                  srli         t6, sp, 27
                  divu         s4, s11, t4
                  andi         a2, a2, 1458
                  mulhsu       t0, t1, s9
                  srai         t0, a5, 31
                  andi         a2, t5, 445
                  lui          s5, 714298
                  c.li         s4, -1
                  ori          t3, a5, 1668
                  div          t0, t5, s8
                  add          a4, tp, s3
                  c.addi       s6, 22
                  addi         s7, s7, 916
                  ori          s11, s11, -1114
                  c.add        t1, a6
                  mul          s1, a5, s2
                  divu         a6, s0, t6
                  sll          t4, t2, s10
                  c.andi       s1, -1
                  c.srai       s1, 26
                  c.nop
                  addi         a6, s3, -1711
                  ori          s5, a4, 1920
                  div          a7, s5, sp
                  slti         s2, a0, 2001
                  c.xor        s0, a1
                  slli         a6, t6, 6
                  sltu         s1, s8, s11
                  c.lui        s3, 24
                  nop
                  slt          a2, zero, s10
                  slli         s11, t6, 6
                  c.xor        a4, a4
                  slli         s3, a3, 22
                  c.and        a0, s0
                  nop
                  addi         s11, tp, -696
                  sltu         a6, a2, t5
                  mulhsu       s11, t3, a3
                  div          a6, t2, s9
                  and          s2, t6, a2
                  srai         zero, s10, 27
                  andi         zero, ra, 514
                  lui          s5, 619085
                  divu         a4, s10, s4
                  xor          s1, s5, a2
                  slt          s11, t4, gp
                  c.andi       a2, -1
                  c.addi       t3, 7
                  c.sub        a1, s1
                  sra          s9, s6, s3
                  c.add        s3, ra
                  ori          a0, s3, -1010
                  c.sub        s0, a3
                  c.or         s1, a0
                  auipc        s6, 186160
                  mul          t0, a4, t6
                  xor          a4, t5, s8
                  c.mv         t1, s1
                  rem          s11, s10, s9
                  c.or         a2, a2
                  c.lui        a0, 12
                  sltu         s0, zero, a2
                  c.srai       a2, 3
                  nop
                  add          t1, a5, a6
                  c.xor        a1, a1
                  slt          t2, a3, s2
                  auipc        a7, 128100
                  c.slli       t0, 28
                  slti         ra, a7, -974
                  addi         s10, ra, 1556
                  or           a4, a3, a4
                  c.and        a5, s0
                  rem          s11, t6, sp
                  remu         t4, a7, s1
                  mulh         t6, t4, gp
                  srai         t2, tp, 4
                  c.sub        a1, a5
                  lui          s6, 470063
                  mul          s2, t1, s10
                  sub          a2, s7, a6
                  auipc        a5, 1005517
                  divu         a0, a4, s2
                  mulh         t0, s5, a1
                  slti         a1, t1, -499
                  c.and        a2, a5
                  add          a2, s10, s6
                  sltu         t3, s1, s2
                  remu         zero, t6, s7
                  sltiu        a4, s7, 277
                  sltu         zero, s7, a4
                  c.or         a5, a1
                  slli         t2, s3, 29
                  add          s10, a0, s9
                  sltiu        s3, sp, 1969
                  c.and        a2, a2
                  c.srli       s1, 18
                  mulhsu       s9, t2, a5
                  c.addi       t6, 5
                  sltiu        t0, s0, -1732
                  c.li         s7, -1
                  sll          a1, a0, a2
                  c.or         s1, a0
                  c.or         s0, a4
                  auipc        a0, 382560
                  slli         s9, a6, 28
                  sll          t3, s0, s3
                  rem          t6, s3, a7
                  c.sub        a1, a4
                  c.srli       a0, 27
                  c.nop
                  xori         tp, t1, -168
                  divu         s2, s5, a4
                  sub          s1, sp, a1
                  c.nop
                  or           s1, s2, a2
                  sltu         t5, t0, tp
                  sll          a0, t1, s10
                  mulh         t5, zero, t3
                  mulhsu       s2, a1, s2
                  c.sub        a2, s0
                  c.lui        t3, 20
                  nop
                  slt          a2, t2, s11
                  slti         s10, s3, -693
                  c.xor        a5, s1
                  mulhu        s1, a4, a5
                  ori          a1, a4, -653
                  divu         s10, ra, s2
                  c.sub        a1, s1
                  slti         t4, t0, 474
                  auipc        t6, 374761
                  srai         zero, t3, 8
                  c.or         a0, a0
                  srli         t4, ra, 18
                  c.slli       s6, 13
                  and          t1, a5, zero
                  auipc        s7, 160158
                  srai         s3, s7, 3
                  xor          s5, sp, s9
                  srli         t0, t0, 16
                  add          s0, a2, a3
                  c.slli       t0, 10
                  divu         a0, s10, gp
                  c.srai       a0, 23
                  sub          ra, a3, a2
                  lui          t5, 160211
                  c.slli       s9, 8
                  sub          s6, s2, ra
                  c.srai       s1, 29
                  sltu         tp, sp, t1
                  add          t1, t4, t4
                  divu         t6, a5, s0
                  sll          a1, s0, zero
                  srli         a5, zero, 15
                  lui          zero, 109231
                  c.srai       s0, 9
                  lui          s2, 60960
                  add          s10, ra, a6
                  sub          a5, zero, tp
                  mulhu        a7, a4, sp
                  andi         zero, s0, -175
                  c.andi       a2, 20
                  add          t4, ra, a1
                  c.li         a2, 20
                  c.srli       s1, 3
                  c.li         t4, -1
                  c.lui        s1, 29
                  or           a4, s5, t0
                  lui          t4, 375395
                  sltu         t6, t5, t0
                  c.nop
                  c.nop
                  and          s9, a3, sp
                  c.or         s0, a5
                  ori          ra, s8, 674
                  slli         t0, s6, 11
                  srl          t6, zero, s3
                  c.li         s2, 4
                  c.nop
                  c.mv         t6, s9
                  c.nop
                  c.addi       s10, 9
                  addi         t3, s2, 602
                  c.addi       s5, 27
                  slti         s0, s0, 1291
                  divu         s7, s5, t3
                  c.srli       a0, 19
                  nop
                  andi         t1, s2, 1114
                  srli         a1, a4, 6
                  c.srai       s1, 8
                  c.or         s0, a2
                  sltu         t0, t2, t0
                  c.srai       a0, 19
                  xor          s3, a0, s5
                  c.xor        s1, a4
                  c.or         a4, a4
                  mulhsu       a4, a7, a7
                  andi         s9, s11, 1546
                  srai         s6, s1, 27
                  mulhsu       s7, a6, ra
                  nop
                  srl          s10, t0, s6
                  or           s2, s9, a0
                  c.sub        s1, a1
                  c.srli       s0, 13
                  c.srai       s1, 6
                  xori         a2, gp, 992
                  nop
                  c.li         s4, -1
                  c.mv         ra, s1
                  addi         t3, a6, -1258
                  divu         s10, s7, a7
                  c.srai       s0, 19
                  lui          t0, 777752
                  c.and        a4, s1
                  slt          s7, s11, t4
                  c.slli       ra, 30
                  c.srai       a5, 1
                  c.add        t4, t5
                  divu         s3, s7, s3
                  div          t5, s0, a7
                  mulhsu       a1, s3, s10
                  srl          a1, t4, s11
                  slli         s7, t6, 14
                  sub          s4, s0, a4
                  ori          t2, t2, 2032
                  c.or         a2, a1
                  c.and        a5, s1
                  c.sub        a2, a1
                  mul          tp, s7, s9
                  c.and        s0, s1
                  mulhu        t5, t0, s4
                  add          t1, s4, s3
                  sub          s2, t6, a3
                  srli         s1, a1, 7
                  c.srli       a4, 22
                  slti         t3, a1, 1845
                  andi         s5, zero, -2020
                  or           s6, a2, t1
                  c.li         t6, 10
                  mul          s11, a6, a1
                  srli         t2, a2, 12
                  slli         a0, s0, 6
                  c.nop
                  xor          s4, tp, t2
                  xori         s2, a7, 772
                  c.srli       a2, 21
                  c.slli       a2, 11
                  rem          zero, a0, a6
                  srli         t4, s11, 24
                  add          a1, tp, t6
                  sll          s10, a3, s2
                  xor          s1, a4, t5
                  sltu         a6, t4, a7
                  ori          s0, sp, -1870
                  c.lui        t4, 1
                  c.slli       t6, 5
                  srli         s11, s6, 10
                  and          s4, t1, a0
                  slti         s3, t3, 972
                  c.nop
                  slt          a0, a6, s7
                  mulh         a7, s3, s10
                  remu         t6, s4, t2
                  c.lui        ra, 5
                  sll          s5, s7, t2
                  xor          s0, sp, a0
                  divu         a2, s5, t1
                  slt          t0, s2, t5
                  c.xor        a2, a3
                  sltiu        s11, t3, 143
                  add          t3, a3, s10
                  or           a4, s7, t1
                  c.add        a0, t2
                  sll          s6, t5, t2
                  c.nop
                  auipc        t4, 934995
                  auipc        t6, 630499
                  auipc        s9, 665387
                  sra          a6, a5, a1
                  andi         gp, a3, -27
                  c.slli       t2, 8
                  sll          a4, t0, gp
                  srai         s5, t4, 31
                  or           t3, s7, s8
                  srli         zero, s3, 8
                  c.and        a4, s1
                  sll          s10, t2, ra
                  c.or         a2, a4
                  mulhsu       ra, a6, gp
                  sll          s4, s6, sp
                  c.add        a4, t1
                  mulhsu       zero, s11, t4
                  and          s9, sp, a6
                  srl          s1, a0, s6
                  sltiu        s5, a6, 1673
                  lui          s2, 402724
                  c.lui        s11, 3
                  xor          s1, s1, a1
                  mul          t5, a3, s6
                  auipc        a7, 767275
                  c.slli       t1, 30
                  sra          t5, s6, s4
                  mulhsu       t5, t0, tp
                  xor          gp, a6, s9
                  c.addi       s5, -1
                  divu         zero, zero, t6
                  lui          a6, 986565
                  srli         s9, s5, 31
                  c.slli       s0, 10
                  addi         s2, s2, -979
                  mulhsu       s5, sp, s10
                  sltu         s11, s3, a7
                  div          t5, t4, t5
                  c.or         a5, s1
                  mulh         a7, s4, ra
                  sll          s7, s10, zero
                  xor          s10, s3, s7
                  mul          s3, zero, s5
                  c.nop
                  mulhsu       s5, s11, t1
                  c.addi       t1, 25
                  addi         s2, s11, -964
                  c.lui        a4, 8
                  slli         a5, s3, 21
                  div          t0, a2, s5
                  or           a0, t3, s11
                  srai         s4, t0, 14
                  auipc        s6, 757276
                  xor          s10, s3, s7
                  c.sub        s1, a3
                  xor          s4, a4, s3
                  mulhu        s6, a4, s3
                  rem          s2, s7, s7
                  c.li         s0, 30
                  sll          a4, t3, zero
                  c.nop
                  c.add        t0, s8
                  rem          ra, a1, t2
                  rem          zero, sp, s4
                  xor          a0, t3, a0
                  xor          t5, t0, s0
                  c.mv         a5, s4
                  c.nop
                  c.lui        s0, 28
                  c.add        t4, s4
                  slt          a5, a5, s10
                  andi         ra, t6, -1406
                  c.srli       a5, 15
                  addi         s11, s3, -1814
                  nop
                  c.li         t5, 0
                  sltiu        s7, t2, 1068
                  remu         t5, a1, s9
                  xori         gp, s10, 1022
                  srli         s3, s10, 24
                  c.sub        a5, s0
                  c.lui        tp, 31
                  slti         a1, t5, 1463
                  xor          s11, t6, a2
                  slti         tp, a5, 475
                  div          a4, t5, s8
                  nop
                  c.nop
                  srl          ra, s8, gp
                  srai         a5, s3, 3
                  srli         s6, a6, 28
                  ori          a6, s8, -611
                  c.and        a4, a3
                  c.li         a0, -1
                  slli         zero, tp, 22
                  slt          s5, a3, s7
                  c.mv         t2, s8
                  slt          gp, a3, a0
                  mul          t0, s0, a7
                  c.slli       t3, 20
                  auipc        tp, 662609
                  div          s1, zero, tp
                  c.li         a6, -1
                  slli         t1, a6, 18
                  c.xor        a5, a0
                  c.and        a1, a2
                  add          t5, a1, t3
                  lui          s7, 539090
                  sll          s1, s11, a6
                  slti         a2, a2, -73
                  div          s5, a3, t4
                  c.li         s4, -1
                  c.sub        a2, a5
                  add          gp, a7, gp
                  remu         t3, t4, s8
                  mulhsu       a4, a7, t1
                  c.lui        a0, 7
                  c.andi       s1, -1
                  remu         t6, s7, a6
                  xori         s2, ra, -1055
                  rem          s11, a2, a5
                  srli         t1, t0, 24
                  c.srai       a1, 27
                  xori         s9, t5, -1423
                  srl          ra, zero, a3
                  remu         t0, s7, s6
                  c.lui        s1, 2
                  div          t2, t5, s7
                  nop
                  rem          s2, s0, s10
                  mulh         t3, a5, a3
                  c.sub        a2, s0
                  xor          a1, a6, a7
                  xor          a6, t6, t2
                  ori          t4, s0, 116
                  divu         a0, a3, s8
                  xor          a0, tp, a4
                  remu         t6, a5, a5
                  srl          s0, s7, gp
                  ori          s10, a0, -705
                  sll          s3, ra, gp
                  and          t6, tp, a6
                  or           a5, a3, sp
                  c.lui        a1, 7
                  slli         a0, s1, 30
                  remu         t4, s4, s10
                  sub          gp, s7, s2
                  c.xor        a1, a5
                  mulhu        gp, s8, t6
                  c.mv         a0, sp
                  c.and        s0, a2
                  slli         s5, t6, 18
                  mulhsu       a6, s1, t1
                  c.and        a1, s1
                  and          t4, s1, s10
                  remu         s6, a3, s4
                  c.addi       s7, 13
                  c.slli       s0, 11
                  srl          s4, a0, s11
                  slli         s10, a5, 21
                  mulh         a7, a7, t6
                  sll          a4, zero, a7
                  remu         a7, tp, a0
                  nop
                  c.srli       s1, 11
                  sltiu        s5, t2, -1587
                  sltu         s3, a4, s4
                  c.nop
                  c.sub        s1, a2
                  c.sub        a5, s1
                  c.sub        a1, s0
                  c.mv         s0, t0
                  sub          tp, zero, s7
                  c.srli       a4, 8
                  slli         a1, s1, 26
                  c.li         s10, -1
                  mulhu        t5, ra, gp
                  c.srli       s1, 21
                  c.lui        s9, 26
                  sltiu        s2, a2, -140
                  c.addi       s7, -1
                  or           t0, s1, zero
                  sltu         s4, zero, a3
                  sub          a2, t2, s0
                  div          s10, gp, t0
                  mulhsu       a0, s10, a0
                  divu         s1, a6, sp
                  srl          a1, zero, gp
                  c.li         s3, -1
                  sub          a7, tp, a1
                  c.addi       s3, 2
                  add          a0, s3, zero
                  add          s7, s1, ra
                  c.nop
                  slt          s3, a6, s7
                  or           a0, a6, t6
                  mulhu        t0, sp, t5
                  c.xor        a4, a4
                  div          a0, s2, s7
                  c.xor        s1, a0
                  xor          a6, s0, a4
                  slli         s0, zero, 20
                  c.xor        a2, a0
                  c.srai       a5, 10
                  c.andi       a2, 29
                  lui          t3, 433474
                  c.lui        s2, 15
                  mulh         a1, s2, t4
                  c.or         s0, s0
                  auipc        s11, 244154
                  c.sub        s0, s1
                  c.mv         a0, t4
                  lui          s4, 98764
                  divu         s4, s4, s2
                  c.addi       t4, 24
                  mulhu        gp, t5, a4
                  c.srai       s1, 4
                  ori          tp, t2, 1748
                  c.mv         a6, s7
                  xori         s0, a5, -2033
                  c.xor        a1, a4
                  c.mv         s11, sp
                  lui          zero, 27842
                  div          t4, a5, a6
                  sub          s9, s6, t4
                  c.add        a2, s4
                  slli         a5, s9, 18
                  c.mv         t0, s6
                  xor          t3, a2, t1
                  rem          a5, t6, t0
                  c.srai       a5, 24
                  slti         s2, a1, -60
                  ori          gp, s0, 1457
                  c.slli       s10, 4
                  mul          t1, t0, s10
                  c.andi       a5, -1
                  divu         s1, s7, a4
                  xori         tp, s0, -1865
                  c.or         s0, s1
                  sll          s11, s9, gp
                  div          ra, s7, s9
                  sltu         s0, s10, sp
                  remu         a7, gp, s2
                  mulhsu       zero, t0, ra
                  mulhsu       gp, ra, zero
                  c.xor        s1, a5
                  or           gp, a1, a4
                  slt          t0, a5, a7
                  c.srli       a2, 29
                  xor          a1, s0, s2
                  rem          tp, s11, s7
                  c.srai       a4, 10
                  c.sub        s0, a4
                  c.add        tp, a4
                  c.lui        s11, 21
                  c.addi       t5, -1
                  c.li         s2, 19
                  nop
                  slti         s0, gp, 1716
                  c.add        a0, s3
                  andi         t0, a1, 1710
                  srl          t5, s2, t4
                  sltu         s7, t0, sp
                  div          gp, t0, a0
                  xori         s1, ra, -721
                  remu         t3, a1, s0
                  andi         zero, a4, -741
                  c.sub        s0, a4
                  sra          s1, s10, sp
                  slli         a5, tp, 16
                  c.addi       s11, 17
                  slt          s11, ra, s7
                  rem          a2, t2, t0
                  sltiu        s2, s9, -1713
                  c.srai       s1, 17
                  srli         s9, a2, 31
                  c.or         a5, a0
                  srl          t3, s3, t1
                  c.nop
                  srai         a7, s10, 14
                  c.add        t3, t4
                  add          s11, s7, t6
                  c.addi       s11, -1
                  sub          t4, tp, a6
                  addi         s2, t5, 1877
                  c.mv         a0, s1
                  addi         t4, s8, 83
                  mulh         t5, s1, s7
                  c.srli       s1, 23
                  sltiu        s0, a1, 194
                  c.li         t1, -1
                  ori          a4, s8, 1004
                  c.or         a4, a2
                  sll          t4, ra, s8
                  remu         s0, s7, a2
                  xor          s1, s5, gp
                  c.sub        s1, a1
                  c.srli       s1, 10
                  slt          s2, s8, a3
                  srl          s4, s7, s2
                  ori          a4, s1, 341
                  xori         a5, s6, 871
                  sub          t4, a7, a1
                  c.and        a5, a5
                  xor          s11, ra, s4
                  sltiu        s11, a1, 154
                  mul          zero, t5, s5
                  mulhsu       a7, s2, s6
                  sltu         a0, a7, a5
                  c.nop
                  mulh         s1, gp, t1
                  remu         s1, a0, zero
                  andi         a7, t1, -1934
                  srli         a2, ra, 14
                  lui          s4, 409935
                  slli         s3, s7, 8
                  c.srai       a2, 29
                  div          a0, s7, zero
                  rem          s7, a1, gp
                  sltiu        a0, t2, 1762
                  remu         t1, s2, s4
                  add          t5, s4, s2
                  add          s1, a3, a3
                  c.or         a4, a2
                  c.xor        a4, s1
                  c.addi       a1, -1
                  c.slli       a6, 19
                  slt          a4, s9, s4
                  slli         t0, zero, 5
                  c.li         t2, 3
                  mul          s6, tp, t3
                  c.and        a5, a1
                  c.andi       a2, -1
                  srai         ra, a3, 8
                  addi         a2, gp, -1789
                  c.add        t0, a1
                  mul          s2, s5, a6
                  rem          t5, a1, tp
                  mulhsu       s3, s3, t3
                  c.andi       a0, 24
                  sltiu        t1, t3, 1001
                  c.addi       t3, -1
                  c.xor        s1, a2
                  c.xor        a5, a2
                  slti         s3, s0, -176
                  addi         a6, s11, 406
                  add          s10, s3, ra
                  divu         s7, s1, a5
                  c.li         t2, 22
                  sll          t6, s3, a7
                  mul          s6, sp, s9
                  add          s2, s3, a1
                  srl          t0, a1, t5
                  srli         a1, t0, 18
                  mulhu        t3, a7, t5
                  mulh         a0, s10, a6
                  c.andi       a1, 7
                  c.li         s5, -1
                  divu         s2, a7, s5
                  c.andi       a2, 24
                  c.xor        a0, a1
                  sll          s11, s3, s11
                  or           s6, s7, t4
                  addi         a0, tp, 634
                  andi         a5, s9, 1906
                  addi         s3, s7, -1471
                  srai         t3, ra, 24
                  c.add        t0, ra
                  c.add        t5, t0
                  sra          t1, a5, t4
                  c.or         a1, a1
                  mul          tp, t4, a1
                  c.addi       t1, -1
                  c.li         t2, 11
                  c.lui        s9, 21
                  addi         s9, t1, -1060
                  divu         a1, a4, a4
                  sll          s2, a1, t6
                  srai         s11, s1, 2
                  c.add        t4, t6
                  c.lui        a2, 18
                  c.and        s1, a3
                  c.lui        a2, 22
                  srai         s2, s3, 28
                  c.sub        a2, a5
                  srai         tp, s10, 19
                  rem          a2, t2, s7
                  c.and        a2, a1
                  nop
                  div          a4, t0, s1
                  c.srai       s1, 9
                  slt          t0, t3, t4
                  srai         s7, tp, 26
                  sub          s5, a7, s10
                  c.add        s7, s5
                  srli         s0, t4, 0
                  c.xor        s0, a0
                  c.and        s0, a5
                  divu         s11, t6, s9
                  c.lui        s3, 6
                  c.mv         t0, t4
                  remu         s9, s1, s4
                  srai         a1, t3, 30
                  c.addi       a4, 16
                  or           t5, s6, a4
                  c.mv         s10, t1
                  add          s9, s10, zero
                  c.srai       s1, 5
                  c.li         a2, 31
                  c.mv         t2, t4
                  auipc        t0, 588829
                  sub          t1, s2, s5
                  sra          t6, t3, s1
                  add          t3, a0, t1
                  srai         s3, t1, 19
                  add          a7, s11, s8
                  remu         t0, s2, t6
                  remu         t4, t4, a7
                  sltiu        t4, s9, 490
                  lui          t4, 1031726
                  sub          s9, a2, ra
                  auipc        s4, 213282
                  srai         a6, gp, 12
                  sltu         s5, s11, t3
                  c.srli       s0, 16
                  c.sub        a5, a2
                  c.li         s0, 2
                  xori         s11, sp, -388
                  rem          a7, s1, a5
                  mulhu        gp, s10, t6
                  srli         t0, a3, 20
                  c.nop
                  c.li         t4, -1
                  c.nop
                  c.andi       s0, 17
                  sra          a4, t4, s4
                  sll          a0, a4, t2
                  div          a0, s4, s5
                  nop
                  sltiu        a0, s8, 912
                  divu         a0, a0, a2
                  remu         s4, s5, s1
                  xori         ra, a3, -86
                  c.srai       s1, 4
                  sll          a2, s3, s11
                  sltu         t2, t5, a7
                  xori         zero, a3, 1478
                  c.andi       a2, -1
                  c.sub        s1, a4
                  mulhsu       a6, t5, s6
                  sltu         t0, sp, t5
                  div          a4, t4, s9
                  slli         t1, a3, 22
                  mul          s7, t4, t3
                  mul          a2, s7, s2
                  mulhu        a2, s5, s9
                  c.xor        s0, s0
                  srli         t1, zero, 17
                  lui          a2, 1037986
                  sll          s7, a5, t2
                  c.srai       a2, 1
                  remu         s0, t3, s9
                  c.li         s0, -1
                  c.add        gp, a3
                  c.lui        s7, 4
                  c.sub        a5, s1
                  lui          a5, 729108
                  mul          a5, zero, s1
                  auipc        a0, 391536
                  lui          zero, 736371
                  sra          s2, t5, t0
                  c.li         t1, 23
                  add          s6, s3, s9
                  c.add        s4, a4
                  c.srai       a2, 5
                  c.lui        a7, 8
                  lui          s0, 167851
                  addi         s1, s10, -1457
                  add          s5, a1, s4
                  c.or         s0, s1
                  rem          a2, a1, t6
                  sll          t2, a5, a2
                  c.addi       s9, 11
                  rem          s10, s5, t0
                  mulhu        s1, s9, s7
                  c.xor        a5, s1
                  srl          a2, tp, a6
                  srli         t4, t4, 21
                  c.sub        s0, a5
                  add          t2, s10, a3
                  c.or         a0, a4
                  add          a1, t4, s5
                  mulhu        t3, s11, t2
                  mulhu        t1, a7, t2
                  c.sub        a4, a4
                  sltiu        a2, t3, -989
                  c.srai       a4, 3
                  slt          s3, a6, sp
                  c.mv         s7, tp
                  mulhu        t2, s6, s7
                  c.li         t1, -1
                  c.add        tp, s2
                  div          s5, t6, t5
                  ori          s10, s1, -1838
                  slli         s2, a0, 7
                  mulhsu       t1, a5, ra
                  c.srli       a2, 18
                  add          t1, a4, a7
                  rem          s4, a4, a6
                  c.srli       s1, 21
                  slt          s9, t6, gp
                  c.li         s11, -1
                  sltiu        a7, t1, -1648
                  lui          s6, 829653
                  auipc        s7, 220899
                  slli         s3, zero, 8
                  c.nop
                  c.or         a2, s1
                  mulhsu       a1, gp, s7
                  slt          a1, a4, s4
                  auipc        a7, 720079
                  c.or         s0, a3
                  c.srli       a5, 9
                  c.add        s9, t0
                  sub          s1, t5, a5
                  or           t4, sp, a1
                  c.addi       s9, -1
                  sltiu        t2, tp, -864
                  c.nop
                  slti         zero, t6, 733
                  and          tp, s2, sp
                  add          s3, t4, s9
                  c.andi       a2, 8
                  addi         a5, t2, 949
                  srai         t0, a7, 10
                  rem          ra, s6, zero
                  lui          s5, 83233
                  c.or         a4, s0
                  lui          s1, 1046374
                  srl          s3, a4, s6
                  c.lui        t2, 29
                  c.or         a5, s0
                  c.slli       s0, 29
                  slli         s2, a5, 24
                  or           s4, s6, a6
                  nop
                  c.sub        a1, a5
                  slt          s2, s6, tp
                  sra          gp, zero, a1
                  lui          a5, 435458
                  c.nop
                  sltu         t0, a4, t6
                  lui          s4, 520073
                  add          t1, s9, gp
                  srai         t6, a6, 28
                  slti         t3, t6, -1545
                  c.and        a2, a1
                  mulhu        s7, a0, s2
                  sltiu        a2, t2, 533
                  srli         s0, s4, 26
                  sltiu        t3, a3, 1112
                  sra          s5, s11, a1
                  divu         s1, t1, a0
                  or           a0, a6, s4
                  remu         zero, s2, a2
                  ori          t2, a6, -763
                  ori          t1, zero, -1369
                  c.addi       t0, 18
                  srai         a6, a7, 25
                  div          s9, a0, s5
                  mulh         a7, t2, s6
                  c.srli       a1, 23
                  sltiu        a2, s4, -1744
                  mulh         s7, a6, a6
                  lui          a1, 195285
                  sltu         a5, s3, s1
                  sltiu        t0, t3, -726
                  nop
                  divu         s5, s1, a3
                  xori         tp, s9, 1634
                  and          a4, s3, ra
                  c.li         s11, 31
                  ori          a6, s8, -1990
                  xori         s7, s6, 714
                  c.slli       t0, 17
                  c.srli       s0, 4
                  div          a6, t1, s3
                  sub          s11, t5, ra
                  slt          gp, s9, s7
                  sltiu        a0, s11, -1823
                  c.xor        a0, s1
                  sltu         s5, t6, a4
                  xori         s1, a6, 1319
                  or           s11, a7, s7
                  c.addi       a2, 22
                  xor          a0, s6, zero
                  c.add        t1, t6
                  c.srli       a2, 11
                  c.mv         a2, a5
                  sra          zero, t3, a0
                  and          t1, tp, s0
                  c.add        s3, s5
                  c.lui        t3, 24
                  srl          ra, s3, t1
                  sub          tp, s7, zero
                  remu         a0, a3, t5
                  mulh         s9, t5, s0
                  mulh         s7, s7, s3
                  mulhsu       s3, s2, a5
                  slli         t1, tp, 24
                  addi         a1, t4, 156
                  c.srai       s0, 30
                  andi         a7, a0, 63
                  div          zero, a7, s0
                  c.addi       a6, 3
                  andi         t0, a1, -708
                  c.nop
                  c.srai       a2, 16
                  xor          tp, a6, t2
                  sltiu        s5, ra, -798
                  andi         a5, a1, -754
                  c.and        a2, a4
                  mulh         a0, a6, gp
                  rem          a2, a5, s0
                  c.sub        a5, a1
                  mulhu        s2, s7, s3
                  lui          zero, 287384
                  lui          a5, 2975
                  sll          s2, t3, a7
                  c.add        s5, s1
                  c.li         t2, 4
                  c.and        s1, a2
                  nop
                  c.andi       a4, -1
                  mulhsu       a6, zero, gp
                  addi         s2, t3, 1261
                  c.xor        a4, a5
                  slli         s2, a0, 13
                  slli         s5, t6, 18
                  xor          t0, s4, s10
                  ori          s4, a7, 1101
                  xori         t4, s6, -71
                  c.mv         s3, t5
                  sub          t4, s5, ra
                  or           a5, gp, s8
                  c.or         a2, a3
                  c.li         a0, 28
                  c.li         tp, 14
                  and          a2, t3, t4
                  slli         s3, zero, 8
                  c.mv         a6, t1
                  auipc        tp, 643448
                  nop
                  xor          a2, s9, t5
                  mul          zero, zero, t5
                  srl          s11, s1, t3
                  or           gp, a5, s10
                  andi         t5, tp, -1596
                  c.addi       s1, -1
                  c.or         a2, a1
                  xori         s1, sp, 1248
                  c.mv         a1, s7
                  slti         t2, a7, 334
                  mulh         gp, s7, t4
                  sub          a2, s4, zero
                  c.or         s1, a4
                  remu         a5, s5, s3
                  addi         s10, s0, -61
                  addi         a5, a1, -67
                  mulh         t1, a5, t1
                  c.srai       s1, 25
                  nop
                  c.or         a1, a0
                  mul          s6, sp, t4
                  c.and        a4, a0
                  sub          s1, a2, t3
                  c.mv         s10, s1
                  c.li         t6, -1
                  sra          s9, a3, a4
                  addi         gp, s4, -1999
                  rem          a7, s11, t0
                  c.nop
                  c.mv         a7, s3
                  andi         s2, t6, -1051
                  c.nop
                  xor          tp, s0, s7
                  c.add        t6, s3
                  and          a4, zero, t6
                  xor          s1, s7, s2
                  andi         s6, t2, -539
                  mulh         t2, a2, s7
                  andi         s10, s10, -781
                  sll          a5, s8, s8
                  slli         s9, ra, 9
                  sltiu        ra, s2, -1428
                  ori          s9, t4, 579
                  slli         s0, t5, 18
                  slti         t0, t1, -1382
                  andi         a5, t1, 1739
                  c.li         a5, 22
                  xori         s7, a4, 1135
                  c.and        a4, a5
                  and          s10, t3, tp
                  sra          a0, t0, t1
                  rem          t4, tp, a6
                  slt          t2, s4, a1
                  mulhsu       s10, a3, s5
                  sltu         a1, a1, a0
                  c.srli       a2, 22
                  srli         s4, t6, 14
                  c.mv         a2, s2
                  rem          tp, t2, t2
                  c.andi       a5, 18
                  mulh         zero, tp, a0
                  divu         s4, s1, s3
                  c.srai       a2, 17
                  c.li         s2, 30
                  rem          s0, s0, a3
                  c.add        a6, a4
                  sltiu        a5, t1, -481
                  add          gp, a1, t0
                  c.add        a5, t6
                  srai         a1, tp, 30
                  or           s6, s9, s6
                  c.lui        t0, 1
                  c.nop
                  remu         t3, t4, a2
                  add          s6, a2, ra
                  mulhu        a2, t0, gp
                  srli         a6, s1, 15
                  lui          a7, 248070
                  xori         gp, t6, -1283
                  c.add        s7, s7
                  sltiu        s10, a5, 1947
                  c.addi       s0, 19
                  divu         s7, a1, s1
                  rem          s10, a2, s11
                  c.slli       s5, 21
                  nop
                  c.li         a2, -1
                  c.srli       a0, 17
                  srli         s4, s7, 18
                  sltu         a0, s11, s1
                  mulhu        a7, s11, tp
                  auipc        s10, 980948
                  rem          s1, t5, tp
                  auipc        s9, 874831
                  remu         zero, a1, t4
                  mulh         s2, t4, s0
                  c.mv         a2, s6
                  c.srai       a1, 2
                  c.addi       s3, 14
                  slt          s6, t4, s9
                  sra          a0, s0, a4
                  xor          s6, a3, t0
                  c.li         t4, -1
                  c.li         a0, -1
                  c.xor        s0, a4
                  sll          s3, t1, s9
                  sll          a7, a1, gp
                  slti         tp, s6, 1763
                  c.or         a0, a5
                  c.add        t1, a0
                  sub          s3, s5, s6
                  xor          a5, a6, t2
                  nop
                  or           s2, t4, t1
                  c.add        s7, s1
                  slli         s5, t1, 3
                  sltu         s10, s11, s8
                  sltu         t6, ra, a0
                  divu         s1, s9, a6
                  add          t0, t4, a1
                  c.slli       s0, 10
                  lui          s7, 1005172
                  sll          t3, t3, s10
                  remu         s9, a0, s3
                  remu         a6, a0, a6
                  c.or         s1, a3
                  andi         t5, a6, 1256
                  addi         a4, tp, 2020
                  sltu         a0, s1, a2
                  c.nop
                  addi         zero, a0, 137
                  c.andi       a5, 12
                  remu         ra, s1, a3
                  addi         a5, s10, -467
                  addi         a6, tp, 1229
                  lui          t2, 242769
                  c.and        a5, a2
                  c.andi       a2, 20
                  c.mv         s4, s5
                  c.xor        a1, s1
                  c.and        s1, a1
                  c.andi       a1, -1
                  addi         s5, t2, -1420
                  rem          s4, gp, s10
                  c.sub        a5, a4
                  srai         a0, t3, 30
                  mulh         t3, s3, a6
                  xor          s3, zero, ra
                  divu         t2, a6, a4
                  and          a0, a4, t6
                  mulhsu       s2, a2, tp
                  c.andi       s0, 6
                  c.lui        s5, 8
                  c.xor        a1, a1
                  c.li         t2, 25
                  slli         gp, s4, 5
                  c.xor        a0, a5
                  c.slli       s10, 1
                  c.nop
                  addi         zero, t5, 1425
                  c.sub        a2, a3
                  or           t4, a7, t1
                  andi         s4, s1, 943
                  and          s9, a2, sp
                  addi         s9, t0, -1066
                  ori          t3, s6, -2041
                  auipc        s9, 205433
                  c.slli       t0, 21
                  c.sub        a0, a2
                  c.slli       s2, 25
                  slt          s2, zero, s9
                  mulh         s3, s11, s7
                  sltiu        ra, s9, -1318
                  sub          s5, s5, s0
                  xor          s9, a7, a7
                  c.andi       s1, -1
                  c.lui        gp, 8
                  sltu         s11, s6, t5
                  c.addi       ra, 21
                  or           zero, a2, s4
                  sll          a0, t1, t6
                  c.or         a2, a2
                  sub          s11, t6, a0
                  auipc        tp, 44212
                  mulhsu       a7, a1, s8
                  mul          zero, a1, t2
                  c.lui        a1, 22
                  c.andi       a0, -1
                  ori          a0, s6, 1511
                  c.srai       a1, 11
                  slt          t0, a2, ra
                  xor          tp, a4, a0
                  slli         s7, a6, 6
                  addi         t0, ra, 1171
                  andi         a0, zero, -1901
                  mulhsu       a4, s3, s11
                  divu         s1, s1, s7
                  c.lui        t5, 16
                  c.li         s5, 6
                  c.or         a1, s0
                  c.add        s9, gp
                  srli         t1, s6, 31
                  srli         a6, zero, 11
                  c.sub        a2, s0
                  c.srli       a2, 22
                  lui          a2, 701353
                  c.slli       s5, 4
                  c.xor        a2, a3
                  sll          a1, ra, a3
                  c.add        a7, t5
                  nop
                  c.srli       s0, 19
                  mulh         s0, s11, a0
                  divu         s5, gp, t2
                  andi         s9, s7, 1708
                  sltiu        zero, s4, -409
                  xor          t5, s6, s1
                  c.xor        s1, a0
                  c.addi       gp, 17
                  mul          zero, t5, t6
                  c.mv         t2, s11
                  c.andi       a2, 31
                  nop
                  c.slli       s2, 16
                  c.li         ra, 10
                  mulhu        a1, t3, t5
                  rem          s7, a3, s3
                  ori          t6, zero, 1628
                  mulhsu       t4, s2, sp
                  c.mv         a7, s4
                  c.mv         tp, s11
                  nop
                  add          s4, t6, t3
                  c.add        a6, a3
                  slt          t2, sp, s3
                  srai         s2, t0, 2
                  c.nop
                  c.srai       a0, 15
                  c.slli       s0, 21
                  sll          tp, s0, s1
                  auipc        tp, 309276
                  c.srai       a5, 1
                  c.xor        s1, a2
                  lui          t4, 505536
                  sll          s9, ra, a0
                  sltu         tp, a0, tp
                  srai         s10, a2, 14
                  srli         s7, s1, 5
                  sra          s2, s5, s0
                  sra          zero, t2, s2
                  rem          t0, gp, a6
                  ori          t2, a4, 1901
                  mulhu        s1, t1, s6
                  ori          gp, s0, -40
                  srl          t0, gp, t1
                  srai         ra, s11, 11
                  c.or         a5, a0
                  c.add        s10, s4
                  c.mv         s0, a3
                  c.addi       t4, -1
                  c.and        a0, a5
                  c.mv         t0, t4
                  divu         a4, a7, t2
                  c.or         a5, s0
                  add          s10, a7, ra
                  sltiu        s7, ra, 2044
                  lui          a1, 214426
                  sltu         a1, ra, t2
                  c.mv         s7, a3
                  ori          t4, s7, 609
                  c.xor        a2, a5
                  c.sub        a0, a2
                  mulhu        s11, gp, t0
                  xori         zero, a3, -563
                  auipc        t3, 912590
                  mul          s6, t1, a5
                  addi         s7, t3, 287
                  srai         a1, s10, 26
                  c.lui        a5, 29
                  srl          s10, t2, a6
                  xor          a2, a4, s10
                  c.sub        a4, a2
                  mulhu        tp, s0, s4
                  c.add        t1, s7
                  addi         ra, a6, 484
                  or           tp, t1, a0
                  divu         s6, a0, s7
                  sub          zero, t0, s0
                  mulh         gp, a1, s3
                  divu         s0, zero, sp
                  mulhsu       s10, t3, a3
                  lui          s7, 492802
                  sub          s10, s11, a4
                  add          a1, t5, s7
                  sub          s1, ra, a2
                  c.mv         a0, s8
                  c.or         s0, s0
                  srai         a7, s5, 17
                  remu         s6, tp, a0
                  sll          s11, t0, s3
                  srl          a5, t6, a1
                  c.srai       a0, 22
                  and          a6, a6, a6
                  xor          a6, a6, s3
                  add          t0, s3, t3
                  ori          t6, a2, -913
                  c.srai       a1, 20
                  c.addi       s11, 3
                  slt          s5, s4, t4
                  auipc        a1, 77559
                  c.srai       s0, 25
                  sll          ra, s2, a4
                  sltu         s9, s6, zero
                  c.nop
                  add          s4, s4, s4
                  c.add        tp, s6
                  slt          ra, gp, a6
                  and          a0, s0, s0
                  ori          ra, s10, -412
                  or           t5, s8, s7
                  srl          a4, s5, s10
                  c.li         s2, -1
                  c.li         a5, -1
                  ori          s0, sp, 1060
                  rem          s0, s2, s9
                  lui          ra, 394417
                  c.sub        s1, s1
                  remu         a0, s6, a6
                  sub          s5, a4, t4
                  auipc        s1, 372041
                  c.nop
                  srai         s5, t5, 23
                  c.addi       a1, 14
                  nop
                  andi         t4, ra, 407
                  remu         t0, a1, t0
                  remu         s3, a2, t4
                  c.li         s9, -1
                  ori          t3, t0, -467
                  lui          t0, 388339
                  c.li         s11, 22
                  c.lui        t4, 24
                  add          s3, s6, zero
                  slti         s3, s4, 846
                  sll          s2, s9, a2
                  mul          t0, s10, t5
                  c.addi       a6, -1
                  nop
                  mulh         s6, t1, s7
                  andi         s7, a0, -1192
                  c.or         a1, a1
                  slli         s0, t1, 20
                  addi         t0, s0, -1314
                  c.and        a4, a2
                  sltiu        s10, s6, 783
                  lui          s3, 457768
                  slt          t0, s1, s9
                  c.mv         t3, s5
                  c.mv         s5, t5
                  srli         a5, s2, 27
                  sltiu        t4, gp, -937
                  mulhsu       s7, t6, t0
                  and          s7, gp, a3
                  c.lui        a2, 27
                  c.andi       a5, 3
                  sll          s7, zero, s3
                  div          a5, s8, a3
                  c.andi       a1, 14
                  c.and        a4, a4
                  slti         a1, s4, 848
                  c.addi       tp, -1
                  c.slli       a6, 20
                  c.xor        s1, s1
                  auipc        s5, 286019
                  divu         a0, s9, s8
                  sltu         t5, t4, s6
                  addi         s1, gp, 257
                  sll          t4, sp, t3
                  auipc        s0, 438829
                  divu         s1, s11, t1
                  divu         a0, a7, t5
                  sub          s9, s6, t2
                  c.slli       s7, 1
                  slt          t3, gp, sp
                  nop
                  c.mv         t1, a6
                  sltiu        s9, a5, 1430
                  slt          t5, a4, t3
                  div          t0, a1, s3
                  and          tp, a6, s1
                  slt          a2, s7, s2
                  sub          t5, zero, s11
                  lui          s0, 831032
                  slt          s9, s7, s1
                  c.and        a5, a5
                  c.slli       a2, 4
                  c.nop
                  slli         s11, tp, 1
                  xor          s2, s9, t3
                  sll          a7, a2, s10
                  remu         t0, t0, s9
                  sltu         s0, a4, s5
                  slti         a5, a5, 1979
                  divu         a4, t4, a0
                  sub          s4, t5, a7
                  rem          a4, s11, zero
                  sll          tp, s5, s4
                  sltiu        a5, t0, 766
                  c.xor        s1, a2
                  c.sub        a5, a1
                  mulhu        t6, a6, s5
                  c.sub        a1, s1
                  add          a6, t5, s8
                  c.and        a1, a1
                  mulhu        t1, s0, ra
                  and          t5, s8, s5
                  sub          a1, a3, s9
                  c.srai       s1, 9
                  divu         gp, t2, a6
                  c.slli       t1, 31
                  ori          a2, a3, 398
                  slli         t4, a2, 8
                  c.andi       s1, -1
                  mulh         s10, s8, a7
                  c.lui        s5, 30
                  c.lui        ra, 6
                  c.andi       a1, -1
                  sub          zero, s0, gp
                  or           s2, s0, s3
                  div          t1, a3, s11
                  add          s6, s7, s3
                  lui          t1, 185142
                  sltiu        s6, t4, 905
                  mulhsu       t5, s1, t5
                  mulhu        a2, s10, s5
                  mul          s0, s11, s1
                  c.srai       a0, 28
                  sll          s10, a0, s8
                  andi         a0, a4, -67
                  sll          gp, s9, t1
                  sra          s7, zero, a6
                  c.srli       a5, 25
                  mulh         s4, zero, tp
                  sra          t2, t0, s10
                  c.sub        s1, a4
                  c.nop
                  slt          s7, tp, t4
                  c.srli       a4, 3
                  mulh         a5, s10, t0
                  xori         t4, s9, -319
                  c.or         a4, a0
                  c.srai       a2, 6
                  div          s2, s9, a4
                  sltu         s6, gp, a7
                  rem          s9, tp, s9
                  srl          s3, s4, a3
                  divu         s2, a3, a3
                  sra          a0, t5, s7
                  or           s3, s11, a5
                  c.slli       a7, 5
                  c.slli       t0, 2
                  c.xor        a5, a3
                  c.xor        a4, s0
                  nop
                  c.andi       s1, -1
                  c.srai       s1, 19
                  slt          s9, s9, t0
                  ori          s6, t4, 1502
                  c.or         s1, a0
                  nop
                  or           s10, s1, a7
                  sltiu        a2, zero, -1396
                  slti         s11, a0, -1418
                  ori          a7, s2, 1807
                  sub          a5, s2, a7
                  c.sub        s0, s0
                  slti         s1, t6, -1272
                  c.lui        s9, 1
                  c.and        a5, a2
                  xor          tp, s10, t2
                  auipc        s4, 961751
                  sub          zero, t6, sp
                  xori         s11, t0, -220
                  c.slli       a6, 26
                  c.and        s0, a1
                  divu         a6, a7, t2
                  c.li         tp, 18
                  nop
                  mulh         a0, t4, a5
                  mulhsu       t5, gp, s3
                  auipc        s6, 614891
                  c.li         ra, 9
                  sltiu        a6, a6, 1826
                  sub          s1, a7, t6
                  mulhu        t6, s7, s9
                  c.sub        s0, a0
                  addi         s1, s4, -1474
                  c.slli       t4, 31
                  sll          a2, s3, s9
                  rem          tp, s7, s3
                  slt          zero, t5, s7
                  mul          s10, s4, s11
                  c.nop
                  add          s1, a5, a2
                  srai         s7, zero, 28
                  addi         ra, t5, 1635
                  c.add        s6, a5
                  nop
                  mulhu        s1, a0, s5
                  remu         a0, t1, t2
                  slli         s11, s4, 24
                  srai         zero, t2, 4
                  mulhsu       s3, a7, a0
                  add          gp, a0, t1
                  c.addi       s9, -1
                  c.addi       s6, -1
                  div          t2, a1, t0
                  sltu         s2, t6, a4
                  mulhsu       tp, s10, s3
                  c.sub        a2, a2
                  auipc        t4, 427946
                  sltu         t0, s0, a4
                  xor          t5, a6, ra
                  slli         zero, s1, 8
                  xori         a0, ra, -408
                  c.srli       s0, 23
                  mulhu        s11, s11, s6
                  c.lui        s10, 20
                  div          t5, s2, a1
                  div          a2, s7, a3
                  andi         a2, s1, -1174
                  c.srli       a0, 11
                  remu         s5, t2, a4
                  auipc        s10, 765251
                  mulh         a7, a7, ra
                  sra          a6, s11, a2
                  or           s0, s10, zero
                  c.addi       ra, 19
                  andi         s6, s8, -665
                  c.andi       a0, 4
                  div          s7, s5, s6
                  sub          a7, tp, a5
                  c.srai       s1, 21
                  c.srli       a2, 19
                  c.sub        a4, a1
                  c.add        gp, s6
                  c.slli       gp, 6
                  sltiu        s11, s0, 1557
                  c.andi       s1, -1
                  ori          t1, s1, 578
                  c.lui        t1, 5
                  c.add        a6, gp
                  srli         t0, t6, 17
                  srai         a1, s5, 22
                  srli         s1, tp, 29
                  slli         s4, t1, 15
                  nop
                  divu         a0, s1, sp
                  auipc        zero, 786107
                  srli         t0, s10, 0
                  srli         s0, zero, 25
                  c.srli       a1, 8
                  c.addi       ra, 11
                  c.and        a4, a2
                  lui          gp, 1048554
                  c.add        t0, s4
                  nop
                  sltu         a5, ra, s6
                  c.li         s11, -1
                  andi         ra, t2, 10
                  srli         s6, a2, 17
                  nop
                  divu         s3, s11, s2
                  c.andi       a0, -1
                  c.xor        s1, a4
                  c.addi       a2, -1
                  addi         s1, t1, -236
                  and          s3, s6, t5
                  srai         s1, a1, 11
                  slt          s0, sp, a7
                  c.mv         t5, s11
                  sltiu        a6, a1, 1820
                  c.mv         a1, s9
                  remu         zero, tp, s6
                  auipc        a5, 323678
                  c.andi       a0, 7
                  slli         s4, t5, 7
                  mul          s3, tp, t5
                  sub          t5, a1, s3
                  or           a0, t1, a5
                  and          t0, sp, s0
                  sll          s5, a4, s11
                  sll          s0, s7, a6
                  sra          s1, t0, s6
                  c.li         s4, 23
                  c.xor        s0, a1
                  c.nop
                  rem          s6, a1, s4
                  or           a2, s6, ra
                  c.andi       s1, 31
                  auipc        a5, 229585
                  slt          s3, t2, s11
                  c.andi       s0, -1
                  xori         t1, ra, -771
                  c.or         s0, s0
                  c.add        a2, t2
                  mulhsu       a1, a4, t4
                  sub          t1, s1, s7
                  srl          gp, t2, gp
                  c.sub        a0, a1
                  c.lui        t5, 14
                  nop
                  add          s4, a0, a3
                  addi         s7, s11, 1068
                  slli         s10, s10, 19
                  lui          t3, 1624
                  add          s7, t6, tp
                  remu         tp, s2, t5
                  mul          s10, a3, sp
                  c.and        a2, s0
                  c.slli       a5, 31
                  and          zero, s3, t4
                  c.srai       a4, 13
                  and          a5, t0, gp
                  srli         s9, s7, 13
                  c.addi       s2, -1
                  srli         gp, t5, 19
                  c.srli       a5, 10
                  xori         t6, t1, 196
                  c.mv         s3, s10
                  c.li         s2, -1
                  mulh         s6, s1, s6
                  divu         s7, t0, s7
                  c.sub        a5, s1
                  slli         s0, s11, 28
                  or           t4, tp, s1
                  sltu         ra, s9, a6
                  andi         s3, s6, -609
                  slli         s2, a3, 21
                  andi         t2, s2, -296
                  c.lui        s7, 10
                  c.srai       a2, 14
                  mul          t5, t2, s11
                  srli         a6, t2, 20
                  div          s10, t2, s0
                  c.addi       a5, -1
                  remu         a0, zero, zero
                  c.addi       a6, 17
                  auipc        t3, 942110
                  c.lui        t1, 23
                  mulhu        t1, a5, tp
                  auipc        s0, 467689
                  c.xor        a0, a4
                  mulhsu       a5, zero, s5
                  c.and        s1, a3
                  c.andi       a2, -1
                  sra          s2, s4, t5
                  addi         t6, sp, -118
                  xor          a0, gp, t0
                  c.and        a4, a0
                  c.nop
                  c.xor        a2, a1
                  xor          gp, ra, s7
                  divu         gp, s10, t6
                  c.srli       a0, 10
                  c.lui        s2, 5
                  c.add        t3, s11
                  slt          a4, s0, s2
                  c.or         a4, a3
                  auipc        s1, 753394
                  srli         a7, s8, 0
                  c.srli       s1, 31
                  srli         s3, t6, 22
                  and          s7, s9, a0
                  srli         s10, ra, 24
                  ori          s2, t3, 1200
                  srl          tp, a1, s11
                  addi         s10, t5, -1154
                  or           zero, a0, t3
                  add          s5, t6, s2
                  sub          tp, t3, a3
                  c.slli       a0, 13
                  c.add        a4, t6
                  srli         s11, s9, 18
                  auipc        t0, 352346
                  c.or         a5, a0
                  srli         a1, s2, 25
                  nop
                  divu         a6, a4, t0
                  slli         t3, a1, 5
                  c.nop
                  srli         s6, a7, 12
                  sra          ra, gp, a2
                  sltiu        s7, s2, 1283
                  ori          a4, s3, 1300
                  mulh         s2, t4, s1
                  nop
                  srl          zero, a2, a3
                  lui          s9, 519070
                  c.mv         tp, s10
                  c.srli       a0, 13
                  xori         a2, a2, 1073
                  sltiu        t3, zero, 1147
                  ori          s0, t3, 724
                  andi         t2, ra, 1060
                  sll          s7, ra, tp
                  c.add        a7, s11
                  ori          s2, t2, 1121
                  ori          s10, gp, -1859
                  auipc        t1, 506897
                  lui          s0, 760662
                  nop
                  mulh         a5, t3, a3
                  c.slli       a1, 18
                  c.or         a1, a4
                  sll          a4, gp, a4
                  lui          a1, 982033
                  mulhsu       a0, s10, s1
                  lui          a4, 35728
                  srai         a2, s6, 22
                  c.lui        s1, 4
                  andi         a0, a2, -498
                  c.or         s1, a3
                  or           t3, s4, t2
                  c.add        s7, s7
                  srai         t6, a0, 28
                  c.mv         t6, t6
                  mulhsu       a1, t2, s2
                  c.srai       s0, 11
                  addi         s10, s1, -1894
                  slti         s1, a3, 1463
                  c.sub        a4, a5
                  c.xor        a2, a2
                  c.lui        a6, 23
                  slt          s11, tp, s1
                  c.or         a5, a5
                  addi         a4, t4, -602
                  sll          s10, s11, a0
                  rem          t4, t3, sp
                  slli         t3, s1, 17
                  andi         s9, a5, 447
                  slt          a7, s11, s5
                  sltiu        t0, s0, -1117
                  c.sub        a0, a1
                  or           a2, t6, ra
                  or           t2, s2, s2
                  addi         a5, s3, 1205
                  c.lui        tp, 9
                  c.mv         s9, gp
                  srli         s4, zero, 7
                  mulhsu       a4, a0, t5
                  sll          s2, a7, t0
                  c.and        s1, a4
                  slti         s11, ra, -1128
                  lui          s9, 1006930
                  c.mv         s2, a4
                  lui          t0, 997028
                  add          a4, a0, s9
                  slli         t0, s11, 5
                  div          a6, zero, a0
                  c.or         a2, a4
                  divu         t1, t3, a4
                  sltu         s9, t2, t1
                  sltu         ra, a2, a7
                  mulhu        t2, a5, a0
                  srl          a2, a6, s3
                  mulhu        t4, t5, t6
                  c.nop
                  c.or         a0, a1
                  div          s9, s1, s1
                  sltiu        a2, s10, 1919
                  and          s7, s0, t3
                  rem          s2, s3, ra
                  xor          a7, t6, a4
                  or           t4, a2, s0
                  add          t3, a5, t4
                  sra          t3, gp, sp
                  ori          a1, a6, -514
                  srli         gp, s11, 1
                  divu         a0, a3, s2
                  sltu         s6, t1, ra
                  c.xor        a5, a5
                  sltiu        t0, s6, 1651
                  c.srli       a2, 17
                  remu         a6, s4, s10
                  slt          a0, s11, s0
                  addi         s10, s2, -1917
                  sltu         s4, a4, gp
                  c.sub        a5, a0
                  slli         s4, t4, 31
                  c.xor        a4, a2
                  slt          s10, t5, t2
                  sltu         a0, s7, a7
                  c.and        a5, a0
                  mulh         s5, a0, t1
                  c.andi       a0, -1
                  rem          s9, t6, a3
                  c.nop
                  c.sub        a4, a2
                  srai         t4, a5, 26
                  c.andi       a5, -1
                  sltiu        t2, a3, -973
                  c.andi       a5, 13
                  c.lui        s1, 14
                  div          a7, t1, a7
                  c.xor        a2, a1
                  c.addi       a0, -1
                  slti         a2, s3, 376
                  lui          a6, 642634
                  and          s9, t5, t1
                  auipc        t4, 942537
                  divu         s0, t1, a7
                  slti         s11, t6, -1238
                  mulhsu       s4, s10, t4
                  auipc        t3, 182064
                  c.andi       a2, -1
                  srai         ra, gp, 5
                  ori          s4, a1, -1442
                  c.srai       a5, 13
                  c.srli       s0, 30
                  slli         s5, zero, 14
                  c.srai       a4, 13
                  xori         zero, t4, 1362
                  c.or         s0, s0
                  xori         t3, s7, -242
                  mulh         t2, t6, s10
                  sll          s2, ra, a6
                  rem          s9, s0, t4
                  xori         s11, sp, 2009
                  sra          a5, s7, s6
                  rem          a1, a2, s11
                  sub          a6, sp, s8
                  div          s9, t6, s1
                  andi         zero, s6, -1417
                  rem          s0, zero, s6
                  sltu         s9, s11, ra
                  c.andi       a5, -1
                  c.mv         s1, t4
                  c.add        t3, t4
                  lui          s11, 201989
                  div          s7, t6, t1
                  lui          s0, 217272
                  c.and        a0, a4
                  mulhsu       s9, t2, a1
                  mul          s7, t6, t4
                  andi         s6, t0, 291
                  c.add        s0, s3
                  sltu         s10, sp, s10
                  srai         s3, t1, 6
                  mulhsu       s2, a1, a0
                  div          a6, a3, s1
                  c.addi       a5, -1
                  andi         a2, a1, -1130
                  lui          t4, 54987
                  div          s9, t4, t5
                  srai         ra, t5, 29
                  sll          a6, a0, s8
                  c.slli       s10, 22
                  divu         s4, t3, gp
                  auipc        gp, 20098
                  mulhsu       a1, s7, s8
                  add          t6, s9, ra
                  xor          t0, tp, gp
                  mulhu        a4, s5, s10
                  lui          s7, 359383
                  slt          s1, s4, s5
                  sltu         s0, s9, a3
                  c.lui        s1, 29
                  c.srli       a5, 2
                  srai         a0, t2, 12
                  c.andi       a0, 8
                  div          t1, t2, t2
                  c.slli       t5, 30
                  c.or         a5, a3
                  nop
                  or           a1, a0, t0
                  rem          t1, tp, s2
                  rem          s11, s8, sp
                  mulhu        a5, t1, t4
                  or           s5, a6, s0
                  or           a2, a0, s3
                  c.mv         gp, a2
                  slti         a2, t1, 1794
                  andi         s11, s7, -1792
                  rem          a1, a7, s8
                  sltu         s11, s3, s8
                  sltu         t4, s2, s2
                  mulhu        t0, s0, s10
                  remu         s3, a5, a0
                  sra          s4, t2, t3
                  srl          a4, s5, a4
                  c.srli       a5, 28
                  xori         ra, t3, 262
                  mul          s7, s4, a6
                  xor          t1, s3, t0
                  auipc        s1, 20604
                  xori         t3, ra, 843
                  sra          s10, s2, t4
                  auipc        a7, 63831
                  mul          t6, a5, a2
                  lui          a5, 985293
                  srli         zero, a2, 27
                  andi         a7, a6, -685
                  sra          t4, sp, a6
                  srli         gp, s1, 1
                  c.xor        a4, s0
                  and          s10, t1, s10
                  nop
                  c.xor        a1, s0
                  or           t0, t5, s2
                  srl          gp, a6, s9
                  srl          s7, s11, t5
                  xor          a2, t0, a2
                  nop
                  c.srai       a2, 7
                  mulhsu       t4, a5, t0
                  addi         a7, s5, 1597
                  c.li         s2, 14
                  xori         a1, s6, -1036
                  c.slli       s3, 2
                  slli         a6, t2, 31
                  mulhsu       ra, a0, a6
                  c.srli       s0, 25
                  c.nop
                  c.slli       a6, 17
                  c.addi       t4, 5
                  or           a2, a6, a7
                  c.srai       a0, 21
                  c.or         a4, a3
                  andi         s9, s0, -560
                  srl          s7, a2, s1
                  andi         zero, t5, 1152
                  add          a6, zero, s2
                  lui          a6, 692067
                  lui          tp, 380876
                  nop
                  sltu         s7, s4, t6
                  srai         s6, tp, 27
                  sra          a2, t1, sp
                  c.andi       a2, 21
                  c.srli       a0, 30
                  c.slli       a0, 18
                  div          s0, t5, a5
                  c.li         t3, -1
                  auipc        t1, 455251
                  mulhu        a6, zero, t2
                  c.slli       tp, 27
                  c.or         s0, a2
                  sltu         s7, a3, t0
                  c.or         a0, s1
                  c.or         a2, s1
                  divu         t6, a1, sp
                  c.li         t3, 11
                  c.srai       a0, 16
                  mulhu        a6, sp, s10
                  c.nop
                  mulhu        a5, s4, s5
                  srai         a0, gp, 3
                  c.sub        a1, a2
                  srli         s2, s10, 17
                  sra          s0, s10, s11
                  remu         t3, a5, a4
                  c.li         t6, 12
                  div          s2, t0, a6
                  xor          s0, s8, a7
                  srli         s5, t2, 20
                  c.li         s0, -1
                  c.nop
                  c.nop
                  xor          t0, a3, tp
                  sltu         s0, s7, tp
                  c.sub        s1, a0
                  sltiu        t3, gp, 1550
                  c.mv         a6, s7
                  mul          a4, t0, a3
                  mulh         a6, s4, t6
                  or           ra, s6, s3
                  c.slli       t4, 15
                  lui          s7, 537750
                  auipc        t1, 167881
                  nop
                  c.addi       ra, 27
                  c.andi       a0, 14
                  xor          s11, a1, zero
                  slt          a2, a2, a7
                  mulh         a1, t1, t1
                  rem          a4, a2, s6
                  auipc        s0, 432426
                  auipc        zero, 144028
                  mulhu        s4, tp, s6
                  auipc        a7, 188374
                  and          a1, a2, t3
                  sltiu        zero, a6, 251
                  remu         a2, s1, s3
                  mulh         a0, s6, s1
                  c.or         a5, a4
                  srl          s0, s1, t5
                  remu         t3, t0, s10
                  mulh         s3, a1, zero
                  c.addi       t4, -1
                  srli         t0, s3, 15
                  addi         a5, tp, 1237
                  mulhsu       s10, s6, a0
                  c.add        s1, a5
                  c.xor        s0, a0
                  and          s6, s6, s4
                  srai         s9, t6, 28
                  andi         t2, t2, -1542
                  c.srli       a5, 26
                  slti         t5, a0, -699
                  c.nop
                  mulhu        a6, a1, s1
                  add          s0, a6, s0
                  sll          t5, a3, t4
                  c.xor        a0, a2
                  mulhsu       a0, t5, s0
                  sra          t0, s6, a4
                  c.and        a1, a4
                  c.srai       s1, 9
                  c.add        t3, s3
                  c.or         a5, a1
                  lui          ra, 389173
                  srai         zero, s7, 20
                  nop
                  mulhsu       t1, t4, s9
                  or           a2, sp, t1
                  divu         t3, t1, a1
                  mulh         t1, s1, s6
                  c.and        s0, a3
                  c.xor        a5, a2
                  mulh         a7, t3, a0
                  sltiu        s0, ra, -706
                  c.srli       a2, 6
                  c.mv         s10, s0
                  c.or         s1, a2
                  c.li         s0, -1
                  sltiu        ra, s6, -1172
                  xori         t0, s5, -657
                  srl          s0, s5, ra
                  mulh         t5, a4, s0
                  c.slli       a4, 28
                  or           t6, sp, zero
                  xor          a1, s7, s1
                  c.li         t1, -1
                  c.lui        t4, 14
                  andi         a6, t0, -1883
                  mulhsu       a1, zero, a3
                  c.nop
                  mulhsu       s1, s3, s9
                  slti         s1, a4, -1685
                  sltu         t6, t5, gp
                  c.slli       s5, 28
                  sub          a5, s11, a1
                  c.and        a0, a3
                  c.or         a1, a4
                  c.sub        a0, a1
                  c.li         t6, -1
                  sll          t2, a3, t0
                  c.lui        s6, 17
                  sra          a4, t1, tp
                  and          a5, a1, sp
                  c.lui        a6, 5
                  lui          s2, 503367
                  mulh         a6, s9, t4
                  c.li         s2, 5
                  sltiu        t5, a5, -247
                  srli         s9, s10, 0
                  andi         a2, a2, -1431
                  slti         a2, a7, -764
                  mulhu        s6, t4, a2
                  c.li         s0, 28
                  c.lui        s9, 1
                  lui          s4, 256194
                  c.lui        s4, 11
                  c.addi       t4, 30
                  rem          gp, s5, t3
                  slli         t6, s8, 15
                  slti         s2, a3, 1816
                  mul          s10, t3, s9
                  xor          s11, t0, gp
                  and          t0, s10, t6
                  sltiu        t6, s3, 1028
                  srl          a5, t2, s6
                  xori         t2, s3, -1225
                  mul          a1, s0, zero
                  c.xor        a2, s1
                  srli         s10, t1, 9
                  srl          a1, a4, t0
                  c.srli       a5, 23
                  xori         a0, a7, -1685
                  c.or         s0, a4
                  and          tp, t1, a7
                  xor          s3, tp, s10
                  sltiu        zero, s9, -1434
                  c.sub        a1, s0
                  sltiu        a5, s9, -363
                  add          s6, s1, a7
                  c.add        t4, t0
                  sll          s3, s8, ra
                  mulh         s10, a7, t5
                  addi         s4, s10, 193
                  c.sub        a5, a3
                  xor          t5, s10, s11
                  xor          t1, t6, t4
                  c.srli       a4, 28
                  slt          t1, s6, sp
                  add          a6, ra, s7
                  srl          s10, s8, s3
                  c.srai       a4, 13
                  addi         s11, s6, -71
                  lui          a0, 681990
                  slt          a7, a3, a5
                  ori          s7, s6, 1905
                  ori          s2, s11, 615
                  c.and        s1, a0
                  slt          s3, a2, a5
                  slt          t2, s1, s1
                  c.lui        t1, 28
                  sra          s10, s1, s6
                  c.srli       a5, 12
                  sltiu        s9, gp, 1230
                  sra          a5, s2, s9
                  c.or         a5, a3
                  c.nop
                  c.srli       a4, 30
                  ori          ra, s1, -617
                  add          a4, a4, s9
                  lui          s5, 979060
                  andi         s1, s11, 1885
                  slt          a5, s6, s0
                  c.xor        a0, a0
                  nop
                  srli         t4, s10, 27
                  sub          s0, s9, s10
                  srai         t2, s5, 17
                  ori          s7, t5, -472
                  and          s5, a1, gp
                  mul          s6, s6, s8
                  c.add        s10, a1
                  xori         t3, a0, -507
                  mul          gp, t1, t1
                  sra          t4, ra, s3
                  c.mv         s3, s7
                  c.srai       a4, 6
                  srai         s2, s9, 1
                  c.andi       s1, 30
                  c.lui        a6, 3
                  slti         a0, a1, -48
                  nop
                  c.srai       a5, 27
                  mulh         t2, s6, s2
                  sra          t3, s9, s0
                  and          a4, a3, t1
                  srl          t5, t1, a6
                  addi         t0, s3, -770
                  andi         a7, a1, -1478
                  sll          t2, s2, s4
                  srai         s1, a2, 24
                  sub          s5, a5, sp
                  c.nop
                  srli         tp, s4, 6
                  c.mv         t1, a1
                  divu         s0, a2, s4
                  sltu         zero, sp, a5
                  c.mv         tp, a6
                  rem          t4, a1, s1
                  srai         s10, ra, 6
                  nop
                  c.addi       s4, 10
                  rem          s10, t1, ra
                  xor          t3, ra, a4
                  mulhu        a1, s9, t5
                  andi         s6, s1, 1958
                  and          a1, s9, s11
                  mul          gp, t5, ra
                  c.and        a0, a5
                  auipc        t1, 633206
                  srli         gp, s4, 15
                  lui          zero, 908228
                  srai         s1, s8, 10
                  c.srai       a2, 27
                  c.nop
                  slt          zero, t1, sp
                  c.mv         t0, t1
                  c.srai       s1, 4
                  sra          t1, a5, a6
                  mulhu        a0, t5, a0
                  sub          a2, s1, a3
                  c.mv         s2, s4
                  remu         ra, tp, t6
                  sll          t3, a5, tp
                  remu         gp, a2, t2
                  auipc        a6, 73809
                  c.addi       s4, -1
                  c.or         a1, a4
                  srai         a6, s9, 20
                  auipc        a5, 34511
                  c.xor        a2, s1
                  div          a0, sp, zero
                  c.addi       s5, -1
                  c.xor        s0, s1
                  c.sub        s0, a3
                  lui          s5, 315231
                  add          a6, s2, zero
                  sub          a6, s7, ra
                  sltiu        t3, sp, 1490
                  sra          zero, s5, a3
                  remu         s5, a6, s6
                  srai         a2, s5, 24
                  c.addi       s0, -1
                  mulhsu       a2, t3, t2
                  divu         t2, sp, a4
                  srli         zero, a0, 24
                  c.add        t5, s9
                  auipc        a5, 1048557
                  slti         gp, s0, -450
                  add          tp, s2, s8
                  c.mv         gp, s7
                  c.xor        a5, a4
                  xori         s5, s6, -1366
                  div          a6, t5, s4
                  c.srli       a4, 12
                  sll          s1, s1, s5
                  c.srli       a2, 13
                  c.addi       s2, 4
                  slt          gp, a2, s9
                  srai         tp, t3, 30
                  c.lui        s6, 3
                  c.nop
                  div          s4, t1, s4
                  xor          t1, a7, gp
                  c.or         a2, a1
                  rem          a2, ra, s6
                  c.or         a4, a1
                  c.xor        a1, a3
                  remu         s5, a6, s3
                  sub          s10, t0, t4
                  srai         zero, s6, 30
                  divu         gp, s8, a0
                  divu         t5, ra, a2
                  srli         s0, s11, 25
                  c.srai       a1, 3
                  slli         gp, t4, 13
                  mulh         ra, s6, ra
                  remu         a2, a2, s1
                  lui          ra, 460128
                  auipc        s0, 34322
                  mulhsu       a4, s6, s3
                  c.add        s6, s6
                  c.or         s1, s0
                  c.nop
                  div          a1, a2, a2
                  sltu         a7, s9, s8
                  and          t1, tp, t4
                  c.sub        a0, a4
                  rem          a1, t0, tp
                  add          ra, t0, s0
                  xori         t1, a1, -1359
                  slli         t0, t2, 14
                  and          t0, a1, t6
                  sra          a0, sp, t5
                  c.srli       a2, 17
                  sltu         t6, a1, t1
                  addi         tp, t1, -1487
                  c.add        s1, gp
                  addi         s10, sp, -2036
                  c.slli       s3, 16
                  sra          s11, a6, ra
                  c.sub        s1, a3
                  c.or         a5, a2
                  c.addi       s0, -1
                  c.lui        a6, 21
                  xor          a7, a5, t5
                  c.slli       a2, 24
                  srl          tp, s3, t4
                  c.li         a2, -1
                  rem          s11, a4, a3
                  c.sub        s1, a2
                  c.nop
                  sub          zero, a5, s9
                  c.mv         s10, s4
                  c.lui        ra, 23
                  c.mv         s4, s6
                  c.mv         s7, t1
                  sub          s1, t0, a4
                  c.and        a1, a1
                  c.li         s0, -1
                  add          s9, s1, s0
                  mulhsu       ra, s5, t5
                  auipc        s5, 516899
                  and          s4, a7, a2
                  sll          t1, gp, t6
                  c.lui        a2, 19
                  xori         zero, a3, 1874
                  srli         s4, a3, 25
                  srai         s7, a6, 20
                  sub          a1, s1, zero
                  c.srai       a0, 12
                  auipc        a0, 510527
                  mul          zero, s1, s2
                  c.andi       a0, -1
                  slti         s5, s7, 1926
                  c.slli       s2, 28
                  mulh         s6, s1, t5
                  slli         t3, s4, 12
                  c.srli       a4, 11
                  c.andi       a4, 9
                  mulhsu       t3, s11, t2
                  sll          zero, t3, t6
                  mulh         zero, a0, a1
                  c.and        a0, s1
                  ori          t1, s3, 862
                  sub          zero, s7, a3
                  add          s5, tp, s4
                  sltu         a6, s10, ra
                  sltu         s3, zero, zero
                  nop
                  c.addi       s3, 10
                  add          gp, t6, s0
                  auipc        a5, 125177
                  sll          a4, t6, gp
                  c.andi       a4, 24
                  c.xor        s1, a1
                  c.sub        s1, a0
                  sltiu        s10, s7, 1113
                  slti         a0, a7, -188
                  andi         t0, s4, -1423
                  c.slli       ra, 21
                  srai         s0, s11, 8
                  c.sub        a4, a4
                  add          t4, a2, s0
                  nop
                  ori          a6, ra, 248
                  srl          gp, t1, s0
                  addi         a5, tp, 1610
                  c.add        a1, t5
                  xor          t5, a5, a1
                  c.xor        a2, a1
                  c.add        s5, t4
                  c.xor        a5, s0
                  and          a1, s3, tp
                  srai         zero, s11, 17
                  mul          a4, t2, t1
                  c.nop
                  divu         a7, s5, s3
                  xor          a1, s5, gp
                  c.nop
                  c.nop
                  c.sub        s1, a5
                  c.addi       t5, 28
                  c.and        a4, a4
                  c.and        a5, s1
                  sltu         s10, s8, t0
                  mulh         s6, s3, s2
                  c.srai       a0, 17
                  sub          s10, s6, s8
                  rem          t4, s11, s0
                  c.or         a2, a2
                  mulhsu       gp, s10, t0
                  c.xor        a2, s1
                  slli         a7, t0, 16
                  c.sub        a4, a5
                  sltiu        a2, sp, -1281
                  srli         gp, s8, 25
                  slti         a2, t2, -1634
                  srli         s5, s9, 16
                  remu         a6, ra, t4
                  c.addi       a0, 25
                  or           gp, a6, a6
                  rem          s1, s11, s10
                  xori         t2, t6, -1936
                  srai         t0, s11, 16
                  ori          ra, tp, -1235
                  xor          a2, s8, s10
                  addi         s6, ra, -1082
                  xori         a2, ra, 1398
                  add          s4, sp, s9
                  srai         s1, t3, 6
                  slli         s3, a4, 23
                  sra          t3, a1, t3
                  c.or         s0, a3
                  c.srai       a5, 28
                  slli         s5, s9, 15
                  sltu         a5, a5, s9
                  divu         s5, a4, s1
                  remu         s9, t3, s8
                  slt          s9, ra, t4
                  xori         s1, s11, 967
                  c.nop
                  mulh         a0, s2, s3
                  srai         s3, t4, 11
                  srl          s0, t6, a3
                  sll          a2, s5, ra
                  c.and        a0, a2
                  c.li         s11, -1
                  divu         s3, s0, tp
                  auipc        s5, 947894
                  and          a4, a6, a0
                  c.xor        a4, s1
                  c.nop
                  c.srli       s1, 21
                  c.addi       a0, -1
                  and          s1, t0, a1
                  divu         s0, tp, s11
                  addi         s5, a5, 118
                  mul          a6, t3, tp
                  c.andi       a2, 18
                  slli         s2, a2, 17
                  andi         a1, sp, 1951
                  lui          a4, 84795
                  nop
                  srli         gp, s6, 13
                  rem          s0, sp, a0
                  c.andi       a4, 31
                  c.and        s0, a1
                  sltu         t3, sp, a2
                  lui          a5, 553792
                  sltiu        ra, a6, 1181
                  c.li         s6, -1
                  xor          a5, gp, t2
                  sll          t5, a4, a7
                  c.andi       a0, 30
                  mulh         s9, t0, s10
                  c.slli       tp, 2
                  c.nop
                  slt          gp, t3, a4
                  mulh         s10, tp, s2
                  xori         t2, t0, 1014
                  nop
                  nop
                  nop
                  remu         a7, a7, s9
                  slt          a1, zero, t2
                  mulhu        s9, s10, s5
                  srli         a5, t5, 30
                  c.lui        s5, 3
                  sll          gp, s8, s4
                  c.mv         a5, s11
                  rem          a1, a1, zero
                  c.and        a5, a5
                  c.andi       s0, -1
                  and          t0, ra, a4
                  c.addi       a5, -1
                  c.lui        s11, 6
                  sltiu        t4, a3, 1924
                  sltiu        tp, ra, 1372
                  lui          a2, 750233
                  c.sub        a1, a3
                  sub          t4, ra, t2
                  c.srli       a5, 27
                  c.lui        a1, 24
                  andi         t3, s0, 168
                  andi         t5, a2, -1993
                  add          s1, t5, s7
                  mul          a2, sp, s10
                  or           s9, s6, a6
                  srl          s10, a4, t0
                  c.andi       a1, -1
                  srl          t1, a6, s1
                  ori          s3, s4, 1801
                  srl          a5, s0, t2
                  srl          a1, a4, s4
                  mul          t5, a2, s7
                  c.sub        a0, a4
                  c.srai       a1, 16
                  c.sub        a5, a5
                  c.nop
                  nop
                  c.or         s1, a5
                  ori          a2, gp, 1741
                  sub          a4, zero, t2
                  add          ra, a0, s10
                  rem          a6, t4, s3
                  c.and        a0, s1
                  andi         a6, zero, 2027
                  sll          t0, t0, t5
                  srai         s10, a6, 1
                  c.and        s0, a2
                  lui          s5, 33255
                  and          s1, zero, gp
                  srl          a4, s9, a0
                  nop
                  andi         a5, ra, -1716
                  sltiu        a2, tp, 942
                  rem          a5, t4, a6
                  c.nop
                  auipc        tp, 529109
                  or           a1, t6, t4
                  sub          gp, sp, a6
                  c.add        t0, t6
                  c.and        a1, a5
                  c.li         a1, 22
                  c.lui        a0, 21
                  remu         gp, s10, s9
                  mulhu        s11, a0, s3
                  srl          a6, s4, t3
                  mul          t1, ra, a2
                  mulh         t2, t5, tp
                  c.li         a7, 21
                  mulh         zero, t5, s9
                  rem          gp, s7, t0
                  nop
                  mulh         s4, s4, s1
                  addi         zero, s0, 446
                  auipc        a1, 580709
                  sltiu        a1, a7, -1201
                  sub          s4, a4, s7
                  sltu         t4, t2, a5
                  remu         t0, ra, a0
                  div          s10, s6, a1
                  c.li         gp, -1
                  c.srli       s0, 18
                  srl          t0, s10, t0
                  andi         t3, s9, 1714
                  mulhu        ra, t3, tp
                  xor          t1, t3, s7
                  sltu         t3, a0, s4
                  srl          t6, t2, a5
                  sltiu        t5, t2, 1302
                  remu         t6, s4, t1
                  srai         a2, sp, 6
                  remu         s1, t4, a6
                  add          zero, a4, a3
                  c.and        a4, a1
                  c.mv         s10, s11
                  c.srli       s0, 30
                  c.mv         s11, t6
                  andi         s2, t4, 301
                  c.andi       s1, -1
                  sra          a1, t1, s1
                  mulhsu       s2, a4, sp
                  c.add        t1, t6
                  div          s9, gp, zero
                  rem          t4, a1, a1
                  c.xor        a0, a4
                  ori          s10, a4, 1368
                  c.slli       t4, 4
                  sub          t4, s3, a0
                  sll          t0, s0, s4
                  srl          ra, ra, a5
                  mulhu        s9, t6, t3
                  c.andi       a4, -1
                  xor          s3, t2, a0
                  sltu         a1, t6, s7
                  xor          s10, s3, s1
                  c.xor        a4, a3
                  c.srai       a2, 30
                  c.mv         a4, s8
                  c.srli       a1, 5
                  andi         t0, s8, 1594
                  c.and        a2, a0
                  slt          s10, sp, s5
                  sltu         a0, a6, gp
                  c.li         t6, -1
                  xori         t5, a6, 600
                  and          s3, s1, s3
                  mulhsu       s10, a1, s11
                  c.and        s0, a0
                  div          s5, t5, zero
                  mulh         t4, a2, a3
                  or           s2, zero, a1
                  mulhu        t4, s11, a4
                  c.slli       t1, 11
                  sltu         t3, tp, a4
                  divu         gp, s0, a2
                  c.add        t4, s1
                  xor          s9, s10, a5
                  slt          ra, a4, a1
                  andi         t1, t3, -1957
                  srl          a2, s3, s0
                  slt          a0, a6, t2
                  sra          s1, sp, s11
                  xor          a0, a2, t6
                  sra          t1, t1, s4
                  sltiu        a0, t0, 321
                  and          t1, a4, zero
                  rem          tp, s10, s1
                  and          s7, a0, s5
                  divu         t4, a3, t4
                  sltu         gp, s0, a5
                  nop
                  sub          s0, a2, s2
                  rem          s5, s10, s8
                  addi         gp, t5, -1446
                  mulhsu       s0, t3, t5
                  addi         a5, ra, 1615
                  slli         a1, t2, 6
                  srli         s11, t6, 1
                  mulhu        s11, s4, s6
                  lui          a1, 661053
                  c.mv         t5, tp
                  nop
                  srl          a4, s4, s5
                  c.sub        a0, a1
                  c.andi       a1, -1
                  c.and        s1, a0
                  sra          a7, t1, a3
                  slli         a6, zero, 5
                  c.add        a1, t6
                  c.srli       s0, 22
                  srai         s0, ra, 4
                  srli         s7, zero, 10
                  c.and        s1, a3
                  xori         t1, a0, 1628
                  and          t4, sp, a7
                  add          a7, s9, s5
                  and          s5, a4, s10
                  c.addi       t4, 12
                  or           s0, a3, t6
                  c.and        a2, a4
                  add          gp, a5, ra
                  nop
                  c.mv         tp, s10
                  slt          a0, ra, s9
                  mulhu        a1, t1, t3
                  sll          s6, t3, a7
                  c.nop
                  addi         s2, t1, -596
                  c.slli       a4, 18
                  sltu         a1, s6, a5
                  xor          zero, a2, a2
                  srl          s10, t1, t4
                  or           a0, sp, ra
                  mulhu        s3, t0, t5
                  slli         a7, gp, 18
                  mulhu        t2, t4, a0
                  srli         s9, s9, 0
                  auipc        zero, 752218
                  lui          a7, 972100
                  mulhsu       t4, t3, s8
                  xori         t1, a0, 449
                  rem          s6, s3, s0
                  mulhu        t6, t0, t0
                  c.slli       gp, 8
                  remu         t4, t6, s1
                  rem          a1, t6, tp
                  srli         t5, t4, 9
                  nop
                  c.add        a0, s3
                  srai         a2, t3, 16
                  andi         s7, a4, 1703
                  c.srli       a1, 30
                  add          s6, t0, s9
                  addi         a5, s0, -375
                  mul          a7, s10, s9
                  c.xor        a2, a0
                  c.lui        s2, 11
                  c.lui        a6, 9
                  c.sub        s0, a1
                  c.sub        a2, a1
                  div          a0, s7, a3
                  c.srli       a2, 11
                  srli         ra, a0, 4
                  sra          s5, t6, s10
                  sltiu        s0, t4, -1055
                  c.sub        s1, s1
                  andi         a4, s9, 660
                  c.xor        a4, a0
                  sub          a2, a1, s7
                  sltiu        ra, a7, 932
                  sltu         s3, s11, a0
                  xor          s9, t5, s8
                  sll          s0, a7, zero
                  andi         t1, s1, -720
                  andi         s6, a3, 733
                  c.andi       a5, -1
                  srl          t2, t3, s2
                  xor          t3, ra, t6
                  and          a6, t1, a6
                  slli         s6, s9, 25
                  c.and        a2, a2
                  c.mv         t2, a0
                  sll          a1, a7, ra
                  srl          s7, s8, t3
                  c.nop
                  sll          zero, gp, t2
                  ori          a7, s6, 544
                  sltiu        s4, a1, -1466
                  addi         t4, a0, 1925
                  c.nop
                  xor          t3, ra, a0
                  mul          a7, tp, t5
                  sll          s10, s3, gp
                  sll          s7, s7, t1
                  c.and        a1, s1
                  rem          a7, a6, sp
                  srai         t1, s6, 13
                  sll          s10, s8, s10
                  c.mv         s4, s7
                  or           a6, s11, t1
                  slli         a1, s0, 16
                  sll          ra, s4, t0
                  c.and        a5, a3
                  nop
                  c.lui        a2, 16
                  c.srli       s1, 21
                  xori         a5, a5, 2036
                  c.li         a7, 30
                  srli         s3, s0, 29
                  auipc        s5, 258092
                  mulhu        a1, t4, s6
                  mul          ra, t6, a4
                  sltiu        a2, s9, -935
                  addi         s2, zero, -175
                  div          t2, t3, a0
                  c.slli       t4, 15
                  srli         t3, a4, 13
                  ori          t3, a5, 737
                  srli         s2, s6, 29
                  auipc        t3, 821603
                  mulh         gp, s5, a1
                  c.srli       a4, 27
                  c.andi       a4, 0
                  nop
                  sltu         t4, s11, t5
                  c.xor        a0, a5
                  mulhsu       s6, t3, a7
                  c.slli       t6, 9
                  andi         ra, s0, -740
                  andi         tp, t5, 1070
                  c.and        a0, a2
                  lui          gp, 125961
                  and          t2, s10, tp
                  div          s5, t5, t6
                  and          t1, s2, s6
                  sra          s4, t1, t2
                  sltiu        s5, a3, 2014
                  c.nop
                  lui          a5, 1030825
                  c.xor        a2, s0
                  xori         tp, s9, 352
                  c.sub        a4, a2
                  ori          t6, t5, -1923
                  div          s0, t3, t2
                  slti         s10, t1, -1959
                  xor          zero, a1, s5
                  c.nop
                  remu         t1, a6, s1
                  mulhsu       t0, a0, s0
                  c.add        a7, s0
                  c.add        s10, s5
                  mulh         s5, t5, t2
                  c.andi       a2, -1
                  slti         s1, a5, -1709
                  c.srai       s1, 10
                  andi         a0, t0, -1224
                  srli         t2, a2, 21
                  c.nop
                  remu         s2, s3, t1
                  c.andi       s0, 15
                  sub          t0, s5, t4
                  sra          a0, a7, t6
                  c.addi       s11, 13
                  lui          a5, 733185
                  slt          zero, s11, s8
                  sra          s9, t2, t3
                  nop
                  lui          a4, 333645
                  sltiu        t0, a7, -601
                  c.lui        s3, 26
                  srl          zero, s2, ra
                  mulh         s3, a7, t0
                  srai         t3, s10, 21
                  c.addi       t5, 14
                  c.nop
                  and          a4, t3, a2
                  mulhsu       t2, tp, a0
                  c.addi       t1, 12
                  or           a7, t0, t4
                  c.add        s9, a7
                  sub          t6, t3, t2
                  c.or         a0, a5
                  c.and        a0, a0
                  c.addi       s0, -1
                  c.sub        s1, a2
                  c.slli       a1, 1
                  c.addi       s6, -1
                  sltiu        s3, t4, -1287
                  and          t1, zero, a7
                  mulh         t3, a4, gp
                  sltiu        a1, a2, -1389
                  srai         s6, t2, 8
                  xor          tp, t1, a7
                  sltu         a2, s10, zero
                  c.slli       a6, 9
                  c.xor        a5, a0
                  c.mv         a7, a2
                  c.and        a2, s0
                  slti         s0, t6, 1568
                  ori          s7, a1, -1361
                  mulhu        a6, a1, tp
                  xori         a0, a1, 1073
                  c.srai       a0, 14
                  mul          s3, a7, t6
                  mul          a2, a1, s2
                  sra          t5, s1, a3
                  sltu         s11, s2, sp
                  c.nop
                  sll          a1, a2, s11
                  nop
                  mul          a1, a3, s4
                  mulhu        a0, t3, t3
                  c.nop
                  add          s0, a5, t4
                  mul          t0, a6, s4
                  c.andi       a4, 7
                  andi         s1, a4, 1658
                  slti         t6, t1, 1541
                  slli         ra, t6, 1
                  c.li         s3, -1
                  slli         t5, a3, 10
                  divu         a2, t2, a3
                  xor          s2, t2, a3
                  c.and        s0, a3
                  c.srai       a5, 18
                  divu         a0, s1, s11
                  c.srai       a4, 25
                  c.nop
                  and          s2, s9, a5
                  rem          t4, a2, s5
                  sll          s4, t5, a0
                  and          t0, s1, t5
                  xor          gp, s0, tp
                  xor          s7, s11, a1
                  rem          a5, t6, ra
                  c.nop
                  c.xor        a2, s1
                  andi         a5, t0, -835
                  c.slli       s6, 18
                  sub          t4, t4, tp
                  c.add        t1, s9
                  c.srli       a2, 7
                  slt          t4, t6, s3
                  c.nop
                  c.srai       a5, 4
                  ori          t2, s8, -1066
                  or           s0, s0, s2
                  and          s0, s5, a2
                  auipc        s7, 176217
                  c.sub        s0, s1
                  slti         a4, t0, -1225
                  divu         s5, t1, s1
                  auipc        s4, 468302
                  addi         a5, zero, 1429
                  auipc        s7, 874420
                  mulhu        s5, ra, a0
                  mul          t3, s11, t3
                  nop
                  xor          ra, s5, a5
                  nop
                  c.xor        a5, a1
                  add          s4, s7, a6
                  c.mv         s4, tp
                  auipc        s7, 715675
                  sub          s7, t6, s2
                  c.or         s0, a5
                  slt          s11, zero, s11
                  add          a7, s0, a4
                  and          ra, s3, t1
                  c.nop
                  c.srli       s0, 9
                  c.mv         s11, s6
                  add          a6, a4, s7
                  c.xor        a5, a2
                  c.addi       t0, -1
                  rem          s9, s5, t0
                  srli         s7, s0, 21
                  c.and        a0, a3
                  ori          a4, a3, -140
                  auipc        a2, 630198
                  and          t6, a5, tp
                  lui          tp, 161375
                  slti         a5, ra, -1306
                  c.mv         s6, a2
                  c.srai       a2, 17
                  c.andi       a0, -1
                  rem          a2, t3, tp
                  and          s3, a1, a6
                  mulh         a2, tp, s0
                  srl          t0, s11, sp
                  mulh         s6, t3, s10
                  slti         s0, s8, -662
                  and          a5, t0, s10
                  or           a4, s0, s6
                  c.srai       a4, 9
                  remu         s1, s7, s10
                  c.add        s1, s2
                  c.addi       t1, 24
                  remu         t5, a3, gp
                  srai         s3, s7, 4
                  sll          tp, s2, zero
                  mulhsu       s0, s1, s7
                  xori         a4, s9, 1568
                  srl          t1, t3, s0
                  divu         a6, s5, s7
                  sll          s3, s5, s3
                  div          t2, ra, t0
                  divu         s9, s5, t2
                  c.mv         t5, s8
                  xor          t6, s9, s2
                  c.nop
                  or           a2, t2, zero
                  c.lui        s9, 31
                  div          a0, sp, a3
                  remu         t2, sp, s0
                  c.addi       t5, 9
                  c.srli       a5, 21
                  c.srai       a0, 14
                  c.mv         a0, s5
                  mulhu        t4, s3, a5
                  srli         t6, a3, 11
                  divu         s0, s6, a2
                  divu         t4, s7, t0
                  and          t0, s11, a7
                  sub          t2, s8, s5
                  c.srli       a4, 6
                  c.andi       s0, -1
                  c.and        s0, a2
                  c.and        a1, a3
                  srl          t6, a0, s4
                  add          s7, s9, s2
                  sub          a1, a6, a7
                  add          a4, t3, a5
                  mulhsu       t0, s3, s2
                  sltu         s2, s10, a1
                  c.xor        a2, a2
                  mulh         tp, s10, s7
                  mulh         s10, s6, a2
                  sltiu        s7, a1, 1589
                  c.add        s5, s8
                  c.xor        a4, s0
                  c.addi       ra, -1
                  remu         s2, a6, s11
                  c.li         tp, -1
                  xor          s6, a3, t0
                  slt          zero, s3, t1
                  c.or         a5, a2
                  c.xor        a2, s0
                  c.nop
                  sltiu        ra, s9, -1694
                  divu         s5, a5, s1
                  c.slli       t1, 18
                  sub          s2, s4, t2
                  sub          a0, t4, s5
                  slli         t6, s6, 25
                  xor          s0, s11, s7
                  xor          t4, s3, s7
                  slti         s1, s6, -1015
                  divu         ra, a4, a3
                  div          s2, a1, s10
                  c.srli       a2, 24
                  ori          a5, a5, -379
                  c.slli       a2, 4
                  slt          s4, t4, t0
                  c.sub        a5, a1
                  xor          a4, s8, s6
                  c.or         a4, s0
                  sltu         a0, t0, a5
                  c.xor        a0, s0
                  c.nop
                  c.or         s1, a3
                  mulhu        s6, gp, s1
                  rem          s4, a1, a6
                  c.srli       s0, 7
                  c.add        t0, t5
                  xor          t4, s3, s9
                  divu         s0, a1, s3
                  sra          t2, a4, t2
                  c.addi       s6, -1
                  srli         s5, tp, 31
                  srai         t4, s3, 31
                  xori         t1, a2, -402
                  add          s2, t0, s0
                  slti         t6, s6, -783
                  sll          zero, sp, a6
                  slti         a6, sp, 1846
                  srli         zero, a7, 17
                  c.sub        a5, s0
                  div          s10, t5, sp
                  c.li         s9, -1
                  addi         a1, s7, -933
                  c.li         s0, 23
                  srl          s11, s3, a2
                  c.lui        s10, 16
                  srl          t2, s9, a3
                  slti         t0, gp, -1505
                  andi         s0, t2, 1947
                  c.lui        a5, 9
                  mulhu        tp, a6, t4
                  c.slli       s1, 21
                  c.lui        s6, 4
                  sltiu        ra, s6, -204
                  srai         s3, a6, 9
                  ori          t4, t2, -1262
                  mulhu        s10, a2, s8
                  srli         s9, a0, 9
                  sub          a6, a5, a0
                  srl          a2, s10, a6
                  c.srli       s1, 4
                  addi         s4, s6, 491
                  mul          a5, s7, a3
                  sll          s10, t2, gp
                  sra          a0, s0, s5
                  c.add        a4, t6
                  andi         gp, s1, 1558
                  xor          zero, a3, a2
                  c.mv         s7, a1
                  ori          t3, s1, -583
                  sltu         s10, ra, s3
                  addi         t3, a4, 313
                  mulhu        s2, a1, s9
                  slli         s10, s8, 16
                  srli         s5, ra, 19
                  c.li         a5, -1
                  and          s11, t6, a7
                  c.slli       s5, 7
                  slt          s1, zero, s4
                  c.lui        a6, 10
                  sltiu        a5, a1, 1475
                  c.andi       a2, -1
                  srl          zero, ra, t2
                  sra          s10, t0, zero
                  ori          t5, tp, 899
                  sltu         t1, s5, s5
                  mulh         s5, s10, s10
                  c.or         s0, a2
                  c.and        a4, a1
                  c.nop
                  mul          s10, a6, ra
                  lui          gp, 180527
                  auipc        a6, 317792
                  c.srai       a1, 25
                  lui          t4, 167878
                  xor          s5, a4, s9
                  div          t5, s3, tp
                  auipc        a0, 204200
                  xor          t3, a6, s0
                  slt          t4, a4, s5
                  c.andi       a2, 25
                  srli         a0, t1, 24
                  xori         s10, a4, 42
                  mulhsu       s9, s3, a6
                  sltiu        s1, s2, -1218
                  ori          t3, t2, 101
                  mulh         s7, s1, t0
                  srai         s1, a5, 25
                  sltu         s2, a1, a3
                  or           s5, t2, t3
                  srli         a5, gp, 27
                  ori          t4, s8, 258
                  slti         s10, sp, -1216
                  mulhu        t6, a2, sp
                  c.xor        a5, a1
                  c.srai       a5, 29
                  slt          s10, s11, s2
                  slli         gp, s4, 9
                  auipc        t2, 243456
                  ori          s9, a7, -1175
                  c.nop
                  mul          a2, a4, t4
                  c.xor        a4, a2
                  xor          s4, s2, s8
                  c.nop
                  lui          a6, 17306
                  xor          gp, s0, sp
                  andi         t6, a0, -1628
                  remu         a6, s5, a1
                  divu         t4, a0, zero
                  c.li         s9, 29
                  srl          a0, ra, t4
                  sll          s6, t1, a7
                  srai         gp, s4, 5
                  ori          s7, s10, 82
                  andi         t0, s10, 823
                  andi         s4, a7, 866
                  c.sub        a5, s1
                  c.andi       a4, 14
                  lui          a2, 500275
                  c.slli       s5, 7
                  lui          s11, 772067
                  mulhsu       s11, a2, tp
                  slt          s6, sp, t6
                  slt          s5, ra, a6
                  nop
                  remu         t4, s10, s4
                  c.srli       a4, 4
                  c.srli       s1, 9
                  c.srai       a2, 25
                  c.xor        s0, a3
                  c.li         a4, -1
                  srai         s10, a1, 19
                  mul          s2, a5, t5
                  mulhsu       t2, zero, t3
                  add          s5, s6, a0
                  c.xor        s0, a3
                  sltiu        a6, a1, 1580
                  sll          a6, s11, t5
                  c.li         t5, -1
                  c.add        s5, s9
                  c.lui        s9, 6
                  c.and        a0, a2
                  srli         s9, t0, 4
                  xor          t4, t2, t0
                  slli         s2, sp, 24
                  c.addi       ra, 6
                  slli         a5, gp, 30
                  srl          gp, t4, s6
                  srli         ra, s7, 14
                  div          s9, a6, s9
                  remu         zero, gp, gp
                  c.add        gp, s3
                  c.nop
                  slti         a6, ra, 1993
                  nop
                  mulh         a2, s10, t0
                  mulhu        s11, tp, s0
                  c.and        a0, a2
                  c.and        a5, a5
                  c.nop
                  c.or         s1, s1
                  srai         t4, tp, 11
                  c.srai       a2, 21
                  divu         t2, t6, s9
                  nop
                  ori          a5, t3, -1311
                  sra          t6, s1, s10
                  c.and        a5, a5
                  div          s10, s5, zero
                  mulhsu       tp, s4, s8
                  srai         s7, s1, 25
                  sra          s11, s2, t0
                  xor          t5, s1, s10
                  xor          t3, s6, s4
                  srli         t2, t1, 9
                  auipc        zero, 213037
                  sll          s3, s10, s8
                  div          s0, tp, gp
                  srl          t0, ra, s2
                  sra          s5, a1, a0
                  c.li         tp, 2
                  auipc        s10, 230471
                  xor          tp, s5, s7
                  auipc        s6, 540005
                  c.andi       s0, -1
                  nop
                  xori         s5, a4, -1546
                  xori         zero, s6, 1435
                  c.add        t6, a0
                  slt          s0, a2, s7
                  divu         a6, t4, s7
                  and          gp, s8, t5
                  xor          a1, zero, s9
                  div          a4, a5, a6
                  srai         s6, s2, 2
                  c.srli       a5, 24
                  sub          ra, a5, s2
                  c.add        t4, s0
                  sltu         t1, s10, a0
                  c.nop
                  sltiu        a6, s5, 1025
                  srli         s3, t2, 21
                  c.andi       a0, -1
                  sltiu        s3, t5, -542
                  sltu         a2, t3, a7
                  and          s2, t5, s5
                  sltu         s1, s4, a0
                  c.addi       a4, 9
                  c.add        tp, s5
                  sub          zero, s4, s11
                  c.xor        a4, a4
                  andi         a0, a5, -334
                  nop
                  andi         s4, sp, 1521
                  add          t3, s5, a4
                  srai         a6, gp, 27
                  c.sub        a0, a4
                  and          s1, s11, tp
                  srli         t5, a7, 13
                  srli         t5, s7, 6
                  c.or         a2, a1
                  c.and        s1, a3
                  mulhu        gp, s3, s1
                  c.sub        s1, s1
                  c.srai       a1, 28
                  remu         s11, t2, s8
                  c.add        s11, t3
                  or           a2, s7, t5
                  srai         t0, a5, 28
                  c.and        s1, a1
                  srl          ra, a2, a3
                  sltiu        s1, a3, -307
                  sra          ra, t6, s2
                  remu         zero, s11, s10
                  c.srli       a5, 19
                  mulhsu       s7, a7, s0
                  nop
                  mulhu        s1, s8, s4
                  c.or         s1, a3
                  c.or         a1, a1
                  c.li         ra, 27
                  lui          tp, 741488
                  c.li         a6, 26
                  c.andi       s1, 5
                  srai         zero, a5, 29
                  c.addi       t1, -1
                  c.or         a1, a2
                  xor          gp, a6, ra
                  add          a2, s9, t6
                  xori         s5, t4, -702
                  slti         a1, t0, -831
                  c.add        s2, s11
                  c.srai       a5, 9
                  or           s1, t5, s2
                  c.or         a4, a5
                  xor          t4, t2, ra
                  c.andi       s0, -1
                  c.or         s1, a2
                  mulh         s5, t2, s8
                  div          a4, a7, s8
                  sltiu        zero, s11, -1667
                  divu         t3, s0, s6
                  slt          t3, s4, a3
                  add          a6, s2, a6
                  slt          a4, t6, a7
                  c.srli       a4, 5
                  c.lui        a7, 4
                  remu         t4, s3, a7
                  c.or         a0, a2
                  srli         s3, a7, 14
                  lui          s1, 521385
                  lui          zero, 546662
                  sra          s10, a4, a7
                  and          a0, a5, t5
                  and          t0, s8, s7
                  ori          s10, t0, 1146
                  c.mv         s2, s1
                  c.lui        a7, 24
                  c.lui        a5, 20
                  c.nop
                  c.lui        tp, 2
                  rem          s1, t3, s8
                  slli         gp, s0, 20
                  or           s3, s11, s6
                  sub          gp, gp, s9
                  auipc        s11, 896894
                  c.li         s0, 27
                  or           t5, s9, zero
                  sltiu        a5, t3, 1863
                  mulhsu       tp, a4, s1
                  slti         a2, ra, -1100
                  and          ra, s0, s0
                  nop
                  c.li         tp, 28
                  auipc        t2, 744151
                  c.mv         s5, s6
                  and          s4, s0, t2
                  and          a6, t3, a0
                  slti         s9, a5, 1302
                  srai         gp, gp, 16
                  slt          a1, t2, tp
                  xor          t2, s5, s3
                  srai         a6, s8, 19
                  c.add        t4, t4
                  add          t0, s9, t6
                  addi         s2, a1, 501
                  nop
                  c.srai       a2, 5
                  sll          a4, s10, t2
                  sltiu        s1, s7, 327
                  sll          s2, s3, sp
                  xori         t1, t2, 1915
                  or           s11, a6, tp
                  sub          s6, s11, s7
                  c.srli       a5, 23
                  auipc        s5, 32371
                  srli         s3, a7, 21
                  srai         a2, s9, 22
                  c.add        s0, a5
                  c.addi       s11, 18
                  or           a5, s10, t5
                  sub          s9, s11, s0
                  c.addi       t5, -1
                  mul          a2, s7, a0
                  srli         t2, t0, 27
                  c.sub        a1, a4
                  c.addi       t4, -1
                  and          a1, a1, s7
                  andi         t5, s0, 1462
                  andi         gp, gp, 1228
                  slt          s1, a3, t2
                  sub          s0, t6, a3
                  srli         a6, s5, 22
                  c.and        a2, a3
                  ori          t2, s1, 940
                  sltiu        s7, tp, 1350
                  divu         gp, a5, zero
                  slli         s5, s5, 24
                  or           a0, t4, ra
                  sub          t3, t0, t4
                  c.andi       a4, -1
                  c.or         a5, s0
                  srai         t5, gp, 21
                  slli         s7, t1, 15
                  or           s2, t6, s8
                  mulhu        t0, s2, gp
                  xori         a6, a0, -457
                  sub          a1, s9, gp
                  c.xor        s1, s1
                  sra          s10, a2, t2
                  slli         a7, t5, 1
                  c.addi       s9, -1
                  ori          s5, t4, -1375
                  c.sub        a4, a4
                  sub          a2, gp, a4
                  c.and        a2, a2
                  sra          a5, t3, a2
                  add          tp, a7, t5
                  mulh         a2, sp, s2
                  c.and        a5, a3
                  lui          t4, 118352
                  mulhsu       tp, t3, t2
                  c.li         s11, -1
                  slli         a1, ra, 5
                  sltiu        s7, s8, 620
                  sltiu        a0, t4, 623
                  addi         a0, s5, 834
                  mulh         s0, s4, s11
                  slt          a4, t6, s11
                  xori         s10, s7, 285
                  divu         s2, t6, t5
                  sltu         s10, s5, t1
                  c.or         a4, a0
                  c.srai       a1, 23
                  andi         a0, t0, -585
                  remu         s9, s1, a6
                  add          s10, t3, gp
                  xori         s1, t5, -693
                  c.addi       a5, 30
                  auipc        a6, 546227
                  c.li         t0, 8
                  c.add        a6, s10
                  or           s1, a5, a7
                  c.mv         s11, a4
                  mulhu        s10, s9, t6
                  c.lui        a5, 16
                  mulhsu       t1, zero, a1
                  rem          t0, t6, s4
                  slti         s11, s0, -2043
                  mulhu        tp, t0, s9
                  slti         s4, s0, -298
                  sltiu        a7, a6, 1449
                  ori          t6, t6, -1086
                  c.srli       a0, 30
                  mulh         a2, t4, a0
                  mulhsu       t6, s0, s5
                  srl          a7, s3, a5
                  add          t1, t6, gp
                  slli         s5, s7, 13
                  xor          s5, s4, s7
                  c.srli       s1, 1
                  srli         s1, t2, 5
                  c.andi       a0, 11
                  c.mv         s10, gp
                  mulh         a1, s9, t0
                  c.or         a2, s1
                  c.add        tp, s10
                  xor          t0, s0, t5
                  auipc        ra, 1008874
                  mulh         t1, a6, t2
                  srl          s2, s4, s2
                  c.add        s9, s2
                  srai         s6, s2, 27
                  sltu         t3, s4, a6
                  mulhu        ra, a4, s4
                  or           a1, s1, a0
                  c.srli       a5, 13
                  xori         ra, s1, -1149
                  c.nop
                  rem          a5, s11, a5
                  c.mv         a1, a3
                  mul          t5, s6, t6
                  slli         s0, a7, 24
                  rem          s5, s1, zero
                  mul          s9, a7, t0
                  c.srli       s0, 13
                  srli         t1, ra, 26
                  sra          s3, zero, t3
                  rem          t4, t4, gp
                  sll          s11, a2, ra
                  c.or         s0, s1
                  xor          a0, s10, t3
                  c.slli       gp, 20
                  mulhu        t6, t2, t5
                  slt          ra, a1, a7
                  xori         gp, s1, -15
                  lui          t1, 10383
                  rem          t5, a2, a3
                  add          s9, t5, t3
                  mulhu        s5, a6, sp
                  auipc        a2, 125240
                  xori         s5, gp, -563
                  c.mv         s0, t6
                  ori          s10, s1, 1909
                  c.srai       a1, 2
                  mulhu        gp, a4, s3
                  andi         a2, ra, 986
                  c.li         gp, -1
                  c.or         a1, s1
                  slli         a5, sp, 20
                  c.srai       s0, 20
                  c.add        t1, tp
                  div          t6, s8, s9
                  c.srai       a5, 22
                  rem          t6, a7, s9
                  c.nop
                  lui          a6, 959170
                  nop
                  sra          a5, a1, s11
                  srl          s5, a4, a1
                  or           s0, a2, t0
                  rem          t1, ra, tp
                  mul          a1, s9, t1
                  mulhu        t3, a7, a1
                  or           a6, sp, s9
                  slli         s10, s0, 14
                  mulh         s4, s7, t1
                  slti         gp, t3, -151
                  mul          a6, a2, t6
                  c.lui        s0, 14
                  srai         a6, t3, 24
                  nop
                  mulh         s7, t2, s0
                  slt          gp, a6, s5
                  addi         a7, s7, 1570
                  c.srli       a2, 23
                  sll          zero, a6, s9
                  or           gp, a4, s4
                  c.andi       s1, -1
                  sltiu        zero, a2, 929
                  c.li         a1, 19
                  divu         tp, ra, s4
                  srai         t6, s6, 19
                  srl          t3, s7, a0
                  c.or         s1, a1
                  div          t3, s11, s0
                  c.or         s1, s1
                  c.andi       a2, -1
                  sltu         a1, s7, s8
                  slli         s6, a6, 5
                  srli         t1, zero, 30
                  or           t3, t1, s2
                  mulhsu       s1, a2, sp
                  sltu         gp, s2, t3
                  sra          a6, s0, t4
                  sra          s9, s8, s7
                  sll          a5, a7, s2
                  c.mv         t6, t4
                  c.andi       a2, 21
                  mulhu        a4, t2, a5
                  add          t1, t1, a3
                  mulhu        t5, t4, s2
                  c.add        t0, a7
                  andi         s9, s4, 1644
                  sltiu        s0, zero, 738
                  sub          t2, tp, s10
                  div          s0, s6, s8
                  mulh         gp, a5, ra
                  c.li         s1, 9
                  c.li         a5, 15
                  sltiu        a2, s0, 200
                  or           t6, t3, s4
                  c.srai       a1, 4
                  c.srai       s1, 20
                  xori         t3, a4, 1215
                  srl          s1, t5, t5
                  add          a0, s10, t3
                  c.and        s1, a5
                  mulhsu       a7, s11, a3
                  mulhsu       s0, t4, s11
                  srai         s10, s1, 31
                  c.and        s1, s0
                  c.xor        s0, s1
                  sltiu        t1, a4, 1997
                  mulh         a0, s2, t6
                  c.mv         t2, s5
                  c.andi       a5, 3
                  slti         ra, t5, -394
                  auipc        s11, 176172
                  slli         s7, s10, 30
                  slt          s11, s6, a2
                  mul          a4, s7, sp
                  sub          t0, t5, s5
                  c.or         s1, a3
                  c.xor        s0, a5
                  slli         zero, a3, 9
                  rem          s0, a1, s2
                  rem          t4, t0, a7
                  c.nop
                  slli         t6, a2, 22
                  c.mv         s9, s8
                  c.lui        s9, 13
                  c.and        a1, a2
                  srli         s9, tp, 27
                  mulhu        t0, s2, t6
                  c.or         a5, a3
                  sltu         s5, ra, a5
                  sll          t3, tp, sp
                  mulhsu       a0, sp, zero
                  xori         t1, a4, -1195
                  auipc        a2, 405760
                  c.slli       a5, 1
                  div          t1, s10, s4
                  c.and        a4, a0
                  c.srai       a4, 12
                  sll          a6, s11, s9
                  xor          a0, a3, s2
                  rem          a2, a5, s3
                  mulh         t2, a3, t4
                  c.lui        a5, 10
                  rem          t2, s4, zero
                  div          a2, s1, sp
                  sra          tp, s2, t3
                  c.li         gp, 13
                  slti         t2, a7, -1875
                  mulhu        a1, s7, a2
                  sub          t4, a6, t6
                  auipc        t0, 24688
                  mul          s1, s7, s8
                  slti         s6, a5, -2022
                  div          a7, s9, t3
                  srai         a6, tp, 13
                  nop
                  and          t5, tp, tp
                  addi         s9, sp, 1559
                  c.mv         s0, a7
                  slli         t1, s8, 19
                  mulh         s10, s0, s5
                  auipc        a1, 22524
                  auipc        s0, 263377
                  nop
                  sltiu        a1, t2, -2007
                  c.srai       a5, 25
                  c.sub        a4, s0
                  mulhu        a0, s6, gp
                  mul          a0, zero, a4
                  sub          a5, a6, a2
                  c.nop
                  slti         s2, s1, -913
                  slti         a5, s3, -859
                  xori         s11, s8, 133
                  c.and        a5, a1
                  srl          t5, a0, a1
                  mulhsu       a5, s10, zero
                  c.addi       s3, -1
                  mul          t1, zero, a7
                  srl          t5, t6, t2
                  auipc        a7, 611127
                  auipc        t3, 134248
                  slli         a2, s1, 26
                  and          s9, s0, a6
                  srl          a2, t6, a2
                  remu         s11, t4, a6
                  srl          tp, s1, t2
                  mulhu        s10, sp, a3
                  mulh         t6, t2, s0
                  c.and        a4, s0
                  add          s10, t2, t2
                  xori         s3, t2, 214
                  lui          s11, 147322
                  sll          t3, s5, t3
                  c.xor        s1, a4
                  xori         s11, a5, 1867
                  c.srai       a1, 9
                  div          a5, s4, t4
                  srli         t6, zero, 25
                  sub          t2, t6, s3
                  sub          s9, a2, s7
                  c.xor        a5, a4
                  or           s7, s6, s3
                  sll          s1, a3, tp
                  c.slli       s6, 16
                  c.sub        s0, a1
                  divu         s0, s4, ra
                  sub          s7, t1, s9
                  c.or         a4, a0
                  slti         a2, a2, 160
                  addi         t0, a3, -369
                  slti         a6, s3, -287
                  c.srai       a0, 19
                  and          ra, s4, zero
                  slt          s5, ra, t1
                  slt          s0, s8, a4
                  mulh         t4, s6, s10
                  c.srli       s1, 9
                  ori          a6, t5, 148
                  mulhsu       zero, a2, s4
                  c.li         s6, -1
                  div          a6, a6, t1
                  c.nop
                  c.add        t4, a1
                  xori         s2, a3, 300
                  c.nop
                  andi         a6, s4, -1368
                  c.add        a4, a7
                  remu         s7, t0, gp
                  add          s2, s3, gp
                  div          s10, t1, ra
                  auipc        s2, 278492
                  c.mv         s9, s10
                  sll          t5, s7, s4
                  c.and        a4, a5
                  c.add        a6, s9
                  rem          gp, t0, a4
                  srai         s0, ra, 3
                  div          t3, a0, a1
                  nop
                  c.and        a2, s1
                  c.slli       tp, 12
                  c.nop
                  c.and        a4, a4
                  mulh         tp, a2, a1
                  add          s1, s11, t5
                  mulhsu       ra, a7, a7
                  c.sub        a4, a1
                  sltiu        s5, s5, 1719
                  mulhsu       a5, s11, sp
                  xori         s2, t6, 1461
                  c.andi       a4, -1
                  xori         tp, a3, -1314
                  remu         t4, a1, a1
                  c.li         t0, -1
                  c.mv         t6, s10
                  and          t1, a6, a5
                  nop
                  add          s0, s11, t2
                  c.srli       a0, 4
                  addi         s3, s4, -538
                  slt          s2, t0, s3
                  mulhsu       s0, s9, a3
                  sll          ra, s11, t6
                  c.slli       t6, 27
                  nop
                  c.and        a5, s0
                  c.add        s4, t0
                  sub          t3, a5, t3
                  ori          s6, t5, -305
                  mulhsu       a0, tp, s9
                  or           t4, a4, a0
                  c.srli       a5, 11
                  and          a2, a6, tp
                  rem          t2, t1, s6
                  remu         zero, s2, t5
                  c.srli       a5, 10
                  c.sub        s0, a3
                  srai         s9, gp, 31
                  xor          s7, s1, s6
                  c.srli       a1, 7
                  slti         a1, t3, 963
                  c.or         s0, a3
                  c.nop
                  divu         a0, sp, s11
                  remu         a2, sp, s10
                  div          gp, s7, s9
                  c.addi       ra, 19
                  sra          t2, s0, a2
                  rem          t2, a1, tp
                  c.mv         s1, t0
                  add          s10, s9, t6
                  c.lui        t6, 13
                  divu         t2, a7, t1
                  srl          tp, s5, t2
                  c.li         s9, 26
                  sll          s1, tp, s11
                  addi         t6, a3, 1927
                  mulhu        a0, a2, s2
                  slt          t4, a7, s5
                  rem          a2, s8, s6
                  auipc        a1, 502429
                  or           t0, s7, t5
                  nop
                  c.srli       s1, 29
                  add          t4, t4, t1
                  c.sub        s1, a0
                  c.slli       t4, 28
                  srli         t1, s4, 20
                  and          s7, s5, zero
                  slti         t5, t4, 1074
                  slt          t0, a6, gp
                  sll          a5, a5, a7
                  div          s10, a7, a1
                  c.or         s0, a0
                  c.xor        s0, s0
                  and          tp, s2, s8
                  c.add        a6, a4
                  mulhu        tp, a1, a2
                  srl          a5, a3, t4
                  auipc        s11, 744941
                  c.addi       t5, -1
                  sltu         a7, ra, s4
                  and          ra, t2, s5
                  c.xor        a0, a2
                  c.lui        s6, 11
                  c.srli       a5, 9
                  and          ra, a0, t3
                  addi         a0, a1, 351
                  mulhu        t2, zero, tp
                  add          a1, s4, s7
                  c.nop
                  srai         a5, zero, 26
                  xor          s2, a6, s7
                  sltu         t5, a7, s10
                  c.andi       a2, 14
                  mulhu        s0, a7, a5
                  c.srli       s1, 1
                  lui          s10, 997903
                  c.li         s0, -1
                  slli         s2, a3, 12
                  div          t6, a4, s5
                  srli         t2, a1, 23
                  srai         s6, s9, 0
                  c.sub        a2, a1
                  mulh         s7, t1, s0
                  div          t4, t1, ra
                  c.addi       s11, 8
                  mulh         s0, s8, t0
                  sltiu        s5, t2, -643
                  slli         s0, s6, 6
                  mulhu        t2, s3, s0
                  rem          s6, sp, gp
                  c.nop
                  c.srai       s1, 8
                  c.lui        s1, 20
                  xor          a1, s2, ra
                  lui          s10, 706943
                  sub          ra, s10, a7
                  c.addi       s4, -1
                  nop
                  slli         gp, ra, 11
                  and          zero, s8, a4
                  remu         t5, s3, a5
                  srai         t1, ra, 15
                  c.and        a4, a2
                  c.srai       a1, 16
                  srli         s10, s0, 30
                  mulh         a4, a7, t5
                  xor          s9, s4, a1
                  c.xor        a0, a5
                  c.li         s5, 29
                  remu         t0, a3, t5
                  and          s4, a3, s5
                  c.lui        ra, 14
                  nop
                  c.mv         t5, sp
                  rem          a4, a5, a2
                  and          t2, a1, s7
                  c.and        a0, a0
                  c.andi       a1, -1
                  slti         gp, s6, -616
                  c.srli       s1, 17
                  slt          s2, s2, s10
                  lui          zero, 10124
                  c.or         a1, s0
                  sub          s2, t5, a1
                  remu         gp, s8, sp
                  mul          t5, t2, a7
                  c.sub        s1, a4
                  sra          s7, ra, s6
                  nop
                  divu         a7, s4, t6
                  srai         s10, s6, 1
                  xor          s11, sp, s2
                  and          s1, s2, t6
                  mulhsu       t5, tp, s2
                  xor          s7, a3, t2
                  xor          t5, s1, s2
                  xor          s5, s6, s11
                  lui          s11, 371353
                  c.or         a2, a2
                  ori          s2, ra, -1814
                  nop
                  ori          t0, s4, 1640
                  srl          a1, a5, sp
                  c.lui        t4, 20
                  nop
                  xor          t4, sp, s3
                  add          a4, s2, t1
                  srai         t6, a5, 29
                  mulhu        zero, gp, a5
                  and          tp, a3, t4
                  andi         t2, ra, 295
                  mulhu        a6, s1, t6
                  srl          s0, s11, a2
                  c.srai       s1, 15
                  add          s2, sp, a4
                  div          s4, a6, s2
                  srl          s9, a4, a7
                  xor          s9, a3, a1
                  divu         a6, ra, sp
                  sltu         t1, a2, t6
                  sll          s4, t0, tp
                  lui          s6, 996243
                  sra          t4, a0, a3
                  c.lui        s4, 28
                  mulhsu       s10, zero, t3
                  slt          s6, s5, a4
                  srli         s0, s2, 13
                  srli         gp, ra, 5
                  slli         gp, s5, 20
                  srl          a0, a1, s0
                  rem          t0, s6, zero
                  slti         s0, zero, -1588
                  c.sub        a1, a2
                  srai         t2, a2, 18
                  rem          ra, ra, s10
                  c.xor        s0, s0
                  sltiu        tp, t5, 423
                  c.xor        s1, a3
                  sra          t2, t4, s2
                  mul          a5, zero, a6
                  and          s10, s9, s2
                  mul          s2, s5, zero
                  div          s10, a5, s7
                  addi         a6, a7, -1603
                  xor          ra, t4, t2
                  mulhsu       s0, zero, a0
                  mulh         t0, t2, t4
                  rem          a6, a1, s1
                  c.nop
                  mulh         s1, s4, s10
                  mul          s5, s11, a3
                  xori         a7, a3, -471
                  slli         s9, ra, 27
                  or           t0, t0, a0
                  sll          a6, a0, a2
                  mulhsu       a6, s4, s0
                  rem          t0, s4, s7
                  sll          t0, ra, s2
                  addi         a5, s6, -1880
                  xor          s10, tp, s8
                  mulhsu       s10, t4, a1
                  srli         s9, s0, 15
                  mulhsu       t6, s10, a1
                  c.srai       s1, 19
                  c.srai       s0, 3
                  c.andi       a5, 28
                  c.li         s0, -1
                  xori         s2, a4, -772
                  rem          s1, s0, t6
                  sltu         t2, t1, s7
                  slti         t1, ra, 1979
                  sub          s9, t1, s11
                  c.and        a5, a2
                  c.andi       s0, -1
                  mul          s11, s4, t4
                  c.lui        gp, 9
                  divu         t6, sp, zero
                  c.xor        a0, a1
                  slti         a4, s3, 1122
                  c.xor        a0, s0
                  add          s2, s10, s4
                  c.andi       s0, -1
                  mulhsu       a5, a0, s10
                  c.or         s1, a0
                  addi         s10, s5, -1511
                  xor          s1, ra, gp
                  addi         t0, s11, 301
                  add          gp, s10, t5
                  c.slli       a5, 19
                  addi         a4, zero, -998
                  c.sub        a0, s0
                  sra          a0, s2, zero
                  c.srli       a1, 15
                  c.slli       a7, 28
                  div          gp, t2, zero
                  c.li         s7, 14
                  mul          a2, t0, t5
                  srl          a2, zero, t4
                  mulhu        a1, s9, a4
                  srai         t5, s10, 1
                  andi         s2, s4, -776
                  sll          t1, s3, a5
                  c.or         s1, a4
                  mulhsu       tp, a5, s3
                  xori         s0, s2, 1025
                  addi         s5, s5, 531
                  ori          s0, s5, -48
                  srai         a4, gp, 10
                  nop
                  c.srai       a4, 7
                  c.add        t1, s6
                  nop
                  mul          a5, s9, s3
                  xori         t5, s5, -1067
                  srl          a7, s10, tp
                  srl          s6, s6, zero
                  c.sub        s0, a0
                  and          ra, t1, sp
                  c.add        a2, s3
                  sll          a2, a2, t0
                  c.srli       a0, 14
                  remu         s7, zero, a7
                  slti         a7, a0, 1354
                  c.slli       a2, 31
                  slli         a7, s1, 4
                  addi         t5, t6, 880
                  lui          s3, 153506
                  slt          a6, s4, t0
                  c.addi       a6, -1
                  xor          s0, a2, a3
                  slt          gp, s10, zero
                  andi         s5, s4, 540
                  ori          s0, t0, -2021
                  rem          s10, s10, s1
                  c.srli       a1, 23
                  c.nop
                  ori          s7, s5, 167
                  c.or         a1, s0
                  ori          t1, a3, 1316
                  rem          zero, s2, s7
                  xori         t6, a0, -12
                  c.xor        a2, a5
                  c.srai       s0, 6
                  add          gp, s11, a0
                  c.nop
                  srli         a1, s1, 26
                  c.li         a4, 24
                  c.and        a0, a3
                  sll          t3, s6, t0
                  c.sub        a5, s0
                  and          s9, t0, sp
                  addi         s6, s3, -1899
                  ori          s1, a2, -1299
                  c.mv         t5, a1
                  add          t4, t5, zero
                  c.lui        a1, 5
                  or           t0, s7, s10
                  mulh         tp, a6, ra
                  remu         a6, a7, t2
                  c.srai       a0, 31
                  rem          gp, t5, s10
                  c.slli       tp, 6
                  sltiu        t4, t0, -1949
                  mul          a7, a7, s8
                  andi         s10, a1, -739
                  c.andi       a5, 3
                  nop
                  or           t0, s8, s4
                  c.slli       s2, 23
                  divu         t1, ra, a3
                  nop
                  srai         a1, a1, 2
                  add          ra, s11, tp
                  c.lui        t2, 20
                  c.nop
                  c.lui        tp, 13
                  srli         a7, a3, 12
                  c.slli       a4, 23
                  sll          s7, s6, a2
                  mulhsu       a0, ra, s8
                  c.li         s1, 6
                  c.and        s0, a2
                  c.xor        s1, s1
                  srli         a1, s2, 3
                  c.srli       a5, 1
                  nop
                  div          a2, a6, ra
                  srli         a0, s5, 0
                  rem          ra, s4, a4
                  c.andi       a5, -1
                  and          gp, gp, s0
                  c.nop
                  remu         t6, s8, a4
                  c.srli       a4, 14
                  sltu         s6, s10, zero
                  addi         s0, a7, -342
                  c.and        a2, s0
                  rem          a1, t1, a3
                  srai         t5, t5, 15
                  xor          s2, s9, a5
                  mulhsu       s10, s3, s6
                  mulhsu       a7, s8, s2
                  c.addi       t5, 28
                  slli         s5, s11, 3
                  add          t3, s5, t2
                  xor          a7, zero, s9
                  mulhu        a7, s6, s7
                  slti         t6, a6, 1175
                  c.xor        s0, a1
                  c.nop
                  andi         gp, t1, 524
                  slli         s11, s7, 18
                  nop
                  mul          s3, s2, s5
                  xori         zero, t4, 1265
                  mul          ra, zero, a5
                  add          s4, a0, s4
                  slt          ra, a7, a1
                  sra          s1, t4, s2
                  c.srai       a1, 6
                  srli         s0, s4, 16
                  lui          s11, 915070
                  c.mv         a5, s7
                  c.andi       s1, -1
                  srli         t4, s0, 4
                  c.add        s5, s10
                  mul          ra, a0, zero
                  srl          t3, a4, t1
                  addi         a2, s10, 1957
                  srai         t4, a4, 15
                  xor          s6, ra, s8
                  mul          t4, a1, a3
                  sltiu        s9, t4, -221
                  srai         a5, ra, 5
                  slti         a2, s7, -1468
                  c.and        a2, a5
                  c.and        s0, a3
                  c.slli       a4, 26
                  c.lui        a7, 13
                  auipc        s6, 973861
                  and          t3, a0, zero
                  c.add        t5, t4
                  lui          t3, 889418
                  div          a0, tp, t1
                  slli         a6, s4, 22
                  slti         a2, sp, -723
                  c.and        a5, a4
                  xor          s6, s6, s3
                  c.mv         t0, s8
                  andi         s3, s5, -785
                  sltiu        t4, tp, -1261
                  c.slli       a7, 13
                  divu         zero, t3, tp
                  srli         s0, t5, 9
                  c.andi       a4, -1
                  divu         a5, t0, s9
                  slt          t5, s5, s1
                  sltu         s5, gp, s9
                  or           a2, s9, s9
                  xori         zero, a6, 748
                  sub          t4, t3, t2
                  sra          a4, a7, zero
                  lui          s11, 235871
                  sltiu        a0, gp, -396
                  xori         t4, s10, -1158
                  rem          a5, s6, a2
                  sltiu        s10, s1, 1127
                  c.srai       a5, 7
                  c.and        a0, s0
                  mul          t1, a7, sp
                  c.nop
                  c.srli       a4, 1
                  sll          s5, a3, a2
                  ori          s1, s2, 1940
                  nop
                  auipc        s6, 77600
                  c.lui        a0, 13
                  remu         s7, s4, t2
                  xor          t6, t6, s2
                  sltiu        a2, gp, -433
                  mulh         ra, s1, ra
                  and          s2, t1, t0
                  mulhsu       s2, a7, a3
                  sll          t6, a0, ra
                  c.or         a5, a0
                  c.slli       s0, 23
                  mulhsu       s6, t1, s11
                  sub          s9, a1, a5
                  mulhu        s3, t4, s9
                  c.addi       s11, -1
                  sll          gp, s5, s5
                  mulhu        s5, s8, s9
                  mulhu        gp, tp, t3
                  c.or         a4, a2
                  slt          s9, a7, t0
                  divu         t2, tp, s6
                  slti         t1, a0, -1398
                  c.mv         t0, s5
                  nop
                  and          t4, t6, s11
                  or           s5, zero, a7
                  c.sub        a2, s0
                  div          t2, t2, s10
                  c.or         s0, a4
                  c.or         a5, a1
                  sra          a4, a7, s5
                  c.and        a1, a2
                  and          gp, t1, t6
                  c.li         t2, -1
                  xori         t4, a4, 1919
                  c.sub        s0, a2
                  remu         s2, a0, s2
                  c.or         a5, a2
                  c.add        s6, t5
                  xori         ra, t5, -434
                  sltu         t3, t4, s10
                  c.li         ra, 7
                  rem          a1, t2, tp
                  c.or         s1, a0
                  srai         t6, t2, 8
                  xori         ra, tp, 58
                  slt          a5, s10, s3
                  ori          a2, s1, 878
                  srli         s0, t2, 7
                  c.add        t0, s6
                  srli         s2, zero, 17
                  andi         s11, s11, -1368
                  slt          s1, s3, t4
                  c.addi       t5, 3
                  mulhu        a7, a6, a5
                  srl          a0, t2, gp
                  srl          s10, a4, s2
                  c.and        a5, s0
                  addi         s2, a3, -1320
                  divu         a6, zero, a1
                  srai         s4, s1, 5
                  ori          a4, a6, 970
                  add          s1, a0, s2
                  c.lui        s1, 10
                  srli         s11, zero, 21
                  sub          t6, s5, t2
                  sub          a1, s0, gp
                  c.sub        a5, a5
                  c.srli       a5, 14
                  andi         s5, s0, 256
                  c.addi       s6, -1
                  c.or         s0, s1
                  slti         ra, t6, -1398
                  c.lui        s6, 25
                  mulh         gp, tp, tp
                  c.srai       s1, 13
                  divu         a6, t5, s9
                  mulhsu       a1, tp, s11
                  remu         a0, a0, a3
                  remu         t6, s10, t4
                  add          a0, s4, s7
                  andi         t0, a6, -967
                  remu         s1, sp, a1
                  slli         a6, s3, 3
                  nop
                  mul          s4, s8, a6
                  slt          s2, t1, t5
                  or           ra, s1, t5
                  slti         t3, s9, 973
                  ori          a7, a0, 1754
                  slti         a0, t6, -1688
                  slli         s6, a2, 2
                  c.add        s11, t4
                  mulhu        zero, s6, t0
                  mulhsu       s5, s9, s5
                  c.or         a0, a4
                  and          t1, gp, zero
                  andi         t0, t0, -465
                  ori          a1, s3, 217
                  srai         a5, t1, 28
                  slti         a0, tp, -981
                  c.or         s1, s1
                  divu         t2, a5, s1
                  c.xor        a5, a3
                  ori          s0, a7, 654
                  c.nop
                  rem          a2, t6, tp
                  sub          a6, s4, s4
                  nop
                  lui          t0, 697938
                  c.nop
                  slt          t4, t6, tp
                  c.slli       a0, 3
                  c.srli       a2, 4
                  rem          t3, a4, tp
                  c.srli       a1, 23
                  sll          s0, s2, a3
                  mulhsu       s9, t4, a1
                  auipc        ra, 595730
                  andi         a4, a0, 588
                  c.sub        a4, a5
                  sll          s0, s5, tp
                  andi         t4, t4, -158
                  rem          s2, t3, s3
                  divu         t5, s7, a6
                  c.srai       a5, 6
                  c.lui        t6, 30
                  slt          t3, s3, s8
                  div          t4, s5, a3
                  slti         a5, s10, 1514
                  mulh         t4, s10, t5
                  xori         t0, t4, 320
                  c.addi       tp, 2
                  rem          t2, t4, s4
                  c.addi       s7, -1
                  srli         a1, s6, 11
                  remu         a7, s3, a0
                  sra          s10, t4, a4
                  sll          s0, s1, s11
                  add          a1, a3, s7
                  xor          a6, s2, a7
                  remu         a2, a0, t4
                  xori         a0, gp, -693
                  c.add        a0, t1
                  sltu         s6, s9, s4
                  sltu         t1, tp, s7
                  remu         t3, t1, a0
                  c.srai       a1, 24
                  sltu         s7, zero, t4
                  srai         a7, s2, 15
                  andi         s5, s1, 1265
                  c.xor        s1, a1
                  sltiu        s1, t3, 1229
                  c.nop
                  div          t2, s4, a5
                  srai         s11, t0, 23
                  xor          a1, t2, t0
                  div          a5, t1, gp
                  and          ra, tp, t5
                  c.and        a0, a5
                  div          a1, s7, s8
                  andi         s7, s0, -1800
                  xor          s2, s8, gp
                  and          t2, s10, s1
                  srli         gp, s7, 23
                  sra          tp, gp, t2
                  slli         gp, sp, 22
                  c.xor        a4, a3
                  and          a2, a1, gp
                  auipc        a5, 200603
                  remu         t6, s9, s0
                  c.addi       a2, 20
                  addi         s9, s8, -861
                  srli         s3, s3, 23
                  sltiu        s5, tp, 239
                  sll          zero, gp, t5
                  c.andi       s1, 6
                  add          s1, zero, t6
                  c.srai       a5, 7
                  c.sub        a5, a2
                  srl          t6, a5, gp
                  divu         ra, t3, a4
                  auipc        s0, 850346
                  sltiu        s9, t2, 1596
                  xor          s7, s4, tp
                  divu         t2, t6, t6
                  nop
                  c.add        s2, s7
                  slti         s9, gp, 290
                  rem          s6, t6, tp
                  sll          a5, t1, s11
                  c.xor        s1, s0
                  c.or         a5, a1
                  srli         t0, s1, 28
                  c.add        t3, t5
                  c.addi       gp, 12
                  nop
                  rem          s5, s2, ra
                  mulhsu       a0, s6, a4
                  addi         gp, s11, -1157
                  add          zero, s2, a6
                  sltiu        s3, s11, 1474
                  c.nop
                  lui          t2, 950371
                  c.andi       a5, -1
                  c.add        a6, t4
                  add          s2, t3, a3
                  c.addi       a0, -1
                  rem          zero, s7, s4
                  c.li         a7, 5
                  c.slli       a7, 2
                  lui          t5, 846013
                  xor          t1, a3, t0
                  xori         t2, s4, -1674
                  c.mv         s0, a7
                  slt          a4, zero, s11
                  c.addi       s0, -1
                  divu         a0, a1, s4
                  remu         a0, sp, s0
                  c.addi       s10, -1
                  sub          t3, s5, t6
                  slti         gp, s4, -1295
                  sra          t4, t1, gp
                  sll          s6, gp, s4
                  div          s9, a0, zero
                  sltiu        ra, t5, 1649
                  sltu         s0, a7, a4
                  srl          t6, a7, a7
                  sub          tp, s5, t2
                  sub          a7, s4, zero
                  srai         s0, t5, 24
                  sltu         s0, s2, s3
                  c.andi       a5, 16
                  c.slli       a6, 31
                  srl          ra, zero, tp
                  c.mv         s1, a2
                  c.and        a2, a0
                  c.srai       a5, 3
                  mulh         a1, t4, s6
                  auipc        s6, 869957
                  sltiu        a5, gp, 959
                  c.srli       a1, 12
                  nop
                  sltu         a6, s0, sp
                  andi         s1, s7, -377
                  divu         s7, ra, s3
                  sltu         a7, s2, s3
                  lui          t1, 706961
                  divu         t4, s10, tp
                  remu         zero, t3, t1
                  sra          t3, sp, t1
                  mulhsu       t3, a4, ra
                  xor          t4, tp, t2
                  xori         s3, a3, 1363
                  or           a5, s1, s9
                  slt          tp, a7, t6
                  sltiu        zero, zero, -1311
                  sll          t2, s3, s1
                  srl          a2, s6, ra
                  c.andi       a2, -1
                  addi         t0, a4, -771
                  sra          s4, s11, s2
                  slti         t2, t3, -708
                  or           s5, a6, a6
                  c.slli       s0, 31
                  mulhu        tp, s2, ra
                  c.add        a1, s3
                  rem          a0, s7, s3
                  slt          t6, gp, s11
                  c.and        s0, s1
                  sll          a2, tp, s3
                  add          a1, a1, t5
                  c.and        a0, a4
                  divu         a4, a0, t6
                  c.slli       a7, 21
                  mul          s6, a4, t3
                  and          s5, t0, sp
                  addi         zero, s0, -613
                  c.nop
                  lui          a4, 470429
                  c.nop
                  mulhsu       tp, s9, s2
                  nop
                  ori          a0, s9, -563
                  auipc        s1, 290096
                  xori         a0, a1, 832
                  c.li         tp, -1
                  div          a7, zero, t2
                  c.mv         t0, t0
                  mulhsu       t2, s0, s11
                  lui          t3, 1028680
                  addi         t4, s2, -590
                  div          a6, s5, s8
                  c.xor        a5, a0
                  c.andi       a4, 17
                  c.srli       s1, 24
                  srai         s1, ra, 14
                  c.li         a4, -1
                  sub          s6, sp, t5
                  c.andi       a1, -1
                  slt          gp, s8, a7
                  c.li         s7, 30
                  c.add        s9, ra
                  mulh         s5, a5, s0
                  auipc        a7, 614795
                  slti         t3, t6, 1346
                  c.add        a2, s6
                  andi         a1, s3, 1020
                  c.addi       s9, 30
                  and          s5, tp, s3
                  add          a7, t6, tp
                  srai         s0, a1, 4
                  ori          a2, a1, 1876
                  auipc        tp, 906261
                  slt          a0, s9, tp
                  sra          t1, tp, s3
                  c.lui        t6, 9
                  c.add        ra, t2
                  nop
                  or           s1, t2, s9
                  slli         ra, sp, 29
                  srli         t1, zero, 14
                  mulh         s1, s1, s1
                  c.and        a1, a4
                  c.andi       a2, 5
                  c.li         gp, -1
                  srl          a4, a2, t1
                  mulhu        t5, t1, a2
                  c.mv         t0, a4
                  or           s10, a2, a3
                  c.mv         s6, s3
                  mulhu        a1, a0, s5
                  sltiu        s3, s10, -1087
                  c.and        s1, a0
                  lui          t3, 455160
                  and          a4, s11, a3
                  c.srai       a1, 6
                  slli         s4, ra, 11
                  sltiu        zero, s5, 1500
                  sltu         s9, s11, t4
                  slti         t5, t3, 1797
                  sll          gp, s8, s11
                  rem          ra, gp, s9
                  c.sub        a5, a3
                  remu         a4, gp, s1
                  ori          s2, t1, 667
                  xor          t4, a4, a2
                  rem          tp, t2, s8
                  remu         tp, t4, s6
                  mulh         a2, t6, t3
                  c.or         a5, s0
                  ori          t2, a6, -1481
                  xor          a2, a1, s0
                  divu         zero, zero, a0
                  add          a0, a6, gp
                  srl          zero, s9, a3
                  divu         s10, s9, a7
                  sub          a0, s9, s2
                  c.slli       s9, 29
                  xor          s4, t0, t1
                  mulhu        a5, t0, tp
                  divu         a2, a3, s4
                  sll          ra, a3, a5
                  c.slli       s10, 24
                  auipc        s4, 77493
                  ori          a6, t0, -1064
                  nop
                  c.nop
                  add          s6, t3, t6
                  sub          gp, a0, s5
                  mulhsu       s4, s9, t3
                  addi         s11, t6, -1966
                  slt          s3, a5, a1
                  nop
                  c.mv         s7, s7
                  lui          t5, 460142
                  slt          a7, a3, t3
                  srli         s9, t2, 7
                  c.srai       a5, 30
                  c.mv         t2, a2
                  c.xor        s0, s0
                  mulhu        ra, ra, s5
                  mulh         a0, tp, s5
                  c.andi       a5, 26
                  slt          t4, zero, s8
                  and          a7, a5, s1
                  srai         a5, s6, 30
                  sra          s5, a5, s11
                  c.li         t5, -1
                  nop
                  divu         a0, a7, a3
                  c.srai       s0, 23
                  c.srai       s1, 3
                  c.sub        a0, a0
                  andi         a0, s4, -743
                  c.mv         a2, s11
                  srl          s0, t5, gp
                  c.slli       s10, 31
                  sra          gp, sp, s4
                  c.and        a4, a4
                  remu         a1, t5, a6
                  mulhu        s1, a1, s7
                  andi         s5, tp, -700
                  c.andi       a5, -1
                  c.and        a2, a1
                  mulh         a1, s11, gp
                  c.sub        a2, s1
                  div          t1, s8, a5
                  remu         a1, s2, s10
                  and          tp, tp, t0
                  mulh         s5, s2, s3
                  c.xor        a1, s1
                  mulh         t3, s0, s3
                  add          s3, a5, a7
                  c.addi       a1, 8
                  lui          s2, 279744
                  slt          s0, a3, a4
                  c.addi       t4, -1
                  c.srli       a2, 3
                  c.add        gp, s9
                  srli         t2, t2, 11
                  xori         s11, gp, -295
                  add          a4, sp, s10
                  slli         zero, s4, 1
                  c.andi       a2, -1
                  slt          s2, t0, s11
                  c.or         a0, a1
                  c.srli       a5, 2
                  nop
                  divu         t5, s10, a4
                  andi         a1, a0, 1499
                  mul          s3, s7, s10
                  c.sub        a5, a3
                  srl          t4, a2, s0
                  c.srli       s1, 6
                  slli         s9, a0, 8
                  and          s3, gp, ra
                  srli         s4, t5, 19
                  mulh         t6, s1, s2
                  nop
                  sra          t1, a5, zero
                  div          a2, a5, a6
                  c.and        s1, a5
                  sra          tp, s9, t0
                  srl          s9, t4, a0
                  mul          s2, s4, t2
                  c.slli       a7, 17
                  rem          t1, a7, t2
                  c.addi       s4, 8
                  nop
                  xor          a7, a4, a1
                  c.srai       a0, 14
                  sltu         s5, a3, s0
                  rem          gp, a2, s8
                  divu         t4, gp, t0
                  or           s9, a7, s7
                  ori          s0, tp, -1079
                  srai         s0, s5, 8
                  c.xor        s1, a0
                  c.mv         s7, s10
                  c.or         a0, a0
                  c.addi       s0, -1
                  lui          a5, 775536
                  srai         t0, s4, 21
                  sub          a2, zero, t0
                  c.srai       s0, 12
                  sub          a0, t3, zero
                  addi         ra, s11, 1076
                  c.xor        a1, a0
                  xori         a7, a1, -161
                  c.li         s3, -1
                  mulhu        s7, sp, s10
                  c.slli       s1, 28
                  divu         a4, s6, a1
                  or           s11, s2, sp
                  or           s9, a3, tp
                  xor          s4, t1, t2
                  sltiu        s5, s3, 859
                  c.or         a2, s1
                  and          s5, a6, s2
                  divu         gp, a1, a6
                  lui          s5, 579010
                  srli         t2, ra, 27
                  sll          t1, t6, a0
                  ori          a6, a4, -1542
                  c.srai       a5, 12
                  ori          t1, t1, -1377
                  xor          s9, s4, s7
                  c.lui        gp, 2
                  sra          t4, s9, ra
                  nop
                  c.srai       a0, 15
                  c.or         a1, a1
                  c.slli       a4, 2
                  addi         t1, t5, 909
                  addi         t5, s10, 103
                  c.andi       s0, 14
                  sra          s6, a3, zero
                  c.addi       gp, 21
                  div          s9, t2, s3
                  sltu         t3, a1, sp
                  c.lui        tp, 10
                  c.xor        a0, a3
                  sll          zero, t0, a6
                  slli         s3, tp, 17
                  addi         t1, t5, -1864
                  c.sub        a5, a4
                  andi         s3, s8, -1386
                  rem          t1, a0, ra
                  c.lui        t4, 20
                  slt          s4, a5, s8
                  and          gp, t2, s7
                  c.srai       s1, 13
                  xori         a7, a3, -1412
                  auipc        t4, 958181
                  c.and        s1, a1
                  sub          a1, a4, t3
                  sltiu        gp, s10, -456
                  c.nop
                  lui          s9, 866552
                  slt          t4, s7, a4
                  c.sub        a4, a0
                  sub          gp, a3, s9
                  c.addi       t5, -1
                  c.xor        a0, a3
                  ori          t4, a2, -221
                  addi         a4, t4, 1671
                  sltiu        s1, a1, 1511
                  mulhu        s0, a6, gp
                  c.mv         s9, tp
                  c.nop
                  sltiu        s2, a5, -548
                  andi         a4, a4, 521
                  and          a1, a5, a0
                  slt          t4, t1, t4
                  c.add        s0, s7
                  xor          s10, s6, s9
                  c.add        gp, gp
                  c.add        s10, a7
                  mulh         s6, s5, zero
                  c.xor        s1, a4
                  divu         t3, a4, s1
                  sra          s0, t4, a0
                  sltiu        s10, t5, -924
                  mulhu        a2, t0, zero
                  c.andi       a5, 16
                  divu         t5, a4, s7
                  srai         s3, s10, 23
                  c.andi       a5, 22
                  mulhsu       s3, a5, s1
                  sltiu        a7, t6, -179
                  c.mv         t2, s1
                  c.add        a6, s9
                  divu         s2, s7, tp
                  div          t1, s9, a3
                  c.sub        a1, a3
                  sltu         a5, a3, t6
                  remu         a6, tp, s1
                  sltu         a1, t3, s3
                  remu         a4, s10, ra
                  c.slli       t3, 20
                  c.mv         s9, s8
                  c.srli       s0, 7
                  c.nop
                  sltu         t3, gp, sp
                  remu         a2, s6, a3
                  c.or         s0, s0
                  or           a2, a5, s8
                  c.li         s7, 6
                  divu         s9, a1, s3
                  rem          s7, t4, s0
                  addi         t3, t6, 669
                  divu         s1, tp, a2
                  c.li         s11, 17
                  div          t0, s6, gp
                  div          s3, s2, s3
                  sltu         a0, s4, tp
                  divu         a0, s2, s4
                  mulh         tp, a7, a1
                  xori         t6, t3, -1894
                  c.add        a4, a7
                  addi         s5, a2, 817
                  srl          s11, s11, s9
                  mulhu        a5, s6, s0
                  slt          a1, tp, t1
                  c.or         a1, a3
                  c.or         a0, a0
                  remu         a2, ra, a0
                  div          s0, s4, zero
                  c.srai       a1, 19
                  c.andi       a4, 2
                  sll          ra, a7, s6
                  c.andi       a2, 31
                  srl          gp, a1, sp
                  srl          s2, t6, t3
                  c.or         a5, a2
                  slt          a7, a0, a1
                  c.and        s1, s0
                  c.slli       a6, 19
                  mulhsu       s7, a7, gp
                  c.add        t2, t2
                  c.andi       a0, 0
                  c.sub        a0, a3
                  xori         s10, a3, 1250
                  c.sub        a2, s1
                  srli         a6, tp, 28
                  mulhu        s1, a2, t6
                  c.sub        a5, s0
                  c.and        a2, s0
                  sra          zero, a0, s9
                  mulhsu       a0, s5, s5
                  c.add        a6, a4
                  c.slli       a1, 30
                  sub          a2, a3, s7
                  sltiu        s7, s9, 1843
                  slt          s5, s6, t3
                  xor          s9, a2, a0
                  divu         s11, s4, s11
                  sltiu        a1, s7, -938
                  xor          s6, t0, t0
                  srai         s2, s4, 30
                  c.nop
                  divu         s1, s11, t4
                  c.lui        s2, 12
                  srli         t5, t3, 10
                  mulhu        a7, a4, s4
                  c.lui        a6, 15
                  c.slli       a7, 29
                  sltu         a2, a3, s2
                  add          s1, a2, s5
                  sra          a5, zero, s5
                  lui          s5, 679344
                  c.addi       tp, 18
                  sltiu        t3, s0, -605
                  c.mv         a5, a0
                  sub          s4, t2, s2
                  c.andi       a2, -1
                  c.srli       s0, 2
                  c.srli       a2, 14
                  c.and        a2, a5
                  c.xor        s0, s0
                  andi         t2, t5, 1630
                  sll          a0, s2, a0
                  c.mv         s0, s11
                  c.mv         t0, a7
                  c.or         a2, a5
                  c.and        a5, a3
                  sub          t2, t5, s0
                  c.or         a4, a5
                  andi         ra, t6, -113
                  c.addi       a2, 27
                  mulhsu       a1, t1, a4
                  addi         s10, s6, -2040
                  c.add        a7, sp
                  addi         s2, s8, -367
                  mulhsu       s11, t5, t3
                  c.lui        t3, 4
                  sra          t6, t1, s1
                  div          a0, t4, s9
                  div          s0, s6, ra
                  sltu         s1, s11, s7
                  c.sub        a0, a0
                  sra          a0, t2, t2
                  c.slli       t5, 6
                  rem          s6, t6, a7
                  remu         a1, gp, t1
                  c.addi       s6, 2
                  nop
                  ori          a4, s8, 195
                  c.xor        a0, a4
                  remu         zero, s2, t3
                  xor          zero, gp, a4
                  sub          s7, t3, tp
                  c.lui        a6, 16
                  srai         a4, a7, 1
                  c.nop
                  andi         gp, s1, 1759
                  c.sub        s0, s1
                  c.li         s9, -1
                  c.add        s5, a6
                  c.srli       a2, 23
                  mulh         gp, s3, a5
                  slt          s0, ra, t3
                  divu         s1, s1, a2
                  mulh         s9, t6, tp
                  andi         zero, t3, -1568
                  c.and        a5, a5
                  sltiu        a6, a1, -932
                  c.srli       a1, 2
                  c.xor        s1, a1
                  addi         a6, a2, -1726
                  remu         gp, t4, t2
                  add          s0, sp, s10
                  sltiu        s1, t0, 1224
                  andi         t0, s3, -309
                  andi         s9, zero, -1625
                  c.andi       s0, -1
                  sltu         a5, t5, a3
                  mulh         tp, a2, a1
                  div          zero, s3, a2
                  xor          s3, ra, a7
                  c.andi       a0, 11
                  xor          s7, s9, t1
                  c.sub        s1, a5
                  c.xor        s1, a5
                  xor          s2, s7, t0
                  c.xor        a4, a5
                  remu         a5, a0, s6
                  srli         t3, t4, 24
                  c.mv         s10, tp
                  sra          tp, a7, a2
                  c.xor        a0, a4
                  sll          t4, a4, t6
                  c.nop
                  divu         a4, s0, zero
                  c.sub        s0, a0
                  mulh         s3, s7, s6
                  c.addi       s7, 5
                  rem          a5, s4, t2
                  slt          s6, s0, s0
                  c.srli       s1, 23
                  andi         t1, t6, 1122
                  and          a2, s8, a7
                  remu         s10, a1, a2
                  addi         zero, a0, 1675
                  srl          s4, sp, tp
                  c.lui        a7, 11
                  div          s10, s3, s4
                  mulhsu       s6, s6, a4
                  ori          s2, a1, -1616
                  add          a6, t1, s11
                  slli         t6, t4, 4
                  sub          a7, a4, a7
                  or           t0, s10, t6
                  sltu         t5, t0, a4
                  nop
                  c.li         gp, -1
                  srli         t5, t0, 8
                  sltu         s3, zero, s7
                  c.addi       t5, 24
                  c.sub        s0, a1
                  rem          t3, tp, a1
                  divu         a1, s4, s2
                  xori         a0, a2, 1694
                  sltu         ra, sp, gp
                  c.andi       a0, -1
                  sltu         s10, ra, s5
                  mulh         t3, t3, s9
                  sll          s7, a2, s5
                  divu         s9, s9, a6
                  sub          t5, s7, zero
                  srl          s5, a6, a3
                  add          a2, s5, a0
                  addi         s11, s11, 633
                  mulhsu       s4, gp, t5
                  srl          s4, t1, s8
                  xori         gp, s6, 1772
                  c.li         tp, -1
                  srl          a0, s7, t3
                  c.xor        s0, a5
                  sltu         a5, s10, s1
                  nop
                  slti         tp, s9, 119
                  c.andi       a5, -1
                  c.add        tp, a5
                  c.sub        a0, s0
                  nop
                  auipc        s5, 205944
                  c.and        a2, a0
                  or           a7, s8, s0
                  nop
                  add          s10, s9, s3
                  srli         t0, a5, 2
                  nop
                  mul          s7, zero, t1
                  add          a4, s8, s11
                  addi         s0, s8, -1490
                  lui          t5, 991592
                  slti         t0, t0, 1199
                  slti         t0, s7, -356
                  slti         a1, zero, 1098
                  andi         t4, t4, -1251
                  xori         s2, zero, -1324
                  and          s1, a0, s0
                  and          a6, s3, t1
                  c.srli       a0, 10
                  c.or         a1, s0
                  sra          t3, t5, a4
                  c.lui        a4, 15
                  sra          s10, t0, a7
                  sltu         s4, t3, tp
                  mulhsu       s9, s11, a5
                  mul          a2, s2, t0
                  xori         s9, t4, 809
                  add          s0, s1, s2
                  c.slli       s9, 13
                  div          a5, t1, t5
                  xori         a4, a6, 1983
                  xori         s1, s8, -226
                  c.mv         a6, a4
                  srli         s4, tp, 12
                  sltiu        a7, a4, 758
                  auipc        a4, 636947
                  add          t0, zero, a0
                  sltiu        t6, s5, 838
                  div          t2, s6, a6
                  mulhu        t2, s11, gp
                  mul          zero, t6, s8
                  and          s3, ra, s2
                  c.lui        a4, 20
                  srli         gp, s2, 2
                  c.or         a1, s1
                  c.add        gp, s7
                  sltiu        t2, t3, -1887
                  c.mv         s0, t3
                  c.addi       s0, -1
                  xori         s7, sp, 1349
                  srli         t0, a1, 25
                  sltu         t0, a3, s7
                  c.srli       s0, 3
                  mul          t1, s2, a6
                  sub          a5, s7, s0
                  c.addi       a0, 22
                  ori          t3, s6, 1994
                  mulh         s1, s5, s5
                  andi         zero, a7, 1037
                  slt          t2, s3, t1
                  and          gp, zero, s4
                  ori          t5, zero, -46
                  and          s3, a5, tp
                  and          s2, t6, gp
                  c.addi       t4, 10
                  xor          a1, s2, a3
                  srli         s2, t3, 28
                  c.add        s6, t5
                  c.nop
                  c.or         s1, a2
                  slli         t4, s8, 4
                  add          a7, t1, a4
                  c.lui        s3, 26
                  c.srli       a5, 28
                  srl          a4, a4, s7
                  slli         s2, t6, 18
                  slti         a5, s4, 659
                  sll          s3, a7, s8
                  add          a1, gp, s2
                  auipc        s10, 990105
                  c.srai       a4, 26
                  or           gp, s9, s4
                  c.xor        s1, a3
                  xori         gp, a5, -1257
                  mulhu        s5, ra, s3
                  c.sub        a5, a2
                  mulhsu       s5, s4, tp
                  c.xor        s1, a2
                  xor          t2, a1, s3
                  lui          a6, 986070
                  c.and        a2, a5
                  or           s3, t2, s10
                  c.add        gp, gp
                  c.and        a2, a0
                  srai         tp, t3, 8
                  nop
                  add          s10, s9, sp
                  c.sub        a4, a4
                  c.lui        s10, 18
                  srli         s4, s2, 7
                  c.slli       s0, 31
                  rem          a5, a4, t6
                  c.addi       s4, 31
                  c.li         t5, -1
                  divu         s5, a2, t6
                  c.or         s0, a1
                  xori         a5, sp, -236
                  mulh         s10, t0, sp
                  div          s6, s9, gp
                  lui          s11, 932405
                  slt          s0, t0, t1
                  mulh         a7, t6, a0
                  addi         s3, sp, 1708
                  c.addi       a7, -1
                  c.and        a1, a1
                  c.add        t3, s8
                  slti         t4, s4, 1223
                  sra          ra, t6, s8
                  slt          a4, t2, a7
                  srli         t1, t2, 10
                  srli         a2, s8, 3
                  andi         s2, a6, -266
                  lui          s9, 40265
                  slli         a2, a7, 18
                  div          t2, a5, t4
                  rem          t2, a3, s5
                  c.li         t5, -1
                  slti         ra, tp, 1296
                  c.xor        s1, s1
                  c.sub        a2, s0
                  slt          s0, t0, ra
                  xor          t0, t1, a7
                  mulhsu       gp, s9, a3
                  slli         zero, a7, 1
                  and          s9, t0, t1
                  lui          s1, 616401
                  c.andi       s0, 30
                  slli         t5, a2, 18
                  c.sub        a2, a4
                  add          t5, ra, t0
                  divu         a5, t1, a1
                  div          a7, a5, s3
                  c.addi       s1, 13
                  c.andi       s1, 27
                  or           t3, sp, t3
                  sra          s3, s5, t1
                  srai         s0, s7, 25
                  c.andi       a4, 2
                  c.sub        a2, a0
                  and          ra, t2, s11
                  mulh         s10, t0, sp
                  slli         t4, t3, 26
                  xor          t1, gp, a3
                  xori         tp, sp, -2014
                  xori         a2, ra, 1806
                  srli         s11, ra, 6
                  c.or         a2, a1
                  mul          s6, a7, s10
                  c.and        a0, a2
                  sub          s3, t4, a0
                  c.and        s1, a5
                  div          s9, zero, t0
                  sll          t0, t1, t5
                  c.lui        tp, 14
                  mul          t1, sp, s7
                  addi         a7, s7, -1686
                  ori          t2, tp, -461
                  c.mv         s6, gp
                  rem          a4, t6, s6
                  ori          a1, a2, 735
                  mulhsu       a5, s5, s3
                  sltiu        t3, tp, 1753
                  or           a0, s4, t0
                  mulhsu       s3, s7, a5
                  sub          s2, t6, s3
                  rem          s10, s11, ra
                  sltu         t1, t1, a7
                  mulhsu       t6, a3, a1
                  srai         s1, s6, 26
                  c.lui        a0, 9
                  c.xor        a1, a5
                  c.li         t2, 16
                  lui          a6, 599078
                  srai         s0, gp, 16
                  c.nop
                  xori         t1, ra, -971
                  remu         a5, s9, a1
                  auipc        s4, 38616
                  c.addi       s0, 14
                  slli         zero, t6, 1
                  c.xor        a1, s1
                  c.mv         s7, a1
                  or           s11, s5, t2
                  srl          a6, s2, s9
                  srli         s3, s7, 1
                  c.srli       a5, 12
                  lui          a7, 624319
                  c.mv         s9, a3
                  or           s1, t6, t3
                  c.srli       a4, 7
                  c.xor        s0, a1
                  xor          a2, a7, t5
                  c.or         s0, s0
                  c.andi       a4, 13
                  auipc        t2, 653221
                  lui          s11, 837307
                  srl          a4, gp, s7
                  divu         a2, s2, t2
                  add          tp, s7, tp
                  c.slli       s0, 16
                  c.srli       a1, 19
                  c.srli       a2, 24
                  nop
                  sll          t5, t4, tp
                  c.lui        gp, 4
                  mul          a2, ra, s4
                  sll          s0, ra, s11
                  c.xor        a1, a2
                  slti         zero, zero, -343
                  sub          s10, t6, t0
                  slt          t0, a5, tp
                  mulhsu       s7, tp, a0
                  c.and        s0, a1
                  add          t3, t4, s7
                  remu         s1, t5, t0
                  c.srai       s0, 20
                  addi         s5, t6, -460
                  c.xor        a5, a3
                  ori          a2, t0, -2001
                  sltu         t6, s4, s0
                  sub          a7, a2, ra
                  sra          zero, s3, a0
                  srl          a2, s2, s6
                  c.slli       t3, 28
                  sra          s4, a6, s4
                  mulh         s7, a5, ra
                  sub          s2, zero, gp
                  xori         t2, s3, -1308
                  nop
                  c.andi       s1, 6
                  ori          t6, s6, -377
                  ori          s2, a5, -612
                  slli         t2, s5, 22
                  nop
                  ori          s7, tp, 1093
                  mul          t1, s0, a5
                  sll          t0, s5, a4
                  nop
                  remu         s11, t3, a6
                  lui          t0, 176253
                  c.sub        a4, a1
                  slti         t5, t1, -786
                  c.srli       a4, 12
                  ori          a7, sp, 1551
                  srai         a0, t2, 10
                  c.addi       t1, -1
                  srl          a2, t5, a1
                  c.xor        a4, s0
                  andi         tp, s2, 355
                  mulhu        ra, s7, tp
                  slti         tp, a4, 449
                  la x24, test_done
                  jalr x0, x24, 0
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
.align           2
mtvec_handler:    
                  addi x13, x13, -4
                  sw  x2, (x13)
                  add x2, x13, zero
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x13, x2, zero
                  csrr x16, 0x300 # MSTATUS
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 31
                  bne x16, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x16, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x16, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x16, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x16, x10, ecall_handler
                  li x10, 0x1
                  beq x16, x10, instr_fault_handler
                  li x10, 0x5
                  beq x16, x10, load_fault_handler
                  li x10, 0x7
                  beq x16, x10, store_fault_handler
                  li x10, 0xc
                  beq x16, x10, pt_fault_handler
                  li x10, 0xd
                  beq x16, x10, pt_fault_handler
                  li x10, 0xf
                  beq x16, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x24, test_done
                  jalr x1, x24, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x24, write_tohost
                  jalr x0, x24, 0

instr_fault_handler:
                  add x2, x13, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x13, x2, zero
                  lw  x2, (x13)
                  addi x13, x13, 4
                  mret

load_fault_handler:
                  add x2, x13, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x13, x2, zero
                  lw  x2, (x13)
                  addi x13, x13, 4
                  mret

store_fault_handler:
                  add x2, x13, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x13, x2, zero
                  lw  x2, (x13)
                  addi x13, x13, 4
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x2, x13, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x13, x2, zero
                  lw  x2, (x13)
                  addi x13, x13, 4
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x2, x13, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x13, x2, zero
                  lw  x2, (x13)
                  addi x13, x13, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x2, x13, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  add x13, x2, zero
                  lw  x2, (x13)
                  addi x13, x13, 4
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
