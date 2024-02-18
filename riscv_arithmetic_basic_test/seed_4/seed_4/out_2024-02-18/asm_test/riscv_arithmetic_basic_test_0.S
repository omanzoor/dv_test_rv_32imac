.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x10, 0x40001105
                  csrw 0x301, x10
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 0
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  li x10, 0x0
                  csrw 0x304, x10 # MIE
                  mret
init:             
                  li x0, 0x636ce3d6
                  li x1, 0x80000000
                  li x3, 0xc558da9a
                  li x4, 0xd
                  li x5, 0x915b1a32
                  li x6, 0x0
                  li x7, 0x0
                  li x8, 0xf7d7396f
                  li x9, 0xddc9a4cb
                  li x10, 0xed4032d
                  li x12, 0xf94c75d2
                  li x13, 0x80000000
                  li x14, 0xf490c8a9
                  li x15, 0x0
                  li x16, 0x2
                  li x17, 0xf3e40d07
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0xff8f31bf
                  li x22, 0xd282fab5
                  li x23, 0xa
                  li x24, 0x2
                  li x25, 0xc
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0xc00dc490
                  li x29, 0xbc477088
                  li x30, 0xe
                  li x31, 0xa8fbc061
                  la x11, user_stack_end
main:             ori          s6, s10, -1186
                  c.or         a3, a0
                  sll          s6, a1, s2
                  c.add        s3, s7
                  c.andi       s1, -1
                  sub          s2, t0, s9
                  c.mv         s0, sp
                  slti         a4, t1, -631
                  add          t0, t6, gp
                  mulhsu       a2, a7, gp
                  lui          s10, 798014
                  slti         a4, t2, -1859
                  c.srai       a4, 12
                  sltu         t3, t3, zero
                  c.and        s0, a3
                  slti         a2, s10, 355
                  c.xor        a3, a3
                  addi         a0, t0, 1526
                  xori         t3, gp, -11
                  c.srai       a4, 11
                  c.li         a3, -1
                  mulhu        a2, t1, sp
                  srl          a6, t2, s10
                  ori          a7, a5, -716
                  sub          t6, s2, a7
                  sll          s9, a0, a0
                  addi         zero, s11, 1824
                  add          s4, a4, sp
                  and          t2, t1, s1
                  sub          a7, t1, s11
                  xori         gp, s3, 422
                  sra          t5, s10, t2
                  and          t5, a0, a4
                  slt          t4, zero, sp
                  lui          s9, 340616
                  mulhu        tp, s11, s7
                  or           s10, s11, s8
                  sll          ra, a5, s6
                  add          s9, s7, zero
                  xor          s7, s9, t6
                  slli         s11, s1, 28
                  ori          s2, t4, -1042
                  remu         t2, t0, s4
                  sltu         a3, s3, t2
                  c.srli       a3, 12
                  c.srai       s1, 3
                  c.and        s1, s0
                  mulhsu       tp, s3, s1
                  c.xor        s0, a5
                  addi         ra, a5, 1699
                  slli         s8, zero, 22
                  c.nop
                  xori         tp, s1, -710
                  mulhu        s4, s5, a5
                  slt          gp, a5, a2
                  c.nop
                  slli         s6, s3, 10
                  c.addi       t4, 15
                  mulhsu       s6, a0, s1
                  xori         s2, s3, 864
                  c.xor        s1, a1
                  sll          a3, t4, s10
                  sltiu        a2, a5, 1941
                  c.addi       t3, 3
                  c.srai       a4, 17
                  and          zero, t5, a6
                  slti         a7, s3, 1506
                  or           a3, a6, t6
                  c.nop
                  slli         t4, s4, 16
                  slti         a6, s6, -316
                  mulh         t2, t4, a5
                  c.lui        tp, 11
                  sra          t3, s4, a1
                  divu         a0, tp, sp
                  srl          t5, t4, s0
                  mul          t3, zero, a5
                  c.srli       a0, 31
                  xori         t3, a6, -1991
                  c.sub        a4, a2
                  add          s11, s4, s10
                  slt          s5, s7, s7
                  ori          t5, s4, 694
                  xori         a6, s9, 1051
                  and          s0, a1, a1
                  mul          ra, zero, a5
                  sll          t5, a4, a3
                  c.lui        s10, 6
                  xor          a4, s9, zero
                  c.andi       a0, -1
                  mulhu        gp, a4, s10
                  and          gp, s11, s9
                  c.mv         gp, s1
                  sltiu        s2, t4, -864
                  sub          t5, zero, s0
                  slti         s1, s3, -1251
                  c.li         a0, 1
                  c.xor        a0, a3
                  c.sub        a3, s1
                  or           s4, a1, s5
                  c.add        t3, s3
                  xor          a3, s9, t5
                  c.srli       a0, 14
                  and          a2, t3, s4
                  auipc        t4, 960754
                  mul          a7, s1, s3
                  c.add        a7, s10
                  and          ra, s9, a6
                  sll          a2, t2, a6
                  srl          ra, s8, s5
                  c.srai       a2, 17
                  srli         tp, a4, 15
                  c.sub        a0, a0
                  mulhu        a6, zero, s8
                  c.srli       s0, 7
                  c.add        a2, t4
                  auipc        t3, 670544
                  c.lui        a4, 17
                  c.xor        a3, s0
                  sltiu        s4, t5, -1236
                  andi         t1, t5, 643
                  ori          s6, a2, -1439
                  mul          s4, a0, s3
                  or           t3, s2, a5
                  mulh         s7, s5, tp
                  c.li         s5, -1
                  c.andi       s1, -1
                  ori          a6, t4, -1004
                  or           s7, s10, s8
                  mulhsu       t6, s2, a4
                  c.or         a3, a1
                  and          s10, t1, s6
                  slt          s1, gp, t1
                  mulh         a0, s3, a0
                  c.sub        a0, s1
                  slti         s8, ra, 1299
                  mulhsu       a2, s9, a5
                  c.andi       a0, -1
                  auipc        a4, 667935
                  mul          s10, s4, a0
                  c.sub        a3, s1
                  andi         a3, gp, 1110
                  c.or         a3, s0
                  ori          s1, t3, 1553
                  sltiu        s10, s3, 1744
                  nop
                  slt          s3, t1, t3
                  or           s2, s3, s8
                  c.and        s1, a3
                  mul          a7, a6, s0
                  divu         a0, t0, s10
                  rem          gp, a2, a6
                  c.sub        s1, s0
                  ori          s5, s10, -1554
                  sll          t2, s10, s2
                  xori         t1, gp, 1085
                  ori          a7, s8, -916
                  srai         gp, s7, 1
                  div          s1, a2, s4
                  c.xor        a0, a3
                  remu         tp, a5, t5
                  mulhsu       tp, t5, sp
                  add          s1, s10, t4
                  addi         a0, t2, -886
                  c.addi       s0, 4
                  div          tp, s4, t2
                  divu         a4, sp, s4
                  slt          t1, s8, s2
                  ori          zero, a2, 1232
                  mulhu        gp, s1, a5
                  xor          s11, s3, zero
                  remu         s11, s7, s5
                  c.srli       s1, 20
                  ori          s8, s5, -1356
                  add          t3, s0, s1
                  c.srai       a0, 9
                  slt          t6, t5, s5
                  slt          a3, s9, s0
                  mulhu        s11, a7, s2
                  remu         s5, a1, s9
                  auipc        gp, 402060
                  or           gp, t2, s6
                  mul          zero, sp, s3
                  xor          a0, s0, t3
                  c.slli       s2, 12
                  sltiu        s4, t4, 1368
                  xor          t2, t2, s11
                  slt          a2, a1, a4
                  c.and        a4, s0
                  c.nop
                  c.lui        ra, 2
                  c.srli       a4, 14
                  srai         a7, s3, 16
                  sll          t2, t6, s1
                  andi         tp, t1, 175
                  c.srai       s0, 10
                  c.mv         t0, s8
                  add          gp, sp, a0
                  srai         s1, tp, 22
                  rem          a0, a0, s10
                  srl          a4, a5, s1
                  divu         s3, s5, gp
                  sll          t5, tp, s0
                  nop
                  c.addi       t6, 18
                  c.li         a7, 22
                  c.andi       a0, 28
                  mulhu        s5, t2, t6
                  sll          ra, ra, t2
                  remu         zero, a4, t5
                  c.and        a4, a5
                  slt          s5, sp, s5
                  c.addi       s2, 14
                  xor          ra, a2, a0
                  mulh         s9, a0, a4
                  sll          a0, a4, s2
                  c.or         a2, a0
                  auipc        ra, 582337
                  c.mv         t1, tp
                  sltu         a3, a3, ra
                  div          a2, s7, a7
                  rem          zero, s10, t0
                  srl          t6, ra, t0
                  rem          s4, a2, s9
                  srl          s8, a5, s9
                  sll          t6, t4, s9
                  c.nop
                  srl          s5, a3, s0
                  ori          a2, t6, -228
                  ori          s11, s2, 1968
                  slti         t4, s1, -878
                  xori         t2, a7, -1146
                  c.srli       a4, 11
                  xori         gp, a7, 640
                  sltu         a6, ra, s6
                  c.srai       a4, 23
                  mulhu        a2, a5, s3
                  slt          t5, t1, t3
                  xor          s5, tp, t0
                  c.add        a6, s8
                  c.andi       s0, 14
                  mulhsu       t5, tp, s3
                  c.andi       a2, 5
                  xor          s8, s2, t0
                  mulhu        t1, s3, s8
                  addi         s0, a7, -1880
                  c.lui        s3, 19
                  c.andi       a3, -1
                  andi         s7, a6, 1540
                  auipc        s1, 825455
                  srl          a6, s9, a6
                  mulhu        s0, s2, t4
                  srli         s1, s9, 22
                  andi         s0, a6, -1905
                  srl          a4, t5, s2
                  auipc        s3, 843977
                  slti         s9, s2, -353
                  andi         ra, a5, 12
                  c.add        s4, gp
                  srli         tp, a0, 26
                  sltiu        s7, s3, -222
                  or           s2, tp, a0
                  or           t6, s5, a2
                  mul          a2, t2, s6
                  c.and        s1, a5
                  slt          gp, a4, t4
                  ori          t2, s7, -503
                  andi         t6, s5, 720
                  sltiu        zero, s8, -1905
                  c.andi       s1, -1
                  c.slli       s7, 30
                  c.nop
                  c.add        ra, t0
                  and          a2, s9, a4
                  remu         s0, t2, t0
                  sub          t1, t4, s5
                  srai         t4, s5, 16
                  c.or         s1, a1
                  c.srai       s1, 27
                  sltu         a4, a0, tp
                  divu         gp, s1, a2
                  c.li         t1, 27
                  c.and        a3, a4
                  slli         s8, tp, 23
                  mulhu        s1, s6, s1
                  c.srai       a3, 26
                  sra          s2, ra, zero
                  ori          s7, a0, -222
                  c.addi       s11, 23
                  c.srli       a0, 25
                  lui          a0, 267817
                  divu         zero, s4, a7
                  c.lui        t0, 19
                  sra          s1, t0, a3
                  sra          t1, s1, a1
                  slti         t1, t6, 1775
                  mul          a0, s0, s4
                  c.nop
                  addi         a4, s8, -1384
                  rem          s3, s10, a0
                  slli         gp, sp, 10
                  div          s4, a0, s4
                  srai         a4, a4, 4
                  xori         s6, a4, -220
                  sltu         t5, s2, a5
                  addi         t1, a2, -2013
                  andi         a6, t0, -1726
                  c.mv         s1, a4
                  c.mv         t2, s11
                  div          s8, a4, s4
                  mul          s1, t2, s9
                  and          zero, a0, t3
                  sltiu        s3, zero, -961
                  c.andi       a3, 26
                  andi         t6, t0, 974
                  c.srli       a0, 13
                  c.nop
                  c.srai       a2, 13
                  c.andi       a0, -1
                  c.sub        a0, a3
                  mulhsu       t6, s11, t6
                  c.or         s1, a5
                  c.srai       a3, 4
                  or           s5, a3, a6
                  nop
                  xor          t4, s11, ra
                  slt          t5, ra, a2
                  xor          s8, tp, a0
                  xori         s8, gp, 2020
                  xori         zero, a0, -1206
                  c.mv         s5, ra
                  c.or         a4, s0
                  mulhu        s8, s11, t5
                  srai         s1, t3, 26
                  add          s9, s8, s3
                  mulhu        s1, t6, a4
                  addi         s3, t6, -1896
                  add          t5, s0, t5
                  c.and        a4, a5
                  xor          tp, a1, a4
                  sub          s4, t0, a0
                  and          t2, s6, s3
                  sra          s11, a2, s8
                  slt          s7, a4, s4
                  auipc        a4, 905712
                  c.srai       s0, 12
                  c.mv         gp, t6
                  ori          t0, a3, 199
                  addi         a7, gp, 811
                  and          s6, gp, s2
                  c.xor        a0, a0
                  slti         zero, a7, 158
                  nop
                  c.andi       a2, 30
                  mulhsu       s11, a6, s1
                  c.or         a4, a4
                  mul          gp, a6, s0
                  srl          t6, s5, s10
                  addi         gp, t3, 1344
                  c.srai       a2, 24
                  sltiu        a0, s7, 1251
                  auipc        zero, 529221
                  mul          a6, t4, a7
                  c.mv         t3, a6
                  and          a7, ra, s4
                  slti         s9, t6, 1977
                  div          t0, s8, t3
                  c.andi       s1, 11
                  c.srli       a2, 6
                  andi         s3, s0, -1240
                  nop
                  xori         s6, sp, 1385
                  div          s9, tp, t6
                  c.add        s3, s8
                  addi         s3, s3, 1370
                  and          s2, t1, s0
                  xor          s11, s4, s3
                  c.li         s4, 10
                  srl          t0, sp, a1
                  c.or         a0, a3
                  mul          s4, tp, s9
                  slti         t6, t2, 515
                  xor          s0, t5, ra
                  mulhsu       s11, a2, s10
                  or           gp, tp, a1
                  c.lui        s2, 31
                  mulh         a7, a4, a3
                  mulhsu       gp, gp, a2
                  c.slli       a0, 23
                  srai         s8, t6, 31
                  mulhsu       s8, s7, a0
                  lui          s2, 515142
                  c.mv         a6, tp
                  c.slli       s0, 1
                  srl          ra, tp, s11
                  mulhu        s5, a6, s7
                  rem          s7, t3, t6
                  c.lui        s6, 2
                  c.xor        s1, a5
                  c.lui        t4, 10
                  c.sub        a0, s0
                  c.and        s1, a1
                  lui          t1, 429423
                  mulh         s8, sp, s3
                  slt          s3, tp, zero
                  c.slli       s6, 3
                  sltu         t4, a0, s7
                  srl          a0, zero, a1
                  mulhu        zero, t0, t1
                  sltiu        s8, a6, -492
                  mulhu        s10, t0, t5
                  rem          gp, tp, s9
                  div          s3, a5, s0
                  slli         a3, a3, 16
                  add          a4, a6, s8
                  c.lui        s4, 1
                  c.sub        s1, a5
                  srli         a4, s9, 9
                  or           a4, tp, a1
                  ori          s2, a7, -930
                  slt          zero, a4, a5
                  sll          t1, s0, s1
                  srl          a7, s9, s10
                  sub          s9, s11, gp
                  c.srai       a4, 6
                  auipc        s0, 307407
                  addi         t2, s0, 589
                  c.nop
                  nop
                  c.mv         gp, s4
                  addi         a2, sp, 821
                  c.li         gp, -1
                  rem          s6, zero, s2
                  srl          s11, s1, a3
                  sltiu        s0, zero, 813
                  and          s4, a4, t2
                  addi         s8, a2, 55
                  lui          a2, 497049
                  add          s5, a2, a3
                  divu         a4, s5, a6
                  c.slli       s3, 19
                  sub          zero, tp, s2
                  divu         t6, s8, a6
                  c.srli       a0, 23
                  slli         t4, t5, 0
                  sltu         s11, s3, gp
                  div          t2, gp, sp
                  sltu         tp, s8, a2
                  andi         a3, s6, -1263
                  c.mv         s2, s7
                  add          s11, s1, zero
                  xor          t6, s9, s11
                  c.add        s11, a6
                  rem          s1, s3, t3
                  sra          s4, sp, tp
                  sub          t0, s4, s4
                  addi         s10, a5, -1143
                  c.and        s1, s0
                  c.slli       s2, 4
                  slti         t3, t4, -105
                  sub          gp, a1, s4
                  xori         s4, gp, 1602
                  add          zero, s3, a7
                  sltu         tp, a1, t0
                  sub          s10, s0, s1
                  c.and        a3, a1
                  auipc        a4, 824770
                  and          tp, t4, a4
                  ori          s11, a0, 1940
                  lui          s6, 29461
                  lui          gp, 51856
                  c.xor        a2, a3
                  sra          s7, t5, s3
                  and          a0, tp, a5
                  rem          zero, s3, a5
                  mulhsu       ra, s3, ra
                  sltu         s1, a7, t4
                  c.li         t5, 28
                  c.andi       s0, 20
                  slt          s11, s0, t6
                  c.add        t0, s4
                  add          a6, a7, s8
                  xor          a0, zero, a3
                  add          s3, a6, t3
                  c.addi       t6, -1
                  srli         s11, s11, 18
                  lui          s4, 610951
                  add          t3, t3, s0
                  and          t6, a1, t3
                  c.and        a0, s0
                  srli         t2, s6, 27
                  sub          s7, s10, zero
                  c.lui        a7, 4
                  c.andi       s1, 15
                  xor          s2, s11, s8
                  c.sub        a2, a1
                  and          t3, a3, gp
                  c.srai       s1, 17
                  c.srai       a4, 2
                  mul          a2, sp, gp
                  c.and        a0, a2
                  divu         s11, a4, a6
                  divu         s9, zero, s10
                  c.xor        s0, a1
                  c.mv         a6, s10
                  c.slli       s4, 8
                  divu         t0, t2, a6
                  c.andi       a3, 24
                  auipc        t4, 103480
                  sub          a3, t5, gp
                  sltu         s1, s8, a5
                  c.and        a2, a4
                  c.andi       a3, 7
                  c.sub        s1, a4
                  c.mv         s8, a5
                  or           t0, t2, s0
                  div          s6, sp, s6
                  div          zero, t5, a3
                  nop
                  c.li         s7, 26
                  c.lui        t0, 10
                  mulhsu       a2, s7, s11
                  sub          s4, s1, ra
                  c.addi       a3, -1
                  sra          a0, t1, t5
                  lui          a0, 349944
                  c.srli       s0, 22
                  c.sub        s1, a5
                  srai         s4, s10, 22
                  slt          s10, t1, s2
                  ori          a0, a2, 927
                  remu         s4, t4, s1
                  rem          a3, t0, s4
                  nop
                  srai         s9, a4, 24
                  add          a3, a7, a3
                  rem          a6, tp, t5
                  mulhu        t2, s6, a7
                  divu         s1, a0, a4
                  srai         t6, t5, 21
                  div          t3, t1, s4
                  sll          t6, s3, s0
                  auipc        t0, 979204
                  c.srai       s1, 4
                  c.addi       ra, -1
                  c.add        s6, t1
                  mul          s0, a6, a5
                  c.xor        a0, a4
                  lui          t4, 819186
                  c.add        t4, s9
                  c.nop
                  c.and        a0, a5
                  sltiu        t0, t6, -1370
                  remu         ra, s0, t4
                  c.addi       s0, 12
                  xori         s1, s10, 89
                  mulhsu       ra, ra, sp
                  c.sub        a0, a5
                  c.lui        a4, 30
                  c.and        s1, a1
                  div          s11, a5, t1
                  srli         s3, s5, 23
                  c.slli       ra, 2
                  mulh         s6, a7, a6
                  c.add        a6, a1
                  srl          a4, t5, s1
                  c.li         s4, 7
                  c.srai       s0, 23
                  slti         gp, t1, 397
                  c.li         a3, -1
                  and          s4, t0, ra
                  srl          s7, t0, a7
                  c.nop
                  and          a7, s10, t3
                  srli         t1, s9, 30
                  xori         s2, t6, 338
                  srl          t4, a7, t6
                  c.add        s5, s7
                  srl          t4, s6, a6
                  c.sub        a3, a1
                  srli         s8, a0, 13
                  rem          a6, a3, a1
                  sra          t5, s7, s2
                  and          t0, zero, s2
                  or           s11, t6, s4
                  sltiu        a2, tp, -955
                  sltu         t0, t1, s1
                  sub          a4, t1, s11
                  ori          a2, gp, -750
                  c.add        t2, s3
                  div          t2, a7, t3
                  c.andi       a0, -1
                  c.xor        a4, a2
                  auipc        t1, 156944
                  rem          a6, t1, s7
                  mulh         t2, s4, s1
                  andi         a6, s7, -1915
                  divu         s9, s6, s10
                  c.and        s1, a5
                  c.andi       a4, -1
                  lui          s9, 213090
                  c.li         a6, 3
                  c.andi       a0, -1
                  sltiu        s8, tp, -1520
                  c.or         a2, a1
                  sra          t3, a3, a4
                  srai         s10, s4, 23
                  andi         s6, s2, -648
                  auipc        a2, 358282
                  srl          s11, s3, tp
                  mulh         s5, t0, t5
                  andi         t6, s5, 22
                  c.xor        s1, a0
                  auipc        t0, 416463
                  c.and        s1, a5
                  c.slli       a3, 15
                  xori         s2, s4, -995
                  sltiu        t6, s4, -725
                  sltiu        tp, s9, -113
                  mulhu        t0, s7, s9
                  slli         s3, t5, 18
                  and          s4, a6, s3
                  auipc        a6, 111678
                  srai         t5, gp, 21
                  mulh         s1, t4, ra
                  srli         s10, s10, 19
                  auipc        tp, 258542
                  mul          t0, s9, a0
                  xor          s9, s4, s4
                  c.nop
                  c.mv         s2, s8
                  addi         t5, s8, 796
                  xor          s11, a5, t5
                  remu         s9, a6, a5
                  lui          ra, 851370
                  sltiu        a4, a2, 1616
                  c.lui        s11, 18
                  c.srai       a2, 7
                  or           a6, a0, a4
                  xori         t6, s11, -1933
                  c.li         t1, -1
                  c.andi       a4, -1
                  ori          a6, s2, 1540
                  sub          t5, a2, s9
                  c.sub        s1, a5
                  addi         s2, s7, 1315
                  mul          gp, t3, s6
                  c.and        a4, s0
                  or           a3, a0, s3
                  c.add        s6, sp
                  and          t3, s10, s4
                  c.li         s7, -1
                  c.or         a3, a0
                  mul          s2, s6, t2
                  sltu         s5, a1, zero
                  auipc        a3, 61151
                  andi         zero, s6, -1365
                  c.nop
                  srl          tp, s2, t4
                  c.lui        s0, 9
                  and          s10, s10, sp
                  c.add        gp, s6
                  c.srli       s0, 18
                  lui          s2, 77136
                  remu         s7, s2, s2
                  c.andi       a4, 4
                  c.or         s1, a0
                  addi         a3, a5, -432
                  xor          zero, t3, s11
                  c.add        a3, a3
                  c.addi       s3, -1
                  rem          zero, s4, a0
                  sll          a0, zero, a0
                  xor          t5, s6, s2
                  sll          t3, s7, t2
                  xor          gp, t2, a0
                  c.and        s1, a0
                  srai         s3, s2, 3
                  srai         t0, a6, 2
                  and          a3, a0, t0
                  c.sub        a2, a2
                  divu         a7, s4, s7
                  srai         t1, s6, 28
                  mulh         t1, s9, a1
                  addi         ra, a5, -662
                  xori         t1, t6, -930
                  mulhsu       s11, s3, s9
                  srai         s8, s2, 30
                  divu         a2, t2, zero
                  and          s0, t1, s9
                  sra          gp, s11, s2
                  mulh         a6, s0, ra
                  sub          tp, gp, s0
                  c.sub        s1, a3
                  sltiu        s1, s5, 2037
                  c.and        a4, a1
                  lui          a3, 843742
                  srl          zero, s4, tp
                  c.slli       s0, 3
                  and          gp, sp, t0
                  sltu         t5, a1, a0
                  slt          s8, t3, s1
                  c.srai       a2, 17
                  remu         s2, ra, s4
                  addi         s1, t2, -1381
                  and          t4, t3, s5
                  nop
                  c.add        a6, t0
                  nop
                  mulhu        a0, t1, a4
                  xor          s9, s2, zero
                  c.xor        a3, a0
                  c.nop
                  c.lui        a0, 25
                  slli         s11, t4, 26
                  or           s1, gp, a6
                  add          t3, s0, tp
                  sltu         tp, s0, t0
                  auipc        tp, 708262
                  c.mv         s1, t6
                  sltu         s7, t6, a1
                  c.addi       t0, 27
                  slt          tp, s1, t4
                  slti         t2, s9, -488
                  ori          a7, a2, 1438
                  c.nop
                  c.nop
                  nop
                  and          s7, s0, s10
                  c.addi       t6, 24
                  addi         s3, t6, 1299
                  sll          s10, a5, s7
                  c.slli       t4, 25
                  remu         a0, a3, t6
                  c.lui        s6, 16
                  or           t6, s1, s9
                  div          a2, gp, zero
                  div          s2, s5, s3
                  sub          t0, zero, a7
                  srai         s1, s6, 14
                  mulhu        a0, s1, s6
                  c.xor        a4, a1
                  c.nop
                  nop
                  srai         a0, s2, 25
                  c.lui        t2, 10
                  slti         a3, a4, -1639
                  sra          t1, a4, a3
                  sra          zero, a0, a3
                  add          s0, a6, tp
                  mul          s8, s8, t2
                  xor          zero, s9, a3
                  c.andi       a3, 24
                  c.li         a6, -1
                  ori          t2, s7, 1791
                  c.li         t0, -1
                  div          a4, sp, t3
                  c.and        a0, a4
                  c.li         a3, 10
                  srli         t5, a0, 17
                  c.sub        a0, a5
                  c.or         a0, s1
                  c.srli       s1, 25
                  c.srli       s1, 30
                  andi         gp, t6, -1791
                  c.lui        t3, 29
                  c.addi       t3, -1
                  sub          s8, a0, t6
                  nop
                  andi         t6, t4, 315
                  sra          s2, a4, a7
                  or           s8, s3, tp
                  rem          s0, s11, s10
                  or           t0, a3, tp
                  c.and        a3, a2
                  and          s4, s7, zero
                  c.slli       s8, 28
                  slli         t6, t1, 27
                  c.nop
                  sra          s8, s0, a6
                  rem          s9, a1, a7
                  or           t1, a0, ra
                  auipc        s5, 577508
                  c.mv         a2, a3
                  c.li         s5, -1
                  c.mv         gp, gp
                  mulhsu       t3, a5, a3
                  sra          s6, ra, s4
                  c.srai       a3, 7
                  c.li         s2, -1
                  sltu         t3, a5, t3
                  c.add        tp, a3
                  c.xor        a3, a2
                  xor          s10, a0, a2
                  sltiu        t2, a6, -574
                  slli         a6, a2, 25
                  c.nop
                  mul          a7, tp, zero
                  c.lui        a4, 30
                  and          t1, s5, s9
                  mulhsu       a2, s3, s10
                  div          s11, t2, s8
                  divu         a6, zero, a6
                  srl          a6, ra, s9
                  c.or         a0, a4
                  div          s0, a5, sp
                  slti         t5, s2, -416
                  c.slli       s11, 29
                  auipc        a0, 385651
                  c.addi       s2, 14
                  c.li         a3, 12
                  and          ra, a5, s5
                  srl          s5, sp, a1
                  div          a4, a5, t4
                  ori          a4, s0, 692
                  c.andi       s1, -1
                  srl          t2, a1, ra
                  c.srli       a3, 28
                  slli         a4, t0, 1
                  sltu         gp, a3, a3
                  sltu         s3, a1, t1
                  srai         s5, s11, 17
                  mulhu        gp, s11, s7
                  c.mv         t0, s8
                  mulhu        s9, t1, s1
                  c.li         a0, 28
                  c.mv         a2, s5
                  c.srli       s1, 30
                  or           gp, a4, s3
                  nop
                  remu         s0, a0, s3
                  xor          gp, s0, gp
                  mulhu        a3, a1, s7
                  addi         a7, a3, -938
                  lui          t4, 766228
                  add          ra, s11, a2
                  div          t3, a0, s4
                  divu         s2, a4, t4
                  c.srli       a0, 18
                  c.mv         s0, s8
                  or           s11, ra, a0
                  slli         zero, tp, 19
                  c.xor        a0, a4
                  mulhu        tp, a3, t3
                  srli         t2, tp, 17
                  auipc        s0, 548659
                  c.and        a0, s0
                  lui          a3, 704327
                  c.or         a0, a0
                  lui          a2, 1038401
                  c.slli       s5, 11
                  c.srli       a4, 20
                  slti         t2, a7, -208
                  mulhsu       zero, s11, s0
                  sltu         t6, sp, s4
                  lui          s2, 397343
                  sll          t0, s9, s8
                  c.xor        s0, a4
                  sra          t4, t5, sp
                  mulhsu       a3, s1, tp
                  sub          s2, s7, a4
                  or           a4, a7, s3
                  sltiu        zero, s5, 823
                  xori         gp, t5, -1669
                  c.add        t2, sp
                  add          s8, a5, a6
                  and          t4, a0, a0
                  c.xor        a2, a4
                  div          s10, s11, s4
                  c.slli       s6, 12
                  c.add        gp, s2
                  mulhsu       s0, a0, tp
                  mul          s8, s3, sp
                  c.srai       a3, 26
                  slti         s5, s1, 1584
                  c.andi       s0, 1
                  auipc        a3, 67713
                  slli         s6, sp, 8
                  c.andi       s0, 23
                  sll          s3, a0, t6
                  rem          a7, t4, a2
                  c.slli       t2, 2
                  c.add        tp, s5
                  c.addi       s9, -1
                  c.and        a4, a4
                  c.lui        s2, 19
                  ori          t4, t3, -1739
                  ori          s2, ra, -1924
                  mulhu        zero, t2, t4
                  nop
                  or           a3, ra, a6
                  div          s9, t6, s7
                  add          a3, s8, a7
                  and          s0, sp, a7
                  sll          a4, a1, s7
                  c.or         a4, a0
                  sll          s0, a5, s1
                  c.addi       s2, 17
                  sltiu        gp, s9, 517
                  remu         a6, t6, t0
                  sltiu        a3, t4, -799
                  c.xor        a0, a4
                  slt          a6, zero, s4
                  c.and        a0, s0
                  c.mv         s1, tp
                  c.lui        s10, 9
                  c.slli       gp, 24
                  mulhsu       t0, s1, s2
                  c.addi       s0, 18
                  c.lui        s10, 6
                  sra          t4, zero, s0
                  xor          s4, s6, s10
                  slt          zero, a2, a5
                  nop
                  c.and        a4, s1
                  c.li         a6, 2
                  add          a0, a1, t5
                  mulh         a0, a5, a0
                  c.srai       a3, 15
                  c.li         s0, -1
                  remu         t2, s1, s6
                  mulhu        s2, a1, s9
                  sltiu        a7, s10, -150
                  nop
                  c.nop
                  mulh         s10, s3, s1
                  sltiu        s10, a7, -413
                  c.sub        a4, a2
                  srai         gp, s6, 11
                  c.add        t0, a0
                  lui          a4, 265587
                  and          s7, s9, a1
                  c.addi       t1, 30
                  c.xor        a4, a5
                  c.srai       s1, 14
                  c.sub        a0, s0
                  c.li         t4, 30
                  c.xor        a4, a0
                  sra          s4, a6, s9
                  c.sub        a3, a4
                  auipc        a0, 679217
                  sll          t3, s9, t3
                  srli         s0, a1, 30
                  or           a3, s0, a2
                  lui          s0, 714423
                  or           a4, a6, t3
                  c.xor        a3, a1
                  rem          t1, t5, a3
                  div          s10, t5, s4
                  andi         s7, s6, -1924
                  c.sub        a2, a5
                  andi         a4, s11, 1451
                  sub          s7, a0, t6
                  sltiu        a0, s2, -1834
                  xori         t6, a3, 1558
                  xori         s2, a4, 2045
                  c.or         a3, a3
                  xori         s3, a3, -1700
                  add          tp, t4, a0
                  c.add        s1, t5
                  c.xor        a4, s0
                  slt          a6, s4, t1
                  mulhsu       s10, s1, s3
                  xor          s0, a0, a6
                  c.sub        a4, a3
                  slti         a2, s1, -1816
                  c.xor        a0, a3
                  mulh         gp, tp, t0
                  mulh         a7, gp, tp
                  c.xor        a4, s0
                  c.slli       a4, 22
                  c.andi       a0, -1
                  c.xor        a2, a4
                  c.addi       t5, 28
                  c.mv         t0, a6
                  rem          s7, ra, t0
                  c.sub        a3, a4
                  mulhu        s1, t0, sp
                  sub          gp, a1, sp
                  c.add        a6, s3
                  c.srli       a3, 7
                  and          a0, t0, s2
                  xori         a2, a1, -1015
                  xor          t1, a0, t2
                  c.andi       a0, 23
                  add          s11, t1, t2
                  and          s10, t1, ra
                  ori          t1, a0, 474
                  srai         s4, tp, 23
                  and          a3, a3, t5
                  sub          t3, t5, s7
                  sltiu        a6, sp, -1807
                  mulhsu       a7, s7, tp
                  addi         s11, s6, 1023
                  mulhu        s8, s3, t4
                  c.xor        a2, a2
                  or           s1, t1, a0
                  nop
                  add          s5, s8, a3
                  addi         s3, s4, -757
                  sltu         t5, s0, gp
                  sra          a4, ra, s8
                  divu         gp, sp, s10
                  c.or         a2, a3
                  mulhsu       a7, s8, tp
                  srl          a3, s1, a7
                  c.xor        a2, a0
                  nop
                  c.lui        t2, 22
                  c.and        a4, a0
                  sub          s10, s1, t3
                  andi         a6, s8, 1813
                  c.lui        s1, 31
                  remu         a2, t5, sp
                  lui          t6, 312197
                  xor          a7, s7, a0
                  c.add        ra, s4
                  xor          s3, t5, t3
                  sll          t1, s8, s0
                  c.add        t4, gp
                  remu         ra, s6, a6
                  slli         s4, t3, 25
                  c.and        a3, a0
                  slti         t2, t5, -169
                  xor          t0, s4, s4
                  rem          s6, s5, t3
                  or           t0, ra, s11
                  c.li         gp, -1
                  andi         a6, a2, -229
                  c.andi       s0, 0
                  or           t2, t3, gp
                  mulh         s11, s11, s2
                  c.li         gp, 28
                  sltu         s3, s11, s10
                  srli         a3, s4, 9
                  sltiu        t4, s5, 1703
                  or           zero, s10, t0
                  nop
                  mul          gp, ra, s7
                  sub          s7, s10, s1
                  remu         a6, s7, s5
                  lui          s5, 694050
                  c.srai       a3, 29
                  sub          s2, gp, a4
                  rem          s0, s7, s8
                  srl          t2, s8, t3
                  slt          gp, ra, tp
                  div          t1, t1, s1
                  c.xor        a2, s0
                  srai         s9, a4, 14
                  sltu         tp, s3, a6
                  rem          a0, ra, sp
                  mulhu        s10, zero, ra
                  sltiu        s8, s0, -1941
                  mulhu        s8, a0, s11
                  c.sub        a0, s1
                  c.lui        t1, 9
                  c.lui        t4, 10
                  srl          t2, sp, s4
                  or           s2, a5, tp
                  srli         s6, gp, 7
                  mulhu        a4, zero, t3
                  div          t2, a3, t6
                  div          gp, a7, s11
                  ori          t2, a7, -215
                  remu         s10, t6, s6
                  and          s0, s5, s5
                  xori         s10, t0, -1984
                  sll          gp, a3, s3
                  lui          a6, 320220
                  c.xor        a4, a5
                  mulhu        s8, s6, gp
                  rem          s9, a4, a6
                  mulhu        t1, a2, a5
                  c.slli       t1, 22
                  c.srli       a0, 23
                  c.li         a2, -1
                  andi         t4, t5, 381
                  addi         tp, t6, 1613
                  mul          ra, t3, s10
                  addi         a3, t6, -523
                  divu         s5, a7, zero
                  sll          s4, t3, s8
                  andi         a6, sp, 976
                  c.nop
                  lui          s10, 614742
                  c.li         ra, 5
                  c.slli       tp, 20
                  xori         t4, zero, -1225
                  mulhu        s3, s1, a7
                  auipc        s5, 827340
                  slt          s11, zero, t1
                  srl          s0, t6, zero
                  slli         s5, s3, 0
                  mulhu        t6, a1, t6
                  sltu         s11, s4, s6
                  c.srli       s1, 1
                  remu         s5, s5, a6
                  sll          a7, tp, t3
                  sltiu        t0, zero, 207
                  mulhsu       t4, s11, s4
                  slti         s10, sp, 581
                  sltiu        a0, zero, 733
                  nop
                  andi         s8, a4, 1006
                  andi         s2, s0, -659
                  srli         s1, a1, 24
                  srai         s8, s4, 14
                  mulhu        t6, s4, sp
                  addi         a4, a7, 1753
                  xor          s8, s5, a2
                  divu         ra, s8, a2
                  mulh         t5, s7, sp
                  andi         t4, zero, 1485
                  slt          s11, t3, gp
                  c.add        s0, a6
                  slti         a3, t0, -252
                  srl          s9, a2, s11
                  c.mv         a3, t0
                  c.xor        s1, a0
                  c.slli       ra, 15
                  srl          s4, tp, a7
                  c.or         a3, a0
                  mulhsu       tp, t1, a5
                  c.or         a2, a5
                  c.andi       a4, -1
                  srli         tp, s6, 10
                  c.addi       s1, 7
                  mul          gp, ra, s8
                  mulhsu       a7, ra, s2
                  c.srai       s1, 9
                  srli         a0, t2, 25
                  or           t2, s4, a2
                  c.nop
                  c.xor        a3, s0
                  sll          a4, s9, a0
                  sub          s5, t1, s1
                  sltu         s6, sp, s6
                  xor          t3, a6, a1
                  srl          t1, t0, s11
                  add          s6, tp, s6
                  c.lui        t6, 26
                  slti         a3, a1, 380
                  srai         a6, ra, 18
                  sra          t6, a2, t1
                  sltu         s8, a3, tp
                  xori         zero, zero, 93
                  c.nop
                  ori          s3, t4, 182
                  c.addi       a3, -1
                  srli         a4, s9, 23
                  sra          s6, t3, s9
                  addi         s11, t6, -963
                  sra          s3, a1, a4
                  c.slli       a7, 14
                  xori         t6, t5, -1128
                  mul          t3, a3, s10
                  auipc        s1, 833043
                  c.add        tp, s8
                  c.slli       ra, 18
                  xori         a2, s8, 1492
                  c.or         a3, a4
                  c.add        t0, a0
                  c.lui        tp, 13
                  c.lui        s5, 26
                  mulhu        t0, t1, s6
                  or           a6, s11, a1
                  add          t2, s0, a5
                  slt          t6, a6, s6
                  addi         s8, zero, -1886
                  c.addi       t5, -1
                  sra          s7, t0, s0
                  c.add        a3, s4
                  andi         s11, s2, -570
                  slti         t4, s8, 1237
                  c.addi       s5, 11
                  slt          t5, gp, gp
                  c.srli       a3, 16
                  div          s1, s7, a5
                  c.andi       a0, -1
                  ori          tp, ra, 557
                  mulhsu       a2, t3, t6
                  c.slli       ra, 18
                  slti         s11, s7, 635
                  c.sub        a3, a2
                  c.and        a2, s1
                  andi         t3, t3, 26
                  srli         t0, gp, 9
                  addi         s5, a5, -1270
                  c.nop
                  or           s7, t2, t2
                  c.addi       a0, -1
                  sltu         a6, a5, t2
                  andi         s2, a7, -1571
                  mulhsu       t5, s10, s6
                  c.mv         t6, s3
                  c.addi       ra, 20
                  srl          t2, s10, a1
                  srl          a6, s5, s11
                  mulhsu       s1, s2, s11
                  divu         a3, t6, t3
                  mul          a6, t4, a3
                  ori          s0, ra, -927
                  c.xor        s1, a4
                  addi         s6, t0, -965
                  c.slli       s1, 12
                  lui          zero, 251212
                  andi         t2, t2, 783
                  c.add        s1, gp
                  auipc        t5, 257372
                  andi         s10, s2, -1833
                  addi         s3, s6, -304
                  mulh         s11, s10, a4
                  c.srai       s0, 3
                  mulhsu       t0, s4, s10
                  andi         zero, ra, -146
                  lui          t1, 463083
                  c.mv         s7, tp
                  c.or         a3, a4
                  sra          s7, t6, a5
                  divu         s8, t2, s2
                  remu         t3, s3, a2
                  srl          a7, a6, a7
                  divu         s8, ra, t5
                  andi         tp, a5, -2031
                  xor          a6, s7, s6
                  divu         a3, s8, s4
                  sltiu        t4, s6, -994
                  xor          gp, t6, zero
                  ori          t5, s11, 1857
                  srai         t1, s2, 2
                  lui          zero, 356807
                  c.and        a0, a2
                  c.xor        s0, a2
                  c.xor        s0, a4
                  srli         t0, s2, 4
                  xori         s4, a5, -751
                  c.srai       s0, 2
                  c.xor        a2, a3
                  lui          t5, 1015343
                  sra          s6, t3, a5
                  c.srai       a2, 26
                  lui          t5, 572211
                  c.addi       t4, 10
                  c.srai       a4, 19
                  slt          a3, t4, s4
                  sltiu        s2, a5, -964
                  or           s5, a0, zero
                  sltu         t2, tp, t4
                  sltu         s10, t4, s5
                  c.and        s1, a4
                  c.mv         s0, ra
                  c.srli       a2, 31
                  addi         s6, a2, -349
                  xori         zero, a7, 914
                  remu         s2, a7, s2
                  c.and        a3, a4
                  c.add        a4, s10
                  nop
                  sub          s7, a3, a6
                  c.xor        a2, a4
                  or           s1, s0, t0
                  srli         s11, sp, 7
                  c.srai       a4, 10
                  slli         t2, t1, 16
                  c.and        a3, a5
                  div          s5, ra, a2
                  add          s7, s8, tp
                  xori         s6, sp, -553
                  lui          t5, 450750
                  div          t5, s11, s2
                  c.mv         t4, s5
                  sra          s11, s5, a1
                  slti         a3, a3, 667
                  c.sub        s1, a5
                  c.srli       a3, 13
                  rem          a0, t0, s5
                  mul          t0, s11, s9
                  div          a3, a4, s0
                  and          a6, t1, s1
                  or           t6, sp, tp
                  xor          s9, t2, t1
                  c.mv         s7, s1
                  c.sub        a4, a5
                  or           a0, t5, a3
                  sub          s2, s4, a3
                  c.addi       t2, 27
                  xori         s9, s1, -519
                  c.lui        t1, 7
                  divu         t3, a6, a6
                  c.nop
                  xor          s5, a1, s2
                  srl          ra, a5, s4
                  sra          s8, gp, s8
                  sltiu        s11, sp, -1156
                  sra          tp, s5, ra
                  sltu         s11, s9, s9
                  mulhu        tp, gp, s5
                  mulhsu       s4, a4, s1
                  div          t1, t1, s10
                  sltiu        t3, t3, 1950
                  slli         s9, a1, 16
                  sub          a7, s5, s7
                  c.li         a2, -1
                  andi         t0, s1, -618
                  srai         t0, s3, 23
                  auipc        s1, 270531
                  sra          s1, t6, tp
                  slt          s11, s9, gp
                  addi         s10, t4, 511
                  remu         t4, s4, a3
                  c.srli       a0, 2
                  srai         t6, s10, 6
                  and          t3, s3, a1
                  c.addi       gp, -1
                  add          s8, a7, a0
                  xor          s6, s7, a5
                  slt          t2, a5, t4
                  c.addi       s3, 22
                  ori          s5, t3, 806
                  c.mv         a7, s1
                  c.srai       a2, 9
                  c.srli       s0, 13
                  c.addi       t1, -1
                  remu         a7, s7, s10
                  c.addi       gp, 3
                  c.lui        tp, 17
                  sll          a0, s11, s1
                  remu         t4, s2, t1
                  ori          gp, s10, -1684
                  lui          s1, 448010
                  c.lui        s1, 17
                  ori          s5, a7, 529
                  divu         t5, s2, s4
                  srai         s2, a4, 10
                  c.or         s1, s0
                  sltu         a6, s3, s3
                  c.or         s0, a3
                  div          a4, a1, zero
                  c.xor        a4, s1
                  c.sub        a0, a5
                  or           gp, s3, s9
                  sll          a7, a3, t0
                  c.slli       tp, 21
                  c.and        s1, a5
                  c.andi       a0, 21
                  slti         a2, t4, -1580
                  xori         a3, s0, 573
                  c.mv         t6, a7
                  div          s1, tp, a4
                  sltu         a0, s1, s3
                  c.li         t1, 31
                  mulhu        a7, s11, s9
                  ori          t1, gp, 1367
                  c.nop
                  srai         zero, tp, 18
                  ori          t5, s8, 245
                  slti         t1, s8, 1263
                  mul          a0, t0, s2
                  c.li         s4, -1
                  srai         s10, ra, 30
                  c.slli       a0, 20
                  slti         s11, s4, 1666
                  c.addi       t4, -1
                  c.mv         t1, s1
                  c.srai       s1, 26
                  c.lui        tp, 21
                  srl          t5, a0, s4
                  c.or         a0, a0
                  c.or         a4, a1
                  xori         s10, s1, -1482
                  lui          t4, 567386
                  slti         s3, a4, 1189
                  auipc        ra, 573685
                  sltu         t2, a5, a5
                  addi         a3, gp, -1222
                  sub          t6, s6, s8
                  lui          s8, 506978
                  lui          t6, 168009
                  xori         s8, s0, 264
                  c.and        a2, a5
                  andi         a0, t1, 1663
                  c.addi       s9, -1
                  addi         gp, s8, -901
                  slt          s6, s11, sp
                  c.slli       t6, 8
                  sll          a4, t6, s11
                  c.slli       t0, 28
                  c.mv         ra, a5
                  srai         a7, t0, 20
                  c.nop
                  srli         a6, t3, 20
                  and          a0, s0, t5
                  mulhsu       s7, t3, t2
                  addi         s7, t2, -1159
                  remu         s1, t6, s10
                  rem          s10, t4, s5
                  mul          t3, a3, s7
                  xor          t3, a4, a4
                  sra          t4, s6, s3
                  auipc        a6, 522420
                  add          a2, sp, a0
                  c.li         s10, 15
                  c.and        a2, s1
                  c.add        tp, s5
                  c.nop
                  c.xor        a4, a3
                  ori          a4, s6, -2028
                  slt          s9, s4, s5
                  divu         zero, s4, t0
                  mulhsu       t1, s4, a1
                  c.addi       a6, -1
                  lui          t6, 543490
                  srli         s2, a5, 31
                  slli         a4, a1, 23
                  addi         s2, gp, 1855
                  sra          t4, a4, s4
                  c.slli       s11, 12
                  xori         s4, a3, 465
                  c.li         a6, 1
                  mulh         s2, t1, sp
                  mulh         t0, a7, zero
                  c.sub        a0, a0
                  c.addi       s1, -1
                  c.xor        a0, s0
                  c.slli       gp, 27
                  and          s9, t1, s8
                  c.srli       a3, 18
                  srli         a7, ra, 6
                  divu         a3, s7, s6
                  auipc        a7, 646125
                  mulh         t2, sp, a5
                  div          a2, s11, s5
                  ori          a0, s11, -656
                  c.andi       a0, -1
                  nop
                  mulhsu       t5, ra, s3
                  c.addi       s1, 16
                  c.li         t4, 6
                  sltiu        t1, s1, -800
                  addi         a6, s11, 297
                  or           a7, t6, t2
                  slti         t5, s3, 896
                  c.xor        s1, s1
                  c.srai       s1, 26
                  c.srai       s1, 13
                  slli         s7, t5, 10
                  sltiu        gp, s0, -1142
                  sra          t6, t6, a2
                  xori         a4, a6, 352
                  rem          s6, s9, sp
                  srl          s0, s3, t3
                  xori         a2, s0, -1545
                  remu         a7, s1, t2
                  div          a3, a7, s5
                  mulh         tp, s1, tp
                  sltiu        t0, s0, -1756
                  c.or         s0, s1
                  mulhu        a7, t4, t4
                  and          t1, s1, s2
                  srl          a6, gp, a0
                  auipc        zero, 464714
                  divu         t5, t5, s7
                  mulh         t6, t1, s9
                  sra          s8, a4, s6
                  add          t6, s1, t0
                  nop
                  c.add        a4, t4
                  xor          s3, t1, t3
                  sll          zero, a4, s10
                  xori         s8, s11, 152
                  c.sub        a4, a1
                  c.mv         a2, tp
                  c.lui        s10, 1
                  c.add        a6, t6
                  slti         a0, s4, 804
                  slli         t1, s11, 10
                  slti         t3, s9, 1743
                  slt          zero, s10, a6
                  mulh         a3, s4, a2
                  srl          s3, a1, t3
                  auipc        a6, 252476
                  c.sub        a4, a5
                  srl          a3, t5, gp
                  andi         gp, s5, -1372
                  c.nop
                  div          s9, sp, a0
                  c.srli       a4, 23
                  ori          zero, s10, -1640
                  c.andi       a0, 4
                  c.li         s3, 8
                  c.slli       tp, 6
                  or           tp, s10, a2
                  c.andi       a4, -1
                  slli         t1, t6, 31
                  c.li         a2, -1
                  slli         gp, t0, 10
                  slti         s5, s9, -321
                  nop
                  c.add        s1, s0
                  sltiu        zero, a7, -291
                  c.addi       a4, 12
                  sltiu        t2, a5, 12
                  c.lui        s1, 9
                  srai         s5, tp, 4
                  divu         t3, s2, a7
                  or           a4, a6, s11
                  mulh         s7, a4, a1
                  div          a3, a1, a7
                  c.li         tp, 6
                  and          s3, a6, t4
                  remu         ra, tp, a5
                  slti         s6, a3, -1281
                  addi         t2, a7, 1901
                  c.srli       s1, 21
                  sll          s10, ra, s7
                  c.lui        t4, 2
                  lui          s10, 760582
                  mul          t5, a4, t2
                  c.andi       s1, -1
                  sub          a7, t3, t6
                  srai         ra, t6, 0
                  slt          a6, s9, s11
                  c.srli       a2, 5
                  mulh         s7, a2, s7
                  xori         s11, s5, -31
                  auipc        t6, 101890
                  lui          a3, 874268
                  mulhsu       s2, a1, a1
                  c.addi       a6, 5
                  divu         t6, t4, sp
                  div          t0, t0, s1
                  rem          t3, s4, t4
                  sltu         a0, s1, s9
                  srli         a6, t0, 30
                  xor          s7, a7, s10
                  c.add        s3, a6
                  sra          zero, zero, a2
                  or           s10, gp, s5
                  c.srai       a3, 22
                  add          ra, s11, t2
                  c.li         gp, -1
                  sll          a7, gp, t4
                  xor          s1, zero, gp
                  c.sub        a3, a4
                  mulh         ra, s9, a4
                  c.add        a7, a4
                  slt          t6, s0, t4
                  srli         s1, tp, 1
                  mul          s1, s1, s6
                  c.srli       a0, 9
                  c.and        a3, a0
                  srai         t6, t6, 16
                  sub          t2, s3, zero
                  remu         s7, s5, s6
                  sltiu        s4, a2, 1073
                  rem          t4, t3, a0
                  c.addi       a7, 15
                  slli         s0, t1, 16
                  divu         zero, a2, s3
                  c.li         a6, 20
                  xor          s11, s7, s2
                  c.li         a6, -1
                  srli         t1, t3, 26
                  slti         t2, a5, 1876
                  c.sub        s1, a3
                  slti         a4, s10, 164
                  xori         a0, s4, -420
                  c.nop
                  add          s4, s3, a3
                  ori          s5, a6, -759
                  lui          t6, 566608
                  remu         s2, tp, a4
                  c.or         a4, a5
                  srai         a3, s3, 24
                  sltiu        s9, a4, 746
                  lui          gp, 244722
                  slti         t1, t1, -1333
                  sltu         gp, a1, s4
                  mulh         a6, s10, a6
                  sltiu        a2, s4, 1950
                  sltiu        a2, t3, 1795
                  c.xor        a2, s0
                  sra          t4, a6, s11
                  mulh         t3, t5, t4
                  c.slli       a6, 21
                  div          s6, a0, s6
                  c.sub        a4, a3
                  c.or         s1, a0
                  mul          a7, s7, s6
                  sll          s7, s2, a4
                  sltiu        s2, a5, 1821
                  c.or         a0, s0
                  mul          s6, s5, s9
                  c.xor        a0, a0
                  c.srli       a4, 25
                  and          s11, t5, a4
                  mulhu        s10, a4, t6
                  srl          s2, zero, s0
                  c.add        a0, t1
                  c.add        s11, s3
                  c.xor        a3, a0
                  c.addi       a7, -1
                  c.andi       s0, 0
                  c.add        a6, a3
                  c.sub        s0, a1
                  sltiu        a2, s1, -805
                  mul          gp, s8, s7
                  sll          t1, s3, t1
                  nop
                  c.srai       a0, 18
                  sra          s9, a0, t6
                  lui          a4, 414345
                  c.slli       t1, 23
                  srli         ra, a7, 17
                  c.add        s9, t3
                  c.nop
                  andi         t2, s8, -1614
                  xori         s1, t5, 1776
                  slti         s6, a6, -163
                  slli         a0, a1, 11
                  c.mv         s10, s11
                  c.nop
                  rem          tp, sp, s0
                  c.or         a0, a1
                  mulhu        a7, t4, t1
                  add          t2, a3, t3
                  andi         s9, t4, -370
                  c.andi       a3, 0
                  nop
                  c.srai       s0, 22
                  c.slli       a6, 20
                  and          s5, zero, s0
                  c.mv         s4, t6
                  and          a4, tp, t4
                  srai         s10, s7, 31
                  c.sub        s0, s1
                  c.srli       a3, 17
                  sll          s10, s9, t4
                  slti         a3, t5, 979
                  and          ra, tp, s0
                  c.slli       s1, 9
                  auipc        a3, 682187
                  add          s11, s2, t5
                  nop
                  lui          t1, 404656
                  sltiu        t0, t1, -1895
                  divu         t5, s4, s8
                  xori         zero, t6, 1519
                  addi         s3, ra, -1565
                  slli         s2, a2, 21
                  srai         s2, a3, 11
                  mulhsu       a7, a4, s9
                  slti         ra, a4, 1860
                  auipc        s4, 694696
                  xor          s9, zero, a0
                  auipc        s1, 579044
                  or           t3, sp, t3
                  slt          zero, s8, s2
                  c.addi       t0, 28
                  slti         zero, t4, -670
                  lui          a0, 177672
                  addi         tp, s3, -90
                  or           t5, a0, ra
                  sltu         s9, t5, a5
                  sltu         s2, tp, a3
                  or           s9, a3, a6
                  sltiu        t1, s5, -1762
                  mulh         s10, s5, s5
                  sltiu        t6, s9, 624
                  c.sub        a4, a3
                  and          t0, s7, t1
                  ori          s5, tp, -1591
                  slli         a3, s1, 10
                  sltiu        s7, t2, -554
                  c.add        s6, s2
                  mul          ra, ra, sp
                  sltiu        s8, s10, -912
                  rem          t1, zero, a3
                  div          t3, t0, sp
                  nop
                  c.or         a3, a0
                  addi         s8, a1, 1954
                  nop
                  remu         s10, s1, s3
                  addi         zero, t3, 893
                  ori          t4, a6, -1122
                  srl          t4, tp, s9
                  srl          a3, s6, a3
                  sll          s5, a3, t1
                  c.addi       s7, 9
                  c.andi       a4, 15
                  mulh         a4, t2, a1
                  xor          s7, a1, a5
                  divu         t4, t2, tp
                  srai         t0, t4, 18
                  sra          a4, a5, a5
                  sra          s4, tp, t6
                  c.andi       s0, -1
                  andi         s11, t5, -273
                  mulhsu       s11, s2, a7
                  xori         t3, t6, -1748
                  addi         t3, t5, 1823
                  c.slli       ra, 5
                  c.sub        s1, a1
                  sub          a4, t3, zero
                  sll          a4, zero, s9
                  sltiu        s2, s10, 113
                  nop
                  rem          a0, a6, sp
                  sltu         ra, a0, ra
                  div          s10, s1, a2
                  c.mv         s3, s4
                  sll          a0, a0, t6
                  mulh         t2, a7, s3
                  sra          a4, a3, t2
                  sltiu        a0, zero, -1830
                  sub          t0, s1, a6
                  c.add        a0, s4
                  srl          s8, gp, a5
                  c.sub        a3, a5
                  c.nop
                  sltiu        s10, t1, -1727
                  add          t1, a7, t6
                  rem          s3, t6, s1
                  c.xor        a3, a4
                  divu         gp, s2, t1
                  mulhu        s4, s3, s8
                  slt          a7, gp, t2
                  c.and        a4, a0
                  sltu         t4, s2, t1
                  c.srai       s1, 7
                  or           a6, a0, t0
                  c.srai       a3, 24
                  c.or         a4, a2
                  lui          s10, 366531
                  c.srai       a0, 7
                  c.and        s1, s0
                  sltiu        a7, a1, -1068
                  c.lui        s6, 22
                  remu         a0, t1, s9
                  srl          s5, s3, s0
                  mulh         s9, t2, s3
                  c.sub        a2, s0
                  c.or         a3, a1
                  sra          a7, gp, s9
                  c.andi       s1, 23
                  c.slli       s2, 6
                  slt          a3, s11, a3
                  c.sub        a3, a1
                  c.add        t6, tp
                  rem          s0, s8, sp
                  divu         s3, a2, s1
                  rem          gp, ra, s7
                  auipc        a4, 674889
                  lui          a0, 888381
                  slli         a3, s4, 3
                  xor          s7, s0, s5
                  srai         s10, a6, 2
                  c.andi       a4, 12
                  or           s2, t6, s11
                  sub          a3, s0, a2
                  c.add        s11, a3
                  c.srli       a3, 21
                  and          a6, a1, t1
                  c.lui        s7, 17
                  andi         s0, s1, 962
                  c.li         a7, -1
                  c.nop
                  srl          t0, s11, a3
                  slt          t6, a5, zero
                  or           a3, a1, s4
                  auipc        s3, 292305
                  c.srai       a0, 17
                  sltu         ra, a3, s9
                  sltiu        s6, s0, -2004
                  sll          a3, s6, s7
                  sltiu        s9, s10, 1126
                  or           s4, s1, s1
                  sll          a2, t3, s10
                  c.sub        a2, a5
                  c.andi       a4, -1
                  add          t5, t3, s7
                  addi         s7, s3, 1707
                  add          t3, t5, s1
                  sra          s4, s8, s10
                  divu         s3, s9, s11
                  and          s0, t1, a1
                  c.li         s1, -1
                  andi         s7, s4, -298
                  c.mv         a0, s7
                  srl          gp, t5, s2
                  sltu         s2, a2, s11
                  c.mv         t0, sp
                  slt          a4, t2, a6
                  or           t4, ra, a0
                  mulh         s6, t4, s0
                  srl          tp, s4, a3
                  sra          gp, s2, t5
                  c.or         s0, a3
                  nop
                  sra          s9, s7, gp
                  c.li         tp, -1
                  div          s4, sp, sp
                  divu         tp, s5, s3
                  sltu         ra, a1, s2
                  c.nop
                  add          a0, a2, s5
                  ori          s2, s10, -943
                  sll          t6, tp, t1
                  c.andi       s1, -1
                  xori         zero, t2, -1012
                  xor          gp, t1, sp
                  c.lui        t3, 1
                  c.andi       s1, -1
                  sll          a3, s8, s0
                  sll          s9, s5, s11
                  slti         s8, t1, -370
                  xor          t2, t2, s11
                  and          a7, ra, t4
                  c.mv         t1, a0
                  c.add        a7, gp
                  div          a7, a6, a2
                  mulhsu       s0, t1, s9
                  xori         s7, t5, 946
                  c.and        a3, a0
                  div          t6, s5, s7
                  c.slli       t1, 14
                  c.and        a0, a4
                  xor          s7, t3, s9
                  slt          a6, gp, a5
                  c.xor        a2, s1
                  c.nop
                  c.andi       a3, 12
                  divu         s10, s8, gp
                  andi         a4, s4, 896
                  c.or         a4, s1
                  c.or         s1, a4
                  or           gp, t1, t0
                  auipc        a4, 851889
                  mulh         a4, ra, tp
                  c.li         t6, -1
                  auipc        s11, 477485
                  divu         a3, s4, ra
                  mulhsu       tp, a0, s4
                  sub          a0, s9, t6
                  ori          a7, s0, -1870
                  sll          s0, s8, s3
                  slti         s2, zero, 1571
                  c.add        t6, t1
                  c.nop
                  mulhu        gp, a0, ra
                  xori         t3, a4, -9
                  or           gp, a6, t0
                  c.andi       s1, -1
                  c.and        a4, s0
                  or           t1, s5, s6
                  slti         t2, t1, -635
                  sub          s7, t2, t3
                  c.srai       a3, 19
                  sub          s0, s11, a7
                  sltu         a3, s2, ra
                  ori          a2, s0, 528
                  rem          a0, zero, sp
                  c.add        s2, t1
                  c.andi       a4, -1
                  mulhu        s5, t0, a0
                  ori          a6, s0, -526
                  sltiu        s8, t4, -1670
                  c.nop
                  xor          s2, a3, tp
                  c.xor        a3, a4
                  slli         s6, t3, 27
                  xori         tp, s11, -1575
                  sltu         s10, t1, tp
                  c.li         s11, -1
                  remu         s2, t4, gp
                  c.srli       s1, 30
                  div          s2, t2, tp
                  add          s5, a3, s9
                  c.lui        t3, 20
                  or           s6, a7, t6
                  sll          t5, s3, a6
                  div          s7, t5, s3
                  addi         s2, a4, 1082
                  c.srli       s1, 14
                  mulhu        s1, ra, s9
                  c.srai       s0, 13
                  mulhu        s7, t0, t2
                  slt          a4, s5, s6
                  andi         t4, s11, 1922
                  sltiu        t2, a1, 1420
                  c.lui        s0, 27
                  c.andi       a4, -1
                  div          zero, s2, a2
                  c.mv         tp, t0
                  sra          s9, s2, s6
                  srl          a2, gp, tp
                  c.lui        a6, 19
                  c.addi       t5, -1
                  c.add        s8, t5
                  c.sub        a4, a0
                  c.srli       a4, 6
                  slli         s3, a4, 18
                  sltu         ra, s9, a2
                  mulhu        t2, s6, t3
                  auipc        s2, 701064
                  sra          a6, ra, a0
                  mulh         a2, s10, s6
                  c.add        s2, gp
                  divu         s9, s9, a3
                  c.srli       a2, 28
                  divu         s3, a0, t5
                  sltu         t1, a1, tp
                  sra          a4, a1, s6
                  add          ra, a4, a2
                  c.mv         t2, s2
                  c.srli       a3, 19
                  srl          s0, a5, s9
                  slti         a2, gp, 295
                  srai         tp, s6, 5
                  c.andi       a4, 24
                  c.mv         a0, s6
                  c.or         s1, a0
                  c.srli       a0, 22
                  c.nop
                  slt          s1, t5, s10
                  remu         s6, s1, a7
                  c.srai       s0, 25
                  remu         s9, s10, sp
                  sub          s2, a1, a4
                  c.xor        a4, s0
                  slli         s1, s5, 28
                  sll          s6, a4, gp
                  srai         ra, a3, 17
                  c.xor        s1, s0
                  ori          tp, gp, 1678
                  rem          a0, s6, s10
                  auipc        zero, 713195
                  add          s4, s5, a5
                  rem          a6, s3, gp
                  c.lui        s8, 16
                  xor          t4, tp, s9
                  mul          zero, t3, tp
                  xor          gp, a6, t2
                  srli         a0, s6, 20
                  mulh         s9, ra, ra
                  ori          s6, a0, 1528
                  slti         gp, t5, 1535
                  c.nop
                  divu         s3, a4, s6
                  remu         s11, s7, t3
                  sltiu        s9, a4, 510
                  sra          ra, gp, ra
                  c.mv         t6, s4
                  mul          s2, a7, tp
                  slti         ra, t3, -1643
                  nop
                  xor          s0, a0, a3
                  mul          s3, s3, t1
                  or           t0, gp, s4
                  remu         t5, t0, a0
                  sll          a6, ra, s10
                  remu         a7, t0, t5
                  srl          ra, s4, ra
                  nop
                  mul          t3, t1, s3
                  c.xor        a0, a1
                  xori         s9, t4, 1480
                  sll          s8, tp, t6
                  slli         s0, t6, 31
                  lui          t6, 334003
                  remu         t6, tp, a1
                  c.li         a7, 17
                  c.mv         s9, t1
                  slt          t0, a4, t5
                  lui          a4, 319229
                  sra          s3, s3, s2
                  slti         zero, a6, -1661
                  andi         s8, gp, 61
                  add          t2, s10, ra
                  c.and        a4, a3
                  divu         s8, s1, s1
                  c.andi       s1, -1
                  xor          s10, a3, s1
                  c.nop
                  c.nop
                  c.xor        a0, s0
                  nop
                  addi         a3, s1, -532
                  c.add        t6, sp
                  or           s6, gp, s3
                  and          s6, s0, a5
                  c.li         s11, -1
                  lui          s2, 219982
                  andi         s6, a7, 2034
                  mulh         a7, t5, t3
                  rem          t4, a4, zero
                  slt          s11, a1, s3
                  mulhu        t2, t1, s4
                  srai         s10, a4, 14
                  xori         a4, t6, 228
                  slli         s3, s2, 28
                  c.nop
                  xori         s6, a3, 1640
                  c.and        s1, a4
                  c.srli       s0, 5
                  div          a4, s3, t1
                  auipc        t3, 331273
                  c.lui        s3, 18
                  c.sub        a3, a0
                  slti         t2, s0, -477
                  c.add        s2, ra
                  divu         s2, ra, s4
                  mulh         gp, a2, s7
                  div          ra, a6, s8
                  add          t5, gp, s4
                  c.srli       s1, 9
                  c.li         t4, -1
                  mulhu        s2, s2, s5
                  and          zero, s5, s0
                  c.sub        a4, a4
                  auipc        s7, 630538
                  srl          t4, t0, t0
                  auipc        s6, 174491
                  srai         zero, s8, 18
                  srl          t6, a6, s0
                  slti         gp, tp, -1970
                  c.or         a4, a2
                  xori         tp, a6, -785
                  c.xor        a2, a0
                  or           t2, t2, a3
                  add          s1, zero, s3
                  add          s6, a2, a0
                  sra          s5, s11, a2
                  xori         a2, s7, -386
                  rem          s7, t3, t5
                  c.nop
                  c.sub        s0, a3
                  sub          t6, t0, tp
                  mulhsu       a0, a1, a1
                  sltiu        s10, t4, -517
                  or           t6, tp, ra
                  auipc        s0, 104509
                  c.add        tp, t3
                  srl          s6, a5, tp
                  and          tp, a1, t4
                  c.mv         a0, t6
                  c.sub        a0, a0
                  auipc        a3, 263453
                  c.lui        t3, 10
                  srli         a6, s3, 14
                  c.slli       tp, 10
                  c.mv         s2, s2
                  c.slli       t5, 30
                  and          s1, s9, a6
                  c.xor        a0, a4
                  andi         s2, s2, 1442
                  c.li         s11, -1
                  sll          t2, a5, gp
                  c.lui        a6, 30
                  div          gp, t3, a6
                  c.nop
                  sltiu        s7, gp, -826
                  c.and        a4, a4
                  ori          t6, t3, -359
                  xor          s9, a0, s9
                  sltu         s5, t1, t1
                  c.li         a2, 1
                  divu         s4, t3, t5
                  c.nop
                  sltu         s10, s10, t3
                  c.add        s8, t1
                  mul          s9, s1, s7
                  c.srli       s1, 21
                  auipc        t6, 303478
                  c.and        a0, a4
                  c.add        s8, ra
                  or           s7, s8, t4
                  mul          a4, t1, t0
                  c.add        tp, s7
                  c.nop
                  sra          s11, t6, a5
                  srl          s10, s7, t5
                  srai         s11, t1, 25
                  c.and        a0, a0
                  c.li         s6, 23
                  ori          s8, sp, 1799
                  c.lui        s7, 2
                  sll          gp, t2, s5
                  lui          t0, 403500
                  mulhsu       s7, a6, t3
                  remu         t4, t0, a6
                  c.xor        s1, s1
                  c.or         a3, a0
                  sub          s11, s8, ra
                  mulhsu       a4, t3, s5
                  slti         tp, a3, 914
                  slti         s9, gp, 2031
                  c.sub        s1, a0
                  div          s2, a7, s1
                  sra          zero, s5, ra
                  sra          s1, s11, s8
                  c.srai       a4, 23
                  nop
                  andi         s2, a7, -673
                  and          s1, s6, t3
                  srli         a0, a2, 3
                  nop
                  c.addi       a3, -1
                  c.srai       a4, 21
                  slti         a6, t4, -1668
                  xori         t5, t3, -20
                  srli         s3, a1, 9
                  rem          s6, a2, t2
                  slt          s3, t4, a2
                  sltu         t2, s5, ra
                  c.lui        s10, 18
                  sltiu        tp, sp, 1823
                  c.xor        a2, a4
                  c.mv         a2, s6
                  slt          t5, zero, zero
                  c.nop
                  add          s8, s2, t1
                  mulhu        a4, s8, a4
                  xori         t3, a7, 1858
                  divu         t1, s5, s4
                  ori          a7, tp, -1567
                  add          a2, a3, a6
                  c.srli       a2, 12
                  mulhsu       a2, a5, t0
                  c.srli       a2, 17
                  c.andi       s1, -1
                  auipc        s8, 130353
                  sll          s6, s5, t3
                  slti         a2, t3, 946
                  and          a2, s9, s3
                  c.mv         s5, t3
                  srai         t0, s6, 0
                  c.li         s0, -1
                  andi         t4, s11, 507
                  div          gp, s1, a7
                  c.or         a3, s1
                  srl          a7, t6, s10
                  mulh         zero, s5, a4
                  c.slli       s5, 5
                  c.and        a0, a2
                  add          s0, t0, a5
                  c.and        a4, s1
                  lui          s1, 824417
                  ori          a6, s1, 1616
                  slti         s8, s8, -1174
                  and          s8, s10, s1
                  xor          t4, t2, t1
                  srl          a4, t1, t6
                  sra          s4, s2, s5
                  mulhu        s5, s8, a7
                  slli         a2, s9, 13
                  nop
                  srl          tp, t1, a3
                  c.and        a0, a3
                  add          s10, s3, gp
                  rem          s10, t2, t3
                  sra          a6, s2, ra
                  mul          a0, s6, tp
                  c.nop
                  sub          t2, s2, a3
                  xor          s2, ra, s4
                  c.sub        a4, a3
                  slti         t6, t1, 1366
                  auipc        zero, 660081
                  slti         t4, a7, 1129
                  c.addi       a0, -1
                  mulh         s6, s6, a7
                  ori          a3, s4, -1365
                  srli         gp, s6, 8
                  auipc        s8, 480158
                  sra          tp, a5, gp
                  divu         s6, a0, s7
                  divu         tp, s0, t6
                  c.lui        s3, 13
                  c.mv         t2, t5
                  srli         t3, t2, 15
                  mulhu        s11, s8, a4
                  add          a0, a2, s5
                  c.nop
                  sll          s3, a6, s8
                  xor          t5, s9, tp
                  divu         a7, s10, tp
                  sll          a2, s9, a6
                  div          s1, s1, s10
                  slt          a0, s6, a5
                  mulhsu       a4, s10, a7
                  sltu         s6, t2, t1
                  c.nop
                  mulh         zero, s11, a5
                  mulh         s5, t2, t6
                  c.sub        a0, a3
                  and          a4, t4, t5
                  nop
                  slt          a2, a2, t3
                  c.srai       s0, 23
                  sltu         s8, tp, t3
                  slli         s4, t3, 3
                  c.andi       a0, -1
                  c.nop
                  or           a0, a3, a2
                  mulh         s8, a1, s9
                  div          zero, gp, s3
                  sltu         a0, s10, t6
                  xor          s0, a6, s5
                  c.nop
                  c.nop
                  or           s0, gp, a0
                  c.lui        ra, 18
                  c.li         t3, 10
                  mul          gp, ra, gp
                  c.nop
                  or           a0, a1, s1
                  or           s10, a0, s8
                  sub          a0, a6, s0
                  remu         a7, a0, s2
                  xori         t2, ra, -909
                  mul          ra, t6, s9
                  c.slli       a0, 21
                  div          a6, t0, s3
                  c.xor        s1, a2
                  or           gp, a2, s6
                  ori          s0, t1, 1431
                  srai         s9, t5, 21
                  xor          s4, t3, gp
                  rem          zero, t0, s1
                  addi         tp, a1, 1339
                  divu         s8, t5, a6
                  xori         s11, s3, 1443
                  c.nop
                  slli         t6, a0, 1
                  div          gp, a4, t1
                  c.xor        a4, a4
                  addi         t5, gp, 1248
                  mul          t4, s0, a1
                  sltu         s4, s7, sp
                  andi         t2, a6, 1873
                  slli         t0, a2, 5
                  lui          t3, 232007
                  mulhu        a2, a5, zero
                  c.andi       a2, 1
                  slti         t4, t5, -400
                  c.mv         s2, s1
                  sra          a4, s2, s0
                  div          s10, t4, s5
                  mulhsu       zero, t2, s9
                  nop
                  mulhu        gp, gp, ra
                  remu         t3, a6, a2
                  div          t2, zero, s10
                  c.addi       s8, -1
                  andi         s8, gp, 445
                  c.or         a0, a0
                  c.or         a4, s1
                  xor          s5, a1, a0
                  sltiu        t4, s8, 252
                  ori          a3, s8, 812
                  c.srai       s0, 9
                  c.xor        a3, s1
                  mulhu        t6, s9, zero
                  addi         s9, t6, -1918
                  andi         t3, sp, -758
                  sltiu        t6, t3, -557
                  mulhsu       a7, s0, s1
                  sra          gp, a4, t4
                  mulh         ra, s5, a5
                  c.sub        a4, a1
                  sltiu        gp, t3, 713
                  xori         s0, t0, -1869
                  slli         t0, s7, 22
                  or           s1, s10, t0
                  divu         s11, s5, s2
                  div          s1, s3, a1
                  srai         s2, a3, 8
                  mulhu        t3, tp, s8
                  c.nop
                  c.srai       s0, 14
                  c.xor        a4, a1
                  sra          t0, zero, s11
                  srli         zero, sp, 21
                  c.mv         s0, t1
                  srai         s9, s6, 18
                  addi         s4, t1, 1347
                  andi         ra, a4, -1547
                  c.slli       s0, 29
                  c.add        gp, gp
                  c.slli       s6, 17
                  sra          t1, s0, s9
                  sltu         a4, t2, s3
                  srai         t2, t6, 11
                  c.lui        s6, 28
                  c.li         a6, -1
                  auipc        t1, 844052
                  nop
                  c.mv         s4, s0
                  c.srli       a3, 17
                  c.srai       a2, 5
                  c.andi       a0, -1
                  sltiu        s11, a7, 326
                  c.srli       a0, 11
                  xori         s3, s11, -1204
                  c.xor        a4, s1
                  slli         zero, s8, 8
                  c.xor        a2, a4
                  and          a4, t3, t3
                  srl          zero, s7, s4
                  andi         t6, a7, -79
                  mulh         s2, s10, a2
                  c.andi       a3, 16
                  slli         t5, ra, 19
                  mulhsu       t3, a1, a0
                  mulhsu       t1, t0, s8
                  divu         s6, s2, s9
                  sra          t5, s1, t3
                  sub          s3, ra, t3
                  c.li         s1, 11
                  xori         a3, a5, 470
                  sltu         s10, t2, a2
                  addi         s0, a7, 382
                  slt          tp, s5, t4
                  c.addi       a6, -1
                  mul          s8, t2, s11
                  c.mv         t1, a1
                  c.srai       a4, 24
                  c.srli       a0, 30
                  mul          s7, s9, t6
                  add          t1, gp, a5
                  nop
                  mul          s5, s2, a7
                  c.sub        a2, a3
                  c.srai       s0, 19
                  sll          s7, t0, s11
                  mulhu        tp, tp, t5
                  andi         a3, s4, -160
                  xori         t4, zero, -368
                  addi         t0, s5, 1340
                  c.nop
                  ori          a7, s5, -587
                  or           s7, tp, a1
                  rem          s2, s8, t2
                  c.or         s1, a1
                  mul          s7, s4, s10
                  sltu         t0, a3, a1
                  c.or         a2, a2
                  xori         s5, s6, -1167
                  slli         gp, a4, 18
                  c.xor        s0, s1
                  c.lui        a3, 16
                  xor          s6, s4, a5
                  sltiu        s2, a1, -1279
                  xor          t4, t2, t2
                  c.addi       a0, -1
                  srli         s3, gp, 15
                  div          a7, s9, zero
                  nop
                  c.xor        a4, a2
                  c.mv         s3, a5
                  add          a4, s8, t2
                  mulhu        a4, a6, s4
                  and          t6, a7, t3
                  ori          tp, s10, 191
                  srli         gp, tp, 28
                  c.li         s4, 29
                  c.andi       a4, 1
                  srl          gp, gp, s1
                  c.add        t5, s0
                  srl          s3, s6, sp
                  add          s6, s10, a0
                  sra          s6, ra, s11
                  c.xor        a2, a3
                  xori         s7, s9, -1970
                  sltiu        tp, s8, 351
                  auipc        a6, 172737
                  rem          s9, a4, t5
                  sub          t4, t4, t1
                  lui          s5, 248935
                  sub          t6, sp, s10
                  sra          gp, t3, tp
                  mul          a0, a4, a4
                  and          a7, s8, s9
                  c.nop
                  c.srli       a4, 11
                  ori          s8, s4, -1770
                  c.add        s8, t6
                  mulhu        s11, s6, t2
                  slt          s8, s10, a6
                  srli         s3, a0, 20
                  mul          s2, ra, s11
                  srai         s5, s0, 12
                  or           s7, s6, s0
                  nop
                  srai         a7, a3, 3
                  c.add        s0, sp
                  c.li         s7, 26
                  c.xor        s0, s1
                  xori         a4, zero, 1185
                  nop
                  sll          t6, t0, t2
                  nop
                  mulhu        a0, a1, t4
                  srl          t6, s11, a0
                  mul          gp, s2, s9
                  addi         s11, s5, 1048
                  sltiu        a0, sp, 1675
                  srl          a4, s3, ra
                  divu         s4, s3, sp
                  slt          a2, gp, a3
                  srai         a0, t1, 25
                  xori         ra, a0, 199
                  add          a3, t1, zero
                  or           s10, tp, tp
                  c.sub        s1, a0
                  add          s1, s3, t2
                  slli         s6, a5, 4
                  srai         s6, t0, 17
                  srai         t5, t0, 23
                  sltu         t1, t4, a1
                  c.add        t5, a6
                  c.lui        ra, 8
                  mul          gp, s9, a7
                  c.addi       ra, -1
                  mulhsu       t4, s9, a4
                  divu         tp, a2, a2
                  nop
                  c.or         a2, a4
                  c.add        t6, a7
                  sltu         ra, s7, s10
                  mulhsu       t2, s0, a4
                  divu         s6, t4, t2
                  c.mv         a7, t1
                  remu         s8, t1, a4
                  slti         a7, s9, 1647
                  c.add        s10, sp
                  srai         s10, s0, 12
                  c.li         a6, 2
                  sll          a2, s7, a2
                  c.srai       a4, 6
                  srai         zero, t4, 13
                  div          zero, s9, gp
                  add          t0, a2, zero
                  ori          gp, t2, 1
                  ori          s0, a5, 1836
                  c.li         t5, -1
                  c.mv         s4, a7
                  c.nop
                  slti         tp, s5, -1103
                  c.xor        a3, s1
                  c.li         s11, -1
                  c.srli       a4, 1
                  c.nop
                  c.nop
                  andi         zero, a6, -895
                  div          ra, s2, t2
                  sll          t6, a5, a6
                  ori          s2, a6, 440
                  c.lui        ra, 1
                  andi         s5, sp, 215
                  c.li         t3, -1
                  c.slli       a7, 22
                  sll          s6, a7, a3
                  add          s4, t1, a5
                  c.mv         t5, t3
                  c.addi       a0, 30
                  c.nop
                  slt          t2, sp, a4
                  div          a0, a4, s11
                  slt          s5, gp, t6
                  srl          a3, s5, t6
                  sltiu        t0, s1, -915
                  mulhu        a6, a2, a0
                  c.srli       a3, 24
                  c.nop
                  c.li         s0, -1
                  div          t5, a0, s11
                  c.add        t0, t4
                  c.and        a3, a1
                  mulhsu       t4, t6, a2
                  xori         a0, zero, -1200
                  sub          zero, a5, t2
                  mul          t1, a3, ra
                  c.add        gp, t1
                  c.sub        s1, a2
                  sub          t4, t3, a4
                  mulhsu       gp, s8, gp
                  sltu         s3, t3, s11
                  divu         s9, t0, gp
                  slli         s9, s10, 23
                  sra          a2, t5, zero
                  c.srai       a3, 27
                  c.nop
                  slt          gp, tp, a7
                  sll          a4, s6, s0
                  and          s9, sp, tp
                  sltu         s4, s5, a1
                  c.li         t2, -1
                  slli         s9, t4, 13
                  c.andi       a4, -1
                  mulh         s10, s8, s7
                  srli         s1, s9, 18
                  c.srli       a3, 9
                  and          a3, a0, a7
                  mulhu        t4, t1, s1
                  rem          s2, gp, zero
                  mulh         s4, a7, s6
                  c.add        t6, s2
                  srai         t6, a5, 10
                  andi         a4, s0, -1304
                  add          a6, s6, t0
                  sll          gp, s8, t6
                  remu         a0, tp, s10
                  srai         s6, a4, 9
                  srai         tp, a2, 19
                  c.nop
                  srl          s5, a0, a1
                  auipc        s11, 591934
                  c.or         a3, a5
                  andi         tp, t0, 1042
                  slt          s5, tp, t4
                  c.addi       s1, 28
                  c.or         a0, a1
                  xor          s0, a0, t0
                  xori         a0, a7, 1397
                  c.nop
                  c.mv         s4, s3
                  sll          s9, t1, t6
                  sub          a0, t0, t0
                  add          t4, s3, a3
                  c.mv         t4, t6
                  c.or         s1, a0
                  div          a4, s1, t6
                  c.xor        a0, a2
                  c.nop
                  auipc        tp, 144044
                  and          t3, s7, s8
                  sltiu        gp, a6, 1908
                  srli         a4, a0, 16
                  c.lui        s4, 21
                  andi         s1, zero, 579
                  mul          a0, t1, gp
                  div          s9, a0, t1
                  or           a7, gp, s4
                  or           a4, a1, a0
                  srl          t3, tp, s3
                  or           t0, tp, s4
                  andi         s3, s4, 2017
                  divu         t2, a5, s1
                  c.sub        a2, s1
                  sra          s1, s3, s6
                  slli         ra, s1, 4
                  sltu         s10, tp, t0
                  sltiu        s3, sp, -965
                  ori          a6, t6, 103
                  c.nop
                  lui          t0, 171032
                  c.li         ra, 3
                  mulhsu       t0, a2, gp
                  mulhu        a4, a1, t1
                  mulhu        a4, t6, s6
                  mulh         gp, s8, zero
                  add          t6, s3, s0
                  and          s6, t5, s1
                  xori         s3, t2, 682
                  c.nop
                  c.srli       a0, 18
                  rem          zero, t4, ra
                  mulhu        zero, s1, s5
                  or           ra, gp, s3
                  srl          s10, t1, sp
                  srli         gp, s4, 26
                  rem          s11, s10, t6
                  srli         t5, a2, 18
                  c.andi       s0, 26
                  mulhu        a2, s3, s10
                  slli         a0, t5, 20
                  c.xor        a4, a5
                  slt          gp, a5, a7
                  c.mv         t5, s5
                  or           s7, sp, s2
                  divu         t2, t0, sp
                  ori          s0, s6, 900
                  sra          s4, s2, t6
                  slti         t3, a3, -1853
                  c.addi       t1, 30
                  andi         a0, t0, 1951
                  div          tp, a2, s0
                  slt          s6, s7, a1
                  slt          s8, t5, t6
                  c.slli       t1, 15
                  c.sub        a0, s1
                  lui          t5, 413965
                  add          s5, s4, s6
                  srli         t3, s4, 20
                  c.and        a3, s0
                  c.and        s1, a0
                  c.srli       s1, 4
                  c.srai       s1, 28
                  sltiu        s0, a2, -1119
                  c.mv         s2, s2
                  sltiu        gp, s6, 1787
                  c.addi       a4, 5
                  sra          s2, t6, s11
                  mulh         s7, a0, t5
                  sltu         zero, sp, s11
                  c.sub        a3, s1
                  divu         s9, t1, s0
                  sltiu        s0, s8, -918
                  mulh         t4, a5, s11
                  c.andi       s1, -1
                  c.mv         t0, t1
                  c.li         a2, 3
                  divu         s5, t2, ra
                  c.slli       t1, 28
                  auipc        a6, 668581
                  slti         gp, s11, -333
                  c.and        s0, a4
                  xor          a2, t6, a5
                  srai         s7, s10, 2
                  slt          ra, tp, s5
                  xor          t0, a3, s4
                  srai         tp, s6, 8
                  sltiu        s6, a2, -1657
                  remu         a0, t1, s1
                  srl          zero, s1, t5
                  c.or         a3, a0
                  c.mv         s1, t5
                  sltiu        t4, t4, 1363
                  srai         s1, a2, 4
                  c.andi       s0, -1
                  and          s4, s10, t3
                  divu         a2, a0, t0
                  lui          s1, 76017
                  c.slli       t1, 13
                  remu         s11, a1, t1
                  slli         zero, s10, 4
                  divu         t4, s10, t6
                  c.srli       a2, 3
                  c.add        a0, a5
                  srai         s2, t6, 12
                  c.nop
                  c.nop
                  sltiu        a4, s3, 1334
                  c.xor        a4, a5
                  c.addi       s5, 3
                  c.lui        t2, 25
                  divu         s5, a1, sp
                  div          a3, t3, a7
                  c.and        a3, a5
                  sub          s2, t1, a1
                  and          t4, s0, t1
                  or           s6, t6, t6
                  c.lui        t5, 13
                  c.addi       gp, -1
                  and          s5, a3, t0
                  c.add        t0, gp
                  rem          a0, ra, s7
                  mulhsu       ra, s2, a2
                  c.or         a2, a4
                  add          a4, t3, tp
                  srl          gp, t6, s11
                  nop
                  div          a7, s7, s2
                  add          s11, a0, a0
                  sll          a4, s11, s0
                  mulh         s7, s3, t6
                  sub          s3, ra, s6
                  c.or         a0, s1
                  mulhu        zero, s11, t1
                  c.li         t0, -1
                  mulh         t4, s7, s8
                  xori         a0, t2, -1632
                  slti         s9, t5, -748
                  srl          a2, s0, s0
                  add          s6, s3, t0
                  c.mv         t2, s6
                  xori         s0, a0, 1057
                  sltu         a4, t1, s6
                  sltu         t4, a7, s5
                  c.andi       a2, -1
                  and          gp, s0, a6
                  rem          a4, a1, t2
                  mul          t2, t1, a2
                  c.lui        t4, 28
                  sub          s10, a2, t5
                  sll          s8, gp, s1
                  ori          t2, ra, -184
                  c.mv         s1, s0
                  addi         t5, s7, 537
                  c.sub        a4, a1
                  slti         t2, t0, -1615
                  slti         s5, t1, -279
                  srai         s6, t6, 1
                  c.add        a0, t6
                  mulhu        tp, a4, t1
                  sll          s4, t6, t4
                  lui          a4, 404500
                  sub          zero, gp, a1
                  and          a4, t4, a6
                  sll          s7, t1, a7
                  addi         a3, s9, -177
                  srl          a6, t0, a2
                  mul          ra, s10, t3
                  sltu         t1, s11, tp
                  srli         gp, t3, 18
                  c.sub        s1, a1
                  c.lui        s3, 8
                  nop
                  c.add        s8, s1
                  slli         t3, s2, 13
                  srai         s5, gp, 16
                  xor          ra, s9, a6
                  mulhu        a3, s10, a3
                  slt          a2, s1, zero
                  c.lui        t2, 28
                  remu         zero, s5, s10
                  c.lui        tp, 10
                  lui          s0, 165768
                  or           a7, s3, t5
                  rem          t6, a3, s7
                  divu         s8, a2, t2
                  xori         t6, s0, 1744
                  mulhu        s5, sp, a1
                  c.srli       a3, 7
                  slti         s10, t0, -728
                  xor          a4, tp, a2
                  andi         s0, s11, -508
                  slti         a0, t1, -318
                  c.srli       a3, 14
                  slli         s5, s11, 28
                  c.lui        t0, 28
                  mul          s7, t3, t3
                  lui          a3, 398180
                  srai         a2, gp, 9
                  c.srli       s1, 31
                  nop
                  c.add        tp, t1
                  c.slli       t2, 1
                  c.addi       s3, 23
                  and          a0, s11, ra
                  remu         s6, sp, a2
                  c.addi       s5, 28
                  c.lui        gp, 10
                  sub          s10, t1, s3
                  lui          t3, 719002
                  srl          s1, s3, s5
                  rem          s9, t2, gp
                  c.or         s1, s0
                  srai         s10, sp, 17
                  srl          a7, a0, a4
                  c.addi       gp, 6
                  c.lui        a3, 13
                  div          s9, a0, s7
                  div          s5, a4, s5
                  c.li         s0, -1
                  c.srli       s0, 29
                  div          s0, a5, a4
                  mulhsu       t2, a4, t6
                  c.nop
                  c.addi       s4, 4
                  srai         gp, a3, 19
                  addi         s0, s4, 654
                  slt          tp, t3, s2
                  srl          s7, sp, t2
                  mul          s3, s7, t5
                  mul          s6, t4, s0
                  sra          a6, a0, s3
                  c.li         a0, -1
                  slt          s2, s5, s7
                  sra          a3, sp, a1
                  add          t2, sp, a7
                  c.xor        a4, a3
                  slti         s4, ra, 1862
                  auipc        t2, 164262
                  mul          t5, s4, a2
                  c.lui        a7, 3
                  c.andi       a3, 19
                  or           s9, t0, t5
                  lui          s0, 164187
                  c.or         a0, s1
                  slt          t1, s8, ra
                  c.srli       a3, 26
                  remu         s11, s9, a0
                  sltu         s2, a4, a1
                  c.li         ra, 17
                  mul          a4, t4, a4
                  remu         gp, sp, a5
                  and          a6, t6, a5
                  c.andi       a3, -1
                  nop
                  c.addi       s10, 13
                  divu         s3, t3, t0
                  nop
                  mulhu        t3, s1, a1
                  divu         s2, s11, s3
                  c.srai       s1, 26
                  c.lui        gp, 4
                  c.or         a2, a4
                  andi         s11, t5, 66
                  srli         s10, t4, 23
                  c.nop
                  c.li         s11, -1
                  c.or         s1, a5
                  c.li         tp, 6
                  c.li         s10, -1
                  addi         s6, s3, 1542
                  c.slli       a6, 5
                  and          s10, a2, s4
                  sra          t4, s0, s10
                  nop
                  or           t1, a5, a7
                  lui          s4, 273052
                  c.xor        s0, a0
                  c.and        s0, a4
                  mulhu        gp, a2, a5
                  c.srai       s1, 18
                  sll          s1, a5, tp
                  or           t0, a6, a3
                  c.sub        s1, a4
                  nop
                  mul          t3, s6, s0
                  c.and        a3, s0
                  sll          t4, s11, tp
                  nop
                  ori          t2, t5, 101
                  auipc        a4, 487785
                  rem          s1, a6, t2
                  sub          s0, s1, s2
                  c.srli       s0, 15
                  srai         t6, a1, 16
                  mulh         s2, ra, t3
                  sra          a0, s10, s4
                  c.mv         a0, t2
                  c.add        t1, s11
                  srl          s10, s10, sp
                  mulhu        a3, s0, t1
                  mul          s4, a0, s10
                  mulh         a2, t1, ra
                  rem          s2, a1, s3
                  c.xor        s0, a3
                  ori          t0, a2, -339
                  mulhu        a3, s9, a0
                  divu         a3, t0, s0
                  sra          s2, a1, gp
                  auipc        ra, 326890
                  div          s10, t4, ra
                  c.sub        a2, a0
                  mulhu        a7, gp, tp
                  c.addi       a3, 2
                  mul          t4, s8, a3
                  or           s7, s0, t4
                  c.nop
                  srli         s4, s10, 1
                  c.slli       t4, 14
                  mulh         s4, s7, s7
                  c.addi       t3, -1
                  mulhsu       tp, t4, s0
                  c.or         a2, a2
                  nop
                  sub          t1, tp, s4
                  lui          zero, 119113
                  auipc        zero, 297083
                  or           gp, s9, s10
                  c.mv         a2, s1
                  mulh         t5, s9, t3
                  c.sub        a4, s0
                  c.andi       a3, 19
                  srai         gp, s1, 11
                  slt          s8, t3, s2
                  c.xor        s1, a2
                  sub          a0, t2, ra
                  mulh         t4, t2, s0
                  mul          a3, a1, t4
                  c.lui        t3, 21
                  c.add        a0, gp
                  remu         a2, a6, zero
                  divu         a3, s3, t6
                  sltiu        zero, a1, -1281
                  sltu         tp, s2, s7
                  c.slli       a7, 29
                  sra          a7, sp, s2
                  mulhsu       a3, s0, t4
                  addi         t6, a1, -1227
                  andi         t6, a1, -497
                  andi         gp, s10, 1305
                  c.and        a4, s1
                  mul          t5, s10, s1
                  addi         s5, a6, -1781
                  c.sub        a0, a5
                  sll          t1, s10, a1
                  or           s5, tp, s0
                  c.addi       a6, -1
                  lui          a6, 164515
                  sltu         s6, t5, a4
                  slt          tp, s4, s7
                  xor          zero, a6, t4
                  mulh         s3, s7, a2
                  add          a3, s5, a2
                  slt          s1, s10, t0
                  slti         s9, s0, 1047
                  c.li         s1, 26
                  auipc        a2, 796592
                  remu         s0, t0, t5
                  srl          a3, s7, a0
                  div          gp, s8, a1
                  ori          s4, s10, -1395
                  srli         s11, s11, 30
                  andi         t0, a0, -1698
                  div          t2, s9, s6
                  slli         a7, t2, 20
                  and          s5, t2, t1
                  c.slli       a0, 2
                  srai         t4, a6, 7
                  c.li         a2, -1
                  xori         t5, a7, -1628
                  mul          t2, zero, s9
                  auipc        a4, 163565
                  c.mv         t3, s8
                  auipc        t2, 967139
                  or           t1, gp, s4
                  c.lui        a7, 12
                  andi         zero, a1, -461
                  srl          a2, zero, gp
                  nop
                  andi         a3, zero, 1998
                  and          a6, s6, s3
                  rem          s2, s1, t0
                  nop
                  c.slli       gp, 11
                  c.li         ra, -1
                  remu         a0, zero, s9
                  srai         t3, s10, 14
                  srai         gp, s8, 16
                  mulh         a6, a7, tp
                  mulh         zero, ra, a0
                  addi         t4, gp, 394
                  or           s5, a1, s5
                  xori         s11, t0, -752
                  c.add        s5, s5
                  ori          a0, a0, 2044
                  sltiu        a6, tp, 1725
                  xori         t6, s2, 613
                  div          t3, a7, ra
                  divu         a6, tp, t5
                  sll          ra, s7, t1
                  lui          s7, 676168
                  srl          a3, t1, t6
                  sltiu        s2, a3, -1836
                  c.li         t1, -1
                  mulh         t2, s1, s4
                  andi         t6, t4, -1116
                  slt          s11, a0, a5
                  c.srai       s1, 16
                  nop
                  lui          s3, 408565
                  nop
                  srli         s1, s10, 28
                  nop
                  c.li         s11, -1
                  remu         a6, ra, tp
                  c.andi       a0, 1
                  sll          s7, a5, t3
                  slli         s0, t1, 13
                  remu         s10, t4, t4
                  div          t4, a4, s3
                  sll          s8, gp, tp
                  addi         a4, gp, 402
                  addi         a4, s7, 1109
                  c.nop
                  c.add        t3, t3
                  c.srli       a3, 19
                  c.xor        a4, a1
                  c.srai       a3, 16
                  c.nop
                  c.srli       a0, 24
                  lui          s11, 44470
                  c.andi       a4, -1
                  mulhu        s1, t2, a6
                  sltu         t4, a3, a4
                  c.or         a3, a2
                  slt          a3, s0, a3
                  c.lui        a0, 8
                  slti         t6, s9, 1927
                  and          t2, s3, s11
                  ori          s1, gp, -328
                  sll          t5, t4, t4
                  slt          a0, ra, s1
                  c.add        t1, gp
                  c.nop
                  c.sub        a3, a4
                  slt          a6, a6, zero
                  c.nop
                  add          ra, t4, t1
                  sra          a4, sp, t3
                  divu         s7, s5, s2
                  c.and        a0, s0
                  c.lui        a0, 30
                  div          a6, a4, t3
                  slli         t3, t2, 4
                  addi         s8, t1, 227
                  slt          s4, sp, a0
                  srai         gp, s4, 24
                  xor          s0, s2, s10
                  nop
                  div          t5, s6, t0
                  srli         a2, sp, 22
                  c.srli       a2, 1
                  sltiu        a0, a7, 661
                  div          s2, s1, s1
                  xori         s1, s1, -126
                  ori          t6, a7, 1121
                  slli         a3, s1, 5
                  mul          a3, s11, s7
                  sltu         a6, zero, s2
                  sub          s0, t2, t1
                  mulh         zero, a6, s3
                  srl          s2, s3, s5
                  slli         s5, s1, 0
                  sra          s9, a7, s1
                  nop
                  div          s2, sp, s11
                  andi         s6, a6, -978
                  mulhu        s3, zero, s3
                  c.andi       s0, -1
                  sltu         s2, s6, sp
                  mulhu        a4, t1, t0
                  sub          a6, t0, s11
                  and          a0, s10, t1
                  c.addi       t4, -1
                  srai         s8, zero, 2
                  xor          s10, t5, s5
                  rem          a3, s7, sp
                  srl          s0, sp, s1
                  rem          s1, s5, t3
                  xori         t5, a2, 1344
                  mul          a6, t1, a6
                  slt          zero, s5, t1
                  nop
                  mulh         t6, s11, a7
                  c.srai       s0, 26
                  c.andi       s1, -1
                  c.lui        ra, 19
                  sltiu        s4, a7, 1262
                  divu         t2, s6, s7
                  nop
                  add          a4, s0, t1
                  slli         a3, t0, 26
                  c.andi       a4, 31
                  lui          s4, 340218
                  or           s11, s10, zero
                  rem          s9, s5, s11
                  sub          ra, a0, s8
                  divu         zero, gp, sp
                  add          t0, a1, a5
                  c.sub        a4, s1
                  c.andi       a2, -1
                  rem          s11, s11, ra
                  c.or         s0, s0
                  mulhsu       tp, a1, a3
                  or           t1, sp, sp
                  srai         t4, s1, 27
                  c.srli       s0, 23
                  xor          a0, tp, t0
                  c.srai       a0, 13
                  and          s9, a6, s9
                  remu         t0, t6, sp
                  xor          ra, t2, a2
                  mulh         s5, s2, t4
                  auipc        a2, 823371
                  srai         gp, s9, 11
                  slti         s6, s11, 1591
                  c.sub        s1, a2
                  srli         s3, tp, 16
                  c.or         a2, a4
                  divu         s11, s7, t5
                  sll          t6, s11, s7
                  c.addi       s5, -1
                  and          a7, a6, gp
                  nop
                  c.or         a4, a4
                  ori          s6, a0, -1863
                  sltiu        a2, a5, -1047
                  c.or         s0, a3
                  c.addi       t2, 24
                  c.srli       s0, 30
                  xori         s3, t1, 1972
                  c.and        a3, a5
                  slt          s7, a0, a4
                  mul          t3, a4, s9
                  c.srai       s1, 20
                  xori         s10, s2, -1324
                  c.add        t1, t3
                  c.lui        s6, 8
                  c.srli       s1, 11
                  c.addi       t4, -1
                  ori          s9, s9, -843
                  srai         t4, a0, 24
                  c.mv         t6, s11
                  ori          s7, sp, 1664
                  c.sub        s0, a0
                  sll          s3, a3, tp
                  c.li         a6, 27
                  sltu         a2, t3, s5
                  c.sub        a3, a1
                  remu         t2, s3, s3
                  and          a6, a4, a5
                  sltu         s8, s4, tp
                  sltu         a6, gp, a5
                  c.slli       s0, 23
                  rem          s7, a2, s9
                  c.lui        gp, 4
                  mulhsu       a7, zero, s10
                  c.sub        s1, a3
                  lui          a3, 615874
                  srai         a0, t4, 11
                  xori         s3, sp, -659
                  or           ra, s9, t2
                  c.slli       s0, 27
                  c.li         a0, -1
                  auipc        t2, 615313
                  slt          zero, gp, t0
                  mul          s11, s10, s6
                  lui          t5, 389564
                  sltu         gp, s9, t0
                  mul          s3, s7, a3
                  c.srai       a3, 17
                  ori          s3, s6, -678
                  remu         ra, t1, a2
                  add          s8, a6, s2
                  srl          a7, s11, t4
                  c.add        tp, s5
                  slt          s0, a7, a2
                  c.srai       s1, 12
                  c.addi       t5, 13
                  c.and        a3, a1
                  mulhu        ra, t2, a2
                  slt          t4, t4, gp
                  c.and        a4, s1
                  sltu         t3, a1, t6
                  c.lui        a6, 15
                  c.sub        a0, a1
                  srai         zero, zero, 11
                  remu         s6, t6, gp
                  mul          a7, a6, a5
                  c.add        t5, s2
                  auipc        gp, 36599
                  c.lui        s9, 3
                  add          t2, s4, s6
                  div          t3, s0, t5
                  c.or         a2, s0
                  sra          a2, s9, tp
                  sltiu        t2, a6, -658
                  c.mv         a6, s1
                  remu         ra, a5, a3
                  addi         a0, s1, 1502
                  sltiu        a2, a1, -421
                  slti         t3, t5, 738
                  sll          s2, t5, t3
                  c.srli       a0, 27
                  div          t3, a5, t2
                  slti         a6, a1, -456
                  sltiu        t3, t2, 925
                  or           tp, t4, a1
                  slti         t5, s3, -1113
                  srl          t2, t5, ra
                  and          s2, t2, a5
                  c.li         s2, 18
                  sll          a3, s1, a5
                  c.srai       s1, 28
                  auipc        s3, 477779
                  div          zero, a3, a0
                  sltu         ra, s4, s9
                  rem          a0, ra, s1
                  sub          t3, t6, s0
                  c.add        s4, s11
                  or           t0, t6, s6
                  sltiu        t4, a3, -16
                  remu         t2, sp, a7
                  sltu         a7, a5, t1
                  or           a3, s9, a3
                  div          s2, s1, s0
                  c.lui        s9, 15
                  auipc        t0, 385033
                  xori         s9, a7, -309
                  c.lui        s8, 21
                  slti         a7, a3, 854
                  c.nop
                  slt          s8, ra, a0
                  c.xor        a3, a4
                  ori          zero, s5, -1684
                  nop
                  slt          t6, s0, s11
                  and          ra, s0, a3
                  sll          a4, s11, s9
                  ori          s4, s1, 1264
                  c.nop
                  div          s3, s10, s9
                  c.and        s0, a4
                  c.xor        a0, a4
                  c.srai       a0, 2
                  c.and        s0, a1
                  nop
                  c.slli       s6, 16
                  c.or         a3, s1
                  srai         s10, a2, 12
                  c.srai       a4, 24
                  sltu         s7, a4, s8
                  auipc        gp, 787402
                  c.srli       a3, 22
                  slt          t3, s1, a2
                  srl          s1, s3, a5
                  c.slli       a2, 16
                  sll          gp, s7, t5
                  sltu         t0, s3, a6
                  or           tp, zero, t5
                  mul          tp, s3, a2
                  slt          s10, s11, a0
                  sltu         tp, t1, a5
                  srli         a7, gp, 22
                  c.srli       a3, 8
                  slt          s5, s4, a7
                  slli         s6, s11, 1
                  c.add        gp, gp
                  lui          s9, 79084
                  c.srli       s0, 3
                  c.srli       a4, 5
                  c.andi       a4, 3
                  c.slli       t2, 4
                  sub          s10, t6, s5
                  sltu         gp, sp, s3
                  c.li         s2, 19
                  c.andi       s1, -1
                  xor          a4, a1, zero
                  div          a6, s1, s10
                  c.add        s2, a4
                  c.xor        a3, a0
                  sltiu        s9, s11, -420
                  divu         s8, a5, a3
                  lui          gp, 533690
                  c.nop
                  slli         s9, s11, 18
                  add          s9, zero, a0
                  c.li         s0, 11
                  sll          zero, t2, tp
                  add          t6, s5, a3
                  mulhu        s3, s0, tp
                  mulh         zero, s0, t4
                  sltu         t3, gp, a2
                  divu         s6, tp, s11
                  nop
                  sub          a3, t1, a0
                  auipc        s2, 193586
                  srl          s9, tp, t2
                  xori         a2, t3, 1432
                  and          a6, s8, s4
                  c.nop
                  c.nop
                  nop
                  lui          t4, 849094
                  c.or         a0, a1
                  sra          s1, t0, a5
                  or           t2, s7, t2
                  mulhu        s3, ra, s7
                  srli         s10, sp, 23
                  mulh         s6, s5, a7
                  srai         a3, a7, 25
                  sub          s11, a5, s10
                  remu         s8, t4, tp
                  sll          s8, a0, s6
                  c.li         a6, 25
                  slti         s9, a5, 1305
                  mulhsu       a7, s4, s7
                  slt          t5, a5, s3
                  xori         s4, t1, 1975
                  andi         gp, s2, 898
                  c.lui        t2, 24
                  slti         gp, a7, -1497
                  divu         s5, gp, a2
                  xori         s0, a5, 1895
                  andi         ra, a7, 777
                  srai         s6, s4, 20
                  ori          s1, s11, 1447
                  rem          t2, a3, a0
                  c.addi       a2, 10
                  c.add        s2, s0
                  c.sub        a3, s0
                  slli         s0, s5, 11
                  add          s6, t3, t1
                  c.li         s7, -1
                  c.addi       t4, -1
                  c.sub        a4, a5
                  slli         gp, tp, 19
                  srl          s5, ra, s5
                  ori          t1, t1, -22
                  addi         tp, a2, -667
                  mulhsu       a2, t4, a2
                  slli         tp, t6, 19
                  slt          t0, a1, t0
                  c.andi       a3, 19
                  nop
                  c.add        s6, t3
                  c.li         t1, 14
                  c.lui        s4, 14
                  addi         a2, s3, 1522
                  c.and        s1, a4
                  slli         s4, ra, 5
                  sub          s6, t0, a1
                  c.li         s3, 29
                  addi         s10, s10, -1362
                  srli         a4, s9, 31
                  c.mv         s11, s5
                  c.li         a3, -1
                  c.srai       a3, 27
                  nop
                  addi         s8, s0, -662
                  mulhu        a0, sp, t1
                  c.li         s9, -1
                  sltiu        a4, s5, -1414
                  c.srai       a4, 23
                  slli         a7, s4, 27
                  mulhu        s1, s6, sp
                  sll          a0, s3, sp
                  remu         t5, s8, a0
                  sra          s5, a3, t6
                  add          a2, t0, t4
                  c.slli       s0, 21
                  sll          t4, s1, s7
                  add          s1, a4, s1
                  slli         s6, a6, 7
                  nop
                  xor          ra, t6, s11
                  lui          s1, 224470
                  lui          s4, 95548
                  auipc        t3, 177652
                  c.lui        s0, 3
                  sub          s3, ra, s5
                  c.xor        a4, a0
                  div          t3, s6, s0
                  c.or         s1, a3
                  add          a2, a5, s4
                  c.lui        a4, 15
                  remu         gp, a7, s2
                  c.lui        gp, 26
                  divu         s8, tp, s7
                  sltiu        a4, s9, 1121
                  mulhu        s3, a3, s2
                  remu         s7, a5, t0
                  auipc        a2, 421359
                  slti         a3, tp, -1139
                  c.add        s4, ra
                  nop
                  xor          t1, t1, t4
                  c.mv         s10, s8
                  c.and        a3, s1
                  lui          t0, 126214
                  c.srai       a4, 25
                  srli         a6, t6, 12
                  sra          t0, t5, t1
                  c.mv         s7, t3
                  c.sub        s1, a5
                  mulh         tp, s1, s5
                  and          t6, s8, t3
                  divu         ra, s10, s2
                  c.srli       a2, 1
                  c.srli       a4, 21
                  c.mv         s10, s1
                  xori         a2, a3, 219
                  sll          s0, s7, a2
                  sltu         t0, t3, s0
                  divu         t4, s6, s6
                  c.add        s5, s3
                  mulhu        s0, s4, a3
                  nop
                  lui          t4, 876073
                  c.srli       s1, 22
                  addi         zero, s1, -281
                  addi         s3, s8, -466
                  sra          a4, s10, s10
                  slti         s0, a4, 1245
                  c.andi       a3, -1
                  slti         s10, s2, -1402
                  srl          a2, s2, s1
                  slti         s11, s8, -1594
                  c.srai       a0, 18
                  slti         s11, gp, -912
                  sltu         t2, sp, s1
                  addi         s11, a3, 1519
                  c.andi       a3, -1
                  sltu         s3, s5, s0
                  sra          s1, a7, gp
                  xori         t3, s10, 1568
                  rem          s6, s9, ra
                  c.add        tp, s8
                  c.mv         s2, t0
                  c.or         s1, a0
                  c.li         a2, -1
                  mulh         a3, s2, a5
                  c.xor        s1, a5
                  c.addi       t2, -1
                  c.slli       a0, 25
                  srai         s4, a2, 28
                  sll          zero, s7, t1
                  c.add        t6, s3
                  mulhu        a4, t2, sp
                  c.and        s1, s0
                  sltiu        s10, t4, -1474
                  divu         s11, s8, s7
                  add          a6, t0, s6
                  xor          s1, s2, s8
                  c.andi       a4, -1
                  c.sub        s0, s1
                  slt          gp, s3, t0
                  sub          a0, a2, a6
                  c.and        a2, s0
                  sltiu        s9, s6, -669
                  slti         a4, s11, -1638
                  divu         gp, s0, a1
                  xori         s9, zero, -421
                  remu         a0, s9, s2
                  c.mv         s6, s8
                  c.slli       s3, 11
                  c.srai       a3, 18
                  srli         t2, s2, 12
                  rem          s0, a1, a3
                  sra          gp, a5, s5
                  srai         a0, a1, 11
                  srli         s0, s6, 2
                  slti         a0, a3, 1334
                  remu         a3, a5, s4
                  c.addi       t4, -1
                  auipc        s11, 145384
                  mul          a0, a6, ra
                  mulhu        s4, s0, a6
                  c.xor        s1, a2
                  andi         t4, a1, 1101
                  slli         s9, s6, 31
                  and          s5, a6, s1
                  mulh         tp, sp, s10
                  c.srli       a3, 27
                  c.sub        a3, a1
                  c.srai       s0, 19
                  xor          a3, s3, s3
                  sub          s0, s5, s0
                  slli         s5, s6, 29
                  c.nop
                  c.srli       a3, 2
                  sll          gp, s3, a6
                  div          s6, t2, tp
                  c.addi       tp, 21
                  mulhsu       s11, s8, ra
                  nop
                  c.nop
                  slt          s7, t5, t6
                  c.or         a0, s1
                  auipc        t1, 301685
                  divu         t4, s4, tp
                  c.and        a4, a2
                  mul          t6, s11, ra
                  c.and        a2, a2
                  c.mv         t4, a2
                  c.slli       s3, 5
                  mulh         t3, t5, gp
                  srai         s6, a7, 29
                  slt          a6, a2, a3
                  slt          s8, t5, s9
                  mul          a6, s11, gp
                  add          ra, a4, a2
                  c.or         a3, a1
                  c.sub        a3, a1
                  xori         t6, a3, 1271
                  sltiu        s9, zero, 32
                  slti         a2, t2, 803
                  lui          s3, 132991
                  srai         s5, s8, 6
                  c.addi       tp, 23
                  c.srai       s1, 29
                  nop
                  c.or         s0, a4
                  lui          a6, 317851
                  c.addi       s8, 1
                  c.li         s2, 14
                  nop
                  mulhsu       s5, gp, s0
                  andi         s6, t4, -868
                  c.mv         t5, t3
                  andi         tp, s7, -1818
                  mulhu        t6, t6, t5
                  c.sub        a0, a5
                  c.sub        a2, a1
                  or           gp, s4, t0
                  slli         t3, t3, 10
                  c.slli       s1, 21
                  c.srli       s1, 30
                  sub          tp, s0, s6
                  c.sub        a4, a2
                  c.xor        a0, a4
                  c.andi       a4, -1
                  c.lui        s0, 17
                  add          s1, s8, t1
                  remu         t4, a3, s2
                  divu         t5, a4, s11
                  srl          ra, s0, a5
                  c.srli       s1, 5
                  auipc        s0, 398359
                  c.and        a4, a5
                  andi         t1, s4, 799
                  rem          s3, a2, s1
                  srai         s10, s9, 27
                  mulhu        s11, zero, t1
                  c.xor        a4, s1
                  srl          a0, s10, t3
                  lui          a3, 142539
                  slt          s7, t0, a6
                  mul          s9, tp, a4
                  c.nop
                  xori         s1, a4, -638
                  ori          a0, s4, 990
                  sltu         gp, tp, t6
                  slt          gp, a0, a0
                  sub          s6, a7, s2
                  srl          a3, s2, t3
                  auipc        s8, 79051
                  c.and        s1, a2
                  auipc        s2, 831820
                  srl          a6, t4, a0
                  c.li         ra, -1
                  sltiu        t6, s3, -1401
                  mulh         a3, s9, a3
                  mulhu        a0, zero, zero
                  or           s8, t4, s9
                  c.mv         s11, a2
                  andi         s0, a6, -892
                  c.andi       s1, -1
                  lui          ra, 13023
                  ori          t4, t6, -1580
                  remu         t6, s0, s0
                  slti         t6, a2, 1861
                  andi         t6, a0, -684
                  sltu         s2, s6, sp
                  nop
                  div          s11, t2, sp
                  divu         t2, a4, a6
                  mulh         t4, s10, t5
                  sra          t5, ra, s6
                  c.slli       t1, 29
                  xor          a6, a6, s10
                  slti         t4, a3, 475
                  c.mv         a3, a1
                  c.xor        s1, a3
                  xori         s7, ra, 1462
                  xori         s4, t5, 1872
                  sll          s9, gp, a1
                  c.and        a3, a4
                  c.add        s2, ra
                  addi         t5, s8, -722
                  andi         s11, a7, -1078
                  divu         ra, sp, a0
                  xori         gp, s9, 1449
                  auipc        s7, 811292
                  div          s1, a1, a6
                  c.li         s6, 18
                  andi         t3, t3, -1643
                  c.slli       s10, 18
                  or           t4, s5, t5
                  xor          s6, a3, s6
                  div          s1, s2, zero
                  remu         s5, s3, a2
                  divu         t0, a2, gp
                  c.srai       a3, 15
                  c.andi       s0, 4
                  sub          a0, a0, s10
                  sltiu        a4, s5, -82
                  sll          s4, ra, s7
                  c.andi       s1, -1
                  andi         t2, ra, -2028
                  c.nop
                  c.nop
                  xor          s3, s10, t6
                  srli         a4, s1, 16
                  srl          s2, s11, a6
                  c.nop
                  srli         a2, s4, 9
                  c.sub        a3, a2
                  rem          a4, t2, t2
                  nop
                  srl          s5, a3, a7
                  andi         s11, a6, -633
                  c.add        s6, s11
                  srai         a0, a1, 12
                  remu         t1, t3, s2
                  c.slli       tp, 29
                  c.andi       a0, -1
                  divu         s11, s9, a6
                  mulh         t1, ra, s5
                  slti         zero, t5, -996
                  ori          s9, t1, 669
                  or           a6, s0, t5
                  c.add        t6, t5
                  addi         a4, a4, -986
                  and          t2, tp, s5
                  srai         t5, t5, 4
                  nop
                  rem          a4, s6, a3
                  xori         t3, s7, 1880
                  remu         s6, t0, a3
                  c.add        t0, a5
                  andi         a2, ra, 1431
                  auipc        s7, 802047
                  c.sub        a4, a1
                  mulh         s3, s10, a1
                  auipc        t5, 440537
                  sll          a0, t4, a4
                  xor          t2, t3, s6
                  mulh         a4, sp, s3
                  and          a6, t1, t6
                  sltu         a3, a2, a5
                  remu         t5, gp, s2
                  c.mv         s8, t1
                  c.addi       s2, -1
                  auipc        s3, 30833
                  c.li         s5, 8
                  c.li         s0, 25
                  mulh         t4, sp, a0
                  auipc        t2, 246182
                  c.srai       a4, 18
                  c.nop
                  sub          t0, s8, s7
                  c.addi       a6, 24
                  remu         s2, tp, s5
                  or           t3, zero, t3
                  srl          a4, a1, ra
                  lui          a2, 513155
                  c.sub        a4, a4
                  sub          s3, s9, s0
                  c.srai       s0, 19
                  mul          s1, s10, t1
                  rem          s6, s3, t1
                  slt          t4, t4, a3
                  divu         s1, s3, s8
                  lui          s5, 351791
                  c.lui        s10, 3
                  or           a4, a6, a4
                  srli         tp, zero, 22
                  rem          a6, s6, s0
                  sra          a7, t2, s10
                  sltu         s11, s4, a2
                  div          t6, s11, t5
                  mulhsu       s6, s0, zero
                  add          s4, t5, a7
                  sll          a3, s8, s1
                  xor          s8, sp, a2
                  sll          t6, tp, a7
                  sub          t1, s11, gp
                  c.lui        s2, 28
                  mul          a0, s8, gp
                  sll          t3, t3, a2
                  sll          t0, a2, t0
                  c.add        s9, s5
                  sltiu        s6, ra, 78
                  nop
                  c.srai       a0, 27
                  xori         a7, s4, 973
                  slli         s0, t1, 15
                  slt          t1, s7, s8
                  divu         s3, s3, gp
                  nop
                  sll          a2, a1, a5
                  or           a7, s8, a3
                  nop
                  andi         a4, a4, 237
                  lui          zero, 12331
                  c.or         a4, s1
                  srl          a2, a6, sp
                  sll          t2, t5, a2
                  or           t1, t2, s4
                  mulh         a2, s1, t4
                  auipc        s4, 838530
                  sra          zero, t0, a5
                  xori         t0, a6, -1156
                  or           t5, s5, a6
                  c.andi       s0, 3
                  c.andi       a0, -1
                  sra          t3, t6, s2
                  sra          a0, a7, t2
                  c.xor        a3, a0
                  sltu         t2, s10, s8
                  c.or         a0, s0
                  sltiu        s8, t3, -1289
                  c.slli       s2, 28
                  mulhsu       a6, t5, a7
                  c.slli       s11, 18
                  nop
                  divu         ra, a1, s5
                  add          tp, a6, tp
                  srli         t2, ra, 7
                  mul          s3, a6, a7
                  divu         s8, s0, s4
                  addi         t1, s4, 1035
                  ori          t5, a4, -1280
                  ori          s3, s1, -61
                  mul          tp, s8, t4
                  c.addi       s11, 1
                  slt          s5, a5, sp
                  rem          zero, t3, t2
                  divu         t0, t0, a2
                  c.add        t5, a0
                  rem          t2, s10, s11
                  c.andi       a3, -1
                  c.slli       tp, 5
                  c.and        s0, a5
                  xor          s10, tp, s2
                  and          t4, a2, a5
                  sltu         t2, t0, a2
                  ori          s0, s4, -543
                  or           s0, a4, s11
                  c.slli       tp, 22
                  nop
                  srl          a0, s4, a1
                  c.add        t6, s4
                  auipc        s3, 47604
                  sra          tp, s6, t2
                  rem          a4, s5, a4
                  mulhu        a4, s2, t5
                  ori          a6, s11, 1949
                  c.srai       a2, 8
                  remu         gp, t0, a1
                  ori          s7, s7, 2020
                  ori          t5, a2, -508
                  mulh         t6, a7, s3
                  mul          gp, s4, a7
                  c.slli       t1, 21
                  sltu         tp, t5, a5
                  c.or         a3, a0
                  c.addi       t2, 21
                  sltu         a0, s6, s3
                  slt          ra, s6, s11
                  c.or         a0, s0
                  xori         tp, a5, 398
                  srli         s2, a1, 11
                  ori          s7, a6, -1451
                  c.mv         t4, s11
                  c.or         a0, a2
                  srl          gp, tp, s5
                  c.sub        a4, s0
                  and          s10, s1, s6
                  srl          s6, s7, a6
                  mulh         a2, tp, a4
                  c.nop
                  nop
                  c.lui        a2, 14
                  sltiu        s10, s7, -1599
                  slli         gp, s4, 25
                  mulh         a0, t1, a7
                  ori          t0, a0, 59
                  c.lui        t6, 21
                  andi         a6, zero, -1671
                  c.li         s5, -1
                  c.lui        s1, 10
                  slli         t4, t4, 3
                  srai         s1, s1, 24
                  c.srai       a3, 6
                  xori         a0, a3, -1913
                  xori         t2, zero, 1240
                  addi         s8, a3, 855
                  c.andi       a0, -1
                  rem          t2, a6, s5
                  xori         s4, a4, 574
                  sll          a3, t4, t4
                  c.xor        a4, a5
                  c.sub        a4, a4
                  srl          s8, s3, s3
                  andi         t3, a7, -934
                  lui          s0, 1029834
                  sra          t4, s9, a2
                  mulhsu       t2, a0, t5
                  mulhsu       s11, s6, a0
                  nop
                  c.mv         a7, s1
                  c.nop
                  c.addi       a3, 8
                  mulhsu       a6, t3, a5
                  c.add        ra, ra
                  sltu         s10, t6, s0
                  c.srai       s0, 15
                  mul          s2, tp, t5
                  c.addi       s3, 31
                  sll          a4, s8, s4
                  auipc        s9, 592215
                  lui          ra, 88700
                  addi         t5, zero, -1382
                  auipc        s3, 814879
                  lui          t2, 904965
                  c.slli       s7, 15
                  c.li         s2, -1
                  c.lui        a3, 22
                  divu         ra, gp, a0
                  srl          a4, s10, s0
                  c.srli       a2, 26
                  c.nop
                  slt          t4, sp, t5
                  c.addi       s9, 1
                  c.or         a0, a0
                  c.and        a2, s0
                  nop
                  mul          tp, s0, a7
                  auipc        t6, 307762
                  div          a3, a7, s8
                  divu         s11, s9, s0
                  ori          s5, s8, -277
                  nop
                  sra          s1, a5, t5
                  c.nop
                  xor          s10, s7, t1
                  xor          t2, s3, a4
                  slti         s8, sp, 1836
                  sltiu        t2, s10, -1421
                  c.lui        t4, 14
                  srl          s8, t1, t4
                  sltiu        t4, s1, 144
                  srli         s2, s6, 0
                  mulhu        a4, t1, tp
                  andi         s2, tp, -600
                  mulhu        s1, s8, t6
                  andi         s3, t3, -856
                  c.sub        a3, a5
                  rem          t5, tp, a7
                  ori          t6, t0, 982
                  c.xor        a3, a5
                  ori          a2, s9, 834
                  div          s2, a0, t2
                  slti         a4, t5, 1569
                  slt          s9, a7, t5
                  c.nop
                  div          s10, s5, s3
                  c.sub        s0, a4
                  mulhsu       s8, ra, tp
                  sub          s5, s6, s5
                  xori         s10, sp, 1938
                  c.srai       a0, 14
                  c.nop
                  c.nop
                  remu         a7, ra, a2
                  sltu         t4, t4, t1
                  srl          s10, t4, a4
                  div          s8, s6, s8
                  c.add        a7, t1
                  c.add        t3, s3
                  c.srai       s0, 29
                  slli         s7, s8, 4
                  add          s11, zero, t0
                  c.add        a0, t0
                  xori         t1, t6, -233
                  sll          gp, s10, t3
                  c.andi       a4, 2
                  c.xor        a3, a5
                  divu         s8, t1, a5
                  c.nop
                  srai         s3, s9, 21
                  srl          a6, a4, t0
                  c.li         t3, -1
                  auipc        a0, 458156
                  c.addi       a6, -1
                  and          s10, a1, s0
                  xori         s5, s8, -1335
                  or           a0, s4, s2
                  c.sub        a4, a4
                  sll          a0, t3, ra
                  xori         s9, a6, 1574
                  mulh         s8, s5, s6
                  c.xor        a3, a1
                  xori         zero, s2, -1989
                  slti         t0, t2, -1903
                  c.or         a2, a4
                  c.addi       s9, 16
                  div          s3, s0, s0
                  c.mv         s4, a3
                  mulh         s10, s10, a6
                  or           a6, t4, a1
                  add          t2, s9, s11
                  c.mv         s9, t4
                  add          s11, ra, a6
                  sra          s2, s1, s9
                  c.mv         t2, s9
                  c.mv         t2, a1
                  div          t3, a6, a1
                  addi         s2, s3, -1061
                  sltu         a0, s8, a5
                  c.and        s1, a1
                  c.addi       s7, 24
                  auipc        a3, 155762
                  srl          s1, s4, sp
                  nop
                  srli         s6, a1, 22
                  c.srai       a3, 3
                  mulhsu       s0, t3, a6
                  c.mv         a3, t5
                  remu         s5, s11, s6
                  c.or         a0, s0
                  xori         zero, s9, -1013
                  mulhu        s8, a6, tp
                  and          t4, a7, a4
                  srli         t5, t0, 15
                  andi         t0, a3, 185
                  sltiu        zero, s4, 216
                  slt          s10, s1, a2
                  rem          a0, t5, t4
                  c.add        s11, t2
                  mul          gp, ra, s4
                  c.srai       a2, 18
                  addi         s1, s10, -530
                  c.andi       s1, -1
                  sltiu        s4, s0, 155
                  c.mv         a0, s11
                  srli         s7, t0, 30
                  c.add        s8, s4
                  srli         s2, s4, 3
                  andi         a0, t2, -612
                  slt          s1, a2, s9
                  c.lui        s10, 29
                  slli         s11, s7, 2
                  sll          tp, sp, a0
                  mulhsu       t1, t6, s6
                  mul          s3, a5, s1
                  srli         t6, s8, 4
                  xori         t2, t4, -1648
                  sltu         a3, gp, t0
                  xor          t6, t5, t6
                  sltu         t3, s8, s10
                  srli         a7, s9, 0
                  or           t0, a1, t3
                  nop
                  c.li         s10, 0
                  c.sub        a0, a5
                  add          s11, sp, s0
                  slt          ra, a6, t5
                  mul          s0, ra, s7
                  c.xor        a2, a2
                  c.xor        a3, a5
                  mulhsu       t5, zero, s0
                  c.addi       s1, -1
                  add          a3, gp, s9
                  sltiu        t6, s5, -441
                  c.srai       s1, 1
                  sub          s0, s2, a2
                  and          t0, a0, s6
                  slt          a4, s11, a2
                  c.nop
                  c.sub        s0, a2
                  xori         a3, s10, -2014
                  nop
                  mulh         t0, s11, t6
                  c.slli       tp, 18
                  xori         t6, s9, -2045
                  c.xor        a0, a0
                  sltiu        t6, a7, -451
                  remu         s4, s11, a2
                  slt          tp, s4, t4
                  andi         t2, s4, 1538
                  addi         s2, tp, -247
                  divu         t4, s5, s9
                  srli         tp, sp, 0
                  c.add        a0, s8
                  c.srli       s1, 18
                  c.add        gp, t1
                  xori         s7, a5, -689
                  sra          a0, t3, t3
                  nop
                  ori          zero, s1, -1807
                  addi         s7, t0, -1753
                  c.mv         t0, gp
                  c.srli       s1, 31
                  div          s3, a0, s8
                  c.sub        s0, a1
                  remu         s8, a2, s3
                  xor          zero, s6, a4
                  nop
                  addi         s2, a7, 1560
                  or           s9, a0, zero
                  c.lui        s9, 3
                  mul          t5, s10, t3
                  c.or         s0, s1
                  xor          s5, t3, zero
                  c.or         s1, a3
                  mulh         s4, s7, a6
                  and          s0, t0, s3
                  sub          a6, t6, t3
                  c.slli       tp, 1
                  sll          gp, s2, a0
                  c.lui        t3, 28
                  c.li         s7, 27
                  sltiu        s4, t1, 1807
                  sra          t3, t4, a7
                  and          a3, s8, s1
                  mulhsu       s4, t6, a3
                  c.srli       a3, 13
                  c.nop
                  mulhsu       s6, gp, t4
                  sra          gp, a5, s3
                  nop
                  div          t3, t2, t4
                  ori          s1, s1, 577
                  slti         a7, t3, 210
                  sub          t6, s2, s7
                  c.and        s1, a3
                  slti         gp, t1, -552
                  andi         t2, gp, 1264
                  xori         t4, a3, -431
                  mulhsu       zero, s7, a7
                  mulhsu       s11, s2, t5
                  c.and        a3, s0
                  c.andi       a0, -1
                  mulhsu       s6, s2, s11
                  c.li         ra, 29
                  and          s8, t3, t3
                  srl          s1, s2, t3
                  remu         t5, t5, s0
                  andi         a4, tp, 872
                  c.xor        a0, a4
                  c.lui        s6, 23
                  divu         a0, s3, a7
                  c.slli       tp, 25
                  c.lui        s8, 20
                  c.lui        s10, 18
                  c.nop
                  c.srai       s1, 26
                  c.li         s11, 14
                  or           t3, t2, s2
                  addi         t4, a2, -498
                  c.slli       s3, 13
                  rem          a3, s5, gp
                  mul          a2, s5, t2
                  c.mv         ra, t2
                  c.mv         s3, s11
                  c.sub        a4, s1
                  sub          s8, s10, gp
                  or           s5, t4, t6
                  sltiu        s1, s2, 1864
                  sra          t2, t0, s8
                  c.li         s6, -1
                  c.sub        s1, s1
                  sra          gp, a2, t0
                  rem          s11, a1, s3
                  c.sub        a2, a1
                  mulhu        a0, t4, t5
                  c.srli       a4, 31
                  srl          t0, s0, t5
                  sltu         t4, t5, t2
                  xori         s2, s1, -88
                  sltiu        t2, gp, -382
                  c.srai       a2, 12
                  mulhu        s4, s5, s3
                  c.nop
                  slt          s4, s11, s6
                  srai         s0, sp, 30
                  srl          t6, s8, a0
                  lui          zero, 105057
                  lui          ra, 709644
                  c.xor        a4, a4
                  c.add        s7, s8
                  div          a6, t3, t2
                  sub          s11, t3, a3
                  xor          s6, a3, s6
                  rem          gp, t1, s11
                  xor          s7, a1, s9
                  c.nop
                  mulh         s3, sp, a2
                  mul          ra, a4, t5
                  c.mv         s4, a4
                  c.addi       a4, 5
                  mul          a4, t6, t5
                  c.addi       t3, 13
                  srli         t5, a2, 30
                  nop
                  c.add        s3, gp
                  slt          a0, a5, t5
                  c.li         t3, -1
                  slti         gp, a4, 662
                  c.srli       a3, 18
                  and          s10, sp, gp
                  c.andi       a4, 20
                  remu         zero, a3, a0
                  srli         s9, a5, 26
                  slli         s1, s3, 23
                  c.mv         t1, a3
                  srl          ra, s1, a6
                  addi         a3, s6, -533
                  add          s11, s11, a4
                  sltu         s10, gp, a5
                  c.li         s11, -1
                  srl          t4, s3, t2
                  c.and        a3, a2
                  div          s10, s3, a5
                  sltu         tp, zero, s4
                  mulh         tp, zero, t6
                  c.addi       t3, -1
                  or           t2, t5, ra
                  sltu         t4, a6, a4
                  c.srai       a3, 4
                  add          a3, s0, t6
                  auipc        a2, 40338
                  c.li         ra, -1
                  mulh         t4, t2, s3
                  add          s11, gp, s3
                  c.andi       a0, 27
                  c.addi       s9, 14
                  xor          t2, a7, sp
                  andi         a2, s3, 439
                  sll          s7, a4, s0
                  div          t3, s8, a5
                  c.and        a0, a2
                  c.add        s8, s1
                  sra          ra, s5, s8
                  c.lui        s6, 31
                  sltiu        gp, s10, -1672
                  sltiu        s3, s3, -354
                  andi         zero, a4, -518
                  c.sub        a2, a2
                  rem          gp, gp, zero
                  srli         gp, gp, 23
                  c.srli       a3, 2
                  sll          t1, tp, gp
                  mulhu        a3, a7, a1
                  mul          a7, zero, t0
                  c.li         t5, -1
                  c.xor        s1, a3
                  c.srai       a4, 20
                  c.sub        a0, a0
                  slti         t6, s0, 150
                  mulhu        gp, tp, t2
                  divu         a3, ra, t5
                  sra          tp, a0, t1
                  c.addi       ra, -1
                  rem          a0, s9, a5
                  auipc        t6, 465205
                  c.and        a0, a2
                  mul          s6, zero, a3
                  ori          t2, s0, -895
                  xor          s11, t3, t6
                  mul          s10, s1, a3
                  sra          s7, a1, ra
                  div          t4, t2, s10
                  c.srai       a4, 15
                  xor          t4, a6, a3
                  div          t6, t6, t2
                  c.mv         t6, s1
                  auipc        gp, 846317
                  mulh         s9, t3, s5
                  mulhsu       s0, t5, s1
                  mulhsu       t0, a7, s1
                  c.li         t1, -1
                  mulhsu       ra, t1, sp
                  mulh         t2, a7, a5
                  ori          s11, a6, 507
                  andi         gp, t0, -5
                  sra          gp, t0, s9
                  c.addi       tp, 28
                  c.srai       a0, 16
                  sra          a6, sp, a2
                  sltu         t4, s7, s7
                  c.nop
                  c.addi       a3, -1
                  addi         s0, t3, 1523
                  divu         a6, s5, sp
                  xori         a0, s4, -1727
                  c.add        s5, t0
                  sub          ra, t2, ra
                  remu         s0, gp, s8
                  sltiu        zero, s3, 983
                  c.mv         s0, t6
                  mul          s9, ra, a4
                  rem          gp, gp, a6
                  xor          s9, s6, gp
                  xor          s4, t2, t4
                  xori         a0, s5, 659
                  c.add        t5, s7
                  c.add        ra, ra
                  c.slli       tp, 29
                  c.or         a0, s1
                  sltiu        a2, s4, 1139
                  or           s8, t2, s1
                  c.lui        t2, 26
                  srai         zero, a1, 13
                  and          s2, s5, s6
                  c.srai       s1, 5
                  slli         gp, s5, 3
                  slli         t3, a7, 21
                  nop
                  sub          gp, s8, s0
                  divu         s4, s1, t2
                  xori         zero, s0, -1968
                  c.slli       s2, 15
                  xor          gp, sp, gp
                  slli         a3, sp, 21
                  c.lui        ra, 28
                  srai         t6, s6, 5
                  slt          a7, t1, t3
                  auipc        s8, 38949
                  c.addi       gp, -1
                  addi         a7, a2, -448
                  addi         s11, s10, 1337
                  rem          tp, tp, s7
                  c.xor        a3, a2
                  divu         a4, zero, a5
                  divu         a4, a0, t1
                  c.and        s1, a0
                  ori          t1, s5, -232
                  srai         s8, a2, 10
                  c.slli       s1, 22
                  lui          t1, 789327
                  mulhu        s11, t0, t1
                  mulh         t3, a6, s6
                  slti         s3, tp, -964
                  sltiu        s6, zero, -404
                  c.nop
                  sub          a4, t4, t1
                  srl          tp, sp, t4
                  mulhsu       a3, a6, a3
                  auipc        t1, 490657
                  slli         s11, t4, 21
                  c.srli       s1, 12
                  slli         a7, gp, 15
                  slt          a2, t6, zero
                  sltiu        a0, s3, 840
                  sub          s2, a2, sp
                  and          a6, a6, a4
                  lui          t6, 33883
                  addi         a2, s7, 1983
                  c.srai       s0, 6
                  or           s3, s1, a7
                  andi         tp, s11, 1287
                  ori          s2, t4, 1234
                  xori         s1, t3, 1669
                  mulhu        ra, s2, t1
                  c.or         a4, a3
                  ori          a0, s2, -832
                  c.srai       a3, 23
                  c.addi       s9, -1
                  srli         t0, a7, 1
                  addi         a6, t4, -1091
                  andi         t4, a2, -979
                  xori         s3, s9, 2033
                  lui          zero, 497505
                  and          s10, a5, tp
                  andi         a7, ra, -332
                  srai         s4, zero, 26
                  mulhsu       s10, t3, t4
                  c.lui        s8, 6
                  c.srli       s1, 7
                  slti         a4, a1, -115
                  xori         a2, a5, 266
                  c.mv         t5, a7
                  c.add        a2, s7
                  c.srai       s0, 1
                  slti         a7, ra, -1200
                  sub          a0, a0, gp
                  srl          t0, t1, s8
                  xor          t0, s1, sp
                  sltu         t6, t6, s2
                  mulhu        a7, sp, t6
                  srai         a3, s3, 22
                  srli         s7, a3, 12
                  srai         s8, s4, 4
                  auipc        s1, 454635
                  c.lui        s1, 11
                  nop
                  c.sub        s0, a4
                  srl          s5, a3, a3
                  c.srli       a3, 21
                  srl          a4, t2, t4
                  rem          a4, s0, s4
                  c.slli       tp, 28
                  c.add        t6, s8
                  mulhsu       a7, s9, tp
                  c.andi       s1, 13
                  slti         t2, a5, -1214
                  c.srli       a0, 5
                  c.li         s5, 30
                  lui          gp, 214694
                  add          t1, zero, a6
                  andi         t5, s3, 1182
                  sltu         t1, s6, ra
                  sra          s1, a7, t2
                  mulh         s2, a4, s9
                  srai         t3, s4, 8
                  xori         t3, s2, -1911
                  nop
                  nop
                  slti         s4, ra, -1822
                  div          a7, s0, s9
                  slt          s4, a4, t4
                  or           ra, s6, s6
                  lui          a4, 760477
                  sltiu        t4, s4, -537
                  c.andi       a3, -1
                  c.mv         t0, a0
                  c.or         s1, a2
                  sltu         s8, a1, ra
                  mulhu        ra, s10, a3
                  srl          s4, a5, s3
                  mulh         t3, a0, t1
                  andi         a2, t6, -1305
                  sub          gp, s2, t4
                  sll          zero, a3, a0
                  c.srli       a3, 16
                  andi         tp, s10, 1835
                  or           s6, sp, a2
                  c.sub        s1, a5
                  mulhu        s11, s7, a2
                  c.slli       a3, 14
                  or           ra, s10, a6
                  sll          t1, t3, a3
                  xor          a0, s4, s10
                  srli         a7, t1, 4
                  c.srai       s0, 11
                  c.nop
                  xori         s2, gp, -892
                  xori         t3, s2, -1150
                  c.or         s1, s0
                  c.nop
                  srai         s2, a7, 12
                  slt          gp, s8, ra
                  xor          s10, a4, ra
                  slti         s1, s5, -1534
                  sll          t2, t0, t1
                  srai         a3, a5, 16
                  c.nop
                  c.srli       s0, 15
                  remu         tp, s10, s11
                  mulhsu       s8, a6, s9
                  auipc        tp, 190689
                  mulhu        gp, t2, t5
                  ori          tp, t6, -927
                  c.sub        s1, s1
                  slti         s4, tp, -1450
                  sra          s7, a1, a0
                  divu         s1, s11, s1
                  srai         s10, t3, 25
                  remu         t6, s0, s10
                  c.srli       a4, 30
                  andi         a3, sp, -1468
                  add          a3, zero, a5
                  add          t2, s2, s9
                  srai         s1, s0, 2
                  c.and        a2, a3
                  lui          s5, 601232
                  mulhsu       t5, a2, a3
                  c.sub        a0, a2
                  c.andi       a0, -1
                  c.nop
                  rem          t4, t2, t6
                  div          t1, s10, a6
                  remu         s11, a3, t4
                  slli         s6, t1, 18
                  mul          s9, t3, sp
                  c.and        a4, a5
                  mul          tp, t4, t3
                  xor          s10, s8, s9
                  c.slli       a0, 11
                  mulh         s4, gp, ra
                  sltiu        s9, zero, -235
                  rem          a6, s2, a0
                  xor          a2, t5, a5
                  srai         gp, t1, 19
                  c.li         s3, 27
                  c.srli       s1, 14
                  mulhsu       s7, s0, t2
                  c.add        ra, s7
                  rem          s6, tp, s7
                  c.or         a3, a0
                  c.xor        a0, a5
                  c.add        s3, s4
                  srli         t6, s4, 25
                  ori          t1, sp, 1417
                  c.slli       a6, 2
                  c.mv         t4, a5
                  xori         s3, t2, -1739
                  sub          a0, t4, s4
                  mulhu        t6, a5, s0
                  mul          s5, t0, s4
                  c.lui        s11, 31
                  c.slli       s9, 5
                  auipc        s6, 517208
                  nop
                  and          a0, s5, t1
                  c.addi       s10, 5
                  ori          s0, a4, 665
                  mulhu        a6, a1, tp
                  c.srai       a0, 20
                  c.or         a3, s0
                  sub          a7, t4, t4
                  srai         s8, t5, 14
                  srai         s4, s1, 19
                  addi         t5, a7, -402
                  srl          a4, t3, s1
                  srai         a6, t0, 3
                  c.and        a3, s1
                  c.srli       a3, 18
                  sll          a3, s9, t4
                  slt          s5, s10, a7
                  srl          ra, s9, s8
                  divu         a0, t1, s1
                  mul          t0, t1, t2
                  c.li         t1, -1
                  ori          t4, tp, -920
                  mul          s11, s9, s6
                  nop
                  or           s1, a3, t4
                  c.and        a4, a5
                  auipc        s6, 694199
                  sub          s2, t2, t2
                  srai         t2, s7, 11
                  c.addi       tp, 16
                  c.add        t6, a0
                  mulh         t1, s0, s11
                  and          t3, gp, s5
                  div          s9, s2, s4
                  c.add        t5, s3
                  c.mv         t4, a6
                  auipc        t5, 541747
                  slt          t3, t3, s5
                  c.srai       a4, 3
                  mul          t6, s10, a6
                  c.sub        a3, a4
                  c.srli       a2, 9
                  remu         t1, s11, a2
                  c.mv         a7, t6
                  sra          s5, s3, s7
                  mulh         s2, a1, s10
                  rem          gp, t4, t6
                  mulhsu       a3, ra, s11
                  lui          t3, 694729
                  xor          ra, t2, s5
                  and          a4, s9, a5
                  div          s9, t4, s3
                  slt          a2, s0, a0
                  xori         s9, a7, 328
                  c.srli       a3, 25
                  sll          s8, a3, t3
                  c.addi       s8, 24
                  c.nop
                  lui          a2, 569766
                  c.sub        s1, s0
                  lui          t0, 478516
                  srli         s11, s7, 17
                  slli         t6, s2, 6
                  sltiu        s9, t3, -1382
                  c.addi       a6, 10
                  c.mv         t5, s1
                  sltu         t2, s7, a0
                  c.srli       s0, 2
                  andi         t0, s9, 259
                  add          zero, t3, s4
                  mulh         s6, t1, s4
                  c.slli       gp, 3
                  c.add        ra, a3
                  c.mv         s4, a3
                  srli         t1, t6, 18
                  mulhsu       t1, t6, t5
                  sltiu        a0, s4, 1374
                  c.slli       gp, 18
                  xor          s2, a6, a0
                  and          s11, s6, s0
                  andi         t3, s0, -1571
                  slt          s9, a2, t1
                  add          t6, s11, t3
                  xori         t2, s5, -25
                  add          a3, zero, gp
                  lui          s3, 727066
                  sltu         a0, s9, a4
                  slt          t3, s4, s8
                  divu         a4, a4, a0
                  c.srli       s0, 15
                  sltu         t2, a4, a3
                  c.xor        a3, a0
                  remu         t6, s4, a3
                  c.andi       s1, -1
                  ori          t0, s6, -515
                  andi         s4, a6, -968
                  xori         ra, s6, -770
                  srli         ra, s8, 22
                  slti         s9, s6, 483
                  c.lui        s7, 14
                  c.add        ra, t1
                  mulhu        ra, a1, a4
                  srli         t4, tp, 20
                  remu         s4, tp, s10
                  mul          gp, s4, zero
                  c.andi       s1, -1
                  c.srli       a4, 19
                  divu         a2, s5, s3
                  lui          s0, 347841
                  c.srai       a3, 20
                  andi         t0, s2, 1270
                  sltu         s2, s0, s7
                  div          s2, a6, ra
                  nop
                  divu         s2, s3, s8
                  lui          a0, 106960
                  or           t0, a3, a0
                  c.slli       a0, 20
                  c.srli       s1, 12
                  c.slli       a6, 21
                  c.add        s6, s7
                  slti         s9, t2, 1725
                  or           a6, sp, sp
                  auipc        t3, 827275
                  c.slli       a3, 25
                  auipc        t3, 648478
                  or           s0, a0, s5
                  c.add        t1, a0
                  c.andi       s1, 21
                  sra          t0, s6, s4
                  mul          t5, t0, s7
                  xori         tp, s8, 42
                  c.xor        a0, s1
                  sub          a4, s6, t6
                  c.nop
                  c.or         a0, a1
                  div          a3, s0, ra
                  srai         a6, a2, 16
                  sra          t4, a2, a5
                  lui          s3, 1036896
                  mulhu        a0, s4, sp
                  auipc        a3, 915125
                  srai         a0, a6, 29
                  slli         gp, a7, 29
                  andi         t3, gp, -1447
                  xori         gp, a2, 653
                  c.nop
                  c.srai       a0, 8
                  c.srli       s0, 29
                  auipc        t4, 615224
                  c.or         s0, a0
                  auipc        t6, 541410
                  c.addi       s8, 15
                  andi         s11, a1, 47
                  or           t3, gp, s3
                  add          s3, s0, a1
                  add          a4, s5, t5
                  sltiu        a2, t4, 1036
                  c.addi       s10, -1
                  xori         a7, s6, -859
                  srli         t3, s11, 20
                  c.nop
                  c.addi       a2, -1
                  mul          t0, s10, s0
                  xori         tp, s4, 723
                  slti         t3, a3, -1976
                  srl          zero, ra, t0
                  c.li         a2, 29
                  mulh         s3, s2, s6
                  andi         s6, s4, 781
                  xor          s5, t3, tp
                  c.sub        s0, a1
                  lui          t4, 26020
                  srl          s8, s0, s1
                  or           s6, t4, a7
                  xor          s11, t4, s2
                  mulhsu       t0, a0, a6
                  mul          s9, t1, a4
                  sra          s11, a2, s9
                  c.srai       a3, 15
                  c.slli       t2, 26
                  c.mv         s6, a2
                  auipc        zero, 592430
                  srl          s1, s3, t3
                  mulhsu       t3, a1, s11
                  c.or         s1, s0
                  c.li         a0, 5
                  c.nop
                  xori         s8, a6, -582
                  mul          a0, s7, a0
                  ori          s1, t3, 263
                  c.nop
                  c.srai       a4, 10
                  addi         t2, s5, 1355
                  div          t4, s6, gp
                  c.mv         s10, a5
                  c.or         a0, a5
                  slt          a4, s9, gp
                  or           s0, t4, a4
                  mulhsu       a0, t4, gp
                  c.and        s0, a0
                  srli         s9, t2, 11
                  c.nop
                  andi         s1, a6, 1165
                  divu         t5, t2, t1
                  srli         s7, t3, 8
                  mulhsu       zero, s3, tp
                  and          t5, s6, gp
                  rem          s4, s0, s6
                  c.lui        t3, 21
                  mul          t3, a1, sp
                  c.addi       a3, -1
                  divu         a3, a3, ra
                  andi         a6, a1, -83
                  or           s11, a7, s6
                  divu         t0, s9, s5
                  rem          a0, zero, s4
                  ori          s3, sp, -1429
                  nop
                  mulhsu       t3, t0, s10
                  c.xor        a2, a4
                  slti         s1, t5, -1707
                  c.lui        s9, 28
                  xor          t3, s3, a0
                  mul          a4, a0, s11
                  nop
                  sltiu        t0, a6, 1190
                  slti         s1, a0, 1881
                  c.sub        s1, a0
                  srl          s11, a6, s0
                  mulhsu       t1, t6, a1
                  mulhu        t1, s9, s7
                  mulhsu       s6, t3, s4
                  sltiu        t6, zero, 627
                  srai         a2, a5, 11
                  srli         t0, a7, 1
                  mulhu        t5, s10, t4
                  mulhu        s3, s9, s4
                  c.andi       a3, 31
                  c.addi       t4, -1
                  sltiu        tp, a0, -34
                  slti         s6, s6, -699
                  add          t4, a7, t5
                  sra          s0, tp, sp
                  lui          s10, 103346
                  srli         t0, s5, 14
                  mulhu        s6, t5, t5
                  or           s1, a3, a3
                  ori          a4, s11, 1309
                  sll          s2, a2, s5
                  mulh         t4, tp, t2
                  c.srai       a3, 21
                  lui          a0, 630417
                  sltu         t6, s10, a2
                  srai         s10, s7, 29
                  mul          s3, t2, ra
                  sltiu        s8, tp, 1273
                  div          t3, a1, a1
                  c.srai       a2, 15
                  c.and        s1, a1
                  slt          s10, a0, t2
                  c.and        a3, s1
                  sub          s10, t1, s11
                  c.sub        s1, a3
                  c.xor        a2, a2
                  xori         s6, s9, -1718
                  andi         s3, gp, 783
                  c.and        a4, a2
                  srli         t3, a5, 6
                  sltu         gp, s9, a2
                  auipc        s2, 295182
                  ori          t3, a3, -1483
                  c.xor        a2, s0
                  c.and        a4, s0
                  mul          t4, s0, s6
                  c.srai       a4, 21
                  sltu         t2, a3, s0
                  c.or         s0, a0
                  div          t3, s0, t3
                  sltiu        s8, s9, -77
                  slli         t6, s2, 3
                  slti         a2, a1, 889
                  sltu         t5, s2, s8
                  c.or         s1, s1
                  auipc        zero, 1007498
                  c.nop
                  c.sub        s0, a1
                  c.slli       tp, 15
                  c.lui        ra, 26
                  c.sub        s1, s0
                  c.sub        a4, a1
                  lui          s4, 343271
                  divu         t2, s4, t6
                  sll          a3, a0, s8
                  c.addi       t5, 6
                  slt          ra, s7, t3
                  or           a3, t6, t2
                  mulhu        s0, t1, s6
                  c.and        a0, a5
                  slti         s8, t1, 563
                  nop
                  c.addi       t2, 28
                  divu         s6, s8, s6
                  xori         ra, a1, 275
                  srli         gp, t2, 5
                  c.add        s10, tp
                  c.and        a0, s0
                  c.addi       a6, 18
                  rem          s0, a2, t2
                  c.srai       a4, 1
                  rem          s7, t1, s3
                  c.xor        s0, a4
                  sra          s5, a2, s4
                  slti         a7, s9, 564
                  lui          s0, 256040
                  mulh         ra, a1, s4
                  c.li         s3, 1
                  mul          a4, a5, s11
                  slti         t6, s8, 150
                  remu         s2, t0, t3
                  auipc        s2, 292932
                  c.slli       tp, 12
                  mulhu        ra, s8, gp
                  c.andi       a4, -1
                  c.nop
                  slt          t4, s7, a6
                  c.andi       s1, 2
                  c.lui        t6, 30
                  srl          t0, t5, t2
                  sub          s9, sp, t2
                  andi         ra, t2, -1579
                  mulhsu       s6, t3, a2
                  or           s10, a1, s2
                  c.and        a3, s0
                  rem          t5, s10, s11
                  c.slli       tp, 25
                  c.lui        s9, 29
                  srl          t4, tp, gp
                  sra          a0, t1, s7
                  c.andi       a4, 10
                  c.xor        a2, a4
                  sub          s5, s0, a6
                  xori         t1, s9, -1105
                  mul          t2, s9, a0
                  c.add        t6, t3
                  xor          a0, t3, s8
                  sltiu        s11, a4, 95
                  sub          t2, a2, tp
                  addi         a0, zero, 1401
                  c.add        s3, t6
                  addi         a3, t5, 679
                  rem          a4, t2, t6
                  mulhu        t5, a4, t0
                  divu         s1, s7, a2
                  srli         s0, s7, 17
                  sltu         t6, a1, s5
                  sra          s0, t1, t2
                  c.mv         a0, s11
                  slli         s10, s6, 5
                  slli         gp, s1, 27
                  srai         tp, ra, 7
                  c.lui        t1, 19
                  c.slli       ra, 29
                  auipc        gp, 247873
                  c.xor        a2, s1
                  nop
                  slli         a2, s7, 26
                  slt          gp, t1, s8
                  srli         a0, a5, 26
                  mulh         t2, s8, t0
                  div          s10, sp, zero
                  c.lui        t5, 23
                  addi         t1, s0, -123
                  c.lui        s6, 3
                  lui          t6, 579422
                  sltu         t1, t1, s4
                  c.slli       s1, 4
                  nop
                  or           s5, t2, s9
                  c.sub        a3, a0
                  srai         t2, t5, 5
                  sltiu        s7, zero, 1389
                  nop
                  c.xor        a0, a2
                  nop
                  c.addi       s2, -1
                  c.lui        s8, 12
                  sub          a6, t3, a5
                  add          s2, tp, s8
                  srli         s9, a0, 30
                  c.li         t1, 20
                  mulh         gp, s3, ra
                  auipc        t3, 592272
                  slli         t5, t1, 3
                  remu         t2, s7, a4
                  c.xor        a0, s1
                  xori         s1, s2, 102
                  srli         s1, t3, 25
                  c.lui        t6, 3
                  c.xor        s1, a3
                  c.srai       a0, 29
                  c.or         a4, s0
                  divu         s1, s3, s3
                  mulh         tp, s7, a5
                  nop
                  c.or         a3, a0
                  slli         s6, t5, 9
                  addi         t2, s3, 1858
                  xor          a0, s10, a7
                  c.addi       t5, 5
                  c.li         s11, 1
                  xori         s4, ra, -289
                  srl          s1, a4, s7
                  c.or         a0, a0
                  mulhu        t5, a0, a5
                  c.andi       a3, 11
                  xor          ra, t1, sp
                  c.sub        s1, a3
                  div          s0, s0, ra
                  srai         a7, t2, 28
                  mul          s0, a5, s10
                  xori         s8, a6, 1819
                  c.or         a4, a2
                  sll          t1, s9, s2
                  c.mv         s11, a3
                  div          a0, a5, s7
                  srai         s3, a6, 12
                  mulhu        t0, zero, a0
                  xor          a6, s7, a0
                  c.addi       s5, 16
                  c.mv         ra, t2
                  or           t2, t0, s1
                  sra          a4, t6, a0
                  c.lui        t0, 29
                  slti         s11, a4, 307
                  sub          a0, s11, s11
                  c.andi       a2, 22
                  c.add        s7, gp
                  sll          s6, t0, s9
                  srl          t2, t1, s9
                  ori          a7, t3, -1239
                  slti         zero, a4, 376
                  nop
                  srl          s7, t2, a7
                  or           s4, s4, gp
                  lui          t0, 866405
                  or           s11, s8, s4
                  c.addi       a0, -1
                  c.li         t4, 12
                  c.srli       a4, 7
                  c.srai       a2, 9
                  sra          t3, ra, s2
                  sltiu        t1, ra, -1549
                  rem          a6, s9, s1
                  srli         gp, t3, 0
                  c.add        t2, gp
                  sll          s2, s10, s11
                  slt          s7, s9, s4
                  mulhu        s6, a3, t4
                  c.nop
                  nop
                  mulhsu       s1, s5, s2
                  divu         zero, t2, s7
                  remu         t3, a6, tp
                  c.addi       s7, 30
                  srl          zero, tp, t0
                  slli         t4, t3, 1
                  slt          tp, t1, gp
                  or           s4, ra, s5
                  c.add        a3, s8
                  slli         t0, t4, 19
                  rem          s7, a6, tp
                  srai         s4, s6, 31
                  xori         a6, s10, 500
                  rem          s5, s0, t3
                  addi         gp, zero, 648
                  slti         s1, s2, 634
                  c.add        s7, s2
                  add          a7, s2, a3
                  sltu         tp, t2, s5
                  xori         s5, t1, 1633
                  divu         t2, t6, t4
                  mulhsu       s11, a3, t4
                  and          t3, s9, s0
                  and          s3, s0, s6
                  mul          s5, gp, a4
                  c.sub        a4, a4
                  sltu         a7, t0, a3
                  c.andi       a3, -1
                  sub          zero, a1, s0
                  slti         a3, s2, 107
                  srli         zero, tp, 24
                  sll          s0, s8, a3
                  c.add        t3, t6
                  c.srai       s0, 22
                  c.sub        a4, s0
                  sltiu        s1, t3, -1433
                  c.sub        s0, s0
                  sra          gp, s7, gp
                  xor          a3, t5, a1
                  mulhsu       t3, t0, a2
                  mulhsu       a0, a5, gp
                  c.mv         s5, s10
                  c.li         a7, 24
                  addi         t1, s1, -661
                  sra          s7, t3, gp
                  addi         s3, s2, 1258
                  c.lui        a3, 2
                  divu         a7, ra, s8
                  srai         s7, a1, 14
                  mulh         a4, a6, t4
                  c.add        s3, s6
                  andi         ra, a0, -433
                  addi         gp, a6, -1951
                  srl          gp, t2, s5
                  srli         a0, t3, 28
                  andi         a3, s10, 676
                  xori         a0, s1, 85
                  ori          zero, t4, -1718
                  srli         t3, s3, 0
                  andi         s10, tp, -373
                  sra          tp, s0, s4
                  slti         a3, s9, -1275
                  xori         a6, tp, 853
                  or           s4, s1, ra
                  slli         t4, a0, 22
                  c.andi       s1, 6
                  lui          ra, 605283
                  slli         a0, t2, 3
                  srai         s11, t0, 8
                  sltu         a7, t5, t1
                  c.srli       a3, 21
                  c.mv         a4, t5
                  c.xor        s1, s0
                  rem          a2, s2, s7
                  c.addi       s0, 11
                  c.and        a4, a2
                  xor          t2, s10, zero
                  slli         s7, s3, 5
                  sltu         a0, s11, s2
                  sll          s7, a1, t5
                  addi         zero, t5, -41
                  c.xor        s0, s0
                  c.sub        s0, a0
                  or           a4, tp, a5
                  sub          ra, a7, a5
                  slti         s11, s5, -1303
                  c.mv         a3, a6
                  c.or         a0, a3
                  c.mv         s10, s8
                  mulh         a4, s8, t3
                  remu         s10, t3, t3
                  c.or         a0, a3
                  srai         a7, s0, 18
                  ori          s11, a3, -1725
                  sub          t4, t5, s10
                  c.li         t5, 15
                  c.srli       a2, 3
                  c.mv         s7, a5
                  c.mv         a6, s0
                  c.or         s1, a0
                  sll          zero, s9, ra
                  c.add        s8, s11
                  c.nop
                  addi         s3, a3, -1645
                  mulhsu       s10, t4, s9
                  sltu         gp, a3, t4
                  mulhu        a7, s1, s7
                  srai         s6, tp, 12
                  mul          tp, s5, s1
                  xori         s5, s2, -1706
                  c.add        s2, s4
                  srl          s3, t3, s1
                  xori         a2, s6, -411
                  slli         t0, a0, 10
                  add          s7, s1, s6
                  divu         zero, t1, s2
                  addi         s1, s0, -1033
                  lui          a7, 571761
                  or           t6, a2, s10
                  c.srai       a0, 10
                  c.srai       a3, 31
                  slli         s11, s2, 26
                  c.addi       a6, 7
                  mulhsu       t5, t1, s9
                  srl          a7, a0, s2
                  c.srli       a2, 27
                  remu         s6, ra, s7
                  c.add        t2, t4
                  andi         s11, a2, -76
                  mulh         t6, s6, s1
                  addi         s3, sp, -1683
                  slli         tp, a0, 31
                  auipc        s2, 228138
                  c.and        a4, a4
                  div          t2, tp, s2
                  srli         t6, a7, 2
                  c.nop
                  c.sub        s1, a0
                  lui          a3, 170168
                  c.nop
                  add          s5, t5, a6
                  c.andi       a2, 19
                  srl          s10, t2, a1
                  c.li         s7, -1
                  c.li         a7, 7
                  c.and        s0, s1
                  or           s4, s8, s4
                  xor          a4, t5, s4
                  slti         t5, zero, 1329
                  c.or         s0, a4
                  slti         t0, a0, -291
                  and          t3, s3, t4
                  or           a7, s5, s10
                  c.and        s1, a4
                  c.li         gp, 3
                  sra          s10, t6, t2
                  sub          a4, t3, a4
                  nop
                  sll          a7, gp, t3
                  sub          a2, t3, a1
                  c.slli       s10, 6
                  c.srai       s0, 28
                  c.andi       a0, -1
                  c.lui        s7, 23
                  divu         zero, s5, a5
                  divu         s3, s10, t2
                  andi         ra, s8, 1040
                  slt          s10, s11, s10
                  or           gp, t3, sp
                  sra          s3, zero, s6
                  remu         a6, t1, tp
                  div          s1, t1, a1
                  c.srli       s0, 14
                  auipc        zero, 103497
                  mul          s5, t4, t6
                  and          a2, a7, tp
                  c.mv         s2, a7
                  c.xor        a4, a1
                  mulhu        s2, t2, tp
                  c.lui        s4, 6
                  sub          t1, t4, s10
                  nop
                  auipc        a0, 257184
                  c.and        a4, s0
                  mulhu        a0, t5, s6
                  sub          s6, a7, s3
                  remu         a4, a7, ra
                  c.srai       a3, 28
                  srl          s2, t6, a6
                  mulhsu       tp, t3, s9
                  slt          tp, t6, a5
                  slti         a7, ra, 1078
                  ori          gp, s3, -151
                  or           tp, s8, a1
                  nop
                  c.xor        s1, a2
                  c.andi       a4, -1
                  c.srai       a4, 23
                  c.xor        a4, s1
                  rem          t0, ra, s5
                  mulhsu       t2, s11, s8
                  slli         s11, tp, 4
                  ori          s11, sp, 633
                  mulhu        t1, ra, a0
                  andi         a2, ra, 252
                  c.or         s1, a5
                  auipc        a0, 343212
                  mulhsu       t0, s10, s5
                  auipc        t6, 965058
                  c.srai       s0, 30
                  srai         t0, a0, 3
                  srai         t0, s0, 9
                  srl          s6, a2, sp
                  slti         s4, s11, -1238
                  sltiu        t1, s8, 563
                  sra          gp, a4, t3
                  c.nop
                  mulhsu       s5, s9, t4
                  c.or         a0, a5
                  ori          s4, a6, -175
                  mulhu        s7, a6, t3
                  mulhu        t6, t6, s10
                  or           s6, a1, t5
                  slli         t4, t1, 17
                  addi         s9, s1, 1297
                  mulhu        a2, gp, s10
                  c.and        a2, a1
                  c.mv         ra, s5
                  c.srli       a3, 8
                  c.slli       s3, 14
                  or           t1, a7, s0
                  andi         s11, s2, -1462
                  slti         a6, a2, -1829
                  c.xor        s0, a4
                  srl          gp, a2, ra
                  rem          s7, t5, sp
                  srl          a0, a6, a6
                  rem          gp, ra, a5
                  c.sub        s1, a2
                  rem          s7, t3, a2
                  remu         a4, s0, zero
                  srli         zero, a7, 8
                  nop
                  addi         t0, a7, 94
                  c.li         s4, 11
                  sltu         a7, s9, s9
                  c.lui        s1, 3
                  mulhu        t2, s4, zero
                  sra          s1, zero, a4
                  slt          a6, s9, a4
                  c.sub        s0, a1
                  c.srli       a4, 26
                  c.slli       ra, 15
                  c.srai       s0, 3
                  slti         s3, gp, -867
                  srl          s3, s2, s6
                  srai         t2, t5, 19
                  sltiu        s2, t5, -1591
                  and          t2, tp, a7
                  c.or         a4, s1
                  c.lui        s2, 31
                  c.srai       s1, 20
                  c.and        a4, s1
                  or           t6, a2, a4
                  c.mv         t1, s6
                  mulh         t4, s6, ra
                  mulhu        t4, t6, gp
                  c.slli       t6, 9
                  xor          a3, zero, s5
                  slti         a2, t1, -950
                  mul          s4, a6, a0
                  srli         a7, a5, 15
                  nop
                  ori          a0, a2, -1247
                  c.li         s4, 25
                  slti         a0, a6, 62
                  c.sub        a3, a1
                  mulhu        s8, s1, t6
                  auipc        s5, 963280
                  sub          gp, s5, t0
                  c.li         a4, -1
                  xor          t6, t3, t3
                  div          t2, s0, s5
                  add          t2, a6, s2
                  c.slli       s10, 5
                  sub          s2, zero, s10
                  slt          t1, gp, s9
                  mulhu        s9, s2, s4
                  c.addi       a3, 3
                  divu         tp, t4, s9
                  xor          s2, t4, t6
                  c.add        s2, s2
                  sll          a4, a4, t3
                  slt          a7, s0, t4
                  c.addi       a4, -1
                  srl          a4, a4, gp
                  c.addi       ra, -1
                  nop
                  c.addi       s3, 5
                  sll          s9, t6, s5
                  c.lui        gp, 23
                  ori          t6, t1, -1580
                  nop
                  c.slli       s0, 18
                  c.or         s0, a3
                  add          a2, s0, a3
                  add          a6, t4, t1
                  c.xor        a3, a4
                  sll          s4, a7, a4
                  nop
                  divu         s4, s1, zero
                  sll          s0, ra, t1
                  srai         gp, zero, 22
                  sub          s9, a5, a3
                  srai         t3, t1, 8
                  or           ra, ra, t1
                  xor          zero, a1, s2
                  sll          s9, a5, s10
                  lui          a3, 917227
                  lui          gp, 141641
                  xor          a6, s2, a1
                  mulh         s2, s6, zero
                  nop
                  auipc        s10, 507980
                  c.slli       s10, 2
                  c.andi       s0, -1
                  ori          s11, s9, -1000
                  xori         gp, a4, 398
                  and          ra, s4, s3
                  c.srai       a3, 13
                  c.nop
                  c.mv         ra, s2
                  ori          s7, t2, 1676
                  srai         s8, t3, 15
                  sltiu        a0, a1, -1323
                  sra          s11, a0, s8
                  nop
                  sltiu        t6, s0, 1416
                  xori         s1, s8, -1033
                  mul          t2, s6, s5
                  sltu         zero, ra, s2
                  sll          s8, a5, t0
                  c.srai       s1, 24
                  xor          t5, zero, s10
                  xori         tp, s2, 1680
                  mulhu        t6, t5, a4
                  mulhsu       s11, a6, tp
                  remu         s7, a1, a2
                  mul          tp, sp, a6
                  mulh         t1, t5, a3
                  c.srai       a4, 1
                  sltiu        gp, t1, -588
                  xori         a7, s11, -828
                  or           s0, s7, s9
                  mulh         zero, t6, a7
                  c.sub        a4, a1
                  c.srai       a3, 3
                  div          tp, a0, t2
                  sltiu        a4, s8, -617
                  xori         s10, a5, 1563
                  divu         s4, a3, t0
                  xori         t1, t3, -714
                  mulhsu       a4, t1, a2
                  c.sub        s1, s1
                  sltiu        a6, s11, -918
                  auipc        t6, 93579
                  mulhsu       a0, a5, t5
                  sll          s9, s3, s9
                  c.slli       s3, 5
                  srli         s7, t2, 25
                  nop
                  divu         zero, ra, s0
                  remu         a4, t2, a2
                  sltu         s3, s1, s6
                  c.or         a2, a2
                  div          a6, a5, t3
                  c.srai       s0, 13
                  sltiu        t0, sp, -1570
                  rem          t1, sp, a5
                  c.srli       s1, 13
                  nop
                  divu         tp, a7, a5
                  c.nop
                  andi         s6, a3, 1988
                  slti         s7, t6, -505
                  divu         a0, sp, s1
                  addi         a2, sp, 1008
                  sltu         tp, zero, a5
                  xori         a6, s10, 710
                  c.srli       s0, 19
                  div          a4, a5, s2
                  slti         t0, s6, -497
                  or           a2, t0, t3
                  mulhsu       a4, tp, tp
                  and          s2, t4, t6
                  sltu         a2, t1, s0
                  div          s10, s2, s4
                  srai         t6, sp, 6
                  c.or         a0, s1
                  auipc        a4, 768950
                  c.andi       s1, -1
                  add          a0, t4, s10
                  div          s4, s8, s10
                  c.nop
                  ori          s4, s8, 1824
                  ori          a7, t2, -263
                  xor          t3, gp, tp
                  sub          t6, s6, a4
                  xor          t3, s9, t5
                  c.nop
                  c.addi       s6, -1
                  sub          s9, sp, s10
                  rem          gp, t2, t2
                  c.add        ra, s6
                  sub          t6, s11, s9
                  divu         a0, s4, ra
                  c.slli       s5, 25
                  c.xor        s0, a3
                  c.li         t5, -1
                  slli         gp, gp, 4
                  lui          a0, 350931
                  sltu         t5, ra, tp
                  xor          s6, s1, a7
                  mul          s11, ra, s9
                  slt          s1, s9, s1
                  c.or         a3, a3
                  divu         s8, a1, s9
                  slti         s10, s6, -1501
                  auipc        t2, 772239
                  c.and        s1, a3
                  c.slli       a2, 17
                  lui          tp, 215614
                  sltu         t6, s10, a7
                  andi         s10, s7, -1558
                  andi         tp, tp, 455
                  lui          t5, 339164
                  divu         a2, a0, a1
                  c.srli       a2, 11
                  c.andi       s1, 20
                  srl          a4, s11, t4
                  sub          s9, t4, s8
                  c.or         a2, a5
                  c.lui        t5, 14
                  sltiu        t4, t4, 1014
                  andi         s6, gp, 1910
                  c.slli       t5, 16
                  c.or         s0, a0
                  mul          t5, a7, ra
                  c.mv         s1, s0
                  divu         a0, s11, a7
                  c.li         s0, -1
                  add          s7, s9, a6
                  xor          s2, t5, gp
                  c.sub        s1, a3
                  sltu         s11, a6, a6
                  c.xor        a4, a0
                  mulhu        zero, ra, t6
                  div          t4, s4, s0
                  mulhu        t3, t0, t6
                  sll          t1, tp, a7
                  xor          t1, tp, s7
                  srli         a7, a7, 26
                  andi         t1, t4, -1984
                  and          s3, a3, s5
                  xor          t4, t1, t3
                  lui          a7, 95282
                  div          s9, s5, s10
                  sub          s11, s1, s5
                  divu         gp, t6, s3
                  addi         t5, a1, 1882
                  andi         s2, a4, -668
                  slli         s3, t0, 13
                  sltu         t6, s8, a4
                  remu         a0, ra, a6
                  auipc        a3, 893480
                  srl          ra, s5, t3
                  xori         zero, s10, -1812
                  c.slli       t4, 21
                  c.add        a0, gp
                  c.srli       a2, 30
                  sll          gp, t1, s10
                  srl          t0, s6, s3
                  sltu         a3, zero, gp
                  auipc        a4, 441260
                  or           a2, a4, a5
                  c.andi       a2, -1
                  rem          a0, a6, t0
                  c.nop
                  c.add        s9, s7
                  c.lui        tp, 26
                  mulhu        a6, s4, s10
                  rem          t6, tp, tp
                  c.or         a2, a5
                  and          s7, tp, a4
                  nop
                  ori          s9, s6, 525
                  c.and        a2, a3
                  c.srli       a2, 22
                  c.srli       a2, 10
                  srl          s3, gp, s11
                  sltu         s4, s8, sp
                  mulhu        t2, a0, sp
                  addi         t3, s2, -249
                  remu         a0, t2, ra
                  c.sub        a4, a1
                  remu         s9, a4, s0
                  c.and        a3, a5
                  nop
                  rem          s3, t1, zero
                  mulh         s5, s8, a5
                  c.slli       s5, 20
                  auipc        t3, 353574
                  or           s9, sp, t2
                  c.lui        t4, 12
                  auipc        s2, 249226
                  sra          s4, s0, t1
                  mul          s11, ra, s3
                  xor          a0, t1, s7
                  c.mv         tp, s1
                  andi         tp, s0, 1631
                  mulhu        s9, s11, t4
                  divu         a3, t2, a3
                  or           ra, a1, tp
                  sll          gp, s9, a4
                  c.and        s0, s1
                  slli         t1, s6, 29
                  c.slli       a2, 15
                  c.or         a0, a5
                  srli         ra, a0, 15
                  c.mv         s6, s2
                  div          a3, s3, s10
                  mulhu        t3, t6, a0
                  nop
                  c.add        t6, s3
                  c.addi       t5, -1
                  c.mv         s5, a7
                  nop
                  c.or         s1, s1
                  mulhu        s3, a6, s8
                  sltiu        t5, t0, -1113
                  mul          ra, s2, t6
                  div          s8, zero, a7
                  andi         ra, s10, -1572
                  srl          zero, a6, s4
                  remu         a2, s6, zero
                  lui          a0, 907154
                  and          a0, t0, s1
                  c.lui        a6, 14
                  and          t2, a4, t5
                  sub          s0, s1, s5
                  c.addi       tp, -1
                  c.srli       s0, 6
                  srl          zero, s7, a0
                  lui          s3, 360369
                  add          s1, a2, t0
                  c.srai       s1, 22
                  c.li         t2, -1
                  nop
                  mul          a4, gp, a1
                  c.li         a3, -1
                  xori         s1, t5, 27
                  remu         t0, a5, s3
                  c.andi       a3, 20
                  addi         t0, s7, 871
                  srl          s10, ra, gp
                  slt          s8, zero, a0
                  c.or         a2, a1
                  c.and        a3, s0
                  c.lui        s7, 7
                  c.and        s0, a3
                  c.xor        a3, a1
                  xor          s4, s4, s9
                  sra          s11, s1, s9
                  c.lui        s5, 27
                  srli         t0, s1, 20
                  c.mv         s11, sp
                  auipc        a6, 432642
                  mulhu        s11, t6, t5
                  sltu         ra, s11, s8
                  c.lui        s2, 13
                  lui          s5, 417963
                  c.srai       s1, 25
                  c.nop
                  c.add        s10, s2
                  andi         gp, sp, -1134
                  nop
                  c.srai       a3, 19
                  mulhu        s0, a6, s5
                  slti         s8, s6, 1117
                  or           s10, s9, s0
                  c.sub        a0, a4
                  c.li         gp, -1
                  nop
                  slli         a4, tp, 31
                  mulh         t4, zero, s11
                  srli         s0, a3, 9
                  c.mv         s11, a6
                  c.add        s11, s6
                  c.addi       s3, -1
                  c.or         a2, s1
                  lui          s4, 671089
                  c.lui        a2, 7
                  remu         ra, sp, a4
                  sra          t3, t2, ra
                  slli         a2, a4, 5
                  srai         t4, zero, 4
                  c.mv         s3, s0
                  srli         t3, a5, 16
                  div          s5, s7, t2
                  auipc        t3, 856427
                  slti         t3, s8, 960
                  c.srai       a2, 13
                  c.add        t3, t3
                  sltu         t2, s2, a5
                  lui          ra, 615764
                  add          gp, s9, t6
                  srai         t0, ra, 12
                  ori          a2, ra, -1203
                  sll          s9, a5, sp
                  c.slli       t5, 13
                  c.addi       s10, 24
                  sltu         s9, a1, a1
                  sltiu        t0, s6, -1921
                  sub          a7, zero, s6
                  c.lui        s10, 21
                  c.mv         s11, s5
                  mulhsu       t3, t5, s9
                  mul          ra, ra, s7
                  ori          t3, a1, -1028
                  slli         s10, gp, 12
                  c.nop
                  andi         a3, a7, 1518
                  ori          s4, s11, -1948
                  slli         s9, a5, 26
                  mul          s2, t3, s4
                  mulhsu       a3, a4, s4
                  c.or         s0, a4
                  mulhsu       a0, zero, s9
                  slt          s2, s5, a5
                  srli         t4, a1, 4
                  xori         zero, zero, -106
                  c.addi       s1, -1
                  c.or         a0, a1
                  rem          s7, s1, a4
                  mulhu        t3, a2, s0
                  divu         s8, a2, s11
                  srai         t3, t3, 11
                  sltiu        a7, s2, -721
                  c.srli       a0, 25
                  div          t4, t4, s4
                  xor          s10, s8, t0
                  lui          s1, 489194
                  and          t5, s2, s3
                  andi         a4, s4, 514
                  c.lui        gp, 26
                  srli         tp, a3, 23
                  lui          gp, 997770
                  srai         s6, t2, 6
                  or           a7, t5, ra
                  rem          zero, tp, s1
                  c.slli       t6, 5
                  ori          t5, a2, -240
                  c.srli       a3, 10
                  addi         a3, s6, 95
                  nop
                  divu         t4, t5, zero
                  lui          s7, 988238
                  addi         tp, s7, -1961
                  remu         s0, sp, s11
                  c.or         a2, a2
                  sra          t5, s9, s0
                  or           s11, tp, a0
                  srai         s4, s3, 18
                  c.srli       a4, 20
                  xor          s3, a6, t4
                  srli         a6, a6, 21
                  remu         s9, s5, s5
                  c.andi       a3, 3
                  or           t6, s9, tp
                  sltiu        t0, s5, 1342
                  mul          gp, s11, s2
                  xor          s10, s1, t6
                  sltiu        t0, s3, 977
                  mul          a4, a5, s6
                  andi         s10, a0, 17
                  divu         gp, zero, t4
                  c.slli       t3, 28
                  sltu         t2, a4, a2
                  c.add        s8, a3
                  mulhsu       t1, a2, gp
                  and          s11, s6, s4
                  c.add        s0, s2
                  addi         s5, s6, 1552
                  c.lui        s0, 30
                  ori          s4, a0, 2022
                  ori          tp, gp, 1895
                  c.and        a3, a2
                  mulh         t1, a5, zero
                  mulhsu       s2, s11, t0
                  rem          t6, s2, s5
                  sltiu        s0, s11, 1459
                  mulhsu       s11, s10, t4
                  andi         ra, a4, -928
                  mulhu        s4, s7, a7
                  xor          s9, t2, s4
                  slt          zero, a5, s4
                  or           a7, s2, t4
                  c.slli       t5, 14
                  slli         gp, tp, 26
                  divu         s3, t6, sp
                  xori         gp, a7, 922
                  addi         ra, t4, 904
                  nop
                  mulhu        s2, tp, s2
                  slti         s1, t1, 1259
                  srli         a4, a2, 30
                  or           s6, a0, s10
                  mulhu        a4, s7, s5
                  c.srli       a4, 29
                  slti         gp, s2, -1618
                  c.srai       a0, 21
                  divu         s3, ra, s3
                  c.li         tp, -1
                  sra          ra, t0, s4
                  nop
                  srl          s6, s7, tp
                  c.nop
                  rem          a6, s1, t3
                  divu         tp, t3, a7
                  xor          a3, s11, tp
                  xor          s2, a0, a2
                  remu         t0, t6, tp
                  c.xor        a4, a1
                  sltu         s8, s6, t1
                  c.srli       a4, 29
                  rem          t1, s11, s8
                  xor          a0, t5, a6
                  slt          s3, zero, ra
                  c.srli       a3, 4
                  sltiu        s5, t1, 1433
                  c.andi       s0, -1
                  srl          a4, sp, a4
                  c.and        s0, a0
                  add          s1, t6, a5
                  sltu         t0, a2, a1
                  rem          a3, a3, s1
                  c.nop
                  c.slli       s9, 11
                  mul          s5, a1, t2
                  c.li         t4, 28
                  c.li         t6, -1
                  lui          s11, 886228
                  c.li         gp, -1
                  c.add        t1, t1
                  srli         s5, s1, 27
                  slti         t0, s2, 1737
                  c.and        a3, a0
                  mulhu        s10, a3, a7
                  or           s11, s1, s7
                  sltiu        s5, s1, -1937
                  addi         tp, s1, 1003
                  c.or         s1, s1
                  srl          s2, a6, s3
                  rem          s11, a4, s2
                  addi         t1, s8, -1319
                  srai         s2, gp, 26
                  mulhsu       zero, sp, t2
                  c.andi       a2, -1
                  c.xor        a4, a4
                  slti         ra, tp, 884
                  c.li         a2, -1
                  sub          s5, t4, t1
                  rem          s9, s6, s11
                  xor          s7, s11, tp
                  c.srai       a2, 4
                  divu         s11, s3, s2
                  or           s8, a2, s5
                  c.mv         a6, s2
                  c.lui        a2, 14
                  c.addi       s11, 18
                  and          s10, s3, t6
                  or           a0, s9, s2
                  c.andi       a4, -1
                  lui          s7, 898763
                  c.or         a4, a5
                  srai         a4, t0, 8
                  c.li         t2, 16
                  mulhsu       s1, s9, t6
                  c.srli       s0, 23
                  and          a2, a5, s4
                  c.add        t3, a0
                  remu         s9, t1, s11
                  sub          a6, a0, s0
                  sra          a0, s6, a3
                  c.li         a3, 20
                  c.srai       a0, 18
                  andi         zero, t4, -718
                  slt          s3, s11, a7
                  addi         s9, a7, 322
                  srl          t2, ra, tp
                  c.slli       s6, 14
                  c.srli       s1, 26
                  ori          a0, zero, 1163
                  or           s5, a4, tp
                  srl          s4, t2, t0
                  xor          t4, t2, a4
                  sltiu        s3, t0, 425
                  sltiu        t6, zero, -131
                  mulhu        t6, t2, t4
                  rem          a0, sp, s6
                  xor          a3, s0, a0
                  mulhsu       s9, zero, sp
                  c.srli       s0, 3
                  c.andi       a4, -1
                  divu         zero, a3, a1
                  andi         t0, a0, -1587
                  sub          t6, s10, a5
                  auipc        t4, 347569
                  nop
                  c.lui        s10, 10
                  c.li         s7, 8
                  addi         zero, s11, 1416
                  c.sub        a0, s1
                  c.add        s8, s6
                  c.andi       a4, -1
                  c.nop
                  slli         t5, s7, 20
                  mulh         s6, a6, t2
                  c.srli       a4, 6
                  c.mv         a2, s11
                  c.nop
                  sub          s3, sp, a3
                  slt          s8, a2, a4
                  srli         s0, tp, 2
                  sltu         t3, a1, ra
                  c.srli       a0, 6
                  andi         ra, s9, 1511
                  c.xor        a3, a2
                  rem          s3, s1, ra
                  ori          a0, s6, -689
                  c.nop
                  c.sub        s1, a5
                  add          s6, t3, s10
                  mul          t5, a0, s7
                  c.andi       a0, -1
                  slt          t4, tp, s6
                  sltiu        s0, s0, 747
                  lui          tp, 835351
                  slti         tp, a7, -849
                  sll          s1, t6, t4
                  nop
                  sra          a6, a5, ra
                  srai         t4, s7, 28
                  c.addi       gp, -1
                  or           t4, a3, a3
                  c.li         a4, -1
                  c.mv         s11, a6
                  srl          s10, a7, s0
                  c.add        s0, a6
                  c.nop
                  mulh         s8, sp, a6
                  c.slli       t6, 5
                  srai         s9, s1, 16
                  c.and        a3, a5
                  c.li         gp, 9
                  c.add        s8, s4
                  mulh         zero, a6, t2
                  c.sub        s1, a2
                  sltu         t0, s10, s2
                  c.or         s1, s1
                  srai         s2, ra, 27
                  mulhsu       s10, s11, a1
                  c.srai       a4, 31
                  or           s1, s0, a0
                  sub          t4, gp, s5
                  c.srli       s1, 14
                  mul          s7, t1, a7
                  andi         a0, s2, 1792
                  or           t0, a1, a7
                  c.srai       a0, 30
                  c.and        a3, a2
                  c.srai       a3, 2
                  div          s4, s4, t0
                  srl          s11, gp, a6
                  div          s5, s7, tp
                  auipc        a3, 252664
                  div          a6, s10, t6
                  c.and        a0, s1
                  sra          t1, ra, s9
                  addi         s10, s9, 1717
                  sra          a4, t3, s9
                  srli         t6, s8, 14
                  or           s3, a2, t6
                  mulhu        t4, sp, t2
                  mul          t5, t4, s10
                  andi         s4, t5, -1717
                  c.slli       t6, 13
                  nop
                  c.srai       s1, 11
                  sra          s1, s11, s11
                  xor          ra, t6, t0
                  srli         a2, a3, 7
                  c.and        s0, s0
                  c.and        a3, a3
                  c.or         s1, a1
                  mul          s2, t2, ra
                  c.xor        a2, s0
                  sra          t5, zero, s7
                  c.nop
                  mulh         zero, s7, s1
                  sltiu        s4, a1, -1181
                  sra          t3, t4, tp
                  slt          s5, zero, s3
                  mul          s0, gp, t4
                  slti         s3, a4, -947
                  sra          zero, a5, t6
                  c.or         a0, a4
                  slli         s5, s9, 3
                  add          a0, sp, a7
                  c.andi       s1, -1
                  mulhsu       gp, t0, a7
                  c.lui        a2, 1
                  or           a4, s4, s8
                  and          t5, zero, s5
                  srli         s0, t0, 24
                  addi         a6, a4, -1295
                  mulh         t1, s11, s1
                  div          s3, a4, gp
                  sltu         s6, s5, s4
                  srai         t5, t2, 16
                  rem          a2, s11, s7
                  c.sub        a4, a0
                  ori          s3, s9, 1456
                  slti         s6, t1, -1513
                  xor          a6, a1, s10
                  srl          s8, t5, s8
                  sra          s6, t6, s1
                  mulhu        s0, s6, s3
                  add          s10, s4, gp
                  c.andi       a3, -1
                  sll          a7, zero, s10
                  xori         ra, s6, 1939
                  c.or         a3, a2
                  rem          zero, a2, a3
                  add          a3, s11, t6
                  srl          s2, s5, zero
                  divu         t4, s10, a3
                  nop
                  c.sub        a3, s1
                  mul          s6, t5, a6
                  srai         t5, t0, 19
                  c.nop
                  c.slli       tp, 7
                  c.sub        s1, s1
                  c.slli       t3, 13
                  c.xor        a4, a4
                  lui          ra, 718567
                  c.xor        a3, a2
                  c.li         s10, -1
                  c.li         s2, -1
                  sll          s5, t4, s2
                  c.sub        a3, a1
                  divu         ra, a5, a7
                  nop
                  xori         ra, t6, 1265
                  c.and        a3, a5
                  addi         t0, s8, 182
                  c.andi       s1, -1
                  mulhu        a7, s1, a4
                  mulhsu       a7, s0, s0
                  slti         t1, a5, -1864
                  c.mv         s11, t2
                  sltiu        a2, s5, -419
                  sltiu        s3, ra, -763
                  c.addi       t2, 22
                  and          s6, t5, s9
                  addi         t1, a7, 811
                  nop
                  c.xor        s1, s1
                  sltu         s9, t3, s4
                  c.andi       a3, -1
                  c.li         s11, 29
                  c.lui        t1, 4
                  div          s4, a0, zero
                  sltu         tp, s10, t2
                  addi         t1, s7, -961
                  srl          a0, s10, sp
                  xor          s2, t6, tp
                  mulhu        s11, s5, s0
                  nop
                  xor          s5, zero, s0
                  xori         a4, tp, -846
                  c.add        a6, a1
                  mulhsu       a7, t1, s6
                  mulhsu       s7, t0, s3
                  c.srai       s1, 3
                  or           a6, s3, zero
                  or           a4, t0, a1
                  c.andi       a2, 5
                  divu         s2, s4, ra
                  or           ra, sp, t2
                  c.xor        a0, a5
                  c.srli       a4, 13
                  nop
                  srl          a4, s6, a5
                  xori         t1, s3, 360
                  c.or         s1, s0
                  c.mv         t3, t3
                  c.srai       s1, 11
                  auipc        a6, 183137
                  nop
                  c.nop
                  sra          ra, s3, ra
                  slt          a3, t3, s4
                  sra          tp, s1, a6
                  sra          s4, a2, a6
                  lui          s1, 1002909
                  mulh         s6, s0, t5
                  auipc        s11, 637541
                  andi         s9, a7, 1726
                  c.mv         s11, t5
                  c.and        a0, s1
                  c.sub        a4, a0
                  sra          t5, t0, s9
                  slti         a4, t4, 1929
                  mulhsu       s4, s3, a6
                  slti         a7, s11, 567
                  slt          t0, s3, t4
                  c.srai       s1, 26
                  c.add        tp, t0
                  sltiu        s2, a3, 283
                  c.slli       s6, 10
                  lui          s6, 207807
                  mulhsu       s3, s2, sp
                  mulhsu       s3, sp, s9
                  slt          s0, a3, a4
                  c.lui        s6, 24
                  sub          t3, t5, t6
                  srl          a0, s11, a5
                  c.andi       a4, -1
                  sra          t6, t5, a0
                  slt          s3, t3, s5
                  mulhsu       s11, t4, t5
                  c.lui        a3, 14
                  remu         t6, a2, a3
                  c.xor        s1, a0
                  remu         tp, t6, s0
                  sltiu        a0, a1, -1636
                  c.srai       a0, 4
                  c.addi       t1, 7
                  mulh         s2, zero, sp
                  c.sub        s1, a4
                  slli         a2, t0, 17
                  c.sub        a0, a3
                  c.lui        s4, 5
                  c.srli       a4, 24
                  andi         t6, t6, -1085
                  c.srai       s1, 16
                  c.nop
                  sll          a0, a7, ra
                  sltiu        t3, a6, 1477
                  c.mv         t6, a7
                  lui          a0, 8999
                  mulh         s10, t6, t5
                  sltu         tp, a1, s0
                  sra          s9, ra, a2
                  lui          s5, 403567
                  ori          t3, a1, -217
                  addi         a6, a1, -206
                  c.slli       a0, 10
                  c.sub        a4, a4
                  c.srli       a4, 13
                  or           a0, tp, t3
                  sltiu        s10, s6, 666
                  sll          zero, s7, s10
                  remu         s8, s5, s8
                  ori          t6, s11, 1795
                  divu         s4, s3, s6
                  slti         s8, a2, -749
                  xor          t6, tp, a6
                  rem          s0, s7, a1
                  sll          s6, a6, s10
                  and          t0, ra, a4
                  c.li         tp, 31
                  lui          s0, 539354
                  xor          t1, zero, s3
                  c.srai       a3, 7
                  sltiu        s3, s3, -1697
                  srli         s0, s5, 21
                  sltiu        s7, a7, -1335
                  rem          s5, a6, gp
                  srai         tp, s9, 30
                  mulhu        a3, t4, a0
                  div          a0, a2, a1
                  or           t1, s3, s6
                  c.srai       a0, 19
                  c.slli       s0, 9
                  remu         t1, s4, zero
                  slti         a0, s6, 1271
                  srl          t1, s7, s10
                  c.li         a0, -1
                  mulhsu       s1, t2, a2
                  srl          ra, s7, ra
                  add          gp, s10, s0
                  divu         t4, s10, s2
                  c.li         s7, 7
                  c.srli       a4, 9
                  slt          t4, a2, ra
                  srai         s8, zero, 2
                  c.nop
                  srl          a6, a2, ra
                  ori          s11, a0, 1558
                  lui          ra, 474084
                  sltu         s5, s1, a1
                  c.sub        a0, s0
                  c.and        a4, a2
                  c.slli       t4, 5
                  rem          a0, a4, s2
                  srli         s8, a3, 7
                  xor          t1, s9, ra
                  nop
                  slli         s1, t6, 23
                  c.li         s2, 9
                  c.mv         s5, a4
                  sltu         zero, s6, sp
                  or           zero, s10, t1
                  c.add        s10, a3
                  mul          a2, s0, a3
                  sub          a3, t1, s3
                  c.slli       s2, 17
                  xori         zero, t0, 826
                  mulhsu       s6, s4, s2
                  c.slli       a4, 4
                  sra          a7, s8, gp
                  c.xor        a0, a0
                  or           t6, a4, gp
                  c.andi       a3, 28
                  c.or         a0, s1
                  andi         t6, s7, -1712
                  c.andi       s1, -1
                  mulhsu       gp, t4, t5
                  c.andi       a3, 17
                  srai         ra, s6, 8
                  rem          gp, s6, a4
                  sub          s7, ra, s6
                  andi         a3, a1, -1040
                  or           t5, t2, zero
                  lui          t1, 882404
                  c.and        a0, a0
                  srai         gp, t1, 6
                  xori         tp, t1, -1734
                  mulhsu       t0, ra, a3
                  c.nop
                  c.mv         tp, s7
                  remu         t0, a0, a5
                  c.andi       a3, -1
                  div          tp, a0, a7
                  c.add        t4, s9
                  srl          t3, a7, a2
                  slt          s11, t3, s0
                  sltu         a3, t1, s5
                  addi         t4, s2, -1465
                  srli         t6, s1, 5
                  c.sub        a2, s0
                  c.lui        t2, 4
                  srai         s3, t5, 19
                  c.or         s0, a1
                  mulhu        t5, s2, s8
                  srli         t2, t5, 11
                  remu         t6, zero, a4
                  ori          s7, a0, -1540
                  sltu         gp, s0, s1
                  sra          t3, t0, s10
                  c.nop
                  c.xor        a0, s1
                  add          s5, t5, s8
                  remu         s1, t1, s9
                  mul          tp, t6, s10
                  div          s2, a7, a6
                  lui          s1, 544913
                  c.lui        gp, 17
                  c.sub        s0, a5
                  ori          s2, s10, 555
                  divu         s2, s6, s7
                  sltu         s10, a2, s8
                  slti         s4, a6, -1193
                  slti         a4, gp, 144
                  andi         a0, t4, 230
                  sll          s2, tp, s7
                  c.srai       a3, 21
                  srli         t5, s0, 8
                  add          s7, a4, a0
                  c.srai       a2, 17
                  c.li         s8, 4
                  remu         s3, sp, s2
                  or           gp, s2, a1
                  divu         s4, tp, a0
                  c.slli       s3, 9
                  sltiu        s5, s3, 1337
                  sub          s6, t0, t3
                  c.srli       a3, 11
                  c.srli       s1, 27
                  c.slli       tp, 24
                  c.addi       a0, -1
                  sltu         t3, s3, s4
                  c.nop
                  srli         t3, tp, 10
                  mulh         t3, a2, a2
                  srli         s11, s9, 12
                  srl          t4, s11, t0
                  remu         s9, tp, t1
                  addi         s11, s3, -2017
                  sra          t2, s0, tp
                  srl          ra, a5, a2
                  c.and        a0, a1
                  srai         gp, a7, 7
                  ori          s1, a6, -1259
                  remu         gp, sp, s10
                  andi         zero, a6, 334
                  mulhu        tp, s5, t6
                  c.sub        s0, a2
                  mulh         s6, s4, t5
                  c.or         a3, a4
                  mulhsu       s8, t1, s0
                  divu         t6, sp, s1
                  auipc        gp, 548250
                  c.or         a0, a2
                  div          ra, a0, gp
                  addi         s1, s11, 1717
                  c.xor        s1, a1
                  xori         zero, t6, -1958
                  div          s4, a4, s3
                  slti         t6, a7, -408
                  mulh         t0, t1, t2
                  c.slli       s4, 22
                  c.slli       ra, 2
                  sll          ra, ra, a4
                  c.add        s4, a6
                  divu         s1, t1, tp
                  c.mv         s2, t4
                  c.srai       a4, 5
                  c.mv         gp, s2
                  or           s1, a6, s5
                  c.mv         s7, gp
                  lui          gp, 1029113
                  slli         zero, zero, 9
                  c.nop
                  sll          s5, a1, s8
                  srl          s4, a4, a5
                  c.andi       a4, -1
                  c.addi       s9, 16
                  c.nop
                  c.addi       t6, -1
                  xor          a7, s0, s3
                  c.xor        a0, a5
                  mulhu        s5, s6, tp
                  c.nop
                  mulhsu       a0, a1, s8
                  xor          s9, t2, a1
                  srai         s7, s9, 13
                  slti         zero, a6, -1596
                  andi         tp, t4, -373
                  lui          s3, 229815
                  andi         s8, s11, 296
                  ori          s4, t5, -1867
                  xori         t0, a7, -1181
                  c.slli       t1, 15
                  c.sub        a2, a5
                  c.or         s1, a5
                  nop
                  slt          gp, a3, t6
                  andi         s7, zero, -1739
                  divu         a0, s9, tp
                  c.nop
                  mulhu        s10, ra, s8
                  mul          t1, a4, t4
                  srl          s3, a2, tp
                  lui          s9, 170489
                  xor          a4, s10, a7
                  c.andi       a4, -1
                  c.andi       s1, -1
                  srai         tp, s9, 31
                  c.xor        a2, a4
                  mulhsu       a0, s0, t4
                  c.srli       s1, 30
                  andi         ra, s8, -628
                  sra          a0, s8, t3
                  div          a3, a4, a6
                  ori          t1, t6, 92
                  srli         t3, t5, 2
                  c.sub        a0, a3
                  sltiu        t4, t0, 1397
                  or           t6, s2, t5
                  sra          ra, tp, sp
                  ori          s3, s5, -1735
                  rem          t3, s6, s3
                  c.xor        s0, s0
                  andi         s7, s5, -1261
                  c.and        a0, s0
                  c.lui        tp, 24
                  c.slli       s5, 21
                  c.srli       s1, 4
                  mulh         a2, s9, a6
                  or           s4, a6, s6
                  c.mv         a0, ra
                  slt          t4, a1, a4
                  or           t3, s11, a7
                  remu         t2, t2, a4
                  c.or         a3, a3
                  mulh         ra, a5, t6
                  slli         zero, a6, 14
                  nop
                  mulhsu       s6, s11, sp
                  xor          a6, s0, tp
                  mulh         gp, a3, a0
                  rem          t1, s2, s8
                  c.slli       gp, 24
                  addi         t2, s9, -571
                  c.sub        a3, s0
                  xor          s0, s5, s10
                  mulh         a7, s7, a7
                  c.xor        a4, a3
                  nop
                  nop
                  sra          s2, gp, s1
                  remu         t3, a4, s1
                  ori          s2, s0, -753
                  c.andi       a3, -1
                  mulh         a4, zero, zero
                  sltiu        s1, a2, 1402
                  addi         s9, t6, 436
                  andi         a6, gp, -1436
                  sltiu        a7, t5, 1812
                  c.srai       a0, 1
                  c.nop
                  auipc        tp, 1036908
                  sra          a3, a7, ra
                  sra          s0, sp, tp
                  lui          s3, 110340
                  div          t0, a7, zero
                  nop
                  c.srai       a3, 21
                  lui          t3, 234798
                  c.andi       a4, 11
                  sltu         s4, sp, s11
                  mulh         s7, a3, s10
                  sll          t6, s2, a2
                  c.add        s2, gp
                  c.srai       a0, 20
                  c.mv         t3, a5
                  xor          a0, t5, a1
                  c.srli       s0, 27
                  sltu         s11, s10, a4
                  addi         s6, a5, 212
                  sub          s3, s5, a4
                  c.mv         s9, sp
                  c.srai       a4, 29
                  sra          t3, s6, sp
                  c.srai       a0, 22
                  slti         t6, zero, -180
                  c.mv         t5, a3
                  c.lui        a0, 18
                  and          ra, s0, a6
                  or           s2, gp, s10
                  sll          t2, zero, t3
                  addi         tp, s11, 877
                  rem          t4, s5, s9
                  c.mv         s10, a3
                  mul          t3, t1, s1
                  slt          t1, t4, a6
                  andi         s8, t6, -600
                  lui          s8, 417191
                  c.add        t4, a3
                  c.xor        a0, a2
                  c.slli       s9, 28
                  ori          a0, a0, 589
                  div          t2, t1, s6
                  sub          s6, a0, a3
                  sll          t3, a1, a7
                  mulhsu       s6, t1, gp
                  c.andi       s1, 29
                  remu         s2, a1, s6
                  sra          t4, a1, sp
                  mul          a4, s9, s2
                  srai         s3, s9, 5
                  mulh         s10, a6, tp
                  add          s9, a2, t1
                  mulhu        s11, t2, a4
                  c.slli       t1, 3
                  c.lui        s11, 20
                  remu         s1, a3, s10
                  c.andi       a4, -1
                  c.xor        a0, s1
                  mulh         t6, s7, s3
                  srai         t5, s0, 20
                  sltiu        t1, a0, -1848
                  ori          a2, s4, -459
                  c.lui        t4, 1
                  slli         s7, s10, 13
                  or           s3, a5, s1
                  rem          s1, a1, s10
                  nop
                  nop
                  xor          s10, tp, a2
                  mulhu        s5, a0, sp
                  c.xor        a3, a4
                  mul          ra, gp, s1
                  nop
                  addi         tp, a5, -499
                  srai         s11, s8, 0
                  slti         zero, t6, -396
                  srl          t0, ra, s6
                  slti         s9, a7, 842
                  sltu         s0, s5, s6
                  auipc        t2, 517051
                  ori          t2, s1, 263
                  c.mv         a6, t1
                  slti         s10, s8, 1887
                  or           t2, s5, s10
                  lui          t0, 463024
                  xor          ra, t6, t0
                  c.xor        a0, a5
                  and          t0, s10, a2
                  srli         t6, s10, 16
                  sltu         a0, t6, t3
                  sltiu        zero, tp, -409
                  sltu         s9, a6, a7
                  andi         t3, s3, 592
                  c.srli       a2, 16
                  c.li         t5, 1
                  c.lui        s5, 25
                  mulhu        s1, t2, s2
                  sltiu        t6, t3, -387
                  c.nop
                  add          s5, s4, s3
                  slti         t0, a3, 988
                  slt          a0, s0, a7
                  slli         t6, s0, 31
                  lui          a3, 143584
                  sltiu        s5, s0, 1666
                  and          s4, t3, a4
                  c.add        s11, s9
                  sub          t4, s8, s0
                  andi         s7, s6, -617
                  slti         tp, a1, -1656
                  c.or         a3, a1
                  divu         s0, s0, s9
                  andi         s6, s8, -1560
                  auipc        s9, 957444
                  c.slli       s11, 22
                  mulhu        s6, t3, a1
                  mulh         s9, t6, a1
                  c.xor        a3, a4
                  c.mv         a0, sp
                  sll          s3, s11, a5
                  xori         zero, s9, -152
                  c.andi       a3, -1
                  addi         s8, s11, 570
                  mulh         ra, ra, t3
                  srai         s6, s11, 14
                  c.or         s1, a3
                  c.li         s7, -1
                  addi         t6, s6, -1031
                  andi         s9, a7, -651
                  ori          a0, tp, -135
                  c.nop
                  lui          ra, 386597
                  and          s2, t6, s5
                  srai         t2, t4, 6
                  c.srli       a2, 30
                  c.xor        s0, a1
                  srl          s10, sp, a5
                  xori         s9, t2, -1730
                  slli         s1, s3, 24
                  rem          a7, s5, zero
                  rem          s2, s1, s1
                  srl          ra, s0, a3
                  lui          t2, 463739
                  c.slli       t1, 1
                  c.sub        s1, a2
                  mulhsu       s4, s9, t5
                  mulhsu       s0, a5, s0
                  c.or         a2, a0
                  c.srai       a0, 13
                  c.and        a4, a2
                  mulh         tp, s5, s9
                  slti         a6, a2, -773
                  c.sub        s0, a3
                  c.srai       s1, 26
                  nop
                  srli         t3, zero, 18
                  slli         s11, s1, 11
                  c.sub        a4, a3
                  c.and        s0, a1
                  mul          s0, a5, gp
                  c.nop
                  c.xor        a4, s1
                  c.mv         s10, t0
                  c.mv         t6, tp
                  c.sub        a4, s0
                  nop
                  mulh         gp, s11, ra
                  sltiu        t6, t2, 651
                  and          s0, s5, t6
                  srai         a4, gp, 4
                  c.srai       a2, 9
                  c.or         a4, a4
                  auipc        t0, 946897
                  sll          a3, s6, s3
                  c.and        a0, a2
                  add          gp, s7, s9
                  and          a0, s10, a6
                  addi         s0, s6, -1994
                  div          s1, t1, ra
                  sub          t0, s3, t1
                  add          gp, s0, zero
                  sltiu        ra, a1, -1760
                  c.nop
                  c.add        s6, s4
                  c.mv         s4, s10
                  divu         ra, s6, s0
                  divu         s2, a5, a4
                  c.addi       s1, -1
                  c.sub        s0, a5
                  rem          t0, sp, t1
                  rem          s7, a4, tp
                  auipc        s3, 457758
                  sll          s10, a2, s4
                  sra          s11, s1, s1
                  and          s0, sp, t4
                  srl          s7, a2, zero
                  auipc        a3, 743407
                  addi         a2, s10, 11
                  mulhu        a7, s9, s7
                  sub          s7, t1, t0
                  rem          t6, t4, s8
                  c.andi       a0, 0
                  rem          t2, t5, s3
                  srai         t4, zero, 25
                  c.add        a7, a4
                  c.sub        a3, a3
                  mulhu        a0, s5, s11
                  c.srai       a4, 2
                  c.sub        s1, a4
                  srl          gp, zero, zero
                  c.slli       gp, 20
                  addi         s0, ra, -1377
                  xor          ra, a1, s0
                  mulh         a0, t6, s10
                  c.li         t0, 10
                  c.slli       t0, 9
                  nop
                  ori          a3, sp, -767
                  nop
                  xori         a6, s6, -1744
                  ori          zero, a4, 273
                  srai         t4, a1, 15
                  mulhu        s1, t1, s6
                  auipc        t0, 773080
                  xori         ra, s3, 1380
                  mul          s7, t5, s3
                  c.srai       a3, 4
                  xori         s6, a2, 692
                  nop
                  auipc        s9, 168219
                  nop
                  srl          s11, a1, t6
                  andi         zero, s5, -1814
                  slli         a3, a7, 18
                  slt          s7, a0, tp
                  slli         tp, s0, 24
                  c.nop
                  slt          a6, t6, s9
                  add          ra, s3, tp
                  sll          s2, a5, t4
                  c.srai       a0, 9
                  mul          a2, gp, sp
                  addi         s0, tp, -1333
                  lui          s7, 708201
                  divu         s5, t0, t0
                  sra          ra, s10, t4
                  and          t0, a7, s10
                  mul          s4, s10, t6
                  div          s3, tp, a6
                  slt          t5, s7, s1
                  sra          t2, s3, a0
                  nop
                  c.srli       a4, 28
                  c.li         t2, -1
                  c.add        gp, t6
                  auipc        s2, 377720
                  mul          s6, t2, s2
                  c.xor        s0, s1
                  c.xor        a3, a1
                  c.and        a3, a0
                  mulh         zero, s9, s2
                  c.andi       a0, -1
                  slt          a3, s4, a6
                  sra          zero, a3, s4
                  slti         ra, t2, 633
                  auipc        s0, 507840
                  srl          t1, s8, a7
                  slli         s5, tp, 3
                  andi         tp, a6, -1874
                  c.srli       a3, 27
                  and          t2, a7, t6
                  or           s8, a1, sp
                  sltiu        a4, t6, 802
                  c.addi       a0, -1
                  slli         a3, s3, 26
                  c.srli       s0, 19
                  c.srli       a3, 17
                  c.nop
                  lui          s4, 693308
                  ori          tp, s3, -962
                  mulhsu       t3, sp, t2
                  slti         s1, s3, -1897
                  sltiu        s8, s7, -1131
                  rem          s3, s10, t4
                  c.andi       s1, -1
                  c.li         a6, 12
                  mulhsu       s4, t4, a1
                  c.addi       tp, 20
                  c.nop
                  c.srai       a4, 3
                  c.addi       s2, -1
                  slt          a3, a4, s3
                  divu         s11, t0, zero
                  c.add        t0, s2
                  c.srai       a2, 13
                  and          s7, a6, s10
                  mulhsu       s1, s6, s4
                  ori          s2, sp, 767
                  slli         a0, t3, 28
                  c.and        a0, a4
                  c.li         a3, 4
                  mulh         s11, s1, a3
                  lui          t2, 445784
                  srai         a0, t5, 4
                  c.li         ra, -1
                  slti         a7, t2, -338
                  c.srli       s0, 23
                  slt          a6, t1, s1
                  sub          a3, s9, s0
                  rem          a4, s9, t1
                  nop
                  c.add        a6, s6
                  or           a0, t2, gp
                  mulhu        t5, tp, a1
                  srli         s10, a4, 2
                  xor          gp, t1, s6
                  auipc        a2, 284390
                  c.li         a0, -1
                  mulh         gp, t1, t2
                  sll          s2, s7, zero
                  or           s10, tp, a4
                  c.xor        a0, a0
                  sub          s4, s11, s6
                  c.and        s0, s0
                  sltu         s1, tp, s3
                  mul          s11, ra, s5
                  slt          s0, s1, a3
                  andi         a0, t2, -972
                  add          s3, gp, ra
                  nop
                  mulhsu       s11, s3, s3
                  mulhsu       s6, a0, sp
                  mulhsu       zero, s9, t5
                  and          gp, a7, t0
                  c.slli       s9, 24
                  sltu         gp, a4, a7
                  div          s6, t3, s0
                  sra          a4, s7, s0
                  mulhu        a6, s1, zero
                  c.addi       s11, 1
                  c.or         a4, a3
                  or           s2, t4, s4
                  div          ra, s6, sp
                  c.nop
                  divu         a0, t5, s5
                  sltu         gp, s1, zero
                  mulh         t5, t5, s5
                  c.add        s10, a4
                  sra          a7, a6, zero
                  xori         t0, ra, -168
                  slti         a2, zero, 687
                  ori          t4, tp, 427
                  add          t0, zero, s2
                  andi         a0, zero, 898
                  mulhsu       a7, s1, s9
                  c.addi       a2, 9
                  ori          t5, s7, -1585
                  slti         s11, t6, -1375
                  mulhsu       t1, gp, a0
                  c.slli       s4, 16
                  slt          a0, s11, s4
                  lui          t3, 798735
                  sltu         a2, s1, a2
                  srai         s0, s11, 23
                  mulhu        a4, sp, a5
                  remu         a3, s5, s8
                  c.sub        a0, a0
                  sltiu        t6, t1, 1481
                  srli         ra, t6, 4
                  c.xor        s1, s0
                  sub          a2, s7, s1
                  and          ra, t0, a3
                  auipc        gp, 556963
                  slt          ra, s7, t5
                  remu         t2, s8, a0
                  srai         zero, s7, 30
                  mulhu        ra, a2, s8
                  c.nop
                  c.andi       a2, 13
                  c.nop
                  sub          t5, t5, a7
                  and          s10, ra, s3
                  sltu         a4, s8, a6
                  mul          s11, s3, s4
                  c.xor        s0, a5
                  c.addi       a6, -1
                  c.xor        a0, s0
                  c.andi       s1, -1
                  ori          s11, s0, 89
                  c.li         s1, 13
                  c.andi       a4, -1
                  slti         a0, a0, 2002
                  auipc        s10, 693403
                  c.xor        a3, a4
                  slli         t6, s9, 11
                  c.andi       a0, 29
                  and          s5, t6, t2
                  divu         t6, s10, sp
                  xori         t2, t4, 916
                  lui          a4, 217384
                  sra          s2, t5, t2
                  xor          ra, a3, a2
                  c.slli       tp, 11
                  c.sub        s1, s1
                  ori          gp, s8, 1005
                  and          t4, s8, s8
                  slt          a7, s10, t3
                  c.lui        s0, 19
                  c.slli       s11, 18
                  remu         a4, t1, s0
                  c.srli       a3, 20
                  sltu         ra, t0, t1
                  remu         a3, s3, sp
                  lui          t0, 528302
                  sltiu        s1, ra, 260
                  nop
                  or           a2, t2, s3
                  slli         tp, a4, 22
                  slli         s3, s9, 17
                  srli         t0, s5, 27
                  c.srli       a4, 13
                  and          s1, s9, t3
                  sltu         t1, a4, t2
                  lui          s1, 645290
                  andi         s1, t2, -1192
                  slli         s4, a1, 29
                  sltu         t2, s9, t0
                  c.xor        a0, a1
                  c.mv         a2, t1
                  c.lui        s9, 2
                  c.lui        a6, 15
                  srai         a3, s0, 7
                  andi         t2, s5, -77
                  c.or         s1, s1
                  div          a3, s7, s5
                  mulhsu       s9, s7, a4
                  c.and        a2, a0
                  slli         s2, a1, 14
                  divu         ra, s8, a4
                  xor          s4, gp, a4
                  xor          t3, s0, a0
                  srli         s10, t1, 7
                  c.or         s0, a0
                  addi         s1, s0, -1071
                  slti         s5, a3, -253
                  sra          a3, sp, a4
                  c.sub        a3, a4
                  lui          a3, 90460
                  slt          t3, gp, a1
                  sub          s2, s0, a6
                  c.and        s1, a2
                  sltu         t5, t6, a7
                  c.nop
                  c.srai       a2, 8
                  addi         s5, t0, -1299
                  c.addi       ra, -1
                  c.xor        a4, a4
                  addi         tp, s8, 1352
                  xori         s3, t5, -1587
                  slt          s7, t3, gp
                  xor          s0, t5, a5
                  srli         tp, t3, 27
                  slt          s8, t2, tp
                  andi         t5, s1, -601
                  or           a6, zero, t3
                  mul          a0, s11, s6
                  andi         a4, t6, 1388
                  add          a0, t2, gp
                  lui          gp, 879010
                  mulhsu       t5, s3, t4
                  mulhu        s7, t5, ra
                  srl          ra, sp, a1
                  mulh         zero, a0, s1
                  sltu         ra, sp, t3
                  div          t3, s2, t0
                  sltiu        s4, t2, 1448
                  mulh         a7, a1, tp
                  c.slli       s1, 30
                  remu         s11, t5, zero
                  srl          t2, t1, a7
                  c.sub        a3, s1
                  c.lui        s7, 22
                  rem          a2, s3, zero
                  ori          s3, s3, -1773
                  ori          s1, a3, -1423
                  mulh         s2, t4, s11
                  c.srli       a3, 6
                  slt          s10, t2, s9
                  c.and        a2, a5
                  lui          t4, 593832
                  mulhu        s1, ra, s11
                  c.srai       s1, 12
                  c.srai       s1, 25
                  mulhu        s7, t6, s11
                  mulh         tp, s0, sp
                  xori         a0, ra, 983
                  srli         t6, t3, 5
                  c.xor        a0, a3
                  xor          gp, t3, zero
                  c.srai       a3, 30
                  xor          gp, t0, t1
                  mul          s3, a0, t2
                  slt          s0, s9, t1
                  xor          s0, s3, s5
                  andi         s7, t3, -168
                  c.srli       s0, 13
                  sltiu        s11, t0, 1038
                  addi         zero, s10, 1421
                  c.xor        a3, a1
                  c.or         a4, a4
                  c.andi       a0, -1
                  mulhu        s7, t2, s2
                  and          a3, s1, s9
                  srai         gp, a0, 14
                  c.andi       s0, -1
                  auipc        t4, 784453
                  mulhsu       s1, tp, s1
                  sltu         s8, t0, ra
                  slti         s4, a3, -1509
                  slli         s6, t2, 5
                  c.srli       a4, 17
                  c.xor        s0, a5
                  and          a7, t0, s5
                  sltu         a7, s4, s5
                  c.add        s3, a3
                  andi         tp, s8, 1398
                  ori          ra, a3, 1826
                  rem          s9, a4, t4
                  c.nop
                  mulhu        t2, tp, s1
                  mul          zero, s1, s9
                  c.add        t4, t0
                  lui          s3, 561017
                  sra          s2, s9, t6
                  auipc        s1, 201284
                  lui          s0, 1014500
                  xori         t6, a3, 1597
                  xori         zero, a5, -413
                  mulhu        s9, s0, ra
                  mulhsu       t2, ra, t1
                  c.srai       a4, 24
                  mulh         zero, a3, s3
                  srai         t2, tp, 7
                  c.lui        a3, 18
                  slli         tp, a0, 17
                  c.andi       a0, -1
                  ori          tp, t0, 744
                  sll          s7, t0, t6
                  divu         t5, sp, t6
                  add          s4, a5, a0
                  rem          a0, t6, tp
                  sub          s7, t3, a3
                  mulhu        gp, ra, ra
                  c.sub        s0, s1
                  c.lui        gp, 16
                  c.li         s7, 27
                  mulhsu       a4, s8, a7
                  c.slli       s9, 20
                  c.add        a4, a1
                  srl          a3, a2, a5
                  mulhsu       t4, t0, a5
                  c.li         t2, 13
                  remu         gp, a7, sp
                  mul          t4, t6, s0
                  andi         a4, t5, 1277
                  divu         ra, s0, a6
                  mulhu        a6, a3, t5
                  c.xor        s1, a3
                  or           a4, a3, s5
                  slli         t2, t3, 13
                  sltiu        s9, a6, 840
                  c.srai       a4, 3
                  srai         ra, t1, 17
                  c.and        a3, s0
                  c.sub        a2, s0
                  slt          t0, ra, ra
                  c.li         ra, 13
                  andi         t5, a7, 663
                  slt          t2, s2, s4
                  sltiu        t0, s1, -2038
                  div          s1, a3, s6
                  addi         s6, a6, 1747
                  c.andi       s1, 20
                  srai         a4, s9, 8
                  auipc        s7, 399598
                  andi         t4, s7, 1083
                  add          s5, t4, s3
                  c.sub        a0, a4
                  sub          t3, s3, t4
                  c.srli       a0, 30
                  c.and        s0, a1
                  div          t3, a3, s7
                  nop
                  c.sub        a3, a4
                  mul          a3, t4, a0
                  c.nop
                  c.andi       a4, -1
                  sltiu        ra, sp, -1886
                  sra          s3, s7, s11
                  c.srai       s0, 29
                  add          t5, t6, a5
                  c.mv         s4, tp
                  addi         ra, s0, 136
                  sub          t1, a2, s3
                  andi         a4, t5, 1873
                  c.andi       a4, -1
                  sltu         t2, s4, t1
                  slt          t0, s1, s6
                  nop
                  slti         s10, a2, -631
                  mulhsu       s2, sp, s2
                  sltu         s11, s3, t1
                  c.sub        s1, a1
                  rem          a4, t4, s11
                  slt          t4, t5, s2
                  c.xor        s1, s0
                  div          s1, gp, s5
                  sltiu        t2, s7, -581
                  slt          a3, t2, s10
                  c.addi       s8, -1
                  or           a3, s2, a5
                  mul          a0, t2, ra
                  andi         s6, zero, -1009
                  addi         s8, s9, -1519
                  mulh         tp, tp, a4
                  auipc        s4, 1024023
                  andi         zero, s9, 65
                  c.xor        a3, a1
                  add          t4, s6, a7
                  divu         s2, a0, s7
                  sra          t2, a2, t4
                  c.slli       tp, 15
                  c.or         a0, s1
                  sll          t1, t4, t1
                  or           a0, s7, a4
                  slt          t6, s10, s9
                  sltu         t6, t0, s1
                  nop
                  slt          t5, a0, s6
                  c.andi       s1, 31
                  mulhu        s9, a3, s10
                  rem          t5, a1, t1
                  slt          gp, a2, t1
                  c.add        t0, sp
                  sll          t5, gp, a0
                  c.srai       a2, 26
                  slli         s10, gp, 20
                  c.srli       a0, 9
                  slt          t6, a6, t0
                  xor          s4, a0, t6
                  mulhsu       s5, s7, ra
                  div          a0, a6, a4
                  xori         t2, s7, -13
                  andi         s1, s11, -595
                  mulh         s4, s9, a2
                  slt          a4, s3, sp
                  srli         t2, s9, 20
                  c.and        a3, a1
                  add          t4, s11, s11
                  divu         tp, s7, a1
                  c.nop
                  c.and        a4, a2
                  sra          tp, t4, a2
                  c.nop
                  c.nop
                  div          gp, t6, s3
                  and          s11, t1, t3
                  sll          t6, a0, s9
                  srl          s0, gp, a5
                  xori         s9, s0, 594
                  c.mv         t0, t6
                  add          t5, zero, t1
                  srl          t4, a4, t6
                  rem          s11, s2, zero
                  c.slli       t1, 14
                  auipc        s7, 382205
                  c.nop
                  c.lui        s7, 15
                  slli         s5, sp, 7
                  c.and        a0, a2
                  mulhu        a3, t5, t6
                  c.slli       s11, 13
                  c.andi       a0, 29
                  c.and        a3, a1
                  sltu         s10, a3, zero
                  nop
                  srli         t2, t4, 20
                  divu         a4, t2, s11
                  srai         t3, t3, 30
                  mulhsu       ra, s4, gp
                  addi         s3, t1, 1905
                  mulhsu       t2, ra, s11
                  xor          s10, a0, t2
                  rem          a4, s4, s0
                  c.nop
                  c.add        t4, gp
                  srli         a0, a3, 10
                  c.li         t3, 18
                  divu         t0, t6, t1
                  sra          s0, sp, t5
                  add          t5, a6, s1
                  divu         s4, s7, s4
                  xor          a3, a6, gp
                  srli         s10, a0, 23
                  mulhsu       s1, gp, a2
                  mul          s3, sp, a7
                  mulh         s2, t5, tp
                  sltu         s11, t6, s5
                  slti         s0, s1, -1940
                  rem          ra, a5, a7
                  add          tp, t1, a2
                  c.srai       a4, 30
                  mul          s1, a5, s9
                  nop
                  div          a2, s7, a2
                  slt          t5, t1, s0
                  sltu         zero, t2, t4
                  c.slli       s7, 29
                  c.srli       s0, 4
                  sub          s10, t3, s10
                  sltu         s10, s2, a6
                  or           s7, t1, gp
                  c.nop
                  rem          t4, a1, s3
                  remu         a6, s4, a4
                  c.slli       s1, 24
                  auipc        s7, 623768
                  c.lui        s0, 5
                  srl          a2, a4, t4
                  c.and        a4, a5
                  c.add        tp, a4
                  sltiu        a0, s3, -793
                  c.andi       a4, 29
                  mulhu        s10, a1, t3
                  nop
                  c.sub        s1, a1
                  or           gp, s0, a3
                  c.lui        s2, 23
                  nop
                  c.srai       s1, 28
                  mulhu        t6, s6, a6
                  c.lui        gp, 23
                  and          a2, tp, t2
                  lui          s10, 733429
                  slt          s11, s6, a4
                  mulh         t0, s10, t5
                  c.srli       s1, 10
                  mulhu        a4, s4, s3
                  sll          s7, s4, t5
                  c.srai       a0, 11
                  mulh         tp, a0, s1
                  mulhsu       s0, s6, t2
                  c.add        a6, t5
                  add          s10, a6, t5
                  c.lui        t4, 21
                  auipc        a6, 761774
                  slt          s11, s7, s0
                  mulhu        zero, a6, s7
                  sra          s5, s4, s6
                  c.lui        a3, 22
                  slli         a6, s11, 2
                  addi         t0, s4, -939
                  sltu         t5, a1, sp
                  c.srli       a2, 18
                  c.lui        tp, 5
                  srai         a4, t3, 19
                  c.srai       s1, 18
                  auipc        s8, 307121
                  sll          s4, s11, s9
                  auipc        a7, 977931
                  add          t1, a5, s2
                  c.xor        s1, a2
                  c.add        a3, s2
                  c.and        a3, a3
                  rem          t5, s6, s0
                  c.lui        ra, 15
                  lui          t2, 90214
                  divu         s1, t2, tp
                  mulhu        s1, t2, t1
                  c.andi       a4, -1
                  c.add        a4, s0
                  c.add        s1, a3
                  c.nop
                  c.add        t6, a3
                  sltiu        t2, a4, -646
                  c.nop
                  mulhu        a3, a1, a6
                  c.mv         ra, a4
                  c.xor        s1, s1
                  mul          t1, gp, t5
                  srl          a4, a7, s0
                  c.or         a3, a4
                  c.and        a0, a1
                  div          t1, t2, s0
                  xor          s3, t0, t0
                  or           s10, s9, t3
                  and          a2, t5, s4
                  divu         s4, s1, s10
                  sltu         a4, s4, s9
                  srai         s3, s10, 19
                  or           t2, sp, a1
                  add          s3, ra, s2
                  or           gp, s4, s4
                  nop
                  sltu         gp, s2, t5
                  andi         a6, a2, -1665
                  remu         ra, t3, s3
                  sltu         tp, a0, t5
                  nop
                  c.nop
                  c.and        a4, s1
                  slti         s2, t6, 1956
                  slt          s9, t0, s5
                  c.slli       s10, 3
                  lui          gp, 39828
                  rem          s11, t6, s0
                  mulhu        t2, a3, s0
                  rem          s0, s4, t4
                  c.srli       s1, 12
                  sltiu        t5, gp, -200
                  c.sub        a0, a4
                  mulhu        s7, s8, s6
                  sll          a4, t6, s5
                  c.and        s1, s1
                  xori         a0, s10, -1593
                  c.or         a2, a0
                  slt          a3, gp, s8
                  c.slli       t0, 31
                  c.slli       s11, 27
                  remu         tp, s7, s8
                  c.add        a6, s9
                  sll          s10, s7, tp
                  slt          s1, sp, t3
                  mul          a4, s8, s7
                  xor          s5, s10, t6
                  c.mv         s9, a6
                  c.andi       s1, -1
                  andi         a4, t5, -1202
                  c.sub        a2, a0
                  srl          a2, s9, s4
                  lui          t0, 690632
                  c.li         s2, 3
                  c.xor        a4, s0
                  c.or         a2, s0
                  mulhsu       t0, t5, a5
                  srli         s0, s2, 25
                  sra          t3, sp, s8
                  and          a4, s2, s4
                  div          s0, a6, t6
                  mulh         t0, s6, s4
                  c.or         s1, s0
                  c.addi       s2, -1
                  c.andi       a3, 28
                  sltu         s7, gp, t6
                  mulhu        t3, sp, a7
                  c.nop
                  nop
                  c.slli       s3, 17
                  c.andi       s1, 8
                  slt          a0, s4, s6
                  div          a0, a7, t4
                  ori          s4, s11, -614
                  div          a0, a2, t0
                  c.addi       t3, 19
                  slti         s3, s6, 954
                  c.or         a3, a2
                  nop
                  c.andi       a2, -1
                  ori          ra, a7, -188
                  c.xor        a0, a1
                  sra          t5, a5, s4
                  or           a2, s10, s1
                  mulh         s2, t2, a3
                  c.add        a4, s3
                  c.addi       s8, -1
                  c.sub        a3, a1
                  sub          a4, tp, t1
                  slli         s6, s1, 27
                  lui          zero, 296952
                  mulhu        s1, a4, a0
                  xor          s0, a1, a0
                  slti         s2, a4, -1802
                  lui          a0, 631784
                  mulhu        s11, s5, s11
                  sll          s7, a6, s8
                  slti         s8, s2, -1386
                  add          s1, s3, s7
                  div          s5, s1, t2
                  xori         s4, tp, 40
                  rem          t4, t6, a2
                  ori          t0, a4, -67
                  and          a3, a7, s10
                  c.li         t5, -1
                  c.mv         s11, t3
                  and          ra, s5, t4
                  andi         t6, t2, 1781
                  srai         s3, a4, 24
                  c.srli       a4, 26
                  c.addi       t6, -1
                  c.mv         t2, t5
                  sltiu        s10, s0, 1176
                  srl          gp, s5, s10
                  c.srai       a4, 16
                  add          s0, s5, sp
                  add          t6, sp, gp
                  lui          t6, 650187
                  ori          s6, s1, -1296
                  slt          ra, gp, t2
                  c.xor        a2, a2
                  add          t4, s2, s3
                  xori         s4, ra, -961
                  c.andi       a0, 28
                  mul          s10, ra, s8
                  slt          t3, s2, s3
                  sub          t2, a5, tp
                  c.or         a2, a1
                  sll          s5, s8, s7
                  c.lui        a3, 28
                  addi         zero, t1, 469
                  c.mv         s2, s1
                  sll          s3, t3, t3
                  rem          s7, tp, a5
                  sll          t4, a7, a2
                  c.and        a4, a5
                  c.slli       s3, 21
                  slti         a4, tp, 868
                  sra          a6, s11, t6
                  c.slli       a7, 13
                  xor          a7, s10, a4
                  c.xor        a4, a1
                  c.srli       a4, 19
                  div          t1, t6, s6
                  mulhsu       t5, s7, a7
                  c.srli       a2, 2
                  srli         a3, s0, 17
                  c.lui        a6, 19
                  addi         s0, a7, 750
                  sra          s1, a6, a1
                  xori         zero, s11, -1185
                  sub          ra, a7, t0
                  c.add        s8, s7
                  or           t5, t5, tp
                  c.or         a4, a1
                  andi         s0, s6, -1871
                  slti         t6, t0, 282
                  sll          zero, a4, a3
                  mulhsu       a3, s7, s3
                  mul          s9, a5, s10
                  c.sub        s1, a4
                  mulhu        a3, t5, t4
                  andi         t3, s2, 944
                  auipc        s3, 479779
                  mul          s6, t4, a7
                  c.add        a4, s7
                  xori         s10, s10, 926
                  c.li         s4, 14
                  lui          s4, 368097
                  mulh         a4, zero, t2
                  sll          s3, s3, s11
                  slt          zero, t4, s9
                  srli         a4, t1, 21
                  c.xor        a4, s0
                  div          s5, t1, s4
                  sltu         t0, t0, s0
                  rem          t3, t3, s0
                  c.lui        s9, 6
                  c.and        a3, a3
                  xor          t1, gp, s2
                  c.slli       a3, 12
                  rem          s8, s8, t6
                  srai         ra, tp, 15
                  c.sub        s1, s0
                  c.add        s0, a6
                  remu         t1, s9, a1
                  mulhu        s1, t4, zero
                  rem          t5, a4, a3
                  and          s2, s9, s8
                  c.slli       a4, 9
                  mul          a0, t5, s9
                  srli         s2, zero, 31
                  c.and        s0, a4
                  sll          s2, s9, s3
                  c.lui        a3, 24
                  c.addi       s1, 1
                  divu         s10, t6, s1
                  xor          s5, t1, gp
                  slli         s4, s11, 3
                  c.mv         s6, s5
                  and          s8, a5, s6
                  div          a6, tp, s10
                  addi         t0, a3, 141
                  sub          a4, s4, gp
                  mulhsu       t3, s8, a6
                  c.lui        a0, 29
                  srai         s6, a4, 11
                  andi         t2, ra, -1404
                  c.add        t1, s7
                  slt          a0, a4, a1
                  xor          s4, t6, s1
                  mulhu        a3, s3, s2
                  divu         s6, t0, a3
                  xor          a3, s5, s9
                  rem          tp, s2, s1
                  c.srai       a4, 27
                  srl          gp, gp, a3
                  divu         zero, s5, gp
                  c.xor        a3, a2
                  c.addi       a0, -1
                  slli         a7, s8, 4
                  c.andi       a3, 24
                  c.srai       a0, 18
                  mul          s1, s3, t3
                  sub          s3, s5, a6
                  ori          s1, s0, -1511
                  c.nop
                  div          t2, ra, s3
                  xori         tp, zero, -1692
                  andi         s4, t1, -283
                  and          t6, t3, a0
                  srai         t1, s1, 24
                  mulhsu       gp, a6, a4
                  c.srai       a2, 16
                  c.nop
                  sra          s10, t0, t1
                  c.mv         t2, a3
                  c.mv         a3, t4
                  divu         t6, s9, s6
                  mulhsu       s9, a3, t3
                  mulhu        t2, a5, ra
                  and          s7, t6, s5
                  mulhu        s7, a2, s4
                  div          s10, a1, t1
                  c.sub        a2, a1
                  c.mv         a4, t4
                  addi         s1, t6, 1380
                  c.nop
                  remu         a3, ra, gp
                  sltu         tp, ra, s6
                  c.srai       a4, 28
                  c.andi       s0, 6
                  add          a2, sp, tp
                  c.or         a2, a2
                  lui          s1, 596776
                  c.andi       a4, -1
                  addi         gp, t2, -1879
                  auipc        t3, 256785
                  c.srai       s0, 30
                  rem          tp, s10, s1
                  sra          tp, a3, s8
                  sll          t3, s0, a5
                  c.addi       t4, -1
                  mulhsu       s0, t2, s11
                  divu         t2, s1, t2
                  sltiu        zero, s4, -43
                  xor          s2, s11, s6
                  c.slli       s11, 5
                  divu         tp, s9, s0
                  sltiu        a6, a6, 1323
                  c.and        a4, a1
                  sub          s11, gp, s3
                  rem          a0, gp, a5
                  addi         a6, t3, 724
                  mulhu        s8, a5, a2
                  srli         t6, t3, 6
                  c.srli       a0, 31
                  mul          t2, a7, t0
                  or           s5, t6, tp
                  addi         t6, a7, 42
                  c.or         a3, s0
                  sltiu        t6, t1, -1200
                  or           t6, s1, t1
                  mulh         gp, s5, zero
                  rem          t4, s3, s11
                  c.and        a3, s1
                  srli         a2, a6, 31
                  xori         a6, a1, 23
                  c.andi       a3, -1
                  sub          t0, s0, s2
                  rem          s3, s7, t3
                  xori         s2, s0, -1276
                  addi         t5, t0, -485
                  addi         s2, a3, 1194
                  mul          a0, s3, t6
                  add          s9, s2, s6
                  c.andi       s1, -1
                  srli         t4, s4, 14
                  slt          zero, a0, s3
                  ori          a7, gp, -58
                  auipc        t1, 442923
                  c.and        s1, s1
                  c.mv         t3, s6
                  slli         a2, a0, 8
                  sltiu        t2, t0, -736
                  c.xor        a3, a5
                  c.sub        s0, s0
                  auipc        a7, 439406
                  xor          a2, s5, s7
                  slli         s5, a7, 9
                  c.li         t4, -1
                  sltiu        a6, t4, 23
                  c.nop
                  remu         t3, s3, t6
                  mulhu        a3, t6, t6
                  or           gp, s10, sp
                  c.srli       a2, 12
                  c.nop
                  sll          a2, a7, a4
                  sub          t2, ra, a7
                  c.mv         s5, a5
                  srli         t5, s6, 26
                  sll          a7, gp, s10
                  add          t5, s9, a1
                  mulhu        s8, ra, s0
                  c.lui        s11, 29
                  sltu         s3, a1, a7
                  srl          s9, t2, a5
                  c.slli       a0, 15
                  mulhu        s6, t1, s4
                  c.or         s0, a4
                  c.or         a4, a1
                  srai         t2, a6, 12
                  srl          a2, t6, a5
                  srai         s6, a3, 1
                  nop
                  remu         s8, a7, a4
                  or           a0, s11, s5
                  c.xor        a4, a5
                  mul          t0, gp, tp
                  xori         gp, zero, -1394
                  c.or         a2, a2
                  srli         zero, a5, 3
                  c.srai       a3, 11
                  xori         t2, t5, 43
                  lui          s8, 536250
                  mulhu        a0, s8, a6
                  xor          t6, gp, s8
                  c.add        s1, s0
                  mulh         s9, s2, t3
                  or           a4, tp, a6
                  add          a3, s6, a6
                  andi         t5, sp, 720
                  c.srli       a4, 20
                  and          s10, t2, s11
                  sltiu        a6, s7, 922
                  auipc        t1, 199657
                  mulhu        t5, t6, s8
                  sra          zero, s7, a1
                  addi         t6, s2, -1849
                  c.addi       s10, 13
                  c.li         t1, -1
                  sra          t0, tp, s3
                  srai         a4, tp, 18
                  sra          zero, a4, sp
                  srl          t5, s10, s2
                  divu         s10, t6, a7
                  c.addi       t5, -1
                  or           gp, s0, a6
                  xori         t2, a4, -1161
                  c.srai       s0, 17
                  remu         s8, s8, ra
                  sltiu        t3, a6, 467
                  slli         t3, ra, 9
                  mulhu        t1, t1, s7
                  slt          s3, zero, a3
                  c.or         a0, s0
                  c.lui        s9, 5
                  rem          t4, s4, t5
                  slt          a6, gp, a7
                  rem          gp, s10, s7
                  lui          s0, 998367
                  slti         s6, tp, -1353
                  c.sub        a2, a3
                  sra          s10, s11, s11
                  auipc        s2, 525214
                  slt          t4, s5, s7
                  c.and        a3, a1
                  slti         t2, s9, -949
                  c.nop
                  c.addi       gp, 29
                  add          a2, a1, s5
                  sll          t0, s11, s1
                  auipc        zero, 154061
                  srai         a4, a7, 8
                  c.or         a0, a0
                  xori         s8, s7, 1498
                  xor          zero, t0, t4
                  c.mv         t3, s1
                  c.srli       s0, 12
                  srli         zero, gp, 7
                  and          s6, s2, a3
                  and          s9, s7, t3
                  lui          s2, 730083
                  and          a6, s7, t4
                  c.and        a3, a4
                  andi         t3, s10, 1905
                  c.slli       s8, 2
                  srli         s9, a1, 13
                  auipc        s2, 703321
                  nop
                  slti         a4, a2, -166
                  sltiu        s6, s11, -989
                  mulh         a0, s5, t0
                  sll          s4, t2, t4
                  lui          s9, 964085
                  sub          t1, t3, a0
                  c.slli       a7, 3
                  remu         s6, t6, gp
                  c.and        a4, a2
                  slt          gp, s3, t1
                  sll          s3, s5, ra
                  sltu         s4, gp, sp
                  nop
                  addi         a6, a0, -34
                  c.srli       a3, 29
                  sub          gp, tp, s3
                  c.addi       s3, -1
                  and          s4, s8, t3
                  c.nop
                  sltu         a0, s10, sp
                  rem          t2, t1, s0
                  c.addi       s0, 17
                  sltu         t5, t5, s1
                  lui          a7, 1000003
                  or           s0, t0, a2
                  and          s2, s8, s10
                  mulhsu       s11, s5, a5
                  addi         t6, ra, -630
                  lui          s1, 439733
                  sll          a6, t2, t1
                  c.addi       s0, 5
                  sub          t1, t3, a5
                  c.add        t4, a7
                  xor          t0, tp, a0
                  c.andi       a0, -1
                  sltiu        s8, s8, 427
                  add          s7, a6, s0
                  c.lui        t4, 9
                  rem          t6, s4, t5
                  slt          s0, zero, t0
                  and          gp, a2, a4
                  c.nop
                  c.andi       a3, -1
                  c.li         s4, 27
                  mulh         s8, gp, t6
                  xor          a4, a4, s6
                  sltu         s9, s0, a4
                  lui          t0, 543449
                  slli         t4, t6, 23
                  ori          s11, t6, -1352
                  mulhsu       t5, s8, s10
                  auipc        a3, 210091
                  c.or         s1, a4
                  sra          s11, a3, ra
                  c.xor        s0, a4
                  divu         t2, gp, t2
                  c.srai       a4, 23
                  c.nop
                  andi         s0, s5, -1207
                  sub          s0, s3, t5
                  addi         zero, a5, 106
                  mulh         a3, s3, s5
                  addi         tp, a7, -767
                  mulhsu       s1, s3, s7
                  sll          s6, tp, t1
                  sll          gp, a3, s3
                  nop
                  mulh         s1, t2, s10
                  c.or         s1, a4
                  sltu         a0, gp, a7
                  c.andi       a0, -1
                  c.srai       s0, 12
                  div          t2, tp, s9
                  slli         ra, zero, 25
                  mulh         t1, t3, s3
                  rem          a6, s7, s3
                  mulh         s3, s1, t3
                  sll          s7, t2, sp
                  nop
                  srai         s6, a0, 16
                  srai         zero, t6, 18
                  or           s10, s0, s0
                  slti         a7, gp, -1149
                  c.add        t0, s2
                  c.srai       a3, 26
                  c.slli       t1, 19
                  sub          s0, a0, zero
                  sltiu        s2, s1, 1807
                  divu         t6, a5, a4
                  sra          s7, t4, s9
                  srli         s3, s8, 6
                  addi         s4, s9, 1285
                  c.srai       a4, 30
                  andi         t6, s7, -1446
                  c.mv         a3, s10
                  c.slli       t0, 4
                  c.mv         t3, tp
                  sll          s0, a0, a3
                  lui          a6, 883307
                  sub          gp, s3, a2
                  divu         t1, s9, a6
                  c.sub        s1, a5
                  addi         s2, a1, -584
                  add          t5, s7, s6
                  rem          a6, a0, s8
                  add          s9, s9, s5
                  and          a7, zero, s8
                  rem          s11, s10, tp
                  divu         s0, s3, t2
                  ori          s10, t5, 435
                  c.li         a3, -1
                  remu         t5, t3, s2
                  xori         s6, a1, 1711
                  nop
                  mulhu        t4, a4, a7
                  srai         s8, s4, 1
                  rem          s5, t0, s6
                  slt          s4, ra, t0
                  remu         a4, s6, s5
                  xori         a4, tp, -251
                  c.or         a3, s0
                  xor          s7, s5, s2
                  srai         s5, s9, 24
                  sra          a3, ra, a7
                  c.add        a6, t6
                  addi         a3, s2, -157
                  c.or         s1, s1
                  c.mv         t6, s5
                  c.slli       tp, 3
                  sltu         a3, s7, s2
                  divu         a3, s6, gp
                  rem          s8, sp, a6
                  add          s9, a6, ra
                  srai         t2, t2, 15
                  c.sub        s1, s1
                  divu         s1, sp, t3
                  c.sub        s1, s1
                  add          a0, t3, s3
                  c.mv         a3, a4
                  xori         s10, t5, 824
                  sltu         a3, s11, s4
                  slli         s3, zero, 16
                  slt          s10, t2, a6
                  addi         gp, tp, -1204
                  c.addi       s7, 4
                  c.addi       t5, 29
                  xor          s2, t6, s0
                  c.addi       s2, -1
                  srl          s0, s2, s3
                  lui          a2, 825675
                  mulhu        t5, t5, a4
                  c.srli       s1, 1
                  c.li         s5, -1
                  c.nop
                  c.and        a0, s1
                  srl          t6, s6, s0
                  sltu         tp, s9, t0
                  c.slli       s10, 31
                  andi         s7, s2, -389
                  remu         t3, sp, a4
                  c.sub        a3, a2
                  slti         s1, t6, -865
                  c.slli       s4, 25
                  c.sub        a0, a5
                  c.li         t2, 10
                  srl          s0, a7, s8
                  c.mv         t1, s11
                  mulhsu       zero, a7, s3
                  c.mv         s9, s8
                  sltiu        t4, gp, -95
                  c.li         t4, 13
                  mulhu        gp, a5, a4
                  lui          ra, 55390
                  andi         ra, a4, 1121
                  srai         t1, a5, 9
                  c.mv         a0, s2
                  divu         t1, t4, a5
                  mulhsu       s10, a1, t3
                  add          s9, t2, s3
                  c.andi       a3, -1
                  c.or         a4, a2
                  mulh         a2, t5, a6
                  mulh         s7, s7, t2
                  divu         gp, t3, s11
                  divu         s4, s3, t5
                  c.andi       s1, 16
                  nop
                  srli         a0, s10, 26
                  mulh         a3, t6, zero
                  slt          s7, a4, t3
                  divu         t6, t0, a6
                  auipc        a7, 577526
                  c.lui        a3, 1
                  rem          zero, t2, t1
                  slli         t2, s2, 15
                  sra          a4, s11, s10
                  mulhu        a2, s5, t6
                  addi         s2, tp, 1350
                  xori         s2, s2, 331
                  ori          s8, a1, 1901
                  or           a0, s8, t1
                  c.or         a4, a5
                  sra          ra, s1, s4
                  addi         t0, a3, 1782
                  mulhu        s4, s1, ra
                  c.add        s7, t2
                  ori          a0, s2, 1698
                  sltu         s8, a4, sp
                  auipc        a6, 756980
                  remu         s0, t6, s8
                  mulhsu       zero, t4, a0
                  mul          tp, t0, sp
                  slti         t1, t6, 1816
                  c.xor        s1, a3
                  mulh         a4, s7, tp
                  sltu         t5, t3, a4
                  sub          s5, sp, s1
                  mulhu        s10, s9, t2
                  c.add        s0, s6
                  and          t2, s4, s7
                  slli         a7, zero, 25
                  divu         a3, s11, s3
                  sltiu        zero, a2, 1830
                  c.srai       a0, 4
                  auipc        s0, 674510
                  xor          a3, sp, ra
                  c.xor        a0, a0
                  nop
                  xori         s3, a1, -1070
                  mulhsu       s8, a1, ra
                  c.or         s0, s0
                  srli         t3, s1, 16
                  rem          s11, s7, ra
                  sub          ra, s1, s10
                  c.srai       a0, 4
                  c.lui        t2, 25
                  srai         gp, s1, 23
                  slt          t5, a2, t5
                  srli         s8, zero, 11
                  addi         a0, a5, 1255
                  c.xor        a4, s1
                  add          a2, s11, s7
                  sll          a2, s11, t0
                  c.add        s11, t5
                  lui          s3, 438977
                  srli         t2, tp, 7
                  remu         s10, t5, t3
                  and          a6, gp, a6
                  c.andi       a0, -1
                  srli         a3, a3, 21
                  c.slli       ra, 21
                  c.srai       s0, 28
                  sll          s3, t2, s0
                  sra          t5, t3, t3
                  mulhu        s5, a5, a0
                  slti         s1, s0, 839
                  mulhsu       s5, s7, s7
                  add          a6, t1, t5
                  remu         a6, s3, s7
                  xor          zero, t0, t2
                  rem          s9, a4, zero
                  c.andi       s1, 25
                  mulh         s5, a5, sp
                  srai         s3, s4, 27
                  srai         t2, zero, 5
                  remu         a7, tp, s9
                  mul          t6, s8, s2
                  slt          s0, zero, a1
                  or           a3, s6, t3
                  sll          a7, t1, a3
                  c.srai       s0, 8
                  divu         s1, s6, a3
                  rem          t1, t0, a2
                  c.andi       a2, 6
                  nop
                  rem          gp, t3, ra
                  mulhsu       t6, s11, ra
                  or           a4, t0, s0
                  c.add        ra, s7
                  div          t5, a0, t6
                  sll          a0, a2, t1
                  xori         s10, t1, -335
                  add          s6, s8, tp
                  c.add        t1, a5
                  divu         a3, s11, a0
                  xori         t1, tp, -33
                  divu         t6, sp, a4
                  divu         a6, s7, s1
                  rem          s8, a3, t4
                  c.sub        a3, s1
                  mulhu        s8, gp, s1
                  sltiu        s10, t5, 1081
                  xor          a0, s0, t2
                  mulhsu       s2, a6, tp
                  auipc        gp, 470886
                  sltu         a3, s10, t6
                  c.or         a0, a4
                  sll          a4, t2, s3
                  c.addi       t2, 13
                  sltu         t2, s9, a3
                  c.nop
                  srli         s4, ra, 11
                  c.andi       s1, -1
                  mulhsu       t5, t1, s3
                  or           zero, gp, t5
                  c.slli       a0, 12
                  c.srai       a0, 28
                  remu         t4, t6, sp
                  c.nop
                  c.mv         t1, a5
                  andi         s10, s1, 1501
                  xori         s4, s7, -111
                  c.li         s7, 8
                  srli         s5, t2, 22
                  mulhu        a3, s1, a0
                  c.andi       a0, 28
                  mulh         s1, s0, t6
                  c.srai       a4, 21
                  slti         s5, s6, 1630
                  xori         t3, a4, -2022
                  andi         a6, s3, 376
                  mulhsu       s2, s4, s7
                  xor          s1, s5, gp
                  sltu         s0, a4, a3
                  sltiu        s4, s11, 539
                  sra          a7, s4, a0
                  divu         tp, s7, a6
                  c.and        a3, a0
                  xori         t1, s5, 201
                  rem          t1, t1, s6
                  sub          s0, gp, a1
                  div          s7, t0, a6
                  c.add        s11, t5
                  add          a3, s10, t4
                  c.nop
                  remu         ra, zero, s5
                  addi         a6, s10, -477
                  div          a7, s2, s10
                  mulh         s1, t5, a4
                  c.addi       s5, -1
                  addi         t2, t6, -735
                  div          s4, s5, a1
                  remu         t3, s11, a3
                  srl          s0, a2, s10
                  sltiu        s5, t2, 457
                  andi         a7, s10, 46
                  sltu         a3, t2, s1
                  rem          a3, t5, a7
                  mulhu        s9, s6, s9
                  rem          t4, s8, s1
                  sra          s10, s5, s10
                  sll          a2, s3, t3
                  and          a4, s3, gp
                  c.and        a3, s1
                  c.add        t2, gp
                  sltiu        s5, zero, -672
                  c.lui        s7, 31
                  sltiu        t0, a1, -102
                  c.srli       a0, 2
                  sra          t2, a4, a7
                  rem          t2, s0, a3
                  srai         ra, s11, 13
                  c.xor        a3, a4
                  c.andi       s1, -1
                  xori         t1, a0, 1306
                  and          s11, t3, s2
                  mulh         a3, t2, sp
                  c.slli       a6, 3
                  remu         s10, s4, t0
                  nop
                  c.li         s5, -1
                  c.nop
                  remu         s6, t6, s0
                  nop
                  srl          s9, s4, a6
                  c.lui        gp, 1
                  mulhsu       a3, s1, s10
                  c.li         s6, -1
                  mulh         s3, s10, s11
                  xor          a2, gp, s5
                  sltiu        s1, ra, -734
                  c.addi       a6, 19
                  ori          a2, t5, -539
                  mulh         s2, a6, gp
                  mulhsu       s11, a4, s2
                  c.mv         s0, a7
                  sll          s11, tp, a3
                  andi         s8, t5, 1107
                  sltiu        a6, t5, -1560
                  slli         s2, t1, 22
                  slt          t6, a0, t3
                  mul          gp, t0, a5
                  mulhu        s5, gp, a0
                  lui          a7, 28041
                  c.add        s2, t0
                  srl          a0, t2, s7
                  sra          s1, a7, s2
                  c.and        a4, s1
                  c.mv         a4, s2
                  c.addi       a4, -1
                  c.sub        a0, a2
                  addi         s5, t2, 72
                  or           s3, sp, tp
                  c.srai       a4, 8
                  sub          s6, s2, sp
                  nop
                  lui          ra, 683300
                  slli         t0, sp, 16
                  srl          tp, s4, ra
                  lui          zero, 1009784
                  sra          s2, a4, t1
                  c.li         s11, 31
                  c.or         a0, a1
                  rem          s5, t3, a4
                  c.andi       a4, 23
                  c.and        a4, a2
                  srl          s2, s10, zero
                  mulhu        t6, t6, s8
                  c.or         s1, a4
                  c.and        a0, s0
                  c.or         a4, a2
                  c.lui        t6, 2
                  c.lui        gp, 4
                  srl          tp, a4, s2
                  c.add        ra, ra
                  c.srai       a4, 31
                  c.add        s1, s6
                  add          s5, a1, t6
                  nop
                  remu         t1, sp, t3
                  lui          a2, 260198
                  c.srai       s0, 24
                  lui          s2, 784398
                  c.or         a3, s1
                  sltu         a4, ra, s4
                  add          s4, s10, gp
                  slt          tp, s4, t3
                  mul          s8, s6, t6
                  c.or         a4, a3
                  c.slli       a6, 25
                  c.xor        a3, a3
                  slli         a0, s0, 15
                  sra          t1, ra, s2
                  mulh         gp, a4, s3
                  c.or         s0, a3
                  c.nop
                  mulhu        gp, tp, t5
                  xor          gp, t0, t2
                  mul          a3, a5, t4
                  c.andi       a0, 22
                  rem          a7, s1, a6
                  sltu         s11, a3, s4
                  srl          t2, a1, s2
                  slli         a4, s5, 7
                  c.li         a4, -1
                  div          a6, s1, a2
                  xor          s5, gp, s7
                  sra          a7, sp, zero
                  c.addi       ra, 18
                  auipc        s0, 876807
                  c.xor        a0, a1
                  rem          a4, s7, s6
                  c.srli       s0, 10
                  c.srai       a2, 21
                  andi         s4, s10, -1672
                  sra          a0, s11, a4
                  c.srli       a0, 12
                  c.or         s1, a4
                  c.nop
                  c.mv         a7, s1
                  lui          a2, 784111
                  sra          t6, t5, s2
                  c.sub        a3, a1
                  srli         s1, a4, 27
                  rem          a2, t1, t6
                  c.or         a0, a2
                  divu         tp, s8, a0
                  sltiu        a7, t4, 1452
                  and          s6, s1, t6
                  c.li         s5, 20
                  slli         t3, s0, 11
                  c.mv         s10, a4
                  c.srai       a0, 10
                  div          s8, s10, a7
                  xor          a4, s3, a3
                  sll          t1, ra, s5
                  sltu         a2, a4, s8
                  sltu         s1, zero, s4
                  xor          s11, a7, s1
                  or           a6, a2, t1
                  divu         s7, s2, a6
                  srli         s5, gp, 9
                  sll          s1, a5, s0
                  add          a3, s11, t2
                  mulhu        s11, a7, a1
                  rem          t4, s9, s2
                  sra          zero, t0, a2
                  c.sub        a4, a2
                  slt          t6, t6, s7
                  slti         t6, tp, 1151
                  remu         zero, t0, a5
                  sltiu        t0, a7, 713
                  lui          s6, 402034
                  c.li         t5, 28
                  mulhsu       t0, s10, a4
                  andi         ra, s0, -867
                  sltiu        t6, t6, -475
                  sra          s1, sp, a7
                  mul          zero, t4, ra
                  srl          s11, s3, a7
                  c.lui        t4, 28
                  andi         t2, s3, 41
                  c.srai       a0, 15
                  slli         s6, a2, 22
                  ori          s5, t3, -762
                  sll          t5, a3, a5
                  c.lui        t3, 31
                  sub          s10, a4, s10
                  c.srai       a3, 9
                  and          zero, t6, sp
                  srai         s8, zero, 5
                  divu         s3, sp, t2
                  sll          a4, s7, a0
                  c.xor        s1, s0
                  xor          t2, a1, gp
                  c.sub        a2, s0
                  remu         t3, a0, s11
                  srai         s5, a5, 30
                  rem          s9, s10, s9
                  mulhsu       a7, s3, a1
                  addi         t4, s4, -1206
                  nop
                  srl          s7, a7, s6
                  srli         s2, gp, 28
                  c.nop
                  slti         s0, s3, -1251
                  sltiu        a3, t6, 785
                  c.addi       t0, 2
                  srli         a4, a0, 12
                  c.srai       s1, 6
                  c.mv         a7, s11
                  add          a3, a2, a5
                  div          s4, s8, ra
                  c.or         s1, a3
                  divu         tp, a2, s8
                  xor          t6, s11, s6
                  c.and        a0, a3
                  mulhsu       s5, t1, a0
                  add          a3, s4, t2
                  c.andi       a4, -1
                  div          gp, s4, s2
                  mulh         s2, zero, s9
                  mulhsu       s1, a2, s11
                  xor          s0, a5, a0
                  srl          s0, a3, a0
                  c.li         s2, -1
                  sltiu        s11, s1, 431
                  mul          t5, s2, s0
                  c.nop
                  andi         a2, ra, 456
                  srli         t5, a6, 12
                  rem          a2, t0, s8
                  lui          t0, 629544
                  srl          t5, a1, a5
                  xori         ra, a5, -573
                  rem          s4, a0, a3
                  srai         a7, a1, 26
                  rem          a0, s1, s9
                  andi         a0, s3, -2028
                  c.li         s3, -1
                  c.andi       s1, 12
                  sltiu        s8, t6, 933
                  andi         s7, a1, 1916
                  mulhsu       tp, a0, t0
                  ori          s2, s11, -1794
                  c.sub        a0, s0
                  mulhu        s6, tp, t0
                  sll          s0, t5, t2
                  c.sub        s1, s1
                  c.mv         gp, s9
                  remu         s1, s2, a0
                  srl          s2, s9, s9
                  auipc        s11, 394274
                  slli         s11, t4, 6
                  and          a7, a7, s4
                  c.srli       a4, 22
                  or           a6, a4, s5
                  slt          t1, t5, a7
                  lui          t4, 219217
                  remu         t6, t4, a7
                  divu         s1, t0, s0
                  c.nop
                  sra          gp, s4, a2
                  add          a7, a1, s0
                  mul          s9, a2, a4
                  addi         t2, s2, -1039
                  c.slli       t6, 14
                  remu         s8, a6, s4
                  or           s7, t1, zero
                  andi         s2, tp, -1435
                  slt          s4, s11, a7
                  rem          s2, a2, a1
                  c.nop
                  addi         a3, s2, -1849
                  c.nop
                  sltu         s3, s2, ra
                  remu         a2, sp, a4
                  slli         s11, s6, 20
                  c.li         s4, -1
                  add          t6, t3, gp
                  div          s1, s11, s11
                  xor          s7, t1, s3
                  div          s7, gp, a1
                  slli         t6, s6, 21
                  c.sub        a0, s1
                  sltu         t1, t0, s10
                  addi         a0, a1, -1822
                  slli         t6, s9, 17
                  c.or         a0, a3
                  remu         t3, s0, t2
                  add          s2, s1, zero
                  mulhu        t5, a4, s1
                  c.addi       s1, -1
                  lui          s2, 676614
                  slti         ra, a7, -628
                  or           t4, a5, t6
                  divu         t3, s8, s2
                  xori         a4, s4, 732
                  div          t4, s4, s11
                  c.nop
                  mulhsu       s8, t1, s0
                  c.andi       a0, -1
                  c.addi       s9, 22
                  srai         s6, t4, 30
                  andi         zero, t1, -582
                  addi         gp, ra, -170
                  divu         s6, tp, s9
                  c.srli       s1, 7
                  c.sub        s1, s1
                  c.srli       a3, 5
                  sltu         s4, s6, s1
                  srl          zero, zero, s8
                  and          t1, ra, s9
                  and          t2, a3, tp
                  c.or         a2, a3
                  c.xor        s0, s0
                  srli         s5, zero, 4
                  c.and        a4, s1
                  remu         a2, s1, zero
                  c.lui        ra, 9
                  c.srai       s0, 28
                  c.srai       a3, 22
                  sltu         tp, tp, t5
                  c.addi       a6, -1
                  div          t1, s3, s2
                  ori          s1, s11, 594
                  sub          a0, tp, a6
                  c.slli       s4, 6
                  c.addi       gp, 5
                  c.srli       a4, 21
                  and          t0, t3, s7
                  slti         t0, ra, -1418
                  sub          a4, s10, s10
                  mulh         gp, t0, a7
                  c.xor        a3, a3
                  xor          s2, t2, ra
                  remu         s11, a5, s1
                  mulhsu       gp, a3, a3
                  sra          s5, s1, a1
                  c.or         a0, a5
                  c.slli       s2, 12
                  slli         a0, a0, 16
                  sltu         a2, t1, a2
                  nop
                  remu         t6, t1, t4
                  c.mv         s7, sp
                  c.addi       a0, 25
                  c.and        a0, a2
                  c.slli       a3, 27
                  ori          s9, s5, -2035
                  c.or         a4, a4
                  divu         gp, s1, s1
                  srai         t6, a6, 11
                  or           a0, a6, a1
                  mulh         tp, zero, s11
                  c.mv         s8, s7
                  sltu         ra, a4, ra
                  sltu         t4, s8, t1
                  xori         t1, a4, 755
                  c.srai       a4, 10
                  sltiu        s7, s5, 357
                  srli         ra, t4, 11
                  sltiu        s8, s6, 1186
                  c.nop
                  sltiu        s9, a2, 1213
                  c.slli       t5, 29
                  remu         s6, s9, tp
                  slti         a0, s8, 1450
                  andi         a7, s1, -1934
                  sra          a7, t0, s6
                  and          a0, a2, s8
                  nop
                  rem          ra, t6, a5
                  srli         s5, t4, 18
                  mulhu        s10, a0, s5
                  c.srai       s0, 16
                  rem          a0, s3, s5
                  sltiu        s5, sp, -1020
                  mul          s11, a4, a6
                  xori         zero, t0, 1524
                  andi         s2, gp, 1693
                  c.addi       s0, -1
                  sltiu        a4, a1, 1387
                  sll          s8, a1, t4
                  c.or         a0, a0
                  andi         t1, a3, -1446
                  c.xor        a3, a0
                  c.addi       a6, 20
                  mulhsu       s10, sp, zero
                  slti         a3, t5, -1683
                  rem          s0, a4, a2
                  sra          a7, a5, a7
                  andi         s2, sp, -660
                  remu         s4, tp, s3
                  lui          s6, 779875
                  addi         s1, s7, -1840
                  xori         s4, a4, -1971
                  c.li         a6, -1
                  add          s0, t1, t4
                  c.slli       s7, 15
                  slti         a4, s2, 1326
                  c.sub        s0, a4
                  xor          a4, a2, s10
                  c.lui        t2, 24
                  srl          t2, a3, a0
                  sll          s6, a0, s8
                  srli         ra, t5, 0
                  c.li         s0, -1
                  c.nop
                  c.nop
                  c.mv         s4, a1
                  c.mv         s0, t2
                  slti         t5, a4, 1462
                  divu         a0, gp, a6
                  nop
                  c.slli       ra, 2
                  c.slli       t3, 25
                  c.andi       a3, 7
                  mul          a0, ra, s11
                  c.slli       tp, 18
                  c.add        a3, s7
                  lui          gp, 872415
                  c.and        a4, s0
                  sltiu        s1, s11, -571
                  c.or         a0, s1
                  c.andi       a0, 9
                  sub          s10, s5, zero
                  remu         a6, t0, sp
                  c.srli       a3, 28
                  and          s7, a4, a0
                  add          a7, s11, t3
                  c.mv         t4, a6
                  c.li         a3, -1
                  addi         s7, zero, 352
                  c.or         s1, a1
                  divu         s5, a4, gp
                  srl          s7, s9, t4
                  c.or         s0, a5
                  rem          tp, ra, a2
                  div          t2, s3, a4
                  remu         s9, s4, t1
                  addi         a3, t2, 622
                  sltu         s3, s4, a5
                  sltiu        gp, s11, 790
                  srl          t4, t4, tp
                  sll          s3, a3, t1
                  c.srli       s0, 17
                  slli         s11, ra, 4
                  srl          s2, s9, a7
                  slli         s7, a0, 14
                  remu         t1, tp, s0
                  c.nop
                  lui          s2, 276269
                  mulh         s3, s0, t6
                  c.nop
                  div          a6, s0, t6
                  c.xor        s1, a5
                  div          s6, s2, s11
                  mulh         ra, s10, s0
                  div          s11, zero, s2
                  c.nop
                  c.or         a0, a0
                  sll          s1, s4, a0
                  add          s0, s10, a3
                  c.li         ra, 3
                  auipc        s1, 17063
                  slti         a4, s0, 1348
                  andi         t3, a1, -957
                  c.srli       a3, 1
                  sub          gp, zero, s11
                  slli         s11, s4, 12
                  ori          a0, s7, 626
                  xor          t1, s7, gp
                  c.add        s0, t3
                  c.xor        s0, s1
                  slt          s6, a3, s3
                  mulhsu       gp, s1, s10
                  and          s8, s6, tp
                  c.lui        s4, 31
                  xor          t0, s1, t5
                  c.sub        a2, s0
                  and          tp, t5, t1
                  c.slli       s5, 10
                  c.srli       a4, 26
                  add          s2, s0, s3
                  srli         s11, t0, 0
                  divu         s4, t0, s7
                  xori         s9, s4, -219
                  sltiu        s2, a6, -1351
                  srai         t5, ra, 30
                  c.and        a3, s0
                  c.li         s2, 2
                  c.xor        a2, a0
                  xor          a4, ra, a7
                  sll          t4, gp, t4
                  andi         a4, s11, -1445
                  mulh         t5, a1, s8
                  c.addi       s7, 2
                  addi         s10, a1, -655
                  sll          zero, s7, a1
                  sub          gp, t1, sp
                  nop
                  slli         a4, a5, 6
                  andi         t2, t0, -1348
                  ori          t6, s11, -1428
                  slti         s2, t3, 630
                  mulh         zero, a0, s1
                  srai         t4, a4, 7
                  c.andi       a3, -1
                  c.addi       gp, -1
                  slti         s2, a3, 1896
                  c.nop
                  srai         tp, s6, 4
                  mulhu        a7, a0, t3
                  sltiu        s2, s8, -1601
                  c.add        gp, gp
                  c.and        s1, a1
                  c.srli       a3, 22
                  xori         a0, a3, -1992
                  c.srai       a2, 17
                  srai         zero, t2, 26
                  c.andi       s0, -1
                  addi         t4, t1, -723
                  sll          s2, t1, s5
                  addi         t2, s11, 2
                  remu         s4, s8, a4
                  and          s11, t2, a0
                  c.mv         t6, t6
                  sltiu        s11, s2, -1384
                  xor          a6, t0, a3
                  c.mv         tp, t2
                  remu         a7, a1, a6
                  divu         s2, a0, t3
                  sltu         a2, t2, s10
                  mulhu        a6, s9, a2
                  remu         gp, a3, a2
                  lui          a6, 640828
                  c.sub        a0, a0
                  auipc        t4, 579646
                  sll          a6, s10, s3
                  and          s9, t2, t0
                  remu         gp, sp, t1
                  sub          gp, sp, t1
                  srl          s5, a0, a1
                  c.sub        s0, a0
                  mulh         s11, t5, a7
                  nop
                  andi         t1, a6, -1778
                  slti         a6, s10, 275
                  xori         a6, t4, -1457
                  sra          ra, a3, a5
                  slti         s10, s9, -1271
                  slli         a3, ra, 8
                  mulhsu       t5, t4, t0
                  xori         gp, a5, 1912
                  or           s2, a0, s0
                  nop
                  c.li         s10, 22
                  and          s1, s8, s1
                  srl          t6, s6, a0
                  c.add        t2, ra
                  ori          a6, t4, 1000
                  c.addi       t4, -1
                  slli         a6, s2, 5
                  div          t6, s11, t3
                  slli         t2, s10, 4
                  divu         t2, a7, s8
                  or           a0, s5, a7
                  rem          t1, s11, a7
                  rem          gp, t4, t6
                  mulh         gp, s2, t6
                  andi         s5, t3, -1192
                  c.nop
                  xor          s0, s1, gp
                  c.li         s9, 20
                  c.lui        t4, 23
                  c.add        t1, s8
                  mul          a3, gp, s2
                  c.or         a4, s0
                  c.andi       a0, 24
                  c.or         a3, s1
                  slt          a3, a2, s9
                  c.srli       s0, 6
                  xori         ra, s4, -981
                  xori         a3, gp, -375
                  c.addi       t4, -1
                  add          t0, s10, t4
                  mul          s8, sp, a5
                  c.andi       s1, 18
                  srai         t4, gp, 5
                  sll          s9, s11, a3
                  sub          a7, t0, t1
                  srli         s4, sp, 6
                  xor          a4, s3, s10
                  slt          s4, a3, s7
                  slti         s9, s7, -28
                  xori         t6, s11, 508
                  mulhsu       s9, ra, s2
                  nop
                  c.srai       a2, 29
                  c.li         s4, 3
                  sltiu        s10, a1, -1214
                  slli         t5, s8, 15
                  srl          a4, s7, t6
                  sll          a4, s5, ra
                  mulhsu       a4, s5, s9
                  andi         s0, s2, 1097
                  c.srli       s1, 11
                  xor          a7, s7, s5
                  sltu         t4, a1, s4
                  and          a2, a5, zero
                  sub          gp, a7, t5
                  add          s2, a7, s10
                  sltu         s1, t1, t5
                  c.andi       a2, 4
                  mul          t2, s0, t5
                  c.li         s2, 5
                  mulhsu       s0, s3, t5
                  and          gp, a5, gp
                  mulh         s4, t3, a4
                  rem          gp, t6, a0
                  auipc        tp, 597981
                  auipc        s10, 890110
                  c.add        t3, t0
                  mul          t1, tp, s1
                  and          s1, a7, s2
                  xor          s10, s0, t5
                  slti         s2, t1, 2006
                  mulhu        t6, a1, t4
                  c.and        s1, s0
                  lui          s10, 243653
                  c.addi       s1, 3
                  div          t2, a3, a4
                  sltu         s4, t3, s0
                  srl          ra, a0, s9
                  slt          s7, a1, tp
                  xori         s9, s7, 1814
                  c.lui        t4, 8
                  c.sub        a0, a5
                  xor          s3, gp, a1
                  sll          ra, t2, t2
                  mulhu        s10, s9, s0
                  c.mv         t2, s11
                  mulhsu       a7, s5, gp
                  rem          s1, s10, s10
                  sltu         s8, a6, t1
                  nop
                  mul          t1, a0, t6
                  andi         gp, t6, -760
                  ori          a4, s0, -1370
                  sltiu        a0, a5, -1930
                  c.lui        tp, 7
                  sub          s5, ra, s2
                  and          s9, s0, s4
                  srai         a4, t3, 20
                  divu         a0, gp, a1
                  div          s7, s8, sp
                  srli         ra, s6, 17
                  c.add        a4, t4
                  c.srai       a3, 22
                  srai         t3, s4, 1
                  c.or         a3, s1
                  srl          gp, s8, a5
                  slti         a7, ra, -1087
                  srl          a2, s7, s6
                  sltu         s5, t4, zero
                  srai         s9, tp, 24
                  c.li         s2, -1
                  and          s1, t6, t4
                  c.srai       a0, 25
                  c.xor        s1, a5
                  c.or         a0, a5
                  addi         a0, a6, 372
                  divu         s0, a2, s11
                  sll          s8, s7, a3
                  auipc        t2, 560149
                  ori          t3, a5, 1853
                  sub          a0, gp, t1
                  divu         s7, s2, a3
                  rem          s5, zero, a5
                  div          gp, a6, t0
                  c.addi       ra, -1
                  rem          s4, s3, gp
                  slti         t0, gp, -304
                  slli         s8, sp, 9
                  srl          a7, s0, s3
                  mulhu        t1, a2, a3
                  sra          s1, t0, tp
                  addi         t1, s0, 1705
                  c.sub        s1, a3
                  sltu         gp, s10, s2
                  c.and        a2, a5
                  addi         a2, a3, 1877
                  c.addi       s10, -1
                  slt          t2, s11, t3
                  c.add        s4, a0
                  sub          s4, t1, a2
                  remu         t1, s11, s3
                  divu         s11, s8, s5
                  remu         t1, s7, a5
                  c.add        s9, a0
                  rem          a2, s0, t0
                  c.andi       a2, -1
                  and          gp, s2, s9
                  nop
                  sub          tp, s0, a3
                  addi         t5, tp, -1526
                  rem          s4, t4, sp
                  add          s0, s9, t5
                  sll          s7, t0, a5
                  srai         a0, s3, 11
                  divu         t1, s10, a6
                  c.li         t6, 23
                  and          tp, ra, s3
                  c.nop
                  c.or         a0, a1
                  c.nop
                  mulh         gp, s9, s7
                  auipc        a6, 484076
                  slt          s1, gp, a5
                  c.sub        a3, a3
                  c.addi       s5, -1
                  c.addi       s2, -1
                  mulh         t6, s3, zero
                  nop
                  c.li         tp, -1
                  divu         s3, t0, a0
                  c.li         s5, -1
                  c.srli       s1, 12
                  mulhu        a3, s4, zero
                  rem          a6, s10, s11
                  or           s3, t6, a3
                  ori          s5, t2, -837
                  sltiu        t1, t0, 1044
                  or           s10, gp, a0
                  c.srai       a3, 1
                  c.andi       s1, 16
                  auipc        t0, 1003400
                  lui          s0, 27830
                  mulhsu       s10, s5, a6
                  sll          a6, a5, t2
                  andi         zero, gp, -304
                  andi         s2, ra, 116
                  add          t1, tp, s11
                  c.andi       a0, 29
                  c.and        s1, a0
                  xori         a6, a5, 211
                  mulhu        t5, s5, a6
                  nop
                  lui          t4, 538876
                  xori         a3, a5, 600
                  addi         zero, t1, -64
                  rem          s10, t3, a7
                  sltiu        a0, s9, -1008
                  sltiu        s2, t6, 1946
                  sltiu        a2, s5, 1343
                  c.nop
                  and          ra, s8, s7
                  or           t4, t4, t3
                  c.andi       a4, 8
                  c.srli       a3, 18
                  slt          t3, a4, a5
                  c.addi       s9, 1
                  and          gp, s10, a3
                  mulh         s4, t0, s9
                  slli         s0, t2, 6
                  xori         s11, s4, 1763
                  c.srli       a4, 2
                  slt          a2, s3, t0
                  c.xor        a3, a5
                  c.or         s1, a0
                  mulh         a6, tp, s2
                  add          a0, s10, s5
                  auipc        s11, 373514
                  sltiu        gp, s5, 665
                  srli         s6, a2, 5
                  slti         a3, a6, -1187
                  mulhu        a7, s4, a2
                  lui          a4, 390711
                  c.srai       s1, 8
                  srai         s8, s0, 14
                  c.addi       s9, 19
                  auipc        a0, 927479
                  slti         tp, a6, 620
                  ori          s2, s2, 772
                  add          t1, a5, s11
                  slti         t4, a1, -1256
                  c.li         s9, -1
                  auipc        a3, 729950
                  remu         a6, s10, a2
                  auipc        s11, 730872
                  lui          t4, 156732
                  c.srai       a4, 10
                  mulhu        a3, t6, s9
                  sra          t1, t1, a3
                  c.mv         s9, a5
                  mulh         a6, s4, s9
                  remu         s1, s0, ra
                  addi         s1, ra, -1708
                  andi         a7, s11, 125
                  mulhu        gp, t1, s10
                  or           tp, a7, t5
                  c.andi       a3, 2
                  slti         s5, s1, 310
                  mulhu        s2, t5, a5
                  xori         s0, s11, 1627
                  div          s2, s0, s6
                  sub          s8, s4, s8
                  c.and        s1, a4
                  mul          s10, s1, a1
                  c.addi       a7, 23
                  mulhsu       t2, a5, a3
                  c.srli       s1, 25
                  c.or         s0, a5
                  c.sub        a3, a2
                  add          s5, s11, t4
                  add          t0, s11, s2
                  sub          s5, a2, s9
                  mulh         tp, s1, t0
                  or           t1, t0, gp
                  c.addi       a4, -1
                  remu         a6, zero, s3
                  c.mv         s7, s10
                  mul          a4, s8, tp
                  sll          ra, ra, s10
                  divu         a6, a0, s0
                  c.xor        s1, s0
                  c.sub        a0, a3
                  slt          s0, s4, s11
                  rem          gp, a3, s11
                  addi         s10, ra, 830
                  c.or         s0, a2
                  addi         s3, s8, -1292
                  c.mv         tp, a0
                  nop
                  xori         tp, a6, -71
                  slti         s3, sp, -869
                  c.xor        a4, a4
                  addi         ra, s5, -1605
                  slti         gp, s9, -1957
                  c.srli       a4, 2
                  and          s9, s9, tp
                  c.and        a4, s1
                  c.li         t3, -1
                  div          s1, a3, zero
                  srli         a7, a2, 24
                  addi         s7, ra, -607
                  addi         a3, sp, -1
                  c.srli       a2, 29
                  ori          a7, sp, -1434
                  lui          a4, 1035973
                  c.addi       t3, 18
                  or           ra, t5, t4
                  mulhu        s7, a1, t2
                  slti         zero, t5, -741
                  mulhsu       tp, s11, s11
                  sltiu        s8, a1, -1179
                  c.srai       a2, 30
                  c.nop
                  c.srli       a3, 24
                  lui          a4, 490084
                  c.slli       s5, 6
                  xori         s6, tp, -1731
                  slt          ra, t2, sp
                  nop
                  c.addi       t5, 21
                  and          s2, s2, s10
                  ori          a6, t5, -396
                  sltiu        zero, s3, 1951
                  ori          t6, a5, -690
                  c.mv         t3, sp
                  srli         t5, s2, 22
                  lui          a0, 665345
                  c.xor        a2, a1
                  sll          a4, t5, a7
                  addi         t0, a7, 1718
                  mulhu        s4, s8, a0
                  c.srli       a2, 26
                  c.srli       a3, 15
                  sra          s10, s5, s11
                  c.lui        s6, 4
                  c.li         t2, 15
                  div          gp, s4, s9
                  slli         zero, a6, 8
                  sltu         t5, s0, t2
                  c.xor        s0, s0
                  remu         s6, t5, s9
                  srai         s11, s2, 18
                  and          s1, sp, s3
                  srai         t4, a6, 28
                  sltu         s8, a3, s8
                  rem          t5, a6, a4
                  nop
                  and          a3, gp, t5
                  sll          s3, t5, sp
                  mulh         s2, s6, t3
                  c.li         s5, 15
                  c.mv         s1, a7
                  sub          t3, s7, s7
                  rem          tp, t2, t6
                  mulh         s2, s4, s8
                  lui          a2, 631629
                  c.and        a0, s0
                  srli         t2, s11, 0
                  ori          t5, s6, -867
                  sltiu        s1, t6, -1351
                  xor          s11, t1, s11
                  srli         gp, s8, 28
                  auipc        a4, 777699
                  c.or         a0, a0
                  sltiu        s7, t1, -1199
                  c.andi       a3, 7
                  slt          ra, tp, s10
                  and          s3, s8, ra
                  sub          s3, s3, s2
                  c.lui        a3, 2
                  auipc        t1, 7902
                  srli         a3, a0, 21
                  div          t5, a3, a4
                  sra          s5, a1, sp
                  c.and        a3, a1
                  srl          t1, t5, s2
                  xor          s8, t0, t4
                  add          s10, t0, a6
                  xori         s8, s3, -541
                  c.li         t5, -1
                  c.srli       s0, 29
                  sra          a6, t5, s4
                  remu         zero, a7, s6
                  slli         s4, a1, 23
                  xor          s9, s9, t1
                  lui          s10, 392250
                  c.slli       tp, 7
                  remu         t3, t3, s0
                  slti         s7, s5, -1991
                  xori         a2, t3, -760
                  slli         s11, a0, 29
                  c.slli       s4, 18
                  mulh         a3, s4, gp
                  andi         s2, a3, 1241
                  c.li         a3, 31
                  sll          s3, s0, s9
                  add          s7, a4, a2
                  c.add        s11, a5
                  lui          s2, 709413
                  c.add        tp, s10
                  c.xor        s1, a4
                  nop
                  c.lui        gp, 3
                  ori          a7, sp, -1245
                  c.lui        t4, 6
                  sltiu        t4, tp, -372
                  add          t6, tp, t2
                  c.xor        a2, a4
                  andi         tp, tp, -1325
                  addi         s7, s3, 1475
                  srl          t0, a4, t3
                  sll          a4, zero, s11
                  c.lui        s10, 17
                  mul          ra, s3, t0
                  ori          zero, s4, 1180
                  add          t6, ra, gp
                  lui          s7, 692111
                  div          s5, t0, tp
                  div          ra, s8, a1
                  sra          t2, s1, s9
                  c.li         s2, -1
                  c.add        a6, t0
                  c.nop
                  srl          zero, t3, t4
                  srl          zero, s5, a1
                  c.andi       s0, 17
                  auipc        a2, 941818
                  sltiu        t5, t1, -578
                  addi         s2, a5, -110
                  xori         s2, t1, -2019
                  rem          ra, a0, s8
                  add          a6, s6, s9
                  c.addi       s9, 30
                  and          a2, t6, s6
                  or           tp, s6, s8
                  c.sub        s1, s0
                  addi         s6, sp, -236
                  c.addi       a6, 31
                  c.and        a0, a3
                  c.srai       a3, 12
                  add          a4, a5, t4
                  remu         s11, a3, gp
                  and          s9, t5, s0
                  lui          a0, 636999
                  c.sub        a0, a5
                  srl          s3, s0, s7
                  mulhu        gp, s10, t0
                  sub          t4, t5, s0
                  c.srai       a2, 31
                  and          s1, t0, s3
                  rem          s0, t2, t4
                  c.addi       s5, -1
                  c.srli       s1, 17
                  add          gp, t2, a5
                  c.xor        a3, a2
                  srai         zero, s6, 27
                  c.andi       s0, 13
                  addi         t3, s9, 1829
                  nop
                  c.addi       s3, -1
                  mul          s9, a3, t4
                  slt          ra, t6, s1
                  c.li         a4, -1
                  sll          a0, a7, a0
                  slli         t4, s1, 20
                  slt          a7, a4, gp
                  divu         s2, s10, s6
                  c.srai       s0, 19
                  c.add        s9, t2
                  xor          t2, s0, sp
                  rem          a0, s11, s9
                  sltu         s11, s2, zero
                  mulhsu       t0, t2, s4
                  c.srli       s1, 24
                  or           s8, t4, a6
                  slli         zero, s4, 1
                  sub          s9, s5, t1
                  srl          a7, s1, a4
                  ori          a4, a3, -861
                  andi         t2, t2, 1925
                  div          t1, a0, sp
                  mul          s11, s3, t2
                  andi         s2, ra, -747
                  c.or         a2, a1
                  c.slli       t5, 7
                  c.nop
                  srli         a6, s5, 15
                  srli         s2, s4, 25
                  c.andi       s0, 20
                  c.lui        a3, 26
                  ori          t3, s1, 69
                  and          t5, s7, s4
                  c.sub        a4, s1
                  c.sub        a4, s0
                  c.srli       a3, 14
                  nop
                  sub          s7, a2, s4
                  and          a6, ra, s7
                  mul          s3, s0, t5
                  mulh         a0, t1, t0
                  nop
                  c.srli       a0, 15
                  nop
                  or           t2, s7, t6
                  c.addi       s10, 2
                  nop
                  sub          a0, t3, a5
                  c.srai       a3, 27
                  xori         s9, s5, -1045
                  ori          s4, zero, 1443
                  addi         s1, s3, 77
                  nop
                  remu         tp, s4, ra
                  mul          s11, s4, a5
                  c.or         a3, a1
                  remu         s2, s3, s0
                  slli         s2, ra, 28
                  slli         a3, a3, 9
                  addi         s4, s7, 211
                  add          a0, s7, s11
                  c.and        s1, a4
                  c.add        s4, tp
                  c.srli       a4, 19
                  c.mv         t6, ra
                  rem          t6, s0, gp
                  add          s6, a2, t1
                  xori         a0, s8, -1550
                  sltu         t6, a0, t6
                  sll          a6, a2, s5
                  nop
                  c.srai       a3, 9
                  div          a0, a6, a6
                  sltu         s0, a1, t3
                  mulhsu       a2, a0, t2
                  c.addi       t5, -1
                  div          s7, a5, t5
                  sra          zero, t2, s3
                  addi         t4, t0, 829
                  nop
                  c.srai       s1, 22
                  add          zero, ra, gp
                  c.srli       s1, 1
                  c.sub        s1, a1
                  c.addi       gp, -1
                  c.srli       a3, 10
                  c.srai       a3, 9
                  xor          t1, a5, t4
                  c.lui        a6, 19
                  c.or         a4, s0
                  c.add        t1, a7
                  c.or         s0, a0
                  or           ra, a2, s4
                  sltu         ra, s11, sp
                  xor          s5, s11, t4
                  xori         t0, t6, 265
                  c.srli       a2, 16
                  mulh         t4, a6, a6
                  c.srai       a3, 11
                  c.sub        s0, a4
                  c.slli       s0, 20
                  c.xor        a4, a0
                  c.lui        s2, 18
                  ori          s6, t3, -1851
                  slt          t3, tp, a6
                  remu         s1, t6, s2
                  sltu         s10, s9, a0
                  slti         s2, a5, 1706
                  remu         s8, s5, t6
                  srl          a0, s11, a3
                  nop
                  rem          t5, a5, s0
                  andi         s2, t4, 2027
                  divu         t1, a3, a4
                  divu         s7, gp, s7
                  c.nop
                  c.and        a0, s1
                  c.mv         s3, t0
                  c.li         s9, -1
                  mulhsu       a3, ra, s6
                  c.lui        t2, 14
                  sltu         t2, s3, t1
                  slti         s8, s2, 88
                  add          s0, s9, s6
                  c.add        s1, a1
                  remu         t3, a2, t6
                  sub          a6, s2, sp
                  c.nop
                  mul          s3, t6, a5
                  srl          a4, s10, a0
                  c.addi       a6, 9
                  mul          t4, a7, a7
                  sll          s4, s5, sp
                  c.andi       s1, -1
                  srli         gp, t3, 27
                  srli         s11, s2, 4
                  remu         s8, s5, a3
                  mul          a0, t1, a5
                  srli         t4, s8, 7
                  c.li         s10, 13
                  c.nop
                  addi         s0, s0, -35
                  c.add        s11, s9
                  c.sub        a4, s0
                  nop
                  srl          s1, t5, a7
                  div          s2, t6, s5
                  divu         s11, s1, s11
                  andi         a4, a7, 1011
                  sltu         s0, t0, s2
                  c.lui        s0, 27
                  c.and        s0, a1
                  sra          t6, t4, s11
                  srl          s6, s11, s0
                  srli         zero, s2, 10
                  mulh         s9, t5, a7
                  mulh         ra, s9, t0
                  xor          zero, sp, tp
                  nop
                  srli         a6, sp, 17
                  c.addi       tp, -1
                  c.add        s1, a5
                  c.sub        a4, a0
                  nop
                  slli         t0, s10, 10
                  sra          zero, a3, a1
                  c.sub        s1, a5
                  c.or         a2, a2
                  mulhsu       s2, zero, s0
                  srli         s1, gp, 17
                  sltu         a7, t6, zero
                  c.li         gp, 5
                  andi         tp, gp, -1113
                  c.xor        a0, s0
                  sll          t5, s7, a2
                  auipc        t4, 420910
                  slli         s11, s0, 12
                  nop
                  c.lui        s3, 21
                  c.srli       s1, 9
                  c.add        a4, sp
                  xori         t4, t3, -1587
                  lui          t6, 880493
                  c.xor        s1, a4
                  auipc        a6, 366822
                  remu         a2, ra, s3
                  slli         ra, s1, 17
                  mul          a6, sp, a5
                  sra          s1, s7, a5
                  c.li         a6, -1
                  c.slli       a2, 4
                  lui          a6, 125797
                  div          a7, s7, a0
                  c.andi       a4, 7
                  c.sub        s1, a4
                  c.nop
                  c.add        s10, t0
                  c.xor        s0, a3
                  mulh         t6, s9, sp
                  divu         s1, t5, t0
                  c.slli       t4, 16
                  xori         gp, sp, -385
                  c.andi       a2, -1
                  c.or         s1, a3
                  c.andi       s0, 9
                  c.andi       a2, 18
                  c.andi       a4, -1
                  remu         t3, t5, tp
                  c.and        a0, a2
                  srl          a2, a6, a3
                  c.addi       s1, -1
                  mul          a0, s6, a5
                  srl          a0, a2, a3
                  auipc        s1, 563244
                  add          t4, tp, a4
                  c.add        s6, s3
                  c.xor        a4, a5
                  c.li         a2, 11
                  c.andi       a4, 30
                  sltiu        s5, tp, 25
                  andi         gp, t4, -726
                  div          a4, a7, tp
                  lui          s2, 654588
                  sltu         t6, s6, s5
                  c.lui        a7, 12
                  sll          ra, s11, a3
                  c.sub        s0, a0
                  c.nop
                  c.or         a4, a2
                  slti         tp, a6, 1862
                  c.sub        a2, s0
                  and          t6, a5, t2
                  remu         s8, t6, a4
                  or           s11, tp, t5
                  c.add        t5, a0
                  sltiu        gp, s8, -1541
                  xor          t2, s2, s11
                  divu         a4, s4, tp
                  c.and        a2, a1
                  xori         s3, a0, -573
                  remu         gp, a5, tp
                  srli         s9, gp, 18
                  xori         t3, a1, 1920
                  srl          s8, t3, t6
                  slti         t2, a3, 1678
                  sltiu        t6, a3, -289
                  sra          ra, s11, s8
                  sub          gp, s9, s9
                  c.srai       a0, 4
                  c.andi       s0, -1
                  slti         a7, t0, 1585
                  mulh         s0, s10, s10
                  c.or         a3, a0
                  mul          s7, zero, s9
                  mul          s1, s3, zero
                  c.li         t1, 13
                  divu         t6, s2, zero
                  c.srli       a4, 20
                  mul          gp, t0, s0
                  sltu         gp, t6, s6
                  c.and        s1, a4
                  c.nop
                  auipc        s2, 533547
                  c.andi       a0, -1
                  auipc        a3, 1040100
                  c.add        t6, a4
                  sub          s0, t2, s0
                  c.add        s5, s6
                  c.mv         t6, t6
                  slli         s11, s4, 8
                  c.or         a4, a0
                  srai         t3, a6, 5
                  srli         s4, s9, 28
                  slti         a2, s9, -1602
                  c.lui        s4, 20
                  c.mv         t6, gp
                  c.andi       a4, 11
                  sltu         a2, s11, a1
                  c.xor        a0, s1
                  sltiu        s2, a0, 655
                  xori         gp, s3, -752
                  ori          t3, t3, 451
                  div          t6, a4, s8
                  xor          s5, s10, t3
                  or           t2, a3, a6
                  sltu         zero, tp, zero
                  srli         a4, a5, 17
                  slt          s1, s3, a1
                  srai         a7, t6, 25
                  add          s0, s6, s6
                  c.srli       a0, 5
                  srai         t2, t5, 16
                  c.and        a0, a0
                  c.mv         a0, a5
                  sll          t5, s0, ra
                  c.srli       a0, 6
                  addi         s10, s0, 205
                  div          t0, a2, t2
                  xori         gp, s5, 1263
                  sll          t3, s3, a5
                  rem          tp, s6, a0
                  sra          t1, s4, s11
                  slli         t4, a1, 23
                  c.slli       s2, 31
                  slt          t4, gp, a4
                  mulhu        s10, a4, s1
                  rem          s3, tp, tp
                  c.li         ra, -1
                  c.xor        a0, a0
                  srli         s6, t3, 27
                  ori          t6, t1, -2037
                  ori          s7, s1, 971
                  lui          t6, 507755
                  slti         s4, s3, -508
                  c.sub        a4, a3
                  c.lui        t6, 27
                  c.add        a7, a2
                  c.or         s1, a2
                  c.li         s4, 4
                  addi         a7, t0, -1939
                  c.lui        a0, 28
                  c.srai       s1, 12
                  and          s11, t6, a1
                  addi         t1, s4, -1094
                  mulhsu       s4, a4, s10
                  srai         s1, gp, 14
                  c.sub        a3, a2
                  or           gp, t5, s11
                  remu         s5, s3, a1
                  c.nop
                  slt          t0, s10, s4
                  c.addi       s2, -1
                  c.nop
                  c.nop
                  c.addi       s6, 2
                  lui          a0, 900284
                  slt          a4, s7, s7
                  sra          t1, zero, s9
                  c.andi       s0, -1
                  sltiu        t6, a6, 924
                  mul          s7, s9, s0
                  c.mv         s2, sp
                  sltiu        a6, ra, -1363
                  c.and        s1, a5
                  srli         s7, tp, 0
                  mulh         s7, ra, a0
                  sltu         a3, t4, s10
                  srli         gp, a3, 0
                  sll          t4, t5, s8
                  div          t4, s2, s5
                  c.xor        a3, a5
                  c.nop
                  slti         a2, s0, 1917
                  c.lui        t5, 28
                  and          s6, s6, a7
                  srli         t6, gp, 30
                  xori         t0, t6, -399
                  addi         s11, t0, 1062
                  div          s9, t3, a0
                  sll          s11, s7, s10
                  ori          tp, s7, 886
                  c.or         a4, s1
                  sltu         t0, s10, t1
                  c.slli       gp, 14
                  sub          t1, s3, s2
                  c.addi       t3, -1
                  c.addi       a7, 18
                  andi         a2, s4, 175
                  rem          t2, s3, t6
                  c.or         a3, a4
                  c.mv         t0, s1
                  div          s1, t5, zero
                  c.add        s8, a7
                  c.and        a4, s0
                  srai         a2, s8, 26
                  mulh         gp, t2, s6
                  slti         s4, ra, 687
                  c.slli       s8, 25
                  xor          s11, a4, t1
                  mul          s1, s1, zero
                  slti         gp, t3, 1911
                  mulhu        s0, t4, a0
                  xori         s3, s3, -832
                  addi         t1, s2, -1508
                  c.slli       a3, 25
                  slti         s0, t0, -1551
                  div          a2, s10, s7
                  sltu         s6, s4, t4
                  remu         s4, a4, a7
                  c.andi       s0, -1
                  c.xor        s1, a3
                  slt          s1, sp, s11
                  c.and        s1, a5
                  or           a7, t4, a2
                  slli         t0, t6, 13
                  c.srai       s1, 1
                  c.andi       a0, 16
                  c.andi       s0, -1
                  srai         t1, s8, 0
                  rem          s2, s1, a6
                  sub          s5, s3, t5
                  c.srli       a0, 28
                  xori         s7, s6, -606
                  and          s1, a3, s7
                  auipc        s11, 500846
                  addi         gp, t5, -295
                  mulhu        s3, t4, t6
                  slli         s1, a2, 14
                  c.addi       s1, -1
                  c.srai       a3, 21
                  or           tp, ra, s6
                  remu         ra, a7, s6
                  c.li         s3, 7
                  remu         a3, a5, s0
                  c.mv         tp, a7
                  c.mv         ra, a1
                  add          a4, t4, a6
                  add          s4, a6, a5
                  c.add        t2, s10
                  srl          s11, t0, s1
                  div          tp, t0, a3
                  slli         tp, s8, 30
                  c.or         a0, a5
                  c.addi       s9, 9
                  c.nop
                  c.srai       a3, 10
                  remu         s8, ra, s2
                  div          a0, s9, a2
                  c.lui        t4, 5
                  xor          a4, t0, t2
                  ori          t2, t5, 1692
                  c.or         s0, a0
                  c.nop
                  c.slli       a4, 25
                  srli         t4, t0, 17
                  auipc        s8, 757142
                  c.nop
                  addi         a7, a4, 492
                  mulhu        t2, a2, s4
                  remu         a0, s4, s5
                  or           s7, a3, s0
                  divu         s2, s0, t0
                  mulhsu       t6, t0, t5
                  or           gp, t3, s2
                  c.andi       s0, 15
                  add          s9, a6, a1
                  c.li         tp, -1
                  c.lui        ra, 17
                  rem          s1, a0, s2
                  sltiu        t1, a7, 446
                  c.nop
                  c.li         t5, 24
                  mul          a7, t0, s0
                  c.slli       s3, 29
                  c.sub        a0, a2
                  c.srai       s0, 3
                  c.xor        a0, s1
                  mul          s2, s3, s6
                  slli         s9, s9, 26
                  c.nop
                  c.nop
                  sll          s10, s7, a2
                  sltiu        tp, s6, -1734
                  or           a4, t0, zero
                  xori         a3, a1, 361
                  c.addi       s5, 12
                  sub          t5, a2, s2
                  c.xor        s1, a0
                  c.sub        a3, a5
                  srai         s5, t4, 6
                  sub          t5, a0, a3
                  add          t1, t6, sp
                  c.add        t1, a4
                  sra          s5, s8, a5
                  srli         zero, a2, 26
                  slt          s1, a4, a3
                  c.srai       a2, 25
                  ori          s0, s2, 257
                  c.lui        s7, 16
                  ori          t1, s10, 273
                  c.andi       a0, 5
                  div          t1, s1, sp
                  c.and        a0, s1
                  sra          tp, a1, t1
                  srai         a4, s5, 18
                  add          t2, ra, gp
                  c.xor        a0, a4
                  sll          a3, sp, s0
                  sub          a4, sp, t5
                  mulhsu       a7, zero, a1
                  c.nop
                  lui          gp, 242439
                  c.li         a3, -1
                  slli         ra, s3, 18
                  sll          t6, t1, zero
                  addi         s3, t1, 812
                  div          s6, s0, sp
                  c.lui        t1, 14
                  c.srai       s1, 19
                  c.or         a0, a2
                  c.mv         s9, s10
                  div          a0, zero, t3
                  srl          t0, s1, s7
                  sub          a7, s11, s5
                  srai         t5, s2, 4
                  c.srai       a3, 7
                  sub          s5, s6, s2
                  rem          s9, s11, t0
                  c.sub        a0, a2
                  c.xor        s0, s1
                  addi         s4, a2, -541
                  c.addi       ra, 23
                  divu         t0, s10, sp
                  xori         a7, sp, 2025
                  auipc        s9, 935884
                  c.add        a4, a7
                  and          s2, a6, a3
                  mulh         a7, a3, a4
                  mulhsu       s5, a4, s2
                  c.srli       a4, 3
                  slti         tp, s10, 43
                  xor          t5, a2, s3
                  c.srli       a3, 22
                  sll          s0, s3, a7
                  srli         tp, s5, 6
                  xori         t5, t3, -484
                  c.addi       s3, -1
                  c.nop
                  rem          t6, t4, s2
                  lui          s0, 274173
                  srai         a6, t3, 2
                  c.addi       a4, 22
                  remu         t5, s3, a5
                  nop
                  c.andi       s1, 3
                  sra          s0, sp, a2
                  sra          s4, s2, t3
                  or           s11, s9, s5
                  mul          s10, a0, a5
                  divu         t3, tp, ra
                  andi         s2, s8, 1759
                  lui          a0, 190097
                  sub          ra, a5, s3
                  srl          s10, s9, t0
                  c.andi       s1, -1
                  andi         t0, s2, -546
                  srl          s11, t2, s1
                  remu         s11, s1, ra
                  c.slli       a4, 1
                  divu         a4, t2, s0
                  c.xor        s1, a1
                  mul          gp, s0, s9
                  rem          a0, a4, gp
                  mul          gp, a3, s5
                  srli         a3, s11, 28
                  or           a0, s0, a6
                  sra          s1, t6, s4
                  c.and        a2, a3
                  lui          s1, 156084
                  xori         t4, a7, -408
                  c.or         a2, a5
                  rem          s2, s1, a3
                  nop
                  c.or         a3, a5
                  addi         t3, a2, 853
                  or           s10, tp, a1
                  xori         s7, t0, -122
                  slti         t4, a7, -860
                  lui          s7, 350671
                  and          t3, a4, a5
                  and          t2, t6, sp
                  slti         a3, a3, 636
                  lui          t3, 723608
                  mulhu        a2, t2, t6
                  lui          s10, 416010
                  addi         t5, ra, 310
                  c.li         ra, 12
                  div          s6, s8, t1
                  sltu         s2, t6, a5
                  rem          a6, a0, t3
                  nop
                  andi         gp, s7, 36
                  ori          t6, a1, 325
                  c.addi       a6, -1
                  mul          s0, t0, s3
                  xori         a0, a0, -344
                  c.mv         s9, s9
                  div          a3, a3, t3
                  c.add        s7, t5
                  srli         a7, zero, 4
                  c.addi       gp, -1
                  slti         t5, s11, 501
                  c.and        a0, s0
                  auipc        a3, 209631
                  srai         a2, t5, 13
                  c.andi       a4, -1
                  mulh         s5, ra, zero
                  ori          s2, a1, -1452
                  c.slli       gp, 24
                  sltu         t5, a3, s9
                  c.add        s1, t2
                  xori         s2, zero, 263
                  ori          t6, s11, 100
                  srai         a7, t1, 31
                  remu         s1, s4, a3
                  auipc        s11, 973190
                  slli         t1, s0, 3
                  c.lui        s6, 24
                  srli         s5, a5, 12
                  srai         t3, t4, 20
                  and          t6, s10, s3
                  div          t1, s0, a7
                  xor          a3, ra, a5
                  slt          t1, s1, t6
                  or           t3, t6, zero
                  sltu         t1, t6, s10
                  c.srai       a0, 4
                  c.srli       a0, 14
                  c.lui        t0, 30
                  mulh         s3, tp, a4
                  xori         s3, s9, -1458
                  and          t5, s11, a5
                  c.sub        s1, a5
                  srli         a7, s5, 2
                  or           gp, t0, a7
                  c.andi       a2, 14
                  lui          s9, 404779
                  srli         zero, tp, 7
                  c.or         a2, a1
                  c.li         s9, 25
                  andi         s2, a3, 457
                  mulh         t4, t0, sp
                  mulhsu       s9, s9, t2
                  divu         a6, s6, a7
                  c.srai       a3, 9
                  sub          t4, t5, s4
                  srli         a3, s8, 19
                  c.sub        s0, a3
                  andi         s4, a4, -96
                  c.srai       s0, 18
                  c.srai       a3, 8
                  c.sub        a0, a0
                  sub          a4, s11, s9
                  mulhu        t3, s11, s4
                  auipc        t4, 461018
                  or           a3, a0, a3
                  c.li         t0, 27
                  and          a0, s6, a0
                  srl          gp, t0, s10
                  c.andi       a2, 1
                  c.andi       s1, 31
                  srli         ra, s4, 2
                  slt          t3, sp, s1
                  c.srai       a2, 19
                  mulhu        s5, a0, t2
                  and          s10, s10, a2
                  c.and        a3, a1
                  c.srai       a3, 16
                  c.srli       a0, 5
                  c.and        a0, s1
                  c.xor        a0, a2
                  c.addi       s10, 4
                  slti         s2, s1, -1401
                  c.nop
                  slli         s11, t2, 2
                  andi         s8, tp, -348
                  slt          s6, s11, s5
                  ori          a2, t4, -273
                  c.add        t5, sp
                  mul          t0, gp, s4
                  c.srai       a0, 30
                  mulh         s11, s9, s2
                  addi         t6, s2, -477
                  srl          a2, a0, a4
                  c.andi       a3, 5
                  mulhsu       a4, t5, s11
                  sll          s6, a4, s4
                  c.srai       s0, 19
                  andi         t2, a5, 2000
                  c.nop
                  and          tp, gp, t1
                  srli         a3, s11, 3
                  rem          zero, s11, s1
                  sltu         gp, s6, s7
                  add          t2, t0, s10
                  nop
                  c.srli       s1, 16
                  c.lui        t1, 1
                  srli         a4, t3, 5
                  c.xor        a2, a5
                  mulhsu       s8, sp, a1
                  xori         a2, s7, -14
                  rem          t4, s7, t0
                  sub          s3, a5, t3
                  mulhsu       s8, a7, s8
                  xori         t2, s10, 194
                  auipc        s8, 325002
                  c.slli       t5, 23
                  c.nop
                  mulhu        s11, t6, s1
                  srl          t2, a6, a4
                  c.lui        s1, 4
                  c.andi       a4, -1
                  remu         gp, t0, s1
                  c.andi       a2, 12
                  c.mv         a7, s8
                  c.andi       a0, -1
                  and          a6, s1, sp
                  c.li         t4, 2
                  slti         s0, s9, -189
                  xor          t0, s10, a0
                  lui          t2, 814383
                  addi         t4, a0, -132
                  slli         s1, s10, 5
                  c.srli       a2, 20
                  c.addi       a3, 17
                  add          s5, s6, sp
                  slli         gp, t0, 16
                  c.addi       a3, 22
                  or           s4, a0, s9
                  add          a2, s9, a4
                  sltu         zero, s10, sp
                  mulh         s2, sp, s5
                  srl          s0, t3, s4
                  xor          s4, a4, s1
                  and          s11, tp, s4
                  auipc        s2, 627782
                  c.xor        s1, s0
                  remu         t2, t1, s6
                  c.sub        s0, a0
                  c.srai       s0, 18
                  mulh         s10, a7, a4
                  rem          s7, a6, s7
                  sltu         s10, t5, s7
                  slli         t0, s5, 24
                  slt          s0, a1, s11
                  div          t2, s7, sp
                  c.slli       s1, 12
                  c.lui        a2, 31
                  remu         t5, t6, s10
                  div          a3, sp, s1
                  c.slli       s0, 21
                  c.nop
                  c.lui        a6, 9
                  rem          tp, gp, s1
                  ori          a0, t4, -935
                  mulhu        gp, t0, s4
                  ori          t6, s6, 1563
                  remu         s10, s2, a1
                  andi         t1, gp, 486
                  slti         s9, t6, 1781
                  c.xor        a4, a3
                  or           a0, t4, s3
                  srli         s10, t3, 18
                  c.lui        t4, 25
                  xori         s11, t5, -1183
                  xor          a7, a2, s2
                  c.or         s1, a5
                  mulhu        s3, a7, t4
                  slli         a4, t4, 3
                  c.andi       s1, 24
                  slt          s7, s0, s2
                  srl          t2, t0, s4
                  mulhsu       t3, a6, s2
                  c.slli       s1, 1
                  divu         a2, t1, s3
                  c.nop
                  c.nop
                  div          s4, tp, t2
                  mulhsu       a2, a5, s3
                  mulhu        s9, s10, t0
                  srai         a2, s4, 29
                  lui          tp, 416353
                  mulhu        s2, tp, s5
                  mulhsu       s9, ra, s2
                  c.srai       a3, 3
                  c.srli       a4, 9
                  c.and        a0, a2
                  nop
                  slti         s4, a3, 1057
                  c.sub        a3, a0
                  c.addi       t6, 10
                  and          a6, s9, a1
                  div          a6, ra, s11
                  c.li         a4, -1
                  mulh         s6, s3, s11
                  c.li         s6, -1
                  remu         gp, a6, t1
                  sll          a6, a6, a3
                  mulhsu       t4, s2, s3
                  c.mv         a4, sp
                  sltiu        s9, s7, -906
                  c.srai       s1, 26
                  mulhu        t6, zero, s2
                  c.andi       a2, -1
                  c.andi       s1, -1
                  c.mv         t2, t0
                  c.xor        a4, a3
                  c.sub        a2, a5
                  or           s6, s1, gp
                  c.and        a2, a2
                  and          a2, s8, t1
                  srl          t1, s9, s4
                  lui          s9, 747997
                  srl          t3, s3, s0
                  c.xor        a0, a4
                  xor          s1, t5, t0
                  slt          a7, t5, a1
                  c.xor        a3, a5
                  and          t1, s1, t5
                  c.addi       a4, 27
                  c.lui        s0, 5
                  mulh         t3, s6, s0
                  sltiu        s8, s6, -1386
                  addi         s1, s9, 716
                  srli         s11, s2, 1
                  auipc        gp, 250968
                  sltu         a6, t6, a5
                  mul          a7, a2, s2
                  xori         t2, t5, 223
                  xori         t3, tp, 1079
                  mulhsu       t1, s8, s5
                  mulhu        s6, gp, a7
                  c.and        a4, a2
                  c.li         s11, 5
                  xor          s5, t2, s7
                  srai         zero, s6, 18
                  c.sub        s0, a2
                  add          zero, a0, s8
                  add          s7, s8, a4
                  divu         ra, a5, tp
                  mulh         a0, gp, s10
                  xori         s11, a1, 1112
                  auipc        s10, 719719
                  slli         s8, s1, 18
                  sra          zero, s11, ra
                  mulh         s10, s4, tp
                  mulh         s0, s10, s8
                  c.lui        t4, 25
                  c.andi       s1, 12
                  and          a7, s9, ra
                  andi         a2, a1, -155
                  c.slli       a6, 19
                  auipc        t5, 963703
                  c.srai       a0, 6
                  add          t1, a1, a1
                  xori         ra, a6, -765
                  auipc        t2, 509080
                  c.nop
                  mulh         s2, t3, a7
                  c.sub        a0, s0
                  sra          gp, tp, t0
                  or           s11, s4, s5
                  lui          s5, 919071
                  slt          t1, t3, t4
                  or           s11, tp, s5
                  xori         s5, a7, -999
                  sub          ra, s10, t4
                  divu         s10, s1, t5
                  c.nop
                  lui          s3, 496548
                  add          a6, s4, a7
                  or           gp, sp, a7
                  mul          s4, a6, a3
                  mulhu        t3, ra, t2
                  auipc        a2, 414928
                  c.or         a0, a4
                  c.lui        t2, 18
                  lui          tp, 1013840
                  c.srli       s1, 8
                  or           s10, a1, a3
                  c.srli       a3, 26
                  rem          tp, s10, s4
                  c.mv         ra, a3
                  addi         s11, s6, 613
                  rem          t0, s9, t2
                  mulhsu       gp, s9, s1
                  c.srai       a0, 23
                  addi         t0, zero, -1863
                  c.or         a4, a1
                  c.andi       s0, 10
                  sra          t5, tp, s3
                  div          t2, s0, s9
                  sltu         s6, s6, a3
                  mulh         a2, s11, s4
                  slti         s9, s0, 1326
                  or           zero, s5, a5
                  sra          t3, t1, t1
                  srai         t2, t2, 27
                  sra          t3, t5, s4
                  c.and        a2, s0
                  xori         s0, ra, 672
                  c.srai       s0, 22
                  c.andi       a4, -1
                  c.srli       s0, 18
                  mul          t1, a3, t6
                  slli         gp, s9, 27
                  srl          t1, t0, t0
                  c.mv         gp, s8
                  auipc        zero, 988243
                  c.nop
                  nop
                  c.or         a0, a3
                  c.and        a0, s1
                  and          s5, s7, t5
                  c.slli       t5, 16
                  sra          s11, s6, s5
                  mulhu        s11, a0, s4
                  c.slli       t2, 24
                  c.li         a0, 12
                  c.or         a4, a4
                  div          s1, t2, s5
                  sll          a0, s10, t2
                  auipc        s2, 295109
                  c.xor        a0, a2
                  c.andi       a0, 23
                  c.slli       s0, 12
                  c.andi       a4, 28
                  c.lui        a4, 29
                  srli         t1, a0, 7
                  auipc        t6, 83136
                  c.add        s0, a5
                  c.srai       a4, 2
                  sltu         a7, t0, tp
                  slt          a4, t2, sp
                  sll          s9, s1, s4
                  ori          s7, s3, 534
                  andi         t1, a0, -2043
                  c.li         a4, -1
                  remu         a0, t4, s9
                  mulh         s8, gp, s6
                  srai         s11, a4, 1
                  c.mv         gp, t5
                  divu         t4, a4, s6
                  c.slli       t6, 13
                  c.add        gp, t2
                  mulh         t4, t2, s2
                  slt          t0, s7, t0
                  mulhu        s8, s11, zero
                  srai         s1, s5, 3
                  c.li         s7, -1
                  c.addi       a2, -1
                  srl          s7, tp, a3
                  c.li         s4, 0
                  srli         s5, sp, 27
                  slli         t2, s1, 20
                  sll          a4, ra, a7
                  auipc        s4, 145377
                  auipc        s11, 959057
                  ori          s11, a0, -1122
                  sltiu        tp, s1, -1254
                  sll          t3, a3, s1
                  and          t0, t2, t0
                  lui          gp, 602164
                  divu         t5, zero, t2
                  c.srai       a2, 2
                  c.sub        s0, a5
                  c.andi       a4, 11
                  add          t5, s9, a0
                  auipc        t3, 537067
                  c.sub        s0, a0
                  xori         s7, t5, 1367
                  mulh         ra, ra, s3
                  c.sub        a0, a3
                  slli         tp, t5, 23
                  div          s1, ra, a2
                  mul          t1, t1, t5
                  sltiu        t6, t0, -1603
                  mulhsu       a4, s10, a5
                  mulhsu       a6, a4, s2
                  ori          zero, t1, -131
                  c.srli       a4, 18
                  c.and        s1, a1
                  c.and        a0, a2
                  slli         s8, s7, 19
                  c.slli       ra, 29
                  lui          zero, 281908
                  lui          t0, 651728
                  xor          s0, s3, a5
                  c.slli       t6, 30
                  c.addi       s0, 7
                  srai         t6, a0, 26
                  auipc        zero, 834801
                  c.and        a2, s0
                  c.xor        s1, s1
                  srli         s11, s6, 28
                  and          s7, s0, t3
                  c.addi       a4, 15
                  slti         s7, s8, 1189
                  lui          t2, 467058
                  slti         s8, a1, -1609
                  c.addi       a6, -1
                  c.slli       a7, 16
                  c.andi       s1, 1
                  xori         t0, t6, -818
                  nop
                  c.srli       a0, 14
                  slt          s10, s1, sp
                  c.and        a3, a1
                  sra          s2, t0, a2
                  c.add        s11, a4
                  c.addi       s2, -1
                  c.srai       s1, 14
                  c.xor        a3, s1
                  remu         ra, s7, t0
                  mulh         s0, s7, s8
                  auipc        a3, 138263
                  srli         s6, s3, 19
                  lui          s2, 831483
                  c.xor        a3, a5
                  sll          s3, t2, a4
                  sltiu        a2, a0, 425
                  c.addi       s10, -1
                  c.andi       a4, 30
                  mul          a2, t1, t1
                  lui          t4, 674273
                  mulhu        s3, s4, s5
                  remu         a6, a4, gp
                  c.li         t2, -1
                  mul          tp, s6, a5
                  c.slli       s3, 24
                  xori         t1, a2, -1712
                  sltiu        gp, zero, 738
                  c.addi       t2, -1
                  c.xor        s1, a0
                  addi         a2, s4, 1594
                  xori         t0, sp, -2042
                  srl          s5, t1, a4
                  srl          a4, s6, s10
                  c.add        t6, s6
                  divu         s10, s8, s4
                  slli         t2, s4, 20
                  rem          s9, s5, s8
                  sra          s11, s9, a3
                  and          tp, t3, s1
                  c.andi       s1, 18
                  auipc        t3, 735441
                  sub          t0, zero, a1
                  lui          t6, 332660
                  slti         a0, a3, 1466
                  xor          s9, t4, s2
                  c.mv         t2, s5
                  remu         a3, t1, a1
                  c.or         a4, a5
                  remu         s9, s2, tp
                  slti         a7, s10, 2047
                  c.addi       s8, -1
                  c.addi       s0, 1
                  add          tp, s11, a5
                  andi         s2, t6, -317
                  xor          t3, s10, t0
                  c.xor        a0, a4
                  sltu         zero, a4, sp
                  sub          gp, t0, s9
                  add          a3, s2, s0
                  c.sub        a4, a1
                  c.li         t5, -1
                  c.slli       s0, 1
                  auipc        t6, 47105
                  div          s11, sp, a2
                  add          s8, a0, t2
                  c.add        t6, sp
                  and          s7, t1, t0
                  xor          s7, s11, t4
                  mulhu        gp, a3, zero
                  c.add        a7, s0
                  addi         zero, s8, -674
                  c.srai       s1, 26
                  or           s2, t2, t3
                  c.xor        a2, a3
                  srai         s1, s3, 27
                  c.addi       tp, 18
                  c.srli       a3, 9
                  sll          ra, a1, a3
                  sub          t2, a0, s8
                  c.add        s0, t0
                  srli         zero, t6, 11
                  mulhsu       s0, sp, s3
                  sltu         a6, a2, s6
                  c.slli       s5, 26
                  sltiu        s10, t4, -889
                  andi         a2, t0, 288
                  c.or         a3, s0
                  mulhu        s9, a7, a5
                  sltiu        s4, a1, -500
                  c.and        a3, a4
                  divu         s6, a0, gp
                  addi         s2, t6, -106
                  c.mv         t3, t3
                  rem          a6, s4, t2
                  srli         t6, s3, 24
                  srli         zero, s9, 12
                  andi         t2, a2, 1417
                  and          s1, a4, a6
                  c.xor        a0, a5
                  nop
                  xori         s7, s3, 226
                  nop
                  auipc        s9, 966333
                  addi         s1, s2, -294
                  c.nop
                  c.lui        a0, 21
                  c.li         s10, 19
                  addi         t1, s8, -1777
                  andi         s5, s0, 1608
                  srai         s5, tp, 29
                  andi         a4, s5, -1244
                  addi         t5, t2, -1282
                  sltiu        s7, t4, 1948
                  and          t4, a3, t5
                  mulhu        a0, t6, s5
                  add          s6, a3, a1
                  slt          a3, a3, s5
                  c.li         a4, 19
                  ori          a3, tp, 1529
                  c.or         a2, a5
                  c.xor        a3, a0
                  slt          s4, a2, a0
                  addi         s11, s8, 670
                  xor          s6, gp, s6
                  or           zero, a4, t3
                  ori          t2, s2, -1848
                  remu         a4, s9, t2
                  mulh         a2, gp, s10
                  divu         t1, a6, s8
                  mulhsu       s9, s2, ra
                  add          t5, s3, ra
                  mulh         t5, t1, t2
                  remu         a6, t3, a6
                  rem          s11, s6, s6
                  c.lui        s9, 2
                  xori         a3, t0, -1797
                  sll          a4, zero, a6
                  c.or         s1, a2
                  c.andi       s1, -1
                  srai         t4, a4, 15
                  c.nop
                  sra          s1, gp, sp
                  lui          t4, 317417
                  ori          t5, s8, 2038
                  c.sub        s1, a0
                  addi         gp, a7, -482
                  c.or         s0, a0
                  sll          t2, a1, t4
                  c.and        a3, a3
                  c.nop
                  srl          s4, a1, a0
                  nop
                  slli         t4, a6, 23
                  remu         a0, zero, s2
                  slli         s9, a1, 25
                  sra          t6, s5, a5
                  auipc        a2, 51922
                  sltu         gp, tp, s1
                  c.srli       a0, 25
                  sll          t0, t0, s6
                  sll          s9, t1, t2
                  srl          s2, a0, s3
                  rem          s2, t3, gp
                  nop
                  sltiu        t0, ra, 70
                  mulhu        s8, s8, sp
                  rem          tp, a3, s2
                  xor          zero, s9, s2
                  sltiu        gp, a0, -1941
                  divu         t0, t5, a3
                  c.lui        s9, 2
                  c.andi       a3, -1
                  div          s7, s3, s1
                  c.add        t2, t6
                  auipc        gp, 129287
                  c.andi       a0, -1
                  slti         a0, s8, 13
                  lui          s8, 723055
                  slli         s7, a6, 25
                  mulhu        s6, a1, sp
                  sub          s0, a2, ra
                  mulh         s7, a4, ra
                  rem          a2, t0, s9
                  sra          s2, a4, a3
                  rem          t4, s7, t2
                  mulhsu       zero, gp, s2
                  slt          s5, t2, t4
                  srai         t4, s1, 13
                  c.li         s0, 4
                  addi         ra, s5, 819
                  c.addi       t5, -1
                  c.sub        a3, s1
                  c.sub        s0, a4
                  slli         t4, s1, 24
                  xor          zero, t0, t1
                  slt          s2, s2, a5
                  mulhu        tp, s10, t2
                  slt          t6, s11, a4
                  lui          a0, 792982
                  c.xor        a4, a5
                  srai         s3, s1, 31
                  c.add        s2, ra
                  add          ra, s5, ra
                  mulhsu       a0, a3, s10
                  sub          s11, s7, s0
                  c.srli       a2, 6
                  xor          s11, a1, a1
                  nop
                  or           s4, t3, ra
                  addi         ra, s0, 1315
                  rem          s4, s8, t2
                  slli         s1, tp, 0
                  c.andi       a3, 16
                  mulhu        s11, t3, t3
                  slli         s9, gp, 20
                  auipc        a3, 321443
                  c.lui        a7, 21
                  auipc        t5, 677630
                  slt          a7, a3, a2
                  c.add        a4, s8
                  lui          s7, 87735
                  slli         s4, s7, 0
                  andi         s0, t1, 1426
                  xori         a2, a3, 1795
                  srli         s5, a2, 5
                  c.mv         a4, a6
                  and          s5, t5, a5
                  auipc        zero, 796622
                  ori          s9, gp, -381
                  xori         t5, s11, -1291
                  slti         s9, s2, 1514
                  slli         a7, a4, 5
                  slt          t4, sp, t0
                  auipc        s6, 959149
                  c.and        a0, a2
                  c.xor        s0, a3
                  c.andi       s0, 26
                  and          s4, a1, s4
                  slt          t0, s11, t2
                  mulh         a0, sp, s1
                  addi         t0, t5, 1697
                  c.srai       s1, 23
                  addi         s10, s2, 525
                  srli         a3, t6, 19
                  srai         t5, s8, 21
                  lui          s2, 837123
                  slli         s11, s2, 15
                  mulhsu       s5, a0, a2
                  nop
                  srai         t0, s1, 23
                  addi         tp, s5, -749
                  div          zero, a6, s4
                  c.lui        t0, 23
                  and          tp, a7, s0
                  andi         zero, t3, -1272
                  c.srli       s1, 3
                  srai         s3, a7, 25
                  c.add        a6, t5
                  mulh         s9, s1, sp
                  xori         s8, s1, -1624
                  and          gp, a7, gp
                  div          s9, s11, s3
                  addi         s10, t0, 1769
                  mulhsu       s1, t6, t0
                  sltiu        s0, a5, -1254
                  c.srai       a4, 9
                  andi         s2, zero, 1707
                  c.lui        a7, 16
                  remu         t1, s10, s3
                  nop
                  c.sub        a2, a3
                  add          t4, t0, t2
                  slti         s6, t1, 1170
                  rem          gp, a4, a2
                  addi         s9, t1, 1526
                  c.addi       s10, -1
                  sub          s4, s0, s0
                  c.or         a0, a0
                  c.slli       s6, 21
                  mulhsu       s2, sp, t1
                  c.srli       a3, 31
                  sra          t1, s8, zero
                  c.slli       a4, 13
                  auipc        s8, 32437
                  andi         s0, s11, -670
                  div          s9, s11, gp
                  xor          a7, ra, t6
                  c.srai       a4, 19
                  la x15, test_done
                  jalr x0, x15, 0
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
                  addi x2, x2, -4
                  sw  x11, (x2)
                  add x11, x2, zero
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
                  add x2, x11, zero
                  csrr x10, 0x300 # MSTATUS
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 31
                  bne x10, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x10, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x10, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x10, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x10, x4, ecall_handler
                  li x4, 0x1
                  beq x10, x4, instr_fault_handler
                  li x4, 0x5
                  beq x10, x4, load_fault_handler
                  li x4, 0x7
                  beq x10, x4, store_fault_handler
                  li x4, 0xc
                  beq x10, x4, pt_fault_handler
                  li x4, 0xd
                  beq x10, x4, pt_fault_handler
                  li x4, 0xf
                  beq x10, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x11, x2, zero
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
                  add x2, x11, zero
                  lw  x11, (x2)
                  addi x2, x2, 4
                  mret

load_fault_handler:
                  add x11, x2, zero
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
                  add x2, x11, zero
                  lw  x11, (x2)
                  addi x2, x2, 4
                  mret

store_fault_handler:
                  add x11, x2, zero
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
                  add x2, x11, zero
                  lw  x11, (x2)
                  addi x2, x2, 4
                  mret

ebreak_handler:   
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x11, x2, zero
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
                  add x2, x11, zero
                  lw  x11, (x2)
                  addi x2, x2, 4
                  mret

illegal_instr_handler:
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x11, x2, zero
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
                  add x2, x11, zero
                  lw  x11, (x2)
                  addi x2, x2, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x11, x2, zero
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
                  add x2, x11, zero
                  lw  x11, (x2)
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
