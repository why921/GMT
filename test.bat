gmt gmtset BASEMAP_TYPE plain
gmt gmtset PAPER_MEDIA A4
gmt gmtset LABEL_FONT_SIZE 15.5p
gmt gmtset ANNOT_FONT_SIZE_PRIMARY 11.5p
gmt gmtset HEADER_FONT_SIZE 16.5p
gmt gmtset HEADER_OFFSET -0.3
gmt gmtset TICK_LENGTH 0.1
gmt gmtset FRAME_WIDTH 0.1
gmtset PLOT_DEGREE_FORMAT = ddd:mmF

gmt begin inset-example png,pdf
gmt grdimage @earth_relief_01m -R-180/180/60/90 -Js0/90/1:30000000 -BSN -Ba30f10g10
    gmt coast -R-180/180/70/90 -JA0/90/4.5i -Ggrey -Swhite -Wthinnest
     echo 64 77 63 78 | gmt plot -A -Sr+s -W1p,blue
     echo 64 78 63 79 | gmt plot -A -Sr+s -W1p,blue
     echo 64 79 63 80 | gmt plot -A -Sr+s -W1p,blue
     echo -126 73 -127 74 | gmt plot -A -Sr+s -W1p,RED
     echo -126 74 -127 75 | gmt plot -A -Sr+s -W1p,RED
     echo -126 75 -127 76 | gmt plot -A -Sr+s -W1p,RED
     echo -126 76 -127 77 | gmt plot -A -Sr+s -W1p,RED
     echo -126 77 -127 78 | gmt plot -A -Sr+s -W1p,RED
     echo -126 78 -127 79 | gmt plot -A -Sr+s -W1p,RED
     echo -126 79 -127 80 | gmt plot -A -Sr+s -W1p,RED
     echo -123 77 -124 78 | gmt plot -A -Sr+s -W1p,GREEN
     echo -123 78 -124 79 | gmt plot -A -Sr+s -W1p,GREEN
     echo -123 79 -124 80 | gmt plot -A -Sr+s -W1p,GREEN
gmt end show

