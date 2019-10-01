CF EQU 01h
HF EQU 010h ; A flag - adjust flag
ZF EQU 040h
NF EQU 080h
VF EQU 0800h

CF_B EQU 00h
HF_B EQU 04h
ZF_B EQU 06h
NF_B EQU 07h
VF_V EQU 0Bh

CF_C EQU 01h
VF_C EQU 02h
ZF_C EQU 04h
NF_C EQU 08h
IF_C EQU 10h
HF_C EQU 20h
FF_C EQU 40h
EF_C EQU 80h

CF_C_B EQU 00h
VF_C_B EQU 01h
ZF_C_B EQU 02h
NF_C_B EQU 03h
IF_C_B EQU 04h
HF_C_B EQU 05h
FF_C_B EQU 06h
EF_C_B EQU 07h

MD_NATIVE EQU 01h
MD_FIRQ EQU 02h
MD_ILLEGAL EQU 40h
MD_DIVZERO EQU 80h

AREG EQU 3
BREG EQU 2
EREG EQU 1
FREG EQU 0
DREG EQU 2
WREG EQU 0
LSB EQU 0
MSB EQU 1

VTRAP EQU 0FFF0h
VSWI3 EQU 0FFF2h
VSWI2 EQU 0FFF4h
VFIRQ EQU 0FFF6h
VIRQ EQU 0FFF8h
VSWI EQU 0FFFAh
VNMI EQU 0FFFCh
VRESET EQu 0FFFEh

EXTERN	dp_s: WORD
EXTERN	pc_s: WORD
EXTERN	s_s: WORD
EXTERN	u_s: WORD
EXTERN	x_s: WORD
EXTERN	y_s: WORD
EXTERN	q_s: DWORD
EXTERN	z_s: DWORD
EXTERN	SyncWaiting_s: BYTE
EXTERN	InInterupt_s: BYTE
EXTERN	ccbits_s: BYTE
EXTERN	cc_s: BYTE
EXTERN	mdbits_s: BYTE
EXTERN	ureg8_s: QWORD
EXTERN	xfreg16_s: QWORD
EXTERN  gCycleFor: DWORD
EXTERN  CycleCounter: DWORD

EXTERN	MemRead8_s: PROC
EXTERN	MemRead16_s: PROC
EXTERN	MemRead32_s: PROC
EXTERN	MemWrite8_s: PROC
EXTERN	MemWrite16_s: PROC
EXTERN	MemWrite32_s: PROC
EXTERN  InvalidInsHandler_s: PROC
EXTERN  DivbyZero_s: PROC
EXTERN  setmd_s: PROC
EXTERN	DumpReg_s: PROC
