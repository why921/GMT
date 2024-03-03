gmt gmtset BASEMAP_TYPE plain
gmt gmtset PAPER_MEDIA A4
gmt gmtset LABEL_FONT_SIZE 15.5p
gmt gmtset ANNOT_FONT_SIZE_PRIMARY 11.5p
gmt gmtset HEADER_FONT_SIZE 16.5p
gmt gmtset HEADER_OFFSET -0.3
gmt gmtset TICK_LENGTH 0.1
gmt gmtset FRAME_WIDTH 0.1
gmtset PLOT_DEGREE_FORMAT = ddd:mmF


gmt begin arctic png

     gmt coast -R-180/180/60/90 -Bafg -JA0/90/4.5i -Gsnow4 -Slightsteelblue -Wthinnest

     gmt plot center.txt -St0.4 -Gred -W

     gmt plot validation.txt -St0.4 -Gspringgreen2 -W

     echo 180 90 0 46.866666d 46.866666d  | gmt plot  -SE -Wthin,-






gmt end show