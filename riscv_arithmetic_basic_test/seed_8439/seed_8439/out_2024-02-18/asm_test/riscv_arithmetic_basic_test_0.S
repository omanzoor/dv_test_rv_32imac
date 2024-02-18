.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x9, 0x40001105
                  csrw 0x301, x9
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x9, mtvec_handler
                  ori x9, x9, 0
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
                  li x0, 0x80000000
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x2
                  li x4, 0xf0ff16c1
                  li x5, 0x80000000
                  li x6, 0xf087f0a1
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x0
                  li x12, 0x0
                  li x13, 0x6c6300
                  li x14, 0xbb61d486
                  li x15, 0xbc7e9e88
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x505da3b0
                  li x19, 0x9
                  li x20, 0xe4d54ad9
                  li x21, 0x5cd231b
                  li x22, 0xdbd532c7
                  li x23, 0x210d9952
                  li x24, 0xf80cb4f0
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x0
                  li x30, 0xb
                  li x31, 0xd
                  la x25, user_stack_end
main:             c.or         a0, a4
                  c.add        s6, s6
                  slli         a2, t2, 24
                  mulhsu       gp, s4, t0
                  add          gp, a3, s1
                  c.add        s11, s10
                  sltu         s1, a0, zero
                  c.add        t6, s0
                  or           s1, t6, s9
                  c.nop
                  sltu         s2, sp, ra
                  xor          s2, s8, s3
                  c.lui        t0, 20
                  c.li         sp, 9
                  srli         zero, t1, 16
                  mulhsu       sp, t0, tp
                  mulhu        t5, a6, s8
                  add          a4, t6, a5
                  mul          a2, s6, s7
                  slt          a0, s3, t6
                  c.addi       tp, 12
                  c.addi       t2, 28
                  nop
                  c.sub        s0, a3
                  c.xor        a3, s0
                  slt          ra, a6, a5
                  rem          a5, a5, a0
                  c.srli       a0, 13
                  add          t2, s11, a1
                  c.addi16sp   sp, -16
                  remu         a2, sp, s6
                  rem          t5, t3, sp
                  c.or         s0, a4
                  div          s0, s11, s2
                  c.and        a5, a1
                  c.add        a2, s6
                  c.andi       a3, 8
                  addi         a2, a3, -787
                  c.sub        s0, a4
                  slt          a4, s7, a1
                  c.and        a0, a0
                  c.and        a5, a4
                  sltu         tp, s3, sp
                  mulh         a6, a7, t1
                  c.mv         sp, s6
                  remu         s8, a4, gp
                  rem          s11, a7, a6
                  sltu         ra, a0, a5
                  div          a6, s4, s9
                  andi         a4, zero, 1656
                  mulh         gp, a0, s4
                  sub          s1, s5, s8
                  c.srli       a5, 12
                  addi         s4, a2, -1446
                  rem          t4, s0, s2
                  c.addi4spn   s1, sp, 240
                  c.addi4spn   s1, sp, 80
                  c.or         s1, s1
                  slli         s2, a0, 11
                  sll          s10, ra, sp
                  c.lui        s1, 6
                  add          s10, t4, s1
                  c.lui        s2, 12
                  c.slli       a0, 3
                  div          s3, a0, a3
                  srli         s4, gp, 20
                  srl          s10, a7, ra
                  mulh         a4, s11, t2
                  lui          t4, 283349
                  c.addi       s3, 7
                  c.li         s2, 26
                  c.addi16sp   sp, 448
                  c.addi       a3, -1
                  sra          s6, t0, s3
                  divu         a3, tp, tp
                  srli         t0, gp, 12
                  nop
                  xor          s1, a1, a2
                  srli         s8, zero, 20
                  c.nop
                  divu         s2, a2, tp
                  rem          s2, s9, t4
                  c.nop
                  andi         t2, s3, -1587
                  ori          s4, t4, -1974
                  slli         s6, s1, 25
                  mul          a2, s2, s5
                  c.andi       s1, 26
                  sra          t5, a2, a6
                  sltiu        gp, ra, -1748
                  c.slli       s5, 13
                  c.andi       a4, 14
                  divu         a7, t5, t1
                  c.xor        a4, a0
                  slti         sp, gp, -601
                  sub          a7, a6, sp
                  mulhu        a5, zero, t5
                  sll          s6, t2, s4
                  c.addi       s11, -1
                  ori          s4, s1, 595
                  sub          s1, tp, a4
                  c.andi       a0, 30
                  c.li         t4, -1
                  sltu         s7, a3, a3
                  c.nop
                  srl          s2, s7, gp
                  andi         t5, t2, -1980
                  or           s4, a5, a0
                  sll          s0, t5, a6
                  andi         a0, s7, -1578
                  srli         tp, t2, 29
                  c.and        s0, a4
                  c.addi16sp   sp, 176
                  sltiu        s3, t4, 604
                  nop
                  c.sub        a5, a3
                  c.li         s1, -1
                  xori         a7, s1, -28
                  and          a4, a4, s8
                  xori         t6, a2, -366
                  srl          t0, a1, s0
                  srl          s8, a6, t4
                  xori         sp, s4, 865
                  c.nop
                  c.and        s1, a0
                  div          sp, s0, tp
                  lui          a0, 108632
                  sra          ra, s4, ra
                  c.add        s0, tp
                  c.li         s7, 5
                  c.nop
                  c.sub        a5, a2
                  c.slli       t4, 8
                  c.srai       s0, 16
                  c.slli       t1, 26
                  mulhsu       tp, t3, s3
                  c.add        s2, a1
                  remu         s7, s8, s8
                  mulh         s5, a2, s1
                  c.sub        s1, a2
                  c.srai       a0, 29
                  c.andi       a5, 14
                  srli         s1, tp, 22
                  nop
                  c.or         a2, a3
                  sll          s2, s5, s11
                  andi         s8, ra, 1905
                  c.nop
                  srai         s2, a0, 21
                  c.or         a2, a2
                  c.mv         gp, s2
                  slti         t1, t3, -82
                  add          a6, t5, s3
                  c.srai       a2, 1
                  auipc        s11, 1003670
                  c.andi       a0, -1
                  xor          t0, t2, s5
                  auipc        s10, 1039403
                  mulhsu       t5, s4, t0
                  lui          s8, 617280
                  slt          gp, s9, s11
                  andi         sp, t6, -1268
                  c.lui        t4, 28
                  add          a5, s11, ra
                  c.srli       a0, 22
                  srai         t2, s8, 13
                  and          a4, a4, t6
                  c.sub        a5, s0
                  mul          s5, t0, s11
                  ori          t0, t4, -1899
                  ori          s0, t6, -109
                  remu         a3, a1, a6
                  mulhu        ra, a2, s0
                  c.li         a2, 6
                  sltiu        zero, s0, 1838
                  c.andi       a3, -1
                  sub          gp, a3, a4
                  c.srli       s1, 30
                  slli         t6, s9, 16
                  lui          s4, 749705
                  or           ra, ra, s8
                  c.mv         s6, a3
                  mul          t4, s0, s8
                  sltu         a6, a2, t0
                  slti         a7, a4, 2046
                  andi         s5, t2, -110
                  c.li         s7, -1
                  remu         a0, t3, s11
                  remu         s8, tp, t2
                  c.mv         s10, s0
                  xor          s11, gp, t1
                  nop
                  slt          a4, s0, tp
                  mulhu        s1, s3, s8
                  c.xor        a4, a5
                  divu         zero, s7, a2
                  c.addi16sp   sp, -16
                  ori          t5, gp, -214
                  c.lui        a3, 10
                  mulhu        a7, t2, zero
                  c.xor        a3, a5
                  c.srai       a2, 9
                  mulhu        t0, s6, tp
                  nop
                  mul          a5, s0, s3
                  c.addi16sp   sp, 192
                  c.and        s1, s1
                  c.sub        a2, a1
                  ori          gp, s10, -1046
                  xori         a7, t4, -915
                  andi         sp, a5, 1801
                  sltiu        t6, sp, 563
                  c.li         s5, -1
                  andi         s4, t2, -1806
                  c.slli       s0, 15
                  c.srai       s1, 29
                  xori         tp, s11, -614
                  divu         s2, a2, s6
                  divu         s5, s11, t4
                  and          a0, s3, a2
                  c.srai       a3, 3
                  sll          t0, t3, tp
                  c.and        a5, a5
                  rem          t0, t3, a7
                  addi         s5, s10, -309
                  c.addi4spn   a5, sp, 320
                  c.addi16sp   sp, 384
                  div          t2, s10, t1
                  sra          s8, t3, s6
                  sltiu        s2, s0, 761
                  c.addi4spn   a2, sp, 16
                  srl          t6, a6, a1
                  c.or         a4, a0
                  slli         a3, s9, 10
                  sltiu        t4, s4, 2031
                  srai         s11, a1, 11
                  c.slli       a4, 8
                  c.add        s10, a5
                  mulhsu       s3, s4, s11
                  srai         t0, t6, 1
                  slt          ra, s1, t1
                  and          tp, s8, a6
                  sll          gp, t2, s7
                  c.srai       a4, 14
                  addi         a2, s7, 1628
                  c.li         t6, -1
                  nop
                  remu         t1, ra, s6
                  ori          t2, s10, -1491
                  c.li         s3, 6
                  xor          s8, sp, zero
                  slli         gp, s4, 17
                  c.sub        a5, s1
                  sra          s5, ra, zero
                  c.add        a5, t1
                  slti         a2, t6, 1727
                  mul          s4, zero, ra
                  c.addi4spn   a0, sp, 816
                  div          t2, a2, t2
                  c.or         a5, a0
                  c.addi4spn   a5, sp, 720
                  c.srli       a3, 25
                  sub          a5, tp, a5
                  and          gp, a3, zero
                  remu         t2, s8, t3
                  nop
                  sltu         a3, s1, a6
                  c.lui        s1, 4
                  and          gp, a1, a0
                  c.nop
                  c.slli       tp, 7
                  ori          t1, gp, 118
                  xor          sp, s9, t6
                  andi         s7, ra, -642
                  xori         a4, t6, 208
                  c.addi       s6, -1
                  srli         t0, t4, 5
                  sltu         a2, s11, t2
                  c.sub        a4, s0
                  c.add        t5, s9
                  remu         s1, t5, a1
                  mulhsu       a6, s4, s3
                  div          s4, s3, a1
                  auipc        a0, 316068
                  sub          s6, s6, s3
                  div          tp, t5, s8
                  lui          s0, 227489
                  sra          s5, s1, s11
                  c.nop
                  c.srai       a3, 4
                  c.sub        a3, a0
                  sll          s4, s4, gp
                  c.nop
                  nop
                  c.addi4spn   a5, sp, 304
                  div          t4, t3, s8
                  c.srli       s0, 3
                  slli         a4, t3, 31
                  c.slli       s10, 16
                  c.andi       a4, 19
                  xor          sp, a6, t0
                  c.lui        ra, 2
                  mul          sp, a2, t6
                  c.addi4spn   a4, sp, 176
                  ori          zero, s4, -383
                  auipc        s11, 346745
                  c.or         s1, a0
                  nop
                  c.srli       a4, 4
                  c.mv         s3, ra
                  and          s7, s5, t3
                  c.slli       s0, 2
                  slt          t0, a7, a5
                  sltu         s7, a4, s6
                  nop
                  c.addi16sp   sp, 128
                  nop
                  and          t6, s7, s5
                  srli         s5, t0, 14
                  c.andi       a0, 16
                  c.add        a7, a4
                  c.lui        t2, 31
                  slti         t1, t1, 647
                  c.nop
                  and          s6, a0, a2
                  sll          t0, s7, a2
                  c.addi4spn   a4, sp, 320
                  remu         t1, t1, t3
                  andi         t2, s5, -516
                  c.xor        s1, a0
                  add          t1, s8, s3
                  c.nop
                  sub          s5, t2, a5
                  c.addi4spn   s1, sp, 272
                  auipc        t4, 337821
                  rem          a5, s8, s4
                  rem          t5, a5, tp
                  nop
                  mulhsu       t6, s0, a6
                  c.srli       s0, 30
                  srai         s5, t5, 1
                  c.nop
                  mulhsu       s7, t3, s0
                  auipc        t6, 816148
                  c.addi4spn   a2, sp, 368
                  mul          t4, ra, t4
                  remu         t1, a4, s10
                  lui          s3, 53856
                  c.addi4spn   a2, sp, 288
                  c.srli       a0, 25
                  c.xor        a2, a1
                  slt          s4, sp, s11
                  c.addi4spn   s0, sp, 176
                  add          a0, s11, s2
                  c.add        s8, s6
                  c.and        a0, a1
                  c.srli       s1, 28
                  c.nop
                  divu         a3, s6, s9
                  mulh         s11, s4, a1
                  c.mv         t6, s5
                  c.addi4spn   a4, sp, 64
                  sltu         a6, a7, a5
                  slt          s7, t4, s6
                  add          tp, a3, s9
                  c.lui        t0, 22
                  remu         s10, a6, a5
                  slti         a6, s10, -552
                  rem          s11, ra, a2
                  mulhu        tp, a4, a6
                  c.addi       t4, -1
                  auipc        a6, 519823
                  mulhsu       s6, a5, s10
                  c.and        a5, a2
                  c.sub        a2, s1
                  andi         zero, zero, 1896
                  c.and        a3, a1
                  addi         sp, a3, 1552
                  sltiu        s1, a7, -146
                  auipc        a0, 44480
                  mulh         s5, s5, t2
                  div          a4, t5, s11
                  xor          a4, a4, a1
                  ori          a3, ra, 1726
                  rem          t4, s8, s0
                  srai         s3, a0, 19
                  c.nop
                  mulhsu       a7, a4, a6
                  c.srli       a0, 12
                  slt          s4, t2, s5
                  auipc        s5, 387426
                  srai         a7, tp, 2
                  c.li         t5, 4
                  divu         s10, sp, a5
                  c.srai       a5, 13
                  c.addi16sp   sp, 16
                  addi         a2, s2, -1007
                  c.slli       ra, 25
                  srl          t1, s0, zero
                  div          a5, s8, ra
                  sra          t6, t2, s2
                  add          s0, gp, t0
                  addi         t0, tp, 1940
                  auipc        sp, 1024527
                  slti         t6, a7, -1683
                  c.nop
                  c.sub        a0, a0
                  div          a7, tp, t4
                  mulh         a2, s6, s10
                  mulhsu       a6, a7, s1
                  andi         ra, t2, 637
                  ori          a6, s8, -2017
                  slli         t5, a7, 8
                  xor          s1, t0, gp
                  sra          zero, t6, sp
                  c.addi4spn   s1, sp, 608
                  c.mv         s8, t2
                  c.srli       a2, 19
                  mulhu        s1, s2, t0
                  add          s11, a3, a6
                  div          s2, a5, s2
                  mulh         a0, s9, s1
                  c.mv         s5, s6
                  mulhsu       t4, a6, gp
                  c.add        s8, a4
                  slli         a0, a0, 0
                  c.mv         a6, a1
                  nop
                  remu         a7, s2, a1
                  xori         t2, s9, 1349
                  sub          t2, t5, t1
                  andi         t1, t5, 525
                  or           gp, t1, a0
                  srai         s5, s3, 15
                  sltiu        t4, t0, -1993
                  add          a4, s4, t2
                  c.mv         s8, t1
                  srai         t0, t5, 13
                  add          sp, s9, a5
                  c.mv         s4, s1
                  remu         s11, a7, tp
                  sub          t4, s4, t5
                  sll          s8, zero, s2
                  xor          ra, s7, a1
                  sub          s1, ra, s11
                  div          s1, s5, t6
                  c.addi       s4, 22
                  sltu         a7, a2, t2
                  sll          a2, s5, ra
                  srl          a2, s0, s8
                  or           s6, a1, ra
                  lui          zero, 251772
                  c.andi       a2, -1
                  sltiu        s11, a3, -411
                  c.slli       s11, 9
                  c.or         a5, s0
                  c.addi16sp   sp, -16
                  divu         t5, a5, t2
                  nop
                  slli         a6, s7, 15
                  c.or         a3, a5
                  c.mv         t6, s8
                  c.mv         s2, s8
                  sltiu        s3, s4, 1894
                  ori          s7, s11, -1708
                  addi         a5, a5, -1551
                  c.lui        s5, 17
                  slli         a3, a5, 24
                  c.nop
                  c.mv         a5, s8
                  add          s11, s0, s0
                  c.li         s3, -1
                  mulhsu       t4, s0, a2
                  mulh         s1, s6, a1
                  sll          a4, s2, s0
                  div          s1, s6, tp
                  c.nop
                  c.add        a4, s0
                  slt          s6, s3, ra
                  srai         t5, a0, 19
                  xor          t2, a6, s2
                  and          zero, sp, t4
                  sub          a7, t3, a4
                  mul          a5, zero, a6
                  nop
                  mulhu        s10, a3, s10
                  auipc        a3, 890029
                  xor          s2, ra, s10
                  add          s4, s7, t2
                  and          s10, a3, t5
                  c.srli       a5, 7
                  remu         t5, a7, t1
                  srli         s10, gp, 15
                  c.add        sp, s4
                  slt          ra, gp, t6
                  add          zero, tp, a3
                  sra          a4, sp, t1
                  c.nop
                  xori         ra, ra, 1768
                  c.addi4spn   a3, sp, 160
                  mulh         a5, a4, a5
                  c.sub        a5, s0
                  srl          t2, a2, a7
                  srai         a7, sp, 19
                  rem          s3, s3, a7
                  c.xor        a5, s1
                  slt          a4, t3, t2
                  ori          t4, s2, 1549
                  mulh         s7, s9, s8
                  slt          t6, s3, s1
                  c.nop
                  c.andi       a0, 31
                  c.lui        s2, 24
                  c.sub        a3, s1
                  slli         s5, a2, 4
                  auipc        s2, 469864
                  srli         a3, s11, 14
                  sltu         a2, t2, gp
                  c.xor        a2, a4
                  srl          zero, a1, t5
                  lui          sp, 383382
                  srai         a2, zero, 30
                  c.srli       a5, 28
                  remu         t1, a1, s1
                  c.srai       s1, 28
                  remu         s3, sp, s10
                  div          t2, t0, t1
                  c.srai       a0, 31
                  srli         ra, s2, 30
                  c.sub        a3, s1
                  mulhsu       s0, s4, t0
                  div          s7, s9, s4
                  c.srai       a2, 3
                  c.xor        a0, a1
                  slli         t6, t0, 14
                  xori         a2, a7, -1853
                  c.add        s8, a3
                  c.or         a3, a5
                  srli         a2, s2, 10
                  ori          t6, s7, -1492
                  c.srai       a2, 21
                  c.or         s0, a1
                  lui          a4, 995512
                  c.mv         a2, sp
                  mulh         t4, s1, t2
                  c.srli       a0, 21
                  c.addi4spn   a5, sp, 1008
                  sltu         a7, s7, a0
                  sub          s0, s0, t1
                  c.addi16sp   sp, 416
                  srai         ra, t2, 3
                  c.addi       t4, -1
                  auipc        s2, 1003527
                  sltiu        sp, t6, -1689
                  nop
                  c.andi       s1, 1
                  auipc        s7, 718035
                  sltu         t4, a7, zero
                  divu         t6, t2, a0
                  mulhu        s2, s0, ra
                  c.li         a2, 22
                  c.li         s3, -1
                  auipc        a3, 222245
                  xor          zero, s0, s4
                  ori          gp, s5, 1054
                  or           zero, s3, s0
                  sra          zero, gp, a7
                  c.and        a0, a4
                  nop
                  mulhu        zero, s7, s11
                  c.addi16sp   sp, 320
                  divu         s4, a5, t6
                  c.lui        s11, 21
                  srai         t5, t2, 7
                  mulhsu       a3, t5, a0
                  sra          s6, tp, s2
                  and          s1, ra, t1
                  mulh         a6, t6, gp
                  sltiu        sp, ra, 88
                  lui          s8, 342927
                  c.lui        a0, 8
                  xori         a6, s11, 885
                  c.addi4spn   s0, sp, 960
                  c.lui        t5, 26
                  c.sub        a3, s0
                  c.srai       a4, 2
                  xor          zero, a1, t3
                  addi         a6, a4, 125
                  and          s0, t4, ra
                  srl          s7, s5, s11
                  xor          s11, a6, tp
                  c.and        a2, a0
                  c.addi16sp   sp, 352
                  remu         t4, a7, t0
                  mulhu        s11, s4, zero
                  c.slli       s0, 15
                  c.and        a4, s0
                  rem          gp, s3, s1
                  add          s10, a4, tp
                  xori         t2, a7, -1134
                  srl          s2, a7, a1
                  addi         t5, zero, -1776
                  slt          zero, t0, t3
                  c.xor        a3, a2
                  c.xor        a3, a4
                  addi         a5, t4, 1153
                  mulh         s10, t1, s1
                  srai         t6, a7, 23
                  c.lui        t1, 11
                  c.mv         s11, gp
                  slli         ra, s10, 17
                  c.and        s1, a2
                  c.sub        a0, s1
                  divu         a5, t2, s1
                  andi         s5, tp, -986
                  div          a7, t4, a2
                  sll          ra, s5, zero
                  c.slli       s1, 26
                  c.add        s2, s7
                  remu         a7, a1, s11
                  c.slli       s1, 4
                  slti         a7, s7, 831
                  divu         zero, t4, sp
                  c.or         s1, s0
                  sltu         a2, t3, t4
                  c.add        sp, sp
                  c.lui        s0, 19
                  c.add        s2, s1
                  c.nop
                  c.li         s1, -1
                  c.srli       a0, 20
                  c.and        s0, a5
                  auipc        a4, 574629
                  c.srli       s0, 15
                  c.lui        ra, 27
                  sltiu        s4, s11, 1843
                  xor          gp, s11, s3
                  mul          s5, a1, a0
                  c.addi       t1, 3
                  c.addi       ra, 10
                  sub          t2, a4, s0
                  ori          s4, a7, 1722
                  c.and        a4, a4
                  c.mv         s0, a7
                  c.srai       a5, 5
                  c.addi       s7, 2
                  srl          a3, tp, a3
                  sltu         zero, t3, t2
                  ori          a4, a4, 1093
                  mulhu        sp, a2, tp
                  c.srai       a5, 24
                  add          s7, a1, s6
                  add          t6, a5, s9
                  c.mv         s8, gp
                  xor          t1, t4, t5
                  xor          ra, t0, a1
                  c.addi16sp   sp, -16
                  andi         t1, a3, -594
                  sra          t6, a5, t3
                  andi         a5, a0, -1470
                  auipc        t2, 969046
                  mul          t4, s5, s4
                  lui          sp, 119451
                  sll          sp, t6, t3
                  add          t4, ra, s5
                  c.lui        a6, 22
                  slt          s10, t3, a2
                  c.nop
                  c.and        a0, s1
                  mul          s10, a7, a6
                  c.mv         t4, a5
                  c.andi       s1, 20
                  div          t0, s0, gp
                  c.add        s8, a6
                  divu         a6, s0, t3
                  divu         sp, s8, a2
                  addi         zero, zero, 820
                  sub          a2, s4, sp
                  c.add        s2, s8
                  sltiu        a7, gp, -868
                  sra          s7, a1, a5
                  srli         a6, a1, 13
                  remu         zero, t4, s1
                  nop
                  xori         s7, a0, -1451
                  c.addi       s8, -1
                  mulhu        a5, a0, a1
                  lui          a7, 360034
                  sll          ra, s2, t5
                  ori          s7, s2, 835
                  ori          s4, s5, -1176
                  rem          a4, t5, s1
                  c.or         a4, a0
                  c.add        s0, tp
                  ori          s5, t4, -873
                  c.addi4spn   a5, sp, 640
                  auipc        a7, 1024504
                  srli         a6, t0, 21
                  c.li         a3, -1
                  srli         zero, s10, 19
                  div          t6, s5, s9
                  nop
                  andi         t4, a1, -1451
                  rem          t0, s7, t5
                  mulhu        a3, a2, s2
                  c.and        a4, a5
                  sltiu        tp, a7, -481
                  and          s6, zero, a1
                  srai         s7, t5, 14
                  c.add        tp, t4
                  mulh         s1, s11, a2
                  c.nop
                  lui          t4, 913527
                  c.slli       t0, 3
                  slti         s5, s1, 12
                  nop
                  andi         s1, a1, 1281
                  sltu         a7, a7, a4
                  add          t1, s9, t2
                  srl          t6, t0, s2
                  sll          s3, s4, t5
                  slli         s1, gp, 27
                  or           s1, t5, t0
                  mul          a5, s7, gp
                  c.srai       a2, 28
                  srli         s0, t2, 19
                  andi         t6, s5, 1127
                  c.slli       s10, 13
                  c.addi4spn   s0, sp, 736
                  ori          a4, zero, 1040
                  c.and        a0, a0
                  slti         s8, zero, 1395
                  auipc        s2, 11537
                  rem          tp, s10, zero
                  sra          t1, gp, s3
                  addi         zero, t6, 1784
                  c.li         s7, 12
                  auipc        s6, 59427
                  add          t5, a6, s7
                  andi         t2, a6, 1461
                  sltiu        t5, t0, -1732
                  c.slli       t2, 20
                  c.and        a0, a5
                  mul          t2, a4, a5
                  mulhu        t1, gp, a6
                  and          sp, gp, s6
                  and          s5, s11, t0
                  slti         t6, s7, -1487
                  mulhsu       zero, t2, tp
                  c.addi       ra, -1
                  c.li         t6, -1
                  c.addi16sp   sp, 432
                  c.srai       s0, 15
                  add          a4, t2, a3
                  auipc        a5, 372729
                  nop
                  andi         t6, a5, -1807
                  c.addi16sp   sp, 464
                  c.srli       a5, 15
                  c.or         s0, a0
                  slli         a7, s2, 9
                  and          t1, sp, t1
                  c.sub        a3, a2
                  sub          a2, s0, s6
                  and          ra, t1, a5
                  c.srli       a4, 25
                  div          t2, s7, a3
                  sra          sp, s8, s1
                  c.srai       s0, 13
                  and          tp, t4, zero
                  c.xor        a0, s0
                  andi         s7, tp, 1492
                  divu         tp, t1, t4
                  slli         sp, t3, 25
                  xor          a7, t1, zero
                  or           s11, a7, a0
                  rem          a5, s9, s2
                  c.nop
                  c.addi4spn   s1, sp, 80
                  c.andi       s1, 31
                  auipc        t0, 850431
                  xor          s1, a7, t1
                  and          s10, a3, t1
                  slli         s1, t0, 16
                  and          a5, a3, a3
                  c.mv         a4, s10
                  divu         tp, a6, ra
                  c.and        s0, s0
                  c.addi       s4, -1
                  slt          a5, s6, t6
                  c.addi16sp   sp, -16
                  sll          s4, t3, s11
                  sltiu        s3, t3, 689
                  add          s5, s9, s7
                  mulh         gp, a7, tp
                  slli         s0, a3, 23
                  divu         s11, sp, s11
                  andi         t2, s11, -976
                  c.li         t5, -1
                  mul          a7, s3, a1
                  div          t6, sp, t0
                  c.srai       a4, 14
                  c.nop
                  andi         s1, s4, -275
                  auipc        a7, 426597
                  c.or         s0, a2
                  nop
                  c.sub        a3, a4
                  c.nop
                  c.addi4spn   s1, sp, 1008
                  div          s0, s6, a4
                  c.add        t2, tp
                  c.addi16sp   sp, 336
                  rem          a7, s7, tp
                  c.andi       a3, 6
                  sltu         t1, a3, t2
                  div          t5, s9, s5
                  c.li         s3, -1
                  rem          a5, sp, zero
                  srli         s5, s6, 31
                  remu         s11, s3, s3
                  c.addi       a0, -1
                  rem          s5, a1, t4
                  sltu         sp, s5, s1
                  srai         a0, a2, 10
                  slti         a7, tp, 1381
                  or           a3, s4, t5
                  slt          a2, a7, a0
                  sltu         s11, s3, a6
                  or           a7, s7, a4
                  ori          s5, a1, 1853
                  mulh         t6, a2, gp
                  div          a7, t4, s3
                  c.srai       s1, 31
                  addi         a0, t3, -1998
                  lui          a5, 400824
                  c.srai       a5, 22
                  lui          s3, 232618
                  c.sub        s0, s1
                  c.slli       a3, 19
                  c.nop
                  or           a5, tp, a5
                  srli         t1, gp, 20
                  sll          s2, sp, a1
                  mulhu        zero, t1, t0
                  mulhu        s10, s2, s8
                  andi         s0, t3, -1083
                  mul          t2, a2, t4
                  nop
                  or           s6, s11, s6
                  and          t5, s4, t4
                  c.srli       a5, 19
                  c.or         s0, a0
                  c.slli       t0, 22
                  srl          ra, a4, a3
                  c.li         s8, -1
                  divu         s6, s5, s0
                  c.addi       t5, -1
                  c.add        s3, t1
                  sll          s1, s7, a4
                  sltu         sp, a1, a2
                  slt          t6, t5, s0
                  divu         s7, a1, sp
                  c.and        a4, a3
                  auipc        t2, 871203
                  srli         t5, s7, 13
                  c.sub        s0, s0
                  srai         s11, zero, 12
                  sub          s2, s6, s9
                  sltiu        s1, t0, -205
                  c.li         a4, -1
                  c.li         s0, 10
                  c.addi       ra, -1
                  sltiu        a4, s3, 1113
                  c.andi       a4, 6
                  c.nop
                  mulh         gp, t6, s4
                  c.li         t2, 3
                  sltiu        t4, t6, -898
                  sra          s2, t5, t1
                  ori          t4, t5, -1722
                  c.addi       s1, -1
                  c.addi16sp   sp, 304
                  c.slli       s1, 2
                  srli         s5, s4, 6
                  c.addi4spn   a5, sp, 720
                  remu         s3, s6, t6
                  remu         a5, s1, t3
                  c.sub        a0, a4
                  c.sub        a0, s0
                  xor          a4, s7, t3
                  c.srai       a4, 14
                  c.nop
                  slt          s1, a2, t0
                  c.addi4spn   s1, sp, 64
                  c.or         a4, a3
                  xor          sp, s8, a3
                  mulh         a3, a0, tp
                  mulhu        a7, t0, t0
                  xori         a0, s1, -2033
                  c.andi       a3, -1
                  xori         s1, ra, 333
                  and          s4, a2, s2
                  c.addi4spn   a4, sp, 288
                  andi         a5, a7, 1359
                  c.srai       a5, 24
                  mulhu        gp, t2, t2
                  srai         a0, a1, 1
                  andi         s5, s3, -1671
                  sltu         s2, s0, s8
                  c.srli       a4, 24
                  c.add        s3, s0
                  and          s3, a6, a5
                  sub          a4, a2, t2
                  mulhsu       s2, s9, zero
                  c.addi       s5, -1
                  c.addi4spn   a5, sp, 992
                  c.lui        t0, 16
                  remu         a6, s9, t2
                  lui          a7, 1024387
                  c.li         t0, 0
                  c.sub        a4, a1
                  sltiu        s5, gp, -1041
                  sll          s8, t6, s8
                  sltu         s11, tp, t4
                  xori         s2, gp, -437
                  srai         s1, tp, 10
                  rem          a0, s7, s8
                  c.and        s1, a2
                  sra          s4, s5, s0
                  xor          s4, tp, s0
                  sll          s0, gp, s11
                  c.srai       a2, 24
                  c.nop
                  slti         t4, t4, 1714
                  c.sub        a2, s0
                  addi         tp, s9, -1792
                  c.lui        a7, 2
                  mulh         sp, tp, t1
                  and          a0, zero, s4
                  c.addi16sp   sp, 240
                  c.xor        a2, s0
                  mul          a7, s6, a0
                  c.addi4spn   a4, sp, 128
                  c.nop
                  slt          t6, a2, tp
                  div          ra, s7, a5
                  sra          t6, a1, sp
                  srai         s3, a1, 11
                  addi         s0, a7, -1559
                  ori          t2, s6, 167
                  c.or         a5, a3
                  c.mv         s11, t4
                  and          a4, s3, zero
                  srli         t4, s11, 28
                  c.mv         a5, t3
                  rem          a3, t2, t1
                  sra          s1, a0, t2
                  rem          s6, s11, a3
                  sll          s2, s10, t5
                  rem          s6, ra, a4
                  c.sub        a0, a4
                  mulhu        sp, a6, a2
                  c.li         tp, -1
                  c.andi       a4, 1
                  c.nop
                  c.srai       a3, 1
                  c.srli       a5, 10
                  mulh         t4, s1, s9
                  lui          a3, 136673
                  nop
                  c.addi4spn   a5, sp, 1008
                  remu         t4, s1, s2
                  divu         t0, a0, s2
                  c.andi       a0, 8
                  mulhsu       a3, a7, a2
                  mul          s4, t3, t2
                  and          a3, s1, a3
                  div          tp, gp, ra
                  add          zero, a5, s9
                  c.addi4spn   a0, sp, 16
                  or           gp, zero, s8
                  c.nop
                  mulh         zero, a3, a3
                  c.nop
                  mulh         a7, t1, a0
                  slli         s1, a1, 15
                  c.nop
                  mulh         t2, s10, s7
                  nop
                  div          s5, a3, t0
                  mul          a0, s2, a2
                  c.slli       s1, 1
                  c.addi       s11, -1
                  c.li         s4, 2
                  slt          s4, s10, tp
                  c.addi16sp   sp, -16
                  sra          s6, zero, a5
                  c.addi16sp   sp, -16
                  srl          t4, s5, a0
                  c.andi       a5, -1
                  or           t0, s7, t1
                  slli         a3, a0, 30
                  c.nop
                  or           a7, s5, a1
                  sra          sp, a3, t0
                  auipc        a3, 903795
                  nop
                  xori         sp, s9, -794
                  mulhsu       s11, tp, tp
                  c.add        t1, s0
                  c.and        a5, s0
                  slt          s7, ra, t5
                  lui          a0, 426547
                  c.addi       gp, 20
                  sub          s11, s8, t3
                  c.or         a0, s0
                  addi         s0, a2, 1625
                  and          s0, sp, t2
                  sltu         s6, a1, t6
                  c.addi16sp   sp, -16
                  divu         a5, t1, t1
                  sltiu        zero, s7, -1387
                  srl          t5, s5, s5
                  c.mv         s10, a3
                  c.xor        s0, a5
                  srli         a4, a2, 22
                  ori          t4, s2, 1091
                  add          s11, s6, sp
                  slli         t0, sp, 21
                  srl          t0, t5, s5
                  lui          a3, 920049
                  c.or         s1, s0
                  srai         a4, s8, 8
                  c.srai       a4, 1
                  c.or         a5, s1
                  c.addi       a0, -1
                  mulhsu       s3, t5, a0
                  mulhu        sp, s7, t3
                  c.li         t0, -1
                  c.mv         t2, sp
                  c.nop
                  sltiu        t5, s10, -1317
                  nop
                  c.add        a6, a4
                  srl          tp, t1, a3
                  mul          s1, t2, tp
                  srai         a7, t0, 20
                  c.and        a5, a2
                  mulh         s4, a1, t0
                  rem          gp, t2, a5
                  mul          a6, zero, s2
                  ori          gp, a6, -28
                  c.andi       s0, -1
                  sub          sp, zero, t6
                  c.addi4spn   a3, sp, 864
                  rem          s11, s5, a2
                  srli         s0, a6, 19
                  c.slli       s0, 31
                  c.sub        a2, a2
                  slli         s2, s4, 22
                  srli         t0, s4, 9
                  mulh         s1, s2, tp
                  slt          a2, a0, s0
                  srl          a6, s2, a3
                  c.addi       t5, -1
                  c.li         s0, 10
                  c.mv         t4, a0
                  mulhsu       t4, s7, a7
                  c.andi       a0, 10
                  c.addi16sp   sp, 240
                  c.li         s8, 24
                  slti         a5, a3, 331
                  slli         s1, t5, 27
                  c.mv         t5, a1
                  mulhsu       a7, s9, ra
                  slt          s0, ra, a5
                  c.add        t6, a1
                  slti         sp, s4, 459
                  ori          s0, t0, -303
                  and          a3, tp, t3
                  mulhu        a5, sp, s9
                  srai         a7, s7, 16
                  rem          t5, ra, a7
                  srai         a2, t6, 3
                  c.or         a5, a5
                  srl          t4, t1, a5
                  c.or         a5, s1
                  srl          t6, a0, s1
                  xor          t2, t2, s6
                  c.or         a3, a5
                  slli         a7, s10, 23
                  srli         a6, s0, 23
                  div          a0, ra, s3
                  c.or         a4, a2
                  c.lui        s2, 30
                  c.addi       s10, 4
                  c.sub        s1, s1
                  sll          a7, s10, t6
                  rem          t6, a3, a1
                  c.add        s8, a7
                  lui          s5, 946038
                  c.slli       ra, 16
                  srai         ra, t3, 27
                  addi         t0, s2, 1548
                  srli         s11, a4, 10
                  c.nop
                  mulhsu       s11, t1, t6
                  c.addi4spn   a4, sp, 224
                  c.add        s11, a0
                  c.or         a5, a4
                  sra          t0, a3, a6
                  sll          a6, s4, t4
                  sltiu        s5, s2, -1294
                  c.nop
                  c.slli       s3, 24
                  c.addi4spn   a4, sp, 128
                  sra          s6, s9, a0
                  lui          t4, 116815
                  and          s11, s2, a1
                  slt          s4, gp, a1
                  lui          s7, 194760
                  c.addi16sp   sp, 416
                  c.add        s2, s11
                  ori          gp, sp, 719
                  slli         t4, s10, 1
                  c.and        s1, a3
                  slli         s11, s0, 27
                  c.lui        s0, 9
                  c.lui        gp, 5
                  c.addi16sp   sp, -16
                  c.andi       a4, 7
                  mulhu        s2, t2, t1
                  sub          s8, a7, t4
                  srai         s11, s6, 12
                  sltiu        s0, tp, -455
                  auipc        t0, 474847
                  and          a0, a5, a3
                  c.addi4spn   a3, sp, 912
                  c.srli       a0, 15
                  slli         s6, a7, 5
                  c.li         t2, -1
                  c.nop
                  c.andi       s1, 21
                  c.mv         t2, s5
                  rem          s0, sp, t4
                  c.addi4spn   a3, sp, 912
                  c.slli       t4, 25
                  c.nop
                  c.srli       a3, 25
                  and          t2, sp, t6
                  sll          a2, t5, s1
                  mulhu        s11, s6, t6
                  or           s8, zero, s0
                  addi         s0, s3, 1785
                  slti         s0, zero, -111
                  xori         a2, s7, -1517
                  add          a3, s7, s7
                  remu         s1, gp, t3
                  slti         s11, a1, -1030
                  c.slli       ra, 22
                  c.addi16sp   sp, 416
                  sltu         a6, a2, a0
                  auipc        s1, 159802
                  sub          t0, gp, t0
                  srai         ra, s0, 18
                  addi         t2, s2, 1572
                  divu         t1, a4, tp
                  mulhsu       s11, s10, s4
                  andi         zero, s9, -1774
                  sra          sp, s9, t0
                  slti         tp, sp, 1303
                  mulhsu       a4, s9, ra
                  mul          t5, s0, s5
                  c.addi4spn   a0, sp, 672
                  c.srli       a3, 9
                  and          t2, s6, tp
                  auipc        s4, 1024671
                  ori          t1, s5, 1656
                  c.srai       a0, 13
                  c.andi       a5, 8
                  xori         a4, a7, 1412
                  mulhu        t4, a6, tp
                  andi         a0, tp, -1403
                  c.mv         a5, t4
                  mulh         a2, a0, t6
                  divu         s2, s6, t5
                  c.addi4spn   a4, sp, 368
                  ori          s1, gp, 447
                  nop
                  c.addi4spn   s0, sp, 832
                  ori          ra, t2, -721
                  c.lui        s5, 15
                  c.addi4spn   s0, sp, 448
                  sub          a0, s7, sp
                  srl          gp, s0, s2
                  c.nop
                  remu         a3, s2, t0
                  c.srli       a2, 18
                  sltiu        a3, s4, -1164
                  auipc        sp, 964204
                  c.lui        t6, 3
                  sra          s11, a4, t4
                  remu         a2, a2, t5
                  ori          s1, a4, 1516
                  c.sub        a3, a2
                  mulhsu       t2, t1, a5
                  sll          sp, s8, s5
                  mulh         s4, t3, s8
                  div          s7, a3, t0
                  c.sub        a2, a1
                  c.or         a0, a1
                  slt          a0, t6, t4
                  c.nop
                  andi         zero, t1, -1139
                  srl          a7, zero, a4
                  c.xor        s0, s0
                  srl          t1, t6, t6
                  lui          a5, 424012
                  ori          a5, gp, -669
                  c.nop
                  or           s6, a4, a1
                  c.add        a5, s1
                  c.addi16sp   sp, 384
                  c.addi       t5, 6
                  sub          s5, zero, gp
                  c.addi       sp, -1
                  c.and        a2, a4
                  c.mv         s11, a5
                  or           s8, a4, ra
                  div          t4, s5, sp
                  sra          s1, zero, t0
                  srl          s1, t5, zero
                  rem          a0, a6, s4
                  c.li         a0, -1
                  sra          s10, s8, t2
                  nop
                  c.nop
                  sra          a4, s6, a7
                  mulhu        gp, zero, a7
                  divu         t0, s7, s8
                  srai         s2, s11, 1
                  divu         a2, sp, a3
                  sltu         s2, a0, zero
                  c.mv         t0, t3
                  slt          s11, t6, ra
                  slti         t1, a6, -2034
                  c.sub        a0, a3
                  c.slli       a5, 31
                  c.li         gp, 18
                  lui          a0, 36878
                  nop
                  ori          a0, t1, -1066
                  sltu         s7, s2, a6
                  mulh         s0, s11, s9
                  mulh         a6, s1, s5
                  c.srai       a3, 24
                  c.addi16sp   sp, -16
                  or           a3, zero, s11
                  sll          gp, s8, s5
                  c.andi       a3, 20
                  lui          t0, 905007
                  srai         s2, a1, 25
                  or           t4, t6, s10
                  nop
                  and          s11, sp, a1
                  srl          s4, ra, t2
                  c.li         ra, 16
                  c.addi16sp   sp, 496
                  mulh         t6, s4, s3
                  nop
                  c.sub        a5, a4
                  c.nop
                  sltu         s6, a0, s10
                  c.lui        s5, 18
                  c.srli       a4, 4
                  c.slli       t2, 14
                  c.nop
                  sub          s5, s11, s11
                  srl          s7, a0, s11
                  c.addi16sp   sp, 256
                  c.sub        a0, s0
                  c.addi16sp   sp, 320
                  remu         a2, s3, s3
                  srl          t2, s3, a4
                  c.andi       s1, -1
                  c.or         s1, a3
                  c.nop
                  sltu         s2, t3, ra
                  sltiu        a2, s1, 1351
                  c.srli       s0, 6
                  sltu         s5, a3, s7
                  c.nop
                  srl          a0, t2, s5
                  sub          sp, s11, s4
                  c.srli       a5, 17
                  srl          t5, s5, s1
                  c.addi4spn   a0, sp, 528
                  sltiu        a0, s1, -8
                  sltu         a2, s4, s0
                  sra          tp, s3, s8
                  sra          s6, a3, a7
                  mulhsu       s0, a4, s7
                  sltu         t6, a1, a7
                  sll          t2, s9, tp
                  slt          a2, a7, s10
                  divu         gp, s1, gp
                  srli         ra, s10, 0
                  c.addi       t6, 13
                  slt          s2, t4, t1
                  c.addi4spn   a4, sp, 96
                  rem          a3, gp, a3
                  srli         t0, s3, 31
                  c.addi16sp   sp, 192
                  srai         t2, tp, 8
                  sltiu        a2, s8, -1765
                  auipc        s6, 340254
                  c.xor        s1, a5
                  addi         s11, t3, -499
                  c.and        a2, a2
                  srai         t4, t5, 11
                  or           s10, sp, t6
                  and          s5, zero, a6
                  srl          a2, s0, s6
                  lui          t4, 358464
                  sltiu        t6, t1, 1131
                  xori         s0, s1, -7
                  rem          t4, ra, zero
                  c.sub        s0, a2
                  andi         t6, gp, -227
                  c.andi       a5, 7
                  sra          gp, gp, a0
                  andi         s6, a1, 1759
                  slli         s2, s11, 17
                  c.addi       a3, 1
                  divu         gp, s8, s10
                  srl          t4, t0, t4
                  c.sub        a3, a2
                  divu         t6, a2, tp
                  add          t6, a7, s0
                  mulh         a3, s6, tp
                  srl          t1, a4, s10
                  c.addi16sp   sp, 112
                  sltu         s6, a6, a5
                  mulh         s7, t3, a4
                  srai         s7, t2, 8
                  c.and        s0, s1
                  slti         a3, t5, 971
                  xor          gp, a3, gp
                  c.srli       a4, 10
                  mulhsu       s11, t4, sp
                  sra          a7, zero, s2
                  xori         t4, s8, 1330
                  div          a0, t6, s6
                  slt          s4, tp, s10
                  ori          zero, s9, -659
                  sra          t0, sp, s11
                  nop
                  c.slli       t0, 21
                  mulh         s3, s1, tp
                  sltiu        t4, s6, -370
                  srai         s2, s11, 19
                  srai         ra, gp, 23
                  c.slli       s4, 22
                  mulhsu       t6, a5, a7
                  xori         a7, a7, 1400
                  ori          s5, t3, 1567
                  xori         s6, t5, 925
                  c.lui        a7, 8
                  mulh         a7, t0, zero
                  sll          t4, a4, s8
                  remu         a3, s9, gp
                  sltiu        a6, s7, 1393
                  c.addi4spn   a2, sp, 800
                  xori         s10, a0, 824
                  sll          a5, s9, a1
                  mulhsu       t6, s11, s8
                  slli         s11, s10, 24
                  slti         gp, zero, -352
                  srai         a6, gp, 5
                  remu         s8, s4, ra
                  div          a0, zero, t1
                  c.xor        a4, a4
                  c.srli       a3, 23
                  and          s11, s7, a4
                  slt          s7, a3, t2
                  c.and        a4, a2
                  add          s0, s1, a5
                  c.andi       a2, 1
                  sltiu        ra, t2, -601
                  c.xor        a2, a1
                  c.add        s5, a6
                  srai         a4, a0, 6
                  mulh         s11, a7, s9
                  rem          t1, a3, sp
                  and          s5, s2, s11
                  c.srli       a3, 12
                  c.addi4spn   s1, sp, 896
                  and          a0, tp, a5
                  auipc        s2, 51977
                  c.andi       a2, -1
                  c.addi       t4, 10
                  c.xor        a4, a2
                  nop
                  sub          s3, zero, t1
                  c.add        t0, t0
                  remu         ra, s1, a5
                  divu         s7, tp, t0
                  xor          s4, a0, s7
                  and          t0, ra, tp
                  c.addi4spn   s1, sp, 80
                  c.li         sp, 0
                  mulh         sp, s8, s5
                  srai         s3, a3, 5
                  c.srli       s1, 5
                  c.addi       s4, 24
                  c.lui        a3, 24
                  mulhu        t0, a7, a0
                  slti         s6, s8, 1513
                  srl          s10, a3, ra
                  div          a5, t1, s8
                  c.sub        a2, a2
                  c.srai       a2, 2
                  mulhu        gp, t3, s11
                  c.xor        s1, a2
                  slti         t5, s6, -645
                  mulhu        zero, ra, a1
                  c.slli       t6, 18
                  mulh         a5, s1, s10
                  nop
                  mul          s8, s0, a5
                  c.srli       s1, 2
                  c.li         s5, 24
                  sub          sp, ra, t2
                  mulhu        t6, s5, s10
                  nop
                  slli         ra, s3, 18
                  c.srai       s1, 9
                  andi         s10, t5, 564
                  sltu         a0, s10, s3
                  c.slli       ra, 16
                  c.srai       a4, 16
                  c.addi       s8, -1
                  srai         s6, s4, 15
                  c.addi4spn   s0, sp, 928
                  slli         tp, s10, 5
                  remu         t2, a1, a1
                  c.li         t5, -1
                  andi         s10, s6, 226
                  c.lui        a7, 30
                  mulhsu       s3, t2, s8
                  c.addi4spn   a0, sp, 416
                  c.lui        t4, 4
                  addi         t0, s10, -1805
                  c.and        a0, a5
                  c.or         a0, a1
                  auipc        s1, 21904
                  mulhu        s11, s3, t5
                  c.andi       s1, -1
                  sltiu        t5, s1, -967
                  rem          sp, t4, t3
                  c.mv         a6, t1
                  ori          t5, s11, -1787
                  mulhu        s0, ra, s9
                  c.or         a0, a0
                  c.nop
                  nop
                  srai         s7, s5, 4
                  rem          s0, s8, sp
                  xor          s2, t1, s1
                  c.add        s1, a2
                  c.xor        a3, a2
                  c.srli       a4, 27
                  sra          a3, s3, s0
                  divu         s5, t1, s10
                  xori         a6, a1, 1998
                  auipc        a0, 979266
                  and          s1, s5, a1
                  c.and        a0, s0
                  add          sp, s6, s7
                  mulh         sp, gp, s2
                  add          a6, gp, t6
                  c.mv         s8, a4
                  c.andi       s1, -1
                  or           zero, s2, t6
                  c.or         a5, a1
                  srl          t0, t0, a0
                  c.lui        a3, 15
                  c.or         a5, a4
                  xor          s11, a5, ra
                  auipc        s3, 160339
                  lui          a2, 240088
                  sra          tp, s7, s11
                  c.li         t1, -1
                  sra          s11, s3, s0
                  c.sub        s0, s1
                  mulh         s11, s3, t0
                  c.sub        a4, a4
                  sub          t5, s10, s2
                  c.srli       s1, 20
                  c.mv         s7, ra
                  sub          t0, s9, s8
                  c.nop
                  rem          t6, s9, t4
                  c.srli       a0, 21
                  srl          ra, a4, s8
                  add          s3, t5, s1
                  srl          s8, gp, s5
                  sltu         s3, t1, s0
                  c.mv         s1, s9
                  add          s2, a7, a5
                  div          sp, a5, s4
                  c.and        a5, s0
                  sltu         gp, a7, s10
                  lui          t1, 328829
                  mulhu        tp, ra, a0
                  sll          a4, s3, s2
                  c.sub        a5, a0
                  sll          a4, s9, t6
                  nop
                  c.addi4spn   a0, sp, 96
                  mulhu        s4, a5, t6
                  c.lui        s2, 4
                  c.lui        a5, 17
                  c.srli       a2, 26
                  c.andi       s0, 3
                  c.li         a6, 4
                  c.srai       a0, 10
                  sltiu        s1, s0, 1715
                  and          sp, s9, a7
                  srli         t4, t3, 15
                  sll          t6, tp, tp
                  c.slli       sp, 6
                  c.add        s5, a4
                  c.addi       a0, 3
                  mulhu        t0, a1, a5
                  c.addi       a5, -1
                  c.or         s0, s1
                  c.li         a0, -1
                  mul          s1, t3, s8
                  rem          s10, t0, s3
                  sub          sp, gp, s4
                  c.srai       s0, 15
                  c.addi4spn   a5, sp, 160
                  mulh         s3, s10, t5
                  c.srai       a4, 22
                  c.li         s0, 0
                  divu         s4, t4, a7
                  lui          s10, 2935
                  ori          a3, s9, -536
                  c.addi4spn   a5, sp, 608
                  srai         s5, s10, 2
                  ori          a4, a6, 73
                  slt          s0, zero, s3
                  c.addi4spn   a0, sp, 944
                  c.slli       ra, 19
                  c.addi4spn   a5, sp, 544
                  or           t1, s10, s3
                  xor          a6, ra, s0
                  c.srai       a5, 9
                  srai         t2, t0, 10
                  slti         a0, s10, 1737
                  mul          s1, a4, a7
                  div          s8, a7, a4
                  rem          s11, t0, s4
                  sltiu        gp, a7, 1190
                  addi         s10, a3, -192
                  c.li         a5, 22
                  c.nop
                  c.sub        a4, a3
                  mulhsu       tp, s4, s10
                  srli         a7, s10, 1
                  rem          t4, a6, s2
                  c.srli       s0, 17
                  srai         t5, ra, 22
                  ori          a5, t4, 1693
                  srai         a2, gp, 12
                  c.srli       a3, 12
                  auipc        ra, 909133
                  sub          s1, t3, ra
                  c.lui        a5, 13
                  c.li         s11, -1
                  mul          gp, s11, t2
                  sltu         s3, a2, sp
                  sll          a0, t0, t4
                  c.addi16sp   sp, -16
                  sra          t4, ra, s11
                  c.lui        t6, 2
                  mulh         a0, s4, tp
                  mulhsu       s2, s5, ra
                  mulh         a4, a3, s10
                  rem          s4, s3, a7
                  c.addi4spn   a0, sp, 352
                  mulhsu       a5, s6, s10
                  sltu         s5, tp, t6
                  c.add        t0, ra
                  rem          t0, a1, a2
                  sub          a2, t4, t0
                  lui          s5, 159758
                  sltu         s11, t1, s10
                  or           a5, tp, s8
                  or           gp, s7, a6
                  mulhsu       a4, s6, s0
                  addi         gp, a0, -1189
                  slt          zero, zero, a3
                  c.srai       s1, 4
                  c.srai       a4, 13
                  srl          s0, s2, a0
                  or           s1, s4, s1
                  srli         s8, s9, 17
                  and          a2, a7, t6
                  c.srai       s0, 6
                  mulh         tp, s8, a1
                  c.addi16sp   sp, 464
                  xor          a3, s2, zero
                  c.lui        a0, 21
                  slt          tp, s10, a1
                  c.sub        a4, a0
                  srli         t1, a1, 10
                  c.xor        a4, a0
                  srli         s1, s3, 2
                  sra          t0, zero, s9
                  c.nop
                  c.mv         s4, s0
                  c.addi       a6, 7
                  c.li         t4, -1
                  c.or         a5, a5
                  nop
                  c.and        s1, a5
                  sltiu        s8, s7, 1959
                  sltu         s4, t2, t2
                  srli         zero, a1, 21
                  slli         t0, ra, 11
                  add          s8, t5, sp
                  andi         s8, t1, 495
                  c.li         s7, -1
                  c.srai       s0, 6
                  slli         s11, t3, 7
                  remu         s10, a0, ra
                  addi         t0, zero, -1155
                  andi         ra, tp, 157
                  c.xor        a5, s1
                  sltiu        s5, t1, 578
                  nop
                  addi         a4, a0, 2009
                  mul          a2, t2, a0
                  mulhsu       a0, t4, a3
                  c.addi16sp   sp, -16
                  xor          s0, s11, tp
                  slti         t4, s0, -1732
                  c.addi4spn   s1, sp, 144
                  c.addi       s8, 10
                  srli         a5, a4, 2
                  lui          s2, 155336
                  slti         t4, a5, 1901
                  sltu         s10, s4, s9
                  and          s1, a0, t4
                  c.lui        s2, 26
                  c.and        a3, a3
                  c.or         a4, a2
                  srl          a7, s2, s8
                  nop
                  c.addi16sp   sp, -16
                  add          t2, a3, s4
                  divu         t1, t6, t6
                  add          a5, t3, s8
                  auipc        s2, 946692
                  slt          a7, a5, t5
                  mulh         s2, t4, t6
                  c.or         a5, a2
                  c.xor        a0, s1
                  c.add        ra, s10
                  c.li         gp, -1
                  remu         s10, a5, a7
                  nop
                  sltu         a0, a4, s6
                  ori          a7, t4, -478
                  c.addi       t1, 20
                  slt          s4, s1, t5
                  c.xor        a0, a0
                  or           s1, zero, s0
                  c.sub        a0, s1
                  sub          t1, s9, s0
                  c.add        a3, a0
                  slli         sp, a4, 16
                  mulhsu       s10, t6, tp
                  srai         tp, s11, 2
                  c.addi16sp   sp, 496
                  mulhu        t0, zero, a2
                  c.addi16sp   sp, -16
                  slli         t6, a0, 30
                  xor          t6, tp, s0
                  sll          a7, a1, a4
                  c.or         a3, a1
                  c.srai       s0, 2
                  rem          a2, s11, t1
                  srl          s8, tp, a7
                  mulhsu       a2, s8, s11
                  srl          s4, s3, s11
                  slli         a2, t2, 8
                  sll          a4, gp, ra
                  c.addi16sp   sp, -16
                  c.or         a4, a0
                  rem          zero, t6, a3
                  add          sp, a5, s11
                  c.mv         s10, t6
                  c.mv         s8, ra
                  mul          s6, s2, a2
                  c.or         s1, a5
                  sltiu        a3, t0, -1670
                  c.add        ra, s9
                  c.addi16sp   sp, -16
                  addi         t0, s1, 347
                  auipc        t4, 385549
                  c.add        a2, s4
                  andi         s3, t3, -1146
                  c.andi       a0, -1
                  sll          t1, a2, s11
                  and          s1, s1, t5
                  c.slli       a3, 12
                  and          gp, s1, a2
                  div          s5, a0, s4
                  auipc        gp, 768376
                  remu         t2, s9, s11
                  c.addi16sp   sp, -16
                  auipc        tp, 888185
                  sub          a6, s3, a4
                  c.add        t2, s0
                  c.xor        a5, a3
                  c.addi4spn   s0, sp, 608
                  c.slli       gp, 13
                  ori          a2, tp, -496
                  slt          t4, zero, s4
                  c.addi16sp   sp, -16
                  sltu         t2, a2, s3
                  c.addi16sp   sp, 16
                  mul          ra, s10, sp
                  sltiu        gp, a2, -2006
                  xori         a3, s0, -119
                  c.sub        s0, a0
                  c.addi4spn   a5, sp, 112
                  remu         zero, t6, t5
                  c.or         a4, a4
                  c.srai       a4, 13
                  add          zero, s5, t6
                  c.addi16sp   sp, -16
                  c.addi4spn   s0, sp, 416
                  and          a2, t2, s5
                  c.addi4spn   s0, sp, 320
                  auipc        s8, 970557
                  or           t4, a1, s6
                  nop
                  slt          s4, s10, s2
                  c.or         a4, a0
                  c.addi16sp   sp, 80
                  rem          a3, t0, t4
                  slti         gp, s7, 1569
                  sll          t2, a4, s4
                  xor          t2, gp, a7
                  sra          s1, a2, sp
                  c.lui        t4, 18
                  sltu         t0, s0, s1
                  c.xor        a4, a4
                  c.lui        t2, 25
                  slti         t1, s11, 587
                  c.or         a2, a2
                  mulhsu       t6, t1, s4
                  c.mv         t6, t2
                  c.add        s1, s4
                  and          a6, t2, s0
                  mulh         s8, t5, a3
                  sltu         sp, s11, ra
                  srai         s2, a4, 27
                  c.slli       a6, 27
                  mulhsu       t4, s10, s10
                  lui          s11, 312104
                  c.and        a5, a5
                  slti         s11, s0, 773
                  lui          s2, 60603
                  mul          a0, tp, t4
                  auipc        a2, 955543
                  divu         s11, s10, t5
                  nop
                  auipc        s6, 907942
                  addi         a5, ra, -1755
                  c.addi16sp   sp, 416
                  c.slli       a6, 9
                  srl          t4, gp, sp
                  c.slli       t2, 15
                  auipc        s0, 366511
                  andi         a0, ra, -1928
                  mul          a3, s5, tp
                  sll          s2, t0, s11
                  rem          t6, t4, s4
                  srli         a0, sp, 7
                  c.lui        t2, 27
                  slt          s4, s0, t5
                  c.srai       s0, 27
                  srai         s6, a3, 11
                  slli         a2, tp, 24
                  c.addi       t1, 15
                  c.li         s10, 10
                  divu         ra, gp, s3
                  c.addi16sp   sp, 112
                  c.add        s6, t4
                  sra          gp, a4, s0
                  c.srli       a5, 31
                  c.lui        a2, 25
                  sra          ra, a7, t5
                  c.xor        s1, s0
                  ori          zero, t0, 19
                  add          s5, s3, a1
                  mul          sp, t4, a3
                  slt          s11, s9, s11
                  c.li         s11, -1
                  slti         a7, s11, -178
                  mulhsu       s5, s7, s7
                  slli         gp, t4, 1
                  c.slli       t1, 21
                  and          a2, a5, s2
                  srai         a3, t4, 19
                  c.lui        s0, 28
                  c.lui        a7, 19
                  srli         s8, a1, 2
                  sltu         a5, sp, a7
                  slti         zero, a7, 982
                  lui          s3, 638026
                  c.slli       s10, 19
                  addi         t2, a7, -376
                  xori         a4, t0, -279
                  c.andi       s1, 17
                  xor          sp, a3, a1
                  xori         t4, t3, 60
                  mulh         s0, t6, t4
                  c.or         a5, a4
                  c.addi16sp   sp, -16
                  c.srli       s1, 16
                  c.addi       s11, -1
                  remu         s11, ra, tp
                  divu         a5, s5, t3
                  c.andi       a2, -1
                  nop
                  c.addi4spn   a2, sp, 336
                  srl          sp, a5, s2
                  mulhsu       tp, zero, s7
                  c.addi16sp   sp, 400
                  rem          a4, a4, t4
                  srl          t5, t6, tp
                  c.lui        s11, 13
                  c.addi       s5, 27
                  xor          a4, t5, t0
                  slt          s8, gp, s3
                  sltiu        s8, sp, 1431
                  auipc        s6, 565663
                  sll          a0, t2, zero
                  c.slli       s7, 9
                  sltiu        gp, t6, -637
                  or           t1, zero, t3
                  mulh         ra, t2, t4
                  nop
                  c.slli       a5, 23
                  mul          gp, s10, a7
                  sub          s11, s6, zero
                  or           t2, s10, a3
                  mul          a3, s3, t1
                  auipc        s2, 168114
                  c.sub        a5, a2
                  sra          s3, s11, t1
                  slti         s5, s11, 461
                  andi         s10, tp, 1858
                  srli         s2, s4, 17
                  srai         gp, s5, 9
                  c.xor        a5, a5
                  c.lui        a3, 6
                  c.add        t6, s10
                  ori          t0, s1, -64
                  srli         s4, s11, 9
                  xori         a0, s1, -917
                  and          s2, a7, ra
                  lui          a4, 604033
                  remu         s7, a2, zero
                  mul          sp, t2, t0
                  c.slli       s0, 12
                  sltu         s8, t1, s2
                  c.and        a0, s0
                  add          s11, a1, tp
                  c.srli       s0, 6
                  slli         zero, t3, 0
                  divu         t2, s8, t5
                  andi         a4, s10, -2047
                  srl          s7, s2, t1
                  div          a6, t6, a4
                  add          tp, s5, s8
                  c.lui        s8, 2
                  c.andi       s0, 23
                  c.mv         s2, a7
                  slt          a0, t3, s11
                  sll          a6, t0, t0
                  xori         tp, s5, -1971
                  add          s4, t5, s1
                  c.slli       s1, 21
                  addi         a3, s0, -156
                  xori         s1, t6, -1601
                  slli         s0, s7, 9
                  sltiu        a7, a1, 594
                  mulhsu       a7, a0, gp
                  xori         t6, a4, 1614
                  c.sub        a0, s1
                  lui          t4, 175752
                  div          tp, s2, t4
                  srl          s4, s6, a0
                  divu         s0, s2, t3
                  sll          tp, ra, s1
                  remu         a3, s9, a7
                  c.nop
                  c.slli       s2, 6
                  c.mv         t0, t1
                  slt          a3, s7, zero
                  c.srai       s1, 15
                  c.and        a5, a2
                  sltu         t4, s0, ra
                  slti         s7, t1, -63
                  remu         t5, a2, s0
                  div          t4, t6, a6
                  addi         a3, s5, -319
                  c.addi       t4, -1
                  c.nop
                  c.lui        t1, 27
                  c.sub        a5, a2
                  c.sub        a2, a2
                  lui          tp, 355062
                  c.slli       s5, 27
                  andi         sp, s3, -580
                  c.addi16sp   sp, 48
                  c.nop
                  srl          s11, s10, s10
                  andi         a4, s10, -1294
                  c.add        a3, s9
                  and          tp, s6, s10
                  c.add        s4, t4
                  slti         s1, s10, 1654
                  mulh         zero, s6, s6
                  c.nop
                  ori          s8, a0, -238
                  c.xor        a3, a0
                  slti         t0, s3, 33
                  c.mv         a7, s8
                  c.and        a0, s0
                  c.lui        s1, 1
                  c.add        s6, s6
                  xori         a0, zero, 694
                  c.addi       a6, -1
                  sltiu        a7, a3, 1035
                  xor          gp, tp, t0
                  lui          s7, 590177
                  xori         s10, a4, 1753
                  slt          ra, sp, t1
                  c.andi       a4, 21
                  or           a7, s6, s1
                  ori          t5, zero, -115
                  xori         t6, ra, -246
                  remu         a2, a6, a7
                  c.slli       gp, 20
                  slti         s5, t1, 813
                  sll          gp, a6, s5
                  mulhu        gp, t3, a1
                  rem          s6, ra, a1
                  mulhsu       ra, s8, gp
                  c.or         s0, s0
                  c.andi       a3, -1
                  c.add        a2, sp
                  addi         s7, t1, 1179
                  mulhu        s8, s5, t4
                  andi         a5, s1, 112
                  ori          s3, sp, 232
                  ori          s10, a3, 1213
                  c.nop
                  div          a6, t1, s3
                  mulhu        t4, zero, s11
                  c.addi4spn   a3, sp, 352
                  and          t2, a3, a6
                  c.xor        a2, a3
                  c.add        a7, t3
                  c.xor        a3, a2
                  c.addi16sp   sp, 288
                  sll          a3, s10, s8
                  divu         a5, t4, gp
                  c.srai       s1, 2
                  c.addi4spn   s0, sp, 1008
                  c.xor        s1, s1
                  sltiu        t4, a1, -825
                  or           s8, s11, t0
                  sll          s5, gp, a5
                  c.srli       s0, 15
                  or           a0, s8, t3
                  c.li         tp, 10
                  mul          a2, a6, s11
                  rem          s3, t5, a6
                  c.or         a2, a4
                  srl          t5, s2, t1
                  and          gp, a3, tp
                  c.add        s1, a3
                  rem          s8, a0, s2
                  add          a0, t6, t4
                  srli         t5, s3, 16
                  rem          a6, a1, t4
                  c.srli       s1, 21
                  and          a4, tp, a0
                  c.or         a4, s0
                  c.mv         s8, s3
                  mulhu        s0, t4, s1
                  add          s6, s5, t3
                  srli         t6, s0, 23
                  sra          s7, s3, t4
                  addi         s11, a7, -1314
                  sltiu        tp, ra, 34
                  c.srli       s1, 21
                  srli         s4, s1, 22
                  slt          a0, a2, s3
                  c.slli       t0, 14
                  srl          a7, s5, t4
                  c.addi4spn   a5, sp, 752
                  xor          a6, zero, s10
                  sub          s4, t1, a3
                  sltu         s10, t0, a4
                  c.or         s0, a2
                  add          s1, s9, gp
                  sra          s4, s6, a3
                  mulh         a7, a7, s11
                  c.nop
                  slli         s5, gp, 19
                  xor          t6, t4, t4
                  slli         t1, sp, 4
                  auipc        a3, 407332
                  slli         s0, a5, 29
                  sll          t2, t5, s7
                  mulhu        gp, s11, s5
                  sltu         a0, zero, s11
                  c.add        ra, a0
                  c.srli       a4, 12
                  c.srli       a2, 26
                  srai         s1, s6, 19
                  sra          a4, ra, a2
                  c.addi4spn   a4, sp, 432
                  xori         tp, t2, -777
                  c.srli       a2, 19
                  slt          s6, s2, s7
                  auipc        s10, 102755
                  xor          a6, a1, t5
                  c.srai       a3, 31
                  sll          t4, a2, zero
                  c.lui        t4, 30
                  c.srli       s0, 12
                  sub          ra, s7, s7
                  c.lui        s6, 10
                  remu         s10, ra, a7
                  sra          t4, a6, t2
                  slti         t1, sp, -36
                  c.xor        a5, a5
                  c.nop
                  c.mv         s2, a1
                  srli         s4, s11, 11
                  auipc        s0, 955870
                  c.srli       a2, 21
                  or           ra, t0, s8
                  sltu         ra, s9, t6
                  c.sub        a4, a0
                  c.addi       s8, -1
                  lui          a4, 35828
                  div          s5, a3, s1
                  and          t2, s10, gp
                  c.addi       s1, 4
                  c.mv         s4, t0
                  srai         a4, s9, 17
                  srl          t5, a3, a1
                  c.addi4spn   a3, sp, 160
                  c.or         a0, s1
                  xori         s8, s11, 1731
                  c.lui        s11, 8
                  add          a4, t6, t5
                  c.addi4spn   s0, sp, 416
                  mulh         s4, a0, a1
                  c.lui        t5, 25
                  ori          t0, s6, -2026
                  c.srai       a5, 14
                  mulh         sp, ra, a4
                  c.mv         gp, s1
                  mulh         zero, sp, a3
                  c.addi16sp   sp, -16
                  add          s5, s1, s8
                  and          a2, t2, s0
                  add          zero, s4, a5
                  mulhsu       zero, a6, s9
                  c.mv         s11, s0
                  addi         tp, s3, 782
                  c.srai       a2, 5
                  rem          s0, t4, t6
                  xor          t4, s1, s1
                  sra          tp, s9, a7
                  slti         zero, t1, 1773
                  mulh         t6, a5, t5
                  div          a6, t6, s11
                  sltiu        t6, s11, 689
                  c.sub        a3, a1
                  slti         a6, s0, -1312
                  c.xor        a0, a4
                  c.xor        s0, a3
                  c.addi4spn   s0, sp, 160
                  mulh         t0, s3, t1
                  andi         t5, s3, 624
                  auipc        a6, 109629
                  slti         sp, t5, 1382
                  mulhsu       tp, a6, s2
                  c.or         a2, a1
                  sltiu        s5, t3, -108
                  divu         a7, zero, s5
                  sltiu        s11, sp, 451
                  rem          t4, s4, s1
                  c.andi       a3, 12
                  c.addi16sp   sp, 304
                  c.and        a5, a3
                  c.or         a5, a2
                  remu         s6, sp, s7
                  c.xor        a2, a4
                  mulhu        a6, s2, a0
                  xori         s1, s4, 1512
                  srli         s11, s4, 22
                  srai         s4, s0, 24
                  lui          a7, 65129
                  xor          t0, s6, t3
                  sltu         a6, a0, a3
                  sra          s7, s2, sp
                  slt          s8, s3, s0
                  nop
                  c.srai       a5, 5
                  ori          a0, t4, 339
                  sltu         a4, t3, tp
                  c.addi       s7, -1
                  srli         a3, a4, 7
                  xor          s7, zero, s5
                  c.addi       a7, 13
                  add          sp, s8, s2
                  auipc        s1, 788431
                  add          zero, zero, sp
                  addi         ra, s3, 1126
                  nop
                  slli         s10, a5, 5
                  srli         gp, s6, 24
                  mulhu        a4, a2, s4
                  slt          tp, s6, a3
                  slli         a3, a1, 5
                  c.mv         a0, s9
                  srli         sp, s8, 28
                  divu         t4, ra, s9
                  sub          s8, s10, s1
                  divu         zero, s8, t0
                  auipc        zero, 101027
                  c.li         ra, 29
                  c.and        a5, a1
                  add          tp, a0, ra
                  c.srli       a5, 29
                  remu         t0, s9, s5
                  c.srli       a4, 28
                  mulhsu       s6, a5, a0
                  addi         a5, a4, 259
                  slli         t0, s0, 4
                  mulhsu       s7, s9, t6
                  c.or         a4, a1
                  addi         a2, a5, -71
                  slli         gp, a6, 27
                  sub          s6, a7, t0
                  c.addi       t4, -1
                  c.addi       sp, -1
                  mulhsu       s1, s7, s0
                  sub          s6, s10, tp
                  c.sub        s0, a0
                  slt          t0, a4, a0
                  c.mv         a5, s7
                  mul          s2, s7, a6
                  add          zero, s1, t1
                  c.lui        t2, 16
                  and          s7, s8, s3
                  c.nop
                  xori         a5, s4, -1322
                  mul          t5, zero, a0
                  c.mv         tp, s1
                  c.mv         a7, s11
                  srli         t5, s1, 10
                  srai         s3, s5, 24
                  c.lui        a4, 16
                  mulhu        a2, s6, a3
                  rem          s3, t0, s4
                  nop
                  c.andi       a2, 16
                  srl          s1, s2, s0
                  c.addi4spn   a2, sp, 288
                  c.mv         s2, gp
                  slli         s7, a7, 14
                  mul          t1, s4, s10
                  c.and        a5, a1
                  c.addi       t6, 30
                  c.srli       a5, 19
                  nop
                  slli         t0, a3, 21
                  sra          a4, a5, s5
                  mul          t1, t6, s11
                  div          s1, t4, a7
                  remu         s8, s8, t2
                  sub          s4, s9, t5
                  c.slli       s11, 4
                  c.and        a4, a0
                  divu         tp, a3, a5
                  or           s3, s1, s6
                  c.sub        a2, a0
                  addi         s8, t5, 390
                  c.nop
                  c.sub        a0, a3
                  sltiu        ra, a1, -1059
                  srli         s8, ra, 25
                  c.addi       a2, -1
                  andi         t6, t5, -301
                  mulhu        tp, a2, a1
                  div          s10, tp, a6
                  c.addi16sp   sp, 240
                  c.add        a2, t4
                  srl          t2, t6, tp
                  c.and        a0, s0
                  andi         t5, s6, 99
                  xori         t6, a7, -1514
                  rem          a6, s5, a2
                  c.addi4spn   a0, sp, 848
                  mul          s4, a6, a3
                  srl          ra, t6, s1
                  c.addi       t0, 8
                  c.and        a4, a1
                  mulhu        t1, s0, a7
                  xor          a6, s8, s11
                  remu         t6, a5, t4
                  c.xor        s0, s1
                  xori         s8, s1, -1374
                  c.or         s1, a2
                  c.mv         t6, s10
                  mul          ra, tp, t4
                  nop
                  div          t1, s2, s5
                  c.addi4spn   a3, sp, 192
                  c.xor        s1, a4
                  auipc        s2, 968537
                  sra          t4, tp, a2
                  c.add        t2, sp
                  slt          s5, s8, tp
                  sltiu        s2, s3, -1752
                  c.andi       a4, -1
                  c.lui        t0, 31
                  c.srli       a0, 11
                  ori          s5, s8, -1216
                  srl          a6, a0, s4
                  c.xor        s1, a3
                  c.slli       a6, 5
                  c.and        a2, a1
                  addi         t4, t3, -350
                  sra          a6, s4, sp
                  addi         s1, t4, 39
                  div          s10, a2, s4
                  c.sub        a3, a5
                  ori          s0, a3, -79
                  and          s3, tp, a6
                  c.or         a3, a3
                  c.addi16sp   sp, 208
                  add          s11, tp, s2
                  c.slli       a0, 27
                  addi         a2, a0, -1899
                  mul          gp, a7, gp
                  srai         s4, zero, 15
                  ori          t0, t4, -1959
                  sra          s10, a3, s5
                  sll          s4, zero, t6
                  mul          zero, a6, t6
                  rem          s4, s7, sp
                  xori         s7, t6, 151
                  div          s11, s2, a6
                  slli         t6, s0, 0
                  srli         a4, s11, 20
                  c.srai       s0, 16
                  c.addi       a2, 24
                  sltiu        s0, t2, -803
                  srli         tp, gp, 16
                  nop
                  div          s4, t1, t5
                  sra          a6, t6, s11
                  sll          a4, t4, a7
                  c.srai       a4, 11
                  lui          a5, 606626
                  sub          a6, t6, t1
                  c.mv         t2, a6
                  lui          s11, 973410
                  lui          s4, 395053
                  srl          sp, tp, a3
                  c.and        a3, a2
                  c.mv         t1, a0
                  nop
                  add          a7, s1, t0
                  sub          t0, a2, ra
                  mulh         a0, a4, t3
                  c.srai       a0, 3
                  and          t4, s5, a5
                  andi         a6, tp, 900
                  c.sub        s1, a1
                  c.li         s1, 4
                  rem          s3, a0, a3
                  c.andi       a2, 7
                  add          t6, t6, s3
                  c.sub        s1, a3
                  srai         sp, s6, 30
                  c.xor        a2, a0
                  srl          s2, s0, a2
                  c.nop
                  mul          gp, s4, a0
                  c.andi       s0, 15
                  slti         a6, a0, -1276
                  mulh         t4, t5, t0
                  c.slli       s1, 30
                  addi         zero, a3, -739
                  add          t5, s4, t1
                  c.add        t0, t1
                  sltu         t5, t0, t1
                  c.lui        t5, 9
                  mulh         t4, t6, a6
                  mulh         t0, a3, s9
                  c.or         a3, a1
                  sll          t1, t0, t2
                  c.andi       a5, -1
                  c.addi4spn   s1, sp, 352
                  c.srli       a4, 21
                  nop
                  c.addi       s5, -1
                  and          s4, t4, s0
                  xori         s0, a3, 1598
                  c.mv         t0, s7
                  slt          a2, a4, t4
                  xor          t1, a1, ra
                  sltiu        t6, s10, -261
                  c.addi       s0, 5
                  andi         s1, t4, -1858
                  lui          s6, 417762
                  xori         a3, a3, 2038
                  srl          s10, a6, s3
                  c.add        s6, t1
                  c.or         a0, s1
                  ori          a6, t1, -1539
                  c.mv         s10, s0
                  divu         s10, s3, t2
                  c.li         t4, 7
                  xor          s5, a5, t3
                  slli         a5, sp, 20
                  div          s11, s9, t6
                  c.and        s1, a3
                  ori          s3, sp, -1312
                  c.andi       a5, -1
                  mulhu        tp, gp, ra
                  srai         t5, s0, 30
                  c.slli       t4, 3
                  sub          a4, s0, s10
                  c.lui        s7, 16
                  addi         a2, t3, -365
                  c.add        s6, t3
                  ori          tp, s2, 1171
                  remu         s5, s11, s11
                  c.add        gp, tp
                  c.xor        a0, a0
                  c.srli       s1, 28
                  slti         t2, tp, -1163
                  c.xor        a3, a1
                  mulh         s6, tp, a6
                  c.or         a5, a0
                  ori          s7, s4, 1838
                  srai         t6, tp, 8
                  ori          a7, a3, -1619
                  rem          t0, s10, s6
                  ori          s5, t5, 1733
                  mul          a7, s8, s6
                  auipc        a7, 812006
                  and          s11, s7, s6
                  slti         s4, a2, -1078
                  c.addi16sp   sp, 80
                  sltiu        t0, sp, 1426
                  sll          a6, s1, a4
                  nop
                  mulhsu       s7, s11, a1
                  ori          a7, t2, -504
                  and          t5, ra, a7
                  c.addi4spn   a4, sp, 800
                  c.sub        a2, s0
                  sltiu        a5, s0, 1589
                  remu         t0, t5, t6
                  srli         s2, s2, 29
                  mul          s6, s0, s5
                  andi         s1, t1, 714
                  sub          t6, t2, s3
                  c.srai       a5, 8
                  slt          t0, t2, gp
                  ori          s8, t3, -367
                  c.lui        s0, 7
                  c.mv         ra, t6
                  srl          s3, s5, s7
                  slt          a2, s11, s3
                  srli         t6, s7, 18
                  c.li         s7, 5
                  remu         a2, a0, t5
                  or           a0, s11, t2
                  andi         sp, s8, -1369
                  c.srai       s0, 28
                  slti         s3, gp, -1681
                  sltu         t2, t6, t1
                  slli         s4, t0, 1
                  c.nop
                  slti         t5, a0, 619
                  sll          t4, a2, t4
                  c.andi       a5, 25
                  sra          a4, s4, tp
                  xori         a6, s11, -650
                  andi         t6, sp, -1396
                  c.andi       a4, -1
                  c.sub        s1, a2
                  c.andi       a5, -1
                  slli         t4, tp, 22
                  andi         gp, gp, 1798
                  add          s7, s6, a4
                  sub          sp, s7, a2
                  mulhu        s11, a4, s0
                  srai         t0, a5, 23
                  andi         t0, ra, -1298
                  slti         tp, s6, 711
                  c.slli       ra, 31
                  c.andi       a0, 9
                  or           a4, gp, a7
                  slt          zero, a2, s11
                  c.addi16sp   sp, -16
                  sltiu        t4, zero, 2009
                  addi         a2, a4, 2016
                  sub          s7, s2, s5
                  mulh         tp, s5, s11
                  ori          a2, a3, -1054
                  and          s7, s1, a3
                  auipc        t5, 499753
                  mulhsu       a7, t5, s6
                  c.slli       s0, 18
                  add          a3, tp, s2
                  slli         t4, a6, 2
                  sltu         s7, gp, s2
                  c.srli       a0, 15
                  remu         t4, s9, s1
                  xori         gp, a5, -656
                  c.slli       s7, 19
                  srli         a4, a5, 10
                  divu         s3, s1, s8
                  slt          tp, s8, ra
                  slli         a2, a3, 4
                  c.srli       s1, 14
                  mulhu        s1, s0, t4
                  auipc        s0, 169808
                  xori         s11, s9, 85
                  mulhsu       s4, t5, s7
                  c.add        s0, a4
                  xori         t0, a3, 728
                  div          t0, s11, a5
                  sub          a6, s8, ra
                  c.addi4spn   a3, sp, 576
                  srai         t2, a1, 6
                  c.nop
                  mulh         t5, t6, s10
                  c.sub        a5, a0
                  c.lui        a7, 15
                  or           s3, tp, s2
                  add          a0, tp, s7
                  c.addi       a3, 8
                  remu         t2, a4, t3
                  xor          a2, s8, a5
                  c.li         t1, 4
                  c.addi4spn   s1, sp, 560
                  c.slli       s11, 29
                  or           a5, t5, t6
                  div          t6, s4, t0
                  c.addi16sp   sp, -16
                  mul          s0, t5, s5
                  srai         t0, a6, 21
                  addi         a2, t3, 909
                  mul          s6, t6, a3
                  c.addi16sp   sp, -16
                  c.addi       s11, 27
                  or           tp, s0, s10
                  remu         a7, t3, s9
                  sltu         sp, tp, s0
                  c.and        a4, a4
                  sltiu        s5, tp, -335
                  c.li         t5, -1
                  sub          a6, s1, a2
                  slli         s8, t4, 26
                  c.or         a3, a5
                  rem          a7, t3, t3
                  auipc        t2, 26461
                  mul          s7, s5, s9
                  xor          t2, sp, a4
                  c.slli       a7, 4
                  slli         s2, sp, 29
                  nop
                  add          s11, gp, s9
                  sra          a2, gp, t6
                  c.lui        s3, 25
                  c.nop
                  ori          s8, s3, 76
                  mulhsu       s11, s8, t2
                  c.nop
                  slt          a5, t6, ra
                  c.nop
                  slli         t0, t0, 3
                  andi         s8, a0, -218
                  sltu         s11, t1, s2
                  lui          t5, 1023895
                  rem          s4, s8, a3
                  xor          tp, s4, a0
                  slti         s6, a5, -743
                  c.xor        a0, a5
                  c.sub        a4, s1
                  srai         t5, t1, 13
                  nop
                  c.mv         s5, s9
                  nop
                  ori          s8, s5, 1049
                  c.andi       a2, -1
                  c.srli       a2, 8
                  andi         t0, a0, 1803
                  mulhu        s4, a5, tp
                  c.slli       a2, 14
                  c.addi16sp   sp, 416
                  c.slli       s11, 13
                  c.li         s0, -1
                  slli         a0, zero, 6
                  xori         a6, s7, 1315
                  mulhsu       a0, s3, gp
                  c.srli       a3, 20
                  or           a2, a6, t4
                  c.addi4spn   a5, sp, 992
                  c.srai       a0, 30
                  xori         gp, s8, -1757
                  mulhsu       s1, sp, s4
                  div          s11, s3, sp
                  c.or         s1, a2
                  auipc        s6, 855328
                  c.srai       s1, 7
                  mulh         s6, s10, ra
                  ori          s0, s0, -1484
                  sltu         t5, s2, s8
                  rem          zero, t3, a1
                  c.lui        t6, 12
                  and          sp, gp, s5
                  c.sub        a0, a3
                  mulhsu       a4, t3, s0
                  andi         s3, s9, 752
                  srai         s1, s6, 12
                  c.andi       a3, -1
                  auipc        t5, 601719
                  srl          s4, t1, t6
                  slt          a3, a5, zero
                  xor          t1, s5, zero
                  c.addi4spn   s1, sp, 16
                  c.or         a3, a2
                  c.add        s5, a3
                  c.mv         s8, s10
                  or           a7, s0, a7
                  c.addi       s7, -1
                  srl          a6, s6, sp
                  mulhsu       s4, zero, s9
                  and          a6, s5, t2
                  srli         zero, tp, 22
                  nop
                  mul          s3, gp, t0
                  addi         s1, a4, -1225
                  ori          s5, s3, -891
                  and          t4, t6, t5
                  addi         s6, s11, 1771
                  rem          a4, tp, s2
                  sltu         s6, a6, s1
                  c.nop
                  c.srli       a5, 11
                  add          gp, s3, s6
                  addi         s8, s4, -1476
                  srl          s3, s6, a1
                  remu         sp, t5, t0
                  c.mv         a2, t3
                  or           s7, s5, s7
                  c.srai       a4, 4
                  rem          a5, a3, s11
                  or           a5, a0, sp
                  mulh         a7, a6, s5
                  auipc        a5, 930055
                  c.sub        s1, a5
                  auipc        a2, 879267
                  c.lui        gp, 12
                  sub          a7, t5, s1
                  c.srli       a3, 27
                  divu         a5, zero, s11
                  and          a0, a1, a6
                  sll          s1, t4, s7
                  auipc        t6, 676669
                  c.lui        a3, 20
                  or           a0, s11, t3
                  c.lui        gp, 4
                  c.sub        a0, a1
                  sra          sp, t0, s7
                  lui          t5, 970820
                  c.or         s1, a4
                  c.addi4spn   a0, sp, 720
                  nop
                  c.slli       s4, 1
                  xori         s1, a0, 379
                  c.addi       ra, 19
                  nop
                  c.srli       a0, 20
                  c.addi4spn   a0, sp, 816
                  c.slli       a5, 27
                  or           zero, s1, a1
                  c.mv         s4, a4
                  c.slli       a3, 8
                  mulh         s5, s4, t5
                  c.li         s6, 13
                  srai         t4, s5, 30
                  srl          ra, s9, a1
                  divu         s6, a3, s9
                  and          s3, gp, s7
                  divu         a7, gp, s7
                  c.addi16sp   sp, 80
                  mul          zero, ra, t4
                  c.mv         t2, a0
                  c.mv         a3, a0
                  srli         tp, s2, 13
                  sub          s11, s2, t2
                  sra          ra, s10, t3
                  rem          gp, t2, a2
                  slti         sp, s8, -1504
                  c.addi4spn   s0, sp, 288
                  slti         s11, t2, -430
                  slli         t1, s4, 28
                  c.mv         s7, s3
                  and          s1, s3, s8
                  andi         t0, s3, -657
                  and          a0, s7, s10
                  c.or         a0, a4
                  slti         a7, s11, 351
                  mulhu        zero, a2, a0
                  c.mv         s2, a0
                  srai         t6, a0, 27
                  c.and        a4, s1
                  c.li         t2, 7
                  mulhu        s1, s7, t1
                  sltu         a7, t4, s0
                  c.srai       a2, 8
                  c.xor        s0, s1
                  c.or         a2, a3
                  c.lui        ra, 29
                  sltiu        a2, s11, 326
                  mulhsu       t1, s7, s9
                  sltu         a4, a4, t5
                  c.nop
                  slti         a3, s10, -1561
                  c.and        a4, a1
                  c.srli       a5, 17
                  ori          s1, t0, -1434
                  c.andi       a0, 8
                  div          a4, t0, a3
                  sra          tp, s5, t0
                  c.addi       a2, -1
                  c.andi       a3, 7
                  sltu         t5, s2, s3
                  c.xor        s1, a2
                  c.srli       a0, 18
                  c.srai       a2, 29
                  divu         t1, t4, t0
                  c.li         a3, -1
                  slli         t6, s4, 9
                  divu         t5, a4, tp
                  addi         a7, s2, -804
                  c.srai       a5, 20
                  c.nop
                  remu         gp, t2, a4
                  and          s10, s1, a0
                  remu         t5, s0, sp
                  c.lui        s6, 16
                  divu         s2, t6, t3
                  mulhu        gp, a3, s5
                  srai         t4, s0, 15
                  nop
                  c.and        a2, a1
                  c.sub        s1, a0
                  c.addi4spn   s0, sp, 784
                  c.li         a4, -1
                  srli         s3, s7, 25
                  c.addi16sp   sp, 384
                  c.addi4spn   s1, sp, 576
                  c.or         a5, a4
                  and          s10, s10, t1
                  andi         t0, s2, -1442
                  sll          s4, t1, t1
                  c.andi       a5, 6
                  div          a5, s3, s5
                  c.and        s1, a3
                  srli         s5, s1, 17
                  slti         a7, s6, -1952
                  ori          s1, a4, 812
                  c.nop
                  c.xor        a4, s0
                  c.sub        s0, s1
                  xori         a2, t0, 617
                  mulhsu       s3, t5, a1
                  c.srai       a4, 28
                  mulhsu       a6, t5, s7
                  rem          s0, gp, gp
                  c.addi16sp   sp, -16
                  c.nop
                  mul          a4, a4, s7
                  ori          s8, a0, -1092
                  nop
                  mulhsu       a5, a6, t2
                  add          a2, s2, s8
                  mulhsu       a7, s3, s6
                  c.and        a4, a4
                  c.srli       s1, 23
                  c.xor        s1, s0
                  c.slli       t1, 2
                  c.or         s0, s0
                  slt          gp, s9, sp
                  c.slli       sp, 27
                  and          t4, s1, s7
                  nop
                  sltiu        sp, tp, -1635
                  rem          ra, a2, s2
                  slt          a4, t2, s0
                  ori          s6, s2, 890
                  nop
                  slli         t1, a0, 1
                  c.xor        a0, s1
                  mul          t4, s11, ra
                  sltu         zero, a6, t4
                  srli         t5, t4, 6
                  xori         a3, a2, 1520
                  addi         s1, ra, -2038
                  sra          t6, ra, gp
                  srl          a7, t2, t4
                  srli         t4, s2, 3
                  slti         a3, a0, 1552
                  slt          t5, a2, s5
                  xori         s0, s8, -43
                  div          tp, s7, t1
                  sltu         gp, s1, t1
                  c.slli       tp, 15
                  sltiu        gp, s9, -1987
                  c.addi4spn   s0, sp, 48
                  c.srli       a5, 26
                  xor          a3, s0, a5
                  slt          a2, t3, a0
                  mulh         zero, s4, gp
                  sltiu        sp, s1, 1750
                  or           t2, s5, a2
                  mulhsu       gp, s7, a6
                  c.srli       a2, 19
                  c.addi16sp   sp, 336
                  c.nop
                  mulh         ra, s11, t4
                  srl          sp, a0, s1
                  or           a0, gp, a0
                  srai         s8, t5, 27
                  c.or         a0, a2
                  srai         gp, gp, 15
                  c.or         a4, s1
                  srli         a6, s11, 9
                  addi         a2, t2, -221
                  c.or         a4, a0
                  sll          t5, t4, s10
                  c.sub        s0, a3
                  andi         s11, a1, -988
                  sll          t5, s9, a1
                  srai         t5, a3, 24
                  c.add        gp, a0
                  rem          gp, t6, s1
                  c.xor        a5, a2
                  auipc        zero, 552991
                  nop
                  mulhsu       sp, s11, s1
                  c.add        t5, s1
                  c.xor        a5, s1
                  c.srli       a5, 18
                  srai         ra, t4, 16
                  slti         s8, t0, -425
                  c.nop
                  nop
                  srl          t5, t2, s7
                  andi         sp, s11, 1675
                  srli         a7, t0, 5
                  remu         s6, s5, gp
                  c.sub        a3, a5
                  mulhu        s11, t6, s4
                  c.xor        a5, a0
                  c.srai       s1, 18
                  c.li         t0, 2
                  slli         a7, s2, 8
                  div          s4, t6, a7
                  and          s11, t2, t0
                  slli         s0, s0, 0
                  srai         s10, a7, 9
                  srli         t4, s0, 11
                  addi         s3, a3, -509
                  sub          s3, a7, a6
                  sra          a6, s0, t5
                  nop
                  div          a3, s9, t4
                  c.mv         gp, tp
                  mul          a6, s3, sp
                  lui          t5, 530659
                  lui          a7, 893926
                  slli         t6, s0, 10
                  mul          s0, s1, t6
                  addi         a4, s1, 646
                  ori          t0, s3, -374
                  slt          ra, s9, s10
                  ori          s1, sp, -1459
                  slti         s0, s0, -818
                  slti         t4, tp, -976
                  srli         sp, s11, 23
                  addi         t6, t5, -40
                  add          sp, a3, a5
                  c.and        a5, s1
                  c.lui        a0, 23
                  nop
                  sltu         a3, zero, s6
                  sll          s1, s8, s2
                  remu         a7, a4, a4
                  c.addi16sp   sp, -16
                  c.nop
                  slli         t6, s8, 24
                  and          t6, t4, a6
                  c.addi4spn   a0, sp, 592
                  sll          s10, t3, s1
                  c.mv         s10, a3
                  c.sub        a5, a0
                  mulhsu       t0, gp, s1
                  sll          a3, tp, t4
                  c.srli       a2, 14
                  divu         a0, a7, zero
                  srli         s4, s4, 21
                  div          s0, s0, t6
                  c.xor        s1, s1
                  and          tp, a3, s11
                  add          ra, sp, s9
                  srai         t1, t0, 7
                  c.xor        a3, a2
                  nop
                  sltu         t1, a2, s6
                  mul          a6, tp, s6
                  sltu         zero, s6, a6
                  and          s10, a4, s4
                  slt          s4, t0, s11
                  srai         s1, s3, 1
                  xori         t5, t5, 107
                  slti         a7, s11, -1815
                  add          t4, zero, a4
                  c.sub        s1, a0
                  xor          a5, s3, sp
                  c.sub        s1, s1
                  or           s6, sp, s3
                  slt          s1, t1, a3
                  sll          a6, a0, s7
                  c.or         a2, a0
                  sltiu        t1, s2, -1938
                  srai         a3, s0, 29
                  remu         t1, s4, s5
                  c.sub        a3, a3
                  andi         s0, t5, -563
                  slti         s0, s4, 623
                  srli         s2, s4, 28
                  mulh         s5, gp, s11
                  srli         s4, a7, 12
                  xor          t4, s10, a7
                  andi         sp, ra, -1295
                  auipc        s7, 308830
                  nop
                  c.add        s2, s1
                  c.sub        a0, a5
                  div          a6, gp, s0
                  mulh         a6, t1, t2
                  div          t4, a0, ra
                  srli         sp, s6, 24
                  sll          ra, a5, s9
                  c.andi       a2, 7
                  lui          sp, 1036148
                  srli         zero, s1, 26
                  div          s8, s3, a7
                  c.addi16sp   sp, -16
                  c.li         s11, 2
                  c.andi       s1, 15
                  div          a2, s10, sp
                  c.or         a2, a5
                  auipc        t1, 554196
                  addi         a6, a7, 484
                  c.srli       s1, 17
                  rem          s7, a3, s6
                  xori         t5, a5, 2022
                  c.addi       sp, 1
                  c.srli       s0, 10
                  xor          tp, s11, t4
                  rem          gp, a3, s1
                  c.lui        s1, 29
                  srai         a3, a0, 4
                  mulhu        s4, a5, a5
                  rem          a4, a1, t6
                  sltiu        a4, ra, 51
                  lui          s2, 267470
                  remu         s4, s8, gp
                  srli         t4, s9, 16
                  slti         s4, s10, -1896
                  mulh         s3, s5, t4
                  c.and        s0, a4
                  c.lui        s1, 10
                  c.addi4spn   s1, sp, 64
                  divu         a6, t3, a5
                  c.addi       tp, -1
                  c.add        s7, s11
                  add          zero, a2, a2
                  c.srai       s0, 2
                  rem          s3, ra, s3
                  sltu         s11, s6, a6
                  nop
                  or           tp, a7, s5
                  c.srai       a3, 1
                  sltiu        tp, t2, -188
                  c.li         a3, 19
                  nop
                  c.sub        a2, s1
                  c.li         s0, 11
                  c.addi16sp   sp, -16
                  sll          t5, t3, t4
                  c.nop
                  divu         s10, a1, a1
                  c.add        sp, s6
                  remu         gp, zero, s10
                  sll          a2, t2, s10
                  srl          a6, t1, s7
                  sll          t1, t6, s11
                  c.srai       a5, 29
                  slli         s6, t4, 9
                  andi         a7, a4, 1698
                  divu         t2, s3, s11
                  sltiu        t4, t0, -1991
                  sra          t4, s9, t5
                  srl          t5, a3, a1
                  srli         t1, sp, 30
                  c.addi4spn   s0, sp, 832
                  mulhsu       t5, a3, s8
                  remu         t6, t5, a1
                  c.srai       a0, 2
                  div          a5, t0, a7
                  sra          tp, a7, t3
                  div          t5, s10, sp
                  c.andi       s1, -1
                  c.srli       a0, 27
                  addi         a2, t0, -1398
                  mul          s11, t4, a3
                  c.xor        s1, a1
                  or           s8, s4, t3
                  mulh         tp, a1, a0
                  srai         s7, a4, 3
                  div          s11, s9, t4
                  addi         t6, s4, 734
                  mulhu        s7, t0, t5
                  xor          tp, a4, s8
                  mul          s11, a5, s0
                  and          ra, t0, t0
                  sltiu        a6, t5, -314
                  c.mv         s8, t2
                  add          s5, gp, s7
                  sltu         a2, a5, s3
                  add          s3, gp, a2
                  srai         s8, a1, 5
                  c.add        gp, a3
                  xori         s5, t6, -1406
                  slti         a5, s3, -1291
                  slli         t4, s2, 21
                  c.srai       a5, 27
                  c.andi       a5, 6
                  mul          t5, s10, t2
                  c.or         a5, a2
                  c.add        a3, ra
                  xor          s3, t5, ra
                  c.lui        s1, 16
                  ori          s11, gp, 1620
                  c.sub        a2, s0
                  mulhsu       s1, a4, t0
                  or           t4, a5, ra
                  srl          s6, s9, a6
                  and          zero, s3, a2
                  andi         s11, sp, -1940
                  srai         t1, s7, 28
                  remu         s1, s3, a6
                  sltu         a4, a6, a6
                  c.addi4spn   a0, sp, 720
                  remu         s0, s2, t6
                  mulhsu       t2, s7, s8
                  sltu         t1, s1, t5
                  rem          a6, a6, a4
                  or           a6, a5, s9
                  mulhsu       a0, s5, a6
                  add          s4, s8, zero
                  sll          t1, s6, t0
                  and          a0, t4, sp
                  ori          s4, s11, 1115
                  c.and        s0, s1
                  slti         a2, t2, -1637
                  c.nop
                  nop
                  c.addi16sp   sp, -16
                  srli         a5, a7, 11
                  sll          s7, t2, a4
                  sll          t4, zero, s8
                  srl          a4, t5, s2
                  slt          s1, gp, s10
                  sltiu        a0, t1, -408
                  c.slli       gp, 11
                  mulh         a4, s7, s1
                  c.or         a5, s0
                  andi         s10, a7, -1630
                  c.sub        a5, a4
                  and          a7, t3, t0
                  sll          s10, a4, a6
                  c.addi4spn   a4, sp, 496
                  sltu         s11, a1, zero
                  c.srai       a0, 23
                  c.mv         a4, s9
                  c.slli       a2, 12
                  mul          t4, t6, s6
                  mul          a2, tp, a3
                  srli         t1, s1, 21
                  mul          s8, s2, s5
                  slli         s6, a3, 29
                  add          gp, a7, s8
                  sub          a0, a2, sp
                  mulhsu       t2, s4, a6
                  c.slli       t2, 4
                  lui          s1, 415552
                  c.sub        s0, a0
                  sra          t1, a2, s10
                  c.xor        a3, s0
                  slt          s0, s10, a6
                  c.mv         s4, sp
                  slti         s4, a7, -1588
                  divu         t2, s1, s0
                  sll          s8, t2, a4
                  sltu         s10, s4, s4
                  sll          s10, a0, s1
                  mulh         t0, a0, a0
                  nop
                  remu         s1, a7, t5
                  sra          t1, s1, a6
                  c.or         a4, a5
                  sra          sp, zero, tp
                  mulhu        t2, a0, s8
                  slt          t5, a6, a1
                  c.li         gp, -1
                  slti         a7, t5, 28
                  divu         s1, s0, sp
                  mulhu        s7, t4, sp
                  c.xor        s1, s1
                  mulhsu       gp, a6, t1
                  div          t6, s11, t1
                  addi         a2, gp, -1366
                  c.li         a7, -1
                  c.srli       a5, 25
                  sltu         s5, a0, ra
                  c.xor        a3, a1
                  remu         s2, tp, t2
                  remu         s11, s6, s6
                  c.addi4spn   s1, sp, 736
                  rem          a5, t1, s8
                  sub          t0, tp, t5
                  srl          a6, s9, s0
                  c.slli       gp, 28
                  c.or         s1, a3
                  c.addi       a2, -1
                  rem          t5, s7, s2
                  srl          a4, t1, a3
                  c.xor        a4, a5
                  lui          a6, 678476
                  mulh         a4, tp, gp
                  c.addi16sp   sp, 96
                  c.srai       s0, 25
                  divu         t6, s2, tp
                  xor          s1, s0, sp
                  sll          a4, a5, a2
                  srai         t1, t6, 29
                  sll          a4, s0, a4
                  nop
                  xori         s1, s9, 280
                  andi         a6, gp, 639
                  addi         s1, a7, -724
                  mulhsu       s5, t4, gp
                  ori          s0, s6, 1478
                  srai         gp, a5, 2
                  mulhu        a7, s1, s6
                  c.srai       a5, 2
                  slli         s7, tp, 7
                  nop
                  auipc        t1, 715022
                  div          t1, t6, t2
                  srl          a3, t4, s9
                  sub          s4, a7, a1
                  c.srai       a4, 3
                  ori          a6, a2, 1712
                  lui          t1, 699026
                  c.mv         s1, s2
                  c.and        a0, a5
                  rem          a2, t1, s3
                  xor          s1, s0, t0
                  srli         t6, t3, 1
                  sll          a4, sp, gp
                  and          a2, a3, a3
                  sltiu        t4, s10, 874
                  sub          sp, s4, t0
                  c.addi       tp, -1
                  c.addi16sp   sp, 160
                  lui          t5, 1032732
                  c.xor        a3, s0
                  addi         s1, s11, 1553
                  mulhsu       s2, t3, a5
                  c.slli       s4, 29
                  rem          s11, tp, t4
                  c.or         a3, a5
                  slt          s7, a4, a0
                  sub          s2, s4, s5
                  addi         a5, s7, -637
                  nop
                  addi         s2, a7, -1853
                  c.nop
                  sltu         s7, t6, s9
                  xori         t0, a7, -413
                  rem          t0, t4, s8
                  c.addi16sp   sp, -16
                  c.mv         t6, a4
                  c.xor        a2, a5
                  xori         a7, s8, 1338
                  c.slli       t4, 18
                  c.addi       a4, 9
                  sub          zero, a4, t2
                  c.addi16sp   sp, -16
                  ori          t4, t2, 1892
                  mul          gp, s10, tp
                  c.mv         tp, t4
                  c.sub        s1, a5
                  sltiu        t2, s7, -375
                  srl          a4, sp, gp
                  sltiu        s10, s10, -199
                  c.srli       a3, 30
                  c.sub        a5, a3
                  c.andi       s0, -1
                  c.add        t6, a7
                  auipc        a0, 1000561
                  c.mv         t5, s10
                  c.addi4spn   s0, sp, 496
                  sub          sp, s7, t2
                  sltu         s6, s3, s5
                  c.nop
                  addi         s8, t1, 1462
                  mulhsu       tp, s5, s5
                  c.andi       a2, -1
                  or           gp, s6, s3
                  sub          s7, a5, sp
                  ori          a3, s6, -42
                  c.and        a3, a2
                  c.or         a3, a3
                  sltiu        a4, t5, 292
                  c.nop
                  sltiu        a5, t6, -207
                  c.mv         t5, t6
                  c.addi16sp   sp, -16
                  remu         zero, a4, ra
                  c.addi       t6, 25
                  c.or         s1, a3
                  mulh         s6, s0, s8
                  slti         a4, s0, -954
                  lui          t4, 148075
                  mul          a6, sp, s11
                  sub          a0, sp, ra
                  srai         a0, a1, 8
                  slti         sp, ra, -1146
                  c.xor        a0, s1
                  slti         s11, s5, -143
                  andi         t0, s5, -1409
                  srli         sp, gp, 8
                  or           a7, t1, a5
                  rem          ra, s10, s11
                  sra          tp, ra, t5
                  c.add        a0, s11
                  ori          ra, s5, -851
                  mulhsu       sp, t6, ra
                  sll          zero, a0, a0
                  slti         s1, s4, -648
                  c.mv         sp, s0
                  c.andi       s0, -1
                  or           s2, s7, a6
                  or           s5, t5, ra
                  ori          s11, a4, -941
                  sra          a6, s11, tp
                  ori          s5, a4, -600
                  mulh         s6, s10, s6
                  slli         a2, s9, 30
                  rem          s2, s6, t4
                  rem          s7, zero, tp
                  remu         s7, a4, s5
                  mulhu        s5, zero, t4
                  c.mv         s1, s9
                  mul          t1, s5, a0
                  c.sub        a2, a1
                  divu         t1, s8, a7
                  and          s3, a7, s1
                  slti         a6, s0, 1975
                  sra          s7, a2, s6
                  auipc        a4, 1047141
                  divu         t5, t5, s1
                  c.andi       a2, 25
                  slli         s5, t1, 16
                  mulh         t5, s9, s3
                  c.sub        a5, a3
                  srl          s7, s2, t6
                  div          t4, a2, t5
                  rem          s1, s1, t6
                  c.and        a4, a2
                  auipc        s1, 81186
                  slli         t6, s2, 15
                  slli         s6, s2, 1
                  mul          t5, s4, s4
                  sltiu        s10, a1, 913
                  slli         s8, zero, 8
                  remu         s6, t3, t1
                  mulhu        t5, ra, a6
                  sltu         t5, t5, a3
                  slti         s0, a7, 391
                  or           t6, t1, t3
                  c.addi16sp   sp, 496
                  addi         t1, t0, -256
                  andi         a2, a4, 1084
                  ori          t6, a2, -471
                  c.mv         t6, t3
                  c.sub        s0, a3
                  mulhu        t0, gp, s0
                  slli         s11, a0, 14
                  andi         a5, a6, -797
                  c.srai       a3, 5
                  andi         t0, t1, 1206
                  or           s5, s1, tp
                  c.srai       s0, 9
                  sll          t4, gp, s7
                  mulhu        t5, t0, s5
                  srai         s4, s6, 1
                  c.and        s1, s0
                  srai         t5, ra, 18
                  srl          gp, s5, ra
                  c.srli       a0, 11
                  sltu         zero, t6, a2
                  srli         s7, gp, 0
                  lui          a4, 620369
                  c.srai       s0, 27
                  andi         s8, zero, -1209
                  slti         t5, tp, -1669
                  auipc        t1, 940186
                  mulh         t0, t4, s9
                  c.li         s4, 19
                  sub          sp, a0, t5
                  c.nop
                  div          a0, zero, zero
                  slti         a5, t0, -1574
                  slt          s0, t0, sp
                  srli         t1, gp, 8
                  c.addi4spn   a2, sp, 704
                  xor          a7, sp, t2
                  c.and        a0, a4
                  c.mv         t6, t3
                  add          s3, a3, a0
                  mulhsu       t2, a0, ra
                  slli         t1, zero, 7
                  c.sub        a0, a3
                  add          a5, a0, tp
                  addi         zero, s0, 2
                  divu         a3, t0, t4
                  c.addi4spn   a5, sp, 688
                  c.li         sp, 4
                  sltiu        s1, t3, -1171
                  sltiu        sp, s7, -338
                  xori         s10, t5, 1008
                  nop
                  xori         t5, zero, 1801
                  slli         a3, a4, 4
                  sra          s3, s11, s10
                  c.andi       a2, -1
                  c.srai       a4, 3
                  slt          s8, s3, s11
                  c.or         s1, a4
                  c.slli       a2, 15
                  c.nop
                  mul          a0, s9, sp
                  xori         s8, zero, 353
                  nop
                  auipc        s11, 536346
                  c.and        a5, a2
                  sub          t1, zero, a6
                  c.lui        gp, 13
                  nop
                  c.nop
                  sltu         a2, a6, s2
                  slli         a4, s2, 24
                  sra          s8, a7, s11
                  mul          t0, t6, t3
                  mul          gp, s1, s1
                  c.slli       a2, 19
                  sub          a7, s6, t2
                  c.or         s1, a5
                  c.nop
                  c.addi       ra, -1
                  srai         sp, a1, 4
                  c.xor        a0, s0
                  c.add        s8, s6
                  xori         s10, a6, -1984
                  srl          a0, t0, s10
                  sra          sp, a0, t3
                  slti         s11, t2, 632
                  add          t6, a5, s1
                  c.xor        a5, a1
                  slli         s0, s8, 31
                  auipc        s0, 436209
                  c.lui        s4, 7
                  mulhsu       s11, gp, s7
                  c.add        s3, s5
                  srl          tp, s9, a4
                  c.and        a4, a5
                  c.andi       a3, -1
                  mulhu        ra, s10, s11
                  and          s6, s1, t6
                  sra          a3, a7, a4
                  c.addi4spn   a2, sp, 544
                  andi         t4, t2, -407
                  c.mv         ra, ra
                  mulhu        s11, s1, a6
                  c.lui        t6, 6
                  c.addi16sp   sp, -16
                  sub          t4, ra, t3
                  or           tp, s0, s0
                  mul          s0, a7, t1
                  srl          s6, s2, t0
                  mul          a4, t1, s7
                  c.add        a6, a0
                  c.slli       s3, 22
                  sltiu        s1, a6, 1703
                  c.lui        a5, 4
                  sub          s1, sp, s7
                  srl          s5, s4, t3
                  c.li         s4, 24
                  mulh         zero, ra, s10
                  c.srai       a5, 13
                  sub          s8, s6, s1
                  c.addi16sp   sp, 256
                  mul          s3, a5, s5
                  slt          t1, t6, t4
                  c.lui        a0, 31
                  ori          t0, s2, 1141
                  srai         t5, s2, 10
                  c.li         a5, -1
                  c.andi       a4, -1
                  sltu         s5, sp, s3
                  c.srli       a5, 5
                  divu         a2, a4, gp
                  c.addi4spn   a3, sp, 64
                  mul          t2, s2, s6
                  mulh         a3, t2, sp
                  c.slli       a7, 25
                  c.lui        a0, 30
                  and          s1, s2, s3
                  ori          a7, a2, -744
                  srli         t2, s4, 6
                  or           s0, s3, s5
                  c.nop
                  c.xor        s1, a2
                  c.addi       a3, -1
                  sltiu        a0, s7, -1099
                  remu         a2, a5, s11
                  remu         gp, t2, a3
                  nop
                  c.li         s0, -1
                  slli         ra, s2, 17
                  c.mv         s11, t0
                  ori          s1, s1, 427
                  srai         t2, s11, 23
                  andi         s2, t3, -1035
                  srli         s8, a6, 26
                  mul          tp, t2, t4
                  andi         s4, a2, -1843
                  or           a7, a6, tp
                  xor          s8, s9, t2
                  c.add        ra, t3
                  sltiu        t1, t3, 385
                  c.slli       ra, 17
                  c.srli       a2, 26
                  sra          zero, s4, ra
                  mulh         s2, s5, s4
                  slt          s4, s8, s3
                  div          s5, t4, s4
                  c.addi       a6, -1
                  srli         sp, s11, 24
                  xori         sp, a6, 953
                  c.lui        a5, 28
                  c.lui        s2, 10
                  c.addi16sp   sp, -16
                  srl          s2, t0, t4
                  or           a2, t3, a5
                  and          t1, s6, a6
                  c.nop
                  c.or         a2, a4
                  c.sub        a3, a4
                  lui          t6, 152923
                  add          s2, a6, gp
                  div          a5, t0, t0
                  c.mv         s3, s4
                  c.mv         sp, t1
                  sltiu        s7, a1, -929
                  sub          t0, ra, t4
                  slli         a7, s2, 1
                  c.addi16sp   sp, -16
                  c.add        s10, a5
                  sltu         s11, t4, ra
                  c.addi4spn   s0, sp, 944
                  c.sub        a5, s1
                  c.addi       tp, 9
                  andi         s3, s7, 91
                  sltu         s6, a7, a7
                  slt          s3, s4, t6
                  sll          s10, t2, s11
                  c.lui        a3, 17
                  c.mv         s5, a1
                  c.srli       a5, 20
                  sll          s11, t0, a0
                  c.addi16sp   sp, 192
                  ori          t5, t3, 1557
                  slt          a3, a4, s2
                  c.and        a0, a5
                  c.add        s8, t6
                  c.mv         a6, a6
                  sra          a4, a7, a5
                  mulh         a2, a0, s1
                  c.mv         s8, a3
                  c.addi4spn   a0, sp, 208
                  c.mv         gp, s4
                  sltiu        t4, s6, 1852
                  c.srli       s1, 4
                  c.nop
                  srai         t5, a1, 18
                  c.and        a5, a0
                  c.addi       sp, 25
                  c.add        a0, s0
                  lui          s4, 347920
                  c.lui        s3, 13
                  nop
                  c.addi16sp   sp, 208
                  ori          s3, t4, -309
                  c.nop
                  divu         s2, a3, s7
                  sra          tp, zero, a1
                  srai         s11, tp, 1
                  c.li         s0, 20
                  divu         t1, a0, a2
                  divu         s4, s5, t2
                  c.srli       a5, 16
                  slli         t5, t4, 3
                  add          s0, a2, tp
                  c.nop
                  add          s10, s4, s7
                  c.li         tp, -1
                  c.li         s0, 27
                  sltu         a3, s0, t3
                  sltu         s1, s7, t1
                  c.mv         a0, gp
                  mulhsu       a3, a6, t4
                  srli         s4, ra, 9
                  c.li         a6, 12
                  c.slli       s2, 7
                  c.and        s0, a3
                  c.add        t1, s11
                  c.mv         t4, a7
                  sra          s11, s3, zero
                  div          a3, t1, s3
                  addi         a3, gp, 1027
                  c.addi       s10, 8
                  c.slli       s3, 20
                  c.sub        a0, a3
                  mul          s11, a5, s9
                  mulh         a2, t5, t1
                  sra          s4, s0, a0
                  auipc        s5, 785276
                  add          a5, s6, s9
                  c.add        t2, t1
                  c.add        a4, t2
                  lui          sp, 671684
                  ori          a7, a1, 1917
                  c.slli       ra, 21
                  add          a2, a7, gp
                  mul          a0, s1, t6
                  c.or         a4, s0
                  divu         s3, t4, sp
                  c.lui        t4, 16
                  or           s4, t2, s11
                  remu         s7, s5, s9
                  srai         s2, tp, 14
                  c.andi       a2, 21
                  or           s6, a2, a2
                  nop
                  sll          zero, a2, a4
                  c.li         s10, 11
                  ori          s4, a4, 1024
                  sll          s4, a0, t0
                  c.addi       a4, -1
                  c.andi       a5, -1
                  c.addi       t0, -1
                  and          s11, a2, zero
                  c.li         s3, -1
                  c.li         s0, -1
                  c.mv         s8, t3
                  lui          s3, 445164
                  c.andi       s0, -1
                  add          ra, zero, sp
                  sll          s6, a2, a2
                  c.addi       t4, -1
                  nop
                  c.srli       s0, 5
                  and          t1, a7, a6
                  slt          t1, s8, s2
                  mulhu        s6, s10, zero
                  c.addi       sp, 1
                  c.or         a5, s0
                  remu         a6, s6, s2
                  c.srli       s0, 4
                  c.sub        a2, a3
                  nop
                  or           sp, t4, sp
                  c.andi       a3, -1
                  slti         a7, a5, 1576
                  xori         s7, t4, 2001
                  c.andi       s1, -1
                  c.sub        a0, a3
                  c.addi       s11, 10
                  srai         tp, gp, 2
                  c.and        a3, a2
                  mul          t0, t6, ra
                  c.li         s10, -1
                  srli         t0, a7, 29
                  c.srai       a5, 25
                  sll          t2, s7, s1
                  lui          s1, 311951
                  slti         s10, t0, 1061
                  c.lui        tp, 19
                  div          s2, a6, s8
                  lui          t6, 819768
                  c.srai       s1, 15
                  auipc        s0, 350713
                  xor          a3, s0, s10
                  c.add        t4, s1
                  c.mv         a4, a5
                  lui          a7, 999237
                  mulhu        s0, t0, a7
                  c.lui        s11, 20
                  c.sub        s0, s0
                  remu         s3, t0, sp
                  xori         t4, a1, 1059
                  c.lui        a5, 15
                  and          t5, sp, a1
                  c.sub        a4, s0
                  slti         t4, t3, -346
                  c.lui        a2, 5
                  srl          s11, s11, t4
                  mul          a7, a4, s6
                  and          s10, zero, s1
                  remu         s5, a2, gp
                  c.add        s3, gp
                  c.add        s4, s3
                  c.srai       a0, 19
                  slti         t1, a2, 1795
                  c.add        gp, t3
                  slt          t4, s2, t5
                  c.li         t6, -1
                  srai         a2, tp, 27
                  c.and        a0, s0
                  srli         s6, sp, 21
                  divu         a4, t6, a7
                  c.nop
                  xori         s8, s9, 1332
                  slli         s5, t0, 18
                  sltu         t2, s2, s10
                  c.xor        s0, a4
                  div          t1, a2, a1
                  slli         ra, a1, 18
                  sub          gp, a7, a7
                  divu         a7, a0, t0
                  c.or         a3, a2
                  c.add        a6, a2
                  addi         a7, s3, -800
                  c.and        a2, a4
                  sltiu        t1, t4, -1526
                  xor          a2, s3, s5
                  or           s11, t2, s5
                  lui          s4, 14691
                  sltu         sp, s4, t1
                  c.andi       s0, 16
                  remu         s3, t0, a3
                  ori          a0, s5, 1365
                  xori         s7, a5, 1119
                  remu         gp, a6, s6
                  c.lui        s5, 13
                  andi         a6, a2, -709
                  c.or         a5, s1
                  c.mv         s2, s5
                  auipc        s4, 708400
                  remu         t4, t5, t1
                  c.or         s0, a1
                  srai         s6, tp, 28
                  c.srai       a0, 27
                  sra          a0, t6, s0
                  sll          s10, a2, s3
                  or           s7, t6, s10
                  auipc        s8, 457001
                  lui          s11, 789425
                  c.slli       a0, 2
                  remu         a0, zero, a2
                  c.mv         a5, a5
                  auipc        t2, 573935
                  c.sub        a2, a5
                  c.lui        a2, 21
                  c.sub        a0, a5
                  mulh         tp, a3, a2
                  c.srai       s1, 19
                  srli         s7, a4, 4
                  slli         s7, a5, 23
                  ori          s4, zero, -1660
                  c.li         s10, 30
                  c.nop
                  ori          s2, s10, -834
                  c.addi       s7, 4
                  c.add        s8, t4
                  slli         s2, a0, 29
                  xori         s3, t2, 162
                  srai         a0, a7, 21
                  c.sub        a3, a2
                  mulhu        ra, s11, ra
                  srai         t5, s11, 24
                  add          t0, t1, s2
                  srli         s8, a3, 2
                  addi         t1, s2, 276
                  c.andi       a4, -1
                  c.sub        s0, a4
                  ori          zero, s10, -34
                  c.andi       s0, 3
                  slti         s3, gp, -139
                  lui          t4, 579401
                  mulhsu       t0, zero, a7
                  sub          ra, t3, t3
                  c.addi4spn   a5, sp, 544
                  sub          t1, a6, a4
                  mulh         s3, t2, s0
                  c.add        a0, t4
                  div          s8, t1, ra
                  auipc        a4, 404266
                  and          a5, ra, a4
                  add          s11, a7, s10
                  srli         a4, t2, 12
                  c.xor        a3, s1
                  srli         s11, s2, 7
                  c.addi       s11, 30
                  c.or         s0, a3
                  srli         a5, s6, 11
                  mulhu        gp, s8, a0
                  mulhu        a6, a6, t5
                  sll          a0, s10, t4
                  slt          t1, tp, tp
                  c.addi       a4, -1
                  add          tp, s4, t1
                  ori          t6, t5, 945
                  c.lui        s4, 28
                  nop
                  addi         a6, t2, -1464
                  c.nop
                  sltiu        t6, s2, -264
                  auipc        a4, 305666
                  c.add        sp, s11
                  xor          a6, a2, s10
                  c.slli       s11, 2
                  and          a5, s11, a2
                  c.add        a6, s4
                  rem          s4, a2, s11
                  sra          zero, a7, a0
                  nop
                  slli         sp, s3, 25
                  sltiu        gp, t6, 389
                  c.srai       a4, 5
                  sll          t1, t2, s6
                  div          s3, s5, a6
                  mulh         a2, a6, s8
                  slt          tp, t2, a3
                  and          t0, s6, s7
                  sub          s7, t1, tp
                  c.addi4spn   a5, sp, 576
                  sub          s5, s8, t0
                  c.srli       a0, 26
                  mulhu        a3, ra, t0
                  ori          t1, s6, -2044
                  c.andi       a5, 11
                  or           t1, ra, a7
                  sll          ra, t2, t0
                  xori         s4, s9, 1027
                  sra          t6, a3, s3
                  c.mv         ra, tp
                  ori          t6, zero, 305
                  slt          s11, s9, s7
                  c.li         s4, 20
                  add          a6, s0, t0
                  sra          sp, zero, s4
                  xori         s5, s3, -1928
                  divu         a0, s2, a0
                  c.lui        t2, 13
                  mulh         zero, t2, s2
                  c.addi       ra, -1
                  mulhsu       s0, sp, s11
                  lui          t0, 862462
                  c.sub        a4, a3
                  auipc        s1, 42662
                  auipc        t2, 455954
                  sltu         a3, s0, a5
                  mulhu        a0, a7, a4
                  rem          a2, a7, t0
                  srai         sp, a5, 29
                  mulhu        s11, sp, tp
                  c.slli       s4, 21
                  mulhu        t4, a3, t2
                  mul          a4, s3, t1
                  divu         s11, s10, a3
                  nop
                  c.slli       s11, 3
                  c.srai       a2, 25
                  add          s11, a7, s10
                  mulhu        s8, t3, s10
                  srl          t4, tp, t5
                  c.andi       a0, 14
                  andi         t5, sp, 1151
                  divu         gp, s7, t4
                  c.xor        a5, s0
                  c.addi       t0, -1
                  c.mv         s10, s6
                  nop
                  c.or         a2, a4
                  lui          tp, 900409
                  add          zero, a0, zero
                  c.mv         s5, a5
                  auipc        s11, 315359
                  slti         zero, a7, -1673
                  rem          s5, a2, t0
                  add          a3, a0, a5
                  sll          s6, t0, a3
                  slti         t1, zero, -1612
                  c.addi4spn   s0, sp, 480
                  addi         a6, t1, 482
                  and          t0, s0, a1
                  c.andi       a4, -1
                  mulhsu       t0, a1, t2
                  andi         t4, a0, -927
                  c.li         t6, -1
                  sll          s2, s4, a6
                  sub          zero, a3, a4
                  slti         s10, a1, -915
                  rem          s4, a1, s7
                  c.mv         s11, s8
                  mulhsu       tp, a1, a1
                  xori         sp, gp, 706
                  c.xor        a5, s1
                  auipc        s11, 206974
                  c.slli       sp, 24
                  c.srai       s1, 24
                  c.addi16sp   sp, -16
                  c.nop
                  addi         a0, s0, -908
                  c.nop
                  xori         s0, s6, -671
                  c.sub        s1, a0
                  c.nop
                  div          t6, s9, t2
                  c.li         t0, -1
                  andi         t6, t6, -1221
                  srli         gp, gp, 3
                  remu         s0, s11, s1
                  sltu         gp, s5, a2
                  auipc        s4, 993948
                  mul          a3, a3, a7
                  slli         s1, a6, 15
                  or           s11, s8, ra
                  c.nop
                  divu         t5, a3, a2
                  and          a3, t3, s2
                  add          gp, s0, a6
                  mulh         a3, s1, s9
                  slti         s8, t1, 753
                  c.add        a0, gp
                  srai         a7, s4, 29
                  sra          a7, s1, t1
                  c.srai       a4, 8
                  c.slli       a0, 26
                  c.lui        a0, 23
                  lui          zero, 129881
                  divu         s4, a7, s11
                  xori         a6, s7, 1101
                  sub          a4, t0, a7
                  divu         ra, a3, gp
                  sll          t1, s4, a4
                  slti         ra, t1, 1376
                  or           t4, s10, tp
                  c.nop
                  sll          a5, t4, a5
                  srai         t2, t2, 24
                  slli         s1, a1, 6
                  sll          s6, s11, s9
                  c.addi       a3, -1
                  c.add        s2, t2
                  auipc        s11, 884420
                  div          s11, a2, s9
                  c.srai       s1, 27
                  xor          s3, a5, t0
                  c.or         s1, a3
                  c.mv         s8, a4
                  mulhu        a2, t2, t2
                  remu         s0, a3, a7
                  srli         s1, s1, 16
                  sltiu        s10, s5, -49
                  srli         ra, s3, 20
                  mulhu        s4, t3, s3
                  sltiu        t4, s5, 1427
                  c.lui        a0, 15
                  add          t4, s4, a3
                  and          t0, s9, s2
                  c.nop
                  srai         t0, ra, 24
                  or           t5, s11, t4
                  sltiu        t2, s8, -1113
                  c.slli       tp, 21
                  slt          s5, s11, t6
                  addi         sp, t6, 805
                  srl          s6, t0, a1
                  slli         s0, s7, 29
                  divu         s2, tp, a7
                  slli         s11, t2, 28
                  remu         a0, a2, s8
                  c.li         a7, -1
                  addi         a7, a1, 1275
                  c.srai       a0, 3
                  sltiu        a6, s9, -550
                  xor          s4, t5, s2
                  mul          s11, s7, s0
                  divu         t5, t2, t1
                  c.nop
                  divu         s7, a2, s3
                  mulhu        t5, tp, t2
                  lui          t5, 1042443
                  c.slli       a0, 13
                  c.addi16sp   sp, 416
                  c.addi       tp, -1
                  c.mv         a3, a6
                  c.mv         s7, s7
                  c.addi16sp   sp, 272
                  sub          s3, t3, s1
                  slt          a6, a6, s3
                  div          a5, a2, s2
                  lui          s2, 876947
                  c.addi       t2, 30
                  div          s5, a7, s2
                  or           s11, a4, t3
                  mulh         sp, t1, gp
                  srai         t4, s2, 20
                  srli         t0, t5, 1
                  rem          s1, a6, s8
                  divu         s0, a0, s9
                  andi         zero, a2, 632
                  divu         t6, s6, s1
                  auipc        s5, 323949
                  c.sub        a4, s0
                  xor          t6, s9, s1
                  andi         a4, tp, 1425
                  add          s11, s11, gp
                  mul          t6, t1, ra
                  sra          gp, gp, ra
                  c.addi       t6, -1
                  slti         t5, t0, 1634
                  c.or         a3, a0
                  mulh         a7, t3, a7
                  c.or         a3, a5
                  c.sub        a3, s0
                  c.xor        a5, a2
                  ori          a7, s0, -56
                  sll          t5, a4, a6
                  mulhsu       zero, a6, s8
                  slti         s5, a6, -367
                  c.li         a7, 20
                  c.srli       s0, 6
                  c.sub        a2, a3
                  slli         s6, s11, 28
                  andi         t5, t4, 1573
                  mulh         ra, a0, ra
                  lui          gp, 601488
                  sltu         s10, s3, a6
                  c.srli       a5, 14
                  xori         t4, s9, 1934
                  c.nop
                  divu         tp, s11, a2
                  div          s6, s6, t3
                  c.nop
                  mul          ra, tp, s5
                  c.slli       s8, 12
                  mulhsu       a2, t3, s11
                  xori         a0, t3, 1931
                  mulhsu       t4, a1, gp
                  mulhsu       s5, s4, s0
                  mulhu        gp, s7, a4
                  c.sub        s1, a3
                  andi         s1, t2, -1702
                  c.addi16sp   sp, -16
                  c.lui        a5, 27
                  c.addi       ra, 11
                  and          sp, a0, a0
                  sll          t4, gp, s0
                  sll          s0, s8, a4
                  sra          s3, t6, s6
                  c.slli       s0, 5
                  div          a7, s6, ra
                  sltiu        s8, s10, 1297
                  addi         ra, t0, 1000
                  xor          tp, a7, gp
                  c.nop
                  nop
                  remu         a0, a6, t1
                  auipc        s2, 190605
                  c.srai       a5, 16
                  mulhu        t4, s7, s7
                  xor          t5, ra, t6
                  c.mv         t6, a0
                  c.lui        t2, 10
                  addi         t0, t5, -1354
                  mulhsu       tp, s11, s7
                  mul          a0, s5, s9
                  c.add        sp, a7
                  sltiu        a5, zero, -687
                  srl          s5, s11, s5
                  c.xor        s1, a4
                  srl          s2, s11, ra
                  auipc        a4, 163685
                  and          s10, s5, tp
                  divu         t4, s11, a4
                  c.xor        a3, a5
                  and          t4, s7, s6
                  rem          s7, t0, t2
                  srai         t4, a5, 8
                  c.nop
                  slli         tp, sp, 2
                  c.xor        a5, a4
                  c.srai       s1, 30
                  sltiu        s4, a6, -1438
                  c.srli       s1, 1
                  mulhu        a3, sp, t2
                  srl          s5, s3, sp
                  c.addi       t4, 13
                  auipc        t6, 536433
                  c.li         a4, 5
                  c.and        a0, a1
                  slli         s10, s11, 27
                  c.mv         t2, s7
                  andi         a0, a5, -54
                  c.li         sp, 14
                  c.add        t6, tp
                  c.xor        a5, a3
                  c.lui        t6, 30
                  div          s6, t4, s9
                  slt          a2, a2, t4
                  remu         a6, s9, sp
                  c.addi       s10, 10
                  slli         s8, s3, 28
                  mulhu        s8, s10, s5
                  srli         tp, s5, 2
                  sltu         t1, t2, s0
                  mul          tp, tp, s1
                  sra          t5, s6, t6
                  div          s11, t6, s4
                  slli         t4, s5, 16
                  slt          s7, sp, a4
                  nop
                  slti         t6, t1, 12
                  xori         s8, s9, -823
                  sltu         ra, s11, s0
                  sltiu        s5, a6, -431
                  sll          a4, a7, s7
                  nop
                  c.addi16sp   sp, 480
                  c.li         a0, 7
                  c.and        s0, a5
                  c.srli       a5, 17
                  nop
                  c.lui        s10, 12
                  mulh         s5, s10, a1
                  nop
                  c.and        a4, a3
                  c.nop
                  c.xor        a0, a1
                  c.add        s4, t4
                  addi         s7, s10, -1114
                  remu         s5, a7, zero
                  addi         s8, s0, -649
                  nop
                  slt          zero, a2, a6
                  slt          t4, sp, a0
                  ori          s10, s2, 1965
                  slt          t4, gp, t1
                  or           a7, zero, tp
                  c.mv         ra, t0
                  remu         a5, a3, a7
                  c.mv         s3, a0
                  div          s7, a1, a6
                  c.and        a0, a3
                  srl          s11, s11, t4
                  c.addi       a4, 1
                  c.andi       a5, 6
                  sub          t5, t4, a2
                  andi         a5, zero, 1982
                  addi         a6, a1, -448
                  slli         s7, t4, 6
                  c.addi16sp   sp, -16
                  c.srai       a0, 24
                  andi         a3, a6, 572
                  c.mv         t4, s8
                  sltu         a2, t3, s5
                  xori         t2, sp, -1529
                  addi         s2, s10, -1538
                  c.addi4spn   a4, sp, 592
                  slt          s1, a0, s1
                  andi         tp, s9, -1833
                  mulh         gp, t4, t5
                  srli         s11, ra, 13
                  sll          s10, s4, a1
                  c.sub        a5, a5
                  add          gp, t6, s10
                  xori         t2, ra, 1879
                  c.srli       a4, 23
                  c.lui        a0, 8
                  mulhsu       s10, s7, s3
                  addi         s4, a1, -1451
                  andi         s7, a7, -1437
                  or           t5, t6, s10
                  sltiu        s7, s7, 75
                  c.add        a0, a5
                  c.addi16sp   sp, -16
                  andi         a7, a7, 534
                  rem          gp, a7, s3
                  rem          a4, s2, s0
                  mul          a0, a2, a1
                  mulhu        s11, a2, sp
                  c.slli       s7, 22
                  sltiu        a2, s6, 1326
                  srai         t4, s11, 13
                  add          s1, a2, sp
                  xori         tp, s11, 963
                  sll          s6, s4, t5
                  auipc        s8, 929683
                  c.addi4spn   s0, sp, 16
                  div          s2, s1, a3
                  rem          a2, s1, s10
                  sltu         s3, s2, a7
                  sltiu        a4, a7, 350
                  andi         sp, a7, 170
                  c.addi16sp   sp, -16
                  sra          s1, s6, s7
                  c.srli       a2, 31
                  c.or         s1, a0
                  slti         gp, t1, -718
                  srl          t5, s4, a6
                  mulh         gp, s10, tp
                  andi         a4, s4, -1529
                  c.slli       a3, 1
                  ori          t2, a2, -889
                  xori         gp, t5, 1547
                  c.lui        t1, 8
                  c.srli       a0, 12
                  xori         t6, s6, -1676
                  srai         s7, s8, 10
                  srai         s2, gp, 13
                  lui          t2, 808072
                  sltiu        t1, s6, -1707
                  divu         t6, a5, tp
                  c.lui        t4, 14
                  or           s5, t2, s5
                  add          gp, t0, t1
                  sltiu        s4, t3, -358
                  c.srli       s1, 18
                  c.xor        s1, s0
                  mulhsu       s5, t3, t2
                  add          a4, s8, gp
                  c.xor        a4, a1
                  c.srli       a5, 25
                  rem          s8, a4, t3
                  and          sp, t4, ra
                  mul          t2, s0, s9
                  c.srai       s0, 15
                  rem          t5, s1, ra
                  c.addi16sp   sp, -16
                  auipc        s11, 808430
                  c.slli       t2, 19
                  c.nop
                  c.srai       a0, 20
                  mulhu        gp, a1, ra
                  sra          sp, a5, s6
                  c.and        s1, a0
                  mul          ra, a6, sp
                  mulhu        s8, a7, tp
                  c.add        sp, a4
                  c.and        s0, a3
                  srai         s7, gp, 9
                  c.srai       a4, 14
                  c.xor        s1, a1
                  divu         s11, sp, a1
                  divu         ra, s3, s10
                  c.mv         a5, ra
                  andi         a5, s0, -796
                  lui          a2, 130223
                  addi         a4, a4, 1073
                  c.srai       s0, 11
                  sub          tp, s0, s5
                  divu         t2, a7, s4
                  c.slli       ra, 24
                  c.sub        a5, a2
                  addi         a0, zero, -1792
                  div          t1, tp, t2
                  c.mv         s0, a3
                  slti         gp, s7, 1339
                  xori         a7, a3, 1144
                  divu         t4, a2, tp
                  or           sp, a3, t2
                  slli         a6, s0, 19
                  xor          s8, t2, s1
                  rem          s3, t2, a3
                  c.lui        t6, 29
                  c.addi16sp   sp, 256
                  c.sub        a0, a0
                  remu         a5, t6, a1
                  div          sp, s0, a4
                  add          s5, a3, tp
                  mul          s0, a1, t5
                  slli         s11, a4, 3
                  ori          t2, t6, 787
                  srl          s6, s1, s4
                  and          s8, s11, s0
                  c.nop
                  c.srli       s0, 28
                  srl          a4, t0, t1
                  andi         s0, s11, -433
                  c.li         s0, -1
                  andi         a2, s4, 1318
                  c.sub        a3, s0
                  ori          t6, t0, 825
                  rem          t6, s6, t0
                  srai         a3, a0, 12
                  sltiu        a6, a6, 1251
                  xor          s11, s3, s6
                  srli         gp, t5, 2
                  c.sub        a4, a4
                  c.add        a0, t1
                  c.addi16sp   sp, -16
                  c.or         s1, a1
                  c.and        s1, a2
                  c.li         t2, 9
                  c.andi       a0, -1
                  and          ra, a6, t5
                  c.sub        s0, s0
                  mulh         a2, a3, a4
                  sub          s11, zero, s5
                  andi         t0, s0, 1083
                  divu         s1, s9, s1
                  auipc        s2, 149293
                  c.addi4spn   a2, sp, 880
                  sll          s0, s11, s10
                  sltu         t4, a1, s6
                  mulhu        a4, s4, s7
                  srai         a5, t1, 26
                  slt          t0, gp, s2
                  divu         s0, ra, tp
                  add          t1, s1, a7
                  c.addi16sp   sp, -16
                  andi         a4, ra, 910
                  mulhsu       sp, s0, a1
                  sub          a7, t1, ra
                  c.addi4spn   a2, sp, 368
                  mulhsu       a2, tp, t0
                  divu         ra, s5, a0
                  c.srli       a2, 5
                  sltu         a3, t0, sp
                  andi         s4, s2, -366
                  c.andi       a2, 28
                  c.srli       a2, 1
                  andi         s7, a7, 544
                  srli         sp, t3, 21
                  c.srli       a4, 3
                  ori          t6, a2, 699
                  nop
                  andi         s8, t4, -600
                  c.add        s6, a1
                  c.nop
                  xor          s1, t2, s0
                  slti         t6, s3, -1404
                  remu         s4, s8, s4
                  mulhu        t5, a7, gp
                  c.or         s1, a5
                  divu         tp, sp, s4
                  c.add        a6, s9
                  srl          s8, s11, t3
                  slli         sp, t2, 10
                  srai         gp, t0, 4
                  div          s1, s3, t6
                  c.srai       a4, 15
                  and          s2, a4, s2
                  sltu         s8, zero, s5
                  c.addi4spn   a3, sp, 16
                  and          a2, t5, s5
                  sra          a0, s0, t6
                  lui          tp, 136707
                  c.addi       s7, -1
                  c.add        t1, a3
                  remu         s6, zero, t1
                  auipc        t5, 833549
                  mulhsu       t5, t2, s4
                  auipc        t4, 625971
                  ori          s1, s11, 546
                  ori          s1, a5, -1510
                  slti         s8, s0, -348
                  sll          a2, a3, s6
                  c.or         a0, a3
                  sra          t1, a5, a7
                  c.li         s0, -1
                  mulh         s1, a0, gp
                  and          s2, sp, gp
                  lui          sp, 243517
                  sub          s0, s3, s7
                  sltu         s5, t3, t5
                  div          s11, a3, s6
                  c.mv         a2, s0
                  remu         t4, t4, s4
                  remu         s11, sp, s3
                  andi         s8, zero, 185
                  add          t2, a6, t3
                  mulhsu       s11, s6, t6
                  mul          sp, t2, s2
                  and          t0, a4, t4
                  c.slli       a4, 25
                  sltiu        s1, t3, -1336
                  c.add        s0, t6
                  slli         gp, s8, 23
                  c.or         a4, a2
                  c.slli       s3, 4
                  srli         a5, s3, 11
                  c.srli       a5, 24
                  mulhu        t5, t4, a4
                  c.srai       a0, 9
                  c.slli       s11, 27
                  c.addi16sp   sp, 176
                  auipc        t4, 804553
                  c.andi       a3, -1
                  ori          s5, s8, 706
                  srai         s1, t6, 2
                  mulhu        a7, a4, sp
                  c.addi       t4, 14
                  srli         s7, s9, 1
                  c.srai       a5, 7
                  c.andi       a5, -1
                  mulh         zero, t1, a4
                  mulhsu       t1, tp, t1
                  divu         t4, sp, t5
                  div          t2, s8, t4
                  c.slli       a0, 31
                  addi         t4, zero, -1482
                  c.andi       a5, -1
                  nop
                  c.nop
                  sltu         a2, t5, t5
                  ori          t0, s4, 806
                  sltu         a2, a1, t2
                  c.or         a2, a4
                  c.srai       s1, 28
                  xori         t5, sp, 1641
                  mul          s11, t2, t1
                  c.and        a5, a4
                  c.and        a0, a0
                  sra          gp, s3, a0
                  div          s11, tp, a6
                  sra          s5, a5, s11
                  c.sub        a0, a4
                  c.and        a4, s0
                  addi         a0, sp, -405
                  c.nop
                  mulhu        tp, s0, s11
                  c.slli       a7, 24
                  c.and        s1, a3
                  nop
                  addi         s3, t5, 707
                  c.lui        a0, 7
                  sltu         t5, t0, s8
                  or           t5, t4, t3
                  srli         a3, tp, 28
                  rem          a2, t3, a2
                  c.xor        a0, a3
                  nop
                  rem          s11, a3, s2
                  mulhu        s10, a6, ra
                  remu         a5, s3, s10
                  sltu         t5, s8, s9
                  c.and        s1, a3
                  c.li         s8, 4
                  xor          t4, t2, a4
                  slt          ra, sp, t5
                  c.addi4spn   s1, sp, 304
                  or           s0, sp, s10
                  c.addi       s1, -1
                  sltiu        s1, gp, -366
                  srai         s8, s0, 9
                  c.or         s1, a2
                  c.add        s3, t1
                  slli         sp, t2, 17
                  c.addi       s1, 29
                  c.xor        a0, s1
                  sll          gp, s9, t4
                  mulh         a3, t0, s10
                  remu         t4, ra, gp
                  mul          s1, s9, s11
                  c.sub        a4, a5
                  sltiu        gp, tp, 1657
                  mulh         gp, gp, ra
                  slt          s4, t2, a3
                  and          a4, s0, a2
                  mulh         s6, a6, t2
                  rem          a5, s11, t6
                  mulhu        t4, s7, a1
                  c.srli       a0, 19
                  mulhsu       s2, a0, ra
                  remu         a3, t2, a5
                  sra          zero, s0, s2
                  remu         gp, t6, t3
                  srli         zero, gp, 29
                  remu         tp, tp, t0
                  slli         a7, t1, 14
                  c.nop
                  add          tp, a6, s5
                  or           s10, sp, s4
                  c.and        a5, a2
                  mulhsu       s10, s0, t3
                  c.srli       a2, 23
                  nop
                  auipc        tp, 44654
                  ori          t0, ra, 84
                  c.addi16sp   sp, 128
                  auipc        sp, 743410
                  srl          a0, s2, t3
                  mulhu        a3, s4, t0
                  sltu         s4, a1, s6
                  slti         a7, a4, 1442
                  divu         s8, t1, t0
                  add          s8, s7, a1
                  sltu         tp, a1, a6
                  c.sub        s0, a5
                  c.slli       ra, 27
                  rem          a3, gp, a3
                  c.li         t2, -1
                  mulhsu       s1, t5, t2
                  mulhsu       s0, tp, s5
                  xor          zero, t2, a6
                  c.andi       a4, -1
                  c.srli       a4, 2
                  lui          s5, 491790
                  c.addi       s0, 16
                  or           s11, a5, s2
                  andi         gp, ra, -394
                  c.add        t0, t3
                  c.addi       s10, 27
                  add          s7, s5, s10
                  c.or         a4, a1
                  c.nop
                  andi         t5, t6, 1857
                  sll          a4, a2, a1
                  c.nop
                  c.slli       s0, 11
                  rem          s5, s10, gp
                  remu         t4, t3, s6
                  div          ra, s2, gp
                  slti         a7, s2, 1283
                  divu         s11, s10, a5
                  c.andi       s1, 8
                  addi         s11, t4, 413
                  lui          t4, 389555
                  mul          s4, t6, s6
                  mulhsu       a5, s7, a0
                  sra          a7, a5, s11
                  c.srai       a3, 16
                  sra          s7, a0, s4
                  remu         s7, s9, a2
                  c.addi16sp   sp, -16
                  c.and        a5, s1
                  remu         a6, sp, gp
                  srai         a7, s10, 15
                  remu         t2, s8, ra
                  mulhu        a5, s2, s1
                  nop
                  mulh         sp, s0, t3
                  nop
                  c.xor        s1, s1
                  sltiu        a5, a7, 975
                  c.andi       s1, -1
                  c.lui        t2, 9
                  c.xor        a0, a5
                  c.li         s5, 21
                  sltiu        a2, t1, -809
                  addi         tp, a2, -1304
                  c.srai       a4, 31
                  slt          s7, a3, s2
                  sub          s2, t3, a7
                  c.slli       s7, 27
                  sll          t0, a5, zero
                  c.or         a2, a4
                  mulhu        a0, s9, s6
                  xori         s1, t4, -484
                  srl          s5, s8, t0
                  sltu         gp, s7, t3
                  rem          s1, s8, zero
                  and          t5, s9, a5
                  slti         a4, ra, 34
                  c.or         a5, a0
                  sltu         t0, s0, s10
                  slti         s0, s5, -1887
                  c.nop
                  lui          a5, 514879
                  nop
                  sll          s5, s6, a3
                  sll          t2, t6, t0
                  srai         t4, tp, 7
                  slli         a5, s11, 11
                  div          t0, gp, s3
                  andi         s11, t0, -923
                  lui          a0, 216096
                  mulh         s11, t2, s4
                  c.addi16sp   sp, 320
                  c.slli       tp, 19
                  c.sub        a4, a4
                  c.add        a2, t1
                  lui          s8, 554046
                  xor          t4, tp, t0
                  c.addi       t5, 9
                  c.addi4spn   s1, sp, 736
                  c.or         s0, a5
                  c.and        a2, a2
                  c.or         s0, s0
                  addi         s11, s4, 673
                  slli         s8, s0, 24
                  divu         a7, s1, s3
                  auipc        s11, 410571
                  srai         s8, s10, 22
                  c.addi4spn   a0, sp, 336
                  remu         s4, a4, a1
                  c.andi       a4, -1
                  c.addi       s1, 3
                  div          sp, sp, t6
                  and          s8, a5, a0
                  sra          t0, s3, s6
                  or           tp, a3, sp
                  xori         a0, ra, -726
                  srli         s1, a4, 8
                  mulh         ra, a3, s3
                  auipc        t4, 809165
                  c.and        s0, s0
                  add          a3, t5, t6
                  mulhu        a3, t4, s5
                  c.addi       tp, -1
                  add          ra, a0, a1
                  rem          s1, t4, t6
                  c.andi       a5, -1
                  xor          s1, a7, a5
                  c.xor        a5, a1
                  sltu         s11, a6, s5
                  ori          s5, s8, -1446
                  c.addi       t2, 23
                  mul          s6, s8, a0
                  nop
                  c.srli       a2, 23
                  lui          s7, 420509
                  c.sub        a3, s1
                  nop
                  c.add        t4, s9
                  nop
                  c.and        s1, a3
                  sltiu        s11, a1, -1853
                  srl          t0, t5, a1
                  addi         t0, a0, 614
                  c.slli       a4, 26
                  c.mv         t2, s2
                  c.mv         gp, a2
                  c.mv         gp, t0
                  c.addi16sp   sp, -16
                  xori         s11, s3, -508
                  div          s8, s7, s4
                  c.mv         ra, s10
                  lui          a7, 587792
                  c.srai       a2, 29
                  nop
                  c.addi       a0, -1
                  sll          s8, s5, s11
                  c.addi16sp   sp, 144
                  slli         a5, tp, 23
                  c.addi       s1, -1
                  c.mv         gp, t0
                  srai         ra, s9, 10
                  mulh         s8, a3, t5
                  c.nop
                  c.mv         s6, s5
                  xori         a5, s6, -254
                  xor          s6, tp, s10
                  addi         s1, t4, 1964
                  remu         t5, t6, s5
                  c.lui        s10, 11
                  andi         gp, zero, -1087
                  slti         t2, t3, -465
                  c.addi4spn   a2, sp, 784
                  mulhu        s11, t6, s9
                  andi         sp, t0, 517
                  slli         s2, t1, 9
                  divu         t0, s8, t5
                  and          a6, a4, s4
                  divu         s7, a2, a7
                  c.and        a3, s0
                  sub          s1, s8, gp
                  srli         t5, s8, 9
                  c.or         a0, a4
                  srai         s4, s0, 4
                  mulhu        s8, s4, s7
                  sltu         t1, s8, zero
                  divu         zero, a2, a2
                  slt          t0, t6, gp
                  c.slli       sp, 24
                  mulhu        a7, a4, s2
                  sltu         t5, a6, s11
                  c.xor        a3, a0
                  srai         t5, a4, 29
                  c.addi       a5, 14
                  mulhu        a5, t1, s1
                  add          gp, s11, s11
                  nop
                  sll          s10, s4, sp
                  mulhu        s5, s4, a0
                  remu         t1, a7, ra
                  add          t6, a4, s6
                  sltu         s2, a2, t4
                  c.lui        tp, 14
                  slti         s11, s8, 575
                  andi         s7, s7, 1041
                  sll          t5, s7, t0
                  c.andi       a2, 18
                  addi         s7, zero, -169
                  c.addi4spn   s1, sp, 528
                  sub          a4, zero, a2
                  mulhu        sp, t0, a1
                  c.li         a3, 19
                  ori          s7, a3, 1288
                  c.addi       a4, -1
                  and          a6, s8, t0
                  divu         zero, t6, t1
                  c.srai       s0, 11
                  srli         a2, s8, 22
                  sll          a5, a7, ra
                  c.xor        a2, a2
                  c.nop
                  slti         s11, a6, 938
                  c.li         ra, 27
                  nop
                  ori          s11, t4, 253
                  add          s11, s7, s1
                  c.srli       a0, 8
                  div          gp, s1, t1
                  c.slli       s2, 20
                  slti         s8, tp, -1938
                  c.srai       s0, 21
                  add          s6, s7, a5
                  c.srai       s0, 3
                  slt          s0, tp, s1
                  srl          s11, t4, zero
                  xor          a4, a3, s5
                  c.andi       a0, -1
                  c.srli       s1, 24
                  mulhu        gp, a7, a5
                  c.slli       t1, 21
                  c.andi       a2, 28
                  sub          s3, t3, t6
                  c.mv         a6, a5
                  rem          s0, a0, s8
                  lui          zero, 99246
                  auipc        a7, 727864
                  c.xor        a4, a2
                  sltiu        t4, t0, -926
                  andi         s2, t5, 1365
                  remu         s10, sp, t1
                  c.slli       a0, 5
                  c.lui        s7, 12
                  c.addi4spn   s0, sp, 608
                  srl          gp, t5, s10
                  remu         s0, tp, t2
                  c.srli       a4, 25
                  divu         t5, a3, s3
                  mulhu        a6, a2, s8
                  srai         zero, s9, 12
                  add          a2, s2, gp
                  remu         s10, gp, t0
                  mulh         zero, s10, s3
                  c.sub        a5, a5
                  srai         s8, t1, 14
                  slli         a6, s2, 0
                  and          t4, a6, t3
                  c.xor        a0, a3
                  mulh         a7, a4, t2
                  slti         tp, s8, 75
                  c.or         a5, a1
                  remu         s11, s3, sp
                  c.sub        s1, s0
                  slt          gp, s2, s4
                  mulhsu       t4, a1, a3
                  c.addi4spn   a5, sp, 1008
                  rem          tp, s7, gp
                  nop
                  andi         s3, a4, -344
                  sra          a0, a4, t3
                  c.or         a2, a3
                  srai         a2, t1, 0
                  auipc        a7, 491416
                  c.addi       t0, -1
                  srl          a2, t1, s3
                  divu         a7, a1, t3
                  slt          s10, s9, t5
                  c.addi16sp   sp, 240
                  sub          s1, ra, s3
                  slli         t6, s10, 28
                  mulh         s1, a5, a5
                  c.or         a2, a2
                  c.andi       a0, 0
                  or           s8, s8, s9
                  slt          t2, s9, t3
                  c.or         s1, s1
                  remu         a2, s2, a4
                  add          a3, a3, ra
                  c.lui        s3, 8
                  auipc        s4, 459497
                  srli         s10, t0, 30
                  slt          s10, t3, s7
                  c.mv         a0, a6
                  sra          s4, t1, t5
                  srl          s7, ra, t0
                  c.addi16sp   sp, -16
                  mulh         tp, s5, a5
                  c.lui        t5, 14
                  nop
                  sra          s11, t6, t5
                  lui          s3, 941623
                  sra          a0, t2, s10
                  andi         t0, sp, -348
                  c.lui        s7, 16
                  slli         t4, s11, 4
                  c.addi       s1, -1
                  c.addi16sp   sp, -16
                  c.srli       a4, 13
                  c.mv         s4, tp
                  c.addi16sp   sp, -16
                  mulh         t5, tp, zero
                  div          a3, a3, zero
                  c.or         a3, a5
                  c.li         sp, 31
                  srai         t2, a6, 4
                  sltu         s0, s3, t4
                  slti         s0, a5, -962
                  c.addi4spn   a3, sp, 672
                  div          s11, s0, s7
                  slt          s4, s1, a4
                  lui          s1, 702970
                  add          a2, tp, s10
                  remu         s3, s4, t4
                  or           zero, s6, t4
                  andi         gp, s2, -1138
                  add          t4, t5, s11
                  xor          sp, t3, s11
                  mulhu        s7, s7, a0
                  div          gp, t6, a2
                  andi         gp, s7, 1126
                  c.sub        s1, s0
                  slti         s7, t2, -1804
                  sub          a0, a4, zero
                  slt          s6, a1, a5
                  auipc        s8, 93812
                  rem          ra, s7, s8
                  mul          s5, t4, a5
                  mulhu        s7, s2, t5
                  or           s1, s5, s5
                  sra          gp, t5, a5
                  add          t0, a4, s11
                  auipc        s7, 383192
                  c.addi16sp   sp, -16
                  andi         a6, a4, 291
                  srli         t2, t0, 20
                  add          a3, s10, a4
                  and          t4, t0, a4
                  div          a4, s10, t0
                  slti         s2, s1, -1480
                  c.addi       s1, -1
                  c.xor        a2, a3
                  or           s3, ra, t1
                  nop
                  and          s0, t3, s1
                  slti         a5, s8, 381
                  srl          ra, s9, t6
                  c.mv         s0, t2
                  sltiu        a3, s10, 1027
                  c.addi4spn   a2, sp, 704
                  mul          s1, s2, t5
                  sltiu        s3, s1, 80
                  slli         a2, a0, 28
                  sltu         s2, s0, s11
                  rem          s4, s8, t5
                  addi         s6, tp, -181
                  c.srai       a3, 1
                  sra          a2, s2, s9
                  mulhu        s4, t6, a3
                  c.addi       t4, -1
                  sll          a0, s1, tp
                  c.andi       a3, -1
                  ori          s0, s11, 635
                  slli         ra, a7, 20
                  addi         ra, s1, -1224
                  sltiu        zero, a7, 869
                  c.srli       s1, 5
                  srl          s8, gp, ra
                  remu         t5, ra, a0
                  c.and        s0, a5
                  xori         s1, t0, 1131
                  addi         a6, zero, -22
                  c.addi4spn   a2, sp, 480
                  sltiu        a2, s8, -239
                  sltu         a6, s10, a6
                  mulh         t2, tp, t2
                  mulhsu       a0, s3, s5
                  slti         a3, t0, 1822
                  div          s6, s11, s5
                  xor          a2, t5, s7
                  sll          a3, s11, a2
                  c.xor        a2, s1
                  mulhsu       s4, a3, s6
                  c.nop
                  c.add        s7, t4
                  c.and        a3, a4
                  and          tp, zero, ra
                  c.xor        s1, a1
                  andi         gp, zero, -81
                  divu         zero, s7, a4
                  c.nop
                  xori         sp, s4, 1224
                  auipc        s4, 737517
                  addi         tp, s10, -1714
                  auipc        a0, 454779
                  srl          t4, tp, t5
                  mul          t6, a5, zero
                  slli         a0, a1, 1
                  slti         a6, s5, 1570
                  ori          gp, s7, 1815
                  and          t2, gp, s1
                  slli         s6, a0, 4
                  c.andi       a2, 15
                  c.nop
                  divu         tp, s2, a7
                  srli         a6, ra, 6
                  divu         s5, t6, t2
                  c.sub        a0, s1
                  sub          s5, s5, s8
                  rem          a0, s11, a0
                  c.slli       s4, 21
                  c.sub        s1, a0
                  c.add        t4, sp
                  slt          gp, a2, s0
                  c.lui        a6, 7
                  c.add        s4, t5
                  addi         gp, a7, -469
                  and          s7, s3, t4
                  divu         t1, a5, tp
                  divu         a6, a7, sp
                  addi         s4, s9, 2025
                  mulhu        s10, t2, s2
                  sub          a7, zero, s11
                  or           t5, a4, a7
                  addi         s2, s1, -1735
                  sltu         s6, s5, a2
                  c.nop
                  and          t6, a5, t2
                  auipc        a7, 695485
                  sra          s3, gp, s4
                  rem          s0, s10, t4
                  c.andi       a5, 8
                  c.slli       s11, 22
                  xor          a4, t3, a3
                  auipc        s3, 918292
                  c.lui        s4, 18
                  c.andi       a4, 1
                  c.mv         t4, t4
                  c.add        t1, s4
                  c.srai       a3, 25
                  c.addi       t4, -1
                  slli         a5, s9, 4
                  c.add        s3, a0
                  andi         s2, t1, 2
                  c.lui        s1, 10
                  andi         s7, t1, 1941
                  lui          t4, 1042375
                  c.slli       sp, 22
                  c.addi       a3, -1
                  srai         s2, a0, 8
                  srl          s4, a2, s8
                  c.or         a4, s0
                  c.mv         s10, a0
                  nop
                  ori          a5, s6, -2009
                  remu         t4, s10, t5
                  addi         s8, t6, -1619
                  remu         ra, s3, s10
                  srai         s0, s7, 31
                  remu         a4, sp, a0
                  c.li         a5, 16
                  c.slli       s7, 8
                  nop
                  c.add        s0, s6
                  ori          s10, sp, 98
                  xor          a6, t5, s2
                  c.li         a2, -1
                  c.or         a4, a3
                  c.nop
                  divu         t4, s10, a4
                  ori          t1, s10, 223
                  c.xor        a0, a2
                  c.xor        a2, a4
                  mulh         s11, s0, s0
                  sltu         sp, a3, s6
                  xor          s8, tp, a1
                  c.andi       s1, 2
                  ori          a3, s10, -1105
                  c.addi       t5, 1
                  c.and        a2, s0
                  c.addi4spn   a0, sp, 384
                  c.and        a0, s0
                  slt          a7, s2, a7
                  c.lui        a4, 19
                  mulhu        a4, s1, a3
                  xori         s11, a5, 1421
                  c.slli       s6, 12
                  sub          a4, s2, s5
                  sra          s5, a6, t0
                  c.addi4spn   a4, sp, 576
                  c.srai       a0, 24
                  remu         a6, t6, a4
                  slli         a4, s5, 14
                  c.andi       a4, 15
                  sll          zero, s5, zero
                  ori          a5, t4, -791
                  or           s2, tp, a2
                  rem          a5, s4, a7
                  slti         zero, s7, -1427
                  sltu         a5, t2, s5
                  rem          s0, t6, s8
                  mul          s8, s11, s2
                  mulh         a5, a3, s10
                  mul          s8, t0, s0
                  xor          s2, s10, s6
                  c.andi       s0, 27
                  sra          s7, a5, s9
                  nop
                  add          s11, s5, s5
                  sra          a7, a2, s11
                  sltu         ra, zero, t1
                  xori         s11, s2, -412
                  mulhu        a6, t3, a5
                  c.addi4spn   a0, sp, 704
                  c.li         s1, 6
                  c.li         t1, 9
                  c.addi4spn   s1, sp, 112
                  sub          s1, a7, a0
                  div          s7, a2, t2
                  c.addi4spn   a4, sp, 96
                  rem          gp, t3, ra
                  nop
                  c.mv         s4, s10
                  addi         a6, a4, 667
                  auipc        s5, 473450
                  mulhu        s11, s6, a2
                  divu         s11, s11, a3
                  and          s10, a1, a5
                  sltu         a7, t6, s0
                  addi         t4, t1, 3
                  or           s2, s0, zero
                  c.and        a5, a1
                  sra          s1, tp, a6
                  sub          t1, t1, s6
                  c.xor        a0, a4
                  srli         s3, a0, 1
                  remu         a6, s1, a6
                  srl          s11, s1, s8
                  slti         t6, a5, 1306
                  srl          s1, t5, s11
                  xor          s11, s1, s0
                  and          t2, t5, zero
                  srl          s8, s10, a0
                  and          gp, t2, s4
                  c.nop
                  srli         zero, a2, 2
                  andi         t6, t5, 1118
                  add          t5, s3, s7
                  div          ra, s9, s10
                  slti         tp, s1, 1065
                  or           t6, gp, t6
                  addi         t4, a1, 61
                  c.sub        a3, a1
                  c.addi       a5, -1
                  srli         s8, t1, 6
                  c.slli       a0, 17
                  c.andi       s0, -1
                  c.andi       a2, -1
                  sub          s11, s6, tp
                  srli         a6, sp, 1
                  sra          t5, tp, s2
                  rem          zero, s0, t5
                  slt          zero, a3, a1
                  c.srli       a2, 12
                  sll          s4, t2, a0
                  c.addi16sp   sp, -16
                  c.slli       a3, 1
                  addi         a2, s6, 358
                  sltiu        s5, a1, 1145
                  add          a5, a3, t0
                  sra          a6, t2, a7
                  and          a6, t2, t6
                  addi         s1, a0, -272
                  mulhsu       s10, a0, s3
                  c.addi4spn   s0, sp, 928
                  andi         sp, t1, 1055
                  srai         s4, s10, 31
                  rem          t5, t5, t0
                  andi         t1, gp, 1477
                  or           s2, s0, t1
                  srli         a2, s11, 7
                  c.mv         s8, a5
                  add          a5, sp, t6
                  mulhu        t4, a0, a4
                  c.mv         gp, t6
                  addi         gp, t5, 1857
                  andi         a4, t4, -483
                  c.xor        a4, a4
                  rem          a7, sp, s5
                  or           a3, s9, s8
                  c.addi16sp   sp, -16
                  c.andi       a3, 31
                  sub          a3, s5, s10
                  mul          t0, t0, ra
                  c.addi16sp   sp, 352
                  c.andi       a3, 21
                  sub          a4, s0, s3
                  c.addi4spn   a0, sp, 416
                  c.andi       a5, -1
                  sltu         s1, s1, s2
                  c.andi       a5, -1
                  c.or         a4, a4
                  addi         gp, t1, -49
                  sub          s3, gp, a6
                  c.addi       t1, -1
                  slli         s1, gp, 29
                  sltu         a6, a3, t6
                  nop
                  divu         s2, t6, t4
                  or           t2, s7, s9
                  lui          s0, 260421
                  xor          s4, s4, a5
                  xor          a3, a4, s2
                  c.mv         t4, t6
                  remu         sp, s11, s2
                  c.add        sp, s4
                  mul          a5, t6, a3
                  sltu         t5, t2, a3
                  slli         s0, a7, 4
                  and          s7, a5, zero
                  xori         a7, s9, -616
                  c.addi16sp   sp, 256
                  nop
                  c.and        a3, a4
                  or           s3, zero, s0
                  srli         a4, a5, 1
                  c.srai       a4, 8
                  c.lui        s8, 4
                  c.srli       s1, 17
                  c.add        s4, a0
                  sltu         s8, ra, s8
                  srl          s0, t2, tp
                  c.addi16sp   sp, -16
                  c.and        a0, a2
                  andi         tp, gp, 79
                  mul          a3, t6, a6
                  rem          t2, tp, ra
                  c.mv         t5, s4
                  mulhsu       s11, ra, s4
                  c.lui        t5, 21
                  slli         a3, sp, 30
                  c.xor        s1, a4
                  slli         a6, s7, 7
                  nop
                  c.addi16sp   sp, -16
                  mul          t6, s8, a7
                  c.sub        a3, a3
                  c.addi4spn   s1, sp, 320
                  add          zero, t1, s7
                  c.sub        a3, s1
                  slti         a3, s6, 1485
                  c.mv         s6, s5
                  c.srai       a4, 4
                  c.srai       a3, 19
                  xori         t4, t4, 2006
                  lui          t5, 347808
                  c.srli       a2, 27
                  c.add        t6, tp
                  c.sub        s0, s0
                  c.lui        gp, 14
                  c.li         a5, 2
                  andi         s2, s0, -1522
                  mulhsu       s11, t4, s6
                  auipc        a7, 57830
                  mul          a2, gp, t3
                  xori         s8, s10, -671
                  c.and        a2, a0
                  c.andi       a3, -1
                  c.and        a0, a5
                  c.andi       a2, 26
                  c.nop
                  sltu         s11, gp, a0
                  c.slli       t5, 30
                  remu         a2, s5, a2
                  c.addi4spn   a5, sp, 128
                  c.srai       a5, 21
                  xor          s7, t1, sp
                  add          sp, a7, a2
                  rem          s4, t6, t4
                  addi         gp, a7, 753
                  c.nop
                  c.addi4spn   a5, sp, 832
                  divu         a5, s8, s1
                  slli         tp, a6, 24
                  mulh         s10, s4, a4
                  auipc        zero, 400510
                  slli         t0, a4, 1
                  srl          a4, s4, s5
                  sra          s3, zero, a5
                  lui          s4, 284335
                  c.slli       s7, 1
                  c.li         t1, 8
                  c.or         a3, s0
                  c.add        s3, a3
                  mulhsu       s5, s6, t0
                  and          a7, t2, t3
                  slli         a6, s10, 16
                  srl          s3, a3, a7
                  c.xor        a2, a5
                  xori         t2, s0, 470
                  c.sub        s0, a1
                  c.andi       s0, -1
                  slti         s0, t3, -1538
                  auipc        s11, 473895
                  c.lui        t0, 30
                  mulhu        s5, a3, s4
                  mulhsu       s11, t6, a5
                  c.li         tp, 22
                  add          s11, t4, a3
                  c.srai       a5, 20
                  rem          t2, s0, s3
                  sltiu        tp, s6, 110
                  c.sub        s1, a2
                  div          a7, a0, a5
                  div          s0, s6, t2
                  c.lui        s10, 5
                  c.or         a5, s1
                  sra          zero, s8, t1
                  c.lui        s6, 7
                  c.srai       a0, 20
                  andi         s5, t2, 824
                  c.lui        s7, 3
                  divu         s3, gp, s8
                  xor          a0, a1, a7
                  sltu         gp, zero, a7
                  rem          a5, a0, gp
                  sltu         t0, ra, zero
                  sll          s1, s0, s8
                  auipc        a4, 51593
                  nop
                  c.sub        a3, a0
                  sltiu        t6, t4, -327
                  div          s2, s2, sp
                  c.addi16sp   sp, 192
                  mul          t1, s2, s9
                  sub          a3, s6, zero
                  sll          a3, ra, gp
                  auipc        s0, 1040769
                  c.sub        a0, a4
                  add          s2, zero, s5
                  div          a5, a3, s10
                  c.and        s0, s0
                  c.sub        s1, s0
                  c.addi4spn   a5, sp, 944
                  or           a5, s10, gp
                  c.li         a2, 11
                  c.addi4spn   a3, sp, 544
                  c.slli       a6, 27
                  add          ra, a5, t6
                  or           t6, a1, s10
                  sltu         a7, t1, a2
                  addi         a2, a6, -1622
                  addi         s7, s11, 1714
                  xori         a7, s10, -1842
                  mulhsu       t2, s2, zero
                  srai         s4, s11, 15
                  auipc        s7, 1023853
                  mulhsu       a3, s8, s7
                  ori          s8, s0, 1225
                  srai         s8, t1, 18
                  nop
                  slt          ra, s2, s8
                  srli         tp, t4, 21
                  c.li         a4, 12
                  srl          a6, s2, a7
                  c.lui        s1, 12
                  lui          a5, 671013
                  divu         s6, a5, s6
                  or           a7, t2, t6
                  c.addi4spn   s0, sp, 816
                  c.add        a0, s2
                  c.nop
                  srai         t4, gp, 24
                  c.li         a5, -1
                  c.sub        a3, a1
                  c.lui        s10, 8
                  c.nop
                  remu         a2, gp, gp
                  add          s5, s5, sp
                  c.li         tp, 28
                  srli         s2, a7, 14
                  sltu         s11, s8, s2
                  xor          a6, s10, s0
                  c.lui        s11, 1
                  sll          gp, zero, t3
                  sub          a5, s11, s9
                  sub          gp, a1, a4
                  xor          s3, t4, s3
                  div          s2, s8, s7
                  c.andi       a0, -1
                  c.xor        a3, a2
                  c.addi16sp   sp, -16
                  mulhu        s6, s6, s4
                  c.srai       s0, 12
                  c.andi       s0, -1
                  c.lui        t5, 14
                  div          a4, sp, s3
                  auipc        sp, 749549
                  sltiu        t0, t3, -653
                  nop
                  srai         t0, t6, 31
                  or           s0, a6, s3
                  lui          tp, 723681
                  c.add        s6, s3
                  c.addi4spn   a3, sp, 224
                  mulhu        s11, a5, a0
                  c.add        sp, s8
                  c.add        a6, ra
                  c.addi4spn   a4, sp, 800
                  addi         a4, t2, 580
                  sra          s2, ra, ra
                  c.addi       a5, -1
                  c.nop
                  sltu         s1, t4, zero
                  c.nop
                  c.add        t2, s4
                  sltu         a0, t3, a6
                  srai         s10, s11, 5
                  c.xor        a0, a4
                  c.andi       a4, -1
                  c.and        s0, a0
                  mulhsu       a2, s3, s7
                  c.srli       a0, 4
                  addi         t0, s6, 1001
                  nop
                  mulh         s10, sp, t2
                  c.sub        a4, a1
                  c.slli       s10, 28
                  sra          gp, gp, s8
                  mul          s10, gp, s6
                  srai         a5, t4, 0
                  xor          tp, a0, s8
                  div          a4, s0, t4
                  div          s2, t3, sp
                  div          s6, s4, tp
                  c.mv         t1, tp
                  c.li         s8, 15
                  and          a0, s6, s2
                  c.sub        s0, s1
                  srli         a2, a6, 7
                  auipc        sp, 137364
                  nop
                  add          s6, ra, t6
                  slli         s4, tp, 15
                  xori         gp, s1, 353
                  c.andi       s0, 20
                  c.addi4spn   a0, sp, 352
                  addi         s7, s5, 951
                  c.or         s0, a5
                  c.sub        a3, a2
                  c.srli       a0, 8
                  xori         gp, t5, 1286
                  rem          s3, sp, s3
                  xor          t4, s4, s0
                  sltu         s10, s3, t5
                  c.addi       t5, 4
                  c.lui        s10, 26
                  rem          a3, t6, ra
                  or           t1, t3, a1
                  c.addi4spn   s1, sp, 608
                  slti         zero, s0, 781
                  c.addi16sp   sp, -16
                  c.slli       s0, 16
                  slt          s0, a5, s5
                  ori          a4, s1, -659
                  xor          s11, sp, a2
                  ori          s1, t5, -752
                  c.sub        a2, a3
                  c.addi       s11, 12
                  mulhu        t6, sp, t1
                  slt          t0, s2, t1
                  ori          s1, gp, -757
                  remu         s0, t6, s10
                  c.li         t2, -1
                  c.and        a2, s0
                  slti         a2, zero, 636
                  c.addi16sp   sp, 96
                  addi         t5, t3, -1117
                  lui          s6, 931483
                  divu         sp, t2, t4
                  sltiu        ra, s1, -1421
                  c.addi4spn   a2, sp, 960
                  c.addi       t6, -1
                  mulhu        a7, s7, sp
                  mulhsu       s3, t1, s6
                  sltiu        s5, t3, 641
                  divu         s6, a5, t6
                  c.lui        tp, 25
                  c.li         ra, -1
                  c.andi       s1, 21
                  c.nop
                  ori          t2, a7, -273
                  c.addi16sp   sp, -16
                  lui          a7, 266191
                  srli         sp, sp, 27
                  div          t5, s0, s0
                  slli         tp, t6, 26
                  srai         t5, a0, 8
                  slt          s4, s3, t5
                  c.srli       a5, 31
                  c.srai       a3, 23
                  c.and        a2, a5
                  or           sp, sp, s10
                  c.sub        a3, a0
                  andi         s1, a6, 454
                  auipc        t5, 710136
                  sltiu        s0, t1, 1962
                  addi         t4, s4, 1525
                  xor          s5, t0, a4
                  c.li         sp, -1
                  or           sp, t6, a2
                  c.addi16sp   sp, -16
                  c.sub        a5, a5
                  auipc        a0, 775658
                  xor          t5, a7, s2
                  rem          t4, a1, s6
                  mulhu        gp, a0, a1
                  sltu         a4, s7, ra
                  c.srli       a4, 18
                  rem          s11, a0, a0
                  lui          a4, 150097
                  auipc        zero, 707901
                  divu         t1, s6, a3
                  c.srli       a0, 15
                  andi         gp, a2, 988
                  c.srai       a5, 21
                  remu         a3, a2, a7
                  c.and        a2, a2
                  c.li         s0, 19
                  remu         s0, t5, t2
                  mul          a6, a7, zero
                  addi         s1, a7, -405
                  andi         s1, a7, 874
                  addi         tp, s0, 1925
                  andi         t2, gp, 457
                  mulhu        s5, s6, t4
                  sra          s1, s5, s1
                  sll          a0, s10, a1
                  add          a7, t6, t0
                  slli         a0, a5, 21
                  xori         ra, t6, -733
                  or           s4, s6, a2
                  divu         a5, a7, s6
                  mulhsu       t4, s4, s11
                  remu         a2, a7, s3
                  srl          tp, s0, a5
                  sltu         a2, t1, t0
                  slli         sp, t1, 0
                  c.andi       a4, -1
                  c.srli       a2, 5
                  add          a0, s2, t0
                  slt          s10, s9, tp
                  mulh         a2, a5, a1
                  and          a6, s0, t0
                  sra          s3, gp, t5
                  slli         a2, t6, 17
                  c.srai       a5, 23
                  sll          a4, gp, ra
                  remu         t2, a0, sp
                  rem          s11, t4, a0
                  c.xor        s0, a5
                  sra          t0, t5, t3
                  mulh         s5, t4, a0
                  c.addi16sp   sp, 32
                  srli         a6, a7, 6
                  c.li         a0, -1
                  c.srli       a3, 27
                  c.addi4spn   s1, sp, 192
                  remu         t0, a4, a0
                  addi         a3, t0, -675
                  c.addi16sp   sp, -16
                  sub          a3, s11, t5
                  c.andi       a5, 5
                  c.nop
                  mulhu        t6, gp, s7
                  xor          t2, a6, t5
                  remu         s11, t2, s9
                  rem          s3, t4, a6
                  c.add        tp, s5
                  c.add        s3, t4
                  mulh         s8, t1, a5
                  c.or         a4, a1
                  andi         s1, a0, -1413
                  xori         s0, s6, -16
                  rem          t2, s5, a6
                  c.srai       a4, 30
                  c.addi       t5, 29
                  xori         a2, t1, 550
                  rem          s7, s10, t3
                  addi         ra, a0, 1654
                  srl          s5, t3, s5
                  c.addi4spn   a4, sp, 304
                  c.add        s3, tp
                  slli         a4, a0, 1
                  slt          a7, ra, gp
                  mul          s8, t5, t5
                  auipc        s3, 714652
                  sll          t0, t5, a4
                  c.or         s0, s1
                  c.slli       s11, 11
                  remu         t6, s3, a6
                  sub          zero, s0, s7
                  mulhu        t2, tp, s3
                  auipc        ra, 963498
                  c.addi16sp   sp, 384
                  c.addi16sp   sp, 448
                  srli         s10, a5, 5
                  sll          ra, gp, s8
                  xori         s2, t6, -2006
                  c.li         s7, -1
                  c.sub        s1, a5
                  c.mv         gp, a3
                  auipc        s7, 217985
                  xor          s11, s2, zero
                  sltu         s2, t1, s7
                  sll          s8, t1, a5
                  or           s8, a0, s10
                  mul          a2, t1, sp
                  rem          t6, s9, gp
                  c.sub        a4, s0
                  nop
                  c.sub        a0, s1
                  remu         sp, s11, t4
                  c.add        s10, sp
                  slt          s11, a3, t5
                  srai         gp, s11, 13
                  div          s7, a2, s6
                  c.slli       a4, 9
                  srai         a7, s10, 10
                  add          t6, s0, s8
                  rem          a5, a5, zero
                  c.addi4spn   s1, sp, 208
                  remu         s8, t6, s6
                  c.srai       a0, 3
                  c.srai       a2, 11
                  slt          s1, t0, t3
                  sub          s6, s1, a4
                  c.li         a3, -1
                  c.andi       a5, 11
                  or           zero, a4, t4
                  c.addi4spn   s0, sp, 16
                  c.addi4spn   s1, sp, 848
                  srai         sp, t1, 3
                  c.add        a5, s6
                  c.srai       a5, 23
                  c.mv         s7, ra
                  srai         tp, a6, 2
                  add          t6, gp, t1
                  nop
                  xor          tp, t6, sp
                  remu         t1, a1, a2
                  lui          s7, 41811
                  mul          a6, gp, s6
                  c.xor        a5, a3
                  slti         t4, t4, 852
                  c.and        s1, a4
                  sltu         a7, s3, s10
                  c.srli       s1, 12
                  mul          s7, s4, s6
                  divu         sp, t5, a2
                  xori         s11, a0, 788
                  xor          gp, ra, s1
                  srai         a6, t3, 26
                  nop
                  c.addi       s7, -1
                  nop
                  c.srai       a0, 22
                  ori          s2, a2, 1515
                  mulhsu       s10, t2, a7
                  mul          a6, t3, a2
                  mulhsu       s7, s2, a5
                  c.andi       a4, 13
                  divu         t1, s0, a2
                  mulhu        s0, sp, gp
                  c.addi       t4, 9
                  srai         t5, t5, 16
                  nop
                  div          a5, a2, t2
                  c.add        s6, t6
                  nop
                  xori         s10, t0, -1621
                  sub          s11, gp, s2
                  sll          gp, a2, a1
                  slti         s5, s8, -1309
                  c.slli       s1, 5
                  addi         t6, gp, -1472
                  c.andi       a3, 7
                  c.addi4spn   a2, sp, 736
                  c.srai       a3, 16
                  srai         s3, t1, 17
                  c.nop
                  c.or         a5, a1
                  c.xor        a2, s0
                  nop
                  mul          gp, s1, t4
                  addi         ra, t4, -667
                  rem          a3, s11, s7
                  c.addi       sp, -1
                  c.addi4spn   a2, sp, 448
                  xor          s2, a2, a5
                  lui          t6, 587880
                  sub          zero, s4, t0
                  mulh         s1, t6, s11
                  mulh         gp, a5, sp
                  mulh         s1, s2, t3
                  auipc        tp, 533107
                  sltiu        s8, zero, 679
                  c.sub        s1, a2
                  mulh         zero, a1, s0
                  lui          s7, 578673
                  sll          s11, s11, a2
                  sltu         s7, gp, a1
                  div          a2, t2, a3
                  addi         s1, gp, -427
                  c.addi       a7, -1
                  mul          tp, a1, s11
                  divu         a0, ra, a5
                  xor          s10, s9, a7
                  xori         s3, sp, -967
                  slli         s2, s9, 4
                  c.srai       a5, 31
                  remu         a3, s9, t3
                  c.andi       a3, 2
                  c.or         a4, a3
                  xori         s1, t0, 1314
                  c.and        a5, a2
                  c.nop
                  xor          t0, s2, s3
                  c.andi       a0, -1
                  srl          s4, s7, a2
                  auipc        s5, 313950
                  mulhu        t5, t4, s5
                  c.srli       s0, 26
                  c.addi4spn   s0, sp, 528
                  c.lui        s5, 11
                  or           a4, a0, s11
                  nop
                  c.and        a4, a4
                  c.lui        t6, 28
                  xor          s1, s3, s2
                  remu         a0, a6, t6
                  mul          s8, s4, t4
                  c.slli       s4, 29
                  c.or         a5, a1
                  c.sub        a5, a4
                  sub          a0, s2, sp
                  srai         s11, tp, 12
                  slli         ra, s8, 10
                  xori         s5, zero, 984
                  sll          s5, tp, t6
                  c.srli       a2, 15
                  add          tp, a4, s9
                  sltiu        t6, s0, 56
                  sll          t5, a0, a3
                  remu         sp, zero, tp
                  mulh         gp, a1, t5
                  c.or         a5, a3
                  c.add        a6, sp
                  srli         s1, ra, 9
                  sra          a6, a7, a1
                  sltiu        t1, s3, -1565
                  c.mv         s1, s3
                  c.srai       a2, 12
                  sltu         t0, gp, t5
                  remu         t5, a1, s3
                  ori          s1, s8, 1447
                  slli         a0, t2, 16
                  c.or         a5, a3
                  c.li         sp, -1
                  addi         zero, t3, -1062
                  srl          a7, s9, zero
                  mulhu        s11, tp, s3
                  mul          s6, gp, s7
                  add          t4, s2, gp
                  remu         s2, a5, gp
                  mulhu        a5, tp, t6
                  auipc        s1, 311446
                  c.addi16sp   sp, -16
                  c.add        a4, a2
                  c.addi16sp   sp, 176
                  c.addi16sp   sp, -16
                  c.addi4spn   s0, sp, 672
                  c.xor        a0, a2
                  divu         tp, s10, a2
                  c.mv         s6, a4
                  mulh         t6, t6, gp
                  xori         sp, tp, 1798
                  andi         t0, a2, 1128
                  c.addi4spn   s0, sp, 320
                  c.or         a2, a3
                  sltiu        s5, t0, -1462
                  nop
                  and          a6, s4, s8
                  add          a0, a2, sp
                  slli         zero, s0, 17
                  slti         sp, s6, -513
                  c.lui        s7, 31
                  mul          s1, a2, s3
                  c.lui        t6, 30
                  ori          a0, s5, -604
                  c.mv         a2, a4
                  srai         zero, a6, 27
                  rem          a0, s0, t2
                  slli         a6, s2, 18
                  slli         s6, a1, 3
                  c.mv         a5, a5
                  c.srli       a3, 13
                  xori         a2, a2, -1504
                  c.or         s0, a4
                  c.add        a7, t6
                  addi         a0, a1, -1097
                  xori         a7, a0, 1378
                  c.addi16sp   sp, -16
                  srli         sp, t5, 13
                  xori         s11, tp, 1113
                  sltu         s5, s6, sp
                  c.mv         s0, s3
                  or           t4, t1, s7
                  c.or         s0, a3
                  srai         s3, t4, 30
                  auipc        a0, 267675
                  srai         tp, zero, 15
                  c.addi16sp   sp, -16
                  c.slli       s11, 7
                  c.slli       ra, 10
                  c.addi4spn   s1, sp, 544
                  mulh         s10, t2, gp
                  c.mv         a2, s6
                  ori          t0, a2, -205
                  div          a2, tp, s3
                  c.addi4spn   a0, sp, 320
                  c.sub        a2, a1
                  sub          s11, s5, sp
                  slt          a6, a1, t0
                  slli         t5, a7, 0
                  c.sub        s0, s1
                  sra          zero, s8, tp
                  addi         a7, a1, -1432
                  and          t5, a3, a3
                  xor          a4, s9, s2
                  sltiu        s2, s3, -846
                  c.addi4spn   s1, sp, 16
                  c.li         a2, 29
                  sra          s11, a3, a4
                  add          a5, s1, t6
                  mul          a0, a3, a2
                  c.lui        s2, 28
                  c.sub        s1, a3
                  c.li         a0, -1
                  and          t2, a1, t2
                  and          t1, s4, a5
                  and          tp, a2, a5
                  sra          s8, t4, a2
                  and          a5, gp, t0
                  andi         s6, a3, -1722
                  mulhsu       tp, a3, s0
                  c.addi16sp   sp, 288
                  add          s4, t2, s2
                  c.sub        a4, a3
                  c.nop
                  auipc        s3, 345969
                  andi         ra, s1, -1105
                  sltu         zero, t2, a6
                  auipc        a7, 593636
                  c.addi       s3, -1
                  c.lui        t5, 31
                  rem          s0, s5, s5
                  or           s8, t1, a7
                  or           s2, t4, s1
                  sll          gp, s8, s5
                  c.or         s0, a3
                  div          s11, t6, a7
                  c.addi       a3, 8
                  c.addi4spn   a0, sp, 960
                  lui          a0, 742905
                  c.sub        s1, a3
                  lui          a6, 1027378
                  andi         a3, ra, -96
                  c.lui        s1, 25
                  mulhu        t5, t5, a2
                  addi         a0, t1, 988
                  c.nop
                  c.add        s7, t5
                  c.srli       a5, 6
                  or           t5, t5, t0
                  sltu         t5, s8, t2
                  or           s5, sp, gp
                  mul          a6, s1, s11
                  c.slli       t4, 20
                  sltiu        s7, sp, 333
                  c.srli       a5, 9
                  c.li         s4, 18
                  nop
                  ori          t6, s7, -1923
                  mulhu        a7, t0, s1
                  remu         a4, sp, s2
                  c.li         s1, -1
                  remu         a0, a3, a4
                  slti         s2, zero, 37
                  c.mv         s5, s10
                  c.lui        s10, 4
                  nop
                  sub          a5, a1, t0
                  lui          s1, 269864
                  c.addi4spn   a4, sp, 288
                  remu         t5, a5, sp
                  c.nop
                  sltu         a7, a7, ra
                  c.xor        s0, a5
                  sub          a0, s1, a2
                  c.or         a2, s0
                  c.add        t4, t1
                  and          gp, a5, s8
                  c.add        s4, s9
                  c.and        a5, a1
                  c.add        t5, a3
                  mul          zero, a3, ra
                  c.addi16sp   sp, 16
                  andi         t5, s11, 1226
                  addi         a2, t1, 987
                  sltu         t5, t0, t2
                  add          t4, s7, zero
                  slli         a6, s8, 21
                  c.xor        a2, s1
                  add          t2, s10, t4
                  rem          a7, t0, tp
                  lui          a6, 648977
                  c.sub        a2, a0
                  c.andi       s1, -1
                  sll          s2, s5, t3
                  xor          zero, a1, s11
                  c.xor        a0, s0
                  c.addi16sp   sp, -16
                  addi         a0, t3, -1157
                  c.li         tp, -1
                  remu         zero, t6, t6
                  div          s0, s1, a3
                  c.nop
                  nop
                  srl          s7, a5, a0
                  xor          ra, a1, s9
                  c.mv         a3, s2
                  c.add        a7, sp
                  srai         a2, s3, 19
                  c.addi16sp   sp, -16
                  slti         tp, t1, -1610
                  mulhu        s1, a6, t5
                  c.addi16sp   sp, 48
                  addi         s10, t1, 78
                  xori         s1, t5, -256
                  auipc        sp, 936824
                  c.srai       a2, 4
                  c.nop
                  rem          a4, a4, a5
                  sub          t4, t2, t3
                  lui          a7, 334512
                  nop
                  ori          t5, t4, -676
                  sltiu        s1, a0, -1267
                  c.slli       s7, 1
                  srai         s5, sp, 25
                  ori          s4, s7, 930
                  and          a0, s7, zero
                  c.sub        a3, a0
                  nop
                  mulhu        s8, tp, tp
                  c.xor        s0, a5
                  divu         t4, s0, zero
                  c.lui        a3, 30
                  xor          gp, t3, a5
                  sub          t1, a0, a3
                  c.xor        a3, a2
                  mulhsu       a7, t6, t4
                  c.srai       a3, 24
                  mulhsu       s4, a2, a2
                  rem          s6, a0, s11
                  srl          a7, t3, a5
                  c.addi4spn   a5, sp, 784
                  mulhsu       s1, s2, s0
                  c.sub        a5, a3
                  c.mv         t4, a3
                  xor          gp, a1, s0
                  mulhu        a0, a7, t2
                  c.and        a3, s0
                  xori         t0, ra, -1157
                  c.srai       s1, 16
                  and          s5, tp, s8
                  mul          t0, a3, ra
                  xori         s5, t3, -715
                  slt          s11, s10, s11
                  mul          s4, s6, s2
                  slli         sp, gp, 10
                  c.srai       a3, 5
                  andi         t5, s7, 317
                  lui          s5, 707615
                  xori         s0, t0, 618
                  and          a2, s8, t5
                  div          s7, s1, a0
                  slt          s8, a0, s8
                  srai         a3, s7, 24
                  srl          sp, a6, s1
                  and          t2, t5, a3
                  c.add        tp, s9
                  auipc        t1, 1029225
                  c.slli       t0, 30
                  c.xor        a2, a4
                  remu         tp, s7, s1
                  c.slli       t5, 31
                  c.srai       a3, 3
                  rem          tp, s0, a6
                  mulhu        a3, s11, gp
                  srai         gp, zero, 23
                  sltu         s11, t6, t3
                  lui          a7, 245200
                  c.srli       a0, 26
                  srai         a7, s2, 7
                  auipc        sp, 81460
                  mulhu        s10, t6, t1
                  mul          s4, s1, s7
                  slti         s2, a1, 574
                  c.mv         s11, gp
                  add          s6, ra, s10
                  c.srli       a5, 14
                  lui          gp, 678725
                  add          s11, a2, s7
                  nop
                  divu         s5, t3, sp
                  div          s5, gp, t6
                  c.sub        a4, a2
                  c.slli       s6, 9
                  sub          s0, t6, a7
                  sll          t6, s10, tp
                  c.nop
                  nop
                  nop
                  lui          t5, 894435
                  c.mv         a3, s7
                  divu         t6, s11, a4
                  c.addi16sp   sp, 48
                  c.nop
                  or           t4, s8, a3
                  c.add        a2, s1
                  div          a2, a3, s1
                  ori          a7, t3, -1109
                  mul          a4, gp, t3
                  andi         s0, s9, -808
                  c.xor        a3, a2
                  srli         t0, tp, 29
                  srl          a2, s9, a1
                  c.mv         a6, a3
                  div          s3, s6, t6
                  xor          sp, a4, a1
                  nop
                  divu         t6, t5, sp
                  sub          a7, t5, s6
                  lui          a5, 713065
                  c.andi       a5, 19
                  c.lui        tp, 5
                  div          a7, s7, a0
                  c.sub        a5, s0
                  ori          a6, tp, 163
                  c.nop
                  xor          s8, t1, ra
                  srai         s11, s8, 15
                  c.or         a4, a1
                  auipc        s11, 78514
                  srai         s10, ra, 2
                  c.xor        s0, a4
                  c.srai       a4, 22
                  add          gp, a4, t3
                  mulh         tp, a4, a1
                  and          s8, t6, s1
                  add          zero, s9, zero
                  sltu         a6, a4, t6
                  andi         tp, zero, -571
                  slli         s6, s4, 13
                  c.srli       a0, 27
                  auipc        t6, 955860
                  c.sub        a0, a2
                  sll          s8, s8, a6
                  slli         s6, t2, 10
                  xor          t0, tp, a7
                  c.li         a5, 11
                  xori         t1, a0, 627
                  c.or         s0, a5
                  slti         ra, t2, 1470
                  xor          t6, tp, ra
                  ori          gp, s4, -804
                  divu         a5, a0, a5
                  c.sub        s1, a3
                  nop
                  c.nop
                  c.lui        t4, 1
                  sra          a0, s10, s8
                  srli         s8, a2, 14
                  mulhsu       s4, s6, sp
                  sltiu        a7, tp, -1698
                  c.xor        a0, a4
                  remu         t2, a3, a0
                  add          t2, s10, t4
                  c.slli       s6, 19
                  mulhu        a5, s0, s10
                  c.add        a3, s9
                  xori         s10, t0, -1942
                  sll          s2, t1, a0
                  c.slli       a2, 10
                  sltu         zero, t4, s5
                  and          t0, t2, a3
                  div          s10, s3, s3
                  c.nop
                  srli         a0, s0, 24
                  c.slli       a3, 1
                  nop
                  srl          s7, t6, t0
                  slli         a2, a4, 18
                  c.lui        s1, 14
                  c.addi       ra, -1
                  c.xor        a2, a2
                  xori         s10, a4, -749
                  xor          a3, t2, t3
                  sltu         a0, a3, t6
                  mulhu        tp, s10, s0
                  xor          ra, t5, sp
                  c.li         t4, 16
                  auipc        t1, 978142
                  c.andi       s1, -1
                  sub          s2, a3, sp
                  c.slli       s10, 18
                  c.andi       s0, -1
                  srli         sp, t1, 24
                  sra          s4, s5, gp
                  c.addi16sp   sp, 240
                  srl          zero, ra, t6
                  c.li         t1, 9
                  mulhsu       t4, t6, t4
                  ori          s2, a1, -594
                  sltiu        t5, t3, -439
                  slt          a3, s9, s4
                  lui          t5, 799081
                  c.sub        a5, a3
                  c.sub        a5, a4
                  add          s5, s0, s1
                  div          t2, s9, a6
                  c.srli       s1, 17
                  srl          a2, t0, s0
                  mulh         a4, t1, t1
                  sltu         s10, t5, t4
                  mulh         s8, s3, t1
                  div          a7, tp, a6
                  srli         t4, a4, 21
                  nop
                  c.nop
                  c.addi       s5, -1
                  or           sp, ra, s11
                  c.nop
                  andi         a2, a4, 557
                  sll          s2, s2, s4
                  mulhsu       s3, s1, t4
                  mul          a5, t1, t6
                  mulhu        a0, zero, s10
                  nop
                  c.or         a4, s0
                  add          s2, tp, gp
                  sltu         s7, zero, t6
                  nop
                  srl          t4, s1, gp
                  c.addi16sp   sp, 176
                  c.mv         s6, tp
                  c.xor        s0, a5
                  slti         t1, s2, 546
                  andi         gp, s2, 527
                  div          s8, t6, s6
                  c.nop
                  mulhsu       a3, s2, a2
                  c.lui        s6, 16
                  c.li         t0, -1
                  lui          gp, 920471
                  c.nop
                  rem          a4, a1, s0
                  slt          s5, t3, tp
                  c.mv         t6, s7
                  sltiu        s6, t4, 120
                  slt          t1, s3, a7
                  sll          s11, s2, a5
                  divu         t5, s2, t6
                  c.mv         gp, s3
                  mulhsu       s2, s10, s2
                  sub          a0, a2, a6
                  srai         t2, a1, 26
                  div          t0, s1, t1
                  c.mv         s7, t5
                  and          t6, s0, zero
                  or           s6, ra, s9
                  sll          t5, a3, t3
                  c.srai       s1, 20
                  andi         s4, s0, -1386
                  c.slli       a3, 11
                  sra          t4, s5, s2
                  mulhsu       a0, s5, a4
                  divu         s10, tp, s3
                  sltu         a7, s2, t0
                  c.addi16sp   sp, -16
                  mulh         sp, t6, a7
                  and          tp, s9, t2
                  srai         a4, s8, 8
                  c.li         t0, 13
                  srl          t0, a0, tp
                  and          t6, t6, s6
                  lui          s10, 741223
                  c.nop
                  mulhsu       a0, s5, s10
                  mulhu        s3, s1, a6
                  mul          a3, a1, s5
                  c.nop
                  sll          s1, s3, zero
                  c.andi       a3, 26
                  add          s10, a1, t5
                  xori         a3, gp, -854
                  c.addi       t4, -1
                  xor          a3, s0, t2
                  c.sub        a5, s1
                  c.or         a4, a5
                  c.slli       s10, 20
                  slt          a6, s9, gp
                  remu         s3, s4, a3
                  c.sub        s1, a2
                  c.or         s1, a4
                  sra          s11, s5, s3
                  sll          a6, a5, gp
                  sub          a4, s11, a1
                  srli         s7, s7, 21
                  div          t4, tp, a5
                  or           a0, ra, s11
                  mulhu        s11, zero, s5
                  c.srli       a2, 7
                  c.or         s1, a3
                  c.mv         s0, s0
                  c.addi4spn   a5, sp, 896
                  sltu         t2, s2, ra
                  sra          s10, t3, a0
                  mulhu        a6, s2, a7
                  mulh         a6, tp, s4
                  rem          a4, zero, t1
                  andi         s11, a3, 1590
                  c.sub        a0, a0
                  c.srli       a0, 9
                  lui          a4, 214977
                  c.srai       a2, 11
                  and          a6, a7, a2
                  c.sub        a4, a4
                  c.srli       a4, 8
                  nop
                  c.nop
                  andi         a4, a2, -24
                  c.add        s2, a2
                  c.srai       a4, 25
                  sub          s7, a3, tp
                  slt          a7, a1, s10
                  nop
                  divu         gp, s3, s10
                  mul          s0, a2, t3
                  sll          t6, zero, t3
                  c.and        s1, a5
                  lui          s8, 497508
                  slti         s5, s4, 1647
                  xor          a0, a4, a4
                  c.addi       s8, -1
                  sub          a3, s4, s2
                  c.andi       a3, 7
                  sra          ra, a4, a4
                  sltiu        a0, s0, 1697
                  rem          t5, t0, s8
                  c.xor        a2, a1
                  srl          a3, s11, s0
                  sub          s0, t5, tp
                  sra          s8, a6, s6
                  c.addi       a0, -1
                  ori          s6, s2, 322
                  srli         a4, t1, 13
                  c.addi16sp   sp, 432
                  srl          sp, a6, t1
                  sltu         s0, s9, a3
                  c.lui        t5, 18
                  c.sub        a0, a3
                  c.lui        a2, 30
                  sub          t6, s5, s5
                  nop
                  c.addi16sp   sp, -16
                  c.and        a0, a4
                  slli         s11, s0, 5
                  add          s7, s10, gp
                  srl          zero, gp, a7
                  sub          ra, s2, zero
                  c.addi4spn   s0, sp, 624
                  rem          t6, s4, a5
                  c.nop
                  nop
                  sltu         sp, zero, s3
                  mul          ra, s9, s7
                  add          t5, t1, gp
                  c.li         s4, -1
                  mulhu        t6, t6, a7
                  mul          zero, a2, a0
                  c.add        s8, s0
                  nop
                  andi         t1, t0, 1930
                  mulhsu       s8, s8, gp
                  c.add        sp, t6
                  c.slli       s3, 13
                  c.add        t1, gp
                  mul          a3, s6, s10
                  c.or         a0, a0
                  div          s4, tp, a4
                  nop
                  c.add        s7, gp
                  c.and        s1, a3
                  add          sp, a7, t5
                  c.and        a2, a1
                  sltu         t4, s1, t5
                  c.srli       a2, 8
                  c.nop
                  sll          t5, s7, t4
                  mulhsu       t6, s2, tp
                  c.addi       a4, -1
                  auipc        s4, 239342
                  mulh         s1, a4, s4
                  nop
                  srai         s5, a7, 18
                  srai         s3, s6, 1
                  addi         a5, gp, -431
                  andi         gp, t2, -219
                  c.addi4spn   a0, sp, 992
                  c.srli       a5, 16
                  c.mv         s0, tp
                  srli         s5, s2, 19
                  addi         a0, s4, 711
                  sub          t1, s8, t2
                  c.addi16sp   sp, 48
                  slli         zero, t6, 26
                  c.li         ra, -1
                  c.sub        a5, a0
                  ori          a0, s1, -573
                  slt          t4, gp, t6
                  c.srai       a2, 28
                  add          a2, s0, zero
                  srli         a5, tp, 6
                  mulhu        sp, s2, s10
                  slti         a0, s6, -1659
                  sll          s4, a2, a3
                  srl          sp, s10, s9
                  c.slli       s10, 31
                  c.li         s3, 26
                  xor          s10, gp, ra
                  c.andi       a3, 14
                  c.srai       s0, 30
                  c.slli       s10, 18
                  remu         s10, a0, t3
                  slli         s5, s3, 27
                  srl          s1, t6, s7
                  or           s7, s0, a5
                  c.li         t0, -1
                  ori          s1, s1, 1544
                  sub          t5, a2, s10
                  mulh         a0, s7, a4
                  divu         s8, t3, a3
                  lui          s3, 597980
                  c.addi16sp   sp, -16
                  c.sub        a4, a2
                  srli         s0, a1, 14
                  sub          a7, ra, a7
                  mulhsu       s5, a5, a2
                  srai         s8, s7, 26
                  c.andi       a0, -1
                  rem          a2, a6, t2
                  slt          s11, t3, a0
                  or           t5, sp, s1
                  mulhu        s1, s6, s9
                  remu         s10, a5, t0
                  nop
                  srli         s3, a7, 19
                  c.andi       a4, -1
                  c.mv         a2, s9
                  sltu         sp, s3, t0
                  mulhu        t6, t1, ra
                  slli         s2, s0, 6
                  rem          a7, tp, gp
                  slt          tp, s1, a4
                  c.addi16sp   sp, -16
                  nop
                  c.lui        t6, 3
                  c.add        ra, s11
                  ori          s8, s6, -1193
                  mulhsu       zero, s1, t2
                  rem          t5, tp, s8
                  c.xor        a5, a1
                  c.mv         s4, a1
                  c.andi       s1, -1
                  c.add        ra, a3
                  sra          s8, s1, s11
                  slt          s1, sp, s1
                  c.addi       a7, -1
                  slt          t1, zero, a4
                  c.addi       t2, -1
                  rem          t4, a0, s5
                  slti         s3, t5, -1562
                  srai         s1, t6, 18
                  mulhu        zero, t6, s8
                  c.addi4spn   s1, sp, 416
                  xor          ra, s7, s9
                  slt          a5, t3, s5
                  c.slli       a0, 5
                  srai         gp, t4, 20
                  c.or         a2, a5
                  div          a6, s8, a1
                  srai         t0, t6, 6
                  slt          a4, s0, t3
                  srli         t4, s11, 0
                  c.addi       t6, -1
                  srli         a5, tp, 27
                  sub          s3, ra, s6
                  sltu         t2, sp, s4
                  c.andi       a4, -1
                  c.xor        a2, a5
                  slti         s2, a2, 903
                  div          s4, s0, a5
                  divu         a7, a5, t0
                  c.nop
                  andi         s11, s0, -2039
                  srl          sp, s6, ra
                  xor          zero, a5, zero
                  mulhu        sp, s10, a1
                  addi         tp, t4, 604
                  rem          s2, ra, s7
                  c.srli       a2, 12
                  mulh         s4, t1, s11
                  sra          t2, a7, t3
                  c.andi       a5, 13
                  sub          s2, s9, s0
                  remu         s10, a3, s1
                  addi         tp, s3, -2039
                  c.lui        a0, 25
                  c.add        s8, s5
                  lui          t5, 924700
                  divu         a0, a2, s5
                  srli         gp, a7, 6
                  c.addi       a0, 23
                  xori         a6, tp, -827
                  mulhsu       s7, t6, s4
                  sra          a5, s10, t1
                  slli         t5, s5, 12
                  div          t5, t2, a7
                  sltiu        t4, s0, -1553
                  ori          t4, s6, 616
                  c.slli       s6, 23
                  xor          t5, a4, s5
                  xor          s6, t5, tp
                  ori          t0, s6, 1368
                  c.lui        tp, 30
                  mulhsu       a4, a3, s6
                  c.sub        a5, a1
                  c.li         s3, 0
                  div          ra, zero, t4
                  xor          s2, s6, a4
                  addi         a4, s4, -1540
                  nop
                  andi         t1, a6, 1129
                  c.mv         a5, a3
                  mulhu        s7, sp, s7
                  c.lui        s11, 23
                  andi         gp, tp, -1744
                  c.addi16sp   sp, -16
                  mul          a4, s8, a1
                  sub          a4, t5, s3
                  c.nop
                  slti         s11, tp, -882
                  c.srli       a0, 20
                  c.lui        a3, 17
                  lui          a6, 716416
                  c.or         a4, a2
                  c.addi16sp   sp, -16
                  mulh         gp, tp, s3
                  mul          s11, gp, s0
                  srl          s6, a1, s6
                  lui          t1, 322663
                  and          s10, sp, s9
                  andi         sp, s7, 1911
                  rem          t4, s7, s3
                  sltiu        s8, s7, 570
                  c.lui        s4, 8
                  ori          t0, t1, 1639
                  sltiu        s10, a2, -1804
                  andi         a6, a4, 1450
                  slli         a5, a6, 0
                  ori          s11, s8, -907
                  lui          a0, 390020
                  c.addi       t2, -1
                  addi         t2, sp, -1139
                  lui          a7, 164121
                  sltu         sp, zero, t5
                  andi         t1, a6, 237
                  c.srli       s1, 7
                  c.lui        s2, 16
                  srai         s1, t1, 27
                  nop
                  c.addi16sp   sp, 304
                  sll          s3, s0, sp
                  auipc        a5, 320440
                  c.add        t1, s1
                  mulh         a4, t5, s6
                  c.and        a4, s1
                  srai         s7, s10, 5
                  add          s11, a5, sp
                  c.addi       s2, 19
                  mul          t6, s10, s3
                  c.andi       a0, 6
                  andi         t1, tp, -60
                  divu         gp, tp, s2
                  nop
                  auipc        s1, 35304
                  div          a3, s3, t0
                  c.lui        a2, 16
                  c.lui        s0, 15
                  c.add        t2, s2
                  c.srli       a4, 28
                  ori          a7, s11, 1659
                  c.and        a4, a5
                  add          t1, ra, a1
                  rem          a3, s3, ra
                  c.srai       a4, 31
                  add          s11, a0, a7
                  c.or         a5, a3
                  c.mv         a3, t4
                  remu         a4, t1, s5
                  c.nop
                  remu         t6, s11, a7
                  sll          a2, s5, a5
                  mul          t6, a2, a3
                  or           s3, s7, s2
                  mulhsu       s7, s11, s9
                  srai         s8, s2, 2
                  c.addi16sp   sp, 48
                  c.srai       a0, 5
                  mulhu        a3, a0, zero
                  slt          a6, s9, a0
                  lui          s5, 742060
                  auipc        s4, 807240
                  sub          ra, sp, t3
                  mul          s6, s5, t0
                  and          s3, s4, t2
                  sub          a0, t1, s9
                  mulh         a2, tp, t1
                  remu         t5, s11, a3
                  remu         s11, t0, t5
                  c.or         a5, a1
                  addi         t0, a0, -1562
                  mulhu        s2, s5, t6
                  remu         a4, tp, t6
                  div          a6, t2, t2
                  c.srai       a4, 22
                  lui          s2, 9361
                  ori          a2, s8, -2039
                  c.srai       s0, 5
                  c.mv         s3, t6
                  c.sub        s0, s0
                  c.addi       a0, -1
                  c.li         t4, 9
                  c.addi       t4, -1
                  and          s6, a1, zero
                  xori         t4, s7, 1510
                  andi         tp, t6, -1273
                  slli         ra, gp, 13
                  slti         a0, s7, 364
                  slli         s3, s6, 15
                  or           s8, s3, s5
                  c.mv         a6, a0
                  slt          a0, s5, s8
                  c.lui        a2, 17
                  andi         ra, t3, -468
                  srli         a3, s6, 6
                  or           s10, s3, a1
                  srl          tp, s3, t6
                  c.andi       s1, -1
                  mul          tp, a5, s8
                  ori          t2, s1, 1879
                  sub          t5, s1, s9
                  c.srai       a5, 6
                  ori          tp, a6, 627
                  c.mv         gp, s3
                  remu         t4, zero, s8
                  c.xor        a5, s1
                  c.add        ra, s6
                  ori          s2, s10, -1591
                  nop
                  c.addi       a2, -1
                  c.addi4spn   s1, sp, 240
                  auipc        gp, 607731
                  lui          a6, 811387
                  div          ra, a2, s8
                  sltiu        t4, s0, -1699
                  sltu         t5, a6, tp
                  srl          a2, t2, tp
                  ori          s7, s6, 1820
                  sll          a6, t0, a7
                  div          s8, zero, a7
                  c.or         a3, a5
                  xori         gp, a5, -1570
                  srl          ra, a4, s10
                  mulhu        s0, a7, gp
                  andi         s1, a7, -1159
                  slt          t5, a7, a4
                  mulhsu       s8, s11, t3
                  sltiu        sp, zero, -1129
                  remu         t5, s6, tp
                  ori          s11, t6, -1005
                  ori          zero, t3, -481
                  sltu         zero, s7, s4
                  add          tp, zero, s10
                  slt          s11, s1, gp
                  c.addi       s11, 14
                  c.addi       t5, 20
                  c.addi4spn   a5, sp, 96
                  sltu         s10, s4, a5
                  c.slli       s0, 6
                  xor          sp, a4, a5
                  srai         s6, a0, 27
                  div          s1, s7, a0
                  c.addi4spn   s0, sp, 672
                  srl          s3, s6, t3
                  divu         t1, s7, s11
                  c.srai       a2, 18
                  c.addi16sp   sp, -16
                  mul          s10, t2, s7
                  srl          s2, gp, s9
                  divu         s7, t5, ra
                  c.and        s1, a3
                  addi         s10, s4, -933
                  slti         s1, s0, -498
                  slli         t1, zero, 8
                  xor          s6, t4, t3
                  c.srli       a5, 21
                  mulhsu       tp, a7, gp
                  mulhsu       s5, a1, t5
                  c.lui        t6, 24
                  c.nop
                  c.srli       a3, 16
                  div          t5, t0, s10
                  lui          t5, 577846
                  divu         s4, s8, s11
                  c.xor        a2, a0
                  andi         a3, t0, -1788
                  div          s5, a0, sp
                  nop
                  ori          a6, a4, -569
                  andi         t5, t1, 222
                  andi         a2, a4, -514
                  c.or         s1, a0
                  or           s0, a6, t0
                  mul          s10, s10, s5
                  c.addi16sp   sp, -16
                  slti         s7, s4, 346
                  c.srli       a3, 28
                  mul          s7, s7, a0
                  div          a0, t3, ra
                  slt          s11, s7, a7
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 192
                  lui          a5, 1015842
                  c.sub        a0, s1
                  mulh         a2, t0, s0
                  sltu         a2, t3, t5
                  auipc        a2, 191403
                  sltiu        t1, gp, -78
                  slt          s7, a1, a3
                  slt          ra, s4, s0
                  or           a0, t6, gp
                  slt          a2, t6, a2
                  c.slli       s2, 15
                  srai         a2, s11, 22
                  c.li         sp, -1
                  c.li         a7, -1
                  and          a6, t2, t6
                  c.andi       s0, -1
                  c.addi4spn   a4, sp, 672
                  ori          s10, s9, 1353
                  c.xor        a0, a2
                  sub          a6, sp, a3
                  sltiu        s8, t3, 1330
                  div          t1, a2, a6
                  sra          t5, s3, a6
                  c.srai       a5, 11
                  rem          s11, s10, a0
                  mulhu        s3, t2, sp
                  c.srai       a5, 24
                  sra          gp, a5, t3
                  c.addi16sp   sp, -16
                  auipc        t2, 249640
                  c.lui        tp, 27
                  c.add        t4, ra
                  srli         t0, s11, 24
                  mulh         a4, t2, a5
                  c.andi       a0, -1
                  sra          s0, s9, a3
                  c.lui        s0, 7
                  addi         tp, ra, -1500
                  xori         s8, s4, -710
                  sll          a4, s7, a2
                  c.and        a0, a4
                  xor          a3, s3, s5
                  andi         s0, sp, -1350
                  rem          a6, s5, a7
                  c.mv         a4, a3
                  sll          sp, s10, s0
                  sll          s8, t3, s10
                  c.addi       s1, -1
                  add          sp, s8, s5
                  sll          s2, s1, s0
                  srl          s8, s9, tp
                  c.xor        a3, s0
                  srai         a2, s2, 23
                  c.li         s11, -1
                  mul          t5, t2, a2
                  auipc        s7, 356013
                  c.andi       a0, 0
                  add          s4, s7, tp
                  mulhsu       a3, tp, a3
                  rem          a6, s11, s0
                  auipc        s0, 568145
                  andi         t0, a1, 1322
                  rem          ra, ra, t4
                  auipc        s10, 513429
                  and          s2, s8, s6
                  or           s0, s7, s2
                  c.addi16sp   sp, 288
                  sltu         t1, t3, a4
                  ori          s10, s6, 807
                  mulhsu       s1, t5, a7
                  c.addi       t6, -1
                  c.addi4spn   a3, sp, 752
                  andi         a6, s2, -902
                  c.srli       a2, 21
                  slti         a6, s5, 48
                  srl          a0, a1, s7
                  remu         sp, s0, s7
                  sll          s5, a6, t1
                  and          s10, s6, s4
                  srli         gp, tp, 9
                  c.addi16sp   sp, -16
                  add          t4, t5, a2
                  sll          s1, s4, t3
                  sltiu        tp, zero, 1927
                  c.or         a3, a5
                  c.slli       t5, 5
                  c.addi       s7, -1
                  add          sp, a7, a0
                  c.slli       s1, 15
                  mulhsu       s8, t2, s3
                  c.mv         a2, s5
                  c.and        s0, s0
                  c.add        s2, gp
                  c.addi       s0, 8
                  xor          s6, a2, gp
                  c.nop
                  sub          s0, s1, s6
                  xor          a3, a6, s0
                  lui          t0, 205138
                  mulhu        ra, s7, s11
                  slt          s5, s6, t2
                  div          s10, s10, s3
                  sra          s0, s7, s2
                  divu         s0, s7, s4
                  srli         gp, t6, 11
                  c.srai       a4, 8
                  c.andi       a4, 23
                  sra          a0, a3, a6
                  auipc        s7, 456074
                  c.and        a5, a2
                  rem          s3, s10, s8
                  rem          t6, t5, s11
                  c.sub        s1, s0
                  c.add        s6, s1
                  sltu         a0, a3, s8
                  c.slli       s3, 26
                  c.and        a3, a1
                  srl          a2, zero, sp
                  rem          s2, s2, a4
                  remu         s11, s6, s10
                  c.xor        a0, a4
                  c.li         s11, -1
                  or           t5, s10, t0
                  c.nop
                  nop
                  or           tp, s2, s9
                  add          s3, s10, zero
                  mul          t1, ra, t0
                  c.sub        a4, a4
                  xor          ra, a5, s7
                  c.xor        a3, a4
                  mul          s10, a6, t1
                  mulh         zero, a0, s8
                  sub          a5, t0, a1
                  c.or         s1, a1
                  c.addi       a0, -1
                  addi         zero, t1, -410
                  sltiu        a0, s7, 1115
                  c.addi       a4, 10
                  mul          gp, t4, s10
                  srli         s8, s7, 5
                  c.slli       t6, 23
                  c.nop
                  c.and        a0, a4
                  sltiu        s3, s11, 1368
                  auipc        zero, 373266
                  div          s0, s6, s0
                  mul          s6, t0, s9
                  c.srli       a0, 15
                  or           s8, t4, s0
                  c.nop
                  divu         s3, t2, s5
                  srai         s2, t2, 26
                  xori         s5, s4, 139
                  c.mv         a6, t0
                  xori         t4, a1, -468
                  xori         t0, tp, -1449
                  sll          t6, s0, s9
                  slli         a7, t4, 24
                  remu         s10, gp, t6
                  add          s4, s6, t3
                  andi         a0, zero, 817
                  lui          t5, 545818
                  sltiu        t5, s1, 1321
                  remu         t6, s2, a2
                  c.sub        s0, a0
                  sltiu        s10, zero, 1565
                  c.andi       a5, 10
                  or           s10, a6, s6
                  c.nop
                  sll          s5, t1, s7
                  add          a6, a2, t2
                  add          s6, s6, a4
                  slti         gp, s8, -1502
                  mul          a3, gp, t4
                  add          gp, s7, s4
                  remu         a5, s5, a0
                  divu         a4, s8, zero
                  c.addi       s6, -1
                  div          t5, s9, s2
                  nop
                  c.sub        a5, a2
                  div          tp, s11, s1
                  c.srai       s0, 2
                  c.or         a4, a2
                  or           tp, t2, zero
                  sltu         a7, a4, t4
                  c.li         s2, 4
                  remu         t5, s0, a3
                  add          s5, t2, s0
                  lui          s8, 515488
                  sub          s0, zero, s8
                  sra          t4, a0, s1
                  auipc        s11, 380747
                  mul          a7, ra, a3
                  c.addi4spn   a5, sp, 928
                  c.lui        ra, 6
                  slti         s1, s3, 899
                  lui          t1, 237023
                  or           zero, s4, s6
                  sltiu        s2, a5, 1093
                  c.lui        t4, 12
                  c.addi       a3, 11
                  sll          t5, ra, s7
                  mulh         s4, a1, s8
                  nop
                  c.li         ra, -1
                  remu         s4, s2, a0
                  c.addi       a7, -1
                  mulhu        zero, s2, s11
                  c.and        a4, a3
                  c.li         a0, -1
                  c.add        a7, s7
                  xori         a5, s11, 183
                  c.nop
                  sll          s3, t6, t3
                  addi         t0, t6, 1911
                  and          s2, s5, t4
                  c.mv         a0, t1
                  remu         tp, t6, s1
                  mulhsu       s11, s8, a1
                  remu         t2, a4, tp
                  mulhsu       gp, a4, s8
                  c.andi       a3, -1
                  mulh         t4, a2, s1
                  add          s1, a5, gp
                  c.andi       a0, 1
                  c.addi       a0, 29
                  remu         ra, a4, s11
                  remu         s3, a0, sp
                  add          s4, s9, tp
                  mul          a0, t3, t1
                  and          zero, t5, s0
                  sltiu        s11, t5, 1438
                  slti         a7, s2, 286
                  c.lui        t4, 22
                  c.xor        s1, s1
                  slti         gp, t2, -1281
                  xori         gp, zero, 1932
                  mulh         a3, a4, s0
                  ori          s8, s11, 1220
                  c.nop
                  c.mv         sp, ra
                  srl          s0, a4, s4
                  sll          s8, t0, t2
                  slt          ra, t6, t2
                  lui          zero, 644891
                  srai         gp, s0, 21
                  sltiu        s10, zero, -503
                  or           s6, t5, s7
                  mulh         t6, s9, a2
                  divu         s10, t6, s2
                  addi         a4, s11, -181
                  c.srai       a0, 23
                  addi         a5, s7, 1137
                  c.slli       t6, 19
                  c.addi16sp   sp, -16
                  c.addi4spn   a2, sp, 544
                  or           s5, a1, a5
                  c.add        s0, s7
                  c.add        a2, s6
                  mulhsu       t0, s11, a3
                  rem          t1, t5, t2
                  xor          s6, a3, t0
                  mulh         sp, s9, t1
                  srai         t1, t6, 5
                  addi         s11, s6, 264
                  mul          s3, s11, tp
                  div          t1, t2, t4
                  c.addi16sp   sp, -16
                  mulh         ra, gp, a4
                  c.mv         t5, sp
                  srli         t0, ra, 5
                  mulhu        s1, a2, a7
                  nop
                  c.addi4spn   a0, sp, 848
                  sll          a7, t2, tp
                  c.srai       a5, 12
                  divu         gp, t1, s0
                  mul          s0, tp, s8
                  c.mv         a6, sp
                  c.andi       a2, 27
                  c.and        a2, a2
                  sltu         ra, s11, s3
                  srai         t5, s3, 3
                  srli         s7, s10, 20
                  andi         t0, a4, -1742
                  add          a5, t4, gp
                  c.nop
                  sra          a6, s10, a2
                  xor          a3, s9, t4
                  ori          t2, t3, -1063
                  sra          s8, a5, s3
                  rem          t5, s8, tp
                  c.or         s1, a3
                  c.andi       a5, -1
                  div          s4, a4, s1
                  add          t4, s2, s8
                  c.addi4spn   s1, sp, 688
                  rem          s7, s8, zero
                  c.andi       s0, 3
                  div          ra, t4, s11
                  mulh         t6, t5, s11
                  sltiu        s5, s7, 496
                  c.xor        a0, a1
                  addi         t4, t3, 1766
                  slt          a6, s7, a0
                  divu         a2, a7, s4
                  xor          gp, t6, zero
                  xor          a7, s0, t2
                  c.lui        a2, 5
                  c.add        t0, s5
                  c.andi       s0, 28
                  sll          gp, s6, s1
                  sltu         a6, s9, s10
                  mulhu        a3, s10, a6
                  c.xor        a5, s0
                  c.srai       a3, 16
                  srl          t4, s6, s9
                  sltiu        gp, a6, 1875
                  sltu         s11, s4, t5
                  xor          s6, sp, a4
                  c.andi       a3, 9
                  ori          s5, a7, -70
                  c.li         t4, 8
                  div          s2, s10, s7
                  mul          t2, s3, s5
                  c.nop
                  c.nop
                  srli         t0, a0, 15
                  ori          s0, t2, 677
                  c.or         a2, a5
                  slti         s7, t4, 2001
                  c.or         a0, a0
                  andi         a6, a2, -999
                  c.and        a0, a0
                  c.or         a5, a4
                  remu         a3, t4, s10
                  c.srai       s0, 19
                  xor          t4, s5, t2
                  c.andi       a5, 0
                  c.srai       a5, 20
                  c.addi16sp   sp, 224
                  c.srli       a0, 14
                  c.and        a3, a1
                  c.nop
                  mulhsu       t5, s0, a4
                  c.mv         s5, a7
                  c.xor        s0, a2
                  c.xor        s1, a3
                  ori          gp, t6, -1470
                  slli         s2, sp, 6
                  sra          a2, s3, s9
                  andi         s8, ra, -1284
                  remu         a3, s0, s3
                  c.andi       a2, 16
                  lui          sp, 199265
                  ori          s1, t5, 170
                  mulh         a6, t1, t3
                  c.and        s0, a5
                  xori         t4, s4, 898
                  or           s4, s3, a0
                  and          a6, t2, t0
                  srai         t0, s2, 31
                  ori          s2, s0, -1003
                  c.add        a3, t1
                  c.xor        s1, s0
                  sltu         s3, a4, t0
                  lui          s0, 574947
                  c.or         a5, a3
                  c.and        a5, a0
                  rem          ra, t2, a3
                  c.mv         s8, a6
                  mulhu        s11, a7, a3
                  sll          s3, a7, s11
                  nop
                  srai         gp, s5, 12
                  c.and        a2, a5
                  xor          s2, t2, a0
                  sub          t2, t5, a7
                  mul          sp, t5, t4
                  ori          t4, zero, -886
                  add          t4, s2, a7
                  c.srai       a2, 17
                  sll          s8, s6, t2
                  c.xor        a4, a5
                  xor          s6, tp, s6
                  mulhu        a7, a3, a0
                  sltu         s8, t6, s11
                  c.sub        s0, a3
                  addi         s7, s7, -165
                  remu         a7, t0, t3
                  c.and        s1, s0
                  srli         s8, s2, 15
                  andi         ra, s4, 460
                  auipc        s0, 327291
                  mul          ra, t1, a7
                  c.andi       a4, 6
                  c.srai       s1, 26
                  c.sub        a5, a1
                  add          t5, s1, t3
                  xor          gp, t2, t0
                  xori         s5, a7, 566
                  ori          s6, a2, 1749
                  sra          a7, zero, s11
                  div          a3, sp, a7
                  rem          t2, s1, t3
                  c.srai       a2, 5
                  div          t5, s7, t1
                  srli         s4, t3, 22
                  c.andi       s0, 12
                  c.add        t5, s8
                  c.nop
                  ori          s8, s8, -645
                  c.sub        s0, a3
                  sll          t2, s9, t5
                  add          s1, zero, s3
                  divu         a3, t4, s5
                  c.slli       s0, 19
                  slti         s1, ra, 23
                  mulh         tp, a1, t0
                  c.srai       s1, 25
                  srli         s11, a2, 9
                  c.or         a0, a4
                  c.addi4spn   a5, sp, 32
                  nop
                  remu         s2, s7, s9
                  addi         t1, s3, -849
                  slti         a0, a4, 1151
                  c.nop
                  divu         s4, s9, t2
                  c.srli       a5, 6
                  c.andi       s0, 2
                  slli         t6, t6, 1
                  c.addi16sp   sp, -16
                  c.and        a2, a1
                  or           s8, sp, tp
                  sltiu        a4, s9, -1650
                  c.and        a2, s1
                  srai         a4, a1, 27
                  slti         tp, a6, 709
                  mul          s2, a5, s8
                  sub          ra, zero, ra
                  c.nop
                  div          zero, t6, ra
                  sll          t4, gp, ra
                  sltiu        s3, a0, -1507
                  add          a6, s4, s1
                  mulhsu       s1, s2, t4
                  mulhu        t0, t5, s9
                  ori          a7, s7, 10
                  srl          t5, t1, sp
                  divu         a6, s0, s3
                  addi         tp, a4, 1692
                  divu         t0, s5, s9
                  sltiu        s11, sp, 1017
                  c.nop
                  auipc        t4, 302646
                  c.and        s1, s0
                  c.add        ra, s2
                  and          s4, a2, a7
                  c.xor        a3, s0
                  ori          sp, zero, 1611
                  c.andi       a4, -1
                  srl          a6, s7, a0
                  srli         ra, a2, 23
                  slt          a4, t5, s6
                  c.addi4spn   a5, sp, 816
                  and          a5, a3, s6
                  rem          tp, sp, t1
                  addi         t5, t3, -1980
                  or           t2, zero, s7
                  mulhsu       t0, a5, a5
                  addi         a3, a4, 1742
                  xor          s7, s3, t1
                  slli         tp, a1, 30
                  c.srai       a0, 11
                  add          s1, s7, t5
                  c.addi16sp   sp, 192
                  auipc        s8, 695030
                  c.addi4spn   a5, sp, 976
                  lui          s6, 811397
                  c.andi       a4, -1
                  xor          t2, a6, zero
                  sltiu        ra, sp, -221
                  remu         s6, a7, s6
                  sltiu        s5, s2, 1625
                  c.and        s1, a1
                  div          a0, a6, gp
                  divu         a5, s4, a1
                  sltiu        a5, a2, -1202
                  xori         s6, s3, -1152
                  divu         sp, s2, a5
                  addi         s7, t5, -1608
                  lui          a3, 646829
                  c.or         s0, a0
                  c.addi16sp   sp, 368
                  or           s3, ra, t5
                  c.or         a3, a1
                  addi         t1, gp, 1412
                  sltiu        a5, a5, 341
                  add          s1, s1, t2
                  sll          ra, t5, t5
                  c.mv         s4, s8
                  divu         sp, s3, tp
                  c.srai       a4, 30
                  slti         tp, t4, 323
                  sltiu        a7, t1, -188
                  c.add        t2, t0
                  c.srli       a0, 11
                  sra          tp, a6, t5
                  mulh         s10, t2, s4
                  srl          s8, s1, s2
                  or           a2, s7, a7
                  c.addi4spn   s1, sp, 192
                  slli         gp, t5, 8
                  c.slli       s0, 3
                  mulh         t2, zero, s3
                  and          s7, a3, s11
                  c.addi4spn   a0, sp, 528
                  c.li         sp, 28
                  c.sub        a2, a3
                  rem          t1, gp, a4
                  auipc        s11, 269544
                  mul          s0, a1, s7
                  srl          a6, a2, a1
                  mulh         gp, t3, gp
                  mulhu        s11, s0, t0
                  srl          a0, t4, a2
                  c.andi       a2, -1
                  andi         a6, a6, 1461
                  slt          s10, sp, t1
                  c.lui        s5, 6
                  remu         a7, a6, s6
                  xor          t6, s9, s1
                  auipc        s8, 607178
                  c.add        s1, t6
                  c.addi       t0, 26
                  mulhu        a7, t0, s6
                  div          a5, a4, a3
                  xori         s4, a1, 53
                  or           s2, t3, t0
                  mulhu        t5, zero, s7
                  sltu         a0, s7, ra
                  slt          a7, tp, tp
                  xor          t4, s3, s0
                  c.srli       s0, 25
                  slt          a7, a5, s5
                  sll          a4, t2, t4
                  srl          t6, ra, s9
                  sltiu        a3, t0, 1242
                  and          s8, a2, a3
                  or           sp, t4, a6
                  c.addi       t4, 18
                  mulhsu       t4, s6, s4
                  or           s4, t2, s11
                  sra          s4, a5, s3
                  c.or         s1, a4
                  c.and        a4, s1
                  div          tp, a7, s6
                  sltiu        t5, zero, -451
                  lui          s1, 52946
                  remu         t2, t3, s10
                  ori          t1, gp, -261
                  xori         t1, s3, 1773
                  sltu         a4, a4, t3
                  mulhsu       s11, a6, s5
                  c.mv         s1, ra
                  mulhu        ra, a4, t1
                  c.or         a5, a0
                  or           t4, a1, t6
                  sra          s6, t3, s11
                  sub          s3, tp, zero
                  c.sub        a3, a3
                  c.addi4spn   a2, sp, 912
                  mul          s3, sp, gp
                  add          s1, s9, t1
                  c.srai       s1, 3
                  c.nop
                  srli         a4, s10, 16
                  c.srai       s1, 15
                  xor          s3, zero, t6
                  srai         a5, a1, 12
                  mulhu        a3, s10, ra
                  c.nop
                  slti         a6, a6, -1130
                  c.addi4spn   a5, sp, 192
                  c.add        a6, t2
                  c.lui        a6, 25
                  div          a7, a3, s0
                  ori          s4, t6, -18
                  c.or         a5, s1
                  c.add        s11, a6
                  c.addi4spn   s0, sp, 912
                  c.addi       a5, -1
                  ori          a5, gp, -415
                  c.and        a0, a3
                  remu         s3, tp, a1
                  xori         a0, t1, 495
                  mulh         a4, t3, a2
                  slti         a5, sp, -1793
                  andi         zero, a7, -1918
                  xori         a5, s6, 1350
                  mul          s2, s6, ra
                  divu         a0, s10, s0
                  mulh         zero, s6, tp
                  ori          s11, a7, 202
                  c.lui        a0, 2
                  c.addi       ra, -1
                  c.mv         t1, t4
                  c.li         a6, 27
                  or           t1, a0, a4
                  c.addi16sp   sp, 112
                  c.slli       t5, 8
                  c.addi16sp   sp, 384
                  auipc        a0, 790422
                  c.nop
                  c.add        ra, t2
                  xori         t2, s4, 393
                  xori         a4, tp, 282
                  c.addi16sp   sp, -16
                  and          a6, t5, a4
                  srai         ra, s1, 20
                  c.add        t1, s10
                  addi         a2, s9, -1258
                  slti         s7, s1, -573
                  or           sp, gp, t4
                  mulh         a7, s10, t3
                  mulh         a4, gp, s6
                  rem          s3, a4, s3
                  sub          gp, s6, t3
                  nop
                  nop
                  xor          a3, a0, ra
                  andi         a5, t6, 944
                  sll          s8, t0, s5
                  mul          s1, gp, s2
                  slli         a5, s9, 16
                  c.lui        s3, 2
                  c.andi       a0, 2
                  c.sub        a3, s0
                  mulh         s8, ra, s3
                  c.sub        s0, a3
                  c.and        s1, a1
                  srl          t6, s3, t5
                  slli         s4, s3, 6
                  c.mv         sp, t6
                  c.mv         t2, s8
                  sll          s1, a1, s3
                  c.sub        s0, a1
                  and          t2, s6, t2
                  c.addi4spn   s1, sp, 448
                  srli         s0, s2, 8
                  remu         s5, a5, t4
                  addi         tp, s5, -1852
                  c.addi16sp   sp, -16
                  slli         tp, tp, 3
                  sra          s8, t1, t0
                  c.sub        a4, a4
                  c.srai       a3, 10
                  c.or         a3, s1
                  lui          s7, 995264
                  div          t0, s8, t2
                  c.xor        s0, a1
                  c.li         t0, -1
                  c.lui        a0, 15
                  divu         s6, sp, tp
                  slt          t2, a0, s1
                  addi         t4, s7, 1215
                  c.andi       a4, 16
                  c.or         a0, s1
                  sll          s6, gp, a6
                  or           s2, s5, a6
                  sll          s5, a0, a6
                  sub          s7, s1, a2
                  sub          t4, s2, a2
                  srl          s7, s6, s0
                  c.add        gp, s5
                  c.srai       a3, 19
                  rem          t5, t6, t3
                  slt          s11, s8, s5
                  c.nop
                  c.sub        s1, a4
                  nop
                  sll          s11, ra, a3
                  srl          s10, a5, s5
                  slt          s8, s6, s1
                  mul          s4, a4, a2
                  c.lui        s8, 28
                  mulh         s6, sp, t6
                  c.and        a0, a5
                  c.or         a5, a4
                  c.and        s1, a4
                  or           s8, a3, s5
                  sll          s2, s2, a4
                  andi         a4, tp, -432
                  rem          s4, t5, a4
                  c.and        a0, a2
                  mulhu        s2, s5, a4
                  mulhsu       s4, t3, gp
                  c.li         a4, -1
                  rem          s3, a1, s11
                  c.lui        a7, 16
                  addi         a6, t0, 1181
                  c.mv         t2, a5
                  srli         s8, s9, 30
                  mulhsu       a7, a1, s11
                  slli         s7, a1, 1
                  c.addi4spn   a2, sp, 144
                  mulhsu       s10, a3, t1
                  andi         gp, s8, 1334
                  slti         ra, a3, -462
                  mulhu        s0, a5, s4
                  c.or         a3, s0
                  slti         sp, a2, -23
                  srai         t6, s4, 12
                  c.or         a5, a2
                  c.nop
                  srl          a4, a6, s8
                  c.addi16sp   sp, 352
                  srai         s2, tp, 22
                  rem          s1, t0, t1
                  slli         a4, s5, 15
                  mulhsu       t5, s11, s3
                  rem          a2, s2, a6
                  sra          a3, a1, zero
                  srli         a0, t0, 28
                  c.srli       a4, 19
                  ori          t4, t3, -494
                  rem          t6, sp, s7
                  sra          s8, a6, ra
                  sub          s8, a5, s7
                  xor          sp, a0, gp
                  xor          s11, s6, sp
                  slt          t2, a4, ra
                  c.slli       t2, 18
                  c.srli       a0, 17
                  srai         t4, s8, 13
                  sub          t0, a0, s10
                  sub          s11, ra, t4
                  sltiu        t4, sp, -22
                  lui          s1, 640344
                  xor          zero, s4, t1
                  c.mv         t4, a7
                  auipc        sp, 901798
                  lui          s0, 797827
                  c.addi       t0, -1
                  add          zero, t3, t3
                  ori          a7, s2, 1732
                  remu         ra, ra, s5
                  c.nop
                  c.or         a3, a0
                  xor          s6, t4, s5
                  andi         t5, a4, -654
                  andi         a4, s1, -251
                  xor          a0, a1, sp
                  c.slli       t5, 17
                  c.xor        a0, a2
                  ori          a7, a1, 668
                  c.nop
                  c.and        a0, s1
                  srai         t5, s0, 1
                  c.srli       a2, 25
                  mulhsu       tp, a3, t0
                  rem          a0, tp, s1
                  slt          s0, a6, s2
                  remu         tp, a5, t1
                  c.add        tp, a4
                  c.lui        s6, 14
                  c.addi       a6, -1
                  and          a3, s1, s7
                  c.li         a7, 9
                  c.lui        s10, 7
                  sltiu        gp, s11, 673
                  nop
                  ori          t4, t5, 1257
                  c.slli       tp, 4
                  ori          s5, t4, -1341
                  c.slli       s5, 20
                  sub          s11, s10, a1
                  srai         s2, s1, 28
                  c.srli       a2, 28
                  c.srli       a4, 19
                  xori         tp, s7, 187
                  remu         a5, s10, t6
                  sra          s2, a6, t5
                  remu         gp, tp, s3
                  addi         a4, gp, 1756
                  nop
                  remu         t5, s7, s5
                  div          a0, t4, s2
                  mulhsu       s2, a0, ra
                  mulh         s10, s6, a5
                  c.addi4spn   a5, sp, 32
                  sltiu        t4, zero, -1730
                  slli         s10, s8, 16
                  mulhsu       a7, s11, ra
                  c.addi4spn   s0, sp, 368
                  c.andi       a4, 18
                  mulhu        s4, s10, s8
                  xori         s2, tp, -2042
                  mulh         a4, a0, zero
                  add          a0, t4, sp
                  mulh         s1, t3, a7
                  add          s4, a2, t2
                  auipc        s4, 55749
                  auipc        a5, 157534
                  c.sub        a0, a0
                  and          a4, sp, gp
                  c.addi16sp   sp, -16
                  c.sub        a5, a0
                  sltu         a4, a4, a5
                  mulh         sp, t0, a1
                  c.addi4spn   a5, sp, 128
                  sltu         t6, a4, s7
                  remu         s0, a5, t5
                  nop
                  sltu         s11, s7, s2
                  sltu         s5, a0, s9
                  add          ra, a6, s2
                  xori         a2, sp, -565
                  addi         s7, a5, -208
                  srli         s11, a4, 16
                  xori         s8, s4, 1737
                  mulh         t5, s7, tp
                  ori          s10, a1, -487
                  srai         s11, a6, 14
                  c.slli       a2, 30
                  nop
                  lui          a6, 36422
                  sltu         t2, zero, t5
                  slli         t4, s2, 6
                  remu         zero, s7, a0
                  slli         zero, s6, 23
                  rem          s5, t5, sp
                  rem          tp, t3, a7
                  mulh         t6, a1, a5
                  remu         s0, s10, s5
                  srli         zero, a0, 21
                  add          t2, t5, s8
                  c.addi16sp   sp, 256
                  c.or         s0, a2
                  c.lui        s11, 24
                  slli         s7, s5, 6
                  add          a3, gp, s4
                  xor          s1, s0, s2
                  srai         s4, t3, 20
                  c.addi       s11, 24
                  andi         sp, gp, 1802
                  mulhsu       t1, t5, s7
                  c.li         s4, 21
                  mulhu        t5, s6, zero
                  c.andi       a0, 12
                  addi         s8, a6, 90
                  auipc        s10, 681923
                  remu         s10, sp, a4
                  srai         s8, t2, 27
                  c.mv         a6, s3
                  slti         s7, gp, 1421
                  c.addi16sp   sp, -16
                  auipc        s11, 93691
                  sra          a2, s6, t4
                  srl          tp, s9, t2
                  srli         a2, s9, 0
                  mul          t0, t4, a0
                  remu         a7, ra, s3
                  xori         s10, t2, 919
                  xor          s11, s8, s3
                  c.and        a5, s1
                  c.and        a2, a1
                  sll          t0, a3, t5
                  slli         s4, s7, 3
                  or           a0, sp, t2
                  c.xor        s1, a1
                  and          ra, a7, t3
                  c.sub        a4, a5
                  c.addi       t1, -1
                  div          a6, s9, t3
                  mulhu        ra, a7, s0
                  srl          t5, a5, a5
                  c.addi16sp   sp, 288
                  or           s11, t0, a5
                  slt          ra, s9, s3
                  mulhu        sp, a4, t5
                  or           s7, a5, t2
                  mul          s2, a3, s8
                  divu         s10, a2, t4
                  srai         a6, t2, 9
                  div          gp, s5, t4
                  auipc        tp, 313621
                  slli         zero, t2, 21
                  c.lui        s8, 30
                  c.srli       a2, 26
                  c.mv         a0, ra
                  c.addi16sp   sp, 32
                  slti         sp, s3, 885
                  srli         ra, t2, 24
                  mul          t6, a5, a2
                  ori          a6, a5, 1399
                  mulhu        a5, t3, a3
                  c.addi       s10, -1
                  c.addi       a3, -1
                  mulh         a5, a6, a3
                  c.li         s5, 30
                  c.lui        s2, 11
                  xor          s10, s4, s10
                  sltu         s4, a2, s2
                  andi         t2, a0, 1530
                  sltu         s1, a3, t1
                  lui          t4, 947391
                  sub          s8, t6, t1
                  mulhsu       t0, s4, a3
                  slli         t5, s0, 3
                  nop
                  remu         t5, a4, t2
                  lui          a6, 232679
                  addi         a0, s11, -1631
                  c.slli       tp, 12
                  c.andi       a4, -1
                  sra          s11, gp, a4
                  add          a0, sp, s7
                  c.addi4spn   a5, sp, 192
                  xor          zero, a0, s4
                  auipc        gp, 327064
                  auipc        a0, 847352
                  divu         s1, zero, t0
                  sll          s5, gp, zero
                  srai         s11, tp, 13
                  c.nop
                  c.add        s7, s3
                  or           s10, t4, s1
                  c.lui        a3, 10
                  rem          zero, s10, a2
                  c.slli       a3, 4
                  c.add        a3, t0
                  c.srli       a4, 25
                  slli         a5, s1, 29
                  slti         t4, a0, -1378
                  or           s8, s4, t5
                  srli         s1, s0, 18
                  c.addi16sp   sp, -16
                  auipc        t0, 1030240
                  auipc        zero, 629870
                  div          t1, a7, sp
                  c.addi16sp   sp, 48
                  c.lui        s6, 15
                  c.or         s1, a3
                  c.or         s0, s0
                  remu         t5, a3, s0
                  auipc        t4, 272217
                  add          s2, s4, s4
                  and          s2, t0, s5
                  nop
                  c.addi16sp   sp, 480
                  c.mv         a4, gp
                  lui          a6, 303328
                  xori         ra, s5, -320
                  remu         s5, s3, zero
                  rem          s4, t0, a5
                  andi         t4, gp, 148
                  andi         t5, s7, -608
                  c.srli       a4, 22
                  c.sub        a5, s1
                  and          s10, t1, s4
                  c.addi16sp   sp, 416
                  div          a3, s10, s8
                  rem          t1, tp, sp
                  nop
                  slti         a5, s0, 1277
                  c.mv         s6, a4
                  slti         t2, a3, -1847
                  xor          t1, a2, a3
                  mulhsu       t6, t6, s11
                  c.andi       a4, 22
                  sltiu        t5, s5, 615
                  sub          t1, t0, s11
                  lui          s1, 621226
                  xor          t4, a5, s3
                  mul          t6, a2, s4
                  andi         t2, t4, -998
                  div          t6, s9, s11
                  andi         s8, a6, 813
                  mulh         a4, sp, ra
                  xori         gp, gp, 684
                  sra          a5, a1, a4
                  c.addi       s11, 10
                  slli         s11, s7, 22
                  c.and        a3, a5
                  slt          tp, t2, t4
                  srai         s7, s3, 5
                  c.or         a5, s0
                  addi         a7, a3, 376
                  srl          s8, s4, a2
                  slti         t2, s5, -490
                  rem          gp, a2, s0
                  c.add        s8, sp
                  nop
                  xori         a4, t6, 1497
                  srli         a2, s2, 27
                  sra          gp, a3, t0
                  sll          s7, s8, t2
                  mul          tp, t3, s4
                  sltu         t2, s2, t4
                  c.and        a5, a1
                  c.addi16sp   sp, 272
                  xori         s11, a2, 1826
                  rem          s3, a3, t2
                  c.and        s1, s1
                  c.srli       a0, 15
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  auipc        s4, 718569
                  c.li         a3, 16
                  or           sp, s3, s8
                  rem          s5, a5, zero
                  andi         s4, ra, 920
                  srl          zero, t2, s11
                  c.li         gp, -1
                  sub          s10, s5, s0
                  mulh         s1, a7, a0
                  remu         gp, s2, s5
                  c.nop
                  c.add        a6, a4
                  c.add        gp, tp
                  c.or         s0, a0
                  xor          s4, s8, s5
                  srli         t0, sp, 10
                  c.and        a0, a3
                  ori          a0, gp, 275
                  c.slli       a7, 1
                  nop
                  sltu         t6, t0, t1
                  srli         a7, sp, 28
                  rem          t6, t1, s7
                  c.add        s0, t1
                  srl          sp, s11, gp
                  div          s2, s0, s8
                  or           s7, s0, ra
                  sltu         s10, t0, s8
                  sra          sp, s2, s6
                  srli         s11, ra, 6
                  add          t2, s7, t6
                  and          a5, s9, s7
                  slti         s1, a7, 82
                  srli         s7, s9, 0
                  lui          tp, 640719
                  c.nop
                  mulhsu       tp, t0, s7
                  c.addi       t6, 27
                  c.xor        s1, a5
                  c.or         a3, a0
                  nop
                  c.xor        a5, a1
                  add          s3, a3, s10
                  mulhsu       t4, t5, s7
                  srl          t5, a0, a3
                  xori         t5, a3, 1304
                  sltu         s1, s10, t1
                  rem          a4, s6, a5
                  remu         a5, zero, a0
                  c.addi       sp, 11
                  c.and        s1, a3
                  slli         s3, gp, 18
                  or           t5, a2, s11
                  sub          a2, sp, s9
                  remu         s6, s5, s2
                  c.addi16sp   sp, -16
                  c.mv         a5, a5
                  mul          s10, a0, s11
                  mulhsu       a3, s6, s5
                  sltiu        ra, s8, 1034
                  ori          s3, a7, 1850
                  c.andi       s0, 7
                  c.nop
                  andi         t1, s9, -567
                  c.add        a0, s11
                  c.addi16sp   sp, -16
                  c.sub        a0, s0
                  c.andi       a4, -1
                  div          a5, s8, s3
                  c.li         t4, -1
                  xori         tp, t3, 1556
                  srl          a4, t6, s7
                  c.srli       a3, 30
                  xor          a2, t6, s6
                  sltiu        a4, a0, 775
                  c.xor        a5, a5
                  c.addi       tp, -1
                  divu         a7, s9, t4
                  mulhu        s2, gp, s2
                  remu         t4, tp, tp
                  c.li         t4, -1
                  sltu         a0, a6, ra
                  c.sub        a5, a4
                  c.addi16sp   sp, -16
                  c.andi       s0, -1
                  c.srai       a0, 20
                  sltiu        a6, s8, -1207
                  sub          a7, zero, a5
                  c.addi4spn   a5, sp, 480
                  and          tp, s6, s10
                  sltu         t0, t6, s10
                  srai         t1, tp, 2
                  div          a5, t3, a3
                  c.and        a4, a4
                  c.srli       s0, 7
                  c.addi4spn   a5, sp, 160
                  mulh         t5, s10, a5
                  c.addi4spn   s1, sp, 704
                  c.addi4spn   a4, sp, 896
                  divu         s5, t6, ra
                  srl          t6, t0, t4
                  c.srli       a4, 31
                  mulhu        t6, tp, ra
                  mul          t0, a6, s9
                  slti         s7, a3, -814
                  srai         a4, s5, 19
                  c.slli       a2, 26
                  c.srli       s1, 25
                  c.or         s0, a2
                  mulhsu       s1, a4, sp
                  mulhsu       s0, t6, t6
                  addi         s6, ra, -1352
                  mulhsu       s4, zero, s0
                  slli         t6, s11, 0
                  sltiu        gp, s8, -1025
                  c.slli       t4, 16
                  or           s11, a5, zero
                  and          t6, s6, t0
                  div          a0, sp, a1
                  rem          s4, s4, s8
                  mulh         gp, a7, a1
                  divu         a2, gp, s5
                  c.addi4spn   a2, sp, 960
                  lui          s0, 945056
                  c.xor        a2, a0
                  slt          a6, s5, s4
                  c.addi16sp   sp, -16
                  andi         a0, gp, 1777
                  c.srai       a5, 31
                  and          t4, t3, t0
                  srl          s10, t4, s6
                  c.andi       a0, -1
                  srl          t6, a5, t4
                  c.slli       t6, 11
                  sub          t4, a3, s2
                  c.and        a5, a5
                  mulhu        s8, gp, t0
                  c.lui        t4, 16
                  ori          s5, t6, 1408
                  c.addi       a5, 1
                  slt          t2, a3, s1
                  c.srli       s0, 2
                  c.xor        a5, a0
                  mulhsu       a5, s11, s11
                  rem          t1, a7, a1
                  sll          s8, a7, a7
                  add          t1, s1, s8
                  xori         gp, a5, -175
                  and          a6, s4, t1
                  addi         s0, a6, 1927
                  c.addi16sp   sp, 336
                  c.sub        a5, s1
                  c.addi4spn   a0, sp, 944
                  sltu         a6, s1, t5
                  srai         s2, s6, 26
                  c.li         a6, -1
                  c.addi       s7, -1
                  srli         t4, s7, 16
                  divu         s0, gp, gp
                  c.mv         t1, a5
                  mulhu        sp, a1, s6
                  srli         s8, zero, 17
                  div          t0, a5, a2
                  srli         s11, s2, 6
                  c.addi4spn   a4, sp, 560
                  mulh         s8, sp, t1
                  or           t1, s6, t1
                  c.srli       a2, 23
                  slt          s4, t4, t6
                  div          t4, a1, gp
                  c.sub        a4, s1
                  c.addi       t5, 2
                  c.addi16sp   sp, -16
                  ori          a3, a3, 1985
                  mul          t6, sp, s9
                  slli         gp, t2, 4
                  div          t1, s3, t1
                  nop
                  xor          a0, s0, ra
                  c.andi       a0, 9
                  divu         s6, s6, a1
                  div          t5, a1, s5
                  srli         t0, a1, 15
                  mul          t5, a0, t0
                  slt          a4, s5, a1
                  auipc        a6, 625605
                  srl          t0, a6, t5
                  remu         zero, t2, s4
                  slt          s5, a5, a7
                  c.addi16sp   sp, 320
                  andi         sp, sp, 804
                  xor          a6, s8, s10
                  c.addi4spn   a5, sp, 80
                  mul          t1, gp, s8
                  nop
                  xor          s10, s6, s9
                  and          a7, s6, a4
                  add          gp, zero, t6
                  mulhsu       s6, gp, s4
                  nop
                  xori         a0, t4, 1953
                  c.add        ra, t5
                  auipc        gp, 58254
                  c.and        s1, a4
                  mulhu        sp, t1, a1
                  c.addi4spn   a0, sp, 688
                  and          s4, a2, t2
                  andi         tp, zero, 950
                  srl          zero, s3, s10
                  rem          t6, a2, gp
                  div          s7, s4, tp
                  c.and        a0, a4
                  c.add        s7, s10
                  srli         a4, zero, 2
                  c.li         s0, 20
                  c.srai       s1, 16
                  mulhu        a6, t3, t0
                  c.srli       a0, 12
                  mulhsu       a2, a4, s7
                  c.mv         s1, s11
                  c.addi4spn   a5, sp, 672
                  mulh         t4, gp, a0
                  slli         t6, t3, 10
                  addi         a6, t1, -2000
                  c.srai       s1, 13
                  remu         a7, s4, s3
                  mulhu        a2, a5, t1
                  c.li         a0, 27
                  slli         t6, s5, 9
                  mulh         s8, tp, a6
                  remu         a5, a4, t4
                  xor          t1, a2, a1
                  mulhsu       s5, t5, s0
                  c.lui        ra, 16
                  c.srai       s0, 26
                  c.mv         s1, a7
                  sltu         a5, zero, t2
                  c.srai       a3, 23
                  c.xor        s0, a2
                  xori         s2, a2, 1343
                  div          a7, a6, s7
                  c.andi       a0, 4
                  srli         t0, sp, 13
                  srai         a5, a4, 16
                  c.or         a4, s0
                  ori          t1, sp, 315
                  c.or         a0, s1
                  c.mv         s0, a2
                  c.srli       a5, 26
                  xor          a5, s9, s9
                  sltiu        s0, a5, -1376
                  c.xor        a4, s0
                  c.addi4spn   a2, sp, 128
                  remu         s11, t1, sp
                  mul          t1, zero, t5
                  c.add        a2, s7
                  c.slli       t4, 16
                  c.and        a5, a4
                  c.srli       a0, 24
                  c.lui        a0, 10
                  mulhu        s7, s8, s11
                  c.or         a3, a0
                  xori         a2, a0, 659
                  ori          s5, s1, 16
                  mulhu        sp, s9, s0
                  c.li         s4, -1
                  mulhu        a6, s9, t3
                  slt          a0, s8, s6
                  slti         t1, t2, 515
                  xor          t0, t2, t3
                  c.lui        a5, 1
                  divu         sp, s9, tp
                  c.addi16sp   sp, -16
                  mulhu        s8, ra, s11
                  c.srai       a5, 3
                  srl          s5, s11, s0
                  c.or         s1, a3
                  slt          s10, a4, a4
                  c.xor        a0, s1
                  addi         t2, a1, 1036
                  lui          a7, 981582
                  addi         t2, t5, -922
                  sra          a4, gp, a6
                  addi         t0, a1, -1225
                  c.slli       t4, 27
                  c.addi4spn   s1, sp, 160
                  mulhsu       a3, s0, a3
                  srl          a6, s3, s0
                  c.li         tp, 8
                  c.addi16sp   sp, 432
                  xori         s8, a4, -1480
                  c.and        a0, a5
                  or           s11, t2, s3
                  slli         s5, t1, 28
                  c.sub        a4, s0
                  remu         ra, s9, s6
                  c.or         a2, a2
                  slt          ra, a4, s7
                  c.srli       a5, 25
                  mul          ra, t4, s10
                  c.lui        s3, 12
                  xor          s2, a0, s2
                  xori         s10, ra, -44
                  srai         gp, zero, 3
                  c.and        a3, a0
                  c.add        s1, s8
                  c.srai       a5, 6
                  c.mv         t5, a4
                  c.and        a2, a3
                  sll          a2, a7, a0
                  nop
                  c.addi       t1, 24
                  addi         a4, s5, -1352
                  c.or         a5, a3
                  c.addi       a7, -1
                  srl          s11, s7, t0
                  xori         t4, t5, -1178
                  add          s4, a6, t3
                  nop
                  srl          gp, s2, a2
                  div          zero, s6, s5
                  srl          a2, t0, a7
                  c.srai       a4, 8
                  sra          s2, gp, s0
                  mulh         ra, t5, a0
                  andi         a4, s0, -1271
                  c.xor        a0, a4
                  addi         t6, s9, 1947
                  c.addi16sp   sp, -16
                  rem          s1, a1, s2
                  sltiu        t0, a2, -908
                  div          a2, t1, a6
                  div          s6, t3, a1
                  slti         s8, tp, 1226
                  mulh         s3, gp, s7
                  srai         s1, a0, 31
                  c.or         a3, a3
                  c.andi       a2, -1
                  addi         gp, t4, 1415
                  sltu         s0, s11, a0
                  c.mv         s8, s9
                  add          s10, t2, a3
                  lui          zero, 472398
                  sltiu        s0, t5, 1620
                  c.nop
                  slli         t4, s8, 4
                  c.srli       s1, 30
                  slli         s5, sp, 21
                  sra          s10, t2, t5
                  sltu         a6, s6, a7
                  c.or         s0, a2
                  xori         t0, zero, 1841
                  c.srli       a2, 7
                  xori         sp, a0, -45
                  nop
                  c.nop
                  andi         s2, s3, -259
                  slt          s4, s5, a6
                  srl          s1, s11, s6
                  addi         zero, s9, -515
                  sltiu        ra, t6, 1740
                  xori         s3, s9, -176
                  c.sub        a0, a5
                  c.slli       s6, 17
                  c.add        s2, a5
                  div          a0, s8, ra
                  mulh         gp, a5, t3
                  c.addi4spn   a5, sp, 672
                  c.slli       s3, 2
                  c.add        t4, s9
                  mul          s2, t6, s11
                  c.slli       gp, 23
                  c.srai       s1, 28
                  c.addi16sp   sp, -16
                  divu         a4, s2, s0
                  sltiu        t0, t1, 1582
                  rem          s0, s11, a0
                  sra          s4, ra, a2
                  c.srai       s0, 18
                  andi         s0, s1, -1282
                  rem          s2, a0, s8
                  auipc        s1, 454954
                  mulh         a4, s3, t3
                  rem          s11, a1, s4
                  lui          a2, 135743
                  lui          s5, 144883
                  or           a7, s11, s9
                  or           a4, t1, a2
                  sltu         t6, s6, s8
                  div          t5, t2, a0
                  sll          a7, s10, a6
                  xori         sp, a1, 11
                  sll          sp, s11, a1
                  rem          t4, a5, t0
                  nop
                  xor          a0, t4, tp
                  c.li         s5, -1
                  andi         t2, t2, -1258
                  sltu         s8, t5, s9
                  c.and        a5, s0
                  c.add        s11, s10
                  c.li         s4, 16
                  addi         a6, s10, -461
                  slli         a4, sp, 9
                  slt          t6, s7, zero
                  c.and        a0, s1
                  sll          s6, a1, s1
                  slli         s8, a3, 19
                  mulh         s6, s8, a5
                  c.andi       a2, 0
                  srl          s2, s1, a0
                  mulh         a5, s5, t0
                  c.mv         s5, gp
                  sltiu        zero, a7, 82
                  c.addi16sp   sp, 304
                  mulh         a3, s8, a1
                  nop
                  srli         t4, a1, 3
                  slt          s2, s7, s11
                  nop
                  c.li         s5, -1
                  c.add        s3, s9
                  c.li         t6, 6
                  and          s10, a2, t4
                  xor          t6, t4, t2
                  c.mv         a5, sp
                  divu         a0, t5, s3
                  c.li         t6, -1
                  lui          a4, 247094
                  xor          s5, s11, s10
                  srl          s0, s5, ra
                  add          a0, zero, sp
                  mul          t0, t1, a4
                  divu         a4, ra, s2
                  remu         a3, s1, a5
                  sltu         t5, a4, a3
                  sltu         a5, t0, zero
                  srli         a2, a7, 2
                  sra          t0, tp, a3
                  c.li         t6, -1
                  c.nop
                  c.xor        a0, a3
                  and          t4, s7, a1
                  srl          s4, s8, a1
                  c.addi4spn   s1, sp, 880
                  div          gp, t0, s5
                  c.and        a3, s1
                  c.and        a0, a3
                  nop
                  addi         t4, s6, 1109
                  srl          s1, t2, s3
                  c.and        s1, a4
                  mul          s5, t2, tp
                  c.srai       a0, 17
                  mulhu        t1, t3, a3
                  xor          s7, s8, s9
                  rem          s7, zero, ra
                  add          s8, s5, a6
                  ori          t4, s7, -1977
                  lui          ra, 467172
                  xori         s8, ra, -1114
                  xori         s10, s10, 124
                  srl          ra, t6, zero
                  sll          a3, t5, t4
                  mulhsu       s5, t2, a7
                  sltu         s0, a1, t0
                  divu         t2, t4, t2
                  mulh         a6, tp, s8
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 80
                  c.nop
                  slli         s0, a0, 10
                  c.addi4spn   s1, sp, 816
                  slt          t4, t2, t4
                  mulhu        t0, a2, a7
                  divu         s4, a5, gp
                  c.andi       s1, 20
                  nop
                  addi         t4, s4, -1302
                  srai         s1, s1, 15
                  lui          t2, 257002
                  c.addi4spn   s0, sp, 320
                  c.srli       a2, 25
                  c.and        s1, a5
                  c.mv         s6, a0
                  auipc        zero, 340555
                  divu         s1, t4, s6
                  c.nop
                  nop
                  rem          a6, a3, sp
                  c.slli       s1, 20
                  c.li         s6, 13
                  sltu         s0, s3, t6
                  c.srai       a0, 7
                  slti         a7, ra, -1458
                  nop
                  c.srli       a4, 25
                  mulh         s4, t0, t5
                  add          a7, s0, t0
                  sra          s2, a2, t2
                  remu         s8, s4, s3
                  srli         gp, a2, 10
                  c.and        a3, a4
                  or           s8, a5, s6
                  c.li         a3, 22
                  sra          gp, s2, a2
                  add          s1, a7, a2
                  c.srai       a0, 24
                  sub          s8, s2, a0
                  c.mv         sp, s4
                  sra          sp, s9, t1
                  nop
                  lui          s11, 1034837
                  srai         a2, t2, 30
                  sltiu        s4, a6, -949
                  divu         tp, s10, t3
                  c.slli       s1, 16
                  srli         t1, a0, 28
                  c.sub        s0, a3
                  andi         s1, t5, -140
                  srl          s1, a6, s9
                  divu         tp, s11, s10
                  c.srli       a0, 26
                  xori         s8, sp, -675
                  slt          s8, s0, ra
                  srai         s11, s0, 6
                  srai         a5, tp, 14
                  mulhu        t1, a2, t2
                  c.slli       s1, 25
                  mulhsu       a6, a7, s11
                  c.and        a0, a0
                  sltu         sp, a0, t3
                  slti         s1, s6, 1045
                  xor          s5, zero, a6
                  sltu         zero, a4, s4
                  add          a2, s3, tp
                  c.srai       a2, 12
                  mul          tp, a4, zero
                  c.srai       a5, 17
                  lui          s8, 947124
                  remu         s4, s6, a0
                  or           s6, t4, s11
                  c.addi4spn   a0, sp, 272
                  c.lui        a4, 26
                  c.add        s1, s4
                  andi         s6, t2, -548
                  sll          s1, ra, t5
                  mul          tp, a6, s5
                  c.srli       s1, 13
                  c.lui        s4, 16
                  c.or         s1, a2
                  sll          s6, a2, s9
                  sub          t0, s6, a5
                  c.addi       gp, -1
                  c.slli       a4, 20
                  slli         a2, tp, 24
                  remu         a0, a2, s6
                  xori         a5, a3, 1657
                  c.li         t0, 14
                  mul          a0, s0, s8
                  c.srai       a0, 18
                  remu         gp, s9, s2
                  sra          t4, s7, t1
                  mulhu        sp, s1, s9
                  c.addi4spn   s1, sp, 864
                  slt          t1, a1, s1
                  c.srai       s1, 3
                  and          t0, s11, s0
                  divu         s8, s2, t3
                  xor          t6, t5, t6
                  srai         ra, a0, 9
                  andi         zero, t2, 1493
                  slt          a7, t2, s4
                  rem          s11, t1, t4
                  sltu         t6, t2, t5
                  mul          a6, zero, a0
                  c.srli       a2, 3
                  sra          s2, t5, sp
                  sltiu        s7, a3, 1301
                  c.slli       s0, 24
                  sll          s7, s2, s11
                  or           s4, s1, t4
                  addi         a5, a0, -1180
                  or           zero, zero, a6
                  srai         a3, t6, 22
                  lui          s10, 1022045
                  auipc        s2, 482626
                  srli         a6, t6, 28
                  add          s7, a4, t5
                  or           t6, t2, a2
                  sltu         tp, a5, s9
                  remu         s4, a7, ra
                  slli         s1, a6, 26
                  ori          a2, t2, -351
                  div          s2, s3, s2
                  c.addi16sp   sp, -16
                  add          gp, t0, a0
                  c.nop
                  xori         a3, s1, -1222
                  and          t6, a2, a5
                  srl          s4, a5, t3
                  c.add        t1, t4
                  sub          a3, tp, s5
                  addi         ra, a3, -1993
                  c.slli       a2, 6
                  or           a6, gp, s9
                  c.add        s10, t3
                  rem          a7, a4, s7
                  nop
                  auipc        t6, 479571
                  andi         s11, zero, -383
                  addi         s2, t6, 1659
                  sltu         a4, a0, s10
                  mulh         s6, s3, a3
                  or           ra, a0, t1
                  sltu         s2, t2, s2
                  c.slli       a5, 30
                  sltu         s3, t2, s4
                  remu         a7, a3, a3
                  c.addi       t4, -1
                  sltu         t1, s5, a4
                  nop
                  c.addi4spn   a4, sp, 176
                  or           a5, sp, t5
                  ori          sp, sp, 1536
                  ori          a7, s4, -665
                  c.slli       t5, 16
                  mulhu        zero, t3, s0
                  c.add        ra, s2
                  c.or         a0, s1
                  sltu         a2, s0, s6
                  c.addi16sp   sp, -16
                  c.li         s6, 5
                  mulh         a6, s11, a6
                  div          a2, s0, s11
                  mulhsu       a0, ra, t4
                  c.addi       s2, -1
                  lui          s2, 460485
                  c.srai       a0, 24
                  mulhu        t2, s7, a5
                  srl          s3, s6, a2
                  or           tp, s7, s9
                  remu         sp, t4, sp
                  c.lui        t6, 2
                  nop
                  sltiu        s11, s7, -151
                  c.lui        s11, 11
                  xor          a0, a6, a0
                  c.slli       t5, 5
                  c.addi16sp   sp, 144
                  rem          s0, s8, a2
                  c.lui        a7, 5
                  auipc        t2, 306428
                  c.add        s8, s1
                  or           t2, s11, t0
                  c.sub        a5, a5
                  c.li         t4, -1
                  andi         t6, s1, 1184
                  c.addi       a4, 1
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 352
                  nop
                  mul          t4, t2, tp
                  rem          a7, gp, s4
                  c.andi       a2, 1
                  mulh         t5, s9, t5
                  mulhu        s11, t3, a0
                  srai         s8, t3, 17
                  add          s3, t3, s3
                  c.addi       s4, -1
                  ori          gp, s11, -1173
                  slt          a5, s8, s6
                  c.addi       s4, -1
                  srl          a2, s10, t1
                  c.and        s1, a5
                  slli         sp, s2, 24
                  c.xor        a3, a0
                  sltu         s8, gp, s4
                  c.andi       a5, -1
                  c.srai       a5, 31
                  c.slli       t2, 13
                  ori          a0, s10, 339
                  slt          s10, ra, t0
                  rem          a0, a6, sp
                  c.addi4spn   a3, sp, 816
                  c.lui        a6, 28
                  srai         s1, a6, 19
                  c.or         a0, s0
                  c.xor        a5, a2
                  c.add        s1, gp
                  div          gp, t0, t1
                  divu         a2, s5, t2
                  sub          s3, t2, a4
                  c.sub        a5, a3
                  lui          sp, 546609
                  andi         t5, s2, 533
                  andi         t2, s6, -1929
                  auipc        s1, 877161
                  div          ra, s7, a1
                  mulh         t1, a4, s5
                  c.mv         t2, a7
                  slti         s4, t5, 66
                  srl          s0, t4, t1
                  c.lui        a0, 28
                  c.andi       a5, 14
                  sll          tp, s2, sp
                  c.mv         s11, ra
                  sltu         s6, a4, a0
                  c.and        a4, a2
                  and          s4, s6, t5
                  c.nop
                  add          gp, a7, s11
                  srai         s1, t2, 2
                  mul          a0, t4, a5
                  sll          t1, s7, a6
                  c.add        a3, t6
                  addi         t6, a5, 917
                  c.slli       s5, 8
                  sll          t4, s1, s4
                  slti         t0, s8, -632
                  auipc        gp, 68553
                  sltiu        tp, t1, -1176
                  c.li         t1, 3
                  c.srai       a4, 30
                  c.addi16sp   sp, -16
                  mul          s10, a0, t2
                  sll          s6, gp, s4
                  andi         s0, s2, 934
                  c.add        s4, ra
                  c.add        a6, a5
                  slti         s5, a1, -1924
                  xori         gp, t1, 18
                  or           t2, s5, a5
                  slti         s2, s3, 1135
                  c.addi16sp   sp, 64
                  sra          zero, a0, a7
                  div          t1, s0, t2
                  addi         a5, a0, -1136
                  srli         t4, s7, 12
                  andi         s0, sp, 1279
                  c.srli       a3, 1
                  c.lui        a3, 1
                  mulhu        t4, a4, t2
                  srl          s7, t5, a0
                  addi         t5, a7, 367
                  mulhsu       t0, t1, s3
                  c.slli       s0, 30
                  slti         tp, s9, 25
                  or           a0, a5, s4
                  c.and        a4, s1
                  c.srai       s0, 21
                  c.lui        s0, 23
                  mulhu        a7, t4, a2
                  c.add        s11, t5
                  rem          a2, s0, sp
                  c.addi16sp   sp, -16
                  c.addi4spn   a5, sp, 736
                  and          s10, t5, sp
                  divu         t5, ra, s0
                  andi         s10, a4, -815
                  c.nop
                  rem          s11, s6, s10
                  xor          t2, s6, t6
                  xori         t4, s10, -1268
                  xor          a4, t5, t1
                  mulhu        a3, s4, s3
                  sltu         a0, a1, s7
                  c.xor        a5, a4
                  c.xor        s1, s0
                  xor          s10, gp, s7
                  sub          tp, ra, s10
                  nop
                  c.add        t1, s0
                  mulhsu       a7, s2, a5
                  sub          a3, s9, t3
                  c.add        a0, a6
                  sltu         sp, a6, t0
                  sltu         s8, s10, s1
                  slt          t0, a0, a5
                  lui          s1, 133466
                  div          s8, s11, a6
                  c.li         t1, -1
                  lui          t4, 971950
                  lui          zero, 606434
                  addi         a5, s1, -197
                  c.addi4spn   a5, sp, 304
                  c.addi4spn   s1, sp, 224
                  sub          a7, a3, t1
                  ori          tp, zero, -235
                  addi         a4, zero, 449
                  c.and        a5, a0
                  slli         s8, t1, 13
                  c.addi16sp   sp, -16
                  c.addi4spn   a2, sp, 848
                  sltu         a2, s8, s11
                  c.slli       a5, 10
                  c.addi16sp   sp, 400
                  c.mv         s8, s5
                  ori          gp, s7, 1382
                  c.mv         ra, a5
                  c.xor        s1, s1
                  mulhsu       s0, a1, a1
                  mulh         s4, s11, s9
                  mulh         s4, s7, t0
                  srli         gp, s10, 21
                  srl          t4, s0, s10
                  c.nop
                  sltu         t5, a0, t6
                  sra          s2, a5, s8
                  mul          t1, s1, s2
                  divu         t6, gp, t6
                  ori          t2, ra, 578
                  mul          a4, tp, t2
                  mulh         t6, t0, s7
                  c.sub        a4, s1
                  c.sub        a4, a3
                  c.xor        a3, a5
                  and          s11, ra, s4
                  or           gp, s9, s4
                  c.mv         t0, a7
                  c.slli       t0, 6
                  andi         s8, t1, 1195
                  srai         s7, gp, 31
                  andi         ra, s10, 888
                  andi         s8, a7, 501
                  c.xor        a3, s1
                  slli         a2, a1, 8
                  lui          s8, 95578
                  srl          a3, s9, s7
                  auipc        s10, 846303
                  andi         s1, t5, 644
                  and          s2, s0, s4
                  mulh         t0, a3, s11
                  divu         zero, ra, a2
                  srli         gp, s3, 30
                  mulh         ra, s8, t0
                  c.srli       a5, 17
                  rem          s2, t2, a0
                  slt          ra, a2, s6
                  sll          gp, s8, a5
                  sra          a7, a6, s8
                  or           s10, s10, t6
                  c.or         a2, s1
                  sltiu        a3, s1, 968
                  c.mv         s4, s4
                  c.andi       a0, -1
                  mul          t5, a4, t4
                  sll          s8, s2, a2
                  c.addi4spn   a0, sp, 688
                  rem          t4, s11, ra
                  lui          tp, 365696
                  c.add        a6, a6
                  add          a7, ra, s11
                  addi         zero, t2, -947
                  c.addi       s4, 16
                  addi         t5, s0, 1664
                  mulh         s1, s10, s8
                  c.lui        gp, 19
                  remu         s7, s6, t0
                  srl          a6, s10, a4
                  c.slli       a3, 30
                  c.srli       a5, 13
                  c.addi4spn   s0, sp, 320
                  sra          a5, s8, s0
                  rem          zero, s3, s2
                  slti         s10, t3, -1228
                  c.xor        a0, s1
                  rem          a7, s2, t6
                  mulhu        s3, s3, gp
                  c.srli       s1, 10
                  c.li         a6, -1
                  c.or         s0, s1
                  auipc        s1, 306333
                  andi         ra, s3, -1378
                  c.xor        s1, s0
                  c.addi4spn   a0, sp, 528
                  mulhu        s3, a3, s3
                  c.xor        a5, a4
                  c.or         a2, a3
                  mulhu        s6, s11, a7
                  c.addi16sp   sp, 320
                  sltu         t6, t6, s11
                  c.addi4spn   s1, sp, 576
                  c.slli       ra, 3
                  c.or         a4, a3
                  c.li         a7, 8
                  sll          t4, tp, s4
                  xori         t5, a2, 1799
                  c.srli       s0, 8
                  sltu         a5, t3, s1
                  mulhu        a4, s9, s1
                  mulhu        s2, a2, a3
                  c.addi16sp   sp, 224
                  xori         a2, a1, 949
                  sll          a7, s11, s4
                  c.xor        a0, s0
                  mulhu        s7, t4, a6
                  mulhsu       t0, a1, s3
                  auipc        a7, 565894
                  c.lui        a0, 26
                  c.lui        s6, 28
                  c.addi16sp   sp, 208
                  slt          s8, a5, t4
                  mulh         s4, t6, t0
                  addi         a6, gp, -1530
                  andi         s11, a7, -367
                  add          s0, a0, a4
                  mul          s5, s2, t4
                  c.addi16sp   sp, -16
                  xori         s2, s10, 1738
                  nop
                  c.andi       a2, -1
                  c.nop
                  c.addi4spn   a2, sp, 736
                  lui          s1, 587943
                  xori         sp, t6, -160
                  lui          a5, 327428
                  nop
                  div          s0, a0, s1
                  sub          s6, s5, t2
                  c.addi       s7, -1
                  mulhsu       s10, t2, a5
                  srli         a4, t1, 6
                  c.and        a5, a1
                  slt          t4, s6, a3
                  c.lui        s1, 28
                  slli         t1, s5, 22
                  or           a6, s10, s9
                  c.lui        t6, 28
                  slli         sp, zero, 29
                  sub          s0, s6, t4
                  div          s5, a5, s1
                  slt          s6, s7, a2
                  c.srli       a5, 13
                  c.nop
                  remu         t5, s0, a6
                  or           gp, a4, a1
                  rem          s8, s8, t2
                  addi         sp, sp, 583
                  c.lui        tp, 23
                  srli         s11, s1, 23
                  slli         t4, zero, 10
                  addi         a2, sp, -501
                  c.srai       s1, 14
                  c.lui        t6, 4
                  or           t0, s7, s0
                  c.lui        ra, 31
                  c.addi4spn   a0, sp, 880
                  sltiu        s8, s4, 715
                  srai         t4, s11, 15
                  mulhu        t2, s8, a5
                  addi         a6, t0, -522
                  xori         a0, t3, 1872
                  lui          s0, 347871
                  slt          s6, a4, s8
                  c.lui        s8, 29
                  c.and        a4, a1
                  c.or         s1, a2
                  div          s10, ra, s3
                  c.srai       a0, 21
                  c.add        tp, a4
                  c.lui        t2, 5
                  slli         t0, a1, 19
                  nop
                  srl          gp, a6, s1
                  sltu         s3, gp, t4
                  nop
                  c.srli       a2, 11
                  sltu         sp, s4, a2
                  c.add        t4, s10
                  nop
                  c.sub        s0, a2
                  c.addi16sp   sp, 416
                  ori          a0, ra, -742
                  or           gp, s7, s10
                  c.lui        gp, 28
                  addi         s2, s4, -1841
                  c.srai       a0, 24
                  or           s3, s7, s2
                  c.sub        a0, s0
                  auipc        s7, 499324
                  c.srli       a2, 25
                  c.andi       a3, 6
                  xori         t6, t4, -689
                  mulhu        t4, zero, a6
                  srai         s0, s9, 20
                  srai         tp, s9, 12
                  ori          s7, s0, 1812
                  sltiu        sp, a0, -1963
                  sltiu        s1, s6, 1672
                  slli         gp, s9, 29
                  c.nop
                  mulhsu       s1, a7, zero
                  c.addi16sp   sp, -16
                  c.srli       a2, 28
                  mulhu        tp, a4, a5
                  srl          s10, t5, t2
                  auipc        ra, 475995
                  remu         s2, a7, a5
                  sub          a5, s2, a3
                  xor          s6, s3, a2
                  c.srai       s0, 26
                  c.slli       t1, 12
                  sll          s7, s7, ra
                  sltiu        t4, a3, 497
                  c.slli       ra, 10
                  c.nop
                  c.xor        a2, a0
                  ori          s6, a3, 1768
                  c.addi16sp   sp, -16
                  xori         s10, s10, -1615
                  ori          s7, s3, 1541
                  c.addi       t1, -1
                  c.andi       a0, 30
                  c.lui        tp, 10
                  c.andi       s0, 26
                  srl          a7, s7, a5
                  c.addi16sp   sp, 464
                  rem          t2, ra, a4
                  or           t2, t1, sp
                  c.addi       s7, 22
                  c.addi16sp   sp, -16
                  slt          s2, s2, ra
                  c.lui        t0, 9
                  c.nop
                  slti         a2, t2, -917
                  auipc        t1, 297334
                  c.addi4spn   a0, sp, 288
                  div          a6, s2, s0
                  andi         t4, t3, 1775
                  c.andi       a2, 5
                  or           s4, a7, a4
                  c.add        s4, s3
                  sltu         t0, t1, a2
                  slt          a6, t5, s0
                  xor          s8, s5, s0
                  or           s4, a7, s10
                  srl          a4, s6, a3
                  sra          t1, s7, a7
                  c.srai       a3, 21
                  mul          a0, s8, a3
                  c.sub        a5, a5
                  srli         t6, s10, 9
                  mul          a6, t2, a3
                  and          s6, t4, s1
                  auipc        ra, 171026
                  c.nop
                  xor          t5, s2, a6
                  slt          a4, s1, t5
                  c.addi16sp   sp, -16
                  c.nop
                  remu         t1, t1, zero
                  slli         s1, t0, 23
                  c.or         s1, a0
                  sll          a6, s8, t5
                  c.addi16sp   sp, 256
                  c.nop
                  add          s3, a0, ra
                  c.sub        a4, a1
                  addi         t1, t4, 1094
                  sltu         gp, tp, t6
                  mul          a7, a2, a6
                  srl          t4, s2, a5
                  c.addi       a4, 24
                  c.or         s0, s1
                  auipc        t4, 709251
                  slli         s8, t2, 2
                  and          a0, sp, a6
                  c.nop
                  c.addi4spn   a0, sp, 704
                  sltiu        gp, t3, -1078
                  lui          s8, 597499
                  c.addi       s2, -1
                  divu         t6, s11, t0
                  addi         s10, t0, -1149
                  c.sub        s1, a2
                  rem          s7, s5, s3
                  addi         a6, t4, -869
                  srai         s10, s6, 8
                  c.mv         s6, t1
                  andi         t4, a3, -647
                  slti         t4, t0, 1657
                  div          s1, s8, s7
                  or           s0, a2, t2
                  c.mv         s5, sp
                  mulh         sp, ra, s1
                  c.mv         gp, s6
                  or           a2, s1, a1
                  c.nop
                  c.or         a2, a5
                  rem          t0, s7, a0
                  slti         tp, s7, -1861
                  sra          a0, s7, s8
                  c.sub        a2, s0
                  srli         s11, t6, 0
                  mulhu        t0, a7, a3
                  mul          zero, a1, t1
                  srai         a0, a7, 25
                  slt          s10, s6, t3
                  c.addi4spn   a4, sp, 496
                  srl          s10, zero, gp
                  c.andi       s0, -1
                  divu         a5, s2, s2
                  c.srli       a0, 19
                  slti         sp, s5, 862
                  c.xor        a5, a4
                  c.nop
                  c.li         sp, 31
                  auipc        t6, 515680
                  andi         s8, ra, -656
                  ori          a7, t3, -1922
                  c.li         a5, 15
                  sltu         s11, t4, s10
                  c.mv         a6, s10
                  or           a3, t0, s0
                  c.xor        s0, a2
                  c.add        sp, t5
                  c.andi       a3, -1
                  c.addi       t4, 22
                  slt          s11, s8, a3
                  sra          a4, a0, s1
                  c.li         s10, 5
                  ori          a0, ra, -826
                  c.sub        a3, a4
                  c.li         a3, 26
                  srl          s6, a0, s10
                  divu         a5, s4, ra
                  lui          gp, 208518
                  c.lui        t2, 28
                  xor          sp, a4, s11
                  or           gp, a0, t0
                  mulhu        t4, a4, a0
                  rem          s6, t6, s3
                  c.xor        s1, a0
                  c.li         ra, -1
                  c.add        a0, t1
                  sub          t5, t1, t4
                  add          s7, a2, sp
                  div          t4, a2, t2
                  or           s7, t6, s4
                  mul          t4, s2, t4
                  mulhu        ra, a6, a6
                  and          t4, s6, a0
                  c.lui        s6, 16
                  or           a5, a6, a5
                  and          a2, t6, a7
                  sra          t0, s6, s4
                  c.srli       s0, 19
                  lui          a3, 598489
                  c.addi4spn   a5, sp, 672
                  c.srai       a2, 22
                  c.slli       s3, 20
                  c.add        s5, t0
                  xor          a7, a2, a7
                  sra          s11, t1, a0
                  srl          a3, s5, a7
                  divu         sp, a4, s8
                  sra          s5, s7, a4
                  lui          a5, 589358
                  c.andi       s1, 25
                  c.and        a0, s1
                  and          s11, ra, s8
                  ori          s1, a1, 1233
                  sub          s5, s5, a6
                  c.srli       a5, 27
                  xori         s6, s1, 520
                  c.mv         s10, sp
                  c.xor        a2, a3
                  c.mv         s2, s7
                  c.mv         s5, s8
                  mul          zero, ra, s6
                  ori          t6, a3, 315
                  mulhu        t0, s3, t0
                  xori         gp, zero, -757
                  div          s5, s2, a1
                  c.andi       a3, -1
                  slli         a3, sp, 5
                  c.nop
                  srai         t5, a5, 2
                  addi         a2, a2, -278
                  add          t1, s1, s8
                  slt          s11, a5, t2
                  divu         a5, sp, s1
                  c.srli       s0, 13
                  sll          s1, tp, s8
                  c.addi16sp   sp, 448
                  lui          ra, 207967
                  c.or         s1, a3
                  div          ra, a1, a2
                  slti         t1, t5, 2044
                  c.slli       s4, 1
                  sll          tp, a4, s11
                  sra          s7, gp, gp
                  c.nop
                  mulh         s6, ra, t0
                  lui          s5, 942602
                  mul          a0, s9, a4
                  c.xor        s1, a2
                  ori          t6, s10, -765
                  div          s2, s5, ra
                  srl          s1, gp, s9
                  c.mv         s5, t3
                  sra          a3, s8, ra
                  c.addi4spn   a2, sp, 80
                  c.addi4spn   a4, sp, 16
                  srl          gp, tp, s10
                  ori          s7, s0, 1155
                  mulh         zero, a4, t1
                  sra          tp, t0, s2
                  c.lui        t4, 1
                  c.addi       s6, -1
                  srl          s5, s5, s5
                  c.or         s1, a2
                  sra          s4, a1, s2
                  slti         a6, s9, 924
                  c.and        a2, a1
                  mulh         t5, zero, tp
                  c.mv         ra, s6
                  sub          s7, t6, a4
                  auipc        ra, 726168
                  remu         tp, s3, t6
                  c.li         a3, 2
                  mulh         tp, zero, a6
                  ori          s5, s4, 200
                  c.or         a0, s0
                  srai         s3, s5, 23
                  remu         sp, zero, a7
                  mulhsu       ra, s10, a3
                  sub          s10, t2, s11
                  c.srai       a4, 15
                  nop
                  mulhu        s0, s11, tp
                  slt          a5, s10, s5
                  divu         s11, s10, t5
                  addi         a2, s5, -1928
                  srli         s6, a2, 27
                  srl          s5, s7, a2
                  and          a6, s10, s9
                  sltu         s11, s11, a1
                  c.slli       gp, 15
                  nop
                  sltiu        sp, a4, -529
                  and          s0, a6, t0
                  and          s7, s10, s2
                  c.and        a4, s0
                  addi         a2, s7, 1239
                  c.sub        a0, a5
                  sra          s11, t6, zero
                  c.mv         a5, s8
                  addi         zero, t5, -1796
                  c.addi4spn   s0, sp, 752
                  c.srli       s0, 6
                  srai         a7, s2, 20
                  slt          a5, a5, s5
                  xori         ra, a6, -1595
                  c.addi16sp   sp, -16
                  div          a7, a4, t6
                  c.mv         tp, a6
                  sub          tp, t1, t1
                  nop
                  srai         s5, s5, 23
                  c.xor        a2, s0
                  c.addi4spn   s1, sp, 272
                  divu         s0, a2, s4
                  ori          s5, s8, -1389
                  slti         s6, s5, 234
                  srli         s5, s9, 30
                  c.or         a5, a3
                  srl          s1, s0, t6
                  slt          s2, s1, a2
                  div          tp, a3, t2
                  mulh         s2, s5, s2
                  mulhu        s10, s5, s9
                  nop
                  rem          s2, s9, s4
                  ori          s6, ra, 1465
                  c.srli       a4, 1
                  sltu         s6, t4, zero
                  c.srli       a3, 4
                  c.andi       a2, 14
                  addi         sp, s0, 1169
                  sub          tp, s7, t4
                  and          t1, s7, t0
                  mulh         a5, s8, ra
                  slli         s6, s1, 20
                  slti         a4, tp, 1516
                  sub          t6, a7, s5
                  div          s4, t1, a1
                  c.mv         a0, s9
                  sub          t1, t5, ra
                  c.slli       sp, 2
                  xori         t0, s11, 972
                  c.nop
                  remu         s7, t0, ra
                  c.or         a4, a3
                  c.lui        s8, 29
                  srli         t1, s3, 25
                  remu         s4, s9, s2
                  c.addi4spn   a3, sp, 976
                  mulhu        a2, t1, s3
                  or           a7, s6, s5
                  c.addi4spn   a0, sp, 656
                  mulhsu       a5, zero, tp
                  c.and        a5, s0
                  c.and        a2, a1
                  mul          s8, s4, t6
                  add          t2, s5, a2
                  divu         ra, ra, s4
                  mulh         gp, a6, s1
                  mul          a0, a2, t3
                  c.mv         a3, t4
                  c.add        a7, s5
                  xori         t5, s11, -338
                  addi         a6, ra, 93
                  slti         a5, t6, -508
                  mul          a0, s10, a6
                  c.lui        s0, 7
                  sra          t1, t3, s5
                  c.slli       t5, 22
                  slli         a0, a1, 3
                  c.slli       sp, 30
                  sltu         a6, zero, a0
                  slti         s6, s5, -114
                  c.li         ra, 19
                  srl          ra, a7, t6
                  sltu         a0, t3, a5
                  c.lui        t0, 2
                  divu         a6, s6, s10
                  andi         gp, a2, -1289
                  lui          t1, 579886
                  c.addi16sp   sp, 144
                  xori         a6, t1, -976
                  slti         a5, t3, -813
                  nop
                  auipc        s11, 331728
                  or           a7, t3, s9
                  slli         s3, s8, 24
                  and          a0, t1, t4
                  mulhu        a2, tp, t0
                  and          s0, tp, t0
                  c.slli       a2, 4
                  c.add        s1, t2
                  xor          a0, a6, gp
                  c.mv         a0, a6
                  c.sub        a5, s1
                  auipc        s4, 264811
                  mul          t2, ra, s2
                  addi         a7, s8, -1373
                  c.li         a0, 20
                  srli         a2, s0, 10
                  c.li         gp, -1
                  srai         a3, ra, 7
                  sub          s7, sp, a1
                  or           s1, t2, t2
                  c.addi       s5, 8
                  srli         a7, t1, 1
                  c.slli       s5, 5
                  c.add        a5, s9
                  div          s1, a6, a2
                  slli         t5, s10, 5
                  and          a6, s10, s4
                  andi         s4, a2, 1053
                  c.and        a0, a4
                  c.addi16sp   sp, -16
                  c.nop
                  srli         a5, s10, 19
                  mulh         t1, s5, a1
                  srli         a5, a6, 17
                  c.li         a6, 3
                  c.addi16sp   sp, 480
                  sub          s5, s8, s1
                  c.xor        s0, a3
                  lui          a6, 52333
                  c.nop
                  xor          sp, t2, s8
                  sub          a7, t4, ra
                  c.or         s0, s1
                  sltu         tp, s8, a6
                  mulhsu       gp, t4, a4
                  srli         s1, s1, 18
                  slt          t2, s10, s10
                  srai         a0, a6, 5
                  c.addi       a4, 22
                  nop
                  c.and        a3, a3
                  c.or         a2, s1
                  mul          t0, t1, s1
                  c.li         s10, 6
                  andi         t6, s0, 569
                  c.srli       s1, 16
                  c.li         a3, -1
                  c.or         a2, a5
                  divu         a0, ra, t5
                  mulh         gp, a6, tp
                  slti         s8, s0, 1014
                  c.li         a2, -1
                  c.sub        s1, a3
                  auipc        t0, 922703
                  auipc        s8, 148038
                  c.addi16sp   sp, -16
                  srl          gp, s7, a1
                  c.add        t5, a1
                  c.mv         sp, a2
                  c.or         a3, s0
                  sltiu        t1, t0, -921
                  rem          s7, s1, t6
                  rem          sp, a0, ra
                  c.nop
                  divu         s0, tp, s2
                  or           gp, gp, t2
                  lui          s0, 107291
                  mulhsu       a3, t3, sp
                  mulhu        a5, s8, ra
                  mulhu        a4, t0, ra
                  mulhsu       s4, t5, t4
                  rem          s2, sp, s11
                  c.mv         a3, s4
                  c.li         s8, 20
                  slt          zero, s11, s11
                  or           t6, t5, s9
                  remu         s11, a4, s2
                  divu         sp, s10, t5
                  and          tp, s1, s7
                  slli         t4, s4, 7
                  sltu         a6, s6, gp
                  slt          s10, t1, a0
                  sltiu        a0, a7, 937
                  sltiu        a2, ra, -1866
                  xor          ra, sp, t5
                  mul          t4, t5, s8
                  mulh         a5, t2, s2
                  mulhsu       a0, s7, a3
                  and          a3, t0, a3
                  sra          s8, s10, s0
                  remu         zero, zero, a4
                  mulhu        s8, a4, s11
                  or           t6, t5, a1
                  rem          s1, s7, a0
                  c.srli       a2, 18
                  sub          a4, zero, zero
                  c.addi4spn   a0, sp, 576
                  c.mv         s8, s7
                  c.add        s5, a6
                  c.add        s3, tp
                  c.andi       s1, -1
                  c.srai       a3, 10
                  mulhsu       gp, t2, s1
                  addi         s4, s3, 1616
                  xor          t6, ra, ra
                  c.slli       s3, 28
                  mulh         a5, a4, s3
                  c.mv         a2, a4
                  slli         zero, s7, 9
                  slti         ra, s7, 770
                  c.addi16sp   sp, 80
                  sltiu        gp, s11, -1577
                  slti         s5, zero, 1941
                  slli         s5, s10, 31
                  slli         ra, s11, 29
                  andi         t4, s11, 1062
                  c.addi       a2, 20
                  c.lui        s3, 31
                  add          sp, s6, s11
                  mulhsu       s8, s6, s10
                  c.addi16sp   sp, 448
                  c.slli       s11, 21
                  c.slli       a7, 9
                  lui          s3, 549160
                  sra          a0, t3, t3
                  rem          ra, s10, s2
                  c.add        ra, t6
                  c.srli       s0, 28
                  divu         t4, a1, t0
                  slli         s5, t5, 16
                  c.addi4spn   s1, sp, 560
                  slli         s6, sp, 2
                  c.sub        a3, s0
                  sub          t6, a0, s0
                  c.xor        s1, a2
                  sub          a3, s3, gp
                  add          zero, s6, s9
                  mul          ra, s5, a6
                  xori         s6, s4, 1137
                  addi         a2, s8, 1205
                  c.and        a5, a3
                  nop
                  ori          s8, t6, -252
                  c.add        t1, t6
                  sltiu        s5, s2, -436
                  c.sub        s1, a5
                  sltu         t2, t2, ra
                  ori          t1, t0, 260
                  xor          t4, s1, tp
                  c.srli       a5, 26
                  c.lui        s4, 26
                  c.addi4spn   a5, sp, 64
                  sltiu        s3, a7, 1776
                  c.srli       s1, 20
                  sub          a2, a3, s0
                  add          s7, t0, s11
                  c.srai       a0, 24
                  c.sub        a5, s0
                  c.addi4spn   a0, sp, 144
                  c.nop
                  xor          ra, s4, s1
                  sra          ra, t5, s7
                  auipc        sp, 585564
                  nop
                  c.lui        t6, 28
                  c.lui        s0, 26
                  c.srai       a0, 22
                  sub          a4, a1, t6
                  andi         a2, s7, 233
                  c.addi16sp   sp, 384
                  c.li         t4, 26
                  sltiu        sp, s11, 1643
                  c.mv         s5, s5
                  xori         a0, t0, -1420
                  xori         t4, s9, 1691
                  c.sub        a0, a5
                  slti         a6, s7, 1257
                  remu         t6, a2, t5
                  c.addi4spn   a3, sp, 144
                  mul          a4, a2, t1
                  andi         s0, t4, 277
                  slt          a6, zero, s0
                  slt          sp, a7, a0
                  c.mv         a2, a6
                  srl          t0, a6, a1
                  divu         ra, t3, s8
                  or           zero, t1, t4
                  c.andi       s1, -1
                  c.srli       s1, 6
                  divu         ra, t4, t6
                  c.lui        a5, 20
                  c.and        a0, a5
                  c.srli       s0, 2
                  c.nop
                  c.srli       a0, 4
                  c.srai       s0, 18
                  sltu         t4, a4, a0
                  andi         a0, tp, -1911
                  ori          s5, a2, 1856
                  c.and        a0, a4
                  c.addi       ra, 6
                  c.add        ra, a4
                  xori         sp, t2, 965
                  mul          s3, s5, t2
                  c.sub        a5, a1
                  c.addi       t0, -1
                  c.addi4spn   a0, sp, 336
                  or           s8, zero, s11
                  c.and        a5, a1
                  sltiu        s1, a0, -969
                  srli         t4, a2, 15
                  c.andi       a4, 2
                  c.srai       a5, 7
                  slti         sp, s3, 1054
                  sll          s10, a7, s9
                  c.nop
                  sltiu        s7, sp, -1700
                  c.sub        a4, a5
                  c.andi       a2, -1
                  mulhsu       gp, s4, s1
                  c.srai       s0, 13
                  and          s7, a3, a3
                  divu         a6, sp, t1
                  auipc        s1, 426626
                  rem          a0, t3, t6
                  srl          a4, t4, zero
                  nop
                  c.and        a2, a4
                  div          t4, s5, a0
                  add          s5, sp, a4
                  srli         ra, zero, 24
                  ori          s11, a6, -878
                  c.addi16sp   sp, -16
                  div          t5, zero, s7
                  add          s6, s10, gp
                  add          s11, t6, sp
                  c.srai       s0, 22
                  c.sub        a3, a5
                  c.add        a2, a4
                  c.sub        a2, a3
                  srai         a4, s0, 18
                  c.and        a5, a4
                  and          s10, s0, s1
                  c.slli       t2, 23
                  c.srli       a3, 14
                  xori         s10, s4, -1999
                  c.mv         s0, s7
                  c.addi       s2, 9
                  srai         s7, s5, 24
                  sub          gp, a2, t4
                  sltu         s0, t2, s9
                  c.addi16sp   sp, -16
                  addi         ra, t4, 1602
                  sltu         s11, s3, t4
                  c.srai       a4, 20
                  c.sub        a4, s0
                  xor          s1, t3, a5
                  mul          gp, s3, sp
                  c.nop
                  c.lui        a0, 13
                  srli         sp, s9, 16
                  c.li         s11, -1
                  c.li         t4, -1
                  mulhsu       a0, a3, t1
                  c.addi4spn   s1, sp, 640
                  and          a2, s1, a5
                  c.mv         s10, s2
                  and          s3, a3, a2
                  remu         s7, s7, t4
                  srl          t5, a7, s7
                  add          t5, s9, a6
                  sltu         sp, s7, t0
                  xor          a6, a1, t3
                  c.and        s1, a5
                  c.and        a0, a1
                  slli         a7, sp, 19
                  lui          t5, 664079
                  c.or         a3, a1
                  remu         s1, s7, a0
                  slli         t0, a0, 25
                  c.mv         a0, a6
                  addi         s6, t5, 64
                  slli         a5, ra, 12
                  mulh         s10, t5, s5
                  mulh         s6, tp, a7
                  c.addi4spn   a0, sp, 608
                  sub          a4, sp, a5
                  divu         ra, t1, s3
                  add          a5, s4, a6
                  sltu         t5, t2, a2
                  slti         a4, gp, -1904
                  srli         a7, tp, 30
                  addi         a6, s0, 1245
                  and          t0, t3, t6
                  c.or         a4, a2
                  remu         s4, s5, sp
                  c.nop
                  c.or         a4, a3
                  c.addi16sp   sp, -16
                  addi         s11, s1, -1328
                  or           t6, zero, a7
                  c.addi4spn   s0, sp, 848
                  slt          a6, tp, zero
                  mulh         a5, s0, a3
                  c.lui        t0, 3
                  sra          gp, t3, s3
                  c.srli       a0, 16
                  or           a6, a3, a2
                  sub          s7, a7, tp
                  c.or         a5, a2
                  mulhu        s7, a5, a6
                  slt          t6, sp, a0
                  c.lui        a0, 17
                  nop
                  srli         s5, t3, 29
                  slti         sp, t2, -1366
                  mulh         s1, s6, a3
                  mulhsu       t1, s0, gp
                  srai         s11, t0, 16
                  c.add        s1, s4
                  mul          s3, s0, a4
                  add          t4, a5, tp
                  c.addi4spn   s0, sp, 16
                  or           s1, s3, s6
                  srli         s1, s10, 2
                  lui          s6, 940442
                  c.lui        ra, 19
                  c.lui        ra, 31
                  srai         a2, a4, 5
                  xor          t4, zero, t3
                  slli         ra, s0, 18
                  c.srli       a3, 21
                  c.srai       a5, 31
                  andi         a5, s10, 1412
                  slti         s1, s6, -1664
                  c.lui        gp, 16
                  addi         s0, s5, 562
                  add          zero, s10, a1
                  c.srli       s0, 14
                  c.add        t5, a2
                  c.andi       a4, 25
                  sltu         t4, sp, sp
                  sub          s6, tp, a7
                  addi         s7, s9, -953
                  c.addi4spn   a0, sp, 96
                  rem          s10, s8, s11
                  divu         t0, t5, t0
                  c.add        s11, t1
                  srai         a5, gp, 6
                  c.or         a2, a4
                  sra          a6, t1, a2
                  c.sub        s1, a0
                  c.addi4spn   s1, sp, 912
                  sltu         s11, t0, s11
                  xor          s6, t2, a6
                  srl          s6, a0, t0
                  ori          s3, t0, 1304
                  c.add        t5, s4
                  mulh         s5, gp, zero
                  mul          t4, t4, a2
                  sub          a5, t0, ra
                  or           s3, s4, a3
                  sub          s7, t5, t6
                  auipc        s11, 1375
                  c.lui        a3, 31
                  srli         a2, a5, 26
                  c.xor        a2, a1
                  srl          s8, s8, s8
                  c.sub        a3, s1
                  ori          s10, ra, -56
                  mulhsu       t1, a2, s0
                  c.addi       t1, -1
                  c.addi16sp   sp, 448
                  mul          a0, a1, s11
                  srl          s6, s2, s2
                  c.mv         a0, a1
                  c.sub        a0, s0
                  or           ra, s1, t6
                  slt          t2, tp, a5
                  lui          t1, 38897
                  c.srai       a0, 24
                  xori         a5, a7, -521
                  ori          a3, s11, -729
                  c.slli       a7, 21
                  c.addi       s4, 9
                  c.addi       ra, 29
                  andi         s7, s9, -1090
                  slli         a5, s5, 16
                  sll          s10, a5, s3
                  slli         zero, t4, 22
                  c.or         a3, s1
                  lui          s11, 498433
                  ori          s0, s4, 273
                  nop
                  sltu         s5, t4, s7
                  c.addi       t5, 1
                  srli         s11, s11, 0
                  sltu         sp, a7, a2
                  sll          s1, a3, t3
                  c.nop
                  andi         a4, zero, -968
                  rem          s7, s7, zero
                  srai         s4, a6, 6
                  slli         t1, s5, 6
                  or           s10, a5, sp
                  sltiu        t4, s11, -666
                  andi         a2, s11, -130
                  slt          s7, a5, a5
                  c.xor        a5, a4
                  rem          s3, tp, s4
                  c.li         a0, 1
                  div          s6, s8, s5
                  mul          gp, s0, s0
                  c.xor        s0, s1
                  c.nop
                  andi         t5, t3, -650
                  nop
                  slt          s1, a5, a1
                  mul          a7, a0, s0
                  auipc        sp, 885888
                  add          a7, s11, s10
                  sltiu        sp, s9, -1813
                  c.and        a4, a0
                  andi         t0, tp, -2023
                  mulh         t0, s10, a1
                  c.andi       a3, 7
                  slli         t1, a3, 9
                  sub          ra, s2, a0
                  sub          s10, tp, a7
                  c.li         t0, 0
                  mulh         t6, s7, s11
                  andi         s2, s4, 1618
                  c.and        a5, a3
                  srl          gp, s5, a6
                  lui          s3, 954398
                  divu         a5, s3, gp
                  sll          a0, a1, t5
                  c.nop
                  sub          a4, s3, s4
                  sltu         a5, t0, t5
                  or           a2, gp, sp
                  and          s8, zero, t5
                  c.addi       gp, -1
                  div          t4, t1, a4
                  sra          ra, s1, a3
                  andi         s1, a1, -653
                  mulh         t0, a6, a2
                  sra          a5, tp, s9
                  slti         s3, s10, 145
                  slti         a2, s5, -291
                  auipc        s1, 379603
                  addi         t4, a1, -1533
                  c.and        s0, a3
                  slli         s6, s11, 31
                  lui          t5, 84232
                  c.addi4spn   a3, sp, 528
                  c.or         s1, s1
                  slt          gp, s8, a3
                  c.li         s5, -1
                  slt          s3, s11, a5
                  c.slli       s7, 20
                  srai         sp, s7, 5
                  sll          t0, t1, a7
                  srl          a3, a4, s1
                  remu         s1, t6, t1
                  or           s5, t5, s10
                  c.add        t4, a2
                  sltiu        t6, s9, -1950
                  c.li         t6, 28
                  addi         t4, s3, -1407
                  or           t0, s7, gp
                  rem          s4, sp, sp
                  c.nop
                  auipc        a2, 990937
                  rem          t2, a0, a3
                  c.li         t0, -1
                  srli         a4, ra, 2
                  c.srli       a3, 30
                  c.lui        s8, 10
                  c.sub        s0, a5
                  c.addi16sp   sp, -16
                  c.mv         t5, ra
                  c.or         a3, s0
                  sub          a6, a6, s2
                  srli         s4, gp, 27
                  c.addi16sp   sp, -16
                  c.add        t4, t6
                  sltu         gp, a6, s6
                  c.sub        a0, s0
                  mulhsu       t4, s2, s3
                  sll          s5, t3, t0
                  sub          a0, t1, s7
                  mulhu        tp, a6, t2
                  c.srai       s1, 7
                  c.slli       a5, 28
                  srai         s0, a4, 21
                  srli         a6, t4, 0
                  mul          s7, t4, zero
                  srai         s6, gp, 31
                  mulh         a0, s6, a5
                  c.add        a0, t0
                  addi         s4, a2, -1520
                  mulhsu       s11, t2, t4
                  c.srai       a3, 1
                  remu         a5, s0, s8
                  auipc        sp, 696942
                  addi         s4, s6, -1587
                  mulhu        tp, s0, s4
                  div          t0, a6, s7
                  srl          s10, t2, s1
                  c.or         a0, a0
                  srai         s4, s5, 19
                  c.nop
                  sltu         a5, sp, t6
                  c.addi16sp   sp, 416
                  sub          t5, s4, t6
                  srl          s6, s3, tp
                  sltiu        a6, t6, -130
                  sra          sp, t6, s9
                  c.nop
                  c.lui        s11, 6
                  sltiu        a4, a7, 2034
                  mulhsu       a5, a2, t1
                  c.slli       s7, 21
                  c.li         s11, 24
                  sltiu        s7, s6, -494
                  srl          t4, s7, a4
                  mulhu        a3, a2, t6
                  mul          s10, t3, t3
                  c.slli       s7, 16
                  or           s8, sp, t2
                  lui          t6, 775673
                  mul          a3, a0, s3
                  srl          gp, s2, t0
                  c.srai       s1, 15
                  or           a5, tp, t3
                  xor          s0, s0, t4
                  divu         t2, zero, s10
                  srai         s3, s7, 15
                  ori          s10, s2, 891
                  c.nop
                  c.srli       a0, 28
                  c.srai       a4, 23
                  ori          a6, a6, 564
                  c.or         a3, a1
                  mulhu        s2, t5, a1
                  mulhsu       s1, a2, s7
                  slti         s11, s4, 1115
                  sltiu        zero, s1, 239
                  lui          s2, 997168
                  c.addi4spn   s1, sp, 640
                  srli         s0, s9, 25
                  remu         a2, t3, s1
                  c.addi16sp   sp, -16
                  c.addi       t4, 18
                  and          t0, ra, s8
                  c.slli       s6, 14
                  xor          a3, s2, s0
                  c.xor        a0, s1
                  divu         t0, a5, s9
                  nop
                  nop
                  srl          t1, sp, t6
                  and          a6, a1, a4
                  slti         s2, t2, 1893
                  sra          sp, t3, s1
                  mulhu        a2, t0, gp
                  sll          s0, s7, gp
                  c.xor        s1, a1
                  c.lui        a0, 28
                  mulhsu       t5, s2, s1
                  c.mv         a6, s0
                  srli         a5, s2, 14
                  srai         t0, s3, 28
                  sltu         a5, a0, a6
                  div          a5, t2, gp
                  c.xor        s0, a2
                  sltu         t4, s5, a4
                  c.srai       a3, 29
                  c.sub        a5, s1
                  c.and        a4, a5
                  mulhsu       s11, t2, s0
                  c.xor        a2, a5
                  c.addi       s3, 1
                  xori         a0, t2, 718
                  nop
                  sltiu        s8, t3, -2015
                  c.mv         t4, t6
                  xor          gp, s5, s3
                  div          s1, s0, t0
                  slli         s8, a3, 28
                  sltiu        t0, a0, 1321
                  srli         t6, s5, 31
                  mulh         t2, s0, s6
                  slt          ra, a3, a1
                  auipc        s6, 384224
                  c.srai       a0, 8
                  rem          s1, s8, t2
                  mul          a4, s4, a7
                  andi         sp, zero, 1260
                  c.add        s4, s0
                  c.addi       s4, 6
                  sltu         s8, t4, a4
                  mulh         s10, s9, s9
                  c.mv         s4, t5
                  srli         s11, s2, 2
                  divu         s8, t4, t3
                  mulhsu       tp, t6, a7
                  c.lui        t4, 5
                  div          a2, t2, tp
                  c.addi16sp   sp, 176
                  c.addi4spn   a2, sp, 384
                  c.nop
                  addi         s2, a2, 1100
                  c.srai       a3, 3
                  c.sub        s1, s1
                  auipc        s6, 755897
                  nop
                  addi         s11, a3, -708
                  addi         zero, t2, -830
                  c.add        s11, s11
                  sltu         s10, zero, s3
                  c.mv         t4, s4
                  c.srli       a4, 6
                  xor          s0, a2, a6
                  c.lui        gp, 16
                  addi         s8, tp, 1854
                  c.slli       s7, 2
                  auipc        t5, 393825
                  c.srai       s0, 27
                  addi         t1, s4, -1507
                  rem          s0, a3, a1
                  and          s0, t4, t4
                  auipc        s2, 524693
                  sltiu        s3, s9, 445
                  div          t4, s11, a1
                  c.sub        a0, a2
                  c.add        tp, gp
                  c.srli       a3, 8
                  mulh         s5, t6, a3
                  c.slli       s10, 21
                  slli         s3, s6, 20
                  sll          sp, s9, a2
                  remu         s4, zero, s1
                  mulhu        a2, a1, a4
                  c.li         t5, -1
                  remu         s5, s0, a4
                  ori          s10, s7, 1926
                  or           sp, ra, tp
                  and          s0, sp, a4
                  div          s2, s6, t1
                  c.li         a7, 19
                  c.slli       s0, 28
                  slt          tp, a3, s10
                  mulhu        ra, sp, s4
                  or           a7, t5, s11
                  slt          a2, t3, a6
                  c.xor        a5, a4
                  c.addi4spn   s0, sp, 656
                  c.slli       s5, 4
                  xori         t5, a0, 1460
                  srai         s4, t1, 17
                  remu         zero, sp, zero
                  c.or         a3, a0
                  c.sub        s1, a1
                  andi         a3, ra, -1389
                  c.mv         a6, a2
                  c.lui        a2, 9
                  slt          a3, a3, t5
                  or           sp, sp, t3
                  addi         a5, s3, -1365
                  c.addi16sp   sp, 64
                  c.xor        a0, a2
                  c.mv         a5, s4
                  slti         s7, t4, 367
                  c.slli       s3, 27
                  c.sub        a2, s0
                  c.andi       a2, -1
                  sltu         t6, s6, s11
                  addi         a4, a1, -558
                  or           s7, a5, ra
                  lui          s1, 675540
                  xor          s8, t6, s11
                  c.add        a6, s1
                  c.addi16sp   sp, -16
                  c.slli       t1, 27
                  c.addi4spn   a2, sp, 912
                  srl          gp, a5, a6
                  auipc        s1, 241843
                  c.addi16sp   sp, 432
                  c.slli       t2, 21
                  rem          a6, s7, a4
                  c.mv         t5, s11
                  slti         gp, a3, -813
                  rem          s4, s6, t3
                  xori         a3, ra, -1694
                  slli         a7, s11, 11
                  auipc        a2, 182273
                  ori          s1, a7, -1306
                  and          s4, ra, s3
                  c.mv         sp, gp
                  ori          a4, a3, 85
                  remu         s8, s2, s11
                  xor          s0, s7, s5
                  sra          a5, t1, zero
                  c.andi       a0, 20
                  c.slli       s5, 31
                  slti         sp, s9, -147
                  mulh         a3, sp, ra
                  c.addi       a5, 10
                  or           t6, s2, a5
                  c.lui        s1, 8
                  auipc        a4, 973755
                  slt          s8, sp, t2
                  and          s4, s11, a2
                  c.and        a5, a3
                  sltiu        s11, zero, -1782
                  c.xor        a4, s0
                  c.nop
                  or           s5, gp, s6
                  mul          s10, t6, t1
                  c.xor        a4, s1
                  divu         a0, t0, zero
                  srli         t5, a5, 26
                  rem          s3, s9, a3
                  mul          t4, zero, s0
                  c.mv         a6, s7
                  c.addi4spn   s1, sp, 864
                  c.mv         a6, a6
                  sltu         t5, sp, a4
                  c.srai       s0, 31
                  mul          t6, ra, a2
                  remu         s0, a0, t2
                  srl          t5, a6, s5
                  c.srli       a2, 18
                  srl          s4, t6, gp
                  c.li         ra, 0
                  xori         s0, s11, 2026
                  c.nop
                  and          t2, t2, s4
                  slt          s0, t4, s1
                  c.or         a5, a4
                  c.srli       a2, 17
                  c.srli       s0, 11
                  c.xor        a0, a2
                  c.add        t0, a6
                  div          a6, t4, a1
                  c.and        a5, s1
                  div          s4, s5, t4
                  remu         a7, ra, a0
                  auipc        s1, 901119
                  srai         s4, tp, 13
                  addi         s0, zero, -277
                  mul          a4, t1, ra
                  nop
                  c.li         tp, 6
                  srai         a4, a5, 5
                  xor          t6, t1, sp
                  rem          gp, ra, s8
                  sltu         a4, t6, s7
                  c.andi       a2, 26
                  mulhu        s11, s3, a0
                  auipc        a0, 924690
                  c.lui        a2, 4
                  sub          s2, a4, gp
                  c.andi       a4, -1
                  slli         s0, t6, 8
                  add          s2, sp, ra
                  sltiu        t1, a3, 502
                  sltu         s0, ra, a0
                  srl          t0, s10, s11
                  c.add        ra, t6
                  nop
                  srai         a3, s4, 30
                  sub          t0, a0, s9
                  addi         a0, t2, -237
                  sll          s3, s7, s11
                  slli         a4, a6, 6
                  or           t1, ra, ra
                  div          ra, a5, s7
                  slt          s8, t2, t2
                  srli         zero, a6, 1
                  slt          ra, a5, t4
                  c.addi       s7, 14
                  sll          a7, t6, gp
                  mulh         a0, zero, t0
                  c.lui        s10, 26
                  rem          a2, s1, t3
                  c.nop
                  c.addi       s2, -1
                  remu         t0, ra, s5
                  c.nop
                  c.li         t4, 26
                  sltu         t4, a2, ra
                  rem          ra, t5, a3
                  add          t2, a1, s0
                  andi         t5, s7, -1332
                  mul          sp, a3, s7
                  divu         a5, ra, tp
                  divu         s8, a6, s6
                  addi         sp, t2, -600
                  srli         s3, a0, 14
                  c.andi       a2, -1
                  srli         a5, s9, 5
                  c.sub        s0, a5
                  srai         s7, s9, 20
                  c.li         s2, 29
                  sub          a2, a2, t6
                  slti         s1, ra, -1314
                  and          ra, s7, t6
                  nop
                  c.addi16sp   sp, -16
                  remu         t2, s10, s6
                  xor          ra, s4, s3
                  sub          s8, a2, s10
                  mulhu        a3, s7, s7
                  c.srli       s1, 17
                  xor          t0, s6, t2
                  c.xor        a4, a0
                  sltiu        zero, t0, 56
                  srai         s3, a7, 1
                  and          t4, t6, t0
                  add          tp, s2, t5
                  auipc        a3, 109577
                  divu         a5, t2, t6
                  mul          t1, tp, s6
                  xori         s1, s3, -743
                  sub          s1, a2, a6
                  c.addi4spn   a0, sp, 896
                  sub          s3, s0, a3
                  mulh         s8, s8, t2
                  sub          t1, a4, a4
                  c.sub        a5, a2
                  xor          a3, zero, s0
                  c.slli       s1, 7
                  lui          t2, 249010
                  c.addi16sp   sp, -16
                  xori         t5, a2, 428
                  add          s11, t1, a1
                  c.addi16sp   sp, 400
                  c.srli       s0, 9
                  sltu         a4, s7, gp
                  or           s5, a6, a3
                  c.lui        a6, 10
                  c.andi       a4, -1
                  sub          a0, t0, s9
                  sra          t6, a1, s8
                  mul          a5, a5, s3
                  c.or         s1, a1
                  srl          a3, s10, t4
                  remu         s0, t4, s8
                  c.and        a3, s1
                  nop
                  c.sub        a2, a1
                  remu         a2, a2, t6
                  c.slli       s7, 21
                  c.andi       s1, -1
                  c.srai       a0, 22
                  c.srli       a0, 16
                  or           a4, t4, tp
                  sra          a4, s4, a2
                  andi         a0, t0, 68
                  lui          s3, 740588
                  slti         t0, t6, -1330
                  mulh         s10, a7, s11
                  or           a5, s5, s9
                  sra          s10, ra, ra
                  lui          s5, 738623
                  addi         s11, s11, 1803
                  ori          s1, s4, -1185
                  c.xor        a0, a0
                  divu         gp, t2, s6
                  c.slli       s5, 18
                  c.li         t0, -1
                  add          a5, s2, a4
                  srli         t5, a6, 25
                  xor          a2, s2, a2
                  c.sub        s1, s1
                  sltiu        s6, s8, -720
                  div          sp, s6, s9
                  slti         a0, t4, -1978
                  divu         a7, a1, s4
                  c.nop
                  sltu         s1, t5, s9
                  slli         a2, t2, 0
                  c.andi       s1, 11
                  or           s7, t1, s5
                  sra          s3, a4, s10
                  ori          gp, a0, -572
                  mul          a0, t5, a7
                  lui          s4, 321247
                  c.slli       a0, 7
                  slli         a0, s4, 5
                  c.srli       a5, 25
                  sltu         s8, s9, a6
                  slt          s0, s6, s1
                  slti         s3, s8, 499
                  addi         t6, a4, 1654
                  c.addi       tp, 31
                  and          s2, t0, a2
                  c.srai       a5, 13
                  xori         a5, t3, -1485
                  andi         s3, t6, -273
                  c.slli       s3, 25
                  sll          zero, zero, a7
                  c.mv         a0, a6
                  sll          a3, zero, s11
                  c.sub        a0, a0
                  slt          a4, s8, t2
                  sra          a5, t2, t1
                  or           a0, gp, tp
                  add          t5, s4, s9
                  c.srli       a4, 2
                  c.addi       tp, -1
                  div          tp, t5, s10
                  c.addi16sp   sp, -16
                  srl          a7, a0, t4
                  add          s1, a2, s9
                  c.or         s0, a0
                  c.lui        s3, 16
                  or           t2, t1, s11
                  andi         s7, a4, -884
                  c.mv         t1, t4
                  sll          t4, a3, zero
                  c.sub        a0, a3
                  addi         s11, t6, 1273
                  addi         s0, t4, 710
                  c.addi4spn   a4, sp, 208
                  slt          ra, a5, s6
                  slti         sp, t3, -184
                  srli         a2, a3, 2
                  remu         a4, t0, a1
                  addi         s6, ra, -279
                  sll          tp, s11, s9
                  rem          t4, a2, s11
                  srl          t1, s5, gp
                  c.lui        s2, 13
                  c.addi4spn   a5, sp, 448
                  c.xor        a3, a5
                  mulh         zero, a5, a6
                  slli         t5, zero, 19
                  rem          s7, gp, tp
                  auipc        tp, 432697
                  slli         t6, s3, 14
                  rem          s5, a0, s1
                  ori          sp, zero, -211
                  remu         sp, t2, t2
                  xor          sp, s1, t5
                  slli         s2, a1, 26
                  remu         a7, t2, a5
                  c.addi16sp   sp, 96
                  srl          s0, t0, t3
                  mulh         t4, a3, tp
                  remu         ra, s7, s1
                  rem          t4, a2, t0
                  nop
                  auipc        s10, 816973
                  lui          a4, 22566
                  srl          s5, s3, s0
                  c.slli       s4, 3
                  nop
                  lui          s10, 506973
                  srli         s3, t2, 3
                  remu         a2, zero, t0
                  c.or         a2, a3
                  sra          s7, a3, a0
                  c.li         a7, 7
                  divu         tp, a5, a5
                  c.srai       a3, 22
                  remu         a3, a1, s6
                  c.li         s11, 4
                  remu         s2, a4, s9
                  rem          s2, ra, a0
                  andi         t1, s11, 462
                  mul          sp, s2, s1
                  lui          gp, 300324
                  srai         s11, gp, 29
                  slti         a5, s4, 1284
                  rem          zero, s8, s1
                  mulhu        t5, a7, s9
                  c.addi4spn   s1, sp, 368
                  sltu         gp, sp, s1
                  c.mv         tp, t3
                  c.slli       t0, 26
                  div          t6, s2, t2
                  c.nop
                  srai         ra, s6, 27
                  slli         s11, zero, 2
                  srl          s8, a4, s7
                  c.addi4spn   a0, sp, 400
                  c.srli       a4, 11
                  slli         a6, s2, 11
                  slt          t5, a5, a6
                  sll          a2, t6, a0
                  xor          a2, s4, a0
                  andi         t5, a4, -1602
                  and          t0, t4, s7
                  sltu         s7, a0, s2
                  c.li         a4, 6
                  rem          s0, t2, gp
                  c.or         a3, s1
                  srai         s10, a1, 7
                  mulhu        s4, s0, t3
                  div          a7, tp, a1
                  andi         a2, s5, -1129
                  mulhsu       s4, s1, s9
                  c.andi       a0, 18
                  slti         sp, a5, -434
                  addi         a6, s11, 1393
                  ori          s5, s7, 40
                  xori         a5, s10, -1832
                  sll          s8, ra, s9
                  c.or         a5, s1
                  srl          t6, t6, a6
                  sltu         a0, t4, ra
                  nop
                  xori         a0, s11, 1035
                  c.sub        s1, a2
                  slli         sp, a7, 24
                  rem          s6, s11, s4
                  mulhsu       s11, a6, s10
                  srli         a5, s6, 26
                  c.lui        a6, 16
                  c.addi16sp   sp, -16
                  sll          s5, s1, a6
                  c.srai       a4, 30
                  add          t2, a0, s0
                  sltu         a3, s5, a5
                  addi         zero, t2, 822
                  xori         t6, t1, 1842
                  c.srai       s0, 26
                  divu         s4, t0, s5
                  c.addi4spn   a0, sp, 928
                  or           s8, s7, t3
                  slti         s5, s4, -1429
                  c.and        s0, s0
                  addi         s7, s9, -632
                  c.slli       t0, 30
                  c.and        a3, a5
                  xori         a5, s3, -1247
                  c.li         a5, -1
                  addi         s5, t1, -940
                  mulhsu       gp, t4, t1
                  sll          s8, s9, s3
                  xor          t1, t0, t4
                  sltu         s3, s0, s7
                  remu         t4, tp, s8
                  slli         t1, a6, 24
                  c.addi4spn   a2, sp, 32
                  c.nop
                  sub          a2, s4, ra
                  add          t4, s5, a5
                  sra          s8, s3, s1
                  slt          s11, a5, s2
                  c.slli       s5, 5
                  slti         t0, a5, -254
                  slt          s6, a5, s7
                  c.nop
                  mulh         s8, t0, s8
                  c.sub        s1, s1
                  c.andi       a4, -1
                  c.srli       s1, 6
                  slli         s11, zero, 8
                  c.li         t4, -1
                  c.addi4spn   s1, sp, 176
                  mulhsu       ra, a0, a3
                  slt          a2, tp, sp
                  and          a5, sp, t1
                  auipc        tp, 729465
                  add          s0, t3, a4
                  nop
                  c.lui        t0, 2
                  c.mv         s6, tp
                  sub          gp, s11, s11
                  remu         t1, t2, s6
                  remu         a6, s4, s0
                  add          s2, a4, t6
                  ori          a7, t0, -1253
                  srl          s10, s3, ra
                  ori          s0, t1, -1868
                  slti         a0, s9, -925
                  nop
                  sra          s2, a0, s6
                  lui          s1, 213709
                  mulhsu       ra, a6, s9
                  slti         s11, t2, 850
                  lui          s11, 55026
                  c.addi16sp   sp, 80
                  c.srai       a0, 6
                  divu         gp, a3, s2
                  c.mv         a2, t2
                  c.andi       a2, 25
                  c.addi16sp   sp, -16
                  slli         a5, a0, 7
                  c.or         a0, s1
                  srai         t2, s5, 30
                  slt          a7, t6, s10
                  c.addi16sp   sp, -16
                  c.add        s6, a5
                  mul          s4, t3, t6
                  slti         a6, s0, -666
                  c.srai       a5, 3
                  mulh         t6, a2, s4
                  srl          t2, s4, sp
                  mul          sp, t3, s9
                  auipc        s1, 650739
                  andi         t6, t4, 1692
                  srai         zero, a5, 24
                  c.or         a5, a5
                  lui          s5, 99714
                  c.xor        a5, s0
                  c.and        a2, a5
                  c.lui        s2, 8
                  c.srai       a4, 25
                  slli         s0, s0, 27
                  add          zero, s4, s1
                  srli         a6, t1, 28
                  c.andi       s0, -1
                  divu         a5, sp, s8
                  c.addi       a3, 1
                  mul          t4, s8, tp
                  c.and        a5, a1
                  c.addi4spn   a2, sp, 480
                  remu         s0, ra, a3
                  sltu         s8, t1, a2
                  c.and        a0, a4
                  c.addi4spn   a4, sp, 224
                  sra          sp, s1, a5
                  c.add        tp, s6
                  nop
                  div          a3, tp, s9
                  c.or         a0, a2
                  rem          sp, sp, s9
                  ori          s2, s1, 1937
                  c.or         a3, s1
                  auipc        a5, 508566
                  c.add        a3, a6
                  srai         t2, t2, 23
                  xor          s11, t6, s7
                  nop
                  c.addi4spn   a0, sp, 752
                  auipc        sp, 613729
                  or           s7, gp, s9
                  slt          s11, zero, s3
                  slti         t0, s11, 792
                  c.and        a0, a3
                  or           s5, a6, zero
                  xor          t1, a0, t3
                  slti         s4, t2, 783
                  slt          t4, s11, t1
                  mul          a5, a1, s8
                  sub          a5, s0, s1
                  mul          s7, a4, sp
                  sll          s4, s4, s7
                  lui          a6, 340926
                  addi         zero, s11, -1490
                  slti         s0, t2, 690
                  sub          s0, s7, t4
                  andi         s5, t1, 1913
                  c.and        a5, s0
                  srl          t1, sp, s7
                  c.lui        gp, 13
                  sltu         s8, t2, a0
                  srai         zero, t5, 9
                  c.and        s0, s1
                  lui          a5, 774238
                  nop
                  rem          s0, a7, s1
                  and          a7, s0, a2
                  mulh         sp, s7, s3
                  c.xor        a0, a0
                  c.addi4spn   s0, sp, 976
                  c.addi       tp, -1
                  mulhu        t5, tp, t2
                  slli         s8, gp, 2
                  mulhsu       t4, a6, a1
                  sltiu        s5, s3, 1688
                  mul          tp, s8, t0
                  c.addi16sp   sp, 112
                  c.slli       a0, 15
                  c.xor        a5, a1
                  slli         t4, zero, 18
                  andi         s11, a0, -1120
                  c.xor        s1, a0
                  c.slli       t5, 18
                  c.mv         s7, sp
                  ori          s5, s5, -820
                  rem          t6, a2, t1
                  c.nop
                  rem          s2, a3, s0
                  divu         tp, t3, tp
                  c.sub        a3, a5
                  mul          gp, a4, s3
                  c.addi       a7, 24
                  mul          s7, s2, a3
                  ori          t5, gp, -1761
                  la x28, test_done
                  jalr x0, x28, 0
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
                  addi x11, x11, -4
                  sw  x25, (x11)
                  add x25, x11, zero
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x11, x25, zero
                  csrr x9, 0x300 # MSTATUS
                  csrr x9, 0x342 # MCAUSE
                  srli x9, x9, 31
                  bne x9, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x9, 0x341 # MEPC
                  csrr x9, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x9, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x9, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x9, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x9, x7, ecall_handler
                  li x7, 0x1
                  beq x9, x7, instr_fault_handler
                  li x7, 0x5
                  beq x9, x7, load_fault_handler
                  li x7, 0x7
                  beq x9, x7, store_fault_handler
                  li x7, 0xc
                  beq x9, x7, pt_fault_handler
                  li x7, 0xd
                  beq x9, x7, pt_fault_handler
                  li x7, 0xf
                  beq x9, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x9, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

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
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x25, x11, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  add x11, x25, zero
                  lw  x25, (x11)
                  addi x11, x11, 4
                  mret

load_fault_handler:
                  add x25, x11, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  add x11, x25, zero
                  lw  x25, (x11)
                  addi x11, x11, 4
                  mret

store_fault_handler:
                  add x25, x11, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  add x11, x25, zero
                  lw  x25, (x11)
                  addi x11, x11, 4
                  mret

ebreak_handler:   
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x25, x11, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  add x11, x25, zero
                  lw  x25, (x11)
                  addi x11, x11, 4
                  mret

illegal_instr_handler:
                  csrr  x9, 0x341
                  addi  x9, x9, 4
                  csrw  0x341, x9
                  add x25, x11, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  add x11, x25, zero
                  lw  x25, (x11)
                  addi x11, x11, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x9, 0x300 # MSTATUS;
                  csrr  x9, 0x304 # MIE;
                  csrr  x9, 0x344 # MIP;
                  csrrc x9, 0x344, x9 # MIP;
                  add x25, x11, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  add x11, x25, zero
                  lw  x25, (x11)
                  addi x11, x11, 4
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
