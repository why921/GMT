gmt gmtset BASEMAP_TYPE plain
gmt gmtset PAPER_MEDIA A4
gmt gmtset LABEL_FONT_SIZE 15.5p
gmt gmtset ANNOT_FONT_SIZE_PRIMARY 11.5p
gmt gmtset HEADER_FONT_SIZE 16.5p
gmt gmtset HEADER_OFFSET -0.3
gmt gmtset TICK_LENGTH 0.1
gmt gmtset FRAME_WIDTH 0.1
gmtset PLOT_DEGREE_FORMAT = ddd:mmF


gmt begin arctic pdf

     gmt coast -R-180/180/80/90 -Bafg -Df -JA0/90/4.5i -Gsnow4 -Slightsteelblue -Wthinnest

     gmt plot lonlat.txt  -Gred -W




gmt end show