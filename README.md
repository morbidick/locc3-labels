# LOCc3 labels
Label script for cab (eos1) label printers.

There are currently two ways to access the printers:
* [manual commands per ftp](#manual-commands)
* [using gLabels](#using-glabels)

## manual commands
Code references: [J-Script](https://www.cab.de/media/pushfile.cfm?file=153), [abc](https://www.cab.de/media/pushfile.cfm?file=1507)

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

## using gLabels
* download [driver](https://www.cab.de/en/marking/label-printer/eos-series/#software)
* copy rastertocab to your cups filter directory (for ubuntu thats /usr/lib/cups/filter)
* install eos1/300 ppd and add the network or local printer
* download [gLabels](http://glabels.sourceforge.net/) or install via package manager
* open gLabels and create a custom label format with your specs
* ???
* profit!
