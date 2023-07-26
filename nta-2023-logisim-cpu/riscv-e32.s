out/user_sifive_e32:     file format elf32-littleriscv


Disassembly of section .text:

20400000 <_start>:
20400000:       30405073                csrwi   mie,0
20400004:       00000297                auipc   t0,0x0
20400008:       0dc28293                addi    t0,t0,220 # 204000e0 <early_trap_vector>
2040000c:       30529073                csrw    mtvec,t0
20400010:       30305073                csrwi   mideleg,0
20400014:       30205073                csrwi   medeleg,0
20400018:       5fc02297                auipc   t0,0x5fc02
2040001c:       26428293                addi    t0,t0,612 # 8000227c <_end>
20400020:       f1402373                csrr    t1,mhartid
20400024:       20000393                li      t2,512
20400028:       02730333                mul     t1,t1,t2
2040002c:       006282b3                add     t0,t0,t1
20400030:       00028113                mv      sp,t0
20400034:       00000293                li      t0,0
20400038:       f1402373                csrr    t1,mhartid
2040003c:       02628663                beq     t0,t1,20400068 <init_segments>

20400040 <hart_sync_code>:
20400040:       f14023f3                csrr    t2,mhartid
20400044:       00100293                li      t0,1
20400048:       02000337                lui     t1,0x2000
2040004c:       00239393                slli    t2,t2,0x2
20400050:       00730333                add     t1,t1,t2
20400054:       00532023                sw      t0,0(t1) # 2000000 <CLINT0_BASE_ADDRESS>
20400058:       0130000f                fence   w,rw
2040005c:       00032283                lw      t0,0(t1)
20400060:       fe029ee3                bnez    t0,2040005c <hart_sync_code+0x1c>
20400064:       0700006f                j       204000d4 <init>

20400068 <init_segments>:
20400068:       5fc00297                auipc   t0,0x5fc00
2040006c:       f9c28293                addi    t0,t0,-100 # 80000004 <bss_start>
20400070:       5fc01317                auipc   t1,0x5fc01
20400074:       20c30313                addi    t1,t1,524 # 8000127c <bss_end>
20400078:       0062f863                bgeu    t0,t1,20400088 <synchronize_harts>

2040007c <clean_bss_loop>:
2040007c:       0002a023                sw      zero,0(t0)
20400080:       00428293                addi    t0,t0,4
20400084:       fe62ece3                bltu    t0,t1,2040007c <clean_bss_loop>

