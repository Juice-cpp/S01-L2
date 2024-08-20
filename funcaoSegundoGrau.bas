10 PRINT "Insira os valores dos coeficientes a, b, c"
20 INPUT "A: "; a
30 INPUT "B: "; b
40 INPUT "C: "; c

50 IF a = 0 THEN GOTO 60 ELSE GOTO 80
60 PRINT "Insira um coeficiente diferente de 0"
70 GOTO 10

80 LET delta = bb - 4ac
90 IF delta < 0 THEN GOTO 100 ELSE GOTO 120
100 PRINT "Nao possui raizes reais"
110 END

120 LET x1 = (-b+sqr(delta))/(2a)
130 LET x2 = (-b-sqr(delta))/(2*a)

140 PRINT "X1 = " + x1
150 PRINT "X2 = " + x2
160 END
