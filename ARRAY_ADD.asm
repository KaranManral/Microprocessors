
ARRAY1 DB 30H,31H,32H,33H
ARRAY2 DB 10H,14H,18H, 2H
RESULT DB  0H, 0H, 0H, 0H

MOV SI, OFFSET ARRAY1
MOV DI, OFFSET ARRAY2
MOV BP, OFFSET RESULT
MOV CX,4H

RE:
  MOV AL,DS:[DI]
  MOV BL,DS:[SI]
  ADD AL,BL
  MOV DS:[BP],AL
  INC BP
  INC SI
  INC DI
  LOOP RE
HLT