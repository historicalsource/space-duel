$RT
R MAC65
VX0:AS2ROM=VX0:AS2ROM
VX0:AST2RD=VX0:AST2RD
VX0:AST2RT=VX0:AST2RT
VX0:AS2SAC=VX0:AS2SAC
VX0:AS2POK=VX0:AS2POK
VX0:AS2COI=VX0:AS2COI
VX0:A2NAME=VX0:A2NAME
VX0:AS2MSG=VX0:AS2MSG
VX0:AS2FIL=VX0:AS2FIL
VX0:AS2TST=VX0:AS2TST
VX0:A2IRQ=VX0:A2IRQ
VX0:A2EARO=VX0:A2EARO
VX0:XYSIG=VX0:XYSIG
VX0:VGUTR2=VX0:VGUTR2
VX0:A2SHIP=VX0:A2SHIP
VX0:A2GOOF=VX0:A2GOOF
$RT
R LINKM
VX0:AST2RD/L,VX0:A2LINK=VX0:AS2ROM,AST2RD,AST2RT,AS2SAC,AS2POK,AS2COI/C
VX0:A2NAME,AS2MSG,AS2FIL,AS2TST,A2IRQ,A2EARO/C
VX0:XYSIG,VGUTR2,A2GOOF
VX0:A2SHIP/L=VX0:A2SHIP
$ WRITE SYS$OUTPUT " LINK COMPLETED, OUTPUT = 'VX0:AST2RD.LDA'"
$ EXIT
                                                                                                                                                                                                                                                                                                                                                                                                    