#!/bin/bash

set -e # Stop exection when there is an error
set -u # Stop exection when a variable is not initialized.

# Run MakeCatalog to write the coordinates into a FITS table.
# Default output is `$1_cat.fits'.
astmkcatalog $1.fits --clumpscat --ids --ra --dec

# Use Gnuastro's Table and astscript-ds9-region to build the DS9
# region file (a circle of radius 1 arcseconds on each point).
asttable $1"_cat.fits" -hCLUMPS -cRA,DEC \
         | astscript-ds9-region -c1,2 --mode=wcs --radius=1 \
                                --output=$1.reg

# Show the image (with the requested color scale) and the region file.
ds9 -geometry 1800x3000 -mecube $1.fits -zoom to fit                   \
    -scale limits $2 $3 -regions load all $1.reg

# Clean up (delete intermediate files).
rm $1"_cat.fits" $1.reg
