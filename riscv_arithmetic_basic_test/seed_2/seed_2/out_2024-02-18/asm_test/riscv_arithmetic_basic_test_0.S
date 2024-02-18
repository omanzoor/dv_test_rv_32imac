.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x15, 0x40001105
                  csrw 0x301, x15
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 1
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  li x15, 0x0
                  csrw 0x304, x15 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xd3b3aeb7
                  li x2, 0xf9886173
                  li x3, 0xf03c97a0
                  li x5, 0xab213a66
                  li x6, 0x2
                  li x7, 0x7
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0xf4fd6949
                  li x11, 0x80000000
                  li x12, 0xa9efe463
                  li x14, 0xfb504596
                  li x15, 0x80000000
                  li x16, 0xa
                  li x17, 0x80000000
                  li x18, 0x7
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x773d03fe
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x883c4620
                  li x26, 0xfc01a7b8
                  li x27, 0x0
                  li x28, 0x97da683f
                  li x29, 0xa1b5dc53
                  li x30, 0xa
                  li x31, 0x26c7f15d
                  la x4, user_stack_end
main:             mulhsu       t2, t2, s11
                  lui          gp, 552195
                  rem          s7, a0, a0
                  andi         s9, s11, 1206
                  mulhu        s6, sp, a2
                  c.and        s0, a5
                  andi         t1, s10, 1781
                  c.and        s0, a4
                  srai         t5, tp, 21
                  slti         s9, a5, -1417
                  mul          s1, s1, s3
                  rem          t1, a0, s5
                  c.and        s0, a0
                  srli         sp, a1, 26
                  and          a1, ra, s2
                  sltiu        t2, t2, -818
                  ori          t1, s0, -415
                  xor          s4, s4, a1
                  c.nop
                  mul          sp, s0, s3
                  c.addi4spn   a5, sp, 912
                  nop
                  lui          a6, 373510
                  c.or         s0, a5
                  c.mv         s9, s8
                  sltu         zero, a2, sp
                  and          a4, t3, t4
                  c.or         s1, s1
                  slli         s5, ra, 25
                  sra          s0, sp, t4
                  srl          t2, s8, s6
                  and          a4, s10, a5
                  sll          gp, s8, s10
                  xor          t4, s10, s5
                  slti         s0, a2, -470
                  mulhu        s1, a2, a3
                  rem          sp, s8, s4
                  c.srli       a2, 10
                  c.srai       a4, 17
                  srai         t0, s1, 2
                  c.slli       gp, 8
                  slt          s9, t3, a1
                  rem          t2, ra, t1
                  addi         ra, s3, -1968
                  c.xor        a2, a1
                  c.srai       a5, 16
                  xori         sp, a1, 595
                  c.addi4spn   s1, sp, 368
                  xori         s1, t4, -399
                  mulhu        s4, sp, s1
                  sltu         s1, s4, gp
                  srli         s11, gp, 11
                  c.addi       t5, -1
                  c.addi4spn   s1, sp, 592
                  c.sub        a2, a3
                  mul          t4, sp, t1
                  ori          t1, s4, 1274
                  c.xor        a0, s0
                  mul          s6, t2, s1
                  c.slli       a4, 28
                  c.addi16sp   sp, -16
                  sll          s6, a1, s8
                  remu         a6, a4, s3
                  c.andi       a5, 8
                  nop
                  and          s9, s3, t0
                  mul          s5, s2, a2
                  c.li         a7, -1
                  c.slli       a2, 2
                  auipc        a4, 987536
                  add          gp, s4, s1
                  div          s8, t1, a6
                  slli         a6, tp, 22
                  or           a5, s6, t4
                  slti         s4, a4, 1165
                  mulhu        t3, s6, s4
                  srli         t0, s10, 27
                  lui          t4, 740587
                  mulhu        a2, t0, a3
                  sltiu        gp, s7, 1377
                  div          t2, a2, s6
                  c.addi       a0, -1
                  andi         t3, s5, -398
                  divu         zero, a3, t3
                  mulh         s11, t6, a1
                  mul          t5, s0, a5
                  addi         s7, s9, -1983
                  sltiu        t2, a6, 1649
                  c.mv         s5, a1
                  c.nop
                  sll          a4, sp, t1
                  slli         s1, a5, 14
                  add          a7, zero, t1
                  c.or         a5, a2
                  c.slli       s0, 21
                  mulhsu       s4, t6, a3
                  c.lui        gp, 5
                  lui          a1, 944414
                  add          gp, zero, tp
                  c.lui        s2, 21
                  ori          a7, s6, 1972
                  c.sub        a5, a1
                  slti         a0, a0, -1041
                  mulhu        a0, s1, gp
                  div          zero, a5, a7
                  c.nop
                  c.nop
                  mulhsu       t2, a7, a2
                  xori         s4, a3, 1066
                  srli         s4, s0, 4
                  mulh         s11, s2, a0
                  addi         t3, tp, 1902
                  andi         ra, gp, -594
                  slt          s8, t5, s11
                  slti         s5, a2, -962
                  c.slli       s1, 5
                  srai         gp, s11, 23
                  addi         t4, s1, 1763
                  c.andi       a0, -1
                  div          t2, sp, s3
                  xor          s8, t3, t3
                  c.xor        a0, a4
                  c.lui        s8, 27
                  nop
                  c.addi       a6, 6
                  c.add        t3, sp
                  c.or         a4, a2
                  srl          s9, s4, ra
                  c.addi       s7, -1
                  c.srai       a5, 12
                  c.li         s3, 17
                  c.xor        a0, a0
                  c.addi       t3, -1
                  add          a6, a2, a1
                  mulhsu       s3, tp, sp
                  c.lui        s6, 21
                  c.or         a5, a4
                  c.nop
                  mulhu        s7, t1, t4
                  srai         a0, t4, 18
                  slt          ra, sp, a3
                  c.li         s6, -1
                  sll          t0, s6, s11
                  sra          gp, s10, t4
                  c.addi16sp   sp, -16
                  or           s11, s9, zero
                  c.add        s1, a2
                  or           a1, s10, zero
                  slli         sp, s11, 21
                  addi         s9, s7, 291
                  c.nop
                  xori         s11, t6, 1897
                  c.srli       a0, 17
                  c.sub        a2, a4
                  lui          zero, 800920
                  mulhu        ra, t6, zero
                  c.add        s6, t4
                  c.add        a1, s6
                  mul          s8, t6, t1
                  lui          s10, 575458
                  c.xor        a4, s0
                  c.srli       s1, 12
                  lui          ra, 734720
                  c.sub        a0, a4
                  div          gp, t6, t4
                  andi         a2, s4, -1737
                  div          t5, a7, s7
                  ori          t3, a7, -274
                  divu         ra, ra, t2
                  c.nop
                  c.addi4spn   a0, sp, 320
                  xori         s4, zero, -1619
                  c.andi       a5, 0
                  or           a2, t1, gp
                  slli         t4, t0, 24
                  sltiu        s0, gp, 1626
                  slt          s11, t2, t1
                  mul          s3, s11, a2
                  mulhu        s7, a4, s8
                  xori         s4, s6, 28
                  slt          a5, a0, s9
                  slti         a2, a1, 1014
                  c.addi16sp   sp, -16
                  c.or         a4, a1
                  div          gp, a0, a1
                  sltu         a0, s2, s7
                  sltiu        a6, a1, -35
                  srli         a4, t0, 16
                  and          t4, a0, s3
                  sra          s7, a5, s8
                  auipc        a0, 750691
                  c.nop
                  divu         a0, a7, s0
                  slti         s8, t6, 1115
                  c.addi       s7, -1
                  srai         a4, s0, 18
                  c.addi16sp   sp, 192
                  srl          s2, a0, a7
                  nop
                  ori          t0, a6, -1777
                  and          s5, s6, a7
                  nop
                  c.srli       a0, 15
                  sll          s9, t2, a0
                  sra          s8, s6, a4
                  andi         s4, s0, 723
                  c.sub        a5, a3
                  ori          s1, a7, 539
                  sll          t4, sp, s7
                  mul          s6, tp, sp
                  or           t2, s6, s9
                  mulh         s8, s8, a7
                  sll          a4, a2, sp
                  mul          zero, s10, t1
                  andi         s9, t1, 1707
                  lui          a4, 490573
                  and          zero, t3, t6
                  andi         t1, a5, -1241
                  c.li         t5, 31
                  mulhsu       a0, a2, a7
                  slli         s8, s7, 18
                  nop
                  auipc        t1, 1040147
                  c.srai       a0, 10
                  lui          a7, 1023969
                  c.addi16sp   sp, 272
                  srli         a0, gp, 18
                  auipc        t2, 518418
                  c.addi16sp   sp, -16
                  slt          sp, s1, zero
                  or           a4, ra, s2
                  ori          sp, s4, 646
                  sub          a7, t2, s11
                  sll          a2, t1, s9
                  c.slli       a2, 6
                  add          ra, zero, a2
                  c.li         s2, 9
                  c.addi4spn   a2, sp, 704
                  sub          s8, a2, s3
                  c.slli       s3, 29
                  c.srli       s0, 24
                  xori         t2, a2, -337
                  c.add        a7, s8
                  srli         s5, t3, 2
                  xor          t0, t0, s5
                  c.srai       s0, 12
                  sltiu        s3, zero, -772
                  c.srai       a1, 10
                  c.slli       t2, 3
                  c.addi       s9, 12
                  c.addi       a5, 16
                  srli         a5, t1, 7
                  sra          zero, a1, t0
                  c.mv         s9, a0
                  srai         s4, a0, 13
                  slti         t1, t5, 1670
                  addi         zero, s6, 1984
                  rem          t5, s5, t1
                  divu         gp, t6, a0
                  c.srai       a1, 1
                  sub          gp, s9, s10
                  c.addi4spn   a5, sp, 672
                  sra          s11, a0, a4
                  slt          t0, s1, t1
                  andi         sp, gp, 417
                  lui          ra, 783438
                  add          zero, tp, s11
                  c.or         s0, a1
                  c.add        s5, s10
                  c.slli       s4, 2
                  remu         t2, a7, gp
                  c.nop
                  c.addi       t0, -1
                  andi         zero, a0, 673
                  c.slli       a6, 12
                  sltiu        a7, s0, -1671
                  slti         a2, s9, -131
                  c.addi16sp   sp, -16
                  mulhu        a7, ra, t6
                  sub          s9, s6, t2
                  slt          a2, sp, tp
                  xori         s4, s3, -1436
                  c.srli       a1, 29
                  srai         s2, sp, 1
                  c.and        a2, s1
                  divu         a5, a7, s10
                  nop
                  slti         a6, a7, 810
                  andi         a6, a4, 231
                  add          a5, t4, s0
                  andi         s10, t0, -745
                  and          ra, s2, tp
                  slli         t3, t3, 28
                  rem          sp, a2, s10
                  slt          a7, sp, s6
                  slti         gp, t2, 1377
                  ori          a4, t0, -942
                  ori          s6, s8, -709
                  ori          s11, a6, 753
                  c.or         a5, s1
                  c.xor        s1, a1
                  slt          t4, a7, t6
                  c.lui        s7, 1
                  nop
                  xor          s2, s10, zero
                  slli         a2, s3, 22
                  c.nop
                  addi         s3, s2, -1611
                  ori          ra, s8, 1807
                  mul          s1, zero, s4
                  or           s8, ra, s11
                  div          s8, a1, t0
                  add          t4, t2, a5
                  c.addi       t2, -1
                  mul          a2, t2, s8
                  c.andi       a2, -1
                  sltiu        s0, s1, 1124
                  c.slli       ra, 9
                  c.add        a7, sp
                  and          a2, s1, t0
                  sltiu        a0, s3, -697
                  sltiu        s8, zero, -1567
                  c.slli       s1, 31
                  slli         a2, s3, 14
                  mulh         s11, s7, sp
                  sll          t5, a6, s7
                  c.addi       a5, 27
                  c.slli       t5, 11
                  mulh         sp, s0, s11
                  c.addi       s11, 22
                  c.add        s7, a5
                  c.mv         a0, s11
                  divu         a6, sp, a1
                  srli         a5, a0, 28
                  slt          s1, s9, s11
                  andi         a7, t2, 1458
                  mulhsu       zero, a4, a1
                  mulhsu       t2, s3, s4
                  andi         t3, s4, 1995
                  srli         a2, t1, 22
                  xori         s6, a7, 155
                  ori          a5, s1, -999
                  nop
                  remu         gp, t6, a4
                  ori          s9, s3, -173
                  slt          t4, t0, t5
                  and          s7, sp, t3
                  add          gp, s10, a7
                  xori         t4, s3, 2024
                  mulhsu       s11, a7, t2
                  andi         zero, a7, 1908
                  c.or         a1, a2
                  addi         gp, s6, -1512
                  andi         a1, s8, 766
                  c.srai       a1, 27
                  c.addi16sp   sp, -16
                  sub          zero, s9, a7
                  c.srai       s1, 25
                  c.addi       s2, 29
                  c.li         t0, -1
                  mul          t4, s1, s7
                  add          t0, s10, a5
                  c.and        s1, a2
                  srli         s9, s2, 8
                  c.li         s11, -1
                  c.add        ra, gp
                  sltu         zero, a6, a4
                  mulhu        a6, s8, a1
                  sra          a2, tp, ra
                  sltu         s7, s10, zero
                  c.slli       a7, 8
                  sub          t3, s2, s3
                  or           ra, s11, s11
                  c.lui        gp, 21
                  c.add        a4, tp
                  c.sub        a0, a5
                  c.add        s9, a2
                  or           s0, s0, sp
                  slli         s8, ra, 4
                  c.mv         s2, a1
                  c.addi4spn   s1, sp, 448
                  c.addi4spn   a4, sp, 656
                  c.srli       a0, 9
                  sra          sp, s4, s8
                  c.slli       t5, 12
                  auipc        a2, 590005
                  mulhu        ra, s7, gp
                  lui          s0, 776165
                  c.slli       s1, 27
                  srl          s9, t0, s11
                  sra          s1, s5, s11
                  slli         s6, t4, 0
                  srli         s7, s4, 12
                  mul          t5, t4, sp
                  slt          t4, a6, s5
                  add          s3, s4, t1
                  c.srai       a4, 23
                  c.slli       s2, 14
                  slli         s8, s10, 29
                  mulh         t0, s9, s4
                  ori          a6, s0, -188
                  sub          s8, a4, ra
                  srai         s4, s9, 5
                  c.and        s1, s0
                  addi         s5, a7, -1706
                  sub          t3, s6, a1
                  sltu         sp, t3, sp
                  sra          sp, s10, t6
                  sltiu        a0, gp, 1316
                  c.mv         s6, s11
                  sra          s6, gp, s6
                  c.mv         a0, s10
                  c.addi4spn   a5, sp, 624
                  lui          gp, 921933
                  rem          s8, s2, a1
                  c.srai       a4, 21
                  mul          s0, a1, a4
                  add          zero, a4, a2
                  and          s11, s6, s8
                  c.addi4spn   a5, sp, 944
                  ori          t0, a7, -349
                  or           sp, ra, s9
                  sltiu        s2, a0, 895
                  c.mv         t3, s8
                  mulhsu       a2, a6, s4
                  slli         s2, s9, 21
                  c.slli       a7, 31
                  srai         t5, s10, 27
                  c.srli       s0, 12
                  slti         a0, s1, -195
                  mulh         zero, s6, s10
                  mul          t2, a6, s7
                  c.slli       ra, 8
                  srai         a4, s9, 23
                  c.mv         s1, s8
                  andi         t4, a4, -256
                  ori          a6, s9, 1942
                  or           a5, a0, t1
                  slti         a2, s6, 1018
                  divu         ra, s6, s8
                  srl          t5, s1, gp
                  c.or         s0, s0
                  srli         ra, s3, 8
                  div          a6, a0, t6
                  andi         t3, s1, 415
                  srai         s9, sp, 13
                  add          t1, t2, ra
                  mulhsu       gp, a4, t1
                  divu         sp, gp, t5
                  sltu         s6, t4, a1
                  c.addi       gp, -1
                  srli         s11, ra, 14
                  sltu         s10, s7, s3
                  c.add        a5, a3
                  sra          s8, a2, a2
                  xor          zero, s7, t6
                  slt          t2, s10, sp
                  mul          t1, s3, t6
                  c.li         s1, -1
                  divu         s5, a7, s3
                  lui          a7, 193574
                  sub          t1, s7, tp
                  mulh         t1, s1, t1
                  ori          a0, s2, -428
                  remu         s8, s1, s5
                  mul          t0, tp, t2
                  divu         s11, s4, a7
                  c.li         t1, 16
                  auipc        s2, 145645
                  c.addi       t1, -1
                  c.sub        a5, a0
                  auipc        a2, 698737
                  addi         s2, a2, -1470
                  xori         s8, s9, 1128
                  mulhu        s3, t5, sp
                  c.addi       a4, 12
                  sra          s1, a6, t1
                  xor          a0, t2, s1
                  c.srli       a0, 19
                  xori         s7, s7, -1134
                  nop
                  c.xor        a5, a3
                  slt          t1, zero, s7
                  addi         t0, s1, -594
                  mulhsu       s10, a5, gp
                  andi         a7, s1, 751
                  sub          t1, a5, s9
                  c.or         a2, a3
                  sltiu        a0, s4, -408
                  sra          s9, s4, t6
                  c.xor        s0, a5
                  slt          s8, s2, t0
                  slti         t5, s11, -93
                  andi         t5, s1, 650
                  nop
                  c.mv         s0, a7
                  xor          s5, zero, gp
                  divu         t0, s2, s5
                  addi         s8, a4, 1618
                  slli         s8, t6, 13
                  srai         t1, a7, 28
                  c.li         t5, 10
                  c.add        t3, ra
                  sub          t5, a4, t4
                  sll          s0, gp, a4
                  sll          s9, a4, a5
                  c.lui        s7, 20
                  slti         s7, s6, -855
                  mulhsu       t4, s11, ra
                  srai         s7, t1, 12
                  c.sub        a5, a1
                  c.xor        a1, s1
                  c.and        a1, s1
                  c.sub        a0, a3
                  ori          a0, sp, 1071
                  c.addi16sp   sp, 160
                  c.nop
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 112
                  c.sub        a4, a2
                  sll          s0, t4, s6
                  slli         s4, t2, 4
                  c.li         s2, -1
                  c.li         t1, 6
                  andi         sp, a6, -664
                  xor          t2, a3, a0
                  c.addi       ra, 7
                  and          gp, a6, t1
                  add          s3, s7, s7
                  srai         s10, s8, 23
                  srli         s3, t5, 9
                  ori          s9, gp, 1159
                  slt          s3, s0, s7
                  div          a2, sp, s1
                  c.srli       s0, 5
                  c.sub        a1, s1
                  slt          t4, a6, t4
                  or           s0, a7, zero
                  xori         a2, a5, 385
                  slli         s2, t2, 13
                  c.srli       s1, 25
                  c.nop
                  lui          a5, 589819
                  c.srli       a5, 2
                  addi         t5, t2, -50
                  sub          t1, t0, t5
                  c.nop
                  sub          s3, s10, sp
                  srai         s4, s7, 12
                  auipc        s7, 818875
                  c.addi4spn   a5, sp, 928
                  or           t5, s4, a1
                  xor          a6, s4, s2
                  mulhu        s11, t2, s0
                  c.and        s1, a0
                  c.addi16sp   sp, -16
                  slti         ra, s6, 647
                  slti         s5, t6, -1074
                  addi         s2, t3, 1681
                  c.nop
                  mulh         zero, s6, a2
                  srl          a6, a5, a5
                  slli         s4, a6, 4
                  auipc        t2, 987820
                  slli         sp, t3, 21
                  addi         s7, t6, -1993
                  c.add        s9, s6
                  mulh         s8, a7, s10
                  and          s7, a4, s4
                  div          s10, s10, a3
                  c.sub        s1, a1
                  c.sub        a2, a3
                  c.and        a0, a3
                  rem          s11, sp, t2
                  divu         a5, s1, s3
                  c.addi16sp   sp, 112
                  c.addi       t3, -1
                  auipc        s11, 461550
                  slti         s5, s0, -1014
                  c.add        s8, t4
                  slt          t1, s2, s4
                  mulhsu       t4, s8, t0
                  auipc        t5, 649099
                  mulhu        a4, tp, a5
                  slli         s10, t4, 29
                  c.addi16sp   sp, -16
                  c.xor        a4, a3
                  xor          t4, s1, a5
                  c.add        a5, a0
                  or           a7, t0, s5
                  ori          s3, s5, 1314
                  mul          t1, gp, t5
                  rem          t2, sp, a2
                  and          s5, s5, s2
                  c.add        s9, t4
                  slt          a0, gp, a0
                  c.lui        s7, 21
                  ori          s0, t4, -544
                  sub          t5, s11, a7
                  c.xor        s0, a5
                  lui          s5, 35408
                  mulh         s1, a5, t2
                  c.or         a2, a2
                  slt          a2, a4, t3
                  sltiu        t2, tp, 772
                  sub          t2, sp, zero
                  c.andi       a5, -1
                  c.xor        a5, a3
                  sltu         a5, s3, a5
                  sll          t4, sp, a1
                  andi         a5, t0, 1412
                  and          s0, s10, s11
                  nop
                  c.slli       gp, 12
                  addi         t3, s5, 1
                  c.lui        s11, 6
                  div          s9, s0, s8
                  c.addi4spn   a5, sp, 976
                  srl          sp, a1, s3
                  mulhu        t0, s6, s10
                  slti         t5, a7, -937
                  sltu         s4, s7, sp
                  auipc        a4, 733629
                  c.li         s0, 0
                  lui          a6, 160121
                  ori          a5, t2, -522
                  c.add        a4, t6
                  add          s10, s11, ra
                  c.addi16sp   sp, 304
                  srli         a5, sp, 17
                  c.li         s8, 24
                  c.addi16sp   sp, 16
                  sub          s10, s10, s3
                  ori          s11, t0, -751
                  or           t4, a7, s4
                  ori          t3, sp, -1284
                  remu         t2, t0, t1
                  srli         a6, s1, 0
                  c.andi       a0, 31
                  mul          s1, a1, a5
                  slli         s1, s9, 6
                  ori          ra, tp, 577
                  ori          t2, tp, -559
                  c.andi       a2, 10
                  add          s7, sp, t2
                  mulhu        t4, gp, s2
                  c.sub        a2, a5
                  andi         ra, s2, 846
                  lui          s11, 60559
                  srai         s5, sp, 30
                  srai         s5, a1, 20
                  srli         s0, sp, 28
                  c.lui        a2, 8
                  auipc        t1, 1024576
                  slt          t3, a2, t2
                  andi         s10, a1, -1259
                  auipc        a2, 503926
                  c.nop
                  slti         s11, t0, -1085
                  remu         a1, zero, t0
                  srli         t4, t6, 4
                  sltiu        t1, a4, 1221
                  c.addi4spn   a0, sp, 240
                  auipc        t5, 12073
                  c.andi       s1, -1
                  c.addi       t5, -1
                  divu         s7, gp, a3
                  slt          a4, zero, s7
                  c.lui        t3, 11
                  c.add        t3, s1
                  sltiu        s1, s5, -1378
                  srli         t1, t3, 23
                  sll          s8, t5, a1
                  rem          a7, sp, s9
                  c.add        a0, s1
                  andi         s6, s10, 932
                  divu         a1, t6, t4
                  nop
                  c.xor        s0, a0
                  mul          t0, s11, tp
                  lui          s4, 625967
                  or           s8, a4, ra
                  slti         a4, tp, 554
                  andi         a1, a7, -1370
                  div          zero, s2, zero
                  auipc        s3, 929697
                  c.srli       a4, 16
                  sll          s8, a5, s10
                  mulh         s7, s0, s5
                  or           a0, s9, a3
                  c.mv         s6, a0
                  or           s4, t4, s11
                  remu         t0, a1, s1
                  xor          t0, s10, t3
                  c.add        t2, s4
                  c.mv         s4, a2
                  auipc        a6, 205659
                  c.addi       s8, 25
                  c.lui        a2, 20
                  auipc        t5, 1016311
                  c.srli       a1, 2
                  lui          t5, 709383
                  c.lui        t3, 7
                  c.mv         t5, s7
                  or           s5, s8, a5
                  xor          s5, s8, s8
                  c.lui        s10, 24
                  rem          s11, t4, zero
                  xor          s7, s1, a3
                  ori          a7, a7, -668
                  slli         zero, s8, 28
                  srli         t4, s9, 7
                  c.andi       a2, -1
                  c.srai       a1, 12
                  c.addi16sp   sp, -16
                  sltu         s10, s6, s9
                  sltu         s4, s5, t0
                  xor          s0, t6, s11
                  slt          s6, sp, t2
                  sub          t1, a6, sp
                  divu         a2, s2, s2
                  rem          t5, ra, a5
                  c.slli       a6, 28
                  mul          s2, tp, s7
                  c.andi       a2, -1
                  mul          sp, t3, s8
                  slli         a2, a3, 10
                  and          s10, s8, a1
                  divu         s7, t0, t3
                  sub          a7, t4, t0
                  andi         s8, s9, 865
                  mulhu        t1, s3, s1
                  slti         s5, a0, 1559
                  c.nop
                  auipc        s5, 223413
                  c.addi       a1, 21
                  c.or         a0, a1
                  remu         a5, s3, s1
                  andi         t4, sp, 64
                  and          s1, s9, t0
                  c.addi       ra, 27
                  slli         zero, gp, 13
                  c.addi       s7, 2
                  xori         s3, s10, -921
                  c.srai       a1, 6
                  mulh         a2, sp, s4
                  c.mv         s4, t6
                  c.mv         sp, a1
                  andi         zero, s3, -1095
                  c.nop
                  c.lui        a5, 10
                  c.andi       s1, 28
                  c.addi       t2, 23
                  rem          s9, s2, t0
                  c.slli       t0, 4
                  c.srai       a2, 27
                  sub          sp, t4, s8
                  srai         a4, tp, 29
                  srai         s1, a4, 25
                  sltiu        a0, s1, 327
                  sra          a5, a0, a0
                  c.srli       a4, 29
                  c.slli       a0, 30
                  c.andi       a4, 25
                  c.li         s6, -1
                  lui          t3, 255340
                  add          t0, s6, a3
                  andi         a7, s11, 1773
                  srl          s8, t1, t3
                  ori          s1, s8, 774
                  c.add        t1, s4
                  c.addi16sp   sp, 208
                  mulhu        zero, s4, a0
                  sra          a0, a1, a2
                  div          s0, s2, a5
                  mulh         ra, s6, s10
                  and          a5, s0, s10
                  mulhsu       s2, a2, t3
                  c.addi4spn   a4, sp, 544
                  srai         s6, a4, 20
                  sltu         s2, t5, s9
                  and          t2, s1, t4
                  auipc        s8, 768410
                  c.or         s0, a0
                  andi         s2, zero, 1022
                  xor          a6, s4, gp
                  c.addi       sp, -1
                  addi         s8, a5, -794
                  div          s11, a7, s11
                  c.or         a2, a2
                  andi         s8, s1, 637
                  mulhu        a6, t6, a4
                  div          t5, a4, ra
                  add          gp, s2, zero
                  c.xor        a5, s1
                  mul          s3, zero, a6
                  c.addi       t2, -1
                  c.and        a2, a2
                  srl          s5, s8, a4
                  srli         a5, t3, 6
                  div          s7, s8, a1
                  c.and        a1, a3
                  srai         sp, s8, 1
                  divu         a2, a3, a6
                  mulhu        s6, gp, s7
                  c.addi4spn   a1, sp, 576
                  c.srli       s1, 20
                  lui          t1, 572434
                  sll          t1, a0, a1
                  srai         a1, t6, 2
                  add          s3, s10, s8
                  c.and        s1, a3
                  c.or         a2, a4
                  sra          s0, s1, s0
                  slt          t5, a4, s7
                  lui          s6, 952127
                  sub          t5, t3, a4
                  ori          t1, s2, -990
                  add          s1, a0, ra
                  c.addi4spn   s1, sp, 32
                  c.slli       s4, 3
                  nop
                  c.addi16sp   sp, 416
                  xori         a1, a5, -1774
                  lui          a4, 450781
                  c.sub        a2, a3
                  c.addi4spn   a5, sp, 688
                  sll          a6, s2, t0
                  lui          a4, 921798
                  sltu         a5, t6, s6
                  c.srli       a2, 29
                  ori          s4, s8, 1370
                  c.or         a5, a1
                  andi         sp, a5, 1614
                  c.xor        a0, a0
                  slli         a5, t4, 16
                  c.xor        a2, s1
                  lui          a7, 191237
                  c.mv         a5, s0
                  c.sub        a5, s1
                  and          a5, s6, s9
                  slt          t2, s1, tp
                  xor          t3, s0, s0
                  mulhsu       t5, gp, a2
                  rem          s6, s7, t2
                  c.addi       t3, 2
                  sltu         t5, t2, t3
                  add          a4, s6, a7
                  c.addi4spn   a1, sp, 320
                  slti         s8, zero, 928
                  or           s4, s4, s6
                  andi         a0, a2, -5
                  c.and        s0, a1
                  mulh         s0, s2, t5
                  divu         s4, t2, s10
                  c.li         s8, -1
                  c.xor        a2, s1
                  c.and        a1, a3
                  c.addi16sp   sp, -16
                  c.mv         a7, t4
                  xor          gp, a7, a1
                  xori         a4, s2, 409
                  andi         a5, t0, -680
                  c.and        a4, a2
                  c.addi16sp   sp, 432
                  addi         a1, t5, -1420
                  nop
                  c.andi       a0, 1
                  c.li         a1, -1
                  ori          a1, s8, -999
                  mulh         t3, s0, gp
                  srl          gp, s3, s6
                  c.addi4spn   s0, sp, 80
                  c.addi4spn   a4, sp, 688
                  c.addi16sp   sp, -16
                  srai         a5, t0, 9
                  c.mv         a4, t0
                  sll          gp, s6, t2
                  mulh         a6, zero, s5
                  auipc        s0, 713489
                  c.xor        a0, a4
                  sub          s6, t6, t2
                  c.mv         s9, t4
                  ori          t4, t3, -887
                  lui          zero, 172449
                  c.sub        s0, a3
                  and          s3, ra, t0
                  c.andi       a2, 26
                  divu         gp, s4, s2
                  xori         s10, s3, 1356
                  add          t1, s10, s7
                  sra          a6, a4, ra
                  sub          s10, gp, s11
                  nop
                  add          s7, a0, t2
                  nop
                  or           t5, a2, t2
                  ori          a5, t6, 780
                  c.andi       a0, 24
                  mulh         sp, t2, a4
                  c.addi16sp   sp, -16
                  addi         t3, a4, -199
                  c.slli       sp, 31
                  mulhu        s6, a0, s1
                  auipc        a7, 166889
                  c.or         a1, a1
                  slt          t4, a3, a7
                  c.and        s1, a0
                  srl          zero, t5, t1
                  or           s2, s0, a6
                  auipc        s10, 165765
                  c.or         a1, a3
                  c.or         s1, a2
                  sltu         a2, s2, zero
                  c.lui        s11, 18
                  srl          t2, s7, s4
                  c.srli       a5, 18
                  addi         gp, s2, -1473
                  c.li         s6, 30
                  c.addi16sp   sp, -16
                  c.lui        s2, 17
                  mulhsu       a2, s0, s3
                  remu         t3, a1, sp
                  slti         t2, s0, 942
                  ori          s4, s4, -346
                  c.srai       s0, 8
                  sll          t2, tp, t3
                  mul          a7, s0, a5
                  c.and        a2, a1
                  xor          t1, sp, a7
                  srl          s3, s2, s6
                  sltiu        s6, s7, -426
                  mulh         a7, t3, zero
                  mulh         s9, a2, s3
                  c.addi       s10, 8
                  mulhsu       sp, t6, a5
                  ori          s0, t3, -156
                  sll          sp, t6, a7
                  slli         sp, t2, 31
                  mulh         s10, t5, ra
                  c.addi4spn   a0, sp, 864
                  and          zero, a5, s6
                  c.add        t1, s9
                  andi         s0, t2, -133
                  addi         t1, s3, -1782
                  c.addi16sp   sp, 176
                  ori          s7, t5, -1528
                  divu         t5, a0, zero
                  sll          a7, s1, s4
                  c.and        a4, a2
                  sll          s0, a1, t6
                  slli         a0, s9, 18
                  c.addi16sp   sp, -16
                  slli         s0, t1, 14
                  c.and        a4, a5
                  slt          gp, a2, gp
                  and          s5, a7, a7
                  c.sub        s0, a5
                  remu         s6, s6, a2
                  srai         a4, a5, 11
                  mul          t3, t3, a2
                  sub          a0, a4, s11
                  slli         s10, a7, 18
                  c.and        s1, a3
                  ori          s10, a5, -570
                  nop
                  sub          t3, s8, a1
                  sll          s9, a3, a3
                  add          a0, a6, s8
                  c.or         s1, a5
                  remu         a5, a2, t2
                  add          t5, t1, s5
                  sub          s3, s10, a0
                  sub          t5, a4, t3
                  xori         s9, sp, 1178
                  slt          t0, a1, a5
                  andi         s7, t0, 957
                  and          s11, sp, t0
                  sub          t5, s5, s11
                  sub          s0, s2, a5
                  andi         s4, s7, 48
                  and          a2, s5, t5
                  add          s6, s1, ra
                  c.addi       s8, -1
                  addi         t5, tp, -684
                  c.addi16sp   sp, 480
                  c.and        a2, a0
                  c.addi       a5, -1
                  auipc        a6, 569649
                  sra          a0, t5, a6
                  or           s6, a0, zero
                  c.slli       a0, 19
                  xori         s8, t3, 1985
                  c.addi4spn   a1, sp, 912
                  xori         t0, t5, -1078
                  divu         s1, a6, a5
                  c.xor        a5, s1
                  c.xor        a5, s0
                  c.andi       a5, 13
                  andi         a7, a4, -1999
                  or           a1, s10, sp
                  c.xor        s1, s0
                  c.or         s0, s1
                  c.and        s0, a5
                  or           a0, t1, a3
                  mulhu        t2, t4, a6
                  divu         t4, sp, s10
                  mulhsu       t3, a5, s8
                  addi         a5, s10, 1499
                  and          a5, a0, s6
                  or           sp, t0, t6
                  srai         s7, a3, 26
                  sub          t0, s9, t2
                  andi         zero, t0, -1653
                  rem          t2, t2, s6
                  c.nop
                  srl          t4, s7, t5
                  and          ra, s4, s6
                  c.lui        a2, 23
                  mulh         s6, s6, s8
                  rem          a4, s3, t2
                  sra          t1, t4, s5
                  nop
                  c.slli       t0, 29
                  c.nop
                  c.xor        a0, s1
                  c.addi       a5, -1
                  ori          s8, ra, -1311
                  addi         s4, sp, -1740
                  addi         t2, ra, 1303
                  slli         t2, s0, 30
                  or           a4, s6, s6
                  and          a6, s6, a2
                  div          t1, s8, tp
                  rem          zero, s7, s4
                  slti         gp, a0, -1561
                  lui          s2, 234633
                  mulhu        s7, sp, t1
                  c.and        a1, a2
                  rem          zero, s11, ra
                  xor          a6, s8, a5
                  slt          t4, s7, a1
                  slt          s5, s8, gp
                  srl          s1, t2, t6
                  c.srli       s0, 14
                  srai         a0, ra, 0
                  c.li         t2, -1
                  lui          zero, 472908
                  lui          s4, 197721
                  auipc        t1, 647894
                  c.or         a1, a2
                  c.addi16sp   sp, -16
                  c.or         a5, a2
                  c.srai       s1, 4
                  nop
                  c.srli       a5, 21
                  sll          s8, s3, a5
                  c.slli       s1, 15
                  c.srli       a5, 10
                  and          t1, t0, t0
                  c.andi       a0, -1
                  mulhsu       a1, s3, t6
                  c.srai       a1, 23
                  andi         s3, s5, 1294
                  remu         s4, s10, t0
                  ori          t5, s7, -1969
                  c.slli       a2, 4
                  divu         t5, s3, a3
                  c.addi       t0, -1
                  c.lui        a0, 1
                  srl          t1, s4, s10
                  div          a4, a3, s0
                  mulhsu       s8, s0, t1
                  sltiu        s2, s8, -901
                  or           a1, s9, zero
                  c.nop
                  srl          a4, s0, s4
                  c.li         sp, 2
                  and          a7, t2, ra
                  slli         gp, a0, 30
                  auipc        a0, 840765
                  c.srli       a4, 25
                  nop
                  andi         gp, t0, -1911
                  xori         s6, a5, 419
                  and          s0, s11, a5
                  srai         a2, t2, 26
                  or           a6, zero, s10
                  or           s10, tp, s5
                  c.li         s4, 27
                  mul          t3, s10, s6
                  c.add        sp, s6
                  c.andi       s1, -1
                  c.lui        gp, 24
                  sra          t1, s0, t3
                  mulhu        a5, t5, s11
                  c.li         t0, -1
                  xor          zero, a7, t5
                  andi         t4, s8, -585
                  sltu         zero, a0, t1
                  xori         s4, s11, 1689
                  nop
                  srai         zero, s7, 23
                  srl          ra, s6, a0
                  sub          s1, t2, a5
                  xor          s2, s2, s4
                  rem          t0, a2, s3
                  slli         zero, t6, 29
                  mulhsu       a7, tp, s0
                  xori         s6, s7, -782
                  sra          t5, s5, a2
                  c.slli       sp, 16
                  c.addi4spn   s1, sp, 640
                  xori         a0, t4, -1575
                  addi         ra, t2, 581
                  c.and        a4, a2
                  slli         t5, s11, 8
                  c.add        t1, a2
                  or           t4, s4, s6
                  c.addi16sp   sp, 240
                  c.xor        s0, a1
                  mulh         s9, t2, t1
                  lui          s4, 514612
                  auipc        s9, 391697
                  c.or         s1, a4
                  c.xor        a4, a5
                  c.srai       a0, 17
                  c.sub        a0, s1
                  mulhsu       s2, s0, sp
                  sub          a1, t5, s1
                  c.mv         s8, s5
                  c.addi       s2, -1
                  remu         t2, a6, zero
                  sltiu        a5, s5, 1881
                  ori          a5, ra, 462
                  sltu         ra, a4, s4
                  c.xor        s1, a0
                  c.nop
                  divu         s4, t1, tp
                  lui          s3, 235055
                  c.addi4spn   a5, sp, 288
                  divu         t2, s6, t3
                  ori          a0, sp, 614
                  sltiu        zero, s8, -1316
                  sltiu        ra, a3, 1461
                  and          zero, a1, s6
                  ori          a2, t5, 1855
                  mulhu        t5, sp, a0
                  andi         a5, t1, 1415
                  mulhu        s6, a5, t2
                  xor          a7, s4, sp
                  c.lui        s1, 30
                  mulhsu       t4, t3, a1
                  add          a7, a0, s3
                  srai         a2, s8, 16
                  sub          t3, t5, a2
                  slti         a6, a3, -333
                  c.add        s8, s2
                  sra          s9, s1, ra
                  c.addi4spn   a5, sp, 864
                  c.and        s0, a1
                  c.and        s0, s0
                  slli         s3, t4, 25
                  div          a7, s7, a7
                  remu         t2, a2, s0
                  slti         a6, s4, 1674
                  c.srli       a5, 5
                  nop
                  remu         s11, t6, s7
                  nop
                  mulhu        t2, s2, s4
                  sub          s9, a0, t3
                  mulhu        sp, s11, s8
                  add          s11, t3, a3
                  div          a2, sp, s11
                  ori          t2, s3, -897
                  sll          t4, s6, a4
                  lui          s10, 993086
                  c.addi16sp   sp, -16
                  srl          t4, s5, zero
                  ori          s5, a3, 1917
                  xori         sp, gp, -1287
                  c.slli       s4, 5
                  c.mv         t2, gp
                  c.lui        s6, 11
                  add          s4, t1, a1
                  div          s5, s2, a7
                  c.sub        a2, s0
                  sub          t4, s0, s9
                  srli         t4, a6, 29
                  auipc        t0, 389999
                  nop
                  ori          s10, ra, -526
                  slti         t1, tp, 1479
                  or           s9, s4, a7
                  rem          a1, s9, ra
                  c.slli       a5, 29
                  ori          s8, t5, -305
                  auipc        ra, 223389
                  c.and        a5, s0
                  ori          t5, s0, -472
                  remu         s6, a4, zero
                  addi         a4, a6, 1416
                  add          s1, s10, s2
                  add          t1, s4, t5
                  add          a5, gp, tp
                  remu         s9, t1, a1
                  c.srli       a2, 30
                  sltu         t5, tp, s4
                  mulhsu       s11, s9, t1
                  sub          t4, t4, t3
                  addi         s9, a7, 1753
                  c.addi16sp   sp, -16
                  mul          s2, a2, t3
                  addi         sp, s3, -864
                  c.srai       a0, 18
                  c.xor        a0, s0
                  c.add        a1, s10
                  srl          zero, sp, t4
                  c.and        a5, a3
                  c.nop
                  c.addi       s4, 4
                  add          zero, t5, t0
                  remu         s7, gp, s1
                  srli         zero, s9, 15
                  c.addi       sp, 18
                  c.sub        a2, a2
                  c.xor        a5, a5
                  slti         s4, zero, 1373
                  c.or         s0, a2
                  slti         s8, s4, -1772
                  mul          t3, t2, t4
                  auipc        t4, 670540
                  div          s2, a7, tp
                  sra          a1, sp, a6
                  slt          s1, t1, a0
                  xor          s7, s1, s8
                  srli         t0, a0, 29
                  c.add        a1, t5
                  sltiu        t5, s8, 1043
                  rem          a7, s5, gp
                  c.mv         a6, a6
                  c.srai       a4, 4
                  c.addi       t1, -1
                  c.xor        s0, s1
                  sra          s1, t3, t3
                  c.srai       a1, 11
                  addi         zero, s11, -244
                  c.sub        s1, s0
                  slt          s7, a0, zero
                  srl          a2, t4, s7
                  ori          a2, a1, -390
                  sra          gp, t4, t2
                  sub          a1, sp, s0
                  c.addi4spn   s1, sp, 544
                  c.sub        a2, a2
                  c.sub        a5, a2
                  xori         a6, t5, -140
                  c.or         a5, a5
                  add          a2, tp, a4
                  c.and        a1, a4
                  slt          zero, ra, s2
                  c.srai       a5, 10
                  xor          t4, s8, a4
                  andi         a6, s9, 1872
                  c.li         s4, -1
                  mulhu        t0, t1, a3
                  addi         s11, t4, -1800
                  c.or         a2, a3
                  xori         t0, s1, -776
                  lui          t0, 744004
                  srai         a5, s10, 18
                  c.andi       a1, 8
                  sra          t4, s5, s7
                  c.slli       s1, 10
                  srli         s0, a1, 7
                  c.and        s1, a5
                  c.or         a2, a0
                  sll          s6, s8, s3
                  ori          a2, a4, -136
                  divu         s9, a4, s6
                  srl          t1, s11, t3
                  c.add        ra, gp
                  c.lui        t5, 15
                  srai         gp, t5, 19
                  slli         t2, ra, 17
                  c.mv         s7, gp
                  rem          t4, a4, a7
                  c.xor        s1, s1
                  c.slli       a0, 12
                  xori         t5, a0, 734
                  ori          s3, t5, 290
                  c.slli       s6, 16
                  c.lui        s10, 2
                  c.xor        a1, a5
                  sra          s4, a5, s5
                  c.srli       a5, 24
                  c.add        sp, s10
                  xori         s2, t6, -172
                  or           s7, s5, s0
                  c.and        s0, a4
                  slt          s8, s1, s8
                  c.andi       s0, -1
                  c.sub        s0, a1
                  sll          a6, a7, s8
                  xori         s6, a0, 219
                  srl          s7, s1, gp
                  sub          ra, a4, sp
                  sltu         s3, t0, s0
                  c.addi       s10, -1
                  c.srli       a2, 1
                  srai         zero, s4, 27
                  srli         t4, s2, 3
                  c.slli       ra, 1
                  add          sp, a6, a2
                  sltiu        a4, a2, 1527
                  lui          gp, 478559
                  c.xor        s0, a5
                  c.or         a0, s0
                  sltu         sp, s7, zero
                  and          t4, t1, s8
                  c.addi4spn   s0, sp, 144
                  slti         a1, tp, -1689
                  andi         s1, s2, -164
                  c.nop
                  divu         a5, s0, a3
                  slti         t4, zero, -1844
                  c.and        a2, s0
                  div          s4, a4, t4
                  c.andi       a5, 20
                  c.or         s1, a4
                  add          a0, a4, s1
                  c.li         t0, 21
                  sll          s0, a0, t2
                  ori          zero, a3, 575
                  c.xor        a4, a1
                  ori          gp, t4, 758
                  srl          a2, t5, a2
                  mulh         s6, a7, s9
                  addi         t5, a2, 1499
                  c.slli       t3, 26
                  sltu         s1, t6, a4
                  c.addi4spn   a5, sp, 624
                  mul          s11, s0, s0
                  sra          s11, a4, t6
                  ori          s8, zero, 656
                  c.sub        s1, a1
                  c.srai       a5, 25
                  xori         a5, t5, -181
                  c.mv         a0, s6
                  sltiu        s9, s8, 1503
                  nop
                  srai         s1, a4, 1
                  srai         t1, ra, 17
                  sra          s0, a3, t2
                  lui          sp, 305291
                  c.slli       s1, 24
                  auipc        s9, 547774
                  auipc        t4, 1048141
                  mulhsu       t1, tp, s4
                  c.mv         a7, a7
                  mulhu        ra, a0, a6
                  slli         ra, s10, 14
                  add          a1, a6, t2
                  c.or         s1, a5
                  and          s10, t6, t5
                  c.lui        t4, 21
                  add          s11, a6, s3
                  sltu         s9, s7, s9
                  or           a6, t2, t6
                  c.slli       s10, 20
                  add          t4, a5, s11
                  rem          s7, t3, s8
                  addi         t3, s1, -713
                  nop
                  div          s7, t2, tp
                  c.sub        a5, a4
                  divu         t3, tp, t4
                  xori         s9, t3, 1320
                  c.addi4spn   a4, sp, 672
                  sll          t5, s11, s10
                  c.mv         s6, s0
                  slli         s4, t3, 5
                  xori         s4, a2, 1706
                  c.xor        a5, s1
                  sltiu        t0, s3, -1812
                  c.mv         a5, s4
                  div          zero, s10, s6
                  nop
                  xori         a2, s2, -1636
                  c.mv         s2, s9
                  mulhu        zero, a3, a4
                  srli         t1, s8, 11
                  srli         t2, a6, 1
                  mulhu        gp, a3, s2
                  addi         a4, a7, -1587
                  nop
                  c.addi       a6, -1
                  c.sub        a2, s0
                  remu         s9, gp, a0
                  c.sub        s0, a5
                  srl          t0, s11, s7
                  c.addi4spn   a0, sp, 32
                  sra          gp, a2, s9
                  c.add        s2, tp
                  mulh         s5, s0, t1
                  c.mv         a7, s2
                  xor          sp, s3, s4
                  c.addi       t3, -1
                  divu         a5, s6, s1
                  c.add        t2, s2
                  lui          s4, 186670
                  sra          s11, a5, t2
                  andi         s11, sp, 1771
                  andi         s3, zero, 1934
                  c.sub        a5, a2
                  srai         s3, tp, 1
                  c.srai       a4, 21
                  c.addi       s0, -1
                  c.slli       a6, 1
                  c.li         a7, 16
                  c.nop
                  sltu         s2, t1, a2
                  c.addi16sp   sp, -16
                  c.xor        s1, a5
                  c.nop
                  c.mv         s5, tp
                  c.mv         t0, t3
                  c.sub        s1, a3
                  srl          a5, t0, s2
                  divu         a4, t4, a6
                  add          s8, zero, s11
                  srai         zero, s2, 19
                  srl          a2, t2, t1
                  sltu         s3, s10, s3
                  slli         s2, zero, 4
                  mulhu        a4, t0, gp
                  mulhsu       gp, t0, t3
                  c.addi16sp   sp, -16
                  c.addi       s3, -1
                  sltu         a0, a0, a6
                  srli         s5, t3, 10
                  sltiu        t0, s6, -1835
                  mulh         s9, s7, zero
                  srli         a5, a7, 23
                  mulh         a2, s4, t0
                  sub          s11, a7, a5
                  ori          zero, gp, 1749
                  srai         t5, zero, 17
                  mulhu        s1, s11, t2
                  c.addi16sp   sp, 448
                  c.sub        a1, s0
                  add          s9, t4, t6
                  slli         sp, s9, 11
                  c.srli       a5, 15
                  sra          s6, t6, t6
                  c.li         t1, -1
                  c.lui        s1, 26
                  rem          a2, s2, s6
                  or           a5, a7, a0
                  slti         a5, a0, 582
                  sltiu        s4, s6, 226
                  lui          a1, 163912
                  c.lui        s10, 3
                  add          s11, s5, zero
                  c.add        a1, s7
                  srai         gp, s4, 3
                  c.lui        a4, 1
                  addi         t0, s1, -1827
                  rem          s3, t5, t2
                  auipc        s7, 606208
                  c.li         a7, -1
                  c.slli       s9, 19
                  c.or         a2, s0
                  c.slli       s8, 28
                  srli         a7, t1, 12
                  div          s1, t6, s3
                  div          a6, a3, t0
                  sub          s8, a7, s10
                  or           s5, a5, t5
                  sltu         ra, t3, s1
                  lui          t5, 477317
                  sub          s2, s6, t0
                  mul          t2, s6, s1
                  xori         s7, sp, -1586
                  c.sub        s0, a1
                  c.and        a4, s1
                  slti         s1, tp, 514
                  c.add        a5, t4
                  mul          t0, ra, t1
                  sltiu        a6, a6, 1346
                  sltiu        a0, s0, -765
                  xori         s0, a0, 324
                  srai         s7, ra, 7
                  c.li         s10, 26
                  c.sub        a4, s1
                  c.and        s1, a4
                  c.addi       a4, 5
                  c.xor        a2, a1
                  slti         s2, t4, -1278
                  c.lui        s3, 18
                  or           a6, s4, t1
                  c.mv         s2, tp
                  sub          a7, t2, gp
                  divu         a4, gp, s1
                  sltiu        s6, t4, -1935
                  sub          a6, s2, tp
                  c.slli       sp, 31
                  c.slli       a7, 26
                  div          s1, tp, a6
                  c.xor        s0, a5
                  and          t1, t4, a1
                  rem          s7, s9, a0
                  sltiu        a1, a4, -1995
                  sltiu        s8, a3, 2027
                  mul          a1, a1, zero
                  c.or         s1, s1
                  div          s1, t2, a2
                  sll          a5, t3, s11
                  c.lui        t0, 29
                  or           s1, a1, zero
                  andi         s10, a5, -991
                  sub          s9, a7, s10
                  sub          a6, a5, s0
                  c.andi       s1, 5
                  sltiu        zero, a0, 576
                  c.lui        a6, 9
                  c.mv         s3, t2
                  c.srai       a1, 23
                  sra          a4, a7, a1
                  auipc        t2, 820188
                  divu         s7, t5, s9
                  xori         t2, s1, 1137
                  c.li         s11, -1
                  c.xor        a5, a4
                  slti         a0, a6, -975
                  auipc        s6, 74944
                  rem          t3, t5, t4
                  mulh         s9, t2, s2
                  ori          t4, s0, 830
                  c.lui        s4, 28
                  divu         a2, a7, t0
                  c.lui        s11, 6
                  sltiu        t0, a0, 868
                  or           s6, gp, s4
                  xori         t3, t3, 1920
                  c.li         s1, -1
                  sll          s0, s3, t6
                  or           s6, a0, s3
                  div          a2, s9, a4
                  divu         t2, s4, s6
                  mulhu        s5, gp, gp
                  xori         t0, tp, -233
                  slt          a5, t5, t1
                  slli         s6, t4, 22
                  slti         a0, s3, -1833
                  c.addi       a6, 22
                  c.nop
                  slti         s10, s9, -975
                  c.srai       a2, 23
                  c.xor        a0, a3
                  xor          sp, a0, s10
                  and          a5, s2, s7
                  srai         t5, a6, 20
                  c.nop
                  srai         s0, s1, 12
                  slti         s5, s9, 1209
                  nop
                  sll          zero, s7, t2
                  slt          s7, zero, s0
                  andi         a7, s7, -1054
                  divu         a6, tp, a2
                  sub          t2, t1, sp
                  srli         s2, t4, 4
                  c.sub        a4, a5
                  rem          a0, gp, a2
                  c.xor        a2, a0
                  divu         a7, a0, s9
                  or           s9, s7, t2
                  mulhsu       t4, tp, s3
                  c.srai       s0, 21
                  xori         s10, s4, 836
                  or           a5, a3, ra
                  auipc        a6, 364663
                  addi         t3, ra, 1903
                  divu         s8, t3, t4
                  c.andi       s0, -1
                  c.or         a1, a5
                  mul          a4, s9, a7
                  c.and        a2, a3
                  c.lui        a7, 15
                  and          s2, a1, t5
                  remu         ra, s2, s3
                  c.addi4spn   s1, sp, 112
                  sltiu        a2, t4, 1795
                  sra          t0, sp, t5
                  remu         s0, a5, a4
                  c.addi16sp   sp, -16
                  and          a7, s7, s9
                  sltiu        s3, gp, -1173
                  c.mv         s9, t6
                  sub          t2, a1, s7
                  sll          s3, s7, a6
                  sll          s9, s5, a2
                  sub          s9, tp, a5
                  mulhsu       s1, s11, a2
                  rem          t4, a3, s1
                  slti         ra, a2, 734
                  c.srli       a5, 4
                  c.or         a1, s1
                  c.srai       a2, 29
                  c.li         t4, 6
                  xori         s8, s9, -903
                  sub          s11, t1, a0
                  c.xor        a4, a2
                  c.nop
                  mulhsu       zero, s2, s3
                  c.or         a0, a5
                  xori         a0, a7, -277
                  srl          a1, sp, s1
                  lui          ra, 743603
                  andi         s7, s8, -1306
                  lui          s0, 158416
                  div          s5, t6, t0
                  sll          t5, a6, a1
                  auipc        s4, 802704
                  xori         s3, sp, 1009
                  nop
                  slt          a5, s0, t4
                  c.addi4spn   a5, sp, 400
                  c.addi16sp   sp, -16
                  srli         s5, a5, 6
                  c.nop
                  c.lui        a1, 6
                  c.srli       a2, 2
                  nop
                  sltiu        a1, tp, 102
                  c.srli       s0, 28
                  lui          s3, 340366
                  slti         s9, t1, 1951
                  xor          t4, a6, a6
                  c.addi       t4, -1
                  c.xor        a0, a1
                  sub          t1, ra, s11
                  c.and        a0, a2
                  mulhsu       a6, t6, t6
                  mulhsu       a0, tp, a7
                  srai         t2, s1, 3
                  c.srai       s0, 19
                  mulh         a7, t4, t2
                  and          sp, s5, s1
                  divu         s10, a4, tp
                  div          s2, a6, tp
                  slt          s4, s10, t5
                  and          s5, s3, ra
                  slli         gp, zero, 14
                  add          a4, s11, t2
                  c.lui        s2, 24
                  c.and        a5, s1
                  c.andi       a1, 16
                  and          s0, s2, tp
                  addi         s1, gp, -31
                  c.srai       a1, 5
                  mulhu        a2, s5, a6
                  sra          a1, t3, s4
                  sub          a5, a7, a2
                  slli         t1, t3, 11
                  c.nop
                  slt          s7, t3, a5
                  c.li         s8, 19
                  mulhsu       s7, zero, s0
                  mul          s10, s3, a6
                  rem          s10, t6, t0
                  ori          t4, a6, 2032
                  or           sp, s4, zero
                  ori          s7, t5, 1359
                  sra          sp, t5, a1
                  sra          s3, s0, t2
                  sra          s5, ra, zero
                  add          t5, s7, s5
                  and          s5, s4, a7
                  c.srai       a1, 19
                  c.sub        a0, s0
                  xori         t2, s1, -1363
                  c.sub        a4, a3
                  andi         a0, a6, -1102
                  slti         s4, s2, 1795
                  ori          t1, gp, 2022
                  mulh         s6, s3, t0
                  srl          s4, a4, ra
                  sll          a4, a7, s10
                  add          gp, t4, zero
                  c.li         s3, 0
                  addi         t2, s0, -1726
                  c.li         sp, 13
                  c.addi16sp   sp, 464
                  c.or         a5, s1
                  srl          a4, t2, s11
                  sltu         s5, t5, s5
                  ori          s2, s11, 451
                  div          gp, s3, a3
                  div          t4, t6, ra
                  slli         a0, a1, 22
                  c.srai       a5, 18
                  c.addi       s7, -1
                  c.li         s11, 19
                  c.mv         t4, s6
                  mulhsu       ra, t1, a1
                  c.lui        t0, 28
                  andi         s10, s3, -1371
                  andi         s8, sp, -190
                  slti         s7, a3, 899
                  c.addi16sp   sp, -16
                  slt          gp, a3, s8
                  ori          s6, s11, 1310
                  c.sub        s1, a2
                  and          s9, t0, a2
                  slt          s8, s3, a6
                  c.li         a2, -1
                  slti         sp, s1, -1603
                  auipc        t2, 878492
                  slt          t4, t3, a5
                  c.addi       s1, -1
                  c.lui        ra, 11
                  c.mv         a0, t2
                  srai         gp, a5, 10
                  xori         a1, zero, -1548
                  xor          a5, s7, s8
                  srl          s9, s1, a6
                  sll          s8, t0, a2
                  c.addi16sp   sp, 160
                  c.xor        s0, s1
                  or           s0, s8, s3
                  srli         a0, a4, 25
                  c.sub        a4, a5
                  c.lui        s0, 8
                  c.and        a1, a4
                  sltiu        s6, gp, 1484
                  or           s3, t2, t5
                  lui          s9, 994106
                  div          a1, a2, s3
                  c.li         a5, 4
                  sltu         t5, t3, gp
                  mul          s10, a1, s5
                  c.and        a4, a0
                  c.add        a7, s10
                  srl          s9, s2, t5
                  xor          ra, s4, t5
                  mulhsu       s9, s1, t6
                  sltiu        s6, gp, 295
                  auipc        a0, 100176
                  sra          s8, s4, s6
                  mulh         ra, s11, s1
                  sub          s10, t5, t4
                  add          a0, s7, s3
                  add          zero, a5, a0
                  sub          a6, t1, t6
                  c.srai       a1, 25
                  c.addi       a4, -1
                  c.andi       a5, 21
                  slt          s6, s2, a4
                  c.addi4spn   a2, sp, 304
                  c.li         a4, 17
                  div          zero, s7, s2
                  c.andi       s1, 28
                  sub          s1, a4, s0
                  lui          a6, 327850
                  sltiu        t1, t3, -237
                  c.srli       a5, 24
                  c.sub        a2, a4
                  mulhu        ra, ra, s11
                  c.mv         a5, s6
                  c.li         t3, 26
                  c.andi       s1, 1
                  remu         sp, s4, zero
                  divu         s2, s9, s2
                  addi         s8, s6, 1927
                  rem          s11, s11, a0
                  or           t2, a6, tp
                  xor          t1, ra, a6
                  slli         t4, tp, 15
                  c.addi16sp   sp, -16
                  slti         sp, sp, 223
                  slli         sp, s3, 11
                  c.andi       s1, -1
                  slti         a0, s5, -1220
                  srai         t1, s9, 0
                  sra          s1, t2, s6
                  c.nop
                  c.slli       s6, 3
                  sltu         s9, s10, t4
                  mulh         t1, t2, s7
                  and          t4, a1, s0
                  srli         a7, s3, 2
                  slti         s4, t2, -1152
                  c.nop
                  xori         gp, t2, 1866
                  c.sub        s1, a2
                  auipc        a6, 290860
                  xor          s5, t0, ra
                  mulhu        a4, sp, sp
                  sll          gp, s8, sp
                  nop
                  rem          s8, t6, ra
                  xor          a7, a4, zero
                  sltu         a1, s8, a4
                  sltiu        s9, s9, 1527
                  c.or         a0, s0
                  add          s0, s10, s10
                  slti         s0, s10, -479
                  auipc        s1, 713704
                  srai         sp, s3, 24
                  c.andi       a2, 29
                  sub          s0, s5, s0
                  sra          t0, t4, t6
                  div          t2, a2, t5
                  mulhu        t4, tp, t4
                  remu         s11, a3, t2
                  mul          s3, t4, t1
                  divu         s1, s4, t0
                  xor          s4, a2, s1
                  or           a4, s9, zero
                  sltiu        a2, t1, 1885
                  c.addi4spn   a4, sp, 464
                  srli         a1, s3, 30
                  c.addi16sp   sp, -16
                  slti         s3, s6, -1178
                  c.andi       a1, -1
                  slti         t4, tp, 1104
                  sltu         a7, t6, s5
                  c.add        a5, a1
                  xor          a2, s11, ra
                  div          t1, s8, s1
                  c.lui        a6, 4
                  c.srli       a0, 27
                  c.and        a4, a4
                  xor          s11, a4, sp
                  div          s0, t3, ra
                  slt          s9, a7, a3
                  slti         a2, a7, -1404
                  c.add        a1, t2
                  and          ra, s9, a6
                  slt          s0, s0, a3
                  srai         t4, a6, 25
                  sub          a0, a4, s3
                  c.srli       a4, 6
                  andi         t0, s8, 961
                  div          t3, s11, a7
                  mul          s7, t4, t2
                  rem          a5, t0, s5
                  mulhsu       a7, s9, s4
                  c.and        a1, a5
                  div          sp, a5, s5
                  c.mv         t5, s7
                  sub          sp, s5, t3
                  c.slli       a6, 6
                  c.slli       t3, 27
                  mul          t1, zero, tp
                  sltu         ra, zero, a6
                  slt          s7, t0, s0
                  mulhu        gp, s5, a0
                  c.or         a1, a0
                  sltiu        gp, s10, 892
                  xor          s1, s2, t2
                  c.sub        s1, a2
                  nop
                  lui          t5, 179615
                  c.sub        s0, a3
                  sll          s4, a4, s10
                  c.sub        s0, a1
                  auipc        a7, 5981
                  c.addi16sp   sp, 432
                  nop
                  sub          t3, t3, tp
                  c.or         a0, a5
                  srai         s2, a7, 24
                  c.srai       a0, 8
                  c.lui        s4, 19
                  add          t5, t2, s4
                  c.slli       sp, 31
                  c.lui        a0, 27
                  srl          a5, a4, s8
                  sra          a5, a4, zero
                  c.sub        a2, a5
                  nop
                  c.addi4spn   a5, sp, 752
                  slti         s6, s5, 1659
                  sltiu        t3, t1, -149
                  c.or         a2, a5
                  c.andi       a0, -1
                  c.andi       a2, -1
                  c.srli       a4, 31
                  nop
                  mulhu        a7, t0, s3
                  srli         a7, t0, 0
                  c.xor        a5, a3
                  slti         s10, a0, -1174
                  srl          ra, s3, sp
                  c.sub        s0, s1
                  c.nop
                  sll          a1, s4, t6
                  srai         a7, s2, 27
                  sub          sp, t4, s3
                  remu         s4, s11, s4
                  sra          t3, t0, sp
                  ori          s5, s3, 686
                  slli         a2, tp, 27
                  mul          s3, t5, s5
                  c.sub        a1, s0
                  or           a1, t0, a5
                  c.sub        s0, s1
                  sll          s8, t0, a1
                  xori         t1, s9, -1728
                  div          a0, s2, s6
                  auipc        t4, 488282
                  sra          t2, s3, a0
                  srai         t4, s10, 8
                  c.srli       a1, 9
                  xori         t4, s3, 1559
                  slli         ra, s2, 29
                  c.and        a0, a1
                  c.xor        a4, a0
                  mulhu        a6, a5, t2
                  sub          s6, s2, t2
                  sub          a4, ra, zero
                  c.srli       a5, 11
                  nop
                  lui          a2, 134843
                  slt          t3, s9, a1
                  c.mv         t4, t5
                  c.srli       a5, 30
                  c.sub        a4, a3
                  sltu         s7, s11, s11
                  nop
                  and          t3, s3, gp
                  slti         s11, t1, 1941
                  c.srai       a1, 1
                  c.xor        s1, a2
                  c.mv         s7, s10
                  srai         s4, t5, 3
                  lui          s11, 65532
                  mul          a0, s10, t5
                  c.srai       a2, 3
                  c.nop
                  and          a2, a1, s6
                  sub          t4, s2, t6
                  c.srli       a1, 18
                  mulhu        a2, s11, a3
                  srli         t2, t5, 23
                  mulhu        s1, a2, a3
                  divu         s9, s6, zero
                  sub          s7, s4, s8
                  srl          s6, tp, ra
                  c.addi       s11, -1
                  c.andi       a0, -1
                  sub          zero, s5, s8
                  add          sp, a2, t4
                  addi         a4, zero, -1942
                  xori         t0, t3, 1239
                  lui          sp, 28836
                  slti         a7, sp, -1539
                  rem          s3, a2, s0
                  mul          s8, t5, s6
                  sub          sp, s10, s4
                  sltiu        s0, t6, -1289
                  sltu         s3, a7, s11
                  mulh         s1, a3, gp
                  slti         t0, ra, 1526
                  c.lui        t4, 26
                  c.mv         s11, s0
                  mul          ra, sp, t3
                  add          a0, a6, s0
                  xor          s1, s10, s10
                  mulhu        t0, t2, s3
                  c.andi       a2, -1
                  xori         s7, t0, -281
                  c.nop
                  mulh         sp, t4, t1
                  slli         s7, s1, 11
                  and          t2, tp, gp
                  c.li         sp, -1
                  c.srli       a2, 17
                  slli         a5, s11, 7
                  mulhsu       a5, s4, a0
                  divu         s8, s6, s6
                  addi         a5, t6, 190
                  c.addi16sp   sp, 304
                  sltiu        t4, t3, -11
                  c.addi16sp   sp, 80
                  divu         t2, s2, s4
                  c.lui        s1, 10
                  div          s6, t5, t4
                  c.sub        a1, s1
                  c.andi       a5, 4
                  rem          s6, s10, t2
                  srl          ra, s5, t1
                  c.and        a0, a5
                  andi         t3, s7, 1126
                  rem          s9, s11, zero
                  sra          s6, ra, t5
                  ori          s1, zero, -104
                  div          a2, s4, s8
                  c.xor        a5, s1
                  srli         a5, gp, 2
                  c.addi16sp   sp, -16
                  andi         t3, gp, -1182
                  slli         sp, tp, 5
                  slli         s3, a3, 8
                  c.add        a1, a5
                  slli         s10, s1, 27
                  andi         a2, s0, -433
                  c.srli       s1, 6
                  andi         a1, ra, -1536
                  sub          s4, tp, sp
                  c.srai       a0, 15
                  remu         s0, t5, s4
                  srli         t2, t2, 21
                  xori         zero, t6, 1216
                  auipc        s5, 943454
                  sltu         t5, t4, t6
                  c.or         a2, a4
                  slt          s1, s10, s11
                  c.xor        a0, a1
                  c.addi16sp   sp, 64
                  rem          s5, gp, gp
                  and          s0, a7, zero
                  c.li         a7, -1
                  xor          s11, a5, s8
                  xori         a2, s0, 443
                  sub          t3, s2, t5
                  ori          a1, gp, 562
                  c.xor        a0, a4
                  c.and        a5, a4
                  xor          s7, ra, t1
                  auipc        s5, 924690
                  auipc        a5, 246324
                  lui          t1, 85159
                  c.sub        a1, a2
                  c.addi       s0, -1
                  c.nop
                  ori          t0, t1, -964
                  c.addi       t5, -1
                  sltiu        zero, a4, -330
                  c.add        a4, sp
                  c.mv         t4, a2
                  c.xor        a2, a0
                  andi         s5, a3, 1251
                  c.li         s11, -1
                  slli         zero, s6, 4
                  c.and        a4, s0
                  c.nop
                  srai         s11, s4, 9
                  lui          t5, 930659
                  c.sub        s1, a0
                  and          s11, t6, t4
                  c.li         t2, 24
                  remu         t3, t3, a4
                  mul          s7, s10, s9
                  nop
                  remu         s7, s8, s4
                  sltu         a4, a5, zero
                  mul          s11, ra, s10
                  c.add        a6, t5
                  sra          t4, s4, s7
                  c.sub        s1, a4
                  c.addi16sp   sp, 432
                  c.add        s1, s0
                  andi         t3, t0, -874
                  c.add        s0, t2
                  c.xor        a0, a3
                  andi         s8, s10, 196
                  slt          a1, t3, s0
                  rem          s6, s6, t3
                  slti         s5, a7, 452
                  slli         t5, s0, 7
                  slt          s10, a7, s2
                  sll          s10, s1, a7
                  and          t1, s4, s3
                  c.addi4spn   s1, sp, 32
                  c.srai       a0, 8
                  ori          t1, a5, 1112
                  srl          s4, a5, s1
                  srai         t5, s0, 21
                  c.nop
                  slti         a2, a7, -1049
                  andi         t1, a2, 1768
                  mul          a6, a1, s3
                  divu         gp, s1, a4
                  mulh         gp, t6, gp
                  srli         a5, s9, 6
                  addi         s9, a0, -1506
                  c.or         a1, a1
                  mul          s2, ra, t0
                  xori         s6, s11, 1717
                  or           s8, gp, a3
                  c.lui        s7, 14
                  remu         t1, t3, a1
                  srai         a0, s3, 21
                  c.sub        a0, s0
                  mul          sp, a1, a1
                  lui          t4, 491990
                  and          a6, a1, t4
                  remu         s0, s11, gp
                  addi         a0, t3, 712
                  srl          a5, s2, tp
                  slli         a4, s11, 3
                  sltu         s5, t1, s9
                  c.srai       a1, 22
                  xor          s4, s1, t6
                  add          s10, a3, a2
                  addi         s3, t0, 1011
                  c.addi16sp   sp, 464
                  c.addi       s4, -1
                  slti         s5, s3, 1930
                  c.add        s5, a5
                  mulhu        a4, s2, s4
                  c.andi       a2, 31
                  auipc        s7, 540367
                  andi         s2, t6, 1661
                  rem          a0, s3, s5
                  add          s4, gp, a1
                  mulhu        t4, sp, t6
                  c.addi16sp   sp, -16
                  slt          t0, s4, s10
                  c.srli       a4, 24
                  auipc        s6, 218185
                  c.mv         a4, s2
                  c.mv         s4, a4
                  auipc        a6, 989946
                  c.nop
                  c.andi       a0, 23
                  ori          a4, s1, -1426
                  c.addi16sp   sp, 272
                  mulhu        s6, s7, t3
                  srl          a0, t1, t4
                  srl          s11, gp, s2
                  mulhsu       s7, ra, zero
                  divu         a1, zero, s1
                  ori          s11, a6, -989
                  xori         t1, a0, 1846
                  nop
                  nop
                  c.add        ra, a7
                  ori          s8, a2, -1123
                  slli         a2, s10, 4
                  addi         sp, s0, 1389
                  sll          s1, sp, ra
                  c.addi16sp   sp, -16
                  sltu         s1, t4, s4
                  c.addi4spn   a1, sp, 1008
                  c.andi       a2, -1
                  srai         t3, t4, 12
                  sra          t0, t1, t2
                  xori         s3, a5, -686
                  auipc        s5, 1009551
                  c.slli       s6, 18
                  c.mv         ra, a3
                  or           t5, s8, t4
                  c.nop
                  addi         a7, a6, -840
                  c.add        sp, ra
                  auipc        a1, 31943
                  addi         s1, t5, 1778
                  c.addi4spn   a1, sp, 176
                  andi         s1, a1, 276
                  sll          s2, sp, s4
                  mul          t5, zero, s6
                  add          s8, s1, a7
                  andi         a4, sp, -1293
                  c.sub        a1, a3
                  or           s6, s5, s5
                  c.li         t1, -1
                  c.srai       a5, 22
                  srl          t3, ra, a4
                  c.addi       a0, -1
                  lui          a4, 847564
                  ori          s0, s5, 1130
                  addi         s3, s8, 1178
                  sra          t1, ra, s6
                  c.li         s6, 5
                  c.and        a1, a1
                  c.addi16sp   sp, 480
                  c.and        s0, a4
                  xor          t1, t2, a3
                  mulh         s10, s9, a0
                  slli         gp, tp, 28
                  c.or         a5, a1
                  div          s3, t3, s2
                  sltu         ra, s4, ra
                  mul          t3, a3, zero
                  mulhu        s2, s1, s6
                  c.srli       a5, 11
                  ori          a4, s11, 1431
                  xor          ra, a1, s2
                  srli         a1, a0, 16
                  auipc        t2, 110244
                  c.slli       s2, 3
                  c.or         a0, a5
                  c.addi4spn   a0, sp, 576
                  xori         t5, sp, -1074
                  auipc        t4, 789255
                  andi         s9, s2, 1358
                  remu         gp, s5, s8
                  sltu         a5, s5, s3
                  c.lui        t0, 3
                  c.andi       a4, 6
                  c.li         s5, 24
                  sub          zero, a0, a3
                  rem          a5, gp, s6
                  div          a0, a2, a1
                  c.andi       a0, -1
                  c.lui        t1, 23
                  mulhsu       a6, t4, s10
                  sltiu        s7, a3, 1617
                  xori         t4, zero, 1651
                  mulhu        t1, s2, s6
                  sll          ra, gp, a7
                  c.slli       a1, 16
                  sltiu        s1, sp, 521
                  slt          s2, t0, a4
                  c.srai       a5, 18
                  and          t3, s8, s4
                  addi         s0, ra, 1339
                  c.mv         s2, s8
                  div          t2, a5, a3
                  xori         t3, s2, 69
                  c.lui        s9, 24
                  mul          s3, t5, a2
                  c.lui        a1, 27
                  mul          t4, t2, s9
                  mulhsu       s7, t2, a3
                  rem          sp, a2, s0
                  div          a4, s7, s5
                  c.xor        a5, a2
                  and          zero, s5, a3
                  xor          a5, a6, a5
                  or           a0, s4, a6
                  or           t1, t2, ra
                  div          a5, a4, t0
                  sltiu        a1, s10, 1356
                  srli         a7, t2, 7
                  c.addi4spn   a0, sp, 576
                  c.addi4spn   a5, sp, 80
                  c.xor        s1, a4
                  c.sub        a4, a2
                  ori          t3, s10, -1239
                  c.addi       s1, -1
                  c.xor        a5, s1
                  slti         a2, a0, 1040
                  c.and        s0, a5
                  c.lui        s7, 29
                  c.addi       gp, 26
                  slt          t0, t2, s0
                  sub          s6, t2, s3
                  c.add        s8, t0
                  c.andi       a5, -1
                  slt          s6, s3, s3
                  c.nop
                  c.lui        t5, 24
                  addi         a7, t5, 1038
                  sra          s0, zero, s2
                  c.li         a5, 29
                  c.slli       t3, 31
                  c.xor        a1, a0
                  c.sub        a5, a5
                  andi         s6, t3, -117
                  c.addi16sp   sp, -16
                  sra          s0, t3, a5
                  xor          t2, t0, t3
                  add          a7, sp, s3
                  c.xor        a1, s1
                  or           a0, ra, a3
                  div          a5, s2, s1
                  c.sub        a4, a4
                  c.mv         s9, t1
                  divu         t3, s3, t0
                  c.srli       s1, 28
                  c.addi4spn   s1, sp, 880
                  sra          t2, ra, t4
                  auipc        a2, 364380
                  addi         s7, t3, 1472
                  c.sub        a2, s1
                  c.nop
                  add          s3, s10, zero
                  c.srli       a4, 18
                  and          s4, t1, t3
                  srl          gp, sp, s9
                  mulhsu       a5, s11, a1
                  c.li         s5, 2
                  xori         s1, s10, -1483
                  c.or         a1, s1
                  addi         t0, s0, -460
                  addi         a2, gp, -387
                  c.slli       s2, 31
                  xori         sp, s3, -685
                  add          s9, sp, t1
                  c.sub        a4, a2
                  srai         t1, s6, 21
                  add          gp, s8, t5
                  c.lui        t1, 9
                  mulhsu       a2, a1, a2
                  c.sub        a4, s0
                  remu         s4, a7, t4
                  sra          a7, s5, t1
                  c.add        a5, s6
                  srl          s1, s9, a5
                  slt          t1, t5, ra
                  mulhsu       s7, a7, s9
                  c.or         a5, a2
                  remu         t1, a0, s1
                  xori         s9, a6, -476
                  and          s2, s1, s2
                  c.and        a2, a3
                  c.li         a2, -1
                  c.xor        a2, s0
                  ori          t4, s1, -1247
                  auipc        t1, 799625
                  c.addi       s4, 19
                  slti         s9, ra, -442
                  c.nop
                  c.addi16sp   sp, 400
                  srli         a6, sp, 14
                  c.lui        s10, 24
                  c.li         sp, -1
                  xor          a1, s0, s4
                  div          t3, s0, t4
                  sra          s6, a2, t2
                  mul          a5, s10, a0
                  c.and        a2, a3
                  c.srli       a4, 16
                  srl          t0, t1, s0
                  addi         t3, s9, -1483
                  mulhsu       s4, t0, t2
                  lui          s5, 645642
                  sltu         t4, s6, a5
                  c.or         s1, a0
                  sltiu        s4, a4, 1210
                  c.lui        s1, 9
                  remu         zero, gp, zero
                  c.addi16sp   sp, 80
                  srl          s1, gp, s11
                  mulhsu       s2, s8, tp
                  slt          s11, s6, s9
                  srli         s11, s7, 21
                  div          gp, t0, t0
                  and          t3, s6, t2
                  rem          s6, a4, a3
                  c.or         a5, a5
                  c.mv         s11, gp
                  c.lui        s11, 31
                  c.lui        a1, 10
                  xor          s0, s7, a2
                  c.addi       a2, 20
                  lui          ra, 255998
                  sll          s9, ra, sp
                  mul          t2, a2, a0
                  slti         s8, a3, 1535
                  sltu         a7, a6, t5
                  c.srli       s1, 7
                  c.xor        s1, a1
                  c.li         s5, 22
                  auipc        gp, 664151
                  sll          zero, s0, t2
                  remu         gp, s0, t4
                  mulh         a4, s0, ra
                  remu         ra, sp, t0
                  sltu         s7, t4, s3
                  xori         ra, s9, 492
                  c.li         t3, 26
                  sra          s2, gp, s9
                  div          s11, a0, sp
                  slti         s5, a6, 1819
                  mulhu        zero, t1, a3
                  rem          s11, s6, s6
                  c.srli       a5, 20
                  c.addi       t1, 12
                  sltiu        s2, a2, -1572
                  auipc        t5, 674155
                  c.li         s5, 23
                  c.srli       a0, 22
                  c.add        s8, tp
                  lui          a4, 821024
                  divu         t0, sp, s7
                  mulhu        t3, a2, s10
                  sltu         t0, a7, a0
                  srl          sp, s1, s7
                  c.and        a1, s1
                  c.mv         gp, s7
                  auipc        a2, 66326
                  auipc        s1, 210790
                  slt          s4, a4, sp
                  ori          gp, s2, 562
                  lui          a2, 206224
                  mul          zero, t1, a7
                  c.xor        s1, a5
                  c.slli       s8, 28
                  or           s10, a0, s5
                  slt          s1, a7, t3
                  sra          s2, s10, t2
                  slti         t1, a5, -1044
                  c.or         s1, a2
                  c.and        a0, s1
                  lui          s0, 891135
                  c.slli       a2, 7
                  or           t5, t6, a4
                  c.addi4spn   a4, sp, 928
                  c.and        a4, a4
                  sll          t1, t5, a3
                  c.slli       s8, 6
                  div          s3, s7, a0
                  sltu         t1, s9, gp
                  mul          a1, s0, t5
                  div          s7, s8, s5
                  c.mv         t1, a4
                  c.xor        a0, s0
                  slti         s5, s8, -1605
                  c.mv         s10, t2
                  c.or         a4, a1
                  c.and        s0, a3
                  c.addi4spn   a5, sp, 272
                  c.sub        a2, a4
                  c.and        a2, s0
                  sub          t2, ra, t2
                  c.srli       a1, 19
                  lui          gp, 436792
                  auipc        s0, 117043
                  slti         a2, s5, -18
                  c.add        s4, t6
                  sltu         zero, s8, s2
                  c.srai       a2, 26
                  sltu         t4, t3, a2
                  c.addi4spn   a0, sp, 400
                  mulhu        gp, gp, tp
                  c.addi4spn   a5, sp, 160
                  c.addi4spn   a1, sp, 128
                  sll          a0, a3, s8
                  c.sub        a4, a0
                  c.and        a1, s1
                  mulhu        s1, a6, t0
                  c.sub        a4, a1
                  rem          s7, s6, zero
                  c.xor        a2, s1
                  nop
                  xori         s1, t6, -680
                  sltiu        ra, s9, 1127
                  lui          ra, 568824
                  c.slli       a4, 19
                  divu         a5, a3, ra
                  sub          s7, a2, a5
                  sltu         s6, a5, t4
                  sra          a5, s6, t3
                  or           s7, t0, s10
                  mulhsu       s3, t4, a6
                  rem          a2, t2, t5
                  auipc        a2, 53261
                  mul          s4, tp, ra
                  mulhsu       s2, a7, t3
                  remu         s10, a3, sp
                  div          a7, s9, sp
                  c.addi16sp   sp, 368
                  sra          s6, ra, t6
                  c.nop
                  lui          s1, 628861
                  sra          t0, s1, a6
                  xor          a0, a1, s3
                  or           s6, s9, s9
                  sub          s9, a2, s0
                  lui          s11, 237292
                  c.li         t1, -1
                  c.li         s10, 6
                  nop
                  nop
                  or           s2, a5, t6
                  or           s5, tp, zero
                  and          s5, t1, s3
                  slti         s11, s7, 2
                  srli         t1, a0, 29
                  add          s10, t4, a4
                  andi         s8, a6, 18
                  c.add        a7, a1
                  c.or         a1, a5
                  lui          a6, 306294
                  c.andi       a2, -1
                  mulhsu       sp, s11, a7
                  sra          s2, t5, sp
                  or           a4, t3, a6
                  rem          s11, s0, s9
                  and          a0, a1, s2
                  sub          s0, a2, t0
                  c.li         s8, -1
                  add          s4, s3, a6
                  srl          t2, s11, gp
                  lui          t5, 444986
                  sra          t4, t2, s9
                  nop
                  srai         s10, s7, 20
                  c.nop
                  c.and        a0, a0
                  c.nop
                  c.srli       a1, 3
                  xori         s2, s0, 1171
                  slti         s5, s7, 1008
                  ori          s5, tp, -239
                  divu         t0, s10, sp
                  c.add        a5, tp
                  auipc        s8, 810565
                  c.addi4spn   a1, sp, 992
                  srl          t0, t2, a7
                  divu         s1, s1, s10
                  auipc        t5, 388522
                  c.or         s1, s0
                  srli         t2, ra, 13
                  div          t0, t1, s8
                  c.addi       a4, 27
                  c.addi16sp   sp, -16
                  slli         a1, s11, 3
                  c.xor        a4, a1
                  mulhu        t0, a4, a5
                  srl          t2, a7, s0
                  lui          s4, 722807
                  srli         t1, s8, 7
                  c.li         ra, -1
                  srl          ra, ra, s2
                  andi         s1, a1, 1992
                  c.srai       s1, 13
                  c.srai       a2, 27
                  c.or         s0, a4
                  nop
                  slt          a0, t4, a0
                  add          s8, gp, t0
                  srai         s3, t2, 0
                  mul          a6, a0, s2
                  divu         ra, s1, t6
                  sltu         s2, a0, a2
                  mul          s11, s1, a7
                  c.addi4spn   a5, sp, 960
                  sub          s7, a4, ra
                  srli         a4, a2, 18
                  c.srai       a4, 26
                  xori         t3, sp, 414
                  ori          s3, zero, 342
                  c.addi4spn   s1, sp, 320
                  c.and        a4, a2
                  c.lui        a6, 30
                  srli         a6, a0, 4
                  mulh         t3, a0, t3
                  srl          sp, s9, sp
                  mulh         s6, s3, t3
                  c.and        a4, a3
                  sub          a7, gp, a5
                  xor          s6, s0, a6
                  nop
                  mul          a2, t0, s6
                  c.addi4spn   a5, sp, 416
                  sub          t5, s5, s9
                  c.addi4spn   a2, sp, 656
                  ori          t0, t3, -1301
                  c.addi       sp, 28
                  remu         t1, a1, s4
                  c.lui        t0, 5
                  c.li         s1, 5
                  c.nop
                  srai         a4, s10, 21
                  lui          s2, 419747
                  c.addi16sp   sp, 400
                  nop
                  c.srai       s1, 13
                  c.srli       a1, 28
                  div          zero, a7, sp
                  and          s5, s3, ra
                  add          a7, s5, s4
                  xori         s0, s11, -1687
                  nop
                  c.mv         s0, s6
                  srai         s10, s6, 5
                  sra          sp, s10, t1
                  slt          a4, s1, a6
                  nop
                  mulhu        t1, t1, a3
                  srli         t0, tp, 2
                  slli         s9, t6, 13
                  srli         a1, a0, 15
                  c.addi       s8, -1
                  sra          s4, a7, t0
                  c.addi4spn   s1, sp, 128
                  lui          s9, 286843
                  slt          s7, t5, a1
                  or           s3, t5, sp
                  c.addi       a6, -1
                  slli         ra, s6, 9
                  c.sub        a0, a0
                  lui          s4, 53327
                  c.addi       s3, -1
                  sra          s1, t6, s4
                  c.addi       s5, 29
                  srai         s5, s2, 18
                  addi         a2, t2, 1625
                  sltu         a6, a5, t0
                  c.xor        a5, s1
                  c.srli       s0, 25
                  remu         a4, t5, a3
                  slli         s3, t5, 17
                  srai         s7, t5, 16
                  divu         a5, s9, s8
                  c.addi       t0, 23
                  c.srli       s1, 22
                  c.mv         s1, a7
                  srli         t3, a3, 13
                  c.lui        s5, 8
                  nop
                  c.add        t5, ra
                  c.addi16sp   sp, 304
                  lui          a2, 27350
                  andi         s6, t4, 914
                  slli         a7, s8, 8
                  and          sp, s11, t4
                  c.addi       t0, 18
                  c.slli       s4, 15
                  sltiu        sp, s8, 153
                  div          t4, gp, s9
                  srli         s2, gp, 10
                  mulhu        t0, t0, ra
                  and          t3, s7, a5
                  c.srai       a5, 1
                  slli         gp, gp, 9
                  sltu         t1, s5, t4
                  c.addi16sp   sp, 464
                  srl          a2, zero, gp
                  sltiu        t5, a2, 2015
                  c.mv         a1, s1
                  rem          sp, a0, s0
                  c.addi       a0, 17
                  divu         a4, s11, a1
                  c.andi       a0, 18
                  remu         zero, t2, ra
                  xori         s5, s0, 62
                  c.addi4spn   s1, sp, 432
                  c.lui        t2, 24
                  slti         gp, a1, -141
                  div          t0, t1, zero
                  mulh         t2, s11, a0
                  c.mv         s3, s0
                  mulhu        a5, s10, s11
                  mulhu        a5, a0, ra
                  slt          t3, s7, t0
                  sra          a7, tp, s10
                  addi         s11, a4, 628
                  c.nop
                  slti         a5, a1, 118
                  c.andi       a1, 7
                  c.andi       a2, 13
                  c.lui        t4, 31
                  c.li         a6, -1
                  c.addi16sp   sp, 128
                  c.addi16sp   sp, 208
                  c.srli       s0, 22
                  sub          a2, s7, t6
                  c.xor        s1, a4
                  c.addi4spn   a5, sp, 848
                  c.addi4spn   s0, sp, 576
                  c.addi       s2, -1
                  rem          s0, s1, ra
                  c.li         s0, 4
                  remu         a1, a6, a7
                  slti         a6, sp, -1913
                  nop
                  addi         a0, s8, -1525
                  xori         s10, a7, -782
                  addi         t2, s0, -2020
                  c.nop
                  sra          sp, tp, a1
                  sll          s7, a5, t2
                  c.andi       s0, 18
                  or           s5, s8, t1
                  add          s1, s4, t5
                  c.and        a2, a3
                  srai         s8, s11, 10
                  mul          t1, gp, s4
                  or           s9, t5, a4
                  auipc        gp, 777869
                  c.or         a0, a1
                  nop
                  slti         a7, a0, 1560
                  slli         s10, s8, 29
                  nop
                  divu         zero, s2, s5
                  mulhsu       a5, t1, s10
                  c.addi       t3, -1
                  ori          s10, s10, -1490
                  xori         a5, a6, 165
                  c.or         a2, a0
                  mulhsu       t5, t3, t3
                  addi         s8, t4, 1570
                  lui          ra, 683923
                  c.srai       a1, 1
                  sub          a2, s5, t0
                  sra          s10, s1, t4
                  add          s11, a3, a7
                  xor          t4, t3, s8
                  srli         s11, s7, 20
                  c.sub        a4, a5
                  srai         t5, sp, 23
                  rem          s9, tp, s4
                  div          t4, t4, s4
                  xori         a0, s1, 939
                  c.lui        s2, 14
                  lui          gp, 415484
                  mul          zero, a3, a1
                  c.lui        a0, 19
                  c.srli       s0, 26
                  c.nop
                  c.srai       a0, 26
                  c.srli       a5, 11
                  c.sub        a5, a2
                  add          zero, s1, s8
                  andi         ra, s11, 401
                  mulh         s2, s0, a3
                  sltiu        gp, t2, -1868
                  c.nop
                  nop
                  c.andi       a4, -1
                  ori          a2, t3, -1557
                  c.addi4spn   a5, sp, 496
                  c.nop
                  c.mv         t1, a7
                  c.srai       a4, 5
                  and          s6, gp, ra
                  c.addi4spn   a0, sp, 320
                  c.or         a5, a0
                  mul          zero, s11, s4
                  auipc        t1, 1008111
                  andi         zero, t6, 665
                  mulhsu       a2, t2, tp
                  div          ra, s2, t3
                  c.slli       s1, 26
                  c.li         s11, -1
                  xor          s2, t0, a2
                  lui          a5, 171233
                  mulh         t4, s9, s8
                  slt          zero, ra, s4
                  c.srai       s1, 29
                  c.or         s0, a1
                  div          a5, s8, sp
                  add          a2, tp, a4
                  srl          s5, s5, s3
                  c.addi4spn   s1, sp, 496
                  c.add        s4, s11
                  sub          a5, t1, a3
                  c.addi16sp   sp, -16
                  sra          a7, s0, zero
                  sltiu        a6, sp, 987
                  auipc        s8, 10299
                  c.srai       a4, 18
                  remu         t1, t5, tp
                  mulhu        gp, s6, a7
                  mulh         s9, s1, a1
                  c.mv         s4, a3
                  srl          a2, s8, tp
                  c.addi       t3, 31
                  xor          s10, ra, s6
                  c.sub        a4, a5
                  c.and        a4, a0
                  c.addi4spn   a1, sp, 16
                  nop
                  srl          s8, t3, t0
                  c.sub        a5, a2
                  divu         s8, t0, a5
                  sub          s5, s8, a1
                  slti         t1, gp, 1577
                  srli         a5, t2, 21
                  c.srli       s1, 20
                  c.or         a0, a4
                  c.li         t2, -1
                  mulhsu       s8, s2, s4
                  srai         t4, a5, 12
                  c.sub        a1, a5
                  andi         ra, t2, -608
                  c.addi4spn   a0, sp, 240
                  c.lui        ra, 30
                  c.addi16sp   sp, -16
                  andi         t3, s4, -1779
                  sltu         gp, a7, s10
                  c.lui        t2, 27
                  c.sub        a5, s0
                  rem          a6, a4, t6
                  xor          s4, a4, t6
                  and          s10, s11, t2
                  add          s2, t6, gp
                  c.addi16sp   sp, 448
                  rem          s4, t4, a7
                  xor          s7, s7, s6
                  sltiu        a0, s2, -291
                  div          a7, sp, s2
                  c.srai       a0, 1
                  add          t1, ra, t6
                  c.mv         s8, a1
                  auipc        s3, 436191
                  mulhu        a1, ra, s9
                  divu         s4, a1, a0
                  srai         a2, s6, 9
                  c.srai       s0, 2
                  xor          s8, a6, a5
                  c.slli       s1, 31
                  c.srai       a2, 28
                  srli         t2, s11, 16
                  srli         t0, t1, 0
                  srli         s8, s8, 23
                  mulh         s11, s4, a7
                  c.nop
                  slli         s9, s9, 28
                  mul          a6, s1, t0
                  slt          a1, s11, s11
                  remu         ra, t0, a4
                  c.add        a5, a6
                  sll          a2, t2, tp
                  c.addi       s10, -1
                  c.addi       t4, -1
                  ori          zero, s2, 154
                  add          ra, s10, a0
                  c.srli       a5, 11
                  srl          s6, t1, s2
                  sra          sp, zero, a3
                  c.li         s4, 20
                  srai         t1, t1, 13
                  c.and        a4, a1
                  c.srai       s1, 15
                  c.xor        a2, a3
                  slli         a1, s1, 7
                  sll          a5, t5, t2
                  xori         s4, a1, -1812
                  mulh         a6, a0, sp
                  slli         zero, t0, 15
                  c.sub        a4, a2
                  remu         s4, a3, sp
                  mul          gp, s2, s5
                  xor          t0, s4, tp
                  c.srai       s1, 16
                  or           a7, a3, t4
                  nop
                  c.or         a2, a3
                  srl          t4, s0, a1
                  c.srai       a4, 3
                  c.or         a0, a3
                  auipc        s1, 849882
                  nop
                  add          s3, s6, s9
                  xor          a5, zero, s3
                  c.nop
                  add          s5, ra, t3
                  andi         a2, t1, 670
                  remu         s7, t5, a5
                  c.nop
                  c.slli       t0, 3
                  c.addi16sp   sp, 80
                  mul          a4, zero, s8
                  nop
                  nop
                  c.add        s10, t6
                  mulh         s9, t6, sp
                  c.srai       a5, 25
                  or           a4, s5, zero
                  mulhu        s1, s5, a6
                  sub          a7, zero, a5
                  sltiu        t4, t0, 370
                  c.addi4spn   a0, sp, 848
                  rem          s4, t4, s7
                  c.nop
                  c.sub        a0, a3
                  slti         t5, a6, 2024
                  c.srai       a4, 11
                  mulhu        t2, s5, ra
                  c.nop
                  c.andi       s1, 4
                  c.and        s0, a2
                  slti         s10, ra, 540
                  c.addi       s5, -1
                  c.li         t0, -1
                  srli         s6, s7, 2
                  sll          a0, s7, s10
                  rem          ra, s9, t1
                  andi         s6, zero, -1028
                  c.li         gp, -1
                  divu         a0, ra, s5
                  c.addi4spn   a4, sp, 160
                  add          s9, zero, t0
                  c.andi       s1, -1
                  srli         t3, t4, 19
                  srai         a0, s5, 27
                  c.addi16sp   sp, -16
                  sub          t1, tp, s5
                  c.add        a1, s10
                  addi         sp, s9, -811
                  divu         s3, a0, t3
                  remu         s11, a4, s3
                  mulhu        t4, s5, s8
                  sub          s2, a7, t1
                  c.slli       t0, 2
                  mul          t3, gp, gp
                  c.lui        s10, 12
                  c.addi       s5, -1
                  c.addi16sp   sp, -16
                  c.srai       a1, 4
                  lui          t3, 670071
                  rem          a6, t1, s8
                  mul          s2, t2, gp
                  sltu         t1, tp, t4
                  sltiu        s2, t5, 299
                  c.addi4spn   a5, sp, 224
                  div          s11, tp, t3
                  c.srai       a1, 30
                  mulhsu       zero, zero, t1
                  slti         s11, t5, -1408
                  sll          sp, a3, t5
                  c.srai       a4, 24
                  nop
                  c.srai       a5, 4
                  srli         a4, t1, 24
                  rem          s11, s10, s4
                  sra          t2, s7, s10
                  c.andi       s1, 17
                  c.srli       a4, 14
                  divu         a1, s0, s0
                  add          t2, a0, t6
                  c.xor        s0, a1
                  c.or         a1, a1
                  slt          s3, zero, s3
                  or           t5, a7, s10
                  addi         t3, s2, 1932
                  sll          a4, a5, s2
                  sltu         s5, s9, t4
                  c.mv         s8, t4
                  auipc        a1, 846927
                  c.andi       a2, -1
                  mulhu        s3, s5, s3
                  c.srli       a2, 19
                  c.srli       a2, 19
                  c.lui        s7, 18
                  slt          s0, t3, s8
                  srl          s7, s3, t5
                  lui          s11, 114168
                  slt          sp, a7, s8
                  sltiu        s2, a7, 625
                  slli         a2, ra, 0
                  or           s0, s3, s7
                  c.addi       t0, 17
                  c.or         a2, a5
                  c.addi       t4, -1
                  srai         s10, s11, 13
                  c.lui        a0, 15
                  c.li         s3, -1
                  remu         s7, s2, zero
                  mulhsu       t0, a2, t4
                  srl          zero, s0, s8
                  nop
                  c.li         a2, -1
                  slt          s10, s5, tp
                  c.or         a5, a3
                  c.or         s0, a0
                  c.lui        gp, 21
                  c.sub        a1, a5
                  xor          s3, a7, s10
                  c.mv         s2, sp
                  c.addi16sp   sp, -16
                  mulhu        a0, s1, s9
                  c.add        a4, t0
                  sltu         gp, s5, a3
                  c.srli       a4, 6
                  ori          s2, a7, 562
                  add          s3, t3, ra
                  c.slli       sp, 10
                  mul          a6, s2, gp
                  srai         zero, s7, 10
                  c.srli       a0, 1
                  ori          s2, t2, -1008
                  nop
                  remu         ra, s9, s1
                  rem          s1, s2, ra
                  sub          zero, t2, s5
                  or           ra, t1, s6
                  c.sub        a4, s1
                  mulhu        t4, t5, s6
                  xor          s6, t3, a7
                  c.li         s4, 24
                  c.addi       s8, 27
                  c.srai       s1, 27
                  c.or         a5, a2
                  c.addi4spn   a2, sp, 80
                  sltu         t2, s6, s4
                  slli         s6, s10, 13
                  mul          a5, a1, a3
                  c.xor        a0, a1
                  c.xor        s0, a3
                  c.and        a2, s0
                  xor          s4, a0, t1
                  rem          zero, s2, s0
                  c.sub        a2, a4
                  remu         s1, a2, s4
                  c.sub        a2, a0
                  c.addi16sp   sp, -16
                  divu         s0, ra, s6
                  c.mv         s5, a2
                  xor          t3, t3, gp
                  sub          a4, a2, s1
                  sltiu        t4, s4, 422
                  xori         t3, s10, 10
                  c.or         a2, a2
                  c.mv         gp, a0
                  srai         t4, a0, 31
                  mul          s6, ra, t1
                  mul          a0, s2, zero
                  sltu         s11, s4, tp
                  srl          a7, s8, s3
                  add          a0, zero, t6
                  mul          s4, a4, s1
                  lui          a0, 197155
                  mulhsu       s11, a3, s10
                  c.mv         t5, a2
                  slti         s0, s8, 1692
                  slti         t3, s9, -386
                  or           t4, t2, s1
                  xor          a2, s11, a1
                  c.addi4spn   s0, sp, 976
                  c.nop
                  c.srai       s1, 14
                  add          s5, t2, s0
                  lui          a1, 744597
                  c.addi16sp   sp, -16
                  div          a7, t0, s4
                  srai         t3, a4, 20
                  c.addi4spn   s1, sp, 656
                  mulh         t5, a0, s1
                  c.nop
                  c.addi       s7, 16
                  c.add        s3, t5
                  mulhu        s4, s3, s8
                  lui          sp, 859436
                  mul          a6, s5, a3
                  c.andi       a0, 24
                  sub          t5, s1, s0
                  addi         s10, t2, -251
                  andi         zero, a2, 1912
                  c.srai       a5, 18
                  addi         s1, s5, -1581
                  andi         s6, s3, 638
                  mulhsu       a7, t6, a0
                  sltu         a5, s2, zero
                  xor          t5, a7, a4
                  sra          s8, a3, a6
                  divu         s1, t4, t0
                  srai         t2, a0, 0
                  nop
                  c.mv         gp, a6
                  rem          s2, tp, s3
                  c.lui        t5, 11
                  sll          s7, a1, a0
                  mul          gp, zero, s6
                  ori          a1, a5, -10
                  srli         t0, ra, 15
                  div          s0, a1, t2
                  c.slli       t1, 29
                  div          t0, a7, a5
                  divu         a4, s7, zero
                  and          gp, s6, s5
                  slli         ra, t1, 11
                  rem          t0, tp, zero
                  c.lui        gp, 22
                  ori          a1, t0, 2011
                  c.addi4spn   s0, sp, 560
                  remu         s6, s3, s4
                  sll          t4, tp, t1
                  c.addi16sp   sp, -16
                  c.addi4spn   a1, sp, 240
                  mulh         s8, s8, s6
                  sub          t0, t4, a3
                  sltiu        a0, s1, 1293
                  xori         s3, t0, 1308
                  auipc        s1, 837988
                  slli         t2, a6, 0
                  c.srai       a1, 8
                  c.slli       t4, 16
                  srl          a2, a2, t4
                  c.mv         t1, a7
                  slti         gp, a2, -1360
                  lui          a1, 223141
                  add          t0, a5, s7
                  and          s11, s7, gp
                  sra          s0, zero, t5
                  slti         zero, t3, -1998
                  sub          t2, s9, t5
                  c.mv         s1, t1
                  ori          t4, tp, -61
                  nop
                  sll          a4, a3, a1
                  ori          a4, t0, 347
                  or           t0, sp, t6
                  c.srli       a2, 8
                  remu         a1, s10, zero
                  srl          t1, zero, s0
                  c.slli       t1, 20
                  srai         s4, t6, 0
                  c.addi16sp   sp, -16
                  sll          ra, t4, s11
                  ori          s6, t3, -483
                  c.and        a4, a5
                  sltu         s2, t3, s2
                  c.addi       gp, 8
                  c.nop
                  srli         a5, s1, 27
                  andi         a0, ra, 1378
                  addi         a1, s10, 933
                  c.nop
                  srl          t0, sp, a4
                  andi         t5, a4, 942
                  c.xor        a5, a3
                  xori         t5, t6, 1149
                  c.addi16sp   sp, 336
                  addi         t0, s10, 253
                  remu         s3, t2, sp
                  and          a6, t1, s6
                  srli         t3, tp, 0
                  sll          s1, s9, s9
                  ori          s1, a7, 1023
                  rem          s1, t1, s2
                  srai         s5, t0, 16
                  c.xor        s1, a4
                  addi         a1, s10, -496
                  c.mv         gp, s0
                  slli         sp, a2, 14
                  nop
                  remu         s0, s10, zero
                  nop
                  mulhsu       t0, a7, a0
                  xor          t3, a2, a5
                  rem          s8, a0, s5
                  srai         a1, s8, 28
                  c.slli       gp, 30
                  c.li         s4, -1
                  slti         a1, s7, 1177
                  nop
                  xori         s4, zero, 1037
                  c.srai       s1, 6
                  sra          s1, a5, ra
                  c.srai       a2, 7
                  c.mv         gp, s7
                  c.srai       a2, 15
                  c.nop
                  mulhsu       a5, s4, a1
                  nop
                  nop
                  slti         t1, a2, 1520
                  c.slli       a0, 26
                  c.addi16sp   sp, -16
                  addi         s7, s1, 1873
                  add          s0, s7, s0
                  c.xor        a0, a3
                  c.lui        a2, 7
                  c.and        a4, s0
                  div          gp, s6, a6
                  c.srai       a5, 19
                  c.nop
                  auipc        s3, 255622
                  c.and        a1, a0
                  c.addi4spn   a2, sp, 160
                  rem          s8, t1, s7
                  c.slli       a7, 26
                  or           s2, s4, a0
                  or           s2, s6, tp
                  and          a1, gp, t2
                  srai         s3, t4, 9
                  c.and        a5, s1
                  slti         s7, a5, 876
                  c.mv         s5, a4
                  sll          s11, t2, t1
                  c.addi       t3, -1
                  c.and        a5, a4
                  ori          s0, s11, 133
                  c.add        s11, s9
                  c.or         a2, s0
                  div          a1, a2, ra
                  mul          a6, s2, a0
                  c.slli       s2, 26
                  c.li         t0, 28
                  lui          s2, 842485
                  srli         s4, s0, 12
                  c.slli       ra, 29
                  c.li         s1, 0
                  mul          s0, sp, s3
                  srl          gp, a2, s11
                  xor          a6, s2, s8
                  c.slli       s1, 18
                  c.add        gp, s1
                  mulhu        s6, s11, a2
                  c.srli       a5, 26
                  addi         a2, tp, 236
                  xor          s3, a7, s0
                  andi         s2, a7, 1075
                  xor          s4, s7, a0
                  xor          s7, s7, a1
                  c.slli       a2, 28
                  c.or         a4, a3
                  c.sub        a5, a2
                  sra          s5, a7, s4
                  or           t3, s1, s2
                  c.add        t0, gp
                  remu         a4, a3, zero
                  sltu         gp, s3, t5
                  xori         t0, t6, -1478
                  mulhu        a6, s3, a0
                  auipc        s0, 961173
                  srli         s8, a0, 16
                  slt          zero, s7, t1
                  srai         s5, a3, 6
                  c.addi4spn   s1, sp, 784
                  xor          sp, a4, tp
                  c.xor        s1, a2
                  c.lui        s7, 19
                  sub          t0, t4, sp
                  c.srai       a5, 11
                  c.addi16sp   sp, 224
                  c.li         sp, -1
                  mulhsu       zero, gp, a3
                  srai         t2, t2, 8
                  sltiu        s9, t1, 934
                  c.lui        s4, 26
                  c.lui        t2, 23
                  addi         zero, t1, -904
                  sltiu        s8, s1, -1278
                  srai         t4, s10, 30
                  sub          t0, s8, a2
                  srl          s1, t6, a5
                  div          s6, a4, a7
                  c.srli       s0, 17
                  remu         s9, s0, sp
                  c.li         t2, 22
                  rem          s0, s7, s9
                  c.addi       s7, 29
                  c.nop
                  c.addi4spn   a1, sp, 752
                  c.andi       a2, 12
                  slt          a5, a5, s5
                  divu         sp, t0, s10
                  remu         s0, t5, t4
                  slt          a2, a4, a2
                  auipc        s7, 246855
                  andi         s7, s7, 937
                  sll          t2, a5, a0
                  srl          s8, t6, s6
                  c.srai       a4, 21
                  srl          t3, ra, a5
                  slt          a7, a5, s10
                  remu         s1, a4, s10
                  slt          a4, s0, t1
                  slt          s11, s10, t3
                  srl          s10, gp, a2
                  auipc        t4, 118118
                  c.andi       a5, -1
                  ori          a7, s5, 1750
                  div          t3, s1, s0
                  c.addi       s11, -1
                  c.mv         ra, s4
                  divu         t0, a0, s8
                  remu         s1, s9, t4
                  ori          t0, s0, -2015
                  sll          s11, zero, s7
                  sltu         t0, t2, s8
                  remu         s10, a3, ra
                  andi         ra, t5, -691
                  c.and        a0, a1
                  mulhu        s8, s10, a3
                  c.nop
                  sll          a2, s2, s3
                  c.andi       a1, -1
                  remu         s2, s4, s7
                  div          t1, tp, s6
                  srai         s3, s5, 10
                  sll          a7, s7, t4
                  add          s10, a7, a3
                  sltu         s2, sp, t2
                  c.xor        a5, s1
                  auipc        t0, 68727
                  add          s0, a6, t1
                  c.srli       s1, 25
                  auipc        a2, 985346
                  c.slli       s6, 19
                  c.srli       s0, 8
                  c.and        a0, a5
                  nop
                  slti         s8, zero, -1346
                  addi         a6, a4, 1761
                  sll          s9, s10, a7
                  and          s3, t5, s10
                  c.srai       s1, 23
                  ori          s6, s0, 1540
                  or           t5, gp, sp
                  sub          a6, s8, a0
                  or           s6, s6, a7
                  c.lui        t1, 14
                  c.addi4spn   s0, sp, 208
                  c.sub        s1, a5
                  mulhsu       a0, s9, tp
                  c.mv         s8, s7
                  c.sub        a4, a0
                  c.add        s5, t4
                  c.lui        t0, 10
                  c.srai       s1, 5
                  or           s4, t2, s2
                  c.sub        a2, s1
                  add          s1, s9, s11
                  add          s3, t5, a1
                  srl          s7, t0, t1
                  srl          s11, s2, s8
                  slli         a1, s10, 10
                  c.li         s0, 28
                  c.slli       ra, 13
                  c.srai       a4, 27
                  srli         t1, t3, 1
                  c.or         s1, a2
                  c.sub        s1, a3
                  mulhu        s7, s9, a6
                  xor          sp, t1, sp
                  c.addi4spn   s0, sp, 448
                  nop
                  xor          a6, a4, t3
                  ori          s0, zero, 154
                  c.addi       sp, -1
                  and          ra, s10, s2
                  add          s4, t3, s0
                  srl          s3, a6, s7
                  c.or         a1, a4
                  divu         s7, zero, a6
                  mulh         s1, t0, t3
                  remu         a4, s10, s7
                  and          t4, sp, s4
                  slli         a6, t4, 26
                  sub          s5, s1, s1
                  srli         a7, t5, 25
                  c.xor        a2, s0
                  mul          s2, s1, t0
                  xor          s5, s5, s5
                  c.andi       a0, 14
                  xor          sp, s5, s1
                  slli         t4, s2, 31
                  c.nop
                  mulhsu       zero, s0, a1
                  c.andi       s0, 15
                  and          t1, a5, s2
                  c.and        a1, a4
                  auipc        a0, 367156
                  c.li         ra, 11
                  sltiu        t4, a0, 500
                  addi         s0, s11, -105
                  c.addi4spn   a5, sp, 832
                  remu         s3, a0, tp
                  srai         a7, s11, 17
                  c.srai       a4, 30
                  c.or         a1, a2
                  sll          a5, a4, t0
                  remu         s7, t1, s1
                  and          a1, s9, s9
                  div          s1, s1, a5
                  c.addi4spn   a5, sp, 832
                  c.addi4spn   s1, sp, 576
                  div          a5, t6, a7
                  c.add        s4, a7
                  ori          a7, s5, 167
                  srai         s4, s2, 20
                  auipc        a6, 32726
                  sll          sp, a6, s7
                  c.lui        s11, 16
                  c.mv         t4, a4
                  mulh         s7, s6, s10
                  addi         s3, t3, -1205
                  ori          t2, s1, 164
                  mulhu        ra, s7, s2
                  c.addi16sp   sp, 224
                  c.and        a5, a4
                  srl          a7, s6, s5
                  c.srli       s0, 10
                  nop
                  div          ra, tp, t6
                  and          a4, a7, s2
                  sra          a1, t6, a3
                  srli         ra, a6, 20
                  mulhsu       a7, t2, a7
                  ori          a1, s4, 137
                  slt          a1, a4, s7
                  divu         s3, s3, t2
                  c.addi       s11, -1
                  remu         gp, gp, s6
                  andi         s6, s0, 1533
                  sll          a5, a3, t6
                  slti         gp, s2, 1374
                  addi         t5, s11, -74
                  c.srli       s0, 29
                  c.addi       s11, 26
                  addi         t5, zero, 212
                  divu         s9, s10, s0
                  c.addi       a0, 30
                  c.srli       a1, 8
                  c.or         s1, a4
                  sltu         a0, t4, s0
                  srli         s4, s0, 5
                  sltu         s9, a2, a6
                  divu         s5, s11, s4
                  c.and        a0, s0
                  sltu         a6, s4, s3
                  c.lui        t3, 14
                  and          sp, t3, s9
                  mulhu        a4, a7, s0
                  remu         s0, s9, a6
                  rem          a4, a1, t3
                  lui          s4, 490467
                  ori          t0, s11, 524
                  sltiu        t1, s6, -1937
                  divu         t5, a4, tp
                  c.or         a4, s1
                  div          s3, a5, t0
                  c.lui        gp, 27
                  c.andi       s0, 28
                  srai         s5, a0, 21
                  c.nop
                  c.li         s5, -1
                  c.slli       t3, 14
                  mulhu        t1, t1, a0
                  slli         a6, a2, 28
                  sra          t5, t2, s11
                  c.add        t4, a1
                  c.li         a2, 2
                  c.addi4spn   a2, sp, 1008
                  andi         a1, a0, 629
                  lui          t0, 87047
                  c.nop
                  sub          a6, t3, s11
                  c.add        s4, s8
                  slt          s0, t2, tp
                  ori          a2, a0, 925
                  sltiu        s7, t4, 179
                  c.addi4spn   s1, sp, 560
                  c.mv         s9, a1
                  slt          a2, a5, s5
                  slt          s0, s8, t4
                  c.addi       t4, 4
                  c.nop
                  srli         s7, s9, 19
                  ori          s1, ra, 811
                  andi         t0, tp, 280
                  c.nop
                  c.lui        s6, 15
                  mulhsu       sp, s11, a5
                  c.slli       s7, 27
                  add          s9, s7, s5
                  addi         s4, s10, -398
                  c.addi4spn   a2, sp, 800
                  slt          s1, a6, a7
                  auipc        t3, 777875
                  mul          zero, a5, s11
                  or           t0, s11, tp
                  rem          t4, a3, t6
                  sltiu        s3, a5, 193
                  xor          s11, a3, tp
                  ori          t1, a4, 354
                  c.addi16sp   sp, -16
                  srl          zero, t0, s8
                  slt          t5, t0, a7
                  mul          s3, s10, s9
                  remu         a6, a1, s8
                  mulh         t0, ra, s4
                  c.xor        a0, a3
                  nop
                  or           gp, s7, s3
                  c.li         s7, 28
                  sltiu        s4, a7, 1229
                  sll          t3, tp, zero
                  addi         s7, s5, 20
                  c.addi4spn   s0, sp, 944
                  mulh         t3, s5, s4
                  c.li         t3, -1
                  mulhu        s6, s11, a4
                  mulhsu       a5, t1, s9
                  mul          t2, a3, s4
                  slt          s0, s10, a5
                  c.or         a0, a1
                  mulhu        s6, a0, sp
                  nop
                  c.mv         a1, s1
                  sll          s11, tp, a0
                  nop
                  c.and        a5, a3
                  c.nop
                  c.li         s10, 22
                  c.andi       a5, -1
                  slli         s2, s6, 7
                  sub          a6, s10, s2
                  mulhu        t5, s4, s3
                  sltu         t1, t6, s1
                  mulhsu       s2, a0, s8
                  c.li         a0, -1
                  auipc        a2, 567540
                  slti         a5, a4, 305
                  sltu         a0, s3, s4
                  mulhu        a0, a2, zero
                  xori         t1, s7, -1052
                  c.slli       s10, 20
                  sltu         a5, t6, a0
                  c.srai       s1, 6
                  c.xor        a5, s1
                  ori          s1, a4, -1497
                  c.addi4spn   a5, sp, 1008
                  mulh         s4, s5, a2
                  mulh         a2, s1, s1
                  xori         s8, s11, -745
                  sll          a1, a6, t3
                  c.slli       t2, 7
                  c.addi4spn   a2, sp, 640
                  c.mv         a1, s11
                  c.and        s1, a2
                  c.lui        gp, 5
                  sltu         s3, a5, a2
                  c.addi       a7, 20
                  c.or         a5, a4
                  sltiu        s8, gp, 1085
                  srli         a7, a3, 4
                  sltu         t0, s0, s6
                  mul          gp, t2, s6
                  and          t1, t0, tp
                  c.slli       a5, 22
                  remu         a2, zero, s5
                  xori         s10, t0, 107
                  slli         t4, tp, 16
                  div          s5, a1, s7
                  auipc        s5, 894585
                  ori          t1, s10, 152
                  div          s9, t0, s5
                  sra          s1, a6, t6
                  nop
                  srli         s2, s6, 31
                  andi         t0, s9, -1108
                  slti         s7, t0, 1278
                  mulhsu       t5, sp, s4
                  ori          gp, s1, 1547
                  c.mv         a1, sp
                  c.addi16sp   sp, 336
                  addi         t1, a1, -1499
                  sltiu        s4, a4, 352
                  c.add        a5, s10
                  and          gp, a5, t5
                  c.srli       s0, 18
                  slli         sp, s11, 29
                  xor          t0, s7, s10
                  c.or         a2, a3
                  c.and        a5, a3
                  and          a6, s3, s6
                  c.or         a5, a0
                  c.xor        s1, a2
                  sub          s8, zero, t6
                  ori          s3, t3, 608
                  c.srai       a2, 19
                  divu         s4, s4, s10
                  xori         t5, a0, -1031
                  slti         s8, t4, 90
                  mulhu        t3, s3, s6
                  mulhu        zero, a6, a1
                  remu         t2, ra, zero
                  sll          t2, t4, t5
                  div          s5, t1, a6
                  slli         s1, t1, 3
                  or           t0, a3, s0
                  c.lui        ra, 18
                  rem          s5, s11, t6
                  add          t0, s3, gp
                  c.nop
                  lui          s4, 901129
                  addi         s6, t0, 258
                  c.addi16sp   sp, -16
                  c.srai       a5, 25
                  add          t2, s7, ra
                  c.sub        a5, a3
                  addi         t5, s0, 1202
                  xor          s11, s8, s11
                  c.srai       a0, 23
                  div          s7, t2, a6
                  sltu         t5, t1, a4
                  remu         s7, t0, t1
                  and          a0, a1, ra
                  slti         s6, s9, 1824
                  add          ra, t0, t0
                  c.andi       a2, -1
                  srai         s4, s8, 25
                  c.add        s5, s8
                  lui          t5, 397127
                  sub          s7, tp, s8
                  c.slli       t3, 11
                  sltu         s8, a0, t5
                  nop
                  andi         t0, s1, -330
                  rem          sp, s3, s9
                  mulh         zero, a1, t0
                  mulhsu       s1, a1, t1
                  mulh         s1, gp, s4
                  sltu         s9, tp, gp
                  sll          zero, s1, a3
                  sll          a2, s10, t3
                  c.srai       a1, 14
                  srai         t1, sp, 28
                  mulhsu       s9, t2, t5
                  rem          t4, s2, t2
                  slli         s6, gp, 26
                  c.addi4spn   a0, sp, 928
                  c.and        a5, s1
                  srl          zero, s5, t5
                  c.srai       a5, 3
                  auipc        s0, 372768
                  c.nop
                  c.addi16sp   sp, -16
                  mul          t5, a2, s3
                  or           t5, t0, s2
                  c.sub        a4, a2
                  or           t4, a4, a0
                  slli         a2, s0, 13
                  c.srli       a0, 22
                  slti         sp, sp, 1992
                  srai         s2, t0, 19
                  add          sp, a2, s7
                  and          s7, s8, a2
                  c.add        a2, a5
                  srl          t0, a5, s5
                  c.nop
                  xor          a1, zero, t3
                  slli         t4, sp, 7
                  addi         a0, t2, -1825
                  c.andi       a1, -1
                  sra          t2, s6, t4
                  mulhu        a6, s5, t4
                  xor          a2, t1, s11
                  c.addi       s0, -1
                  sub          a2, t5, sp
                  c.sub        a1, a5
                  and          ra, ra, a2
                  c.and        a5, a5
                  mulh         s8, zero, s3
                  slti         s5, a0, 34
                  divu         sp, s8, s7
                  c.sub        a1, s1
                  c.li         t3, -1
                  remu         t5, t4, s8
                  sltiu        a5, zero, -1798
                  rem          s11, s6, zero
                  c.slli       s10, 4
                  c.add        t1, t2
                  sub          a7, s4, a0
                  mulhu        s10, a5, s7
                  ori          a4, a6, 1564
                  sltiu        a2, s0, -971
                  c.srai       s1, 28
                  sub          a2, s3, t3
                  sub          a7, s4, s11
                  slti         a5, s6, 0
                  divu         s0, t3, t0
                  or           s10, s0, s11
                  addi         zero, a4, 1549
                  srai         gp, t3, 9
                  xori         s11, t3, 1434
                  sltiu        s7, s0, 1041
                  c.addi16sp   sp, -16
                  div          s5, t4, s4
                  sll          s1, ra, s2
                  ori          t2, s8, 974
                  c.xor        a5, a3
                  c.or         s1, a0
                  or           sp, tp, t5
                  mulh         zero, a7, s9
                  c.lui        t5, 29
                  xor          t2, t5, s5
                  c.srli       a5, 8
                  addi         a2, t0, -1145
                  c.andi       a0, -1
                  xori         s9, s6, 1176
                  remu         s3, tp, t2
                  c.andi       a5, 10
                  auipc        ra, 189022
                  xor          s5, a3, a1
                  c.or         a5, a4
                  and          t2, t2, a0
                  divu         a5, s0, t0
                  sra          a6, t6, s11
                  c.slli       s2, 28
                  mul          s4, a2, sp
                  add          a7, s3, a6
                  c.xor        a5, a1
                  c.or         s1, a2
                  addi         s8, t1, 1228
                  c.lui        s4, 17
                  slt          s8, t4, s0
                  c.and        a0, a0
                  div          s3, s11, a0
                  c.sub        a1, s0
                  lui          a1, 183850
                  slli         a2, a0, 6
                  slt          sp, a4, a5
                  c.sub        s0, a2
                  rem          a2, a2, s3
                  c.srli       a5, 20
                  remu         a6, s9, s1
                  add          s7, s4, t4
                  sll          a5, a5, s1
                  c.or         a5, a3
                  c.xor        s1, s1
                  add          t1, gp, a0
                  slli         a2, t2, 20
                  c.lui        ra, 6
                  rem          s6, s4, s8
                  andi         a7, s3, -135
                  c.or         a2, a2
                  sltu         s2, t0, zero
                  mul          ra, t4, t3
                  slti         a5, s3, 833
                  sra          s4, a5, s1
                  mulhsu       sp, a5, tp
                  slli         a7, s3, 10
                  c.sub        a5, a5
                  lui          s8, 695978
                  andi         s11, s11, -1221
                  sltu         sp, gp, t3
                  slt          s0, s6, a1
                  c.srli       s0, 15
                  slli         gp, a6, 27
                  srli         a4, a4, 4
                  lui          t1, 992808
                  sltiu        s10, a0, -1426
                  sltiu        a1, s6, -1590
                  c.nop
                  mulhsu       t4, a7, t2
                  slli         s5, a5, 3
                  srl          zero, sp, s8
                  or           s0, t3, s7
                  c.addi4spn   a5, sp, 160
                  c.srli       s1, 6
                  sra          t0, zero, s1
                  slli         a0, s5, 3
                  div          s3, t2, s4
                  sltiu        a2, a6, -343
                  andi         a2, a4, -1170
                  nop
                  add          t1, a6, s10
                  c.and        a5, s0
                  mulh         t3, a0, t1
                  auipc        s4, 552637
                  c.sub        s0, a1
                  srai         zero, t0, 16
                  c.addi       s0, -1
                  sub          t4, s8, s3
                  nop
                  add          s5, s11, s1
                  c.srli       a2, 12
                  c.nop
                  c.or         a4, s1
                  or           a2, a7, s11
                  add          s5, t2, a2
                  divu         a1, a5, a1
                  sltiu        s3, s8, 785
                  c.and        s1, s0
                  remu         t5, t1, s2
                  c.addi4spn   a2, sp, 496
                  c.andi       a5, 22
                  c.addi       sp, 2
                  remu         t1, ra, a7
                  add          s0, a1, s11
                  c.nop
                  and          s5, s5, a2
                  sra          s3, zero, gp
                  sltiu        s10, a2, 614
                  sub          a4, s2, t3
                  sltiu        s1, t3, 1842
                  div          s6, s1, s11
                  nop
                  slli         zero, s8, 21
                  slli         sp, t3, 21
                  srli         t2, a5, 24
                  srai         a1, t5, 19
                  slt          s11, a1, a5
                  mulh         s8, t2, sp
                  sltiu        s9, s5, -1411
                  xori         ra, s5, 81
                  c.li         a7, 22
                  srli         s5, s6, 8
                  sltu         t2, ra, t5
                  ori          s11, a6, 569
                  nop
                  slli         zero, a2, 18
                  slt          s1, sp, a7
                  mulhsu       s8, a0, t1
                  sra          s6, s6, s0
                  c.addi4spn   a4, sp, 288
                  c.addi16sp   sp, -16
                  mul          sp, s11, sp
                  c.mv         a6, s9
                  mulhsu       t3, ra, s10
                  c.sub        s0, a1
                  rem          gp, s9, s3
                  sub          a0, a3, s11
                  c.sub        a1, a4
                  sltiu        t5, a4, 614
                  ori          ra, a5, 544
                  mul          s2, s2, s11
                  addi         t0, sp, 1195
                  c.slli       a5, 13
                  div          a1, sp, t3
                  c.andi       a4, 8
                  mul          a2, a1, tp
                  sub          s0, s1, t4
                  c.li         a2, -1
                  nop
                  or           a5, s0, s1
                  c.addi4spn   a5, sp, 576
                  add          a5, gp, a3
                  c.nop
                  sltu         s4, s9, s5
                  sltu         a4, s4, tp
                  addi         s10, gp, 74
                  c.mv         a7, a0
                  xor          s0, zero, a1
                  mulhu        s7, zero, s5
                  remu         t1, sp, a5
                  xori         a1, a0, 62
                  add          zero, a1, a4
                  mulhu        s9, t5, a0
                  mul          a0, ra, s3
                  mul          s8, tp, s8
                  nop
                  div          s0, s0, s5
                  mulh         gp, gp, a1
                  srli         s2, a7, 25
                  c.sub        a1, s0
                  divu         t4, s11, s8
                  srai         t2, a3, 4
                  mulhsu       a0, s2, s3
                  sltu         sp, t5, s2
                  c.lui        t3, 25
                  c.li         a7, 23
                  sub          a5, s11, s11
                  addi         a2, s5, 991
                  xor          a6, t2, t2
                  xori         t3, s0, -1764
                  sltiu        s2, s10, -2027
                  c.addi16sp   sp, 432
                  c.mv         a5, t6
                  div          a6, a1, s10
                  lui          t3, 523399
                  nop
                  c.mv         s4, t3
                  sra          s6, t0, ra
                  c.nop
                  c.xor        a5, a3
                  slt          ra, s3, t3
                  rem          s2, ra, s7
                  sub          s2, t5, t2
                  or           zero, t3, tp
                  remu         a5, s10, t2
                  c.andi       a1, 18
                  mulhu        s1, t4, zero
                  mulhu        s7, s0, t6
                  mulh         zero, sp, t0
                  mulhsu       zero, s3, s9
                  andi         t1, s1, -659
                  c.addi       a2, 6
                  sub          s2, a2, a6
                  rem          s11, s1, a5
                  xori         a6, a3, 109
                  c.slli       a0, 9
                  mulh         zero, a4, s9
                  c.sub        a2, a2
                  c.addi16sp   sp, -16
                  c.srai       a0, 12
                  mulhu        s7, t6, t0
                  or           s5, a0, a0
                  slli         t4, t2, 1
                  c.srai       s1, 2
                  nop
                  c.srai       a1, 5
                  c.andi       a0, 23
                  andi         s8, s7, -1502
                  addi         a2, ra, 1455
                  slt          zero, a4, s2
                  c.add        a2, tp
                  sltiu        s5, ra, -1630
                  srai         gp, s6, 17
                  slti         a6, t0, 154
                  lui          t0, 228585
                  or           ra, s11, s1
                  c.nop
                  divu         sp, s2, t6
                  auipc        t0, 508846
                  sll          a6, s10, ra
                  mulhsu       t0, zero, s10
                  c.addi       a2, -1
                  remu         a0, t2, a6
                  xori         s4, s6, -2045
                  sltiu        gp, a4, -330
                  c.srai       s1, 9
                  sltu         t3, t6, s3
                  c.mv         t5, t3
                  c.srli       a5, 5
                  c.addi4spn   a5, sp, 48
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  mulhu        t5, t5, s3
                  auipc        a7, 90713
                  c.add        s5, a7
                  rem          s6, t1, a1
                  srai         gp, s5, 23
                  slti         a1, a7, 563
                  divu         s7, a0, s6
                  xori         s2, t4, -882
                  sltiu        s11, ra, -1053
                  sll          s8, sp, t0
                  addi         s1, zero, 1601
                  c.li         a0, -1
                  c.srai       s1, 12
                  c.addi       a2, -1
                  mulhu        t3, a5, t6
                  c.srli       s0, 16
                  srai         s7, a6, 30
                  sltu         s2, s3, tp
                  c.srai       a2, 20
                  c.srai       s0, 21
                  srai         a2, t4, 9
                  auipc        s10, 82525
                  divu         a5, s11, s0
                  srli         s6, s0, 10
                  c.sub        s1, a5
                  sll          s2, s4, a7
                  mulh         s8, a3, s7
                  srl          s1, t3, s6
                  c.add        s10, s10
                  sll          s10, t3, gp
                  c.xor        a0, a4
                  c.srai       a1, 23
                  addi         gp, s10, -1124
                  andi         a1, t0, -160
                  c.and        s1, a1
                  ori          s3, a3, 1129
                  c.and        a4, a2
                  c.mv         s9, t4
                  sll          s2, s5, a4
                  c.srli       s0, 26
                  c.addi16sp   sp, 320
                  c.li         t4, 18
                  c.addi4spn   a5, sp, 112
                  sll          s0, s6, s10
                  or           a4, s10, s7
                  c.or         a5, a1
                  c.li         sp, -1
                  andi         a0, s11, -1676
                  srai         a5, s6, 13
                  c.addi       a1, -1
                  mulhu        s5, t5, tp
                  and          t1, t1, s8
                  divu         a5, t3, t1
                  mulhu        s11, t3, t6
                  sltu         a2, zero, sp
                  sll          t5, tp, a2
                  mulh         t5, t1, a2
                  c.and        a5, a0
                  mul          ra, a0, a6
                  srl          a5, s0, a3
                  andi         a6, s4, 499
                  c.slli       s2, 18
                  c.add        a1, s10
                  c.add        t2, gp
                  andi         a5, gp, 267
                  addi         zero, s5, -1397
                  c.nop
                  remu         ra, s9, s10
                  rem          a6, a3, a5
                  xori         s0, t5, 988
                  c.and        s0, a0
                  c.add        s7, s3
                  c.or         a0, a5
                  lui          s0, 432300
                  slti         a2, a6, -133
                  andi         ra, s1, -1862
                  remu         zero, tp, zero
                  c.addi16sp   sp, 160
                  sltiu        s9, t1, 1491
                  xori         a1, tp, 514
                  mul          a0, t1, a0
                  mulhu        a6, a7, s6
                  c.srai       a4, 24
                  c.li         a1, -1
                  lui          s10, 536191
                  rem          s11, a2, a7
                  c.nop
                  sltiu        s10, a6, 1012
                  srli         s8, t2, 21
                  srl          zero, s4, s7
                  c.and        s0, a1
                  sll          a1, ra, s0
                  c.slli       gp, 2
                  xori         s2, s11, 245
                  c.xor        s1, a3
                  sltiu        a7, s10, 1924
                  srai         s1, s2, 16
                  sltiu        s10, t5, 901
                  c.and        a0, a5
                  andi         gp, t0, -1147
                  sltiu        s3, s7, 1918
                  sll          t1, s11, t3
                  mul          sp, t0, s4
                  divu         s11, t1, s3
                  nop
                  c.li         t5, 17
                  divu         gp, s7, a6
                  xori         t0, s10, 1458
                  c.xor        s0, a5
                  lui          s1, 479491
                  c.addi16sp   sp, -16
                  c.srai       a2, 30
                  sltiu        s11, t5, 712
                  sra          a2, zero, ra
                  c.addi4spn   s1, sp, 592
                  addi         a2, a6, -1805
                  c.addi4spn   s0, sp, 864
                  sub          s2, a6, t6
                  auipc        t1, 247174
                  divu         a0, gp, t2
                  sub          a2, t3, tp
                  xor          a5, s5, t6
                  div          t2, s8, ra
                  nop
                  c.or         s1, a2
                  div          t0, a0, a4
                  srai         a2, s11, 11
                  sltu         s8, t3, t0
                  c.addi       s10, 11
                  auipc        a2, 608440
                  mulh         t0, a1, s5
                  and          s4, a2, a6
                  sltu         ra, t6, s0
                  sll          sp, s0, t4
                  sltiu        t2, sp, -511
                  nop
                  c.slli       sp, 31
                  c.or         a4, s1
                  mulhsu       t1, t1, s11
                  c.or         s1, a4
                  c.li         t0, 21
                  nop
                  srl          s3, t1, s7
                  mulhsu       t4, zero, a7
                  c.slli       t1, 29
                  divu         s3, a3, t1
                  rem          a1, t2, s8
                  c.srai       s0, 3
                  srl          s10, s1, a2
                  sub          a5, t6, s0
                  c.addi4spn   a2, sp, 800
                  c.and        a1, a5
                  c.addi       a6, -1
                  c.andi       a5, 16
                  c.nop
                  slt          a0, a4, s6
                  andi         s1, s8, 1108
                  c.slli       gp, 21
                  rem          a7, a4, a3
                  c.andi       a0, -1
                  c.xor        s0, a1
                  xori         s5, gp, -2046
                  andi         t3, a3, -1008
                  mul          t4, ra, t3
                  c.or         a0, s1
                  c.sub        a5, s1
                  mulhu        gp, s6, s9
                  xori         zero, sp, -1598
                  c.addi16sp   sp, 64
                  lui          s3, 408165
                  c.addi4spn   s0, sp, 48
                  srl          sp, gp, gp
                  nop
                  c.addi4spn   a1, sp, 912
                  c.xor        s0, a3
                  xor          s1, a4, zero
                  c.lui        t3, 24
                  mulhu        a6, t6, s1
                  sltiu        zero, s5, -782
                  c.and        s1, s0
                  lui          t1, 26114
                  nop
                  c.sub        s1, a3
                  sub          t5, a7, s10
                  sltu         s2, a6, s7
                  sltiu        s4, a5, -1150
                  sltiu        s0, t2, 2005
                  srli         a7, zero, 16
                  xor          a6, s8, a0
                  xor          a2, s3, t6
                  srli         t1, s4, 28
                  ori          s3, t6, -493
                  sll          t2, s2, s6
                  add          t3, ra, s1
                  ori          t5, s5, 1189
                  mulh         s0, s4, a1
                  mulhu        s1, s1, t2
                  srli         s9, a5, 3
                  c.add        s1, t5
                  c.sub        a4, s1
                  mulh         a2, a6, s0
                  addi         s1, tp, 1295
                  srli         sp, s6, 4
                  sll          t1, a7, s3
                  c.andi       a5, -1
                  add          gp, s0, gp
                  c.xor        a5, a5
                  or           a7, s5, s11
                  c.srli       s1, 10
                  lui          a6, 109002
                  or           s10, t0, sp
                  mulhu        ra, a1, t5
                  c.nop
                  c.nop
                  andi         a1, t3, 1155
                  auipc        a6, 185566
                  ori          ra, t6, 356
                  mulhu        a6, s8, t1
                  c.andi       a4, -1
                  mulhsu       zero, t6, s6
                  sltiu        a1, zero, -388
                  slt          s4, s8, s8
                  mul          t4, s5, s4
                  slti         gp, t3, -1693
                  div          t3, gp, a7
                  srli         a7, a3, 3
                  c.xor        a1, a3
                  add          a7, a4, s7
                  c.and        a2, a4
                  c.slli       s8, 10
                  andi         s10, gp, 1
                  xori         t4, s1, 724
                  lui          s9, 117311
                  c.addi4spn   s0, sp, 576
                  c.addi       t2, -1
                  nop
                  slti         t0, a1, 141
                  c.srai       s0, 28
                  andi         t3, a5, 301
                  srl          t4, t2, s5
                  sltiu        s4, zero, -79
                  mul          sp, a6, sp
                  or           s11, t5, s2
                  slli         t0, t6, 23
                  c.and        a1, a1
                  add          a6, t0, a5
                  mul          a6, s0, gp
                  c.or         a1, a3
                  c.addi       t4, 13
                  mul          s10, s5, a2
                  mulhu        t4, t0, s7
                  xori         t0, s1, -853
                  mulhsu       s3, a5, s1
                  c.addi4spn   a5, sp, 672
                  c.mv         s0, a3
                  c.andi       a4, 30
                  c.addi       t4, -1
                  nop
                  c.sub        a2, a0
                  c.andi       a1, -1
                  add          a5, a6, s4
                  mulh         ra, a4, gp
                  sltiu        s0, a4, -1242
                  lui          gp, 312152
                  c.sub        s0, a2
                  c.slli       s0, 29
                  srli         a2, s3, 21
                  auipc        a5, 178694
                  div          a7, s11, t0
                  c.nop
                  c.and        a5, a1
                  mulh         a6, s2, s3
                  c.addi       s6, -1
                  c.addi       t4, -1
                  c.mv         sp, t6
                  mulhu        t5, t4, s0
                  xor          s9, s4, a0
                  mul          s3, s0, s7
                  sltiu        s6, s5, -1415
                  srai         t4, s3, 22
                  srai         a1, t6, 12
                  c.lui        a5, 13
                  c.slli       gp, 25
                  c.sub        s1, a5
                  c.srli       a4, 13
                  c.slli       t4, 4
                  c.or         a1, a3
                  sltu         s11, t5, a0
                  sub          a2, t3, a1
                  ori          zero, t1, 752
                  divu         s6, s8, t3
                  c.srli       a0, 31
                  sltiu        a0, t1, -444
                  mulhsu       zero, s10, s0
                  c.mv         a2, t5
                  sltu         s1, t0, s0
                  c.andi       a5, 5
                  auipc        s0, 771285
                  sltu         s6, a1, a7
                  srl          a5, t5, s7
                  auipc        s8, 275556
                  sub          a5, s5, a6
                  mul          s1, s8, s11
                  mulhu        s1, t4, a0
                  c.nop
                  c.nop
                  slt          sp, t5, a6
                  c.addi16sp   sp, 128
                  ori          s9, gp, -1050
                  ori          a1, s6, -1366
                  mul          a5, t0, s5
                  c.srai       a1, 21
                  ori          s8, a7, 630
                  c.nop
                  srli         s1, s7, 19
                  c.li         s10, 30
                  divu         s11, ra, a1
                  xori         t4, s1, -907
                  c.mv         a0, a3
                  slli         t3, a4, 18
                  c.andi       a1, -1
                  srli         t2, s9, 2
                  c.sub        a1, a4
                  c.add        s6, s5
                  slti         zero, t2, -725
                  c.li         s10, 15
                  mulhu        a1, a6, s7
                  c.addi       s9, 19
                  sltiu        s3, a3, -1079
                  nop
                  sub          s4, s1, t1
                  slli         s2, tp, 26
                  addi         a4, t0, 139
                  c.addi4spn   a2, sp, 288
                  ori          sp, a3, 1653
                  c.slli       a2, 27
                  remu         s8, s0, s7
                  slli         zero, a7, 9
                  sub          a2, a1, s11
                  sltu         s4, ra, t4
                  or           s11, s6, a1
                  ori          ra, t1, -1947
                  mulhu        s3, ra, a4
                  auipc        t2, 912359
                  ori          s7, a1, -940
                  slt          a5, t0, t5
                  nop
                  and          a1, s4, s8
                  divu         s2, t4, s1
                  and          t0, s5, s6
                  lui          a1, 8562
                  c.mv         gp, t2
                  c.nop
                  nop
                  divu         s3, s1, a3
                  auipc        t5, 390071
                  xori         gp, s10, 1170
                  c.mv         t1, a5
                  srli         t3, s6, 22
                  c.or         a4, a1
                  and          sp, s6, a4
                  c.xor        s1, a3
                  auipc        t2, 170859
                  slt          s7, a6, a7
                  c.addi4spn   a2, sp, 880
                  andi         t5, t0, 1735
                  divu         a2, a0, gp
                  xori         s8, s9, 1564
                  sub          t2, s3, t4
                  c.and        a0, s0
                  srl          a5, a1, s2
                  mulh         s10, a3, a3
                  c.li         a1, 10
                  sll          s1, a1, t0
                  add          t0, t3, t2
                  c.or         a1, s1
                  sll          ra, t3, ra
                  div          t1, t3, t4
                  or           t4, t1, a5
                  c.addi       s9, 15
                  mulhu        a2, ra, a7
                  c.slli       a1, 7
                  c.addi       s6, -1
                  xori         zero, s1, 1703
                  c.lui        a1, 5
                  and          t5, t3, s5
                  srai         t5, s5, 27
                  slli         s2, t4, 18
                  mulhu        a7, a4, sp
                  c.and        s1, a3
                  div          s6, a7, s11
                  ori          a4, a3, -1832
                  srl          s1, s11, t4
                  slli         s7, s0, 14
                  c.addi4spn   a1, sp, 144
                  and          s9, s11, t0
                  sltu         a0, s2, t4
                  remu         zero, s1, s0
                  c.addi4spn   a4, sp, 992
                  c.srai       s1, 31
                  or           s2, t6, s11
                  sltu         s3, gp, s0
                  xor          a6, zero, a7
                  and          s2, a7, s6
                  srai         gp, s10, 0
                  srli         t4, s4, 1
                  c.slli       t2, 16
                  mulh         a2, sp, a3
                  c.sub        a1, s1
                  c.andi       a1, 31
                  c.mv         s3, sp
                  xor          s11, a5, t5
                  c.mv         a4, a0
                  remu         t3, t5, a7
                  addi         s3, s4, -754
                  c.slli       t5, 3
                  c.mv         a1, a2
                  sll          ra, a3, zero
                  c.li         t0, -1
                  c.lui        s8, 2
                  c.sub        a0, s1
                  srl          s11, gp, a7
                  c.nop
                  mulhsu       t4, s10, s11
                  addi         s7, a4, 987
                  c.add        t2, s5
                  add          a6, s0, a2
                  addi         s6, t5, -705
                  or           a5, t3, s2
                  c.srai       a5, 25
                  c.mv         t5, a0
                  xor          zero, s9, t5
                  sltiu        s8, s9, -277
                  lui          a5, 817504
                  c.lui        a5, 2
                  and          s8, s4, a1
                  sltu         s4, t6, s1
                  mulh         s8, a0, s1
                  c.lui        a7, 5
                  c.addi4spn   a5, sp, 144
                  slti         t0, s2, 358
                  xori         s8, ra, 529
                  div          a0, s8, s8
                  mulhsu       a7, tp, s11
                  c.addi4spn   a5, sp, 336
                  divu         t1, s11, s3
                  c.mv         s4, s1
                  sra          t3, a3, sp
                  c.slli       a1, 10
                  c.andi       s0, 11
                  slt          a6, a5, s6
                  c.andi       s1, 6
                  c.addi       a2, 9
                  divu         s5, a3, t4
                  srl          s9, t2, t3
                  ori          s5, tp, -1003
                  c.addi       a5, 6
                  div          t2, sp, a6
                  sll          t1, gp, a2
                  and          t5, s2, a0
                  srli         a1, s10, 20
                  c.srli       a5, 10
                  auipc        t0, 719720
                  slti         gp, s5, -416
                  srli         s11, s9, 9
                  c.lui        a7, 24
                  or           a5, s2, ra
                  auipc        s5, 619015
                  c.addi       s4, 2
                  auipc        sp, 64659
                  srl          t0, zero, s10
                  or           a6, s10, t1
                  div          s11, s10, a2
                  sub          t5, a4, s6
                  lui          a2, 275320
                  srl          a5, s1, s7
                  mulhsu       s9, s2, a7
                  c.add        s10, gp
                  c.add        s5, t1
                  xori         gp, s6, -1219
                  slti         s2, s8, -1283
                  sll          s9, s4, a5
                  auipc        s7, 392500
                  srai         a1, a1, 15
                  c.xor        a1, s1
                  c.mv         s4, t3
                  sra          s0, t1, a4
                  nop
                  slli         a7, s3, 17
                  c.mv         a0, tp
                  c.and        s0, a3
                  slti         gp, a0, -517
                  c.or         a2, a3
                  c.xor        s1, a0
                  nop
                  sra          s7, sp, t2
                  c.sub        a2, a1
                  c.addi16sp   sp, 304
                  c.addi       t5, 20
                  auipc        s11, 61646
                  divu         sp, s2, s1
                  mulhu        t4, s3, s0
                  rem          s7, s3, t2
                  add          s1, s8, s4
                  sub          a7, a3, s2
                  c.addi4spn   a1, sp, 448
                  mulhu        zero, gp, s6
                  c.addi       s5, 2
                  ori          t0, a7, 2030
                  and          t3, s2, t4
                  sltiu        t4, s9, -1509
                  auipc        t2, 918934
                  or           s11, a1, t2
                  sltu         s6, sp, s6
                  lui          a7, 370094
                  c.andi       s0, 26
                  c.or         a5, a2
                  c.and        a4, a1
                  nop
                  auipc        s10, 623222
                  c.addi4spn   a0, sp, 128
                  div          a6, s6, gp
                  c.srli       a5, 6
                  c.or         s1, a1
                  c.li         a5, 24
                  c.nop
                  c.sub        a5, s0
                  c.and        s1, a3
                  c.li         sp, 23
                  c.add        t2, s1
                  c.and        a0, a1
                  mulhsu       sp, s11, a5
                  sltu         s4, s1, s8
                  srli         gp, a6, 6
                  c.nop
                  c.mv         s8, tp
                  c.li         t0, 7
                  sra          s4, s0, a1
                  c.or         a0, a5
                  c.srli       a4, 17
                  sltu         sp, s5, zero
                  c.addi4spn   a4, sp, 1008
                  and          a5, tp, t5
                  srai         t1, t2, 0
                  srai         s9, t3, 19
                  sll          ra, a6, t0
                  c.add        s1, s1
                  c.slli       a0, 24
                  mulhsu       s3, s5, s9
                  slti         t1, sp, -1998
                  c.addi       a7, 29
                  lui          t1, 203909
                  c.nop
                  c.li         a7, 15
                  c.mv         s8, s1
                  and          s4, s6, s8
                  sub          a2, t6, tp
                  slli         t1, a3, 15
                  c.addi4spn   a2, sp, 752
                  slt          s7, a7, t6
                  slli         gp, a1, 22
                  ori          t5, t4, -1311
                  c.xor        a5, a3
                  c.lui        a0, 28
                  srli         t0, a2, 21
                  and          zero, s5, a0
                  c.andi       a5, 8
                  c.srai       a2, 26
                  sltu         a4, t0, t0
                  c.addi       s1, 14
                  slti         t0, s10, -1112
                  auipc        s3, 781821
                  andi         a5, gp, -678
                  mulh         a1, s8, a5
                  addi         s3, a3, -1654
                  c.nop
                  add          s8, t6, s1
                  slt          s6, s9, t4
                  nop
                  div          s3, s10, a1
                  andi         s11, a3, 1122
                  c.andi       a5, 29
                  c.nop
                  c.lui        a5, 1
                  slli         a5, t5, 22
                  c.sub        a5, a0
                  c.mv         s0, s1
                  xori         t4, a4, -1971
                  div          s2, sp, s10
                  c.srli       a2, 4
                  srl          t1, t0, t2
                  c.srai       s0, 4
                  div          s2, tp, a7
                  or           s8, t1, t0
                  mul          t4, a5, s11
                  c.srli       a5, 7
                  slti         gp, s10, 1052
                  c.or         a5, a1
                  addi         s6, s3, 1588
                  andi         a2, t0, -1104
                  lui          a4, 326683
                  slti         a0, t4, 374
                  add          t2, a1, t6
                  slt          s0, zero, s2
                  c.addi16sp   sp, -16
                  sltiu        a5, gp, 1402
                  c.or         a4, s0
                  andi         s3, a6, -951
                  sub          s8, gp, s9
                  c.sub        a5, a1
                  or           a1, s1, s5
                  addi         s3, t2, -793
                  c.or         s1, s0
                  nop
                  sltiu        s3, tp, 1600
                  mulh         s7, s5, a7
                  c.add        t4, t2
                  c.and        a1, s1
                  and          s9, gp, t2
                  mulhu        s4, ra, zero
                  sub          a6, s9, t2
                  div          t5, gp, t3
                  srl          t0, a7, a5
                  mulhsu       t1, t4, t6
                  c.addi16sp   sp, -16
                  c.srli       a2, 9
                  c.srai       a5, 25
                  c.mv         a2, a0
                  c.sub        a0, s0
                  c.and        s1, a4
                  mulhsu       s11, s5, a1
                  slti         s6, tp, 1364
                  c.addi16sp   sp, 480
                  lui          s4, 358899
                  slli         s1, t0, 29
                  mulhu        s7, s1, gp
                  sll          s11, t0, a6
                  c.xor        a5, a1
                  srai         a7, tp, 24
                  slt          s4, t1, ra
                  sub          gp, s4, s0
                  c.srai       a0, 27
                  c.mv         a2, a2
                  xor          s4, gp, a6
                  auipc        t0, 682320
                  c.addi4spn   s1, sp, 208
                  c.addi16sp   sp, -16
                  srai         s4, sp, 9
                  andi         t0, s1, -1840
                  div          s3, a3, ra
                  addi         t4, s6, -1923
                  c.add        t4, a4
                  nop
                  c.slli       a4, 1
                  c.and        a5, a2
                  c.add        a6, s0
                  remu         a0, t1, a1
                  nop
                  sra          a0, t2, a3
                  srl          zero, t2, a2
                  c.addi16sp   sp, -16
                  sltu         a4, a7, t6
                  c.or         a0, a2
                  xor          s7, s1, a4
                  add          zero, t1, s6
                  sltu         a5, s0, s10
                  ori          s11, t4, -968
                  divu         sp, a5, s4
                  sltiu        s5, a4, 609
                  c.add        t0, a3
                  andi         s10, t5, -1745
                  c.srai       a1, 10
                  c.nop
                  sltu         t5, t2, a2
                  nop
                  mulh         t3, tp, t3
                  xor          s8, s9, s3
                  slli         t3, s8, 20
                  sll          s9, sp, a6
                  and          s3, s1, a2
                  srai         gp, t6, 20
                  sltiu        t2, a7, -815
                  divu         s2, s8, t6
                  slli         s7, a7, 31
                  sltiu        s4, t3, 1024
                  andi         t4, a4, 1810
                  c.sub        a2, s1
                  sra          s6, t2, a0
                  c.addi4spn   a2, sp, 752
                  srai         a2, tp, 30
                  c.xor        s0, a2
                  c.or         a2, a4
                  c.andi       s1, -1
                  xor          s3, t0, t4
                  c.addi       s4, 27
                  slli         s4, tp, 9
                  nop
                  xori         s0, a3, -19
                  mulhsu       s1, s4, t4
                  and          s7, a3, s2
                  slti         a1, zero, 861
                  c.or         a0, s1
                  c.mv         s11, sp
                  add          s2, s3, a5
                  auipc        s2, 792446
                  ori          s8, s3, 1793
                  auipc        a0, 854121
                  c.andi       a4, 26
                  srl          a0, zero, t6
                  slti         s2, a3, 814
                  srl          s2, a5, a1
                  rem          t3, tp, t1
                  auipc        a6, 5857
                  sltiu        a1, s10, 1548
                  mulh         s0, t1, tp
                  c.and        a0, a2
                  c.add        gp, s0
                  mulh         a5, a4, s5
                  slli         a1, a0, 28
                  sltu         gp, s1, a6
                  sub          a6, sp, a0
                  mul          s10, t1, a6
                  sltu         s4, s7, s2
                  c.add        s1, s1
                  sltiu        s5, t4, -253
                  mul          a7, a7, s6
                  mul          gp, s1, a4
                  slli         s11, gp, 12
                  rem          a5, s6, s6
                  div          zero, a0, sp
                  mulh         s1, s2, s11
                  c.srli       s1, 18
                  ori          ra, t0, -1123
                  sll          s4, t1, ra
                  sll          t1, ra, a4
                  mulh         a0, a6, t6
                  sltiu        s11, t0, 817
                  lui          t4, 328446
                  c.nop
                  nop
                  add          s1, t1, s5
                  c.xor        s1, s0
                  rem          zero, t0, s2
                  mulhsu       s1, a6, s2
                  xori         t5, s9, -1374
                  c.nop
                  mul          t1, ra, s3
                  c.sub        a1, a2
                  slli         t2, zero, 6
                  mul          s1, s11, a0
                  rem          t4, s11, t0
                  c.add        a5, gp
                  xor          a5, a6, zero
                  div          a4, s9, a7
                  srai         sp, t4, 30
                  c.li         s7, 21
                  srai         t1, a7, 18
                  addi         a0, a7, -1956
                  divu         s2, s10, sp
                  c.nop
                  sub          sp, t1, a7
                  sltu         t4, s1, t0
                  remu         a2, s7, s9
                  c.and        s0, a5
                  auipc        s10, 139620
                  ori          t5, s0, 295
                  srai         zero, a3, 18
                  c.addi16sp   sp, 48
                  lui          s5, 945314
                  c.addi16sp   sp, -16
                  slti         a1, t3, 1802
                  sub          s4, s6, t1
                  sltiu        a1, t3, -991
                  c.or         s0, a0
                  c.srli       s1, 28
                  c.li         s3, 9
                  c.nop
                  sll          t0, s0, a3
                  c.srai       a2, 29
                  mul          t1, s3, a6
                  c.lui        s7, 11
                  c.and        a4, a3
                  srl          s5, a4, s9
                  c.li         a6, 8
                  c.slli       s11, 15
                  ori          t2, a5, 175
                  rem          a7, s3, t6
                  sltiu        gp, sp, -1293
                  and          t1, a0, a7
                  c.lui        a4, 21
                  lui          a5, 236631
                  c.lui        a4, 9
                  c.srai       a5, 31
                  sltu         a1, s5, a2
                  slli         s11, t2, 28
                  div          t3, a7, s0
                  add          a1, zero, a2
                  mulh         zero, s1, s10
                  addi         zero, s11, -1190
                  c.srai       a5, 3
                  c.sub        a0, a2
                  srl          a0, ra, a2
                  srl          s8, t0, a6
                  c.mv         s1, s10
                  sub          t0, tp, a6
                  c.addi       s6, -1
                  nop
                  c.lui        t0, 6
                  auipc        s1, 116606
                  c.xor        s0, a3
                  slli         t4, s0, 3
                  srai         s0, s7, 27
                  srli         s10, gp, 27
                  sub          s2, s0, a7
                  c.nop
                  add          t0, tp, s4
                  sll          a4, s1, a4
                  slt          s8, s11, s7
                  c.mv         a6, s6
                  c.mv         a5, a7
                  div          s10, s7, s2
                  slti         s4, s7, 97
                  srl          t3, t4, t4
                  c.and        s1, a4
                  add          t1, s10, t0
                  andi         s10, s11, -320
                  c.addi16sp   sp, -16
                  c.and        a0, s1
                  andi         a0, s3, 1274
                  divu         s3, zero, tp
                  srli         t4, s8, 11
                  c.addi4spn   a5, sp, 1008
                  c.srli       s1, 19
                  mulhsu       s4, t6, s11
                  sub          a7, t2, a0
                  c.lui        t1, 16
                  sll          sp, t6, s11
                  c.or         a5, a4
                  sub          s2, s2, t4
                  xori         t1, t6, -1107
                  sra          a0, a4, a3
                  divu         a2, a0, a0
                  c.addi       t5, -1
                  c.mv         s9, t3
                  slli         s8, t0, 7
                  xor          s10, s3, s10
                  c.mv         a6, s6
                  remu         t4, a3, t5
                  addi         a4, t5, -1555
                  srai         a2, t4, 14
                  c.andi       a4, -1
                  and          t5, a0, s2
                  c.mv         t0, a3
                  addi         s8, s0, 295
                  or           t3, s4, tp
                  mulhsu       s4, s2, t3
                  c.addi16sp   sp, 48
                  sub          gp, a0, s2
                  add          s4, zero, a0
                  mulh         s6, sp, sp
                  c.mv         sp, t4
                  divu         t1, a6, s8
                  divu         s10, a0, s4
                  c.srli       a0, 4
                  sltu         a5, t5, t2
                  c.slli       sp, 9
                  c.addi4spn   a4, sp, 784
                  c.nop
                  c.addi       s3, -1
                  div          a0, t6, a0
                  c.sub        a5, s0
                  ori          a2, t4, -689
                  slt          s4, a0, s6
                  slli         t4, s0, 24
                  xor          s3, t1, zero
                  and          t1, a1, s5
                  sub          s7, s1, sp
                  c.addi4spn   a5, sp, 704
                  sra          s5, s0, t0
                  slli         zero, a7, 7
                  c.xor        a2, s0
                  c.srai       a5, 3
                  addi         a2, a5, -1314
                  slti         s4, tp, 466
                  or           s7, s7, gp
                  srl          s1, s6, zero
                  sra          zero, t4, s10
                  mulhu        t5, s7, t6
                  and          s0, a5, s8
                  div          t2, t0, a2
                  c.sub        s1, a0
                  andi         sp, a3, 1997
                  sltiu        a6, s3, -301
                  and          a5, s2, s0
                  c.srli       a1, 31
                  c.lui        s4, 9
                  c.nop
                  c.addi       ra, -1
                  c.add        s0, t2
                  c.and        a5, a2
                  c.addi       s10, 8
                  c.slli       t0, 24
                  sltiu        s4, a1, -94
                  srl          t5, s5, a1
                  auipc        a6, 474039
                  div          sp, s4, a3
                  c.slli       a1, 21
                  c.slli       sp, 6
                  c.lui        s4, 24
                  ori          t4, a4, -10
                  c.xor        a2, a2
                  c.nop
                  sub          t2, a1, t6
                  c.nop
                  srai         a2, s2, 0
                  c.or         s0, s0
                  xori         s7, t6, 1810
                  remu         s1, s7, s2
                  sra          s2, gp, s3
                  slt          s0, sp, s1
                  c.lui        a1, 31
                  c.mv         a5, s3
                  c.addi       s0, -1
                  and          zero, a3, a4
                  xori         s9, s10, -2020
                  slli         a6, a5, 16
                  c.addi       sp, 22
                  c.sub        a0, a2
                  srai         t3, gp, 16
                  ori          t0, t4, -652
                  c.lui        t5, 29
                  remu         a2, t5, a4
                  divu         s9, a0, zero
                  c.add        t1, t0
                  c.srli       a2, 14
                  c.xor        a1, a0
                  sll          t5, s9, sp
                  mulh         a0, ra, t5
                  c.mv         s6, a5
                  c.slli       s1, 12
                  and          s11, s8, s3
                  c.lui        s3, 6
                  mulh         gp, t2, a2
                  c.addi16sp   sp, 208
                  mul          a1, s8, t1
                  addi         t3, s7, 1462
                  sub          s8, a4, t2
                  c.or         a5, s0
                  or           a5, s3, sp
                  c.and        a0, a2
                  sltu         t3, t4, a2
                  c.add        a2, t0
                  auipc        a0, 252554
                  lui          t4, 455846
                  mulh         s9, gp, s3
                  c.slli       s7, 3
                  srli         s10, t1, 24
                  div          s4, tp, s10
                  c.sub        a5, a0
                  slli         t2, s8, 10
                  lui          s7, 895206
                  auipc        t0, 162996
                  sll          ra, t5, s0
                  c.srli       a2, 1
                  c.srai       a4, 31
                  c.andi       s1, -1
                  lui          s7, 946354
                  c.mv         s0, t4
                  c.addi       t5, 13
                  c.srli       a5, 24
                  remu         t2, s9, s0
                  c.srli       a2, 19
                  andi         s7, a0, 2020
                  addi         s2, a1, -410
                  xori         a2, tp, -36
                  or           s10, s4, s9
                  sltiu        gp, t2, -1147
                  ori          s5, t6, -1645
                  slti         s4, ra, 1172
                  c.addi       a5, -1
                  sltu         t0, s4, t5
                  sub          t2, t2, ra
                  srai         s1, a5, 25
                  xori         t4, s9, -714
                  c.and        a0, a1
                  sra          s9, s5, t1
                  c.xor        a5, a4
                  mul          a5, s0, t3
                  srai         s7, a1, 16
                  rem          s3, s7, t6
                  c.srai       a0, 16
                  c.nop
                  c.li         s11, 10
                  or           a1, s7, s11
                  and          zero, s9, s10
                  c.xor        a2, a3
                  c.slli       a0, 11
                  c.srai       a4, 3
                  mulh         s1, s3, s1
                  andi         s0, s7, 718
                  mulhsu       t0, s11, t6
                  slti         ra, t5, 1075
                  div          gp, a7, ra
                  lui          t5, 939329
                  mulhsu       s11, s7, t2
                  c.or         a1, a3
                  andi         s5, s9, 1067
                  c.addi       s3, -1
                  divu         s1, gp, s7
                  lui          s10, 757837
                  c.xor        a4, s0
                  xor          a6, a1, ra
                  or           s9, s1, a7
                  c.srli       a4, 9
                  c.andi       a5, 28
                  slti         s2, a3, 1033
                  c.li         t5, 11
                  srai         s2, a5, 15
                  addi         s4, s4, -1809
                  c.add        a2, s5
                  sltu         s6, t3, s0
                  c.li         s4, -1
                  c.addi       s3, 26
                  c.nop
                  c.xor        a0, s0
                  mulh         t0, a0, a1
                  mulhsu       a0, s6, t5
                  srli         t5, tp, 9
                  c.addi       sp, 17
                  c.lui        s11, 16
                  slt          t1, sp, ra
                  srli         t2, s2, 14
                  auipc        s2, 26203
                  remu         gp, s11, t0
                  c.mv         s11, ra
                  mulhu        t1, s0, t5
                  c.sub        s0, a0
                  c.lui        t3, 3
                  slti         a2, s4, -430
                  c.srai       a1, 10
                  rem          s9, zero, a3
                  slli         t1, a0, 3
                  sltiu        t1, a2, -910
                  c.and        s0, a4
                  add          a7, s1, a3
                  mulh         s1, s1, s0
                  srl          a6, s5, s4
                  ori          s2, s10, -1400
                  sltiu        s2, gp, 1896
                  c.addi4spn   a0, sp, 784
                  c.srli       s0, 12
                  nop
                  srli         a6, t5, 17
                  srli         s7, t0, 25
                  andi         s7, s6, 1312
                  c.srli       s0, 12
                  srai         s5, t6, 6
                  c.srli       a5, 21
                  mulh         s11, t6, a4
                  mulhsu       s5, s1, tp
                  ori          s1, ra, 2016
                  c.li         a1, 20
                  c.addi       t4, -1
                  slt          t3, ra, t4
                  remu         a1, gp, a7
                  divu         a6, a4, tp
                  c.add        t0, s8
                  c.mv         a2, ra
                  c.addi       t0, -1
                  c.addi4spn   a5, sp, 304
                  mulh         a5, t0, s9
                  sra          a1, s10, a1
                  slti         s3, zero, 1922
                  ori          t4, a3, -315
                  c.or         a5, a2
                  c.addi16sp   sp, -16
                  slt          s0, t0, s9
                  mulhsu       a4, a5, s10
                  c.mv         s8, a3
                  c.srai       s0, 5
                  c.lui        a5, 29
                  c.mv         t3, s10
                  c.addi       ra, -1
                  mulhu        s7, a6, s5
                  c.addi4spn   a4, sp, 656
                  addi         a1, gp, 1915
                  c.lui        s4, 25
                  mul          t0, gp, t6
                  c.addi4spn   a4, sp, 176
                  c.addi16sp   sp, -16
                  c.srai       s1, 1
                  sltu         t5, ra, s1
                  c.and        s1, s0
                  slt          a5, sp, t0
                  and          a7, t2, t2
                  c.mv         s8, s2
                  mul          s8, gp, sp
                  srl          a6, s8, t6
                  c.addi       s9, -1
                  c.mv         s11, t2
                  sra          a1, s7, sp
                  andi         a5, a4, -641
                  slti         a0, s4, -1999
                  slt          s8, s4, t6
                  sltu         t0, a6, s3
                  c.srli       a0, 6
                  mulh         gp, s6, t3
                  and          s10, s11, ra
                  slli         a0, tp, 5
                  c.srli       s1, 20
                  c.li         t0, -1
                  c.or         a1, a4
                  c.xor        a1, a0
                  mulhu        t3, a3, a4
                  slti         a4, s0, 1923
                  and          s0, t6, s8
                  ori          zero, s6, 862
                  c.addi16sp   sp, -16
                  divu         a4, s10, s3
                  c.lui        t5, 9
                  or           s2, a2, s0
                  nop
                  c.srai       a5, 20
                  nop
                  ori          s11, s0, 629
                  addi         s7, t5, -1441
                  c.mv         t1, s7
                  or           a7, t3, a5
                  or           zero, s2, s5
                  rem          a7, a6, a7
                  c.mv         gp, a0
                  slli         s3, s1, 6
                  c.addi       s1, 30
                  mulh         zero, s1, s11
                  srai         t0, s9, 15
                  mulh         a4, a0, s6
                  lui          s11, 602419
                  sub          a5, a0, t2
                  sltiu        zero, gp, -722
                  srli         t2, s7, 26
                  sra          t4, a6, s0
                  sltu         s0, s7, t5
                  srai         s3, t2, 11
                  sra          a1, s3, a3
                  c.or         s0, a4
                  div          sp, t6, s4
                  c.slli       s3, 28
                  mulh         t1, a0, s7
                  srl          s2, t1, s9
                  mul          s10, s10, s4
                  mulhsu       a2, s2, s4
                  mulhu        s4, s1, a7
                  c.andi       a0, 11
                  sub          s9, s11, a6
                  c.nop
                  c.slli       t4, 17
                  mulhu        t5, t0, s7
                  addi         s1, a4, 855
                  sra          a2, tp, s8
                  c.nop
                  c.lui        t2, 2
                  mul          t5, s3, a4
                  c.andi       a0, 17
                  addi         t3, s6, 1784
                  c.and        a1, a1
                  div          s4, t2, ra
                  sltiu        t3, s9, -1852
                  sll          a4, s0, t4
                  mul          s1, t6, s1
                  rem          a0, s2, s5
                  c.srai       a4, 30
                  sltiu        s3, a0, 1760
                  c.addi4spn   a1, sp, 400
                  c.andi       a1, 2
                  c.addi       a0, -1
                  andi         s9, a7, 475
                  c.lui        s11, 1
                  srl          s4, a3, s1
                  c.sub        a0, a2
                  c.nop
                  sltu         a6, sp, t6
                  c.andi       s1, -1
                  c.srli       s1, 12
                  mul          ra, t0, s3
                  and          a1, t5, a2
                  c.sub        s0, a5
                  sltiu        sp, t3, 1934
                  xor          s11, a7, t0
                  c.add        a5, a3
                  mulhsu       s9, t2, a6
                  divu         a5, tp, gp
                  add          a7, a6, s9
                  mulh         s1, t1, s3
                  lui          a0, 1178
                  mulhu        s4, sp, zero
                  c.sub        a0, s0
                  divu         a2, s10, t1
                  slli         s8, zero, 11
                  mulhu        a5, a1, sp
                  slli         s0, a2, 4
                  remu         t2, t6, t5
                  c.srli       s1, 23
                  rem          s4, t6, s10
                  c.add        t2, s2
                  slti         t4, s0, -388
                  srli         a6, t5, 11
                  c.addi4spn   s0, sp, 800
                  addi         a7, a4, 1398
                  ori          s8, gp, 78
                  c.addi16sp   sp, 192
                  sltiu        a0, zero, -2015
                  add          s9, s7, a4
                  sltiu        t5, a1, 378
                  mulh         a4, a0, gp
                  c.srli       s0, 8
                  srl          s0, gp, t3
                  lui          gp, 404702
                  c.nop
                  sll          s5, a6, a6
                  c.addi16sp   sp, -16
                  or           s9, gp, gp
                  divu         zero, s8, a6
                  slli         s3, s2, 17
                  srai         zero, s9, 20
                  rem          sp, tp, gp
                  mul          s3, t0, s6
                  sltu         sp, zero, a5
                  mulh         a2, s3, a1
                  mulhsu       a2, a2, s6
                  sra          s7, ra, tp
                  sltiu        a7, a1, 1400
                  c.srli       a0, 3
                  srai         t2, a1, 30
                  sll          s10, s7, s9
                  c.srai       a0, 4
                  c.mv         t4, s9
                  ori          t3, s5, -1106
                  divu         t3, a5, s9
                  xor          s5, tp, s8
                  xori         a1, t0, 232
                  and          sp, s1, t5
                  c.nop
                  sub          s5, s1, a0
                  remu         t1, s6, a6
                  div          a1, t0, zero
                  c.slli       s7, 30
                  remu         sp, sp, s5
                  rem          gp, t0, t5
                  c.andi       a5, -1
                  sll          ra, sp, a5
                  c.srli       a1, 2
                  c.addi       a2, -1
                  c.nop
                  c.andi       a2, -1
                  mulhu        a6, zero, s11
                  lui          s4, 946980
                  sll          s8, ra, s4
                  c.nop
                  ori          s2, s11, -1363
                  remu         s4, a6, t4
                  srli         a2, s5, 9
                  c.andi       a5, -1
                  ori          a5, s9, -1088
                  c.addi16sp   sp, 304
                  ori          ra, ra, 984
                  auipc        s5, 100992
                  c.li         a7, 9
                  xori         a6, a0, -2029
                  andi         s0, a7, 1061
                  mulh         t5, a7, s3
                  lui          a2, 419487
                  and          s6, a5, a7
                  c.slli       a2, 27
                  srai         s11, a5, 15
                  addi         t5, s7, 286
                  c.lui        t0, 4
                  srli         a5, a2, 18
                  c.lui        s6, 26
                  slti         s5, t2, -172
                  mulh         s4, s3, t0
                  xor          t0, s6, a0
                  c.add        a0, a4
                  c.srli       s1, 13
                  c.xor        a4, a3
                  c.nop
                  mul          a2, t6, zero
                  mulh         s2, t6, sp
                  divu         s11, t2, s7
                  c.slli       s1, 7
                  slt          a7, s4, a4
                  sra          a2, t0, s10
                  c.and        s0, a5
                  xori         s7, t3, -1551
                  srl          t5, t4, s11
                  c.mv         a2, a0
                  c.addi       a5, 22
                  remu         gp, s2, a7
                  c.andi       a2, 16
                  c.andi       a1, -1
                  srli         sp, s9, 24
                  div          s8, gp, s3
                  c.sub        a2, s0
                  c.or         a4, a3
                  c.or         a2, a5
                  sltiu        s5, s8, -440
                  slt          t3, s9, tp
                  and          t5, s5, s9
                  c.sub        a5, a0
                  mulh         zero, a2, s8
                  c.andi       s0, 0
                  c.or         a1, a5
                  and          zero, a7, s10
                  div          s7, a5, s2
                  remu         gp, t2, a1
                  slt          s6, a2, s10
                  c.srai       a2, 13
                  andi         zero, a6, 1355
                  sub          s9, a6, t2
                  or           s11, s11, t1
                  sra          a6, a5, s1
                  c.li         ra, 14
                  c.mv         gp, t1
                  c.srai       a5, 9
                  mulhsu       a6, t0, a5
                  and          s8, t2, s4
                  sltiu        s10, a7, -722
                  c.srli       s1, 21
                  mul          s2, t4, a4
                  c.mv         s10, s1
                  nop
                  sra          s6, s5, s7
                  c.srai       a1, 3
                  xori         a1, ra, 1620
                  c.addi       s6, 6
                  srai         s4, s1, 28
                  or           a5, a4, zero
                  srli         gp, s11, 26
                  c.addi       gp, 6
                  mulhsu       t1, s2, a1
                  c.addi       s7, 22
                  sll          s1, s7, a2
                  sra          t1, s9, a6
                  rem          sp, s3, s7
                  slti         t0, zero, -524
                  div          t4, sp, s6
                  c.xor        a1, a3
                  divu         s6, s7, a0
                  div          a6, sp, t3
                  mulh         s11, s4, s0
                  divu         a0, a5, t6
                  xor          s1, ra, s2
                  addi         s10, s1, -280
                  andi         a6, s0, -1472
                  c.or         s1, s0
                  c.slli       s10, 13
                  c.addi4spn   s1, sp, 208
                  or           s10, sp, s5
                  mul          a5, s10, s11
                  remu         sp, a7, s7
                  mulhu        s9, a5, s7
                  andi         s7, gp, -605
                  mul          s10, a1, t1
                  divu         a0, t5, s11
                  sltu         a7, s8, gp
                  sra          a4, t2, t0
                  c.xor        a5, a2
                  c.srli       a4, 7
                  sll          a7, a2, s4
                  c.srai       s1, 10
                  c.addi       a7, 22
                  or           s9, s3, zero
                  sra          t5, s10, s1
                  c.or         s0, a4
                  xori         a7, a1, 413
                  rem          a0, a3, s10
                  slti         t3, a6, -731
                  or           gp, a3, t6
                  mulh         s9, t2, t5
                  nop
                  slt          t4, sp, t4
                  c.addi       t2, -1
                  sra          s5, ra, a1
                  c.addi16sp   sp, -16
                  mul          t3, sp, t1
                  c.srai       s0, 8
                  c.sub        a4, a0
                  sltu         a0, a6, t2
                  and          s7, s0, s0
                  srl          t2, t6, s10
                  auipc        a0, 814683
                  remu         s10, s5, t4
                  add          s5, s2, s6
                  c.add        a5, t5
                  and          a5, a4, a3
                  or           t5, a3, s3
                  xor          s9, ra, a7
                  xori         a4, s1, 1710
                  c.or         s1, a4
                  andi         a7, a2, -926
                  c.or         a0, s1
                  c.andi       a2, -1
                  remu         t2, sp, s2
                  add          gp, gp, t6
                  srai         s1, a1, 22
                  c.li         sp, -1
                  andi         s6, s1, -46
                  mul          a2, zero, sp
                  c.slli       s8, 12
                  and          t1, t4, t6
                  ori          s1, t4, -395
                  sub          s2, tp, t4
                  remu         s8, s7, t6
                  c.or         s1, a1
                  srli         t4, a4, 25
                  c.mv         s2, sp
                  c.mv         sp, a2
                  c.and        s0, a3
                  rem          gp, s3, gp
                  and          a5, a4, s5
                  c.sub        a5, s1
                  sub          t0, t2, t1
                  c.addi16sp   sp, -16
                  c.nop
                  c.sub        a1, a3
                  c.sub        a5, a4
                  slti         s10, s7, 26
                  slli         zero, sp, 16
                  sra          s2, tp, s5
                  srai         s11, a5, 21
                  mulh         t3, s5, tp
                  c.sub        a4, a4
                  sltiu        t0, t3, 1044
                  mulh         s9, a4, zero
                  c.add        s0, s8
                  c.li         t0, 11
                  c.xor        a4, a4
                  c.xor        s0, a1
                  divu         a5, t1, a6
                  c.srai       s1, 10
                  c.srli       a5, 1
                  slli         t3, a2, 30
                  sltu         s0, tp, t3
                  sltiu        sp, t2, -670
                  slli         s0, t3, 8
                  remu         s7, t6, s0
                  divu         s4, a5, a3
                  c.addi       a0, 6
                  c.and        a4, a5
                  slt          sp, a4, a4
                  and          a1, s4, t6
                  add          s11, t6, t2
                  sra          ra, a5, t0
                  slti         a7, s5, -1323
                  sub          gp, s6, s2
                  nop
                  c.slli       s1, 25
                  srli         gp, t3, 16
                  slli         t2, a0, 17
                  sltiu        s11, t5, -591
                  srli         zero, tp, 28
                  nop
                  c.addi4spn   s0, sp, 896
                  xori         a1, gp, 545
                  c.lui        t0, 26
                  c.or         a1, s0
                  sll          a2, s5, zero
                  c.nop
                  c.and        a4, a2
                  c.nop
                  sltu         s5, a3, t4
                  xor          s11, s5, t4
                  mulhsu       s10, a7, a7
                  sub          a4, s7, a1
                  mulhu        s4, sp, t4
                  or           t0, t2, a7
                  slt          t4, t2, s6
                  srai         gp, a4, 0
                  sra          a1, s3, s5
                  srai         ra, zero, 20
                  c.addi       t0, 26
                  sra          s6, s9, t1
                  and          s10, a4, a4
                  div          s2, t3, t1
                  mulh         s9, s9, s6
                  c.lui        a5, 1
                  sub          gp, a0, a1
                  auipc        s10, 496044
                  c.xor        s1, s0
                  c.nop
                  xori         t2, s3, 1247
                  add          a7, ra, gp
                  and          s7, s9, a1
                  lui          ra, 853076
                  sll          a7, tp, s7
                  srl          s2, s11, a4
                  and          s9, a6, a7
                  addi         a2, a5, -93
                  divu         a7, s2, s2
                  lui          s9, 457798
                  div          t5, tp, zero
                  c.or         s0, s1
                  c.addi       a6, -1
                  c.lui        s7, 1
                  c.li         s9, 2
                  c.andi       a5, -1
                  div          s5, a7, s1
                  add          a4, a4, t3
                  srl          s1, s9, s8
                  or           s3, s9, s10
                  auipc        a5, 1462
                  sra          s0, t4, t5
                  c.addi16sp   sp, 400
                  c.or         a0, a1
                  sub          a1, tp, s6
                  xor          t3, tp, s1
                  add          t0, a0, s1
                  srli         a0, s4, 25
                  remu         t4, t0, a1
                  sltu         s10, ra, s8
                  c.addi16sp   sp, 224
                  c.add        s6, s3
                  c.andi       s0, 29
                  xori         s0, ra, 578
                  c.slli       a5, 31
                  slt          sp, a6, t4
                  auipc        a1, 204509
                  srl          a5, a1, a6
                  c.srai       a1, 19
                  lui          s1, 15152
                  add          sp, a5, ra
                  sll          s5, a2, s10
                  c.addi4spn   s1, sp, 656
                  div          a2, a7, s7
                  c.slli       a5, 5
                  and          s9, t6, sp
                  divu         t0, s7, t6
                  srai         sp, s5, 4
                  or           s8, a6, s8
                  ori          gp, t1, 1190
                  c.li         a2, 11
                  remu         t1, s3, t3
                  rem          a4, t4, s3
                  c.or         a0, a3
                  c.sub        a4, a0
                  c.sub        s1, s0
                  c.andi       s1, -1
                  lui          a0, 1043794
                  c.sub        a2, a2
                  c.and        a4, s0
                  ori          a7, s7, 1946
                  and          zero, s10, s10
                  rem          a6, s11, s4
                  nop
                  c.addi4spn   s0, sp, 352
                  xor          s8, s6, gp
                  c.slli       s6, 16
                  mulh         a0, a3, a3
                  xori         t0, a6, 829
                  c.srai       a2, 26
                  and          s0, t0, zero
                  addi         a6, s4, 1246
                  xori         a5, s9, 1855
                  c.sub        a1, a2
                  c.srli       s0, 23
                  sub          s4, s9, s11
                  srl          t0, s11, s3
                  c.slli       s5, 10
                  slt          a6, tp, s9
                  andi         a7, s6, 285
                  divu         s7, s4, s9
                  remu         s8, s10, s2
                  and          a4, a6, t2
                  mulhu        t1, t0, t3
                  srai         s8, t3, 17
                  c.sub        a1, s0
                  c.and        s1, s0
                  remu         sp, ra, t1
                  andi         s6, a3, -1915
                  srai         a7, a1, 29
                  srai         t5, a0, 4
                  sltu         s5, a0, t5
                  slti         a0, ra, 508
                  c.lui        gp, 4
                  xori         t4, a2, 1724
                  sub          a5, zero, a3
                  srli         t4, t4, 14
                  slt          gp, s10, a5
                  addi         s9, a0, -1087
                  andi         a4, a2, -891
                  c.add        t1, a5
                  c.and        s1, a1
                  c.li         a5, 26
                  c.mv         s4, s6
                  ori          a4, t5, -533
                  c.add        a7, t1
                  sra          a5, zero, s7
                  c.addi4spn   a4, sp, 416
                  mulhsu       gp, gp, s7
                  auipc        t1, 216678
                  srl          t1, t6, s7
                  slt          t0, t1, s0
                  c.addi16sp   sp, 16
                  xori         s4, t6, 1426
                  xori         s6, t1, 851
                  divu         s1, a7, s4
                  c.sub        a0, a3
                  xor          s11, s2, s1
                  sub          s6, a2, a1
                  div          t1, a1, s8
                  c.srli       a5, 28
                  srai         a2, t5, 25
                  sll          s7, t0, s11
                  sll          a2, t6, s2
                  c.and        a5, s1
                  c.and        a5, a2
                  c.lui        t4, 3
                  c.li         a2, -1
                  slt          s4, a7, a7
                  xori         s6, tp, -669
                  sra          a1, a5, s0
                  slli         s10, s5, 14
                  ori          s1, t0, 1505
                  srl          s11, s9, s9
                  or           s8, a0, tp
                  c.addi4spn   a4, sp, 32
                  slli         a7, s9, 0
                  mulhu        a2, s8, t0
                  sra          t3, sp, sp
                  c.slli       a6, 20
                  srl          t1, tp, s7
                  sll          t5, t4, s4
                  slt          t0, s10, s10
                  srai         a6, s6, 4
                  c.addi16sp   sp, -16
                  c.addi       s4, 10
                  divu         s8, s1, a7
                  sltu         a4, t0, s2
                  mul          t0, a2, a6
                  sltu         s4, s2, t1
                  auipc        s8, 460449
                  c.srai       a2, 30
                  andi         s11, s7, -1213
                  mulhu        s6, s11, s3
                  srli         s5, a2, 28
                  srai         s2, s1, 17
                  remu         a5, s0, tp
                  slt          a4, t2, s4
                  c.addi16sp   sp, 336
                  mul          s6, a2, s3
                  sll          t2, t2, t6
                  mulh         s7, t2, t0
                  sltiu        s7, s8, 1346
                  c.li         t1, -1
                  sll          s1, gp, gp
                  andi         s8, a6, 1186
                  c.addi4spn   a2, sp, 992
                  xori         gp, s11, 529
                  slti         a5, s0, -518
                  divu         a4, t2, s1
                  c.add        a4, a4
                  mulhu        s5, s10, s2
                  mul          a1, a7, s10
                  c.li         ra, -1
                  xor          t5, s10, gp
                  c.add        sp, s7
                  c.srli       a0, 1
                  srli         s9, a7, 2
                  c.addi16sp   sp, -16
                  slli         s10, a6, 21
                  and          a5, a2, s10
                  srai         s2, sp, 14
                  andi         s8, s8, -422
                  auipc        gp, 778759
                  sra          s6, s2, s5
                  c.mv         t0, s10
                  c.srli       a5, 13
                  and          a4, a2, a2
                  c.addi4spn   a1, sp, 272
                  c.nop
                  c.srli       a4, 20
                  auipc        t0, 355400
                  mulhu        t1, sp, a2
                  c.srli       a1, 31
                  lui          zero, 357694
                  mulhsu       s11, t0, s2
                  mul          a2, s10, s3
                  slt          t5, t0, s7
                  mulh         a0, s11, t4
                  slt          sp, a5, s3
                  c.add        s5, s11
                  c.or         a5, a2
                  c.slli       s2, 13
                  mulhsu       s5, a3, t4
                  c.slli       ra, 15
                  c.srli       a2, 8
                  c.xor        a5, a2
                  andi         s4, s3, -734
                  c.srli       a4, 27
                  c.srli       a4, 16
                  srli         s6, s11, 15
                  slli         t5, t1, 6
                  auipc        s4, 938094
                  slt          s10, a7, t2
                  c.addi       sp, -1
                  sltu         t4, sp, ra
                  c.addi4spn   a5, sp, 384
                  c.andi       a2, -1
                  rem          s5, t0, t3
                  sub          a6, ra, tp
                  xor          t0, sp, s10
                  c.add        s11, a1
                  sltiu        t1, a7, 1639
                  srli         s11, s6, 24
                  c.slli       a0, 5
                  add          t2, s11, t3
                  xor          s11, s3, a5
                  slli         s2, s0, 9
                  c.sub        a0, a2
                  srl          s2, ra, a0
                  c.addi4spn   a2, sp, 624
                  ori          t3, ra, 1032
                  srai         a1, s8, 6
                  c.srli       a1, 2
                  c.and        a2, a3
                  mul          t1, a4, s8
                  c.add        s4, s0
                  srai         t1, s4, 23
                  c.add        s4, s10
                  c.li         ra, -1
                  c.nop
                  xor          a5, tp, s3
                  srl          a7, a3, zero
                  slli         t5, s7, 18
                  sra          a7, s10, t5
                  c.or         a5, a2
                  c.or         a2, a4
                  c.li         a4, -1
                  c.and        a5, a1
                  mulhsu       s1, s0, s4
                  sltiu        a2, t6, -1241
                  remu         sp, zero, s7
                  srai         s3, s5, 11
                  c.srai       a5, 31
                  ori          gp, s0, 1539
                  slti         t3, s3, 310
                  c.and        a0, a0
                  and          s2, t4, gp
                  c.xor        a0, s0
                  c.addi4spn   a2, sp, 976
                  c.addi4spn   a0, sp, 800
                  c.addi16sp   sp, 144
                  c.xor        s0, a2
                  sub          t4, a7, a3
                  ori          s4, s7, -354
                  c.srai       a5, 1
                  slti         a6, t3, -1274
                  c.addi4spn   a5, sp, 624
                  and          t3, a2, t4
                  sll          gp, s6, a6
                  ori          s11, s7, -1306
                  c.lui        t4, 7
                  sra          t3, s6, a6
                  ori          s9, t2, -1017
                  div          s3, s3, s5
                  c.sub        s0, a5
                  c.lui        t2, 13
                  srl          a1, s6, s2
                  c.add        sp, s6
                  c.andi       s0, 26
                  srli         s9, a4, 1
                  c.srai       a1, 30
                  mulh         zero, s9, a1
                  divu         ra, s0, sp
                  c.srai       a4, 27
                  sll          s6, t6, t2
                  mulh         a1, s8, s9
                  mul          s2, t1, s7
                  nop
                  c.andi       s1, 28
                  slli         t4, s10, 16
                  remu         s5, s4, s4
                  sll          s2, s11, s7
                  srl          t5, a0, s1
                  or           t1, ra, gp
                  ori          sp, s0, -409
                  srli         s9, t1, 22
                  addi         t0, t1, 523
                  addi         t4, a6, 1431
                  addi         t5, s5, -1291
                  c.sub        a5, s1
                  andi         s0, s11, 599
                  ori          s1, s3, 477
                  andi         a5, gp, -1487
                  sll          a7, a0, a5
                  andi         s11, t6, -1873
                  sltu         s11, s3, s4
                  sltu         t4, ra, s10
                  add          a2, t6, t5
                  srl          sp, a7, s7
                  mulh         t0, gp, a4
                  c.lui        s0, 12
                  mulh         a0, t1, s9
                  divu         s7, s6, t1
                  mulhsu       t3, a2, a6
                  add          a5, s5, t6
                  or           t2, a1, t4
                  slli         s5, t6, 20
                  xor          s2, t6, t5
                  sltu         t0, t0, t2
                  mulh         a1, a6, zero
                  addi         s8, t1, -1379
                  c.srai       a0, 10
                  c.srli       a5, 14
                  slti         a5, t5, -885
                  remu         s1, s6, ra
                  mulhu        s11, s2, t3
                  c.and        a1, a3
                  srli         t5, t2, 16
                  sra          a7, s11, a6
                  xori         s8, s7, -1887
                  c.and        a5, a1
                  sra          a4, s11, zero
                  addi         s10, s1, -1704
                  div          a1, s2, a3
                  c.srli       s0, 16
                  mul          t4, t5, s6
                  remu         s6, s6, a0
                  c.srai       s1, 23
                  or           t0, a4, s9
                  c.srli       s0, 22
                  c.addi16sp   sp, -16
                  sra          s7, t6, ra
                  mul          t4, gp, t4
                  srl          s10, a6, a1
                  slti         s1, s0, -1111
                  c.addi       s6, -1
                  sll          s0, t6, a0
                  andi         s3, t3, -632
                  addi         a5, t3, 1253
                  srai         t3, s1, 19
                  slti         s9, a7, 1802
                  auipc        s10, 143474
                  sltiu        t1, s9, 1945
                  c.sub        a1, a3
                  sra          s11, a5, s0
                  sll          a6, s10, a0
                  ori          s1, t0, -816
                  nop
                  remu         s11, a7, s5
                  c.li         sp, -1
                  sltiu        t1, t3, -875
                  slt          t2, s5, t4
                  c.or         s1, s0
                  sub          s10, a0, t3
                  div          t4, s2, t3
                  c.nop
                  c.slli       a7, 17
                  sltu         gp, t0, t4
                  c.addi       s3, 5
                  c.mv         s1, t0
                  addi         a4, gp, -1180
                  or           s1, s3, t2
                  mul          s9, a1, gp
                  c.sub        s1, a2
                  mulhsu       s7, sp, s4
                  c.srli       a5, 24
                  ori          t0, t0, -1325
                  c.srli       a1, 28
                  sll          a0, s3, a5
                  xori         s0, gp, -1073
                  ori          t4, s4, -1176
                  mulhsu       ra, a0, gp
                  rem          s7, a3, s2
                  mul          s2, t0, s3
                  c.nop
                  slli         a7, s9, 23
                  andi         a0, s3, 393
                  srai         s2, a0, 5
                  sltu         s1, a6, s11
                  c.andi       a2, -1
                  sltu         gp, gp, s11
                  c.srli       a4, 14
                  mul          s9, gp, s3
                  c.lui        s2, 19
                  c.add        s5, t0
                  sll          a7, t0, ra
                  and          t0, t4, s11
                  remu         a2, t2, sp
                  c.sub        a2, a0
                  mul          s0, t6, s8
                  mulhsu       sp, s3, s9
                  c.li         t2, 23
                  c.slli       a6, 30
                  lui          s9, 200090
                  mulhu        s0, a3, s10
                  auipc        s3, 958124
                  c.andi       a5, -1
                  c.slli       t5, 25
                  mulhu        s2, zero, t6
                  rem          a7, sp, t0
                  rem          t5, t0, sp
                  mulhu        a6, t4, a0
                  srli         a7, s6, 11
                  srai         t4, s4, 5
                  addi         a1, t6, 993
                  mulh         a1, a6, s4
                  lui          ra, 237276
                  mulh         s0, a7, a3
                  or           s5, a1, t6
                  c.and        a1, a0
                  c.sub        a0, a0
                  c.andi       a2, 21
                  c.sub        a5, a5
                  sll          t4, zero, s8
                  add          a0, a1, t3
                  sltu         a0, t4, s2
                  xori         a6, s1, 118
                  divu         s0, gp, a0
                  c.lui        t4, 16
                  slt          zero, s11, s0
                  rem          t5, a6, s1
                  c.xor        a1, a0
                  divu         t4, a4, t1
                  add          gp, ra, ra
                  c.and        a5, a2
                  sltiu        a4, s8, 1687
                  slt          a5, s5, zero
                  c.andi       a1, -1
                  c.sub        a0, a5
                  c.sub        s0, a1
                  slti         s9, s4, -920
                  c.sub        s1, a5
                  c.addi       s1, 11
                  c.addi       s1, -1
                  remu         t4, t1, s7
                  divu         s0, a0, s2
                  auipc        t1, 422195
                  c.slli       a5, 16
                  c.srli       a2, 21
                  srli         s1, t0, 21
                  c.lui        s5, 7
                  sra          t4, s7, s10
                  c.srli       s1, 4
                  or           s2, t5, a1
                  divu         a4, zero, t2
                  mulhsu       s3, t0, s10
                  c.srai       a4, 28
                  div          s10, s2, s6
                  c.sub        a0, s0
                  mul          s4, s3, s6
                  c.add        gp, t0
                  add          gp, s10, s10
                  srai         a6, t5, 10
                  mulh         a6, ra, s2
                  srl          s8, s5, gp
                  c.mv         s11, s1
                  add          a5, s0, tp
                  slt          t3, tp, s1
                  mul          t3, s8, s11
                  slli         s2, s8, 21
                  divu         s1, s4, s9
                  c.addi16sp   sp, -16
                  c.mv         s9, gp
                  remu         s10, ra, t3
                  c.sub        a4, s1
                  andi         t2, t6, -1504
                  srli         s6, a2, 31
                  srl          s1, s10, t4
                  c.li         a5, -1
                  sltiu        s4, t3, 1034
                  srli         s11, s3, 30
                  andi         a5, a5, -1528
                  srl          s2, zero, a2
                  c.nop
                  addi         s1, a3, -222
                  and          s6, sp, s7
                  mulh         t5, a1, a4
                  or           s10, a5, s4
                  c.and        a1, a0
                  srai         s3, s4, 5
                  sltiu        s8, a6, 18
                  c.add        s2, sp
                  c.li         s0, -1
                  xor          a5, s11, tp
                  sltu         zero, s0, a4
                  c.andi       a5, 1
                  c.addi16sp   sp, -16
                  and          s8, t6, tp
                  xori         s9, sp, -1567
                  xor          s3, s7, t2
                  sll          s3, s7, gp
                  c.and        a0, a3
                  and          t3, s4, gp
                  c.and        s1, a1
                  div          t2, a3, s1
                  slti         a0, a3, 597
                  srl          t3, s3, t2
                  andi         a6, s11, -2047
                  sub          s7, a5, a3
                  c.sub        a5, a1
                  and          s11, a4, t0
                  srli         a5, zero, 30
                  mulh         s1, gp, a5
                  c.addi16sp   sp, 384
                  xori         zero, s11, 1412
                  srai         t1, s3, 5
                  xor          a2, ra, zero
                  c.sub        a1, a1
                  slt          t0, t3, tp
                  and          s3, t1, t1
                  ori          a6, a7, 592
                  c.andi       a1, 29
                  mulh         a0, s0, t5
                  mul          s5, a6, s0
                  rem          a2, s5, t0
                  c.andi       a2, -1
                  lui          s8, 240206
                  remu         t4, t1, ra
                  sll          t0, s0, t1
                  add          t4, s10, s8
                  lui          a6, 762197
                  nop
                  c.or         s1, a1
                  add          sp, s3, t1
                  srli         s6, gp, 31
                  addi         a1, a7, -1924
                  divu         s1, a3, gp
                  c.lui        gp, 15
                  mulh         s5, sp, a0
                  c.srai       s0, 15
                  c.li         a6, 24
                  ori          t5, s4, 1180
                  xor          s3, t3, a0
                  sltu         s6, s2, s0
                  c.addi       s2, -1
                  sltu         a2, a7, a1
                  div          a2, t4, t5
                  lui          s1, 339216
                  andi         t1, s8, -954
                  c.addi4spn   s1, sp, 944
                  xor          sp, a0, s1
                  c.mv         s7, s1
                  mul          a4, s1, s6
                  c.sub        s1, a0
                  c.li         t3, -1
                  auipc        s2, 805050
                  sub          a5, gp, t2
                  srli         s0, t3, 14
                  slti         a1, s5, 917
                  and          t0, s10, ra
                  ori          s9, t5, -1276
                  slti         a1, gp, 47
                  addi         s8, s7, -1324
                  srai         ra, a5, 22
                  c.addi16sp   sp, -16
                  c.addi4spn   a5, sp, 976
                  c.slli       t3, 29
                  c.and        s1, a5
                  mulhsu       t5, s9, sp
                  slli         a1, s5, 10
                  c.or         a0, a2
                  c.sub        s0, a0
                  and          a1, s1, a7
                  add          t5, s3, t1
                  c.addi16sp   sp, 32
                  c.nop
                  c.or         a5, a5
                  xor          s6, s3, a6
                  or           s11, a1, a1
                  c.addi16sp   sp, -16
                  mulhu        a7, zero, a7
                  mulhu        t4, zero, t0
                  sltu         sp, t1, s8
                  addi         a1, a1, 1993
                  c.xor        s1, s0
                  srl          a0, t0, ra
                  addi         s9, s2, -891
                  auipc        t5, 477896
                  c.lui        a1, 31
                  slli         s2, t4, 0
                  c.sub        s0, a1
                  remu         gp, t0, t3
                  c.addi       a2, 7
                  sltu         a1, a5, a3
                  sltiu        t0, tp, -298
                  c.or         s0, a4
                  addi         s1, t1, 1142
                  c.li         s8, 23
                  c.slli       a1, 6
                  slt          t0, t3, t4
                  mul          s7, ra, a4
                  c.addi16sp   sp, -16
                  c.slli       s3, 7
                  ori          t2, s3, 1545
                  xori         s4, tp, 1400
                  lui          a4, 846045
                  c.lui        a1, 31
                  c.srai       a0, 9
                  c.sub        s1, a1
                  sra          s9, t2, t1
                  c.and        s1, a5
                  srl          t1, s2, sp
                  srl          t3, s0, s3
                  c.xor        s1, s0
                  c.add        t4, t2
                  nop
                  and          a4, t3, a4
                  c.or         a2, a0
                  addi         t5, t6, 1129
                  lui          s3, 8774
                  c.sub        s0, a1
                  remu         t5, ra, a4
                  c.srli       a2, 10
                  rem          t0, a6, a0
                  rem          s6, t6, s4
                  sll          s9, s10, a0
                  c.xor        a4, s1
                  add          t2, t3, gp
                  srai         t3, s0, 20
                  srai         zero, a6, 15
                  xori         t5, t6, 1279
                  auipc        a0, 9506
                  andi         gp, a5, 1416
                  c.addi       a6, -1
                  and          s10, t4, s4
                  srl          s5, gp, s1
                  c.addi       s10, -1
                  c.li         s8, -1
                  c.addi16sp   sp, -16
                  xor          s3, t2, a3
                  slti         ra, a5, -1639
                  c.addi4spn   a1, sp, 544
                  mulhu        a4, a6, s9
                  c.srai       a0, 11
                  mulh         s3, s0, t6
                  srli         s10, t4, 28
                  c.mv         s9, s9
                  addi         t1, a1, -214
                  c.srai       s1, 1
                  mulh         ra, t0, a4
                  mulhsu       sp, s1, sp
                  slt          sp, a5, s8
                  addi         s7, s5, 426
                  mulh         s7, s4, a4
                  c.li         s6, 26
                  c.and        a0, a2
                  mulhu        a5, t0, s2
                  srl          t4, s5, s11
                  c.srai       s1, 30
                  sll          t0, s9, t2
                  div          gp, t4, t0
                  c.srai       a5, 25
                  add          s3, tp, s6
                  addi         s3, s8, 1721
                  c.lui        a2, 9
                  slt          s4, s11, t4
                  mulhsu       gp, a4, t5
                  nop
                  sub          s9, a7, s8
                  c.addi4spn   a1, sp, 96
                  remu         s10, a3, a3
                  sltu         a4, s2, t6
                  c.and        a4, a3
                  c.xor        a2, a3
                  div          t0, ra, s3
                  c.add        s9, s7
                  sltiu        t3, t4, 715
                  c.mv         t3, s8
                  c.addi16sp   sp, -16
                  addi         s2, a7, -669
                  sub          t4, t6, a2
                  c.andi       a1, 26
                  c.addi       t0, 4
                  mulhsu       a7, a1, s6
                  srai         s5, s1, 31
                  c.addi16sp   sp, 448
                  add          s0, t3, t0
                  lui          s1, 278751
                  c.srli       a5, 24
                  div          sp, gp, t0
                  c.addi16sp   sp, 336
                  xori         t2, t3, 398
                  c.and        a1, a2
                  ori          t5, t1, 748
                  c.srai       a0, 27
                  add          gp, s11, a4
                  c.slli       t2, 30
                  c.andi       s0, 18
                  c.addi       a5, 19
                  slt          s7, s5, t5
                  c.add        sp, s9
                  mulh         s11, t3, a1
                  c.add        t4, a2
                  c.sub        a5, a0
                  c.addi       ra, -1
                  mulhsu       s4, t3, t5
                  ori          t3, a5, 1254
                  sltu         a6, s11, s3
                  xori         s0, s3, -1039
                  sll          t1, s5, zero
                  c.or         a2, a3
                  c.srai       s1, 25
                  sltu         t3, s0, a1
                  divu         s11, s10, tp
                  c.lui        a6, 22
                  auipc        s4, 1012505
                  add          t5, s9, a3
                  auipc        t0, 795044
                  sltu         a4, sp, a3
                  slli         a0, s2, 19
                  mulhsu       t1, a5, s11
                  c.add        gp, a7
                  nop
                  srli         s7, a1, 14
                  lui          s7, 298132
                  sra          s3, s1, a0
                  div          s3, a5, t6
                  mul          s11, a0, s11
                  add          t4, zero, a0
                  slli         s3, t3, 7
                  sltu         a1, a7, t1
                  c.li         gp, 22
                  sltiu        t1, s3, 781
                  divu         s4, t2, a4
                  c.add        a0, s1
                  c.add        t1, t4
                  xor          a7, a0, t6
                  xori         ra, tp, 805
                  c.lui        s6, 15
                  sltu         t0, t1, a0
                  ori          a5, t3, -89
                  nop
                  and          t0, ra, s3
                  c.mv         a2, s0
                  remu         a5, s9, s7
                  c.slli       a1, 3
                  c.lui        a6, 8
                  nop
                  c.andi       a0, 27
                  remu         ra, a7, s7
                  ori          t2, a0, -608
                  c.slli       t5, 12
                  or           t5, s1, s5
                  c.and        a0, a1
                  lui          s1, 837173
                  mulhu        t3, s11, tp
                  auipc        gp, 50827
                  div          ra, s2, s10
                  slt          s1, s4, s6
                  c.srai       s0, 14
                  sll          a6, s0, s6
                  c.srli       s0, 14
                  remu         t2, t0, t4
                  c.add        sp, s11
                  c.srai       s1, 31
                  sub          a7, s3, a0
                  mulhu        a0, s2, s2
                  mul          t3, s0, a1
                  rem          s4, s0, t6
                  or           t0, a3, zero
                  c.andi       s1, -1
                  srli         a5, s0, 27
                  auipc        s1, 333343
                  slti         s4, s4, 325
                  mulhsu       s2, gp, s7
                  srli         t2, s7, 31
                  divu         t1, tp, a7
                  slti         s1, t3, 1419
                  remu         s5, s5, a3
                  div          ra, s11, s0
                  mul          a2, s5, a4
                  c.add        t0, a1
                  ori          s3, t1, -316
                  c.andi       s0, 7
                  c.and        a2, a5
                  remu         s1, t0, t3
                  c.lui        t2, 12
                  c.add        s6, s1
                  srli         s10, t5, 24
                  addi         s1, a1, -23
                  remu         s3, s11, t6
                  auipc        s5, 340278
                  c.srai       a1, 4
                  xor          s11, t3, t0
                  or           a4, a0, s11
                  and          s0, a2, t2
                  sltu         s1, s2, tp
                  c.addi4spn   a1, sp, 16
                  sll          t1, a0, a1
                  c.srai       a4, 5
                  mulhsu       s11, s7, ra
                  sltiu        ra, gp, 459
                  or           s8, s6, t4
                  slti         t4, a5, -948
                  c.mv         a6, a3
                  sra          t4, t0, s2
                  mulhu        t3, t2, t3
                  div          sp, s3, t1
                  slti         a6, s4, 558
                  mulhu        t0, tp, gp
                  mulhu        t0, sp, s10
                  nop
                  srli         s4, a0, 6
                  c.srai       s1, 4
                  c.mv         a2, a2
                  nop
                  addi         t4, s7, -22
                  lui          s5, 735726
                  mulh         ra, a6, t5
                  sra          t2, t5, s6
                  c.or         s1, a2
                  c.andi       s1, 8
                  div          a5, ra, a1
                  andi         sp, s10, -1629
                  c.lui        t1, 4
                  nop
                  or           s11, a2, tp
                  remu         s1, gp, ra
                  andi         s1, s4, -448
                  xor          a2, a1, s5
                  c.srli       a1, 20
                  or           s7, a6, t1
                  lui          t2, 1001640
                  c.andi       a5, -1
                  div          t1, s9, a0
                  slli         t2, t6, 27
                  remu         t3, a4, s10
                  c.add        s8, s3
                  c.addi       s6, -1
                  c.add        t0, a3
                  mulhu        a2, ra, s10
                  c.srai       a2, 14
                  div          s4, tp, t6
                  ori          a4, a4, 1546
                  c.andi       a4, 27
                  c.addi4spn   a4, sp, 624
                  sub          ra, a1, a3
                  lui          s5, 223447
                  c.slli       t3, 22
                  c.srli       a1, 13
                  slti         s11, tp, 523
                  c.lui        a6, 17
                  c.srai       a0, 17
                  srai         a2, a1, 3
                  sll          s10, s2, t2
                  c.nop
                  and          a4, gp, a1
                  srli         s11, s7, 12
                  mul          a5, s4, a5
                  c.slli       s0, 17
                  remu         t5, tp, s5
                  sltiu        t3, t0, -532
                  mulhu        a7, s9, t0
                  lui          s5, 117031
                  c.addi16sp   sp, 480
                  c.addi       a5, 8
                  c.srai       a0, 5
                  srai         s1, s3, 20
                  c.addi16sp   sp, -16
                  slli         s10, zero, 19
                  c.slli       a1, 5
                  nop
                  or           a4, sp, s7
                  c.nop
                  c.nop
                  div          gp, s8, a4
                  mulhu        s0, a4, a1
                  mul          s7, ra, t6
                  c.and        a1, a4
                  add          t4, a7, sp
                  srl          s9, tp, zero
                  xor          zero, s4, s7
                  sub          ra, s1, sp
                  mulhsu       t0, t6, a7
                  remu         a2, s11, s9
                  mulhsu       t0, s4, t4
                  remu         a2, a6, zero
                  xori         a0, sp, 1647
                  c.nop
                  srli         t3, t6, 23
                  mulh         ra, s4, t5
                  mulhsu       a0, s4, t6
                  c.or         a5, a4
                  sltiu        t1, t0, 309
                  slti         a5, s8, 1171
                  c.li         t1, 3
                  slli         t3, s9, 30
                  mulhu        a7, t5, s7
                  slli         a7, s0, 12
                  mul          s8, t0, s0
                  and          s5, a5, s4
                  c.srai       s0, 1
                  c.li         t3, -1
                  c.mv         gp, t4
                  div          a5, t4, a5
                  addi         gp, s8, 1615
                  divu         s10, a1, a4
                  srl          a2, tp, s2
                  sltiu        t5, a1, -435
                  mulh         t5, t1, s10
                  slti         s5, a4, -1406
                  c.sub        s1, a3
                  c.slli       s6, 30
                  slti         t4, s1, 705
                  sltu         t3, a5, t3
                  auipc        s8, 1042082
                  c.sub        a2, a3
                  c.xor        s1, s1
                  c.addi       s0, -1
                  auipc        t1, 846848
                  c.addi4spn   s0, sp, 864
                  sub          s8, t2, s11
                  c.xor        a5, s0
                  c.addi       s1, 4
                  sub          a0, tp, s9
                  or           s0, s2, t5
                  sra          s5, a3, t0
                  add          s11, zero, t5
                  slli         sp, s2, 7
                  auipc        gp, 885640
                  c.li         s4, 4
                  c.add        s1, tp
                  add          t1, ra, s1
                  andi         t0, s8, -1525
                  c.add        a5, a3
                  ori          s11, tp, 1653
                  sll          zero, s10, gp
                  srli         s1, s11, 14
                  slti         s0, t1, -448
                  divu         s0, a1, s7
                  divu         gp, a0, a6
                  div          a5, tp, s10
                  c.srli       a5, 1
                  rem          t5, a6, t3
                  c.mv         s9, a1
                  or           t1, s10, t0
                  srl          t3, ra, s5
                  divu         a6, t4, s5
                  divu         zero, t2, ra
                  lui          s0, 449177
                  c.or         a5, a3
                  mulhu        a2, a4, s6
                  sltu         a5, t2, a3
                  c.add        s6, s6
                  c.or         a4, a5
                  srl          a5, t5, a5
                  xor          s8, t0, t3
                  c.add        s1, a4
                  c.sub        s1, s1
                  sltu         s6, a2, s2
                  slti         t0, s4, -1867
                  srl          s3, s8, tp
                  c.xor        a0, a0
                  add          s2, t3, a1
                  auipc        s8, 802760
                  slli         sp, tp, 6
                  mul          s11, s6, t0
                  sub          s8, s6, s2
                  c.and        a1, s1
                  slli         t1, a4, 30
                  divu         a5, s9, s8
                  c.srai       s0, 1
                  c.addi       t2, -1
                  c.addi4spn   a2, sp, 560
                  c.mv         a5, t4
                  mulh         a2, a7, a7
                  c.li         a6, -1
                  c.and        a1, a2
                  addi         t4, zero, 126
                  ori          a6, a2, -322
                  srl          a0, sp, a5
                  xori         s10, a6, 489
                  sltu         gp, a4, s1
                  srl          a7, a1, s9
                  add          s4, zero, s0
                  c.andi       a2, 31
                  divu         s4, s1, a6
                  remu         t4, s4, s4
                  sltu         s4, s1, a2
                  and          a6, t1, s8
                  div          a6, t3, a5
                  c.lui        s3, 9
                  sll          s5, t1, s2
                  c.addi4spn   a2, sp, 192
                  c.lui        t0, 31
                  c.and        a2, a5
                  sra          a6, zero, a4
                  and          s11, t0, ra
                  c.srai       s1, 4
                  c.or         a0, s1
                  c.addi4spn   a5, sp, 992
                  sra          a0, ra, s7
                  mul          t5, s7, t2
                  slti         t3, gp, 291
                  rem          a2, ra, a2
                  c.mv         s4, s7
                  xor          t5, t2, t0
                  srli         s5, t1, 3
                  sltiu        s8, s5, 206
                  c.slli       ra, 27
                  c.lui        a1, 8
                  mul          s7, tp, a6
                  c.andi       a0, -1
                  addi         gp, s3, 1126
                  srl          s8, ra, s9
                  sltiu        s3, gp, -917
                  slti         s1, t6, -1672
                  mulhsu       t4, s9, s11
                  xori         t3, s5, -1718
                  c.srli       a1, 15
                  mulhsu       s11, sp, t2
                  c.lui        a7, 22
                  xor          s10, s3, ra
                  c.slli       t3, 25
                  c.nop
                  nop
                  slt          s3, s10, t2
                  andi         t4, a5, -801
                  c.addi       a6, 21
                  c.lui        t5, 29
                  c.li         a4, 18
                  c.nop
                  c.and        a4, a2
                  srai         t0, a6, 0
                  sltu         t3, s10, a2
                  mulhu        s9, s4, t5
                  addi         gp, s10, -1679
                  srli         t2, s6, 7
                  auipc        s1, 708751
                  remu         a1, s9, sp
                  xor          a1, zero, s5
                  c.or         s0, a3
                  c.or         s1, a1
                  slt          sp, t5, gp
                  sra          t2, s8, s1
                  mulhsu       t0, a1, a7
                  sub          s7, t6, s10
                  sub          s0, a3, t2
                  slti         s5, a4, 420
                  xori         ra, t2, -1249
                  c.andi       a5, -1
                  div          s11, s4, zero
                  slti         t4, s11, 1200
                  remu         a5, s3, sp
                  add          ra, a1, gp
                  c.srli       a5, 8
                  c.or         a0, a5
                  c.add        a5, s7
                  c.nop
                  c.li         s0, -1
                  sub          t5, gp, s7
                  div          sp, t4, s11
                  xori         t4, a4, -1247
                  c.nop
                  c.li         s4, -1
                  divu         s3, tp, s11
                  c.xor        a0, a1
                  c.slli       t0, 6
                  remu         a1, gp, s11
                  sltiu        ra, t0, 1177
                  sltiu        s1, tp, -1117
                  slti         s6, zero, -495
                  c.xor        a5, a3
                  c.mv         s1, s3
                  mul          s0, tp, s4
                  and          a2, s4, s2
                  c.li         a7, -1
                  c.slli       a0, 3
                  mulhu        sp, s5, a0
                  auipc        s10, 1037444
                  c.add        s7, a5
                  srl          t5, t6, t3
                  srai         s0, t2, 31
                  ori          s10, zero, -1829
                  mulhu        a4, s1, s8
                  srl          ra, t1, t6
                  andi         s10, s6, 170
                  slli         s3, t3, 27
                  xor          sp, s8, s4
                  c.srai       s1, 9
                  srai         s6, a6, 19
                  remu         t3, gp, a0
                  nop
                  sltu         s8, a5, t3
                  c.mv         a6, s1
                  c.lui        a7, 10
                  nop
                  xori         s3, gp, -1933
                  divu         a0, a5, t3
                  sltiu        gp, a5, -718
                  c.addi4spn   a0, sp, 848
                  xor          a7, a2, s5
                  c.slli       s11, 30
                  xor          t1, t1, s7
                  srli         a5, a2, 29
                  div          s8, s2, ra
                  and          sp, t3, s7
                  c.addi16sp   sp, 176
                  slti         s5, a4, -1999
                  div          sp, a1, s3
                  srai         a0, a7, 15
                  c.addi16sp   sp, -16
                  slt          t0, t1, s9
                  c.nop
                  c.lui        a0, 23
                  div          a6, a0, a0
                  c.slli       s3, 25
                  sra          s3, sp, a3
                  mulh         a5, t1, t1
                  c.sub        a4, a4
                  mulh         s6, a2, a7
                  c.nop
                  slti         s5, a7, -346
                  auipc        a4, 237102
                  andi         a0, t4, -851
                  c.addi16sp   sp, 432
                  sra          ra, s0, s3
                  c.xor        s1, a1
                  rem          t2, t6, t6
                  lui          t4, 1003184
                  addi         s7, a2, -1930
                  addi         t4, s10, 1782
                  sub          a0, a2, gp
                  srli         a0, t4, 2
                  c.addi4spn   a0, sp, 816
                  andi         t0, tp, -216
                  sltiu        zero, t4, 1407
                  c.addi16sp   sp, -16
                  c.mv         t5, ra
                  div          zero, t5, a3
                  lui          s3, 734192
                  mulhu        s4, s9, tp
                  ori          a0, t2, -1927
                  c.and        a2, s0
                  srl          s2, t2, s5
                  rem          t3, t3, a0
                  or           s4, a5, t4
                  c.xor        a0, a3
                  mul          t3, tp, tp
                  mulh         t5, a1, s11
                  c.lui        gp, 23
                  srli         a6, t0, 12
                  c.addi4spn   s1, sp, 496
                  c.addi4spn   a5, sp, 208
                  c.add        t5, a7
                  slti         t1, t2, -267
                  c.or         a2, a0
                  srai         a6, t5, 3
                  xor          a7, ra, s2
                  c.mv         a6, a7
                  xori         s1, s3, -274
                  sll          s0, a3, t5
                  c.or         s0, a0
                  ori          t1, a7, -633
                  rem          s7, s5, s2
                  sub          s5, s11, t1
                  or           a7, a4, t0
                  xor          s7, s7, s2
                  add          s6, a2, gp
                  c.andi       a5, 29
                  andi         s5, sp, -1220
                  sltu         a0, t4, s0
                  c.addi4spn   a1, sp, 576
                  sra          a6, a2, s7
                  c.add        s5, a1
                  rem          a6, a6, a6
                  ori          a1, zero, 841
                  sub          a2, s5, s3
                  sltu         a2, ra, t0
                  mulh         a6, a5, s1
                  c.lui        t5, 29
                  xori         a5, ra, 1780
                  c.srai       a4, 28
                  c.addi       a0, -1
                  sll          a2, zero, t5
                  add          s9, s1, t6
                  lui          s4, 563347
                  addi         s0, s5, 1243
                  c.srai       a1, 4
                  sltu         s6, s2, s4
                  sltiu        t3, zero, 1126
                  c.andi       s1, 7
                  lui          s11, 709963
                  mulh         s2, s4, sp
                  slt          a1, t3, tp
                  sltiu        zero, ra, 1906
                  mulhsu       a5, s8, a3
                  mul          s10, t5, a2
                  c.srai       a1, 21
                  slt          a4, s3, s6
                  c.addi4spn   s1, sp, 688
                  lui          ra, 221290
                  c.addi16sp   sp, 128
                  div          t2, a7, s10
                  c.srai       a5, 25
                  sra          s9, a6, ra
                  c.xor        a0, s0
                  sub          s11, a1, a7
                  slti         s10, t0, 695
                  c.xor        a5, s0
                  c.lui        s7, 27
                  add          gp, s5, gp
                  mulh         t4, a5, s11
                  lui          t5, 1028418
                  c.srli       a4, 18
                  c.sub        a1, a0
                  c.andi       s1, -1
                  sltu         s7, a6, s6
                  srli         s0, s5, 31
                  sub          t4, a4, s3
                  addi         s2, s1, -391
                  div          s6, s4, zero
                  c.xor        a0, s0
                  sra          s9, a1, s5
                  rem          s1, sp, s4
                  slt          s0, a4, sp
                  c.srai       a4, 15
                  rem          s4, gp, s9
                  slli         s8, t5, 31
                  slti         sp, s0, 249
                  srai         s6, t1, 9
                  andi         t2, gp, 29
                  c.slli       a0, 4
                  c.srai       a2, 29
                  sra          gp, a7, sp
                  mul          a5, s11, s9
                  c.lui        a0, 21
                  c.li         s7, 18
                  c.slli       s0, 29
                  c.slli       t1, 31
                  auipc        t4, 108099
                  or           s1, s0, s2
                  srai         s5, a6, 0
                  c.or         a0, s1
                  ori          s7, s2, -655
                  sltu         s11, t5, t0
                  c.or         a2, s1
                  sll          s4, a2, a6
                  rem          t4, a4, ra
                  slt          a4, a4, s4
                  c.srai       a5, 12
                  c.nop
                  sltiu        sp, s6, 389
                  c.srli       s0, 7
                  rem          t1, s7, s7
                  and          a1, s10, tp
                  remu         s4, s3, s0
                  c.add        gp, t3
                  auipc        s1, 819908
                  and          t2, a2, a0
                  srli         t4, a1, 21
                  srai         a0, s0, 9
                  addi         gp, s0, -1103
                  xori         a0, t3, 689
                  c.mv         ra, s0
                  rem          s9, a7, a2
                  slti         a7, a3, -1398
                  c.andi       s1, -1
                  c.addi       a2, -1
                  lui          s11, 986860
                  addi         s11, s1, -44
                  c.lui        a1, 30
                  c.addi       a5, 29
                  rem          ra, t5, s1
                  c.xor        a1, a5
                  divu         s1, sp, a2
                  rem          a0, s5, a0
                  nop
                  sltu         a5, s7, sp
                  c.or         a4, a0
                  c.addi16sp   sp, -16
                  sltiu        gp, t0, 1708
                  c.srai       a0, 16
                  c.addi       a4, -1
                  addi         s1, sp, -931
                  div          s6, t2, t0
                  c.addi16sp   sp, -16
                  sll          a0, s3, t2
                  c.add        sp, s2
                  slli         t3, s7, 3
                  c.or         s1, a5
                  c.li         a1, -1
                  xor          t0, t2, t6
                  andi         a0, s2, -1179
                  andi         s4, gp, -1460
                  andi         t1, s1, -699
                  auipc        s10, 876418
                  addi         a2, a4, -793
                  srl          a7, a4, s8
                  c.addi4spn   a5, sp, 144
                  xori         s0, s10, -1377
                  rem          gp, s2, t0
                  c.addi4spn   a1, sp, 288
                  andi         t2, zero, 1545
                  addi         s4, t4, 1670
                  auipc        t2, 438202
                  c.li         t4, 18
                  sub          s4, t3, s8
                  slt          t0, s11, tp
                  c.addi4spn   a2, sp, 576
                  divu         s1, a0, gp
                  addi         a0, s8, -1704
                  c.add        a2, a0
                  slli         t4, s0, 17
                  c.srli       s0, 21
                  mulhu        a2, gp, a0
                  sub          s11, a6, s0
                  add          s8, a4, s7
                  andi         a5, s1, -279
                  andi         s1, s7, 675
                  and          t4, t2, a4
                  c.addi       t1, -1
                  sltu         a5, a4, s0
                  c.srai       s0, 27
                  add          a2, s7, s5
                  c.srai       s1, 18
                  slti         s10, s1, -1540
                  c.and        s1, a5
                  c.srli       a5, 6
                  slli         t5, t1, 4
                  sub          a2, a1, t4
                  div          s9, s8, gp
                  c.slli       a7, 24
                  mulh         s8, sp, t3
                  c.srai       a0, 8
                  c.mv         s6, a5
                  sra          s4, a0, s2
                  c.slli       a5, 6
                  andi         a0, a0, -1995
                  c.mv         a0, s11
                  mul          t1, s3, gp
                  srai         t3, t4, 25
                  rem          s2, ra, a0
                  c.mv         s6, tp
                  c.slli       s6, 11
                  c.li         s3, 20
                  or           s9, s7, t5
                  mulh         gp, s1, ra
                  div          a2, s10, a7
                  c.slli       a0, 14
                  mulh         s6, s4, s9
                  mulhsu       a0, tp, a0
                  c.srai       a2, 22
                  c.addi       s0, -1
                  mulhsu       a4, t6, a3
                  c.srai       a5, 12
                  c.slli       ra, 1
                  c.addi16sp   sp, 160
                  mulhsu       a7, a1, s10
                  c.li         s7, -1
                  c.addi16sp   sp, 144
                  c.sub        a0, a0
                  c.add        s4, a1
                  c.srai       s1, 25
                  sll          a2, a2, a4
                  divu         t1, s11, t5
                  auipc        t0, 550298
                  sltiu        s6, s10, -1177
                  mul          t4, s6, s1
                  mulhsu       s7, a5, s9
                  srai         a4, s7, 8
                  andi         s4, t6, 497
                  mulh         s0, s11, s3
                  c.addi       t5, 18
                  c.addi16sp   sp, -16
                  andi         a5, a4, 1518
                  c.addi4spn   s1, sp, 1008
                  mulhsu       t4, s5, t0
                  sub          ra, s5, s1
                  sltiu        t4, a4, -211
                  c.srli       s1, 30
                  mulh         a5, s1, s5
                  c.addi16sp   sp, -16
                  sub          a5, s6, ra
                  mulhu        s10, t2, t2
                  lui          ra, 429289
                  sltu         t4, s4, s10
                  srli         ra, s6, 26
                  c.or         s1, s1
                  mulh         t2, s11, a1
                  sll          ra, a0, t0
                  lui          t1, 799588
                  c.lui        s9, 3
                  sub          s4, s6, a5
                  slt          a1, a1, s1
                  ori          a4, s9, 1594
                  andi         t1, s0, -1581
                  slt          a0, a2, a1
                  c.li         ra, 23
                  srl          s8, s3, s10
                  c.li         s10, -1
                  c.mv         s11, t6
                  c.srai       a0, 23
                  c.andi       a2, 26
                  divu         ra, t5, t1
                  c.lui        t4, 19
                  c.sub        a5, a5
                  c.addi4spn   a5, sp, 480
                  sltiu        sp, s8, -389
                  c.mv         s9, t3
                  div          s11, t4, a1
                  auipc        s7, 511805
                  sra          s1, t6, a7
                  c.li         a6, 12
                  mulh         a2, a4, a3
                  c.li         s6, 5
                  c.addi16sp   sp, 464
                  c.sub        a2, a5
                  xor          a0, a0, a4
                  auipc        a2, 841402
                  mulhsu       t0, a1, a0
                  slli         a4, t0, 24
                  auipc        a2, 463846
                  c.nop
                  auipc        s6, 192827
                  c.sub        a0, a5
                  rem          s7, a0, s2
                  c.add        a1, t1
                  c.nop
                  xor          a2, s1, t4
                  ori          gp, tp, 1965
                  addi         a5, s0, -1822
                  or           s6, ra, s3
                  andi         s5, t5, 1297
                  and          s2, s9, a3
                  sra          s10, s5, a1
                  andi         a6, t1, -1630
                  srli         s4, a2, 0
                  ori          t2, zero, 1674
                  sll          a4, t5, t6
                  c.nop
                  c.andi       a1, 9
                  remu         a7, a3, s6
                  c.nop
                  c.srai       a1, 28
                  c.srli       a2, 4
                  remu         a0, s0, s8
                  slti         gp, t0, 951
                  auipc        s11, 883195
                  c.add        s2, s11
                  xori         a2, s11, 1266
                  auipc        a2, 184619
                  mulhsu       t0, t1, t0
                  sll          a2, t5, sp
                  mulh         a4, t5, s1
                  srli         s6, t6, 26
                  mul          a5, a5, s8
                  c.addi4spn   s0, sp, 992
                  slli         s0, s3, 9
                  sltu         a1, a2, t0
                  c.addi16sp   sp, -16
                  addi         a5, t4, 430
                  c.srai       s0, 9
                  sub          ra, a1, a4
                  c.addi       a1, -1
                  add          a0, t6, s7
                  xor          sp, t6, s10
                  xor          s5, t1, t6
                  slli         s3, s10, 22
                  xor          a4, tp, a7
                  nop
                  c.andi       s0, 11
                  c.or         a5, a4
                  c.andi       a2, 6
                  nop
                  mul          t0, s0, s11
                  mul          zero, s4, s4
                  sra          s2, s7, t4
                  c.addi4spn   a2, sp, 704
                  slti         t5, s10, 784
                  addi         a0, a4, -540
                  sra          s6, sp, s6
                  c.xor        a1, a5
                  div          zero, gp, s11
                  addi         s1, a5, 479
                  mul          a7, tp, sp
                  sub          s1, s9, s8
                  rem          s0, a3, a1
                  and          a0, a0, a6
                  add          a2, t5, a2
                  slt          s0, zero, s5
                  lui          ra, 987158
                  sub          s4, s9, tp
                  rem          s1, a1, a6
                  srl          a2, s7, s9
                  c.and        a0, a3
                  c.add        a4, s3
                  c.add        a6, t1
                  c.xor        a5, s1
                  slli         s6, a5, 10
                  ori          gp, s1, -1600
                  and          t5, gp, s9
                  srl          s11, zero, t4
                  div          s11, tp, ra
                  c.li         s0, -1
                  c.or         s1, a2
                  mul          t2, t2, t2
                  c.nop
                  or           s6, a0, s5
                  sll          a1, s2, s11
                  and          gp, s11, s5
                  and          s10, a5, s11
                  slli         a1, ra, 28
                  c.lui        s10, 19
                  mul          t0, a0, t6
                  sub          a2, a4, a4
                  srai         s6, t3, 11
                  c.addi       s4, -1
                  c.srai       a4, 8
                  c.addi       s6, -1
                  div          s6, ra, s2
                  c.addi16sp   sp, 240
                  addi         s5, a7, -1691
                  add          t4, t6, s4
                  and          t1, t0, gp
                  sll          s2, a6, s11
                  remu         gp, t0, a4
                  div          s9, t4, a2
                  rem          t4, s7, s11
                  auipc        a0, 278902
                  slt          s10, tp, t2
                  sltiu        sp, s11, 1358
                  sltu         t1, t3, t6
                  add          s9, s2, gp
                  sra          a4, t2, a0
                  xori         t4, s11, -185
                  xori         s11, t0, 774
                  c.addi       a7, 2
                  remu         gp, sp, s7
                  c.add        a5, a1
                  slti         a2, t0, 280
                  addi         sp, s1, -1808
                  c.addi4spn   a2, sp, 944
                  c.li         s1, -1
                  add          s9, a4, a0
                  c.sub        a5, a0
                  add          t0, a7, a0
                  lui          s4, 431171
                  rem          ra, s0, a1
                  c.mv         a2, a5
                  mulh         a4, s7, zero
                  slti         t3, s2, -1078
                  and          s6, t6, s1
                  mulhu        s9, a7, s5
                  mul          a1, a3, gp
                  c.mv         t4, t4
                  mulhsu       ra, s1, t6
                  mulh         a2, a0, a5
                  c.slli       a5, 9
                  sltiu        t0, a7, 1564
                  xori         a4, t5, -183
                  sra          t0, s10, a7
                  slli         t4, t6, 23
                  andi         s11, t2, 349
                  c.sub        a1, a1
                  mulhsu       a7, t1, s11
                  c.add        t3, t6
                  or           a0, s8, a1
                  addi         a2, t4, -246
                  andi         a5, a7, 1377
                  addi         ra, s8, 1371
                  xor          a4, t5, s6
                  lui          t1, 1039859
                  divu         a0, s10, a5
                  c.li         s4, -1
                  c.and        a0, a1
                  auipc        ra, 927538
                  remu         s2, a6, t1
                  c.xor        a0, a0
                  c.li         a0, 15
                  c.and        a4, a3
                  c.add        t4, a7
                  c.sub        a1, s1
                  c.sub        a2, a4
                  c.add        s5, sp
                  c.srai       a2, 14
                  addi         zero, ra, -1461
                  sub          s3, ra, tp
                  nop
                  c.srai       a4, 25
                  xor          s1, s2, a3
                  nop
                  c.addi       t2, 3
                  mulhsu       t5, a3, t6
                  slti         a7, s3, 1644
                  c.addi16sp   sp, -16
                  srl          s1, a5, s2
                  rem          a4, t6, s2
                  mul          s9, a7, a5
                  sltu         a0, a1, a3
                  slt          a1, t2, s11
                  and          t2, zero, t0
                  c.add        t4, t6
                  slti         s8, zero, 1969
                  mulhu        a2, t0, gp
                  sll          a7, a0, t3
                  ori          s3, a4, -297
                  sub          t0, s4, s3
                  c.addi4spn   s0, sp, 800
                  rem          s5, a4, a0
                  mul          t0, t1, a4
                  xori         ra, t6, 403
                  div          s2, t0, a2
                  xor          s10, sp, sp
                  sltiu        s9, s6, 1308
                  and          t0, s7, a5
                  divu         t4, s1, s3
                  c.addi16sp   sp, 368
                  c.addi       s1, -1
                  c.mv         a2, s1
                  c.slli       a7, 28
                  slt          t4, s8, a5
                  c.mv         t4, a0
                  srl          s6, s8, s10
                  remu         t1, s3, s4
                  c.or         a5, s0
                  andi         t0, s7, 537
                  c.addi4spn   a5, sp, 464
                  c.li         a5, 7
                  slt          a6, t3, t3
                  sll          gp, zero, sp
                  c.and        s0, a1
                  c.mv         a2, a3
                  div          s5, t6, s1
                  nop
                  c.addi       t2, -1
                  mulh         t0, s3, t6
                  c.slli       sp, 3
                  c.li         s2, 1
                  c.and        a5, a4
                  c.srli       a0, 23
                  c.li         t2, 24
                  sltu         s7, a2, a4
                  srli         s11, gp, 1
                  ori          t4, t0, -975
                  c.slli       t1, 26
                  c.sub        s0, a5
                  sltiu        sp, a6, 682
                  c.mv         s9, gp
                  andi         s1, t6, 1549
                  nop
                  c.lui        a1, 12
                  c.nop
                  c.or         a0, a2
                  sltu         s9, s2, ra
                  c.sub        s1, s0
                  c.sub        a0, a0
                  mulhu        a1, ra, s6
                  c.addi       t5, 10
                  c.add        a6, a5
                  or           s7, t0, s4
                  rem          s8, a2, s3
                  srl          t3, s6, a0
                  sub          s4, sp, s10
                  slti         s10, a2, -855
                  c.lui        ra, 30
                  mul          t0, s2, t5
                  c.addi       a7, -1
                  srl          t0, s5, t3
                  mulhu        zero, s7, a1
                  mulhsu       gp, tp, ra
                  c.add        s1, t2
                  c.addi16sp   sp, -16
                  ori          s1, s1, -314
                  c.srli       s1, 23
                  c.or         a1, a3
                  addi         a7, t2, -1970
                  add          a6, s7, a6
                  sub          a0, s0, t2
                  c.nop
                  c.sub        s1, s1
                  srl          s4, t2, s10
                  auipc        s1, 653373
                  c.addi16sp   sp, 400
                  xori         t5, t6, 619
                  c.lui        a1, 15
                  or           s4, gp, s7
                  c.or         a1, a2
                  sub          t4, s5, t0
                  c.addi4spn   a1, sp, 160
                  mulhu        t0, s6, s9
                  sra          s5, a6, t6
                  nop
                  c.sub        a5, a2
                  c.xor        s0, a0
                  lui          s2, 960596
                  mulhu        s3, gp, a1
                  xori         s5, t6, 749
                  div          gp, s1, t6
                  nop
                  c.or         s1, a4
                  srli         s0, a6, 26
                  mulh         t2, t2, ra
                  addi         t4, s1, 841
                  c.nop
                  andi         t5, s2, -565
                  lui          s8, 287841
                  c.li         t1, -1
                  srli         s9, t4, 21
                  c.addi4spn   s0, sp, 304
                  and          s3, s4, s9
                  sltiu        s0, s9, -626
                  c.add        s10, t3
                  remu         a2, a5, t2
                  c.addi4spn   a5, sp, 528
                  rem          gp, ra, t5
                  nop
                  div          s11, s11, s4
                  c.xor        s1, a5
                  xori         t1, t1, -1864
                  mulhu        sp, t1, ra
                  xori         s0, s4, -971
                  rem          t1, t0, t5
                  sltiu        s7, zero, -577
                  sub          s6, s4, a6
                  lui          s8, 1034054
                  c.slli       a1, 16
                  slti         s7, ra, 1261
                  c.addi16sp   sp, -16
                  remu         a0, s10, t1
                  or           zero, s0, t1
                  andi         s8, a7, 98
                  sll          t3, s2, s4
                  c.and        s1, a1
                  mulhsu       s2, s5, s4
                  slli         ra, a5, 17
                  or           t4, s7, a7
                  add          t2, a4, a0
                  c.addi16sp   sp, 480
                  mulhsu       a1, a7, s11
                  c.xor        s1, a4
                  remu         s6, a6, t6
                  div          s7, a2, t4
                  c.xor        a2, s0
                  srli         gp, gp, 9
                  srli         a0, a7, 6
                  c.or         a4, a0
                  c.sub        s1, s0
                  xori         sp, a4, 1187
                  sub          ra, s3, t4
                  xor          t5, t0, t5
                  c.addi16sp   sp, 496
                  c.srai       s0, 3
                  add          a2, s9, s3
                  slt          t4, s8, t5
                  lui          s5, 782779
                  c.addi       a6, 23
                  srl          t5, a6, s8
                  c.srai       a1, 28
                  sltiu        a4, t0, -1579
                  c.or         a2, s0
                  srli         t5, t5, 14
                  lui          s11, 604121
                  c.slli       ra, 8
                  auipc        a2, 230009
                  remu         t3, t1, s11
                  auipc        a2, 585378
                  sra          s2, tp, ra
                  c.sub        s0, a5
                  or           t1, a0, a1
                  ori          sp, s5, 1417
                  c.add        a1, s11
                  sra          s11, a0, t5
                  c.or         a5, a4
                  c.lui        a2, 5
                  xor          s11, zero, a6
                  c.andi       s1, 16
                  nop
                  c.mv         sp, s0
                  c.and        a4, a1
                  sub          a6, ra, s7
                  xori         s1, a1, 980
                  c.or         a4, a1
                  xori         sp, s3, -540
                  sub          a7, t1, a1
                  div          a4, t1, t2
                  sra          s9, t0, gp
                  c.and        a5, s0
                  c.addi       t2, 8
                  sub          s6, a1, s6
                  c.slli       s5, 9
                  slli         s9, a5, 28
                  c.add        ra, t0
                  c.andi       a1, -1
                  slli         zero, t2, 16
                  remu         s1, s11, a1
                  sra          s9, a3, a3
                  c.or         a0, a1
                  mulhu        a4, a3, s1
                  mulhu        sp, a3, t2
                  sub          t2, t2, tp
                  c.nop
                  c.slli       s11, 23
                  c.add        t2, a6
                  c.and        a5, a4
                  c.addi4spn   s1, sp, 592
                  c.srli       a2, 3
                  nop
                  c.srli       a2, 2
                  c.slli       s4, 14
                  c.mv         s7, s6
                  c.add        t2, s6
                  c.mv         s0, a5
                  c.andi       a0, 0
                  div          a6, s7, t6
                  c.srli       a2, 10
                  c.or         s1, a0
                  lui          s6, 409757
                  auipc        t5, 727381
                  sra          a5, s1, a4
                  c.addi4spn   a5, sp, 288
                  c.or         s1, a5
                  slt          a1, t0, s3
                  srl          s11, tp, a7
                  lui          t0, 852719
                  xori         a4, s9, 521
                  srli         s8, t3, 12
                  sltu         a0, s7, s5
                  c.lui        a1, 17
                  andi         s10, t2, -1428
                  auipc        a6, 578034
                  remu         t2, s11, s10
                  mulhu        s7, t5, tp
                  c.srli       a2, 28
                  c.addi4spn   s1, sp, 64
                  c.add        s7, s3
                  slt          s6, t3, a2
                  addi         t0, t5, 270
                  srl          s3, a0, s4
                  mul          s2, s11, s1
                  sltiu        s1, a6, -821
                  c.and        s1, a2
                  sub          s8, t1, a3
                  c.nop
                  c.addi4spn   a2, sp, 640
                  mulhu        a7, t3, s1
                  nop
                  c.addi       a5, -1
                  rem          a5, a7, a4
                  remu         s9, t0, s3
                  c.add        ra, s9
                  and          s9, a5, ra
                  add          t0, t1, a3
                  sra          s0, s8, zero
                  divu         t4, ra, s4
                  mulhu        a2, sp, t0
                  xori         s3, t6, -1711
                  or           ra, s8, t4
                  ori          s9, tp, 753
                  remu         a5, s5, t5
                  or           zero, s6, t4
                  divu         a2, t2, t6
                  c.andi       s1, -1
                  c.add        s11, s6
                  slti         t0, a1, 1480
                  sub          t5, s9, s11
                  mul          a2, s10, t6
                  c.and        a1, a4
                  xor          zero, s7, s8
                  sra          a5, ra, t3
                  c.and        a2, a4
                  c.or         s1, a3
                  c.srai       a4, 5
                  srl          t0, a2, t1
                  remu         s8, t4, s4
                  nop
                  or           sp, s11, a3
                  or           a5, t6, s9
                  mul          s1, t0, s8
                  mulh         t4, t4, a7
                  sltu         zero, a7, a2
                  srai         t0, a5, 28
                  andi         s4, t6, 774
                  sltu         t3, t1, s11
                  mul          t2, s7, a4
                  add          s8, s3, s7
                  slt          s11, a5, ra
                  mulh         zero, a3, t6
                  sub          s0, a2, tp
                  c.add        t2, s7
                  srli         s6, s1, 12
                  sub          s6, sp, s7
                  c.and        a5, a3
                  c.xor        s0, a1
                  c.srai       a5, 17
                  slli         t5, s3, 17
                  add          s3, ra, t0
                  srli         s4, s7, 26
                  sub          a7, a5, a0
                  c.lui        a0, 1
                  mulhu        sp, t2, s5
                  add          s4, tp, a7
                  auipc        s4, 117405
                  sub          s5, s10, a6
                  c.lui        a5, 18
                  ori          a5, t6, 90
                  andi         s9, a0, 1653
                  mul          zero, a7, t5
                  c.addi16sp   sp, 64
                  slti         t0, t4, -839
                  srl          s1, a3, a0
                  xor          a0, t6, a3
                  c.andi       a4, 30
                  c.addi       t4, 27
                  slt          s5, ra, gp
                  c.sub        a5, a5
                  slti         s3, s4, -1034
                  and          s0, a5, s8
                  srai         s0, a0, 29
                  c.nop
                  sltu         s11, t6, a1
                  lui          s2, 8462
                  remu         s9, s0, a7
                  c.slli       s1, 3
                  mulhu        zero, s10, a2
                  remu         s3, zero, s10
                  c.and        a0, a0
                  mul          a7, a4, s5
                  add          t3, s10, s11
                  lui          a5, 332762
                  srl          a1, t1, t4
                  sltu         s2, a1, t2
                  c.sub        a4, a0
                  slti         s4, sp, 1101
                  srli         s10, a2, 26
                  sll          a4, a3, s0
                  slli         t0, t5, 23
                  sra          s10, s7, a2
                  srl          s11, t5, s6
                  srli         t2, s0, 14
                  c.srli       a5, 19
                  div          t3, a4, ra
                  slti         t0, s8, 1633
                  xori         t0, s6, 452
                  xor          s7, s2, a6
                  mulhsu       s10, a1, a2
                  or           s3, t4, a5
                  c.add        s10, ra
                  c.or         s1, a3
                  add          a4, t1, s6
                  c.lui        s6, 25
                  addi         t1, s6, 1508
                  andi         a4, t4, -715
                  xori         s4, a2, -461
                  srl          t0, s10, gp
                  divu         s4, a3, zero
                  c.andi       s1, 13
                  remu         zero, ra, t1
                  c.lui        s8, 8
                  c.srli       a0, 3
                  c.slli       t4, 13
                  div          a2, a5, s7
                  c.addi       a4, -1
                  add          s9, ra, s0
                  c.and        a2, a2
                  divu         s3, t0, s10
                  c.lui        a6, 25
                  srai         a5, t5, 24
                  sll          s11, s0, zero
                  sltiu        a0, s4, 1585
                  srl          s1, s11, s4
                  c.srli       s1, 13
                  c.or         a4, s0
                  divu         s11, s8, a2
                  sltu         s7, a6, s4
                  and          s9, s4, a1
                  srai         a1, ra, 19
                  sltiu        s2, t5, 1403
                  andi         a5, s5, -1919
                  sll          a6, s0, s7
                  ori          t4, s9, -863
                  sub          s4, s5, t0
                  and          ra, s2, t5
                  lui          s6, 988280
                  remu         a1, s7, zero
                  ori          gp, t2, -39
                  remu         a7, a0, s3
                  or           s7, a5, zero
                  slli         a2, t2, 22
                  c.addi16sp   sp, -16
                  c.addi4spn   a0, sp, 896
                  ori          a1, a0, -1065
                  xori         s8, t2, -1900
                  auipc        s3, 71403
                  mulh         a4, t1, s8
                  c.mv         s4, t0
                  mulh         ra, s0, t2
                  addi         s5, t5, -1718
                  c.addi4spn   s0, sp, 496
                  c.slli       sp, 12
                  mulhsu       s4, a2, a6
                  add          s1, t5, a0
                  c.and        a2, s1
                  c.and        s0, a1
                  mulhu        t4, t0, t3
                  and          s4, t5, t5
                  add          s8, tp, t5
                  remu         t2, t3, sp
                  sub          t3, a6, ra
                  divu         s7, a6, a3
                  mulhu        a5, t6, s0
                  xor          t2, t4, s3
                  xori         s9, s3, -1432
                  c.sub        a2, a0
                  sra          s4, s8, t2
                  sltiu        gp, gp, 1232
                  sltu         s11, s10, a2
                  sub          a1, s10, t6
                  and          zero, a4, s6
                  c.addi4spn   a4, sp, 736
                  and          a4, s11, a1
                  c.srli       s1, 22
                  or           t2, sp, s1
                  srl          s11, a2, t1
                  c.and        a4, s0
                  slli         a4, a5, 12
                  divu         s1, a4, t5
                  addi         a5, s10, 1086
                  xor          s2, s6, s10
                  slti         t5, a3, -1330
                  c.mv         ra, s4
                  xor          t1, s9, sp
                  rem          s9, t1, a1
                  remu         s9, zero, a7
                  c.srai       s0, 9
                  sll          a4, s9, a0
                  c.addi4spn   a4, sp, 64
                  c.and        a1, s1
                  remu         t4, s11, t5
                  and          t0, s7, zero
                  c.li         sp, 23
                  slti         a4, s10, 1067
                  mulh         s0, s10, s9
                  c.add        t5, t3
                  c.add        ra, t6
                  c.srai       a1, 25
                  sub          zero, a6, gp
                  sll          sp, a3, t5
                  sltu         t5, a2, s6
                  xori         s9, s3, -980
                  xor          s5, s0, t4
                  sub          s3, s3, a0
                  mulhu        s10, a1, a2
                  srl          s4, s5, a2
                  nop
                  sltiu        s11, a6, 1513
                  nop
                  slli         zero, ra, 3
                  c.nop
                  add          t4, s8, s9
                  c.sub        a4, a0
                  c.srai       a5, 24
                  sra          s7, zero, a0
                  add          a5, zero, a3
                  andi         s1, a6, -100
                  mulh         t4, a3, t4
                  srl          s5, s3, s1
                  c.xor        a4, a5
                  sra          a1, s7, a3
                  ori          a7, a0, -1393
                  auipc        t4, 401537
                  c.add        a6, a2
                  nop
                  sub          a0, zero, t2
                  mul          t2, s11, s10
                  c.nop
                  c.srli       a2, 2
                  c.xor        a1, s0
                  div          a6, s10, t3
                  rem          s1, s5, a3
                  sra          s0, a5, a3
                  c.nop
                  c.lui        t3, 24
                  mul          s2, s1, a6
                  srli         s0, s11, 23
                  srli         s8, s6, 8
                  and          s7, t2, s9
                  or           s5, s2, t4
                  c.xor        a2, a2
                  sub          s7, s10, s9
                  srli         t5, t5, 17
                  and          t4, s6, s8
                  srli         a7, s1, 29
                  xori         s6, t1, 1682
                  divu         t3, a2, s7
                  mulhsu       s3, s4, t6
                  c.lui        a7, 4
                  srai         sp, a5, 17
                  rem          t2, s1, s2
                  sltiu        a7, s1, -990
                  mul          a1, tp, t2
                  slti         t2, s10, -1974
                  and          a5, a6, t1
                  c.sub        a5, s0
                  remu         s4, s8, ra
                  mul          s8, a3, s4
                  sltu         s9, s3, s10
                  c.add        s3, t6
                  mulhu        gp, s4, s1
                  c.andi       a0, 17
                  c.xor        a2, s1
                  c.srli       a5, 7
                  slt          a4, s9, s5
                  add          s6, a6, s8
                  sll          a1, zero, tp
                  mulh         sp, gp, t0
                  c.srai       a4, 4
                  c.srli       s1, 19
                  andi         ra, tp, 671
                  or           a5, s7, t4
                  sltiu        s9, s4, 866
                  c.andi       a0, 10
                  divu         t5, ra, s7
                  srli         t4, s11, 31
                  or           s2, t6, t4
                  rem          t3, a6, sp
                  mulhsu       t5, s1, a7
                  sll          sp, zero, t2
                  sub          gp, s7, gp
                  sltu         s8, s7, t0
                  c.lui        a0, 25
                  c.addi       s9, 27
                  remu         t1, sp, t0
                  xori         ra, s2, -619
                  div          ra, t3, t3
                  slli         s2, t0, 10
                  mulhsu       t4, gp, s11
                  c.nop
                  c.srli       a1, 18
                  remu         t5, s2, s3
                  sub          t3, s7, zero
                  addi         gp, s8, -1694
                  addi         t0, s0, -462
                  remu         s8, t6, a1
                  slli         t1, a3, 12
                  c.or         a2, a3
                  c.li         s11, 18
                  c.addi       a0, -1
                  mulhu        t5, tp, a1
                  c.slli       s2, 25
                  divu         t2, a3, s2
                  slti         a1, a1, 1784
                  mul          t0, a5, a6
                  rem          a1, s11, t6
                  slt          a1, s1, tp
                  srli         a6, a1, 14
                  divu         sp, a5, t4
                  rem          t1, s7, t0
                  sltiu        s2, a1, 898
                  c.addi       s11, -1
                  srli         a5, sp, 10
                  srai         s5, a1, 22
                  mulh         a6, s0, s9
                  add          s0, s0, gp
                  slli         s1, s11, 6
                  sltiu        t5, s0, 1901
                  slt          s7, s9, a7
                  c.or         s0, s1
                  xor          s1, a5, s3
                  c.andi       a0, 11
                  c.addi       sp, -1
                  slli         t0, tp, 26
                  div          s1, s9, gp
                  div          gp, t1, a1
                  c.addi16sp   sp, -16
                  slli         t0, zero, 27
                  xori         a4, s10, -1851
                  sub          s11, s3, sp
                  c.and        a1, a0
                  remu         s4, s5, s5
                  c.li         a0, -1
                  c.addi16sp   sp, -16
                  sltu         t4, t6, t1
                  c.andi       a1, 14
                  auipc        s7, 670144
                  c.andi       s1, 18
                  xori         t3, t0, -1578
                  c.and        a5, a3
                  sll          a0, t6, s4
                  xor          s4, s1, tp
                  c.addi       sp, -1
                  c.srai       a5, 3
                  sltiu        a5, a5, -641
                  divu         a6, s5, s6
                  sra          t3, t6, s9
                  mul          s8, a1, s4
                  c.addi       a4, 20
                  sll          zero, s1, t2
                  c.slli       s10, 20
                  srli         s11, a4, 15
                  and          t0, s7, a3
                  c.srai       a0, 28
                  srl          t3, s8, t2
                  sll          s5, a5, a0
                  sltu         s4, s1, s1
                  or           s2, gp, a2
                  srai         t4, a5, 19
                  c.addi4spn   a1, sp, 352
                  mul          s1, a0, s11
                  c.mv         sp, t5
                  c.li         s10, -1
                  mulhsu       t0, s10, a2
                  c.sub        a4, a2
                  sub          s6, t2, ra
                  add          s6, s8, s8
                  sltiu        a7, s4, -376
                  add          t4, s2, s2
                  remu         gp, tp, t4
                  andi         t1, a5, -1099
                  c.nop
                  c.addi       a4, 20
                  c.mv         a7, sp
                  xor          gp, t3, t2
                  c.mv         t2, a6
                  srl          zero, s8, s11
                  xori         a2, t4, 416
                  c.or         a5, s1
                  nop
                  c.xor        a5, a5
                  c.srli       a2, 12
                  c.mv         s0, gp
                  slt          zero, s7, s10
                  sll          a5, a6, a3
                  c.xor        s1, a5
                  c.add        s4, ra
                  rem          t2, s2, gp
                  slti         s5, s4, -898
                  c.andi       s0, -1
                  addi         zero, sp, -1789
                  slli         s10, s7, 0
                  lui          a6, 203257
                  mulhu        s10, t2, zero
                  remu         s11, a6, s5
                  c.andi       s1, -1
                  c.nop
                  sltu         a7, t6, a6
                  slt          a4, ra, s4
                  mulhsu       s3, s0, a7
                  remu         s0, a7, s6
                  c.andi       a2, 2
                  nop
                  c.addi4spn   s1, sp, 608
                  nop
                  mulhu        a6, ra, a3
                  c.sub        s1, s1
                  and          t0, s3, a5
                  divu         s7, a7, s6
                  xor          a1, a6, ra
                  srl          a5, tp, s8
                  mulhsu       ra, ra, a0
                  slt          a6, a1, ra
                  c.xor        s1, a5
                  c.add        t1, a0
                  slt          a5, s3, s2
                  c.lui        s1, 6
                  sltu         t2, s11, t5
                  auipc        a1, 572476
                  srli         s0, t2, 21
                  and          s6, s10, t5
                  addi         sp, s7, -1887
                  srli         s0, s7, 7
                  andi         a5, s10, -1451
                  rem          t5, s11, t0
                  div          t2, s1, tp
                  addi         t0, a3, 393
                  sltu         a1, a6, a6
                  srl          t1, sp, s5
                  c.xor        a5, a0
                  c.li         a2, -1
                  srli         s4, a7, 23
                  mulhu        gp, t5, s2
                  srl          a1, a7, zero
                  c.lui        t0, 22
                  mulh         t5, s0, s3
                  c.lui        s8, 12
                  rem          a4, a6, tp
                  nop
                  c.andi       s0, -1
                  c.xor        s1, s0
                  slti         a5, s3, -1389
                  c.xor        a2, a2
                  srl          gp, a2, a0
                  srli         sp, s6, 11
                  divu         s11, t0, t2
                  mulhsu       t4, s10, zero
                  srli         t1, sp, 1
                  and          a6, s11, s3
                  c.addi4spn   s0, sp, 176
                  xor          a6, t6, s1
                  c.addi       s6, -1
                  c.and        a5, a5
                  xori         s3, a2, -682
                  remu         a6, a3, a7
                  addi         a5, s4, -24
                  auipc        s2, 335727
                  sltiu        s5, s5, -1039
                  c.xor        a0, a3
                  mulhu        a2, s2, tp
                  mul          zero, a2, t4
                  andi         s7, sp, -661
                  mul          s1, s0, s2
                  c.addi4spn   a5, sp, 816
                  c.xor        a0, a2
                  div          a2, s7, zero
                  c.or         a0, a5
                  sub          s4, s11, t2
                  c.slli       a4, 25
                  mulhu        a0, sp, s0
                  mulhsu       t4, zero, t6
                  sll          sp, a1, t1
                  c.slli       a6, 28
                  or           a2, s3, a1
                  ori          sp, s10, 1669
                  c.addi16sp   sp, 176
                  mul          a1, a2, a0
                  c.andi       a0, 28
                  xori         s6, sp, -2010
                  c.xor        s0, a1
                  c.addi16sp   sp, 352
                  lui          zero, 516543
                  mul          s1, s8, a3
                  andi         s10, t5, -1538
                  sra          sp, s7, s11
                  sra          s1, s5, t0
                  sra          s6, s10, tp
                  lui          a0, 965268
                  c.addi4spn   a5, sp, 16
                  c.addi       a1, -1
                  sltu         a5, a2, a4
                  c.slli       ra, 22
                  srai         t4, a3, 25
                  srl          s7, s4, t4
                  mulh         s1, t3, ra
                  c.srli       a1, 2
                  lui          a2, 819636
                  andi         s2, s11, -229
                  rem          s6, t2, s5
                  nop
                  c.sub        a1, a4
                  c.or         s0, a0
                  xori         t1, a0, 1805
                  sll          t2, t3, a3
                  c.srai       a1, 30
                  mulhsu       s1, s9, a1
                  c.xor        a5, a2
                  mulhu        a1, t5, zero
                  mulhsu       t1, t1, t1
                  c.addi4spn   a2, sp, 1008
                  mulhsu       a6, t2, t4
                  slti         a1, gp, 1489
                  c.srai       a5, 11
                  ori          a0, t0, 1762
                  slli         s8, s4, 14
                  divu         s4, gp, ra
                  srai         a0, a7, 23
                  div          s3, a3, s5
                  c.sub        a2, s1
                  c.addi16sp   sp, -16
                  sub          s0, gp, t1
                  sll          sp, s10, a1
                  andi         a4, s2, 939
                  c.or         s1, a2
                  srai         s5, t4, 28
                  slt          t2, a1, s6
                  c.addi4spn   s1, sp, 880
                  slli         a1, s3, 21
                  c.srai       a0, 11
                  slti         t5, t6, -20
                  ori          s5, t0, 34
                  divu         a2, t4, t1
                  srl          s4, a2, s6
                  c.mv         t4, s10
                  mulhsu       sp, s2, s4
                  xori         t0, a6, 314
                  mulhu        zero, s3, a1
                  sll          s3, s0, a5
                  slti         s1, t5, 1583
                  c.lui        s4, 21
                  and          zero, s11, s6
                  c.addi16sp   sp, -16
                  c.and        a2, a5
                  mulhu        a0, t6, s11
                  addi         s9, tp, -954
                  c.lui        a1, 14
                  sltiu        gp, s10, -395
                  mul          zero, s1, t0
                  slt          a2, s10, a7
                  xori         sp, t1, -1365
                  srli         s11, a5, 1
                  c.li         t5, 31
                  mulhsu       t2, s10, zero
                  c.and        a2, a5
                  c.and        a1, s0
                  c.li         s0, 19
                  mulhsu       t1, a4, sp
                  sltu         s5, s5, zero
                  remu         t0, s9, t4
                  slt          a2, s4, s8
                  c.and        a2, a4
                  c.add        t0, t5
                  sll          a2, s5, t5
                  c.mv         a2, s1
                  div          a1, s11, t1
                  c.li         t4, 28
                  c.andi       s0, 3
                  slli         a5, tp, 27
                  c.addi       s2, -1
                  c.li         a0, 6
                  c.slli       a5, 20
                  xori         s11, s1, -1869
                  c.addi4spn   a1, sp, 176
                  andi         s2, sp, -726
                  c.sub        s1, a3
                  add          s10, s4, t5
                  slli         a6, a3, 29
                  c.srai       s1, 28
                  sub          s10, t3, t0
                  c.slli       s4, 27
                  and          a5, a6, a0
                  sra          a2, a4, a2
                  xori         a7, s5, 1378
                  c.addi16sp   sp, -16
                  c.sub        a1, a0
                  c.add        t4, s5
                  c.nop
                  ori          s0, s7, 974
                  c.srai       s1, 18
                  remu         s7, t2, a3
                  xori         s5, t6, -982
                  remu         t1, t2, a1
                  slli         t0, a2, 16
                  rem          t2, tp, a7
                  sltu         a6, a1, a2
                  c.or         a2, a0
                  c.srai       a4, 13
                  c.mv         ra, a5
                  c.andi       a4, -1
                  add          ra, a6, tp
                  srli         t3, a0, 21
                  c.and        a2, s0
                  mulhsu       a1, a6, t2
                  or           s1, ra, a4
                  divu         s2, t4, t2
                  mulh         a1, s10, tp
                  c.mv         a4, t3
                  c.srai       a0, 3
                  sltiu        a5, s9, 319
                  c.add        t1, t0
                  nop
                  c.add        s9, s4
                  lui          t2, 556711
                  sltu         t4, a4, s6
                  addi         a7, a0, -989
                  nop
                  xori         s10, a1, -75
                  mul          s0, a0, t6
                  c.or         s0, a4
                  divu         s11, ra, a2
                  xor          a5, s2, zero
                  sub          t5, tp, a7
                  rem          zero, s10, s1
                  slti         a7, s10, 1905
                  remu         a0, s8, gp
                  or           t0, t3, s6
                  slti         ra, t4, -1018
                  sra          t1, a4, a6
                  c.addi4spn   s0, sp, 976
                  slt          s5, t3, a1
                  mulhsu       sp, a1, s7
                  slli         t3, zero, 28
                  nop
                  c.addi16sp   sp, -16
                  c.or         a1, a0
                  mul          s10, tp, ra
                  and          gp, s9, t5
                  mul          s8, sp, a0
                  c.xor        a5, a5
                  rem          zero, s6, s7
                  srli         t2, t2, 31
                  lui          s4, 461241
                  sub          s7, s6, a0
                  rem          ra, a5, gp
                  div          zero, s3, s4
                  c.nop
                  c.lui        s7, 23
                  c.sub        a4, a2
                  add          a1, s2, s2
                  sub          s3, s10, t3
                  c.xor        s0, a3
                  c.srai       a5, 23
                  xori         a1, t6, -603
                  slti         a5, tp, 29
                  and          a1, zero, s2
                  addi         a4, zero, -1144
                  andi         s11, s7, -777
                  c.or         a5, a1
                  rem          t4, s8, a6
                  sub          gp, s4, s6
                  nop
                  xor          a0, sp, a4
                  or           a6, s4, tp
                  srli         t4, sp, 23
                  andi         t5, a2, 644
                  mulh         s5, t5, s8
                  c.li         a5, -1
                  mul          ra, a3, s10
                  slt          a4, t4, s3
                  auipc        s7, 822139
                  slli         a2, a7, 24
                  mulh         zero, tp, a1
                  c.add        gp, a0
                  xori         s5, t1, 1643
                  c.addi       a6, -1
                  nop
                  div          a0, t0, a3
                  andi         s7, t1, 1319
                  sltiu        s1, t0, -1235
                  c.add        s4, s4
                  c.xor        s1, a3
                  add          ra, s10, t4
                  c.addi       a1, 15
                  c.and        a4, a3
                  c.add        s6, s8
                  rem          s8, a4, s7
                  c.lui        a2, 17
                  addi         t2, s8, 1590
                  c.nop
                  c.xor        s0, a3
                  lui          a4, 317346
                  sub          a6, t3, s4
                  c.srli       s0, 11
                  mul          s6, t3, a0
                  c.nop
                  sub          s4, t3, s1
                  c.lui        a1, 9
                  div          s2, s6, ra
                  and          s8, t2, s7
                  sub          a1, s1, sp
                  mulhu        s1, a5, ra
                  c.slli       t3, 4
                  c.lui        s11, 14
                  c.add        a5, t6
                  c.add        s7, s9
                  slli         a6, s10, 11
                  mulhu        s7, s3, s1
                  c.andi       a1, -1
                  c.xor        a2, s0
                  andi         t4, s4, 11
                  c.andi       a2, -1
                  or           t1, t0, gp
                  slt          s11, tp, s9
                  mulhsu       s2, a5, ra
                  mul          s4, t5, s2
                  c.srli       a5, 31
                  remu         zero, sp, s7
                  c.sub        s0, a5
                  remu         s8, t0, a5
                  mulh         a1, s1, s5
                  c.addi4spn   a1, sp, 352
                  ori          a0, t4, 2028
                  xor          t4, s8, s11
                  sll          s5, a5, s7
                  c.slli       t5, 17
                  sll          ra, t1, sp
                  slli         t5, a7, 16
                  srli         s9, s5, 15
                  srli         a2, tp, 11
                  addi         s8, s11, 229
                  c.sub        s1, a3
                  sra          sp, a3, s4
                  c.xor        s0, a3
                  slt          a4, t3, a7
                  c.and        a4, s0
                  sltu         t0, t0, a5
                  auipc        sp, 1015065
                  andi         s3, a4, -664
                  nop
                  c.add        t2, ra
                  slt          t3, s0, t3
                  rem          a0, a5, tp
                  srl          t3, s11, s8
                  c.sub        a0, a5
                  sltu         t5, ra, s5
                  slli         s4, a1, 22
                  addi         ra, s8, 1128
                  or           t3, tp, gp
                  auipc        s8, 768063
                  ori          s4, a3, 733
                  sltiu        t0, t1, 1199
                  c.andi       s1, 27
                  sltiu        t5, t5, 1513
                  mul          sp, s4, t3
                  c.or         a0, a2
                  remu         t4, a7, s6
                  mul          zero, t1, a2
                  c.li         s7, 16
                  slti         s11, s10, 792
                  andi         a2, tp, -1551
                  c.slli       s4, 26
                  andi         t2, s6, 868
                  c.addi4spn   a1, sp, 128
                  nop
                  c.srai       a5, 21
                  slt          t4, t2, s10
                  srli         s0, s6, 12
                  xori         s11, t0, -1496
                  srli         a5, t3, 25
                  remu         t4, ra, s0
                  xor          t0, s3, s11
                  rem          a2, t3, s6
                  xor          a6, s1, s9
                  ori          s7, zero, -1916
                  or           a4, t6, s8
                  slt          s7, a6, t4
                  auipc        s6, 475009
                  slli         a2, ra, 8
                  c.andi       a2, 11
                  mul          s2, t1, s7
                  sll          s7, tp, s1
                  xori         sp, a5, 1150
                  lui          ra, 677166
                  c.mv         s7, a7
                  sra          s6, s0, t1
                  mulhsu       s10, s4, t6
                  add          s10, a7, a3
                  div          s4, t6, s3
                  c.slli       a4, 1
                  mulhu        s0, gp, ra
                  sltu         a0, t4, tp
                  sll          a4, t4, s11
                  sll          a1, a1, a0
                  c.srli       a1, 28
                  c.addi4spn   a0, sp, 960
                  or           a0, s0, ra
                  mulh         t3, t4, t3
                  c.srai       a4, 20
                  c.or         a4, a1
                  c.andi       s1, -1
                  c.srai       a0, 4
                  c.addi16sp   sp, -16
                  addi         t5, tp, -1022
                  c.xor        a2, s1
                  slti         s6, a5, 304
                  divu         t0, s10, ra
                  mulhsu       s1, s11, gp
                  c.and        a5, a5
                  slt          a7, t0, s0
                  c.addi       s4, 15
                  c.srai       a2, 22
                  c.nop
                  mulhu        a4, t4, t4
                  srl          t4, s7, s10
                  nop
                  div          s5, a0, s1
                  c.addi       t1, 20
                  div          s11, a3, tp
                  c.nop
                  andi         s0, t2, 659
                  slti         s4, t3, -526
                  mulhsu       s3, t5, a5
                  sltu         a0, ra, a1
                  slli         a2, t3, 24
                  c.mv         ra, s1
                  slli         s5, a6, 27
                  add          zero, a0, s10
                  slt          s4, a6, s1
                  c.add        t5, sp
                  sra          a4, s5, t4
                  c.srai       s0, 26
                  auipc        t2, 792677
                  srl          a0, s11, ra
                  add          t5, t0, a7
                  nop
                  mulhu        s7, t1, s1
                  c.nop
                  xori         a6, a1, -923
                  c.addi       t5, 12
                  xori         ra, tp, -716
                  mul          a5, s1, t5
                  srl          t2, s9, t6
                  c.xor        a5, s1
                  addi         s0, s1, 1133
                  andi         s6, a2, 1173
                  srli         gp, s10, 22
                  srl          a0, s5, t3
                  c.mv         s9, ra
                  c.slli       a6, 6
                  c.and        a5, s0
                  slli         a1, a0, 13
                  add          t2, a5, s5
                  divu         s0, s0, a7
                  nop
                  slli         s8, s11, 11
                  c.nop
                  or           a7, s8, s5
                  nop
                  slti         t1, s7, -1553
                  andi         s5, s11, 62
                  rem          zero, zero, ra
                  sll          s4, t2, s2
                  mul          s4, t0, s2
                  mulhu        t5, t0, zero
                  andi         ra, a3, -1707
                  xori         a7, tp, 42
                  c.addi16sp   sp, -16
                  ori          s0, a2, 94
                  srl          t5, t5, s7
                  c.nop
                  add          s1, t4, a0
                  sltiu        s9, s8, 1149
                  div          t5, a6, a1
                  c.addi16sp   sp, 352
                  sra          t0, t2, s3
                  slti         s1, s3, -1684
                  c.xor        a1, a3
                  add          a7, t2, sp
                  lui          sp, 911790
                  div          a2, s2, s5
                  div          gp, t3, tp
                  srl          t1, ra, s8
                  srl          s1, a4, tp
                  c.xor        a5, a3
                  mulh         t3, s3, s5
                  auipc        s5, 256023
                  remu         a5, a1, tp
                  c.addi       sp, 22
                  sub          a2, s10, t3
                  mulhsu       s8, a5, a5
                  lui          a0, 857807
                  c.addi4spn   s1, sp, 912
                  nop
                  or           a0, s0, sp
                  ori          a0, s9, 596
                  c.sub        s1, s1
                  remu         a0, sp, t3
                  and          s10, a7, s3
                  c.nop
                  mulhsu       s2, t4, a5
                  or           s9, s1, t3
                  c.mv         a5, t1
                  c.or         s0, a2
                  mulhsu       t0, zero, s2
                  addi         t1, t6, 1614
                  auipc        t3, 189597
                  c.add        s2, t3
                  srl          t1, s5, s9
                  c.lui        s9, 3
                  c.slli       a4, 5
                  srl          s9, a4, t3
                  c.nop
                  srai         t4, t5, 7
                  c.srai       a5, 24
                  c.or         s1, a4
                  sub          s6, a6, a6
                  c.and        s1, a1
                  c.srai       s1, 7
                  sra          s11, a5, s7
                  c.srli       s1, 22
                  c.and        s0, a4
                  c.xor        s1, s1
                  nop
                  sra          a4, a5, s7
                  sltiu        s6, a1, 1947
                  ori          s1, t3, -588
                  mulhsu       t2, a1, a5
                  slti         s8, sp, -509
                  srai         a0, tp, 31
                  div          s4, a7, s7
                  mul          s11, s1, t2
                  c.and        a4, a1
                  sra          a0, a4, a2
                  sltiu        s5, t2, 1737
                  slt          t4, t2, t3
                  slli         s7, a1, 31
                  andi         a6, zero, -1159
                  c.mv         s2, t1
                  xor          a7, s6, t0
                  c.lui        a1, 13
                  srai         s4, gp, 21
                  andi         zero, s7, -832
                  slt          t3, s7, a5
                  srai         a6, t2, 22
                  nop
                  sll          s0, s8, a6
                  mul          ra, zero, t5
                  mulhu        zero, t3, a3
                  slt          a6, sp, t4
                  nop
                  c.xor        a0, s0
                  divu         a5, s10, tp
                  auipc        s4, 159060
                  and          gp, s2, a3
                  sll          t0, tp, t3
                  sltiu        s11, s5, -1536
                  auipc        t1, 492108
                  slti         a2, a2, 1609
                  lui          ra, 725303
                  slli         a2, t2, 20
                  c.mv         a2, s6
                  lui          t2, 705191
                  sub          ra, tp, s1
                  c.andi       a1, 25
                  srai         t1, s9, 4
                  srl          t1, t4, ra
                  mulhu        s5, t5, a2
                  sll          zero, t4, t1
                  xor          gp, a5, t5
                  or           s1, gp, a2
                  addi         s10, a1, 131
                  or           a7, a1, gp
                  div          s6, t6, tp
                  c.li         a6, 23
                  c.or         a0, a2
                  c.xor        a1, s1
                  c.andi       a5, -1
                  ori          t3, s4, 1038
                  rem          s4, a3, s7
                  slti         t3, zero, -1337
                  c.srai       a5, 26
                  sltu         s4, s9, a0
                  srli         a2, t5, 8
                  remu         a5, s2, a6
                  c.xor        a4, s0
                  c.addi16sp   sp, 384
                  c.andi       s0, -1
                  and          a5, s2, a7
                  addi         s5, t3, -208
                  slt          zero, a6, s1
                  c.xor        s1, a0
                  mulhu        a4, s4, t0
                  c.andi       a1, -1
                  andi         a4, s5, -660
                  mul          s6, t1, t1
                  ori          a7, t0, -157
                  sub          a5, gp, a0
                  ori          a0, a4, 507
                  div          t4, ra, t1
                  srai         t0, gp, 25
                  sll          a4, t1, s1
                  sltu         s10, t2, t2
                  remu         a4, a7, gp
                  c.addi4spn   a5, sp, 704
                  sra          t0, s5, s9
                  xor          t3, a4, ra
                  c.mv         t1, s5
                  lui          t2, 915777
                  xori         s10, t1, 1562
                  c.andi       a2, -1
                  mulh         sp, t5, t4
                  c.mv         t0, t4
                  andi         a5, s11, -1909
                  c.addi16sp   sp, -16
                  lui          sp, 1032658
                  c.add        s3, s10
                  addi         sp, s10, -99
                  sltiu        sp, a3, 1432
                  remu         s2, tp, s11
                  srai         t1, t5, 12
                  addi         t2, a1, -398
                  c.srli       a2, 28
                  c.andi       a5, 7
                  sub          t5, s2, s7
                  c.nop
                  mulhu        s4, t2, t0
                  nop
                  sll          zero, zero, ra
                  c.srai       a0, 14
                  c.addi4spn   a2, sp, 528
                  rem          zero, s11, s0
                  c.mv         s2, a5
                  mulhsu       s9, s6, s4
                  c.and        a2, s1
                  mulh         t1, t4, s8
                  srai         ra, s2, 10
                  andi         s4, a0, 1071
                  lui          s4, 325621
                  c.or         s0, a0
                  slt          s5, t1, a4
                  mulhsu       a7, a2, s10
                  slt          ra, s4, t5
                  srl          ra, zero, s0
                  nop
                  c.mv         s4, a0
                  c.sub        a5, a2
                  add          a2, ra, a0
                  c.addi       s7, 17
                  c.andi       a5, 1
                  srli         a0, a5, 28
                  divu         t4, s7, s6
                  rem          s11, t6, a4
                  c.add        gp, tp
                  sub          t5, s5, s10
                  mulhu        sp, t3, a5
                  c.sub        a5, a2
                  c.add        s1, s2
                  rem          t5, s5, zero
                  srl          sp, t6, t1
                  mul          a2, a5, s8
                  xori         s1, s0, 84
                  nop
                  mul          s5, t5, a1
                  and          s2, sp, a5
                  nop
                  c.lui        s6, 28
                  mulhsu       s5, s0, s2
                  addi         s9, a6, -258
                  srli         s6, s5, 25
                  sub          ra, a2, s4
                  sltu         s3, a0, s7
                  c.mv         a7, s5
                  and          s9, t2, tp
                  c.addi16sp   sp, 416
                  c.xor        a2, s1
                  c.add        s8, s10
                  rem          s4, s5, a0
                  ori          s2, s4, -1625
                  div          s7, a3, t1
                  c.or         a0, a1
                  sltiu        t0, t6, -789
                  add          s7, sp, s3
                  ori          t5, zero, 1242
                  mulh         s8, a7, s2
                  srli         sp, a6, 24
                  c.and        a1, a0
                  c.sub        a4, a2
                  sll          s7, a2, a6
                  c.lui        a6, 12
                  srli         t4, s6, 13
                  c.mv         s11, s10
                  srli         s5, sp, 25
                  c.sub        a5, a2
                  slli         s6, a1, 26
                  srl          s4, s4, s3
                  xori         s10, s4, 66
                  mulh         a7, s1, gp
                  divu         gp, a5, s10
                  c.addi4spn   a2, sp, 928
                  mulhsu       s1, t0, zero
                  c.and        s0, a0
                  srli         s1, s7, 12
                  auipc        a0, 202181
                  c.li         a7, 23
                  sub          s11, a3, ra
                  sltiu        s0, a5, -4
                  c.or         a5, a2
                  mulhu        s10, sp, a5
                  c.addi4spn   a2, sp, 64
                  c.mv         t0, a0
                  c.srli       a5, 31
                  andi         sp, sp, -693
                  or           t4, s5, a5
                  c.addi4spn   a1, sp, 80
                  c.andi       a5, 22
                  remu         a0, s0, a7
                  c.srli       a2, 3
                  srli         sp, a7, 30
                  mulh         t0, a5, t0
                  sll          a1, a2, t3
                  or           s0, s5, sp
                  srl          s9, s6, s11
                  c.and        a0, a5
                  c.lui        t0, 8
                  auipc        t0, 977079
                  c.nop
                  c.srai       a5, 26
                  andi         a2, sp, -129
                  srai         s4, ra, 29
                  lui          a4, 507726
                  mul          s11, t6, t5
                  c.slli       a2, 11
                  rem          s2, t3, a0
                  srai         s2, t4, 0
                  c.lui        t0, 21
                  andi         t2, t6, 1531
                  c.sub        a5, a3
                  addi         sp, a6, 828
                  mulh         t2, tp, s4
                  addi         a6, s7, -1789
                  c.nop
                  lui          ra, 25636
                  c.slli       t2, 27
                  rem          t0, a5, s6
                  c.lui        s6, 23
                  slti         s11, t3, -1878
                  c.xor        s0, a3
                  sra          s10, a5, s0
                  slti         t3, a0, -743
                  mulhsu       s11, t1, t4
                  add          a1, s6, s4
                  andi         a0, s2, 402
                  sltu         s0, s5, s3
                  remu         t0, a7, tp
                  c.and        a0, a0
                  remu         s10, gp, t2
                  c.lui        a6, 27
                  remu         sp, s6, s1
                  c.slli       a0, 22
                  c.addi16sp   sp, 32
                  xori         s11, a5, 1414
                  slli         s2, s9, 24
                  sltiu        t1, s5, -1016
                  slti         a2, t2, 1082
                  sltiu        t2, a1, -1754
                  c.sub        a5, a4
                  c.and        a2, s1
                  sltu         s8, ra, sp
                  slti         a5, tp, -792
                  c.addi4spn   a5, sp, 960
                  c.mv         t1, s7
                  c.xor        s1, a5
                  c.mv         a2, s3
                  mulhsu       s2, s6, s5
                  c.sub        s1, a4
                  remu         s11, a0, s0
                  divu         a5, t5, s1
                  srl          a1, s10, s5
                  div          ra, a5, s1
                  slli         s4, t2, 12
                  rem          t5, zero, s0
                  lui          s10, 708587
                  c.andi       a5, 8
                  sltu         t0, a7, zero
                  sub          s4, s1, sp
                  slti         gp, a7, -1403
                  andi         s10, a6, 133
                  sra          gp, s0, t0
                  div          t4, s1, a7
                  c.mv         a1, a6
                  sra          gp, a2, s7
                  sll          a0, zero, t6
                  c.nop
                  mul          t4, zero, s5
                  sltu         gp, t3, t2
                  mulh         a5, a7, t5
                  c.andi       a2, 8
                  c.li         gp, 17
                  andi         s5, t6, 1643
                  andi         s11, s10, -367
                  c.xor        s0, a5
                  c.lui        t1, 10
                  srai         s8, a4, 16
                  sltiu        t5, t2, -897
                  c.mv         t1, a3
                  auipc        t1, 513718
                  c.xor        s0, a1
                  c.lui        t0, 21
                  nop
                  c.or         s0, a1
                  ori          t3, t6, -1937
                  mulhsu       t1, a7, ra
                  srli         t0, t5, 6
                  divu         s6, sp, s9
                  sub          t2, s2, s9
                  div          t1, s5, s5
                  sub          s8, a7, s7
                  slt          s9, gp, a3
                  c.li         t2, 21
                  c.and        a1, s0
                  sll          s4, a1, zero
                  c.li         s0, 17
                  addi         s10, s11, -1651
                  mulhsu       t2, s8, s10
                  c.slli       t4, 19
                  slli         t0, a4, 8
                  c.add        s6, s3
                  c.nop
                  c.nop
                  mul          s8, a2, t1
                  c.li         a2, -1
                  sub          sp, a6, s0
                  mulhsu       a1, a5, s10
                  add          s7, s2, t1
                  slli         t4, a0, 0
                  c.srli       a0, 17
                  c.nop
                  slti         s0, t4, 268
                  c.addi4spn   a4, sp, 544
                  andi         s3, s6, -1722
                  lui          sp, 618798
                  c.addi16sp   sp, -16
                  divu         s10, ra, s4
                  slti         s8, a1, -1355
                  srl          a6, s7, a2
                  c.sub        a0, a5
                  c.nop
                  mulhu        t3, s3, t1
                  slt          s6, a4, a4
                  sltu         s2, s9, t4
                  rem          s2, a1, s11
                  addi         t5, a1, 1536
                  c.sub        a0, a4
                  c.nop
                  c.srli       a4, 4
                  or           a7, a5, s11
                  mulhsu       a6, s11, a2
                  auipc        a5, 924466
                  xori         s10, a5, 1111
                  c.sub        s0, s1
                  nop
                  slli         t5, t5, 7
                  remu         a6, s5, s11
                  c.addi16sp   sp, 176
                  sltu         a1, t5, s2
                  srl          ra, zero, s7
                  slti         s4, a1, -1901
                  sll          t3, t6, a1
                  mulhsu       a4, a7, a7
                  ori          s11, s7, 381
                  c.addi16sp   sp, -16
                  c.slli       t1, 14
                  slti         t2, t6, 1940
                  or           gp, a3, s0
                  c.xor        a2, a5
                  c.or         a5, s1
                  addi         a0, a2, 82
                  c.andi       a4, 25
                  c.and        s0, s1
                  slli         t4, t0, 14
                  c.nop
                  nop
                  ori          s0, s3, 824
                  c.addi       a2, -1
                  xor          a4, t3, a3
                  c.mv         a6, s10
                  c.add        gp, a4
                  sltiu        ra, s5, 2
                  sub          sp, t5, t0
                  c.li         t3, 23
                  div          zero, a4, s0
                  mul          t2, t6, a0
                  c.add        s8, gp
                  add          a7, s11, s1
                  c.addi16sp   sp, 320
                  sub          zero, t3, t0
                  c.addi4spn   a5, sp, 192
                  c.addi       a2, -1
                  sub          zero, a1, tp
                  mulhu        t4, s10, s7
                  srai         s4, a1, 16
                  srai         s4, t2, 21
                  sub          s7, t1, a7
                  mul          s9, s0, sp
                  add          a0, s9, t5
                  c.addi       a6, 31
                  xor          a4, s4, t1
                  c.and        s1, a0
                  sub          s11, s1, a1
                  and          t2, a6, t6
                  c.addi       t2, 5
                  sll          t2, s1, s11
                  nop
                  srai         a2, t4, 17
                  c.addi16sp   sp, 400
                  sra          s7, s9, s1
                  slti         a6, s5, -634
                  sll          sp, t4, t3
                  sltiu        a6, s8, -90
                  c.sub        a1, a1
                  slt          a2, zero, t5
                  c.or         s1, a1
                  c.sub        a5, a2
                  c.li         t0, 18
                  c.xor        a5, a4
                  mulhu        s11, a6, t6
                  c.sub        a1, a0
                  c.and        a0, a0
                  add          s2, s6, t1
                  slti         s11, t6, 2026
                  c.add        a4, s5
                  c.nop
                  c.add        ra, s10
                  div          a4, s7, gp
                  addi         s0, t2, -947
                  c.or         a1, a1
                  slt          a1, a3, a3
                  sra          a6, zero, a5
                  c.addi16sp   sp, 496
                  c.srai       a2, 22
                  c.srai       a4, 16
                  c.and        s0, a3
                  sll          t3, s9, t5
                  sra          a1, zero, t2
                  sll          s2, a4, t0
                  auipc        zero, 339999
                  mul          t5, t4, s6
                  mulh         s0, s5, t6
                  c.srli       a4, 22
                  c.andi       a2, 9
                  remu         zero, a5, t3
                  c.or         s1, a1
                  nop
                  remu         s5, a3, s3
                  xori         s0, sp, -716
                  mulhsu       s1, t3, s0
                  c.slli       ra, 21
                  sub          s4, s11, a0
                  c.slli       t5, 18
                  c.addi16sp   sp, -16
                  slti         s7, a1, 112
                  div          s2, a0, tp
                  c.sub        s0, a1
                  c.li         a0, 3
                  c.or         s1, s0
                  mulhu        s2, zero, a0
                  add          s3, a4, zero
                  xor          s6, sp, gp
                  c.sub        a0, a3
                  add          a5, s1, t4
                  c.srli       s0, 19
                  nop
                  srli         s0, zero, 18
                  sll          t2, a0, tp
                  andi         s11, a1, -1391
                  rem          t0, s10, a1
                  c.mv         s0, t1
                  c.add        s8, tp
                  mulh         s6, zero, a7
                  c.lui        a0, 14
                  c.srai       a5, 13
                  and          a4, a0, a1
                  sltu         s7, a3, t2
                  slli         zero, tp, 13
                  c.srli       s1, 24
                  srli         t4, s3, 19
                  c.lui        s5, 2
                  remu         s0, t2, s6
                  sra          a0, s4, a5
                  rem          a6, s4, t2
                  c.nop
                  lui          a5, 450491
                  c.mv         a0, s0
                  srai         gp, ra, 28
                  xor          s9, s3, t5
                  c.addi16sp   sp, -16
                  srli         a5, a2, 14
                  andi         a1, s3, -949
                  c.addi4spn   a0, sp, 640
                  sra          zero, s6, a5
                  xor          s7, t1, s0
                  srli         s0, t1, 10
                  sltiu        sp, t4, 391
                  c.addi4spn   a4, sp, 848
                  c.slli       s2, 18
                  c.xor        a5, a2
                  c.addi16sp   sp, 320
                  c.srli       a1, 3
                  sra          gp, a5, zero
                  sll          t3, s9, s2
                  srli         t1, a1, 12
                  sra          a5, s6, t2
                  mulhsu       gp, a6, a4
                  srai         a2, t1, 16
                  c.li         s0, 24
                  c.addi       s7, 24
                  auipc        s11, 581555
                  rem          t2, s7, a5
                  or           s3, a0, ra
                  sltu         s9, a7, s1
                  nop
                  srli         a7, t4, 27
                  sub          s9, s2, t5
                  divu         s7, s1, tp
                  slt          t0, a1, t4
                  andi         t4, t2, -1078
                  or           a5, s3, t6
                  sub          zero, s2, s3
                  sll          s9, s9, a5
                  addi         a5, a2, 972
                  div          a1, a7, s11
                  mulh         sp, t0, s11
                  slti         s2, s5, 1262
                  c.andi       s0, -1
                  sltu         t1, a6, s11
                  mul          zero, s10, a7
                  sll          zero, s7, t0
                  divu         s7, a6, s5
                  div          a2, a3, t1
                  c.or         a5, s1
                  sltu         s3, s6, s6
                  sll          a1, s8, s10
                  and          s7, s5, t0
                  add          a4, s11, a1
                  slti         t1, s7, -1301
                  c.nop
                  rem          a1, a4, s10
                  lui          t1, 176676
                  auipc        gp, 644078
                  c.slli       s1, 13
                  add          t1, s2, ra
                  c.addi4spn   a2, sp, 784
                  c.li         t2, -1
                  c.nop
                  sltu         t4, sp, s11
                  c.add        t3, s8
                  c.xor        a1, a2
                  auipc        s3, 17065
                  divu         a5, tp, s2
                  add          s11, s9, zero
                  ori          gp, s6, 1406
                  c.and        a2, a0
                  andi         a2, a5, 107
                  srai         sp, t0, 28
                  divu         ra, s10, t4
                  rem          a0, t5, a3
                  or           t1, s10, gp
                  c.and        a0, s1
                  mulhu        zero, a4, a7
                  c.sub        s1, a2
                  c.or         a2, a3
                  lui          s11, 298602
                  auipc        s0, 49098
                  srai         t2, t3, 1
                  auipc        a5, 92437
                  nop
                  remu         s4, t3, t1
                  sltiu        s8, s0, -546
                  div          a4, a1, s4
                  slli         s11, zero, 14
                  or           s6, s7, sp
                  c.xor        a0, a1
                  c.add        s5, s4
                  sra          t0, a6, s2
                  c.xor        a2, a0
                  or           s2, s4, ra
                  c.li         sp, -1
                  slt          t3, t5, s0
                  ori          t3, sp, -376
                  c.srli       s1, 23
                  rem          a1, zero, s1
                  srai         t3, a2, 3
                  nop
                  xori         a2, s9, -46
                  c.addi       a0, -1
                  srl          a4, a1, gp
                  c.mv         a7, s1
                  srai         s6, s9, 9
                  remu         s3, s1, t1
                  and          s2, a2, a4
                  slti         s0, s8, 201
                  andi         t2, a4, -1090
                  div          t4, a0, t1
                  nop
                  c.srai       a0, 27
                  nop
                  xor          s0, t6, a5
                  c.addi       a4, 1
                  c.addi       s1, -1
                  c.slli       a1, 2
                  mulh         s10, a4, a7
                  c.srai       a2, 8
                  mulhu        t1, t1, t4
                  c.addi16sp   sp, -16
                  srli         a2, s7, 29
                  divu         t1, a5, t4
                  mul          a1, s10, a5
                  add          t1, a5, s9
                  c.li         t2, -1
                  lui          s4, 630823
                  mulhu        a6, a1, a3
                  c.and        s0, a5
                  c.add        t4, a3
                  sra          gp, t2, sp
                  and          t5, zero, t4
                  c.andi       a2, 3
                  srl          s4, a3, s6
                  c.lui        t4, 31
                  andi         s5, sp, -365
                  srl          s5, ra, s4
                  c.nop
                  c.srli       s1, 29
                  c.nop
                  c.andi       s0, 10
                  auipc        a0, 269995
                  c.srai       s1, 24
                  c.addi16sp   sp, 112
                  slli         s6, s0, 31
                  sll          t0, t4, a5
                  c.slli       s6, 3
                  c.srli       a5, 30
                  c.or         a2, a0
                  rem          t0, s4, s2
                  c.srli       a5, 4
                  c.addi       t4, 21
                  xor          s5, t1, s1
                  srai         t1, t1, 30
                  c.addi4spn   s1, sp, 560
                  mulh         zero, a7, s2
                  xori         t1, s9, -377
                  mulhu        a5, a5, t0
                  slt          a1, tp, s7
                  srl          a5, t5, t6
                  c.and        a0, s0
                  slti         s3, a2, -1711
                  sltu         s0, gp, s10
                  sltiu        s11, s7, 924
                  c.addi16sp   sp, 384
                  sra          s8, s0, a1
                  c.andi       s0, -1
                  sltiu        s4, t0, 1953
                  rem          gp, a4, t6
                  c.addi16sp   sp, -16
                  divu         s0, s1, t5
                  or           a2, s5, a6
                  remu         zero, s7, a0
                  mulh         s8, s9, ra
                  remu         gp, s2, a2
                  c.nop
                  c.slli       t0, 24
                  andi         t4, s9, 1895
                  remu         s8, a5, a0
                  srl          t4, s10, t5
                  c.addi16sp   sp, 336
                  nop
                  c.mv         a7, a7
                  c.addi       sp, -1
                  auipc        t4, 406417
                  slt          a6, s9, s2
                  c.or         a2, s1
                  mulhu        a4, a4, ra
                  addi         gp, s3, 837
                  auipc        s10, 331935
                  c.li         s2, -1
                  rem          t0, s11, s2
                  sub          s3, s0, a6
                  c.srli       s0, 2
                  c.srli       s1, 1
                  srai         a0, s6, 29
                  add          t2, a3, a5
                  remu         s2, t3, t2
                  mulhsu       s5, s8, t2
                  sub          a0, s3, s4
                  mulhsu       a2, a5, s8
                  c.and        s0, s1
                  andi         t0, s2, 1567
                  c.mv         s4, s6
                  slti         t3, s2, -1235
                  c.lui        a4, 15
                  c.nop
                  sll          s4, s4, s7
                  c.add        s8, s3
                  rem          s10, a7, t4
                  xori         a7, t4, -170
                  c.andi       a0, 10
                  sltu         a5, s4, a2
                  ori          a0, s1, 1075
                  c.li         s9, 13
                  xori         s2, s8, 322
                  sll          s10, s7, t2
                  c.addi4spn   s1, sp, 912
                  c.lui        t2, 26
                  c.srli       a0, 14
                  c.mv         s11, t4
                  slli         a5, t2, 0
                  slli         a1, s8, 27
                  c.mv         a7, s8
                  sra          a6, s0, a7
                  sub          s9, t4, t2
                  srai         s1, s5, 8
                  c.srli       s1, 1
                  div          zero, s4, a1
                  divu         s10, a3, s4
                  srai         t5, s10, 30
                  and          s6, s11, a6
                  div          s2, tp, zero
                  sltiu        s4, a2, -559
                  c.addi16sp   sp, -16
                  xori         s2, a3, 515
                  sltu         s7, s8, s11
                  c.addi16sp   sp, -16
                  sltiu        s9, s8, -1297
                  c.andi       a1, -1
                  c.slli       a2, 5
                  slli         gp, s3, 27
                  slli         s0, a6, 14
                  divu         s2, t0, s0
                  c.or         s1, a3
                  c.andi       a1, -1
                  srai         a2, s5, 0
                  add          s10, s0, t1
                  c.xor        a2, a0
                  slt          a1, s8, s1
                  c.srai       a2, 20
                  div          s2, s0, a4
                  sub          s7, zero, a7
                  c.addi4spn   s1, sp, 112
                  sra          ra, tp, zero
                  sll          t2, a6, s7
                  mul          a2, t3, t0
                  mulhsu       t0, a5, gp
                  c.srli       a5, 13
                  sltiu        t4, s1, 1699
                  c.mv         a6, a6
                  c.addi4spn   a5, sp, 48
                  c.xor        a5, a5
                  mulhu        s7, s0, s11
                  remu         t0, a0, tp
                  c.addi       gp, 3
                  slt          s7, s5, t5
                  c.add        s9, tp
                  sll          ra, a0, tp
                  xori         s2, s0, 720
                  c.srli       a5, 5
                  mulhu        s9, sp, s0
                  mulh         a4, t3, t2
                  srl          t2, a1, ra
                  c.sub        a1, a0
                  ori          s10, a3, 284
                  c.slli       s5, 8
                  srai         s8, sp, 20
                  c.li         t2, -1
                  mul          t4, s10, zero
                  mulhu        a6, t0, gp
                  auipc        t2, 369526
                  c.addi16sp   sp, -16
                  addi         s10, a5, 1232
                  lui          s7, 594275
                  nop
                  mulhu        t4, s4, gp
                  xori         s10, t2, -1601
                  c.nop
                  div          zero, t1, s1
                  c.and        s1, a4
                  and          s2, t0, zero
                  c.lui        s1, 25
                  c.addi       a2, 13
                  srai         a7, t0, 16
                  slti         s1, a7, 514
                  slti         s10, t2, -79
                  srli         s6, t6, 30
                  mulhu        a0, t4, sp
                  mulhsu       gp, s10, tp
                  add          a6, s1, s7
                  lui          s3, 212135
                  slti         s0, t5, 272
                  c.nop
                  c.sub        a0, s0
                  c.lui        a4, 21
                  c.nop
                  c.srai       a4, 2
                  c.xor        a4, a0
                  srl          gp, a7, sp
                  c.nop
                  slt          s5, s4, ra
                  slt          t3, a1, ra
                  c.nop
                  mulh         ra, zero, a2
                  and          a6, s6, a2
                  sltiu        a7, ra, 1741
                  ori          t0, a6, 1940
                  sra          a7, zero, a0
                  slti         a1, s5, -881
                  or           s0, t6, s7
                  c.li         s0, -1
                  c.nop
                  or           gp, s1, t3
                  c.srli       s1, 30
                  c.lui        a1, 11
                  c.srai       s1, 3
                  c.srli       a5, 2
                  mulh         s7, t4, a1
                  mulhsu       t1, ra, t1
                  c.andi       a1, -1
                  c.xor        a4, a0
                  lui          s2, 281636
                  sll          s6, sp, s2
                  c.mv         s7, a4
                  slt          gp, a1, a2
                  sub          zero, s3, s9
                  mulh         a2, s1, a1
                  mulhu        t1, a4, t4
                  c.andi       a1, 22
                  sll          a2, t4, s4
                  slli         s9, s4, 22
                  sub          zero, s0, tp
                  c.srli       a4, 9
                  c.srli       a0, 22
                  add          s9, s8, ra
                  divu         sp, t0, s4
                  remu         a5, s1, a5
                  ori          t2, ra, -1350
                  slt          s5, s10, t6
                  auipc        s1, 791393
                  divu         ra, a3, t3
                  c.srli       a5, 27
                  c.or         a2, a5
                  sltiu        s8, a0, -1361
                  c.lui        a2, 12
                  c.srai       s0, 3
                  c.srli       a5, 18
                  c.or         a1, a3
                  ori          s10, a4, -695
                  and          a6, s5, a7
                  srli         s11, t5, 20
                  xor          s7, a2, a5
                  nop
                  c.srli       a2, 24
                  sra          s1, s4, t5
                  div          s11, t0, t5
                  slli         t1, s9, 30
                  c.addi4spn   a4, sp, 288
                  sub          ra, s8, a7
                  c.and        s0, a4
                  c.lui        ra, 3
                  srli         a4, a7, 5
                  srl          s9, a6, gp
                  remu         t3, a1, tp
                  xor          s11, t2, t5
                  c.andi       a4, 18
                  rem          a5, t1, zero
                  sub          t1, s7, a3
                  or           s7, s11, ra
                  mulhsu       a6, t2, a4
                  slti         a5, s0, -918
                  rem          ra, t4, s0
                  remu         s4, a1, s11
                  srl          s6, s9, t0
                  c.mv         s9, a3
                  sll          t0, s0, s7
                  c.sub        a0, a4
                  ori          s8, s11, -201
                  c.xor        s1, s0
                  lui          t4, 735843
                  nop
                  c.nop
                  slli         a0, zero, 0
                  c.srli       a0, 22
                  sra          zero, s0, a3
                  slt          a2, sp, a5
                  slti         s0, s11, -1138
                  sll          s1, gp, s5
                  slti         s1, s11, 226
                  mul          t1, t6, a0
                  mulhu        a7, t4, t2
                  nop
                  c.xor        s0, a4
                  srai         a5, t4, 24
                  sltiu        ra, a5, 2018
                  c.addi16sp   sp, -16
                  c.add        s5, s2
                  mulhsu       a5, s4, a5
                  mul          a6, t1, s10
                  c.or         s0, a1
                  div          s11, zero, t0
                  mul          s5, tp, a0
                  mulhsu       s2, ra, s9
                  sub          a4, t2, a0
                  c.add        t1, a1
                  c.andi       a1, -1
                  srai         a4, tp, 22
                  div          s0, ra, s10
                  c.and        a0, s0
                  sltiu        a2, s4, 1521
                  or           a0, s8, s1
                  nop
                  div          ra, s7, a2
                  c.add        s0, gp
                  c.or         a2, a0
                  mulh         ra, s5, s4
                  xor          s10, a5, ra
                  c.srai       a5, 29
                  c.and        s0, a1
                  lui          t3, 572769
                  mul          s9, t2, s5
                  c.mv         t1, a0
                  c.mv         a0, s8
                  xor          s11, a1, s3
                  and          t5, t6, s0
                  c.mv         a0, t6
                  remu         s0, a2, s6
                  c.srai       a0, 5
                  c.li         t1, -1
                  div          s0, ra, s6
                  divu         t4, s0, s8
                  c.addi16sp   sp, -16
                  addi         t0, a6, 1308
                  c.sub        s1, a1
                  c.or         a2, a2
                  c.or         a2, s0
                  slli         t2, t3, 0
                  rem          s2, s8, t5
                  mulhsu       a5, s9, t6
                  mul          s6, gp, t0
                  c.slli       s4, 13
                  srl          s11, s7, s7
                  auipc        t2, 197861
                  c.add        s10, a7
                  c.addi4spn   a4, sp, 48
                  c.or         a5, a2
                  andi         t4, s5, 1555
                  mulhsu       s1, a6, s10
                  slli         a4, a6, 19
                  or           s1, a0, gp
                  auipc        sp, 506573
                  sll          zero, a3, s10
                  lui          a5, 784824
                  c.srai       a2, 20
                  sra          s4, a6, s6
                  mulh         zero, tp, s7
                  addi         s1, s0, -1822
                  sub          s11, s2, a1
                  slti         a5, t1, 258
                  srli         s10, t6, 8
                  c.srli       a0, 5
                  sltu         a5, s10, t2
                  sltiu        a7, a0, 386
                  mul          a2, t0, a4
                  mul          s8, a6, t6
                  c.or         s1, a4
                  xor          a5, a2, t0
                  c.srai       a5, 6
                  slt          t0, s4, s7
                  c.or         a5, s0
                  sltu         s8, s2, t2
                  c.slli       s6, 27
                  c.xor        a5, s0
                  c.addi4spn   s1, sp, 448
                  andi         t2, tp, -2001
                  c.and        a2, a1
                  sltiu        t0, t1, 1837
                  xor          s10, a6, t2
                  add          sp, s9, s6
                  c.addi16sp   sp, 160
                  ori          t1, s3, -1903
                  c.addi16sp   sp, 224
                  c.and        s1, a4
                  xor          t0, s7, t5
                  slt          s3, t4, ra
                  c.addi4spn   s1, sp, 224
                  slti         s11, zero, 396
                  c.srai       a2, 20
                  c.add        sp, t5
                  xori         ra, t4, 258
                  andi         s5, s0, -1464
                  lui          a7, 556106
                  sltu         a6, a2, s2
                  remu         s8, t6, tp
                  c.addi4spn   s1, sp, 448
                  c.addi       t2, -1
                  c.and        a1, a2
                  mulhsu       s3, a1, a1
                  c.srai       s0, 19
                  or           sp, gp, s1
                  divu         t5, a2, a3
                  c.or         a4, a1
                  auipc        s0, 50659
                  sub          t1, a3, s7
                  slli         s0, s5, 27
                  xori         a1, s5, 521
                  sub          t3, sp, t6
                  sltiu        s1, tp, -334
                  srli         s8, s7, 24
                  c.srli       a0, 6
                  c.mv         s9, t5
                  and          t0, t2, tp
                  sltiu        s3, sp, 1673
                  c.andi       a0, -1
                  ori          a6, s5, 1432
                  srli         t4, a7, 0
                  divu         t1, sp, s0
                  c.srai       s0, 19
                  lui          s5, 24730
                  addi         s6, t0, 1314
                  lui          t3, 823889
                  c.mv         a4, s9
                  xor          a5, s8, a4
                  sltu         s1, a5, a1
                  c.lui        t5, 28
                  c.mv         a2, t5
                  mulh         s7, s11, ra
                  srli         s1, ra, 2
                  nop
                  slt          a0, s11, a3
                  srli         s5, a4, 24
                  c.srai       a5, 12
                  andi         s8, t0, 694
                  sra          a2, s2, a6
                  c.li         s2, 17
                  slt          s10, a7, s11
                  mulhsu       gp, s6, s1
                  lui          ra, 326221
                  srli         a5, t1, 10
                  c.and        a2, s1
                  sltu         s3, a4, s0
                  c.srai       a4, 3
                  c.mv         t4, ra
                  c.addi4spn   a4, sp, 640
                  slti         s7, a6, -1438
                  remu         s1, t6, a1
                  add          s9, s0, s8
                  mulhsu       sp, t4, ra
                  sltiu        a6, s6, -1236
                  div          s0, s9, s2
                  c.srli       a5, 12
                  c.add        t5, ra
                  ori          s0, s8, 2047
                  sltu         a6, t0, s10
                  sll          t5, t2, t6
                  c.andi       s0, -1
                  div          s8, tp, s11
                  c.addi       a5, -1
                  add          s11, s8, s6
                  auipc        s11, 888449
                  c.srai       s1, 18
                  c.srli       a5, 24
                  sll          a2, a4, ra
                  mulhu        s4, s9, s11
                  c.li         s4, 0
                  srai         s10, a6, 4
                  div          a4, a2, a7
                  c.addi4spn   s1, sp, 912
                  mulhu        a1, s11, s6
                  andi         a7, t4, -1433
                  rem          s7, s3, t2
                  c.slli       s0, 6
                  slt          a6, zero, a6
                  mulhu        t0, s7, t5
                  c.addi       a4, -1
                  c.addi4spn   a5, sp, 720
                  srli         s4, s10, 24
                  srli         s3, s7, 15
                  slti         t3, s7, -1300
                  sll          a7, s0, a2
                  srl          s9, a0, s0
                  c.addi4spn   a2, sp, 128
                  srli         a4, a5, 2
                  rem          s8, a2, a3
                  xori         s9, t0, -1373
                  andi         a6, s3, -1057
                  srai         gp, a6, 15
                  c.addi       s11, 15
                  or           t0, t4, s7
                  c.mv         sp, s8
                  c.addi16sp   sp, 496
                  sltiu        t2, zero, -1593
                  c.srli       a1, 31
                  slt          sp, tp, t3
                  c.andi       a2, -1
                  mulh         s11, s6, a1
                  srai         a4, s5, 6
                  srl          sp, t1, s3
                  mulh         t4, a2, a7
                  c.slli       t4, 21
                  sra          zero, t0, s9
                  srl          s2, a0, s0
                  mulhu        s11, sp, a6
                  mulhu        t4, s7, a0
                  srli         s8, s5, 2
                  xori         s1, a3, -1328
                  c.srai       a5, 5
                  sra          t0, sp, s2
                  c.andi       a4, -1
                  c.mv         a7, sp
                  c.xor        s1, s1
                  srai         t3, s0, 11
                  srai         s1, a3, 27
                  div          t2, a3, s6
                  sra          a2, s5, t6
                  c.add        a6, s11
                  mul          s1, s0, t0
                  slli         a7, a1, 8
                  div          a2, a1, a5
                  srli         t1, s11, 3
                  sltu         s8, a3, a1
                  or           s0, s1, s3
                  sra          s1, s6, s2
                  c.addi4spn   a1, sp, 992
                  lui          s8, 306247
                  c.srli       a0, 23
                  c.mv         t0, s9
                  c.mv         s4, sp
                  and          a6, t2, s0
                  rem          t5, zero, a0
                  slti         s11, sp, 984
                  addi         a4, s3, 1112
                  mul          t4, s7, a5
                  c.srai       a2, 1
                  slti         a4, t6, 1613
                  mul          a1, s11, s9
                  c.srli       s1, 20
                  mul          t0, s1, a0
                  sltiu        a0, zero, -303
                  c.slli       s7, 3
                  sra          a7, s9, a5
                  srai         s4, s10, 26
                  srli         s9, s0, 7
                  srai         s6, s3, 21
                  nop
                  sll          t2, s4, a5
                  xor          a2, s6, s6
                  add          s1, s8, t4
                  rem          s6, a3, gp
                  slli         s8, s11, 10
                  c.srli       a5, 31
                  c.li         a1, 13
                  auipc        s4, 370516
                  c.srai       s1, 10
                  mul          t4, s4, s7
                  andi         t1, t2, -1789
                  mulhsu       a0, s1, s2
                  slt          t1, ra, s5
                  c.lui        t0, 7
                  c.li         s1, -1
                  or           sp, a3, s4
                  lui          s6, 756302
                  ori          s8, t0, 1687
                  sltu         zero, t2, gp
                  remu         a7, a6, t0
                  sltu         a1, t5, s9
                  mulhsu       a4, a2, s11
                  sra          s2, s5, a1
                  addi         t2, s5, -645
                  slti         s3, sp, -1294
                  or           a7, ra, s3
                  slli         s3, t3, 30
                  andi         t1, sp, -1792
                  c.sub        s0, a2
                  addi         s8, a2, 1443
                  c.addi4spn   a2, sp, 160
                  c.andi       a5, 0
                  addi         s5, a6, 1717
                  mulh         a0, s5, t3
                  add          gp, t0, s6
                  c.sub        s0, s1
                  srli         t4, sp, 19
                  c.addi4spn   a2, sp, 448
                  c.addi4spn   a0, sp, 784
                  c.lui        s0, 17
                  sub          a2, tp, s4
                  c.srai       a5, 13
                  sltiu        a2, s4, 1616
                  slt          s4, s6, a4
                  mul          sp, ra, a1
                  c.add        s11, s0
                  lui          t1, 620417
                  div          t0, s11, tp
                  sub          zero, s1, a6
                  div          s11, a0, a6
                  c.lui        a0, 19
                  c.mv         a6, s7
                  c.nop
                  c.addi4spn   a1, sp, 688
                  srli         a4, s1, 24
                  sra          t2, s5, a4
                  mulhu        zero, s4, a7
                  lui          a4, 276404
                  mulhsu       s0, s0, s10
                  c.andi       a5, -1
                  nop
                  srai         t4, a1, 4
                  c.sub        s1, s0
                  sltu         t2, s4, a3
                  c.addi       s4, 30
                  mul          s2, s10, t0
                  c.add        a2, a6
                  sltiu        ra, t3, -719
                  c.li         s11, 4
                  srl          s9, t0, a6
                  c.sub        a1, a2
                  c.srai       a5, 24
                  sll          s8, s11, s1
                  sra          s10, s11, s9
                  c.and        a0, a0
                  mulh         ra, a0, s8
                  and          a2, s2, a4
                  c.addi       s5, 4
                  mul          a1, s6, a4
                  c.addi4spn   a0, sp, 240
                  c.addi4spn   a1, sp, 624
                  andi         a1, s9, 1407
                  nop
                  c.lui        s0, 15
                  remu         s0, s4, s7
                  addi         a0, zero, -1514
                  c.mv         s8, s4
                  c.addi16sp   sp, -16
                  sra          s4, a1, sp
                  lui          a2, 849071
                  c.lui        s10, 27
                  c.mv         a2, a7
                  c.nop
                  and          s7, a6, s11
                  sub          zero, ra, a2
                  c.addi16sp   sp, -16
                  divu         s9, t2, t0
                  c.srai       a2, 24
                  mulh         s7, a4, s10
                  mulh         a7, a0, s2
                  sll          s10, s10, s3
                  xor          a1, tp, s5
                  xor          s2, t3, s7
                  c.xor        s0, a2
                  andi         s5, t2, 629
                  sub          a6, t3, s11
                  c.and        a2, a0
                  c.srli       a0, 10
                  c.addi4spn   a2, sp, 432
                  xori         a0, gp, 226
                  c.addi       s1, -1
                  mulh         t4, s1, s8
                  c.addi       s6, -1
                  div          t0, gp, tp
                  mul          s5, a4, s0
                  or           t2, s0, a2
                  andi         a4, a6, 1830
                  c.or         a2, a1
                  xori         s9, t6, -1831
                  auipc        s1, 275189
                  xor          ra, s5, s4
                  mulhsu       s7, t3, t2
                  mulhsu       a2, t4, s0
                  c.addi16sp   sp, -16
                  slt          s5, s4, tp
                  xori         a6, s1, -1750
                  c.srai       a5, 8
                  or           t2, zero, t4
                  sub          t0, zero, a0
                  mulhsu       a2, a4, sp
                  mul          zero, a5, ra
                  mulh         t4, s11, t4
                  addi         s10, a6, 831
                  ori          a4, zero, 1849
                  srl          gp, t6, s4
                  c.lui        a5, 2
                  slt          a5, a4, s6
                  auipc        a5, 753365
                  c.mv         s2, sp
                  sll          a5, ra, sp
                  c.srli       a1, 23
                  c.addi4spn   a4, sp, 96
                  srli         a2, t4, 24
                  c.sub        s1, a0
                  c.xor        a2, a4
                  add          a2, a1, a5
                  c.xor        a4, s1
                  mulh         s6, tp, s0
                  c.and        a1, a3
                  sltu         s1, s1, s0
                  auipc        a1, 43811
                  xori         t1, t3, -1544
                  mulhsu       a6, a1, zero
                  c.xor        a4, s1
                  slli         a2, sp, 17
                  addi         a2, t1, -1365
                  c.and        a5, a3
                  c.add        s2, a0
                  c.sub        a0, a0
                  nop
                  sub          a2, s1, a2
                  c.addi       a5, 22
                  c.addi       s3, -1
                  c.srai       a5, 11
                  c.or         a4, s0
                  div          a7, gp, t6
                  sltu         s10, s11, s5
                  c.slli       t4, 8
                  c.add        t4, t4
                  sra          a1, s5, s10
                  div          s8, a5, t3
                  c.srli       s1, 20
                  srl          t2, s7, a2
                  srai         s1, a1, 8
                  c.andi       a5, 12
                  mulhsu       s11, t3, s2
                  c.or         s1, a4
                  c.srli       a5, 16
                  srli         a2, sp, 20
                  srl          a0, s2, t3
                  c.addi       sp, 13
                  divu         t4, a5, t3
                  remu         a6, s7, ra
                  c.addi       s6, -1
                  mulhsu       t4, a2, t0
                  sub          a4, ra, t6
                  lui          s11, 960105
                  div          a2, s0, t1
                  sltiu        s11, s7, -1012
                  rem          s2, s5, s9
                  or           s0, a7, a3
                  c.slli       a2, 20
                  remu         s9, a4, s10
                  sub          a2, t5, s8
                  c.andi       a2, -1
                  c.mv         t4, s3
                  or           s6, sp, a7
                  c.mv         t2, a7
                  srai         sp, s7, 3
                  nop
                  auipc        s2, 171979
                  c.mv         s7, t2
                  slti         s5, s7, 1058
                  mulhu        s5, t4, s10
                  nop
                  auipc        t1, 310741
                  c.add        t0, s8
                  c.srai       a5, 26
                  c.andi       a2, -1
                  slti         s10, a3, 866
                  srli         t5, s8, 12
                  divu         s5, t2, gp
                  nop
                  mulhu        t4, sp, s10
                  sltiu        a1, s6, 1939
                  sra          s1, s10, zero
                  c.addi4spn   s0, sp, 672
                  slti         ra, a5, 694
                  c.srai       a4, 19
                  srai         s4, s3, 14
                  srai         t2, a4, 21
                  c.nop
                  c.addi4spn   s1, sp, 784
                  c.xor        s1, a5
                  and          t4, a4, t6
                  sub          sp, t0, s11
                  c.srli       a2, 26
                  mulh         s1, s8, s7
                  slt          a2, t3, s0
                  div          t4, a4, s6
                  c.srai       a2, 16
                  c.add        a7, tp
                  nop
                  srli         s11, t6, 2
                  mulh         s5, t1, t3
                  c.srli       s0, 18
                  mul          s4, s7, a5
                  andi         a2, s11, 1850
                  srli         s5, t3, 2
                  slti         gp, s3, 1881
                  and          t0, s3, s8
                  c.li         t5, -1
                  slt          t0, t0, s8
                  c.li         sp, 22
                  slli         ra, zero, 6
                  nop
                  nop
                  c.andi       a2, -1
                  c.and        s1, a0
                  remu         t5, gp, a7
                  c.lui        t4, 14
                  addi         s4, t1, 321
                  c.and        a1, a4
                  c.sub        a5, a2
                  mulhu        s8, sp, s4
                  add          a0, gp, s2
                  srai         a1, a2, 18
                  addi         s4, s2, -44
                  mulh         a5, a7, a6
                  c.li         sp, 14
                  c.addi4spn   a1, sp, 400
                  c.srli       s1, 3
                  mulhsu       s3, sp, t0
                  or           t5, zero, s1
                  sltu         s2, t6, a5
                  sll          a4, s11, a7
                  div          a5, s3, t2
                  c.andi       a0, 19
                  mulhu        a0, tp, zero
                  sra          s2, t0, t4
                  srl          s3, a6, a7
                  srli         a0, sp, 27
                  or           a0, t4, s2
                  slli         a7, a3, 12
                  slli         s10, a1, 14
                  addi         a6, s1, 814
                  c.li         s7, 10
                  slt          s0, a0, gp
                  c.li         s8, -1
                  sltu         t3, s8, a2
                  srli         gp, s9, 10
                  mul          a2, s7, s7
                  c.nop
                  nop
                  xori         t2, s10, 1785
                  divu         s7, s11, t5
                  ori          a5, s1, 185
                  ori          t2, a3, 1630
                  and          t1, tp, s6
                  sltiu        s0, s8, 856
                  nop
                  sll          a1, gp, a2
                  c.sub        a4, a1
                  rem          s0, s6, s9
                  srli         zero, s6, 10
                  lui          s9, 86115
                  c.add        s5, s3
                  c.srli       a5, 8
                  sub          t1, s4, sp
                  srl          s10, s9, a2
                  auipc        sp, 784180
                  c.sub        a4, s1
                  and          t2, a4, a0
                  add          s4, sp, a7
                  c.li         a4, -1
                  mul          s8, gp, a6
                  auipc        zero, 413013
                  slt          t3, s3, s8
                  c.or         s0, a0
                  mulhu        a4, s4, a3
                  c.andi       a1, -1
                  andi         t2, tp, 479
                  xor          gp, s4, t6
                  nop
                  srl          s1, s1, t2
                  xori         s2, tp, 874
                  sub          t1, t0, t0
                  srl          a5, ra, a0
                  c.lui        a1, 19
                  sltu         t2, s9, s8
                  c.lui        s8, 16
                  c.srai       s0, 3
                  c.and        s1, a4
                  c.addi4spn   a4, sp, 304
                  c.addi16sp   sp, 288
                  mul          a1, tp, s10
                  c.mv         ra, t3
                  mul          t0, t0, t0
                  srl          gp, s6, a3
                  srl          t2, t2, s1
                  c.sub        a2, a1
                  ori          s4, t5, -1786
                  add          a5, a4, t6
                  mul          sp, t0, a2
                  c.or         s0, a4
                  and          t1, a5, gp
                  and          ra, s9, s2
                  c.mv         ra, s9
                  xori         a4, t0, -569
                  c.and        s1, a5
                  c.srai       a0, 1
                  sltu         a4, s9, sp
                  c.addi16sp   sp, 432
                  addi         a4, s5, 1459
                  nop
                  and          s6, s3, s6
                  sltu         s10, t3, s3
                  srli         s6, s0, 8
                  sra          gp, s11, a1
                  mul          s8, a6, s1
                  or           s4, s4, tp
                  auipc        s4, 410941
                  xor          gp, t0, zero
                  xor          t0, t5, t2
                  slti         s8, t3, -257
                  srl          s4, t3, t2
                  and          a5, a5, zero
                  sltu         a2, a4, ra
                  srli         s1, t3, 17
                  rem          ra, sp, a0
                  divu         s3, s1, t3
                  mulh         t0, t1, a3
                  c.addi16sp   sp, 96
                  c.nop
                  c.addi4spn   a1, sp, 656
                  c.slli       t5, 1
                  c.add        gp, s3
                  mul          t5, a7, t1
                  sll          a0, a5, a5
                  slli         s11, a0, 26
                  c.addi16sp   sp, 176
                  c.andi       a4, -1
                  c.lui        t4, 23
                  mulh         s6, ra, s7
                  rem          s11, gp, a0
                  c.li         s6, 19
                  lui          s4, 271068
                  or           s9, gp, s6
                  slt          s7, s3, s3
                  sra          s3, a3, s2
                  addi         a0, t0, 115
                  c.add        s0, s11
                  or           t1, a3, t3
                  slli         gp, t2, 7
                  c.li         sp, 8
                  c.nop
                  auipc        a0, 397635
                  andi         s10, s11, -780
                  c.xor        s0, a4
                  slli         a7, t6, 28
                  lui          a1, 491400
                  c.and        s0, s0
                  lui          zero, 627863
                  c.and        a2, a4
                  ori          t4, gp, 1130
                  sra          s5, s6, t2
                  c.li         s1, 26
                  and          t5, a1, s1
                  nop
                  c.or         a1, s0
                  ori          s1, a1, 1486
                  c.add        s7, s1
                  c.andi       a2, 6
                  nop
                  c.addi4spn   a5, sp, 304
                  rem          s6, sp, t2
                  mul          a4, s7, a1
                  c.sub        a5, a2
                  mulhsu       a6, s7, t2
                  andi         t3, t4, -985
                  c.slli       ra, 18
                  slti         s11, s2, 1927
                  mul          a4, t0, t5
                  divu         s4, gp, t1
                  slti         t3, sp, -890
                  mulhsu       t2, a1, t6
                  slli         t4, a0, 30
                  c.andi       a1, -1
                  c.addi16sp   sp, 368
                  srli         s1, a2, 7
                  mul          a7, s9, t0
                  addi         s3, t4, 1236
                  div          a6, s5, s2
                  or           s1, a1, t3
                  lui          t0, 239718
                  add          s4, s10, sp
                  addi         t3, t1, -1500
                  nop
                  c.sub        a4, a2
                  andi         a1, t0, -210
                  ori          a0, s4, 220
                  c.and        s0, s0
                  srai         t1, a4, 15
                  xor          t2, a6, a4
                  c.addi16sp   sp, 448
                  rem          s11, s8, t1
                  mul          s4, tp, s2
                  c.li         s1, -1
                  mulh         s2, s8, s7
                  mulh         gp, s11, t0
                  srl          a5, t0, t0
                  andi         s3, s9, 60
                  addi         s6, s11, -402
                  c.sub        a0, a5
                  xori         t3, t3, -1999
                  and          a4, a0, s2
                  sra          t3, a3, s4
                  andi         zero, s8, 702
                  sll          zero, s11, a6
                  lui          ra, 893708
                  or           s9, ra, a7
                  auipc        t1, 665603
                  slli         ra, s4, 15
                  or           s5, t2, a2
                  c.srai       a5, 19
                  add          a2, s7, s2
                  c.add        a7, a4
                  c.addi4spn   s1, sp, 352
                  xori         a2, t5, -1262
                  or           ra, a5, gp
                  c.addi16sp   sp, 416
                  auipc        t5, 773836
                  remu         s3, s10, s8
                  nop
                  c.srai       a0, 30
                  c.mv         a1, s1
                  and          s1, sp, zero
                  sra          t4, a3, s0
                  c.mv         s2, s11
                  c.srai       s1, 26
                  c.xor        s1, a3
                  c.li         t4, 27
                  srli         gp, a5, 21
                  mulhsu       a4, s8, a5
                  lui          s7, 603182
                  c.addi4spn   s0, sp, 896
                  c.slli       s5, 3
                  c.add        s6, a7
                  c.srli       a5, 4
                  sltu         gp, t6, s8
                  c.li         gp, 12
                  c.or         a1, a2
                  c.mv         t4, s8
                  auipc        a4, 539427
                  xori         sp, s7, 1602
                  c.srli       s1, 23
                  c.srai       s1, 19
                  mul          zero, s11, s10
                  c.srai       s0, 17
                  add          s5, s7, a1
                  c.slli       s3, 1
                  c.slli       s1, 10
                  c.andi       a5, -1
                  mulh         s3, a1, t3
                  slt          gp, a5, a3
                  div          t0, s9, s0
                  sltu         t0, t4, s4
                  c.lui        a1, 7
                  c.li         ra, 21
                  c.andi       s0, -1
                  sll          a5, a3, s5
                  c.srli       a2, 2
                  div          t5, s8, gp
                  sltiu        s11, s3, 1108
                  c.srai       s0, 7
                  xor          s1, a5, t0
                  c.nop
                  srl          t0, t3, s2
                  nop
                  andi         s7, s3, -1386
                  div          s0, s7, t3
                  mulhsu       s7, a6, a7
                  srai         s0, t5, 9
                  slti         a4, s9, -1672
                  c.xor        a0, a1
                  c.mv         sp, s9
                  mulhu        s7, a7, s7
                  sltu         s2, t4, gp
                  mulhsu       t5, a0, a7
                  sltiu        s11, a3, -381
                  c.sub        a5, a4
                  c.nop
                  addi         s6, t3, -54
                  mul          a4, t3, s10
                  divu         t5, tp, zero
                  sltu         ra, t3, s0
                  auipc        s4, 83949
                  slt          t1, s0, a3
                  mulhu        a4, t2, a2
                  slt          gp, sp, zero
                  or           sp, s6, s5
                  andi         s8, s3, 1972
                  mulhu        gp, a2, s11
                  c.lui        s4, 1
                  c.and        a5, s0
                  lui          s7, 264055
                  c.xor        a5, a2
                  c.lui        s8, 13
                  c.nop
                  slli         s0, t5, 18
                  lui          t1, 143052
                  c.addi16sp   sp, -16
                  c.slli       s3, 27
                  c.lui        a0, 23
                  c.srli       s0, 31
                  rem          zero, s0, s8
                  lui          ra, 637043
                  andi         t3, s9, 1225
                  c.srai       a4, 30
                  mulhu        ra, t1, s0
                  sltu         s4, gp, s7
                  slt          s2, t1, a0
                  nop
                  rem          ra, tp, a1
                  sltiu        zero, s7, -1893
                  auipc        t2, 233499
                  srl          s7, s0, s5
                  and          a7, a7, a2
                  sll          s1, a6, a4
                  sra          a7, gp, s10
                  srl          a1, s4, ra
                  lui          s3, 284963
                  c.addi       t0, -1
                  andi         t2, t2, -724
                  remu         sp, s0, ra
                  sltu         ra, s8, ra
                  mul          t5, t6, s8
                  slti         s1, ra, -503
                  and          a1, a5, s6
                  c.srli       a2, 30
                  or           s8, s3, ra
                  c.srli       a1, 2
                  c.addi       t0, 5
                  rem          a5, a2, s8
                  mulh         s6, t5, a4
                  or           s10, tp, s6
                  c.srai       a4, 14
                  xori         s5, a1, -1511
                  div          t1, a0, s3
                  remu         s8, sp, a5
                  c.slli       a5, 16
                  c.nop
                  div          t1, a7, sp
                  lui          gp, 540412
                  c.and        a4, a0
                  c.and        a5, a3
                  and          a4, t0, tp
                  srli         a1, t4, 18
                  srai         t3, t1, 8
                  add          gp, s7, tp
                  sll          s7, ra, s10
                  divu         a2, s11, s9
                  c.lui        ra, 1
                  ori          s3, a6, 67
                  xori         s7, tp, 1804
                  mul          t1, a2, t5
                  mul          sp, t2, gp
                  srai         a6, a6, 18
                  srli         s7, t3, 27
                  c.addi16sp   sp, -16
                  c.srli       a1, 28
                  c.srli       a4, 9
                  srli         s2, s10, 21
                  divu         s7, s9, t6
                  c.add        a4, a2
                  c.li         s5, 9
                  c.lui        s0, 3
                  remu         t0, t4, a6
                  mul          t1, a4, t6
                  c.xor        s1, a0
                  c.slli       t4, 16
                  divu         s3, s1, t6
                  ori          a0, t5, -320
                  rem          s8, a4, s5
                  mul          s11, s7, t5
                  mulh         a2, s9, s4
                  mulhu        s10, a4, a6
                  xor          s11, s7, t5
                  c.xor        s1, a2
                  sra          t0, sp, t6
                  c.slli       t4, 30
                  c.add        sp, a0
                  remu         ra, t1, a0
                  slt          a1, s10, s10
                  mul          s7, t4, a3
                  srai         a4, t3, 21
                  nop
                  ori          a7, s2, 1992
                  srai         s11, s8, 5
                  xor          s6, a6, tp
                  c.addi4spn   a0, sp, 608
                  c.addi16sp   sp, 224
                  addi         s0, t3, 857
                  slti         sp, tp, 842
                  c.or         a5, s1
                  sra          s1, s3, a5
                  c.addi4spn   s1, sp, 384
                  xori         s7, t3, 1462
                  sub          a6, s10, t0
                  c.add        gp, s9
                  xor          zero, t3, s7
                  lui          s7, 789016
                  c.slli       t0, 29
                  sltiu        s9, a0, 177
                  auipc        s9, 146844
                  xori         a6, s0, -1730
                  c.mv         a5, a2
                  srli         a2, t6, 24
                  c.slli       s5, 20
                  div          s8, a6, a1
                  c.sub        a2, s0
                  slt          s10, s4, s10
                  slt          s2, s1, t5
                  slli         a0, t0, 7
                  mulh         s4, t2, s3
                  sra          a0, s11, t5
                  c.li         s4, -1
                  ori          s8, a1, 754
                  addi         t3, t5, 412
                  xor          t5, a4, t6
                  and          s1, t6, gp
                  c.addi4spn   a4, sp, 208
                  c.addi       s3, -1
                  nop
                  sltiu        s11, a4, -2008
                  mulhu        s9, zero, s7
                  mulh         s5, t5, t6
                  c.addi       s8, -1
                  c.sub        s1, a0
                  c.nop
                  c.lui        t1, 29
                  xori         a5, ra, 806
                  div          s7, t4, a5
                  srl          ra, tp, s0
                  c.srli       a1, 17
                  c.and        s0, a5
                  c.slli       a2, 13
                  c.addi16sp   sp, -16
                  rem          s7, s10, ra
                  c.andi       s1, -1
                  sltiu        s2, s8, -840
                  xor          s9, s4, ra
                  srli         s5, s5, 19
                  add          a2, a7, s7
                  c.addi       gp, 10
                  lui          t1, 118135
                  mulhu        s10, s10, s8
                  ori          s0, a3, 1424
                  mulhu        t0, a3, zero
                  mulhsu       s6, a4, a7
                  rem          a5, t2, s9
                  srli         a0, t0, 13
                  sltiu        s6, s3, -782
                  c.or         a2, a0
                  srl          t1, a1, s3
                  slli         s7, s6, 9
                  mulhu        s10, a0, t3
                  slt          s5, s11, t6
                  sltiu        a5, s9, -528
                  c.slli       s2, 30
                  c.srli       a0, 12
                  slt          a5, a5, a2
                  mulh         s2, t5, s6
                  div          t5, t4, s4
                  sll          sp, a0, tp
                  c.xor        a1, a2
                  c.nop
                  sltu         t0, a4, s11
                  la x31, test_done
                  jalr x0, x31, 0
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
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_2:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_3:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_4:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_5:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_6:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_7:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_8:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_9:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_10:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_11:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_12:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_13:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_14:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_15:
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  addi x13, x13, -4
                  sw  x4, (x13)
                  add x4, x13, zero
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x13, x4, zero
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x15, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x15, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x15, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x15, x26, ecall_handler
                  li x26, 0x1
                  beq x15, x26, instr_fault_handler
                  li x26, 0x5
                  beq x15, x26, load_fault_handler
                  li x26, 0x7
                  beq x15, x26, store_fault_handler
                  li x26, 0xc
                  beq x15, x26, pt_fault_handler
                  li x26, 0xd
                  beq x15, x26, pt_fault_handler
                  li x26, 0xf
                  beq x15, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x13, x4, zero
                  lw  x4, (x13)
                  addi x13, x13, 4
                  mret

load_fault_handler:
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x13, x4, zero
                  lw  x4, (x13)
                  addi x13, x13, 4
                  mret

store_fault_handler:
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x13, x4, zero
                  lw  x4, (x13)
                  addi x13, x13, 4
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x13, x4, zero
                  lw  x4, (x13)
                  addi x13, x13, 4
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x13, x4, zero
                  lw  x4, (x13)
                  addi x13, x13, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x4, x13, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  add x13, x4, zero
                  lw  x4, (x13)
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
