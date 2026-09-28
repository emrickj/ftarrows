   10 rem follow the arrows v1
   15 rem by john emrick
   25 for a = 0 to 47
   30 read b: poke 4096+a,b
   40 next
   45 sys 4096
   46 for a=0to31:readb:poke12768+a,b:next
   50 poke53272,29
   60 poke53265,peek(53265)or64
   70 poke53280,2:poke53281,0:poke53282,1:poke53283,6:poke53284,3
   80 print"{clr}{down}{down}{down}{down}{down}{down}{down}{rvon}";
   90 for i=1to400
  100 x=int(rnd(1)*4)
  110 if x=0 then print"<";
  120 if x=1 then print"=";
  130 if x=2 then print">";
  140 if x=3 then print"?";
  150 next
  160 cl=1124
  170 ul=cl-40:dl=cl+40:ll=cl-1:rl=cl+1:fl=0
  180 poke cl,peek(cl)or64
  190 geta$:ifa$=""thengoto190
  200 poke cl,peek(cl)and191
  202 ifa$="{up}"thenif(peek(cl)and129)=129or(peek(ul)and131)=130thenfl=1
  204 ifa$="{rght}"thenif(peek(cl)and129)=128or(peek(rl)and131)=131thenfl=1
  206 ifa$="{down}"thenif(peek(cl)and129)=129or(peek(dl)and131)=128thenfl=1
  208 ifa$="{left}"thenif(peek(cl)and129)=128or(peek(ll)and131)=129thenfl=1
  210 ifa$="{up}"andfl=0and(cl-40)>=1024thencl=cl-40
  220 ifa$="{rght}"andfl=0and(cl+1)<=2023thencl=cl+1
  230 ifa$="{down}"andfl=0and(cl+40)<=2023thencl=cl+40
  240 ifa$="{left}"andfl=0and(cl-1)>=1024thencl=cl-1
  245 ifa$="{f1}"then goto80
  250 goto 170
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
