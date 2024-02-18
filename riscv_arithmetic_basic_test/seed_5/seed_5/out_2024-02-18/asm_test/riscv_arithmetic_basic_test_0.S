.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x16, 0x40001105
                  csrw 0x301, x16
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 1
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
                  li x0, 0xf692b3ed
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x2
                  li x4, 0xaf81315
                  li x5, 0xc
                  li x6, 0xa
                  li x8, 0x80000000
                  li x10, 0xf198bd03
                  li x11, 0x0
                  li x12, 0xf9332bd2
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xe
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x2
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x4
                  li x26, 0xfc7fdb38
                  li x27, 0x0
                  li x28, 0x3eb6b98d
                  li x29, 0x8b55e626
                  li x30, 0xa3bd8257
                  li x31, 0x0
                  la x9, user_stack_end
main:             addi         s8, ra, -1205
                  slti         a7, s9, -1879
                  sra          s3, t6, t0
                  nop
                  mulhu        a4, a0, gp
                  sll          s9, s1, a7
                  addi         a4, s7, -1681
                  c.and        a3, a4
                  slti         a5, a7, -1134
                  and          a1, s0, s11
                  ori          a7, s7, 2024
                  auipc        s0, 320374
                  c.addi16sp   sp, -16
                  sltu         t4, t3, a1
                  ori          a2, s3, 2016
                  sltiu        t6, s6, -261
                  c.srli       s0, 9
                  slli         t6, s1, 9
                  c.li         s3, 11
                  divu         a5, a0, t3
                  lui          s11, 299817
                  divu         s5, t2, s7
                  addi         t0, t3, -118
                  sltiu        a6, a2, 54
                  div          a0, a4, a6
                  c.srli       a3, 2
                  c.slli       t1, 6
                  ori          s6, t0, -1051
                  c.xor        a5, a1
                  slt          gp, s11, s6
                  add          s11, s2, a3
                  c.sub        a1, a3
                  slt          zero, s7, t6
                  mulh         t3, s7, a4
                  srli         s8, a5, 9
                  c.sub        a0, a0
                  slti         zero, tp, 391
                  xori         t0, s5, 1052
                  sra          a7, s11, a7
                  c.and        a5, a4
                  mul          s7, t2, tp
                  c.li         s0, 27
                  c.add        s9, gp
                  c.andi       a4, 23
                  sll          s7, a1, zero
                  c.li         a3, 31
                  sll          s9, s0, a7
                  c.nop
                  sll          a0, t4, s9
                  c.or         s0, s1
                  mulh         gp, a6, a3
                  sltu         a4, t3, s7
                  xori         s6, a7, 1920
                  srai         s10, t0, 18
                  sll          a4, gp, a1
                  sltu         s9, s0, a0
                  addi         s4, s0, -1318
                  add          a6, t3, s1
                  mul          a3, t2, s7
                  rem          a7, gp, ra
                  sll          s7, a5, a3
                  andi         t0, s2, -1611
                  and          gp, s7, gp
                  srai         s5, a5, 12
                  slli         t6, a4, 25
                  rem          t5, s3, ra
                  addi         a5, s10, 40
                  remu         t1, s9, s5
                  c.nop
                  divu         s3, s9, t6
                  addi         s4, a6, -527
                  and          a0, s7, t4
                  srai         s7, a3, 26
                  andi         t5, gp, 1858
                  lui          a1, 558920
                  nop
                  mul          a0, s8, s9
                  sll          s9, s7, t1
                  c.addi16sp   sp, -16
                  c.addi4spn   a1, sp, 96
                  sltiu        s8, s5, -1473
                  rem          t4, s2, a0
                  c.srli       s0, 8
                  or           t5, s6, s2
                  add          sp, zero, sp
                  c.srai       a2, 26
                  c.lui        gp, 15
                  mulhu        a4, s5, a3
                  divu         s10, s1, sp
                  c.slli       a5, 19
                  or           a6, s3, s6
                  c.xor        a5, a5
                  addi         s8, gp, -457
                  sra          t1, a3, t1
                  c.lui        s2, 10
                  c.xor        a3, a4
                  c.xor        s0, a3
                  mulhu        t1, a7, s0
                  slti         sp, a6, -1731
                  remu         gp, sp, a0
                  divu         a1, s9, s6
                  auipc        a5, 684768
                  c.sub        a5, a5
                  mul          s0, gp, tp
                  c.srli       a4, 5
                  lui          s10, 566948
                  sra          a3, a3, t5
                  c.addi       s5, 10
                  rem          s2, t3, t2
                  sra          s5, t4, s2
                  c.srli       a4, 11
                  slti         s9, s7, -28
                  srli         s11, s11, 5
                  mulhu        a1, s9, a5
                  c.or         a3, a0
                  sll          a5, s8, s0
                  sll          s6, a2, a7
                  c.slli       t0, 23
                  add          s10, a7, tp
                  ori          a4, a0, 1453
                  c.slli       s9, 10
                  mulh         s11, a4, s7
                  mulhsu       s7, t0, a1
                  xori         a6, s9, -572
                  c.srai       a1, 31
                  remu         zero, sp, zero
                  add          a3, a2, s5
                  c.add        s8, t6
                  c.srai       s0, 1
                  andi         a6, s1, 1656
                  mulhu        t3, s1, s7
                  srl          t0, a5, ra
                  add          s11, a7, a1
                  remu         s5, s9, s9
                  c.nop
                  mul          t6, s0, t6
                  mul          s4, s4, t1
                  c.mv         s0, a2
                  c.or         a0, a5
                  xor          s9, t4, zero
                  div          t0, s9, s3
                  mulh         a0, a1, s9
                  c.nop
                  c.srai       s0, 26
                  or           t4, s8, s3
                  c.addi16sp   sp, -16
                  c.andi       a5, -1
                  sll          s9, s8, s2
                  c.mv         tp, tp
                  sra          a6, s3, t4
                  srai         s6, t5, 23
                  c.mv         a7, gp
                  addi         s0, a1, -188
                  sra          gp, s9, a6
                  ori          gp, s9, -612
                  auipc        t5, 886976
                  c.addi4spn   a2, sp, 32
                  addi         s3, a7, -1391
                  remu         s10, a4, s4
                  xor          a4, tp, s2
                  c.sub        a5, a4
                  add          a7, a6, s9
                  sub          t3, a5, s1
                  xori         s7, t5, -1302
                  c.mv         s5, t5
                  c.slli       s8, 11
                  mulhu        a1, s1, t5
                  c.andi       a0, -1
                  slti         sp, s1, -867
                  rem          tp, t4, t6
                  ori          sp, a5, 1741
                  xori         s7, s5, 263
                  sra          s4, s8, a7
                  remu         t6, t2, a3
                  srl          s6, s8, s1
                  sra          s5, s3, t5
                  andi         s9, a0, -3
                  lui          t5, 629508
                  divu         t3, s8, a4
                  c.xor        a0, a5
                  c.andi       s0, -1
                  rem          s5, t6, s0
                  div          s0, a2, ra
                  sltu         zero, t4, a0
                  slt          s0, zero, a6
                  c.addi       a5, 15
                  c.srai       a5, 18
                  sll          t3, s5, t2
                  or           a2, a2, s3
                  c.xor        a4, a0
                  c.and        a2, a3
                  c.srai       s0, 23
                  sll          a1, a4, s6
                  sra          t0, t1, gp
                  mulhu        t4, t3, t2
                  c.mv         s10, a3
                  nop
                  c.and        a4, a4
                  auipc        t6, 618474
                  srli         s4, a6, 25
                  c.xor        a5, s0
                  slti         t0, s2, 919
                  c.lui        tp, 10
                  rem          t0, s5, a3
                  lui          s9, 274878
                  lui          s4, 534225
                  auipc        s2, 171280
                  mul          t4, a7, s2
                  c.li         s9, 31
                  and          a3, s9, t2
                  divu         t6, s7, s7
                  rem          s3, t1, a3
                  c.or         s0, a2
                  sub          t4, a6, ra
                  add          a5, s4, s0
                  c.xor        a0, s1
                  mul          s2, s9, s5
                  c.addi       t3, -1
                  andi         s5, tp, -1717
                  mul          t0, s5, a0
                  div          s11, t0, a2
                  c.xor        a2, a2
                  srl          t4, zero, t3
                  remu         a2, t2, sp
                  remu         t3, s4, gp
                  c.add        a0, a5
                  c.andi       s0, 3
                  c.srli       a3, 10
                  rem          s3, t3, s7
                  ori          a2, s3, 1275
                  sll          gp, a0, s9
                  nop
                  c.add        tp, s7
                  srl          a6, t6, t2
                  lui          a7, 142146
                  c.li         t6, -1
                  add          s7, s5, tp
                  mul          t5, s7, t6
                  slt          s9, gp, s4
                  srli         a3, s7, 8
                  slti         s3, s3, -1385
                  c.slli       sp, 19
                  ori          a6, zero, 1451
                  c.or         s0, s0
                  mulhsu       s10, a0, s6
                  lui          gp, 261279
                  srai         gp, t2, 13
                  mulhu        t4, a5, a1
                  sltiu        t4, a0, 1624
                  or           s3, s4, a7
                  sub          s2, s5, s11
                  remu         t1, s1, a2
                  c.sub        a0, s0
                  or           a7, s8, t3
                  c.nop
                  srli         s5, s5, 16
                  c.and        a2, a1
                  c.mv         gp, t5
                  c.xor        a3, a5
                  mulhsu       zero, s1, a4
                  c.mv         t1, tp
                  addi         a7, t3, 936
                  mulh         s10, t4, t2
                  auipc        gp, 1047511
                  remu         a3, a1, s4
                  xor          s8, a7, ra
                  slti         s9, t3, 677
                  slt          a0, s8, zero
                  ori          t3, s4, -515
                  xori         a7, s11, 1620
                  c.srli       a3, 11
                  c.srli       a1, 5
                  xor          s0, t3, s2
                  rem          s7, s2, a6
                  remu         a1, t3, s1
                  sltiu        s9, tp, -783
                  sub          s7, s9, tp
                  mulh         tp, t1, zero
                  c.mv         s10, a5
                  srai         a0, ra, 3
                  slli         s8, s6, 13
                  or           a0, s3, tp
                  mulh         s10, t4, t4
                  rem          s10, t6, a4
                  c.addi4spn   s0, sp, 32
                  add          t1, a2, s0
                  addi         s11, s9, 1925
                  or           s9, tp, a5
                  remu         s10, tp, s0
                  srli         a2, a1, 23
                  srli         s9, gp, 21
                  divu         zero, ra, s9
                  xori         t0, s6, -494
                  c.nop
                  slt          s7, s0, s6
                  rem          t3, t0, t3
                  srl          zero, a2, a3
                  c.mv         t4, s6
                  slt          s6, t1, a2
                  sll          s7, a3, a3
                  c.or         a5, s0
                  c.srai       a3, 14
                  c.lui        a1, 30
                  lui          a6, 134354
                  slli         s3, s8, 7
                  srli         gp, t0, 16
                  sra          a3, t0, t2
                  rem          t4, t5, zero
                  slti         t1, s3, -2014
                  rem          s3, t2, t2
                  divu         t4, s3, zero
                  mul          s5, s3, s2
                  mul          t0, sp, t0
                  c.andi       a2, -1
                  c.slli       t6, 20
                  c.sub        a0, a1
                  srai         s10, t0, 25
                  sltiu        a2, s0, -480
                  mulh         a1, a5, s0
                  divu         s3, t6, s0
                  c.addi       s0, -1
                  c.srli       a0, 27
                  c.srli       a1, 25
                  mul          a6, s11, s10
                  slti         a5, a2, 93
                  ori          s7, t4, 735
                  add          a1, sp, s1
                  slti         t6, t4, 1554
                  c.andi       a2, -1
                  sra          a3, s2, a7
                  c.slli       s5, 11
                  c.add        a6, t2
                  c.xor        a4, a3
                  c.add        s11, s0
                  sra          zero, t1, a0
                  remu         s10, s10, s3
                  xor          s10, s9, a7
                  c.li         t4, -1
                  addi         s5, s6, 821
                  c.slli       a5, 25
                  sltiu        a7, s1, -2002
                  xor          s10, a3, a4
                  nop
                  sltu         gp, a5, gp
                  mulh         s7, t6, s10
                  slli         sp, a3, 21
                  or           s9, s11, ra
                  c.nop
                  srai         a7, s7, 2
                  remu         t4, a2, t4
                  c.addi16sp   sp, -16
                  nop
                  mulhsu       a3, s11, s10
                  c.addi16sp   sp, -16
                  c.srli       a1, 24
                  slli         s0, t6, 4
                  c.xor        s0, a4
                  xori         s3, s1, -1853
                  c.srli       a1, 24
                  xori         t0, t1, -472
                  xori         s5, s11, 1101
                  div          zero, t6, s7
                  auipc        s8, 644612
                  sltu         a7, s11, s8
                  c.add        a2, t5
                  c.slli       t6, 2
                  c.addi4spn   a1, sp, 864
                  slti         sp, s11, 1139
                  lui          a5, 515009
                  sll          s8, s2, t3
                  xor          t0, gp, t6
                  ori          s8, t3, 1981
                  mulhsu       s3, tp, t5
                  srai         s11, ra, 26
                  c.sub        a2, a4
                  c.or         a1, s0
                  srai         s9, s3, 20
                  c.slli       s0, 26
                  slti         s11, s3, 840
                  c.or         a3, a4
                  auipc        a1, 1035813
                  c.nop
                  divu         t3, sp, gp
                  mulhu        gp, s1, s3
                  c.addi16sp   sp, 144
                  lui          t6, 229728
                  sub          s5, s8, t1
                  add          a6, t1, t4
                  remu         t6, t0, t4
                  mulhsu       t0, s7, a2
                  slti         s2, s11, 726
                  sltu         s10, a5, s1
                  add          a2, s2, a2
                  c.lui        s8, 17
                  div          a0, s11, a6
                  c.add        s11, a3
                  c.srai       a2, 31
                  ori          a1, s4, -1764
                  c.li         s6, 31
                  srai         a0, a7, 4
                  c.mv         s8, s6
                  c.xor        s0, a5
                  or           s3, t5, a1
                  c.mv         t6, a6
                  c.mv         a6, t5
                  xori         tp, s2, 1868
                  c.slli       t0, 18
                  c.srli       a2, 19
                  sra          t0, t3, tp
                  srai         t3, s9, 14
                  sll          t6, t1, s4
                  xor          s7, s5, s6
                  srl          s7, a4, s8
                  nop
                  divu         s4, s4, t2
                  mulhsu       a4, a7, t3
                  c.nop
                  addi         t5, s1, 645
                  srl          a3, s8, a1
                  slti         a3, gp, 2040
                  c.srli       a1, 23
                  c.srai       a0, 17
                  divu         zero, s9, s10
                  lui          tp, 414018
                  xori         s5, s9, 986
                  remu         a4, s4, s3
                  c.and        a5, s1
                  xor          gp, a3, s9
                  srl          tp, a4, s7
                  mulh         a0, s7, a3
                  slli         s5, t5, 29
                  c.srai       a3, 8
                  rem          zero, ra, a3
                  remu         s9, zero, s3
                  c.sub        a1, a4
                  div          a0, a0, t1
                  divu         a4, a4, s8
                  c.li         s3, 2
                  mulh         sp, t6, t0
                  sltiu        s7, gp, 1159
                  xor          a7, t5, s1
                  srai         tp, gp, 3
                  divu         a5, s7, a2
                  div          tp, a6, s5
                  sll          s7, s10, s3
                  auipc        a4, 969871
                  c.srli       a1, 19
                  c.lui        gp, 1
                  divu         s9, s11, s7
                  c.srai       a0, 24
                  lui          a4, 502128
                  c.add        a4, s10
                  remu         s11, t6, t6
                  slti         a5, s2, -1289
                  srli         a4, t0, 15
                  sltiu        s4, s6, -1757
                  c.xor        a3, a5
                  c.nop
                  remu         s0, s6, s9
                  or           s6, s6, t2
                  srli         t0, s0, 0
                  lui          s6, 779203
                  c.mv         s4, s6
                  lui          sp, 55424
                  lui          s6, 42100
                  c.xor        a3, a0
                  c.xor        a4, a2
                  remu         a3, tp, s6
                  slti         tp, zero, -260
                  sll          s10, s11, zero
                  c.and        a0, a3
                  andi         sp, sp, 2020
                  c.xor        a3, s1
                  c.addi4spn   a0, sp, 896
                  slt          tp, t6, a2
                  add          zero, tp, t1
                  mulhu        a2, gp, a5
                  add          s0, a7, zero
                  sltu         a3, t1, s7
                  srai         zero, a6, 13
                  c.add        s3, s4
                  andi         a6, s10, -1832
                  c.sub        a5, a5
                  sra          s11, a6, a7
                  c.addi16sp   sp, -16
                  c.slli       a0, 24
                  rem          a4, s4, t2
                  slti         s10, t2, 481
                  sra          a1, s0, zero
                  c.sub        a4, a4
                  ori          s10, zero, -1302
                  c.mv         gp, t0
                  mulhu        a4, t0, a1
                  div          a1, s11, s0
                  c.srai       a2, 11
                  andi         sp, s9, -1998
                  remu         t5, s2, s3
                  c.srai       a3, 27
                  nop
                  c.srai       a0, 29
                  c.li         s4, -1
                  add          s5, a0, t6
                  c.srli       a3, 29
                  sra          t3, s7, a6
                  c.or         a5, a1
                  divu         s4, s6, a1
                  mul          a2, zero, t6
                  c.slli       a0, 2
                  auipc        a1, 606038
                  div          t6, s6, tp
                  rem          s6, t1, s8
                  remu         a5, a6, a2
                  add          s4, gp, a7
                  srl          t1, s3, s2
                  remu         s0, t2, s10
                  and          a0, a3, sp
                  xor          gp, s5, s8
                  c.or         a0, a0
                  srai         a2, zero, 20
                  srl          a4, tp, s6
                  c.addi4spn   a2, sp, 192
                  remu         t3, sp, t3
                  c.and        a3, a4
                  c.add        a3, a5
                  c.addi4spn   s0, sp, 736
                  auipc        t0, 526848
                  sub          t0, sp, a4
                  srl          t3, s5, a6
                  srli         sp, t2, 2
                  c.xor        a4, a2
                  srli         sp, s3, 18
                  xori         t0, t4, -1250
                  c.srli       a3, 30
                  c.sub        a4, a3
                  c.xor        a1, a0
                  and          s9, a3, s7
                  c.or         a3, s1
                  andi         gp, s0, -1975
                  sltiu        sp, a1, -1695
                  divu         a4, s0, a0
                  c.addi4spn   s0, sp, 1008
                  c.mv         a4, s7
                  srli         a5, a7, 29
                  lui          tp, 574491
                  nop
                  c.li         t4, 7
                  lui          s4, 1008918
                  lui          zero, 437537
                  c.or         a1, a1
                  c.mv         a2, s10
                  c.addi       s0, 12
                  c.addi       a4, -1
                  c.mv         a5, a1
                  mulh         t5, t6, a4
                  srl          a0, t1, s9
                  c.lui        s9, 24
                  c.addi4spn   a1, sp, 224
                  c.xor        s0, a1
                  andi         s5, s1, -2005
                  c.slli       s0, 16
                  xori         a3, s6, -1750
                  ori          s7, s10, 1288
                  sub          sp, s2, a1
                  add          a0, t0, s5
                  c.or         a5, a4
                  addi         a0, t0, 1709
                  add          a3, s1, s10
                  xor          gp, sp, t2
                  c.li         a5, 25
                  srl          s10, t6, t2
                  sltu         s10, s2, ra
                  and          s6, s6, t5
                  srl          s4, t1, gp
                  slt          a1, a5, s0
                  c.srli       a1, 23
                  add          s6, a2, s5
                  sltiu        tp, s1, -905
                  c.andi       a1, 21
                  divu         s5, a5, t1
                  c.nop
                  sltu         s11, s6, s6
                  c.addi4spn   s0, sp, 464
                  c.slli       a0, 8
                  c.addi4spn   a3, sp, 224
                  xor          t0, zero, a4
                  sltu         gp, a1, s0
                  srli         a6, tp, 4
                  c.sub        a3, s1
                  divu         gp, ra, t5
                  c.lui        a5, 21
                  lui          s7, 1023407
                  c.mv         a4, s3
                  divu         a2, gp, s5
                  c.andi       a4, -1
                  c.addi16sp   sp, -16
                  slt          t1, t2, a7
                  mul          t5, a4, s10
                  andi         t6, s9, 234
                  c.slli       s9, 28
                  srl          a1, s7, t2
                  lui          t1, 787024
                  c.and        s0, a1
                  sub          s10, s1, s4
                  mulhsu       zero, s10, s3
                  c.nop
                  rem          a0, s11, sp
                  lui          s4, 16633
                  mulhu        s4, s7, t3
                  div          t3, s5, s9
                  c.xor        a4, a4
                  sll          t1, a6, s2
                  c.li         s3, 7
                  c.lui        s11, 22
                  c.srai       a1, 1
                  andi         zero, t3, 1438
                  divu         a5, a1, a4
                  xor          s9, a6, t2
                  srli         tp, s11, 6
                  auipc        zero, 678961
                  mul          a5, zero, t1
                  c.srai       a4, 15
                  c.andi       a4, 3
                  mul          t4, a6, s2
                  andi         tp, s7, 1429
                  mul          s2, a7, a0
                  c.addi16sp   sp, 16
                  c.add        t1, s7
                  and          a0, s4, s2
                  mulhsu       t0, ra, s11
                  nop
                  xor          t0, t4, s4
                  srli         t4, t2, 13
                  ori          t0, s7, -1833
                  rem          s0, a2, t3
                  c.addi       a4, 27
                  ori          a1, s1, 912
                  c.andi       a3, -1
                  addi         tp, s11, 1573
                  c.mv         a4, sp
                  slt          s9, sp, a4
                  sra          s3, a1, s1
                  sltiu        zero, a4, 1205
                  lui          a1, 460821
                  sll          a4, sp, s2
                  c.addi4spn   s0, sp, 592
                  or           t3, s5, zero
                  mulhu        t6, tp, t1
                  slt          sp, a5, t5
                  srai         zero, a3, 29
                  c.andi       a4, -1
                  slti         a7, tp, 273
                  xor          s2, t3, zero
                  div          a0, s11, a0
                  sltiu        s0, s0, 1317
                  or           a0, s1, zero
                  remu         a4, t6, t1
                  c.addi       a0, -1
                  c.lui        s10, 10
                  c.addi       t3, -1
                  ori          a5, s5, 1372
                  sub          s9, t2, s2
                  c.add        s8, s8
                  or           s2, s5, a1
                  srai         t6, a5, 11
                  c.mv         a4, sp
                  and          sp, a5, s5
                  slli         a0, s9, 25
                  c.andi       a5, -1
                  sltiu        s10, s4, -1295
                  c.addi4spn   a3, sp, 816
                  c.or         s0, s1
                  sltu         t0, t0, s3
                  remu         a4, zero, sp
                  c.sub        s0, a5
                  lui          a0, 854445
                  mul          a2, s7, s10
                  slti         s0, s7, 1158
                  sra          a2, s9, s6
                  c.and        a3, a0
                  c.xor        s0, s1
                  ori          s6, t2, -295
                  c.add        s8, s5
                  sll          s2, tp, s11
                  mulhsu       a1, ra, a3
                  c.andi       a1, -1
                  mulh         a5, s9, s3
                  auipc        s10, 113807
                  rem          a6, ra, a1
                  nop
                  c.or         a2, a3
                  mulhsu       s0, a1, sp
                  c.lui        t1, 31
                  xori         a1, s11, -852
                  srli         a7, t4, 2
                  mulhu        s8, a3, a7
                  xor          a1, s10, sp
                  sll          s5, t4, a4
                  and          sp, t0, s8
                  c.andi       a4, 4
                  srl          s10, t3, t6
                  mul          t0, ra, s11
                  div          gp, t6, s1
                  addi         t6, gp, 783
                  auipc        t6, 813568
                  c.srli       a3, 22
                  andi         s11, s4, 1179
                  c.sub        a4, s1
                  rem          s4, a2, a0
                  div          s11, zero, gp
                  rem          a7, a2, s2
                  mulhu        s7, s3, a5
                  sll          zero, s6, s6
                  divu         a1, a0, a6
                  rem          s0, t5, s10
                  mulhsu       s0, a5, s10
                  sltu         s2, gp, a7
                  and          s2, tp, a1
                  c.lui        t1, 5
                  addi         t3, a0, 2028
                  slli         t6, s2, 16
                  srl          a4, a1, s6
                  c.mv         a2, tp
                  c.add        s9, s2
                  c.slli       s10, 20
                  c.lui        s11, 29
                  add          a6, a1, gp
                  nop
                  slt          s0, a1, s7
                  andi         a3, t4, -593
                  srl          a3, t5, t5
                  c.andi       a4, -1
                  mulh         a0, a4, s4
                  srl          tp, s3, s5
                  sub          t1, s7, s1
                  c.srai       s0, 22
                  srai         t6, sp, 28
                  xor          t5, s2, t6
                  c.addi       s10, 26
                  sub          s4, s5, s1
                  div          t0, s3, a2
                  c.and        a5, s0
                  c.add        t0, s1
                  c.lui        a0, 14
                  xori         gp, s2, -1090
                  remu         t0, a3, t5
                  srai         a3, s4, 13
                  sub          s8, s6, ra
                  c.and        a3, a5
                  ori          t3, s7, -28
                  c.srai       a0, 21
                  rem          a2, s3, t1
                  srl          t6, zero, s9
                  mulhsu       s4, t5, a5
                  remu         s7, a4, a4
                  srl          s10, t3, s0
                  lui          s4, 797068
                  nop
                  ori          t0, t3, -1691
                  c.nop
                  c.lui        s3, 20
                  slli         t4, s11, 13
                  sra          t4, a3, s3
                  c.li         a4, 20
                  c.andi       a5, 0
                  add          s3, s8, s5
                  div          a7, t4, t4
                  slti         tp, t6, 1428
                  c.addi       a6, 20
                  c.srai       a4, 5
                  mulh         s4, s5, s5
                  add          a5, s4, sp
                  sra          tp, a2, t1
                  c.sub        a3, a2
                  sll          s9, s2, gp
                  c.mv         a3, t1
                  sll          gp, gp, a4
                  xor          t4, tp, a4
                  srli         t3, a5, 23
                  sltu         s9, s9, a1
                  c.xor        a0, a2
                  xori         s10, s8, 704
                  c.mv         t5, s8
                  rem          a3, s6, s3
                  mulhsu       s2, a2, s4
                  ori          a4, a1, 2003
                  addi         gp, sp, 741
                  c.li         s2, -1
                  add          t1, s4, t5
                  c.addi16sp   sp, 400
                  sub          s5, a7, s5
                  c.srai       a0, 30
                  and          gp, a4, s10
                  or           a0, tp, sp
                  srl          gp, gp, a7
                  sub          s4, s9, s3
                  auipc        t3, 907578
                  c.add        gp, tp
                  c.srli       a3, 15
                  slti         s0, s1, -139
                  div          gp, zero, s1
                  add          gp, s8, t5
                  srli         a7, s8, 26
                  c.andi       a5, 23
                  div          a4, s9, s1
                  addi         t5, t1, -1830
                  c.mv         gp, a5
                  c.slli       t0, 6
                  c.add        s5, sp
                  and          t4, a3, s7
                  xor          a0, ra, t5
                  mulh         s8, ra, t5
                  sltiu        zero, s1, 585
                  or           tp, t6, t5
                  c.nop
                  c.xor        a2, a5
                  c.slli       s4, 16
                  slti         a0, a5, -1017
                  srai         zero, t4, 28
                  lui          a3, 556703
                  slt          s0, t0, a2
                  mulhu        a3, a5, a0
                  divu         a4, a3, s2
                  c.or         a4, a3
                  c.or         a3, a0
                  c.nop
                  sra          a0, ra, a6
                  srai         s2, a0, 22
                  c.sub        a3, a5
                  srli         zero, a7, 13
                  c.or         s0, a1
                  div          s6, s0, a4
                  srl          s11, sp, t6
                  srl          a2, gp, t4
                  c.lui        t4, 16
                  c.addi       tp, -1
                  srai         s3, a7, 25
                  andi         zero, s5, -955
                  c.andi       a4, 30
                  mul          s0, ra, s8
                  sll          s2, s3, a2
                  c.nop
                  rem          a2, ra, a6
                  srai         a1, t0, 28
                  ori          t5, a0, 86
                  c.and        a1, a1
                  sltiu        s5, t5, -71
                  c.srai       a0, 5
                  c.addi4spn   s0, sp, 240
                  xor          t1, a1, t6
                  mulhu        a5, gp, a1
                  divu         t3, gp, t5
                  xori         a6, t2, 799
                  addi         t5, a0, 1594
                  c.srai       s0, 1
                  rem          zero, s5, s5
                  nop
                  c.andi       a2, 20
                  sltiu        t0, s3, -1405
                  c.sub        a0, a1
                  c.addi4spn   a0, sp, 96
                  slti         s0, tp, 29
                  sll          sp, a4, s7
                  xor          t4, t2, s5
                  c.nop
                  or           a1, a1, t4
                  mulh         tp, a7, s7
                  sll          a6, s10, ra
                  ori          a5, a7, -1088
                  rem          t5, t5, sp
                  c.nop
                  ori          t0, s0, -1657
                  c.srai       a1, 27
                  c.srli       a3, 25
                  srl          a3, zero, a0
                  divu         s7, s5, t1
                  c.srai       a1, 20
                  xor          a3, s0, tp
                  c.srli       a5, 15
                  sltiu        s0, s1, -2012
                  slli         s4, s8, 28
                  lui          t3, 876227
                  sltu         s7, a7, s2
                  c.or         a4, a1
                  slti         tp, a1, -589
                  c.or         a1, a4
                  slli         t1, a2, 28
                  slli         t4, t0, 2
                  andi         s8, t4, -220
                  srli         t1, a1, 3
                  add          s11, s10, t6
                  rem          s0, a7, s10
                  c.andi       s0, -1
                  xor          s6, s6, a1
                  lui          gp, 383613
                  lui          zero, 700003
                  c.and        a5, a4
                  c.addi16sp   sp, -16
                  slli         s7, ra, 8
                  rem          a2, s1, zero
                  srai         sp, gp, 27
                  c.srli       a4, 8
                  andi         s0, gp, 1171
                  divu         a6, a2, s4
                  c.xor        a1, a1
                  c.addi4spn   a2, sp, 544
                  div          s6, t6, a5
                  c.add        s10, a1
                  c.nop
                  srli         s0, gp, 8
                  sll          a7, a7, s5
                  ori          t5, sp, 1814
                  slli         s2, tp, 15
                  add          gp, s7, s10
                  c.and        a1, a3
                  mulhsu       s4, tp, t1
                  slti         s7, s7, 757
                  divu         s10, t3, s2
                  srai         s10, s0, 23
                  c.srli       a2, 5
                  sltu         a1, a4, s7
                  c.add        t0, a3
                  c.addi4spn   a2, sp, 272
                  c.andi       s0, -1
                  slt          s9, a4, t6
                  c.or         a0, a1
                  c.andi       a3, 30
                  srai         s11, ra, 17
                  c.slli       s4, 11
                  or           t0, s6, s0
                  rem          a6, a6, a2
                  sltiu        s8, s6, -498
                  c.addi4spn   s0, sp, 560
                  and          s7, t0, s11
                  c.srai       a3, 30
                  sll          a7, t3, s0
                  mulh         a6, a1, s10
                  andi         a2, a7, 647
                  sll          a0, s11, s2
                  c.addi4spn   a3, sp, 544
                  srl          a0, s5, a1
                  sra          t0, sp, s6
                  c.addi       t5, -1
                  srli         t6, sp, 13
                  c.li         s3, -1
                  sra          s9, s9, s7
                  div          a2, s1, t5
                  srli         s2, s4, 29
                  slti         s6, a5, 964
                  div          a0, t6, tp
                  slt          s2, t0, a6
                  c.or         a3, s1
                  srai         gp, s8, 29
                  xori         s8, t5, 343
                  c.xor        a1, a1
                  c.nop
                  c.nop
                  mulhu        a4, s4, t1
                  c.addi16sp   sp, -16
                  c.li         s9, -1
                  c.mv         t6, ra
                  sltiu        t0, s11, -1602
                  sltiu        s6, t3, 1646
                  sltiu        a3, s0, 132
                  c.addi16sp   sp, -16
                  slti         zero, a6, 1017
                  c.lui        s0, 30
                  c.add        gp, a4
                  sltu         a7, s8, t5
                  mulhsu       zero, gp, t5
                  mulh         s6, s1, a2
                  c.sub        a3, a2
                  c.sub        a2, a5
                  mulhu        zero, s9, s5
                  mulhu        t0, s5, s9
                  mulh         s7, s5, ra
                  nop
                  srai         t5, s6, 24
                  auipc        s7, 504097
                  c.srai       a0, 17
                  sra          a7, t2, s8
                  xori         s11, a5, 229
                  slti         a7, a6, 1295
                  and          t6, zero, zero
                  sll          s11, s4, t4
                  and          t5, a6, a5
                  mulh         s5, ra, s9
                  c.nop
                  c.srai       a2, 8
                  mul          t0, a0, s5
                  slli         a1, t1, 1
                  slti         s11, s2, 821
                  slli         s6, t4, 19
                  c.lui        s11, 31
                  srli         a7, s1, 30
                  c.slli       s2, 27
                  c.lui        a4, 31
                  add          a5, a7, s8
                  auipc        s3, 151870
                  xor          sp, a4, a5
                  auipc        a4, 328784
                  c.lui        gp, 19
                  remu         s9, a3, s11
                  addi         a5, a3, 308
                  sltiu        t6, t0, 1705
                  srai         s9, t6, 14
                  c.li         s8, -1
                  c.slli       a6, 27
                  c.mv         s0, t2
                  div          a7, a1, t4
                  addi         t0, s9, -1041
                  mul          a1, s7, t1
                  c.addi       a4, -1
                  c.addi4spn   s0, sp, 496
                  c.add        s10, a6
                  slt          tp, t4, s5
                  div          s0, t2, a1
                  c.srai       s0, 6
                  c.andi       a0, 14
                  nop
                  srai         a6, s4, 7
                  c.li         a3, -1
                  c.xor        a5, a4
                  div          s6, s0, t2
                  andi         s2, t0, -930
                  mulhu        s0, a1, a1
                  c.addi4spn   a4, sp, 496
                  c.addi16sp   sp, 96
                  c.and        a2, s1
                  slli         a7, s10, 0
                  c.xor        a1, a1
                  divu         s7, s2, a0
                  xor          a7, ra, sp
                  c.srli       s0, 7
                  div          s9, t6, t1
                  rem          gp, sp, s10
                  sra          s9, t4, t3
                  c.srli       a1, 6
                  sltu         s2, t4, t3
                  sltu         tp, s10, s6
                  c.li         t6, -1
                  xori         sp, a5, 22
                  c.nop
                  nop
                  auipc        a2, 974602
                  mulhsu       a2, a7, t6
                  divu         s9, a1, ra
                  c.or         a3, a2
                  c.addi16sp   sp, 336
                  c.lui        s0, 17
                  c.and        a1, a5
                  c.nop
                  mulhsu       a1, s11, tp
                  and          s9, a3, sp
                  c.xor        a5, s1
                  auipc        s10, 738780
                  sltu         a3, a1, s6
                  c.srai       a0, 10
                  c.addi4spn   s0, sp, 864
                  add          a4, s3, a1
                  c.add        s9, a7
                  c.lui        t4, 13
                  andi         s3, gp, -947
                  lui          a3, 345131
                  div          s8, t6, s3
                  mulhu        a4, tp, gp
                  slti         s7, s3, 1118
                  sll          a7, s9, ra
                  c.nop
                  c.li         s8, 13
                  xori         s11, a7, 1329
                  lui          zero, 6851
                  xor          a6, t1, t3
                  c.addi4spn   a5, sp, 752
                  srl          a1, t6, tp
                  c.srai       a3, 4
                  sll          t5, a7, s0
                  add          a1, a0, s5
                  c.srli       a1, 30
                  c.li         s3, -1
                  auipc        a1, 374813
                  c.addi       a7, 20
                  sltiu        s6, s2, 1643
                  ori          a2, s1, -58
                  c.sub        a2, a1
                  c.add        a2, tp
                  andi         s10, a5, 1943
                  c.li         s7, -1
                  remu         sp, a1, a1
                  or           s10, t0, s6
                  remu         t1, a3, t0
                  c.nop
                  srai         a5, ra, 21
                  slt          t6, s10, a0
                  xor          a3, s1, s6
                  srli         t1, t2, 16
                  auipc        a4, 264159
                  mulhsu       s3, s2, a5
                  c.li         tp, -1
                  c.addi16sp   sp, 464
                  c.addi       t4, -1
                  srai         s7, ra, 6
                  ori          s9, ra, 661
                  add          s7, a5, s1
                  c.mv         a5, t5
                  c.li         s7, 14
                  add          t3, t0, a4
                  c.srli       a3, 22
                  slt          a1, zero, s3
                  remu         s9, a7, t5
                  sll          tp, t5, s3
                  remu         t5, s4, t1
                  lui          zero, 592388
                  srli         s7, a4, 26
                  lui          gp, 37683
                  sll          s6, a5, t0
                  c.mv         t4, s1
                  c.addi16sp   sp, -16
                  mulhu        tp, s7, s3
                  c.addi16sp   sp, 256
                  xori         s11, a6, 756
                  add          t4, sp, t4
                  c.srli       a3, 30
                  div          a5, tp, a1
                  srl          s11, s0, s6
                  sub          a5, a5, s5
                  nop
                  div          s10, ra, t5
                  mulhsu       a0, t3, s1
                  c.add        a2, s9
                  c.add        a0, s10
                  lui          a7, 225632
                  srli         s7, t2, 14
                  sub          s3, ra, a2
                  c.srai       a3, 23
                  c.mv         s7, t3
                  auipc        t5, 996526
                  c.sub        a2, a2
                  mulh         s10, t1, ra
                  ori          t1, a3, 1141
                  c.sub        a3, a0
                  c.nop
                  lui          t3, 458577
                  c.add        s0, a1
                  c.addi16sp   sp, 160
                  andi         t4, gp, -753
                  c.nop
                  srl          s8, s11, s11
                  xor          a1, s8, s8
                  c.xor        a0, a3
                  c.mv         a2, s1
                  divu         s5, s1, sp
                  or           zero, a0, t0
                  xor          t1, s9, t6
                  remu         sp, t4, t4
                  mulh         zero, s11, s6
                  xor          s8, t4, s0
                  lui          t0, 542487
                  mulh         a4, sp, s3
                  mul          a1, s6, t1
                  auipc        sp, 500697
                  rem          a4, s11, a2
                  div          a4, a2, t6
                  slt          zero, a2, s1
                  slt          s3, a7, s7
                  xor          sp, s11, s1
                  c.slli       t0, 30
                  c.add        t1, sp
                  auipc        tp, 540798
                  c.add        s6, s11
                  xor          s4, s11, s11
                  c.mv         a0, s9
                  xor          s4, s9, s11
                  c.or         a2, a5
                  sltu         a3, s1, s6
                  c.li         s10, -1
                  remu         s7, sp, a7
                  sltiu        s6, s7, 871
                  c.srai       s0, 12
                  c.or         a5, s0
                  andi         tp, a6, 866
                  c.nop
                  div          a4, gp, s9
                  mul          t3, s4, s10
                  c.addi       s6, -1
                  rem          s0, s5, tp
                  c.andi       s0, 23
                  c.sub        a4, a4
                  sltu         gp, s0, gp
                  c.lui        a6, 12
                  mulh         s0, s2, sp
                  add          gp, t1, s1
                  add          s2, sp, a4
                  c.sub        a1, a3
                  andi         s5, a6, -1485
                  c.addi16sp   sp, 480
                  remu         t1, s11, t3
                  or           tp, s9, s10
                  slti         s9, s1, -567
                  xor          s6, s8, s10
                  slli         s11, s0, 16
                  xori         s8, s2, -406
                  lui          s2, 378052
                  c.and        a5, a1
                  sltu         t5, s0, s7
                  div          tp, zero, t6
                  div          gp, a7, t1
                  sll          t6, sp, sp
                  mul          sp, s0, s5
                  remu         s5, s10, t3
                  addi         sp, a7, 697
                  add          a1, gp, tp
                  ori          s7, s9, -878
                  srai         a3, s11, 5
                  c.nop
                  mul          gp, s2, s0
                  mulhsu       a1, s9, t0
                  xori         s10, s1, -977
                  and          a4, s0, a5
                  remu         t5, s11, s0
                  c.addi16sp   sp, -16
                  and          s3, a4, s3
                  mulh         s9, a3, s9
                  sra          t1, t3, zero
                  add          s2, tp, t1
                  c.addi4spn   a4, sp, 576
                  div          s10, tp, gp
                  remu         t1, a2, zero
                  addi         t3, s3, -86
                  c.lui        s7, 7
                  c.nop
                  nop
                  c.nop
                  c.or         a2, a4
                  c.nop
                  c.mv         s2, s3
                  c.andi       s0, 15
                  sll          tp, tp, gp
                  srl          t3, a6, gp
                  xori         s9, t1, 1005
                  c.mv         s9, t0
                  c.xor        a4, s0
                  mulh         s5, gp, s7
                  c.andi       a4, -1
                  addi         t0, a3, -1843
                  c.or         a1, s1
                  rem          t4, ra, s1
                  c.sub        a3, a2
                  c.addi4spn   s0, sp, 192
                  slt          t5, a6, t1
                  mul          zero, a4, s5
                  c.addi16sp   sp, 336
                  addi         t3, t1, 537
                  c.addi4spn   a3, sp, 304
                  slt          t1, t1, sp
                  nop
                  srai         t3, gp, 28
                  auipc        a7, 748646
                  sltu         s3, a6, a2
                  c.or         a5, a5
                  add          a3, t2, a1
                  auipc        a6, 369493
                  ori          t6, gp, -578
                  c.add        s0, s11
                  sltiu        a2, a4, -516
                  divu         gp, a3, s0
                  remu         a3, t5, a7
                  mulh         sp, s5, a5
                  andi         s9, t6, -504
                  c.and        a3, s0
                  sra          s7, a4, t0
                  nop
                  c.srli       a1, 6
                  c.srai       s0, 1
                  c.nop
                  c.or         s0, a4
                  mulh         s8, s11, ra
                  c.and        s0, a3
                  and          s5, t2, s10
                  auipc        s6, 817501
                  xori         tp, t0, 1959
                  xor          zero, t4, a3
                  c.addi16sp   sp, 128
                  c.add        s10, a1
                  xori         a1, t4, -147
                  xori         tp, sp, 288
                  sub          s6, s4, s2
                  xor          t5, s2, t3
                  c.nop
                  mulhsu       gp, t1, sp
                  xor          t3, t6, gp
                  c.nop
                  srli         t6, a3, 24
                  c.sub        a3, a1
                  mulh         a3, gp, tp
                  c.srai       s0, 27
                  c.slli       a1, 8
                  andi         sp, a6, -1026
                  add          s10, t0, a3
                  c.add        a0, s6
                  srl          a4, ra, ra
                  mulhu        s3, s7, s3
                  c.srli       a3, 21
                  mul          t0, a0, t1
                  c.nop
                  sll          a5, s6, a0
                  c.slli       a3, 9
                  divu         s11, s1, s4
                  divu         tp, t6, s6
                  ori          tp, t0, -1939
                  and          a4, s5, s7
                  sub          a2, t0, s11
                  remu         a5, a0, t0
                  or           s10, t1, s10
                  sll          s2, t0, ra
                  xor          s3, t6, a1
                  c.addi4spn   a3, sp, 608
                  or           s8, t3, s11
                  slli         s4, a2, 22
                  c.and        a2, s0
                  mulhsu       s3, a1, s8
                  auipc        t5, 233697
                  slti         zero, t2, -790
                  c.li         s7, 30
                  mulhsu       t4, t4, a4
                  c.addi16sp   sp, -16
                  sltu         gp, s7, a1
                  c.srli       a0, 21
                  remu         a2, s9, s3
                  add          s5, s5, t6
                  c.or         a3, a5
                  c.addi4spn   a0, sp, 592
                  lui          s6, 660950
                  mul          a6, s9, a4
                  mulh         s5, a5, a5
                  c.sub        a3, a1
                  mul          zero, t1, t4
                  slti         a1, tp, -902
                  c.add        a4, s0
                  nop
                  mul          s4, gp, zero
                  and          a7, a3, s0
                  c.mv         t0, s8
                  c.andi       s0, -1
                  sltu         s8, a7, gp
                  and          a1, s3, t0
                  c.lui        t4, 29
                  lui          a7, 281663
                  lui          tp, 496599
                  remu         s4, a6, t5
                  mulhsu       s3, t5, s7
                  c.addi16sp   sp, 368
                  c.addi       s3, 2
                  c.add        a3, a0
                  mulh         s11, s3, s9
                  c.or         a2, a3
                  c.sub        a0, s1
                  ori          t0, s8, 1445
                  srli         t6, gp, 22
                  c.or         a5, a3
                  c.sub        a1, a1
                  c.sub        a1, a1
                  c.li         sp, 2
                  sltu         s8, s9, a3
                  sub          gp, t1, s7
                  c.and        a4, s1
                  c.addi       s10, -1
                  c.addi16sp   sp, -16
                  mul          a2, tp, tp
                  c.mv         sp, a1
                  ori          a4, s9, 563
                  sltu         s7, s10, a1
                  mul          zero, a2, sp
                  remu         a0, a6, s8
                  remu         a3, a7, t1
                  sltiu        t3, tp, -1932
                  srai         tp, s10, 18
                  ori          s0, a0, -1351
                  addi         a0, s9, -190
                  divu         t6, t1, s0
                  c.srai       a5, 16
                  c.and        a5, a5
                  c.srli       a3, 27
                  sra          zero, s9, s3
                  c.nop
                  sra          s9, s8, a6
                  c.andi       a3, -1
                  or           s11, s1, a6
                  remu         zero, a2, a6
                  c.li         t0, 26
                  slt          s4, s4, sp
                  ori          s3, t2, 1251
                  sltu         s11, a3, a3
                  divu         a1, a2, t2
                  xor          t6, t1, a6
                  c.addi4spn   a2, sp, 144
                  rem          s3, a6, tp
                  c.mv         s5, s3
                  sltiu        s2, s8, -577
                  srai         a6, t6, 18
                  sll          s6, s3, s4
                  ori          tp, t0, 860
                  ori          s8, a4, -1095
                  xori         s8, t4, 1397
                  srl          tp, ra, gp
                  slti         s3, tp, -987
                  c.sub        a4, a1
                  c.add        t5, a1
                  c.slli       a6, 1
                  c.addi4spn   a0, sp, 592
                  div          s3, t0, zero
                  auipc        t5, 682942
                  or           a3, s6, t5
                  c.addi4spn   a2, sp, 336
                  c.mv         a0, a6
                  div          a0, gp, s9
                  c.lui        s11, 28
                  xori         a5, s8, -1987
                  c.or         a2, a3
                  c.srai       a3, 21
                  c.srli       a2, 7
                  divu         t6, s3, zero
                  nop
                  c.and        a2, a5
                  c.add        s7, s7
                  c.li         a3, 21
                  nop
                  c.add        s3, s3
                  and          s4, s7, zero
                  div          s10, a3, t3
                  rem          s7, s8, t1
                  mulh         t6, sp, tp
                  srl          a6, a3, s11
                  mul          s9, a4, a1
                  c.andi       a2, -1
                  divu         t3, a1, ra
                  andi         t6, t2, -787
                  c.slli       s3, 12
                  sub          s2, s8, zero
                  sltu         a5, a6, a5
                  c.li         t1, -1
                  add          t1, gp, t4
                  and          s8, t4, gp
                  c.li         s2, -1
                  mul          a7, s1, t2
                  sra          t5, s10, a4
                  ori          t6, ra, -1567
                  or           s7, tp, a3
                  c.srai       a2, 2
                  sra          s11, s10, a0
                  or           zero, a1, ra
                  c.li         a5, -1
                  c.srli       a2, 8
                  c.mv         s4, a0
                  c.mv         a6, s10
                  ori          s0, s4, 1364
                  mulhu        t1, a4, s11
                  c.xor        a1, s1
                  add          t6, t2, s9
                  add          t5, s9, a6
                  mul          a5, t0, t5
                  c.addi4spn   s0, sp, 48
                  rem          t6, s10, a5
                  mul          a2, a2, zero
                  c.slli       t6, 1
                  lui          a2, 635827
                  sll          t5, a1, a0
                  slti         a6, a3, 1209
                  or           t5, a3, s6
                  c.srli       a5, 23
                  c.xor        a0, a2
                  sltiu        a1, a1, -1202
                  srli         s11, zero, 20
                  auipc        s0, 769610
                  div          a2, zero, a7
                  c.lui        t4, 28
                  slli         s3, s3, 16
                  slti         s9, s10, -49
                  c.andi       a4, 15
                  srai         sp, tp, 24
                  rem          a2, s9, t5
                  c.mv         s0, s10
                  ori          s3, a7, -1584
                  nop
                  divu         zero, s8, s7
                  c.slli       a4, 30
                  c.addi       a4, 13
                  mulhu        a7, t1, s7
                  c.add        a2, t6
                  mulhsu       s7, gp, a7
                  srai         s7, a3, 11
                  divu         t1, s10, s11
                  c.and        a2, a4
                  remu         a7, zero, a1
                  c.or         a2, a4
                  nop
                  auipc        gp, 598918
                  xori         a4, a4, 1776
                  c.srai       a1, 1
                  c.addi16sp   sp, -16
                  c.slli       s2, 11
                  c.lui        t4, 23
                  ori          a6, s3, 62
                  c.addi4spn   a5, sp, 240
                  sll          t0, a5, t3
                  c.nop
                  c.addi4spn   a3, sp, 48
                  and          a0, ra, s5
                  slti         s11, s3, -1979
                  div          s0, s2, a5
                  c.and        a0, s1
                  c.addi4spn   a5, sp, 224
                  ori          a3, s2, 751
                  lui          t4, 60948
                  c.lui        s6, 27
                  c.addi4spn   a5, sp, 576
                  c.addi4spn   a5, sp, 384
                  srli         s0, t4, 12
                  c.nop
                  lui          a1, 203549
                  c.li         a5, 11
                  auipc        t6, 898472
                  sub          s5, a7, a4
                  rem          a7, s1, a5
                  mulhsu       t0, a4, s9
                  mulh         t5, gp, t1
                  c.slli       s10, 21
                  srli         a2, s4, 3
                  nop
                  and          s10, s3, sp
                  xori         a4, a7, 179
                  c.lui        gp, 10
                  mul          a1, a6, gp
                  c.srli       s0, 23
                  nop
                  c.nop
                  sltiu        a4, s0, -1877
                  srl          a4, s10, t0
                  c.mv         s3, s2
                  c.or         s0, a4
                  srl          a5, t1, a3
                  c.addi16sp   sp, 192
                  divu         s11, s10, gp
                  sltiu        s9, s11, -908
                  div          s4, ra, tp
                  nop
                  sra          a0, ra, t6
                  slti         s8, t4, 463
                  c.srli       a3, 26
                  sltu         t1, s0, ra
                  or           s8, sp, s5
                  nop
                  and          s7, a5, s6
                  c.add        t0, s1
                  srli         a4, sp, 2
                  c.and        a1, a1
                  remu         t3, s7, t3
                  div          t0, sp, s3
                  divu         s4, a3, a7
                  and          s7, s4, t2
                  xori         t5, t0, -225
                  sll          s4, t0, s8
                  srli         t6, a4, 6
                  c.and        s0, a1
                  sltu         s2, t6, s5
                  addi         s7, s1, 1159
                  srl          s10, s10, s7
                  mulhsu       t5, s2, s9
                  rem          t0, t6, t5
                  sltu         t0, s1, a7
                  andi         tp, s4, 1693
                  xori         a2, tp, -1652
                  c.addi       a2, -1
                  c.lui        a4, 8
                  c.addi       gp, -1
                  c.lui        a3, 16
                  sll          tp, tp, t4
                  sra          s0, a0, s2
                  xor          s10, s9, s0
                  srl          a3, ra, t3
                  c.lui        a0, 17
                  c.nop
                  c.sub        a4, a5
                  sltiu        s5, ra, -173
                  sltiu        a3, a6, 962
                  srli         zero, t0, 9
                  remu         a6, s0, s2
                  c.addi4spn   s0, sp, 640
                  slti         s3, a5, 966
                  mulhsu       s9, s2, a3
                  lui          a7, 529643
                  mulhu        s4, t5, s9
                  and          a1, s2, t6
                  c.nop
                  mul          t0, tp, a7
                  sra          tp, a4, sp
                  mulhsu       a5, s8, a5
                  sub          a1, t4, s5
                  c.sub        s0, a2
                  c.lui        a0, 12
                  c.srai       a0, 1
                  slli         s11, tp, 24
                  sltiu        t3, t0, -266
                  divu         s4, t4, a7
                  sll          s11, s11, s1
                  srl          t1, s6, a0
                  ori          s11, a7, -1188
                  add          t3, t6, t1
                  c.addi4spn   a3, sp, 784
                  mul          a7, t1, t6
                  slti         a0, zero, -147
                  nop
                  c.li         gp, -1
                  c.nop
                  sltiu        s3, s7, -1813
                  sub          a1, s0, s4
                  slli         sp, s5, 16
                  andi         sp, a2, 1605
                  add          zero, s6, a0
                  nop
                  addi         s6, a6, 1525
                  sub          t4, s2, a4
                  c.sub        a1, a3
                  srli         sp, a2, 31
                  add          t5, s1, t6
                  divu         t5, a5, a1
                  c.addi16sp   sp, -16
                  c.mv         s7, s7
                  c.srai       a0, 29
                  divu         a4, t1, t6
                  divu         gp, t4, s9
                  lui          s3, 171372
                  add          zero, s8, s3
                  sltiu        s8, a7, -490
                  andi         s3, a4, -1056
                  rem          s10, sp, s4
                  c.li         t1, -1
                  sll          t1, s0, s9
                  auipc        zero, 225906
                  c.srai       a1, 31
                  c.mv         sp, t4
                  mul          gp, a1, s5
                  c.mv         s8, a6
                  c.addi       a7, 14
                  sra          a3, tp, a4
                  mulh         a3, s10, t6
                  c.sub        a4, a5
                  c.addi4spn   a3, sp, 32
                  c.andi       a4, -1
                  div          sp, s8, a5
                  addi         gp, s4, 822
                  c.li         a5, 11
                  srli         s10, s1, 10
                  c.addi       a3, -1
                  mul          s3, s11, zero
                  divu         a0, t6, t2
                  and          a1, t6, s6
                  andi         gp, s10, -1212
                  remu         gp, gp, a6
                  c.lui        s4, 1
                  mulh         a6, t6, t4
                  xor          s3, a5, a0
                  c.slli       s11, 24
                  c.slli       a0, 13
                  c.add        s2, s7
                  c.sub        a4, a4
                  c.and        a3, a1
                  mulhsu       gp, t2, s5
                  xori         s8, a0, -2004
                  c.or         a3, a4
                  c.nop
                  sltu         s10, gp, s8
                  c.addi16sp   sp, 368
                  sll          a0, a7, a6
                  c.xor        a1, s0
                  c.addi       s9, -1
                  and          a1, s0, tp
                  slti         s11, s10, 4
                  c.li         s0, -1
                  or           s8, t5, t5
                  c.or         a5, a3
                  xori         t0, a2, -1803
                  c.li         gp, 30
                  xori         a1, t0, 983
                  c.add        s0, a4
                  c.or         a3, a0
                  c.addi16sp   sp, -16
                  c.xor        a5, a0
                  mulhu        s4, s1, s7
                  c.mv         a5, a7
                  c.sub        a4, a0
                  c.andi       a1, 6
                  remu         s10, s2, a4
                  c.slli       s4, 26
                  c.addi4spn   a3, sp, 896
                  mulhsu       zero, s9, sp
                  c.or         a4, a4
                  srai         s2, t6, 22
                  rem          gp, t0, s2
                  srli         a0, t4, 0
                  c.srli       a0, 14
                  c.srai       a1, 23
                  mulhsu       s11, s11, s2
                  sltu         t5, sp, zero
                  c.addi16sp   sp, 496
                  srl          s4, s3, ra
                  addi         s11, gp, 1287
                  andi         t5, a7, 1597
                  c.addi16sp   sp, 96
                  remu         zero, s6, s3
                  c.nop
                  auipc        t4, 241952
                  sub          a0, s5, a0
                  mulhu        s5, t2, t5
                  c.nop
                  remu         t0, t4, t1
                  c.addi       t0, 30
                  rem          a1, sp, s1
                  sra          s11, t3, s3
                  slt          t0, s2, s8
                  c.srai       a4, 13
                  c.nop
                  mulh         a7, s0, a5
                  sltiu        a2, gp, 1768
                  divu         a1, a1, s11
                  rem          t0, s6, zero
                  c.srai       a1, 23
                  c.nop
                  sra          gp, t4, sp
                  sub          t1, s3, a6
                  and          a6, tp, a4
                  c.addi       t0, 29
                  rem          a1, s3, s3
                  slli         a6, s5, 4
                  sll          zero, s2, a2
                  c.andi       a1, 23
                  c.srli       a2, 16
                  c.lui        t1, 9
                  mul          s2, s3, t0
                  mulhu        a0, s0, a1
                  andi         a3, t5, -1021
                  sltu         a4, gp, a3
                  sltu         t0, s1, t5
                  sltiu        s0, a7, -1021
                  c.andi       a2, 15
                  mulh         a7, s11, zero
                  mulhu        t1, t5, a1
                  c.xor        a1, a1
                  c.and        s0, a3
                  xor          t5, s8, a6
                  sub          s9, a0, a3
                  sltiu        s0, sp, -273
                  mulhsu       a6, s11, t5
                  c.slli       s9, 30
                  and          sp, t5, s2
                  auipc        t1, 321451
                  c.addi       t4, -1
                  add          a5, ra, ra
                  c.xor        a5, a2
                  slt          t4, a0, s0
                  mul          a0, ra, a0
                  c.addi16sp   sp, 448
                  c.lui        t6, 24
                  c.slli       a7, 11
                  c.srai       a3, 29
                  c.andi       a1, -1
                  sra          t4, a7, s6
                  xori         a1, s11, 1914
                  c.andi       a1, -1
                  mulh         a1, a1, s11
                  mulhsu       a5, a6, s9
                  divu         a7, s11, a4
                  c.srai       a5, 2
                  add          gp, s7, s3
                  c.addi       s8, -1
                  srl          s10, s3, s10
                  srli         a1, s10, 3
                  c.sub        a3, a5
                  ori          t1, t2, 1726
                  slli         sp, zero, 13
                  sltu         gp, a3, t1
                  c.mv         s5, a0
                  c.and        a4, a3
                  rem          a7, gp, t2
                  c.addi4spn   a5, sp, 736
                  slti         t1, s4, -912
                  slt          s5, ra, a4
                  xor          t1, s1, t6
                  c.addi       a5, 22
                  srai         s8, s3, 11
                  divu         gp, s7, s2
                  sll          sp, gp, ra
                  srli         s5, s4, 25
                  c.slli       s9, 16
                  xor          t5, a0, t1
                  c.addi4spn   a0, sp, 976
                  c.mv         a5, s10
                  mulhu        s5, s9, a1
                  mulhu        s9, ra, ra
                  addi         t1, s1, 337
                  c.addi4spn   a3, sp, 800
                  or           tp, s9, sp
                  c.addi4spn   a3, sp, 832
                  c.addi4spn   a2, sp, 368
                  slli         t4, s11, 12
                  slli         a4, t6, 20
                  mulh         a2, s10, t3
                  ori          s10, s4, 515
                  srli         tp, s4, 24
                  sub          a7, a3, a1
                  srli         s11, a5, 29
                  mul          s7, s6, a6
                  slti         a2, a6, 1628
                  add          a5, s9, s1
                  mulhu        s2, gp, s5
                  c.add        s6, t6
                  c.slli       sp, 16
                  mulhsu       a7, a2, s11
                  c.addi4spn   a2, sp, 608
                  mul          a4, s5, a1
                  c.addi16sp   sp, -16
                  lui          a4, 9234
                  xor          t6, t4, t0
                  c.xor        a5, s1
                  remu         s9, gp, a1
                  c.li         a7, 15
                  c.sub        s0, s1
                  mul          a2, gp, a4
                  addi         zero, tp, -1112
                  c.andi       a4, -1
                  nop
                  c.sub        a2, a2
                  srl          s6, s10, zero
                  c.or         s0, a5
                  c.lui        s2, 13
                  srli         s11, s2, 20
                  c.or         a5, a2
                  xori         a5, t0, -1439
                  c.sub        a2, a0
                  sltiu        tp, s9, -1235
                  c.mv         s7, t6
                  c.addi16sp   sp, -16
                  sltu         s4, t3, s8
                  c.addi4spn   s0, sp, 752
                  andi         s3, s7, -1900
                  auipc        a5, 410205
                  ori          t3, a7, 2018
                  lui          s0, 909325
                  lui          a6, 431820
                  c.lui        t0, 1
                  slli         s5, t1, 11
                  divu         gp, a0, t2
                  sub          t0, t3, a7
                  slti         a4, a2, 1993
                  ori          a4, sp, 1922
                  sra          s9, s11, ra
                  c.lui        a7, 15
                  c.slli       t5, 6
                  c.mv         t3, a3
                  c.nop
                  addi         t6, s8, -271
                  c.mv         s3, t3
                  c.or         s0, s0
                  divu         s5, t0, s6
                  xor          a6, a5, s7
                  addi         s8, s1, 313
                  nop
                  c.srai       a2, 25
                  c.or         a1, a1
                  or           a5, s9, s10
                  remu         a1, s1, ra
                  and          tp, t4, t0
                  mulh         t5, t6, a4
                  and          s4, s3, s7
                  c.addi4spn   s0, sp, 656
                  mulhu        s7, a6, s8
                  div          a0, t3, s9
                  divu         sp, sp, a4
                  mulhsu       a3, t2, s2
                  c.slli       t4, 20
                  c.addi       a3, 30
                  add          a7, a3, s4
                  and          t3, s3, s11
                  mulhsu       a7, a7, s8
                  c.add        s5, s11
                  add          t0, t5, s1
                  add          a5, zero, t4
                  c.add        t3, ra
                  sltiu        s0, s7, -145
                  ori          t6, a5, -1899
                  xori         a1, t6, 1386
                  xor          s8, t6, s3
                  or           a0, s2, a5
                  c.add        a0, a3
                  c.sub        a3, a2
                  c.andi       s0, -1
                  or           a6, t6, zero
                  sra          zero, s11, sp
                  c.srai       s0, 22
                  andi         t1, s8, 1191
                  rem          s0, t6, a2
                  c.addi4spn   a2, sp, 672
                  c.srai       s0, 21
                  mul          s7, a2, t5
                  mulh         s8, a3, t3
                  div          s3, a3, zero
                  c.or         a4, a5
                  c.srai       a1, 2
                  c.xor        a3, a4
                  c.slli       t1, 26
                  mulhu        s8, t0, t1
                  lui          t5, 995914
                  mulh         a7, sp, t1
                  c.add        a6, a2
                  slli         t4, t1, 14
                  sra          s4, a3, t4
                  c.srli       a5, 14
                  lui          a7, 624034
                  mulhu        a5, t3, s8
                  sub          gp, a7, t1
                  xor          s11, sp, t0
                  c.and        a3, a3
                  sltiu        s9, t5, -1562
                  srl          s4, a6, a0
                  srli         t5, ra, 17
                  sra          t5, a1, a3
                  c.li         a1, -1
                  mulhsu       s5, t2, a4
                  c.nop
                  mul          s10, t6, s4
                  div          s4, s5, t3
                  mulhu        t6, a3, s6
                  c.addi       gp, 12
                  slt          a1, t6, s1
                  slt          a1, t5, s9
                  c.lui        a7, 26
                  rem          a5, s3, s1
                  sltu         sp, t6, s8
                  c.lui        tp, 17
                  srl          s4, s1, a2
                  c.andi       a4, -1
                  sll          t6, s2, s6
                  mulhu        zero, s2, t2
                  mulhsu       s11, s6, zero
                  slt          a5, a7, s4
                  c.mv         a6, a4
                  c.addi16sp   sp, 64
                  mulhsu       a1, s6, t2
                  c.addi16sp   sp, 128
                  c.addi4spn   a2, sp, 240
                  c.srli       a3, 6
                  xor          s3, a3, a7
                  slli         a5, a4, 14
                  c.lui        t3, 23
                  and          s7, a7, ra
                  mulhu        sp, t1, a7
                  sltiu        a4, s9, 1935
                  c.li         a4, 20
                  mulh         t0, gp, gp
                  c.srai       a2, 24
                  srl          s10, s10, s11
                  mul          s8, t2, s9
                  c.slli       a6, 21
                  remu         t4, t5, s10
                  mulhsu       s2, s11, s2
                  c.srli       a2, 7
                  c.srai       a0, 26
                  c.addi16sp   sp, 368
                  lui          gp, 697315
                  c.srli       a3, 2
                  c.addi       t1, 14
                  c.xor        a1, a1
                  c.srli       a0, 26
                  c.srai       s0, 16
                  c.addi4spn   a3, sp, 592
                  add          zero, s1, t5
                  c.xor        a2, a3
                  andi         t6, zero, 1304
                  c.slli       s9, 12
                  c.add        sp, s10
                  addi         t1, s0, 1461
                  c.xor        a2, s0
                  c.sub        a3, a0
                  c.andi       s0, -1
                  add          t0, zero, s5
                  xor          s6, a1, s11
                  srai         a0, s5, 29
                  c.mv         s2, a7
                  remu         s5, t5, s11
                  sltiu        a3, t4, 1754
                  c.srai       a2, 13
                  andi         tp, s7, 211
                  c.xor        s0, a2
                  c.srai       s0, 25
                  add          t5, a2, a1
                  srl          t5, s8, s0
                  andi         a1, ra, -705
                  c.andi       a2, 30
                  c.srli       s0, 18
                  add          t3, a0, ra
                  xor          gp, s2, t4
                  c.add        a6, s8
                  or           gp, t0, t5
                  auipc        s11, 164824
                  mulhsu       s10, s4, t0
                  andi         s5, s2, 296
                  mulhu        t1, s1, a3
                  slti         s6, s10, 20
                  c.nop
                  srai         t6, a4, 22
                  mulhu        t1, t5, a4
                  sra          tp, a6, a7
                  c.andi       a1, 21
                  xori         t0, s1, -733
                  slti         s10, s10, -1934
                  addi         s2, gp, -416
                  or           s3, a1, a5
                  rem          a5, t5, t3
                  c.nop
                  slli         tp, ra, 1
                  c.li         a7, 25
                  c.addi       tp, -1
                  c.nop
                  c.slli       s5, 26
                  sltiu        t6, a7, -1953
                  remu         a1, t4, t6
                  mulhu        a3, s0, a4
                  sltu         s11, a2, s11
                  c.andi       a2, 9
                  or           s0, s11, s10
                  nop
                  c.nop
                  slt          gp, s6, a4
                  div          t5, t5, s6
                  c.andi       a5, 12
                  add          t6, ra, a0
                  c.srai       a5, 16
                  c.lui        t1, 28
                  mul          s5, a4, s5
                  c.or         a3, a0
                  sub          a5, s5, s2
                  nop
                  c.addi       a6, 20
                  xori         a2, s6, 1271
                  c.addi4spn   a3, sp, 544
                  rem          s0, t0, a2
                  add          t6, a0, s9
                  ori          a6, t2, 1720
                  c.li         a3, -1
                  c.or         a3, a3
                  srli         s11, s11, 18
                  c.and        a4, a1
                  c.and        a5, s0
                  sltu         s10, s7, zero
                  c.slli       s4, 31
                  slli         sp, s4, 7
                  c.li         a2, -1
                  c.addi16sp   sp, 464
                  srli         s8, a3, 9
                  xor          s6, a1, s3
                  c.slli       tp, 26
                  c.addi4spn   a2, sp, 896
                  sra          a1, a6, a0
                  andi         a2, s11, 1786
                  mulhsu       tp, ra, s10
                  div          s9, s3, s1
                  mulh         s11, t5, a0
                  sub          s2, a1, t3
                  sltu         tp, s7, a3
                  xor          t3, t6, a0
                  srl          s2, t6, s10
                  c.slli       t4, 26
                  xori         a7, a5, 121
                  and          t3, s5, t6
                  c.nop
                  sll          t4, a2, s0
                  xor          t6, a1, s5
                  mulhsu       s4, a5, t3
                  c.and        a0, s1
                  slli         s6, s9, 17
                  sra          t6, s4, a5
                  sub          a2, s7, t3
                  ori          t1, t6, 457
                  srli         s9, a1, 13
                  add          a1, a4, s6
                  mul          gp, t0, s10
                  remu         s10, s9, t5
                  addi         s3, t1, -1910
                  slli         s3, ra, 12
                  nop
                  mulhu        gp, sp, zero
                  c.add        s8, t3
                  c.andi       a5, -1
                  divu         a5, a4, t4
                  sll          s9, s4, t2
                  rem          s0, a6, s7
                  c.slli       gp, 31
                  ori          sp, s6, 80
                  div          a0, s7, s9
                  and          s6, a6, a3
                  add          s6, zero, s10
                  xori         zero, s11, 677
                  slt          s5, s6, t5
                  nop
                  srai         a1, a0, 29
                  remu         s10, s5, s5
                  xor          a3, t5, s2
                  c.sub        a5, a2
                  c.sub        a0, a5
                  remu         s0, t4, s4
                  srai         a7, s6, 9
                  ori          s6, a7, 18
                  and          s5, s11, s8
                  c.srli       a2, 5
                  xori         t6, t4, -1673
                  auipc        s10, 685205
                  add          t6, t4, ra
                  c.and        a2, s1
                  c.and        a3, s1
                  mulhu        s7, a4, a7
                  c.andi       s0, -1
                  c.slli       gp, 30
                  c.lui        s11, 6
                  andi         t5, t4, -1583
                  c.slli       t4, 8
                  c.andi       s0, 10
                  ori          a3, tp, 1385
                  andi         t1, s3, -1860
                  addi         s3, a1, 1316
                  c.li         sp, -1
                  mul          t0, s4, s10
                  c.lui        s5, 29
                  mulh         a0, s0, a5
                  c.slli       a7, 14
                  c.or         a0, a5
                  nop
                  andi         s9, s9, -919
                  slti         s0, a5, 1659
                  c.addi4spn   a0, sp, 400
                  remu         s11, a3, s0
                  div          s10, t1, s5
                  or           s2, t4, s11
                  sll          s2, s10, gp
                  c.sub        a3, a3
                  c.lui        s2, 21
                  c.and        a3, s0
                  c.slli       s0, 31
                  c.nop
                  rem          t3, t5, t3
                  divu         a7, s9, s0
                  mulh         s9, a2, s11
                  divu         a6, s11, sp
                  ori          a3, s6, -716
                  sub          s3, s5, a1
                  rem          zero, sp, s7
                  ori          t6, t4, -753
                  srl          a1, s7, s2
                  c.andi       a5, 21
                  c.nop
                  c.addi4spn   a0, sp, 368
                  srl          a7, s3, a6
                  auipc        a7, 944691
                  xori         a0, t5, -165
                  c.mv         s10, gp
                  c.addi4spn   a0, sp, 208
                  mulhu        t3, a3, tp
                  auipc        s9, 11448
                  c.sub        a2, a4
                  add          s10, ra, s6
                  auipc        a4, 943921
                  mulhsu       zero, s10, tp
                  c.li         a7, 17
                  sltu         a3, s7, gp
                  srai         a4, s3, 27
                  mul          a7, s9, t0
                  nop
                  sll          s9, t4, t2
                  c.slli       t3, 7
                  c.add        a4, a6
                  ori          s4, a2, 1510
                  mulh         gp, s9, t6
                  srli         t6, t3, 19
                  sub          a6, s11, a3
                  c.xor        a4, a5
                  c.addi       s4, 2
                  mul          gp, s1, t5
                  c.add        s0, s11
                  srl          s4, t1, s1
                  c.andi       a5, 25
                  mulhu        a6, tp, zero
                  c.lui        a1, 7
                  c.add        a1, s8
                  slt          t3, s6, s3
                  c.slli       t3, 1
                  rem          s7, a5, s4
                  c.slli       sp, 3
                  slti         s4, t2, 1129
                  and          t3, s6, t0
                  slt          a4, sp, s3
                  auipc        t3, 278874
                  mul          t5, ra, a3
                  lui          t0, 766333
                  ori          a2, s11, -380
                  mulhu        s6, t2, t5
                  c.addi       sp, 8
                  sltu         a4, t2, a2
                  add          t0, s7, t0
                  remu         gp, a6, s4
                  c.addi       sp, -1
                  andi         t1, sp, -875
                  slt          a7, s11, s7
                  slt          a3, gp, tp
                  nop
                  sra          s7, tp, a1
                  xori         t5, a4, 1293
                  c.lui        t4, 23
                  add          s6, s3, s0
                  c.add        a5, gp
                  c.mv         a4, tp
                  srl          a5, t2, t3
                  srl          a4, t3, gp
                  mulhu        zero, zero, t5
                  sra          a0, zero, s6
                  sll          s8, s5, t2
                  andi         a3, s6, -1224
                  c.and        a3, s0
                  c.andi       a3, -1
                  c.add        t1, s1
                  xori         tp, s6, -1469
                  mulh         a1, t0, zero
                  c.mv         a0, tp
                  c.li         a2, 17
                  or           a2, t1, zero
                  c.slli       s10, 30
                  c.sub        a4, a5
                  mulhsu       s5, tp, a6
                  andi         s8, ra, 620
                  sll          s8, a3, s5
                  nop
                  andi         a1, s11, -409
                  sltu         a6, a0, a2
                  div          s9, a1, s5
                  lui          s9, 294759
                  auipc        a6, 459949
                  c.add        a0, t4
                  remu         tp, s11, tp
                  c.srli       a0, 27
                  srl          zero, a3, s7
                  c.srai       a2, 31
                  c.srai       a0, 28
                  c.mv         s7, s9
                  c.add        t3, a1
                  sltu         a6, a5, gp
                  c.addi       s0, 6
                  slli         a0, a6, 15
                  c.add        s0, a3
                  sltu         s7, s3, gp
                  sll          s0, t5, s9
                  sub          s2, s3, t1
                  and          t3, a0, s11
                  c.and        a5, a5
                  auipc        a1, 667940
                  nop
                  c.addi       sp, 11
                  c.nop
                  c.slli       s4, 18
                  slt          a3, a6, a1
                  c.addi       t4, 3
                  c.nop
                  ori          t4, t4, -1403
                  sltu         s3, t4, t5
                  xori         gp, t3, 124
                  srli         s10, s1, 27
                  c.srli       a5, 16
                  and          a7, a4, t6
                  c.lui        a4, 22
                  c.mv         s4, t2
                  mul          t3, zero, s7
                  c.mv         a7, s9
                  add          a3, a2, a3
                  c.lui        tp, 4
                  mulhu        t1, s9, s5
                  ori          s0, s9, 1392
                  remu         s11, a3, gp
                  sll          a2, s4, ra
                  mulhsu       a5, t0, s9
                  sll          s11, a7, s3
                  addi         a3, t3, 944
                  slti         s9, t2, -577
                  divu         t5, s6, s7
                  c.add        s9, s11
                  c.li         sp, -1
                  divu         t1, tp, s4
                  srli         a5, ra, 26
                  c.li         t0, -1
                  c.sub        a3, a4
                  auipc        a0, 231431
                  or           s10, t3, s5
                  rem          a3, s10, a0
                  xori         a0, a0, 915
                  c.xor        a2, a1
                  lui          a7, 413590
                  c.xor        a3, a4
                  slt          s3, t4, t3
                  srli         s6, s0, 5
                  sltiu        s4, s10, 165
                  rem          t0, a4, s9
                  mulh         s6, s8, a7
                  divu         a4, s7, t4
                  c.slli       gp, 21
                  c.and        a5, s1
                  c.li         t1, -1
                  sll          s9, sp, a0
                  c.addi4spn   s0, sp, 656
                  ori          a5, zero, 922
                  sltu         a1, s11, a4
                  add          t3, a7, a1
                  mul          t1, s1, s3
                  c.srli       s0, 4
                  c.nop
                  divu         s2, a2, a4
                  c.xor        a2, a2
                  srai         s11, s4, 11
                  srai         t3, s2, 19
                  auipc        s6, 649770
                  xori         t6, t2, 1017
                  c.addi16sp   sp, 272
                  c.add        s2, s8
                  or           a0, t0, s7
                  c.slli       a1, 19
                  c.lui        s0, 5
                  div          t5, a3, tp
                  c.srai       a4, 15
                  c.addi16sp   sp, 448
                  c.addi       s4, 22
                  c.srli       a1, 7
                  sltiu        s7, s7, 621
                  srai         t1, s5, 30
                  c.srai       a4, 7
                  srli         t1, a6, 23
                  sra          sp, a6, zero
                  c.or         a4, s1
                  srai         t0, s7, 19
                  c.andi       a0, -1
                  mul          s5, a1, a6
                  auipc        a5, 844852
                  add          s0, a4, t2
                  nop
                  sltu         s2, t6, t3
                  xori         a4, s10, -612
                  srai         sp, a0, 13
                  and          zero, a3, s7
                  sra          tp, s3, a5
                  nop
                  c.or         a5, a4
                  ori          s4, s5, 1343
                  srai         a5, s1, 26
                  c.lui        a0, 1
                  srli         a1, t5, 20
                  srl          t6, a4, t0
                  slt          t1, s5, a5
                  c.slli       t3, 13
                  c.add        a7, t4
                  sltiu        s0, zero, 1502
                  sltiu        tp, ra, -122
                  c.andi       a5, 5
                  c.mv         a6, a1
                  andi         sp, s6, 16
                  div          t0, t3, a5
                  c.nop
                  auipc        a5, 486699
                  div          tp, a4, s5
                  xori         s5, a6, 727
                  xori         a4, a0, 1888
                  c.xor        s0, s1
                  rem          t4, ra, t3
                  sub          s3, zero, s3
                  slt          sp, s2, gp
                  and          tp, tp, t2
                  mulhsu       s11, s8, s2
                  slli         s5, s10, 13
                  c.mv         s6, s10
                  andi         t5, a4, 1925
                  div          t4, s2, a6
                  lui          t6, 905320
                  c.andi       a4, 13
                  or           a1, t1, gp
                  c.slli       s6, 16
                  c.sub        s0, a1
                  mul          t1, gp, a2
                  c.slli       t6, 7
                  andi         s3, s3, 1431
                  div          tp, s11, a2
                  auipc        a0, 1014184
                  xori         gp, s4, -1762
                  sub          a1, gp, s4
                  sltu         sp, ra, sp
                  or           t3, a7, s7
                  c.and        a0, a5
                  mulhu        tp, a0, s6
                  and          s10, s5, s1
                  add          s3, a2, a1
                  auipc        s8, 492344
                  c.addi       t6, -1
                  sra          a1, s1, t4
                  auipc        sp, 207754
                  c.li         gp, -1
                  mul          t5, a5, a6
                  sltu         a2, s8, a5
                  c.add        a6, t4
                  c.lui        s8, 24
                  or           s6, s4, t5
                  c.addi16sp   sp, -16
                  c.srli       a3, 23
                  auipc        s5, 77842
                  nop
                  c.sub        s0, a3
                  c.add        a0, t0
                  c.andi       a5, -1
                  nop
                  c.addi16sp   sp, 448
                  sltu         zero, s1, t2
                  c.xor        a0, s1
                  slli         tp, s1, 15
                  sra          a2, t0, s2
                  nop
                  c.add        a7, a6
                  lui          s11, 75498
                  divu         sp, s5, a7
                  sra          zero, s10, a3
                  sll          t5, zero, t3
                  c.lui        t5, 16
                  sra          a3, s2, s9
                  add          a0, a6, t1
                  sll          a5, gp, zero
                  c.addi16sp   sp, -16
                  auipc        s5, 1010026
                  divu         a1, t1, s4
                  sltu         a0, t5, a2
                  xor          zero, t0, t0
                  c.mv         s6, t1
                  c.and        a4, s1
                  c.lui        a4, 11
                  slti         s11, t6, -214
                  nop
                  srai         a0, a7, 11
                  c.addi4spn   a5, sp, 320
                  add          sp, a0, tp
                  slt          t6, t4, a7
                  srl          a3, t2, gp
                  addi         s3, t3, -363
                  auipc        a4, 281160
                  remu         a1, gp, s8
                  slti         a0, s10, 1948
                  mulhsu       t1, sp, s4
                  c.nop
                  sll          sp, sp, gp
                  srl          a5, ra, s5
                  c.srai       a4, 29
                  c.slli       a5, 14
                  slt          t6, a0, a7
                  mulhsu       a6, s8, sp
                  slti         a4, t3, -583
                  c.xor        a4, a5
                  slli         a7, s8, 3
                  sub          t1, t0, a5
                  slt          s10, t6, s10
                  srli         t1, s0, 25
                  or           tp, a3, t1
                  c.mv         t4, t2
                  c.addi4spn   s0, sp, 416
                  c.sub        a1, a5
                  c.add        a4, a2
                  c.or         a1, s0
                  xori         s11, s1, 1147
                  c.xor        a3, a1
                  nop
                  sra          t0, a3, s3
                  c.sub        s0, a5
                  sll          s7, a0, t0
                  rem          s0, t3, t0
                  c.addi4spn   a3, sp, 736
                  c.nop
                  add          t4, zero, a5
                  c.andi       a4, -1
                  c.and        a0, a4
                  c.sub        a4, a4
                  sra          zero, a5, s11
                  c.addi       a7, 26
                  c.andi       a4, -1
                  ori          s4, t4, 522
                  mulhu        tp, s2, a1
                  c.addi       s2, 30
                  sltu         a7, s6, s0
                  nop
                  xori         s3, a2, -694
                  c.xor        a3, a4
                  sll          a6, a6, s7
                  mulh         s5, t5, s10
                  c.sub        s0, s1
                  c.addi4spn   a2, sp, 480
                  c.addi4spn   a0, sp, 640
                  srai         a5, sp, 20
                  lui          s4, 274244
                  c.add        a3, sp
                  div          s2, s7, s2
                  c.addi4spn   s0, sp, 896
                  divu         t0, a6, t3
                  srai         t4, zero, 29
                  c.and        a3, a0
                  xori         s8, ra, 1474
                  divu         a6, tp, t6
                  srl          t0, a1, tp
                  divu         t6, tp, s5
                  slt          a7, s7, t4
                  sltu         a0, a3, a1
                  srli         t3, s4, 12
                  slli         s8, t6, 8
                  srli         s2, s10, 6
                  sra          t3, s1, s5
                  sltiu        s5, t6, -2038
                  mulh         gp, s11, s0
                  c.lui        s9, 24
                  and          t1, t5, t2
                  c.sub        a4, s1
                  c.srai       a1, 5
                  srl          a7, s1, a0
                  c.sub        a2, s1
                  c.sub        a2, a2
                  mulhu        a0, a4, t1
                  srai         t4, a1, 7
                  add          s11, t5, s11
                  slli         s0, tp, 4
                  sll          t5, s1, s5
                  sll          tp, s8, s1
                  sub          t4, s0, t4
                  mul          a1, t6, s10
                  c.and        s0, a1
                  div          a2, s10, t1
                  lui          s3, 191462
                  div          zero, a5, a5
                  c.andi       a1, 17
                  slti         zero, tp, 1029
                  sra          s7, t4, s5
                  div          t1, s1, ra
                  c.addi4spn   a2, sp, 592
                  nop
                  lui          s0, 579685
                  div          t1, a0, s8
                  andi         a5, s3, 1188
                  c.sub        a1, a2
                  slt          t1, t4, t1
                  c.xor        a3, a1
                  c.srai       a1, 16
                  c.andi       s0, -1
                  sra          s7, t1, s2
                  srl          s8, t4, s3
                  srai         tp, a1, 18
                  addi         zero, t0, 1340
                  srl          t3, t6, s8
                  srai         a4, ra, 29
                  addi         t1, s8, -299
                  c.srli       a3, 21
                  c.srai       a3, 25
                  and          a3, sp, s9
                  xor          a5, s3, sp
                  c.addi16sp   sp, -16
                  c.slli       a3, 25
                  c.add        a1, t1
                  mulhsu       s0, s7, gp
                  c.nop
                  remu         a3, t0, a4
                  or           a5, s11, s9
                  add          gp, s4, t0
                  rem          t4, s4, t1
                  c.andi       a2, 22
                  andi         a4, zero, 1070
                  divu         a2, a3, s8
                  lui          a4, 828102
                  slt          t1, t2, a3
                  auipc        tp, 948490
                  slti         s0, a5, -1235
                  c.and        a2, a0
                  divu         t1, t2, t1
                  srai         a3, a1, 29
                  nop
                  mul          s0, t2, tp
                  xori         gp, zero, -1186
                  add          s11, s4, s2
                  c.mv         a3, t5
                  ori          t0, ra, -1958
                  c.addi16sp   sp, 480
                  remu         s4, s9, s6
                  c.lui        a5, 12
                  sltu         s6, s2, s4
                  ori          t5, t2, 1127
                  mulhsu       s10, s9, t1
                  nop
                  sra          gp, t0, s9
                  c.mv         a3, s1
                  c.nop
                  rem          s0, a1, ra
                  sub          tp, t6, a3
                  sub          zero, t1, t2
                  c.and        a3, a2
                  nop
                  c.lui        gp, 4
                  add          t6, s3, s11
                  slli         t3, s2, 21
                  sra          gp, t5, a0
                  mulhsu       t3, t6, s2
                  c.addi16sp   sp, -16
                  c.mv         t0, gp
                  ori          t0, sp, 1896
                  sltiu        a0, t3, -1669
                  and          a2, a0, t4
                  rem          s9, s3, t5
                  remu         s7, tp, tp
                  ori          s11, s6, -1409
                  andi         s6, s0, -76
                  c.andi       a3, 11
                  andi         s7, zero, 665
                  c.li         a4, -1
                  remu         s3, s11, s4
                  sltiu        s8, s1, 2042
                  c.add        a5, sp
                  addi         a7, a0, 661
                  c.addi16sp   sp, -16
                  sra          s4, t5, a6
                  c.xor        a0, a3
                  or           a3, s8, a1
                  sltiu        s0, s4, 1831
                  xori         s2, t4, 1434
                  mulhu        s8, s0, t5
                  sll          a5, s4, a7
                  mulhsu       a4, t6, a2
                  slti         s8, s10, 863
                  slli         a1, sp, 25
                  c.sub        s0, a4
                  c.srli       a4, 9
                  c.andi       a4, 7
                  rem          tp, gp, s6
                  sltiu        gp, sp, -1949
                  remu         a1, tp, s8
                  andi         t1, a7, -1050
                  xori         a0, t3, -1645
                  mulh         s9, s0, t1
                  and          s2, s8, s10
                  c.srai       a1, 23
                  slt          t0, tp, a7
                  c.addi4spn   a4, sp, 560
                  sra          s8, t2, s8
                  slti         s8, t5, -1789
                  srl          t4, s3, t5
                  c.andi       s0, -1
                  sub          s6, s2, s11
                  c.srai       a1, 12
                  c.add        s2, s8
                  slti         t6, s5, 33
                  c.lui        t0, 27
                  mul          s7, gp, a3
                  c.xor        a1, a0
                  addi         s7, a3, 1881
                  or           s0, s8, a5
                  c.srli       a2, 1
                  srli         t1, a6, 11
                  c.sub        a3, a1
                  add          a7, t5, a0
                  rem          s0, tp, zero
                  auipc        a1, 570622
                  c.or         a3, a0
                  sll          t3, t5, s7
                  c.addi4spn   a1, sp, 672
                  c.li         s9, 3
                  add          a1, s4, a3
                  c.addi4spn   s0, sp, 432
                  c.addi16sp   sp, -16
                  xor          t4, ra, a3
                  mulh         t3, s5, s5
                  c.nop
                  divu         t4, s8, s10
                  xori         a6, s0, 1473
                  c.and        a5, a3
                  div          s3, a5, t3
                  sra          a7, s10, a2
                  auipc        s0, 227291
                  c.mv         t5, s3
                  mulhu        s0, s0, s9
                  c.addi4spn   a1, sp, 224
                  slt          t5, a2, s10
                  add          s5, t5, a4
                  sltiu        s0, t1, 1653
                  auipc        s10, 598739
                  c.srai       a3, 15
                  c.nop
                  divu         a5, s7, s5
                  c.lui        a0, 16
                  and          sp, a2, s3
                  mul          zero, t3, tp
                  c.slli       s0, 26
                  c.addi       a5, 11
                  xori         a5, a6, -876
                  xor          gp, s4, s2
                  xor          s10, s6, zero
                  sltu         a0, s8, s0
                  c.li         t6, 3
                  slli         t5, gp, 18
                  c.addi16sp   sp, 304
                  srai         a7, s9, 23
                  c.slli       a2, 14
                  c.mv         s7, a3
                  sra          sp, a5, s4
                  andi         a7, a1, 731
                  c.srai       a1, 26
                  slt          a1, t0, s11
                  srli         t6, t2, 0
                  mulhu        a3, s2, a4
                  c.li         tp, -1
                  c.slli       a3, 1
                  c.slli       a5, 10
                  slli         t3, a7, 27
                  sll          gp, s4, t2
                  c.xor        s0, s1
                  c.and        a1, a0
                  slt          s0, s0, s0
                  sltiu        t6, t0, -576
                  c.andi       a4, 9
                  c.li         a1, -1
                  c.xor        s0, a2
                  and          s4, s2, s11
                  div          t4, a2, t6
                  sra          gp, a3, a4
                  c.addi16sp   sp, 224
                  srai         a3, a0, 12
                  ori          gp, s8, 950
                  c.andi       a1, -1
                  slti         t0, s11, -212
                  andi         s10, t2, -1332
                  sra          a6, a6, s0
                  sltiu        s6, a6, 301
                  srai         a3, s0, 26
                  c.addi16sp   sp, 32
                  remu         zero, s8, a0
                  nop
                  c.nop
                  remu         s2, s0, a3
                  c.li         s7, -1
                  srli         s10, zero, 15
                  c.srai       a3, 7
                  mulh         s6, a3, s6
                  c.add        s7, s5
                  srli         s2, s3, 6
                  div          s2, tp, a1
                  c.li         t4, -1
                  c.li         tp, -1
                  srl          a4, t1, a7
                  c.mv         a0, t1
                  xor          s5, a7, t4
                  slli         gp, zero, 24
                  mulhsu       s9, a1, s5
                  c.or         a3, a0
                  ori          a1, s6, -788
                  c.and        a1, a0
                  andi         t0, sp, 257
                  rem          sp, s0, s0
                  ori          s5, s3, 1403
                  addi         s3, s7, 505
                  slti         a1, a1, -1541
                  c.sub        a1, a4
                  c.addi       s7, -1
                  c.or         a1, s1
                  slli         zero, s3, 25
                  mul          a3, s2, s0
                  slti         s9, s2, 1768
                  c.nop
                  sltu         s6, s8, zero
                  srli         gp, t0, 28
                  mulhu        s6, t1, s5
                  nop
                  addi         a5, tp, -474
                  auipc        t6, 971786
                  or           s3, s5, s8
                  mul          s7, s10, s5
                  mul          a5, s3, a1
                  sra          a0, s7, zero
                  srl          a1, t1, s7
                  remu         s2, s7, s1
                  mul          a1, s6, a0
                  c.slli       t1, 23
                  c.li         s0, 3
                  srli         s3, s11, 25
                  c.addi       s2, -1
                  xor          s9, a1, s4
                  c.andi       s0, -1
                  c.addi       a5, 30
                  c.addi4spn   a4, sp, 208
                  remu         tp, s9, a3
                  slli         s3, t1, 10
                  c.or         a3, a1
                  c.sub        a1, a0
                  srai         t5, t2, 26
                  mulhu        tp, t0, t0
                  c.andi       a3, 8
                  c.addi4spn   a3, sp, 352
                  c.sub        a5, a3
                  c.li         s5, 9
                  c.lui        s2, 26
                  add          s5, a6, s0
                  or           t6, a5, t1
                  addi         gp, tp, 771
                  xori         t5, s5, -396
                  lui          a7, 598281
                  c.andi       a4, -1
                  c.andi       s0, 30
                  c.addi       a3, -1
                  div          t6, s4, a7
                  c.slli       gp, 25
                  c.li         a2, -1
                  sra          a7, s4, t4
                  c.add        a3, ra
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 192
                  sub          s3, ra, sp
                  lui          zero, 630202
                  c.xor        a3, a5
                  srli         s2, t5, 30
                  sltiu        a3, t1, -1139
                  c.lui        tp, 10
                  mul          t0, t2, s2
                  sra          t3, tp, a0
                  c.slli       t1, 5
                  c.addi4spn   a3, sp, 208
                  c.or         a1, a1
                  sltu         s7, t3, s8
                  c.andi       a1, 29
                  mul          s4, t6, ra
                  c.addi       a6, 27
                  lui          a3, 885222
                  c.srli       a1, 6
                  c.andi       a0, 24
                  srai         a5, tp, 5
                  slli         s6, s0, 7
                  sltiu        a5, t5, -578
                  auipc        t5, 257905
                  c.nop
                  mulh         a7, t6, t1
                  c.addi16sp   sp, -16
                  c.sub        a2, a1
                  mul          a4, s11, zero
                  or           gp, a2, a3
                  auipc        t1, 929595
                  mulhsu       a1, tp, gp
                  c.sub        a1, a5
                  divu         s10, t1, a0
                  xori         s7, s7, -1625
                  srli         s0, a3, 1
                  c.lui        a5, 1
                  and          s6, a5, a3
                  remu         gp, t4, a0
                  c.and        a5, s1
                  c.srai       a3, 11
                  sll          gp, ra, s5
                  or           t1, a1, s9
                  c.slli       sp, 1
                  div          a4, tp, gp
                  sltu         t0, s1, s4
                  srli         s9, ra, 1
                  c.mv         a7, s5
                  c.sub        s0, a1
                  slti         s11, a6, 809
                  xor          t6, a6, gp
                  and          s4, a6, s6
                  sra          s10, s11, ra
                  c.slli       s4, 24
                  sll          t4, a6, s5
                  nop
                  c.andi       a2, 26
                  srai         gp, a0, 14
                  c.or         a1, a4
                  addi         a2, s7, 1345
                  slt          s4, a3, a6
                  c.andi       a4, 20
                  c.xor        a2, s1
                  slt          s4, zero, s10
                  srl          s10, t4, s8
                  c.slli       t0, 29
                  xor          s8, tp, s1
                  c.srli       a4, 11
                  c.sub        a0, s1
                  sub          a3, a1, a7
                  mulhsu       s6, gp, a5
                  srai         t5, s9, 17
                  remu         a7, a3, s11
                  andi         sp, s7, -935
                  mulhsu       t0, a5, s0
                  lui          a2, 438216
                  c.nop
                  auipc        t3, 82216
                  c.or         a3, a2
                  c.andi       a1, -1
                  mulh         a6, t2, s7
                  sra          s6, zero, a3
                  rem          a3, a4, tp
                  and          tp, sp, s8
                  c.addi4spn   a0, sp, 864
                  sltu         a3, s0, a5
                  sltiu        zero, t4, -1961
                  addi         zero, t2, 956
                  and          s7, t6, t1
                  c.addi4spn   a2, sp, 64
                  c.and        a3, s0
                  c.mv         sp, t2
                  lui          a3, 193237
                  c.xor        a4, s1
                  mul          t1, t1, t2
                  auipc        s0, 584520
                  c.add        a2, s1
                  sra          gp, s0, s6
                  remu         s8, a5, gp
                  c.srli       a3, 22
                  ori          t0, s0, 530
                  lui          t0, 956481
                  c.lui        a7, 3
                  rem          s9, ra, t5
                  mul          zero, s11, t1
                  slti         sp, a4, -1003
                  c.nop
                  sra          t5, tp, a4
                  sub          s11, a2, t5
                  c.add        t0, s5
                  sra          sp, s6, s10
                  c.addi4spn   s0, sp, 784
                  sra          a6, a1, t3
                  c.addi16sp   sp, 272
                  and          a7, a6, s4
                  sltiu        a5, t3, -1541
                  c.andi       a0, 13
                  lui          sp, 389515
                  c.srai       s0, 13
                  c.addi4spn   a1, sp, 1008
                  c.li         s4, -1
                  c.srai       a2, 25
                  c.srli       a5, 29
                  srai         a3, s7, 30
                  xor          a3, a5, t0
                  sll          a4, t5, a7
                  nop
                  c.srli       a4, 29
                  slti         a6, a0, -1865
                  sltu         s9, zero, s9
                  divu         a4, s2, s2
                  c.srli       s0, 8
                  sltiu        t6, tp, -57
                  c.and        a2, s1
                  c.and        a4, a2
                  lui          a5, 467752
                  srli         s3, s3, 21
                  lui          s7, 738852
                  divu         a6, t2, t0
                  rem          s2, s8, t6
                  c.mv         t1, a7
                  mulh         t4, s2, t1
                  or           s5, t4, t0
                  c.addi       s6, 23
                  auipc        a6, 163540
                  divu         s8, t6, a5
                  c.or         a2, a1
                  or           a4, a2, s1
                  slti         s3, s4, -492
                  c.slli       a2, 17
                  c.srai       a1, 22
                  nop
                  div          a1, t6, t1
                  sub          t0, a6, s1
                  sra          sp, s5, s3
                  xor          gp, s3, s8
                  srl          zero, sp, a7
                  c.xor        a0, a3
                  ori          t0, s6, -20
                  c.and        a5, s0
                  mulhu        a6, a5, t1
                  c.andi       a4, -1
                  ori          t3, t0, -829
                  ori          s0, s4, 1333
                  mulhsu       s3, t2, s10
                  add          s4, a7, s5
                  c.or         a4, a0
                  c.srai       a3, 28
                  rem          a4, t2, s11
                  sll          s7, a5, a6
                  c.addi4spn   a5, sp, 928
                  ori          s6, t4, 198
                  c.nop
                  div          s3, s7, sp
                  auipc        a1, 119942
                  slli         gp, t5, 10
                  sltiu        zero, s11, 1544
                  auipc        t3, 56434
                  sub          t0, s0, tp
                  divu         tp, t5, t5
                  andi         s4, a7, -603
                  sltiu        sp, s2, -507
                  c.slli       a2, 20
                  c.sub        a3, a5
                  c.slli       s9, 30
                  srai         a4, t5, 2
                  divu         s7, a2, ra
                  srai         zero, a3, 17
                  sub          a1, a0, t3
                  c.mv         t5, a5
                  c.andi       a5, 16
                  sltu         zero, s8, zero
                  c.addi16sp   sp, -16
                  srl          t6, t3, a1
                  srai         s0, s2, 1
                  slti         t4, t6, -1108
                  mulhsu       a1, s4, a1
                  slti         a3, s3, -1300
                  c.and        a0, a2
                  c.or         a5, a0
                  c.andi       a5, 31
                  c.andi       a5, 28
                  ori          tp, s7, -1022
                  div          s6, s3, a4
                  c.srai       a5, 29
                  c.srai       a0, 16
                  srl          s10, a6, s5
                  auipc        a1, 18146
                  mulhsu       a3, s5, t5
                  xor          s0, t0, t4
                  add          s3, a7, t3
                  divu         s5, t6, gp
                  c.addi4spn   a4, sp, 224
                  sra          t3, s1, s3
                  auipc        a5, 15943
                  c.srai       s0, 16
                  srli         s0, s10, 20
                  rem          s8, tp, sp
                  xor          s8, s7, a2
                  c.srli       a3, 19
                  srl          gp, a2, s4
                  srli         t6, a2, 1
                  c.srli       s0, 12
                  srl          a4, t4, s5
                  xor          t3, s3, s5
                  c.addi16sp   sp, 272
                  c.lui        s10, 20
                  nop
                  divu         a7, s1, s0
                  sltu         s0, t0, t0
                  c.srli       a4, 16
                  c.add        t0, a2
                  or           a0, s7, s5
                  xori         s10, t4, 1893
                  srli         sp, zero, 4
                  srli         gp, sp, 16
                  mulhu        a6, s3, zero
                  slt          t6, zero, tp
                  add          a7, a6, t6
                  or           gp, s0, t2
                  c.mv         a1, s11
                  sub          s9, a0, a5
                  c.addi       s0, 31
                  c.andi       a2, -1
                  c.addi       t0, 2
                  c.or         a5, s1
                  sra          t6, s2, a2
                  mul          a1, s3, t3
                  c.lui        tp, 21
                  mulhsu       a3, s0, ra
                  ori          a7, t6, -1318
                  addi         t4, a3, -499
                  slt          s5, s11, s11
                  c.nop
                  remu         s3, s0, s3
                  c.srli       a5, 8
                  nop
                  mulhu        a2, s5, gp
                  sra          s3, s4, a0
                  slti         s6, s3, -1318
                  addi         s9, gp, 1626
                  addi         a7, s5, 990
                  c.addi16sp   sp, -16
                  c.lui        a5, 6
                  rem          s2, t3, gp
                  xori         t5, zero, -335
                  mul          s3, a1, s0
                  srli         t6, a1, 26
                  div          s2, t4, t3
                  add          t1, t6, t0
                  srli         t4, sp, 14
                  rem          gp, t4, a4
                  ori          s11, t4, 1499
                  mulhsu       zero, s8, s9
                  mulh         zero, sp, t0
                  c.srli       a1, 3
                  nop
                  sll          a1, t5, t4
                  remu         s3, s11, t1
                  nop
                  sltiu        s7, a1, -595
                  c.li         s8, -1
                  srl          s4, s8, sp
                  c.lui        a1, 23
                  srli         a1, s6, 17
                  mulhu        zero, t4, t6
                  sltu         s5, a2, gp
                  sub          s0, s0, t6
                  mulhu        zero, a7, s3
                  sll          a2, gp, a7
                  slti         a5, a2, -758
                  sub          a7, s5, s8
                  c.mv         a7, t5
                  sll          s10, a6, tp
                  slt          s2, a2, a1
                  divu         zero, gp, s5
                  nop
                  or           a2, a6, s10
                  c.nop
                  c.xor        a3, a4
                  slti         s7, a6, -4
                  xori         s11, t0, 573
                  c.or         a3, a3
                  sub          s9, s1, s8
                  c.li         a7, -1
                  slt          t6, t3, t4
                  c.addi16sp   sp, -16
                  mulhsu       s9, s6, a3
                  c.addi4spn   a5, sp, 112
                  c.srli       a1, 18
                  andi         a7, a7, 868
                  sltu         sp, s2, s4
                  c.addi4spn   a1, sp, 416
                  c.addi16sp   sp, 448
                  c.mv         sp, t2
                  mulh         a6, tp, a0
                  srai         s9, t2, 11
                  sll          a0, ra, a2
                  srl          a3, t5, s6
                  sltiu        tp, s6, 1972
                  c.srai       a1, 21
                  remu         sp, t3, a5
                  c.xor        s0, a4
                  mulhsu       sp, a7, s6
                  c.sub        s0, a0
                  rem          s0, s4, a4
                  c.andi       a5, 24
                  ori          a0, a6, -1974
                  add          s4, ra, ra
                  c.nop
                  srl          a4, s5, a1
                  slt          a7, s5, s6
                  sub          s8, t2, s6
                  slt          t0, a6, t6
                  c.mv         a1, t1
                  c.addi4spn   a4, sp, 544
                  slt          a7, s9, a6
                  mulh         a3, t2, zero
                  c.addi16sp   sp, -16
                  srli         t1, t4, 17
                  slli         t0, tp, 11
                  srl          a6, zero, s4
                  sll          a7, s5, a2
                  slli         s11, a7, 14
                  c.slli       t1, 16
                  c.xor        a3, a3
                  c.slli       t1, 16
                  andi         s5, s9, -65
                  remu         a1, t0, a5
                  xori         t6, t3, -1820
                  c.addi4spn   s0, sp, 960
                  ori          a3, t5, 448
                  c.mv         tp, t4
                  c.xor        a2, a2
                  mulh         a3, t4, a3
                  xori         a0, s8, 1537
                  mulh         s11, sp, t5
                  srli         tp, s2, 17
                  c.lui        s2, 24
                  c.nop
                  ori          s10, s10, -1098
                  srai         s0, a1, 13
                  c.nop
                  andi         t3, t5, 369
                  c.li         a2, 26
                  c.xor        a3, a4
                  div          t1, a6, ra
                  c.mv         s11, a5
                  andi         s9, s0, 310
                  c.slli       s8, 28
                  addi         a3, a1, -1905
                  sra          t1, a6, s2
                  c.andi       s0, 5
                  c.mv         s8, s0
                  c.addi4spn   a3, sp, 880
                  andi         s2, zero, -1257
                  nop
                  andi         s4, a3, -1634
                  c.lui        s10, 6
                  c.and        a2, a1
                  remu         sp, sp, gp
                  divu         a3, a7, a3
                  addi         s11, a5, -1352
                  remu         s8, t3, a6
                  c.andi       a1, 28
                  andi         s11, s1, -882
                  nop
                  auipc        s11, 529313
                  addi         t4, s8, 1323
                  slt          t6, s2, a7
                  mulhsu       gp, t3, s9
                  sub          zero, t5, a0
                  mulhu        s6, s3, a6
                  mulh         s7, sp, t1
                  c.lui        tp, 13
                  c.mv         s2, sp
                  divu         a1, s8, a1
                  nop
                  c.add        a6, a5
                  div          s2, a6, a2
                  c.addi16sp   sp, -16
                  remu         t1, a4, zero
                  srl          t5, ra, s6
                  srai         t5, s6, 14
                  c.srai       a0, 16
                  slli         s5, s5, 20
                  c.andi       a0, 20
                  add          s3, s5, s9
                  c.addi16sp   sp, 16
                  mulhu        s5, s0, ra
                  xor          t3, a3, a4
                  slt          t0, s7, t5
                  and          a7, a5, s1
                  remu         zero, s2, a4
                  c.mv         a5, t4
                  mul          s9, s7, ra
                  c.add        s0, s2
                  c.srli       a5, 7
                  add          s10, a1, a1
                  mulhu        s4, s8, sp
                  and          t5, s8, s8
                  sll          a1, s1, a7
                  sra          s9, t2, s10
                  sub          s6, ra, s1
                  c.addi4spn   a1, sp, 784
                  sltiu        t6, s0, -1028
                  srli         a2, a1, 7
                  srli         t6, a6, 4
                  nop
                  mulhsu       a4, s11, ra
                  sll          s11, zero, zero
                  or           t0, sp, a1
                  srli         a4, t6, 22
                  c.mv         a1, s10
                  sra          sp, zero, s2
                  or           t1, a6, s0
                  mulh         s2, a1, t5
                  sll          tp, t2, s6
                  c.mv         s8, t2
                  rem          s6, a3, s10
                  c.srai       a2, 24
                  c.andi       a5, -1
                  ori          s8, s1, -1815
                  sll          a0, s2, a7
                  slt          s10, s0, s7
                  lui          zero, 173362
                  sub          t4, a3, a2
                  c.sub        a5, a3
                  c.and        a3, a2
                  nop
                  auipc        a7, 635938
                  c.slli       s9, 7
                  andi         gp, t1, 1882
                  or           t1, a7, s10
                  c.addi16sp   sp, 112
                  c.srli       a1, 24
                  c.nop
                  srai         a7, sp, 29
                  lui          s9, 450666
                  addi         a5, a4, 815
                  addi         a1, s9, 1732
                  c.slli       s3, 6
                  c.add        a5, a4
                  sltiu        s9, a2, 627
                  xori         s4, a6, -1712
                  mulh         a4, s1, tp
                  c.and        a1, a1
                  or           a4, zero, s7
                  sltiu        t5, s11, -1645
                  nop
                  mulh         a1, s8, t4
                  c.xor        a1, a3
                  c.sub        a5, a5
                  slt          a3, sp, s1
                  div          s11, s0, gp
                  mulh         s6, a4, gp
                  srl          t3, tp, t4
                  slli         t0, gp, 7
                  srl          t4, t0, s9
                  c.or         a2, s0
                  nop
                  sltiu        s10, s10, -777
                  or           sp, s8, s1
                  slt          t0, s11, s5
                  slti         a4, a5, -1644
                  c.slli       gp, 16
                  nop
                  slli         s3, s6, 10
                  slti         s7, s3, 513
                  xori         s7, s3, 2003
                  div          t1, s0, ra
                  xori         s5, a1, -1175
                  sltu         s5, s0, a7
                  sltu         t0, s11, a6
                  xori         t3, s4, 265
                  mulh         a2, sp, t1
                  slli         s2, s4, 10
                  andi         t6, a7, 1261
                  c.addi4spn   a3, sp, 704
                  sltiu        s3, s1, -1721
                  c.nop
                  c.andi       a4, -1
                  c.srai       a1, 25
                  xor          s3, s0, a3
                  slt          s2, t4, s7
                  remu         a5, t0, a3
                  sltiu        a6, s11, -976
                  c.and        a3, a1
                  sltu         zero, s3, s4
                  rem          s6, a6, t0
                  add          t1, t0, tp
                  sltiu        zero, tp, 1727
                  c.addi16sp   sp, -16
                  srai         s9, a2, 23
                  sll          t6, t6, s11
                  c.nop
                  mulhsu       s5, ra, s5
                  c.xor        a2, s1
                  c.mv         s10, s0
                  c.andi       s0, -1
                  xori         t3, t3, 139
                  c.xor        a3, a1
                  slli         a7, s1, 29
                  xori         s6, a7, -529
                  c.and        a1, a1
                  sra          t6, s4, s9
                  c.xor        a4, a3
                  c.add        a5, a5
                  mul          a6, s10, t3
                  addi         s4, a7, 716
                  c.sub        a5, s0
                  c.add        s3, a1
                  mulhu        s8, a3, s6
                  mul          a4, s7, a7
                  srai         s9, a4, 12
                  addi         t0, a7, -627
                  c.mv         a0, s7
                  srai         a6, s11, 2
                  mulhu        t1, s8, tp
                  and          t4, s7, gp
                  c.srai       a0, 4
                  addi         t6, a1, -1549
                  nop
                  c.andi       s0, -1
                  add          a1, t2, s4
                  slli         gp, s3, 8
                  or           s10, t3, t6
                  ori          s10, s6, -329
                  mulh         t3, t3, t4
                  srl          s11, t3, s2
                  ori          t6, ra, 1776
                  add          a7, s2, s3
                  slti         a1, s10, -466
                  sub          s7, gp, t2
                  mul          t0, a6, gp
                  c.sub        s0, a2
                  sll          a3, a2, s4
                  srl          t4, a4, a0
                  slt          s5, a7, t2
                  or           a1, gp, a3
                  sltu         gp, t2, s1
                  xori         a6, t2, -1031
                  divu         s10, a5, s7
                  c.andi       a3, -1
                  lui          t6, 661552
                  sra          s5, s9, s1
                  or           a3, a4, t0
                  sll          a6, s1, sp
                  div          a0, s8, a6
                  srl          a6, sp, t4
                  slti         s10, t6, -896
                  sra          s9, gp, t0
                  andi         s2, t6, 756
                  c.srli       a1, 25
                  srli         t1, s10, 19
                  and          gp, s2, tp
                  c.or         s0, a2
                  c.addi16sp   sp, -16
                  c.srli       a5, 11
                  slt          s3, gp, s3
                  auipc        s5, 347638
                  andi         sp, s2, -126
                  c.addi4spn   a3, sp, 544
                  c.nop
                  c.andi       a2, 17
                  c.mv         s11, a3
                  c.andi       a1, -1
                  xori         s9, ra, -258
                  addi         gp, ra, -1170
                  rem          a4, a1, s10
                  add          s6, gp, a4
                  c.andi       s0, -1
                  c.srai       s0, 6
                  addi         t0, ra, 1590
                  ori          t0, s0, 1202
                  c.andi       a4, 16
                  add          a3, sp, a1
                  srl          s2, t2, t6
                  sltu         t1, a4, gp
                  ori          a7, s10, -751
                  c.mv         t5, s8
                  slt          s10, ra, a5
                  andi         t0, t4, 279
                  c.and        a3, a2
                  c.lui        gp, 16
                  slli         s11, s4, 3
                  c.addi       s8, -1
                  mulhsu       s7, t6, s11
                  c.or         s0, a2
                  c.andi       a4, 30
                  c.and        a0, s1
                  xor          s2, t2, a6
                  c.addi16sp   sp, -16
                  sub          t3, gp, s1
                  c.nop
                  auipc        a0, 660486
                  auipc        s6, 612742
                  mulhu        s10, sp, sp
                  sltu         s6, sp, t0
                  sub          gp, s4, t3
                  c.xor        a1, a4
                  slti         gp, a7, 268
                  addi         s5, s8, 412
                  auipc        t5, 24982
                  slli         s6, zero, 0
                  div          tp, s8, s4
                  xor          a2, s10, s7
                  c.addi4spn   a0, sp, 720
                  slli         a0, s4, 5
                  and          t4, a3, s9
                  sltu         s9, a0, s4
                  rem          s8, s2, t5
                  sltiu        gp, a7, 2011
                  and          a2, t4, tp
                  sll          t4, t4, ra
                  lui          s11, 72684
                  lui          s3, 68326
                  c.xor        a3, a0
                  c.srai       a0, 27
                  sub          s6, sp, t4
                  c.addi16sp   sp, 240
                  add          s4, tp, t1
                  mulhu        s8, sp, s10
                  sltu         a3, s10, s11
                  srl          a6, s2, a1
                  and          s5, t3, a2
                  and          s6, sp, sp
                  xor          s5, sp, t2
                  c.slli       s7, 25
                  sltiu        s4, s2, 1638
                  sub          a2, t2, t3
                  c.mv         t5, s7
                  slt          a7, a1, s11
                  add          a0, a4, s1
                  xori         s6, s10, -1357
                  c.addi       t0, -1
                  c.sub        a5, a5
                  c.srli       a2, 24
                  mulhu        t0, s0, t3
                  c.slli       s4, 11
                  slli         zero, t4, 17
                  mulhu        s7, a4, s10
                  srli         t1, a2, 12
                  add          a3, s4, t3
                  divu         t6, ra, s7
                  ori          s5, ra, 745
                  auipc        t5, 567217
                  srli         s7, a4, 27
                  andi         a3, t0, -1890
                  xor          t4, a7, t2
                  c.add        s2, a2
                  c.addi       t4, 11
                  add          s6, a4, s10
                  c.nop
                  c.addi4spn   a2, sp, 80
                  slti         a6, a6, 710
                  ori          t0, s11, 1766
                  slli         tp, s0, 19
                  lui          t3, 537640
                  c.xor        a2, a0
                  nop
                  c.addi4spn   a2, sp, 336
                  mul          s3, s2, a2
                  srai         s4, gp, 21
                  mulhsu       zero, s5, gp
                  div          t4, a0, a0
                  xori         gp, s1, 131
                  c.addi16sp   sp, -16
                  sltiu        t6, s9, -1907
                  c.mv         gp, s2
                  srli         t0, a3, 29
                  xori         a3, tp, 729
                  slli         t0, a1, 31
                  c.sub        a3, a2
                  srli         s0, s9, 4
                  c.xor        a5, s0
                  c.add        a5, tp
                  c.li         s7, -1
                  c.addi       t5, -1
                  mulhu        a0, ra, a4
                  sll          zero, sp, tp
                  sltu         t4, s4, gp
                  sltu         s7, a3, s4
                  sub          a1, s11, gp
                  c.srai       a4, 7
                  addi         a0, s11, 1333
                  c.sub        a1, s1
                  div          a1, a2, s0
                  c.addi       s7, 9
                  c.slli       s8, 24
                  sltu         sp, t5, ra
                  c.or         a0, a2
                  c.lui        a6, 24
                  c.srai       a0, 27
                  ori          a5, zero, -1010
                  ori          s5, s2, 858
                  rem          tp, t0, s10
                  mulhsu       gp, s9, ra
                  c.mv         a4, s7
                  remu         t6, sp, sp
                  c.and        a0, a0
                  c.addi4spn   a1, sp, 576
                  c.lui        a3, 10
                  mulh         a5, a0, a0
                  c.and        a3, s0
                  and          s8, a1, a6
                  or           gp, ra, s8
                  c.add        t4, s5
                  c.li         s7, 18
                  srl          sp, s3, a3
                  mulhu        s6, s5, s0
                  sub          s0, gp, a5
                  c.nop
                  c.andi       a5, -1
                  div          s7, s0, t0
                  slli         s8, s3, 0
                  mulhsu       s5, t0, s8
                  c.addi4spn   a2, sp, 960
                  xori         t0, s8, -485
                  or           s8, a0, s2
                  andi         t6, s9, 1245
                  auipc        s7, 672660
                  srl          a7, s7, a6
                  c.xor        a1, s0
                  div          a1, s10, s5
                  c.xor        a2, a3
                  sra          s11, t5, a0
                  slti         a5, t2, -1827
                  mulhsu       sp, t0, a6
                  sub          a6, t2, a6
                  lui          a3, 144606
                  c.addi       a1, 2
                  nop
                  ori          a3, t3, -1250
                  c.addi16sp   sp, 416
                  sltiu        t0, s4, -2015
                  or           zero, t3, s10
                  sltiu        a1, t4, 1946
                  c.or         a2, a0
                  c.xor        a1, a4
                  c.addi4spn   a0, sp, 400
                  slt          t6, t5, gp
                  auipc        a5, 146931
                  xori         gp, t6, 643
                  and          s7, s11, a3
                  xori         a2, t0, 1719
                  c.li         s8, -1
                  mulh         a5, s6, s9
                  slti         s9, gp, 1646
                  mulhsu       zero, tp, s1
                  sub          gp, s4, s6
                  xor          a6, a5, t1
                  c.andi       a2, -1
                  c.nop
                  auipc        s11, 477321
                  c.lui        a0, 27
                  c.add        s4, a1
                  mulh         s7, zero, tp
                  addi         a1, t4, -2044
                  c.xor        a2, a4
                  c.or         a0, a5
                  mulhsu       t3, s9, t0
                  mulh         gp, s0, s5
                  addi         tp, s10, 1360
                  sltiu        s4, s10, -373
                  c.mv         t1, a5
                  sltu         a0, t4, a1
                  andi         a5, a0, 1810
                  slti         s9, s5, 726
                  c.lui        a5, 28
                  c.add        s10, t1
                  mulhsu       t6, t3, s8
                  nop
                  c.mv         s11, s1
                  c.addi       s11, -1
                  c.addi16sp   sp, -16
                  add          s7, zero, s9
                  c.slli       s4, 3
                  add          s0, s3, t4
                  addi         s9, ra, 1031
                  or           s9, a1, s2
                  srl          gp, t4, s10
                  mulhu        a2, t6, tp
                  c.add        a6, ra
                  mul          s9, s10, a2
                  c.add        a3, s7
                  c.and        a3, a1
                  c.add        s10, s11
                  c.addi       sp, 26
                  mulhsu       sp, ra, s9
                  and          s0, a0, s4
                  ori          s11, s4, 902
                  div          a5, s5, s10
                  slt          t4, ra, t1
                  mulhu        s11, a3, t5
                  rem          t4, t6, t4
                  remu         s4, zero, t4
                  slti         s2, tp, -989
                  div          t1, t1, tp
                  c.addi4spn   a3, sp, 224
                  ori          a2, s10, -1413
                  sltiu        t0, t0, 1246
                  add          sp, s6, t0
                  c.xor        a1, a2
                  c.srai       a5, 19
                  divu         sp, s7, s5
                  or           a1, s8, s3
                  c.andi       a4, -1
                  c.sub        a0, a2
                  c.or         a2, a0
                  andi         s9, a5, 223
                  c.xor        s0, s1
                  c.andi       a0, 28
                  add          zero, a7, s8
                  c.add        gp, t2
                  auipc        a7, 203523
                  srai         sp, t2, 27
                  slti         s4, t5, 1234
                  div          a3, t5, s1
                  add          a1, a7, a2
                  andi         sp, a7, 349
                  mulhsu       s2, t2, ra
                  c.add        a2, s1
                  ori          s9, ra, 553
                  sra          sp, s9, s3
                  c.li         gp, -1
                  c.or         s0, a1
                  c.srli       a5, 11
                  remu         a2, a5, zero
                  c.lui        a4, 18
                  slli         t5, a0, 23
                  c.addi4spn   a1, sp, 640
                  and          s3, s1, t4
                  or           t6, s2, ra
                  xori         zero, s6, 1053
                  xori         t1, s1, -2037
                  xori         s10, t2, 1843
                  c.sub        a0, a1
                  c.mv         t3, t2
                  divu         s9, t2, s3
                  sll          s10, t0, a5
                  c.addi16sp   sp, 48
                  div          s8, t2, s8
                  c.addi       a6, -1
                  c.and        a3, a4
                  slti         t3, s9, 1275
                  lui          gp, 295948
                  c.add        t5, t6
                  slti         t4, a5, 976
                  and          a2, s10, t1
                  slti         s7, a2, 1080
                  divu         a2, s8, s9
                  mulhsu       a7, t1, gp
                  or           gp, t5, a4
                  c.sub        s0, s1
                  srli         s5, t6, 25
                  andi         s4, tp, -1542
                  c.nop
                  c.nop
                  c.li         s3, 8
                  remu         t0, s11, s8
                  sra          zero, ra, t0
                  mulhu        tp, s6, s11
                  div          s5, t4, s7
                  sltiu        t4, gp, -1602
                  c.li         s7, 23
                  xori         s8, t6, -872
                  sltu         s8, a2, s1
                  slli         s4, s1, 10
                  c.srai       a1, 20
                  c.add        s3, s4
                  nop
                  remu         t0, a5, t5
                  c.srli       a5, 3
                  srl          t4, a7, s11
                  c.and        a5, a1
                  c.nop
                  mul          a7, tp, s1
                  ori          s8, gp, 867
                  ori          t5, t6, -348
                  srli         a0, s8, 3
                  sub          t0, tp, s9
                  add          a3, a4, gp
                  slti         s9, s10, -1944
                  sltiu        s5, t0, -1002
                  and          s0, tp, s1
                  c.lui        a6, 30
                  xor          sp, s2, a7
                  and          s2, s5, s4
                  slli         s7, s5, 26
                  sltiu        tp, s11, 505
                  c.srai       a3, 6
                  sltiu        s7, t6, -15
                  auipc        s3, 772966
                  c.xor        a4, s0
                  c.addi4spn   a3, sp, 48
                  srai         s0, a6, 17
                  auipc        s5, 912023
                  and          s5, t0, a7
                  c.sub        a1, s1
                  c.li         t3, -1
                  srli         s6, s2, 31
                  c.addi       s6, -1
                  nop
                  divu         sp, a3, gp
                  c.addi       s3, 17
                  and          a2, a3, t1
                  or           zero, s11, s2
                  c.andi       s0, -1
                  auipc        a1, 503379
                  remu         a6, s5, a3
                  c.sub        s0, a4
                  c.add        a0, a7
                  c.and        a0, s0
                  lui          s10, 647981
                  c.srai       a1, 15
                  mulhu        t6, gp, gp
                  c.addi16sp   sp, 368
                  c.addi4spn   a3, sp, 32
                  srl          s7, a1, s0
                  div          a2, s1, s10
                  mulh         a7, s3, t5
                  c.slli       s11, 19
                  xori         tp, t2, -768
                  c.slli       s9, 29
                  srli         t5, s6, 14
                  srl          s2, s4, t5
                  rem          a3, gp, a3
                  sub          t4, ra, t1
                  divu         t0, t5, t6
                  mulhu        s4, t6, s5
                  sra          t4, t6, gp
                  addi         t6, s11, -555
                  slli         gp, s11, 31
                  slt          gp, s2, a3
                  mulh         s7, s11, t0
                  sra          a7, s0, t1
                  c.xor        s0, a3
                  slt          s9, t3, t6
                  nop
                  slt          t0, a1, sp
                  c.add        s4, s4
                  add          a6, s3, t1
                  slli         a6, s7, 19
                  sub          s3, s5, t3
                  c.xor        a0, a1
                  c.slli       gp, 19
                  mulhsu       t0, a6, gp
                  sra          a5, s10, gp
                  slli         t0, s7, 4
                  mulhsu       s3, t4, a1
                  c.srli       a1, 31
                  mulhsu       t1, t2, t3
                  c.addi16sp   sp, 80
                  sra          s10, t1, t5
                  sra          t6, ra, sp
                  c.addi4spn   a4, sp, 320
                  srli         t3, t4, 11
                  divu         a4, s2, s10
                  divu         t1, s6, s2
                  slti         s6, s2, 139
                  div          t4, a2, t0
                  c.lui        a2, 19
                  c.or         a3, a5
                  mulhu        t3, tp, a2
                  xori         gp, a0, -833
                  ori          s3, a3, 261
                  add          s8, s10, t4
                  divu         s8, s7, a4
                  mul          s10, s3, t4
                  c.srai       a3, 21
                  andi         s0, s1, 304
                  c.addi4spn   s0, sp, 544
                  srai         sp, t3, 22
                  mulhu        t5, s9, a3
                  sll          a0, s7, t5
                  c.addi4spn   a3, sp, 992
                  slti         t1, t0, -970
                  c.addi       s5, 29
                  c.addi4spn   a3, sp, 992
                  c.or         a4, a0
                  sltiu        s4, s5, 1620
                  lui          zero, 236289
                  slli         s11, a3, 27
                  c.srai       a5, 16
                  c.nop
                  and          a1, a0, s2
                  c.lui        a0, 10
                  sra          zero, t3, s1
                  sll          s10, t5, s3
                  or           zero, a2, s5
                  sra          s11, s5, s9
                  div          t4, gp, a0
                  slli         a4, s4, 17
                  mulh         a3, a3, zero
                  c.and        a0, a3
                  xor          t0, s10, tp
                  c.mv         s4, s5
                  c.mv         s11, sp
                  sltiu        t1, t4, -1665
                  slt          a0, s7, a2
                  auipc        a4, 687875
                  mulhu        a3, s9, t3
                  xori         t5, s2, 1075
                  slti         a3, zero, -41
                  c.srli       a2, 11
                  xor          s8, s5, t1
                  c.addi4spn   a5, sp, 640
                  c.srli       a2, 10
                  c.addi4spn   a1, sp, 464
                  mulh         a3, s2, s4
                  auipc        t4, 234309
                  c.or         a0, a0
                  srai         t5, s5, 27
                  srl          t5, t5, t6
                  or           s9, a7, s1
                  sltiu        s7, t2, -1282
                  and          s5, a0, a2
                  c.sub        a4, s0
                  c.li         a1, 12
                  sra          s8, a7, a4
                  mulh         s8, s10, s4
                  c.addi4spn   a3, sp, 192
                  c.add        s7, s8
                  mulhu        tp, t1, t4
                  c.add        s2, a1
                  mulhu        zero, a3, a5
                  sltu         s2, s2, t0
                  c.addi       gp, -1
                  c.srli       a3, 25
                  c.addi       s7, -1
                  lui          s2, 1010180
                  sltiu        s3, s9, 734
                  slt          s5, tp, gp
                  slti         s11, t2, -1838
                  slti         t1, s4, -669
                  c.addi       s8, 23
                  srl          t3, s6, a1
                  or           a5, s9, s3
                  div          a7, s0, a4
                  c.srli       a5, 25
                  c.lui        tp, 21
                  remu         s0, zero, sp
                  slti         s9, a3, -284
                  andi         s3, s10, 949
                  c.xor        a3, a5
                  c.slli       t5, 19
                  c.li         s0, -1
                  c.li         s4, -1
                  c.srli       a5, 25
                  lui          s9, 44630
                  c.sub        a3, a1
                  c.lui        t1, 25
                  divu         t1, s5, a0
                  c.addi16sp   sp, 96
                  xori         zero, s1, 1302
                  c.add        a1, gp
                  divu         t3, a1, s10
                  sub          tp, a1, t5
                  c.nop
                  addi         a4, s4, 667
                  divu         a1, a0, a6
                  nop
                  c.andi       a0, 28
                  addi         s2, s10, -1208
                  sll          s6, sp, zero
                  add          s0, ra, s10
                  div          t3, zero, s4
                  c.lui        a3, 3
                  mulhu        tp, s0, a7
                  rem          a3, gp, s11
                  divu         a3, s7, a7
                  c.mv         s0, a5
                  and          t1, t5, s2
                  c.add        s4, t4
                  xor          a5, t0, a4
                  c.li         s10, -1
                  xor          a3, zero, s0
                  c.mv         a5, t1
                  mulhsu       s3, t5, sp
                  divu         t5, s4, t3
                  srai         s11, a4, 5
                  remu         zero, gp, a6
                  ori          t0, s9, 1552
                  c.addi4spn   a5, sp, 288
                  addi         s0, t3, -296
                  rem          sp, s7, t1
                  mul          s3, a5, s5
                  lui          gp, 84450
                  srli         a5, a2, 14
                  mul          a3, zero, a4
                  auipc        s0, 853229
                  slt          s0, s9, a2
                  c.sub        s0, s0
                  sltiu        t5, zero, -1248
                  c.nop
                  remu         a2, s5, s11
                  lui          s0, 194605
                  sub          t0, t0, s7
                  rem          t1, s6, t1
                  sub          s7, t4, a5
                  c.or         s0, a5
                  nop
                  xori         s5, s5, -1315
                  sltu         sp, a5, a4
                  mulhu        s7, s2, s5
                  mulh         a3, a0, s3
                  c.sub        a3, s1
                  andi         s7, a0, 1948
                  srli         s3, s2, 9
                  c.add        tp, a3
                  sub          gp, a3, ra
                  and          t3, a0, s8
                  slti         a1, s2, -868
                  ori          gp, a1, 114
                  sltiu        a3, a1, 381
                  andi         a4, s2, 1754
                  srai         s3, a6, 1
                  auipc        a7, 460698
                  lui          tp, 515811
                  c.srai       a1, 6
                  c.add        s7, s3
                  c.nop
                  c.sub        a5, a2
                  srl          t4, s7, t4
                  c.lui        s5, 7
                  mulhu        a5, a2, t3
                  c.addi       gp, -1
                  slti         s0, ra, -1326
                  sll          a7, a2, s10
                  sra          s3, s1, tp
                  c.addi16sp   sp, -16
                  ori          s5, ra, 973
                  xor          a2, a5, s10
                  mulhsu       s3, s10, t3
                  xor          gp, a0, s3
                  c.sub        s0, s1
                  c.slli       s8, 21
                  c.andi       a3, -1
                  sll          t0, s0, s0
                  addi         tp, t4, 807
                  xor          s5, s4, a2
                  c.li         sp, -1
                  mul          a1, t1, t2
                  remu         a4, a7, s6
                  mulh         gp, a7, ra
                  remu         t1, s7, t3
                  c.nop
                  srl          s4, s4, a5
                  c.addi       a7, 12
                  remu         s5, t2, zero
                  mulh         gp, t5, gp
                  c.xor        a1, s0
                  add          s0, s2, t1
                  add          a6, zero, s0
                  c.lui        a6, 6
                  c.addi4spn   a1, sp, 1008
                  c.slli       a0, 21
                  andi         s2, t3, 1048
                  sra          zero, t3, t1
                  rem          t1, gp, t4
                  c.addi16sp   sp, 256
                  lui          a1, 757630
                  div          s7, a4, t1
                  c.and        a5, a5
                  c.mv         s8, s8
                  nop
                  andi         s0, s11, -1418
                  lui          s7, 500175
                  c.addi16sp   sp, -16
                  c.srai       s0, 8
                  remu         sp, t6, zero
                  mulh         gp, zero, a7
                  sltiu        a6, s0, 758
                  c.lui        a6, 5
                  c.addi4spn   a1, sp, 416
                  slli         a3, t1, 23
                  sltu         s0, s10, ra
                  c.addi16sp   sp, 240
                  remu         s5, a5, s8
                  mul          zero, s1, s4
                  c.sub        a4, a4
                  mulh         s9, s4, t4
                  mulhu        t5, zero, s10
                  xor          t1, tp, a2
                  mul          s3, tp, t6
                  and          s0, gp, s5
                  c.lui        a2, 18
                  remu         s8, t1, t3
                  slli         a2, s2, 19
                  sll          s9, t2, s11
                  auipc        t1, 141844
                  xori         t0, sp, -1239
                  c.sub        a0, a0
                  sub          s0, a7, tp
                  sltu         s11, ra, a0
                  and          sp, s8, s5
                  div          s7, s0, t5
                  add          t1, t2, a0
                  lui          t4, 400249
                  c.lui        a2, 19
                  c.add        a5, s11
                  addi         t5, s6, -1248
                  slt          s5, t4, s9
                  c.andi       s0, 19
                  mulhu        a0, s2, s0
                  c.slli       a0, 5
                  c.andi       a2, -1
                  c.addi4spn   a4, sp, 1008
                  c.addi16sp   sp, 208
                  c.srli       a2, 26
                  lui          s10, 67079
                  srl          t3, s2, a7
                  ori          s9, t1, 1100
                  c.addi       s10, -1
                  mulhsu       t0, a2, s6
                  c.lui        s2, 30
                  slt          s0, t2, t5
                  and          s6, tp, tp
                  and          a4, t4, a4
                  ori          a1, s8, -250
                  c.lui        s9, 31
                  c.addi4spn   s0, sp, 272
                  c.lui        s0, 10
                  slti         gp, t1, -519
                  nop
                  mulhu        s3, s4, a7
                  rem          a3, s2, s3
                  sub          s10, s11, tp
                  mulhsu       a3, t6, s6
                  sltiu        t0, a3, 1574
                  c.slli       s2, 27
                  andi         t5, s10, -1487
                  srl          a6, a4, s11
                  ori          s11, s8, 145
                  add          s8, a1, s1
                  and          t0, t5, a7
                  or           s0, s3, s4
                  ori          s2, a3, -1076
                  sub          gp, t4, tp
                  c.and        a1, a4
                  sltu         s10, s0, t0
                  c.lui        s11, 1
                  c.and        a2, s0
                  slt          s2, a6, t1
                  c.addi16sp   sp, 192
                  auipc        a3, 639252
                  and          s9, t2, a5
                  c.srli       a0, 4
                  c.xor        a1, s1
                  c.sub        a2, s1
                  lui          sp, 953106
                  nop
                  sub          s3, ra, s0
                  auipc        t1, 769658
                  slt          s8, s5, s1
                  srai         a3, t6, 27
                  and          a5, s0, sp
                  c.or         a3, a5
                  sub          a0, a5, s2
                  c.srli       s0, 7
                  lui          s5, 174373
                  c.lui        s3, 23
                  lui          gp, 1023806
                  c.or         a1, a4
                  c.srai       a3, 26
                  srl          t1, tp, t1
                  sltu         s4, s10, a5
                  c.and        a5, s0
                  ori          s7, a2, -1122
                  c.add        gp, s7
                  and          a4, t5, s9
                  c.add        a7, sp
                  addi         a3, s2, -1472
                  c.nop
                  c.xor        s0, a1
                  div          a6, s10, t0
                  lui          s5, 210158
                  add          s7, t6, t1
                  xor          gp, s2, zero
                  mulhu        t4, a5, s8
                  mulhsu       zero, s5, s0
                  mul          a6, zero, a6
                  div          s3, a5, s1
                  c.xor        a4, a4
                  mulhsu       s4, a1, s4
                  remu         a7, a1, t1
                  slli         t5, tp, 16
                  xori         a5, tp, -1930
                  divu         t1, ra, s11
                  nop
                  srl          s2, t3, s0
                  srai         s2, s10, 29
                  c.xor        s0, a5
                  srai         s11, s4, 23
                  sub          gp, s7, a7
                  nop
                  xori         a0, t4, -1360
                  c.lui        s3, 27
                  mulhu        a0, s7, a2
                  srl          t0, a4, a3
                  c.addi16sp   sp, 352
                  c.addi4spn   a5, sp, 720
                  mulhu        a5, t3, s3
                  sltu         s11, a4, a7
                  divu         a0, s1, s2
                  divu         s9, s10, s8
                  c.lui        s0, 11
                  slti         a2, s11, 941
                  sll          s0, zero, s8
                  sltiu        s0, s11, 366
                  ori          s2, t1, 335
                  c.addi16sp   sp, 112
                  divu         t0, s9, ra
                  c.xor        s0, a5
                  c.xor        a3, a4
                  add          s0, s4, gp
                  c.and        a0, s1
                  c.addi       t0, 1
                  divu         zero, s7, gp
                  c.slli       s10, 21
                  c.addi16sp   sp, 32
                  c.nop
                  and          s11, zero, a5
                  c.nop
                  ori          a6, t6, -1410
                  c.add        t1, a2
                  slt          a1, s6, tp
                  c.li         s7, 0
                  addi         a7, s3, 231
                  nop
                  c.addi4spn   s0, sp, 656
                  and          a7, s10, s3
                  c.lui        a3, 23
                  and          zero, gp, s8
                  sltiu        t6, t4, -794
                  or           a5, zero, t0
                  andi         a4, s8, -90
                  c.slli       gp, 31
                  c.and        a4, a3
                  and          t5, t2, a2
                  sltu         a2, a0, a0
                  c.srai       s0, 16
                  c.nop
                  srli         a7, s6, 5
                  c.addi16sp   sp, 272
                  slti         t6, t3, -79
                  c.add        s8, tp
                  slt          s11, t5, s4
                  and          zero, s11, t1
                  xori         t4, a3, -356
                  slti         zero, s10, -597
                  mulhu        s4, s2, a6
                  ori          a6, s5, 850
                  c.srai       s0, 14
                  c.addi       s0, 23
                  c.lui        s11, 28
                  c.li         a0, 2
                  sub          t3, a5, s8
                  c.slli       a0, 2
                  nop
                  c.or         a4, a4
                  sll          a1, a0, s7
                  srai         t1, t3, 28
                  slti         s11, a7, -1058
                  slt          s2, s4, a4
                  c.srai       a5, 25
                  mulhu        zero, t0, s2
                  c.lui        s0, 30
                  remu         gp, a4, s1
                  c.addi4spn   a3, sp, 960
                  ori          t3, s3, -1576
                  mul          t0, a3, ra
                  sll          a6, s9, t2
                  nop
                  c.srli       a3, 11
                  addi         a1, s4, -1609
                  slt          t4, a0, a4
                  slli         t5, s4, 19
                  c.nop
                  andi         a5, ra, -864
                  sltiu        tp, s9, -256
                  mulhsu       s6, s11, s0
                  c.srai       a5, 9
                  srai         s11, s1, 22
                  c.addi       a0, -1
                  sub          s3, a3, a2
                  c.mv         s5, s9
                  addi         gp, t5, -550
                  mulhu        a1, tp, s7
                  div          s4, t3, a5
                  divu         t4, a3, t3
                  mulhu        a0, s5, s11
                  sub          t0, gp, a1
                  c.addi       gp, -1
                  c.li         s6, 29
                  c.add        a4, a2
                  c.sub        a4, s1
                  auipc        t1, 49610
                  c.mv         a6, tp
                  c.lui        s2, 28
                  sra          s10, s10, sp
                  mulh         a3, s1, a2
                  mulh         gp, sp, s7
                  c.nop
                  c.or         a2, a0
                  mulhsu       s4, s11, s4
                  srli         t6, s5, 30
                  slt          s5, s8, tp
                  mul          s5, a3, t3
                  divu         t6, s4, s4
                  c.addi       s5, -1
                  c.xor        a3, a3
                  sltiu        t6, a7, 1091
                  slt          t6, a7, s4
                  andi         tp, t4, 368
                  mulhsu       t0, s2, tp
                  c.nop
                  c.or         s0, a0
                  andi         a7, a0, 1747
                  srli         t3, tp, 12
                  xori         a1, s7, -556
                  srli         zero, s9, 12
                  c.nop
                  c.and        a5, a0
                  c.andi       s0, 25
                  c.slli       t3, 14
                  c.slli       t6, 16
                  andi         t3, s8, -1858
                  divu         zero, a1, s10
                  c.nop
                  c.lui        gp, 26
                  xori         s8, a0, 1847
                  sra          a3, a2, s9
                  sltiu        a1, a2, -1538
                  auipc        s9, 703204
                  slt          a5, ra, zero
                  addi         zero, t2, 1639
                  c.or         a5, s0
                  c.andi       a0, -1
                  srli         a4, t2, 23
                  sra          s7, a1, s5
                  nop
                  c.li         t5, -1
                  sltiu        t3, ra, -1620
                  mulh         s3, s4, s8
                  slti         s4, ra, 188
                  mulh         s10, a2, t2
                  mulh         s10, s11, a2
                  srai         a7, tp, 26
                  srai         zero, a6, 16
                  c.add        s10, s7
                  nop
                  nop
                  c.mv         s7, a7
                  mulh         a1, s7, sp
                  sltu         a1, a3, ra
                  div          s4, s2, a1
                  auipc        t1, 703632
                  sltiu        s8, s0, -1175
                  sub          s3, s2, s9
                  sra          a2, t5, a4
                  addi         gp, a7, -140
                  sra          t1, a3, a7
                  rem          a4, s3, s9
                  c.slli       s2, 14
                  andi         s3, t6, 1429
                  srai         s10, s0, 12
                  auipc        a6, 483922
                  divu         a1, t0, a5
                  c.xor        a0, a0
                  divu         t5, a4, a0
                  rem          zero, s8, t0
                  auipc        s5, 478226
                  c.addi       a2, -1
                  or           s2, gp, t2
                  srai         a3, s3, 3
                  c.li         t5, 9
                  xor          a4, ra, s11
                  c.lui        tp, 13
                  c.add        s11, s0
                  c.addi16sp   sp, -16
                  c.slli       sp, 7
                  divu         a5, a7, a2
                  add          s7, a5, s3
                  mul          zero, a3, s8
                  mulhsu       t0, s4, a1
                  mulhsu       s7, s7, a1
                  srai         s7, s7, 20
                  c.addi16sp   sp, 192
                  ori          s7, s9, 2004
                  remu         s4, t6, s7
                  c.andi       a5, -1
                  auipc        t0, 285502
                  andi         s9, s5, 1125
                  srai         a0, gp, 21
                  sra          t6, a5, a4
                  srli         t1, s4, 17
                  c.sub        a3, s0
                  andi         a5, a4, -807
                  div          a7, a3, zero
                  srai         s9, s11, 12
                  slt          a2, s0, t3
                  nop
                  remu         s0, s3, t2
                  sub          s2, s11, s6
                  xor          a7, a5, s11
                  sll          zero, t5, s11
                  ori          s5, t3, 1381
                  xor          s2, t5, t4
                  sll          s4, s1, s3
                  srli         t1, s9, 5
                  c.lui        gp, 9
                  nop
                  srli         zero, s5, 1
                  div          s5, s5, a0
                  sra          zero, zero, t2
                  mul          a6, zero, sp
                  c.andi       a1, -1
                  c.srai       s0, 11
                  c.sub        a2, a0
                  divu         s4, a3, a1
                  c.addi       t3, 8
                  addi         a4, a7, -1626
                  mul          a6, s4, s6
                  lui          t1, 905085
                  sltu         a7, s11, t1
                  addi         a0, t0, 775
                  c.li         t3, 2
                  c.addi       a2, -1
                  c.mv         a7, s5
                  remu         zero, a2, s1
                  div          zero, ra, s6
                  slli         a7, a5, 7
                  nop
                  mul          s8, s6, s3
                  c.addi4spn   a0, sp, 48
                  c.addi       s7, 23
                  c.addi4spn   a0, sp, 736
                  slt          a1, gp, s10
                  c.xor        s0, a2
                  c.srli       a1, 13
                  divu         t6, t6, s4
                  sub          a0, ra, s9
                  c.srli       a2, 24
                  div          a5, s6, a2
                  c.addi       sp, 3
                  c.srli       a1, 26
                  slti         s8, s11, 427
                  c.slli       tp, 6
                  auipc        s5, 549462
                  c.lui        gp, 25
                  div          zero, t1, t1
                  and          s2, s9, t0
                  add          zero, a1, a7
                  mulhsu       a2, t6, s10
                  c.srai       a3, 5
                  sub          s3, s6, a0
                  c.xor        a1, s0
                  c.li         s5, -1
                  mulh         a7, gp, zero
                  c.mv         t0, t1
                  lui          t1, 988953
                  c.nop
                  slli         a6, s10, 8
                  c.mv         s4, t3
                  c.sub        a2, a1
                  c.or         a3, s0
                  srli         s8, s1, 21
                  xori         s9, s0, 1829
                  sll          t6, s9, a7
                  c.nop
                  or           s5, t6, s7
                  c.sub        a0, a4
                  c.addi4spn   a5, sp, 944
                  slti         s4, s5, -54
                  slt          t0, t3, a3
                  c.srai       a4, 19
                  srli         s3, t2, 9
                  nop
                  xori         s0, t5, 1973
                  sra          t4, s2, t3
                  addi         s9, a5, -1280
                  sll          a6, t1, s2
                  mulh         s4, s9, s6
                  slli         a1, a5, 9
                  mulhu        zero, s9, s10
                  or           s0, a3, a4
                  sra          s3, t4, s8
                  c.nop
                  add          a0, ra, s3
                  andi         s6, t0, 712
                  andi         t0, a4, -586
                  rem          s9, s10, a1
                  slli         a2, s4, 24
                  slt          a1, a6, s11
                  slti         sp, gp, -431
                  c.sub        a3, a2
                  c.srai       a0, 20
                  c.andi       a0, -1
                  c.andi       a1, 24
                  add          a5, t2, s7
                  c.addi       t1, -1
                  add          s9, a7, s2
                  sub          s10, a6, s1
                  slli         t0, a1, 30
                  sltu         s7, ra, a2
                  remu         sp, a6, gp
                  mulhu        gp, t0, a1
                  sltiu        s4, gp, -1270
                  sra          t6, sp, a5
                  slli         s10, s5, 24
                  mulhu        t5, a5, t4
                  ori          s3, a5, -1003
                  lui          zero, 273893
                  div          t0, s11, t2
                  rem          t3, a0, s6
                  srli         a1, gp, 6
                  sra          a6, sp, t4
                  srl          s2, s10, s11
                  div          s6, s9, t2
                  mulh         t0, t2, s2
                  lui          a7, 121034
                  c.mv         a3, s10
                  c.add        s5, s2
                  c.slli       a6, 21
                  srai         t1, zero, 20
                  lui          s7, 190873
                  and          a5, gp, ra
                  slt          t5, tp, t1
                  c.nop
                  c.addi       a4, 16
                  xor          t1, s10, s11
                  addi         gp, a4, 1690
                  andi         s2, t1, -1798
                  rem          s7, s0, s6
                  c.li         t0, -1
                  slli         gp, s4, 14
                  c.sub        s0, a1
                  c.addi4spn   s0, sp, 976
                  div          tp, s9, a6
                  add          a1, s4, ra
                  c.nop
                  div          a3, t2, sp
                  c.andi       a3, 25
                  slli         a5, s10, 4
                  c.or         s0, a2
                  srli         a1, ra, 2
                  sltu         s9, s7, a5
                  rem          s3, s3, t2
                  rem          a2, s9, gp
                  c.mv         tp, s9
                  andi         t6, t5, 413
                  c.srai       a3, 6
                  c.nop
                  srli         s8, t0, 10
                  xori         a0, zero, -1063
                  srl          gp, tp, t4
                  c.mv         a3, gp
                  c.addi4spn   a5, sp, 848
                  lui          t4, 424015
                  sll          s9, s0, t1
                  c.lui        a3, 22
                  c.andi       a1, -1
                  sltiu        a0, a5, -1694
                  add          t5, s5, s8
                  mulhu        s7, t6, t4
                  andi         s8, gp, -178
                  c.srai       a3, 25
                  c.slli       a0, 26
                  lui          s3, 931914
                  c.addi       t5, 17
                  andi         t5, sp, 1722
                  xori         a7, s0, -870
                  c.and        s0, a5
                  srai         t5, s9, 6
                  or           t6, a0, sp
                  addi         t3, t2, 534
                  c.nop
                  xori         t1, t5, 1419
                  mul          a7, s4, s1
                  remu         s2, t2, s1
                  sub          s5, a3, t3
                  c.li         a2, -1
                  sra          s11, tp, a1
                  c.xor        a1, a3
                  or           s0, s6, s4
                  c.add        t3, t2
                  srl          s6, s7, s8
                  c.lui        gp, 20
                  mulh         zero, a1, s8
                  auipc        a3, 104268
                  c.mv         a5, t2
                  xori         sp, a1, -463
                  ori          s6, sp, 1292
                  srai         s0, s2, 3
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  sltu         s2, a1, s10
                  nop
                  c.srai       s0, 24
                  c.or         s0, a2
                  c.addi16sp   sp, -16
                  srai         s6, s7, 12
                  c.nop
                  slli         s0, s7, 29
                  sub          t4, t1, s9
                  c.lui        t5, 12
                  sltu         a3, t6, a0
                  c.srli       a5, 10
                  remu         s8, s0, t4
                  xor          a7, ra, s10
                  sll          a7, a4, a6
                  c.and        a0, a2
                  c.slli       s3, 22
                  c.sub        a1, s0
                  sll          s3, a7, s0
                  slli         a2, s3, 16
                  c.sub        a5, s1
                  add          t1, s4, t6
                  and          a7, s8, t2
                  auipc        zero, 970336
                  srai         zero, sp, 2
                  sltiu        t0, s4, -1676
                  rem          a1, a4, s1
                  slt          a2, t1, zero
                  c.addi       a6, -1
                  sltu         t1, s2, a1
                  srl          tp, s7, a2
                  srai         a3, a6, 27
                  or           s7, t1, s1
                  sra          sp, s11, t2
                  slli         s10, gp, 19
                  div          s10, s9, s11
                  c.lui        a2, 9
                  c.li         s5, -1
                  add          a2, s1, tp
                  slt          s3, tp, s2
                  c.lui        s10, 1
                  slli         a5, a2, 10
                  srli         sp, t3, 0
                  xori         a6, zero, 2040
                  xor          s9, s6, zero
                  slli         gp, t4, 11
                  slt          gp, a3, t3
                  c.srli       a1, 27
                  c.lui        s0, 2
                  div          s3, t4, tp
                  remu         s8, s5, s10
                  srai         s3, t1, 10
                  nop
                  c.sub        s0, s0
                  div          s11, s4, s1
                  c.lui        s0, 21
                  slt          t1, a2, t3
                  div          t1, t0, s7
                  srai         s2, s4, 21
                  nop
                  srli         s11, s6, 14
                  sltiu        t1, s2, -1131
                  sll          a3, s8, s1
                  c.srli       a4, 28
                  c.andi       a4, 9
                  c.xor        a5, a2
                  c.li         a7, 26
                  c.or         a1, a4
                  addi         s11, a0, 273
                  c.addi4spn   a5, sp, 752
                  lui          s11, 978372
                  c.addi4spn   a2, sp, 384
                  slti         s4, a7, 1271
                  divu         s9, t2, a2
                  divu         t5, tp, s10
                  mulhsu       a7, t0, s9
                  c.li         t5, -1
                  xori         gp, t3, 1153
                  slti         a4, t0, -531
                  lui          a1, 840072
                  ori          a2, t4, -342
                  add          sp, t0, ra
                  xori         a5, t6, -1608
                  add          a4, ra, a6
                  sra          a2, t4, a0
                  mulhu        s4, s1, s1
                  auipc        s11, 756868
                  div          s0, a3, t4
                  c.addi4spn   a0, sp, 912
                  andi         zero, gp, -5
                  c.mv         t6, s1
                  c.addi16sp   sp, -16
                  xori         s10, t2, -1489
                  xori         a7, t3, 1108
                  addi         s7, t0, 1050
                  slti         t3, s2, 389
                  slli         sp, s5, 6
                  slti         a1, sp, -302
                  srl          s9, a7, s5
                  add          t1, t2, s6
                  remu         s7, s1, t1
                  mulhsu       s4, t4, t5
                  c.andi       a0, -1
                  xori         s9, a1, -1390
                  c.mv         s2, a1
                  nop
                  xori         a5, a0, 1826
                  c.or         a3, a0
                  mulhsu       s4, t2, a0
                  c.add        a5, a7
                  srai         t0, s5, 10
                  ori          a7, a2, 208
                  c.addi16sp   sp, -16
                  lui          s7, 568919
                  remu         sp, a2, s10
                  c.xor        a1, a0
                  add          a6, s2, s10
                  mul          s0, t2, t3
                  c.srai       a5, 29
                  c.lui        s9, 16
                  c.addi       s3, 2
                  c.slli       s11, 29
                  mulhu        s5, s8, gp
                  sltiu        a2, sp, 1173
                  c.add        a2, s1
                  c.addi4spn   a2, sp, 704
                  c.lui        t5, 23
                  srl          t4, t5, ra
                  sltu         s0, s7, a3
                  rem          s9, s8, a6
                  mulh         a2, s6, gp
                  mulhu        s6, t0, a1
                  mul          zero, a5, t1
                  c.mv         t0, t1
                  lui          s5, 4494
                  c.add        a2, s6
                  div          t1, s4, a1
                  sub          a1, s3, s0
                  lui          a2, 708408
                  mulh         a7, a2, s3
                  mulh         s7, zero, s2
                  srl          s0, a0, a7
                  c.lui        a1, 19
                  sltiu        a4, t3, -301
                  sltu         zero, s8, a1
                  sltiu        a0, t5, -1112
                  slli         t3, t5, 28
                  c.andi       a5, -1
                  srai         s11, s11, 6
                  srl          t4, t1, t5
                  c.xor        s0, a3
                  srli         s8, s1, 20
                  srli         t4, zero, 5
                  addi         s4, s2, 1927
                  div          t0, t6, a0
                  slt          s5, s3, a4
                  c.addi       t1, -1
                  srl          a5, a1, t4
                  c.slli       a6, 13
                  slti         s0, t2, -558
                  lui          s0, 519340
                  mulhu        s5, s4, s2
                  remu         t1, s1, a0
                  slli         s11, s1, 1
                  c.xor        a0, s1
                  c.nop
                  slli         t3, t5, 16
                  c.nop
                  auipc        a1, 863268
                  auipc        a4, 798000
                  addi         s4, t2, 230
                  addi         t0, s2, 1220
                  sra          gp, s6, s6
                  andi         a3, a2, -28
                  slli         tp, t3, 30
                  xori         s2, a3, 1189
                  c.li         s2, -1
                  srli         tp, s8, 0
                  c.xor        s0, a4
                  srli         s7, t1, 17
                  c.andi       s0, -1
                  mulh         t3, s2, a5
                  c.addi16sp   sp, 304
                  and          a1, s9, s6
                  divu         s7, t6, zero
                  c.nop
                  andi         t3, t6, -1485
                  c.li         a5, -1
                  rem          gp, a5, zero
                  ori          a2, s9, -541
                  sub          s11, zero, t3
                  mul          a6, a7, a6
                  slti         s10, a6, 727
                  sub          s0, t2, t4
                  srli         a5, s1, 17
                  c.sub        s0, a1
                  auipc        t1, 282022
                  slti         a1, a1, 1981
                  c.sub        a2, a4
                  sra          s7, sp, s10
                  mulh         a5, gp, s6
                  addi         s11, gp, 177
                  srli         a2, t2, 24
                  div          gp, sp, a6
                  c.xor        a3, a2
                  c.xor        a5, a2
                  c.and        a0, s0
                  remu         s4, gp, tp
                  c.nop
                  c.nop
                  srai         s9, s6, 21
                  addi         s5, zero, 886
                  slli         s9, s9, 13
                  xor          t5, a7, s0
                  mul          a1, s8, s6
                  sra          t5, s7, ra
                  mulhu        a7, s2, s7
                  rem          a0, a2, t1
                  add          s4, zero, t6
                  slt          sp, sp, a4
                  c.slli       a1, 6
                  srl          gp, t4, s6
                  mulhsu       a0, t1, s0
                  c.xor        a3, s0
                  lui          t6, 817121
                  c.addi       s11, -1
                  sltu         s8, s1, s11
                  c.add        t4, t6
                  c.li         a0, -1
                  xor          s11, t4, t5
                  sra          a2, s6, t3
                  rem          gp, sp, s11
                  mul          s0, a1, s1
                  xori         t6, a3, 1134
                  andi         s9, s5, -754
                  sll          s11, a2, a3
                  mulh         a2, a7, tp
                  c.srli       a2, 30
                  srli         s6, s2, 2
                  mulh         a3, zero, s8
                  c.li         tp, 12
                  c.or         a1, s0
                  srai         a4, s3, 27
                  srli         t1, s2, 18
                  slli         s2, a1, 14
                  sltu         gp, t6, tp
                  ori          t4, zero, 155
                  auipc        s5, 529319
                  c.xor        a0, a5
                  c.andi       a1, -1
                  c.and        a4, a3
                  and          s7, t5, s5
                  slt          s2, gp, s9
                  mulhu        s4, a6, t3
                  srli         a6, a2, 20
                  c.addi16sp   sp, 256
                  c.and        a5, s0
                  lui          s11, 126161
                  ori          a3, t3, 124
                  mulhu        s10, zero, s3
                  sll          a7, s3, t3
                  c.lui        a4, 27
                  lui          s10, 756765
                  add          s10, a2, zero
                  srai         t0, zero, 26
                  c.srai       a1, 8
                  divu         a5, s4, t6
                  ori          gp, t6, -1776
                  c.xor        s0, a5
                  ori          t3, s5, -1383
                  mulhsu       s3, zero, s8
                  slt          s8, sp, a2
                  c.slli       s10, 11
                  nop
                  xori         s7, gp, 674
                  c.xor        a0, a2
                  mul          t6, s10, s7
                  c.mv         a1, s4
                  sll          a7, t0, s3
                  c.addi4spn   s0, sp, 704
                  srl          zero, a6, a4
                  lui          s6, 365246
                  mulhsu       a1, a3, t6
                  srl          a1, s8, s7
                  c.sub        s0, a5
                  nop
                  srai         s10, a3, 5
                  addi         a0, ra, 463
                  c.mv         a3, t5
                  sra          s5, a4, s9
                  srl          tp, s5, t5
                  sltu         s9, a7, a5
                  srai         s2, tp, 11
                  or           a7, a4, a4
                  add          s9, a6, sp
                  addi         zero, sp, -1453
                  c.add        a5, s7
                  rem          a6, a4, t5
                  sra          sp, s3, s4
                  mul          s8, a1, a5
                  lui          s9, 57075
                  mulh         s8, a6, a2
                  srai         t0, t2, 2
                  c.sub        a2, a1
                  mulhsu       s8, a1, s10
                  divu         gp, s0, t0
                  mul          s11, s10, s9
                  srai         t5, t1, 28
                  c.addi       s8, -1
                  sub          gp, s8, tp
                  mulh         a5, s4, s11
                  remu         s9, s9, a2
                  c.add        sp, t3
                  add          t3, a3, a1
                  divu         zero, s6, tp
                  c.srai       a2, 12
                  c.addi4spn   s0, sp, 496
                  srli         a5, s7, 7
                  div          tp, s1, t4
                  lui          gp, 112069
                  c.and        a1, a0
                  c.andi       a1, 29
                  mul          tp, a5, t1
                  div          s10, s9, s3
                  or           a5, a2, s0
                  c.nop
                  mulhu        s4, a1, sp
                  auipc        s5, 691702
                  c.sub        a1, a0
                  c.mv         a0, s4
                  c.nop
                  c.srli       a2, 5
                  and          s7, sp, s10
                  c.srai       s0, 6
                  mul          s11, t5, t3
                  lui          s5, 549553
                  xori         a6, t2, -1537
                  mulhu        s0, a1, a7
                  c.lui        a7, 24
                  or           s10, s6, a1
                  c.srli       a2, 2
                  c.addi16sp   sp, 176
                  lui          s2, 951641
                  xor          s0, a6, s6
                  mulhu        a2, s3, a2
                  slt          s10, s2, s7
                  c.nop
                  xori         s8, zero, 299
                  c.addi4spn   s0, sp, 704
                  c.srai       a3, 20
                  auipc        a0, 282283
                  mulhsu       a3, s10, a0
                  c.or         a0, a4
                  c.mv         t5, s5
                  c.srli       a1, 11
                  c.li         a7, 6
                  c.add        s9, s10
                  c.lui        s10, 8
                  nop
                  srl          t5, s9, a7
                  c.add        a4, s8
                  sltu         s2, a6, sp
                  slt          t0, t4, a1
                  xor          s4, t1, t0
                  c.addi16sp   sp, -16
                  xor          t5, s2, s1
                  ori          tp, s2, -1561
                  addi         s0, s9, -994
                  c.addi16sp   sp, -16
                  c.srli       a2, 8
                  c.mv         s9, s7
                  srl          gp, a3, t2
                  and          gp, s0, s11
                  srai         t1, s7, 27
                  sltu         a5, s3, s8
                  srl          s5, s3, sp
                  remu         a5, zero, t6
                  divu         s5, t2, a5
                  c.nop
                  or           a0, s6, s6
                  sra          s4, s8, s9
                  c.or         a2, a5
                  and          gp, s2, t3
                  mulhsu       zero, s10, s3
                  c.mv         s0, t0
                  c.li         s7, 23
                  c.li         sp, 22
                  srl          a0, t6, s4
                  srli         s0, s1, 6
                  c.or         a4, s1
                  div          s3, t6, s4
                  c.and        a5, a1
                  c.xor        a4, a3
                  slli         a5, a5, 28
                  andi         t6, a3, 1614
                  addi         zero, sp, -1057
                  sltu         s8, s5, t1
                  mul          t0, a6, s7
                  c.xor        a3, a3
                  c.andi       a3, 31
                  c.srai       a5, 11
                  add          s2, t1, s8
                  srli         a5, s6, 13
                  c.xor        a3, s1
                  addi         t0, s2, -1594
                  sub          t0, t6, t4
                  c.add        t0, a4
                  addi         s8, s6, -1311
                  mul          a2, a3, a0
                  sll          s5, s10, ra
                  c.and        a3, a1
                  c.xor        a0, a3
                  mul          s7, s11, s4
                  or           s3, a5, t0
                  c.mv         tp, t4
                  mul          a2, s1, s10
                  srli         a1, s0, 17
                  mul          t0, t0, s8
                  sra          sp, t4, t4
                  c.sub        a4, a5
                  mulhu        gp, zero, t2
                  and          s11, t3, s8
                  or           s0, t6, a2
                  andi         t1, tp, -604
                  c.addi       s10, -1
                  remu         s4, s2, a4
                  xori         a0, s1, 1797
                  c.and        a5, a4
                  sll          a6, s2, s11
                  rem          s7, t2, a0
                  c.addi4spn   a1, sp, 992
                  xori         s3, s5, 652
                  divu         zero, a6, s7
                  c.slli       s8, 14
                  andi         a5, sp, 807
                  c.andi       a3, -1
                  sra          t3, s11, a6
                  c.andi       a5, 15
                  slti         s7, s2, 523
                  lui          a7, 975538
                  ori          a4, t1, 883
                  remu         t1, tp, s3
                  xori         a2, a1, 1409
                  c.mv         t5, a4
                  c.add        s7, tp
                  slli         a7, s7, 10
                  mulh         sp, t1, s10
                  srai         s9, t2, 10
                  c.mv         sp, s6
                  remu         t4, s0, t1
                  xor          s7, s5, s4
                  c.li         a7, -1
                  auipc        a2, 649512
                  c.nop
                  lui          t1, 58866
                  c.and        s0, s1
                  mulh         zero, s11, s7
                  mulhu        a2, a7, tp
                  div          s4, a4, t4
                  rem          a6, s11, s8
                  mulhu        s10, t1, ra
                  addi         a4, s4, -492
                  xori         s5, a2, -1779
                  c.slli       s3, 28
                  auipc        gp, 691569
                  sltu         t6, s2, s6
                  c.srai       a5, 2
                  c.mv         s0, t1
                  addi         s2, a5, 1333
                  auipc        s7, 884436
                  sll          t4, a2, s4
                  sltu         s9, t3, a2
                  c.nop
                  c.addi       a5, -1
                  divu         t0, a1, a7
                  nop
                  auipc        t0, 211698
                  srl          s7, t0, gp
                  or           s6, t1, s10
                  c.and        a1, a0
                  slti         t0, tp, -225
                  auipc        t6, 173939
                  c.or         a3, a5
                  lui          s4, 79265
                  srai         a6, a4, 2
                  xor          a3, s11, t1
                  srl          s5, t0, t2
                  ori          s2, s10, -619
                  addi         s8, a4, 1771
                  slt          a1, a5, s1
                  divu         s8, t2, s7
                  sltu         tp, a3, s0
                  srl          t5, s11, s6
                  add          a2, ra, a0
                  c.lui        s4, 6
                  addi         s9, a3, -987
                  srai         a4, s7, 31
                  c.addi4spn   a5, sp, 336
                  srl          a1, s6, gp
                  xor          s3, s6, s5
                  div          zero, s5, a2
                  sltiu        s5, a4, 286
                  c.srli       s0, 4
                  or           sp, sp, t5
                  c.addi       s10, 9
                  nop
                  mul          s3, s10, t6
                  mulhsu       t4, s3, zero
                  c.add        a6, s8
                  c.srai       a1, 9
                  slti         a5, t0, 392
                  c.or         s0, a1
                  srl          a5, t4, a5
                  c.addi       t0, 15
                  c.slli       a3, 8
                  xori         a6, sp, -1670
                  remu         a3, a0, a5
                  mulh         t6, s2, s4
                  c.addi4spn   a1, sp, 1008
                  c.add        a6, t3
                  divu         a2, t5, a2
                  c.mv         t0, t3
                  lui          a2, 76793
                  c.and        a3, s1
                  or           s5, s6, s7
                  c.lui        s2, 29
                  rem          s11, s3, t0
                  mulhu        t0, s8, t2
                  sub          s9, s11, a5
                  mulh         a5, s9, a4
                  or           gp, s7, t1
                  c.addi4spn   a5, sp, 448
                  c.addi4spn   a1, sp, 912
                  c.addi4spn   a3, sp, 224
                  c.andi       a3, 5
                  c.xor        a1, a4
                  slti         a2, s8, -263
                  c.srli       a0, 21
                  c.addi       s4, 15
                  c.nop
                  c.srai       a4, 9
                  ori          t0, t5, 505
                  c.and        a3, a5
                  c.lui        gp, 24
                  c.slli       s9, 14
                  srl          a6, a5, tp
                  c.and        s0, a4
                  srl          t1, s8, t1
                  c.slli       t6, 23
                  c.mv         s2, s9
                  addi         zero, a5, -1123
                  sub          s11, t0, s8
                  remu         s0, s0, a7
                  sra          s4, gp, a2
                  srl          a5, s1, zero
                  sltu         s11, zero, s1
                  ori          s0, t1, -1177
                  xor          gp, a0, a3
                  c.xor        a1, a0
                  c.andi       a4, -1
                  c.srai       a2, 27
                  and          a7, t2, t6
                  slti         s2, a6, -1363
                  srl          s0, t0, s10
                  mulhu        s9, a7, a2
                  mulhu        sp, sp, s5
                  rem          t4, s5, s3
                  c.li         s11, -1
                  or           s3, a2, a3
                  c.lui        t3, 21
                  sra          s9, t1, a5
                  divu         s11, s7, ra
                  divu         s11, s1, a7
                  c.andi       a1, 24
                  srl          a7, gp, zero
                  add          a2, zero, s7
                  slli         s4, t1, 29
                  nop
                  c.nop
                  lui          t6, 511010
                  xor          s4, t4, zero
                  c.xor        a1, a0
                  xor          zero, a6, s10
                  add          zero, t2, ra
                  lui          zero, 634893
                  nop
                  mulh         a5, a2, s6
                  mulhu        tp, zero, a2
                  c.add        s6, a0
                  and          s9, ra, t1
                  divu         s9, a2, a0
                  sub          t5, a4, tp
                  c.addi16sp   sp, -16
                  sltiu        a1, sp, -1261
                  c.li         a4, 19
                  c.addi       sp, -1
                  srl          a5, a4, a4
                  srl          a5, a6, a5
                  srl          s0, a0, t2
                  mulhsu       s6, t4, a3
                  mulh         t6, t0, a1
                  divu         s4, a0, s7
                  srl          t1, s11, sp
                  addi         a1, s1, 1715
                  and          zero, s3, zero
                  srai         s6, s0, 0
                  sltu         t0, s4, s0
                  ori          a1, a7, 1619
                  lui          s2, 942117
                  mulhu        s7, t4, a2
                  c.addi       t0, -1
                  and          t1, t6, t2
                  srli         s0, a7, 28
                  auipc        a4, 245549
                  c.srli       a0, 15
                  divu         a4, s8, a1
                  xori         s9, s0, -388
                  div          a2, s5, t1
                  addi         a5, sp, -209
                  c.add        a2, sp
                  c.or         a3, a0
                  add          t1, s11, s10
                  srai         t4, s7, 2
                  lui          t1, 329503
                  mul          s8, t2, s10
                  c.addi       a7, -1
                  lui          tp, 106550
                  xor          s6, a1, sp
                  c.addi16sp   sp, 272
                  srai         a7, a0, 3
                  mulhu        t6, s3, sp
                  sltiu        s7, s0, 1144
                  c.srli       a4, 23
                  andi         s5, s11, -1657
                  mulhu        gp, a0, ra
                  srli         s8, s6, 23
                  sll          a0, sp, t1
                  mulh         s8, s7, tp
                  add          a0, t5, a6
                  mulhu        a3, s5, s0
                  c.srli       a0, 19
                  lui          t0, 89641
                  slti         a0, t4, 942
                  rem          t3, s5, gp
                  xori         t5, s1, 433
                  sltiu        t3, a1, 154
                  c.slli       a1, 1
                  c.add        s7, a7
                  divu         zero, t0, t3
                  and          a5, t3, a4
                  c.and        a5, a0
                  c.mv         a3, a3
                  addi         s7, a1, 342
                  c.srli       a0, 5
                  c.nop
                  c.addi4spn   a3, sp, 992
                  sltu         a4, sp, a1
                  srl          gp, s9, t5
                  or           t5, s1, a6
                  c.addi16sp   sp, -16
                  c.or         a5, a1
                  c.nop
                  xor          a0, s11, s7
                  slti         s7, t2, -396
                  slt          s8, zero, s0
                  ori          sp, a4, -1970
                  c.xor        a5, s1
                  sll          s9, s11, s0
                  c.sub        s0, a3
                  addi         s0, a6, -1672
                  xor          zero, ra, t1
                  mulh         s6, ra, s11
                  srai         tp, a6, 27
                  div          t1, s10, tp
                  andi         s5, s5, -1324
                  c.add        t1, s8
                  c.mv         s10, t5
                  c.slli       t0, 2
                  mulh         t0, a2, a3
                  sltiu        s6, s0, -586
                  sra          a5, zero, t6
                  sra          gp, s7, s3
                  mul          t6, t1, ra
                  c.addi       s10, -1
                  c.slli       a0, 22
                  c.or         a1, s1
                  c.li         t0, 4
                  c.andi       a1, 31
                  c.or         s0, s0
                  c.xor        a3, a0
                  c.add        s0, t0
                  c.li         t3, 6
                  sra          gp, t6, s7
                  div          t1, a7, t6
                  auipc        s2, 25951
                  c.srli       a3, 1
                  slt          s0, t0, zero
                  c.and        s0, a0
                  addi         s0, s5, -1113
                  srai         s8, s9, 15
                  mulh         zero, t4, t5
                  xori         a5, gp, 2046
                  c.li         s5, -1
                  lui          a6, 275463
                  slti         zero, s11, -939
                  mulh         s4, s11, s11
                  mul          a1, s4, t6
                  c.mv         t3, t5
                  xori         t4, s7, -1827
                  sra          a0, t5, s5
                  andi         s5, s6, -521
                  divu         t3, zero, a1
                  xor          zero, a1, a0
                  lui          s11, 68513
                  c.li         s0, -1
                  sltiu        a4, t6, -1852
                  c.addi16sp   sp, 464
                  c.addi4spn   a2, sp, 944
                  sltu         s4, a7, t4
                  mulhsu       a6, a6, a3
                  c.slli       a0, 7
                  c.andi       s0, 27
                  c.sub        a4, s1
                  lui          a1, 432877
                  divu         s2, a4, s11
                  c.add        a4, a0
                  remu         s10, t1, s6
                  c.addi       s5, -1
                  c.li         gp, -1
                  slli         s3, s11, 24
                  addi         a5, t5, 1072
                  slt          s8, zero, t4
                  xor          tp, sp, t3
                  c.slli       s3, 3
                  xor          s5, t2, s8
                  auipc        gp, 570619
                  c.lui        a3, 24
                  c.srli       a3, 30
                  mulhu        a3, t0, tp
                  c.sub        a0, s0
                  or           t4, a4, a3
                  c.or         s0, s0
                  c.slli       s9, 29
                  mul          a1, t2, a2
                  c.nop
                  c.srai       a2, 24
                  rem          gp, a7, s7
                  and          a1, s9, s0
                  slt          t5, s7, s7
                  divu         s3, t3, a0
                  c.li         a5, -1
                  slt          s5, t1, s8
                  c.andi       s0, 23
                  andi         a6, t0, 536
                  and          a6, a1, ra
                  c.xor        a1, a1
                  srai         t1, s2, 30
                  and          a7, s9, sp
                  sltiu        t5, t6, 1060
                  c.srli       a5, 3
                  div          zero, a7, s5
                  slli         zero, s6, 31
                  remu         a3, t6, t1
                  lui          s4, 1028161
                  c.or         a1, a4
                  c.add        sp, t5
                  and          s10, t0, t4
                  nop
                  c.mv         s7, t2
                  c.sub        a0, a1
                  srl          s8, s10, s11
                  c.sub        a4, a0
                  slti         s4, t1, -1691
                  c.lui        a0, 30
                  c.srli       a1, 16
                  sltu         a5, t6, a7
                  remu         sp, a6, s0
                  mul          zero, a6, s11
                  c.xor        a4, s1
                  divu         s4, a1, a3
                  mulhsu       s0, s0, t2
                  c.mv         a3, s2
                  slti         s3, a4, -149
                  slli         s7, gp, 24
                  c.addi16sp   sp, -16
                  srli         a2, ra, 4
                  c.xor        a1, a2
                  andi         gp, a7, -234
                  c.srli       a3, 23
                  auipc        a4, 866843
                  c.add        a1, s7
                  srai         t5, s6, 27
                  c.sub        a4, a2
                  srl          a7, s2, a5
                  rem          s8, s8, s9
                  c.addi4spn   a3, sp, 64
                  auipc        s0, 510813
                  c.addi       t0, -1
                  lui          a5, 207763
                  sltiu        s2, t3, 935
                  rem          a0, s11, s6
                  mulh         gp, t0, s2
                  slli         a6, s8, 4
                  c.addi       a6, 24
                  srai         a5, a6, 31
                  mulhsu       gp, zero, a2
                  xor          a1, t6, a6
                  c.xor        a0, a0
                  srl          s7, t1, t0
                  sub          tp, s10, ra
                  c.addi4spn   a0, sp, 176
                  c.addi4spn   a5, sp, 496
                  mulhu        a6, t1, t3
                  c.addi       s6, -1
                  sltu         s7, a7, ra
                  c.addi16sp   sp, -16
                  sltu         s9, t5, s2
                  c.or         s0, a3
                  c.andi       a5, 7
                  sltiu        s10, s0, -938
                  srai         t5, a6, 10
                  add          a4, t2, a0
                  mulh         s4, s5, t6
                  c.lui        s7, 16
                  mulhu        s7, s3, gp
                  xori         a1, s3, 1526
                  c.add        t0, t4
                  sltiu        a3, t2, 1041
                  slti         s4, a5, -507
                  ori          a0, t0, 72
                  c.add        s5, s3
                  c.slli       s6, 30
                  add          a6, t5, sp
                  c.mv         a6, a7
                  sra          s9, t3, a7
                  sll          s6, tp, s11
                  addi         a6, s10, 1934
                  mulh         a7, a2, s7
                  c.xor        a0, a3
                  rem          tp, a6, ra
                  xori         s3, s8, -1355
                  and          t5, s10, ra
                  sll          t1, s4, t5
                  srli         t5, s0, 6
                  c.slli       a2, 11
                  sltu         a0, s5, zero
                  or           sp, s11, a0
                  add          sp, a5, a3
                  mulhsu       a4, a7, ra
                  lui          a4, 266219
                  c.srli       a0, 10
                  mul          s9, s3, zero
                  sll          a0, a4, t6
                  sub          t3, s9, a1
                  div          s10, s11, t0
                  sll          a7, s1, s9
                  div          t4, a2, t3
                  c.addi4spn   a1, sp, 688
                  rem          zero, t6, s3
                  sltu         t3, s2, s8
                  c.mv         s4, s6
                  c.add        t3, s3
                  sll          s3, a6, s7
                  xor          a5, t6, t0
                  slli         sp, zero, 7
                  c.addi       s3, 4
                  c.andi       a1, -1
                  c.xor        a5, a4
                  c.add        a7, s8
                  c.lui        a1, 10
                  c.and        a2, a3
                  c.addi       tp, 29
                  and          t0, t6, t2
                  slt          t3, a0, ra
                  c.srli       a3, 10
                  mulhsu       a7, a3, s8
                  mulh         gp, s7, s9
                  divu         a5, s0, a5
                  c.li         s5, -1
                  mulhsu       a3, a7, a3
                  c.and        a5, a2
                  c.nop
                  xori         t0, s8, 1363
                  andi         t4, a6, 1373
                  c.lui        s10, 29
                  c.sub        a0, a5
                  slt          a1, s9, s5
                  slt          s8, s2, s0
                  c.li         a5, -1
                  mulhu        a5, t3, sp
                  c.srli       a0, 14
                  div          sp, s9, s5
                  c.addi16sp   sp, -16
                  lui          a4, 1027876
                  remu         t0, gp, t1
                  slt          zero, a2, s6
                  c.addi4spn   a3, sp, 832
                  or           a4, s3, a0
                  srli         a0, s6, 20
                  mulhsu       t5, tp, s10
                  mulhsu       a2, sp, s6
                  c.slli       s2, 1
                  sll          a5, a7, t0
                  xor          s3, a4, a0
                  auipc        t3, 374518
                  sltu         a6, a4, s1
                  lui          t1, 226950
                  sub          s9, zero, s9
                  lui          a0, 366616
                  xor          s2, s5, zero
                  c.mv         t1, a3
                  xor          t1, s10, s4
                  remu         s0, t3, t5
                  xori         gp, t3, -1290
                  and          t3, s8, t2
                  or           s7, tp, s5
                  srai         gp, t2, 25
                  c.li         s9, -1
                  xori         tp, t0, 1902
                  c.or         s0, a4
                  sltu         a7, a4, s11
                  c.addi       tp, -1
                  slti         s2, a1, 1787
                  divu         a0, s7, a2
                  rem          a3, gp, s6
                  andi         s9, a7, -1738
                  c.srli       a3, 12
                  andi         a2, a4, -1297
                  mul          s0, a7, a4
                  slti         s5, s9, -389
                  slt          a5, t2, a5
                  slti         a3, s7, -1603
                  c.add        s5, s1
                  c.srli       a1, 26
                  lui          a5, 338346
                  srl          t5, s3, a1
                  srli         tp, t2, 14
                  div          s8, a3, t0
                  xori         s0, t5, -1733
                  c.and        a3, s0
                  divu         t1, a4, a1
                  nop
                  c.mv         a2, a1
                  c.and        a3, a3
                  c.or         a4, a5
                  mulhsu       a6, zero, a5
                  lui          s5, 721758
                  sltu         s5, s10, a4
                  c.and        a1, a0
                  mulhsu       s3, a5, t6
                  srai         sp, t0, 18
                  rem          s5, a6, s2
                  auipc        a6, 345816
                  add          t1, s8, a0
                  sltiu        s2, s10, 1788
                  c.lui        s7, 14
                  c.sub        a3, a1
                  sra          a7, s5, s11
                  mulhu        t5, s11, s1
                  c.lui        s0, 25
                  c.or         s0, a0
                  lui          a6, 121572
                  sub          zero, s7, zero
                  xori         t1, a0, -1040
                  xori         t5, s7, -467
                  c.addi       s11, 19
                  or           s4, a7, s9
                  c.addi4spn   s0, sp, 736
                  c.mv         a0, a1
                  slt          gp, tp, s5
                  sltu         s9, t3, a5
                  c.mv         s8, s2
                  divu         a2, s4, t6
                  sltiu        a2, sp, -1561
                  sub          gp, a3, a2
                  c.xor        a1, a5
                  c.lui        a6, 21
                  c.addi16sp   sp, -16
                  sltu         s9, a5, s8
                  xori         gp, s10, 783
                  xori         zero, s0, 491
                  div          s0, sp, s6
                  sra          t3, ra, s6
                  c.li         s0, -1
                  sll          s11, t3, tp
                  auipc        s9, 957679
                  sub          a2, t5, s0
                  ori          a4, a3, -116
                  c.and        a3, a3
                  c.add        sp, s7
                  c.or         a0, s1
                  c.add        t3, s10
                  nop
                  c.addi16sp   sp, -16
                  c.srli       a0, 15
                  andi         t1, s4, 1238
                  c.andi       s0, 7
                  mulh         t0, t2, s2
                  slli         a5, t6, 30
                  srl          a1, zero, a5
                  ori          t0, a6, 977
                  c.sub        s0, a0
                  mulh         t3, ra, gp
                  mulh         t3, a2, a3
                  srai         t6, a0, 18
                  slt          s2, s2, s6
                  remu         a4, t5, a5
                  mul          a1, a2, s10
                  slt          a6, s3, a7
                  c.and        a3, a2
                  andi         s9, s11, -1793
                  c.srli       a2, 20
                  slt          gp, t5, sp
                  c.and        a3, a4
                  c.add        s6, s1
                  srai         t6, a6, 29
                  c.sub        s0, a2
                  auipc        s3, 906952
                  slti         a2, s8, 2001
                  c.srli       a1, 8
                  c.add        t1, gp
                  lui          s10, 512474
                  add          s5, s8, gp
                  ori          t6, s2, -994
                  c.sub        a4, s0
                  xor          s8, s11, ra
                  srai         t1, t6, 27
                  slt          a0, s10, zero
                  mulhsu       s9, a3, sp
                  c.mv         a4, a3
                  c.nop
                  sll          s4, s10, s10
                  add          t1, t2, s1
                  c.addi16sp   sp, -16
                  slt          s7, s2, a2
                  c.slli       s10, 8
                  c.nop
                  lui          s10, 55903
                  sub          s9, t6, a2
                  c.mv         s3, s8
                  srl          a3, ra, ra
                  c.add        a7, s3
                  remu         tp, s3, s3
                  mulhu        a5, a2, a4
                  mulh         s2, t6, t0
                  sll          tp, s4, t0
                  srl          a6, gp, a4
                  sltiu        t0, gp, 1223
                  auipc        a2, 157041
                  mulh         a7, zero, a1
                  xor          t1, s3, t4
                  mulhu        s9, s7, t2
                  c.or         a0, s0
                  srai         s4, s6, 28
                  c.addi       s11, 16
                  srl          s7, a5, a7
                  c.li         t6, -1
                  lui          t4, 712447
                  sltiu        s0, a1, -1009
                  srl          t1, gp, s3
                  ori          sp, a6, -1664
                  mulh         s11, t0, tp
                  mulhsu       tp, a1, t4
                  or           tp, a7, t0
                  c.addi16sp   sp, 496
                  sub          s3, s0, s11
                  slt          t1, ra, s3
                  xori         t0, sp, -987
                  sub          t4, a6, a5
                  sltiu        t4, t3, -1884
                  slt          t1, s5, s6
                  c.add        s4, t5
                  sltiu        a4, gp, -286
                  slti         a7, a1, -1375
                  c.sub        a5, a2
                  div          t0, s10, a7
                  remu         s11, t3, s6
                  c.slli       s9, 25
                  c.addi       t1, 25
                  mulhu        gp, a4, t5
                  c.addi16sp   sp, 48
                  slti         t0, s6, -706
                  c.mv         t1, t4
                  remu         sp, ra, t1
                  sltu         gp, a3, s0
                  sltu         s5, a4, sp
                  xori         s9, s3, -1102
                  xor          s6, sp, zero
                  c.nop
                  srl          zero, t1, a2
                  lui          a4, 1020855
                  or           t3, s10, t5
                  nop
                  c.addi4spn   a3, sp, 176
                  addi         zero, s6, 1006
                  c.mv         s9, ra
                  lui          s7, 314497
                  div          zero, t3, s10
                  mulhsu       t1, s8, t5
                  or           t4, s6, s5
                  mulhu        s5, a2, s7
                  slli         t1, s3, 31
                  sltiu        a0, t4, -1581
                  slt          a0, s7, a1
                  c.slli       s0, 30
                  c.addi4spn   a1, sp, 160
                  sltiu        t1, a6, 1714
                  slli         t0, s1, 14
                  srl          t0, s3, t3
                  divu         a3, ra, s3
                  xor          t1, a2, a0
                  c.sub        a4, a5
                  c.nop
                  rem          a5, ra, t0
                  nop
                  ori          t0, t6, -1328
                  sll          s9, t6, s6
                  nop
                  srl          t5, s7, a0
                  sub          a6, a7, s6
                  mulhsu       a0, t6, a0
                  mul          s11, sp, t0
                  c.mv         s5, t0
                  c.addi4spn   a4, sp, 912
                  c.sub        a2, a4
                  srli         s11, s9, 16
                  c.srai       a2, 10
                  c.srai       a3, 5
                  srai         s3, a2, 4
                  c.and        s0, a5
                  c.slli       a0, 12
                  xori         t0, s3, -961
                  sll          a1, a6, s8
                  c.sub        a3, s1
                  or           s5, s0, s9
                  c.mv         gp, t1
                  mulh         t6, a3, a7
                  slti         t0, gp, 1005
                  andi         s7, t1, -401
                  or           s0, s6, a6
                  sltiu        s9, s4, -1285
                  srai         s5, s3, 15
                  auipc        s7, 493088
                  sltu         t1, gp, sp
                  xor          t3, gp, a4
                  andi         s7, a2, 559
                  div          gp, s4, s1
                  and          tp, s11, a4
                  c.nop
                  xor          a6, t3, a0
                  sll          s5, s5, zero
                  c.and        a4, s0
                  c.andi       a3, -1
                  c.addi16sp   sp, 144
                  divu         a2, s6, s11
                  c.sub        a1, a4
                  c.srai       a3, 22
                  c.or         a3, s0
                  c.add        s6, t0
                  srli         a5, s8, 19
                  add          t0, a0, a5
                  c.or         a2, a1
                  addi         gp, s6, 1392
                  sll          t5, ra, a7
                  c.or         a1, a5
                  c.addi16sp   sp, 432
                  nop
                  divu         t6, gp, s1
                  xor          a2, sp, s3
                  div          t6, s11, s2
                  xori         s0, a2, -722
                  mul          t6, t4, gp
                  or           t5, s6, a4
                  lui          s10, 406235
                  srli         t3, a4, 16
                  c.and        s0, a5
                  divu         s0, a6, s10
                  and          t0, s7, s9
                  c.lui        t4, 6
                  or           s8, zero, a3
                  slti         t4, t3, 1078
                  c.sub        a1, a3
                  sub          sp, s4, gp
                  mul          s7, gp, t1
                  slt          s10, a6, tp
                  lui          a3, 642984
                  add          a6, s1, s5
                  add          t4, t6, s0
                  c.addi4spn   a3, sp, 496
                  slt          s7, t5, s7
                  sltiu        a0, a3, 1883
                  slli         s2, ra, 15
                  mul          gp, a5, s4
                  xori         a5, s4, -66
                  mulhsu       s11, s9, t6
                  c.or         a4, s0
                  slt          t5, s2, s5
                  sll          s7, t3, a7
                  mulhu        t6, s11, s1
                  ori          s3, s4, 924
                  c.addi       a1, -1
                  srai         t5, ra, 15
                  c.or         a1, a0
                  slt          s2, t4, t0
                  c.addi       t6, -1
                  sll          t1, t3, zero
                  sltu         s0, t2, a7
                  sltu         s2, gp, a1
                  c.addi16sp   sp, -16
                  c.and        a5, a3
                  mul          gp, s4, t0
                  sll          a2, s10, s8
                  c.addi4spn   a3, sp, 752
                  c.li         s6, 15
                  c.addi4spn   s0, sp, 848
                  srai         sp, a2, 8
                  c.li         a7, 31
                  mul          a1, a3, s1
                  c.slli       s3, 15
                  c.li         a7, 12
                  nop
                  auipc        s9, 838396
                  c.and        a4, a4
                  sltiu        s4, a4, 518
                  srli         tp, zero, 8
                  slli         t6, sp, 15
                  nop
                  div          s3, sp, s8
                  sll          s4, t1, s11
                  c.xor        a0, s0
                  c.slli       t0, 30
                  divu         s7, zero, s5
                  c.addi       t1, 17
                  c.addi4spn   s0, sp, 912
                  c.andi       a1, 15
                  slt          a2, a4, s5
                  srli         a6, t6, 26
                  or           s10, t4, a5
                  c.li         sp, -1
                  c.or         a2, a3
                  mul          s11, sp, a6
                  remu         zero, s8, s10
                  srl          a5, s4, a2
                  div          s4, a3, s1
                  c.add        t0, a6
                  and          a0, s1, s11
                  c.add        s3, ra
                  slli         s0, s7, 18
                  sra          gp, a5, t4
                  c.andi       a0, 1
                  c.mv         a5, a3
                  mulhsu       t4, s7, a3
                  auipc        a7, 980200
                  c.li         t0, -1
                  sll          t5, s5, a2
                  c.andi       a5, -1
                  div          t0, s4, zero
                  c.sub        a0, a4
                  c.nop
                  div          a3, a6, t4
                  mulhu        t1, a3, a4
                  sra          a2, s7, sp
                  sltiu        a3, s0, -1067
                  c.srai       a1, 14
                  c.addi4spn   a3, sp, 272
                  add          t5, ra, ra
                  c.addi4spn   a1, sp, 320
                  div          s0, sp, t1
                  addi         zero, t5, -1470
                  c.addi4spn   a3, sp, 896
                  c.xor        a5, s1
                  mulh         t1, ra, s0
                  c.srai       a3, 29
                  add          s6, t3, s11
                  auipc        t1, 887711
                  sltiu        s4, a7, 1487
                  srl          s4, s2, a6
                  sra          s0, s2, s0
                  c.or         a0, a2
                  c.or         s0, a2
                  srai         s6, a0, 5
                  add          s9, ra, s2
                  c.addi16sp   sp, 416
                  c.addi       s5, -1
                  slt          t1, t4, t6
                  and          a3, a5, t4
                  c.nop
                  andi         t4, s6, -918
                  c.andi       a3, -1
                  c.add        s9, a6
                  sll          a2, t5, a5
                  sltiu        gp, t3, 1685
                  andi         t1, zero, 1956
                  c.addi16sp   sp, 496
                  c.srli       a5, 14
                  srai         t0, s11, 7
                  c.and        a5, a2
                  c.li         s5, -1
                  addi         s10, t1, 1865
                  sub          s10, t2, a1
                  c.srai       s0, 17
                  mulhsu       s6, s0, zero
                  ori          gp, s11, 1281
                  mul          s10, t5, s11
                  and          zero, t2, s10
                  auipc        sp, 101242
                  sltu         t6, t2, sp
                  c.srli       a5, 5
                  c.srai       a2, 2
                  c.lui        gp, 17
                  div          s0, s9, a4
                  c.xor        a3, s1
                  remu         t4, s6, s4
                  sltu         s6, s1, s2
                  sub          tp, sp, s4
                  c.mv         t1, a1
                  add          t4, s4, s7
                  c.or         a5, a5
                  c.mv         t0, t4
                  c.or         a5, a2
                  slt          s0, tp, s10
                  div          s7, a6, a5
                  sltu         a0, t2, s7
                  mulhsu       t6, a7, a1
                  rem          s5, s5, t2
                  mulh         s3, a5, tp
                  mulhsu       s10, a3, s0
                  slti         s3, s3, -1451
                  srai         a5, t1, 12
                  sub          s10, s5, a4
                  c.andi       s0, -1
                  mulh         t0, t2, a2
                  and          s6, s0, tp
                  rem          zero, t4, a4
                  c.sub        a4, a2
                  and          sp, a2, t3
                  mulhsu       s5, s4, s6
                  c.addi       a2, -1
                  c.sub        a2, s0
                  c.xor        a4, a2
                  ori          s7, s10, 1911
                  sltiu        zero, t1, -879
                  xor          s11, gp, ra
                  or           tp, s10, s7
                  mulh         a7, s4, a4
                  slli         t0, zero, 10
                  c.addi       a6, 10
                  lui          s7, 788021
                  sltu         s6, t2, s7
                  c.lui        a7, 19
                  rem          a6, a6, s1
                  c.li         s10, 4
                  xor          a7, s10, a1
                  rem          a2, t3, t6
                  c.andi       a5, -1
                  c.addi4spn   a5, sp, 928
                  div          s5, s8, a2
                  c.srai       a4, 25
                  rem          a0, t0, s0
                  c.srai       a5, 4
                  srai         t5, ra, 17
                  c.srli       s0, 9
                  c.addi4spn   a3, sp, 880
                  mul          s0, s11, t5
                  add          s5, a7, s2
                  c.or         a5, a1
                  c.nop
                  c.or         s0, a5
                  c.slli       a5, 8
                  c.lui        t1, 21
                  auipc        zero, 705759
                  sub          a7, t3, tp
                  c.srai       a5, 21
                  mul          a2, s7, t4
                  c.li         a2, 19
                  c.srai       a1, 24
                  mulhu        s3, t3, s0
                  c.srli       a4, 22
                  remu         s11, a0, zero
                  c.addi16sp   sp, -16
                  sltiu        gp, a1, -555
                  and          a1, s7, s11
                  divu         a7, s10, t2
                  c.slli       s4, 18
                  rem          t6, tp, t1
                  c.addi16sp   sp, -16
                  sltiu        s9, gp, 801
                  remu         s11, t6, t3
                  sll          t4, a0, a4
                  sra          a7, s4, a4
                  mulhsu       a1, t3, s9
                  andi         sp, s1, -1316
                  andi         s2, sp, -231
                  c.addi       s10, -1
                  c.xor        a3, a1
                  andi         t3, gp, -154
                  c.nop
                  xori         a5, a4, -985
                  xor          s3, s8, s2
                  or           a7, s6, a3
                  c.or         s0, a2
                  srl          s11, s9, a3
                  c.xor        a3, s1
                  slli         gp, a4, 6
                  divu         s11, a6, s11
                  mulh         a5, t4, gp
                  c.addi16sp   sp, 416
                  sltu         gp, t1, sp
                  c.srai       a5, 14
                  c.and        a4, s0
                  ori          s11, t3, 1646
                  sltu         s7, sp, s6
                  srai         s4, s0, 6
                  mul          zero, s9, a3
                  rem          s7, a4, s11
                  sub          s8, tp, s0
                  c.mv         s11, s10
                  andi         a2, t6, -736
                  c.addi16sp   sp, -16
                  xor          gp, tp, a3
                  mulh         a3, gp, s3
                  c.xor        s0, a4
                  auipc        s9, 983326
                  mul          s11, s7, s0
                  c.or         a4, a5
                  c.lui        a1, 30
                  slt          tp, t4, s2
                  sltu         a6, s6, a3
                  lui          sp, 813172
                  sltu         t0, ra, a7
                  mulh         a6, s8, s10
                  c.andi       a5, -1
                  divu         a7, s3, a1
                  c.or         a1, a2
                  remu         a1, a1, s9
                  slti         a4, a7, -1756
                  sll          a0, s9, a1
                  c.srai       a5, 18
                  and          s4, gp, a3
                  slt          s7, t3, t3
                  sltu         sp, s2, a4
                  c.li         a2, -1
                  sub          a7, s1, s11
                  rem          zero, t3, t4
                  add          t3, t6, s8
                  sltu         t5, zero, a7
                  sra          t6, zero, zero
                  c.addi4spn   a1, sp, 272
                  srl          t0, s1, a0
                  add          s7, a3, s6
                  c.and        a0, a1
                  auipc        a3, 797948
                  and          zero, t1, a5
                  rem          s9, t3, s2
                  mulh         s10, a3, s5
                  sra          gp, tp, a7
                  c.and        a3, a4
                  c.slli       a2, 20
                  sub          a5, a5, sp
                  nop
                  sll          s0, a4, gp
                  xor          gp, s10, t0
                  c.lui        s6, 26
                  remu         s2, s0, s3
                  sll          t0, s4, tp
                  srl          s9, a4, a6
                  slli         tp, t1, 18
                  nop
                  srl          t3, gp, a1
                  mulh         a1, s6, t4
                  div          gp, a5, zero
                  mulh         t1, s1, s10
                  sltu         t3, zero, tp
                  srl          t4, t3, a0
                  c.addi16sp   sp, 16
                  sltu         t4, s9, t0
                  c.addi16sp   sp, -16
                  c.addi       a3, -1
                  c.add        s11, a0
                  c.addi16sp   sp, 192
                  srli         s10, s7, 28
                  c.sub        a5, s0
                  srai         t3, t1, 11
                  srai         s2, s7, 2
                  c.addi4spn   a1, sp, 544
                  c.addi16sp   sp, 480
                  auipc        s6, 1048524
                  sltiu        s9, a2, 1004
                  sll          s9, s8, gp
                  sltiu        t0, s2, -2042
                  andi         t5, a2, 2036
                  c.andi       a1, 31
                  c.li         s6, 31
                  sra          a0, a5, s5
                  mulh         sp, a2, s1
                  add          s4, s10, a0
                  mulh         a4, gp, t3
                  srl          t0, a5, s11
                  addi         t1, s3, -619
                  c.andi       a1, -1
                  srl          t0, tp, t2
                  slli         a5, s2, 16
                  xori         tp, s7, 387
                  sll          a1, s5, s6
                  srl          a1, s1, t3
                  addi         t3, a7, 1880
                  remu         a7, a5, t6
                  mul          a2, a2, a3
                  srli         t4, t3, 25
                  andi         s6, a7, -549
                  sltu         a3, t6, s1
                  mul          s0, s8, s1
                  c.andi       a1, 31
                  c.addi       s0, -1
                  slli         s11, s10, 29
                  c.xor        s0, s0
                  sll          s2, a4, zero
                  add          s9, s3, a0
                  c.addi4spn   a0, sp, 448
                  addi         s7, a4, -810
                  c.addi4spn   a0, sp, 1008
                  lui          t0, 16038
                  c.sub        s0, a3
                  c.addi4spn   a3, sp, 608
                  slt          s7, ra, t5
                  sltu         t1, s1, s6
                  sra          s9, tp, a4
                  c.or         a0, a5
                  srl          gp, s0, a4
                  rem          a7, s2, s3
                  slti         gp, s4, 1623
                  rem          s7, s5, a3
                  auipc        a5, 460750
                  c.nop
                  c.srai       a4, 29
                  c.lui        a7, 29
                  srli         tp, a4, 12
                  remu         a1, t4, t6
                  addi         a2, t4, -314
                  c.srai       a4, 24
                  xori         gp, s11, 1502
                  mulhu        t1, s1, a0
                  xori         t4, t1, 439
                  xor          s10, s1, a6
                  add          a4, t3, a0
                  slti         s9, s8, -134
                  xor          s5, s5, s4
                  c.addi       s11, 20
                  c.add        t0, tp
                  sll          a7, a4, a4
                  srli         gp, t5, 3
                  sra          t5, a5, a7
                  sll          s2, sp, s1
                  srai         a2, s10, 31
                  c.nop
                  c.slli       sp, 22
                  c.add        a2, s4
                  divu         s4, s3, s5
                  srl          a1, t5, s5
                  srli         gp, s7, 11
                  rem          a6, s2, ra
                  srai         s7, a3, 9
                  c.nop
                  c.lui        a6, 23
                  c.slli       tp, 14
                  remu         zero, ra, t6
                  divu         s0, a4, a0
                  srli         s6, ra, 7
                  mul          a6, a3, s0
                  sltu         zero, s9, ra
                  c.lui        s10, 29
                  slt          t1, t2, a0
                  andi         tp, s6, -1804
                  auipc        a3, 309716
                  sra          t0, a2, a5
                  slt          a4, t3, a0
                  mulh         s7, s0, s7
                  srli         a7, gp, 23
                  c.srai       a2, 15
                  mulh         a0, ra, t5
                  sltu         gp, s11, a6
                  sll          s3, s2, gp
                  xor          t0, s7, t0
                  c.srai       a0, 18
                  div          a5, tp, s3
                  add          a1, s10, t3
                  sll          s4, s2, a7
                  c.li         a4, -1
                  sll          gp, a6, gp
                  div          a3, t4, s1
                  c.srli       a4, 26
                  c.sub        s0, a3
                  c.andi       a3, 31
                  c.or         s0, a5
                  c.srli       a4, 27
                  c.and        s0, a1
                  c.srai       a3, 10
                  c.and        a4, s1
                  div          s2, a7, sp
                  srl          s0, s7, s5
                  nop
                  c.nop
                  c.mv         a1, t4
                  sra          s7, a1, a2
                  mulh         t1, s10, t3
                  sltiu        s5, t4, -935
                  sra          s11, s0, gp
                  sll          s9, s2, s4
                  divu         gp, a5, s1
                  addi         s11, s0, -974
                  slli         s4, t4, 24
                  srli         s7, a7, 27
                  sub          t4, zero, s3
                  or           a0, t1, t1
                  slti         a0, s10, -76
                  c.nop
                  srli         t1, t3, 14
                  divu         t1, t1, t6
                  mulhsu       a7, t0, t4
                  c.srai       a1, 26
                  c.mv         s0, t1
                  c.and        s0, a3
                  andi         s8, s4, -1497
                  c.add        t6, s11
                  sltu         tp, t5, t2
                  add          t6, t3, gp
                  andi         s6, s4, 1102
                  c.addi4spn   a1, sp, 272
                  sltu         s10, a6, zero
                  slli         a5, a4, 26
                  srai         a7, s2, 18
                  c.srli       a3, 13
                  srl          a3, t6, s2
                  auipc        a5, 673389
                  sltiu        a1, a1, -381
                  c.or         a0, a5
                  ori          tp, t6, 598
                  add          s5, sp, s3
                  mulh         s3, s11, s6
                  mulhsu       a6, gp, a7
                  c.srli       a0, 27
                  add          sp, gp, a1
                  sltu         t0, tp, gp
                  c.addi4spn   a2, sp, 928
                  div          t4, s5, a2
                  auipc        s7, 573335
                  and          s8, s9, a4
                  c.addi       a0, -1
                  c.srai       a1, 11
                  c.andi       s0, -1
                  c.sub        s0, a4
                  div          a7, t0, a6
                  c.xor        s0, a1
                  c.andi       a1, -1
                  c.srli       s0, 22
                  lui          t5, 726618
                  sltiu        t3, a4, 271
                  ori          s6, s2, -49
                  sltu         s10, a7, s11
                  and          s5, s6, s4
                  slt          s3, t2, sp
                  add          a3, t0, a3
                  c.li         a3, -1
                  srai         t4, s7, 3
                  c.li         s5, -1
                  srai         s6, s4, 14
                  divu         tp, a0, a4
                  nop
                  c.srai       a3, 14
                  c.and        s0, a1
                  srl          a6, s11, s7
                  nop
                  mulhsu       t0, a6, s6
                  slt          s8, tp, t2
                  andi         gp, tp, -1555
                  c.slli       a1, 14
                  c.nop
                  slti         a5, sp, 849
                  sltu         a1, s11, a7
                  addi         s9, t6, 1281
                  c.or         a3, a1
                  remu         sp, s6, a4
                  lui          s7, 67579
                  c.lui        a6, 6
                  nop
                  c.slli       s2, 25
                  c.slli       s0, 14
                  remu         sp, s1, t5
                  slli         s9, t2, 1
                  srli         s0, s2, 8
                  c.srli       s0, 9
                  c.mv         s3, t0
                  slt          t6, s2, ra
                  xori         a6, s0, 661
                  add          a6, s0, a7
                  div          s6, t2, s1
                  divu         s11, s11, zero
                  sub          s6, t5, s4
                  c.li         t0, -1
                  mulh         s7, s8, a7
                  sltu         s2, t2, a3
                  c.addi4spn   a1, sp, 816
                  sub          a6, t4, a4
                  mulhsu       s6, t1, a0
                  mulhsu       s4, t2, s6
                  rem          a3, a4, s0
                  c.xor        a0, a3
                  or           s5, s8, t2
                  slli         a2, zero, 25
                  and          s8, s8, a7
                  sll          gp, a4, s5
                  c.and        a0, a4
                  srli         t4, gp, 7
                  srl          a6, s8, a7
                  sltu         t6, s8, t0
                  c.andi       a2, -1
                  c.addi16sp   sp, -16
                  and          s9, a7, a2
                  div          s9, s11, s6
                  and          sp, s0, s9
                  or           s2, t0, t3
                  c.srai       s0, 14
                  c.addi       a5, -1
                  sra          s2, gp, s0
                  div          gp, s9, a6
                  or           s7, s4, s3
                  xori         t0, sp, 785
                  mulh         sp, ra, s9
                  addi         a7, ra, -1461
                  xor          s7, zero, s0
                  srai         tp, s0, 11
                  c.andi       s0, 7
                  c.addi16sp   sp, 496
                  xor          s4, tp, s11
                  c.lui        t1, 7
                  c.srai       a5, 31
                  c.add        s2, gp
                  c.srli       a3, 11
                  xor          s2, t5, a7
                  mulhsu       sp, t1, t2
                  and          a6, a4, a0
                  div          sp, s11, gp
                  sltu         a0, t1, t0
                  c.slli       t3, 9
                  add          s3, tp, tp
                  lui          a2, 89539
                  addi         s3, s9, -163
                  sll          t1, a4, s3
                  sub          s10, s0, t2
                  c.nop
                  srai         t3, gp, 20
                  c.sub        a1, s0
                  auipc        s7, 629541
                  mulhsu       t4, t0, s3
                  nop
                  or           a1, zero, a0
                  nop
                  c.addi4spn   a5, sp, 992
                  c.li         t0, 25
                  c.nop
                  add          s3, a6, t0
                  sra          a2, a4, a5
                  lui          zero, 154193
                  div          tp, a3, s4
                  nop
                  sub          s4, s1, s8
                  add          a7, s3, sp
                  divu         tp, t0, a2
                  srli         t0, s1, 19
                  c.lui        s0, 7
                  slti         s11, a0, 414
                  div          t4, zero, s3
                  sra          s10, ra, s3
                  c.nop
                  andi         a5, tp, 2032
                  divu         s11, a1, a0
                  sll          sp, t1, s10
                  sltu         t4, tp, s3
                  c.add        gp, t4
                  auipc        zero, 935388
                  c.srli       a5, 4
                  c.mv         a1, gp
                  slli         a3, s5, 1
                  mulhu        s9, zero, gp
                  c.addi       gp, -1
                  sra          zero, s0, a3
                  c.lui        s11, 11
                  c.addi4spn   a0, sp, 48
                  c.srli       s0, 24
                  add          t6, a6, a6
                  xori         s9, gp, -188
                  xori         a7, t3, 870
                  c.sub        a3, a2
                  c.nop
                  c.mv         t6, s4
                  c.mv         s0, s7
                  xori         s10, a1, -1227
                  andi         t3, s0, 913
                  mul          gp, s0, t4
                  slli         t0, t1, 31
                  c.sub        a1, s0
                  c.add        gp, t2
                  c.lui        a2, 22
                  ori          s2, t2, -611
                  divu         s2, s1, t4
                  srli         a1, ra, 0
                  c.addi       t4, 19
                  c.lui        tp, 10
                  c.add        t1, t3
                  div          s8, a3, s0
                  mulh         a4, t6, a6
                  sltiu        a0, s0, 1908
                  c.and        a3, a3
                  c.lui        s11, 30
                  or           t3, gp, t5
                  c.andi       s0, 28
                  lui          s10, 892890
                  sra          t3, t3, t2
                  divu         sp, t4, gp
                  c.addi       s7, 2
                  slt          s5, gp, s4
                  slli         t0, a2, 9
                  c.slli       s2, 26
                  rem          s3, t0, s11
                  c.slli       s6, 18
                  c.addi4spn   a5, sp, 576
                  divu         s2, t4, t4
                  c.xor        a3, a0
                  auipc        s6, 125870
                  andi         zero, s4, 1512
                  mulhsu       a7, tp, s6
                  c.andi       a5, -1
                  and          t6, a6, s10
                  mulhu        t1, a3, sp
                  srai         tp, a3, 20
                  divu         s3, tp, s6
                  c.and        a2, a5
                  mulhsu       a7, t5, s11
                  ori          a4, a2, -1221
                  c.slli       a1, 23
                  srl          s9, t6, a4
                  lui          s7, 1020789
                  c.or         a3, a0
                  c.andi       a1, 15
                  nop
                  mulhsu       t0, a1, a0
                  c.add        sp, s3
                  c.add        gp, s8
                  srai         s6, sp, 23
                  addi         s5, a4, -400
                  xor          a1, s7, t4
                  div          s3, s5, tp
                  mulhu        s5, gp, s9
                  c.slli       a0, 29
                  lui          a5, 8640
                  c.addi4spn   a5, sp, 128
                  c.add        t6, s5
                  div          zero, a7, gp
                  sra          s6, a4, a0
                  mulh         t0, t6, a2
                  rem          t3, sp, a4
                  c.or         a4, s0
                  andi         s6, s1, -1408
                  slt          t4, tp, a6
                  nop
                  srl          s0, s4, tp
                  divu         a4, s5, t4
                  sra          t5, s2, a5
                  sll          a3, s6, s1
                  c.slli       sp, 30
                  c.or         a3, a4
                  mul          s5, gp, t0
                  lui          sp, 1009005
                  ori          a1, ra, -1468
                  c.srai       a0, 12
                  sub          t1, t3, s5
                  addi         zero, s5, 1999
                  c.andi       s0, -1
                  c.addi4spn   a5, sp, 304
                  andi         s6, t0, 1123
                  c.slli       s6, 6
                  andi         t4, a3, 12
                  rem          sp, sp, gp
                  c.srai       a2, 9
                  c.lui        t5, 31
                  c.add        t3, s7
                  c.srai       a1, 23
                  srai         s9, t0, 19
                  c.addi       a3, 29
                  slt          s4, s5, s5
                  c.addi16sp   sp, 352
                  lui          a6, 374149
                  srli         s6, s2, 2
                  ori          a3, s9, -309
                  divu         t5, s9, tp
                  c.addi16sp   sp, 64
                  c.srli       a0, 6
                  nop
                  c.or         s0, s0
                  c.lui        t5, 23
                  c.slli       t4, 21
                  add          t1, a3, a7
                  xori         a5, s9, 1810
                  and          a5, s11, tp
                  c.sub        a2, a5
                  c.srai       a1, 19
                  c.lui        a0, 27
                  c.sub        a3, a3
                  c.addi16sp   sp, -16
                  and          a0, t2, t5
                  c.and        a0, s0
                  srai         tp, a7, 21
                  slli         a1, a0, 29
                  slt          t4, a7, t2
                  mulh         t4, tp, a2
                  srai         zero, s11, 10
                  add          s4, s8, s8
                  c.andi       a1, -1
                  c.addi16sp   sp, -16
                  slti         t6, s5, 1323
                  srl          s5, t2, t5
                  mulhsu       sp, s6, s5
                  c.srai       a2, 25
                  mulhu        t1, s8, zero
                  c.li         sp, -1
                  c.or         a3, s0
                  srl          a7, s8, zero
                  sltiu        zero, s9, -496
                  c.lui        a3, 20
                  and          sp, t1, zero
                  mulh         t3, s0, s0
                  c.srli       s0, 5
                  slt          t0, s3, tp
                  sll          zero, sp, s8
                  sra          a7, s4, t0
                  slli         s10, a7, 28
                  and          s4, s0, t6
                  div          sp, t4, t5
                  slt          a2, s11, s4
                  slt          zero, t5, s6
                  c.slli       s11, 19
                  srl          t3, s2, sp
                  sra          a4, a3, a5
                  c.add        s10, t3
                  lui          s6, 823972
                  c.addi16sp   sp, 336
                  sra          t5, s3, a3
                  andi         t5, t3, 1492
                  c.add        s9, s10
                  c.addi16sp   sp, -16
                  c.slli       t5, 6
                  c.addi4spn   a0, sp, 416
                  divu         s0, a1, t2
                  xori         a7, s2, 118
                  c.sub        s0, s0
                  ori          t1, a0, 1253
                  andi         a5, a5, -1714
                  c.xor        a0, a3
                  srai         a3, s4, 10
                  divu         s10, gp, a4
                  addi         s3, a3, -777
                  c.addi16sp   sp, -16
                  or           a1, t1, a2
                  mulh         s0, s3, s1
                  c.mv         t1, s3
                  div          a7, gp, s4
                  c.srli       a1, 31
                  c.xor        a0, a3
                  sltu         s2, a7, t0
                  srl          a5, s11, t0
                  c.addi       a0, 8
                  nop
                  srl          s5, s11, t0
                  c.addi4spn   a1, sp, 992
                  srli         a5, t1, 21
                  xor          sp, a2, s7
                  xor          s8, tp, t1
                  divu         t1, t5, ra
                  div          a3, a5, gp
                  nop
                  c.addi16sp   sp, 304
                  auipc        a4, 81232
                  c.and        a3, a1
                  c.xor        s0, a1
                  div          s0, s1, t2
                  c.nop
                  c.srai       a5, 29
                  c.and        s0, a4
                  mul          t1, a7, t0
                  auipc        t5, 352169
                  sub          sp, s11, s11
                  c.addi16sp   sp, -16
                  srli         sp, s5, 8
                  c.or         a5, s1
                  sll          tp, t2, s1
                  lui          t0, 681994
                  sll          gp, sp, a5
                  c.nop
                  srli         s11, t5, 24
                  slt          t5, s8, t1
                  c.slli       s4, 17
                  c.addi16sp   sp, 352
                  slti         s11, a7, -1126
                  c.addi       tp, -1
                  nop
                  and          s0, a0, tp
                  addi         a5, t3, 1306
                  c.add        a4, s2
                  slli         s2, t3, 27
                  c.mv         t3, s10
                  c.andi       a3, -1
                  sra          t5, s3, t3
                  mul          gp, s4, s3
                  c.mv         s9, a0
                  or           a7, s1, gp
                  c.sub        a5, s1
                  andi         a6, t1, -1996
                  xor          t5, t3, t2
                  mulhsu       t1, t1, a1
                  rem          a6, tp, a2
                  c.srli       a1, 7
                  remu         a3, a7, a4
                  c.addi       a4, -1
                  sltiu        a6, a5, 1157
                  srl          s3, t5, s2
                  c.slli       s8, 22
                  sltiu        t1, s2, -1398
                  sltu         a5, s4, t5
                  c.mv         tp, s4
                  c.nop
                  c.slli       a5, 8
                  c.addi       s7, 3
                  auipc        a5, 570983
                  slti         s7, s2, -1984
                  lui          a1, 675450
                  mulh         s0, s8, t6
                  c.or         a2, a0
                  xor          zero, s8, a0
                  srai         zero, ra, 4
                  andi         a0, a4, 1490
                  c.addi4spn   a2, sp, 976
                  c.li         t5, -1
                  and          s9, zero, s1
                  c.and        a3, s1
                  c.or         a0, a0
                  c.srli       s0, 16
                  sll          a6, tp, a7
                  srli         t0, t6, 3
                  c.or         s0, a2
                  lui          t3, 485783
                  sub          gp, s10, s0
                  or           s10, s0, t3
                  sltu         a4, s1, a6
                  c.srai       a3, 11
                  srl          s6, t3, s11
                  addi         t5, ra, 1572
                  sltiu        gp, gp, 1809
                  c.slli       s9, 27
                  sra          zero, t5, s8
                  mulhu        a2, sp, gp
                  lui          s8, 859935
                  ori          a3, a4, 605
                  c.slli       s0, 6
                  mul          zero, s0, s4
                  ori          a7, zero, -997
                  slli         gp, sp, 9
                  c.xor        a2, a2
                  mulhsu       s2, gp, s3
                  sltiu        t5, a1, 1736
                  sra          a4, a1, s6
                  mul          s11, t5, t1
                  c.addi16sp   sp, 224
                  sra          a1, gp, s6
                  ori          t5, s7, 1023
                  or           s9, sp, s11
                  or           gp, sp, s3
                  c.addi16sp   sp, -16
                  c.addi4spn   a4, sp, 464
                  c.slli       s10, 17
                  slti         a0, t4, 103
                  sll          t0, a0, a3
                  c.and        a4, a0
                  mulhsu       gp, tp, s8
                  c.srai       a1, 31
                  xor          a5, zero, s2
                  andi         t5, s0, 565
                  sltu         a6, t2, t3
                  nop
                  mulh         a7, gp, s10
                  c.andi       a3, -1
                  c.slli       t0, 28
                  rem          a0, zero, a4
                  add          a6, a3, sp
                  c.sub        s0, a1
                  or           s4, s3, t3
                  or           s2, a2, t0
                  sra          t0, s9, a1
                  mulh         zero, tp, t4
                  and          s6, s9, s7
                  sltu         a5, ra, a7
                  c.mv         t0, s2
                  c.mv         a6, s2
                  andi         s0, t5, 580
                  ori          s6, s5, -1568
                  sll          a5, t4, a6
                  sltu         s3, s11, t3
                  sll          sp, ra, t3
                  addi         t5, t6, -315
                  rem          a7, a0, t3
                  sll          s9, s9, s10
                  xori         tp, a7, 1716
                  and          t4, a2, gp
                  div          a3, s5, t1
                  c.addi16sp   sp, 80
                  remu         a7, s2, s11
                  xori         a7, s11, -277
                  div          s10, t6, a1
                  xori         s9, t3, -860
                  slti         a1, a0, 1795
                  sll          t6, a3, s9
                  div          t0, ra, a7
                  nop
                  ori          s3, sp, 1015
                  c.lui        s11, 17
                  c.andi       a0, -1
                  c.mv         a7, s3
                  c.and        a3, a5
                  sltiu        s0, s8, 123
                  c.sub        a4, a0
                  sub          gp, s8, zero
                  mulhsu       a2, s0, s6
                  c.addi       s2, -1
                  c.slli       s3, 15
                  sltu         gp, t6, s1
                  c.addi       a4, 12
                  slt          s3, gp, tp
                  and          s5, s0, zero
                  mulhsu       a3, sp, a0
                  sltiu        sp, s3, 1064
                  srl          t4, a3, a3
                  srai         gp, a1, 17
                  c.lui        s4, 17
                  mulhu        s2, t0, t2
                  ori          s7, s3, -1185
                  or           zero, t4, t4
                  c.sub        a3, s1
                  sltiu        a6, a6, 1070
                  mulhu        s3, s11, s9
                  c.and        s0, a1
                  remu         gp, s5, sp
                  addi         a3, gp, 44
                  c.lui        t0, 12
                  c.addi4spn   a1, sp, 864
                  slli         a0, s8, 9
                  c.slli       s7, 17
                  c.addi16sp   sp, 416
                  divu         a7, t2, sp
                  c.addi16sp   sp, -16
                  c.lui        a6, 5
                  mulhu        a1, s4, a5
                  auipc        a4, 18328
                  and          s7, s4, s5
                  mul          t5, s1, tp
                  c.srai       s0, 19
                  c.andi       a2, -1
                  slti         t0, s5, 1342
                  c.mv         a1, s2
                  sra          t5, sp, tp
                  c.srli       s0, 26
                  c.srai       a4, 25
                  c.li         a6, 31
                  c.addi       gp, -1
                  divu         a5, a5, a6
                  mul          t1, t1, s8
                  c.slli       a7, 23
                  mulhsu       tp, t4, t1
                  c.andi       s0, 8
                  c.srai       a0, 22
                  mulhu        tp, s8, sp
                  srai         s3, a6, 16
                  add          s5, gp, s9
                  c.li         t0, 12
                  slli         t4, a2, 1
                  sltu         a0, s11, t5
                  nop
                  c.lui        t4, 15
                  slti         s9, zero, 279
                  rem          zero, a6, s10
                  lui          s9, 74386
                  c.add        a3, s8
                  c.slli       a1, 14
                  div          gp, a1, ra
                  xor          s10, s5, s9
                  ori          a6, s9, 678
                  c.andi       a2, -1
                  c.and        a1, a0
                  c.and        a0, a5
                  sll          t0, s10, a2
                  c.nop
                  c.srai       a3, 14
                  sra          gp, t4, a0
                  c.xor        a2, s1
                  sltu         t0, a0, zero
                  srl          gp, s9, sp
                  auipc        a4, 163180
                  srli         s10, s9, 19
                  c.srai       a0, 28
                  srai         t6, a0, 15
                  slli         a6, a2, 25
                  c.srli       a1, 14
                  sll          t5, s2, t2
                  mulhu        t5, a4, tp
                  c.addi16sp   sp, 288
                  mul          a0, a2, s8
                  slti         t0, a1, 1102
                  c.addi       a1, -1
                  xor          a2, s2, s3
                  sltiu        s11, t5, -1643
                  sub          s3, t3, gp
                  xor          s4, t0, a3
                  or           tp, a4, s3
                  c.sub        a1, s0
                  srl          t0, ra, ra
                  c.andi       a5, 1
                  c.xor        a3, a4
                  c.addi4spn   s0, sp, 608
                  remu         s9, s8, t2
                  c.lui        s4, 3
                  ori          s7, ra, -1885
                  c.srai       a5, 10
                  sltu         s7, a7, sp
                  c.srai       s0, 4
                  srl          t6, t5, s8
                  lui          s6, 114115
                  sub          gp, s10, t0
                  xori         a3, t0, -1859
                  c.lui        s7, 26
                  slti         t5, tp, 1536
                  c.lui        a3, 7
                  c.add        s4, t1
                  c.li         a7, -1
                  c.srli       a2, 21
                  rem          s11, a5, a0
                  sltu         zero, t4, a3
                  slt          s7, a1, tp
                  auipc        a7, 121656
                  nop
                  c.lui        tp, 13
                  c.srai       a3, 20
                  c.srli       a1, 31
                  remu         t1, t6, a2
                  nop
                  mul          s9, s5, s4
                  xori         s9, t6, -2024
                  c.and        a1, a4
                  sra          a2, sp, a2
                  c.or         a5, a1
                  mulhu        a4, s10, s7
                  mul          a0, s7, s11
                  slli         a4, t4, 14
                  c.nop
                  and          zero, a4, t6
                  remu         s5, t5, a2
                  addi         s9, t0, -1052
                  andi         t1, ra, 512
                  lui          t3, 936348
                  mulhsu       s6, a5, s4
                  c.lui        t3, 22
                  add          a2, s8, sp
                  ori          a7, t3, 1347
                  sltiu        a5, t1, 447
                  ori          t4, s6, 336
                  c.li         a2, -1
                  c.addi4spn   a3, sp, 720
                  c.addi16sp   sp, -16
                  addi         s9, s5, 241
                  c.addi16sp   sp, 192
                  c.mv         a1, a3
                  sub          a4, a4, a7
                  c.add        a0, ra
                  srai         a3, t6, 24
                  c.addi16sp   sp, 256
                  c.add        s3, t6
                  nop
                  c.mv         s2, a5
                  c.lui        a1, 30
                  div          a6, a0, s7
                  nop
                  srli         a1, s1, 4
                  mulh         a2, s4, a4
                  or           zero, s3, s6
                  andi         s11, t5, -1983
                  auipc        t1, 995346
                  c.nop
                  c.andi       a0, -1
                  andi         s2, s10, 1903
                  sll          s11, a5, s11
                  srai         t6, sp, 6
                  c.srli       a2, 19
                  div          gp, t2, gp
                  remu         s10, a1, t0
                  c.sub        a2, a5
                  c.andi       a1, 28
                  mul          s2, sp, a7
                  c.xor        a1, a5
                  mul          s0, a0, a1
                  or           t1, s3, t6
                  div          t6, s5, s4
                  c.mv         s10, s6
                  sltiu        s6, s5, 1264
                  c.li         a3, -1
                  sub          s10, tp, t0
                  nop
                  and          a2, a3, t5
                  c.or         a5, a4
                  nop
                  sltu         s2, s10, s4
                  c.addi4spn   a1, sp, 624
                  c.addi16sp   sp, 400
                  c.srli       a2, 7
                  mul          a6, s11, tp
                  sra          gp, s7, s6
                  ori          t1, t0, -695
                  add          a1, t4, s10
                  c.andi       a1, -1
                  mulhsu       s4, a5, s10
                  mul          a6, gp, a2
                  srai         t1, s2, 23
                  sub          t1, a4, sp
                  auipc        a7, 609798
                  nop
                  c.srai       a1, 30
                  srl          a2, ra, t2
                  sub          a2, t0, s4
                  srli         a5, s11, 2
                  add          s2, t4, s7
                  sll          s5, s4, s5
                  rem          t5, s11, s7
                  sltu         t5, a1, t1
                  c.nop
                  div          a2, s3, gp
                  c.addi       a4, -1
                  c.addi4spn   a2, sp, 96
                  lui          s5, 900085
                  srl          s5, t5, s8
                  c.nop
                  c.srai       a5, 26
                  auipc        a6, 650004
                  c.slli       s4, 11
                  srl          gp, t4, t1
                  c.addi4spn   a3, sp, 592
                  c.andi       a2, 25
                  c.addi16sp   sp, -16
                  sll          s0, zero, s0
                  div          tp, t1, t2
                  c.xor        a4, s1
                  sll          s0, s9, s11
                  c.addi4spn   a2, sp, 160
                  slt          a4, t2, s11
                  c.mv         s2, a1
                  slt          a5, gp, s11
                  mulhsu       s3, t5, a2
                  c.mv         s10, s11
                  c.srli       a3, 22
                  divu         t6, s10, a1
                  slti         s8, a5, -1549
                  remu         t3, t0, a3
                  and          s10, a3, s4
                  xori         s5, a6, 716
                  div          s4, s2, t6
                  mulh         a5, a0, a3
                  slli         s0, a2, 26
                  auipc        a1, 772563
                  xori         a7, s3, 1392
                  lui          s10, 975489
                  auipc        a7, 610401
                  c.andi       s0, 13
                  lui          a7, 1023826
                  mulhu        s11, s9, s4
                  nop
                  c.sub        s0, a3
                  c.addi4spn   a1, sp, 432
                  c.addi       t6, -1
                  mul          a0, s2, t4
                  mul          s9, s5, s9
                  divu         s6, zero, tp
                  c.lui        s5, 9
                  xori         t1, s2, -1023
                  c.addi4spn   a1, sp, 384
                  c.nop
                  mulh         s9, s1, ra
                  c.srli       a2, 29
                  sltiu        a6, s3, 920
                  divu         a6, t3, a7
                  ori          a7, zero, 1985
                  srl          t4, tp, s1
                  divu         s8, s6, t2
                  c.srai       s0, 2
                  mulhsu       s9, tp, s6
                  slt          a1, tp, t4
                  slti         s8, ra, 950
                  c.addi4spn   a3, sp, 960
                  c.lui        t5, 25
                  addi         zero, s3, -43
                  mulhu        s8, a4, s10
                  c.xor        a3, s0
                  mulh         a7, s9, s8
                  auipc        a7, 535988
                  mul          sp, s0, t4
                  c.nop
                  divu         a5, s11, s9
                  auipc        t0, 261042
                  addi         s6, s6, 861
                  div          s5, t2, a6
                  sll          s2, ra, s6
                  sra          a7, a4, a3
                  slli         s10, s7, 6
                  srl          s7, a4, a0
                  mulhu        s3, s1, sp
                  c.xor        a3, a5
                  xor          sp, t0, ra
                  rem          t4, gp, a3
                  c.or         s0, s1
                  addi         s2, s1, 1611
                  mulhu        zero, sp, s10
                  c.addi16sp   sp, 368
                  sra          a4, gp, s10
                  srai         s7, t1, 16
                  c.addi       s7, -1
                  sra          s2, s9, t2
                  slt          a7, zero, a1
                  add          a0, a0, sp
                  c.andi       a3, 31
                  andi         s6, t6, -1863
                  or           a7, a0, t5
                  sra          sp, t1, t0
                  mulhsu       t1, a1, t4
                  add          zero, s5, t6
                  div          s4, a4, a0
                  addi         a4, zero, 259
                  c.lui        t5, 6
                  c.mv         s11, t6
                  srai         a1, t3, 4
                  sltiu        t4, a7, -1894
                  c.addi       a4, 5
                  sltiu        a7, s7, -26
                  or           s0, s11, t3
                  nop
                  and          s4, zero, a4
                  xori         a4, s3, -511
                  mul          a7, s6, a7
                  lui          a3, 173950
                  c.addi4spn   s0, sp, 976
                  div          gp, t5, s2
                  remu         t3, a2, t3
                  c.andi       a3, -1
                  or           t1, t4, t5
                  c.srli       a3, 12
                  nop
                  rem          t1, a5, t6
                  ori          s10, t1, 1540
                  divu         a5, a2, s3
                  ori          s2, t4, 1609
                  c.or         a0, s0
                  lui          s6, 28474
                  c.and        s0, s1
                  divu         s0, t0, t2
                  lui          a4, 1018712
                  c.li         gp, -1
                  addi         a2, tp, 452
                  rem          s9, a5, a6
                  divu         s5, s7, t6
                  slt          s11, t0, gp
                  c.andi       a0, -1
                  c.or         a0, a5
                  and          t0, s2, a3
                  rem          s10, a6, s10
                  xori         a5, s3, 1351
                  remu         s5, a3, s0
                  c.mv         s4, s6
                  c.add        a5, s0
                  c.sub        a0, s1
                  div          a5, zero, a1
                  remu         t0, zero, s2
                  remu         s3, sp, t0
                  srl          s10, s4, a6
                  c.xor        a3, a5
                  or           s9, t4, s8
                  and          s7, s6, t5
                  or           s9, s1, s8
                  c.nop
                  sll          tp, s0, s7
                  c.li         tp, 15
                  auipc        s7, 250826
                  mul          zero, s9, t6
                  c.lui        a5, 18
                  ori          s4, tp, 1842
                  divu         zero, t0, a1
                  c.addi4spn   a1, sp, 224
                  sltiu        a0, t5, 1081
                  remu         s11, s3, a4
                  sll          s8, s0, a2
                  auipc        t6, 623266
                  srai         sp, a7, 31
                  sra          gp, s8, zero
                  addi         a3, a0, -1105
                  c.addi16sp   sp, 32
                  c.li         s6, -1
                  c.nop
                  xor          sp, s8, s5
                  c.slli       a3, 9
                  div          s4, s3, s5
                  mulhu        t0, s9, t5
                  slt          s11, a0, s1
                  srli         a7, a2, 18
                  mul          a1, s5, s5
                  rem          t0, s8, s6
                  slli         a7, a1, 14
                  mul          t0, gp, t1
                  lui          s7, 367776
                  c.addi       a0, 7
                  mulhsu       t6, s2, zero
                  c.addi       a5, -1
                  sll          a3, t1, s9
                  sra          a6, a5, zero
                  srai         s9, s8, 16
                  c.sub        a3, a0
                  or           a5, a3, s0
                  or           tp, s3, t2
                  c.mv         a6, s8
                  mul          tp, t6, s0
                  c.lui        t6, 29
                  c.add        sp, a0
                  srai         t6, sp, 13
                  c.srli       a5, 17
                  mulhu        s8, s4, a3
                  sltu         tp, s7, a3
                  srl          sp, s0, a5
                  c.sub        a0, a1
                  addi         t3, t2, 134
                  addi         s0, a7, -900
                  ori          a1, s2, 1357
                  sltu         s7, ra, sp
                  c.mv         a4, t5
                  c.addi16sp   sp, 64
                  c.addi16sp   sp, 48
                  sltu         s0, s7, s5
                  lui          a5, 149376
                  auipc        s9, 758994
                  c.nop
                  slti         a4, a0, -1105
                  lui          t6, 838474
                  sub          zero, s9, zero
                  slt          gp, t1, t1
                  sra          s7, t5, t1
                  c.and        a1, a2
                  sll          s8, s10, s3
                  slli         a5, s4, 4
                  c.addi       s5, -1
                  remu         gp, s1, gp
                  c.sub        a2, a1
                  div          a1, t4, s4
                  xori         zero, s1, 1711
                  mulh         s3, s11, s9
                  xori         t4, a1, 1094
                  div          t0, a6, t0
                  nop
                  slt          s3, a3, s11
                  or           t1, gp, a5
                  c.xor        a5, a4
                  remu         a6, a0, t6
                  nop
                  c.andi       a1, 10
                  c.add        s8, s0
                  add          s7, s2, a5
                  and          s7, s8, t5
                  c.li         gp, -1
                  srai         s6, gp, 28
                  c.addi4spn   a5, sp, 656
                  divu         s10, t2, t5
                  c.nop
                  c.sub        a2, a1
                  mul          s10, t0, s0
                  srl          tp, s7, sp
                  ori          a0, ra, -358
                  c.and        a3, a1
                  c.addi16sp   sp, -16
                  rem          s6, t6, s8
                  c.addi16sp   sp, -16
                  c.add        a2, s5
                  addi         s11, t6, 1404
                  add          a3, a6, s6
                  add          s2, s2, a5
                  remu         sp, s0, s7
                  or           s9, s7, a2
                  lui          a0, 542092
                  addi         s4, s11, 1644
                  mulhu        s8, s0, t5
                  remu         t3, t4, s10
                  mul          s11, t0, s9
                  srai         t1, gp, 31
                  lui          sp, 964733
                  c.addi       a3, 30
                  c.addi       sp, -1
                  c.nop
                  srl          s11, s1, t1
                  remu         s0, s4, t0
                  srl          zero, a0, ra
                  c.addi       a0, 14
                  c.add        t1, t2
                  sub          t1, t5, s11
                  auipc        a2, 1003115
                  xori         zero, a0, 1933
                  nop
                  c.or         a2, a4
                  lui          s10, 1045122
                  xor          a7, s10, tp
                  andi         a1, t5, -1413
                  sltu         zero, s3, s11
                  slt          a6, sp, s3
                  mulhu        a3, s11, a7
                  slli         s8, t3, 10
                  srl          t0, s2, a7
                  mulh         a4, a2, s5
                  c.addi4spn   a5, sp, 288
                  add          t1, tp, a7
                  addi         a1, t0, -1491
                  srli         gp, a6, 30
                  sltu         s7, s0, s1
                  addi         s5, a6, 1416
                  c.srli       a3, 9
                  c.slli       s9, 10
                  c.mv         t3, tp
                  sll          t5, s9, s9
                  srai         a5, a0, 26
                  srai         s11, s5, 5
                  c.addi4spn   a0, sp, 816
                  srl          t1, s3, t0
                  mul          s8, s0, s11
                  sub          s11, a4, a3
                  divu         gp, a4, sp
                  c.addi4spn   a5, sp, 608
                  mulhu        zero, t2, a3
                  c.sub        a5, a4
                  add          t0, s3, t6
                  lui          a7, 90955
                  c.lui        tp, 12
                  srai         a0, s7, 30
                  c.mv         s6, t0
                  add          t4, gp, s10
                  mulhsu       a7, t6, zero
                  sltu         s9, s11, s3
                  or           zero, a3, sp
                  c.sub        s0, a2
                  c.sub        a4, s0
                  c.addi16sp   sp, -16
                  slli         a2, t5, 0
                  sltiu        s7, a7, -211
                  sra          tp, s5, t0
                  c.addi16sp   sp, -16
                  c.sub        a3, s0
                  c.srli       a4, 3
                  mul          t3, ra, t4
                  sub          gp, a0, a4
                  c.mv         a7, a7
                  c.mv         a6, s10
                  addi         zero, s8, -1263
                  mulhsu       s9, a0, s11
                  c.mv         a1, s9
                  c.srai       a3, 22
                  c.add        s5, a0
                  andi         s0, s4, 1977
                  sll          t1, t1, a3
                  mul          a6, s5, ra
                  mulh         sp, a0, s11
                  c.addi4spn   a2, sp, 400
                  mulhsu       sp, s9, a2
                  xor          a2, s5, a1
                  lui          a2, 961576
                  addi         t4, a3, -1283
                  c.or         a1, a4
                  c.addi       t6, -1
                  c.mv         a4, s6
                  divu         s10, s2, s6
                  c.sub        a3, a0
                  remu         t0, s5, zero
                  rem          zero, tp, t6
                  mulhsu       a0, s3, ra
                  c.srli       a0, 20
                  mulhu        a3, s7, gp
                  c.xor        a5, a4
                  mulhsu       a0, sp, sp
                  slti         tp, t5, 999
                  nop
                  c.and        a1, s1
                  c.li         a7, -1
                  c.addi4spn   a3, sp, 992
                  add          s10, t3, s7
                  add          t4, s6, s7
                  mulhu        s0, a6, a6
                  sltiu        a3, t1, -1308
                  sub          s9, t4, a5
                  divu         a2, s11, a5
                  rem          t3, t1, a1
                  slt          s7, a6, ra
                  c.add        s0, s5
                  sll          tp, s3, s9
                  xori         a3, a2, -1388
                  srl          t5, a5, t4
                  div          t3, zero, a6
                  srai         a3, s9, 0
                  divu         s7, ra, s3
                  add          t4, s9, a0
                  or           sp, a5, a1
                  c.mv         a3, a1
                  c.add        tp, s5
                  lui          t6, 744953
                  srl          t5, s8, tp
                  remu         tp, zero, s4
                  xor          s4, gp, sp
                  sra          a7, a7, a1
                  add          s4, s0, s7
                  mul          a7, a7, gp
                  slti         s11, s2, -1296
                  xor          s3, s9, t1
                  slti         s5, t5, 1444
                  add          a3, t3, s1
                  sltu         gp, s4, a3
                  slt          t5, t2, ra
                  c.lui        a0, 15
                  c.srai       a4, 5
                  nop
                  or           a3, a1, a1
                  sltu         sp, zero, s11
                  slti         s0, a3, 1955
                  sll          s4, s4, a5
                  c.addi4spn   a5, sp, 992
                  xor          s10, s2, t1
                  c.or         a4, a4
                  or           s5, s2, s8
                  remu         s10, t3, t3
                  c.lui        a1, 21
                  lui          a6, 599587
                  remu         a3, s9, t0
                  sltu         t5, t0, t5
                  c.addi4spn   a0, sp, 32
                  c.srli       a3, 13
                  sub          s8, t5, tp
                  c.addi4spn   a0, sp, 16
                  divu         t0, a2, t6
                  xori         t3, s2, 1898
                  divu         s10, t1, s4
                  slt          tp, s7, a5
                  slti         s8, s9, -216
                  c.and        s0, s1
                  c.addi       tp, 2
                  sltu         s2, t2, s6
                  sra          gp, t4, s10
                  c.lui        s5, 19
                  ori          s2, s1, -1447
                  slli         a5, s9, 10
                  remu         a3, t4, t2
                  c.and        a4, a4
                  ori          s3, s5, 1289
                  c.srli       a1, 11
                  c.slli       t3, 7
                  div          sp, tp, t5
                  ori          t4, tp, -1679
                  c.andi       a3, -1
                  c.lui        a4, 7
                  c.addi16sp   sp, -16
                  sub          s5, s10, s8
                  ori          zero, a0, -451
                  xori         a5, s0, -1682
                  mulh         s0, s10, a1
                  nop
                  mulhu        s7, s2, t5
                  rem          s6, ra, s0
                  c.andi       a3, -1
                  mul          t0, s9, t2
                  sltu         s8, s6, s4
                  sltu         s8, t0, s3
                  mul          t0, t2, t0
                  c.add        s0, sp
                  remu         a5, gp, t5
                  rem          t6, t6, s10
                  addi         s8, zero, 32
                  mul          a4, t1, sp
                  remu         a5, t2, s9
                  srai         a4, t5, 18
                  c.mv         t0, sp
                  sltu         sp, s5, s10
                  sltiu        gp, t5, 1896
                  sll          a7, s2, t0
                  mulhu        tp, tp, sp
                  c.lui        gp, 2
                  rem          t6, s6, t1
                  mulhsu       t6, a7, t6
                  remu         a0, s2, t2
                  sub          s4, t4, a1
                  c.and        a3, a3
                  c.and        a1, s1
                  mulh         a6, s11, a4
                  c.addi4spn   a0, sp, 224
                  sltu         a7, s9, a2
                  sra          s11, s9, zero
                  c.or         a0, a5
                  sltiu        zero, a4, 1063
                  addi         a3, a7, 436
                  c.addi16sp   sp, -16
                  nop
                  c.srai       a0, 13
                  c.add        t0, t5
                  c.add        s11, a0
                  ori          s0, s1, -291
                  add          a3, s0, a4
                  addi         a0, s3, 67
                  andi         s5, t0, -107
                  c.li         a5, -1
                  mulhu        a1, zero, tp
                  add          a3, a7, s11
                  c.or         a1, a4
                  c.and        a0, a5
                  srl          s3, a6, t1
                  div          s9, s0, t6
                  c.mv         a4, t2
                  rem          a6, a2, t4
                  c.slli       t3, 1
                  c.andi       a3, -1
                  c.addi4spn   a2, sp, 544
                  or           a5, t2, t4
                  c.srai       a3, 5
                  divu         tp, t5, a7
                  sra          t6, a7, t3
                  and          t5, gp, a3
                  xori         a1, a0, 1949
                  c.addi4spn   a4, sp, 640
                  lui          a2, 966270
                  c.or         s0, a0
                  remu         t6, t0, s1
                  c.li         t4, -1
                  sll          a6, t3, s2
                  sra          s9, s4, s11
                  c.addi       a2, 9
                  srl          a1, s0, s10
                  slti         t6, sp, 1928
                  mulhu        s6, a4, tp
                  xor          t3, a7, s10
                  c.nop
                  sub          a2, zero, a7
                  mulhu        s8, s9, s6
                  c.addi16sp   sp, 16
                  mul          sp, t4, s9
                  c.nop
                  c.addi4spn   a1, sp, 944
                  c.addi4spn   a1, sp, 320
                  nop
                  xor          s9, s10, zero
                  c.xor        a2, a4
                  c.slli       s2, 16
                  c.andi       a0, 2
                  sltu         s0, zero, a7
                  addi         gp, s10, -1962
                  mulhu        t0, a6, a3
                  srli         s2, s5, 29
                  divu         gp, t3, t0
                  sltu         t5, s3, t0
                  slti         a1, a6, 1117
                  c.addi16sp   sp, -16
                  mulh         s4, a3, s8
                  srli         sp, s10, 29
                  addi         t1, a1, 870
                  c.addi16sp   sp, -16
                  mulhu        a3, s3, t6
                  xori         s5, s1, -1070
                  c.addi4spn   a3, sp, 144
                  mulhsu       a5, a7, tp
                  c.add        a7, t5
                  sra          s8, s11, a6
                  auipc        s4, 971763
                  slt          t1, a1, a0
                  rem          t0, a4, t3
                  andi         s6, t4, -1943
                  c.mv         a5, t4
                  ori          tp, s6, -1173
                  c.lui        s3, 13
                  sub          s11, s4, t2
                  or           a5, t4, t0
                  c.xor        s0, a1
                  add          s2, s3, gp
                  auipc        s6, 511424
                  c.sub        a0, a4
                  c.li         t6, 25
                  xori         t1, s11, -1570
                  c.and        a0, a5
                  c.sub        a0, a1
                  slt          a4, t0, sp
                  or           a1, s1, a0
                  mulh         t5, s9, t1
                  sll          t1, t0, a0
                  c.li         s11, -1
                  c.and        a0, a2
                  or           t4, s5, s7
                  c.li         s9, 16
                  slt          s5, a4, a3
                  c.slli       s8, 10
                  rem          a4, s2, a1
                  c.addi16sp   sp, -16
                  lui          t3, 819784
                  nop
                  xori         t0, t2, 1
                  mulhsu       t0, s8, t2
                  sll          a5, s6, s11
                  addi         sp, s3, 816
                  srai         a7, s10, 7
                  c.slli       a3, 29
                  c.addi16sp   sp, 368
                  c.nop
                  ori          a3, a2, -1012
                  c.lui        a6, 13
                  c.addi       s0, 7
                  c.slli       a7, 28
                  c.srai       a2, 1
                  c.xor        a2, s1
                  ori          sp, a5, 479
                  sll          s8, a3, s8
                  slti         t4, s6, -298
                  sra          s6, zero, s3
                  divu         s6, t6, s8
                  c.andi       a4, 20
                  xor          t1, a4, s7
                  sltiu        s0, a7, -1680
                  xor          a2, s7, s8
                  c.srli       s0, 16
                  c.slli       a2, 2
                  c.and        s0, a5
                  c.lui        t6, 8
                  mulhsu       t6, a3, t6
                  c.add        a2, s7
                  c.addi       a7, 3
                  ori          tp, sp, 543
                  ori          s7, ra, -929
                  addi         gp, a1, 408
                  c.addi       t0, -1
                  c.andi       a0, 10
                  rem          zero, a4, a1
                  c.srli       a3, 2
                  c.add        s8, s4
                  slli         s8, a7, 26
                  slli         s0, t4, 8
                  sltu         a3, a6, gp
                  xori         a2, s6, 1785
                  c.srli       a2, 31
                  xor          t3, s4, s6
                  c.srai       a3, 10
                  c.mv         a6, ra
                  c.li         a0, -1
                  sltu         t4, gp, a0
                  andi         s9, a2, -1900
                  ori          s0, a7, 929
                  mul          t1, gp, a0
                  sltiu        a4, s2, -38
                  c.addi16sp   sp, 64
                  lui          t0, 81829
                  c.nop
                  div          s7, a5, a2
                  slt          t6, gp, s5
                  c.andi       a1, 4
                  c.add        s6, a7
                  sll          a1, s0, a0
                  c.li         s0, -1
                  c.addi       a7, -1
                  andi         s2, t0, -1110
                  sub          a7, a6, a0
                  slt          zero, ra, s5
                  c.addi16sp   sp, -16
                  and          gp, a4, tp
                  c.lui        s6, 21
                  sub          gp, zero, a3
                  mulhu        a0, a6, zero
                  addi         s6, s7, -233
                  c.mv         t0, t2
                  c.and        a5, a3
                  slli         a1, s11, 0
                  xor          s11, t6, s10
                  c.addi       s0, -1
                  c.nop
                  srl          s0, t4, zero
                  or           a1, a3, s0
                  xor          sp, a4, sp
                  slti         a4, s8, -466
                  sltiu        s7, t5, 1743
                  divu         s11, s9, t5
                  addi         s4, s10, 792
                  divu         a2, s1, sp
                  mul          t5, a0, tp
                  andi         t1, a0, -1554
                  slli         s3, t0, 11
                  c.addi16sp   sp, -16
                  sll          gp, gp, t0
                  c.nop
                  c.nop
                  add          a1, s4, a6
                  sra          s0, s5, t0
                  c.addi       t4, -1
                  c.or         a2, s0
                  addi         t5, ra, 702
                  srai         s9, sp, 29
                  mulhsu       s3, sp, a4
                  c.and        a3, a0
                  c.srai       a5, 18
                  c.lui        a2, 16
                  c.addi4spn   a4, sp, 16
                  c.sub        a2, a5
                  sltiu        s4, t0, 55
                  rem          tp, a3, s11
                  c.andi       a3, 8
                  lui          gp, 22389
                  srai         a7, tp, 10
                  c.add        s9, s3
                  or           zero, a4, s6
                  sub          t0, gp, s2
                  c.slli       tp, 15
                  and          s0, t1, s1
                  auipc        t5, 48539
                  c.sub        a5, a5
                  c.li         t1, 7
                  c.nop
                  c.addi4spn   a5, sp, 48
                  lui          a5, 836208
                  srl          a6, t5, t5
                  mulhu        s8, ra, ra
                  divu         a6, s7, a3
                  xor          t3, s7, s3
                  c.xor        s0, a2
                  lui          s9, 803102
                  slti         s5, t4, 1700
                  xor          t0, s0, t0
                  c.nop
                  sra          zero, a7, s4
                  xori         sp, t5, 261
                  mul          sp, s9, s3
                  c.xor        a2, a1
                  sub          zero, t3, s5
                  sra          s8, a4, tp
                  sltiu        t5, s1, 229
                  mul          s6, s2, a0
                  auipc        zero, 540001
                  slli         a0, a5, 11
                  xor          t4, a4, ra
                  c.li         a5, 11
                  c.srli       a1, 17
                  mulhu        a3, s6, a4
                  c.and        s0, a4
                  divu         a0, s11, a3
                  sll          a4, tp, t3
                  sll          a1, gp, zero
                  c.mv         a3, a7
                  rem          s6, a5, zero
                  c.addi       a0, -1
                  c.addi4spn   s0, sp, 992
                  add          a4, s8, t6
                  add          s7, ra, s1
                  ori          s10, s4, -1988
                  slli         s3, a1, 3
                  lui          a0, 191101
                  sub          s6, a7, a4
                  slli         a1, s1, 17
                  mul          s10, tp, a3
                  c.xor        a3, a4
                  sltu         s5, s8, s9
                  remu         s4, a0, s7
                  or           tp, t2, s0
                  c.sub        a3, a0
                  sltiu        t4, s4, 1193
                  mulh         a1, s7, a4
                  mulhsu       tp, a3, s9
                  c.mv         sp, s5
                  c.or         s0, s1
                  remu         gp, ra, a4
                  sub          s9, t3, t4
                  divu         a7, s4, s10
                  mulhu        s8, s2, t3
                  andi         s10, s6, -1031
                  srai         a4, s9, 1
                  mulh         sp, a5, s1
                  andi         t6, a2, -197
                  srli         t1, t1, 17
                  sll          a2, t3, s4
                  c.add        gp, s4
                  c.srai       a5, 8
                  c.and        a1, s0
                  mulhsu       a0, s3, ra
                  divu         sp, a6, a1
                  c.li         a7, 13
                  sll          t6, s1, s0
                  xor          a2, ra, s5
                  sll          t0, s1, a7
                  c.addi       s7, -1
                  c.srli       a4, 21
                  c.nop
                  mulhu        a5, s8, t0
                  srl          t4, t0, s1
                  c.li         sp, 17
                  mulhu        tp, a6, t0
                  auipc        zero, 724830
                  mul          a4, t3, a2
                  c.lui        a7, 27
                  ori          t4, s1, -1954
                  xori         t5, s2, 1633
                  sra          tp, a5, a5
                  c.li         t1, -1
                  sltiu        zero, s1, 1443
                  c.add        t0, sp
                  xori         s9, zero, 621
                  slli         gp, s11, 22
                  c.nop
                  srli         a5, zero, 4
                  mulhsu       s3, a6, s6
                  c.li         gp, 0
                  c.srli       a3, 8
                  xori         t5, s10, -1388
                  srai         t4, a7, 19
                  andi         s4, t3, -267
                  xor          a2, t4, t2
                  slt          s6, a2, s4
                  srli         s4, tp, 31
                  c.addi16sp   sp, -16
                  divu         t0, s1, s5
                  c.mv         s10, t0
                  mulh         t0, a7, a5
                  c.lui        s5, 18
                  rem          sp, s3, sp
                  lui          t0, 401135
                  sll          s0, s5, zero
                  add          s4, a3, sp
                  sll          a7, t3, a4
                  sub          a1, t6, s5
                  div          s7, s7, gp
                  c.sub        s0, a4
                  c.li         tp, -1
                  srl          zero, t2, s9
                  addi         a1, s4, -1304
                  c.xor        a4, a0
                  c.addi16sp   sp, -16
                  srl          t0, a2, ra
                  remu         t4, a0, s2
                  c.andi       a1, 29
                  c.andi       a1, 11
                  c.mv         a4, t1
                  xor          s8, t1, s8
                  c.slli       gp, 22
                  slli         t1, t6, 22
                  c.sub        a0, a4
                  sltu         t1, a5, s2
                  c.or         a3, a2
                  mulhsu       s11, a0, s1
                  srai         s10, zero, 8
                  remu         a0, s9, a0
                  divu         sp, t0, s4
                  slt          a1, s4, t0
                  remu         s9, a5, s3
                  c.li         gp, 24
                  c.nop
                  xori         t4, a2, 1585
                  c.li         a6, 4
                  lui          s11, 101866
                  lui          s6, 760815
                  auipc        t1, 546980
                  andi         a5, s2, 1739
                  sltu         a4, a5, zero
                  c.and        a1, s1
                  mulh         t0, a3, a3
                  xor          t5, t0, s1
                  sra          t0, a6, s9
                  slt          s10, a1, a1
                  srai         a4, t2, 26
                  c.mv         s10, s5
                  xori         t4, t4, 577
                  divu         zero, a4, s7
                  c.addi       tp, -1
                  remu         s9, t3, s6
                  rem          t1, a1, s0
                  srai         sp, s6, 13
                  c.slli       s0, 10
                  c.and        a0, a4
                  auipc        a5, 512666
                  slt          t1, s7, zero
                  sltu         s2, s11, s4
                  c.and        a0, a3
                  mulh         zero, a2, tp
                  srai         a3, gp, 4
                  c.mv         t3, t5
                  mulhsu       a6, sp, s6
                  xor          s7, s0, a2
                  srl          sp, a7, s10
                  slt          a6, a7, a0
                  c.slli       s7, 2
                  c.and        a0, a5
                  c.addi       tp, -1
                  sltu         a0, t5, s11
                  addi         s0, a6, -280
                  addi         tp, t3, 1956
                  xor          t0, sp, gp
                  c.add        s3, a0
                  c.nop
                  add          a4, a3, a6
                  c.addi4spn   a3, sp, 912
                  c.addi       t6, 13
                  rem          s5, tp, ra
                  add          s10, gp, s8
                  remu         t0, a5, t4
                  mulhsu       a5, s3, a3
                  mul          a2, s10, gp
                  addi         s0, zero, 1659
                  c.and        a1, a5
                  sltu         s10, s8, s1
                  and          gp, zero, a6
                  mulhu        a3, a7, t2
                  c.addi4spn   a5, sp, 1008
                  mulh         a0, s3, t1
                  xori         s9, t3, 1787
                  or           a5, a6, gp
                  and          t0, s8, a7
                  slli         a7, t3, 9
                  mul          s8, sp, s4
                  c.lui        gp, 24
                  c.xor        a4, a0
                  mulhu        t0, s8, s6
                  mulhsu       sp, t2, s5
                  andi         s0, s5, -355
                  sll          a2, t3, s6
                  nop
                  c.slli       t4, 1
                  c.xor        a0, a3
                  div          t6, t0, a6
                  srai         s4, s5, 17
                  xor          tp, a3, t3
                  c.and        s0, a0
                  add          a1, t2, s7
                  remu         s8, s8, a7
                  sltiu        s2, a1, 836
                  sltu         s9, s10, a2
                  sltiu        s7, s0, -873
                  c.addi       tp, -1
                  mulhu        t4, a2, tp
                  sll          zero, a5, s9
                  sll          s7, a4, s9
                  c.addi4spn   a2, sp, 240
                  mulhsu       s9, t0, a3
                  c.add        s0, t0
                  c.and        s0, a2
                  mulhsu       t0, gp, s10
                  c.mv         s8, sp
                  c.li         a7, 3
                  mul          sp, tp, tp
                  slt          s8, gp, zero
                  c.lui        a6, 18
                  c.lui        s9, 16
                  mulhu        t4, a6, a3
                  c.nop
                  c.andi       a1, -1
                  c.addi       sp, -1
                  lui          t0, 622295
                  sltu         a7, s11, s7
                  c.add        t0, tp
                  c.xor        a4, a0
                  sltiu        t5, a5, 2029
                  c.srli       a5, 30
                  slti         s4, t5, 1950
                  c.or         a0, a0
                  sll          s8, s11, t6
                  xori         s2, t4, -551
                  xori         t5, s7, 1625
                  c.addi16sp   sp, 96
                  sra          a4, t1, tp
                  xori         a2, t6, 1770
                  mulhu        sp, t2, s0
                  srai         s2, s3, 3
                  c.addi       t6, -1
                  c.add        s11, t1
                  mul          a4, tp, s3
                  c.addi4spn   a4, sp, 112
                  mulhsu       a1, a6, gp
                  slti         s2, gp, -1508
                  c.andi       a3, -1
                  c.srli       s0, 14
                  sub          t1, a0, s9
                  c.nop
                  c.mv         gp, a1
                  c.srli       a0, 25
                  remu         a2, t5, tp
                  slli         t5, t0, 1
                  xor          s0, a5, t2
                  auipc        t4, 980579
                  sltu         t3, s9, t1
                  c.addi       sp, 13
                  c.addi       s11, -1
                  andi         s5, s9, -1526
                  auipc        sp, 415756
                  c.addi16sp   sp, -16
                  srai         t6, s2, 21
                  or           s11, a6, s11
                  slti         t0, t6, -1174
                  addi         tp, s9, -530
                  c.li         a4, 6
                  c.add        s5, sp
                  andi         s10, t5, 1822
                  srl          a4, s8, s2
                  c.li         a3, -1
                  div          s7, a1, s4
                  c.andi       a3, -1
                  c.srai       a0, 12
                  sra          t6, s5, t2
                  c.or         a1, a0
                  slli         a6, s10, 7
                  slti         tp, s5, -1443
                  rem          a1, a3, a7
                  c.mv         a5, t5
                  div          a2, s11, s1
                  c.lui        s2, 26
                  c.slli       s3, 31
                  c.mv         a1, s4
                  addi         s9, t4, 1302
                  c.srli       s0, 15
                  c.and        a0, a3
                  c.and        a3, a2
                  sltu         t4, s2, sp
                  nop
                  mulhsu       t4, s3, s11
                  mulhu        a3, a5, tp
                  sll          a2, t3, t2
                  sra          sp, a3, s0
                  srli         tp, s3, 17
                  c.andi       a4, -1
                  slti         tp, sp, 749
                  rem          t3, s1, tp
                  c.sub        a4, a2
                  c.xor        a3, a3
                  c.andi       a4, 27
                  c.addi       s6, -1
                  c.addi       t4, 7
                  c.nop
                  c.slli       s6, 3
                  remu         s0, a2, a7
                  slt          s11, ra, s11
                  c.srli       a1, 9
                  or           s6, s4, s6
                  mulhsu       t5, a1, s9
                  c.sub        s0, a4
                  c.and        a0, a3
                  c.add        t6, s5
                  remu         s0, a5, a5
                  c.slli       a7, 25
                  mulh         s8, a4, a2
                  c.srli       s0, 2
                  div          a1, t0, s6
                  mulhu        s8, s5, t0
                  c.xor        a3, a1
                  rem          t3, a2, a6
                  rem          t3, s7, t3
                  c.li         a1, -1
                  c.slli       t0, 3
                  sll          s9, a3, a3
                  remu         s5, s7, t4
                  andi         a7, a5, -1647
                  c.and        a3, a3
                  addi         a2, t0, 1698
                  slli         s9, gp, 8
                  c.slli       t5, 30
                  c.sub        a0, a4
                  c.andi       a4, -1
                  mul          s2, sp, t0
                  c.li         t4, -1
                  divu         s0, t5, a0
                  mulh         a7, a2, t3
                  slti         s3, a4, -883
                  or           t0, gp, t0
                  sll          t3, t5, a0
                  c.addi       s0, -1
                  mul          gp, t2, ra
                  divu         a7, a0, a6
                  mulhsu       s7, t6, a3
                  sltu         t6, s8, s10
                  div          tp, t5, a6
                  and          t5, a6, a7
                  c.addi4spn   a3, sp, 80
                  srli         zero, s8, 31
                  c.nop
                  slti         s8, zero, -1476
                  c.addi16sp   sp, -16
                  addi         t4, a2, 916
                  sltiu        s0, a7, 1033
                  sll          a5, s7, s3
                  and          s8, s10, s10
                  or           gp, s7, a5
                  c.addi4spn   s0, sp, 64
                  srli         s11, tp, 22
                  c.li         a0, 9
                  lui          sp, 507458
                  c.xor        a3, a5
                  c.andi       a1, -1
                  mulhsu       s3, s6, ra
                  c.addi4spn   s0, sp, 128
                  mulhu        s10, s11, t6
                  auipc        zero, 586029
                  remu         tp, a5, tp
                  ori          s6, sp, 1559
                  c.lui        s5, 27
                  sub          a2, s9, s4
                  c.and        a2, a4
                  c.or         a3, a1
                  c.xor        a3, a0
                  sltu         a2, gp, a6
                  addi         t1, s9, 552
                  c.addi       gp, 9
                  ori          t5, sp, -95
                  remu         a5, a5, a0
                  lui          t5, 1032872
                  sra          t3, t0, gp
                  mulh         tp, s9, s8
                  c.mv         s10, a7
                  c.add        t6, t4
                  and          s2, a6, t5
                  remu         gp, s8, s9
                  ori          gp, t1, 588
                  rem          t5, s9, s8
                  c.addi4spn   a4, sp, 816
                  srli         zero, s8, 29
                  xori         zero, t0, -837
                  srai         s6, s6, 27
                  lui          t4, 799397
                  addi         a5, t0, -1895
                  nop
                  remu         a3, a2, s0
                  sltu         t6, s11, a7
                  sra          a0, s9, s3
                  ori          a0, zero, -1401
                  and          tp, s10, t0
                  mul          s0, t2, gp
                  mulhsu       s3, t5, a0
                  c.xor        a4, s0
                  addi         t3, t4, -1128
                  mulhu        a4, t5, a5
                  sll          s11, t0, t2
                  mulh         tp, a3, tp
                  nop
                  remu         s4, s6, a2
                  srai         s0, zero, 16
                  c.or         a0, a2
                  remu         gp, zero, s6
                  sltiu        a6, s6, -1624
                  mulhsu       s8, s1, a5
                  c.srai       a1, 12
                  sltiu        a7, t5, -1111
                  lui          a5, 742778
                  c.mv         s5, s8
                  sll          s3, a2, s5
                  ori          a5, t5, -1814
                  c.addi4spn   s0, sp, 960
                  slt          a5, tp, t0
                  c.sub        a0, a4
                  add          gp, t6, t5
                  or           a3, s11, ra
                  ori          a5, t6, 255
                  c.nop
                  c.slli       a6, 31
                  xor          zero, s5, a6
                  c.addi4spn   a3, sp, 160
                  c.add        a6, s0
                  c.addi4spn   a3, sp, 368
                  xor          t0, a3, a0
                  sltiu        s9, a5, 1691
                  c.sub        a0, a4
                  c.srai       a1, 7
                  rem          t5, s11, a7
                  c.slli       a0, 19
                  c.lui        a1, 3
                  sll          t6, gp, t0
                  lui          t0, 663047
                  mulhsu       s7, gp, s7
                  c.or         s0, s1
                  mulh         s0, s3, t6
                  rem          a6, tp, gp
                  addi         s4, s3, -962
                  c.mv         s6, s4
                  mulhsu       a6, s10, a3
                  srl          a4, a3, s8
                  ori          s8, s7, -1868
                  mul          s4, t1, tp
                  c.sub        a1, a2
                  and          zero, s0, a4
                  add          s8, t3, gp
                  c.addi16sp   sp, 432
                  c.andi       a1, 14
                  c.lui        a1, 4
                  c.srai       s0, 1
                  c.srai       a3, 6
                  c.add        s10, s11
                  c.nop
                  srl          s3, t5, zero
                  c.srli       a3, 26
                  sltiu        t1, t6, -2048
                  add          s3, t2, s2
                  or           s11, s3, a2
                  remu         t4, a4, a1
                  srl          a0, s5, zero
                  mul          s0, a3, tp
                  mulhu        t3, s5, t4
                  xor          a4, a1, t6
                  xori         s3, s0, -1712
                  sra          s7, a2, tp
                  c.and        a3, a3
                  c.addi16sp   sp, 240
                  c.nop
                  sltiu        s2, a2, -1640
                  slli         zero, t1, 21
                  c.mv         a3, t5
                  c.srli       a0, 30
                  andi         s6, t4, 898
                  c.or         a3, a4
                  c.addi       a7, 30
                  c.addi16sp   sp, 224
                  mulhsu       a0, s1, s9
                  slti         s0, a0, 1219
                  mul          s8, zero, t5
                  slt          s11, s2, s5
                  mulh         a1, t5, s9
                  c.add        a6, t4
                  add          sp, zero, ra
                  slli         s0, s3, 8
                  slt          tp, ra, ra
                  slti         a6, s3, 294
                  or           t3, s10, zero
                  c.li         t4, 9
                  c.mv         a0, s9
                  c.slli       a3, 25
                  srli         a3, tp, 22
                  slli         a2, a7, 4
                  c.srli       a3, 18
                  slt          s9, s3, ra
                  c.and        a3, a4
                  srli         zero, sp, 0
                  xor          t0, s9, s8
                  lui          s11, 85020
                  mulh         tp, a2, s4
                  sub          gp, s0, s11
                  slli         gp, t1, 22
                  add          a1, s4, s8
                  sub          gp, s1, t1
                  c.addi4spn   a4, sp, 928
                  sll          a4, s0, s9
                  slli         a4, tp, 23
                  mulhsu       a1, s11, s9
                  divu         s4, ra, s10
                  sltu         a7, t5, t5
                  slt          s5, s8, s2
                  c.add        a4, s4
                  c.addi16sp   sp, 144
                  slti         t5, t3, -504
                  c.nop
                  xori         gp, ra, 1059
                  add          a1, s4, t6
                  c.slli       t1, 8
                  c.sub        a1, a4
                  c.add        gp, ra
                  srli         zero, t1, 24
                  mulhsu       s5, s6, sp
                  auipc        s0, 301900
                  c.mv         s9, a4
                  c.srli       a5, 2
                  c.andi       a0, 31
                  auipc        s2, 684515
                  slli         zero, t5, 4
                  c.addi16sp   sp, 144
                  and          s2, t3, t5
                  sra          a0, s6, s3
                  or           zero, s6, t5
                  c.and        a4, s0
                  c.nop
                  c.srai       a3, 29
                  c.srli       a4, 17
                  sltu         a5, t3, s3
                  c.li         a5, 5
                  c.xor        a2, a5
                  mul          a5, s4, s10
                  c.addi       s0, 28
                  nop
                  c.addi4spn   s0, sp, 80
                  mulh         s7, s3, s8
                  nop
                  addi         t6, a4, -369
                  slt          s11, s11, s0
                  divu         t1, t6, s7
                  mulh         t6, s7, s4
                  addi         t4, t6, -1425
                  mul          s0, t2, ra
                  mul          s9, s0, a4
                  c.srai       a2, 13
                  remu         t5, t2, sp
                  andi         t3, t4, 1861
                  mul          t3, ra, t4
                  sub          tp, s7, gp
                  addi         a0, zero, 1255
                  c.li         a7, -1
                  sll          a7, t4, t6
                  c.addi4spn   a2, sp, 48
                  srai         gp, a6, 20
                  xor          s7, a5, gp
                  ori          t5, a5, 403
                  c.srai       a0, 6
                  nop
                  mulhsu       a3, s11, s3
                  addi         t1, s7, 965
                  add          s3, a4, tp
                  sub          zero, t6, a7
                  slt          s4, a7, s6
                  c.lui        a3, 2
                  remu         s7, s5, s6
                  c.andi       a2, -1
                  c.nop
                  c.srli       s0, 29
                  mulhsu       t3, a7, s4
                  div          s4, sp, a2
                  c.li         a7, -1
                  c.nop
                  c.slli       a3, 20
                  rem          zero, a3, sp
                  and          t5, s10, s1
                  c.xor        a1, a2
                  sltu         a3, s1, a5
                  c.mv         t4, ra
                  rem          s5, s5, a4
                  sltu         t0, a7, a2
                  c.lui        t0, 9
                  sll          tp, a3, s6
                  mul          a7, t3, a7
                  sll          s2, s1, a3
                  xori         a4, a3, -1415
                  nop
                  c.addi16sp   sp, -16
                  lui          a7, 255742
                  xori         t4, s1, 1597
                  c.sub        a3, a3
                  c.srli       a3, 14
                  c.srai       a1, 25
                  c.srai       a5, 1
                  srli         s5, s7, 13
                  c.sub        a2, a1
                  sra          a6, s1, t2
                  remu         s7, a4, a4
                  sltiu        gp, s5, 1865
                  c.mv         a2, t1
                  ori          t6, t4, -1098
                  xor          a5, s0, a1
                  c.sub        a3, s0
                  andi         zero, a3, 1396
                  and          s4, s6, s9
                  c.addi4spn   a2, sp, 80
                  rem          sp, gp, t3
                  sub          s10, s11, s7
                  xor          a1, s7, s5
                  c.add        s10, s4
                  sra          zero, a5, t3
                  and          a2, s3, t2
                  sra          t0, tp, s7
                  c.sub        a4, s1
                  c.xor        s0, s0
                  srli         s5, s6, 7
                  slli         a5, a7, 0
                  c.add        a5, s0
                  c.sub        s0, s0
                  sub          a2, t4, t4
                  c.addi4spn   a1, sp, 320
                  slt          t4, a5, s2
                  c.nop
                  addi         t4, s2, -417
                  c.and        s0, a0
                  c.add        t5, s5
                  sll          t6, t0, a1
                  sltiu        a5, s6, 105
                  c.addi4spn   a4, sp, 736
                  srli         a0, s2, 25
                  c.or         a5, s1
                  c.add        s7, a5
                  c.andi       a4, -1
                  srl          t1, a1, s0
                  c.srli       a2, 31
                  lui          t3, 168389
                  c.addi       a5, 6
                  srai         a1, t0, 13
                  add          s9, a6, t1
                  c.addi16sp   sp, 96
                  sll          a6, t2, s2
                  c.addi       s4, -1
                  and          zero, t4, s9
                  sll          t4, gp, gp
                  slli         sp, a7, 9
                  mulhu        s0, s11, a5
                  srli         s10, t5, 26
                  c.srli       a3, 9
                  and          s9, t2, s6
                  c.lui        s7, 29
                  srli         t6, t0, 23
                  slti         sp, gp, -708
                  c.slli       a7, 23
                  div          t6, zero, s9
                  slti         s10, s5, -2035
                  slli         s3, s4, 6
                  slt          s11, t4, s11
                  sltu         s5, s1, t5
                  mulh         sp, a1, a2
                  c.or         a4, a3
                  auipc        t0, 31538
                  sra          s10, t5, t6
                  xori         a6, s3, 1509
                  sltu         t4, s5, a6
                  c.srai       a4, 21
                  c.lui        s10, 13
                  mulhsu       s9, s3, t4
                  c.andi       s0, -1
                  xori         zero, zero, -1722
                  divu         zero, s3, a7
                  add          a5, t0, a6
                  srli         t1, a2, 31
                  add          s5, s0, t4
                  srl          t6, a1, s5
                  c.slli       a7, 3
                  sub          t4, s8, t6
                  c.add        a0, t3
                  mulh         t6, s4, a1
                  c.xor        a1, a2
                  auipc        t0, 221781
                  div          a4, s1, a6
                  mulhu        a6, t4, t5
                  or           a4, gp, t0
                  and          s7, t5, s8
                  slli         a4, s11, 0
                  mulhsu       tp, t1, s2
                  c.srai       a3, 24
                  mul          zero, a2, tp
                  mulhsu       t5, t0, s7
                  divu         sp, s8, zero
                  divu         a0, s8, sp
                  sll          zero, t5, a4
                  mulhsu       t4, s3, a6
                  sra          s11, a0, s1
                  mulhsu       a6, t1, s1
                  sltiu        a2, a0, 1519
                  mulhsu       s4, zero, a0
                  add          t1, s10, a6
                  c.andi       a5, 21
                  c.andi       a0, 26
                  remu         t6, s4, t2
                  addi         s5, s10, 195
                  c.srli       s0, 5
                  c.addi       a7, -1
                  mulh         s5, sp, t5
                  srai         s8, t0, 14
                  mul          t4, t4, s9
                  mul          s8, a3, s4
                  c.xor        a2, s0
                  mul          s6, t0, gp
                  divu         t5, a6, a0
                  c.or         a4, a0
                  xor          s4, zero, t3
                  c.addi16sp   sp, 80
                  c.slli       a2, 12
                  c.li         t5, 5
                  sltiu        s11, ra, 873
                  sra          s10, t1, t0
                  c.li         s7, -1
                  c.lui        s2, 27
                  c.sub        s0, a2
                  c.lui        gp, 1
                  rem          s6, a1, s9
                  srl          s5, a5, a6
                  c.andi       a3, -1
                  c.xor        a3, s0
                  ori          a4, s11, 1813
                  slti         t5, a3, -12
                  c.srli       s0, 11
                  ori          s5, s4, 2011
                  sra          tp, a3, s2
                  xor          zero, s9, zero
                  addi         tp, s1, 469
                  sltiu        s5, s10, -461
                  sltu         zero, t0, s0
                  c.addi       tp, -1
                  and          s9, t4, t5
                  add          a6, a7, s6
                  slli         s8, s10, 20
                  c.xor        a2, a5
                  srai         a5, s3, 12
                  c.lui        gp, 22
                  or           s2, tp, s6
                  andi         s11, s2, 1723
                  ori          a7, a0, -1144
                  mul          a7, a7, a3
                  c.add        t0, a5
                  sll          gp, a6, a1
                  addi         s11, s5, -1058
                  c.andi       a2, -1
                  c.addi16sp   sp, 144
                  or           a7, sp, sp
                  c.sub        a1, a2
                  srl          s9, zero, t0
                  c.slli       s3, 22
                  lui          s3, 494311
                  c.slli       a5, 19
                  c.li         gp, -1
                  mulhu        t4, s9, zero
                  mul          gp, s7, t1
                  sra          s8, zero, s11
                  add          a5, a4, a4
                  sltu         a0, a3, a7
                  div          a3, zero, s0
                  c.li         gp, -1
                  slti         a0, a0, 793
                  add          s8, s4, a3
                  srli         s4, s6, 28
                  c.addi16sp   sp, 448
                  xor          a1, gp, a7
                  remu         s7, t2, s11
                  nop
                  c.addi4spn   a2, sp, 944
                  c.xor        a3, a0
                  andi         a0, ra, -1213
                  c.addi       a7, -1
                  lui          s8, 469412
                  c.sub        a2, s1
                  ori          s10, s3, -35
                  c.lui        a0, 30
                  mulh         a7, a4, zero
                  c.sub        a3, a0
                  c.srai       a0, 17
                  divu         t0, a0, t5
                  c.xor        a5, a3
                  c.xor        a5, a1
                  sltu         t0, t6, sp
                  c.addi       a4, -1
                  or           s3, s4, s5
                  c.xor        a3, a1
                  slti         s3, s4, -584
                  c.mv         sp, a4
                  sltiu        gp, a7, 1106
                  c.xor        a5, a2
                  add          gp, a3, s2
                  slti         tp, s8, -961
                  addi         a4, a0, -1105
                  c.addi4spn   a0, sp, 624
                  or           tp, s1, t4
                  c.li         a7, 15
                  srl          s4, a4, a5
                  andi         tp, a6, 1920
                  xori         tp, s10, 1462
                  sltiu        t3, s2, -347
                  sra          s2, s11, a0
                  c.slli       s6, 8
                  srli         zero, s6, 2
                  slt          t3, s7, t1
                  srl          s0, ra, t2
                  slti         s0, s6, -1245
                  srai         s11, gp, 0
                  c.mv         s7, s2
                  slli         s7, s3, 19
                  c.addi       a7, 15
                  remu         s3, a3, sp
                  c.lui        a5, 28
                  auipc        s2, 212908
                  c.or         a2, a5
                  c.xor        s0, a3
                  sltiu        a2, t5, 347
                  xori         tp, s3, 521
                  c.andi       a1, 15
                  c.nop
                  mulh         t1, a3, s11
                  lui          a0, 130475
                  c.srai       a5, 12
                  c.and        s0, a4
                  c.mv         t6, t3
                  div          t3, t0, s8
                  sltiu        s3, s7, 561
                  c.nop
                  lui          sp, 153215
                  sub          s5, a6, s3
                  c.lui        gp, 30
                  auipc        s9, 103057
                  or           t6, t0, s6
                  c.sub        s0, a0
                  c.srai       a2, 4
                  c.slli       t1, 13
                  and          t1, sp, s7
                  auipc        t5, 836339
                  c.addi4spn   s0, sp, 128
                  mulh         t0, s11, t5
                  slt          s6, t4, ra
                  sra          a1, sp, s1
                  c.addi4spn   a1, sp, 48
                  c.slli       s7, 6
                  c.or         s0, a1
                  lui          gp, 87396
                  mulhsu       a2, t0, ra
                  mulhsu       tp, t6, ra
                  c.srai       a0, 19
                  ori          s11, sp, -385
                  slli         s0, t5, 24
                  slti         s10, s4, 1529
                  srli         s2, gp, 5
                  c.addi4spn   a3, sp, 528
                  remu         s5, s10, t6
                  sltiu        s6, s3, 3
                  mul          t0, s8, s2
                  mulh         gp, t5, s0
                  mulhu        s6, a2, s7
                  c.addi4spn   s0, sp, 992
                  c.sub        s0, s1
                  c.addi16sp   sp, -16
                  c.andi       s0, 1
                  c.srai       a1, 16
                  xori         t0, s10, 1072
                  div          a5, s3, a1
                  andi         s0, ra, 1297
                  c.mv         s8, t3
                  sltiu        zero, s2, -1675
                  rem          s0, s2, s4
                  add          s5, s9, ra
                  c.addi4spn   s0, sp, 96
                  ori          s9, s7, 957
                  c.xor        a2, a3
                  div          t4, s0, sp
                  lui          s4, 215168
                  div          s9, s11, t4
                  c.mv         a2, t4
                  andi         s4, a3, 1406
                  xor          sp, s5, a2
                  c.add        s10, s4
                  div          s11, s6, t0
                  sub          zero, a2, s10
                  xor          a0, sp, s6
                  sub          s8, t1, t0
                  divu         sp, t0, s8
                  or           s8, s11, zero
                  c.addi16sp   sp, 336
                  slt          a2, a3, a5
                  c.addi16sp   sp, 400
                  slt          t1, t2, t6
                  c.srli       s0, 28
                  sltiu        s7, s2, -618
                  c.xor        s0, a2
                  lui          s2, 821228
                  add          s4, a6, s1
                  mul          s7, gp, s1
                  c.add        a4, t5
                  sub          s7, a5, s9
                  xori         a1, s1, -230
                  lui          a4, 344599
                  c.lui        t4, 19
                  or           tp, a1, s6
                  c.addi4spn   a1, sp, 400
                  sub          t5, sp, a5
                  c.sub        a1, a1
                  srl          a1, s5, ra
                  c.andi       a1, -1
                  slt          s5, t1, s6
                  slti         t4, s0, 241
                  c.li         t1, 26
                  and          a4, s6, s7
                  ori          s5, sp, 920
                  srai         s0, a3, 19
                  srli         a7, tp, 8
                  c.srai       a2, 27
                  xor          a2, a0, s9
                  c.lui        a5, 4
                  or           s0, s10, a2
                  srli         s0, a6, 1
                  c.or         a4, a1
                  c.or         a3, a0
                  c.sub        a2, a5
                  or           s6, a0, gp
                  sltiu        t3, s1, 745
                  remu         s8, a4, s0
                  c.addi16sp   sp, -16
                  slti         s2, zero, -2017
                  srl          s2, s0, s2
                  add          a3, a7, s1
                  c.lui        a1, 29
                  remu         s3, s6, s7
                  c.addi       s11, 23
                  remu         a6, t2, s1
                  sub          gp, s11, t5
                  mulhu        a7, zero, a4
                  mulhsu       a2, s11, ra
                  srli         t1, t6, 21
                  lui          sp, 1015219
                  xor          s6, s6, a6
                  xori         t3, a4, -1024
                  sltiu        a7, gp, -1799
                  remu         s3, a1, t6
                  slti         s10, t1, 1746
                  rem          a1, s0, t4
                  c.sub        a1, s1
                  sltiu        a7, a2, -1245
                  sltiu        s6, s1, -1959
                  c.srai       a4, 11
                  c.addi4spn   a1, sp, 336
                  xor          zero, a5, t4
                  andi         s3, a6, -1196
                  c.sub        s0, a5
                  addi         s6, s4, -1000
                  mul          a7, a0, a0
                  srl          s2, a6, s0
                  c.or         a0, s0
                  mul          gp, s3, s1
                  slli         s9, a5, 24
                  sra          s10, tp, s5
                  auipc        sp, 465169
                  and          gp, zero, a5
                  slti         s4, s10, 1545
                  srli         a2, ra, 24
                  c.and        a1, s1
                  c.and        a1, a0
                  ori          a0, s0, 1209
                  mulhu        s2, a2, a5
                  slt          s8, s0, gp
                  slli         a7, gp, 1
                  divu         t1, s4, a5
                  srli         gp, t0, 28
                  remu         t0, a1, a2
                  srai         s10, s2, 5
                  rem          s4, s10, t4
                  c.srai       a3, 25
                  ori          sp, ra, -830
                  c.xor        a4, a0
                  add          tp, tp, ra
                  or           t0, a4, s3
                  auipc        gp, 653284
                  xori         s5, s2, 1954
                  andi         t5, s5, -1934
                  c.slli       s9, 27
                  srl          t5, gp, a7
                  slti         a0, s4, 1737
                  sltiu        a2, s9, -1047
                  slli         t5, sp, 22
                  c.addi16sp   sp, 464
                  andi         a1, s11, 1354
                  xor          t1, s9, s9
                  mulhu        s2, gp, t4
                  andi         s7, s2, -38
                  ori          a1, gp, -1134
                  c.or         s0, a2
                  c.srai       a3, 18
                  mul          gp, t3, a3
                  c.sub        a1, a5
                  c.mv         s2, s5
                  or           s5, a2, s7
                  mulh         t3, t2, s11
                  c.sub        a3, a1
                  mul          s10, t4, t2
                  slli         a0, ra, 0
                  c.mv         a1, t0
                  srl          gp, a3, s6
                  c.addi16sp   sp, 464
                  c.srai       a4, 26
                  c.slli       t6, 31
                  add          a6, s10, s1
                  c.lui        gp, 3
                  auipc        t3, 328650
                  andi         t5, a0, -2015
                  ori          a4, t6, 1338
                  mulhu        tp, s5, s1
                  slt          a5, t0, a0
                  c.addi4spn   a3, sp, 176
                  mulhu        s10, s2, s11
                  auipc        zero, 447704
                  c.andi       a4, -1
                  mulhsu       s0, s8, t0
                  c.addi16sp   sp, -16
                  addi         a2, a0, 454
                  slli         t6, ra, 4
                  c.addi4spn   s0, sp, 496
                  srli         s4, t4, 27
                  c.addi       sp, -1
                  c.sub        a1, a1
                  c.or         a2, a4
                  mulhu        t6, a2, t0
                  mul          s7, t5, s10
                  slt          t3, ra, a3
                  c.srli       a2, 10
                  lui          a6, 793213
                  mulhsu       zero, a4, t2
                  rem          t3, s3, t3
                  srai         tp, a6, 21
                  mulh         t0, t6, t2
                  srli         s7, s4, 20
                  c.srli       a3, 1
                  mulh         t0, s7, zero
                  srai         t3, s8, 5
                  sltiu        a2, s5, 1226
                  c.nop
                  c.addi16sp   sp, -16
                  sll          s10, s3, s3
                  sll          s9, s3, gp
                  or           s11, s5, s8
                  mul          s10, a0, s9
                  mulh         a6, t0, a5
                  c.xor        s0, s1
                  add          s0, a1, a3
                  auipc        s11, 736896
                  srl          t1, sp, s7
                  slli         t3, s3, 0
                  c.nop
                  sra          sp, t4, a7
                  c.sub        a0, a3
                  mulhu        a0, t1, gp
                  slt          a4, s8, a1
                  c.nop
                  slli         s4, t4, 22
                  xori         gp, s4, 1058
                  remu         t6, a1, ra
                  c.slli       t4, 28
                  mulh         s8, t5, s10
                  sltu         a2, tp, s1
                  remu         s11, tp, s4
                  c.srai       a4, 7
                  c.nop
                  addi         t6, ra, -1081
                  sltu         s9, s7, t4
                  remu         tp, s2, t4
                  c.srli       a3, 8
                  or           tp, a6, t3
                  div          s11, a0, s4
                  c.lui        tp, 15
                  auipc        s11, 426479
                  or           t4, s8, s4
                  remu         s9, ra, a4
                  mulh         a4, a5, a4
                  andi         s4, s9, -896
                  remu         a1, t4, t4
                  mulh         s8, sp, a3
                  c.li         s2, -1
                  c.srli       a2, 22
                  or           gp, t0, s10
                  c.and        a2, a3
                  sltu         a7, a0, s6
                  slli         sp, s6, 14
                  mulhsu       a1, a5, tp
                  c.nop
                  c.or         a1, a3
                  c.slli       t5, 6
                  mulhsu       t0, a2, t0
                  slti         s4, t1, -513
                  c.nop
                  c.or         a5, a0
                  remu         a3, s7, s2
                  c.li         s6, 2
                  slt          s6, t0, t5
                  mulh         t6, s1, t3
                  and          t1, s0, sp
                  c.srli       s0, 1
                  c.mv         s0, a2
                  addi         a5, s6, -1562
                  slt          a1, t1, s3
                  c.addi       tp, -1
                  andi         a6, a7, 1831
                  c.add        a3, ra
                  auipc        t0, 454821
                  slt          a1, a7, zero
                  c.add        s8, t0
                  xor          t5, s1, s8
                  c.mv         gp, a7
                  rem          a3, gp, t4
                  mulhu        sp, sp, t4
                  sltu         a1, t5, a2
                  c.li         a3, -1
                  c.mv         tp, sp
                  mulh         zero, s0, s7
                  c.addi4spn   a2, sp, 944
                  and          t5, a1, tp
                  srai         a4, t4, 11
                  c.nop
                  c.sub        a1, a1
                  c.mv         gp, t0
                  srai         s10, a7, 24
                  srl          tp, s7, t0
                  c.andi       a3, 30
                  sra          s3, s4, s6
                  remu         a1, t1, s2
                  slt          s5, s7, s10
                  c.srai       s0, 18
                  remu         a1, ra, sp
                  xori         s0, a7, -252
                  c.nop
                  andi         t0, zero, 1813
                  or           a0, s11, t6
                  slli         gp, t5, 16
                  sltu         a5, s3, s4
                  c.xor        a1, a1
                  andi         s7, sp, -326
                  sub          s4, s1, a3
                  c.sub        s0, a4
                  or           a5, s9, a0
                  xor          t1, tp, zero
                  mulh         s10, t0, t4
                  nop
                  mulhsu       a7, s0, a4
                  mulh         s4, s11, tp
                  c.addi       a1, -1
                  auipc        gp, 184991
                  c.srai       a3, 29
                  div          a6, s10, t4
                  lui          s9, 810739
                  mulh         t0, s11, s11
                  srli         t3, s11, 16
                  div          s3, a6, t1
                  ori          tp, tp, 1541
                  addi         a4, ra, -1108
                  divu         t3, s9, zero
                  sll          a2, s9, s10
                  remu         tp, t6, a3
                  addi         t1, t5, -1802
                  mul          s8, zero, a5
                  lui          s10, 992400
                  mulh         a2, s8, tp
                  sub          t3, s7, sp
                  c.andi       a0, -1
                  slt          s9, a5, sp
                  xori         s9, ra, 694
                  mulhsu       t6, sp, a4
                  addi         s8, s7, -589
                  mulhu        t3, s1, gp
                  c.sub        a0, a3
                  slti         s4, sp, 234
                  remu         a7, s10, s0
                  sub          t0, sp, t3
                  c.slli       a3, 30
                  mulhsu       a4, t2, ra
                  c.sub        s0, a4
                  remu         s8, s9, a0
                  c.andi       a0, 30
                  mulhu        t3, a2, t6
                  ori          a5, gp, -798
                  div          t5, s4, s9
                  lui          s11, 245782
                  c.slli       s2, 1
                  srl          t4, tp, t2
                  mulh         s4, t0, s2
                  c.xor        a3, a1
                  c.srai       a3, 5
                  sub          t5, s1, s11
                  divu         s8, tp, a6
                  srl          s11, t5, zero
                  rem          a2, a5, sp
                  c.mv         a4, t1
                  sll          gp, t1, ra
                  mulhsu       sp, sp, a4
                  c.and        a4, s0
                  mulh         s9, a3, s7
                  c.add        a7, s9
                  nop
                  sltiu        s6, s0, -1697
                  add          s4, a6, s2
                  c.and        a4, a3
                  c.slli       s9, 24
                  c.addi       t0, 3
                  ori          s0, ra, 827
                  rem          a4, t2, a2
                  mulhu        s9, s6, s3
                  addi         s9, s9, 834
                  mulhsu       a0, zero, t0
                  mulhsu       gp, a1, a5
                  mulhu        tp, a1, s9
                  c.addi4spn   s0, sp, 928
                  c.nop
                  mulhu        s2, a0, s5
                  c.and        a5, a5
                  c.addi4spn   a2, sp, 480
                  remu         s0, s4, s9
                  ori          s5, a5, 1474
                  c.li         s0, 19
                  auipc        s11, 508226
                  sll          tp, a5, a1
                  auipc        s11, 227839
                  lui          s10, 189316
                  xor          t4, s11, t0
                  sub          s3, a5, sp
                  mulh         a1, s3, a5
                  c.nop
                  and          a6, t3, a6
                  slti         s9, ra, 373
                  mulhu        a4, s0, a7
                  mulhsu       t5, gp, s8
                  c.xor        s0, a3
                  nop
                  c.lui        t1, 13
                  mulhsu       s5, t5, s3
                  c.nop
                  c.mv         s0, t0
                  c.li         t3, 16
                  c.andi       a4, -1
                  sra          sp, a1, s8
                  sltiu        s9, a2, -1285
                  c.sub        a1, a2
                  c.add        s4, a6
                  slti         s4, s6, -52
                  nop
                  mulhsu       a6, s1, s0
                  srli         t6, sp, 29
                  andi         t6, tp, -1805
                  c.or         a3, a1
                  remu         s11, s3, s8
                  sltiu        tp, a7, -1071
                  srl          a3, a3, t0
                  xor          a5, t3, s7
                  mulhsu       a2, tp, t6
                  srl          t4, s11, s10
                  c.or         s0, a1
                  slli         a4, t0, 22
                  rem          zero, t4, tp
                  or           gp, a0, t1
                  srli         s5, a2, 12
                  slti         a1, t0, 1973
                  c.srai       a1, 19
                  mul          t4, t3, a6
                  add          a0, a1, t2
                  xor          a6, s2, t1
                  c.li         a5, -1
                  c.add        t1, s4
                  sltu         t3, s6, s8
                  c.li         a7, -1
                  xori         t3, s1, 189
                  c.nop
                  andi         s9, t2, -1846
                  slt          s9, t3, a7
                  slli         s3, t4, 20
                  ori          a5, gp, 1643
                  c.or         s0, s1
                  c.li         a5, 5
                  xor          t1, a6, a5
                  auipc        s6, 264792
                  mul          gp, sp, ra
                  c.or         s0, a2
                  sub          tp, a1, s1
                  mulh         a0, s7, a6
                  xor          s11, s5, s4
                  c.mv         gp, s5
                  andi         zero, t0, -30
                  mulhu        a0, t3, zero
                  srai         a5, a2, 18
                  sltu         a3, t2, t2
                  sll          s5, s8, a7
                  or           s6, s7, t6
                  div          s7, s3, ra
                  div          a1, a7, t4
                  mulhu        s4, sp, a1
                  divu         s6, a5, s5
                  mulhsu       s9, s2, a3
                  sll          a7, a1, a2
                  remu         s4, a1, s9
                  c.mv         a6, s7
                  sub          s3, s3, a4
                  srai         a5, s6, 13
                  slt          s2, zero, t5
                  c.addi       s4, 15
                  mulhu        s5, s10, a2
                  c.nop
                  remu         s4, tp, t6
                  auipc        a2, 1014643
                  mul          s11, a7, a0
                  sra          s9, a0, s6
                  remu         a0, t6, t0
                  c.and        a1, a4
                  xor          s7, a3, s2
                  c.srli       a0, 31
                  div          s7, s1, a3
                  c.srai       a1, 20
                  rem          t6, s6, a6
                  srl          s7, a7, t0
                  sra          s11, sp, t3
                  srl          s8, t0, sp
                  c.srli       a5, 25
                  slti         a4, t1, 104
                  sltiu        gp, t6, 1936
                  rem          a0, t5, t5
                  c.sub        s0, a4
                  addi         a2, s6, -926
                  c.or         a1, a5
                  c.xor        a3, s1
                  rem          sp, s1, t2
                  c.addi       a0, -1
                  and          zero, a3, a6
                  sltu         s4, s5, s2
                  andi         a7, zero, 870
                  sltu         s8, a7, s10
                  mulh         s4, ra, a1
                  addi         gp, a5, 759
                  sltiu        a2, s3, 698
                  ori          s10, zero, -1109
                  c.slli       a5, 20
                  remu         tp, t5, t0
                  sra          s5, s5, a0
                  divu         t0, s0, a6
                  or           s8, a4, a5
                  mulhsu       t0, t3, s3
                  c.li         a7, -1
                  addi         t1, tp, 623
                  c.and        a1, a5
                  c.xor        a1, a1
                  andi         s11, s1, 1772
                  and          a4, s0, s4
                  auipc        sp, 728135
                  c.addi4spn   a1, sp, 944
                  divu         s11, a4, s1
                  slt          t0, a0, gp
                  srli         sp, s9, 23
                  sra          s2, a0, t6
                  srl          s7, s3, a0
                  slt          s8, t5, s3
                  c.or         a2, s1
                  c.addi16sp   sp, -16
                  c.andi       a3, -1
                  c.addi       s2, 18
                  c.addi16sp   sp, 480
                  c.addi4spn   a0, sp, 144
                  or           s11, s7, sp
                  mulh         a6, t1, sp
                  xor          s4, s3, s2
                  sra          a7, t6, s9
                  ori          a5, t2, -482
                  sub          s7, sp, a1
                  mulhu        a1, s2, a6
                  mulhsu       t0, ra, tp
                  and          a4, s5, s7
                  c.nop
                  mulhsu       a2, a7, s3
                  c.xor        a3, a5
                  nop
                  or           sp, s3, s2
                  mul          s2, a7, s5
                  srai         s11, s11, 15
                  remu         s9, gp, a6
                  andi         a2, sp, 1800
                  c.mv         tp, s9
                  mulh         gp, t3, s1
                  c.and        a2, s0
                  or           a5, s7, s7
                  rem          s7, a6, t6
                  ori          t0, s3, -15
                  sll          tp, sp, s5
                  c.andi       a4, -1
                  sll          s7, t1, s7
                  div          s8, zero, s5
                  c.andi       a0, 21
                  mulhu        s11, t1, s6
                  c.addi4spn   a2, sp, 720
                  c.srai       a3, 13
                  auipc        s9, 861226
                  rem          s4, zero, s11
                  sll          s6, a4, t4
                  or           s10, s4, a0
                  xori         s5, s11, 1733
                  sltu         s11, a7, ra
                  c.lui        tp, 22
                  div          a4, a3, s10
                  and          a6, s3, a0
                  xor          s11, t6, t3
                  mulhu        a0, a7, a6
                  mulhsu       s7, a2, s8
                  c.mv         gp, a6
                  mulhsu       a1, ra, t6
                  srl          s8, s8, t6
                  remu         a4, a0, s11
                  and          s5, a6, s8
                  srli         t3, s1, 11
                  slt          a5, s6, s5
                  c.nop
                  sltu         gp, s1, t3
                  c.addi4spn   a4, sp, 48
                  c.li         t6, 19
                  and          s4, t4, s8
                  c.sub        a0, a3
                  c.and        s0, a5
                  c.addi       a4, -1
                  c.srli       a1, 9
                  c.or         s0, a5
                  div          t1, ra, s0
                  srli         t6, a4, 8
                  slti         s3, s8, -1474
                  srai         t4, s11, 19
                  c.xor        a0, a5
                  sltu         s9, tp, a7
                  addi         t4, gp, -1055
                  mul          a4, tp, tp
                  slt          s7, a1, a5
                  div          a3, t4, t3
                  xori         a3, s2, -947
                  sub          t3, a7, t1
                  mulh         t1, s6, a5
                  mulhu        s2, s2, s9
                  or           s4, s2, s9
                  lui          t6, 348602
                  c.li         gp, -1
                  sra          a6, s6, s1
                  slt          a0, s1, t4
                  lui          t6, 466241
                  srai         s0, t5, 8
                  c.sub        a2, a5
                  sltiu        sp, a6, 1219
                  c.add        a6, s3
                  andi         s9, s3, -1399
                  xor          a1, s11, a3
                  c.lui        s8, 8
                  c.addi4spn   a3, sp, 192
                  c.and        a4, s0
                  or           a1, zero, a4
                  sub          a2, t1, s1
                  mulhu        t3, s9, t4
                  slt          a1, a7, t0
                  lui          t3, 813110
                  sltiu        s8, t5, 47
                  c.mv         tp, t1
                  add          sp, a1, s10
                  lui          a1, 992803
                  c.andi       a3, 19
                  c.add        t4, t4
                  c.andi       a2, 27
                  c.nop
                  slli         s9, zero, 18
                  addi         s10, s1, -2017
                  xor          a0, s2, t3
                  mulh         s2, t0, zero
                  c.or         a3, a5
                  xor          s5, ra, t4
                  c.xor        s0, s0
                  sra          a6, a2, sp
                  divu         s11, s7, s4
                  mulhsu       t3, s9, t6
                  divu         t0, a4, a3
                  srli         t6, a1, 20
                  c.and        a5, s1
                  remu         a5, s9, tp
                  c.lui        s3, 6
                  xor          s2, a1, t5
                  and          a6, zero, sp
                  div          t6, s1, a0
                  mulh         t6, s4, a1
                  xor          s0, s1, s10
                  nop
                  c.and        a1, a1
                  add          s0, a7, s7
                  c.andi       a2, 25
                  remu         s8, a7, t0
                  c.sub        a3, a5
                  c.nop
                  mulh         t6, s3, a1
                  add          a3, sp, t2
                  auipc        s0, 676838
                  c.nop
                  mulh         t0, s1, s6
                  c.lui        s4, 25
                  divu         s9, gp, a3
                  c.srai       a1, 23
                  c.add        tp, sp
                  addi         s2, s1, 858
                  srl          a5, s3, t4
                  and          a6, a5, gp
                  div          a0, sp, zero
                  slt          t4, gp, s1
                  mulhsu       s6, a1, s11
                  srai         a7, a0, 10
                  c.addi4spn   a0, sp, 496
                  c.nop
                  c.li         s5, -1
                  c.nop
                  mulhsu       t6, a0, t4
                  c.or         a1, a5
                  andi         s7, s3, -1450
                  remu         sp, s9, s1
                  and          a6, s6, a5
                  c.addi4spn   a4, sp, 192
                  sltiu        t3, a2, -95
                  c.sub        a1, s1
                  sub          gp, t3, s1
                  c.or         a2, a0
                  sltiu        gp, s8, 1870
                  mul          s4, ra, s2
                  sltiu        a7, s6, -621
                  c.mv         t0, tp
                  c.slli       s10, 2
                  srl          t3, s0, s11
                  c.lui        t1, 13
                  rem          t5, t6, a0
                  divu         gp, gp, zero
                  mulh         a3, t5, a5
                  c.srli       a1, 28
                  mulhsu       s7, s11, zero
                  slt          s0, s3, a4
                  slt          a1, s8, sp
                  srli         t6, s8, 9
                  c.nop
                  c.li         gp, 18
                  slt          s0, t5, s11
                  add          a0, t3, s4
                  and          a0, s8, t6
                  c.addi4spn   a0, sp, 560
                  srli         a1, s0, 25
                  c.addi16sp   sp, -16
                  xor          s7, tp, sp
                  andi         sp, a3, 991
                  addi         t4, s6, -1734
                  ori          s3, t3, -194
                  slli         sp, s10, 17
                  srl          gp, t3, tp
                  addi         zero, s5, -121
                  c.nop
                  c.lui        t1, 27
                  c.xor        a1, a1
                  c.nop
                  mulhu        s11, a3, ra
                  mul          s10, ra, s6
                  c.slli       s9, 4
                  c.srli       a1, 23
                  andi         s10, s3, -1410
                  c.srli       a0, 12
                  c.add        t3, s5
                  sltiu        s11, s9, 807
                  slli         s11, s5, 3
                  c.lui        a0, 20
                  add          sp, t2, s2
                  xor          gp, s3, s2
                  c.mv         a5, s8
                  c.or         a5, a2
                  c.addi       t6, -1
                  remu         s7, t6, a3
                  remu         s10, a2, tp
                  c.srli       a0, 8
                  c.li         s5, -1
                  addi         sp, tp, 617
                  c.addi       a6, 15
                  sra          a4, s1, t3
                  divu         sp, s4, t6
                  mul          a5, t5, s2
                  xori         s2, a4, 260
                  c.andi       a2, 21
                  slli         s2, s10, 17
                  divu         s3, s7, s7
                  and          t4, a5, tp
                  lui          a6, 256524
                  c.xor        s0, a0
                  mulhu        s8, t0, t2
                  sra          a1, s2, s8
                  c.slli       tp, 14
                  mulhu        t3, sp, s7
                  mulh         a6, s11, a1
                  sub          a6, t1, s3
                  or           tp, ra, s11
                  addi         s0, t1, 1135
                  addi         a5, a2, 585
                  sltiu        a0, a7, 1172
                  srl          t0, s9, t0
                  slti         a1, a6, 277
                  andi         a3, a7, 574
                  c.lui        a0, 15
                  slti         gp, s11, -685
                  addi         s7, s2, -1420
                  auipc        t6, 845693
                  addi         a3, s0, 1055
                  c.xor        a4, a2
                  mulhu        a1, a0, a3
                  mul          s7, s1, zero
                  c.li         a4, -1
                  sra          s7, s5, a6
                  c.sub        a3, a3
                  c.slli       tp, 13
                  mul          a2, a4, a0
                  c.xor        a4, a0
                  mulh         s6, s6, a3
                  mulhu        a7, t6, a6
                  sll          s11, t6, t6
                  mulhu        t1, s0, zero
                  and          s0, s6, a3
                  divu         t4, t2, t1
                  mulhsu       sp, t3, a0
                  sub          a6, t5, a1
                  c.add        s4, a7
                  or           zero, gp, ra
                  slti         t0, a0, 232
                  lui          s9, 850183
                  c.srai       a2, 12
                  add          s3, s11, t2
                  srli         t1, ra, 3
                  slti         t0, sp, 1139
                  c.or         a3, a3
                  mul          s9, t5, s1
                  slti         t4, s4, 1767
                  sub          s5, s8, s7
                  slti         s8, ra, 877
                  sltiu        a3, s7, -1506
                  c.addi       a2, 8
                  c.lui        a4, 23
                  mul          a7, s9, s6
                  c.andi       a3, -1
                  lui          s0, 2142
                  c.sub        a1, s1
                  slti         a5, s5, -1205
                  slt          s10, a7, s10
                  ori          t4, s7, 1750
                  and          t5, tp, s2
                  c.xor        a3, a0
                  mul          gp, a2, sp
                  c.lui        s10, 24
                  sltiu        s2, s4, -2
                  and          zero, t4, t6
                  sltiu        t5, zero, 744
                  mulhsu       t3, t0, t4
                  lui          s9, 367270
                  lui          a3, 150538
                  sltiu        a4, a3, -337
                  rem          s0, s0, a5
                  ori          s9, t4, -1774
                  c.srai       a4, 20
                  c.xor        a5, a2
                  xor          s8, s4, a0
                  sltu         a0, gp, t3
                  sra          s11, ra, ra
                  slli         t0, a0, 23
                  mul          a4, sp, t3
                  c.lui        s4, 30
                  srl          s5, t6, t3
                  c.nop
                  add          a1, t2, t6
                  addi         zero, sp, 1779
                  c.slli       s11, 14
                  xor          s0, t2, t6
                  srl          a1, a0, s0
                  slli         s11, gp, 31
                  andi         a5, s9, -1146
                  c.li         t5, -1
                  sub          t5, t0, s2
                  add          s0, s3, zero
                  mul          s7, a7, t0
                  divu         s8, s2, a3
                  c.slli       t3, 8
                  xor          s9, a6, t2
                  nop
                  nop
                  sub          t1, t1, a3
                  xor          s5, sp, s1
                  slti         s6, ra, 1044
                  c.xor        a2, a4
                  slti         a4, a4, 1044
                  mulhsu       t5, t3, a6
                  and          a1, a6, tp
                  rem          s11, s2, a4
                  srl          s9, a2, a0
                  sll          s2, a1, s2
                  xori         s6, t1, 1753
                  c.slli       t3, 12
                  c.slli       a3, 5
                  c.addi       t0, 5
                  c.addi16sp   sp, -16
                  c.nop
                  nop
                  c.srli       a3, 16
                  mul          s3, zero, t0
                  c.lui        t4, 8
                  c.srli       a1, 9
                  mulhu        a2, s4, s9
                  nop
                  c.lui        a4, 28
                  slti         tp, s7, -1328
                  xori         s7, a5, 1925
                  c.li         a3, 9
                  slti         s0, sp, 1642
                  add          zero, t1, a6
                  c.xor        s0, s0
                  srli         zero, a2, 14
                  c.srai       a1, 31
                  c.srli       a0, 15
                  auipc        a7, 345044
                  lui          a1, 1016852
                  slt          t3, t2, ra
                  c.addi4spn   s0, sp, 832
                  ori          s3, a5, 367
                  c.addi4spn   a4, sp, 960
                  mulhsu       gp, s5, zero
                  mulh         sp, s4, zero
                  xor          t6, s1, t5
                  xor          t0, a7, gp
                  nop
                  c.addi4spn   a2, sp, 464
                  c.and        a1, a3
                  remu         a2, s9, t5
                  rem          s10, t5, t6
                  div          t3, a7, s1
                  c.and        a1, a5
                  xori         a5, a2, -1783
                  mul          a7, a2, s10
                  nop
                  mulhsu       a1, sp, s11
                  c.sub        a1, a2
                  rem          tp, a6, a6
                  sltiu        s3, a3, 1378
                  div          gp, a7, a6
                  div          s2, a2, ra
                  c.or         a4, a3
                  slli         a1, a3, 23
                  mul          s6, sp, s7
                  slt          a3, a2, s8
                  mulhsu       s8, t4, t4
                  c.and        a5, a5
                  c.srai       s0, 8
                  sltu         t5, zero, ra
                  add          a2, s0, t1
                  c.li         a2, -1
                  slli         t6, tp, 5
                  mulh         s6, t3, s8
                  c.addi16sp   sp, -16
                  nop
                  c.sub        s0, a0
                  mulhu        t1, t6, s0
                  xor          a1, s11, t4
                  srai         zero, a5, 10
                  c.mv         tp, a2
                  addi         t0, a1, -330
                  andi         t0, zero, -1898
                  sub          s7, s8, s1
                  c.li         s2, -1
                  andi         a2, t4, 1618
                  div          s4, t6, a5
                  c.xor        a0, s1
                  add          s6, ra, t6
                  rem          t1, s5, s3
                  add          s6, s4, tp
                  srl          t5, s0, a4
                  c.li         a7, -1
                  c.xor        s0, a0
                  c.addi4spn   a0, sp, 848
                  c.srai       a2, 10
                  divu         tp, a3, a3
                  divu         a4, s1, s10
                  sll          a7, a2, tp
                  remu         s9, t2, s8
                  remu         tp, s2, a5
                  xor          s10, s2, t3
                  auipc        t3, 781257
                  c.sub        a1, s0
                  srai         s4, a2, 30
                  nop
                  xor          a2, a7, s9
                  c.srai       a4, 5
                  slti         t5, s10, 564
                  c.andi       a5, -1
                  sltiu        s5, s0, 877
                  c.srai       s0, 27
                  or           t3, ra, a3
                  c.addi16sp   sp, 240
                  remu         s0, s0, s5
                  c.addi       sp, -1
                  remu         sp, s4, s7
                  remu         a7, s6, s2
                  c.andi       a5, -1
                  sll          sp, s0, t3
                  c.and        a5, s1
                  rem          s9, s3, t4
                  c.andi       a1, -1
                  c.addi       s2, 23
                  c.slli       t5, 8
                  and          s4, sp, a6
                  sltiu        s5, s7, 572
                  auipc        t6, 878899
                  c.addi4spn   a3, sp, 544
                  sll          s4, a2, t0
                  c.addi       t6, 14
                  xori         sp, a5, -865
                  c.li         a1, 13
                  c.lui        a3, 29
                  or           t0, t1, t5
                  mulhsu       t4, a0, s6
                  addi         s5, ra, -1152
                  c.srai       a5, 16
                  div          tp, a2, s7
                  c.addi4spn   s0, sp, 320
                  c.and        a5, a0
                  add          a6, s9, a1
                  auipc        t1, 142747
                  slti         a7, s7, 330
                  remu         s10, a6, sp
                  rem          sp, sp, a3
                  c.and        a3, a1
                  c.add        a0, a4
                  div          tp, s4, t0
                  c.addi4spn   a3, sp, 864
                  slt          t6, s6, t3
                  c.addi16sp   sp, -16
                  xor          gp, s6, s3
                  sltu         s3, t3, t2
                  ori          s0, s3, -240
                  or           t0, t6, s2
                  c.srli       a0, 13
                  sub          t5, ra, a3
                  add          s6, gp, t2
                  mul          a5, zero, s10
                  sltu         a0, s4, s4
                  xor          zero, t3, s9
                  mulh         s11, sp, t1
                  mul          t1, s6, zero
                  sltu         s0, s3, s8
                  srli         s10, t6, 2
                  mul          a2, a5, gp
                  ori          t0, a1, -735
                  c.add        t0, s8
                  mulhu        t1, s1, t1
                  ori          a4, a0, 1128
                  div          s10, a0, t2
                  c.mv         s0, s3
                  srli         t0, a1, 14
                  sltu         a0, ra, gp
                  srai         s9, a1, 15
                  slt          s11, sp, s3
                  auipc        a3, 930782
                  div          s2, ra, t2
                  c.srli       a1, 23
                  rem          a2, t3, zero
                  c.or         s0, a2
                  xor          t0, zero, t5
                  slli         a6, t3, 16
                  slt          a5, sp, a7
                  add          s5, a7, s5
                  addi         s0, a3, -1957
                  c.and        a2, s1
                  lui          a3, 700150
                  mulhsu       a6, s2, a6
                  c.sub        a1, s1
                  nop
                  div          a0, t6, s7
                  andi         a7, s6, 341
                  mul          t1, a4, s1
                  sltu         sp, t0, a6
                  and          gp, s4, t1
                  addi         zero, t4, 818
                  and          a4, tp, t3
                  xori         t1, s6, 1480
                  c.and        a1, s1
                  div          gp, a2, a6
                  c.lui        a6, 31
                  nop
                  srli         s7, t3, 12
                  divu         gp, a3, sp
                  c.addi       t4, -1
                  slt          a6, s5, s7
                  c.sub        a1, a4
                  remu         a4, a5, a3
                  xori         s6, t2, -918
                  mulh         t6, s3, t3
                  srai         a5, t5, 12
                  sub          sp, tp, a7
                  c.sub        a0, a0
                  sub          a3, s10, s0
                  c.slli       s10, 20
                  add          a1, a0, s6
                  rem          tp, a2, s2
                  sub          a6, s0, a7
                  sltu         t4, t4, s3
                  c.srai       a1, 26
                  srli         s5, s3, 22
                  c.mv         a4, s10
                  remu         tp, s0, s10
                  remu         zero, a2, t2
                  c.addi4spn   a4, sp, 896
                  sub          t5, a4, a7
                  divu         s0, t3, t1
                  c.or         a3, s0
                  c.lui        t0, 4
                  c.addi4spn   a2, sp, 864
                  add          a6, sp, t3
                  nop
                  c.nop
                  srl          t5, t2, s3
                  c.and        a1, a0
                  c.xor        s0, a3
                  lui          a6, 529743
                  ori          a4, s3, -1449
                  c.or         a1, s0
                  sra          gp, a2, s5
                  c.nop
                  c.lui        t5, 23
                  sltu         s8, t6, s10
                  sltiu        a4, t5, 518
                  mulhu        t4, a5, a1
                  divu         a2, a5, a1
                  andi         t5, s8, 507
                  xor          s10, a0, ra
                  sra          s0, zero, a2
                  xor          t0, s1, a4
                  slti         t6, a3, -1578
                  or           t5, a5, t6
                  c.sub        a1, s0
                  rem          a5, s6, s7
                  sltiu        a0, a2, -1595
                  or           sp, s11, t6
                  c.srli       a0, 28
                  andi         zero, s0, -1524
                  c.lui        a2, 12
                  c.slli       s5, 18
                  c.lui        a0, 31
                  c.li         t4, -1
                  c.sub        s0, a0
                  srai         a3, t1, 19
                  mulhsu       t0, t6, s2
                  sll          a7, t0, zero
                  c.xor        a1, a3
                  ori          t6, t0, -1513
                  nop
                  sll          s6, a5, t0
                  mulh         a5, a6, t3
                  mul          a3, a4, a3
                  divu         a7, t4, a5
                  srl          s8, a3, a0
                  remu         a7, t2, t6
                  c.addi16sp   sp, -16
                  c.addi4spn   s0, sp, 624
                  andi         gp, s2, 779
                  c.addi16sp   sp, 448
                  mulhsu       a0, a5, t2
                  ori          s11, s9, 1116
                  c.sub        a3, s1
                  mulh         s5, t0, a4
                  remu         s8, a1, s6
                  div          s11, a6, s11
                  c.add        s6, s10
                  xori         gp, s6, 429
                  andi         a0, t1, -2018
                  andi         a1, ra, -1371
                  or           a0, s11, s5
                  mulhu        a1, a4, t6
                  slti         gp, a6, 21
                  sra          a0, s5, s1
                  mulhu        gp, a6, ra
                  mulhu        s7, t5, s8
                  mulh         s3, s10, a3
                  c.andi       a1, 17
                  sltiu        s9, a6, 289
                  mulhu        t5, t6, t2
                  c.addi       t4, -1
                  c.srai       a5, 10
                  div          a7, s3, s1
                  andi         s7, t6, 1856
                  c.sub        a0, s0
                  div          t4, a2, t0
                  slt          s8, ra, a3
                  srli         s6, a0, 26
                  rem          s9, sp, s10
                  or           a2, s9, t0
                  c.li         t4, 25
                  lui          t3, 935051
                  rem          gp, t1, sp
                  c.li         s9, 6
                  c.addi       s6, -1
                  remu         t6, s8, a5
                  remu         a1, s1, s6
                  remu         a3, t4, a5
                  c.nop
                  andi         s3, gp, 1923
                  xor          a5, sp, a1
                  srai         s9, t4, 30
                  andi         t0, a3, 476
                  add          t0, s0, a5
                  div          s0, a4, tp
                  srai         a0, t2, 2
                  or           s7, s8, a5
                  ori          a6, t0, 726
                  ori          a2, s6, -1700
                  c.or         a5, s0
                  c.or         a2, a2
                  slti         t5, gp, -1285
                  andi         s4, s9, 1889
                  srli         s10, t2, 5
                  c.and        a1, a5
                  and          t6, a1, t5
                  xor          t3, t4, a2
                  c.srai       a4, 26
                  sub          a5, a7, ra
                  c.addi       t5, -1
                  c.addi4spn   a0, sp, 688
                  c.li         t5, 7
                  divu         s0, s3, s0
                  andi         a2, a7, 1596
                  lui          s0, 974255
                  c.addi16sp   sp, -16
                  c.lui        s11, 20
                  nop
                  srai         t0, a1, 25
                  and          t1, t6, s11
                  ori          s8, t3, 1809
                  c.srai       s0, 24
                  c.li         s4, 27
                  srli         zero, gp, 5
                  c.and        a1, s1
                  sll          a7, tp, a0
                  c.li         a0, 0
                  ori          gp, zero, 1057
                  c.lui        s0, 25
                  add          s7, s7, s1
                  c.addi       s3, 14
                  sra          a4, t2, t2
                  div          s11, a1, zero
                  c.mv         sp, t6
                  sltu         t0, s1, s2
                  c.srai       a4, 25
                  lui          t1, 500393
                  remu         s0, t5, s0
                  c.or         a1, a4
                  c.addi       t0, 11
                  srai         s5, a6, 16
                  addi         a3, zero, -1718
                  srai         a0, s8, 7
                  c.add        s2, t2
                  c.srai       a2, 19
                  slt          a2, s7, ra
                  c.addi16sp   sp, 496
                  rem          s10, zero, t4
                  mul          s9, ra, a0
                  xor          s11, s7, t4
                  c.addi16sp   sp, -16
                  div          s10, tp, s6
                  c.add        a2, t3
                  c.slli       t1, 1
                  srai         s11, s2, 16
                  slti         a6, s11, 18
                  remu         tp, a3, t2
                  sltiu        t5, s7, 904
                  xori         t0, s1, 414
                  sltiu        s6, s2, 622
                  slti         s4, a3, -1097
                  mul          t4, s0, a4
                  c.or         a3, s1
                  c.or         a4, a5
                  c.lui        s0, 26
                  c.sub        a3, s1
                  c.andi       a3, -1
                  c.andi       s0, -1
                  and          a3, s4, s8
                  xor          a5, tp, t5
                  nop
                  c.sub        a4, a3
                  c.slli       s10, 23
                  xor          gp, s4, ra
                  srli         s2, t0, 19
                  mulhu        a7, zero, s6
                  c.sub        a4, a5
                  lui          a2, 759952
                  mulh         s2, s6, s10
                  c.nop
                  ori          s9, a2, -981
                  c.lui        s4, 8
                  mulhu        a7, t2, t0
                  nop
                  slt          a4, sp, a2
                  sra          a7, a5, s9
                  c.addi16sp   sp, 240
                  sra          a5, s8, t1
                  c.li         sp, -1
                  rem          gp, s5, s8
                  c.or         a1, a5
                  sltu         a3, a1, s10
                  slli         a1, a1, 6
                  c.xor        s0, a5
                  xori         t3, s5, -1237
                  lui          s2, 11942
                  xor          a7, a2, s4
                  and          t4, s7, a2
                  slt          a0, s4, s8
                  add          a4, t4, tp
                  c.andi       a0, -1
                  and          gp, s6, a3
                  or           t0, s8, t6
                  ori          a7, sp, -1384
                  rem          a7, s8, t3
                  srl          s6, t0, gp
                  slt          s8, s5, s10
                  c.addi16sp   sp, 496
                  c.and        a0, a0
                  divu         s7, a0, s9
                  srl          s7, a2, a6
                  divu         a4, a0, s7
                  c.srli       a5, 29
                  divu         a6, a7, tp
                  slt          t1, sp, s2
                  divu         a3, zero, s7
                  c.andi       a1, -1
                  mulhu        t3, a2, t0
                  c.nop
                  mul          t0, t2, s3
                  lui          s3, 855798
                  remu         s10, s2, a1
                  c.li         gp, -1
                  c.nop
                  add          s2, s1, gp
                  nop
                  c.nop
                  sltiu        a4, s9, 1422
                  and          a6, s2, a3
                  slli         sp, t6, 28
                  sll          s0, s6, a6
                  c.nop
                  slli         s7, ra, 9
                  and          a7, a7, t5
                  addi         a3, s11, 1815
                  mulhsu       a3, s2, gp
                  c.nop
                  c.addi4spn   s0, sp, 560
                  c.xor        a4, s1
                  div          a3, a5, s1
                  add          t0, a2, t6
                  add          s7, tp, sp
                  c.srai       a0, 3
                  c.mv         t0, s7
                  mul          a2, a4, s8
                  xor          gp, s1, a4
                  or           s6, s1, t6
                  xor          s6, s7, a0
                  c.srai       s0, 3
                  c.addi16sp   sp, 144
                  add          s5, s5, ra
                  rem          a2, t2, s6
                  mulhsu       s9, t2, s0
                  nop
                  or           a7, s11, s8
                  add          s9, s7, s2
                  nop
                  c.or         a0, s0
                  mulh         s7, s0, a1
                  c.lui        tp, 13
                  sltiu        t3, t2, -408
                  c.or         a1, s0
                  sltiu        s2, a6, 1787
                  add          s9, a3, s7
                  and          s0, s4, a2
                  c.srai       a0, 4
                  slt          t0, s3, s1
                  mulh         s8, s4, t5
                  remu         t0, a3, a5
                  ori          zero, a7, -430
                  nop
                  xor          gp, t1, s7
                  c.srli       s0, 22
                  c.xor        a5, a5
                  andi         a4, t5, -1063
                  c.and        a1, a2
                  c.addi16sp   sp, -16
                  c.and        a3, s1
                  mulh         tp, a6, t4
                  add          s11, s2, a7
                  divu         a7, t6, sp
                  sub          s3, s1, s10
                  c.addi4spn   a3, sp, 32
                  c.add        t5, a4
                  sltiu        zero, t5, -1013
                  c.addi       t4, 3
                  c.slli       s2, 29
                  remu         tp, s11, s10
                  c.and        a4, s0
                  add          s8, s8, s3
                  srai         t6, gp, 19
                  div          a7, zero, t4
                  c.or         a5, a2
                  sltiu        a3, a5, -613
                  mul          a3, s6, t1
                  auipc        s10, 714001
                  mulhsu       s8, t4, t0
                  sub          s11, s2, a1
                  c.li         gp, -1
                  c.nop
                  remu         s10, t6, a7
                  or           a0, a0, sp
                  div          a2, ra, s7
                  or           s3, s7, s2
                  c.srli       s0, 3
                  sltu         zero, t6, a4
                  xor          s6, s2, gp
                  c.mv         a1, s0
                  divu         t1, gp, t6
                  sll          zero, s2, t6
                  add          s3, a7, a7
                  c.andi       a3, 27
                  slti         zero, t1, -1290
                  nop
                  c.xor        a0, s1
                  sub          s5, s7, a7
                  ori          tp, s11, 1332
                  c.srli       a4, 1
                  c.and        a3, a2
                  c.sub        s0, a4
                  slt          sp, s9, a1
                  c.andi       a1, -1
                  c.andi       a3, -1
                  div          a4, s4, sp
                  xori         s11, a4, -270
                  c.addi16sp   sp, -16
                  c.srli       a0, 6
                  ori          s11, s3, 1072
                  divu         s7, s1, a4
                  xor          t4, s3, a6
                  c.andi       a5, 15
                  c.sub        a5, a0
                  lui          a5, 509967
                  sra          a3, a7, a6
                  c.or         s0, a0
                  add          s3, a0, t0
                  slli         a6, sp, 12
                  sll          sp, a6, s5
                  srli         s0, gp, 1
                  sltiu        a1, s7, -1718
                  srai         s9, s6, 8
                  nop
                  sra          a0, t0, a0
                  mulhsu       t1, a2, s11
                  divu         s11, a3, s6
                  c.addi4spn   a0, sp, 48
                  srl          s10, s5, a3
                  sltu         s6, a1, t4
                  rem          zero, tp, tp
                  divu         t5, s7, a6
                  c.sub        a5, a4
                  mul          s7, t1, zero
                  c.lui        gp, 13
                  c.li         s2, 16
                  c.mv         s0, t2
                  mulh         s6, t0, a3
                  slti         t3, s6, 1988
                  slli         s4, t1, 31
                  lui          s5, 525988
                  slti         s7, a7, 1666
                  c.addi       t0, -1
                  addi         s7, a1, 308
                  slli         a1, a6, 28
                  c.sub        a4, a4
                  sll          s6, t3, t2
                  divu         a0, s7, a3
                  c.and        a0, a0
                  mulhu        s4, t3, a2
                  ori          s2, a6, -344
                  c.srli       s0, 7
                  srli         a7, s2, 23
                  xori         s9, s3, 51
                  c.xor        a4, a2
                  c.addi16sp   sp, -16
                  c.sub        a1, a3
                  c.andi       a1, 9
                  c.addi16sp   sp, 464
                  c.andi       s0, -1
                  sub          gp, zero, s3
                  c.addi16sp   sp, 320
                  xor          s2, s7, tp
                  c.slli       s0, 30
                  c.lui        s5, 12
                  c.or         a4, a1
                  sra          a4, a6, s4
                  slt          a2, t5, t2
                  c.srai       a0, 21
                  c.add        s3, a6
                  remu         t1, s7, a5
                  mulh         t5, s0, t2
                  remu         a0, s2, t2
                  slti         s7, t4, -1931
                  andi         s11, a7, 1654
                  c.li         s5, -1
                  c.addi       s2, -1
                  div          a3, t3, a5
                  divu         a3, a3, a0
                  c.and        a1, s1
                  addi         a0, a3, -1799
                  c.xor        a0, a2
                  mulhsu       s6, s5, s0
                  or           s11, a6, t1
                  c.srai       a5, 20
                  rem          gp, s7, s11
                  andi         s9, a1, -1632
                  c.lui        a4, 8
                  divu         a1, t5, s1
                  srai         a6, a2, 17
                  c.li         s3, -1
                  div          s7, ra, t1
                  or           t5, t2, sp
                  c.srai       a3, 24
                  addi         s8, s2, -1595
                  mulh         t5, zero, s9
                  c.lui        gp, 23
                  slti         a4, t0, 61
                  sltiu        s7, s3, 399
                  addi         gp, s2, -1911
                  c.and        s0, a1
                  c.addi16sp   sp, -16
                  or           t5, a4, ra
                  c.li         a7, 3
                  slli         a0, t2, 20
                  c.and        a2, s1
                  c.and        s0, s1
                  c.addi       a4, 2
                  c.srai       s0, 5
                  slt          s11, t2, tp
                  c.sub        s0, a2
                  slli         a3, s2, 12
                  auipc        t5, 188500
                  c.xor        s0, a2
                  addi         s11, a5, 392
                  add          s8, s4, t6
                  c.li         t0, -1
                  c.addi16sp   sp, 336
                  sll          gp, s4, s3
                  slli         t5, t6, 28
                  mulh         zero, s1, tp
                  c.and        a1, a0
                  auipc        s4, 875014
                  div          s8, s1, s4
                  add          gp, t5, ra
                  srli         tp, a4, 21
                  mulhsu       s4, t1, t4
                  div          s11, a6, a1
                  sltu         t6, a3, a0
                  c.mv         s3, tp
                  xori         a6, zero, 165
                  auipc        s6, 124674
                  c.srai       a2, 18
                  slli         a6, s4, 16
                  c.addi16sp   sp, 432
                  divu         a6, a7, s5
                  xor          a5, t6, s9
                  sltiu        s0, t3, 912
                  remu         tp, s6, t2
                  auipc        s10, 815255
                  sltiu        s6, s2, -1090
                  div          a3, gp, s7
                  xor          s11, s5, s2
                  c.addi16sp   sp, -16
                  xori         t3, s6, -196
                  srai         a3, s2, 4
                  c.andi       a2, -1
                  mulhu        t1, sp, s11
                  c.srai       a2, 25
                  srl          s4, a2, tp
                  c.lui        t5, 23
                  mulh         s10, s5, s5
                  c.slli       a2, 10
                  auipc        s3, 624989
                  lui          t0, 467103
                  c.srai       s0, 30
                  c.nop
                  xor          s6, zero, t1
                  c.addi16sp   sp, 400
                  sra          a0, sp, a3
                  c.mv         s4, s9
                  c.nop
                  auipc        a0, 308584
                  addi         a3, t3, 1844
                  slli         t0, zero, 26
                  c.mv         a2, t1
                  srai         tp, s8, 25
                  c.add        s4, t4
                  c.xor        s0, a4
                  sra          s6, s5, t2
                  c.mv         a1, a6
                  la x1, test_done
                  jalr x0, x1, 0
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
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_2:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_3:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_4:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_5:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_6:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_7:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_8:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_9:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_10:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_11:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_12:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_13:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_14:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

mmode_intr_vector_15:
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  addi x7, x7, -4
                  sw  x9, (x7)
                  add x9, x7, zero
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x7, x9, zero
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x16, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x16, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x16, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x16, x19, ecall_handler
                  li x19, 0x1
                  beq x16, x19, instr_fault_handler
                  li x19, 0x5
                  beq x16, x19, load_fault_handler
                  li x19, 0x7
                  beq x16, x19, store_fault_handler
                  li x19, 0xc
                  beq x16, x19, pt_fault_handler
                  li x19, 0xd
                  beq x16, x19, pt_fault_handler
                  li x19, 0xf
                  beq x16, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

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
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x9, x7, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x7, x9, zero
                  lw  x9, (x7)
                  addi x7, x7, 4
                  mret

load_fault_handler:
                  add x9, x7, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x7, x9, zero
                  lw  x9, (x7)
                  addi x7, x7, 4
                  mret

store_fault_handler:
                  add x9, x7, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x7, x9, zero
                  lw  x9, (x7)
                  addi x7, x7, 4
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x9, x7, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x7, x9, zero
                  lw  x9, (x7)
                  addi x7, x7, 4
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x9, x7, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x7, x9, zero
                  lw  x9, (x7)
                  addi x7, x7, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x9, x7, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  add x7, x9, zero
                  lw  x9, (x7)
                  addi x7, x7, 4
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
