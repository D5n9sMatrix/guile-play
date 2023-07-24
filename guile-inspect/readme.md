<!DOCTYPE html>
<!-- saved from url=(0100)https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Extract-clumps-and-objects.html -->
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- This book documents version 0.20 of the GNU Astronomy Utilities (Gnuastro).
Gnuastro provides various programs and libraries for astronomical data manipulation and analysis.

Copyright © 2015-2023 Free Software Foundation, Inc.

Permission is granted to copy, distribute and/or modify this document under the terms of the GNU Free Documentation License, Version 1.3 or any later version published by the Free Software Foundation; with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.
A copy of the license is included in the section entitled "GNU Free Documentation License". -->
<title>Extract clumps and objects (GNU Astronomy Utilities)</title>

<meta name="description" content="Extract clumps and objects (GNU Astronomy Utilities)">
<meta name="keywords" content="Extract clumps and objects (GNU Astronomy Utilities)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/index.html" rel="start" title="Top">
<link href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Index.html" rel="index" title="Index">
<link href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/index.html#SEC_Contents" rel="contents" title="Table of Contents">
<link href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Detecting-large-extended-targets.html" rel="up" title="Detecting large extended targets">
<link href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Achieved-surface-brightness-level.html" rel="prev" title="Achieved surface brightness level">
<style type="text/css">
<!--
div.example {margin-left: 3.2em}
-->
</style>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="./readme_files/fonts.css">
<link rel="stylesheet" type="text/css" href="./readme_files/style.css">
</head>

<body lang="en">
<h2>GNU Astronomy Utilities</h2>
<hr>
<div class="subsection-level-extent" id="Extract-clumps-and-objects">
<div class="nav-panel">
<p>
Previous: <a href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Achieved-surface-brightness-level.html" accesskey="p" rel="prev">Achieved surface brightness level</a>, Up: <a href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Detecting-large-extended-targets.html" accesskey="u" rel="up">Detecting large extended targets</a> &nbsp; [<a href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h4 class="subsection" id="Extract-clumps-and-objects-_0028Segmentation_0029">2.2.6 Extract clumps and objects (Segmentation)</h4>
<p>In <a class="ref" href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/NoiseChisel-optimization.html">NoiseChisel optimization</a> we found a good detection map over the image, so pixels harboring signal have been differentiated from those that do not.
For noise-related measurements like the surface brightness limit, this is fine.
However, after finding the pixels with signal, you are most likely interested in knowing the sub-structure within them.
For example, how many star forming regions (those bright dots along the spiral arms) of M51 are within this image?
What are the colors of each of these star forming regions?
In the outer most wings of M51, which pixels belong to background galaxies and foreground stars?
And many more similar questions.
To address these questions, you can use <a class="ref" href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Segment.html">Segment</a> to identify all the “clumps” and “objects” over the detection.
</p>
<div class="example">
<pre class="example-preformatted">$ astsegment r_detected.fits --output=r_segmented.fits
$ ds9 -mecube r_segmented.fits -cmap sls -zoom to fit -scale limits 0 2
</pre></div>

<a class="index-entry-id" id="index-DS9-1"></a>
<a class="index-entry-id" id="index-SAO-DS9-1"></a>
<p>Open the output <samp class="file">r_segmented.fits</samp> as a multi-extension data cube with the second command above and flip through the first and second extensions, zoom-in to the spiral arms of M51 and see the detected clumps (all pixels with a value larger than 1 in the second extension).
To optimize the parameters and make sure you have detected what you wanted, we recommend to visually inspect the detected clumps on the input image.
</p>
<p>For visual inspection, you can make a simple shell script like below.
It will first call MakeCatalog to estimate the positions of the clumps, then make an SAO DS9 region file and open ds9 with the image and region file.
Recall that in a shell script, the numeric variables (like <code class="code">$1</code>, <code class="code">$2</code>, and <code class="code">$3</code> in the example below) represent the arguments given to the script.
But when used in the AWK arguments, they refer to column numbers.
</p>
<p>To create the shell script, using your favorite text editor, put the contents below into a file called <samp class="file">check-clumps.sh</samp>.
Recall that everything after a <code class="code">#</code> is just comments to help you understand the command (so read them!).
Also note that if you are copying from the PDF version of this book, fix the single quotes in the AWK command.
</p>
<div class="example">
<pre class="example-preformatted">#! /bin/bash
set -e     # Stop execution when there is an error.
set -u     # Stop execution when a variable is not initialized.

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
</pre></div>

<p>Finally, you just have to activate the script’s executable flag with the command below.
This will enable you to directly/easily call the script as a command.
</p>
<div class="example">
<pre class="example-preformatted">$ chmod +x check-clumps.sh
</pre></div>

<a class="index-entry-id" id="index-AWK"></a>
<a class="index-entry-id" id="index-GNU-AWK-3"></a>
<p>This script does not expect the <samp class="file">.fits</samp> suffix of the input’s filename as the first argument.
Because the script produces intermediate files (a catalog and DS9 region file, which are later deleted).
However, we do not want multiple instances of the script (on different files in the same directory) to collide (read/write to the same intermediate files).
Therefore, we have used suffixes added to the input’s name to identify the intermediate files.
Note how all the <code class="code">$1</code> instances in the commands (not within the AWK command<a class="footnote" id="DOCF56" href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Extract-clumps-and-objects.html#FOOT56"><sup>56</sup></a>) are followed by a suffix.
If you want to keep the intermediate files, put a <code class="code">#</code> at the start of the last line.
</p>
<p>The few, but high-valued, bright pixels in the central parts of the galaxies can hinder easy visual inspection of the fainter parts of the image.
With the second and third arguments to this script, you can set the numerical values of the color map (first is minimum/black, second is maximum/white).
You can call this script with any<a class="footnote" id="DOCF57" href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Extract-clumps-and-objects.html#FOOT57"><sup>57</sup></a> output of Segment (when <samp class="option">--rawoutput</samp> is <em class="emph">not</em> used) with a command like this:
</p>
<div class="example">
<pre class="example-preformatted">$ ./check-clumps.sh r_segmented -0.1 2
</pre></div>

<p>Go ahead and run this command.
You will see the intermediate processing being done and finally it opens SAO DS9 for you with the regions superimposed on all the extensions of Segment’s output.
The script will only finish (and give you control of the command-line) when you close DS9.
If you need your access to the command-line before closing DS9, add a <code class="code">&amp;</code> after the end of the command above.
</p>
<a class="index-entry-id" id="index-Purity"></a>
<a class="index-entry-id" id="index-Completeness"></a>
<p>While DS9 is open, slide the dynamic range (values for black and white, or minimum/maximum values in different color schemes) and zoom into various regions of the M51 group to see if you are satisfied with the detected clumps.
Do Not forget that through the “Cube” window that is opened along with DS9, you can flip through the extensions and see the actual clumps also.
The questions you should be asking yourself are these: 1) Which real clumps (as you visually <em class="emph">feel</em>) have been missed? In other words, is the <em class="emph">completeness</em> good? 2) Are there any clumps which you <em class="emph">feel</em> are false? In other words, is the <em class="emph">purity</em> good?
</p>
<p>Note that completeness and purity are not independent of each other, they are anti-correlated: the higher your purity, the lower your completeness and vice-versa.
You can see this by playing with the purity level using the <samp class="option">--snquant</samp> option.
Run Segment as shown above again with <code class="code">-P</code> and see its default value.
Then increase/decrease it for higher/lower purity and check the result as before.
You will see that if you want the best purity, you have to sacrifice completeness and vice versa.
</p>
<p>One interesting region to inspect in this image is the many bright peaks around the central parts of M51.
Zoom into that region and inspect how many of them have actually been detected as true clumps.
Do you have a good balance between completeness and purity? Also look out far into the wings of the group and inspect the completeness and purity there.
</p>
<p>An easier way to inspect completeness (and only completeness) is to mask all the pixels detected as clumps and visually inspecting the rest of the pixels.
You can do this using Arithmetic in a command like below.
For easy reading of the command, we will define the shell variable <code class="code">i</code> for the image name and save the output in <samp class="file">masked.fits</samp>.
</p>
<div class="example">
<pre class="example-preformatted">$ in="r_segmented.fits -hINPUT"
$ clumps="r_segmented.fits -hCLUMPS"
$ astarithmetic $in $clumps 0 gt nan where -oclumps-masked.fits
</pre></div>

<p>Inspecting <samp class="file">clumps-masked.fits</samp>, you can see some very diffuse peaks that have been missed, especially as you go farther away from the group center and into the diffuse wings.
This is due to the fact that with this configuration, we have focused more on the sharper clumps.
To put the focus more on diffuse clumps, you can use a wider convolution kernel.
Using a larger kernel can also help in detecting the existing clumps to fainter levels (thus better separating them from the surrounding diffuse signal).
</p>
<p>You can make any kernel easily using the <samp class="option">--kernel</samp> option in <a class="ref" href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/MakeProfiles.html">MakeProfiles</a>.
But note that a larger kernel is also going to wash-out many of the sharp/small clumps close to the center of M51 and also some smaller peaks on the wings.
Please continue playing with Segment’s configuration to obtain a more complete result (while keeping reasonable purity).
We will finish the discussion on finding true clumps at this point.
</p>
<p>The properties of the clumps within M51, or the background objects can then easily be measured using <a class="ref" href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/MakeCatalog.html">MakeCatalog</a>.
To measure the properties of the background objects (detected as clumps over the diffuse region), you should not mask the diffuse region.
When measuring clump properties with <a class="ref" href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/MakeCatalog.html">MakeCatalog</a> and using the <samp class="option">--clumpscat</samp>, the ambient flux (from the diffuse region) is calculated and subtracted.
If the diffuse region is masked, its effect on the clump brightness cannot be calculated and subtracted.
</p>
<p>To keep this tutorial short, we will stop here.
See <a class="ref" href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Segmentation-and-making-a-catalog.html">Segmentation and making a catalog</a> and <a class="ref" href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Segment.html">Segment</a> for more on using Segment, producing catalogs with MakeCatalog and using those catalogs.
</p>







</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT56" href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Extract-clumps-and-objects.html#DOCF56">(56)</a></h5>
<p>In AWK, <code class="code">$1</code> refers to the first column, while in the shell script, it refers to the first argument.</p>
<h5 class="footnote-body-heading"><a id="FOOT57" href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Extract-clumps-and-objects.html#DOCF57">(57)</a></h5>
<p>Some modifications are necessary based on the input dataset: depending on the dynamic range, you have to adjust the second and third arguments.
But more importantly, depending on the dataset’s world coordinate system, you have to change the region <code class="code">width</code>, in the AWK command.
Otherwise the circle regions can be too small/large.</p>
</div>
<hr>
<div class="nav-panel">
<p>
Previous: <a href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Achieved-surface-brightness-level.html">Achieved surface brightness level</a>, Up: <a href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Detecting-large-extended-targets.html">Detecting large extended targets</a> &nbsp; [<a href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/savannah-checkouts/gnu/gnuastro/manual/html_node/Index.html" title="Index" rel="index">Index</a>]</p>
</div>



<hr>
<p class="bottom-links"><a href="https://www.gnu.org/software/gnuastro/manual/index.html">Read in other formats</a>.</p>
<p class="bottom-links"><a href="https://www.gnu.org/software/gnuastro/index.html">GNU Astronomy Utilities</a> 0.20 manual, April 2023.</p>


</body></html>