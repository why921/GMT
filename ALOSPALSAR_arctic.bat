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
    gmt grdimage @earth_relief_01m -R-180/180/60/90 -Js0/90/1:30000000 -BSN -Ba30f10g10
gmt end show