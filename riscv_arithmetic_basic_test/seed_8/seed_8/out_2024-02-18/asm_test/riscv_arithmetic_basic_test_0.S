.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x13, 0x40001105
                  csrw 0x301, x13
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 0
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  li x13, 0x0
                  csrw 0x304, x13 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x4c8235a9
                  li x3, 0xd70b60be
                  li x4, 0xfb894677
                  li x5, 0xfe14f67c
                  li x6, 0xb
                  li x7, 0xfd37e89a
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0xf78de2cf
                  li x11, 0x5147c9b2
                  li x12, 0xa
                  li x13, 0xd69adebd
                  li x15, 0x6
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x2
                  li x20, 0x1
                  li x21, 0xf4b3d3e9
                  li x22, 0xb
                  li x23, 0x80000000
                  li x24, 0x84b93e19
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xfd803a3b
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xf8331a30
                  li x31, 0x80000000
                  la x14, user_stack_end
main:             mulhu        s6, t3, tp
                  c.srli       a2, 22
                  srl          s7, a3, s7
                  mulh         t3, ra, a2
                  slti         t3, a2, -331
                  add          s1, tp, t3
                  c.li         s2, 31
                  addi         a6, a5, 693
                  lui          t2, 453405
                  nop
                  sll          s0, a5, s0
                  andi         t2, t2, -1520
                  sra          a7, tp, t3
                  c.xor        a2, s1
                  sll          s4, s1, s9
                  c.lui        gp, 11
                  mul          a0, a6, gp
                  c.or         a0, a5
                  c.andi       a5, 26
                  mulh         a7, t4, t5
                  add          gp, s10, a7
                  mul          s11, a3, a2
                  remu         ra, t4, a5
                  c.sub        a5, s0
                  slli         a7, t0, 18
                  sltiu        s10, zero, -937
                  sltu         sp, a6, zero
                  c.srli       s1, 16
                  or           s5, s6, s11
                  and          s9, t1, s0
                  rem          a5, a1, s1
                  sub          a6, a3, t4
                  c.srli       a2, 6
                  auipc        ra, 519535
                  nop
                  nop
                  c.srli       s0, 17
                  c.nop
                  c.and        a2, a4
                  sltu         t1, s11, t5
                  auipc        a2, 736065
                  nop
                  mul          a5, s7, tp
                  srl          a3, a7, a4
                  divu         t4, t2, a4
                  sltiu        t4, a1, 1282
                  div          a5, t0, tp
                  remu         t6, s5, t2
                  add          sp, sp, a2
                  c.mv         s1, t2
                  sra          s6, s5, s6
                  c.add        t5, s1
                  c.srai       a3, 1
                  mul          s0, t4, t2
                  add          s0, a5, s4
                  mulh         s1, zero, a0
                  c.mv         t2, s7
                  srl          s11, a5, t0
                  ori          s2, s5, -1030
                  add          s1, t1, a3
                  c.addi16sp   sp, 16
                  sltu         t3, a2, a0
                  c.add        s7, a6
                  nop
                  or           t1, s9, gp
                  mulhu        a2, s7, s0
                  srai         s0, s3, 15
                  c.li         s2, -1
                  nop
                  c.or         s0, s1
                  c.addi4spn   s1, sp, 432
                  sltu         s9, s8, ra
                  sltiu        a1, a3, -1846
                  srl          t1, a7, gp
                  sltiu        tp, s4, 945
                  srli         t4, t0, 8
                  ori          t4, s1, 1101
                  sltu         s11, a6, a2
                  c.add        ra, t1
                  xori         zero, a1, 1309
                  andi         a5, a4, -1820
                  auipc        t4, 846549
                  slli         a3, t4, 17
                  xor          sp, a0, a2
                  addi         t3, t4, -536
                  srai         a7, s9, 10
                  c.lui        t4, 2
                  c.addi       t6, -1
                  c.xor        a0, a2
                  xor          gp, t4, a5
                  c.nop
                  mulh         a2, a1, a5
                  c.nop
                  srli         sp, zero, 29
                  divu         s6, s6, a3
                  rem          a2, tp, t5
                  mulhu        a7, t2, a3
                  ori          zero, sp, -736
                  or           s6, a7, s1
                  c.xor        a2, a0
                  remu         tp, a1, a2
                  mul          zero, t2, s5
                  c.addi       s2, -1
                  slti         ra, ra, 1537
                  c.addi4spn   s1, sp, 560
                  c.andi       a5, 20
                  c.addi       a2, 10
                  srl          sp, s1, s9
                  c.or         a1, a4
                  c.mv         s1, a3
                  mulhsu       s8, a7, t4
                  add          sp, t0, t0
                  c.lui        t5, 3
                  sll          t4, a5, zero
                  c.and        a5, a3
                  c.srli       a1, 9
                  slti         tp, gp, -1846
                  rem          t6, a3, t5
                  sll          gp, s10, s1
                  c.sub        s1, a4
                  or           s10, s9, a7
                  or           s11, gp, s10
                  c.lui        s2, 12
                  c.or         a1, a2
                  c.add        t5, s11
                  div          a6, a1, s4
                  sll          gp, s3, t2
                  and          s4, a0, t2
                  srl          s9, a0, t1
                  c.addi       s4, 22
                  nop
                  c.xor        a2, a0
                  sltu         s11, s1, s6
                  sll          s1, tp, s3
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  c.sub        a0, a3
                  c.addi4spn   a1, sp, 608
                  remu         t2, s9, gp
                  add          t5, a5, s7
                  c.mv         a2, s5
                  c.sub        s0, a4
                  srl          a2, s7, s5
                  c.andi       a5, -1
                  xor          s2, tp, s0
                  sltiu        t2, t0, 1928
                  mulhu        a7, a3, zero
                  c.srai       a2, 24
                  slli         a3, t3, 16
                  c.srli       a3, 31
                  or           s1, t5, gp
                  sub          a3, gp, s0
                  addi         a2, a7, -1880
                  or           a7, t2, a3
                  slt          s5, zero, t1
                  or           t2, a6, zero
                  slt          s5, tp, s8
                  c.mv         s1, a5
                  c.or         s0, a4
                  c.srli       a3, 9
                  srl          a7, s6, s3
                  divu         sp, a2, s10
                  c.sub        a5, a3
                  lui          gp, 381616
                  c.addi       s2, -1
                  c.add        a0, a0
                  ori          s1, ra, 1300
                  slti         a0, gp, 1801
                  c.sub        a0, a4
                  slti         t2, a1, 998
                  c.and        a5, a5
                  sltu         s0, a1, a2
                  c.mv         a5, sp
                  c.nop
                  mulhsu       s4, s8, gp
                  ori          a5, s2, -1705
                  nop
                  c.or         a2, a4
                  mulhsu       ra, t5, a2
                  c.slli       s1, 6
                  c.sub        a2, a4
                  c.srai       a3, 10
                  mulhsu       ra, t1, t3
                  mul          s7, sp, sp
                  c.sub        a0, a5
                  auipc        s1, 832435
                  slli         s2, s3, 25
                  divu         a7, gp, t1
                  c.xor        a0, a1
                  addi         a0, a7, 1121
                  srl          s5, t2, t2
                  c.andi       a5, -1
                  or           ra, s1, s1
                  divu         gp, a4, t0
                  c.and        s1, a5
                  mulhu        t1, a2, zero
                  c.slli       a2, 6
                  auipc        s11, 32970
                  c.addi16sp   sp, 416
                  c.srli       a2, 21
                  rem          s11, t2, s1
                  c.mv         s4, t3
                  c.mv         tp, t5
                  slli         t2, sp, 29
                  mul          t2, s7, s4
                  c.nop
                  xori         s11, a0, -1392
                  slt          s6, s7, s0
                  mulh         gp, zero, zero
                  lui          t5, 774299
                  sltiu        tp, t2, 1230
                  mulhsu       ra, sp, a7
                  add          t6, a1, s6
                  c.srai       a3, 23
                  c.xor        a2, a3
                  xor          a1, s2, s1
                  c.and        a1, s1
                  add          tp, s2, a7
                  c.nop
                  c.mv         s9, s4
                  c.addi       s8, -1
                  and          t6, sp, s9
                  slli         a2, s11, 11
                  slli         s0, s0, 12
                  c.sub        s1, a3
                  ori          a1, a0, -876
                  c.mv         s2, s7
                  c.and        a0, a3
                  mulhsu       a5, a7, t2
                  divu         s2, sp, zero
                  lui          tp, 2149
                  c.li         s7, -1
                  c.nop
                  slli         s5, s10, 26
                  sub          t6, s4, s6
                  c.lui        s7, 31
                  srai         t6, s10, 18
                  rem          s4, t0, s1
                  c.lui        t5, 10
                  addi         t4, a5, -128
                  lui          s11, 111496
                  c.li         sp, -1
                  mulhsu       tp, gp, t0
                  slt          s8, a6, s9
                  and          a5, s1, t2
                  mulh         t6, a5, s3
                  c.andi       a3, -1
                  andi         a0, s0, 670
                  xori         a3, gp, 446
                  sltu         s9, t3, s9
                  xori         t1, ra, 440
                  c.addi       t1, -1
                  slt          zero, t5, zero
                  sltu         t1, t1, s11
                  c.andi       a5, -1
                  rem          s4, s8, s11
                  c.slli       s11, 19
                  c.xor        s1, a3
                  c.addi4spn   a2, sp, 208
                  srai         a3, s3, 24
                  slti         t5, a3, -2011
                  c.addi4spn   a2, sp, 640
                  sra          tp, s8, s6
                  c.add        s11, t4
                  divu         s8, gp, gp
                  auipc        s0, 620975
                  c.srli       s0, 20
                  divu         a2, t1, t0
                  slli         t6, s7, 27
                  slti         s10, a0, 198
                  c.addi       s10, -1
                  slti         s8, a0, 267
                  auipc        s0, 907239
                  c.or         a5, a1
                  add          s1, s11, ra
                  sltu         a3, s5, t1
                  rem          a6, t0, ra
                  divu         a7, s10, s5
                  nop
                  c.sub        s1, a4
                  auipc        t1, 390803
                  c.slli       a1, 13
                  remu         t1, s10, s5
                  xor          t5, s0, t3
                  srai         ra, s11, 26
                  rem          s6, a5, tp
                  and          s0, s9, s8
                  c.addi16sp   sp, -16
                  sra          t4, t1, s10
                  c.mv         s8, s6
                  divu         s0, s1, zero
                  c.srai       s1, 10
                  slti         a5, s3, -767
                  c.slli       s7, 9
                  mulhu        t6, t5, s3
                  sra          tp, s3, a3
                  c.addi       s10, -1
                  addi         t2, a7, 179
                  addi         s5, s3, 427
                  c.addi16sp   sp, -16
                  addi         t6, ra, 1084
                  srli         s9, a5, 2
                  slt          s0, a1, t3
                  slli         a2, a7, 31
                  c.and        a5, a0
                  mulhu        a0, a6, s1
                  mulhsu       s9, t4, s8
                  rem          s6, s10, gp
                  or           a1, a4, s5
                  ori          a0, zero, 1247
                  c.xor        a0, a5
                  c.xor        a3, a4
                  nop
                  rem          a7, sp, s2
                  lui          s2, 490016
                  div          a3, gp, s1
                  remu         s5, a7, t6
                  sltiu        t3, s8, 1682
                  c.srai       s1, 13
                  c.addi4spn   s0, sp, 944
                  addi         a3, a7, 156
                  auipc        a7, 720445
                  c.sub        s1, a4
                  divu         a6, s9, sp
                  c.and        a0, a4
                  xor          s2, s3, gp
                  c.addi       t3, -1
                  xor          a2, s8, t1
                  nop
                  c.xor        a3, a3
                  mulhsu       a5, a3, s3
                  c.addi       s2, 29
                  c.add        t1, s11
                  and          a0, tp, gp
                  mulh         gp, s9, t1
                  lui          t3, 113755
                  and          t4, s4, t0
                  c.sub        a1, a1
                  or           t5, s1, t3
                  nop
                  andi         zero, a2, -1159
                  srai         t5, s8, 9
                  divu         zero, s4, s8
                  c.srai       a1, 5
                  mulhsu       s2, s7, t4
                  addi         ra, s9, 139
                  andi         t1, zero, -1521
                  c.and        a2, s0
                  c.and        a1, a1
                  auipc        a2, 286999
                  srai         zero, s5, 16
                  srli         s5, s1, 30
                  rem          sp, t0, t0
                  srli         s6, t5, 3
                  div          a6, tp, s10
                  srli         t6, tp, 12
                  andi         s6, t5, -1540
                  srl          s5, s3, s10
                  c.addi       ra, -1
                  c.add        sp, a4
                  xor          s7, a4, s9
                  c.lui        s2, 27
                  srl          a5, tp, gp
                  addi         s11, s6, 672
                  srli         s1, s5, 13
                  add          ra, zero, s10
                  c.srai       a0, 18
                  c.or         a5, s0
                  c.add        a7, gp
                  mulhsu       s5, s5, s6
                  ori          gp, s3, -1482
                  mulhsu       t4, a1, t4
                  c.mv         gp, s4
                  andi         t2, t3, -1360
                  c.addi16sp   sp, -16
                  mulhsu       tp, s1, s7
                  remu         s11, zero, ra
                  ori          t1, a1, -1207
                  xor          s10, a7, a3
                  c.srli       s0, 24
                  ori          a6, s4, -614
                  c.srli       a1, 19
                  xori         a6, s1, 427
                  c.lui        s8, 29
                  xor          a5, a3, s10
                  andi         a6, sp, 1667
                  rem          s5, a3, s5
                  slt          s1, s7, s4
                  c.nop
                  c.sub        s0, a2
                  c.and        a0, s1
                  sltiu        a6, s9, 1725
                  c.addi       s0, -1
                  c.andi       a3, 16
                  c.lui        t2, 29
                  srai         s5, t0, 17
                  slt          a1, a3, t2
                  c.li         a5, 11
                  xor          a7, t3, s8
                  sll          s10, s11, t6
                  sub          s7, t6, s5
                  and          tp, s11, s11
                  c.nop
                  mulhu        s2, s9, a1
                  sll          t2, t0, a2
                  xor          t5, s3, sp
                  addi         ra, s9, -1825
                  c.addi       ra, 15
                  add          s0, s10, sp
                  sltiu        s2, s9, 76
                  c.lui        a0, 10
                  div          s1, s9, s8
                  add          t2, a0, ra
                  c.addi       a7, 1
                  auipc        t3, 712983
                  mul          t1, s4, a5
                  sub          s9, ra, s8
                  divu         s2, s4, s0
                  c.sub        a5, a5
                  addi         t1, zero, -57
                  add          s1, a4, s11
                  auipc        a7, 949957
                  c.addi16sp   sp, -16
                  sltu         s5, a1, s6
                  xor          t5, t6, t3
                  xori         s1, s3, 1799
                  c.or         a3, a3
                  xori         s11, s5, -1101
                  sltu         gp, a7, s5
                  xor          s5, s8, s8
                  c.lui        gp, 10
                  c.addi       t2, 25
                  c.sub        s1, a4
                  nop
                  mulhu        tp, s9, a6
                  sra          s8, tp, gp
                  c.srli       s1, 30
                  c.addi16sp   sp, 288
                  c.and        a5, a0
                  and          s10, a6, a1
                  srli         a3, a3, 13
                  c.nop
                  mulhsu       a3, s1, s5
                  remu         s7, a2, sp
                  c.nop
                  mul          a7, s10, t4
                  or           t2, s11, a3
                  srai         a1, t0, 1
                  add          t2, a5, a0
                  mulhu        a5, s0, a4
                  sltu         a0, s6, s0
                  xor          a6, s1, t1
                  rem          a2, a4, s4
                  divu         a5, s6, s7
                  srli         t1, a2, 25
                  mul          t1, a5, t3
                  mul          t4, s10, s11
                  c.srai       s0, 26
                  c.nop
                  div          t1, t0, s5
                  div          t1, a6, s1
                  sra          s2, t3, t6
                  srli         a7, s1, 15
                  c.lui        t1, 8
                  c.add        ra, s6
                  c.lui        s6, 4
                  c.xor        a3, s1
                  sra          s11, t2, a2
                  c.srli       a0, 9
                  c.slli       s8, 30
                  remu         gp, s0, a3
                  c.sub        s0, a4
                  c.lui        a2, 28
                  c.li         sp, -1
                  slti         t1, s9, 1382
                  remu         t6, s6, t2
                  srli         t3, a0, 21
                  c.addi4spn   a5, sp, 880
                  c.addi       s4, -1
                  lui          s10, 1003197
                  slli         t6, t4, 4
                  addi         a3, s6, 619
                  slti         a1, zero, 1207
                  mul          s4, t3, a4
                  c.addi16sp   sp, -16
                  nop
                  auipc        a5, 33264
                  c.add        s5, s9
                  c.mv         t4, a1
                  sltu         a3, a1, t6
                  rem          a6, s10, s1
                  c.andi       a5, 17
                  remu         tp, s10, zero
                  c.xor        a2, a3
                  divu         a6, s7, s8
                  mul          s10, s11, a6
                  c.addi16sp   sp, -16
                  c.nop
                  addi         s4, s6, 1352
                  slti         s7, s5, -1063
                  c.xor        a3, s1
                  c.srai       s1, 20
                  rem          tp, s6, t2
                  divu         s11, a6, s8
                  remu         s11, a3, t1
                  slti         a2, s11, 1870
                  and          s6, a4, s7
                  sltu         a0, s2, s9
                  c.slli       s6, 30
                  srl          s0, a4, s9
                  c.addi16sp   sp, 80
                  sltiu        t2, s7, 447
                  sltu         a3, s5, a4
                  c.xor        a1, a0
                  sltiu        tp, s7, -1291
                  xori         a1, a0, -1716
                  addi         a7, s2, 1619
                  mulhu        s5, a4, s1
                  c.li         t3, 17
                  c.or         a1, a2
                  ori          t1, s5, 1791
                  c.nop
                  mulhsu       a5, s1, s10
                  slti         a0, gp, -231
                  auipc        gp, 68980
                  addi         t3, a5, 1908
                  auipc        a3, 352893
                  c.addi4spn   a0, sp, 832
                  c.lui        a2, 12
                  c.or         s0, s1
                  slt          s5, s7, a4
                  sltu         tp, s6, s7
                  mulhsu       sp, a2, a5
                  c.lui        tp, 31
                  xori         a3, ra, 1868
                  slli         a0, t3, 9
                  xor          s8, gp, a0
                  slli         a7, t3, 9
                  mul          s9, s2, t6
                  slli         ra, t0, 23
                  c.xor        a0, a5
                  srl          s10, s9, s1
                  slli         s4, t3, 22
                  srl          t4, s3, t4
                  ori          tp, s6, -605
                  remu         t5, t4, a3
                  c.and        a2, a5
                  c.addi       s7, -1
                  c.li         s7, 21
                  c.andi       s1, -1
                  slti         t1, sp, 2025
                  sltu         gp, sp, zero
                  auipc        s11, 799109
                  c.mv         a0, s6
                  mulhsu       s4, s5, sp
                  lui          t5, 3638
                  c.lui        t4, 21
                  c.mv         a5, t2
                  c.add        gp, a6
                  remu         s7, t6, a6
                  srl          a0, a3, s5
                  xor          a6, tp, t3
                  andi         a7, s7, -652
                  xori         s7, zero, 1310
                  sra          zero, t5, s3
                  c.slli       t5, 28
                  c.add        s11, t4
                  lui          a3, 990646
                  c.srli       a0, 17
                  and          s5, a1, a7
                  c.li         s8, 8
                  slt          ra, a3, s11
                  c.nop
                  c.add        s4, t6
                  c.and        a3, a4
                  c.srli       s1, 1
                  sltiu        s11, a7, 1504
                  c.lui        gp, 9
                  or           t5, sp, t6
                  div          s4, t1, s1
                  and          s0, t0, a6
                  nop
                  andi         a5, t0, 2043
                  addi         gp, a0, 284
                  mulhu        s0, s3, sp
                  sltiu        a2, s0, 491
                  srl          t5, s11, a1
                  c.addi4spn   a3, sp, 640
                  mulh         t6, t0, t5
                  mulhu        s8, sp, zero
                  sra          zero, t1, gp
                  mul          a6, sp, s1
                  c.addi       s2, 14
                  add          t5, t5, s0
                  divu         t3, t0, s7
                  mulh         s9, t2, s7
                  sltiu        s0, t0, 306
                  srl          s1, a5, s10
                  c.slli       s10, 26
                  sll          a1, a5, a0
                  sltiu        ra, a1, 170
                  srl          t2, t6, a1
                  auipc        a0, 310939
                  c.nop
                  c.srli       a0, 13
                  sltiu        s0, a3, -681
                  mul          s5, a6, a5
                  auipc        s11, 1035223
                  mulhsu       t4, s6, tp
                  slli         s10, a4, 3
                  slti         a1, s10, -806
                  c.or         a5, s0
                  and          t2, t2, a4
                  srai         s9, s4, 8
                  c.and        s1, a4
                  srli         s11, a4, 5
                  c.srli       a2, 23
                  c.li         s5, 30
                  sltiu        t1, s8, -808
                  c.srai       s0, 18
                  c.slli       ra, 7
                  sltiu        a7, t5, 615
                  slti         t2, t0, -1048
                  c.andi       s0, 6
                  c.addi4spn   a5, sp, 832
                  c.addi16sp   sp, 352
                  lui          a5, 230031
                  c.slli       a5, 18
                  sltu         s5, ra, s10
                  sll          s7, t1, t3
                  c.mv         a6, s2
                  c.xor        a3, a0
                  sll          sp, s6, s8
                  divu         t3, gp, zero
                  c.or         a5, a2
                  divu         s1, t1, s1
                  c.addi       s8, -1
                  sra          gp, t3, s9
                  mulhsu       t3, s4, a2
                  lui          a2, 236655
                  c.and        s0, a4
                  and          t2, t4, s11
                  xor          s10, a0, s7
                  nop
                  c.sub        a2, a4
                  c.andi       a5, -1
                  ori          a6, t2, 444
                  c.and        s0, a3
                  c.or         s0, s1
                  lui          t3, 314342
                  srai         s11, s6, 11
                  c.and        a0, a2
                  c.addi       a5, -1
                  xor          t4, t0, s10
                  nop
                  mulhsu       a6, sp, s7
                  xori         a3, s0, 1300
                  lui          tp, 442780
                  div          s11, t6, s0
                  sub          a2, a3, gp
                  or           s8, s2, a4
                  rem          s2, s4, s6
                  c.and        a2, a4
                  slt          a0, sp, s5
                  srai         a3, a5, 16
                  addi         ra, t5, 1382
                  ori          a0, a5, 1191
                  slti         t3, t2, -561
                  srli         s9, zero, 7
                  divu         tp, s0, a6
                  srai         s0, a6, 21
                  c.li         t1, 22
                  c.addi       s9, 7
                  mulhu        s11, a5, s1
                  sll          tp, s4, a7
                  srl          s8, a1, s1
                  ori          s11, s9, -619
                  sltu         t5, s11, s4
                  srl          t1, s9, s3
                  c.addi16sp   sp, 16
                  ori          a3, t1, -1937
                  divu         s4, a7, a6
                  addi         s1, t3, 434
                  c.xor        a5, s0
                  or           s5, sp, s8
                  mulhu        t2, s11, a7
                  c.sub        s1, s0
                  srai         t6, zero, 1
                  c.and        s1, a1
                  c.and        a2, a5
                  c.add        a0, t6
                  or           s2, zero, s1
                  addi         s7, s6, -383
                  srai         t6, t4, 16
                  nop
                  slti         s11, t3, 1621
                  srli         s5, a1, 4
                  xori         tp, a7, 94
                  xor          s2, s5, s10
                  lui          a3, 455611
                  ori          s10, t5, 1428
                  lui          t5, 482600
                  mulhu        t3, zero, t4
                  rem          t2, a5, s1
                  mulhsu       a3, s0, s0
                  rem          t2, zero, s6
                  c.andi       a3, 15
                  c.addi4spn   a5, sp, 848
                  sltiu        s10, a4, 1260
                  mulh         s6, zero, t6
                  mul          t6, s10, t1
                  sltu         zero, s5, s1
                  mulh         a3, gp, a5
                  c.li         ra, 16
                  c.srai       s0, 2
                  c.lui        tp, 17
                  lui          t2, 167153
                  mulhsu       a2, t4, s1
                  sll          ra, t0, s7
                  c.mv         s8, a0
                  srli         s0, s6, 29
                  xor          a1, zero, t0
                  and          s7, t5, s3
                  c.sub        a5, a3
                  c.lui        t1, 2
                  add          a5, s3, s2
                  c.add        s4, s0
                  c.addi4spn   a3, sp, 16
                  andi         s9, a5, -846
                  andi         t1, s1, 300
                  ori          t5, a7, 967
                  c.xor        a2, a4
                  rem          s5, zero, a0
                  xor          s7, s2, s0
                  mulhsu       t6, a6, s2
                  or           gp, sp, t6
                  c.mv         s4, s9
                  sltu         ra, s10, t1
                  auipc        t2, 3603
                  ori          t2, s3, 844
                  divu         tp, a7, s9
                  mulhsu       a7, gp, zero
                  addi         s11, tp, 165
                  c.slli       t5, 14
                  srl          sp, a7, t1
                  xori         s10, a3, -1426
                  srl          t6, a5, s0
                  srl          a0, t1, s4
                  and          s6, tp, a5
                  nop
                  sltiu        s7, s5, -651
                  c.li         a2, 28
                  srl          s7, t4, s11
                  auipc        t2, 559081
                  slti         sp, a2, -1961
                  ori          ra, gp, -1414
                  rem          t4, a7, t1
                  srli         s10, tp, 22
                  sub          t1, s0, ra
                  c.sub        a2, a3
                  c.addi16sp   sp, 32
                  c.srai       s1, 30
                  slli         s8, s6, 5
                  or           s1, a5, a2
                  srli         s8, a2, 13
                  remu         t1, a6, t2
                  srli         t5, a1, 30
                  srli         ra, t4, 12
                  c.mv         a3, t3
                  addi         t2, zero, 715
                  xori         s9, s8, 353
                  c.or         s1, a3
                  xor          a5, t4, t5
                  sltu         s4, t2, t4
                  c.srli       a0, 2
                  divu         a7, t5, a5
                  c.andi       a3, -1
                  xor          ra, tp, zero
                  sra          s5, tp, a6
                  or           a0, s2, s2
                  c.lui        s10, 27
                  c.or         a2, a3
                  rem          s10, s2, a3
                  c.and        a1, s1
                  auipc        a2, 1036809
                  slti         s11, t2, 1637
                  sub          a1, s3, t6
                  c.and        s1, a1
                  and          a5, s0, s0
                  c.andi       s1, -1
                  sltu         a3, s9, s11
                  mulh         s8, a7, t4
                  rem          s0, t3, s2
                  c.li         a2, -1
                  and          a5, a7, s7
                  div          a6, tp, s9
                  srai         s10, s8, 8
                  and          a3, s9, a1
                  nop
                  mulhu        t5, ra, s4
                  and          s10, a1, gp
                  c.andi       s1, 0
                  slt          s1, t0, a7
                  slli         t5, t0, 28
                  and          t2, a1, t2
                  xori         s9, s9, 803
                  or           zero, s10, s11
                  c.slli       a0, 8
                  sra          s7, t1, s5
                  c.addi4spn   a3, sp, 608
                  srai         tp, s8, 27
                  c.addi4spn   a0, sp, 720
                  nop
                  or           s1, s8, t6
                  c.andi       s1, 30
                  rem          s7, s0, a6
                  c.add        s8, a4
                  c.andi       a2, -1
                  remu         s2, gp, a3
                  sltiu        t6, s8, 1923
                  slt          s1, zero, a1
                  ori          t5, a7, 1090
                  slli         a2, s0, 9
                  sltiu        s10, a5, -248
                  slli         s1, s4, 23
                  auipc        s6, 26312
                  sll          ra, a0, s2
                  c.addi4spn   s0, sp, 784
                  sltu         ra, a2, s3
                  auipc        t1, 637735
                  c.slli       s0, 25
                  andi         s10, gp, -1545
                  xori         a2, a7, 1227
                  c.sub        s0, a0
                  c.or         a5, a3
                  sll          s11, s10, t0
                  c.andi       s0, 3
                  c.lui        s6, 10
                  rem          t2, t3, s4
                  slt          a0, a4, s6
                  srai         tp, t2, 4
                  mulhu        t4, sp, s5
                  mulhsu       a2, t0, a6
                  c.addi4spn   a5, sp, 592
                  c.add        s5, t4
                  and          s6, t1, t2
                  add          tp, sp, zero
                  c.nop
                  andi         s8, a0, 967
                  addi         t5, s1, 732
                  add          ra, s9, a2
                  rem          s5, tp, t3
                  c.sub        a2, a2
                  addi         t2, s4, 1911
                  sra          s8, t1, tp
                  c.xor        a1, a1
                  mulh         a3, zero, a1
                  mulhu        tp, a0, a0
                  div          t2, zero, s2
                  sub          s10, s4, s1
                  lui          t1, 913467
                  addi         s9, s7, 2013
                  c.lui        t6, 27
                  c.lui        a0, 28
                  sltiu        s5, a6, -1751
                  xor          s0, a2, t1
                  c.sub        s1, a2
                  sltiu        s7, s5, -1502
                  rem          a5, s9, ra
                  addi         t3, s6, 1065
                  slti         a5, s8, -1211
                  c.lui        a0, 28
                  mulhu        s5, s4, tp
                  or           s7, gp, a7
                  div          t4, ra, a6
                  divu         tp, t2, s8
                  c.srli       a0, 7
                  xori         s6, tp, -1867
                  slt          t5, s5, sp
                  c.nop
                  sltiu        zero, t6, 1806
                  ori          s7, t5, 1081
                  c.add        a3, a5
                  sra          t6, t6, a4
                  and          ra, s7, s5
                  c.addi       a1, -1
                  c.addi16sp   sp, -16
                  c.add        a5, s8
                  mulh         a7, a6, t0
                  sltu         a1, s2, a1
                  addi         ra, t0, -1578
                  mulhsu       t2, gp, s8
                  c.and        a2, a0
                  divu         s2, a0, zero
                  divu         s7, s9, sp
                  c.srai       a2, 25
                  sub          t3, a5, a2
                  xor          t3, s7, sp
                  c.li         a7, -1
                  rem          s1, s5, s8
                  c.add        a7, t3
                  and          s0, s2, ra
                  mulhu        a7, s8, a0
                  sltu         t3, s8, ra
                  remu         t4, s3, s6
                  andi         zero, zero, -1687
                  c.srli       a2, 4
                  div          t3, s10, s11
                  c.srli       a0, 7
                  mul          s7, s8, t5
                  sll          sp, a3, s4
                  add          a1, sp, a4
                  or           a3, t2, s3
                  c.srai       a2, 11
                  c.and        a5, a1
                  mulhu        t5, a6, tp
                  sltiu        a3, s2, 136
                  add          s11, t2, a3
                  sra          a2, s7, s3
                  sra          s2, s6, a1
                  mulhsu       s9, s2, a3
                  xor          t4, a0, s3
                  c.add        a0, t2
                  c.xor        s0, a5
                  srl          ra, s0, t5
                  rem          s11, t2, a3
                  c.nop
                  mul          a3, t3, s8
                  c.add        t5, s7
                  mulhu        a0, t2, gp
                  nop
                  nop
                  xor          tp, sp, s4
                  slli         a3, a6, 3
                  c.sub        a0, a4
                  addi         gp, a3, 1978
                  add          s8, t1, s2
                  lui          s7, 62830
                  sub          tp, gp, s5
                  sltu         a0, gp, s10
                  c.or         a5, s1
                  c.sub        a0, a0
                  xor          a3, t1, t5
                  c.or         a1, s1
                  sltu         t4, a3, s8
                  xori         a3, zero, -1774
                  rem          gp, t6, a6
                  ori          a2, s9, -706
                  or           s7, s9, t5
                  c.nop
                  slti         tp, s6, -188
                  auipc        t3, 326574
                  div          s9, t6, t4
                  sub          s9, a0, tp
                  c.addi4spn   a1, sp, 576
                  lui          t4, 627871
                  andi         s4, s9, 1261
                  sltiu        t2, s11, -1593
                  lui          t3, 720343
                  c.mv         a2, s9
                  slt          a0, a5, t4
                  c.nop
                  ori          t4, ra, 1923
                  c.slli       s5, 2
                  rem          s2, t2, s8
                  srli         s11, s11, 7
                  or           a3, a6, t0
                  c.add        s9, s5
                  mulh         t4, a2, tp
                  c.xor        a5, a1
                  mul          t4, t4, t0
                  srai         a0, t6, 4
                  rem          s11, gp, s2
                  rem          s2, s6, a2
                  c.srai       a5, 7
                  c.add        t5, a4
                  sub          a5, a0, a7
                  and          s6, s4, a0
                  srl          s0, a7, gp
                  remu         a5, a0, t0
                  rem          a0, t1, t3
                  c.addi4spn   a0, sp, 128
                  xori         t6, gp, -1728
                  srai         sp, s3, 1
                  c.srli       a5, 29
                  slti         tp, s6, -156
                  mulhsu       a3, s4, a7
                  nop
                  c.sub        a3, a5
                  c.sub        a1, a2
                  c.xor        a2, a2
                  mul          sp, t1, s9
                  mulh         s11, t6, s6
                  slli         s11, a4, 6
                  c.and        s0, a1
                  c.sub        s1, s1
                  c.andi       a2, 2
                  xori         gp, gp, -1659
                  c.lui        s0, 27
                  c.nop
                  c.or         a5, a3
                  lui          a0, 639904
                  remu         tp, a2, a5
                  slli         s1, t6, 10
                  c.or         s1, a4
                  c.or         a5, a5
                  mulhu        gp, s11, t4
                  divu         a3, t0, a1
                  c.sub        a5, a3
                  addi         a1, t5, -1632
                  xori         s1, t2, 844
                  sltiu        gp, t2, 672
                  rem          a7, s10, tp
                  sll          ra, t5, t4
                  c.add        a6, a3
                  c.and        s0, a3
                  xor          gp, t4, a2
                  xor          t5, tp, t1
                  c.sub        a5, a1
                  c.addi4spn   s1, sp, 704
                  mul          a7, s10, s1
                  addi         a3, s6, 1101
                  c.addi       s0, 22
                  add          s7, s2, s7
                  sltu         t6, tp, s10
                  srai         tp, s3, 21
                  sra          s4, t3, s10
                  c.srli       s0, 4
                  add          t5, s8, a2
                  mulh         t3, a6, s1
                  lui          s10, 718326
                  sltiu        a0, t3, 1032
                  c.mv         s8, t3
                  c.addi       t6, -1
                  c.add        s8, s0
                  c.sub        s1, s0
                  c.and        a2, s1
                  c.and        a3, a5
                  c.addi16sp   sp, -16
                  c.nop
                  slt          t6, s4, s10
                  sll          tp, gp, a1
                  c.addi4spn   a2, sp, 560
                  nop
                  c.sub        s1, s0
                  addi         s8, a1, 197
                  divu         a1, s3, s4
                  auipc        ra, 578712
                  sra          t3, s11, s0
                  and          s10, s4, a0
                  add          s5, gp, s10
                  c.li         tp, -1
                  div          t2, ra, a6
                  c.mv         s6, s7
                  srl          a6, s3, t5
                  srai         s2, s1, 4
                  c.srai       s1, 1
                  ori          s11, ra, -808
                  sltiu        s8, a2, 483
                  sra          a7, s3, a0
                  c.li         s2, 26
                  c.or         a3, s1
                  sub          s9, sp, s3
                  auipc        sp, 1044887
                  srli         t2, s8, 18
                  sltiu        tp, t1, -879
                  c.li         s10, 16
                  srl          t2, t2, sp
                  lui          a3, 23361
                  c.lui        t1, 22
                  or           a6, s7, a5
                  c.addi4spn   a3, sp, 608
                  divu         s2, tp, gp
                  c.mv         a2, s0
                  slti         a1, a7, -1216
                  ori          s0, s0, -1133
                  c.srli       s0, 17
                  div          t3, t3, a2
                  lui          t3, 734562
                  c.add        t1, s5
                  c.add        s7, a7
                  xor          a3, t1, a6
                  srl          s7, a2, sp
                  c.lui        s0, 26
                  lui          s7, 853973
                  c.add        a7, a5
                  mul          s1, s11, a1
                  c.and        a2, a3
                  nop
                  nop
                  c.slli       t6, 14
                  slti         tp, s1, -1841
                  and          gp, s4, ra
                  c.nop
                  sltu         s11, ra, s8
                  c.addi4spn   a0, sp, 480
                  sll          s0, a0, sp
                  nop
                  c.li         sp, -1
                  sll          t5, s5, s3
                  mulh         gp, gp, a6
                  sra          a0, s9, a7
                  sra          a0, s9, sp
                  or           ra, t3, a5
                  add          s1, gp, s6
                  c.lui        a5, 13
                  c.addi16sp   sp, -16
                  auipc        a2, 208654
                  c.lui        a7, 25
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 368
                  srli         s2, t4, 18
                  divu         s4, s5, tp
                  lui          s9, 221477
                  c.mv         t3, a3
                  addi         t2, a0, 545
                  slti         s7, t0, 418
                  c.slli       sp, 4
                  sra          s8, t1, a4
                  xori         zero, s10, 205
                  sltu         a7, s1, ra
                  mulh         a3, s5, a2
                  c.andi       a1, -1
                  and          t2, t3, s10
                  c.addi       a1, 8
                  andi         gp, t2, -1745
                  slti         t2, s8, -1806
                  slti         a1, sp, -1521
                  mulhsu       s5, a4, a2
                  mul          s5, t5, t4
                  c.andi       a3, 26
                  c.sub        a3, a5
                  ori          s8, a4, -1132
                  c.lui        a5, 24
                  c.mv         sp, t1
                  slli         s10, s7, 31
                  xor          t4, gp, sp
                  c.and        a2, a3
                  mulhsu       s9, s9, s7
                  xor          s8, ra, s2
                  c.and        a5, a0
                  c.srai       a2, 9
                  xori         a1, s1, -1973
                  sub          t4, t5, s6
                  c.srai       a1, 3
                  div          s1, ra, tp
                  c.slli       t3, 4
                  c.addi4spn   a0, sp, 640
                  c.sub        s0, s0
                  c.slli       s8, 10
                  lui          s11, 452446
                  sll          s11, s4, s5
                  xor          a7, s11, s6
                  c.nop
                  c.srai       a2, 1
                  slt          a0, s9, s0
                  c.lui        s8, 11
                  c.sub        s1, a2
                  lui          t5, 734631
                  or           s1, a6, s0
                  c.srai       a5, 3
                  remu         s11, t1, s6
                  auipc        tp, 468996
                  c.slli       a2, 28
                  c.lui        s7, 16
                  nop
                  mulh         sp, s4, t3
                  nop
                  mulhsu       t1, a4, s3
                  or           t6, s1, s10
                  divu         s1, t4, a4
                  addi         s6, s4, -613
                  mul          t3, s9, t6
                  add          sp, s6, a3
                  c.srai       s1, 19
                  c.lui        a0, 1
                  sll          t4, t6, a0
                  c.li         ra, 20
                  c.nop
                  and          zero, sp, s11
                  addi         s1, sp, -1479
                  c.mv         s2, s10
                  div          t5, s9, s5
                  addi         a3, s3, 992
                  divu         s6, s0, s3
                  rem          a6, a5, tp
                  c.mv         s5, a5
                  rem          t1, s2, t0
                  c.srai       a2, 30
                  mul          t4, s4, a7
                  divu         zero, s6, s10
                  c.addi16sp   sp, -16
                  addi         s0, a1, -124
                  sll          s5, s7, a6
                  mulh         a0, s8, sp
                  c.add        s4, gp
                  srli         s9, tp, 8
                  c.addi4spn   s0, sp, 736
                  mulh         ra, s8, sp
                  c.addi16sp   sp, 240
                  c.add        tp, s6
                  or           s1, a0, s1
                  sra          sp, s2, s1
                  c.addi4spn   a2, sp, 960
                  c.li         t2, -1
                  remu         zero, s7, s7
                  srli         t4, s8, 22
                  addi         a1, t3, 765
                  srai         s1, s1, 19
                  c.li         t4, -1
                  c.or         a5, a4
                  srli         ra, s7, 18
                  c.lui        s8, 3
                  c.lui        a7, 6
                  c.addi       s7, -1
                  c.srai       a5, 22
                  c.andi       a3, -1
                  c.srli       s1, 18
                  slli         s8, s2, 3
                  mulhsu       s6, s11, s10
                  c.andi       s0, 21
                  c.addi       s5, -1
                  xori         s10, t2, -869
                  sltiu        a5, a6, 1220
                  srl          a5, s11, ra
                  c.srli       a2, 9
                  c.addi16sp   sp, 304
                  mulhsu       t2, s2, a6
                  srai         sp, s10, 12
                  remu         s9, s1, a4
                  c.lui        s5, 20
                  addi         s0, s5, -1371
                  add          t5, t6, a3
                  xor          t3, zero, tp
                  slli         t6, t1, 13
                  addi         ra, t3, 1932
                  c.addi       a3, -1
                  sltiu        tp, t5, 1320
                  slti         a5, t6, 441
                  xor          s7, t5, t4
                  c.sub        a0, s1
                  sra          a3, tp, s7
                  addi         gp, a1, -1292
                  div          s5, ra, gp
                  mul          a0, zero, sp
                  c.srai       a5, 20
                  add          t1, t2, s10
                  mulhu        s0, a0, gp
                  sltiu        s8, s7, 281
                  mulhu        a3, t5, ra
                  auipc        zero, 108264
                  c.lui        s2, 25
                  c.li         a1, -1
                  mulhsu       t2, a0, t6
                  c.addi16sp   sp, -16
                  ori          s2, t1, -1122
                  xor          s9, gp, s11
                  c.addi16sp   sp, 432
                  slt          ra, a7, s5
                  srl          sp, s11, t4
                  rem          s2, a7, s9
                  c.mv         s8, tp
                  sra          tp, s6, tp
                  c.addi16sp   sp, -16
                  sltiu        s7, a0, -1578
                  c.andi       a0, -1
                  sltiu        t2, s11, -372
                  c.srai       a3, 23
                  c.mv         s0, s4
                  nop
                  c.xor        s1, s1
                  or           t6, t6, a7
                  c.or         a5, s0
                  or           a2, s7, s0
                  slt          s0, a3, tp
                  c.nop
                  sltiu        t6, ra, 1925
                  rem          a2, a1, a7
                  mulhsu       t3, s0, t4
                  addi         s10, s3, -537
                  or           s8, tp, gp
                  mul          t4, sp, a5
                  rem          t4, s11, sp
                  srli         t4, s11, 16
                  c.addi16sp   sp, 400
                  c.addi16sp   sp, 288
                  sll          s2, s5, gp
                  sltiu        s8, zero, -1844
                  c.and        a1, a2
                  srli         a6, a0, 17
                  mul          s5, ra, t2
                  slti         ra, t0, 164
                  slt          s2, t6, a4
                  mul          s5, t2, a6
                  c.xor        a5, a1
                  mulhu        s6, a5, s0
                  c.sub        a2, a0
                  div          s9, s7, sp
                  slt          s5, a2, t2
                  or           tp, s4, a3
                  c.addi16sp   sp, -16
                  c.or         a1, a0
                  mulhu        s11, a1, s3
                  c.slli       a1, 4
                  c.li         s0, -1
                  c.and        a0, a0
                  slt          a5, sp, a1
                  slt          a7, a0, t6
                  or           s7, s5, s10
                  c.nop
                  c.sub        s0, a2
                  c.sub        s0, a3
                  c.lui        s1, 4
                  addi         s8, a0, -1786
                  c.slli       sp, 23
                  divu         s7, s7, zero
                  c.addi16sp   sp, -16
                  mulhsu       s2, t2, t0
                  andi         t2, a2, 1724
                  ori          a3, t6, 1530
                  xor          ra, a5, t3
                  sltu         a2, t2, t6
                  auipc        a2, 500387
                  c.addi4spn   s0, sp, 816
                  srl          gp, s7, a4
                  srl          a7, a3, zero
                  c.andi       a1, 29
                  lui          t5, 435381
                  auipc        s4, 118329
                  add          sp, s4, a5
                  mulhsu       t2, a1, s11
                  c.mv         sp, t6
                  rem          s11, t3, gp
                  mulh         tp, tp, a7
                  c.addi16sp   sp, -16
                  slti         t5, s5, -263
                  slt          a5, t0, a5
                  c.addi4spn   a3, sp, 992
                  slti         a6, sp, -1675
                  or           t1, gp, s2
                  c.srai       s1, 6
                  srli         a0, s6, 20
                  c.add        t6, s7
                  c.srai       a3, 29
                  c.mv         a7, a7
                  xor          a5, a3, s9
                  slli         s8, t5, 28
                  c.addi16sp   sp, -16
                  c.addi       t5, 19
                  c.sub        s1, a2
                  c.mv         s10, a2
                  div          a7, s11, s11
                  add          gp, a3, t0
                  ori          t6, gp, 1348
                  sltiu        t3, a2, 1244
                  or           s7, t5, t2
                  add          t5, s6, ra
                  mulh         s2, a5, s9
                  sltu         a0, s10, a6
                  addi         a7, s11, 1293
                  c.or         a2, a5
                  mulhu        s2, s10, sp
                  xori         zero, t6, 158
                  c.srai       s1, 6
                  xori         t3, s8, -1790
                  sra          s2, sp, tp
                  c.or         s1, a4
                  lui          t4, 83898
                  srli         sp, t1, 19
                  c.addi16sp   sp, 16
                  lui          t4, 963075
                  c.srli       a0, 2
                  sll          a3, t0, a2
                  c.andi       a3, 7
                  auipc        s4, 63945
                  sra          a7, sp, s2
                  nop
                  and          a3, s3, s11
                  c.xor        a3, a5
                  srli         s7, t2, 3
                  c.andi       a1, -1
                  c.sub        s0, a1
                  lui          a2, 143714
                  c.addi16sp   sp, -16
                  c.or         a0, a5
                  add          s9, s6, s8
                  rem          a5, a6, s10
                  addi         t3, a6, -1846
                  xor          s6, t3, t3
                  ori          s2, s7, -183
                  auipc        a3, 135034
                  mulh         t5, s7, t0
                  or           zero, s1, gp
                  c.srli       a3, 25
                  xori         t3, t5, -1412
                  c.nop
                  srl          gp, zero, s4
                  srai         s6, a5, 20
                  nop
                  mulh         t6, gp, a7
                  sub          t3, ra, t5
                  and          s5, s10, a1
                  slli         zero, s1, 14
                  mulhsu       t1, s9, a4
                  c.addi       s9, -1
                  mulh         gp, s6, s6
                  sltu         s6, a5, s4
                  remu         t2, a3, ra
                  c.srli       a2, 23
                  c.sub        a5, a3
                  c.xor        a1, a0
                  mulhu        a5, s3, s7
                  lui          s2, 181868
                  add          gp, t2, t0
                  rem          a5, t4, s10
                  c.xor        s1, a0
                  xori         a1, s5, 236
                  c.addi4spn   a5, sp, 928
                  c.addi16sp   sp, 416
                  xori         s6, s6, -1002
                  ori          a7, t6, 1516
                  andi         gp, s10, 1540
                  remu         t6, t2, s7
                  srl          zero, zero, s7
                  add          t2, t0, t2
                  sra          t6, t2, s6
                  mulhsu       t3, a1, zero
                  rem          t1, t5, a7
                  and          tp, s11, a5
                  c.addi       s1, -1
                  mulh         a2, t5, ra
                  slti         a0, s1, -860
                  sltiu        t2, s6, 269
                  c.nop
                  c.srli       a0, 21
                  mul          zero, s4, s11
                  nop
                  srli         a3, a6, 11
                  c.addi16sp   sp, -16
                  c.xor        a2, a4
                  ori          s11, s0, -1892
                  xori         s11, a5, 1146
                  mulh         s8, gp, t0
                  sra          a6, a7, s4
                  andi         s1, t5, 1966
                  srai         t2, a1, 30
                  c.or         a2, a0
                  sra          t5, gp, s7
                  rem          s9, sp, t6
                  srl          a0, sp, s4
                  ori          t2, s3, -1979
                  divu         sp, gp, s5
                  srl          t3, t5, s6
                  sra          zero, s11, s3
                  c.nop
                  c.add        a2, t0
                  andi         a0, t2, 777
                  auipc        zero, 89868
                  sltiu        gp, s4, -1542
                  xori         s5, t6, 58
                  mulh         s2, t2, a1
                  c.li         t1, -1
                  sltu         s7, s0, t3
                  c.sub        a3, a0
                  ori          t5, a0, 772
                  c.addi       t1, 12
                  auipc        s6, 145231
                  addi         a5, t2, 1180
                  srl          a1, a0, a6
                  auipc        a2, 792129
                  c.nop
                  c.addi16sp   sp, -16
                  or           a7, s10, s1
                  c.xor        a5, a2
                  sltu         s10, s9, a0
                  c.sub        s1, a4
                  c.xor        a1, a1
                  slti         s10, a5, 945
                  div          s1, a6, s7
                  mulhsu       s10, s7, t4
                  divu         a5, a2, s8
                  divu         a6, a3, gp
                  c.srai       a2, 2
                  c.srli       s0, 31
                  andi         s11, s2, 163
                  remu         sp, t4, sp
                  xori         s11, s5, 1623
                  slt          a7, t5, s7
                  andi         s7, t2, -292
                  c.nop
                  c.and        a0, a4
                  c.addi4spn   a2, sp, 608
                  c.sub        s0, a3
                  c.mv         t5, a0
                  c.sub        a1, a1
                  addi         t4, a7, 1986
                  sltu         s0, a1, t4
                  divu         s6, tp, s3
                  c.lui        a1, 31
                  ori          t4, s4, 361
                  mulhu        a5, t3, s7
                  divu         a2, t3, sp
                  slti         gp, a4, 1435
                  c.li         t2, 27
                  lui          s8, 192550
                  auipc        gp, 391166
                  c.addi       s2, -1
                  lui          s5, 98275
                  mulhu        s5, t2, t6
                  divu         s0, s3, a5
                  remu         s9, t0, s4
                  c.or         a1, a3
                  c.lui        a3, 13
                  c.xor        a0, a0
                  c.andi       a1, -1
                  slti         a2, tp, -1544
                  mulhu        a2, t4, s2
                  c.sub        a5, a3
                  mulhu        a3, t4, a3
                  c.addi       s2, -1
                  c.and        s0, s1
                  slli         s0, s2, 19
                  slti         t1, a4, 190
                  c.and        a0, a0
                  or           s11, t3, t4
                  c.andi       a2, 9
                  lui          t1, 942966
                  c.and        s1, a1
                  andi         a7, t3, 309
                  nop
                  mul          s2, t4, ra
                  c.and        a2, a4
                  c.sub        a3, a4
                  c.srai       a3, 8
                  c.and        s0, a3
                  remu         t5, a7, s4
                  c.and        a2, a5
                  c.slli       s7, 27
                  srl          a3, s1, a4
                  c.srli       a5, 24
                  remu         t4, t6, a7
                  xori         s5, a5, -1321
                  srai         a7, sp, 17
                  slt          gp, t3, a6
                  divu         t1, t0, t4
                  mul          a5, a7, ra
                  divu         a6, s4, a5
                  nop
                  c.lui        a1, 2
                  sub          t4, zero, t2
                  c.add        a3, tp
                  c.sub        s0, a1
                  sltu         s10, a0, s4
                  slli         sp, s8, 6
                  sltiu        a0, s1, -2006
                  c.xor        a3, a3
                  c.addi4spn   a0, sp, 672
                  xor          a7, t0, s5
                  c.slli       a0, 15
                  or           a1, ra, sp
                  c.addi16sp   sp, -16
                  c.andi       a2, 14
                  addi         a3, s3, -615
                  addi         a5, t3, -2040
                  sltu         gp, t5, s2
                  sltiu        a3, t2, 1167
                  auipc        a6, 830238
                  c.nop
                  slti         zero, s0, -227
                  divu         t6, t4, a6
                  sltu         a6, t4, s4
                  c.li         t4, -1
                  c.add        a1, gp
                  nop
                  remu         t4, t0, t6
                  lui          t5, 820593
                  c.srai       a0, 9
                  ori          s8, s7, -1124
                  mulhsu       tp, zero, a7
                  sub          s1, t1, a0
                  xor          t5, s6, a1
                  mul          s2, a1, a7
                  sub          s7, s7, t4
                  sra          a7, s1, t1
                  c.andi       a1, -1
                  xor          gp, a1, t5
                  c.srli       a5, 17
                  addi         t1, s1, 261
                  ori          a6, s0, 1993
                  c.lui        a0, 11
                  div          t6, t6, s8
                  add          a7, t2, s10
                  c.nop
                  c.addi4spn   a0, sp, 848
                  c.xor        a0, s1
                  c.add        s4, a3
                  c.mv         sp, s9
                  div          t3, t5, t1
                  remu         s10, s3, a7
                  srl          t1, a5, t1
                  divu         s9, a6, t3
                  srli         ra, t2, 10
                  xori         s9, s8, -1235
                  c.addi16sp   sp, 128
                  and          s6, a0, tp
                  rem          sp, s5, s10
                  ori          t1, gp, 487
                  sub          s5, t2, t5
                  rem          a6, gp, s11
                  xori         a2, s6, -1203
                  and          s0, t0, s3
                  auipc        t6, 406479
                  auipc        t4, 974790
                  c.sub        a3, s1
                  c.srai       a2, 25
                  c.lui        a2, 15
                  div          a3, gp, a0
                  ori          sp, s6, 1442
                  slti         t1, a2, -1657
                  c.xor        s1, s1
                  ori          s2, s5, -1792
                  sltu         s4, a1, s4
                  nop
                  c.and        a5, a1
                  c.or         a0, a0
                  c.lui        t6, 17
                  divu         a2, t6, t6
                  c.addi       tp, 17
                  c.addi4spn   a2, sp, 608
                  addi         gp, t5, -105
                  addi         a6, t1, 1715
                  div          s4, s10, t0
                  andi         a0, s7, -438
                  auipc        s4, 371269
                  srli         a2, s7, 20
                  c.slli       s11, 6
                  c.slli       a6, 4
                  c.and        a2, a1
                  srl          t2, s10, s8
                  sra          a6, s5, t1
                  andi         s5, t5, 571
                  c.add        a5, s4
                  c.add        s5, s0
                  c.and        a1, a5
                  sll          s8, s8, sp
                  srl          a5, s9, s9
                  srai         a0, t5, 11
                  sub          s4, a3, s8
                  c.xor        a5, a4
                  c.addi       t4, -1
                  slti         s11, s0, -63
                  mulhu        tp, s0, a1
                  lui          a5, 850330
                  auipc        s2, 227182
                  ori          t5, sp, 279
                  mulhu        t2, t0, zero
                  c.addi16sp   sp, -16
                  lui          tp, 622782
                  slli         tp, a4, 2
                  c.addi16sp   sp, 208
                  div          a7, t6, t5
                  srl          a2, s9, tp
                  srai         tp, tp, 30
                  slt          a7, t5, s4
                  c.slli       a7, 5
                  c.mv         tp, a4
                  sltu         tp, t6, a0
                  nop
                  mulh         s4, t1, s1
                  c.xor        a5, a0
                  remu         t4, s3, a0
                  andi         s9, t3, -130
                  slt          ra, a7, a3
                  c.xor        a0, a5
                  c.addi4spn   a1, sp, 704
                  c.addi16sp   sp, -16
                  mul          t3, sp, s9
                  ori          a3, t6, 1147
                  xor          sp, a6, s8
                  c.srai       s0, 22
                  nop
                  auipc        t2, 645062
                  sltu         s9, sp, t2
                  c.li         t6, -1
                  c.srai       a5, 27
                  srl          a7, s10, t0
                  srli         t6, a6, 27
                  xori         s1, t4, 1921
                  and          zero, s0, a6
                  lui          gp, 491184
                  nop
                  sltu         s11, t1, zero
                  sll          a2, t3, tp
                  xori         s2, a2, -548
                  rem          s11, s10, t3
                  andi         s8, sp, 681
                  sub          s11, a6, s5
                  c.srli       a0, 4
                  and          ra, s5, s6
                  c.andi       a0, 12
                  nop
                  lui          t1, 315573
                  addi         s7, tp, -1426
                  div          sp, a3, s11
                  ori          s4, t0, -1325
                  nop
                  ori          s7, s4, 795
                  c.or         a3, a2
                  c.xor        a0, a0
                  c.addi4spn   s0, sp, 576
                  srl          s7, s0, gp
                  andi         s2, s8, 702
                  sll          t2, t0, a2
                  srai         t2, t6, 27
                  addi         sp, s1, -347
                  c.xor        a2, s1
                  srli         a0, s3, 4
                  sltiu        a5, tp, -1941
                  srai         t2, s7, 26
                  c.andi       s1, 3
                  auipc        t4, 673728
                  sub          s10, s5, tp
                  c.andi       a3, 0
                  mulhu        t1, zero, t6
                  slli         a1, t4, 10
                  c.and        a5, a5
                  sltu         t6, s10, a1
                  div          a5, s6, ra
                  c.add        tp, a2
                  sltiu        s11, s7, -1833
                  sltiu        t6, a4, -1118
                  remu         t1, a2, a6
                  mulh         a6, s5, s7
                  addi         a2, s2, 1611
                  lui          a0, 862105
                  c.li         t5, 25
                  c.slli       s10, 22
                  c.xor        a2, a0
                  div          s0, sp, a7
                  c.or         a1, a5
                  mulhu        s1, t5, sp
                  c.addi       tp, 19
                  xor          s9, t2, t3
                  mul          t6, t1, a4
                  c.li         tp, -1
                  c.mv         ra, s6
                  srai         ra, s9, 27
                  or           a1, sp, s7
                  c.addi       a7, -1
                  c.nop
                  sra          s0, tp, a7
                  srai         s5, a5, 17
                  srai         t2, a1, 31
                  slti         a2, s0, -253
                  xor          s10, tp, a2
                  c.andi       a5, -1
                  c.mv         t1, s8
                  c.addi4spn   a0, sp, 288
                  sra          s10, t5, s9
                  mulhsu       t4, s7, t3
                  sltu         s7, s7, t4
                  c.addi4spn   a1, sp, 640
                  c.srli       a1, 11
                  slli         s9, t2, 3
                  c.slli       gp, 29
                  slt          a1, a2, a5
                  c.nop
                  xori         a1, a3, -702
                  c.slli       gp, 28
                  sra          t3, a7, t2
                  div          s4, t5, sp
                  srai         a7, s3, 4
                  c.addi4spn   a5, sp, 496
                  slti         s1, s8, -1070
                  c.addi16sp   sp, 288
                  c.xor        a0, a0
                  sub          s5, tp, t6
                  c.xor        a5, s0
                  slt          s0, s0, zero
                  xor          zero, t0, a6
                  xor          s7, t2, t4
                  xori         s9, s6, -1728
                  srli         a0, t3, 7
                  or           s2, s11, s10
                  c.srai       a1, 12
                  mulhsu       a7, t3, t6
                  sll          t3, s9, s11
                  xori         a0, a0, 601
                  c.slli       gp, 21
                  div          a2, s4, t5
                  mulhsu       s2, t6, s8
                  c.lui        a0, 2
                  sra          tp, s8, s7
                  c.mv         s1, t3
                  nop
                  slli         sp, s5, 16
                  and          s2, a6, t6
                  xor          a2, s6, zero
                  divu         a5, s6, t0
                  c.sub        a2, a4
                  srl          a0, ra, s11
                  remu         sp, s10, a2
                  sub          s11, ra, t0
                  mul          s9, a2, gp
                  c.sub        s0, s0
                  or           zero, t2, s2
                  addi         ra, s8, 1711
                  c.and        s0, a0
                  c.or         a0, a2
                  c.and        a2, a4
                  or           a2, ra, a5
                  sra          gp, a3, gp
                  addi         t5, s11, 2014
                  srli         s0, s2, 17
                  srl          t4, t0, tp
                  c.lui        t2, 3
                  slli         a1, t3, 23
                  xori         s7, a2, 945
                  mulhu        t2, s8, t6
                  slti         a2, zero, 420
                  and          s0, t5, s10
                  c.li         t3, -1
                  auipc        a5, 642786
                  xor          s5, s8, s9
                  slt          s10, s0, zero
                  mulhu        t4, t4, a7
                  c.mv         ra, t0
                  slli         s8, a0, 11
                  c.add        t6, s0
                  xori         tp, t5, 362
                  and          s2, ra, a3
                  addi         a3, s11, 142
                  sltu         a2, s1, s8
                  auipc        ra, 196954
                  nop
                  srli         a3, a1, 1
                  sll          s9, t3, s10
                  mulhu        s0, s7, a1
                  rem          s7, tp, s9
                  xor          s11, t3, a0
                  sll          t5, t4, s4
                  lui          t4, 965799
                  c.addi16sp   sp, 48
                  srl          t1, a2, t4
                  andi         a5, a4, 1478
                  c.srai       a1, 8
                  srai         s4, s2, 20
                  add          s7, a4, a3
                  c.nop
                  or           s9, s8, a5
                  lui          a3, 84176
                  xor          t5, sp, sp
                  rem          t5, s1, t0
                  c.and        a2, s1
                  srl          s4, s8, a4
                  add          t5, a4, s3
                  c.li         a5, 12
                  c.slli       ra, 26
                  c.addi       s11, -1
                  rem          t3, t5, sp
                  remu         t4, s11, s8
                  nop
                  c.li         s0, 26
                  c.mv         s8, a6
                  rem          s6, s3, s9
                  nop
                  c.addi       a7, -1
                  slti         a2, t1, -1642
                  slli         s8, s3, 4
                  slt          s9, s8, s6
                  slt          a1, t5, s3
                  mulhu        s11, s2, s4
                  xori         t4, t0, -514
                  c.lui        t3, 20
                  c.lui        t4, 24
                  c.or         a2, a0
                  remu         t3, t5, t2
                  lui          t1, 954405
                  lui          s11, 499601
                  c.nop
                  c.xor        a1, s0
                  nop
                  c.sub        a5, a4
                  slt          s9, s0, s9
                  slli         a2, a5, 2
                  remu         t1, ra, t1
                  remu         gp, s2, s0
                  c.srli       a3, 19
                  sll          s2, t4, t1
                  c.add        t5, s2
                  c.mv         gp, a0
                  or           a5, a4, a7
                  mulhsu       ra, tp, t4
                  c.add        s5, sp
                  c.and        a1, a0
                  srl          a3, ra, tp
                  andi         s1, a2, -1745
                  c.addi16sp   sp, -16
                  xori         t6, s11, -1716
                  c.srai       a0, 17
                  div          s6, s4, s4
                  and          s4, a2, t1
                  div          s1, t1, sp
                  mulhu        s11, s8, t1
                  xor          s1, a5, a3
                  sra          zero, tp, a6
                  mulh         s1, a0, ra
                  c.addi       ra, 25
                  slli         s6, a3, 26
                  xor          s4, s8, tp
                  add          t2, s1, s5
                  slli         a5, s6, 25
                  and          tp, s0, sp
                  c.nop
                  c.addi       t1, 6
                  c.mv         s7, tp
                  sra          s9, s8, s3
                  mulhu        s2, a2, gp
                  xor          a7, a2, s1
                  srai         gp, s7, 28
                  xor          a7, a7, a7
                  or           s4, s6, tp
                  c.xor        a2, a3
                  add          s7, a4, a1
                  c.andi       a1, -1
                  divu         s1, s7, s1
                  c.lui        s5, 18
                  srai         t1, a5, 28
                  ori          a3, t6, 868
                  c.sub        a0, s1
                  mul          s4, sp, zero
                  mulhsu       zero, s7, s3
                  auipc        s9, 568076
                  sub          t5, ra, gp
                  c.addi4spn   a1, sp, 432
                  sll          gp, a5, s11
                  add          a0, s10, s8
                  c.srai       s0, 29
                  c.sub        s1, s0
                  sra          t1, t1, s5
                  lui          s5, 652178
                  srai         s6, a5, 1
                  remu         sp, t0, sp
                  divu         t1, t6, s1
                  remu         a7, s6, zero
                  lui          gp, 875718
                  c.li         s8, -1
                  mulh         s6, a1, t3
                  mulhsu       a1, a6, s11
                  ori          ra, t5, 924
                  mulhu        s4, s8, a3
                  divu         t4, s3, s1
                  sltu         t6, zero, s10
                  c.xor        a1, a2
                  add          a5, ra, a5
                  c.srli       a2, 9
                  xori         gp, t0, 1481
                  c.xor        s0, s1
                  c.xor        a5, a0
                  sll          t3, s2, t2
                  c.andi       a5, -1
                  c.andi       a3, -1
                  c.add        s2, t5
                  c.li         t5, 23
                  c.srli       a1, 12
                  xor          tp, a4, s3
                  c.xor        a3, a5
                  mulhsu       gp, zero, s11
                  div          s7, t5, gp
                  mulh         gp, zero, a7
                  mulh         s6, t5, s0
                  c.addi       a1, 26
                  mulhsu       ra, t1, s3
                  ori          gp, a3, 529
                  c.addi16sp   sp, 288
                  remu         s11, t2, t6
                  mulhu        t1, t4, s8
                  c.and        a2, a3
                  srli         s2, ra, 0
                  srl          s2, gp, tp
                  lui          s11, 446721
                  c.nop
                  andi         t1, t5, 668
                  nop
                  addi         a0, t4, 180
                  div          s10, s8, a3
                  auipc        gp, 253381
                  c.li         s4, -1
                  c.srli       a5, 16
                  c.sub        a5, a1
                  mulhu        tp, s6, a7
                  slli         t1, a5, 23
                  c.srli       s0, 4
                  divu         a5, s6, t5
                  c.add        a2, t5
                  c.srai       a2, 8
                  xor          s4, a6, t4
                  c.nop
                  c.srli       a1, 21
                  sltiu        t3, t0, 1156
                  c.addi4spn   a0, sp, 928
                  xori         t1, a3, 1138
                  or           s0, a5, s8
                  c.add        s11, t6
                  srl          s11, s6, s5
                  srl          a3, t0, s5
                  ori          a6, s2, -760
                  andi         a3, s9, -444
                  c.sub        a2, a1
                  c.mv         s1, a5
                  srai         s5, t4, 6
                  addi         s5, s5, 1630
                  c.xor        a2, a5
                  divu         a2, zero, a4
                  lui          zero, 418610
                  mulhu        zero, t3, t1
                  srl          a6, sp, t3
                  mul          t3, t1, t1
                  mul          s11, gp, t6
                  c.addi16sp   sp, -16
                  andi         s9, s3, -1284
                  slli         s6, ra, 11
                  div          s0, t1, t3
                  andi         tp, a6, -925
                  nop
                  div          a2, a2, a0
                  srli         s11, gp, 25
                  sll          a7, gp, zero
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 240
                  slt          a5, s8, tp
                  sra          t2, t1, s2
                  c.and        a5, a1
                  divu         s2, s5, a6
                  mulhsu       s11, t5, a6
                  sub          a1, t5, s5
                  mulhsu       a2, a2, a0
                  slt          a0, a0, t5
                  c.sub        a0, s0
                  sltu         s0, s4, a1
                  slti         s0, s3, 1919
                  srai         tp, s11, 15
                  rem          ra, s8, s2
                  c.add        a6, s11
                  rem          a5, a4, ra
                  sub          t2, s0, a2
                  c.srli       s1, 8
                  sll          t3, ra, a1
                  addi         tp, ra, -1035
                  xor          s10, t5, s0
                  mulhu        gp, s0, s5
                  lui          gp, 171432
                  mulhu        s8, a7, t2
                  c.and        a2, a4
                  c.addi16sp   sp, -16
                  divu         t2, s2, a6
                  c.nop
                  c.lui        s4, 2
                  c.slli       t6, 15
                  c.addi       t2, -1
                  c.xor        a1, a0
                  slti         t6, t5, -590
                  sltiu        t6, t3, -1502
                  c.andi       a2, 31
                  sra          s0, t3, t1
                  c.srli       s1, 1
                  or           gp, a0, a5
                  sra          s1, t6, a2
                  c.addi16sp   sp, -16
                  c.nop
                  div          s7, zero, a5
                  c.slli       s9, 3
                  c.mv         a7, s3
                  c.addi16sp   sp, 352
                  or           s5, t4, s0
                  c.lui        s1, 8
                  srai         s9, t2, 0
                  c.addi       a5, -1
                  c.and        a1, a1
                  rem          tp, s2, a4
                  c.addi4spn   a2, sp, 976
                  c.srai       s0, 31
                  remu         s5, a4, s7
                  mul          sp, s7, s1
                  mulhsu       s0, s0, s4
                  c.mv         t5, s10
                  srli         t5, t0, 5
                  mulhu        a0, s11, zero
                  srl          s7, s8, t1
                  c.addi       s7, 14
                  mul          a0, s4, a2
                  sub          sp, zero, zero
                  or           t1, s10, s3
                  mulh         t1, t3, a3
                  c.nop
                  andi         zero, sp, 1343
                  andi         a2, t1, 1511
                  c.mv         s9, s2
                  sltiu        s11, t2, -322
                  andi         gp, s3, 1420
                  mulh         a0, a4, s6
                  c.srai       a1, 17
                  or           a3, s7, s4
                  remu         s2, a4, a4
                  ori          t6, s5, -1038
                  remu         gp, sp, a6
                  nop
                  c.add        ra, t0
                  rem          s2, a2, s2
                  c.addi4spn   s1, sp, 864
                  c.andi       s0, 11
                  addi         s5, zero, -315
                  or           s0, t5, ra
                  add          a1, a0, a4
                  c.andi       s1, -1
                  c.andi       s0, 9
                  mul          s0, s4, t3
                  c.slli       s2, 20
                  divu         a7, t3, t1
                  sll          s6, s6, a3
                  sll          s8, a7, s11
                  c.sub        a5, s0
                  mulhsu       zero, s11, a2
                  divu         s1, a3, a4
                  divu         a7, t5, s0
                  rem          a5, s9, a2
                  ori          s5, a3, -178
                  lui          sp, 110074
                  c.li         s10, 22
                  sra          a5, s11, s5
                  sltu         a5, s0, s3
                  xor          s2, a4, t2
                  and          s8, s11, tp
                  c.xor        a0, s0
                  c.xor        a5, a2
                  c.srai       a5, 2
                  ori          t4, s7, -5
                  or           t1, a0, a6
                  srl          t5, a7, t1
                  slli         s5, t4, 30
                  mulhu        s4, s1, s10
                  c.sub        a5, a4
                  auipc        t3, 205922
                  c.andi       a3, 0
                  c.srli       a0, 9
                  c.srai       s0, 30
                  srli         a0, t6, 12
                  divu         s2, t4, s4
                  addi         a3, s6, -668
                  sltu         a6, t1, s7
                  slti         s8, t3, -468
                  srl          s5, s3, s2
                  ori          t6, ra, 1841
                  srai         a0, a1, 3
                  slti         a2, t3, -1724
                  c.addi16sp   sp, 272
                  c.add        a7, a6
                  slti         s6, a1, 1942
                  c.add        t3, t6
                  lui          a1, 365324
                  nop
                  slt          s5, a3, t2
                  nop
                  c.sub        s0, a5
                  mulh         gp, a2, t3
                  andi         s1, t5, 272
                  addi         s6, t6, -1381
                  xori         sp, a2, -1043
                  c.andi       a0, -1
                  nop
                  c.or         a0, a2
                  c.srli       a5, 2
                  divu         t4, s3, s6
                  mulh         s9, a2, s4
                  div          s5, t2, s5
                  mulh         s5, a1, s11
                  c.add        s2, t4
                  c.srai       s1, 20
                  xor          t4, t4, t4
                  c.xor        a2, a5
                  rem          zero, a3, s10
                  srl          s5, s5, a1
                  sll          s4, a3, s8
                  sub          a3, t1, s2
                  and          s11, t0, s10
                  and          ra, sp, a0
                  mulhsu       ra, s8, s1
                  c.mv         gp, s4
                  auipc        s9, 707148
                  remu         t4, zero, s7
                  slli         a5, gp, 4
                  mulhsu       s11, s10, a2
                  sltu         t4, s1, s11
                  sltu         t5, s8, a7
                  c.addi16sp   sp, 64
                  c.nop
                  xor          a0, a7, a2
                  div          t5, sp, t1
                  srai         s1, ra, 29
                  xor          s11, s7, t2
                  or           a7, gp, a0
                  ori          a3, a2, -1118
                  c.srli       s0, 28
                  slt          t6, s6, s8
                  srli         a6, a1, 29
                  c.srai       a0, 25
                  c.nop
                  c.addi4spn   a5, sp, 16
                  c.sub        a1, s0
                  slti         sp, a4, 1809
                  sll          a3, sp, a2
                  c.add        t1, t5
                  xori         s0, s2, 1193
                  sll          a7, sp, s3
                  slli         a3, a5, 8
                  c.mv         s0, t2
                  c.sub        s1, a2
                  c.nop
                  c.xor        a5, s0
                  srli         sp, s5, 9
                  andi         a1, t3, -303
                  slti         t2, sp, -368
                  mul          s9, s10, t2
                  srl          s0, t4, t5
                  c.mv         gp, s2
                  lui          a7, 739172
                  c.addi16sp   sp, 32
                  nop
                  c.slli       a5, 12
                  sltiu        a3, s5, -139
                  c.xor        a5, a3
                  c.srai       s0, 12
                  srli         a7, s3, 31
                  div          s9, sp, t0
                  sra          s4, s1, a1
                  c.xor        a5, a2
                  rem          a1, zero, a1
                  c.sub        a0, a3
                  add          s4, s10, t1
                  xor          t4, s7, s7
                  mul          a6, t2, t0
                  mulhsu       zero, s4, a7
                  c.srli       s0, 5
                  mulhsu       s5, t1, s0
                  srli         s0, t4, 0
                  srli         s5, s2, 22
                  nop
                  sub          a6, a1, tp
                  sra          a6, a4, s2
                  auipc        s5, 55601
                  c.slli       s6, 20
                  c.addi16sp   sp, -16
                  xori         s2, s2, 743
                  slli         a7, t6, 25
                  sra          t1, s10, t0
                  mulhsu       s10, t5, t1
                  div          a3, sp, s8
                  sltiu        t3, t3, 1632
                  divu         t3, t6, zero
                  ori          a5, zero, 220
                  sra          a7, s7, a2
                  slt          a5, zero, s0
                  xor          s1, a4, s11
                  c.or         a2, a0
                  c.addi4spn   a2, sp, 80
                  c.mv         s9, s9
                  or           gp, ra, s10
                  c.addi16sp   sp, -16
                  c.or         a0, a3
                  sub          t3, tp, t6
                  rem          s8, a0, t1
                  c.slli       ra, 14
                  nop
                  xor          t1, ra, s10
                  rem          a6, t2, gp
                  rem          zero, a3, s7
                  c.xor        a2, a1
                  c.mv         t2, s2
                  srai         a2, s4, 19
                  c.lui        a1, 5
                  c.andi       a2, -1
                  c.andi       s1, -1
                  sltiu        gp, s6, 651
                  c.addi4spn   a3, sp, 704
                  div          s1, s0, gp
                  c.add        ra, tp
                  c.or         a1, a1
                  c.xor        s0, a3
                  c.addi16sp   sp, 112
                  c.andi       a5, -1
                  rem          a6, a5, ra
                  srai         s8, t6, 20
                  div          s7, s7, s3
                  c.nop
                  nop
                  sll          t5, a6, s4
                  c.or         s1, a2
                  mulhu        s0, a2, s7
                  c.andi       s0, 10
                  mulh         gp, ra, sp
                  add          s4, zero, s8
                  c.andi       a5, -1
                  c.addi4spn   a0, sp, 800
                  c.li         s2, -1
                  sra          s2, gp, t6
                  c.mv         a6, s4
                  xori         s5, a4, 1692
                  sub          a0, t2, a7
                  slli         t4, zero, 23
                  srl          sp, t6, s11
                  andi         s9, a7, 286
                  slli         s4, a0, 7
                  slt          s10, tp, s1
                  c.nop
                  rem          s11, sp, t2
                  remu         gp, t4, tp
                  srl          a6, ra, s5
                  andi         s5, gp, -1825
                  srl          t1, s8, a0
                  sltiu        s5, s11, 67
                  c.addi4spn   a3, sp, 592
                  c.andi       s0, -1
                  addi         s11, t4, -278
                  div          s9, a0, t5
                  sub          s5, a1, a3
                  or           s9, s11, t4
                  c.addi       t6, -1
                  sra          s10, a1, s3
                  nop
                  c.addi4spn   s1, sp, 480
                  c.add        ra, s3
                  or           a6, gp, s6
                  c.li         s9, -1
                  sltiu        a3, t5, -1901
                  c.sub        a5, s1
                  nop
                  mulhu        s9, sp, s2
                  or           s11, t4, a3
                  and          zero, tp, ra
                  c.srli       a5, 22
                  c.sub        a5, a3
                  c.srai       a3, 28
                  rem          s4, a2, t3
                  addi         t3, s3, 276
                  add          t2, ra, s11
                  xori         s5, s1, -489
                  xor          a2, s10, s6
                  c.sub        a1, a1
                  andi         s2, s10, -550
                  addi         tp, a5, 2003
                  auipc        t5, 726670
                  c.sub        a3, a3
                  xori         t1, t4, -2029
                  c.srli       a0, 14
                  c.addi16sp   sp, 144
                  or           a3, s1, a6
                  mulh         sp, a2, a5
                  c.sub        a3, s0
                  slt          s6, t1, a1
                  rem          s5, s0, s5
                  c.add        a2, t6
                  c.lui        ra, 1
                  remu         a1, s0, s4
                  slti         zero, a3, 1068
                  divu         t4, a0, tp
                  sub          t5, ra, sp
                  sltu         a7, a4, t6
                  c.addi16sp   sp, -16
                  slt          s6, a2, t5
                  mulhsu       a3, s3, sp
                  sltiu        t5, t1, 114
                  addi         sp, s7, 127
                  c.slli       s0, 5
                  c.srai       a3, 30
                  xori         a5, a0, -1311
                  sra          a5, t5, s10
                  srl          a1, s8, s5
                  c.nop
                  c.add        s5, a5
                  mulhsu       s2, tp, t6
                  mul          t2, t3, s9
                  c.srli       s1, 18
                  ori          t5, s1, -1942
                  c.sub        a5, a1
                  ori          tp, s7, -1120
                  nop
                  divu         gp, s8, s6
                  srl          a5, a0, a3
                  remu         t1, a6, t6
                  slt          s2, s11, s9
                  c.lui        s1, 7
                  c.andi       s1, 21
                  mul          s0, s0, a1
                  sll          a1, s0, t3
                  c.srai       a5, 2
                  addi         a6, a1, 11
                  remu         t3, s4, s2
                  ori          t6, s8, -1659
                  c.andi       a1, -1
                  sra          s4, t3, a3
                  ori          t6, s11, 151
                  or           a0, ra, a6
                  rem          s2, t4, t4
                  xori         s2, s4, -615
                  c.addi16sp   sp, -16
                  sltiu        a3, s9, -1172
                  remu         t1, zero, a5
                  c.add        a0, t6
                  remu         s5, t1, tp
                  c.slli       a2, 13
                  c.mv         s0, s9
                  c.nop
                  c.lui        a0, 20
                  c.addi4spn   a5, sp, 240
                  srai         s0, a3, 27
                  sub          a0, s0, s6
                  nop
                  c.srai       a0, 22
                  sra          s7, a2, s3
                  lui          a1, 6685
                  srli         s0, t4, 15
                  auipc        s1, 117698
                  slt          t2, s6, ra
                  sll          t5, t4, s3
                  div          t1, s2, s9
                  c.srli       s0, 17
                  mulh         s2, t1, sp
                  c.mv         tp, t6
                  lui          a3, 233786
                  srli         t2, t4, 21
                  mul          a1, s11, a2
                  mulhu        s1, s5, s5
                  xori         t4, a2, -603
                  or           s5, t2, gp
                  srli         s11, t0, 8
                  c.lui        s0, 7
                  srli         s2, s10, 2
                  c.or         a5, a1
                  add          s0, sp, t1
                  srai         s8, tp, 11
                  slli         zero, t3, 18
                  c.li         t4, -1
                  slt          t1, s10, s5
                  slti         t4, t5, -115
                  c.srai       a0, 27
                  div          s8, t0, s3
                  c.lui        s8, 18
                  c.nop
                  add          gp, t3, s6
                  or           ra, t4, s11
                  c.srli       s1, 28
                  c.xor        a5, a5
                  c.mv         s4, s8
                  nop
                  slli         s6, t4, 8
                  c.slli       s0, 17
                  c.addi       t1, 16
                  and          s1, a2, a3
                  mulhu        s8, a5, a7
                  mulhu        s11, s11, s1
                  c.andi       s1, -1
                  sll          a6, a7, s3
                  c.mv         s5, s10
                  c.addi       s0, -1
                  slt          s10, t5, t1
                  mulhsu       a0, s8, a4
                  c.addi4spn   a1, sp, 608
                  c.and        a0, a0
                  sra          s2, s0, a3
                  slti         sp, a4, -74
                  srai         s6, t6, 4
                  c.add        a7, ra
                  c.or         a3, a2
                  sltiu        t6, s3, 1257
                  c.sub        a2, s1
                  c.xor        a3, a4
                  c.addi4spn   s0, sp, 352
                  srai         a7, ra, 18
                  or           a7, s1, a6
                  c.addi4spn   a0, sp, 864
                  c.addi       t5, 31
                  c.sub        a2, a0
                  lui          a6, 891719
                  andi         a7, a4, -1513
                  nop
                  c.nop
                  auipc        t3, 121171
                  mulhsu       s10, t0, tp
                  sltiu        zero, a4, 1255
                  c.and        a2, a2
                  div          a2, zero, s8
                  addi         s11, t5, 537
                  c.lui        a6, 5
                  or           t2, s0, ra
                  c.and        s0, s0
                  mulh         s10, t1, t3
                  or           gp, s4, s10
                  c.or         a0, a1
                  sltu         t6, a5, a0
                  c.addi4spn   a1, sp, 144
                  and          s9, a6, t6
                  c.lui        s1, 8
                  add          s1, s10, a2
                  slli         sp, a4, 10
                  slti         s0, s8, -1571
                  nop
                  nop
                  c.add        t2, a5
                  srli         a0, s5, 30
                  c.addi16sp   sp, 32
                  sltu         s4, a6, ra
                  c.srai       a0, 4
                  srl          s9, s1, s9
                  mulhsu       a3, s5, ra
                  add          tp, t3, t2
                  remu         t2, s4, gp
                  div          t2, t6, t0
                  mulh         t5, s9, s11
                  c.addi       t1, -1
                  slli         a7, a5, 8
                  c.li         a2, -1
                  sltu         gp, t6, sp
                  add          t5, s2, t3
                  mulh         s9, sp, s11
                  c.addi4spn   a2, sp, 736
                  c.srli       a1, 9
                  auipc        ra, 420120
                  nop
                  remu         a7, t5, a7
                  c.or         a2, a3
                  and          t5, ra, s11
                  addi         s11, s2, -517
                  mulhsu       s11, a1, sp
                  c.and        a3, s1
                  c.or         a1, a0
                  xor          s10, tp, a6
                  c.addi       t5, 18
                  div          t4, s8, a7
                  c.addi       ra, 12
                  sltiu        t2, a5, -948
                  c.or         a5, a0
                  auipc        a1, 436897
                  c.lui        t1, 1
                  c.nop
                  sra          tp, a0, s5
                  sll          gp, s9, s10
                  c.addi16sp   sp, 256
                  c.sub        a2, a2
                  xori         s2, s6, -1686
                  slti         s0, a3, -1604
                  mulhsu       t5, tp, t0
                  c.sub        a2, a5
                  and          t2, s0, s11
                  rem          a2, sp, ra
                  remu         s1, t5, a0
                  nop
                  div          s0, t6, sp
                  c.srli       s1, 20
                  or           a7, a6, s7
                  c.li         t5, -1
                  c.addi4spn   a2, sp, 704
                  sub          a7, s10, s0
                  c.addi       t2, -1
                  c.andi       s0, 3
                  remu         t4, a1, s2
                  divu         s0, a0, t3
                  sub          a2, s5, s9
                  c.or         a2, a1
                  or           s9, t5, ra
                  and          s11, t2, t4
                  div          s10, s6, a1
                  xor          a5, s8, a7
                  c.srai       a1, 19
                  nop
                  slt          s9, s9, s1
                  and          a7, s3, t0
                  c.or         a3, a3
                  slli         a6, a7, 23
                  c.addi4spn   a1, sp, 640
                  c.addi16sp   sp, -16
                  add          s9, t3, t2
                  rem          s0, a4, s0
                  c.nop
                  slti         ra, t1, 300
                  and          a5, a2, s0
                  c.li         a6, -1
                  mulhsu       s0, t2, t4
                  srl          a1, s0, s2
                  sra          s0, s3, a7
                  c.xor        a5, a3
                  c.mv         a5, t5
                  c.and        a2, a0
                  div          t2, tp, s8
                  mulh         s8, s10, s10
                  slt          a7, s0, a6
                  sltu         s2, a5, s4
                  lui          t5, 223025
                  mulh         s9, sp, a6
                  div          s1, s3, a1
                  mul          t1, t4, a3
                  mul          a5, s11, t5
                  and          t6, t0, t4
                  sltiu        t6, s10, 1157
                  c.addi16sp   sp, 480
                  xor          zero, s6, a4
                  c.srli       a2, 25
                  div          s5, ra, s9
                  sltiu        a2, gp, 1450
                  xori         t3, ra, 1586
                  xor          a2, s5, t4
                  xor          a2, ra, t1
                  andi         s4, sp, 1566
                  c.addi       a3, -1
                  c.mv         a3, s0
                  c.andi       s0, 2
                  and          s10, sp, t0
                  add          s7, tp, a3
                  auipc        s7, 353104
                  slli         tp, a3, 3
                  sra          t3, a2, t5
                  lui          t5, 510435
                  mulh         a0, s1, s0
                  c.or         a1, a1
                  and          sp, s1, s3
                  c.and        a5, a3
                  c.addi       gp, 5
                  sra          tp, a4, s6
                  addi         t1, s9, 942
                  c.xor        a1, a3
                  nop
                  c.add        s0, a4
                  mulhsu       s2, t2, s1
                  mulhsu       t4, t5, s8
                  c.li         a2, -1
                  xori         s7, s9, 1850
                  addi         a7, s6, -1705
                  c.addi4spn   s0, sp, 880
                  srl          s9, a1, zero
                  nop
                  c.srai       a1, 31
                  srl          a2, s10, a0
                  add          tp, s11, s4
                  addi         a6, t6, 63
                  divu         a7, tp, s2
                  mulh         s5, s10, s0
                  c.mv         t2, sp
                  ori          gp, ra, 840
                  nop
                  remu         a7, a5, t0
                  addi         s6, a4, 1937
                  c.srli       s1, 29
                  auipc        t4, 150397
                  sra          t1, s7, a5
                  c.andi       a1, 0
                  c.lui        a1, 21
                  remu         s0, t0, s8
                  c.nop
                  c.mv         a7, s2
                  sub          a0, t0, s6
                  c.srli       a2, 7
                  lui          sp, 135352
                  c.li         ra, -1
                  c.and        a2, a1
                  mulhsu       t2, t3, s6
                  c.andi       a5, 10
                  sltu         a0, s5, s6
                  c.srai       a1, 3
                  srl          t3, t5, s1
                  srli         a5, s10, 26
                  c.lui        s11, 7
                  sltiu        a7, a4, 1166
                  auipc        a6, 482809
                  c.lui        a6, 12
                  ori          gp, a1, 1488
                  srl          t4, s9, t3
                  c.or         a0, a4
                  c.or         a0, a3
                  addi         tp, a3, -153
                  ori          s4, s10, 1615
                  c.nop
                  mulhu        zero, s5, s8
                  addi         gp, s2, -1731
                  add          s10, a1, a5
                  xori         a2, s6, -540
                  c.slli       a7, 28
                  rem          s0, s7, s9
                  and          sp, s2, s5
                  andi         s5, zero, -12
                  c.nop
                  xor          t3, a1, s5
                  sltu         t3, t4, t2
                  srl          a6, ra, s5
                  mulhsu       s7, sp, s9
                  c.andi       a1, 17
                  rem          t3, s11, s7
                  c.and        a5, a2
                  c.srai       a0, 18
                  c.xor        a1, s1
                  mulhsu       s8, s2, t0
                  c.andi       a1, 5
                  and          a0, s11, s2
                  c.srli       a1, 11
                  c.lui        ra, 30
                  c.addi4spn   a0, sp, 560
                  slti         s4, a0, 1986
                  c.sub        a1, a5
                  c.add        sp, a1
                  c.srai       a0, 4
                  c.mv         s5, s5
                  andi         s7, zero, 1753
                  xori         s1, s5, -1407
                  sub          a6, s4, a4
                  c.addi4spn   a3, sp, 96
                  c.addi16sp   sp, -16
                  c.mv         a3, s0
                  lui          t5, 995961
                  c.sub        s1, a5
                  c.addi4spn   a5, sp, 1008
                  c.addi16sp   sp, -16
                  sll          s1, sp, s2
                  c.or         s0, a0
                  nop
                  slti         tp, a7, 1800
                  rem          s11, a3, sp
                  and          s7, sp, s2
                  rem          t3, s10, s8
                  addi         t1, s10, -189
                  xori         t5, s10, -510
                  divu         a3, t3, t5
                  c.add        a3, t3
                  addi         s11, t4, -991
                  c.lui        a7, 28
                  auipc        zero, 562265
                  auipc        tp, 955626
                  c.addi16sp   sp, -16
                  c.srli       a5, 3
                  c.or         a0, a1
                  xori         t6, s3, 1920
                  c.li         a6, -1
                  mulhu        a7, t2, t6
                  c.addi       s8, -1
                  sltu         t3, t4, s4
                  slt          gp, s6, a6
                  ori          sp, s5, -919
                  slt          a1, a4, s8
                  div          s0, t6, t6
                  add          s1, t2, s0
                  c.xor        s0, a4
                  divu         s1, a0, s9
                  addi         s10, a4, -392
                  c.and        a2, s1
                  c.add        s2, t2
                  mulhu        s8, a5, s1
                  slt          a2, a7, s6
                  srl          s10, s11, t0
                  c.addi4spn   a3, sp, 240
                  nop
                  mulh         zero, t0, a2
                  c.li         s10, 29
                  c.nop
                  mulhsu       a3, s8, ra
                  andi         s1, a5, 1991
                  mulhsu       t2, t2, s7
                  slt          s5, a2, a0
                  c.addi4spn   s0, sp, 528
                  divu         gp, s6, ra
                  sra          s0, t6, s2
                  c.xor        a5, a1
                  mul          a5, sp, t0
                  c.srli       a1, 23
                  c.mv         a2, s1
                  c.li         s1, -1
                  or           a0, a0, zero
                  mul          zero, a1, t1
                  mulh         s10, zero, s1
                  ori          a2, a4, -826
                  c.addi       s9, 1
                  andi         s6, s9, 1409
                  and          s10, s1, a7
                  c.slli       t1, 23
                  c.li         a7, -1
                  srai         t1, ra, 9
                  and          s10, s1, s9
                  mulh         sp, s2, s7
                  div          s4, s2, t4
                  xori         s2, s5, -711
                  xori         a3, ra, 1517
                  rem          s2, a6, t0
                  sll          ra, s1, gp
                  c.or         s1, a4
                  lui          a6, 917682
                  c.and        a2, s1
                  addi         s1, t2, -477
                  addi         s11, s6, 333
                  srai         t2, a1, 13
                  sltiu        zero, t2, 299
                  andi         gp, a4, -152
                  mulh         a5, s0, t3
                  remu         a3, s3, gp
                  sra          s1, s0, zero
                  mulh         a5, zero, a2
                  addi         t2, a0, -1598
                  slt          a7, s10, t4
                  c.addi       a7, -1
                  srai         s11, a6, 4
                  andi         gp, gp, -1633
                  c.slli       s4, 15
                  c.slli       s6, 29
                  c.addi       s4, -1
                  mulh         a2, s2, t4
                  andi         s11, s3, -1096
                  sra          s1, s10, s5
                  ori          zero, s6, 657
                  addi         s2, a0, 1970
                  sub          s0, t2, a5
                  c.add        gp, a0
                  sub          a3, sp, s6
                  c.andi       a5, -1
                  c.slli       a7, 6
                  mulhu        gp, s11, t1
                  c.add        s11, a4
                  srli         s1, gp, 24
                  remu         ra, s1, t0
                  c.lui        s2, 7
                  sltu         t5, a4, s0
                  srai         a0, ra, 27
                  mulhsu       s1, t5, t1
                  slti         t5, t2, 739
                  c.xor        s1, a4
                  c.nop
                  c.and        a2, s1
                  sltu         a7, ra, s8
                  srli         t5, a0, 28
                  ori          a2, s2, -466
                  c.xor        a0, a3
                  c.slli       a7, 24
                  addi         a0, s3, -755
                  xori         gp, a3, 1361
                  auipc        t1, 317495
                  lui          a1, 273526
                  slt          ra, s9, a0
                  xor          s1, s2, zero
                  addi         s2, s6, 1971
                  srai         ra, s6, 13
                  c.li         t4, 18
                  mul          a7, sp, a5
                  nop
                  xor          t3, s6, a4
                  div          a5, a0, s1
                  c.and        a1, a0
                  auipc        s1, 499223
                  mulhu        s9, ra, s5
                  slti         s5, t0, -1409
                  add          a2, t2, s2
                  lui          s10, 598301
                  auipc        a7, 765138
                  srl          t6, t6, s3
                  c.and        a5, a0
                  c.srli       a0, 1
                  andi         s10, s0, 288
                  c.mv         t5, tp
                  srl          a7, a6, s11
                  c.lui        s8, 12
                  sub          zero, a7, s9
                  c.sub        a0, a2
                  c.addi16sp   sp, -16
                  c.xor        s1, s0
                  auipc        s0, 833293
                  andi         sp, t6, -991
                  addi         s4, sp, 1570
                  xor          ra, a4, a3
                  srai         t2, t5, 28
                  mulhu        s2, s11, sp
                  mulhu        t1, s0, s9
                  auipc        gp, 435606
                  or           s1, tp, s0
                  c.li         t4, 4
                  andi         s11, a5, 244
                  c.andi       s1, -1
                  c.li         s2, 22
                  mulhsu       s9, a2, s2
                  and          t6, s2, t1
                  xori         a7, s9, 1885
                  mulhu        ra, a0, t6
                  c.srai       a2, 30
                  xori         a1, s1, -1724
                  c.sub        a3, a3
                  mulh         t3, t3, t3
                  ori          s8, t3, -2042
                  nop
                  c.andi       a2, -1
                  c.mv         s0, gp
                  xor          s10, s8, zero
                  mulhsu       s5, zero, t3
                  or           s7, a2, s3
                  div          s9, t2, s3
                  divu         a0, s8, t5
                  sll          a7, s10, s4
                  andi         t1, tp, -1327
                  mulh         a7, s8, ra
                  lui          a2, 245371
                  slti         t2, s9, 1559
                  c.addi16sp   sp, 16
                  c.srli       a2, 4
                  slli         a2, a3, 22
                  mulhsu       tp, s8, s11
                  mul          sp, t3, a6
                  c.addi4spn   a1, sp, 240
                  srai         t3, t0, 29
                  srli         t3, s7, 19
                  and          s6, s11, a3
                  c.li         t4, -1
                  or           a2, s6, s3
                  ori          s10, t3, -1110
                  and          a6, s10, t0
                  sub          t5, ra, t6
                  sltiu        a3, t4, -2015
                  c.and        s1, a3
                  rem          t5, ra, ra
                  xor          sp, s10, s1
                  c.lui        a0, 28
                  c.addi16sp   sp, -16
                  or           ra, a6, t4
                  mul          t4, t2, t2
                  xor          s4, a6, a3
                  sub          s5, tp, a5
                  c.sub        a2, a1
                  c.li         t6, -1
                  sltu         t6, a7, gp
                  andi         zero, s3, -1653
                  c.addi4spn   a1, sp, 832
                  c.slli       a0, 13
                  c.nop
                  c.and        a2, a5
                  c.or         a0, s1
                  sll          s2, s7, a5
                  c.addi16sp   sp, -16
                  c.nop
                  sltiu        gp, t0, -1082
                  c.or         a1, a3
                  auipc        gp, 777842
                  andi         t3, s3, 532
                  c.srai       a2, 16
                  slt          s11, t4, zero
                  div          a1, a0, s10
                  sra          a1, a3, t4
                  slti         s1, s11, 53
                  c.or         s1, a1
                  sub          sp, t3, s5
                  srli         s8, s0, 22
                  slli         zero, s1, 1
                  mulhu        t3, s8, t1
                  sll          t1, a3, a0
                  and          sp, s10, tp
                  sltiu        t1, s1, 1583
                  c.or         s1, s0
                  slli         a1, s9, 14
                  xori         s5, t6, -934
                  nop
                  divu         s8, t4, ra
                  xor          sp, t6, s9
                  c.addi4spn   a0, sp, 576
                  div          s2, a1, t5
                  c.slli       a0, 12
                  c.addi16sp   sp, 288
                  and          a6, a2, t1
                  div          t3, s5, s2
                  c.mv         a7, t2
                  c.li         s1, -1
                  srli         a7, a6, 27
                  c.slli       a0, 14
                  slt          s8, a5, a4
                  c.slli       sp, 5
                  c.li         a0, -1
                  or           a6, a3, a3
                  c.nop
                  c.srai       s1, 10
                  xor          s11, s1, s10
                  c.sub        s1, a0
                  c.or         a5, a0
                  c.addi       s11, 28
                  xor          s4, s6, s11
                  sltiu        a0, s4, 1396
                  mul          a0, s7, s3
                  sra          s9, s9, a1
                  slti         ra, a5, 1779
                  srl          t5, s10, s10
                  and          zero, t5, t5
                  ori          gp, a1, -1353
                  c.addi4spn   a3, sp, 320
                  slt          t2, s5, gp
                  c.addi16sp   sp, -16
                  c.addi       a1, -1
                  c.addi4spn   a3, sp, 192
                  slt          t6, t0, s11
                  and          t2, s7, a6
                  c.add        sp, s11
                  slti         s10, s10, -133
                  mulhu        zero, s10, s1
                  andi         a3, s7, -976
                  c.and        s1, s0
                  srli         sp, s5, 4
                  slti         a2, a0, 1292
                  auipc        s9, 127059
                  or           t5, s7, t0
                  sll          s0, s1, a1
                  c.sub        a3, a2
                  auipc        t6, 151666
                  slt          s2, tp, s10
                  ori          gp, tp, -253
                  xor          t4, t6, t0
                  slt          a7, s3, a3
                  mulh         s6, t4, a4
                  mulhsu       ra, s0, s9
                  remu         ra, tp, a6
                  c.or         s0, a3
                  sub          s8, s6, s8
                  c.lui        ra, 3
                  c.add        tp, s2
                  srl          a2, s7, s9
                  slli         a7, a3, 28
                  c.mv         t1, s10
                  xor          s4, zero, s3
                  sll          s11, zero, s7
                  sltu         s5, a6, s7
                  auipc        s1, 682888
                  c.andi       a5, -1
                  rem          s11, t4, tp
                  sll          s5, a4, t2
                  sltiu        a0, s10, -1037
                  c.li         s6, -1
                  c.li         s4, -1
                  add          gp, s3, s5
                  slli         s0, s11, 7
                  ori          s4, s11, 1833
                  c.addi16sp   sp, 272
                  c.andi       a2, 29
                  srai         s8, gp, 11
                  c.addi4spn   s1, sp, 608
                  c.andi       s0, -1
                  c.and        a5, a2
                  mul          a3, t3, s4
                  divu         sp, s10, ra
                  c.nop
                  or           zero, a7, s8
                  c.mv         s9, a1
                  mulh         s7, t1, s9
                  remu         t6, zero, a4
                  andi         a0, s9, -1673
                  mulh         s6, s2, s7
                  c.xor        s0, a0
                  sll          a0, zero, zero
                  c.andi       a1, -1
                  sra          zero, s2, s6
                  and          a5, sp, a3
                  ori          ra, t0, -2
                  sll          s7, s0, s0
                  mulhu        a0, tp, a1
                  slli         ra, s10, 11
                  mulh         a3, s9, ra
                  add          a3, s7, a7
                  auipc        a5, 908627
                  slli         sp, a7, 10
                  nop
                  c.or         a0, a0
                  srl          s5, a5, t6
                  slti         ra, s0, -205
                  mul          s4, zero, s2
                  slt          s11, t0, sp
                  auipc        sp, 277635
                  nop
                  mulhu        s4, a7, a1
                  auipc        s10, 311493
                  sub          a5, s8, a0
                  slt          s10, a5, a4
                  c.li         sp, -1
                  sub          t4, t2, tp
                  c.or         a1, a4
                  c.nop
                  andi         a3, t2, 908
                  nop
                  remu         t1, a2, t4
                  c.mv         s0, t1
                  c.addi4spn   a2, sp, 528
                  sltu         tp, a0, a2
                  sltiu        s10, a7, 2006
                  lui          s1, 523835
                  srai         s2, tp, 31
                  xor          s2, a0, ra
                  sll          s8, a6, t2
                  c.mv         s2, s7
                  andi         s2, a0, 563
                  srl          t4, t3, s11
                  c.sub        a1, a5
                  divu         s9, t1, s6
                  c.addi4spn   a1, sp, 832
                  c.lui        gp, 3
                  addi         s6, s8, -1798
                  c.li         a2, 9
                  addi         s10, s11, 1798
                  c.nop
                  divu         gp, s10, s0
                  slti         s4, s0, -909
                  c.addi4spn   a2, sp, 800
                  c.slli       s5, 3
                  c.addi       s10, -1
                  c.and        s0, a3
                  slt          a3, t5, a0
                  c.sub        a0, a2
                  sltu         gp, s3, s0
                  c.srli       a0, 4
                  remu         s11, a3, t1
                  mulhsu       a7, a7, t6
                  sll          a1, s1, t4
                  c.add        ra, s0
                  c.add        s5, s8
                  c.slli       tp, 10
                  lui          t3, 707234
                  sll          gp, t3, s8
                  lui          s0, 820958
                  lui          s10, 833109
                  c.mv         s10, a5
                  c.srai       a3, 14
                  andi         zero, gp, 1797
                  xor          a7, a6, a6
                  c.addi4spn   a1, sp, 896
                  srai         sp, s3, 12
                  xor          a7, a5, a5
                  c.andi       a5, -1
                  lui          t3, 21572
                  div          a6, a6, a7
                  remu         a6, s7, s8
                  mul          s9, a0, ra
                  c.addi4spn   a3, sp, 288
                  c.srli       a2, 22
                  mulh         a6, t5, sp
                  auipc        s11, 217856
                  sub          sp, a1, s4
                  srli         gp, a6, 9
                  add          t1, a3, s8
                  c.or         a3, a4
                  mulhsu       t4, a4, s2
                  c.or         a0, a3
                  c.nop
                  slti         a5, s0, -244
                  slli         s8, s0, 12
                  mulh         t5, a5, t3
                  c.srli       s0, 5
                  sltiu        a3, s11, -1165
                  srli         a3, a4, 4
                  divu         a0, t1, s4
                  slt          s0, a0, a2
                  c.lui        t2, 8
                  ori          t3, t1, -341
                  auipc        s9, 391581
                  mulhu        ra, t2, tp
                  c.xor        a2, s0
                  c.or         a3, a4
                  div          a7, s1, sp
                  c.or         a5, s0
                  c.nop
                  c.addi4spn   a0, sp, 112
                  srai         a3, a4, 16
                  c.add        tp, t1
                  c.srli       a0, 31
                  mulh         s9, a7, s9
                  and          s2, t0, s8
                  c.or         a0, s1
                  c.or         a2, a3
                  c.srai       a0, 21
                  mulh         t3, tp, a6
                  ori          s11, a2, 1692
                  c.lui        s8, 18
                  sll          a3, t6, t2
                  c.addi4spn   a0, sp, 432
                  divu         a7, t4, t6
                  c.addi16sp   sp, -16
                  sltu         t2, s1, t6
                  c.andi       a2, -1
                  slt          t1, s4, a0
                  c.mv         s6, a6
                  c.sub        a3, a1
                  div          t1, t2, a2
                  c.xor        a3, a3
                  addi         gp, t0, 1418
                  sub          s2, s2, sp
                  ori          a3, s7, -1751
                  c.nop
                  add          a3, a3, s1
                  auipc        t4, 727527
                  xori         s1, s0, 2037
                  c.andi       s0, -1
                  or           s11, ra, s0
                  remu         a3, t5, t2
                  c.nop
                  xor          s2, s8, t3
                  c.srai       a5, 31
                  sltiu        a3, t3, -311
                  xori         a0, a7, 931
                  c.mv         s2, s10
                  andi         s2, tp, -1989
                  sltiu        a1, a5, 1770
                  c.srli       a3, 23
                  c.addi       a6, -1
                  c.sub        a5, a2
                  c.li         a2, 4
                  c.slli       a2, 11
                  srl          sp, a5, tp
                  c.li         sp, -1
                  rem          a6, s6, gp
                  sltu         t1, s4, a3
                  c.add        s6, a6
                  c.li         ra, 3
                  c.srai       a5, 2
                  srli         s11, s0, 31
                  srli         s8, s9, 23
                  c.sub        a3, a1
                  c.addi16sp   sp, 480
                  xor          a0, a4, a1
                  rem          t4, a4, a6
                  sub          tp, s8, s1
                  c.addi16sp   sp, 112
                  remu         s2, s11, tp
                  or           s9, a4, zero
                  divu         s9, a5, t4
                  sub          s5, s10, s7
                  mul          sp, sp, t4
                  auipc        a0, 308930
                  mul          a3, a1, t6
                  addi         a5, s1, 1978
                  c.sub        s0, a3
                  slti         a3, s9, -1777
                  c.sub        a5, a0
                  and          s0, s2, t0
                  c.or         a0, s0
                  andi         t5, s7, 372
                  c.srli       a1, 30
                  c.and        s1, a5
                  divu         zero, sp, a1
                  c.srli       a2, 18
                  xori         s8, s11, 1942
                  xor          t3, zero, a1
                  div          s8, s11, s8
                  srl          t1, s3, sp
                  or           s4, t1, t5
                  sltiu        gp, tp, 1565
                  nop
                  mulh         s0, s2, s2
                  add          a1, ra, a4
                  srl          zero, gp, a1
                  ori          t5, t5, -790
                  c.lui        t3, 7
                  c.li         s5, -1
                  c.li         t4, 19
                  c.xor        a2, a5
                  srli         a3, ra, 12
                  c.li         s2, -1
                  and          t3, a0, s5
                  ori          s5, ra, 1726
                  slti         ra, s6, 1737
                  divu         zero, s9, gp
                  nop
                  mulh         a6, t6, a4
                  c.sub        a2, a2
                  sub          a5, a5, s1
                  c.slli       t4, 29
                  sub          zero, t3, a0
                  div          a3, a2, s1
                  ori          t6, gp, 475
                  ori          a3, tp, 306
                  mulhu        a6, s1, t0
                  c.slli       a6, 31
                  rem          t6, a6, a2
                  slti         zero, a4, 1140
                  remu         t1, a2, tp
                  c.addi16sp   sp, 80
                  nop
                  sub          a6, a4, s2
                  add          s10, s5, s11
                  nop
                  c.andi       a5, -1
                  ori          a5, a5, -1770
                  c.slli       t1, 3
                  xor          gp, t0, tp
                  srai         s2, t6, 31
                  add          a6, a0, t0
                  mulhu        t1, t3, t3
                  srl          a0, t2, t0
                  c.addi16sp   sp, -16
                  or           s11, t1, s7
                  mul          sp, ra, s5
                  sra          s5, s3, t5
                  c.srai       a3, 12
                  auipc        gp, 87095
                  c.mv         ra, a6
                  mulh         s5, ra, s5
                  or           a2, s4, t4
                  and          gp, s7, t1
                  mulh         zero, t3, t1
                  remu         a0, s8, s5
                  mul          gp, a0, t5
                  lui          s4, 868359
                  c.sub        a3, a2
                  sra          a7, t2, a3
                  c.and        a1, a1
                  c.andi       a3, -1
                  addi         gp, t6, -384
                  c.or         a1, s0
                  sltiu        s7, a3, -751
                  c.addi       gp, -1
                  c.and        s1, a2
                  srl          s7, t5, s5
                  srl          t2, s0, s11
                  c.lui        a3, 5
                  slt          s0, t6, a1
                  c.nop
                  c.srai       a5, 25
                  div          s6, a0, a6
                  c.srai       s1, 27
                  c.lui        t6, 4
                  c.add        gp, a3
                  andi         a3, s9, 169
                  nop
                  c.addi4spn   s1, sp, 736
                  slli         s8, s0, 15
                  c.srli       a1, 2
                  lui          s7, 589635
                  mulhsu       a1, t0, t0
                  c.srli       a1, 17
                  ori          s8, s5, 102
                  auipc        s6, 569953
                  c.andi       a2, 24
                  auipc        ra, 965411
                  srai         s11, a5, 7
                  c.srai       a0, 26
                  c.and        a3, a4
                  c.mv         s0, a4
                  c.srai       a0, 31
                  c.addi       s1, 4
                  sra          s6, s10, s10
                  mulhu        ra, s2, a7
                  sra          a5, s0, sp
                  c.slli       a7, 1
                  c.addi16sp   sp, -16
                  slti         t2, s8, -1215
                  sra          s2, s1, t2
                  sra          tp, s1, s11
                  c.and        a2, s1
                  c.sub        a1, a2
                  addi         t3, a3, -2011
                  c.nop
                  mulhu        s11, a4, s3
                  remu         s5, a4, s5
                  srli         t1, t6, 19
                  c.sub        a5, a1
                  auipc        s8, 818327
                  nop
                  auipc        s10, 1026685
                  and          gp, zero, a6
                  c.mv         s7, s6
                  c.addi       ra, 24
                  add          s0, t3, a6
                  mul          s5, s6, s1
                  addi         a5, a6, 1644
                  sll          t5, s5, s1
                  c.addi       s11, 14
                  c.addi       s2, -1
                  xori         s9, s8, 1193
                  sltu         s10, s10, a2
                  mulh         a2, t6, s0
                  c.or         a2, a5
                  slti         a3, ra, -701
                  auipc        s8, 324382
                  remu         s0, t5, t6
                  sra          t2, gp, s10
                  addi         s10, t0, 278
                  nop
                  slli         s1, gp, 9
                  slt          s4, t3, s7
                  c.and        a2, s1
                  divu         s9, ra, s8
                  c.addi4spn   a2, sp, 752
                  slli         s5, zero, 3
                  c.addi4spn   a2, sp, 176
                  mulhu        a6, tp, t6
                  xori         a1, a6, -1423
                  slti         a3, a5, -1279
                  and          t6, tp, t2
                  mul          a5, a1, s2
                  ori          s6, s7, 1224
                  c.srli       s0, 10
                  andi         t1, gp, 912
                  add          t1, s3, a2
                  srli         t6, t3, 20
                  mulhsu       s6, s6, s1
                  divu         t1, t1, a0
                  c.or         s1, a5
                  div          ra, s10, a1
                  andi         s1, s3, -88
                  c.or         a5, a3
                  or           a7, t1, t0
                  ori          t3, s10, -2028
                  c.addi16sp   sp, 448
                  addi         s7, s0, 126
                  c.andi       a0, -1
                  c.srai       a3, 18
                  c.sub        a2, s0
                  nop
                  mul          t5, s11, s8
                  mul          s11, s5, t6
                  slli         zero, a6, 0
                  c.srli       a0, 14
                  c.srli       a1, 23
                  c.addi16sp   sp, 272
                  c.sub        s1, a0
                  srl          s0, gp, s6
                  mul          s9, zero, s7
                  ori          a5, a4, 824
                  c.lui        t4, 14
                  addi         s0, s6, -584
                  c.srai       s1, 16
                  c.and        a3, a3
                  c.and        a3, a1
                  sltu         gp, t5, a0
                  andi         t3, s0, -1146
                  slt          s5, gp, t5
                  lui          s11, 955655
                  srli         s0, a1, 0
                  sltu         ra, a6, gp
                  sll          tp, s10, a0
                  mulh         gp, s0, s2
                  sltiu        s11, t1, -1730
                  c.addi16sp   sp, 400
                  sub          s7, a6, sp
                  c.sub        a1, a0
                  c.addi16sp   sp, 368
                  rem          sp, s5, a6
                  c.add        gp, sp
                  c.mv         t2, s10
                  c.nop
                  auipc        a2, 928260
                  mulhu        t5, ra, s6
                  slli         s8, a0, 12
                  sltiu        t1, s1, -978
                  divu         tp, t2, t2
                  sub          t4, t6, s5
                  c.addi       ra, 30
                  c.addi       ra, -1
                  c.andi       s0, -1
                  xor          a2, t1, a3
                  and          a2, t2, s2
                  c.and        s0, a5
                  andi         s4, t6, 1765
                  srl          s1, s4, t0
                  andi         t3, s10, 1643
                  nop
                  rem          s10, ra, t0
                  sub          a7, t0, a1
                  sltu         a3, s7, s10
                  c.lui        t2, 21
                  c.srli       s0, 24
                  div          s4, s5, a3
                  sub          tp, ra, s1
                  c.addi16sp   sp, 320
                  div          s0, t0, t6
                  c.and        a0, a5
                  or           t3, a6, s4
                  ori          s10, t3, 1658
                  add          ra, s3, t1
                  c.lui        s1, 30
                  srl          sp, s7, s11
                  c.xor        a0, a4
                  sub          a3, a4, a0
                  c.andi       s1, 4
                  sltu         a0, t0, s6
                  c.lui        s4, 26
                  c.li         t4, -1
                  srl          a7, s8, zero
                  lui          gp, 108383
                  nop
                  srli         a3, s2, 11
                  mulh         s7, s2, tp
                  div          t1, a6, t6
                  c.addi16sp   sp, -16
                  c.or         a3, a5
                  c.add        a3, t5
                  mulhsu       t3, ra, t0
                  mulh         s8, t5, s4
                  srai         s2, t1, 5
                  c.addi4spn   a0, sp, 528
                  srai         t4, s9, 27
                  c.lui        a5, 2
                  div          tp, s6, s2
                  c.or         a2, s1
                  srai         a5, ra, 13
                  c.mv         s7, t1
                  srli         a7, t4, 7
                  add          sp, t1, s11
                  c.addi16sp   sp, 464
                  slt          a2, t1, s0
                  addi         a3, t6, 1965
                  c.sub        a2, a2
                  c.and        a1, a3
                  srai         zero, ra, 6
                  sltiu        s4, t0, 1163
                  c.addi       s11, 20
                  c.srai       a3, 19
                  add          s9, ra, tp
                  slt          sp, s0, a2
                  sltiu        s11, t4, -234
                  c.mv         sp, t2
                  c.srli       a5, 4
                  ori          a3, s10, 1245
                  or           gp, s7, s10
                  slli         s5, a2, 12
                  c.addi4spn   a2, sp, 144
                  addi         s7, a3, -605
                  srli         a6, a7, 27
                  div          t3, zero, t0
                  div          a7, s8, gp
                  auipc        sp, 400449
                  divu         sp, t4, s1
                  srli         a5, a5, 16
                  div          a5, s11, a0
                  add          a1, s6, t4
                  rem          s2, tp, t2
                  c.lui        a0, 21
                  c.srai       a1, 4
                  andi         s5, s11, -568
                  xor          t5, a4, s10
                  c.srai       s0, 30
                  sltu         a7, a4, t1
                  auipc        t1, 349491
                  mulhu        s10, t3, s3
                  slti         s4, a4, 70
                  c.slli       a2, 19
                  xori         s4, t6, -970
                  xori         a7, a7, -1245
                  sltu         s6, a4, a5
                  sll          a2, s8, sp
                  c.li         tp, -1
                  mul          sp, t3, s11
                  addi         t5, s4, -751
                  c.or         s0, a4
                  add          s7, s3, s0
                  c.slli       t4, 1
                  slti         gp, tp, -404
                  mulhsu       a5, t2, tp
                  mulh         s9, t5, s8
                  c.add        a3, s11
                  c.addi4spn   a1, sp, 304
                  rem          a0, s9, a2
                  c.xor        s0, a2
                  auipc        t1, 813142
                  ori          s6, s9, 374
                  div          t3, t1, t5
                  c.addi4spn   a2, sp, 960
                  c.nop
                  mulh         s10, a7, ra
                  mulh         a5, s9, t0
                  rem          t4, gp, s4
                  ori          t6, s7, 389
                  c.addi4spn   s1, sp, 704
                  slti         sp, sp, -33
                  slti         t3, tp, -1451
                  xori         t2, a1, 1400
                  sll          t2, s2, t6
                  xor          a0, a2, tp
                  addi         s8, t1, 1034
                  c.and        a2, a2
                  c.slli       a7, 27
                  srai         t1, s6, 13
                  c.addi16sp   sp, -16
                  mulhsu       a6, t1, t3
                  slt          t2, a5, zero
                  c.addi16sp   sp, -16
                  c.add        s6, t5
                  mulhu        tp, a1, a7
                  addi         s10, s11, -302
                  auipc        s1, 35537
                  c.sub        a2, a4
                  srai         ra, s2, 24
                  addi         ra, gp, 1576
                  c.srli       a0, 30
                  c.andi       a2, -1
                  auipc        s0, 1012689
                  auipc        tp, 998283
                  c.andi       s1, 4
                  sub          a1, s7, s4
                  c.add        tp, t1
                  addi         a0, s3, 1042
                  c.addi16sp   sp, -16
                  andi         a5, s5, 1241
                  sra          s8, s6, sp
                  mul          s4, s7, s6
                  sub          zero, gp, t2
                  c.and        a0, a5
                  nop
                  c.srai       s0, 7
                  sll          s10, s9, s10
                  sub          t3, a7, s6
                  c.or         s0, s0
                  c.add        t1, t0
                  c.srli       a1, 29
                  c.lui        s11, 1
                  c.mv         s6, s8
                  auipc        zero, 983341
                  divu         s8, a2, s7
                  rem          s1, gp, s1
                  c.srai       a2, 28
                  xor          t1, gp, a0
                  c.addi16sp   sp, 448
                  addi         s6, a2, -8
                  or           s8, a0, a5
                  addi         a5, a4, -1656
                  xor          a1, a2, s8
                  add          a1, s6, a7
                  c.slli       a1, 4
                  c.andi       a3, 27
                  and          gp, a5, t6
                  c.srli       a5, 1
                  sltu         s6, s3, gp
                  c.nop
                  mulhu        a1, a4, s5
                  ori          a6, s5, 1137
                  c.andi       a5, -1
                  srai         gp, s11, 17
                  srai         gp, s0, 28
                  c.addi16sp   sp, 192
                  srai         t4, zero, 21
                  sll          s5, a1, t3
                  sltu         tp, a0, a6
                  ori          s2, zero, -804
                  xor          a6, a5, a0
                  c.lui        s5, 18
                  addi         s8, s8, -955
                  c.addi16sp   sp, 240
                  nop
                  slti         s5, s0, 1374
                  c.xor        a5, s0
                  c.and        a5, s1
                  slt          s1, t5, s3
                  srli         a5, s3, 10
                  nop
                  mulhsu       s10, a3, t3
                  rem          ra, sp, a2
                  sra          t6, a2, t2
                  nop
                  sub          s0, s10, s10
                  sll          s2, s3, a6
                  sll          t1, ra, tp
                  divu         a2, t4, a3
                  slti         a1, a1, -668
                  c.or         s0, a2
                  c.addi16sp   sp, -16
                  c.addi4spn   a1, sp, 912
                  c.srai       a1, 28
                  remu         s11, s4, t4
                  or           s5, a6, a4
                  c.lui        s4, 8
                  auipc        t1, 901524
                  or           s10, s11, gp
                  c.sub        a0, s1
                  sll          a0, a7, s2
                  c.addi       a7, -1
                  slt          s4, t5, s2
                  mulhu        zero, t3, tp
                  c.srli       a1, 9
                  c.andi       s0, -1
                  sll          a6, s0, s10
                  divu         s6, a5, a1
                  mulh         s8, a4, t5
                  xor          tp, t2, t6
                  srai         a1, a6, 28
                  mul          s5, s0, zero
                  and          s8, s0, a5
                  slt          a0, s2, a6
                  ori          gp, t5, 1796
                  mulhsu       t5, a2, zero
                  rem          a2, s9, a2
                  lui          a2, 55397
                  auipc        t4, 229989
                  xori         a1, zero, 120
                  andi         s2, s7, 514
                  c.and        a0, a2
                  srli         a1, a7, 0
                  sub          t1, sp, a3
                  and          t2, s2, a2
                  div          t1, s5, s5
                  c.addi       s7, 7
                  rem          s6, ra, zero
                  xori         a7, a0, 1825
                  srli         s4, s4, 18
                  rem          t2, s6, t1
                  c.lui        a0, 27
                  c.lui        s7, 16
                  andi         a6, s4, 1750
                  c.srai       a0, 2
                  ori          t4, s2, 360
                  c.li         a6, 17
                  srli         a5, tp, 17
                  c.srai       s1, 3
                  c.add        s9, s0
                  xori         t6, gp, 1086
                  c.addi4spn   s0, sp, 912
                  c.li         s11, 1
                  c.mv         a7, a0
                  c.andi       a1, -1
                  c.andi       a0, 4
                  add          s10, a4, a3
                  c.sub        a0, s0
                  c.li         s10, 7
                  mulhsu       s6, s8, a2
                  lui          t5, 390963
                  andi         s2, s6, -972
                  c.add        a3, s8
                  c.nop
                  andi         a2, s0, -1657
                  c.nop
                  mulh         t6, t0, a3
                  rem          s10, t2, t3
                  c.slli       a6, 20
                  xori         t4, s5, -1722
                  c.mv         a6, a2
                  slt          a3, ra, s9
                  srai         s5, a2, 18
                  and          t5, s2, t0
                  rem          gp, gp, t3
                  c.addi16sp   sp, -16
                  mulhsu       s5, s7, t3
                  mulhu        s9, sp, a6
                  sra          zero, tp, s10
                  lui          s5, 585483
                  div          s11, a6, a0
                  c.and        a3, a0
                  andi         a1, ra, -415
                  sra          t3, zero, s6
                  mul          a7, a5, a7
                  ori          a6, t4, -1562
                  c.addi       s6, 30
                  c.add        gp, s0
                  c.xor        a1, s0
                  mulh         s7, t4, s9
                  c.li         gp, 20
                  sub          t4, s9, a7
                  slti         a6, s8, 1419
                  divu         s6, s4, t3
                  slli         t4, t4, 6
                  lui          s7, 53572
                  c.andi       a3, -1
                  srl          s7, a1, t3
                  div          a6, a1, a0
                  c.and        a5, a1
                  rem          a3, zero, t5
                  c.andi       a0, -1
                  slli         a2, s3, 16
                  slti         t3, s11, -321
                  c.li         a1, -1
                  srai         t3, s8, 2
                  addi         t6, s1, 48
                  nop
                  c.xor        a0, a0
                  c.addi16sp   sp, 32
                  mulhu        sp, ra, sp
                  andi         s10, s11, 1904
                  c.srli       s0, 25
                  srai         tp, ra, 10
                  c.lui        s9, 8
                  add          a6, a3, ra
                  sll          t6, t0, t2
                  srai         a7, s10, 24
                  c.li         sp, -1
                  sltu         a1, s9, s4
                  sub          s6, ra, s1
                  c.srli       a5, 19
                  c.srai       a1, 23
                  c.addi16sp   sp, 16
                  c.li         s1, 23
                  add          s7, s0, a2
                  c.addi16sp   sp, -16
                  or           tp, a7, s2
                  c.mv         s0, a0
                  mulhsu       t6, s5, s5
                  mulh         s5, s3, s7
                  slti         s10, s11, -1227
                  auipc        a3, 34241
                  slli         s5, sp, 5
                  c.or         a0, a1
                  c.addi16sp   sp, 304
                  srai         s11, s9, 26
                  sll          t2, s4, zero
                  auipc        s9, 760890
                  mulhu        zero, s4, s7
                  auipc        t6, 200150
                  c.li         s2, -1
                  c.and        a2, a1
                  mulhu        s5, t2, s4
                  addi         a7, s6, 320
                  mulhsu       gp, s0, s9
                  remu         a6, t5, a2
                  c.slli       s10, 6
                  addi         a0, s3, -272
                  c.andi       a5, -1
                  c.and        a1, a1
                  auipc        s7, 570084
                  mulhsu       a6, tp, s7
                  divu         s9, s9, s6
                  ori          sp, s6, 361
                  slti         s4, zero, -821
                  c.lui        s2, 14
                  c.and        a0, s1
                  sll          s10, s11, t3
                  c.srli       s1, 14
                  sra          a7, t4, zero
                  c.andi       s1, 29
                  andi         tp, s7, -1552
                  sub          a2, s8, t2
                  srl          ra, ra, s3
                  slli         s8, s2, 30
                  xor          zero, s7, t3
                  c.li         s6, -1
                  c.nop
                  c.mv         t1, a1
                  mul          t2, a5, a4
                  nop
                  mulhsu       s2, s3, a6
                  sltiu        t5, s4, 1002
                  srli         a2, s7, 9
                  sub          gp, s10, a1
                  c.slli       t3, 27
                  andi         t5, t0, -1010
                  and          a0, s6, a3
                  ori          a1, s0, 816
                  sra          s8, s6, a0
                  srli         ra, s6, 30
                  srli         gp, a1, 0
                  c.sub        a5, a1
                  slli         t1, a7, 31
                  xor          s4, tp, a6
                  addi         s6, s7, -1106
                  c.srai       s0, 31
                  c.andi       a0, 3
                  mul          s9, a1, t4
                  srl          t3, gp, a7
                  add          a1, t6, t5
                  xori         t6, s10, 896
                  addi         t4, s0, -732
                  mulhsu       a1, a6, t6
                  rem          a7, s11, sp
                  rem          s0, s3, s7
                  mulhu        t4, s4, a3
                  c.addi16sp   sp, -16
                  add          t3, sp, s3
                  c.li         a5, -1
                  divu         ra, t6, a2
                  c.srai       s1, 1
                  xori         a2, s8, -1133
                  divu         a6, t5, s6
                  c.addi       s4, 31
                  sll          a3, gp, s10
                  c.xor        a0, a3
                  c.and        a2, a2
                  mulhu        a2, t0, s1
                  c.slli       t4, 25
                  mulh         s4, s8, s3
                  andi         s10, t0, 801
                  nop
                  and          s0, gp, a0
                  nop
                  c.srai       s0, 1
                  c.lui        gp, 26
                  div          a2, tp, s7
                  auipc        t2, 823735
                  mulh         a7, a2, s1
                  c.nop
                  lui          s0, 425048
                  c.lui        a5, 8
                  div          s7, s4, a3
                  sltiu        t6, s10, 750
                  c.srli       s1, 7
                  div          s2, t2, zero
                  c.li         a6, -1
                  c.addi4spn   a2, sp, 832
                  c.mv         a3, tp
                  srli         s11, t6, 30
                  c.and        a1, a2
                  addi         zero, a1, 2041
                  slli         a0, t4, 22
                  sub          s10, a0, s4
                  sltiu        s5, a1, 1130
                  mulhsu       s7, t0, a5
                  mul          a0, a2, t4
                  slt          s9, zero, ra
                  slt          a3, s9, s1
                  c.srli       a5, 12
                  mul          a5, s5, a4
                  c.srai       a0, 14
                  srli         s2, a1, 29
                  srl          a3, t1, zero
                  c.li         t1, 21
                  add          a0, s4, sp
                  andi         tp, t3, -751
                  mulhsu       a0, t3, zero
                  c.sub        a2, a3
                  c.srli       a2, 13
                  c.addi4spn   a0, sp, 432
                  div          tp, a3, a2
                  c.or         a2, a2
                  c.xor        a0, a4
                  and          a6, a1, tp
                  c.mv         s4, a4
                  c.srli       s1, 11
                  c.andi       s1, 17
                  mulhu        a6, s7, s1
                  mul          a5, s6, tp
                  xori         t6, t0, 70
                  sltu         s4, a3, s7
                  sltu         s2, t5, s9
                  ori          s0, a5, -913
                  or           sp, s11, s10
                  sltiu        gp, zero, 359
                  c.add        s10, a0
                  ori          s7, a3, -1060
                  sltiu        a2, s0, -1574
                  xor          a3, s4, a6
                  div          s7, s5, tp
                  auipc        ra, 611852
                  lui          a2, 501263
                  c.andi       a1, 31
                  c.lui        a3, 1
                  c.addi4spn   a2, sp, 592
                  sltiu        t3, a0, 73
                  mul          tp, s0, s9
                  c.xor        a2, a1
                  c.addi16sp   sp, -16
                  c.or         a1, a3
                  srl          s5, t3, sp
                  sltu         sp, t1, t6
                  c.srli       a1, 11
                  divu         s2, s0, s3
                  c.slli       s1, 12
                  slt          gp, s6, t2
                  c.mv         sp, a3
                  c.mv         t1, sp
                  slti         a2, s9, -1374
                  or           s11, t5, s3
                  c.add        a7, s10
                  sltiu        tp, s0, -287
                  c.slli       a5, 22
                  srl          t5, s7, a6
                  c.lui        gp, 8
                  c.srai       a1, 20
                  c.addi16sp   sp, 32
                  c.sub        a5, a0
                  c.srli       a5, 30
                  srli         s11, a6, 18
                  c.andi       a1, -1
                  slti         t3, a2, 311
                  mulhu        ra, s0, s5
                  c.and        a0, a0
                  c.mv         t4, a4
                  slti         a0, s1, -227
                  rem          a5, s6, a3
                  c.srli       a0, 13
                  auipc        tp, 257786
                  c.addi       t2, -1
                  c.sub        a5, a4
                  c.and        a5, a2
                  sub          s7, a0, s8
                  xor          s11, a7, s6
                  andi         a5, t1, -1618
                  addi         gp, t6, -911
                  srli         s10, s6, 2
                  c.li         s2, -1
                  c.mv         t5, s5
                  srai         zero, a0, 3
                  c.addi       s1, 21
                  mul          s2, a0, t0
                  sltu         t5, a2, t6
                  slt          a1, a5, t6
                  rem          a3, gp, s2
                  c.lui        a0, 28
                  remu         a6, s8, s8
                  mulhu        a7, s3, a1
                  sub          gp, t5, zero
                  addi         s2, s10, -547
                  mul          tp, t0, a6
                  c.lui        t4, 2
                  srai         a7, sp, 0
                  c.sub        s0, a3
                  c.or         a1, a3
                  c.nop
                  c.addi4spn   a1, sp, 576
                  add          s11, s8, a2
                  c.addi16sp   sp, 352
                  xori         a7, a0, -741
                  rem          s4, sp, s9
                  c.and        a0, a2
                  c.or         a3, a1
                  sll          a7, a1, t3
                  c.srai       s1, 9
                  srl          t3, s1, t4
                  mulh         s6, gp, s3
                  c.addi       s9, -1
                  add          tp, gp, zero
                  xor          zero, t5, s1
                  c.or         s0, a2
                  srli         t1, s10, 3
                  c.srli       a5, 17
                  rem          t6, t6, sp
                  c.li         t6, -1
                  xor          t6, s4, s2
                  c.lui        s8, 10
                  c.xor        a5, a0
                  sll          s4, s6, s1
                  rem          tp, s0, s0
                  addi         s5, s0, -1053
                  c.srai       a2, 12
                  sub          a6, a5, t1
                  c.addi16sp   sp, -16
                  c.nop
                  addi         t6, t5, 1434
                  mulhu        t4, s5, a5
                  slli         a3, gp, 2
                  sltiu        s11, t3, 366
                  c.nop
                  c.slli       s1, 14
                  c.sub        a1, s0
                  remu         a6, a4, s7
                  c.srli       a5, 7
                  or           a5, sp, s11
                  div          s5, a3, t0
                  sra          a0, a0, s5
                  c.addi16sp   sp, 304
                  nop
                  mulhu        t1, s1, s6
                  sll          s6, t4, sp
                  mulh         s7, s3, s5
                  srai         a3, s0, 11
                  nop
                  or           s1, sp, gp
                  mulh         s4, s7, s2
                  mul          a3, a2, a7
                  c.andi       a1, -1
                  c.slli       a7, 9
                  mul          t6, s2, t5
                  slli         s0, ra, 16
                  slli         s10, s7, 2
                  ori          a7, a0, 206
                  mulh         s6, a2, zero
                  auipc        s11, 641411
                  c.andi       a0, 11
                  mulhu        s5, a4, s6
                  srai         t2, a1, 3
                  c.srli       a1, 11
                  remu         gp, t3, s2
                  sll          s0, s6, a5
                  srli         s8, zero, 11
                  mulhsu       s9, zero, t6
                  add          zero, tp, s8
                  c.addi16sp   sp, -16
                  divu         a0, a1, a2
                  andi         s4, a0, 1884
                  c.nop
                  and          a7, s3, s11
                  srli         sp, a7, 18
                  c.slli       s9, 11
                  slt          t3, t6, s8
                  slli         t3, t6, 7
                  c.addi16sp   sp, -16
                  mulhsu       t2, a7, a2
                  c.or         a2, a2
                  c.slli       s9, 10
                  slli         t3, t3, 11
                  slli         s8, t4, 20
                  slli         s11, a7, 25
                  c.mv         a2, t4
                  c.addi4spn   s1, sp, 96
                  c.and        a1, s0
                  nop
                  c.srli       a3, 28
                  sll          tp, sp, t1
                  c.lui        t5, 24
                  c.srai       s1, 2
                  sra          a0, t0, tp
                  c.or         a5, a5
                  or           t2, t5, a2
                  c.and        a1, a3
                  c.mv         a3, t2
                  slti         s10, gp, -1847
                  sltu         gp, s0, s7
                  remu         s7, a0, a6
                  c.xor        s1, s0
                  srl          a6, t4, a3
                  sll          a6, t1, a6
                  addi         s11, t2, -1951
                  c.and        s0, a5
                  c.sub        a0, s1
                  and          a3, ra, s2
                  c.slli       t3, 10
                  sltu         s9, t4, tp
                  sub          a5, s4, s3
                  c.addi4spn   a3, sp, 1008
                  c.xor        s1, s0
                  c.addi16sp   sp, 496
                  auipc        s1, 1043329
                  srli         a3, s9, 30
                  c.addi16sp   sp, 176
                  mul          t2, t0, t6
                  slti         s0, a3, 1878
                  mulh         s8, t1, s11
                  mulhsu       a7, a4, ra
                  sltiu        a1, t2, -722
                  c.or         s0, a1
                  sll          a3, t6, s5
                  addi         s1, a4, 655
                  auipc        s6, 1003669
                  srai         s9, s9, 28
                  c.addi4spn   a0, sp, 96
                  lui          t4, 530460
                  sltiu        t6, t2, 484
                  and          sp, zero, t5
                  c.li         s6, -1
                  c.addi       s4, -1
                  nop
                  mulhu        s6, s5, s1
                  c.srli       a2, 1
                  c.slli       s2, 18
                  c.slli       s7, 31
                  and          s2, a1, s11
                  auipc        a3, 202354
                  slli         s11, s4, 11
                  addi         a7, gp, 1112
                  c.or         a5, a2
                  c.lui        s5, 27
                  c.addi4spn   s1, sp, 752
                  c.and        s0, s1
                  c.lui        s5, 11
                  c.li         s8, -1
                  auipc        sp, 554819
                  mulhu        a7, t3, s2
                  c.srai       a5, 24
                  slt          t5, a4, s5
                  c.andi       s1, -1
                  or           a0, s1, s6
                  c.mv         gp, s6
                  c.lui        a6, 29
                  ori          t6, t2, -1940
                  div          a5, t6, a3
                  c.addi4spn   a3, sp, 624
                  slt          ra, a7, a1
                  c.li         a3, 31
                  sltu         a6, ra, a3
                  slt          s2, s9, a1
                  mulhsu       a3, s1, a7
                  sll          s0, ra, s5
                  c.andi       s1, 23
                  c.nop
                  add          tp, t3, s8
                  auipc        tp, 555115
                  c.sub        a2, s1
                  mulhsu       t2, t0, t3
                  ori          t1, t6, 1463
                  addi         s1, s10, 1527
                  rem          t2, t5, s11
                  sub          a7, zero, tp
                  add          s11, t6, s11
                  mul          s4, sp, s6
                  c.sub        s0, s0
                  remu         t1, t0, a5
                  c.addi4spn   a2, sp, 976
                  c.srli       s1, 6
                  c.or         s1, a4
                  c.andi       a3, -1
                  nop
                  srli         tp, a3, 31
                  mulhu        s6, t6, t5
                  rem          s10, a1, s2
                  sub          s2, t6, a2
                  c.srli       a1, 25
                  andi         s1, t1, -880
                  c.nop
                  sub          s8, s7, t4
                  auipc        a3, 990207
                  sub          s0, t0, s8
                  mulhu        sp, a4, s3
                  remu         s7, t1, s0
                  c.slli       s2, 7
                  sra          s6, s0, t0
                  mulhu        a6, s8, t3
                  and          ra, a7, sp
                  or           t5, s1, t1
                  c.slli       s7, 22
                  mul          a2, t6, a2
                  c.andi       a3, 2
                  c.nop
                  c.sub        a0, s1
                  slt          a0, a1, a3
                  xori         s5, a7, 146
                  slt          ra, s6, s8
                  c.and        a2, a1
                  sra          gp, tp, s5
                  c.li         t1, -1
                  and          tp, a3, s2
                  c.nop
                  c.mv         s4, a3
                  sltiu        s7, t6, -126
                  slt          s0, s0, t1
                  c.addi16sp   sp, -16
                  c.xor        s0, a3
                  c.addi16sp   sp, -16
                  slt          t1, a5, a5
                  c.add        a5, a2
                  c.lui        t4, 24
                  sll          a0, s4, t3
                  ori          s4, a1, -1383
                  srai         t1, s11, 9
                  sltiu        zero, s6, -2033
                  c.sub        a2, a4
                  mulhu        s2, s6, s7
                  ori          a2, s1, -380
                  slt          t2, s11, t4
                  srai         a3, t2, 16
                  slt          sp, s11, s5
                  srai         t3, s6, 17
                  srli         s5, a1, 3
                  sub          ra, t1, tp
                  sltu         s6, s4, t2
                  srai         t1, ra, 19
                  slti         s1, s8, -979
                  remu         ra, s2, s1
                  lui          t3, 309077
                  div          ra, t2, tp
                  rem          a2, s5, s7
                  slli         a7, s11, 31
                  addi         t2, t0, -515
                  c.addi16sp   sp, -16
                  sub          s7, s4, a6
                  divu         a5, s8, a0
                  add          zero, s11, s9
                  add          s10, a7, t5
                  c.addi4spn   a2, sp, 336
                  sll          s0, t1, s4
                  c.lui        a5, 8
                  c.and        a3, s0
                  andi         s11, s11, 36
                  rem          s8, s0, s4
                  c.nop
                  srli         gp, s10, 6
                  addi         t1, t0, -670
                  sub          a3, a6, t1
                  c.mv         s11, t0
                  sra          s0, s10, sp
                  c.xor        a0, a2
                  add          s8, a5, s3
                  rem          a7, t1, gp
                  divu         s4, sp, s9
                  c.srli       a1, 2
                  srl          a3, a7, t3
                  ori          zero, a5, 1616
                  remu         sp, a3, a3
                  or           a1, a2, t4
                  ori          s10, s1, -935
                  srai         t1, t5, 5
                  c.addi       s9, 16
                  sub          sp, s8, s5
                  srli         a5, s2, 28
                  c.andi       s0, 3
                  sra          a7, a2, t4
                  c.addi16sp   sp, -16
                  sub          s7, a3, a4
                  nop
                  c.addi       a0, 2
                  c.addi4spn   a0, sp, 432
                  c.lui        a6, 17
                  mul          t6, s11, s11
                  c.sub        a5, a5
                  sub          s6, a4, s5
                  slli         t5, s2, 0
                  slti         s4, a5, 1403
                  c.sub        a1, a5
                  ori          a5, s0, -628
                  xori         sp, s7, 923
                  addi         s4, sp, -1042
                  c.li         a7, 23
                  c.add        a5, s7
                  andi         t4, s6, -505
                  xor          tp, a2, t1
                  xori         t2, s9, -1767
                  c.li         s6, 9
                  remu         a6, s0, s4
                  remu         s4, a4, t6
                  slt          a5, s5, ra
                  c.sub        a2, s1
                  slt          s4, s2, a0
                  c.mv         a7, a3
                  c.slli       a3, 31
                  lui          ra, 316289
                  divu         t6, s2, s9
                  mulhu        a6, t0, a2
                  c.andi       a3, -1
                  add          a3, t2, a2
                  srai         t1, t0, 21
                  srl          ra, a0, s1
                  c.addi       a3, -1
                  c.srli       a2, 20
                  add          s2, a7, t1
                  divu         sp, a1, s9
                  mul          tp, s8, s9
                  and          t3, s6, t4
                  and          s2, t5, s10
                  div          s4, tp, s9
                  and          t4, a2, a6
                  c.lui        gp, 6
                  c.xor        a2, a1
                  srli         a1, t6, 6
                  lui          tp, 428666
                  slt          s7, s3, t1
                  ori          a7, a2, 655
                  slti         s6, t5, -1166
                  mul          zero, s5, s8
                  c.li         s6, 5
                  c.or         a5, s0
                  c.nop
                  slt          a5, a3, t1
                  sra          sp, s4, ra
                  nop
                  nop
                  sltiu        zero, gp, 478
                  c.addi       t4, 28
                  c.andi       a0, 15
                  c.srai       a5, 9
                  srli         tp, s8, 9
                  add          a0, s5, s4
                  c.slli       s0, 22
                  sub          s2, a7, ra
                  c.addi4spn   a5, sp, 416
                  srl          s0, tp, tp
                  div          a0, a6, t6
                  srli         a0, tp, 20
                  c.and        a2, a2
                  c.addi       a3, 22
                  div          ra, t2, s4
                  mulh         s0, s9, s11
                  auipc        t2, 79549
                  c.and        a3, a5
                  mulhu        s2, ra, t3
                  c.slli       a5, 28
                  srl          a6, tp, a2
                  mulh         s9, t4, s6
                  rem          t3, s2, s7
                  ori          t2, tp, 1192
                  c.xor        a2, a2
                  c.mv         t3, t2
                  slli         t1, t2, 8
                  c.nop
                  addi         t5, s8, -120
                  rem          s5, a7, t0
                  sub          gp, a0, s0
                  c.addi16sp   sp, -16
                  slti         sp, s11, -260
                  rem          s6, a3, s7
                  c.addi4spn   a1, sp, 352
                  and          s2, t2, a4
                  c.and        a0, s0
                  remu         a3, t6, s11
                  c.slli       t2, 29
                  add          t5, s7, a4
                  c.xor        a5, a5
                  addi         s5, a5, -425
                  c.lui        s5, 1
                  auipc        s11, 109377
                  c.addi4spn   s0, sp, 80
                  c.slli       a0, 2
                  c.or         a2, a2
                  srai         s11, a0, 16
                  sll          tp, s6, t3
                  divu         t1, sp, s7
                  and          zero, a6, s9
                  nop
                  sll          s0, t2, a0
                  c.addi16sp   sp, 432
                  c.slli       t1, 23
                  c.sub        a1, s1
                  sltu         s4, s4, s8
                  c.add        t2, s5
                  xor          s7, s5, s5
                  xor          zero, s9, t6
                  sltiu        t4, t4, 811
                  rem          s2, s8, t4
                  sltiu        s8, sp, -1976
                  sll          s5, t1, t4
                  slti         a7, t3, -1604
                  sltu         a7, s5, a3
                  c.addi       a7, 19
                  mulhu        ra, tp, a0
                  c.addi4spn   a3, sp, 336
                  c.xor        a1, a3
                  c.addi4spn   a2, sp, 320
                  sll          s4, zero, s0
                  sll          s10, tp, a1
                  c.or         a1, s1
                  c.addi16sp   sp, 48
                  sltu         s1, t1, t4
                  xor          s7, ra, t1
                  srai         zero, a0, 30
                  xori         a1, s2, 1008
                  srai         t1, t2, 8
                  c.slli       a7, 16
                  c.andi       a0, 26
                  auipc        t5, 603454
                  rem          s6, a7, a7
                  c.or         a3, s1
                  mul          a3, t3, t5
                  srl          s4, s1, a1
                  xori         t1, s7, 482
                  c.addi4spn   s1, sp, 576
                  andi         s7, gp, -448
                  mul          zero, s0, tp
                  c.slli       s0, 22
                  c.lui        t1, 2
                  mulh         t3, t1, t4
                  or           s10, s3, sp
                  c.add        t3, t4
                  mul          t3, zero, s7
                  c.xor        a5, a3
                  c.add        s9, s3
                  rem          t6, t3, s7
                  andi         t2, t4, 590
                  mulhu        s10, tp, s8
                  c.mv         t5, tp
                  mulh         s1, s1, s8
                  ori          ra, s10, -459
                  remu         a5, a3, s7
                  div          s5, t1, sp
                  sub          tp, s5, s5
                  c.sub        s1, a4
                  sltiu        tp, s0, -1288
                  slti         a7, s8, 1825
                  sltu         s2, ra, t2
                  sltu         s6, s5, s10
                  c.addi4spn   s0, sp, 448
                  c.addi       s7, 11
                  sra          s5, t4, s8
                  srl          sp, s8, a1
                  mulhsu       tp, a1, s8
                  mulhsu       a2, sp, t0
                  xor          t5, s11, s3
                  nop
                  nop
                  srl          a1, s1, s3
                  srli         s1, a2, 0
                  srli         s7, s11, 24
                  srai         s6, gp, 24
                  and          t3, s11, tp
                  mulhsu       a5, t5, s11
                  c.srli       a5, 10
                  c.lui        s10, 2
                  div          s2, a3, t3
                  c.and        a2, a5
                  mulhu        t6, s7, s2
                  c.srli       a1, 31
                  sltu         s8, s10, s5
                  c.addi       a1, -1
                  c.addi       a2, -1
                  c.and        a3, a5
                  mulhsu       tp, gp, t4
                  slti         s7, a6, 1760
                  nop
                  addi         t2, a0, -1018
                  slli         a2, s9, 12
                  ori          tp, t6, 1717
                  c.addi       t5, -1
                  c.add        ra, a2
                  mulhu        a7, s5, t4
                  c.srli       a2, 11
                  c.srai       a5, 21
                  c.lui        s4, 28
                  addi         zero, a7, 396
                  addi         s6, s2, -820
                  div          t6, a2, s3
                  sll          a1, tp, a7
                  xori         ra, t0, 894
                  mulhsu       t6, a5, t6
                  c.addi4spn   s1, sp, 336
                  slti         s11, t5, 156
                  c.li         a7, 14
                  mulhsu       s11, a1, a4
                  sltiu        s1, s0, -48
                  c.sub        s1, a1
                  srai         t2, t4, 28
                  sll          s10, a4, s6
                  sll          a2, a2, zero
                  auipc        sp, 255771
                  slt          tp, s11, s9
                  c.lui        s2, 5
                  nop
                  addi         zero, a3, -1689
                  slti         s9, t3, -1845
                  c.nop
                  c.li         tp, -1
                  c.and        a5, a5
                  sltiu        zero, ra, 274
                  sub          t5, ra, a3
                  rem          s0, s6, s3
                  sub          s8, a4, a0
                  c.srai       s1, 3
                  c.or         s1, s1
                  div          s11, a2, s10
                  or           sp, t6, s1
                  and          a5, s3, gp
                  nop
                  slt          t5, a7, t1
                  srai         a7, a6, 12
                  slli         s5, s6, 31
                  c.slli       s9, 4
                  c.sub        s1, s0
                  slti         s5, s4, -1323
                  slti         s9, a2, 1126
                  srli         a3, t5, 11
                  slti         s7, s2, 2013
                  srli         sp, t4, 9
                  c.addi16sp   sp, -16
                  xor          a5, gp, s7
                  sub          s2, s9, t4
                  xor          t5, s3, s1
                  slli         ra, t4, 8
                  nop
                  sltu         s4, t6, t5
                  slti         t4, s8, 1251
                  c.andi       a3, -1
                  add          a7, gp, t4
                  mulh         s2, s1, ra
                  mul          s2, a0, s10
                  lui          t1, 752826
                  c.or         a3, a4
                  srai         zero, t2, 9
                  auipc        a7, 102305
                  sltiu        s6, s2, -1163
                  srli         s10, a6, 17
                  slli         t2, s7, 27
                  slti         t1, t6, 416
                  add          s10, t4, t1
                  andi         s9, a7, 64
                  c.srli       a0, 3
                  c.addi16sp   sp, 368
                  srl          s0, s5, s11
                  mulhsu       s11, s4, t0
                  add          a5, s10, a0
                  c.addi       t5, 5
                  mulhu        t6, s4, s0
                  c.or         a5, a0
                  slti         t2, a1, -122
                  c.andi       a3, -1
                  c.add        s6, s10
                  c.srli       a2, 30
                  mulh         a6, a0, t1
                  sltiu        s4, s1, 604
                  remu         t4, a0, t4
                  srli         a7, gp, 20
                  c.addi16sp   sp, 224
                  c.add        s1, t5
                  srli         a7, s5, 10
                  addi         s4, s6, 1645
                  srai         s2, t0, 6
                  c.lui        s10, 21
                  ori          tp, t5, -1548
                  c.xor        a1, a0
                  c.slli       t5, 26
                  srli         s8, sp, 31
                  c.addi16sp   sp, -16
                  andi         zero, gp, -958
                  slt          t2, a6, ra
                  sltiu        t2, s7, -988
                  xori         s1, s9, 943
                  slli         s4, t3, 20
                  sub          a7, a6, s0
                  addi         tp, t6, 2043
                  sub          tp, t6, s7
                  or           gp, t5, a0
                  and          s10, s5, a2
                  or           s5, t1, a4
                  slti         t2, s7, -514
                  c.lui        tp, 27
                  mulhsu       t5, zero, a2
                  ori          t6, s2, -87
                  and          s11, t1, s6
                  c.andi       a2, -1
                  c.addi4spn   a0, sp, 528
                  srli         s7, a3, 26
                  or           s6, gp, t3
                  c.andi       a2, 11
                  addi         sp, a1, -1404
                  divu         t1, t5, s4
                  andi         s0, a5, -993
                  lui          ra, 936576
                  div          s1, t1, s11
                  auipc        sp, 211806
                  slt          a7, s9, s11
                  xor          s2, a3, t5
                  nop
                  sra          s6, a3, tp
                  c.sub        a2, a1
                  c.mv         t4, s2
                  c.slli       s11, 13
                  c.or         a0, s1
                  add          a3, s0, a6
                  addi         a7, t3, 528
                  c.or         a2, s0
                  slt          a1, s2, sp
                  lui          zero, 45346
                  sra          s8, s8, a3
                  c.xor        a0, a0
                  nop
                  slti         t3, s1, -1410
                  sll          s8, a2, t4
                  nop
                  add          a1, s7, s1
                  c.slli       t6, 3
                  c.or         a5, s1
                  and          s7, a1, a6
                  sub          t1, s2, a2
                  addi         s9, a6, 414
                  divu         s2, t4, t0
                  auipc        a1, 307953
                  c.sub        a3, s0
                  mulhsu       s2, s8, t3
                  c.li         s0, -1
                  c.addi4spn   a1, sp, 176
                  mulh         s4, t4, t4
                  and          a1, s7, a6
                  nop
                  c.li         s1, 16
                  c.nop
                  mulhu        s10, t1, s1
                  c.add        ra, a1
                  mulhsu       s6, s8, ra
                  xor          s5, t0, gp
                  sll          t5, t6, t4
                  add          t6, s8, s8
                  divu         s10, s1, s9
                  sltiu        a2, s5, 110
                  c.lui        a6, 27
                  srai         ra, t5, 5
                  rem          gp, t1, s1
                  c.slli       s1, 29
                  nop
                  mulhsu       t5, tp, a2
                  mulh         a3, tp, s6
                  c.andi       s1, -1
                  xori         sp, s4, 1491
                  ori          s7, s9, -547
                  c.slli       ra, 15
                  srai         a2, a4, 10
                  auipc        gp, 889070
                  addi         a5, a7, 59
                  c.and        a1, a0
                  andi         a5, gp, -1896
                  c.mv         t1, s3
                  xori         a0, ra, -92
                  c.andi       a2, -1
                  c.sub        s1, a3
                  c.nop
                  mulhsu       a2, a0, s9
                  c.addi16sp   sp, -16
                  ori          t4, a4, -43
                  slti         a6, s1, -414
                  add          s5, a3, a2
                  lui          s11, 343668
                  ori          t2, a3, -375
                  c.srai       a2, 6
                  c.lui        s7, 30
                  c.add        tp, s9
                  c.nop
                  c.addi       t5, 5
                  lui          ra, 930110
                  srli         s7, s5, 1
                  sra          t4, t5, ra
                  rem          s4, s1, s1
                  c.nop
                  or           sp, t3, s2
                  c.addi4spn   a5, sp, 896
                  srai         a0, s11, 14
                  addi         s7, t5, -1536
                  mulhu        s4, t3, s11
                  xori         a2, a3, 377
                  srli         a6, s5, 28
                  mul          tp, s2, a0
                  xori         a2, zero, 748
                  xor          t2, zero, ra
                  mulhu        t3, t4, tp
                  slti         sp, a4, 1914
                  c.srli       a2, 10
                  addi         zero, sp, -670
                  divu         t5, a4, t4
                  slli         a0, a7, 21
                  ori          gp, a4, -322
                  slli         zero, a6, 22
                  slli         s2, s8, 14
                  sub          a1, gp, a6
                  sll          t4, a2, gp
                  c.and        a1, a1
                  c.sub        a5, a0
                  mul          s4, t1, a3
                  nop
                  sltu         s6, t0, a5
                  addi         s9, a5, 448
                  srli         a7, s9, 18
                  addi         t2, a0, -242
                  mul          a3, s10, t6
                  sub          zero, s4, s2
                  div          t2, t0, t3
                  remu         ra, zero, s0
                  add          s9, a0, gp
                  c.addi16sp   sp, -16
                  xor          a3, s3, s10
                  sra          s2, s7, gp
                  c.nop
                  slli         a7, s5, 30
                  div          a1, s10, a3
                  add          s11, s6, sp
                  c.xor        a1, a1
                  and          zero, t5, t1
                  divu         t2, t2, t1
                  c.mv         s11, a2
                  slt          s6, ra, t0
                  remu         s7, t0, zero
                  divu         s8, s1, a4
                  slti         a1, s1, 132
                  c.srai       a2, 17
                  sra          s11, t5, t0
                  slt          s1, ra, a5
                  mul          ra, a1, s3
                  remu         s2, t2, t1
                  c.addi4spn   a3, sp, 752
                  mulhsu       ra, t1, a1
                  add          s4, a1, a7
                  sltiu        ra, s11, 65
                  sub          zero, a2, s4
                  sltu         gp, s11, a4
                  addi         a6, t1, 1089
                  c.sub        a0, a5
                  sra          a5, s11, t6
                  sra          s7, a7, t3
                  c.and        a2, a2
                  c.andi       a0, -1
                  divu         t1, a3, s0
                  slli         a3, t0, 24
                  c.andi       a3, 28
                  div          sp, a2, s0
                  mulhu        a5, s1, a7
                  sltu         t1, s4, a3
                  auipc        a7, 716598
                  c.addi4spn   a0, sp, 576
                  addi         a2, a6, 710
                  div          t5, ra, a2
                  c.xor        a0, a5
                  srl          t5, s4, a3
                  c.mv         a3, s9
                  sll          a5, t1, s0
                  c.add        t1, s5
                  c.addi4spn   a0, sp, 720
                  c.addi       s9, -1
                  slli         a0, sp, 1
                  c.slli       t1, 17
                  andi         tp, a2, 1744
                  c.xor        a1, a4
                  c.slli       t5, 2
                  c.addi       a5, -1
                  sltiu        s5, tp, 664
                  mulh         t1, s0, s8
                  divu         t6, a7, ra
                  remu         s0, a3, s9
                  addi         s2, t0, -1962
                  or           a0, a7, t6
                  c.addi       a2, 26
                  srl          a6, t3, sp
                  andi         a2, gp, 1776
                  remu         zero, gp, a6
                  srl          tp, t0, s5
                  slti         s5, s7, -1674
                  remu         s7, s0, zero
                  c.li         t2, -1
                  srai         s11, s4, 4
                  mulhu        a3, a3, s4
                  c.addi4spn   a5, sp, 976
                  sub          t5, a5, t4
                  c.and        a3, a5
                  c.nop
                  divu         sp, s6, t2
                  sub          gp, t5, t4
                  rem          a2, zero, a2
                  srl          t2, t6, s10
                  addi         s8, s3, 1073
                  lui          a0, 900073
                  c.addi4spn   a2, sp, 576
                  c.add        ra, a6
                  slt          s4, a1, t6
                  c.nop
                  slti         ra, t6, 38
                  lui          s4, 232219
                  xori         t5, a0, 148
                  divu         a1, s0, s2
                  c.add        s2, ra
                  or           a6, s4, t2
                  c.srli       a0, 31
                  c.nop
                  c.addi16sp   sp, -16
                  and          s2, s0, t6
                  nop
                  nop
                  c.sub        a1, a1
                  c.addi16sp   sp, 352
                  div          t1, a7, t6
                  c.nop
                  div          a2, t5, a2
                  ori          tp, s5, -956
                  slt          t2, t1, t2
                  and          t2, zero, tp
                  c.xor        a2, a3
                  mulh         sp, s4, a0
                  divu         a5, a0, t4
                  lui          t6, 252073
                  mulhsu       s0, t2, s2
                  sltu         gp, a1, s7
                  mulhsu       s6, ra, t5
                  c.xor        a5, a1
                  slli         s9, tp, 0
                  c.mv         a2, s1
                  remu         s6, s3, tp
                  slli         zero, s11, 23
                  remu         t1, s0, s1
                  c.addi4spn   a0, sp, 160
                  c.srai       a2, 17
                  xor          s2, s5, s11
                  c.andi       s0, -1
                  mul          a7, s7, t3
                  c.nop
                  c.li         t1, -1
                  sub          s2, sp, a6
                  nop
                  c.add        s5, a7
                  addi         gp, t5, -1365
                  c.li         t4, 30
                  slti         s9, ra, -1965
                  c.andi       a1, -1
                  srli         a7, ra, 8
                  c.addi4spn   a3, sp, 352
                  c.srai       a5, 27
                  addi         t2, a4, -1776
                  c.or         a3, a0
                  auipc        s6, 958958
                  remu         a6, s7, t0
                  slli         a0, ra, 24
                  ori          t6, s3, 903
                  xori         t5, t1, 1790
                  c.nop
                  c.mv         s0, s11
                  sltiu        a0, s4, -1781
                  divu         s4, a5, a7
                  c.and        a1, a3
                  c.nop
                  and          t6, a4, a7
                  mul          s10, a6, a1
                  ori          a3, s8, 1423
                  c.add        s0, s0
                  andi         a1, a2, -257
                  sll          a0, t2, t2
                  c.add        s9, s0
                  c.xor        a2, a2
                  andi         ra, sp, 1869
                  slt          a0, s9, a5
                  c.li         s9, -1
                  xori         a0, t0, -1615
                  mulh         s9, zero, t4
                  nop
                  c.xor        a2, s1
                  mulhu        s0, s4, t6
                  c.or         a1, a5
                  div          t5, a1, t2
                  c.and        a5, a0
                  srli         s11, t0, 30
                  or           t1, tp, t4
                  c.andi       a0, 27
                  srai         a3, t1, 3
                  c.sub        a1, s0
                  c.sub        s0, s0
                  c.addi       a1, 4
                  c.srai       a0, 28
                  c.sub        a3, a0
                  c.sub        a1, a4
                  lui          a3, 238086
                  sll          s5, t1, ra
                  slli         s11, a7, 19
                  sll          ra, a4, s10
                  ori          t6, s2, 770
                  mul          s5, t6, s7
                  ori          t2, t4, -960
                  sll          a0, a0, a4
                  divu         a5, s5, t4
                  c.add        a3, sp
                  c.srli       a2, 30
                  srli         s6, t1, 26
                  sltu         s5, a0, s8
                  sltu         s1, t5, gp
                  c.srai       a2, 1
                  div          t3, s8, t1
                  ori          t1, sp, -1093
                  lui          a7, 589961
                  and          s0, t4, a5
                  mulhu        t6, a7, a3
                  slti         s7, a4, -303
                  sra          t5, s1, a6
                  nop
                  srl          t1, s10, t3
                  mulhu        t5, sp, a0
                  mulhu        a1, sp, zero
                  nop
                  c.slli       sp, 31
                  sra          s11, s1, a3
                  slt          a1, t3, s3
                  c.nop
                  and          s9, s3, s5
                  sll          a0, a7, t5
                  c.sub        a5, a2
                  sltiu        zero, a4, 811
                  xor          s11, s4, s5
                  rem          a1, s8, s3
                  c.xor        a3, s1
                  addi         ra, t6, -759
                  c.mv         s8, s9
                  c.or         a5, s0
                  c.addi16sp   sp, -16
                  c.lui        gp, 18
                  c.add        t4, s3
                  slt          t3, s8, s9
                  and          tp, s3, gp
                  c.addi16sp   sp, -16
                  slli         a0, t4, 30
                  srai         s0, tp, 15
                  c.mv         gp, a5
                  c.xor        a2, a3
                  and          t3, sp, s0
                  c.addi4spn   a5, sp, 208
                  lui          s5, 1027649
                  mulh         s5, a1, sp
                  c.li         s11, 15
                  c.mv         a7, s10
                  c.srai       s1, 16
                  c.add        s10, ra
                  c.slli       tp, 3
                  c.and        s1, s1
                  nop
                  slt          a7, s6, s0
                  c.slli       t1, 15
                  addi         a7, s7, 1316
                  c.or         a0, a4
                  sltu         s11, a0, sp
                  and          a5, s1, s10
                  srl          a3, s6, a2
                  slt          a6, a6, s4
                  div          a1, gp, s1
                  c.sub        a2, s1
                  add          a2, s10, t0
                  srai         t3, s3, 7
                  c.xor        a2, s1
                  mulhu        a0, t2, t1
                  c.add        t1, s2
                  ori          t4, a6, -1633
                  auipc        a2, 991316
                  mulh         t1, s8, sp
                  sltu         s5, s0, s2
                  c.mv         a1, s4
                  sub          a5, s0, zero
                  nop
                  addi         s2, s0, 1558
                  c.addi16sp   sp, -16
                  andi         s2, a1, 1423
                  auipc        s0, 375992
                  sra          a1, s2, s11
                  divu         s10, s1, a6
                  and          t4, s0, t0
                  c.andi       a3, -1
                  rem          a2, a7, a5
                  slli         s2, ra, 28
                  rem          s4, a5, s7
                  sra          s9, s2, a4
                  mulhu        sp, s10, t4
                  sll          s2, s3, a4
                  ori          t3, s3, -951
                  c.srli       s1, 26
                  c.xor        a1, a3
                  mulh         s1, s0, sp
                  xori         a1, s0, -1609
                  mulh         tp, sp, ra
                  div          gp, s9, ra
                  srai         a6, a2, 9
                  srli         zero, s10, 24
                  c.addi4spn   a3, sp, 624
                  slli         t6, tp, 10
                  sra          t6, a5, s6
                  auipc        s5, 793628
                  rem          s8, s3, s6
                  c.lui        s1, 28
                  c.sub        a0, a4
                  slt          s9, a2, a0
                  srai         s6, s8, 12
                  sltiu        tp, s11, -736
                  c.andi       a3, -1
                  mul          tp, s1, t0
                  nop
                  mulh         gp, t3, s8
                  c.lui        s7, 26
                  div          s2, a7, s9
                  c.or         s0, s1
                  c.lui        t4, 25
                  mulhu        a5, s10, s5
                  slti         s1, t5, 1992
                  xori         s7, s11, 1154
                  c.addi16sp   sp, 304
                  addi         zero, s9, -619
                  and          t4, t2, zero
                  c.add        a3, gp
                  c.lui        a7, 27
                  slt          t2, gp, zero
                  c.or         a0, a5
                  remu         t1, ra, s7
                  sll          t5, t1, s10
                  slti         a2, zero, 623
                  c.andi       a1, 1
                  c.add        s9, s6
                  c.srli       s1, 31
                  c.and        a2, a0
                  remu         s2, s10, t6
                  srl          t6, a1, s3
                  div          t3, s1, a0
                  and          s4, a4, a6
                  and          s10, zero, zero
                  lui          t1, 1036794
                  sll          a6, s8, s4
                  c.sub        a3, a0
                  nop
                  nop
                  and          t4, s9, t2
                  divu         s1, ra, t4
                  xori         a6, a1, -1022
                  c.li         t5, 7
                  addi         s11, a1, -565
                  c.li         ra, -1
                  c.or         a0, a5
                  and          a7, s2, s8
                  addi         a5, a5, -577
                  nop
                  c.or         a2, a2
                  nop
                  c.or         a3, a2
                  andi         a6, tp, 568
                  sltu         s4, s7, s11
                  c.or         a1, a0
                  c.or         s0, a4
                  mulh         t2, s11, t0
                  c.addi4spn   s1, sp, 224
                  srl          a0, sp, ra
                  nop
                  c.add        s4, s3
                  xori         a5, t5, -569
                  c.nop
                  mulhu        t6, t0, s6
                  sub          sp, t3, s4
                  andi         tp, gp, 65
                  c.or         s0, a1
                  xor          t2, gp, s5
                  andi         s10, a2, -1992
                  sra          tp, s10, t3
                  slti         t2, s6, 1774
                  and          s1, a0, a6
                  srai         t2, t0, 14
                  divu         t2, s0, t6
                  c.addi       s11, -1
                  c.addi4spn   s1, sp, 800
                  sll          gp, tp, a5
                  xori         s10, a5, 905
                  srli         t1, t5, 18
                  mul          s1, ra, s0
                  srai         t2, t3, 8
                  c.mv         s11, s1
                  slti         t6, s11, 1649
                  slti         s6, s10, -1109
                  or           a2, ra, s3
                  mulhsu       t4, s1, s5
                  c.addi16sp   sp, -16
                  mulhu        t6, a0, s5
                  mulhsu       a3, zero, s9
                  c.andi       a2, 26
                  c.addi4spn   a3, sp, 48
                  slt          a6, s6, t3
                  c.addi16sp   sp, -16
                  mulhsu       t6, s4, a4
                  divu         t6, t0, s4
                  c.or         a1, a2
                  srli         t2, a3, 6
                  xor          s6, t0, t6
                  addi         a5, s9, -1921
                  c.xor        a2, a4
                  sll          ra, t5, zero
                  c.addi4spn   s1, sp, 560
                  c.srli       a5, 23
                  c.nop
                  sltiu        tp, a7, 1726
                  slti         tp, a3, -1394
                  sltu         t6, t6, a7
                  xori         t4, s4, -1807
                  c.slli       t3, 20
                  c.addi4spn   s1, sp, 272
                  c.add        t5, t6
                  c.srai       a0, 4
                  srl          tp, a0, s3
                  c.or         s1, s1
                  mulhsu       gp, ra, s10
                  c.sub        a2, s0
                  add          t5, a4, t3
                  xor          t1, t5, s1
                  slti         a2, gp, 1526
                  sra          s10, t1, s0
                  divu         a7, a0, t6
                  c.srai       a3, 29
                  srai         tp, s6, 30
                  andi         a2, s6, 499
                  divu         s4, s2, t6
                  or           s8, t5, s7
                  mul          ra, s2, a1
                  c.nop
                  c.xor        a2, s1
                  c.and        a2, a5
                  mulhsu       s7, sp, s11
                  xor          s5, s3, a3
                  c.mv         tp, t3
                  c.addi16sp   sp, -16
                  srl          zero, s8, gp
                  c.lui        s11, 7
                  slt          s4, a1, s10
                  srli         s6, tp, 20
                  c.sub        a0, s1
                  addi         s4, s3, 916
                  andi         s11, s9, -1170
                  sub          t6, a1, s1
                  or           a6, t6, t6
                  rem          gp, s10, gp
                  sltiu        s6, a0, -50
                  mulhu        gp, s9, s3
                  c.addi       t4, -1
                  c.addi4spn   s0, sp, 384
                  c.addi4spn   a3, sp, 496
                  srai         a2, sp, 16
                  divu         a1, a2, a2
                  rem          a5, tp, s0
                  sub          sp, a4, s11
                  mulhsu       t5, tp, t4
                  mulhsu       a3, a6, a6
                  rem          a2, a7, a2
                  c.mv         s10, gp
                  sll          gp, s1, sp
                  slli         s10, s4, 26
                  sltu         s1, a4, zero
                  div          s11, s11, s0
                  auipc        s11, 747929
                  mulh         zero, s8, a5
                  xori         t2, t0, -1309
                  c.addi       s8, 2
                  c.sub        s1, a3
                  addi         zero, t1, 1566
                  c.add        s7, t5
                  sub          t1, s2, t1
                  c.srli       a3, 25
                  c.li         s5, -1
                  and          s4, a5, a5
                  c.slli       a5, 16
                  andi         ra, gp, -663
                  lui          s4, 390724
                  mulhu        s7, s0, tp
                  slt          s1, s6, s10
                  srli         tp, s8, 23
                  auipc        a5, 339035
                  c.or         a0, a0
                  sltiu        a1, t2, -1197
                  c.addi4spn   a2, sp, 272
                  slt          t4, a5, zero
                  xor          t6, gp, ra
                  sll          s8, t6, s7
                  c.or         s0, a0
                  c.add        gp, ra
                  srai         a3, a7, 3
                  c.slli       s7, 21
                  sll          a1, t1, s7
                  c.xor        a0, a5
                  divu         s10, s6, s6
                  add          zero, a5, t2
                  c.or         s0, s1
                  sub          zero, s5, tp
                  divu         s8, a0, ra
                  slt          gp, t6, a5
                  mul          zero, s9, s9
                  lui          a5, 95306
                  sltu         s9, zero, a5
                  remu         a0, s10, tp
                  addi         s9, t6, -547
                  div          a0, t1, gp
                  c.slli       a3, 16
                  c.addi16sp   sp, 256
                  div          s2, a6, sp
                  mulhu        s1, s2, s0
                  c.lui        s9, 3
                  mul          t3, s3, s11
                  ori          a7, t3, 1925
                  add          t4, a5, s4
                  c.sub        a3, a0
                  sll          s10, s0, a7
                  c.nop
                  rem          t5, t3, t4
                  sub          a6, t1, s1
                  sub          a7, s1, s5
                  c.add        s10, a6
                  c.addi4spn   s0, sp, 240
                  c.add        s5, s3
                  xori         t6, s0, -1580
                  remu         a7, a6, s3
                  srai         zero, ra, 29
                  srl          s5, t4, s1
                  or           s0, t3, sp
                  srli         tp, a2, 15
                  addi         s2, a5, 1164
                  c.addi4spn   s0, sp, 336
                  sub          s11, a3, a4
                  c.add        t5, t1
                  c.and        a2, s0
                  remu         a5, s0, a3
                  c.addi4spn   a5, sp, 96
                  c.andi       a2, -1
                  mulh         s9, t1, t1
                  mulh         a0, s1, zero
                  c.lui        t1, 14
                  c.nop
                  c.add        s10, t1
                  srli         a5, t6, 7
                  c.slli       s11, 30
                  mulhsu       t3, ra, s5
                  rem          s7, t5, t1
                  sub          gp, s5, tp
                  c.li         gp, 3
                  divu         s1, s1, t6
                  auipc        sp, 491834
                  lui          t5, 93308
                  xor          t2, s1, a4
                  add          a3, a5, a6
                  srli         s10, a4, 10
                  c.sub        a3, a1
                  mulhu        t2, a0, a6
                  and          zero, a1, a5
                  rem          a1, s2, t1
                  mulhu        s2, t3, s9
                  add          a7, a4, s3
                  slti         t4, t3, -679
                  auipc        s5, 137118
                  sll          t1, sp, s1
                  sltiu        ra, t2, 900
                  c.andi       a5, 15
                  divu         t2, s7, s2
                  sll          a2, a7, s8
                  c.lui        tp, 25
                  sltiu        a3, s10, -1384
                  slt          a5, s9, t4
                  divu         s8, t5, a7
                  c.addi       gp, -1
                  c.sub        s1, a4
                  slt          s11, s4, a3
                  c.srai       a5, 27
                  mulhu        s8, s1, t1
                  srli         s0, a6, 0
                  c.lui        a1, 23
                  c.srai       a2, 11
                  srl          s7, zero, t5
                  c.or         s0, a4
                  ori          s2, s10, -1494
                  c.mv         s1, a4
                  ori          a0, gp, 1117
                  andi         t1, a0, -771
                  c.andi       a0, -1
                  mulhu        s8, t3, s6
                  srl          s9, s9, a0
                  nop
                  xori         s9, t6, -1473
                  add          s1, t0, s9
                  xor          a5, a5, s8
                  and          s7, a4, s0
                  sub          a2, t0, s8
                  slt          a0, s6, t2
                  divu         s4, s9, s3
                  mulhu        a3, s3, s5
                  c.slli       t5, 20
                  c.addi16sp   sp, 448
                  div          a3, s8, a3
                  c.srai       a0, 20
                  mul          t2, a2, a1
                  xor          a7, a3, tp
                  auipc        t6, 783527
                  c.srai       s1, 26
                  srai         s7, s7, 12
                  c.andi       a3, 17
                  or           tp, ra, s3
                  c.nop
                  divu         s5, a3, s0
                  c.srai       s0, 29
                  c.addi16sp   sp, 16
                  remu         a6, s3, t6
                  c.nop
                  c.lui        gp, 2
                  andi         s6, s1, -55
                  xori         t5, s7, -1616
                  slli         a7, t5, 24
                  c.mv         s11, t5
                  add          s5, a3, s6
                  srai         s7, gp, 21
                  srl          s2, a6, zero
                  srli         zero, a3, 24
                  nop
                  sltu         t3, a1, s4
                  rem          t3, a6, t1
                  xori         s0, s3, -217
                  remu         s0, s0, s9
                  c.slli       t1, 29
                  c.nop
                  c.nop
                  slt          a7, s9, t4
                  c.mv         a6, a4
                  srli         a6, a4, 1
                  c.xor        a3, s0
                  auipc        gp, 793494
                  srai         t6, ra, 15
                  mulhsu       a2, t4, s8
                  mul          s5, a0, s0
                  slli         sp, a7, 30
                  rem          t2, a7, s11
                  xor          tp, s0, a2
                  c.or         a3, s0
                  sltiu        t6, gp, -1336
                  slt          s0, gp, t0
                  srai         s6, a6, 13
                  srli         a0, gp, 20
                  andi         ra, s6, 935
                  mul          a0, t0, s9
                  srl          t4, a2, t3
                  c.slli       a2, 24
                  slt          s11, a6, t3
                  sltiu        s4, a2, 953
                  ori          a5, t1, -97
                  div          zero, s7, s10
                  c.nop
                  c.xor        a1, a2
                  xori         tp, a2, -252
                  divu         a7, s5, s11
                  and          t1, s9, s3
                  mul          s1, s5, s6
                  c.andi       a5, 2
                  srl          a2, t1, a1
                  c.addi16sp   sp, 144
                  srai         s10, s4, 6
                  sra          a5, a5, a4
                  mulh         t1, t2, s6
                  c.lui        t4, 14
                  and          zero, t6, t3
                  sra          sp, t2, t5
                  mul          t2, s9, a6
                  c.li         t6, -1
                  c.addi4spn   a3, sp, 880
                  sub          a6, a3, a5
                  c.lui        s4, 28
                  sub          s10, s4, s10
                  mulh         a3, a5, t1
                  srai         t6, a7, 7
                  or           s1, t0, a3
                  srli         t1, ra, 10
                  mul          sp, s6, a6
                  c.srli       a1, 5
                  srai         s5, s4, 31
                  and          zero, a4, s11
                  c.mv         t4, a3
                  div          s8, s5, tp
                  c.addi16sp   sp, -16
                  c.lui        tp, 27
                  and          tp, a0, s11
                  srai         s1, s7, 17
                  sll          a3, a6, gp
                  sub          s5, a0, s1
                  add          s4, a5, a7
                  c.mv         t1, t6
                  mulhu        sp, a6, s3
                  slli         s7, gp, 15
                  c.add        s11, s11
                  sra          sp, s8, ra
                  sll          s2, a7, a7
                  srl          s4, t3, a1
                  xor          s1, s0, s6
                  addi         s11, s11, -65
                  slli         s4, t6, 14
                  and          ra, s5, s7
                  slt          a5, t6, t5
                  xor          t5, t6, s9
                  auipc        s9, 58954
                  xor          tp, ra, a1
                  slli         zero, s0, 24
                  srl          sp, s7, s11
                  xori         s4, t5, 272
                  lui          t3, 378163
                  slt          a2, tp, s4
                  xori         s8, t1, -2043
                  mulhsu       a7, gp, t4
                  sra          s11, a2, s4
                  c.addi16sp   sp, -16
                  ori          t5, s5, -312
                  srl          s1, s3, s6
                  c.sub        a1, a5
                  nop
                  div          t4, t4, a3
                  srl          sp, a6, s11
                  slt          s8, a1, t5
                  andi         s11, a5, -883
                  mulhu        s5, sp, s6
                  srai         s0, a2, 17
                  nop
                  auipc        s7, 621842
                  sll          sp, s0, t3
                  srai         s9, s10, 8
                  srli         s5, s6, 7
                  slli         s8, a3, 7
                  mulhsu       s11, s0, s11
                  c.xor        a0, a1
                  srli         s6, a4, 25
                  srl          tp, s0, a0
                  c.or         a5, a5
                  div          gp, a4, a6
                  xori         ra, a4, -591
                  c.addi       a5, -1
                  and          t6, zero, a7
                  divu         gp, t6, zero
                  mul          a7, t3, s5
                  slli         a5, a0, 19
                  or           s0, ra, tp
                  c.addi4spn   s0, sp, 976
                  andi         t2, a0, 1902
                  sll          a6, s11, s8
                  slti         a6, t0, 1782
                  sltu         sp, t1, a2
                  sra          a0, s8, tp
                  c.xor        s1, a3
                  or           a0, s5, s0
                  ori          ra, s6, 2025
                  c.xor        s1, a4
                  xor          a7, tp, zero
                  c.add        gp, t6
                  c.addi4spn   a1, sp, 560
                  sltiu        s10, a7, -1268
                  sll          a1, s10, s2
                  c.addi4spn   a0, sp, 528
                  rem          ra, s2, t6
                  nop
                  rem          s5, zero, a0
                  slt          zero, s7, s3
                  c.xor        a0, s1
                  addi         ra, t0, -1360
                  c.srai       a0, 27
                  mul          zero, s5, tp
                  div          a6, t6, s11
                  remu         t4, tp, s8
                  c.andi       s1, -1
                  c.srli       a5, 6
                  c.add        gp, a0
                  andi         t6, a2, 1505
                  c.xor        a1, a3
                  c.and        s0, a5
                  sltu         s1, s10, s6
                  lui          sp, 508487
                  c.srli       a5, 12
                  slli         t5, a4, 12
                  c.add        s4, t2
                  mulhu        a0, t0, s0
                  slli         s10, t6, 30
                  sll          t1, a4, ra
                  c.andi       a3, -1
                  auipc        s11, 1008318
                  c.add        ra, a7
                  c.slli       t5, 6
                  sra          s2, s4, a3
                  c.add        s2, s11
                  srl          s1, t4, s3
                  mulhu        gp, a4, ra
                  c.mv         s7, s4
                  c.addi       a0, -1
                  c.andi       a5, -1
                  srl          s6, t6, s5
                  div          s4, zero, s1
                  rem          gp, t3, s7
                  remu         ra, a0, t5
                  or           s11, a7, gp
                  auipc        t1, 915442
                  c.lui        s10, 29
                  c.slli       sp, 18
                  lui          s11, 550836
                  slti         gp, t0, 374
                  c.slli       s8, 10
                  mulhsu       s9, a2, a7
                  srli         s0, a3, 2
                  remu         a3, a7, a6
                  c.li         s2, -1
                  c.add        a0, s1
                  andi         a1, s4, -74
                  slli         a2, a3, 1
                  c.addi16sp   sp, -16
                  mul          t3, tp, a0
                  auipc        sp, 234359
                  sltiu        s2, t3, 785
                  mulh         s11, gp, gp
                  srli         s4, zero, 23
                  slt          a3, t6, t4
                  sra          s5, s11, t3
                  c.add        t6, s7
                  xori         s2, s0, -170
                  auipc        s0, 496103
                  c.srli       a5, 27
                  and          s5, zero, a2
                  c.mv         a3, sp
                  c.add        a2, t3
                  nop
                  divu         a2, a1, t6
                  rem          s4, s10, ra
                  sltiu        a7, t4, -909
                  div          a3, zero, zero
                  c.nop
                  srai         s7, tp, 28
                  mul          a0, s5, a6
                  xori         t5, a4, 482
                  ori          gp, ra, -1916
                  srli         a7, s3, 28
                  c.mv         a6, s5
                  c.xor        a0, a3
                  c.li         s2, 24
                  sub          s5, s10, s2
                  c.sub        a5, a3
                  addi         a5, a3, -1742
                  c.mv         t1, a2
                  c.addi4spn   a0, sp, 480
                  c.srli       a0, 1
                  add          s5, s9, t1
                  c.nop
                  and          a2, t3, t4
                  lui          gp, 980656
                  ori          a2, t3, -572
                  divu         a7, zero, a1
                  c.xor        a2, a2
                  sltiu        a7, a7, 361
                  c.sub        s0, a2
                  sltiu        a1, s9, -903
                  c.srai       a1, 10
                  addi         s11, a7, 796
                  or           s9, s8, a0
                  c.and        a0, a1
                  remu         a3, a0, t6
                  div          s9, gp, s7
                  mul          t4, a2, t5
                  remu         t6, s6, a5
                  add          gp, s0, gp
                  c.srai       a0, 11
                  mulhsu       s2, t2, a6
                  and          a6, a1, s11
                  or           t4, s1, ra
                  c.nop
                  c.srli       a2, 19
                  rem          a0, sp, a3
                  rem          a1, t4, s10
                  c.xor        a1, s1
                  srl          s10, zero, t1
                  divu         tp, gp, t4
                  auipc        s7, 411355
                  c.nop
                  ori          t3, s10, -930
                  ori          zero, s10, 448
                  auipc        t2, 222313
                  div          t6, s7, a2
                  srli         s4, t4, 29
                  c.or         a0, s1
                  srl          a0, t1, zero
                  slli         s2, a3, 28
                  sltiu        a2, t1, -872
                  addi         t2, s2, 1453
                  c.addi       sp, -1
                  auipc        a5, 988572
                  c.addi       s1, -1
                  nop
                  srli         a5, a1, 11
                  c.xor        a2, a1
                  sltiu        a7, a3, 131
                  or           a7, zero, s9
                  sltiu        gp, s10, 795
                  c.addi4spn   a5, sp, 432
                  sub          ra, t6, a7
                  addi         gp, sp, -466
                  auipc        s8, 242138
                  c.sub        a2, a4
                  c.addi4spn   s1, sp, 704
                  add          s2, s10, s10
                  divu         gp, s1, s5
                  mulhu        tp, a3, t0
                  c.nop
                  c.nop
                  lui          s6, 864449
                  xor          t2, ra, s11
                  c.xor        a2, a1
                  c.srli       s0, 2
                  andi         s2, t6, 1675
                  add          t4, t2, t1
                  sll          a3, t1, a7
                  auipc        a1, 324355
                  rem          ra, t0, ra
                  mulhsu       a5, s1, t6
                  lui          a3, 680630
                  andi         t1, s0, 1036
                  c.sub        s1, s1
                  c.sub        a5, a5
                  c.li         s4, 25
                  sra          tp, a5, s10
                  c.sub        a0, a0
                  c.or         a0, a3
                  c.xor        a0, a3
                  c.lui        tp, 23
                  c.addi4spn   a1, sp, 656
                  divu         a1, gp, s1
                  c.nop
                  lui          t4, 527508
                  mulhu        a0, t3, t5
                  mul          s6, t5, gp
                  mulhsu       a0, sp, s4
                  rem          s11, s9, a1
                  add          s10, s3, s3
                  slt          s11, a0, ra
                  c.addi4spn   a3, sp, 192
                  slti         s10, s11, -1787
                  addi         gp, t0, 1842
                  lui          ra, 534474
                  c.or         s1, a5
                  c.nop
                  auipc        t6, 253611
                  xori         s6, s2, 79
                  and          a7, s2, t6
                  srli         a2, a1, 30
                  c.addi16sp   sp, 336
                  divu         s6, sp, t0
                  c.li         s2, -1
                  srli         tp, a7, 13
                  sra          a0, s6, s6
                  add          gp, s3, s11
                  mulhu        t2, s6, s9
                  c.addi4spn   a3, sp, 144
                  or           s8, s2, t1
                  sll          sp, ra, s3
                  div          t2, a0, t1
                  slti         a1, s4, 1028
                  c.mv         a0, s8
                  add          s11, a2, ra
                  xori         a3, s2, 1076
                  auipc        t5, 687048
                  slt          t3, t4, tp
                  sub          zero, gp, s11
                  add          a3, s6, a0
                  auipc        a6, 130351
                  or           s6, s9, a2
                  slti         s2, s4, -109
                  c.addi16sp   sp, 208
                  c.lui        a2, 27
                  c.srai       a2, 11
                  c.or         a2, a0
                  xori         s6, a4, -467
                  lui          s2, 361041
                  andi         s2, zero, 351
                  c.or         a1, a0
                  c.srli       a0, 21
                  sub          s10, a7, s3
                  c.addi16sp   sp, -16
                  srl          s2, t0, t6
                  mulhsu       s2, ra, s1
                  nop
                  c.addi       s2, -1
                  c.nop
                  sltu         s6, a1, s11
                  c.mv         ra, tp
                  c.srli       a0, 20
                  slli         a5, s2, 20
                  c.sub        a5, s0
                  slt          s1, a4, s9
                  mulh         s6, ra, s1
                  c.addi       t1, -1
                  rem          gp, s10, s7
                  c.srli       s0, 4
                  sll          s7, t5, t1
                  mul          a3, s2, a1
                  slti         t6, t5, 1650
                  sub          s11, s1, s4
                  c.mv         t3, t0
                  rem          t5, gp, s1
                  auipc        t1, 74390
                  slli         s6, a5, 24
                  c.xor        s1, a1
                  c.lui        t5, 23
                  c.and        a3, a4
                  c.add        s0, t5
                  c.nop
                  auipc        t2, 838172
                  and          t2, s11, ra
                  sub          s9, zero, a0
                  c.slli       a0, 21
                  ori          a6, a6, 162
                  add          zero, ra, s3
                  mulh         a1, a2, a4
                  c.srli       s1, 16
                  c.slli       s6, 8
                  c.sub        s1, s0
                  div          a0, t5, s7
                  mulh         a7, s7, a5
                  sub          ra, s1, tp
                  srl          a5, t3, a2
                  sltu         s5, s5, s11
                  sltiu        s2, a6, -1220
                  slt          t3, a7, t6
                  slt          t2, s7, t2
                  addi         s9, s11, 1583
                  rem          t1, ra, gp
                  c.or         s1, a5
                  lui          s2, 299470
                  srli         s5, s5, 20
                  addi         s8, s7, -1613
                  remu         s4, s8, a7
                  add          t3, sp, s1
                  addi         gp, s8, -10
                  addi         tp, s8, 61
                  c.srai       a0, 17
                  ori          s8, s5, 1997
                  c.slli       a3, 21
                  or           tp, t4, zero
                  mulh         s9, a5, t4
                  c.addi16sp   sp, 16
                  ori          s5, s5, -810
                  c.add        a6, a6
                  auipc        a2, 323401
                  slti         s4, t3, -1701
                  c.sub        a5, a5
                  slli         s11, t0, 23
                  ori          s4, t6, -1472
                  srl          t6, s11, t2
                  ori          t6, zero, 1474
                  sra          gp, s11, t5
                  divu         gp, a6, s7
                  lui          a2, 340997
                  mulh         s11, t3, sp
                  sltu         s6, s1, t3
                  c.lui        s6, 1
                  sra          s6, t3, a1
                  srl          t4, t3, s8
                  div          t2, s2, a5
                  xor          zero, s3, s10
                  c.slli       t6, 11
                  div          s0, t0, a1
                  c.xor        s0, s1
                  c.sub        a2, a1
                  sltiu        t5, zero, -1801
                  mulhsu       t3, t4, t6
                  sub          s10, a2, a2
                  mulhsu       t2, s10, tp
                  sll          s4, s8, t1
                  c.and        a2, a3
                  slli         t1, s9, 16
                  c.srai       s1, 19
                  sll          s0, a1, t3
                  c.sub        a1, s1
                  xor          t3, a3, s3
                  slti         s2, s10, 1068
                  add          s6, zero, a7
                  sra          s8, s5, s10
                  sll          s4, s9, t1
                  srl          a1, a1, t4
                  c.lui        a2, 9
                  auipc        s7, 174142
                  c.slli       a7, 29
                  srli         ra, gp, 25
                  sltiu        s9, a2, 76
                  c.lui        gp, 21
                  div          s9, gp, t5
                  c.nop
                  and          a0, a1, s6
                  xori         a2, t3, -1647
                  andi         t4, t4, -33
                  mulh         s9, a0, a6
                  srl          t3, s1, s0
                  srli         ra, s8, 17
                  remu         s2, t4, a4
                  c.slli       s8, 25
                  c.or         a2, a3
                  auipc        sp, 257544
                  srli         t2, s0, 9
                  srai         t3, t3, 19
                  c.addi16sp   sp, -16
                  c.srli       a2, 21
                  c.mv         a2, a4
                  ori          a3, s10, 1717
                  c.xor        a1, a3
                  mul          tp, t4, t5
                  c.or         a3, a5
                  c.nop
                  mul          zero, s4, t1
                  remu         s8, a0, a7
                  slt          s10, s9, s4
                  ori          t1, s10, -1812
                  ori          gp, a6, -112
                  divu         ra, t3, s4
                  mul          a3, a0, t6
                  c.li         t6, -1
                  slt          t4, a5, s3
                  sub          a0, t6, t1
                  mulhu        s7, a1, a2
                  c.add        s1, gp
                  or           a7, s5, t2
                  mul          t1, a1, tp
                  c.andi       s0, 20
                  divu         s8, s9, a7
                  mul          a1, s4, s2
                  sll          a1, a4, s5
                  slt          a6, t3, a0
                  sub          s4, t0, tp
                  c.srai       a1, 22
                  c.addi4spn   a2, sp, 624
                  c.addi4spn   a2, sp, 880
                  c.and        a1, a4
                  divu         a0, a7, t3
                  sub          s9, s6, a0
                  nop
                  mulhu        gp, s9, zero
                  div          s10, ra, a2
                  c.mv         t5, s3
                  c.or         s1, a4
                  and          sp, t6, zero
                  mulhsu       a1, a4, t2
                  sltu         sp, a6, s2
                  c.srai       s0, 5
                  c.or         a0, a5
                  remu         s8, a3, zero
                  and          a3, t4, s6
                  mulhu        s0, sp, t3
                  c.addi       t6, 9
                  c.mv         s2, s0
                  c.srai       a3, 6
                  div          t4, s0, t4
                  add          s7, a2, s6
                  andi         a6, tp, -32
                  xori         t1, s2, 369
                  c.addi16sp   sp, 272
                  mulhsu       a5, s3, a7
                  c.addi4spn   a1, sp, 656
                  mul          a5, a5, a7
                  slti         a0, s11, 411
                  or           s5, zero, s4
                  add          a3, s6, a5
                  c.andi       s0, 30
                  c.xor        a5, a1
                  xori         a6, s7, 991
                  c.mv         t2, s9
                  slti         s1, s7, -1191
                  c.xor        s0, a3
                  xor          a3, sp, s11
                  c.srai       a0, 15
                  c.add        t2, s2
                  lui          t2, 330509
                  srl          sp, t1, s11
                  and          s7, t4, t1
                  rem          t4, t1, s9
                  sltiu        a7, s10, -612
                  rem          a6, s9, zero
                  mulh         s6, t0, a2
                  c.li         ra, 14
                  sub          a0, s4, zero
                  div          t1, s8, zero
                  slt          ra, t0, s1
                  slli         s1, t5, 11
                  add          t1, a4, s4
                  div          a2, s6, s10
                  mul          a7, s2, t0
                  c.andi       s1, -1
                  divu         s2, t5, a7
                  slt          t2, s8, zero
                  mul          a3, gp, s2
                  addi         a2, a7, -998
                  xor          a1, s2, gp
                  auipc        s8, 522011
                  srl          s5, sp, a6
                  c.mv         t3, a6
                  auipc        s5, 835963
                  c.slli       s11, 8
                  andi         sp, s7, -917
                  c.lui        a6, 14
                  remu         a7, a6, s3
                  c.sub        a0, s0
                  div          a1, s11, tp
                  c.xor        s1, a5
                  c.andi       a5, -1
                  c.or         a1, a0
                  auipc        a5, 145175
                  mulhsu       t4, gp, a0
                  mulhsu       a0, t0, s1
                  c.slli       s8, 19
                  auipc        t2, 550384
                  c.andi       a0, -1
                  slti         t1, t2, -1592
                  andi         t5, zero, -1780
                  c.add        s9, s1
                  or           t5, s1, t4
                  srli         s7, s7, 12
                  mul          s5, a3, a5
                  sll          s11, ra, t2
                  sra          s6, ra, a2
                  div          a2, a3, s10
                  rem          t4, a2, a1
                  andi         tp, sp, -1224
                  or           a7, s1, t3
                  andi         s4, gp, -1509
                  slti         gp, tp, 297
                  slli         sp, s9, 15
                  lui          t6, 753871
                  c.andi       a5, -1
                  srai         t6, t3, 1
                  sll          s11, s10, s4
                  sll          s9, a5, s8
                  c.nop
                  slli         s1, s10, 2
                  divu         s0, s8, t5
                  srli         tp, a4, 10
                  sub          t3, s10, t0
                  c.and        a0, a5
                  mulhsu       s4, s3, t4
                  c.andi       s1, 12
                  mulh         t5, a7, t1
                  div          gp, s2, t5
                  mul          t2, t5, s0
                  c.lui        t2, 1
                  sub          sp, gp, a5
                  sltiu        s10, s10, -280
                  srai         s9, a1, 11
                  c.addi       t6, 27
                  srai         s10, t5, 5
                  mulhsu       ra, s3, t1
                  mulhu        t1, a4, sp
                  mul          t1, tp, s1
                  srl          s8, s3, a1
                  c.add        tp, a6
                  c.andi       a2, 16
                  c.mv         s5, s10
                  c.andi       a0, -1
                  c.xor        a0, a5
                  ori          ra, s3, -1362
                  ori          s8, s11, -1166
                  slti         s1, sp, 869
                  srli         s4, zero, 11
                  c.addi       t2, 15
                  auipc        s8, 149947
                  c.slli       s11, 8
                  auipc        s7, 561335
                  div          t6, s9, t2
                  mulhu        a7, s2, a1
                  c.nop
                  mulhu        s1, gp, a2
                  c.slli       a3, 22
                  remu         a1, s4, sp
                  remu         tp, s0, ra
                  mulh         a3, a1, t5
                  divu         t3, s11, s10
                  c.nop
                  mulhu        t1, t1, a1
                  rem          t2, tp, t5
                  auipc        ra, 81357
                  mulhu        t2, a6, a2
                  srai         t3, a3, 10
                  auipc        a2, 464079
                  andi         a3, tp, -910
                  c.lui        a2, 18
                  c.li         s8, -1
                  or           tp, t0, t6
                  c.xor        a3, a0
                  srli         a6, s6, 6
                  c.xor        a0, s0
                  c.xor        a5, a0
                  rem          t2, s5, s6
                  c.slli       t2, 24
                  and          ra, s10, a7
                  or           a3, a0, t3
                  xor          tp, a7, t1
                  slt          a5, s2, t2
                  sra          tp, a4, a6
                  xor          t6, t1, t2
                  div          t2, a4, a1
                  c.addi4spn   a5, sp, 864
                  c.lui        t6, 27
                  c.slli       ra, 20
                  xor          s2, s7, s6
                  c.mv         a7, a0
                  add          ra, s7, a4
                  c.xor        s1, a4
                  c.add        t3, s3
                  and          zero, sp, a1
                  mulh         a2, s3, s0
                  ori          s8, a1, -161
                  c.andi       a5, -1
                  c.mv         tp, t0
                  slt          s5, a1, a3
                  ori          s6, gp, 2005
                  mulhsu       s7, s1, a0
                  mulh         s0, s7, s11
                  rem          a5, s6, t0
                  c.lui        a2, 21
                  add          t4, s4, s7
                  or           t6, t2, t1
                  divu         a2, zero, a0
                  mulhsu       tp, t0, s0
                  or           s2, s9, s11
                  rem          ra, a5, a0
                  c.andi       s1, -1
                  slli         t4, t2, 4
                  sll          t2, s0, s4
                  mulhsu       s2, tp, s7
                  and          t4, t0, t0
                  mulhsu       s6, s7, a1
                  rem          s4, a2, s2
                  addi         ra, t2, -1160
                  auipc        gp, 732939
                  div          s2, s1, t1
                  mulhsu       gp, a2, t4
                  lui          a6, 287715
                  slt          t6, s7, s6
                  c.li         s5, -1
                  c.addi16sp   sp, -16
                  c.addi       ra, -1
                  addi         ra, ra, -1986
                  c.srai       s0, 17
                  add          s2, t2, a0
                  c.sub        a3, a0
                  sll          gp, a5, t3
                  srli         s4, s11, 23
                  c.li         t3, -1
                  remu         t4, s4, s10
                  sltu         s9, a1, s7
                  nop
                  c.nop
                  mulhsu       a7, s1, t1
                  slt          s2, a5, t3
                  c.add        a5, s8
                  andi         s10, a4, -18
                  nop
                  mulhsu       t2, sp, s4
                  mul          a1, a4, s2
                  mulhu        a7, s6, t6
                  c.mv         sp, s1
                  sltiu        a0, tp, 1775
                  srli         a0, s0, 3
                  c.addi4spn   s1, sp, 592
                  c.and        a0, a4
                  sub          s1, s9, a4
                  c.or         a1, a5
                  rem          gp, a6, s7
                  xori         s9, t6, 96
                  c.lui        s5, 25
                  or           t3, a3, s2
                  c.srai       a5, 25
                  add          a2, t4, s11
                  add          a2, a1, a0
                  c.srli       a0, 7
                  c.sub        s1, a0
                  and          a1, a0, s2
                  sltiu        s4, gp, -1370
                  rem          a0, s11, zero
                  mulhsu       zero, s2, s2
                  c.srli       s0, 28
                  c.or         a1, a3
                  c.sub        a3, a1
                  c.andi       a0, -1
                  c.or         a0, s1
                  c.sub        a0, a5
                  xori         t3, s5, 1265
                  xor          t5, s0, zero
                  mul          t2, a0, a5
                  c.and        a1, a0
                  mulhu        s10, a0, s9
                  mulhsu       s7, t1, a3
                  srli         a3, s7, 9
                  remu         a2, t4, t4
                  sltu         s6, s6, s1
                  mulhu        sp, a0, gp
                  srai         gp, s4, 21
                  sll          t5, s7, s2
                  xori         gp, s6, -1574
                  c.add        s9, a4
                  auipc        t6, 452900
                  slli         a6, t6, 14
                  c.add        s4, s2
                  or           s8, a2, s3
                  add          t3, a4, t3
                  c.sub        a1, a2
                  srai         t2, a7, 4
                  c.li         s10, -1
                  c.andi       s0, 26
                  divu         s5, gp, s0
                  c.sub        a2, a0
                  sltu         zero, a6, s7
                  c.and        a5, a5
                  divu         tp, s10, sp
                  ori          a5, t6, 41
                  ori          a1, t6, 778
                  slt          sp, s7, s1
                  divu         a1, a6, s7
                  lui          s11, 264660
                  xori         a7, s5, 275
                  slt          a7, t6, s1
                  c.or         a0, a4
                  c.xor        s1, s1
                  mul          a1, a4, s8
                  slti         s10, tp, -1900
                  c.nop
                  c.mv         s8, s10
                  slti         a2, s2, -1583
                  andi         a1, sp, -1069
                  mul          s7, s1, a1
                  c.sub        s1, a2
                  andi         t3, s9, -1313
                  c.addi       ra, 28
                  c.and        a0, a2
                  slt          s2, s3, tp
                  mul          a3, a3, s10
                  ori          s0, t4, -1322
                  c.addi16sp   sp, -16
                  add          a1, s1, sp
                  remu         a6, s8, s10
                  mulh         tp, a0, a1
                  xori         s9, a7, -684
                  nop
                  nop
                  c.nop
                  remu         s2, s3, a0
                  nop
                  rem          s7, a5, s2
                  slti         ra, s4, -247
                  lui          t4, 989446
                  c.addi16sp   sp, 112
                  c.or         a3, a1
                  c.li         s2, 8
                  c.andi       a0, 21
                  add          s9, t3, tp
                  addi         s2, s2, 1689
                  c.xor        a0, a4
                  sra          s9, sp, a6
                  xori         a5, a4, 693
                  xor          t1, s0, t5
                  add          t4, s6, a6
                  remu         t6, t1, sp
                  andi         zero, s10, -1024
                  c.nop
                  sltiu        s7, t5, -108
                  c.add        a6, a7
                  sub          s10, a1, t0
                  slli         s2, a2, 11
                  c.addi16sp   sp, -16
                  divu         sp, a5, a5
                  c.srli       s1, 13
                  remu         t6, a0, t3
                  c.slli       t4, 9
                  lui          s6, 764030
                  c.addi16sp   sp, -16
                  nop
                  andi         t5, t1, 1614
                  div          t3, s11, ra
                  c.addi       a5, -1
                  mul          tp, t6, s2
                  c.mv         a7, t4
                  c.addi4spn   s1, sp, 176
                  sltu         t4, a0, s10
                  sltiu        tp, a5, 777
                  addi         sp, a2, 105
                  mulhu        a5, s3, t6
                  add          s7, s2, t3
                  andi         zero, gp, 1173
                  mulhu        a3, sp, a6
                  c.lui        t1, 7
                  srl          t6, zero, tp
                  c.lui        a2, 31
                  mulh         t2, a7, t2
                  div          a6, s7, t2
                  or           a5, s5, s11
                  c.addi16sp   sp, -16
                  div          s10, s4, a3
                  c.li         a2, -1
                  c.and        a0, s0
                  remu         s6, a4, gp
                  xori         a0, s0, 1188
                  c.li         s5, 6
                  slli         sp, a0, 6
                  sub          a5, a7, t6
                  auipc        s2, 166463
                  xori         gp, s6, 1116
                  xori         a7, s7, -1774
                  and          s7, t4, s8
                  ori          t3, a7, -1742
                  c.slli       a3, 25
                  srli         zero, a2, 0
                  and          t6, a1, a0
                  c.sub        a1, a3
                  ori          a3, a1, 516
                  mulhsu       a2, gp, a2
                  sll          s9, gp, t6
                  srl          a5, a3, a7
                  c.srli       a3, 28
                  div          a0, gp, s10
                  c.slli       a0, 24
                  nop
                  nop
                  slt          t1, s6, s7
                  slti         a3, a0, -256
                  sll          s11, s6, tp
                  c.addi16sp   sp, -16
                  c.xor        s0, a2
                  xor          t5, s10, s8
                  c.li         ra, 27
                  c.sub        s0, a0
                  and          s2, s3, a4
                  c.or         a5, a1
                  c.andi       a2, -1
                  mul          a3, s4, s11
                  c.srai       a2, 30
                  nop
                  c.li         t3, 26
                  auipc        s8, 683537
                  addi         a5, a6, -187
                  c.li         t1, 26
                  c.sub        a3, s0
                  lui          a6, 541592
                  c.and        a3, a0
                  c.addi       a2, 6
                  sltu         s6, t6, a6
                  srai         sp, s7, 10
                  mulhsu       s1, a1, s8
                  and          s10, a1, a7
                  slt          s7, a3, s4
                  or           a1, s10, s11
                  add          t5, a4, s1
                  c.addi       t1, -1
                  mulhu        a6, s3, s10
                  xori         gp, s5, 1272
                  c.nop
                  auipc        s10, 435836
                  and          s10, s1, a1
                  slt          s9, s0, zero
                  c.addi16sp   sp, 192
                  xori         t2, a4, 1756
                  divu         a2, a6, s11
                  c.nop
                  and          t3, t3, s3
                  c.nop
                  c.addi4spn   a1, sp, 800
                  auipc        ra, 91337
                  sltiu        a3, s10, -1695
                  c.mv         ra, t3
                  addi         t4, a0, 738
                  c.srli       s1, 15
                  slti         a5, ra, 1206
                  addi         a6, tp, -617
                  xor          a3, ra, a5
                  c.li         tp, 27
                  and          s10, ra, t5
                  mul          a3, t2, s1
                  rem          s0, s11, s2
                  remu         s1, s6, a1
                  mulh         s4, t3, zero
                  sra          s2, a2, t1
                  c.add        s1, a0
                  srli         a7, a6, 7
                  mulhu        s10, s2, a2
                  rem          s5, a5, t4
                  c.sub        a0, a4
                  c.addi4spn   a3, sp, 464
                  c.and        a2, a0
                  c.and        s1, s0
                  mulhu        s5, s5, s7
                  sra          a0, t3, a1
                  srli         s1, t3, 4
                  srai         a2, s10, 0
                  sltiu        zero, sp, 1090
                  mulhsu       a6, s0, s1
                  mulhu        s5, gp, a0
                  and          a3, t2, t5
                  c.slli       t5, 3
                  ori          t2, s7, -1100
                  c.mv         s6, s4
                  slli         a1, s11, 23
                  c.addi16sp   sp, -16
                  sll          a1, a0, s7
                  ori          t4, a0, 1608
                  rem          s2, s11, t3
                  c.or         a5, a3
                  xor          a7, t5, s6
                  and          t2, s4, t4
                  c.srai       a0, 13
                  mulhu        t3, gp, zero
                  xor          s8, a5, t1
                  div          t6, s10, ra
                  div          s6, a3, t4
                  andi         a3, a6, -1768
                  c.mv         s9, s1
                  sub          t6, ra, t2
                  mul          a2, a4, a2
                  sltu         t3, t5, s4
                  xor          s5, s0, a6
                  rem          a7, s4, t0
                  addi         s11, a5, -641
                  slti         a2, s6, 221
                  c.srai       s1, 27
                  and          t3, s6, s10
                  c.sub        a3, a4
                  mulhsu       gp, t4, s0
                  c.srli       s1, 27
                  andi         s11, ra, -330
                  c.add        s0, t6
                  c.srli       a1, 6
                  mulhsu       sp, s2, s4
                  remu         s2, zero, tp
                  c.andi       a3, 26
                  c.or         s0, a1
                  slt          s4, s0, t5
                  c.and        s1, s0
                  andi         a2, s7, -575
                  srai         s6, s1, 7
                  slli         s10, s9, 0
                  c.addi4spn   a0, sp, 144
                  c.slli       t2, 18
                  xori         s2, tp, 590
                  c.addi4spn   a2, sp, 416
                  div          s7, sp, s9
                  remu         s2, t5, t5
                  xori         a7, s9, -639
                  divu         t4, s10, t0
                  c.addi4spn   a0, sp, 832
                  c.srli       a0, 25
                  c.nop
                  c.andi       s0, -1
                  divu         t1, a2, t0
                  c.addi       t2, -1
                  slti         a3, t4, -1990
                  xori         t1, s1, 1564
                  srli         a1, t6, 18
                  mulhu        s8, t5, s1
                  or           gp, t6, t2
                  c.srai       a3, 4
                  c.or         a0, a4
                  slli         s4, a1, 24
                  c.li         t6, 8
                  xor          s11, s10, zero
                  andi         a6, tp, 1121
                  auipc        t5, 823657
                  c.mv         t1, ra
                  srai         s1, s2, 17
                  c.or         a3, s0
                  c.addi       gp, 17
                  c.nop
                  c.or         a2, s1
                  slt          a5, a5, t4
                  andi         s7, a6, 1796
                  slt          a2, sp, a4
                  sll          a5, a4, zero
                  slti         a7, t1, -1210
                  c.lui        t3, 18
                  c.and        a0, s0
                  nop
                  c.addi4spn   a0, sp, 720
                  c.li         t2, -1
                  sltu         a0, t4, s8
                  nop
                  lui          s1, 330290
                  c.and        a1, a3
                  addi         s8, a3, -8
                  sltiu        a3, s5, -1523
                  lui          s8, 303733
                  c.addi16sp   sp, -16
                  xor          s10, s5, s2
                  c.addi4spn   s0, sp, 800
                  rem          s6, tp, t1
                  slli         s10, s9, 26
                  mulhu        s4, s8, a5
                  c.li         s6, 4
                  xori         t5, a0, 222
                  slt          s2, s8, t0
                  div          s7, s5, a7
                  c.or         a1, a1
                  mulhsu       s0, s11, a1
                  lui          s9, 249352
                  c.addi16sp   sp, 112
                  c.mv         s5, t1
                  ori          a7, t1, 25
                  nop
                  nop
                  c.mv         s10, t1
                  add          s8, t5, ra
                  mulhu        s1, t1, t1
                  remu         s2, s11, a3
                  c.srli       a5, 6
                  or           a5, s7, sp
                  sltiu        a2, s0, -73
                  add          s5, ra, t4
                  c.srai       a1, 30
                  add          t1, s1, gp
                  div          a2, zero, a7
                  srl          t4, s8, s11
                  c.mv         a2, s6
                  mulhu        zero, a5, a0
                  rem          t2, s10, s2
                  c.addi       s8, -1
                  sltu         t6, a3, a7
                  slti         t2, t1, 1282
                  mul          s11, s1, t4
                  c.addi16sp   sp, -16
                  mulhu        t6, s7, t1
                  c.addi       s10, 7
                  remu         t4, t6, t1
                  c.and        a1, a4
                  add          sp, a5, a7
                  nop
                  srli         a5, s7, 9
                  c.or         a3, s0
                  srli         s10, s6, 18
                  and          s2, s5, t1
                  c.lui        a5, 27
                  c.addi       tp, -1
                  c.srli       s1, 7
                  remu         ra, a2, t2
                  slt          t2, s3, t6
                  c.addi4spn   a5, sp, 384
                  c.or         a5, s1
                  c.andi       s0, -1
                  mul          a1, t3, s11
                  sltu         s2, s1, a3
                  c.lui        a7, 6
                  divu         t4, s9, t0
                  srl          sp, t1, ra
                  sll          sp, t4, a2
                  srli         gp, a5, 16
                  sra          tp, zero, gp
                  c.li         s7, -1
                  c.and        a2, a0
                  lui          s5, 778964
                  div          t3, gp, s2
                  slli         s5, s9, 6
                  and          s9, s4, zero
                  slli         s8, t1, 1
                  remu         sp, t1, s11
                  c.and        a2, s0
                  c.xor        a5, a3
                  mulh         zero, s8, s5
                  c.andi       s1, -1
                  addi         s7, sp, 367
                  srl          t4, s3, s10
                  mulh         s8, t4, t4
                  xor          a3, zero, s0
                  div          t2, a0, a4
                  slli         a0, a3, 11
                  mulhsu       s9, sp, a6
                  mulh         a2, ra, gp
                  and          s6, t5, s4
                  slti         s8, tp, 1101
                  c.li         t4, 9
                  sll          t2, ra, a7
                  div          a2, a0, t2
                  xor          s10, s1, t6
                  c.srai       s0, 20
                  andi         s2, s11, 1749
                  c.xor        a2, a5
                  srl          sp, s5, s7
                  slt          s5, a7, sp
                  mulhsu       s5, a4, zero
                  c.li         s10, -1
                  mul          gp, t1, a2
                  c.li         t3, -1
                  c.or         a0, s1
                  remu         s5, sp, zero
                  c.add        ra, s9
                  auipc        s5, 710356
                  ori          a2, a0, 1142
                  sltu         a3, s6, a1
                  auipc        a7, 509470
                  c.li         t5, -1
                  mul          a1, s7, a0
                  slt          t5, s9, a0
                  sra          a5, t4, s0
                  rem          s7, s5, a4
                  c.addi16sp   sp, -16
                  or           gp, t0, t6
                  ori          gp, s7, 1657
                  c.and        a3, a5
                  mulhu        s7, t4, s1
                  c.or         a0, a2
                  rem          s5, t1, zero
                  lui          s4, 329985
                  sltiu        t4, ra, 1385
                  c.addi16sp   sp, 32
                  sub          t2, t6, ra
                  c.mv         s11, s2
                  rem          s2, t5, s8
                  c.addi       a2, -1
                  rem          s1, s7, s1
                  and          sp, t3, s8
                  xori         s9, ra, -1783
                  nop
                  c.andi       a1, -1
                  sub          a0, t2, tp
                  slti         t6, s7, 371
                  c.nop
                  c.mv         a6, s11
                  and          s4, s11, s11
                  div          s0, s6, s9
                  lui          s4, 530412
                  sltu         t4, a2, a0
                  c.addi16sp   sp, 144
                  rem          a2, s4, s3
                  add          t5, a4, s11
                  sra          s9, t2, ra
                  xor          s1, s6, s7
                  ori          t5, s2, -819
                  c.and        s0, a4
                  sub          a7, a4, t5
                  srai         a7, gp, 5
                  c.xor        s0, a1
                  remu         t6, s4, t3
                  xor          t2, t3, gp
                  sltiu        t2, s5, 800
                  c.or         a2, a1
                  c.xor        s1, a5
                  mulhu        tp, t3, zero
                  c.slli       s5, 19
                  sll          s2, s1, s4
                  c.and        a2, a3
                  c.xor        a3, a0
                  c.addi4spn   a5, sp, 880
                  srli         a2, a3, 22
                  c.andi       a2, 7
                  srl          tp, a1, a7
                  mulhsu       s9, s6, t3
                  c.and        a2, a2
                  c.or         a5, a3
                  sltu         s10, a2, gp
                  c.nop
                  xor          t6, a2, t0
                  c.add        a1, a7
                  addi         tp, t5, 519
                  rem          a1, s3, t6
                  sll          a6, a1, s2
                  sra          a7, t3, s7
                  ori          s9, s6, 1448
                  lui          a2, 409874
                  c.slli       tp, 8
                  srl          s11, a3, t0
                  c.and        a0, s0
                  sltu         a0, s10, s10
                  ori          s10, a1, 947
                  div          t2, a4, s6
                  nop
                  c.or         a1, a2
                  add          a2, s0, a5
                  sltiu        s0, s10, 1374
                  slli         s5, a2, 2
                  lui          gp, 207299
                  sub          t2, t5, s10
                  c.add        a0, a6
                  add          tp, s8, a2
                  c.addi       s7, -1
                  c.andi       a2, -1
                  mul          a7, t4, s9
                  mulh         sp, s10, s4
                  c.mv         t2, a1
                  slti         tp, a6, 1893
                  and          a3, s6, s6
                  c.and        a0, a3
                  ori          t2, a6, 295
                  slti         s4, a5, 1063
                  lui          a3, 621569
                  add          a7, a0, a6
                  c.addi4spn   s1, sp, 752
                  add          s0, tp, s2
                  mulhu        t4, s7, a7
                  c.xor        a0, a3
                  add          zero, a4, s4
                  divu         tp, zero, s4
                  sltiu        s11, s4, -343
                  mulhsu       a5, t4, zero
                  c.nop
                  ori          a5, a0, -1609
                  c.or         s1, s0
                  rem          a0, t6, a7
                  addi         s10, s2, 727
                  c.addi4spn   a2, sp, 48
                  addi         zero, a4, 1621
                  c.srli       s0, 6
                  mulhu        t6, tp, s7
                  c.srli       s0, 18
                  mulhu        t2, s3, tp
                  sll          a2, t2, gp
                  c.xor        s0, s0
                  srl          s4, a4, a0
                  c.srai       a2, 31
                  remu         ra, s4, s3
                  c.nop
                  c.xor        a2, a2
                  c.add        s6, s8
                  div          t2, a3, s6
                  slti         a2, s9, -1284
                  slt          a3, s1, a4
                  add          gp, a5, t6
                  mulhsu       sp, s0, t3
                  mul          a3, s11, t2
                  mulhsu       t3, s0, t5
                  slt          s2, s8, gp
                  c.xor        s1, a2
                  sltu         zero, a2, t0
                  mulhsu       ra, s6, s7
                  sra          a5, a4, t4
                  c.srli       a0, 16
                  c.or         a0, a4
                  nop
                  rem          s6, s11, s8
                  mulhu        t3, a4, t6
                  addi         a3, s1, -1465
                  sltu         t2, a2, t6
                  and          a1, a0, a5
                  slti         s9, s7, -631
                  and          t3, s10, s10
                  andi         s9, s9, 62
                  c.nop
                  sltu         a5, sp, tp
                  sll          s1, ra, s10
                  lui          a0, 150525
                  c.xor        a1, a1
                  slli         a5, a4, 26
                  c.or         a5, a2
                  auipc        a0, 157925
                  sltu         s4, t2, zero
                  div          t1, t5, a4
                  add          s7, s8, a5
                  srai         t4, s4, 23
                  sltu         gp, t1, s6
                  srli         t3, a3, 14
                  c.xor        a5, a4
                  slt          ra, t1, t4
                  c.addi       gp, 6
                  mul          zero, t0, a1
                  sltiu        s6, s9, -624
                  remu         t4, a5, t2
                  remu         s5, a4, s7
                  addi         s6, s6, -1907
                  srl          s5, a4, s4
                  c.add        a0, a5
                  auipc        t1, 350593
                  auipc        a5, 882119
                  c.slli       t1, 27
                  srai         t1, sp, 8
                  mulhu        s1, s7, ra
                  c.mv         t5, s11
                  xori         t6, t1, -810
                  c.lui        s2, 5
                  slti         s0, a6, -965
                  c.srai       a2, 2
                  sub          s9, s0, a4
                  srl          a1, a3, a7
                  c.srli       a1, 13
                  slt          sp, a7, sp
                  divu         a5, s3, a3
                  mulhsu       s1, t5, s5
                  xor          a1, t0, t2
                  c.mv         t2, a4
                  c.xor        a2, s1
                  add          s4, sp, a7
                  auipc        a7, 893922
                  andi         s4, t0, -929
                  add          s0, a0, a5
                  c.andi       s0, -1
                  xor          a5, s2, zero
                  mulhsu       a5, tp, s5
                  sub          s5, a5, a3
                  c.sub        a5, a4
                  sra          sp, a2, s10
                  mul          s4, s11, a4
                  xori         s5, a4, -1213
                  xori         a7, t4, -413
                  c.sub        a2, a1
                  c.andi       s1, -1
                  mulhsu       a1, gp, s3
                  srli         t4, t4, 25
                  mulh         s10, gp, t4
                  c.mv         ra, tp
                  ori          t3, s11, 328
                  mulh         a5, s6, ra
                  c.addi       a2, 19
                  sltu         a7, t4, a6
                  c.srai       a0, 24
                  c.srai       a5, 1
                  c.or         a0, a2
                  sll          a5, a2, s4
                  mul          s5, t5, t2
                  nop
                  divu         t6, s0, s11
                  c.nop
                  andi         s1, s9, -1300
                  xori         t2, tp, -1131
                  div          s11, t3, s1
                  auipc        ra, 1025827
                  sll          t4, s7, s5
                  srli         s2, s0, 22
                  sub          zero, zero, s7
                  nop
                  xori         zero, zero, -1399
                  c.slli       gp, 25
                  lui          zero, 276366
                  c.add        s7, t5
                  c.andi       a2, -1
                  srl          s9, t2, t5
                  c.addi4spn   a5, sp, 896
                  srli         t1, a2, 10
                  addi         a0, s3, 1186
                  add          t1, s11, s9
                  and          t6, t0, a4
                  mulhu        s11, ra, a6
                  ori          s10, t2, 1879
                  c.and        a5, s1
                  or           s10, s4, a3
                  sub          s4, s0, s11
                  c.and        a3, a4
                  nop
                  c.srli       s1, 17
                  c.mv         a0, a7
                  mulhu        t2, a0, s6
                  c.andi       a2, -1
                  c.andi       a0, -1
                  srli         t1, t4, 30
                  sra          s4, t6, s3
                  div          a1, s6, s9
                  xor          sp, gp, a7
                  addi         ra, s8, 305
                  sll          t5, ra, s2
                  and          tp, sp, a0
                  c.li         a3, -1
                  c.and        s1, a4
                  div          ra, s11, sp
                  sll          t2, s7, a0
                  c.srai       a5, 17
                  sll          s2, s9, a3
                  div          s8, s9, t0
                  lui          s10, 1023059
                  lui          s7, 27255
                  divu         gp, t0, s9
                  c.srai       a0, 13
                  sll          s5, s11, s5
                  rem          s5, t6, a2
                  rem          t4, sp, t3
                  slt          t3, s0, t3
                  mulhsu       s11, s6, a7
                  slti         t1, t1, -288
                  sub          a2, t5, a1
                  auipc        t6, 992515
                  c.or         s0, a2
                  c.srai       a5, 11
                  c.sub        a2, a1
                  c.srai       s1, 3
                  divu         s10, zero, s2
                  addi         a3, a7, -1809
                  sltu         sp, t6, s0
                  c.slli       t4, 6
                  rem          a0, gp, t2
                  sll          a3, s5, t0
                  c.add        s5, t3
                  mulh         s1, t3, t6
                  c.nop
                  srai         a6, a4, 1
                  addi         s5, t5, 1089
                  c.slli       ra, 22
                  c.add        t6, a3
                  c.li         s6, -1
                  srai         s7, t0, 1
                  lui          s7, 673942
                  lui          a0, 715471
                  divu         zero, zero, t3
                  c.lui        ra, 22
                  c.mv         s6, t1
                  andi         s8, t1, 682
                  xor          s2, a7, s2
                  c.addi16sp   sp, 416
                  c.or         s0, a0
                  c.srai       a5, 5
                  srai         a7, s11, 7
                  divu         a2, t5, a2
                  rem          a1, a5, tp
                  andi         s5, s3, 990
                  nop
                  remu         a1, s5, t5
                  srli         ra, a6, 20
                  mulhsu       sp, a3, a4
                  nop
                  xor          t6, s0, a0
                  c.srai       a3, 5
                  c.and        a0, a4
                  c.xor        a0, a5
                  remu         s8, gp, s3
                  nop
                  mulhsu       tp, s9, sp
                  sll          t3, s10, sp
                  and          a3, a4, a1
                  nop
                  andi         t2, s3, 1783
                  sll          s4, s5, s7
                  xori         t5, s9, -130
                  c.nop
                  slti         gp, a7, -267
                  mulh         t5, s6, t6
                  c.andi       a3, 2
                  c.srai       a1, 5
                  c.li         gp, -1
                  or           s11, a7, s4
                  c.addi4spn   a2, sp, 656
                  sub          a7, s8, s2
                  c.or         a2, a0
                  add          s1, s5, s10
                  xori         a5, t4, 1384
                  rem          a5, zero, s0
                  addi         gp, s1, -1477
                  c.srai       a5, 20
                  div          s7, s7, s0
                  c.slli       a7, 24
                  c.sub        s1, a1
                  c.slli       s11, 16
                  mulhsu       s10, t2, s2
                  mulh         a7, gp, a6
                  andi         s9, a5, -1802
                  add          a1, t6, t0
                  c.andi       a3, 25
                  c.add        a3, sp
                  c.and        a5, a3
                  sltiu        t1, tp, 1216
                  mulhu        t3, s7, a2
                  ori          t2, t0, 594
                  xori         s0, s4, -1219
                  c.add        s4, a2
                  c.nop
                  lui          a0, 579311
                  slt          s1, s10, s3
                  c.addi       s8, -1
                  mulhsu       t5, gp, s9
                  nop
                  xor          s6, a5, s10
                  sub          s10, t1, s8
                  c.srli       a0, 27
                  add          zero, sp, s1
                  mul          t1, s4, a0
                  c.li         ra, 11
                  sub          sp, a6, a0
                  c.lui        a5, 20
                  lui          t4, 663283
                  remu         s0, zero, s4
                  c.srli       a3, 14
                  c.lui        t5, 19
                  c.or         a3, a3
                  mulh         a2, t2, s6
                  ori          s1, s8, -1411
                  srl          a3, tp, s2
                  sltu         a0, t0, s8
                  c.slli       a5, 22
                  c.or         a5, a3
                  mulh         a6, t4, t5
                  div          a7, tp, t3
                  c.andi       s1, -1
                  lui          t2, 543895
                  or           s0, s6, s11
                  nop
                  mulhu        s11, t6, s2
                  mul          a1, s4, a7
                  c.and        a1, a5
                  c.mv         t5, a4
                  slti         a6, t4, 1075
                  mul          gp, s6, a3
                  ori          zero, t5, 526
                  c.sub        s1, a2
                  xori         s1, s5, 668
                  c.li         s8, -1
                  auipc        s4, 197171
                  c.sub        a2, a0
                  and          a1, s9, ra
                  and          sp, a2, a7
                  or           s5, tp, s9
                  c.and        a3, a2
                  c.srai       a3, 13
                  srli         t5, s2, 2
                  srli         sp, t0, 18
                  c.lui        a6, 21
                  or           a1, s6, t2
                  c.lui        a6, 27
                  or           tp, s5, a5
                  c.sub        a0, a5
                  sra          a1, t1, s11
                  sltu         t5, a6, sp
                  xori         t4, sp, 1679
                  mulhu        zero, s2, s11
                  c.or         a5, a3
                  or           a0, t3, t1
                  rem          ra, a4, ra
                  c.and        a1, a3
                  c.addi4spn   a3, sp, 224
                  c.addi       sp, 5
                  xori         a0, t5, 1787
                  srli         t1, ra, 21
                  sltiu        s6, zero, 32
                  c.sub        a0, a4
                  srli         t3, s1, 31
                  mulhsu       a3, s11, s0
                  c.srai       a5, 21
                  and          gp, s6, s2
                  and          t5, s4, a7
                  srai         a0, a3, 18
                  c.or         s1, a1
                  addi         t4, s9, -1163
                  c.li         s7, 20
                  c.srai       a3, 8
                  sub          t6, t5, s3
                  srli         a7, t0, 4
                  srai         s7, s2, 1
                  slt          t5, a7, a5
                  c.xor        s0, a4
                  c.addi16sp   sp, -16
                  c.or         a5, a5
                  c.sub        a1, a5
                  addi         a6, sp, 1770
                  c.addi16sp   sp, 400
                  add          t6, gp, t2
                  c.addi4spn   a3, sp, 800
                  srl          s5, gp, zero
                  slli         s11, s0, 22
                  sub          sp, a6, ra
                  addi         sp, s9, -1235
                  divu         a5, a4, s7
                  c.andi       a5, 29
                  sub          gp, s11, a2
                  sltiu        s8, gp, -653
                  rem          t1, ra, a6
                  srli         a5, tp, 20
                  slt          s6, a4, a7
                  auipc        sp, 173908
                  mulhu        a6, a3, t2
                  c.slli       gp, 30
                  srli         a0, s10, 16
                  c.srai       a5, 6
                  rem          s1, sp, s6
                  c.and        a5, s1
                  slti         a0, a2, -1195
                  addi         s9, a7, 1788
                  sra          s2, a1, s2
                  andi         a1, ra, 1247
                  srai         s1, ra, 7
                  c.and        a5, s0
                  mulh         s9, a7, a0
                  c.slli       s5, 25
                  or           s0, s10, s10
                  slt          a3, a7, t2
                  div          s5, a5, s3
                  c.srai       a0, 13
                  slti         s7, t3, -1800
                  c.add        s1, sp
                  rem          a0, a7, s7
                  c.srli       s0, 9
                  sub          t2, s10, zero
                  c.sub        s0, s0
                  andi         t2, t3, -412
                  mul          t3, a4, s1
                  c.slli       a3, 7
                  c.and        a5, a2
                  ori          t6, s2, 1558
                  addi         s7, s7, 1574
                  addi         a3, s2, 176
                  mulhsu       a0, t0, s9
                  c.and        s1, a5
                  slli         s6, zero, 7
                  c.srli       s0, 26
                  ori          t2, t1, 1365
                  sub          s11, a4, t2
                  remu         s10, t0, tp
                  divu         t6, a5, tp
                  slti         gp, s8, -1170
                  srl          tp, a5, s10
                  mul          t3, a2, ra
                  c.srai       a0, 7
                  srli         ra, s3, 19
                  c.addi4spn   a5, sp, 320
                  ori          a7, a4, 298
                  sra          a0, t6, t5
                  c.addi16sp   sp, -16
                  auipc        a2, 729119
                  div          a7, t5, s1
                  c.xor        a0, a3
                  sltu         a5, s9, t2
                  c.or         a2, a5
                  or           s4, a0, s8
                  srl          s4, a5, a2
                  andi         s6, sp, -1680
                  addi         t2, ra, -750
                  and          ra, a4, t5
                  ori          a0, a1, 705
                  c.srli       a2, 27
                  mulhu        s10, a7, s11
                  xor          tp, t1, a3
                  xori         a7, t4, -2
                  srli         a1, tp, 17
                  andi         s10, s0, -295
                  ori          s0, s10, 1377
                  ori          s9, t5, 1702
                  xor          s6, s3, s7
                  sltiu        gp, a4, -1704
                  srai         s4, t3, 27
                  add          s11, t6, t2
                  divu         s5, s5, s6
                  or           t5, s6, t3
                  c.lui        t5, 23
                  mulh         gp, s5, zero
                  andi         s6, s1, -1648
                  sltiu        gp, s7, -1718
                  div          s8, sp, t4
                  mulhsu       s9, a3, ra
                  mulhu        t1, s9, a2
                  and          s1, s5, t0
                  sra          s7, t1, t1
                  c.addi       t2, 22
                  c.or         a2, a5
                  sra          s10, a0, s3
                  sltiu        s8, a1, 871
                  c.andi       a2, -1
                  c.and        a0, a1
                  c.andi       s0, -1
                  c.addi16sp   sp, -16
                  sltu         t6, s0, a5
                  xori         t5, s5, 1140
                  c.addi16sp   sp, 224
                  sltu         gp, s6, a6
                  c.srai       a5, 16
                  mul          a5, t5, a3
                  xor          a3, a7, s10
                  sltiu        ra, a5, -323
                  c.add        gp, sp
                  c.addi       tp, -1
                  slti         a5, tp, -720
                  sltu         s5, s11, a0
                  srai         a2, s5, 24
                  c.addi4spn   a5, sp, 560
                  slli         s5, a3, 24
                  sltiu        s2, a6, 738
                  mulhu        a7, sp, s3
                  c.srai       a1, 28
                  xori         a5, s9, -1929
                  nop
                  auipc        tp, 310638
                  mul          s8, t6, t1
                  srl          a6, s6, t2
                  srl          tp, s11, gp
                  xori         a5, s5, -1356
                  slt          s7, t3, t2
                  slti         a2, s8, -57
                  sltiu        t4, a7, -1216
                  lui          s4, 562388
                  or           t6, a0, s0
                  c.mv         a2, a0
                  c.lui        s0, 5
                  c.and        a0, s0
                  nop
                  xor          s1, s5, a7
                  c.srli       a5, 20
                  c.addi       s5, -1
                  rem          s4, s11, a7
                  div          t4, s9, gp
                  sub          a6, s3, s8
                  sll          a6, s5, s2
                  remu         t2, t2, s8
                  c.nop
                  sll          s5, s1, s9
                  srli         s11, zero, 6
                  mulh         ra, t4, s2
                  c.nop
                  mulhu        sp, sp, t1
                  c.andi       a3, -1
                  c.srai       a0, 24
                  nop
                  mul          s9, a7, s4
                  mul          zero, t2, zero
                  add          t1, s8, s8
                  c.sub        a3, s0
                  mulh         s8, a0, t4
                  rem          s4, t5, a3
                  sll          sp, a5, t2
                  slti         s6, t1, -1891
                  rem          gp, tp, s9
                  divu         s1, s3, a4
                  c.sub        a3, s0
                  slti         s9, s10, -1710
                  rem          s1, s3, t5
                  c.srli       s0, 14
                  div          a2, a7, t4
                  slt          t6, t1, tp
                  nop
                  xor          a0, a7, sp
                  c.li         gp, -1
                  and          a3, s11, t0
                  c.li         sp, -1
                  remu         sp, ra, s7
                  mulh         a6, a4, s5
                  c.addi16sp   sp, -16
                  mulhu        a5, a6, sp
                  slt          s11, a4, t2
                  c.add        a5, gp
                  slti         s10, s0, -1275
                  c.li         a2, -1
                  sltu         s5, s9, s10
                  sub          a1, t6, s0
                  c.sub        a1, a4
                  addi         s6, a5, -322
                  mulhu        s1, a6, t1
                  sra          gp, t4, s5
                  c.addi16sp   sp, 176
                  slt          s7, s9, zero
                  c.srai       a1, 1
                  nop
                  ori          s10, t6, 974
                  c.lui        a3, 29
                  mulh         gp, s9, a3
                  sll          zero, s5, a5
                  c.srai       a2, 31
                  mul          s0, a0, s11
                  auipc        s1, 738941
                  addi         s5, s9, -708
                  rem          a5, s7, a7
                  remu         a7, t0, t4
                  c.andi       a1, 17
                  xori         t2, ra, 843
                  or           zero, t0, s9
                  c.add        t2, s1
                  c.sub        s1, a1
                  srl          s7, s2, s6
                  c.or         s1, a3
                  remu         s7, s2, s9
                  c.srai       a0, 29
                  c.mv         s2, t5
                  srli         s6, a5, 16
                  c.add        a2, t2
                  srai         a1, a2, 3
                  c.and        a5, a2
                  slli         a5, a2, 21
                  xori         s9, s1, 966
                  lui          a3, 798213
                  ori          a3, t6, 1582
                  c.or         a1, a1
                  c.srli       a1, 13
                  rem          t2, tp, a4
                  slt          a3, a5, a3
                  and          t1, s2, t3
                  xori         s8, a5, -346
                  add          a7, s4, s2
                  nop
                  slt          a5, a5, sp
                  sltu         t3, t6, t2
                  rem          s0, t5, s8
                  ori          gp, a4, 1643
                  sra          s6, a7, s8
                  divu         s1, s10, t2
                  xor          t4, a5, a1
                  srai         a6, s7, 6
                  and          a3, a1, s11
                  c.addi16sp   sp, -16
                  c.addi       s5, 13
                  c.and        s0, a5
                  or           s6, s4, t4
                  c.slli       t2, 19
                  rem          s5, s11, s5
                  sltiu        s5, s3, -1971
                  divu         a6, s4, a1
                  c.addi16sp   sp, -16
                  sltiu        s1, t6, -1110
                  slli         s2, s11, 4
                  c.slli       s11, 17
                  lui          tp, 67198
                  c.addi4spn   a5, sp, 432
                  sltiu        t3, t6, -1156
                  sra          s5, s8, a1
                  c.srai       s1, 10
                  nop
                  c.lui        a6, 28
                  c.addi16sp   sp, 112
                  c.lui        t6, 22
                  srai         a1, t0, 2
                  srli         t4, s8, 24
                  sra          s9, s4, gp
                  c.xor        a5, a3
                  c.and        a0, a3
                  c.addi       a0, -1
                  srl          t3, a4, zero
                  c.or         a2, a5
                  c.add        s4, a4
                  c.nop
                  srli         a0, s4, 23
                  div          a6, t0, s4
                  c.addi16sp   sp, 320
                  c.srai       a3, 16
                  rem          s2, s10, t1
                  c.add        tp, a4
                  mul          a1, a4, gp
                  xori         a1, gp, 227
                  and          a3, gp, t6
                  ori          a0, s7, -1541
                  mulhu        zero, s9, s11
                  rem          a3, gp, a0
                  mul          a7, sp, tp
                  sll          gp, s10, a1
                  auipc        s7, 515797
                  c.lui        a2, 12
                  remu         s2, a1, s1
                  rem          gp, a7, s7
                  slt          s9, a4, zero
                  sltu         s8, t1, a4
                  mulhsu       a3, t2, s9
                  mulhu        s11, t3, t2
                  c.srai       a5, 3
                  mulh         t3, s0, s4
                  c.sub        s0, a1
                  c.and        a2, a1
                  remu         t5, s1, t2
                  sll          t1, zero, s9
                  srli         a5, a5, 31
                  mul          gp, tp, s0
                  c.mv         gp, a2
                  c.nop
                  addi         a7, t5, -1125
                  div          sp, s8, s8
                  div          t5, s2, t4
                  c.addi       tp, -1
                  sltiu        t3, s7, -1425
                  remu         s9, a6, a6
                  c.add        s7, s1
                  c.addi16sp   sp, -16
                  sltiu        a1, s3, -1410
                  c.slli       a5, 31
                  sltiu        s10, a4, -1281
                  ori          a1, t5, -1403
                  srli         ra, t4, 3
                  c.li         a5, 16
                  addi         a0, s11, 297
                  c.addi4spn   a2, sp, 784
                  slti         t3, s5, -1371
                  c.lui        s1, 22
                  sltiu        ra, sp, -1793
                  c.srai       a2, 30
                  remu         s10, tp, a5
                  c.lui        a2, 14
                  c.addi16sp   sp, 464
                  c.and        a3, s1
                  c.lui        t3, 14
                  xor          s2, gp, a7
                  c.andi       a2, 11
                  c.addi4spn   s0, sp, 880
                  slt          zero, a5, t0
                  lui          t5, 70877
                  c.or         s1, s1
                  sll          s6, s10, s9
                  slli         s4, s8, 20
                  c.and        a2, a2
                  slli         s5, s0, 6
                  slti         t5, a0, -1895
                  c.slli       t1, 15
                  c.sub        s0, a4
                  sltu         zero, s9, gp
                  c.nop
                  or           s1, tp, s8
                  c.lui        tp, 10
                  slt          s2, t6, a2
                  srl          s5, a3, s1
                  nop
                  xori         t6, t2, -1582
                  remu         s10, sp, a6
                  c.addi4spn   a5, sp, 208
                  slli         t2, s4, 3
                  c.srli       a0, 4
                  c.srai       s1, 28
                  mulhu        a2, t0, a2
                  srai         s5, s2, 7
                  srli         sp, a0, 13
                  or           s6, a7, a2
                  and          a7, s11, t2
                  mul          zero, t6, s3
                  c.add        ra, s7
                  remu         s6, a3, t0
                  c.add        ra, t0
                  div          t4, s7, s10
                  ori          a5, s10, -768
                  c.lui        a6, 27
                  sltiu        zero, a1, 1786
                  divu         s8, t2, s3
                  sub          ra, t0, s9
                  c.addi16sp   sp, 304
                  divu         t2, t2, a5
                  srai         zero, a4, 7
                  sub          s1, a6, a4
                  mul          tp, a4, a6
                  c.sub        a3, a0
                  c.addi       a7, -1
                  add          t3, a0, s0
                  c.li         s2, 15
                  c.li         s5, -1
                  c.lui        a5, 7
                  rem          t5, a3, s2
                  slt          s1, a3, s10
                  mulh         a7, gp, t4
                  sltu         s1, zero, s4
                  c.or         a2, a1
                  c.nop
                  c.srli       a0, 24
                  c.slli       t5, 5
                  sltiu        a0, s7, 1263
                  c.or         a0, s1
                  c.mv         s2, sp
                  mulh         gp, s4, a3
                  div          a7, t3, a0
                  xori         a7, t5, -861
                  c.slli       t2, 8
                  auipc        s2, 822302
                  slli         s0, sp, 9
                  sll          s0, ra, a2
                  nop
                  mulhu        sp, a0, a0
                  c.slli       s9, 18
                  c.add        a5, a5
                  rem          t1, t6, s2
                  div          a0, s2, s0
                  c.srai       s1, 5
                  sub          s5, a4, s2
                  rem          t3, s11, s9
                  rem          zero, s7, a6
                  srl          s8, t1, t4
                  c.sub        s0, a2
                  c.andi       a1, 2
                  andi         t6, s9, -23
                  c.sub        a1, a5
                  andi         s1, ra, -1071
                  c.andi       s0, 8
                  xor          s9, s1, s11
                  c.mv         a3, s10
                  slli         ra, t6, 30
                  c.srli       s1, 3
                  slti         s4, gp, -874
                  c.or         a0, a1
                  remu         s2, a2, ra
                  c.addi4spn   a1, sp, 96
                  sub          s4, s2, a2
                  c.addi4spn   a1, sp, 752
                  c.li         gp, 17
                  div          s7, gp, zero
                  andi         tp, t6, -581
                  srai         s2, s2, 17
                  c.mv         a0, s2
                  c.slli       ra, 8
                  mulhu        s6, s4, zero
                  c.slli       a0, 30
                  sra          t3, sp, t1
                  c.li         a7, 6
                  sltu         s10, s11, s0
                  auipc        ra, 388261
                  srli         gp, s6, 12
                  and          a5, s8, s1
                  sll          t4, a7, ra
                  c.addi       s8, -1
                  sltiu        s2, a5, 1570
                  mulhsu       tp, a7, s9
                  srai         s4, t4, 8
                  c.andi       a1, 28
                  c.or         a0, a4
                  c.nop
                  sltu         a1, a1, s4
                  mulhu        s6, t3, a3
                  c.andi       a3, 10
                  mulh         s5, s6, s7
                  lui          a1, 456177
                  or           s0, a4, t1
                  andi         a6, s5, 665
                  sltiu        s6, a7, 519
                  slt          t1, a2, t2
                  sltiu        tp, ra, -1105
                  slti         s7, t0, -116
                  divu         t4, t2, t1
                  ori          zero, s6, 426
                  c.add        sp, s2
                  c.sub        a3, a4
                  c.li         sp, 18
                  c.sub        a2, a1
                  sll          t6, ra, a1
                  srai         s9, s0, 11
                  c.addi       t3, 7
                  div          t6, s10, s7
                  c.or         a0, a0
                  auipc        s4, 861720
                  xori         t5, t1, -1997
                  srai         a3, s10, 24
                  ori          t5, t0, 992
                  sltu         a2, s7, s5
                  mulhu        t1, a5, s3
                  c.slli       s10, 28
                  c.sub        a1, a1
                  c.addi       s2, -1
                  c.nop
                  c.or         a2, a3
                  addi         s5, a0, -1733
                  auipc        zero, 482670
                  sltu         sp, t1, s11
                  c.or         a0, a0
                  slti         s5, a1, 141
                  mulhu        s10, s6, a2
                  srli         s0, s7, 19
                  mulhu        tp, a1, a2
                  div          s8, a2, s10
                  rem          t2, s3, t5
                  srai         a2, tp, 13
                  sub          a2, s9, t1
                  c.addi       s7, -1
                  divu         t2, s10, a3
                  div          t5, a6, s0
                  c.and        a5, a3
                  ori          t3, t4, -34
                  slti         s8, s0, 1798
                  rem          gp, s10, a5
                  sub          t2, t2, t4
                  xor          s4, tp, a5
                  sra          s0, gp, ra
                  xori         a5, a6, 874
                  lui          a0, 522367
                  mulhu        s1, t1, s9
                  sra          a7, tp, s6
                  c.andi       s1, 15
                  sub          t3, tp, s6
                  mul          t4, t6, s9
                  c.xor        a0, a0
                  c.addi4spn   a0, sp, 1008
                  mulhu        s7, sp, s5
                  mul          a2, t1, a2
                  remu         s8, gp, a1
                  div          zero, sp, s7
                  xor          a6, sp, a0
                  slt          s4, s7, t1
                  c.nop
                  add          s4, s4, t4
                  andi         t1, sp, 133
                  c.slli       sp, 12
                  c.add        tp, a0
                  or           a6, s11, s3
                  srli         s4, s0, 27
                  addi         s0, a3, -600
                  c.li         t2, 10
                  andi         s10, s11, 1802
                  xor          a3, zero, t2
                  c.srai       s0, 28
                  divu         t3, a6, s3
                  c.nop
                  srl          t1, s4, a2
                  srai         a0, a5, 4
                  rem          s4, s5, s5
                  and          gp, sp, ra
                  c.li         s6, 23
                  c.andi       a5, -1
                  div          s8, s10, a5
                  mul          t5, s6, sp
                  c.and        s0, s0
                  lui          s1, 306603
                  sra          t2, zero, tp
                  c.and        a0, a0
                  c.srai       a3, 8
                  slt          a6, a0, s9
                  addi         t3, t0, 25
                  mulh         s11, t6, a7
                  c.addi16sp   sp, 240
                  slti         a0, a5, -1715
                  mulhu        s5, a4, s4
                  ori          s10, a6, -1228
                  mulh         tp, a2, t3
                  c.srli       s1, 5
                  xor          s1, a3, s1
                  slt          s9, a3, t0
                  slt          t1, s2, a5
                  c.srai       s0, 29
                  remu         s4, t1, s5
                  remu         s9, s6, t3
                  divu         t6, t6, s11
                  divu         t3, s1, s2
                  c.add        ra, sp
                  c.add        t6, a5
                  add          t1, t0, s11
                  srl          ra, a4, zero
                  c.sub        a2, s0
                  c.li         s5, -1
                  add          a3, sp, t0
                  slli         a6, tp, 13
                  and          t2, s8, t1
                  sub          s7, s0, a2
                  sltu         t6, a4, a3
                  mul          s2, a2, a6
                  c.addi16sp   sp, 320
                  c.li         a0, 25
                  divu         t4, t3, ra
                  c.addi       t2, 9
                  divu         s1, t6, a1
                  c.nop
                  sltiu        a7, t0, -1248
                  sra          s6, tp, s0
                  slti         s11, t2, 1944
                  c.andi       a5, -1
                  andi         s11, s8, -309
                  andi         s5, t5, -258
                  c.xor        a5, a2
                  c.lui        a2, 24
                  c.addi       a5, -1
                  c.addi16sp   sp, -16
                  xor          a2, t4, gp
                  c.li         a1, 0
                  or           s7, s11, s7
                  xor          a0, s1, a6
                  c.or         a5, s1
                  c.slli       s4, 5
                  c.srai       a1, 1
                  andi         t1, t5, 1217
                  div          a7, s7, s0
                  slti         t1, a1, 389
                  ori          s11, ra, 1065
                  div          a5, a2, t2
                  slli         gp, tp, 0
                  c.andi       s1, 0
                  sltiu        a7, s3, -973
                  c.nop
                  c.li         s10, -1
                  sra          s6, t2, t2
                  lui          s1, 731844
                  c.li         gp, -1
                  sub          tp, t6, a1
                  c.addi4spn   a1, sp, 720
                  mulhu        t5, a4, a4
                  mul          t6, a1, a3
                  sra          s11, zero, t3
                  c.add        s4, a4
                  c.lui        a5, 31
                  c.srli       a3, 2
                  xor          s0, s6, s10
                  mulhu        a5, s10, s8
                  c.li         gp, 0
                  c.sub        a0, a5
                  slli         a5, a5, 10
                  c.and        a0, s1
                  mul          s11, s1, a1
                  rem          t2, s10, s1
                  xori         t1, s10, -604
                  addi         t2, s3, -172
                  srli         s9, tp, 18
                  c.srli       a1, 18
                  mulh         tp, s10, s4
                  mulhsu       ra, a5, a3
                  mulhu        zero, s2, zero
                  sub          t3, t2, a5
                  c.addi       t6, -1
                  c.or         s1, a1
                  c.addi16sp   sp, -16
                  srli         tp, t0, 23
                  div          s5, s0, s0
                  sub          sp, s3, a2
                  srai         s11, t6, 11
                  c.mv         s11, s5
                  nop
                  lui          s5, 815630
                  divu         s6, s1, t2
                  c.mv         ra, s8
                  rem          a2, a0, gp
                  c.lui        s11, 29
                  xor          s7, a6, s2
                  sltu         t1, tp, s4
                  c.srai       a0, 31
                  c.and        a2, a0
                  sub          s10, t4, t1
                  sub          zero, t2, s1
                  c.xor        a5, a2
                  mulhu        t6, s10, s6
                  nop
                  slt          s9, s0, s3
                  sll          a0, s7, gp
                  srl          s1, a2, t4
                  sll          a0, t6, a6
                  or           s7, t6, s8
                  mul          gp, s4, s5
                  c.and        s1, s0
                  srli         zero, ra, 7
                  nop
                  c.mv         t5, a3
                  slt          tp, a2, a6
                  srl          s7, t1, t1
                  srai         ra, s4, 1
                  c.sub        s1, a4
                  ori          s11, a1, -1719
                  mul          s2, s0, s4
                  c.addi       gp, 20
                  nop
                  mulhu        s6, s10, zero
                  rem          ra, sp, t2
                  rem          a7, s0, s8
                  slti         s2, s7, 712
                  c.add        t2, s10
                  sub          s2, t3, t3
                  c.mv         a2, tp
                  c.addi4spn   a0, sp, 224
                  add          ra, a4, s10
                  remu         t5, t2, s4
                  mulhu        a3, s4, a4
                  sltu         tp, tp, a5
                  sltu         gp, a3, a7
                  c.lui        s4, 6
                  and          a5, s0, s3
                  lui          s1, 429165
                  c.slli       s2, 27
                  mulhsu       ra, a6, a2
                  c.addi16sp   sp, 144
                  c.or         a0, a0
                  sltiu        a1, a1, -112
                  remu         a0, t4, s7
                  c.and        a1, a1
                  rem          a0, s3, tp
                  rem          s11, a3, s7
                  c.slli       tp, 18
                  add          a6, s9, t0
                  c.lui        s11, 20
                  slli         s0, ra, 2
                  sltu         t5, s5, a7
                  srai         s9, s10, 4
                  div          t2, a4, t1
                  c.and        a1, a4
                  or           zero, s2, gp
                  c.sub        a1, a3
                  srai         a2, s6, 5
                  add          t5, t5, t4
                  mulhsu       s5, a3, s0
                  slli         s2, tp, 27
                  srli         a1, a4, 16
                  c.addi4spn   a3, sp, 752
                  lui          zero, 874838
                  c.nop
                  c.srli       a5, 21
                  remu         a2, t5, s11
                  andi         a6, s4, 82
                  c.lui        s2, 31
                  c.lui        s5, 13
                  lui          t6, 1005151
                  slli         s10, s5, 9
                  andi         a7, gp, 599
                  sll          a0, a1, a5
                  divu         a5, s3, s11
                  xor          a2, a3, t2
                  srli         s10, a7, 23
                  slti         t2, s11, -654
                  rem          s9, t4, t0
                  c.and        a3, s1
                  srl          t4, t2, sp
                  c.andi       a0, 6
                  or           s4, tp, s0
                  c.add        s1, t1
                  c.srai       a0, 31
                  slli         s2, s4, 7
                  xor          s8, t5, t0
                  c.add        gp, s0
                  addi         ra, sp, -1487
                  sltiu        t1, t2, 4
                  mul          t6, a5, s8
                  mulhsu       s7, ra, s4
                  c.mv         a3, t1
                  xor          s1, a1, zero
                  sub          a0, a4, s2
                  slli         ra, t1, 6
                  xori         a2, ra, 323
                  srl          a6, a0, s2
                  xor          a0, tp, a3
                  sltu         t1, s9, a7
                  sra          s1, a5, gp
                  srai         ra, s6, 13
                  srl          sp, t3, s8
                  c.or         a3, a2
                  c.xor        a5, a3
                  c.addi       s5, 4
                  or           a7, t0, t2
                  srl          a3, a5, s1
                  sub          s5, t1, t6
                  c.add        s1, t2
                  ori          tp, a1, 1609
                  andi         t4, t6, -1269
                  xor          a1, s0, gp
                  sltiu        t1, a0, -819
                  c.add        a5, a6
                  c.add        s4, s11
                  c.and        a1, a2
                  c.andi       a0, 9
                  nop
                  addi         s6, a3, 1740
                  slti         a5, a5, 708
                  auipc        s5, 1000181
                  sub          s5, t3, s10
                  c.or         a2, a1
                  c.add        t3, s5
                  c.lui        ra, 18
                  srli         a5, s10, 17
                  c.xor        a3, s0
                  c.or         a0, s0
                  xori         s0, t2, -12
                  xori         s10, t0, 1190
                  auipc        t4, 398975
                  auipc        a0, 712432
                  xori         t4, t1, 1162
                  slli         s5, s9, 16
                  c.and        a3, a0
                  c.or         s1, a5
                  mulhu        t3, zero, s8
                  c.and        a0, s1
                  c.or         a3, a2
                  c.or         s1, a0
                  c.slli       t3, 10
                  and          s4, s6, s9
                  c.add        s2, t2
                  mulhsu       gp, a1, t6
                  c.addi4spn   a0, sp, 656
                  lui          tp, 517257
                  sltu         t2, t3, s1
                  divu         t3, s10, a2
                  c.xor        a0, a3
                  sll          s11, s2, tp
                  c.sub        a3, s1
                  remu         a7, s3, a0
                  srai         s11, t1, 6
                  slli         s7, sp, 10
                  c.li         t1, -1
                  c.xor        s1, a5
                  c.srli       a1, 29
                  c.or         a0, a2
                  sra          sp, t5, a7
                  c.addi4spn   a1, sp, 144
                  c.xor        s1, a5
                  srl          s1, gp, s4
                  srai         a5, sp, 12
                  c.or         a0, a2
                  c.and        a2, s1
                  mulhu        a2, s5, t5
                  c.xor        a2, a1
                  c.srli       s0, 16
                  mulh         a6, t0, t6
                  c.srai       s0, 19
                  c.mv         t2, a7
                  c.sub        a5, a3
                  and          a5, ra, t0
                  sltu         a3, s7, a6
                  sltiu        zero, t3, 2020
                  c.or         s1, s1
                  c.slli       t3, 16
                  sltu         s10, s4, s10
                  nop
                  sll          s5, s4, a7
                  mulhsu       s1, t2, a1
                  and          a3, s1, s6
                  and          a3, sp, t2
                  lui          s4, 624980
                  c.slli       s7, 19
                  c.or         s0, s0
                  sub          t1, a6, t6
                  c.addi16sp   sp, -16
                  and          s4, t5, s5
                  ori          s10, s2, -674
                  c.lui        s1, 28
                  ori          s11, zero, 2019
                  divu         a0, a6, s1
                  xor          s11, t6, a2
                  c.add        s1, s3
                  c.srai       s1, 15
                  mulhsu       a2, s5, t2
                  c.xor        a3, a4
                  remu         gp, ra, s5
                  sub          s4, t0, a0
                  c.nop
                  divu         s5, a5, a2
                  sra          a3, t4, a2
                  c.and        s1, a0
                  c.addi16sp   sp, -16
                  sub          s10, s2, a6
                  mulhsu       t5, a6, tp
                  c.srli       a0, 21
                  c.mv         s0, s9
                  c.li         s4, 15
                  sltiu        t6, t4, 996
                  c.srai       a0, 16
                  srli         a3, t6, 31
                  c.addi       s7, 11
                  andi         s5, a5, 1586
                  c.add        a7, sp
                  c.or         a3, a4
                  xor          t2, tp, a0
                  lui          a6, 460280
                  or           s2, t5, tp
                  c.or         a5, s1
                  auipc        s8, 461072
                  c.addi4spn   a3, sp, 320
                  c.addi4spn   a2, sp, 912
                  divu         gp, a7, a5
                  remu         a7, tp, t6
                  srli         a5, s5, 2
                  add          s1, s3, a6
                  sra          t5, tp, s3
                  addi         t2, s5, 904
                  mulhu        a2, sp, t6
                  mulhsu       s6, s3, zero
                  c.slli       s9, 4
                  sra          t1, s0, a0
                  auipc        s7, 73186
                  or           s5, t2, s11
                  mulhu        s6, s3, s11
                  div          s10, gp, zero
                  c.srai       a0, 14
                  or           a5, s11, t4
                  c.nop
                  remu         t2, s6, a7
                  c.and        a5, s0
                  lui          a1, 490420
                  c.add        s7, s2
                  remu         s10, t6, s10
                  add          s10, zero, t2
                  and          t5, s4, t0
                  slt          s10, a7, a1
                  slli         a7, ra, 17
                  remu         s0, s1, s6
                  srl          s7, a3, t5
                  mul          gp, s4, s3
                  ori          s6, s5, -2025
                  c.addi       t5, 1
                  xor          zero, s3, ra
                  c.and        a0, a5
                  sll          s8, t0, t0
                  xori         gp, t6, 381
                  c.addi4spn   a3, sp, 704
                  div          s5, a0, s6
                  ori          a5, t3, 687
                  c.slli       t4, 13
                  or           zero, t2, zero
                  c.srai       s0, 16
                  slt          gp, t6, ra
                  sltu         a7, sp, a0
                  c.and        a5, a0
                  sltiu        s0, a5, -1785
                  c.or         a0, a3
                  c.and        a3, a3
                  div          s4, a4, tp
                  srai         s8, s6, 4
                  addi         t2, t3, -129
                  c.andi       a5, -1
                  and          a2, s9, a0
                  remu         sp, s8, t3
                  c.srai       a1, 24
                  c.srli       s1, 28
                  slli         gp, t4, 9
                  and          ra, gp, a4
                  div          a5, t1, s3
                  c.addi       s1, 25
                  c.add        s11, t3
                  srai         s1, s1, 28
                  nop
                  xori         s9, t0, 516
                  lui          s1, 994582
                  c.or         a2, s0
                  addi         s9, a5, 530
                  slt          a3, s6, s8
                  add          t2, a2, s11
                  c.xor        s0, a1
                  c.lui        a5, 29
                  nop
                  add          a5, t5, s7
                  c.li         a2, 4
                  mulhsu       s5, t5, s4
                  xori         t6, t5, 1768
                  rem          s8, a1, t3
                  c.nop
                  c.or         s1, a0
                  c.lui        t4, 26
                  mulhu        s5, a2, s4
                  c.lui        s6, 27
                  mulhsu       s8, gp, t1
                  c.srli       a5, 23
                  xori         a2, s0, 336
                  sltu         s9, t3, t1
                  auipc        s10, 656989
                  srl          s0, t5, t1
                  c.or         s1, s0
                  nop
                  mulh         s5, a4, s6
                  slt          t6, sp, a4
                  nop
                  c.sub        a5, a2
                  or           t2, s1, a1
                  c.addi4spn   a1, sp, 688
                  mulhsu       s11, gp, s1
                  rem          t5, a3, ra
                  and          s9, a7, tp
                  andi         a7, t5, -1019
                  sll          a6, s7, zero
                  nop
                  div          a0, sp, a7
                  c.slli       s4, 17
                  slti         a1, a5, 1219
                  xor          s1, t4, a2
                  sra          s9, s7, t4
                  andi         s11, a2, 793
                  mulhu        s10, sp, s8
                  c.and        a1, a2
                  mulh         gp, s0, a5
                  xori         a5, s6, 1205
                  sltu         a0, a0, t6
                  auipc        a2, 93924
                  mulhsu       s1, s8, t6
                  xor          a3, zero, s5
                  c.nop
                  sltiu        a3, s9, 1574
                  c.mv         sp, gp
                  xori         s1, a2, -1245
                  c.addi4spn   a2, sp, 672
                  sltiu        ra, s3, 1641
                  c.addi16sp   sp, -16
                  remu         ra, t0, t3
                  divu         a1, t6, s2
                  divu         a3, s6, a6
                  xor          t4, s6, t0
                  c.or         a0, a3
                  xor          gp, s3, a7
                  c.andi       a0, -1
                  divu         sp, s0, s10
                  c.add        t5, sp
                  c.addi       t3, -1
                  slli         s5, sp, 22
                  srai         ra, tp, 31
                  c.srai       s0, 7
                  auipc        gp, 505857
                  or           a1, t6, s7
                  c.addi4spn   a0, sp, 528
                  xori         s6, t3, -1280
                  srl          tp, sp, s9
                  c.mv         s0, s2
                  slli         a7, t6, 31
                  c.srli       a3, 2
                  mul          s10, s5, s0
                  c.xor        s0, a3
                  c.nop
                  rem          s4, ra, a4
                  c.nop
                  div          t1, s9, a3
                  c.addi16sp   sp, 304
                  c.li         s4, -1
                  sub          s4, s11, a5
                  ori          t4, t2, 1531
                  mulhu        t5, t5, a7
                  srai         a5, s10, 10
                  srl          t4, s0, a1
                  or           s0, gp, a1
                  c.addi       a5, 20
                  c.srli       a5, 29
                  c.add        t1, s2
                  c.slli       s5, 15
                  c.and        a5, a1
                  sltiu        gp, s6, 818
                  div          s10, a1, s9
                  mulhsu       t3, t4, s7
                  c.addi4spn   s1, sp, 608
                  rem          s11, s0, s6
                  sltu         s5, s1, a2
                  c.slli       a0, 21
                  sub          s6, s6, t3
                  mulh         a3, s3, a4
                  c.nop
                  or           t4, a2, t5
                  auipc        s1, 474157
                  c.srli       a5, 23
                  mulhu        ra, gp, a4
                  remu         s2, s3, s7
                  or           a7, s5, t0
                  c.addi16sp   sp, 112
                  andi         s11, t6, 1693
                  c.andi       s0, -1
                  divu         a2, a6, a6
                  sll          gp, t4, a0
                  sltiu        t6, t3, 1654
                  c.slli       t4, 14
                  c.li         a6, 26
                  ori          t3, s8, -1455
                  c.and        a0, a2
                  c.sub        a5, a3
                  srl          a2, s0, t4
                  srli         a1, a4, 4
                  lui          t6, 547050
                  or           s11, s10, zero
                  c.xor        s0, s0
                  c.lui        s4, 5
                  c.li         s10, 26
                  lui          a0, 374217
                  srai         t6, t5, 17
                  add          s5, t3, gp
                  div          s6, t4, s5
                  slt          t2, s10, a1
                  andi         tp, zero, 685
                  c.lui        a3, 1
                  c.andi       a2, -1
                  sltu         s6, s1, s2
                  c.srai       a3, 29
                  divu         a1, s2, s5
                  slli         s7, s10, 7
                  sra          s4, s5, s9
                  c.srli       a2, 3
                  sra          gp, s6, t1
                  srli         a3, t6, 6
                  c.andi       a1, 10
                  c.and        a5, a2
                  c.add        a3, a2
                  c.mv         tp, a0
                  divu         t4, t2, t0
                  mul          s11, t4, t6
                  or           a0, a6, s8
                  sll          s11, a5, s4
                  or           t4, s9, a0
                  addi         s2, s10, -311
                  xor          t5, s3, t5
                  div          a5, t1, ra
                  sltiu        s1, t1, -2027
                  slli         t2, t1, 29
                  lui          t3, 952204
                  c.and        s1, a4
                  c.addi16sp   sp, -16
                  auipc        tp, 149233
                  c.nop
                  sll          a3, s4, s9
                  and          s9, s6, a2
                  c.sub        a5, a2
                  c.addi16sp   sp, -16
                  c.andi       a3, -1
                  ori          a1, sp, -1248
                  ori          t4, t6, -679
                  lui          s11, 11154
                  c.and        s1, a1
                  c.andi       a2, 3
                  sra          a0, s11, t2
                  c.andi       a2, -1
                  or           t2, t2, s11
                  mulhu        s2, a6, a3
                  and          a5, a5, s7
                  c.mv         a1, t6
                  and          a6, zero, s3
                  c.srli       a3, 12
                  divu         t2, s4, a4
                  c.nop
                  rem          a7, t0, s9
                  c.or         a2, s0
                  rem          t1, a5, s7
                  c.and        a0, a3
                  lui          s7, 209379
                  sltu         t5, a6, s0
                  srai         a7, a2, 17
                  srai         s4, t2, 23
                  c.addi4spn   a5, sp, 224
                  c.xor        a2, a5
                  xor          a2, gp, a3
                  ori          ra, a0, 313
                  and          s10, sp, s0
                  c.and        a3, a2
                  sra          t5, t2, s3
                  c.addi4spn   a0, sp, 96
                  c.lui        tp, 10
                  addi         a0, s2, 1153
                  c.addi4spn   a0, sp, 448
                  slt          ra, a7, a4
                  c.lui        t1, 5
                  xor          s4, s6, ra
                  lui          s4, 572427
                  srai         s5, gp, 26
                  mulhu        a7, ra, s8
                  xor          a1, s1, s3
                  nop
                  lui          sp, 1044706
                  nop
                  remu         t2, s5, s5
                  c.srli       a1, 2
                  srli         a5, s4, 15
                  c.li         a5, -1
                  sub          t5, s9, s0
                  sltu         s1, t5, a0
                  remu         a1, s2, t1
                  add          s1, s5, zero
                  nop
                  c.lui        t4, 12
                  c.srli       a5, 30
                  c.addi16sp   sp, 64
                  xori         s1, t4, -1245
                  c.mv         t4, tp
                  nop
                  slt          s8, t1, s5
                  c.and        a0, a2
                  sltu         a5, s1, s5
                  c.or         s0, a5
                  c.mv         a6, t1
                  c.lui        a2, 3
                  c.or         a0, s0
                  xori         s1, s1, 908
                  c.addi       s9, 13
                  sll          t6, a7, s2
                  andi         s1, t0, -960
                  c.or         a1, a4
                  mul          t5, s2, s3
                  c.li         s0, -1
                  ori          ra, zero, -1596
                  c.addi4spn   s1, sp, 560
                  mul          s7, a5, a0
                  lui          t5, 580026
                  sll          a7, a5, s9
                  c.li         a2, -1
                  mulhu        s2, s0, t0
                  addi         t2, sp, 1638
                  and          s1, a7, s3
                  slt          t6, s2, s3
                  auipc        t5, 222528
                  mulhsu       s7, a5, a7
                  nop
                  srl          s10, s11, a7
                  mulh         s8, s7, a0
                  srl          s9, s9, s5
                  sll          s8, s9, t4
                  mul          s4, s5, tp
                  srl          s5, t0, t0
                  sra          zero, a6, t5
                  div          s11, s5, t1
                  nop
                  srai         t1, ra, 12
                  c.sub        a3, s0
                  c.and        a2, a5
                  c.andi       a5, -1
                  sltu         a2, t0, s9
                  slt          s8, s0, s5
                  c.srli       a1, 9
                  sltu         a7, t5, a0
                  c.srai       a3, 9
                  c.addi16sp   sp, -16
                  c.mv         a1, s4
                  c.mv         s5, s1
                  div          s11, sp, s8
                  c.lui        a0, 23
                  remu         ra, a7, a2
                  add          s8, a4, s2
                  c.nop
                  andi         s11, gp, 1476
                  c.lui        s2, 21
                  c.slli       a2, 16
                  c.li         t6, 25
                  c.mv         s8, s2
                  c.andi       a0, 20
                  lui          a7, 1018135
                  add          s10, t4, s4
                  add          s6, s9, t1
                  c.addi       s4, 5
                  c.li         s7, -1
                  auipc        s2, 744216
                  mulh         t1, s0, t4
                  sll          t1, a7, s6
                  c.li         sp, 4
                  c.lui        s1, 15
                  sltu         t2, tp, s3
                  div          a5, a4, sp
                  c.slli       s6, 5
                  srl          s9, a0, a4
                  ori          t5, t0, 1169
                  andi         s5, a2, -815
                  or           tp, t4, s8
                  c.sub        a2, s1
                  srli         a7, a7, 24
                  c.or         a2, a5
                  c.lui        a1, 24
                  c.addi4spn   a5, sp, 320
                  remu         s7, gp, t0
                  srai         s1, a3, 26
                  add          t3, a5, ra
                  c.nop
                  c.li         a0, 27
                  c.andi       a5, -1
                  div          s7, a5, s2
                  c.addi       a7, 29
                  c.nop
                  ori          zero, a2, -227
                  divu         a1, s6, s8
                  and          a0, s4, t1
                  and          s10, a5, s11
                  c.nop
                  c.nop
                  c.nop
                  slt          zero, tp, t4
                  c.srli       a3, 21
                  c.lui        gp, 10
                  c.sub        a0, a5
                  sra          s0, t1, a3
                  sltu         s0, s4, sp
                  sltu         zero, t5, s7
                  c.andi       a2, -1
                  c.mv         t1, tp
                  slti         t1, a1, -1271
                  mulhsu       a0, a2, s1
                  rem          a5, s4, s0
                  mul          s0, s1, t4
                  c.addi4spn   s1, sp, 304
                  add          a5, gp, s6
                  c.xor        a0, s0
                  add          a0, s5, s9
                  c.or         a5, a4
                  c.andi       a3, 24
                  sub          s9, s8, t6
                  add          gp, t2, t3
                  c.mv         a6, t3
                  div          tp, zero, t3
                  mul          a1, s9, s5
                  srli         a5, a3, 11
                  c.sub        a5, a2
                  remu         a7, s4, t6
                  c.addi16sp   sp, 176
                  c.li         a2, 25
                  div          t3, a2, t2
                  mul          s7, s2, s8
                  c.srai       a0, 22
                  c.xor        s0, s0
                  add          s5, ra, s11
                  c.li         gp, 21
                  srai         t4, t5, 28
                  addi         t5, a3, 116
                  c.or         a2, s0
                  slti         a6, t6, 1391
                  sll          s6, a4, t1
                  sll          t6, t3, t5
                  slli         s1, t1, 18
                  divu         s0, s0, s9
                  c.add        t2, t0
                  add          a1, t2, a4
                  or           t6, sp, t4
                  c.addi4spn   a2, sp, 400
                  srl          a6, t1, a4
                  c.xor        s1, s0
                  c.add        t6, t1
                  remu         tp, gp, s8
                  srli         s5, t3, 27
                  nop
                  slt          s0, t2, a5
                  sub          sp, s9, tp
                  srli         s8, t5, 9
                  mulh         t2, sp, gp
                  srai         t4, s11, 28
                  c.add        s5, s6
                  sub          s10, s2, a5
                  c.add        s0, a2
                  slt          a0, a2, s4
                  sll          s6, t1, a6
                  andi         t3, gp, -1087
                  c.addi4spn   a2, sp, 928
                  c.addi16sp   sp, -16
                  ori          a0, tp, -991
                  rem          a1, s1, t1
                  divu         t6, s0, s1
                  c.srli       a3, 16
                  sll          t2, a0, t5
                  c.addi       a0, 23
                  divu         a0, s3, a5
                  nop
                  div          t3, t4, s3
                  lui          s11, 281096
                  c.xor        a0, a3
                  addi         s2, t2, -967
                  sll          s5, a0, a4
                  auipc        s8, 901793
                  andi         ra, t2, 180
                  c.addi4spn   a3, sp, 736
                  and          tp, s1, s7
                  slli         s6, t1, 31
                  c.andi       a2, -1
                  div          s9, s10, a0
                  c.addi16sp   sp, 288
                  remu         ra, s5, t2
                  mul          zero, t0, s7
                  c.mv         a7, a3
                  sltiu        t2, tp, -1841
                  or           s1, a3, s8
                  c.li         t5, -1
                  c.mv         gp, a2
                  mulh         s2, s5, s8
                  c.xor        a0, a2
                  c.or         s0, s1
                  xori         a2, a3, -1212
                  c.sub        a0, a5
                  srli         a3, t2, 14
                  c.addi4spn   a2, sp, 304
                  remu         a0, zero, s2
                  slt          a0, a7, s7
                  xor          s10, a2, s11
                  c.srai       s0, 30
                  c.srli       a5, 14
                  mulhu        t6, a4, s8
                  addi         a6, s9, 924
                  rem          a2, s1, t6
                  c.mv         t6, s1
                  c.mv         s2, t1
                  c.lui        a7, 23
                  slt          s5, s11, t5
                  srli         a3, t0, 1
                  c.mv         s11, t1
                  slt          t6, s8, s10
                  c.andi       a1, -1
                  mulhu        s9, ra, a7
                  add          s5, t2, t5
                  remu         zero, t3, s6
                  c.add        a3, s1
                  c.or         a1, a5
                  slli         t4, t0, 24
                  slli         gp, zero, 21
                  slli         s2, t3, 14
                  sll          t1, t6, t2
                  c.addi16sp   sp, 64
                  add          t5, zero, t5
                  c.addi       t6, 15
                  andi         ra, a6, -1060
                  c.or         a0, a5
                  c.addi       ra, 4
                  sra          s11, s6, a3
                  rem          t1, a4, a5
                  c.addi4spn   a1, sp, 64
                  addi         s11, a5, 1314
                  xor          a2, t2, gp
                  xor          s2, t4, a7
                  srl          s4, s11, s3
                  slli         s7, a0, 24
                  ori          s1, gp, -1069
                  sltiu        s5, a0, 1729
                  and          s2, a6, a2
                  slti         a0, s7, 1766
                  sll          ra, a4, sp
                  nop
                  slt          a6, a6, a1
                  c.slli       s11, 24
                  srl          a3, s7, t1
                  slli         a2, t1, 25
                  andi         s1, t4, 1272
                  c.lui        a7, 16
                  c.srli       a2, 21
                  mul          gp, tp, t0
                  c.slli       sp, 3
                  sltu         t2, tp, s6
                  srli         s6, a5, 17
                  c.srai       a3, 7
                  srai         t5, a6, 26
                  srl          a1, t5, s9
                  c.addi16sp   sp, -16
                  add          a5, s4, t6
                  add          s4, sp, a1
                  mul          tp, gp, gp
                  c.mv         s11, t4
                  add          s8, a0, gp
                  srl          t4, s10, s8
                  auipc        s2, 250790
                  xor          sp, s4, a5
                  c.addi4spn   a0, sp, 304
                  sltu         tp, t6, s5
                  c.xor        a5, a2
                  c.lui        s10, 23
                  div          s5, a3, s9
                  sra          t4, t4, a0
                  addi         t1, ra, 1240
                  c.slli       a5, 19
                  slt          gp, a3, s3
                  slti         s4, a7, 740
                  c.add        a6, s3
                  c.slli       s5, 3
                  srl          ra, s8, s11
                  c.andi       a3, -1
                  mul          sp, gp, s2
                  c.addi       t5, -1
                  remu         a5, s2, s5
                  c.addi4spn   a0, sp, 960
                  slti         a1, s5, 1002
                  slli         t6, a0, 8
                  slt          a1, s0, s3
                  srli         s7, t6, 23
                  c.or         s1, a2
                  c.mv         t6, s1
                  mulhsu       t4, a5, s0
                  c.xor        a1, a5
                  rem          s5, tp, s7
                  mulh         t4, a5, t4
                  c.or         a0, s0
                  remu         gp, s4, s11
                  c.or         a5, a3
                  xor          s5, a2, s9
                  c.addi16sp   sp, -16
                  sra          a0, gp, t5
                  add          s2, s2, s2
                  sub          s10, s8, a0
                  remu         t3, s8, a6
                  slli         a7, sp, 4
                  srli         t4, t1, 15
                  sltiu        t4, a5, -1874
                  srli         s7, a3, 10
                  c.or         s0, a0
                  slti         s2, s1, -775
                  remu         t1, a6, s0
                  addi         s4, t6, 646
                  or           a0, a2, a6
                  sltu         s9, s7, ra
                  xor          t3, s7, a1
                  c.xor        a0, a5
                  c.mv         ra, s11
                  srli         t4, s10, 6
                  c.addi       s9, 8
                  and          t2, s0, t5
                  c.mv         t3, t0
                  rem          a3, s3, a7
                  c.and        a2, a1
                  c.mv         s4, s11
                  andi         tp, s2, 1425
                  remu         s5, a3, t3
                  addi         t2, a0, 433
                  slt          gp, a1, t4
                  c.xor        a2, a2
                  lui          a6, 863446
                  mulhu        t1, t4, a6
                  lui          s9, 347263
                  sub          a1, s4, gp
                  xor          a2, t2, s11
                  mulh         gp, s1, t0
                  c.xor        s1, s1
                  c.xor        s1, a3
                  srai         t6, t2, 11
                  c.sub        a2, a1
                  srai         t1, t1, 0
                  add          s10, a1, tp
                  c.srli       a1, 23
                  c.srli       a5, 11
                  andi         a1, t0, 978
                  auipc        t4, 105529
                  or           t4, s4, s11
                  xori         t4, a1, -1757
                  sltiu        t6, a7, -1510
                  slti         a6, gp, -1798
                  ori          s5, t0, 1356
                  c.li         s1, -1
                  add          s5, t2, a6
                  sltu         s1, t6, s1
                  srai         t2, t0, 16
                  sra          s7, s9, t3
                  srai         t2, s2, 4
                  nop
                  c.add        t4, t2
                  c.srli       a3, 23
                  sltu         t3, t1, s4
                  c.or         s1, a4
                  sll          s2, s11, s5
                  mulhsu       sp, t3, a2
                  c.add        a2, s1
                  sltiu        s8, zero, 621
                  srl          gp, t4, s10
                  c.sub        s0, a1
                  divu         s11, a0, a3
                  slti         s5, s3, -1676
                  divu         sp, a7, t6
                  c.and        a3, a2
                  srl          a6, a7, a0
                  c.andi       a0, 2
                  sll          a0, s4, a4
                  c.srli       a0, 5
                  c.add        s6, a7
                  sub          s2, a3, s6
                  xor          s10, a4, a6
                  mul          zero, t4, s3
                  c.srai       a1, 1
                  div          a7, t5, s11
                  rem          gp, t0, s2
                  sub          sp, s9, t1
                  sra          s7, s6, a7
                  sll          t2, s5, t6
                  addi         tp, s10, -221
                  c.addi       s7, -1
                  c.slli       s0, 5
                  srli         t6, t2, 24
                  and          ra, s9, s8
                  c.add        tp, a7
                  srl          zero, a2, s5
                  c.li         t2, 13
                  auipc        ra, 882658
                  mulhsu       a7, s5, s8
                  c.srli       a5, 24
                  c.slli       t6, 12
                  slli         s2, a4, 16
                  lui          t2, 613915
                  mulhu        a6, a6, t1
                  rem          s0, s0, a7
                  andi         ra, t6, -957
                  c.srli       a2, 23
                  c.mv         s11, a3
                  mulh         t1, a6, a2
                  sra          a7, a3, a7
                  addi         t2, s6, -157
                  xor          s5, s11, a1
                  divu         t2, t6, tp
                  c.andi       a3, 4
                  c.mv         s7, s9
                  srli         t2, t2, 17
                  and          ra, s0, s4
                  c.or         a3, a0
                  sub          a6, ra, s5
                  mulhu        a2, t1, t2
                  or           ra, s1, a7
                  slt          s4, t0, s9
                  srli         a3, a3, 8
                  slli         s10, sp, 26
                  c.lui        t3, 18
                  mul          s6, a1, s3
                  lui          s2, 192912
                  c.slli       s6, 18
                  mulhsu       a3, t4, s1
                  addi         s6, a3, 1760
                  auipc        a1, 666705
                  and          a7, s10, s10
                  or           a0, s6, t3
                  div          s2, s1, t1
                  c.addi       t5, -1
                  c.srai       a2, 4
                  c.addi16sp   sp, 96
                  and          s9, s11, s1
                  c.slli       s1, 1
                  ori          t3, a0, -948
                  c.and        a0, s0
                  addi         ra, a0, 1055
                  srli         s6, s0, 25
                  c.lui        t2, 14
                  c.sub        a3, a0
                  xor          a0, gp, a0
                  c.nop
                  slti         a0, gp, -651
                  rem          s10, a7, s4
                  c.sub        a2, s1
                  mulh         t2, s0, s1
                  mulhsu       a3, s6, ra
                  srli         t2, sp, 8
                  c.addi4spn   a5, sp, 128
                  slti         s4, ra, 1084
                  srli         s0, s11, 29
                  c.xor        a3, s0
                  nop
                  slli         a0, s6, 1
                  c.and        a2, a4
                  lui          s9, 363012
                  c.lui        s2, 20
                  xori         s1, a1, 840
                  c.and        s1, a1
                  lui          gp, 421565
                  mul          t2, t0, a7
                  nop
                  nop
                  nop
                  c.andi       a0, -1
                  div          t4, a1, t4
                  and          a0, tp, s2
                  c.sub        a5, a0
                  sll          s10, a5, ra
                  c.andi       s0, 18
                  mulhsu       tp, a1, s9
                  c.srai       a2, 14
                  c.slli       gp, 28
                  c.addi16sp   sp, -16
                  sub          sp, s9, s0
                  div          ra, s10, ra
                  c.li         s6, -1
                  c.lui        a2, 12
                  c.addi       a1, 5
                  c.addi4spn   s0, sp, 720
                  c.addi       s0, -1
                  c.slli       a3, 24
                  add          s10, s4, s8
                  c.andi       a3, 7
                  mulhu        a3, gp, s7
                  sll          s11, s8, a3
                  c.lui        s2, 9
                  mulhsu       a1, s2, s7
                  c.li         sp, 23
                  ori          s4, s0, 1214
                  c.addi4spn   a5, sp, 336
                  c.lui        a1, 31
                  c.xor        s1, a3
                  c.lui        s2, 25
                  andi         t6, gp, 1580
                  c.nop
                  divu         a2, s8, gp
                  or           s2, s2, s5
                  c.or         a0, s0
                  c.or         a5, s1
                  and          sp, s7, gp
                  and          t3, t5, t1
                  sra          sp, t2, s1
                  c.xor        a3, a5
                  c.addi16sp   sp, -16
                  div          s5, s9, t6
                  c.li         tp, 30
                  mulhu        a1, a4, t4
                  c.addi16sp   sp, 320
                  rem          t1, t1, a6
                  c.sub        a2, a2
                  sltiu        s2, a6, -819
                  srai         a6, s8, 10
                  add          s6, s8, a7
                  c.srli       s1, 21
                  ori          t4, s8, 1755
                  c.andi       a0, 14
                  c.srai       a5, 24
                  mulhsu       tp, ra, t0
                  c.sub        a0, a2
                  nop
                  c.slli       a2, 12
                  c.andi       a5, -1
                  ori          s5, t1, 1116
                  auipc        t2, 26086
                  c.nop
                  c.li         t3, 13
                  c.li         sp, 24
                  c.addi16sp   sp, 208
                  or           t1, s1, a6
                  mulhsu       a1, zero, a6
                  lui          s4, 936738
                  addi         s4, a6, -499
                  c.and        s1, a5
                  c.addi4spn   s0, sp, 576
                  c.and        a2, a3
                  sub          s5, s7, a2
                  divu         t6, s11, s6
                  sll          s4, ra, s6
                  or           s2, s9, zero
                  andi         a3, a2, 1301
                  c.mv         a1, s8
                  c.addi16sp   sp, -16
                  sltiu        t6, a1, -924
                  divu         t3, s8, s5
                  c.srai       a3, 20
                  c.lui        a0, 11
                  c.and        a3, a3
                  remu         s4, s2, tp
                  slti         a5, s6, -168
                  srl          s4, t3, t4
                  sll          s2, s1, s5
                  c.or         s0, s0
                  srai         ra, s10, 15
                  sltu         t2, gp, sp
                  srl          t6, s9, s6
                  or           t2, s3, zero
                  c.slli       a7, 22
                  srai         s0, sp, 30
                  xor          t1, s7, s11
                  c.addi       t5, 22
                  rem          s5, a7, s0
                  addi         a5, t0, 1901
                  nop
                  c.xor        a3, s1
                  c.or         a2, a0
                  srli         s11, s3, 20
                  c.or         s0, a5
                  c.addi       s6, 18
                  c.or         s1, s1
                  auipc        s2, 927835
                  c.mv         a7, a0
                  c.srai       a1, 26
                  c.srli       s1, 18
                  c.lui        t6, 18
                  srli         s6, sp, 22
                  divu         s4, tp, s11
                  rem          ra, t0, gp
                  srl          t1, a4, a6
                  c.and        a5, a2
                  c.or         a0, a3
                  ori          s9, a1, 1580
                  sub          t2, zero, t5
                  mul          t6, s9, tp
                  c.srai       a3, 3
                  mul          a7, zero, s3
                  srl          s9, s3, tp
                  c.andi       a5, 18
                  sltu         s5, a2, t2
                  sltu         s1, a2, s0
                  c.andi       a3, -1
                  sll          a1, s3, s0
                  sltiu        a6, a5, 874
                  mulhsu       a5, a0, s11
                  slti         a3, a7, 1683
                  srl          s2, a3, t5
                  c.mv         a7, a0
                  sub          zero, s3, gp
                  c.xor        s1, s0
                  c.xor        a2, a5
                  mulhsu       s8, s0, s0
                  sltu         s5, t4, t0
                  mulhsu       a3, t1, a4
                  c.add        s0, s6
                  sra          t6, s0, a6
                  sub          gp, t2, a2
                  c.srai       a0, 28
                  c.nop
                  c.srai       a0, 28
                  sub          a7, s11, ra
                  c.addi       s8, -1
                  div          gp, t4, sp
                  srai         s11, a4, 21
                  or           t2, s7, s6
                  nop
                  mulhsu       s10, ra, s1
                  c.and        a0, a0
                  srl          s8, gp, t2
                  addi         s10, a2, 897
                  andi         s5, s10, -1312
                  mulhsu       s8, s1, s7
                  mul          a2, t2, t5
                  c.nop
                  sra          gp, t4, t5
                  c.or         a2, a3
                  xori         s10, s7, -1195
                  nop
                  c.li         tp, -1
                  addi         s9, s6, -510
                  divu         gp, t2, s2
                  c.and        a0, a0
                  sub          t5, a4, s0
                  andi         s4, zero, 1870
                  c.srli       a2, 22
                  c.or         a2, s0
                  nop
                  sltiu        a0, s3, -1064
                  c.add        t2, a3
                  c.and        s0, a0
                  addi         tp, s0, -1118
                  slli         a5, s9, 1
                  addi         sp, tp, -1120
                  nop
                  mulh         s9, a5, s0
                  andi         t5, a1, 1672
                  sll          a6, gp, s3
                  c.srai       s1, 14
                  c.sub        a1, a4
                  c.nop
                  divu         s2, a7, s4
                  c.addi4spn   a5, sp, 336
                  mul          a2, zero, a1
                  c.sub        a5, a2
                  c.nop
                  c.sub        a3, a3
                  c.addi4spn   a1, sp, 112
                  xori         zero, s9, 49
                  srl          s2, s0, s10
                  and          t2, s11, s6
                  slti         a3, s4, -1751
                  sltiu        ra, a7, -1989
                  c.addi4spn   a3, sp, 64
                  c.andi       a0, 14
                  srli         t6, a6, 29
                  div          a1, t1, t4
                  c.nop
                  srai         s2, s0, 30
                  c.sub        a0, s1
                  c.srli       s1, 17
                  c.slli       a7, 23
                  ori          s9, s3, 782
                  srli         t1, s8, 15
                  c.andi       a3, -1
                  c.lui        s7, 12
                  nop
                  andi         s4, a1, -863
                  addi         t5, gp, -288
                  mulhsu       s2, s9, ra
                  c.mv         s0, a4
                  slti         a6, a2, -251
                  sltu         a3, s7, s11
                  c.addi       s0, 14
                  sltu         s8, a2, a0
                  andi         t3, s1, -45
                  remu         t1, a3, sp
                  c.or         a0, s1
                  slt          s7, ra, s4
                  ori          t4, a2, 1253
                  c.srai       s1, 22
                  or           t1, a2, tp
                  sub          s1, s8, t5
                  c.sub        s0, s0
                  c.addi16sp   sp, 176
                  div          t1, sp, s11
                  sll          a6, gp, s9
                  div          t1, sp, a7
                  srli         tp, a3, 21
                  sll          a6, s4, s2
                  lui          a5, 461467
                  mul          a6, s6, t3
                  addi         s6, ra, 241
                  srli         t4, s10, 13
                  xor          t3, s11, s9
                  add          s9, s4, a5
                  or           t4, s10, sp
                  srli         s11, a1, 27
                  sltiu        tp, zero, 1546
                  and          zero, a7, s10
                  remu         t6, a1, s7
                  add          sp, t6, t3
                  auipc        a5, 334998
                  c.addi       s1, -1
                  c.srli       a5, 10
                  c.addi       a7, -1
                  ori          t1, s1, -308
                  c.andi       a2, -1
                  c.or         a5, a4
                  sltu         a5, s4, a1
                  c.srai       s1, 14
                  auipc        s11, 622069
                  mulh         a5, s5, ra
                  c.addi       t1, 19
                  srl          a2, s4, s9
                  c.srai       a5, 10
                  c.mv         a3, t4
                  c.and        s1, a3
                  c.nop
                  c.srai       s0, 18
                  sra          ra, zero, a6
                  andi         t6, a1, -747
                  c.sub        a0, a1
                  c.or         a3, a4
                  sltu         t3, t2, s6
                  ori          s10, s6, -1305
                  div          s10, a6, t5
                  srl          a0, ra, zero
                  div          ra, a5, s10
                  c.and        a2, a3
                  slli         s0, t0, 27
                  sltu         t2, s8, s6
                  slli         s10, s1, 10
                  c.srai       s0, 1
                  lui          t5, 35274
                  c.srli       s0, 10
                  mul          t4, s8, s11
                  ori          s10, t5, 747
                  andi         t2, t4, 961
                  srl          ra, t6, s9
                  xor          sp, s5, s8
                  div          s10, s5, s6
                  slli         t4, a1, 5
                  mulh         tp, t0, s0
                  ori          s0, s7, 1418
                  c.nop
                  srl          t3, s4, t0
                  nop
                  auipc        s0, 1007574
                  rem          sp, tp, s4
                  c.addi16sp   sp, 144
                  mulhsu       a1, s8, a7
                  slli         a5, s11, 15
                  addi         t6, a1, -1791
                  c.lui        s9, 7
                  mul          t6, t4, tp
                  c.srli       a3, 1
                  srli         a1, a4, 31
                  sub          s11, t1, s4
                  c.li         s10, 10
                  c.lui        s10, 21
                  slli         a2, s2, 14
                  c.xor        a0, a0
                  and          a0, t5, s2
                  slti         s4, gp, 792
                  auipc        t1, 320199
                  c.addi4spn   a5, sp, 192
                  c.xor        a3, a4
                  c.addi16sp   sp, -16
                  mulhu        s9, s1, t2
                  sll          a7, tp, t3
                  c.nop
                  add          t4, gp, gp
                  c.xor        a3, s0
                  div          t6, s0, a7
                  mulhsu       s1, a6, s7
                  sra          s2, a4, s6
                  srl          ra, ra, s11
                  c.sub        a0, a3
                  slt          a3, a1, s0
                  slli         t2, sp, 21
                  rem          a3, a6, a0
                  mul          a0, t2, t1
                  c.nop
                  sltiu        t4, s5, -766
                  c.srli       s1, 5
                  mulhsu       s1, t1, s1
                  remu         a0, a6, a4
                  c.mv         s2, sp
                  srai         s5, sp, 30
                  c.slli       a6, 9
                  c.mv         a0, s3
                  c.lui        a7, 25
                  or           a3, t6, t4
                  mulh         a5, a7, tp
                  srli         s1, sp, 31
                  sltu         a1, ra, a3
                  div          s9, s8, s5
                  c.or         a1, a5
                  lui          t4, 377789
                  and          a3, s2, t2
                  c.or         a1, s1
                  ori          s7, sp, 1254
                  rem          s11, s2, t1
                  c.lui        a0, 27
                  sub          s11, a2, t6
                  c.add        s8, t3
                  remu         t3, a4, a7
                  xori         sp, s0, 407
                  c.srai       a5, 23
                  remu         s5, gp, s10
                  lui          a0, 495064
                  add          zero, s7, gp
                  srli         t1, a3, 11
                  add          s0, s0, a6
                  srli         s0, s5, 12
                  sltu         t6, a6, s3
                  srli         ra, s2, 5
                  addi         a7, t5, -1320
                  andi         sp, s6, -1812
                  remu         s5, s7, s11
                  c.slli       t2, 17
                  lui          sp, 906487
                  sub          a7, s0, s9
                  sltu         s5, sp, t6
                  c.srli       a5, 3
                  andi         tp, s9, -877
                  c.addi16sp   sp, 256
                  c.li         s4, -1
                  c.addi       a7, 9
                  ori          a7, t3, 538
                  c.srli       a2, 4
                  xor          gp, a3, a5
                  c.addi16sp   sp, -16
                  xori         s0, zero, -1561
                  sltiu        a2, zero, -1937
                  srai         t2, s10, 21
                  sltu         a6, s11, s9
                  c.srli       s1, 28
                  and          a3, s4, t4
                  srli         t6, a6, 13
                  c.or         a1, a5
                  slt          a7, s5, s6
                  add          a2, tp, a4
                  slt          a5, t6, t3
                  srai         a0, s2, 29
                  divu         s2, s2, s9
                  c.xor        s1, s0
                  sra          t2, s4, a6
                  c.lui        s7, 2
                  mulhu        a7, s3, s5
                  auipc        t4, 978099
                  or           t6, t0, s0
                  sll          t5, tp, tp
                  c.mv         t4, a3
                  sub          s9, a1, s7
                  or           a7, s7, s9
                  c.li         t5, 8
                  c.or         a2, a3
                  remu         a6, a5, s6
                  c.lui        s5, 26
                  sra          zero, ra, t0
                  add          s1, s8, s8
                  srli         ra, a2, 15
                  sll          t1, t4, a0
                  c.and        a5, a2
                  sltiu        s5, zero, -780
                  mul          s5, s3, a6
                  sra          a2, a4, a6
                  c.addi       t3, 3
                  c.addi       s1, -1
                  mulhu        s5, s4, a0
                  slt          t6, a7, s3
                  ori          s1, tp, 713
                  c.or         a0, a0
                  c.addi16sp   sp, -16
                  c.lui        a6, 26
                  addi         a1, s6, 1615
                  c.nop
                  sltu         s0, t0, s8
                  srl          s9, s0, gp
                  c.addi4spn   a1, sp, 816
                  sll          t2, t1, t1
                  xori         sp, tp, 1280
                  and          a0, zero, s7
                  ori          t2, t0, -1072
                  srai         a0, s1, 0
                  div          s7, a4, zero
                  sub          a6, a0, a5
                  sll          s2, s6, s7
                  sltu         ra, s3, s5
                  sll          s7, a7, s4
                  c.nop
                  c.addi       t1, -1
                  div          a7, a1, gp
                  c.add        s7, s1
                  auipc        a2, 11854
                  mul          a2, s9, t3
                  divu         s5, s2, s11
                  remu         s7, a4, a6
                  add          t6, s2, s3
                  and          s10, t2, ra
                  andi         ra, ra, -1035
                  auipc        ra, 842336
                  and          s10, tp, a6
                  xor          s8, s10, tp
                  rem          s10, ra, t4
                  andi         t6, s6, 1870
                  nop
                  c.srai       a3, 27
                  remu         gp, sp, a2
                  c.add        a3, s7
                  c.lui        a0, 7
                  c.li         s7, -1
                  rem          t3, ra, s11
                  c.sub        a2, a0
                  c.or         a2, a3
                  mulhu        t1, s3, zero
                  auipc        gp, 747199
                  mulh         a5, a3, t2
                  lui          a6, 783216
                  add          ra, s10, sp
                  c.andi       a0, 30
                  ori          t1, s7, -2003
                  slli         a1, tp, 13
                  slt          gp, ra, s2
                  and          s0, a5, a3
                  add          s1, zero, sp
                  c.li         a5, -1
                  mulhu        sp, t5, s8
                  sra          t5, gp, t0
                  slti         ra, a7, 612
                  lui          s2, 573862
                  slli         t4, t0, 16
                  sltiu        t4, gp, 31
                  sra          s0, a7, s4
                  c.srli       a3, 6
                  c.sub        a0, a2
                  c.addi4spn   a3, sp, 832
                  c.addi       gp, 20
                  and          s9, a1, s8
                  sll          a3, a3, t6
                  c.srli       a5, 20
                  c.addi16sp   sp, -16
                  c.srli       a5, 1
                  c.addi       a5, 30
                  xor          a3, s7, a5
                  srl          s2, a3, s2
                  divu         s11, a7, s4
                  c.nop
                  c.srli       a0, 3
                  c.add        a5, a4
                  c.li         t1, -1
                  add          t5, t1, s11
                  xori         a6, a4, 617
                  sll          t3, t1, a6
                  mulhsu       s1, a3, a1
                  mulhsu       s8, s5, s2
                  c.andi       a1, -1
                  rem          t1, ra, s3
                  addi         a7, s2, 1010
                  xori         s1, a2, 198
                  slti         t5, t2, -737
                  c.xor        a0, a0
                  c.add        s9, t3
                  c.addi16sp   sp, 432
                  c.addi4spn   a2, sp, 736
                  sltiu        s9, tp, 288
                  sltiu        a0, s2, 1841
                  div          ra, t5, tp
                  auipc        t4, 297532
                  c.xor        s0, a2
                  rem          sp, sp, s4
                  sra          a2, a7, s11
                  c.add        s10, s9
                  and          s4, tp, s1
                  srl          t2, a3, s0
                  add          ra, s2, gp
                  c.srli       a3, 7
                  slti         t6, tp, -407
                  srl          tp, t5, zero
                  divu         s2, s6, s7
                  sll          t4, s4, sp
                  c.or         a0, a1
                  andi         s5, a1, 1308
                  ori          a1, a5, 1524
                  add          gp, gp, a3
                  c.or         a0, s0
                  c.srai       a2, 26
                  remu         s4, s8, s4
                  c.lui        s0, 19
                  mul          s0, s6, t4
                  mulhsu       s7, s3, t2
                  c.andi       a3, -1
                  xor          a7, ra, t3
                  c.srai       a5, 17
                  c.addi       s11, 19
                  add          a3, t5, t3
                  srli         ra, s4, 24
                  mulhsu       a7, tp, a1
                  c.addi16sp   sp, -16
                  c.xor        s0, a0
                  nop
                  c.andi       s0, 12
                  addi         t2, s11, -1889
                  c.srai       a1, 10
                  ori          s9, s3, -1053
                  c.and        s1, s0
                  xori         s11, a0, -1170
                  c.nop
                  andi         s6, s8, 1569
                  c.addi16sp   sp, -16
                  c.addi4spn   a0, sp, 496
                  c.andi       a5, -1
                  c.addi4spn   a5, sp, 192
                  divu         a5, s8, t4
                  c.addi16sp   sp, 240
                  c.and        a2, s1
                  or           t1, s1, t6
                  sll          s9, gp, t5
                  div          s1, t5, s0
                  c.or         a5, s0
                  slt          s5, a1, a4
                  mulh         sp, a2, t1
                  c.xor        a3, a1
                  rem          t4, t5, zero
                  c.addi       t1, -1
                  mulhu        a7, a1, t0
                  andi         a5, t3, 1860
                  lui          t1, 144382
                  mulhsu       s9, t5, a1
                  sra          t4, s2, a6
                  xori         a1, a2, 437
                  c.srai       a2, 1
                  srli         s11, a0, 3
                  andi         s11, t1, 917
                  xori         t4, zero, -1097
                  sltiu        t6, s4, 1556
                  c.or         a0, a0
                  xor          a7, t0, tp
                  srl          gp, t1, t4
                  xori         a5, s5, -1268
                  ori          tp, t6, 1050
                  c.slli       s8, 14
                  div          a5, s6, s4
                  mul          s6, s3, a3
                  c.srli       s0, 27
                  xori         s11, a4, -286
                  c.srli       s0, 4
                  c.addi       a3, 3
                  slt          s2, zero, zero
                  or           a0, a1, tp
                  ori          t6, s6, -1264
                  c.and        a2, s1
                  c.addi4spn   a1, sp, 64
                  div          a7, s6, a7
                  rem          a7, ra, s2
                  mul          ra, a7, tp
                  srl          a2, s11, s1
                  or           zero, s10, a2
                  divu         a2, s0, s10
                  c.nop
                  c.sub        a1, a4
                  xori         s7, a4, -1115
                  div          sp, t2, t5
                  c.srai       a1, 2
                  srli         t5, s8, 17
                  srai         a2, s8, 25
                  slli         a2, s7, 15
                  slt          a3, t2, t3
                  add          gp, s2, a5
                  and          a3, ra, a7
                  c.slli       a6, 17
                  nop
                  lui          sp, 450212
                  c.li         t2, -1
                  or           a0, tp, s9
                  c.nop
                  slti         ra, gp, -1439
                  slt          ra, a7, a6
                  slti         t2, a0, -524
                  sltiu        tp, s9, 1047
                  sltiu        s7, t2, -1199
                  nop
                  mul          s8, s5, a1
                  c.nop
                  c.addi16sp   sp, 448
                  c.xor        a5, s1
                  c.andi       a2, 8
                  c.slli       t4, 27
                  mul          s4, s10, t6
                  auipc        t2, 58499
                  or           s8, t3, a1
                  mulhu        a7, s3, t4
                  srl          t3, tp, ra
                  c.mv         ra, s4
                  srl          s4, sp, a5
                  c.srai       a5, 14
                  remu         s1, a7, s3
                  mulh         a3, t0, a6
                  sltu         a6, t4, s2
                  remu         gp, t0, s9
                  c.xor        a0, a0
                  and          s11, tp, s2
                  or           s0, t5, s2
                  c.li         s7, -1
                  add          t1, s7, s10
                  c.srai       a0, 1
                  c.li         t2, -1
                  slt          sp, t4, a6
                  srli         s11, s11, 30
                  mulhu        s9, s2, zero
                  xor          a7, a2, s0
                  slt          tp, s8, t3
                  mulhu        t3, a2, a0
                  srl          t6, t0, s10
                  srl          s2, sp, s5
                  c.slli       a2, 9
                  lui          a2, 34063
                  div          t5, a4, s2
                  rem          t4, s6, s5
                  and          zero, t3, t3
                  srl          s2, t4, a1
                  add          a1, a6, s9
                  sra          s8, a5, t4
                  sub          s2, t0, s5
                  nop
                  mul          tp, tp, a6
                  c.addi       s5, 15
                  srai         a7, t0, 22
                  srl          s7, s3, a4
                  remu         a6, sp, a6
                  sltu         a1, s9, s11
                  c.sub        a1, s1
                  sub          a7, s3, t0
                  sltiu        s11, s8, -297
                  c.lui        s2, 12
                  c.addi       s11, -1
                  srli         s4, s7, 16
                  c.srai       a1, 31
                  c.xor        a0, a1
                  c.addi       s11, 21
                  slti         t5, a0, 1594
                  c.srai       s0, 2
                  c.and        s1, s0
                  srai         s10, a5, 21
                  c.addi4spn   a2, sp, 368
                  xor          t1, s10, a7
                  divu         t1, t5, a3
                  c.srli       a5, 27
                  c.slli       a3, 24
                  add          a0, t0, s6
                  c.nop
                  srl          zero, a3, t6
                  auipc        s1, 497099
                  c.srai       a1, 17
                  and          t1, a0, a6
                  c.mv         a7, s1
                  srl          gp, s11, s10
                  c.srli       a2, 30
                  c.andi       a5, -1
                  addi         s6, a1, -704
                  sltiu        t4, s5, -1191
                  mulhsu       a5, t5, zero
                  srli         s1, a1, 22
                  addi         s0, t0, -752
                  slli         t4, gp, 29
                  c.xor        a0, a3
                  c.srai       s0, 12
                  nop
                  c.addi16sp   sp, 256
                  mulhu        gp, s0, s5
                  slti         s5, t2, 965
                  sltu         s11, a3, s6
                  lui          zero, 420335
                  sub          ra, t5, gp
                  c.xor        a3, a1
                  sra          s7, a7, s6
                  c.or         a3, a3
                  c.srli       a0, 20
                  divu         t6, a2, a5
                  sll          s2, s9, s2
                  srli         s6, a1, 22
                  sltu         a3, tp, t3
                  xor          s7, a0, gp
                  slti         t5, s6, 812
                  c.addi       s7, 26
                  and          t2, zero, s8
                  mulhu        a2, a1, a0
                  sltiu        t2, s3, 657
                  rem          ra, s2, t4
                  nop
                  c.addi       s10, -1
                  xor          tp, s4, s5
                  xori         s4, a7, -1210
                  lui          t2, 343448
                  andi         a1, a0, -1074
                  srai         a5, s11, 24
                  c.srai       a2, 7
                  c.sub        s0, a2
                  c.xor        s1, a2
                  c.srli       a5, 24
                  sltiu        tp, s10, -757
                  mul          s4, a6, t6
                  srai         s5, s11, 24
                  mul          gp, t5, s10
                  or           a7, s0, zero
                  andi         s2, s2, 1579
                  c.addi16sp   sp, 432
                  c.add        t6, a1
                  c.mv         a7, s11
                  lui          t1, 913234
                  xor          a0, t2, t1
                  mulh         a0, sp, a5
                  slli         s11, t3, 8
                  c.sub        s0, a4
                  ori          t5, t6, 888
                  add          s1, s2, a1
                  c.andi       a2, -1
                  or           t1, s8, a4
                  c.li         tp, 31
                  srl          a0, t2, a5
                  c.mv         t4, s6
                  slli         a1, s2, 1
                  divu         t3, s10, sp
                  srl          a1, t1, s0
                  rem          tp, s10, tp
                  addi         a5, a1, -2029
                  mulh         a1, s6, s2
                  c.addi       sp, -1
                  c.addi16sp   sp, -16
                  c.nop
                  slti         t1, s3, 1625
                  lui          a3, 658196
                  lui          t2, 279858
                  c.srli       a2, 8
                  ori          t6, a7, 1557
                  or           t1, s11, a4
                  or           s0, a6, s4
                  divu         s5, s11, t6
                  mul          s7, ra, t5
                  xor          a6, t1, t2
                  mulhu        t1, a1, a3
                  sll          a1, a2, t5
                  xori         t2, a3, 1522
                  sll          a6, a0, tp
                  sra          a6, a1, s8
                  c.li         s4, -1
                  c.addi       s1, 26
                  srl          s1, t4, a0
                  c.or         a3, a2
                  mulhsu       s0, a6, s2
                  slt          s10, t6, s3
                  auipc        zero, 179975
                  c.srai       a5, 3
                  mulh         a3, a6, s0
                  or           a5, s1, s5
                  mul          a7, a5, zero
                  c.andi       a1, -1
                  slli         t4, t3, 26
                  c.nop
                  slt          s0, t0, tp
                  c.and        a5, a5
                  sltiu        zero, s7, 781
                  remu         s2, t1, s5
                  xor          a3, s8, s11
                  mulh         t1, s4, s8
                  c.nop
                  rem          a1, s5, s1
                  slti         a0, t5, -206
                  c.addi16sp   sp, 336
                  c.srai       a2, 17
                  xor          a2, s3, a3
                  sltu         ra, a3, s1
                  addi         a2, a0, -1449
                  srl          s11, s8, a0
                  c.srli       a1, 24
                  c.slli       a0, 8
                  sll          s2, t0, s9
                  c.nop
                  slt          a2, s4, a0
                  rem          ra, t1, a6
                  remu         t2, t2, a1
                  rem          t2, s7, a0
                  c.addi       a0, 27
                  andi         s6, s4, -111
                  xori         ra, s2, -262
                  mulhsu       a1, a1, gp
                  c.srli       a2, 7
                  srai         a5, s10, 7
                  c.and        a1, s1
                  sra          a2, s2, t4
                  c.slli       a2, 19
                  mulhu        a7, tp, a0
                  rem          tp, t0, t1
                  andi         t1, s3, -1952
                  c.addi       s9, 23
                  c.slli       s10, 18
                  div          a1, ra, a7
                  divu         t1, s1, s0
                  slti         a5, s4, 368
                  c.addi       gp, -1
                  ori          s5, s2, -1144
                  c.add        a6, s9
                  c.or         a2, s1
                  remu         t4, s2, s8
                  andi         t1, gp, 2013
                  andi         tp, s6, -750
                  c.li         a0, -1
                  div          s1, a2, t3
                  mulh         s1, s7, s7
                  sub          a7, sp, t5
                  c.add        s7, a2
                  divu         t3, a4, tp
                  mulhsu       s6, a1, a1
                  c.add        t4, s9
                  c.slli       s4, 25
                  divu         gp, t3, a1
                  addi         t5, a0, 1603
                  slli         t1, t2, 4
                  divu         a2, t4, s9
                  rem          s5, s4, zero
                  lui          a3, 185127
                  divu         s11, t1, a7
                  c.or         s0, s1
                  andi         t2, s8, -1049
                  mulh         sp, t0, a4
                  or           sp, a1, a6
                  c.or         a5, a3
                  xor          gp, a6, a5
                  div          a6, s8, sp
                  c.sub        a5, a4
                  c.and        a2, a1
                  andi         a0, s3, -503
                  sll          s2, gp, a0
                  c.sub        a5, s0
                  srli         s5, s0, 19
                  slt          s11, t1, s2
                  slt          s10, t3, gp
                  c.nop
                  srai         ra, a5, 26
                  add          a5, a7, zero
                  c.srli       a5, 25
                  srai         a6, t2, 27
                  c.srai       s0, 2
                  lui          a2, 662254
                  nop
                  auipc        t1, 852127
                  slli         s6, gp, 11
                  nop
                  sltu         a1, a0, a7
                  sra          ra, t6, t4
                  sltiu        t2, a0, -138
                  add          s10, s8, t4
                  and          t1, s2, sp
                  sltiu        zero, s9, -1660
                  rem          a7, t4, t3
                  c.add        s5, tp
                  mulhsu       s1, s6, a5
                  addi         a5, a7, -387
                  auipc        s1, 354787
                  slt          t2, a2, gp
                  mul          s0, t0, t0
                  srai         s11, a3, 26
                  auipc        s8, 21594
                  srai         gp, s1, 20
                  c.add        s4, s4
                  c.li         s11, 9
                  slti         s4, ra, -725
                  c.sub        s1, a0
                  divu         t4, s2, a0
                  xor          t4, s8, s8
                  mulhsu       gp, a2, t2
                  srai         a2, tp, 5
                  mulhsu       sp, gp, a1
                  srl          a7, s11, t6
                  c.andi       a1, -1
                  slti         t5, a4, -915
                  srli         t2, a4, 20
                  c.srli       a1, 11
                  lui          s11, 223815
                  c.nop
                  mulh         s2, s7, zero
                  remu         ra, s5, s5
                  mul          a0, ra, a5
                  xori         s5, a2, 304
                  addi         a0, s9, 1466
                  c.andi       a5, -1
                  lui          a0, 1045637
                  c.lui        ra, 1
                  sll          ra, s10, gp
                  ori          a2, zero, 1882
                  sra          zero, s9, s6
                  auipc        s7, 946180
                  srl          a6, sp, t5
                  add          t1, s5, t3
                  slti         s2, s3, -196
                  c.srli       a5, 6
                  or           t3, gp, s4
                  srli         a1, t5, 29
                  c.add        a0, a2
                  addi         tp, t1, 1364
                  lui          s10, 415112
                  sltu         t3, s11, t5
                  c.andi       s1, 15
                  slti         a3, a4, 1383
                  ori          s4, ra, -396
                  slt          a3, s3, a7
                  c.or         s1, s1
                  and          t3, a5, a0
                  lui          a2, 870905
                  slt          ra, s4, s9
                  srli         s4, t5, 20
                  lui          t5, 257775
                  sltu         s7, t4, a2
                  c.xor        a5, a5
                  c.sub        a3, s0
                  c.lui        a0, 11
                  c.li         a7, -1
                  mulhu        s6, t4, s1
                  slt          t2, s10, a1
                  c.andi       a2, -1
                  andi         t3, a0, 639
                  auipc        s7, 1007306
                  sltiu        t5, a3, -1312
                  srli         s1, t5, 20
                  xori         a5, t0, -840
                  c.addi4spn   a3, sp, 432
                  sll          s11, a2, a2
                  srli         t1, s10, 17
                  sltu         s11, a1, a0
                  div          t2, t2, t0
                  c.mv         s5, s9
                  c.slli       a7, 21
                  andi         sp, s8, 90
                  c.addi       gp, 1
                  mulh         s7, t4, a1
                  xor          a5, s0, sp
                  c.addi16sp   sp, 176
                  c.mv         a6, t5
                  div          s5, a6, ra
                  c.srai       s0, 18
                  c.addi       ra, -1
                  srli         t3, s0, 5
                  c.or         a1, a1
                  or           a3, a3, s2
                  or           a7, a4, s0
                  c.xor        a3, s0
                  c.srli       a1, 8
                  add          s6, s4, a6
                  lui          zero, 877813
                  lui          t6, 740647
                  auipc        a2, 292011
                  div          s4, s10, s11
                  mulhu        t5, s4, a2
                  c.srli       s0, 29
                  slli         s2, t4, 17
                  slt          s6, s4, a4
                  srai         s6, a3, 13
                  c.lui        s8, 8
                  c.or         a5, a2
                  sll          t2, gp, s10
                  srli         t1, a4, 23
                  srl          s0, s2, t6
                  xori         a2, a6, 927
                  nop
                  sll          s5, s11, t6
                  ori          gp, a7, -721
                  c.addi4spn   s1, sp, 576
                  sub          t3, s8, t5
                  srai         s5, s10, 31
                  remu         t6, a1, ra
                  mulhsu       s6, t6, a7
                  sub          t1, s0, s1
                  ori          t5, a1, -1737
                  addi         a5, a5, -1305
                  nop
                  c.mv         s4, gp
                  c.and        a0, s0
                  slli         s2, s0, 0
                  c.sub        s0, a2
                  c.add        s2, gp
                  c.slli       s0, 7
                  slti         a5, s9, 646
                  c.srli       s1, 19
                  auipc        s6, 727866
                  or           s2, t5, a3
                  mul          s1, t5, t5
                  div          t3, a4, s1
                  c.lui        s10, 29
                  sll          a3, s5, t5
                  sll          s4, a1, a6
                  c.add        s8, a6
                  c.or         s0, s0
                  c.and        a5, a4
                  mul          zero, t3, a4
                  sltu         t2, s2, t5
                  srli         s11, s11, 13
                  c.nop
                  c.srli       a2, 7
                  div          s5, zero, s0
                  slli         gp, s5, 15
                  srai         a2, t0, 22
                  mul          t2, s1, s1
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 352
                  div          tp, t2, ra
                  add          t2, zero, s5
                  c.and        a5, a2
                  nop
                  c.nop
                  and          a1, t3, t1
                  c.slli       s4, 24
                  c.slli       a1, 9
                  sltu         a5, s7, s11
                  mulhu        t6, s0, t3
                  mulh         s0, t2, s4
                  c.and        a2, s1
                  mulhsu       t5, s9, s10
                  sra          s7, a7, s4
                  c.slli       a5, 15
                  c.lui        a7, 3
                  xori         t1, s5, 696
                  c.slli       s10, 2
                  c.andi       a0, -1
                  mul          t1, s10, gp
                  c.andi       s0, -1
                  sub          s0, t6, a4
                  slli         tp, gp, 30
                  mul          s8, s8, a1
                  c.addi4spn   a1, sp, 896
                  div          s1, a6, a6
                  c.or         s1, s1
                  auipc        t6, 666190
                  c.srli       a1, 5
                  mulhu        a7, t4, s8
                  c.nop
                  div          t3, t4, t6
                  sub          a2, s0, t4
                  mulhu        a7, t4, s9
                  mulhu        t6, t0, a5
                  c.lui        a1, 19
                  ori          a1, s4, 540
                  c.nop
                  auipc        t3, 506428
                  c.andi       s1, 25
                  c.li         tp, 2
                  c.add        t6, s8
                  auipc        a0, 363638
                  c.and        a5, s0
                  div          s8, a7, gp
                  sra          s10, a0, s8
                  sra          s0, s1, a2
                  c.mv         tp, s6
                  or           s8, a7, s10
                  or           tp, a7, a7
                  sltiu        gp, s8, 401
                  c.nop
                  sub          t1, t3, sp
                  sra          gp, t0, t0
                  c.add        s7, s7
                  ori          a6, zero, -644
                  srli         t3, a3, 14
                  divu         ra, s8, t3
                  addi         t3, t2, -2006
                  srli         s11, a5, 12
                  xori         gp, a6, 1390
                  mulh         t5, tp, a7
                  auipc        s6, 487574
                  nop
                  slti         t2, s0, 654
                  c.lui        s1, 10
                  c.sub        a5, a5
                  c.sub        a5, a5
                  c.xor        a2, a1
                  slti         sp, s5, 606
                  c.lui        t2, 20
                  c.slli       t6, 8
                  mul          ra, s6, a2
                  sltiu        a1, t5, -1734
                  c.nop
                  rem          tp, t4, a3
                  c.andi       a0, -1
                  remu         a0, s3, t3
                  sltiu        s7, s7, -19
                  rem          s11, s7, t1
                  auipc        tp, 841745
                  rem          s0, t4, s7
                  c.sub        a2, a5
                  div          a6, a0, tp
                  slt          s10, a0, tp
                  and          t4, t4, ra
                  sra          t3, a7, a6
                  addi         sp, t6, -589
                  c.srli       a5, 14
                  add          a2, s3, s4
                  c.addi4spn   a1, sp, 800
                  mul          a1, s3, a5
                  xor          a2, t0, s0
                  add          t1, t3, s6
                  c.lui        s2, 23
                  andi         a3, zero, 262
                  slt          s8, gp, a6
                  c.addi       s2, 17
                  c.addi       a1, 13
                  xor          t5, s3, t1
                  c.srai       a5, 10
                  xor          a0, gp, t0
                  div          gp, t3, s11
                  add          t6, zero, s0
                  addi         s10, a7, 1325
                  c.lui        t3, 6
                  auipc        s11, 181635
                  c.mv         a7, a6
                  mul          s1, zero, a1
                  xor          t2, s0, t3
                  addi         a1, s11, -763
                  c.or         a3, a0
                  c.or         s0, a0
                  div          s1, s8, s0
                  c.sub        s0, s1
                  mulhsu       s11, s3, a4
                  and          s7, a4, a1
                  mul          s6, ra, a2
                  srai         sp, s8, 29
                  c.addi       s7, 31
                  sub          ra, t2, s3
                  srl          tp, s2, a1
                  auipc        s9, 1002270
                  and          gp, t3, tp
                  c.srli       s1, 9
                  c.sub        a0, a1
                  slli         sp, a2, 5
                  sub          a1, t3, a2
                  slli         t3, zero, 18
                  rem          a7, a5, s0
                  c.slli       t2, 1
                  andi         s8, s5, -1496
                  sltiu        a5, s11, -852
                  div          a1, a4, t3
                  addi         zero, t0, 1615
                  xor          a3, zero, ra
                  xori         t5, sp, -831
                  c.srai       a0, 6
                  srli         zero, t3, 22
                  add          a2, t3, s10
                  mul          t6, t1, a5
                  c.and        a5, s1
                  div          gp, s5, t1
                  c.nop
                  c.addi16sp   sp, -16
                  c.lui        s0, 19
                  and          s0, gp, s9
                  c.mv         tp, a3
                  sltu         zero, s7, a4
                  c.addi16sp   sp, -16
                  mulh         a0, zero, s9
                  andi         a2, zero, 1119
                  mulhsu       t2, s6, ra
                  nop
                  c.add        gp, s4
                  slt          s1, a1, a6
                  mulhu        s5, t1, t2
                  mul          a3, a5, s7
                  c.sub        s0, s0
                  c.addi       sp, 8
                  c.add        tp, t3
                  divu         s11, s8, t5
                  ori          gp, t4, 253
                  c.lui        a0, 20
                  xori         gp, s7, 139
                  slti         a2, s2, -106
                  slt          s11, s9, a5
                  c.andi       a5, 9
                  c.addi16sp   sp, 368
                  mulh         a2, a1, s4
                  c.xor        a5, a3
                  sltu         zero, a3, t5
                  sltu         s8, s5, s5
                  add          t2, s5, s8
                  xor          s7, t4, s4
                  xor          a7, s4, s6
                  c.srli       a0, 10
                  c.addi4spn   a5, sp, 976
                  c.srli       a1, 24
                  c.lui        ra, 9
                  c.and        a5, s0
                  nop
                  mulh         t3, a0, t2
                  c.addi16sp   sp, -16
                  andi         a5, s4, 1052
                  divu         s7, t6, s0
                  c.li         s0, -1
                  srl          a7, a2, gp
                  xor          sp, tp, a1
                  xor          gp, s5, s8
                  mul          a5, a2, s3
                  c.srai       s1, 11
                  divu         s11, s5, s0
                  srl          s10, s10, t3
                  rem          s1, a0, s3
                  c.li         t4, 5
                  addi         s6, s7, 149
                  nop
                  or           t4, t6, s11
                  lui          s0, 780161
                  sub          ra, s4, a1
                  srl          s6, s10, s8
                  srai         a0, t4, 30
                  addi         s8, t5, -2048
                  lui          s2, 202295
                  c.nop
                  div          s4, gp, sp
                  srai         s9, tp, 22
                  mulhsu       s6, t2, a6
                  divu         a7, a0, a7
                  ori          s11, a6, -4
                  sltiu        t2, a6, -1661
                  c.slli       s10, 22
                  sub          t3, t0, t1
                  andi         t6, s7, 167
                  add          a3, s0, t5
                  mul          s9, ra, a6
                  addi         a5, s10, -111
                  mulhsu       s11, s6, a5
                  addi         s5, s9, -1397
                  nop
                  c.nop
                  srli         s1, s11, 8
                  c.andi       a2, -1
                  sltiu        a2, zero, -1013
                  andi         s9, a0, -1718
                  xor          s7, ra, s2
                  add          a3, tp, s7
                  c.addi16sp   sp, 384
                  remu         s1, s6, ra
                  mul          t6, sp, s1
                  c.srli       s1, 7
                  c.add        s2, s5
                  div          s0, s8, s10
                  c.lui        tp, 10
                  addi         s4, s10, 1053
                  c.addi16sp   sp, -16
                  mulh         a3, s2, t0
                  mulhu        s5, s1, a6
                  c.addi       a1, 23
                  sra          a5, s10, s8
                  sub          t3, t6, s0
                  xori         s9, s5, -1255
                  xori         s8, t0, -644
                  c.nop
                  sra          a7, t4, s2
                  c.addi       s9, -1
                  c.sub        a0, a4
                  divu         t6, gp, s5
                  c.sub        s1, a5
                  c.srli       a1, 18
                  mul          a5, s11, s0
                  ori          sp, t1, 410
                  addi         tp, s6, -1032
                  mulh         s2, a3, a5
                  mul          t4, s9, s2
                  xori         s4, t2, -644
                  divu         a1, a0, sp
                  c.srli       s1, 3
                  c.sub        a5, a2
                  c.and        s0, a4
                  mul          zero, sp, ra
                  c.li         s8, 29
                  remu         s5, a2, t3
                  srai         a2, s7, 5
                  c.li         a1, -1
                  sll          a0, s5, s4
                  sll          a5, t1, a1
                  remu         tp, a7, a4
                  sltiu        a6, t1, 1176
                  c.li         sp, 9
                  lui          zero, 117706
                  sra          s4, s3, t3
                  c.nop
                  divu         s9, t2, t2
                  c.srai       a1, 2
                  c.li         t4, -1
                  mulhu        s5, a4, zero
                  sra          sp, s0, zero
                  sltu         a2, a2, t4
                  slti         t3, t2, -412
                  c.sub        a3, s1
                  remu         s8, s3, t0
                  srli         a5, s3, 0
                  remu         a2, a3, t1
                  sll          a1, t1, s6
                  c.or         a1, a5
                  div          t4, a3, gp
                  auipc        a2, 258265
                  or           s6, a1, s6
                  c.srai       s0, 16
                  or           s2, a3, s8
                  ori          s7, s1, 1588
                  c.mv         s8, t6
                  or           s11, a6, a7
                  c.addi16sp   sp, 352
                  sub          s4, t2, t0
                  slti         s6, zero, -1255
                  c.nop
                  remu         a7, ra, s10
                  srli         a7, s0, 29
                  remu         a0, a2, a3
                  c.sub        a1, s0
                  c.srli       a1, 5
                  c.srli       s1, 26
                  c.andi       a1, -1
                  sub          s2, t0, s7
                  c.or         a5, a1
                  sra          t2, gp, s0
                  c.lui        s7, 12
                  addi         a1, sp, -1053
                  add          tp, a4, a0
                  srl          s2, a6, a1
                  remu         zero, zero, ra
                  c.add        s6, s10
                  and          s2, a5, s4
                  c.xor        a0, a3
                  lui          t4, 745190
                  slt          ra, zero, s8
                  slt          ra, s9, s10
                  srli         a0, t4, 20
                  lui          s2, 443840
                  c.li         a6, 17
                  add          t2, t0, gp
                  andi         t6, a7, -2026
                  srai         s1, t5, 24
                  xori         a5, s2, 1711
                  mulh         s11, t4, t2
                  xori         s8, sp, -521
                  sra          s2, s5, a2
                  auipc        a5, 145488
                  c.srai       a2, 14
                  srli         s8, t5, 3
                  c.addi4spn   a1, sp, 832
                  c.srai       a5, 21
                  rem          a5, s6, t0
                  slti         t1, s6, 1625
                  xori         s11, a2, -107
                  xor          a1, a2, t6
                  xor          a5, t1, a0
                  slti         s8, ra, -862
                  srl          a3, gp, s5
                  srai         a1, t0, 21
                  c.or         a1, a2
                  or           a7, s7, s10
                  c.sub        a5, s1
                  c.addi4spn   a2, sp, 960
                  sltiu        t5, s9, 869
                  ori          t6, a5, -1806
                  sll          t6, a5, tp
                  slti         ra, tp, 1388
                  c.andi       s0, 18
                  c.lui        t5, 30
                  c.add        gp, s2
                  c.srli       a2, 6
                  c.andi       a2, -1
                  slti         t5, a3, -2011
                  auipc        s6, 431738
                  nop
                  add          ra, s10, a7
                  srl          a2, t4, s1
                  c.andi       s1, -1
                  srl          gp, a6, ra
                  remu         s7, s0, t0
                  srli         s2, s7, 31
                  slti         s0, s4, -1568
                  c.mv         s5, t5
                  mul          s6, tp, sp
                  auipc        s7, 331421
                  c.or         a1, a1
                  la x5, test_done
                  jalr x0, x5, 0
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
                  addi x19, x19, -4
                  sw  x14, (x19)
                  add x14, x19, zero
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x19, x14, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x13, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x13, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x13, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x13, x21, ecall_handler
                  li x21, 0x1
                  beq x13, x21, instr_fault_handler
                  li x21, 0x5
                  beq x13, x21, load_fault_handler
                  li x21, 0x7
                  beq x13, x21, store_fault_handler
                  li x21, 0xc
                  beq x13, x21, pt_fault_handler
                  li x21, 0xd
                  beq x13, x21, pt_fault_handler
                  li x21, 0xf
                  beq x13, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x14, x19, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x19, x14, zero
                  lw  x14, (x19)
                  addi x19, x19, 4
                  mret

load_fault_handler:
                  add x14, x19, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x19, x14, zero
                  lw  x14, (x19)
                  addi x19, x19, 4
                  mret

store_fault_handler:
                  add x14, x19, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x19, x14, zero
                  lw  x14, (x19)
                  addi x19, x19, 4
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x14, x19, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x19, x14, zero
                  lw  x14, (x19)
                  addi x19, x19, 4
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x14, x19, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x19, x14, zero
                  lw  x14, (x19)
                  addi x19, x19, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x14, x19, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  add x19, x14, zero
                  lw  x14, (x19)
                  addi x19, x19, 4
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
