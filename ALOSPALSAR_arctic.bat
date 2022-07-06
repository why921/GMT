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


     gmt coast -R-180/180/60/90 -Ba -JA0/90/4.5i -Gsnow4 -Slightsteelblue -Wthinnest

     echo  -133.42086235  70.44429915 | gmt plot -St0.4  -Gred  -W
     echo  -132.85430130  71.42835535 | gmt plot -St0.4  -Gred  -W
     echo  -111.41602310  76.46593329 | gmt plot -St0.4  -Gred  -W
     echo  -112.37947530  76.91546765 | gmt plot -St0.4  -Gred  -W











gmt end show