ORG 0000H
LJMP START
ORG 0100H
DELAY : MOV TH0, #0FCH
MOV TL0, #018H
SETB TR0
CHECK : JNB TF0, CHECK
CLR TF0
CLR TR0
RET
ORG 0035H
START : CLR P1.5
MOV TMOD, #01H
SETB P1.5
ACALL DELAY
CLR P1.5
MOV R1, #19
AGAIN : ACALL DELAY
DJNZ R1, AGAIN
END