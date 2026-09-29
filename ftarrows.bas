   10 rem follow the arrows v1.1
   15 rem by john emrick
   25 fora=0to47
   30 readb:poke4096+a,b
   40 next
   45 sys4096
   46 fora=0to31:readb:poke12768+a,b:next
   50 poke53272,29
   60 poke53265,peek(53265)or64
   70 poke53280,2:poke53281,0:poke53282,1:poke53283,6:poke53284,3
   80 print"{clr}{down}{down}{down}{down}{down}{down}{down}{rvon}";
   90 fori=1to400
  100 x=int(rnd(1)*4)
  110 printchr$(60+x);
  150 next
  160 cl=1123
  180 fl=0:pokecl,peek(cl)or64
  190 geta$:ifa$=""thengoto190
  200 pokecl,peek(cl)and191
  202 ifa$="{up}"thenif(peek(cl)and129)=129or(peek(cl-40)and131)=130thenfl=1
  204 ifa$="{rght}"thenif(peek(cl)and129)=128or(peek(cl+1)and131)=131thenfl=1
  206 ifa$="{down}"thenif(peek(cl)and129)=129or(peek(cl+40)and131)=128thenfl=1
  208 ifa$="{left}"thenif(peek(cl)and129)=128or(peek(cl-1)and131)=129thenfl=1
  210 ifa$="{up}"andfl=0and(cl-40)>=1024thencl=cl-40
  220 ifa$="{rght}"andfl=0and(cl+1)<=2023thencl=cl+1
  230 ifa$="{down}"andfl=0and(cl+40)<=2023thencl=cl+40
  240 ifa$="{left}"andfl=0and(cl-1)>=1024thencl=cl-1
  245 ifa$="{f1}"thengoto80
  250 goto180
22560 data 120,165,1,72,169,49,133,1
22570 data 169,0,133,2,169,208,133,3
22580 data 169,0,133,4,169,48,133,5
22590 data 160,0,177,2,145,4,200,208
22595 data 249,230,3,230,5,165,3,201
22600 data 210,208,239,104,133,1,88,96
23160 data  0, 24, 60,126, 24, 24, 24, 24
23170 data  0,  8, 12,254,254, 12,  8,  0
23180 data 24, 24, 24, 24,126, 60, 24,  0
23190 data  0, 16, 48,127,127, 48, 16,  0
