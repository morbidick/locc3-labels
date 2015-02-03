# LOCc3 labels
Label script for cab label printers. 

J-Script: https://www.cab.de/media/pushfile.cfm?file=153

abc: https://www.cab.de/media/pushfile.cfm?file=1507

## commands
````
J start Job
H set speed
S set label size type;yo,xo,length,dy,wide
O R turn 180° just for comfort
T print text x,y,r,font,size;text
B print barcode x,y,rotate,format,size,stretch;value
A set amount
[I] dont print this line
[?:start number,2021000,,M1111111] ask for input, with start number and bitmask
[SER:000] init counter
[+:start,incr] add 
; comment
````
