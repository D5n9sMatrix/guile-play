<!DOCTYPE html>
<html><!-- Created by GNU Texinfo 6.8, https://www.gnu.org/software/texinfo/ --><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- This manual documents Guile-CV version 0.4.0.

Copyright (C) 2016 - 2023 Free Software Foundation, Inc.

Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3 or
any later version published by the Free Software Foundation; with no
Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.  A
copy of the license is included in the section entitled "GNU Free
Documentation License." -->
<title>Guile-CV Reference Manual</title>

<meta name="description" content="Guile-CV Reference Manual">
<meta name="keywords" content="Guile-CV Reference Manual">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<link href="#Concept-Index" rel="index" title="Concept Index">
<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<link href="#Preface" rel="next" title="Preface">
<style type="text/css">
<!--
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
kbd {font-style: oblique}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.no-bullet {list-style: none}
-->
</style>
<link rel="stylesheet" type="text/css" href="Guile-CV%20Reference%20Manual_files/manual.css">


</head>

<body lang="en">
<h1 class="settitle" align="center">Guile-CV Reference Manual</h1>







































<div class="top" id="Top">
<div class="header">
<p>
Next: <a href="#Preface" accesskey="n" rel="next">Preface</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Guile_002dCV-Reference-Manual"></span><h1 class="top">Guile-CV Reference Manual</h1>
<p>This manual documents Guile-CV version 0.4.0.
</p>
<p>Copyright (C) 2016 - 2023 Free Software Foundation, Inc.
</p>
<p>Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3 or
any later version published by the Free Software Foundation; with no
Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.  A
copy of the license is included in the section entitled “GNU Free
Documentation License.”
</p><br>








<div class="Contents_element" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="no-bullet">
  <li><a id="toc-Preface-1" href="#Preface">Preface</a>
  <ul class="no-bullet">
    <li><a id="toc-Contributors-to-this-Manual" href="#Contributors-to-this-manual">Contributors to this Manual</a></li>
    <li><a id="toc-Join-the-GNU-Project-1" href="#Join-the-GNU-Project">Join the GNU Project</a></li>
    <li><a id="toc-The-Guile_002dCV-License" href="#Guile_002dCV-License">The Guile-CV License</a></li>
  </ul></li>
  <li><a id="toc-I_002e-Introduction" href="#Introduction">I. Introduction</a>
  <ul class="no-bullet">
    <li><a id="toc-About-Guile_002dCV-1" href="#About-Guile_002dCV">About Guile-CV</a></li>
    <li><a id="toc-Obtaining-and-Installing-Guile_002dCV-1" href="#Obtaining-and-Installing-Guile_002dCV">Obtaining and Installing Guile-CV</a></li>
    <li><a id="toc-Contact-Information-1" href="#Contact-Information">Contact Information</a></li>
    <li><a id="toc-Reporting-Bugs-1" href="#Reporting-Bugs">Reporting Bugs</a></li>
  </ul></li>
  <li><a id="toc-II_002e-Using-Guile_002dCV" href="#Using-Guile_002dCV">II. Using Guile-CV</a>
  <ul class="no-bullet">
    <li><a id="toc-Configuring-Guile-for-Guile_002dCV-1" href="#Configuring-Guile-for-Guile_002dCV">Configuring Guile for Guile-CV</a>
    <ul class="no-bullet">
      <li><a id="toc-Configuring-Guile_0027s-repl_002dprint-procedure-1" href="#Configuring-Guile_0027s-repl_002dprint-procedure">Configuring Guile’s repl-print procedure</a></li>
      <li><a id="toc-Configuring-Guile_0027s-raised-exception-system-1" href="#Configuring-Guile_0027s-raised-exception-system">Configuring Guile’s raised exception system</a></li>
    </ul></li>
    <li><a id="toc-Images-used-in-Guile_002dCV_0027s-documentation-1" href="#Images-used-in-Guile_002dCV_0027s-documentation">Images used in Guile-CV’s documentation</a></li>
    <li><a id="toc-Starting-Guile_002dCV-1" href="#Starting-Guile_002dCV">Starting Guile-CV</a></li>
  </ul></li>
  <li><a id="toc-III_002e-Guile_002dCV-Core-Reference" href="#Guile_002dCV-Core-Reference">III. Guile-CV Core Reference</a>
  <ul class="no-bullet">
    <li><a id="toc-Overview-1" href="#Overview">Overview</a>
    <ul class="no-bullet">
      <li><a id="toc-Naming-Conventions-1" href="#Naming-Conventions">Naming Conventions</a></li>
      <li><a id="toc-Abreviations-1" href="#Abreviations">Abreviations</a></li>
    </ul></li>
    <li><a id="toc-Image-Processing-1" href="#Image-Processing">Image Processing</a>
    <ul class="no-bullet">
      <li><a id="toc-Image-Structure-and-Accessors-1" href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></li>
      <li><a id="toc-Kernel-Structure-and-Accessors-1" href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></li>
      <li><a id="toc-Import-Export-1" href="#Import-Export">Import Export</a></li>
      <li><a id="toc-Histogram-1" href="#Histogram">Histogram</a></li>
      <li><a id="toc-Texture-1" href="#Texture">Texture</a></li>
      <li><a id="toc-Features-1" href="#Features">Features</a></li>
      <li><a id="toc-Particles-1" href="#Particles">Particles</a></li>
      <li><a id="toc-Filter-1" href="#Filter">Filter</a></li>
      <li><a id="toc-Process-1" href="#Process">Process</a></li>
      <li><a id="toc-Transform-1" href="#Transform">Transform</a></li>
      <li><a id="toc-Morphology-1" href="#Morphology">Morphology</a></li>
      <li><a id="toc-Segmentation-1" href="#Segmentation">Segmentation</a></li>
      <li><a id="toc-Compose-1" href="#Compose">Compose</a></li>
      <li><a id="toc-Utilities-1" href="#Utilities">Utilities</a></li>
    </ul></li>
    <li><a id="toc-Support-1" href="#Support">Support</a>
    <ul class="no-bullet">
      <li><a id="toc-Modules-1" href="#Modules">Modules</a></li>
      <li><a id="toc-Goops-1" href="#Goops">Goops</a></li>
      <li><a id="toc-Pi-1" href="#Pi">Pi</a></li>
      <li><a id="toc-Utils-1" href="#Utils">Utils</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-GNU-Free-Documentation-License-1" href="#GNU-Free-Documentation-License">Appendix A GNU Free Documentation License</a></li>
  <li><a id="toc-Concept-Index-1" href="#Concept-Index" rel="index">Concept Index</a></li>
  <li><a id="toc-Procedure-Index-1" href="#Procedure-Index" rel="index">Procedure Index</a></li>
  <li><a id="toc-Variable-Index-1" href="#Variable-Index" rel="index">Variable Index</a></li>
  <li><a id="toc-Type-Index-1" href="#Type-Index" rel="index">Type Index</a></li>
</ul>
</div>
</div>
<hr>
<div class="unnumbered" id="Preface">
<div class="header">
<p>
Next: <a href="#Introduction" accesskey="n" rel="next">I. Introduction</a>, Up: <a href="#Top" accesskey="u" rel="up">Guile-CV Reference Manual</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Preface-1"></span><h2 class="unnumbered">Preface</h2>

<p>This manual describes how to use Guile-CV.  It relates particularly
to Guile-CV version 0.4.0.
</p>


<ul class="section-toc">
<li><a href="#Contributors-to-this-manual" accesskey="1">Contributors to this Manual</a></li>
<li><a href="#Join-the-GNU-Project" accesskey="2">Join the GNU Project</a></li>
<li><a href="#Guile_002dCV-License" accesskey="3">The Guile-CV License</a></li>
</ul>
<hr>
<div class="unnumberedsec" id="Contributors-to-this-manual">
<div class="header">
<p>
Next: <a href="#Join-the-GNU-Project" accesskey="n" rel="next">Join the GNU Project</a>, Up: <a href="#Preface" accesskey="u" rel="up">Preface</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Contributors-to-this-Manual"></span><h3 class="unnumberedsec">Contributors to this Manual</h3>

<p>Like Guile-CV itself, the Guile-CV reference manual is a living
entity. Right now, the contributor to this manual is:
</p>
<ul>
<li> David Pirotte
</li></ul>

<p>who is also the author and maintainer of Guile-CV.
</p>
<p>You are most welcome to join and help.  Visit <a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> web site to find out how to get involved.
</p>

<hr>
</div>
<div class="unnumberedsec" id="Join-the-GNU-Project">
<div class="header">
<p>
Next: <a href="#Guile_002dCV-License" accesskey="n" rel="next">The Guile-CV License</a>, Previous: <a href="#Contributors-to-this-manual" accesskey="p" rel="prev">Contributors to this Manual</a>, Up: <a href="#Preface" accesskey="u" rel="up">Preface</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Join-the-GNU-Project-1"></span><h3 class="unnumberedsec">Join the GNU Project</h3>
<span id="index-the-GNU-Project"></span>

<p>GNU Guile-CV is part of the GNU Operating System, developed by the GNU
Project.
</p>
<p>If you are the author of an awesome program and want to join us in
writing Free (libre) Software, please consider making it an official GNU
program and become a GNU Maintainer. You can find instructions on how to
do this <a href="https://www.gnu.org/help/evaluation.html">here</a>.
</p>
<p>You don’t have a program to contribute? Look at all the other ways you
may <a href="https://www.gnu.org/help/help.html">help</a>.
</p>
<p>To learn more about Free (libre) Software, you can read and please share
<a href="https://gnu.org/philosophy/free-sw.html">this page</a>.
</p>

<hr>
</div>
<div class="unnumberedsec" id="Guile_002dCV-License">
<div class="header">
<p>
Previous: <a href="#Join-the-GNU-Project" accesskey="p" rel="prev">Join the GNU Project</a>, Up: <a href="#Preface" accesskey="u" rel="up">Preface</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="The-Guile_002dCV-License"></span><h3 class="unnumberedsec">The Guile-CV License</h3>
<span id="index-Copying"></span>
<span id="index-GPL"></span>
<span id="index-License"></span>

<p>Guile-CV is Free Software. Guile-CV is copyrighted, not public domain,
and there are restrictions on its distribution or redistribution:
</p>
<ul>
<li> Guile-CV and supporting files are published under the terms of the GNU
General Public License version 3 or later.  See the file <samp>LICENSE</samp>.

</li><li> This manual is published under the terms of the GNU Free Documentation
License (see <a href="#GNU-Free-Documentation-License">GNU Free Documentation License</a>).
</li></ul>

<p>You must be aware there is no warranty whatsoever for Guile-CV.
This is described in full in the license.
</p>



<hr>
</div>
</div>
<div class="unnumbered" id="Introduction">
<div class="header">
<p>
Next: <a href="#Using-Guile_002dCV" accesskey="n" rel="next">II. Using Guile-CV</a>, Previous: <a href="#Preface" accesskey="p" rel="prev">Preface</a>, Up: <a href="#Top" accesskey="u" rel="up">Guile-CV Reference Manual</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="I_002e-Introduction"></span><h2 class="unnumbered">I. Introduction</h2>



<ul class="section-toc">
<li><a href="#About-Guile_002dCV" accesskey="1">About Guile-CV</a></li>
<li><a href="#Obtaining-and-Installing-Guile_002dCV" accesskey="2">Obtaining and Installing Guile-CV</a></li>
<li><a href="#Contact-Information" accesskey="3">Contact Information</a></li>
<li><a href="#Reporting-Bugs" accesskey="4">Reporting Bugs</a></li>
</ul>
<hr>
<div class="section" id="About-Guile_002dCV">
<div class="header">
<p>
Next: <a href="#Obtaining-and-Installing-Guile_002dCV" accesskey="n" rel="next">Obtaining and Installing Guile-CV</a>, Up: <a href="#Introduction" accesskey="u" rel="up">I. Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="About-Guile_002dCV-1"></span><h3 class="section">About Guile-CV</h3>

<p><strong>GNU Guile-CV</strong> <br>
Image Processing and Analysis in <a href="http://www.gnu.org/software/guile">Guile</a> <br>
a Computer Vision functional programming library
</p>


<p><a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> - Image Processing and Analysis in
<a href="http://www.gnu.org/software/guile">Guile</a> - is a Computer Vision functional
programming library for the <a href="http://www.gnu.org/software/guile">Guile</a> Scheme
language.
</p>
<p><a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> is based on <a href="http://ukoethe.github.io/vigra/">Vigra</a> (Vision with Generic Algorithms), enhanced with additional
algorithms (<code>Image Textures</code>, <code>Delineate</code>,
<code>Reconstruction</code> and many more), all accessible through a
<code>nice</code>, <code>clean</code> and <code>easy to use</code> high level <code>API</code>.
</p>
<p><a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> is natively <code>multi-threaded</code>,
and takes advantage of <code>multiple cores</code>, using high-level and fine
grained application-level <code>parallelism constructs</code> available in
<a href="http://www.gnu.org/software/guile">Guile</a>, based on its support to <code>POSIX
threads</code>.
</p>

<span id="Objective"></span><h4 class="subheading">Objective</h4>

<p><a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> objective is to be a <code>robust</code>,
<code>reliable</code> and <code>fast</code> - Image Processing and Analysis -
Computer Vision functional programming library for the
<a href="http://www.gnu.org/software/guile">Guile</a> Scheme language. <a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> also wants to be <code>easy to use</code>, <code>study</code>,
<code>modify</code> and <code>extend</code>.
</p>
<p><a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> can be used as an <code>educational
sofware</code>, a <code>research toolbox</code> but it can also be used <code>'in
production'</code>: <a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> is <code>robust</code>,
<code>reliable</code> and <code>fast</code>, and we will make sure
<a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> remains <code>robust</code>,
<code>reliable</code> and <code>fast</code> as it grows.
</p>



<span id="Savannah"></span><h4 class="subheading">Savannah</h4>

<p><a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> also has a
<a href="http://savannah.gnu.org/projects/guile-cv">Savannah project page</a>.
</p>

<hr>
</div>
<div class="section" id="Obtaining-and-Installing-Guile_002dCV">
<div class="header">
<p>
Next: <a href="#Contact-Information" accesskey="n" rel="next">Contact Information</a>, Previous: <a href="#About-Guile_002dCV" accesskey="p" rel="prev">About Guile-CV</a>, Up: <a href="#Introduction" accesskey="u" rel="up">I. Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Obtaining-and-Installing-Guile_002dCV-1"></span><h3 class="section">Obtaining and Installing Guile-CV</h3>

<p><a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> can be obtained from the following
archive <a href="http://ftp.gnu.org/gnu/guile-cv">site</a>.  The file will be named
guile-cv-version.tar.gz. The current version is 0.4.0, so the
file you should grab is:
</p>
<blockquote class="indentedblock">
<p><a href="http://ftp.gnu.org/gnu/guile-cv/guile-cv-0.4.0.tar.gz">http://ftp.gnu.org/gnu/guile-cv/guile-cv-0.4.0.tar.gz</a>
</p></blockquote>

<span id="Dependencies"></span><h4 class="subheading">Dependencies</h4>

<p><a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> needs the following software to run:
</p>
<ul>
<li> Autoconf &gt;= 2.69
</li><li> Automake &gt;= 1.14
</li><li> Makeinfo &gt;= 6.6
</li><li> <a href="http://www.gnu.org/software/guile">Guile</a> &gt;= 2.0.14 <br>
&nbsp;&nbsp; [allows 2.2, 3.0 (&gt;= 3.0.7)]
</li><li> <a href="http://www.nongnu.org/guile-lib">Guile-Lib</a> &gt;= 0.2.5
</li><li> <a href="http://ukoethe.github.io/vigra/">Vigra</a> &gt;= 1.11.0

<blockquote class="indentedblock">
<p><strong>Note:</strong>
</p>
<p>If you manually install <a href="http://ukoethe.github.io/vigra/">Vigra</a>, make sure you pass
the cmake ‑DCMAKE_BUILD_TYPE=RELEASE option, which triggers absolutely
essential adequate runtime optimization flags.
</p></blockquote>

</li><li> <a href="https://github.com/BSeppke/vigra_c">Vigra C</a> &gt;= commit 0af647d08 - Oct 28, 2018


<blockquote class="indentedblock">
<p>The local minima and maxima interfaces have been improved, and now
support the full set of options provided by Vigra, to our request (thank
you Benjamin!).  In addition there has been a few bugs fixed, including
one we detected while working on Guile-CV local minima bindigs.
</p>
<p>Vigra C - a C wrapper [to some of] the Vigra functionality - is
currently only available by cloning its source code <a href="https://git-scm.com/">git</a> repository: there is no release and no versioning scheme
either<a id="DOCF1" href="#FOOT1"><sup>1</sup></a>.  But no
big deal, its home page has an ’Installation’ section which guides you
step by step.
</p>
<p><strong>Notes:</strong>
</p>
<ol>
<li> Make sure you pass the cmake ‑DCMAKE_BUILD_TYPE=RELEASE option, which
triggers absolutely essential adequate runtime optimization flags;

</li><li> Vigra C says it depends on <code>cmake &gt;= 3.1</code>, but this is only
true if you want to build its documentation, probably not the case. Most
distribution still have cmake 2.8, if that is your case, you may safely
edit <samp>/your/path/vigra_c/CMakeLists.txt</samp> and downgrade this
requirement to the cmake version installed on your machine;

</li><li> Make sure the directory where <samp>libvigra_c.so</samp> has been installed is
’known’, either because it is defined in <samp>/etc/ld.so.conf.d</samp>, or
you set the environment variable <code>LD_LIBRARY_PATH</code>, otherwise Guile
won’t find it and <code>configure</code> will report an error.
</li></ol>
</blockquote>

</li><li> <a href="http://www.latex-project.org/">LaTex</a>

<blockquote class="indentedblock">
<p>Any modern latex distribution will do, we use <a href="https://tug.org/texlive/">TexLive</a>.
</p>
<p>Guile-CV will check that it can find the <code>standalone</code>
documentclass, as well as the following packages: <code>inputenc</code>,
<code>fontenc</code>, <code>lmodern</code>, <code>xcolor</code>, <code>booktabs</code>,
<code>siunitx</code>, <code>iwona</code>.
</p>
<p><a href="http://www.tug.dk/FontCatalogue/iwona/">Iwona</a>: this is the font used to create
<a href="#im_002dhistogram">im-histogram</a> headers, legend indices and footers. Note that it
could be that it is not part of your ’basic’ LaTex distro, on debian
for example, iwona is part of the texlive-fonts-extra package.
</p></blockquote>

</li></ul>


<span id="Install-from-the-tarball"></span><h4 class="subheading">Install from the tarball</h4>

<p>Assuming you have satisfied the dependencies, open a terminal and
proceed with the following steps:
</p>
<div class="example">
<pre class="example">cd &lt;download-path&gt;
tar zxf guile-cv-0.4.0.tar.gz
cd guile-cv-0.4.0
./configure [--prefix=/your/prefix] [--with-guile-site=yes]
make
make install
</pre></div>

<blockquote class="indentedblock">
<p><strong>Special note:</strong>
</p>
<p>Before you start to use <a href="http://www.gnu.org/software/guile-cv">Guile-CV</a>, make sure
you read and implement the recommendation made in the manual, section
See <a href="#Configuring-Guile-for-Guile_002dCV">Configuring Guile for Guile-CV</a>.
</p></blockquote>

<p>Happy <a href="http://www.gnu.org/software/guile-cv">Guile-CV</a>!
</p>

<span id="Install-from-the-source"></span><h4 class="subheading">Install from the source</h4>

<p><a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> uses <a href="https://git-scm.com/">Git</a> for
revision control, hosted on <a href="http://savannah.gnu.org/projects/guile-cv">Savannah</a>,
you may browse the sources repository <a href="http://git.savannah.gnu.org/cgit/guile-cv.git">here</a>.
</p>
<p>There are currently 2 [important] branches: <code>master</code> and
<code>devel</code>. <a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> stable branch is
master, developments occur on the devel branch.
</p>
<p>So, to grab, compile and install from the source, open a terminal and:
</p>
<div class="example">
<pre class="example">git clone git://git.savannah.gnu.org/guile-cv.git
cd guile-cv
./autogen.sh
./configure [--prefix=/your/prefix] [--with-guile-site=yes]
make
make install
</pre></div>

<blockquote class="indentedblock">
<p><strong>Special note:</strong>
</p>
<p>Before you start to use <a href="http://www.gnu.org/software/guile-cv">Guile-CV</a>, make sure
you read and implement the recommendation made in the manual, section
See <a href="#Configuring-Guile-for-Guile_002dCV">Configuring Guile for Guile-CV</a>.
</p></blockquote>

<p>The above steps ensure you’re using <a href="http://www.gnu.org/software/guile-cv">Guile-CV</a>
bleeding edge <code>stable</code> version. If you wish to participate to
developments, checkout the <code>devel</code> branch:
</p>
<div class="example">
<pre class="example">git checkout devel
</pre></div>

<p>Happy <code>hacking!</code>
</p>
<br>
<p><strong>Notes:</strong>
</p>

<ol>
<li> The <code>default</code> and <code>--prefix</code> installation locations for source
modules and compiled files (in the absence of
<code>--with-guile-site=yes</code>) are:

<div class="example">
<pre class="example">$(datadir)/guile-cv
$(libdir)/guile-cv/guile/$(GUILE_EFFECTIVE_VERSION)/site-ccache
</pre></div>

<p>If you pass <code>--with-guile-site=yes</code>, these locations become the
Guile global site and site-ccache directories, respectively.
</p>
<p>The configure step reports these locations as the content of the
<code>sitedir</code> and <code>siteccachedir</code> variables, respectivelly the
source modules and compiled files install locations. After installation,
you may consult these variables using pkg-config:
</p>
<div class="example">
<pre class="example">pkg-config guile-cv-1.0 --variable=sitedir
pkg-config guile-cv-1.0 --variable=siteccachedir
</pre></div>

<p>You will need - unless you have used <code>--with-guile-site=yes</code>, or
unless these locations are already ’known’ by Guile - to define or
augment your <code>GUILE_LOAD_PATH</code> and <code>GUILE_COMPILED_PATH</code>
environment variables with these locations, respectively (or
<code>%load-path</code> and <code>%load-compiled-path</code> at run time if you
prefer<a id="DOCF2" href="#FOOT2"><sup>2</sup></a>  (See
<a href="https://www.gnu.org/software/guile/manual/guile.html#Environment-Variables">Environment Variables</a> and
<a href="https://www.gnu.org/software/guile/manual/guile.html#Load-Paths">Load Path</a> in the Guile Reference
Manual).
</p>
</li><li> Guile-CV also installs its <code>libguile-cv.*</code> library files, in
<code>$(libdir)</code>. The configure step reports its location as the content
of the <code>libdir</code> variable, which depends on on the content of the
<code>prefix</code> and <code>exec_prefix</code> variables (also reported). After
nstallation, you may consult these variables using pkg-config:

<div class="example">
<pre class="example">pkg-config guile-cv-1.0 --variable=prefix
pkg-config guile-cv-1.0 --variable=exec_prefix
pkg-config guile-cv-1.0 --variable=libdir
</pre></div>

<p>You will need - unless the <code>$(libdir)</code> location is already ’known’
by your system - to either define or augment your
<code>$LD_LIBRARY_PATH</code> environment variable, or alter the
<samp>/etc/ld.so.conf</samp> (or add a file in <samp>/etc/ld.so.conf.d</samp>) and
run (as root) <code>ldconfig</code>, so that Guile-CV finds its
<code>libguile-cv.*</code> library files<a id="DOCF3" href="#FOOT3"><sup>3</sup></a>.
</p>
</li><li> To install Guile-CV, you must have write permissions to the default or
<code>$(prefix)</code> directory and its subdirs, as well as to both Guile’s
site and site-ccache directories if <code>--with-guile-site=yes</code> was
passed.
<br><br>

</li><li> Like for any other GNU Tool Chain compatible software, you may install
the documentation locally using <code>make install-info</code>, <code>make
install-html</code> and/or <code>make install-pdf</code>.
<br><br>


</li><li> Last but not least :), Guile-CV comes with a <code>test-suite</code>, which we
recommend you to run (especially before <a href="#Reporting-Bugs">Reporting Bugs</a>):

<div class="example">
<pre class="example">make check
</pre></div>
</li></ol>


<hr>
</div>
<div class="section" id="Contact-Information">
<div class="header">
<p>
Next: <a href="#Reporting-Bugs" accesskey="n" rel="next">Reporting Bugs</a>, Previous: <a href="#Obtaining-and-Installing-Guile_002dCV" accesskey="p" rel="prev">Obtaining and Installing Guile-CV</a>, Up: <a href="#Introduction" accesskey="u" rel="up">I. Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Contact-Information-1"></span><h3 class="section">Contact Information</h3>


<span id="Mailing-lists"></span><h4 class="subheading">Mailing lists</h4>

<p>Guile-CV uses the following mailing list:
</p>
<ul>
<li> <a href="mailto:guile-user@gnu.org">guile-user@gnu.org</a> is for general user help and
discussion.
<br><br>

</li><li> <a href="mailto:guile-devel@gnu.org">guile-devel@gnu.org</a> is used to discuss most aspects
of Guile-CV, including development and enhancement requests.
</li></ul>

<p>Please use ‘<samp>Guile-CV - </samp>’ to preceed the subject line of Guile-CV
related emails, thanks!
</p>
<p>You can (un)subscribe to the one or both of these mailing lists by
following instructions on their respective
<a href="https://lists.gnu.org/mailman/listinfo/">list information page</a>.
</p>

<span id="IRC"></span><h4 class="subheading">IRC</h4>

<p>Most of the time you can find me on irc, channel <em>#guile</em>,
<em>#guix</em> and <em>#scheme</em> on <em>irc.libera.chat</em>,
<em>#introspection</em>, <em>#gtk</em> and <em>#clutter</em> on
<em>irc.gnome.org</em>, under the nickname <em>daviid</em>.
</p>

<hr>
</div>
<div class="section" id="Reporting-Bugs">
<div class="header">
<p>
Previous: <a href="#Contact-Information" accesskey="p" rel="prev">Contact Information</a>, Up: <a href="#Introduction" accesskey="u" rel="up">I. Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Reporting-Bugs-1"></span><h3 class="section">Reporting Bugs</h3>

<p>Guile-CV uses the following bug reports mailing list:
</p>
<ul>
<li> <a href="mailto:bugs-guile-cv@gnu.org">bugs-guile-cv@gnu.org</a>
</li></ul>

<p>You can (un)subscribe to the bugs report list by following instructions
on the <a href="https://lists.gnu.org/mailman/listinfo/bug-guile-cv">list information page</a>.
</p>
<p>Further information and a list of available commands are available
<a href="https://debbugs.gnu.org/server-control.html">here</a>.
</p>

<hr>
</div>
</div>
<div class="unnumbered" id="Using-Guile_002dCV">
<div class="header">
<p>
Next: <a href="#Guile_002dCV-Core-Reference" accesskey="n" rel="next">III. Guile-CV Core Reference</a>, Previous: <a href="#Introduction" accesskey="p" rel="prev">I. Introduction</a>, Up: <a href="#Top" accesskey="u" rel="up">Guile-CV Reference Manual</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="II_002e-Using-Guile_002dCV"></span><h2 class="unnumbered">II. Using Guile-CV</h2>


<ul class="section-toc">
<li><a href="#Configuring-Guile-for-Guile_002dCV" accesskey="1">Configuring Guile for Guile-CV</a></li>
<li><a href="#Images-used-in-Guile_002dCV_0027s-documentation" accesskey="2">Images used in Guile-CV’s documentation</a></li>
<li><a href="#Starting-Guile_002dCV" accesskey="3">Starting Guile-CV</a></li>
</ul>
<hr>
<div class="section" id="Configuring-Guile-for-Guile_002dCV">
<div class="header">
<p>
Next: <a href="#Images-used-in-Guile_002dCV_0027s-documentation" accesskey="n" rel="next">Images used in Guile-CV’s documentation</a>, Up: <a href="#Using-Guile_002dCV" accesskey="u" rel="up">II. Using Guile-CV</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Configuring-Guile-for-Guile_002dCV-1"></span><h3 class="section">Configuring Guile for Guile-CV</h3>

<p>Guile must be modified, with respect to two <code>core</code> functionalities,
before to start to use Guile-CV: (a) its <code>repl-print</code> procedure and
(b) its <code>raised exception system</code>.
</p>

<ul class="section-toc">
<li><a href="#Configuring-Guile_0027s-repl_002dprint-procedure" accesskey="1">Configuring Guile’s repl-print procedure</a></li>
<li><a href="#Configuring-Guile_0027s-raised-exception-system" accesskey="2">Configuring Guile’s raised exception system</a></li>
</ul>
<hr>
<div class="subsection" id="Configuring-Guile_0027s-repl_002dprint-procedure">
<div class="header">
<p>
Next: <a href="#Configuring-Guile_0027s-raised-exception-system" accesskey="n" rel="next">Configuring Guile’s raised exception system</a>, Up: <a href="#Configuring-Guile-for-Guile_002dCV" accesskey="u" rel="up">Configuring Guile for Guile-CV</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Configuring-Guile_0027s-repl_002dprint-procedure-1"></span><h4 class="subsection">Configuring Guile’s repl-print procedure</h4>

<p>Guile’s <code>repl-print</code> procedure calls <code>(write val)</code>, which is
inadequate for Guile-CV images - or for that matter, for any work that
involves very large data structure manipulations - even very small
images<a id="DOCF4" href="#FOOT4"><sup>4</sup></a>. Fortunately, Guile provides both a simple mechanism to
alter the default repl printer and the alternate repl printer procedure
we need: <code>truncated-print</code>.
</p>
<p>To modify the default repl printer, you may alter (or add if it doesn’t
exist) your <samp>$HOME/.guile</samp> file or, if you are working in a
multi-user environmet, you may alther (or add if it doesn’t exist) the
file named <samp>init.scm</samp> in the Guile global site directory<a id="DOCF5" href="#FOOT5"><sup>5</sup></a>..
</p>
<p>Which ever solution you choose, add the following lines:
</p>
<div class="example lisp">
<pre class="lisp">(use-modules (ice-9 pretty-print)
             (system repl common))

(repl-default-option-set! 'print
                          (lambda (repl obj)
                            (truncated-print obj) (newline)))
</pre></div>


<hr>
</div>
<div class="subsection" id="Configuring-Guile_0027s-raised-exception-system">
<div class="header">
<p>
Previous: <a href="#Configuring-Guile_0027s-repl_002dprint-procedure" accesskey="p" rel="prev">Configuring Guile’s repl-print procedure</a>, Up: <a href="#Configuring-Guile-for-Guile_002dCV" accesskey="u" rel="up">Configuring Guile for Guile-CV</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Configuring-Guile_0027s-raised-exception-system-1"></span><h4 class="subsection">Configuring Guile’s raised exception system</h4>

<p>Guile’s core raised exception printers call <code>simple-format</code>, which
is inadequate for Guile-CV images - or for that matter, for any work
that involves very large data structure manipulations - even very small
images (see the related footnote of the previous section, it explains
how ‘<samp>inadequate</samp>’ this default is for Guile-CV images).
</p>
<p>Unfortunately, Guile does not provide an easy mechanism to alter its
core raised exception printers. This leaves us with no other option but
making some changes to the module where those are defined, namely the
<code>(ice-9 boot-9)</code> Guile’s core module, which then needs to be
(re)compiled and (re)installed<a id="DOCF6" href="#FOOT6"><sup>6</sup></a>.
</p>
<p>As the <code>(ice-9 boot-9)</code> Guile’s core module has changed from 2.0,
2.2 to 3.0, and still is subject to change any time in the future, we
can’t provide a ‘<samp>one patch for all</samp>’ solution.
</p>
<p>Instead, we describe the steps to manually update your local version.
However if you think it is ‘<samp>too much</samp>’ for you, get in touch with
us, and we will guide you or provide a ‘<samp>ready to use module</samp>’,
depending on your version of Guile.
</p>
<p>So, let’s first figure out where the <code>(ice-9 boot-9)</code> resides on
your system<a id="DOCF7" href="#FOOT7"><sup>7</sup></a>, in a guile session, enter the following:
</p>
<div class="example lisp">
<pre class="lisp">(string-append (%package-data-dir) "/" (effective-version))
⇒
$2 = "/opt3/share/guile/3.0"
</pre></div>

<p>The above returned value is an example of course, just proceed with the
value returned by your system. So, the file we need to edit, in our
example, is here:
</p>
<div class="example">
<pre class="example">/opt3/share/guile/3.0/ice-9/boot-9.scm
</pre></div>

<p>Edit the above file and:
</p>
<ol>
<li> Search for the line <code>(define format simple-format)</code>, and below, add
a line containing <code>(define exception-format simple-format)</code>, so
now your version of the file looks like this:

<div class="example lisp">
<pre class="lisp">(define format simple-format)
(define exception-format simple-format)
</pre></div>

</li><li> Replace all occurences of <code>'(format '</code> using
<code>'(exception-format '</code> [note and meticulously respect the presence
of the leading open paren ’(’ and the trailing space ’ ’ in both the
search and replace expressions].

<p>Save the file.
</p>
</li><li> Compile the file - in the following lines, substitute <code>/opt3</code> by
your <code>$prefix</code> value, <code>3.0</code> by your guile (effective-version)
as well as <code>$HOME</code>:

<div class="example lisp">
<pre class="lisp">cd /opt3/share/guile/3.0/ice-9
guild compile boot-9.scm
-|
;;; note: source file /opt3/share/guile/3.0/ice-9/boot-9.scm
;;;       newer than compiled /opt3/lib/guile/3.0/ccache/ice-9/boot-9.go
wrote `$HOME/.cache/guile/ccache/3.0-LE-8-3.A/opt3/share/guile/3.0/ice-9/boot-9.scm.go'
</pre></div>

<p>Note that the target (compiled) filename is <samp>boot-9.scm.go</samp> - not
<samp>boot-9.go</samp>.
</p>
</li><li> Install the compiled file:

<div class="example lisp">
<pre class="lisp">cp $HOME/.cache/guile/ccache/3.0-LE-8-3.A/opt3/share/guile/3.0/ice-9/boot-9.scm.go \
   /opt3/lib/guile/3.0/ccache/ice-9/boot-9.go
</pre></div>
</li></ol>

<p>Finally, once the above is completed, add the following
lines<a id="DOCF8" href="#FOOT8"><sup>8</sup></a> to your
<samp>$HOME/.guile</samp> or, if you are working in a multi-user environmet,
to the file named <samp>init.scm</samp> in the so-called Guile global site
directory (the previous subsection lists the terminal command you need
to run to see where that directory is on your system):
</p>
<div class="example lisp">
<pre class="lisp">(define %n-char-limit 400)
(define %n-char-limit-fmt-expr
  (simple-format #f "~~~a@y" %n-char-limit))

(define (rewrite-fmt fmt tell)
  (let loop ((f "")
             (b 0))
    (let ((next (string-contains-ci fmt tell b)))
      (if next
          (loop (if (or (zero? next)
                        (not (char=? #\~ (string-ref fmt (- next 1)))))
                    (string-append f
                                   (substring fmt b next)
                                   %n-char-limit-fmt-expr)
                    f)
                (+ next 2))
          (string-append f (substring fmt b))))))

(when (defined? 'exception-format)
  (set! exception-format
        (lambda (port fmt0 . args)
          (apply (@ (ice-9 format) format)
                 port
                 (rewrite-fmt (rewrite-fmt fmt0 "~s") "~a")
                 args))))
</pre></div>

<p>Feel free to adapt the <code>%n-char-limit</code> value to your own taste.
</p>
<p>You are now ready to use Guile-CV!
</p>

<hr>
</div>
</div>
<div class="section" id="Images-used-in-Guile_002dCV_0027s-documentation">
<div class="header">
<p>
Next: <a href="#Starting-Guile_002dCV" accesskey="n" rel="next">Starting Guile-CV</a>, Previous: <a href="#Configuring-Guile-for-Guile_002dCV" accesskey="p" rel="prev">Configuring Guile for Guile-CV</a>, Up: <a href="#Using-Guile_002dCV" accesskey="u" rel="up">II. Using Guile-CV</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Images-used-in-Guile_002dCV_0027s-documentation-1"></span><h3 class="section">Images used in Guile-CV’s documentation</h3>

<p>Images used in Guile-CV’s documentation are distributed with the source
and installed here:
</p>
<div class="example">
<pre class="example">$prefix/share/doc/guile-cv/images
</pre></div>

<p>Examples using <code>im-load</code> and <code>im-save</code> given in this manual,
unless a full pathname is specified, assume that these images are
available from the guile current working directory, see <code>getcwd</code>
and <code>chdir</code> in Guile’s manual
</p>
<p>Our best recommendation, at least to start with, is to create a working
directory, such as <code>mkdir $HOME/guile-cv/images</code>, for example, and
as you need them, copy the distributed images you are interested in.
</p>

<hr>
</div>
<div class="section" id="Starting-Guile_002dCV">
<div class="header">
<p>
Previous: <a href="#Images-used-in-Guile_002dCV_0027s-documentation" accesskey="p" rel="prev">Images used in Guile-CV’s documentation</a>, Up: <a href="#Using-Guile_002dCV" accesskey="u" rel="up">II. Using Guile-CV</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Starting-Guile_002dCV-1"></span><h3 class="section">Starting Guile-CV</h3>

<br>
<div align="center"><sup>_</sup> <small>SPECIAL NOTE</small> <sup>_</sup>
</div>
<p>Before you start to use Guile-CV, make sure you read and implement the
recommendation made in <a href="#Configuring-Guile-for-Guile_002dCV">Configuring Guile for Guile-CV</a>
</p>
<br>
<p>With the previous <a href="#Images-used-in-Guile_002dCV_0027s-documentation">Images used in Guile-CV’s documentation</a>
recommendations in mind, open a terminal and:
</p>
<div class="example lisp">
<pre class="lisp">cd ~/guile-cv/images
guile
scheme@(guile-user)&gt; ,use (cv)
scheme@(guile-user)&gt; (im-load "sand.tif")
⇒
$2 = (512 512 1 (#f32(125.0 128.0 124.0 118.0 108.0 75.0 76.0 # …)))
</pre></div>

<p>Or if you use <a href="https://www.gnu.org/software/emacs">Emacs</a> which, coupled with
<a href="http://www.nongnu.org/geiser">Geiser</a> absolutely rocks <code>:-)</code>, then a
typical session becomes:
</p>
<div class="example lisp">
<pre class="lisp">fire Emacs
M-x cd
-|
Change default directory: ~/guile-cv/images

M-x run-guile
scheme@(guile-user)&gt; ,use (cv)
scheme@(guile-user)&gt; (im-load "sand.tif")
⇒
$2 = (512 512 1 (#f32(125.0 128.0 124.0 118.0 108.0 75.0 76.0 # …)))
</pre></div>

<p>Note that to benefit from Emacs’s Tab completion mechanism, while typing
image filenames, Emacs itself must be in that directory, hence the above
first step <code>M-x cd ...</code>
</p>


<hr>
</div>
</div>
<div class="unnumbered" id="Guile_002dCV-Core-Reference">
<div class="header">
<p>
Next: <a href="#GNU-Free-Documentation-License" accesskey="n" rel="next">GNU Free Documentation License</a>, Previous: <a href="#Using-Guile_002dCV" accesskey="p" rel="prev">II. Using Guile-CV</a>, Up: <a href="#Top" accesskey="u" rel="up">Guile-CV Reference Manual</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="III_002e-Guile_002dCV-Core-Reference"></span><h2 class="unnumbered">III. Guile-CV Core Reference</h2>





<ul class="section-toc">
<li><a href="#Overview" accesskey="1">Overview</a></li>
<li><a href="#Image-Processing" accesskey="2">Image Processing</a></li>
<li><a href="#Support" accesskey="3">Support</a></li>
</ul>
<hr>
<div class="section" id="Overview">
<div class="header">
<p>
Next: <a href="#Image-Processing" accesskey="n" rel="next">Image Processing</a>, Up: <a href="#Guile_002dCV-Core-Reference" accesskey="u" rel="up">III. Guile-CV Core Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Overview-1"></span><h3 class="section">Overview</h3>



<p>FIXME - The overview section and its subsections is a mock-up, all need
to be actually ’filled’.
</p>






<ul class="section-toc">
<li><a href="#Naming-Conventions" accesskey="1">Naming Conventions</a></li>
<li><a href="#Abreviations" accesskey="2">Abreviations</a></li>
</ul>
<hr>
<div class="subsection" id="Naming-Conventions">
<div class="header">
<p>
Next: <a href="#Abreviations" accesskey="n" rel="next">Abreviations</a>, Up: <a href="#Overview" accesskey="u" rel="up">Overview</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Naming-Conventions-1"></span><h4 class="subsection">Naming Conventions</h4>


<span id="Vigra-Funtions"></span><h4 class="subheading">Vigra Funtions</h4>

<p>Guile-CV low level CR procedure names that bind a Vigra functions
always start with <code>vigra-</code> ...
</p>
<div class="example">
<pre class="example">vigra-local-minima
vigra-crop-channel
…
</pre></div>




<hr>
</div>
<div class="subsection" id="Abreviations">
<div class="header">
<p>
Previous: <a href="#Naming-Conventions" accesskey="p" rel="prev">Naming Conventions</a>, Up: <a href="#Overview" accesskey="u" rel="up">Overview</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Abreviations-1"></span><h4 class="subsection">Abreviations</h4>

<p>FIXME. Needs to be ’filled’.
</p>

<hr>
</div>
</div>
<div class="section" id="Image-Processing">
<div class="header">
<p>
Next: <a href="#Support" accesskey="n" rel="next">Support</a>, Previous: <a href="#Overview" accesskey="p" rel="prev">Overview</a>, Up: <a href="#Guile_002dCV-Core-Reference" accesskey="u" rel="up">III. Guile-CV Core Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Image-Processing-1"></span><h3 class="section">Image Processing</h3>







<ul class="section-toc">
<li><a href="#Image-Structure-and-Accessors" accesskey="1">Image Structure and Accessors</a></li>
<li><a href="#Kernel-Structure-and-Accessors" accesskey="2">Kernel Structure and Accessors</a></li>
<li><a href="#Import-Export" accesskey="3">Import Export</a></li>
<li><a href="#Histogram" accesskey="4">Histogram</a></li>
<li><a href="#Texture" accesskey="5">Texture</a></li>
<li><a href="#Features" accesskey="6">Features</a></li>
<li><a href="#Particles" accesskey="7">Particles</a></li>
<li><a href="#Filter" accesskey="8">Filter</a></li>
<li><a href="#Process" accesskey="9">Process</a></li>
<li><a href="#Transform">Transform</a></li>
<li><a href="#Morphology">Morphology</a></li>
<li><a href="#Segmentation">Segmentation</a></li>
<li><a href="#Compose">Compose</a></li>
<li><a href="#Utilities">Utilities</a></li>
</ul>
<hr>
<div class="subsection" id="Image-Structure-and-Accessors">
<div class="header">
<p>
Next: <a href="#Kernel-Structure-and-Accessors" accesskey="n" rel="next">Kernel Structure and Accessors</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Image-Structure-and-Accessors-1"></span><h4 class="subsection">Image Structure and Accessors</h4>

<p>The Guile-CV procedures and methods related to image data structure,
creating, accessing and copying images.
</p>

<span id="Procedures"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002dmake">im-make</a></code></span></dt>
<dt><span><code><a href="#im_002dmake_002dchannel">im-make-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dmake_002dchannels">im-make-channels</a></code></span></dt>
<dt><span><code><a href="#im_002dcopy">im-copy</a></code></span></dt>
<dt><span><code><a href="#im_002dcopy_002dchannel">im-copy-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dsize_005f">im-size_</a></code></span></dt>
<dt><span><code><a href="#im_002dwidth_005f">im-width_</a></code></span></dt>
<dt><span><code><a href="#im_002dheight_005f">im-height_</a></code></span></dt>
<dt><span><code><a href="#im_002dn_002dchannel_005f">im-n-channel_</a></code></span></dt>
<dt><span><code><a href="#im_002dchannels_005f">im-channels_</a></code></span></dt>
<dt><span><code><a href="#im_002dchannel">im-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dimage_003f">im-image?</a></code></span></dt>
<dt><span><code><a href="#im_002dgray_003f_005f">im-gray?_</a></code></span></dt>
<dt><span><code><a href="#im_002drgb_003f_005f">im-rgb?_</a></code></span></dt>
<dt><span><code><a href="#im_002dbinary_003f">im-binary?</a></code></span></dt>
<dt><span><code><a href="#im_002dbinary_002dchannel_003f">im-binary-channel?</a></code></span></dt>
<dt><span><code><a href="#im_002d_003d_003f">im-=?</a></code></span></dt>
<dt><span><code><a href="#im_002d_003d_002dchannel_003f">im-=-channel?</a></code></span></dt>
<dt><span><code><a href="#im_002dref">im-ref</a></code></span></dt>
<dt><span><code><a href="#im_002dfast_002dref">im-fast-ref</a></code></span></dt>
<dt><span><code><a href="#im_002dset_0021">im-set!</a></code></span></dt>
<dt><span><code><a href="#im_002dfast_002dset_0021">im-fast-set!</a></code></span></dt>
<dt><span><code><a href="#im_002dchannel_002doffset">im-channel-offset</a></code></span></dt>
<dt><span><code><a href="#im_002dfast_002dchannel_002doffset">im-fast-channel-offset</a></code></span></dt>
<dt><span><code><a href="#im_002dchannel_002dref">im-channel-ref</a></code></span></dt>
<dt><span><code><a href="#im_002dfast_002dchannel_002dref">im-fast-channel-ref</a></code></span></dt>
<dt><span><code><a href="#im_002dchannel_002dset_0021">im-channel-set!</a></code></span></dt>
<dt><span><code><a href="#im_002dfast_002dchannel_002dset_0021">im-fast-channel-set!</a></code></span></dt>
<dt><span><code><a href="#im_002dcollect">im-collect</a></code></span></dt>
</dl>
</blockquote>


<span id="Description"></span><h4 class="subheading">Description</h4>

<p>A Guile-CV image is represented by a list containing the following
elements:
</p>
<div class="example lisp">
<pre class="lisp">(<var>width</var> <var>height</var> <var>n-channel</var> <var>idata</var>)
</pre></div>

<p>where <var>idata</var> is a list of <var>n-channel</var> elements, each element
being a vector of <code>(* <var>width</var> <var>height</var>)</code> cells. More
precisely, each element is an <code>srfi-4</code> homogeneous numeric vector
of 32 bit floats, called <code>f32vector</code>, knowing that <code>f32</code> is
the C type <code>float</code>.
</p>
<p>The external representation (ie. read syntax) for <var>idata</var> vectors is
<code>#f32(…)</code>. As an example, a gray scale image of width 3 and
height 2, initialized to 0.0 is represented by the following expression:
</p>
<div class="example lisp">
<pre class="lisp">(3 2 1 (#f32(0.0 0.0 0.0 0.0 0.0 0.0)))
</pre></div>

<p>The <var>n-channel</var> is an integer <code>&gt;= 1</code>, with no limit but the
memory size.  This said, most Guile-CV procedures and methods expect
either GRAY scale (<var>n-channel=1</var>), or RGB (<var>n-channel=3</var>)
images.  For the later, the channels are <code>Red</code>, <code>Green</code> and
<code>Blue</code> in that order.
</p>
<p>Guile-CV provides usefull accessors for all these fields. However, very
often, you will need them all, in which case your best friend is
<code>(ice-9 match)</code>, here is an example:
</p>
<div class="example lisp">
<pre class="lisp">,use (cv)
(define image (im-make 4 3 3))
(match image
  ((width height n-chan idata)
   (match idata
     ((r g b)
      ... your code here ...))))
</pre></div>

<p>You will find many examples of such a ‘<samp>pattern</samp>’ in Guile-CV’s
source code itself of course, along with some other ‘<samp>techniques</samp>’
that might be useful, so we invite you to read it, and if you do so:
feedback, design and code review is more then welcome! This section
describes what is in the module <code>(cv idata)</code>.
</p>
<p>Note that the <code>(cv)</code> module imports and re-exports, among may
others, the public interface of <code>(ice-9 match)</code>.
</p>

<span id="Procedures-1"></span><h4 class="subheading">Procedures</h4>

<span id="im_002dmake"></span><span id="im_002dmake_002dchannel"></span><span id="im_002dmake_002dchannels"></span><dl class="def">
<dt id="index-im_002dmake"><span class="category">Procedure: </span><span><strong>im-make</strong> <em>width height n [value]</em><a href="#index-im_002dmake" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dmake_002dchannel"><span class="category">Procedure: </span><span><strong>im-make-channel</strong> <em>width height [value]</em><a href="#index-im_002dmake_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dmake_002dchannels"><span class="category">Procedure: </span><span><strong>im-make-channels</strong> <em>width height n [value]</em><a href="#index-im_002dmake_002dchannels" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image, list of channels or channel.
</p>
<p>Each channel is an srfi-4 homogeneous vector of 32 bit floats
(f32vector), of <var>width</var> by <var>height</var> initialized to
<var>value</var>. The default <var>value</var> is 0.0
</p></dd></dl>


<span id="im_002dcopy"></span><span id="im_002dcopy_002dchannel"></span><dl class="def">
<dt id="index-im_002dcopy"><span class="category">Procedure: </span><span><strong>im-copy</strong> <em>image</em><a href="#index-im_002dcopy" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dcopy_002dchannel"><span class="category">Procedure: </span><span><strong>im-copy-channel</strong> <em>channel width height</em><a href="#index-im_002dcopy_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new fresh copy of <var>image</var> or <var>channel</var>.
</p></dd></dl>


<span id="im_002dsize_005f"></span><dl class="def">
<dt id="index-im_002dsize"><span class="category">Method: </span><span><strong>im-size</strong> <em>image</em><a href="#index-im_002dsize" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns the list of <code>(<var>width</var> <var>height</var> <var>n-channel</var>)for
<var>image</var></code>.
</p></dd></dl>


<span id="im_002dwidth_005f"></span><span id="im_002dheight_005f"></span><span id="im_002dn_002dchannel_005f"></span><span id="im_002dchannels_005f"></span><span id="im_002dchannel"></span><dl class="def">
<dt id="index-im_002dwidth"><span class="category">Method: </span><span><strong>im-width</strong> <em>image</em><a href="#index-im_002dwidth" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dheight"><span class="category">Method: </span><span><strong>im-height</strong> <em>image</em><a href="#index-im_002dheight" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dn_002dchannel"><span class="category">Method: </span><span><strong>im-n-channel</strong> <em>image</em><a href="#index-im_002dn_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dchannels"><span class="category">Method: </span><span><strong>im-channels</strong> <em>image</em><a href="#index-im_002dchannels" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dchannel"><span class="category">Procedure: </span><span><strong>im-channel</strong> <em>image n</em><a href="#index-im_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns, respectively the <var>width</var>, the <var>height</var>, <var>n-channel</var>,
<var>channels</var> or the <var>n</var>th channel for <var>image</var>.
</p></dd></dl>


<span id="im_002dimage_003f"></span><span id="im_002dgray_003f_005f"></span><span id="im_002drgb_003f_005f"></span><dl class="def">
<dt id="index-im_002dimage_003f"><span class="category">Procedure: </span><span><strong>im-image?</strong> <em>image</em><a href="#index-im_002dimage_003f" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dgray_003f"><span class="category">Method: </span><span><strong>im-gray?</strong> <em>image</em><a href="#index-im_002dgray_003f" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002drgb_003f"><span class="category">Method: </span><span><strong>im-rgb?</strong> <em>image</em><a href="#index-im_002drgb_003f" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns <code>#t</code> if <var>image</var> is respectively a Guile-CV image, a
GRAY scale or an RGB image.
</p></dd></dl>


<span id="im_002dbinary_003f"></span><span id="im_002dbinary_002dchannel_003f"></span><dl class="def">
<dt id="index-im_002dbinary_003f"><span class="category">Procedure: </span><span><strong>im-binary?</strong> <em>i1 i2 i3 …</em><a href="#index-im_002dbinary_003f" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dbinary_002dchannel_003f"><span class="category">Procedure: </span><span><strong>im-binary-channel?</strong> <em>width height c1 c2 c3 …</em><a href="#index-im_002dbinary_002dchannel_003f" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns <code>#t</code> if <var>i1</var> <var>i2</var> <var>i3</var> … or <var>c1</var>
<var>c2</var> <var>c3</var> … respectively are BINARY (Black and White)
images or channels respectively.
</p>
<p>Note that when more then one image or channel is passed, they must all
be of the same size.
</p></dd></dl>


<span id="im_002d_003d_003f"></span><span id="im_002d_003d_002dchannel_003f"></span><dl class="def">
<dt id="index-im_002d_003d_003f"><span class="category">Procedure: </span><span><strong>im-=?</strong> <em>[precision] i1 i2 i3 …</em><a href="#index-im_002d_003d_003f" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002d_003d_002dchannel_003f"><span class="category">Procedure: </span><span><strong>im-=-channel?</strong> <em>width height [precision] c1 c2 c3 …</em><a href="#index-im_002d_003d_002dchannel_003f" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns <code>#t</code> if <var>i1</var> <var>i2</var> <var>i3</var> … or <var>c1</var>
<var>c2</var> <var>c3</var> … respectively are of the same size, have the
same number of channels that all respectively contain the same values.
</p>
<p>If the first argument is a number, it is used as the precision to
compare pixel values. The default precision value is <code>1.0e-4</code>.
Note that if you are certain your images or channels contain ’discrete’
float values, you may pass <code>0.0</code> as the precision to be used, i
which case values will be compared using <code>=</code> (instead of
<code>float=?</code>, which is faster.
</p></dd></dl>


<span id="im_002dref"></span><span id="im_002dfast_002dref"></span><dl class="def">
<dt id="index-im_002dref"><span class="category">Procedure: </span><span><strong>im-ref</strong> <em>image i j [k]</em><a href="#index-im_002dref" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dfast_002dref"><span class="category">Procedure: </span><span><strong>im-fast-ref</strong> <em>image i j [k]</em><a href="#index-im_002dfast_002dref" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns the pixel value stored at position <var>i</var> and <var>j</var> of the
<var>image</var> channel <var>k</var>.  The default value for <var>k</var> is 0.
</p>
<p><var>im-fast-ref</var> does not check the validity of its arguments: use it
at your own risk.
</p></dd></dl>


<span id="im_002dset_0021"></span><span id="im_002dfast_002dset_0021"></span><dl class="def">
<dt id="index-im_002dset_0021"><span class="category">Procedure: </span><span><strong>im-set!</strong> <em>image i j [k] value</em><a href="#index-im_002dset_0021" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dfast_002dset_0021"><span class="category">Procedure: </span><span><strong>im-fast-set!</strong> <em>image i j [k] value</em><a href="#index-im_002dfast_002dset_0021" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns nothing.
</p>
<p>Sets the pixel value stored at position <var>i</var> and <var>j</var> of the
<var>image</var> channel <var>k</var> to <var>value</var>.  The default value for
<var>k</var> is 0.
</p>
<p><var>im-fast-set!</var> does not check the validity of its arguments: use it
at your own risk.
</p></dd></dl>


<span id="im_002dchannel_002doffset"></span><span id="im_002dfast_002dchannel_002doffset"></span><dl class="def">
<dt id="index-im_002dchannel_002doffset"><span class="category">Procedure: </span><span><strong>im-channel-offset</strong> <em>i j width height</em><a href="#index-im_002dchannel_002doffset" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dfast_002dchannel_002doffset"><span class="category">Procedure: </span><span><strong>im-fast-channel-offset</strong> <em>i j width</em><a href="#index-im_002dfast_002dchannel_002doffset" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns the channel offset for the <var>i</var> and <var>j</var> indices, based on
the <var>width</var> and <var>height</var> of the channel.
</p>
<p>This procedure converts the matrix indices <var>i</var> and <var>j</var> to a
vector offset for a channel of size <var>width</var> and <var>height</var>.
</p>
<p><var>im-fast-channel-offset</var> does not check the validity of its
arguments: use it at your own risk.
</p></dd></dl>


<span id="im_002dchannel_002dref"></span><span id="im_002dfast_002dchannel_002dref"></span><dl class="def">
<dt id="index-im_002dchannel_002dref"><span class="category">Procedure: </span><span><strong>im-channel-ref</strong> <em>channel i j width height</em><a href="#index-im_002dchannel_002dref" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dfast_002dchannel_002dref"><span class="category">Procedure: </span><span><strong>im-fast-channel-ref</strong> <em>channel i j width</em><a href="#index-im_002dfast_002dchannel_002dref" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns the pixel value stored at position <var>i</var> and <var>j</var> of the
channel of size <var>width</var> and <var>height</var>.
</p>
<p><var>im-fast-channel-ref</var> does not check the validity of its arguments:
use it at your own risk.
</p></dd></dl>


<span id="im_002dchannel_002dset_0021"></span><span id="im_002dfast_002dchannel_002dset_0021"></span><dl class="def">
<dt id="index-im_002dchannel_002dset_0021"><span class="category">Procedure: </span><span><strong>im-channel-set!</strong> <em>channel i j width height value</em><a href="#index-im_002dchannel_002dset_0021" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dfast_002dchannel_002dset_0021"><span class="category">Procedure: </span><span><strong>im-fast-channel-set!</strong> <em>channel i j width value</em><a href="#index-im_002dfast_002dchannel_002dset_0021" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns nothing.
</p>
<p>Sets the pixel at position <var>i</var> and <var>j</var> of <var>channel</var> of size
<var>width</var> and <var>height</var> to <var>value</var>.
</p>
<p><var>im-fast-channel-set!</var> does not check the validity of its arguments:
use it at your own risk.
</p></dd></dl>


<span id="im_002dcollect"></span><dl class="def">
<dt id="index-im_002dcollect"><span class="category">Procedure: </span><span><strong>im-collect</strong> <em>what i1 i2 i3 …</em><a href="#index-im_002dcollect" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a list of <var>what</var> collected from <var>i1 i2 i3</var> …
</p>
<p>The valid <var>what</var> synbols are:
</p><blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>size</code></span></dt>
<dt><span><code>width</code></span></dt>
<dt><span><code>height</code></span></dt>
<dt><span><code>n-channel</code></span></dt>
<dt><span><code>channels</code></span></dt>
<dt><span><code>chan-0, gray, red</code></span></dt>
<dt><span><code>chan-1, green</code></span></dt>
<dt><span><code>chan-2, blue</code></span></dt>
<dt><span><code>chan-k (*)</code></span></dt>
</dl>
</blockquote>

<p>(*): whith k being a valid channel indice, [0 (- n 1)].
</p></dd></dl>


<hr>
</div>
<div class="subsection" id="Kernel-Structure-and-Accessors">
<div class="header">
<p>
Next: <a href="#Import-Export" accesskey="n" rel="next">Import Export</a>, Previous: <a href="#Image-Structure-and-Accessors" accesskey="p" rel="prev">Image Structure and Accessors</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Kernel-Structure-and-Accessors-1"></span><h4 class="subsection">Kernel Structure and Accessors</h4>

<p>The Guile-CV procedures and methods related to kernel data structure,
creating and accessing kernels.
</p>

<span id="Procedures-2"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#k_002dmake">k-make</a></code></span></dt>
<dt><span><code><a href="#k_002dmake_002dcircular_002dmask">k-make-circular-mask</a></code></span></dt>
<dt><span><code><a href="#k_002dwidth">k-width</a></code></span></dt>
<dt><span><code><a href="#k_002dheight">k-height</a></code></span></dt>
<dt><span><code><a href="#k_002dsize">k-size</a></code></span></dt>
<dt><span><code><a href="#k_002dchannel">k-channel</a></code></span></dt>
<dt><span><code><a href="#kernel_003f">kernel?</a></code></span></dt>
<dt><span><code><a href="#k_002dref">k-ref</a></code></span></dt>
<dt><span><code><a href="#k_002dfast_002dref">k-fast-ref</a></code></span></dt>
<dt><span><code><a href="#k_002dset_0021">k-set!</a></code></span></dt>
<dt><span><code><a href="#k_002dfast_002dset_0021">k-fast-set!</a></code></span></dt>
<dt><span><code><a href="#k_002doffset">k-offset</a></code></span></dt>
<dt><span><code><a href="#k_002dfast_002doffset">k-fast-offset</a></code></span></dt>
<dt><span><code><a href="#k_002ddisplay">k-display</a></code></span></dt>
</dl>
</blockquote>


<span id="Description-1"></span><h4 class="subheading">Description</h4>

<p>A Guile-CV <a href="https://en.wikipedia.org/wiki/Kernel_(image_processing)">kernel</a> is represented by a list
containing the following elements:
</p>
<div class="example lisp">
<pre class="lisp">(<var>width</var> <var>height</var> <var>kdata</var>)
</pre></div>

<p>where <var>kdata</var> is a vector of <code>(* <var>width</var> <var>height</var>)</code>
cells. More precisely, <var>kdata</var> is an <code>srfi-4</code> homogeneous
numeric vector of 64 bit floats, called <code>f64vector</code>, knowing that
<code>f64</code> is the C type <code>double</code>.
</p>
<p>The external representation (ie. read syntax) for <var>kdata</var> vectors is
<code>#f64(…)</code>. As an example, the <code>identity</code> kernel of width
3 and height 3, initialized to 0.0 is represented by the following
expression:
</p>
<div class="example lisp">
<pre class="lisp">(3 3 #f64(0.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0))
</pre></div>

<p>The kernel <var>width</var> and <var>height</var> can be different (kernels can be
rectangular), but both <var>width</var> and <var>height</var> must be odd values.
</p>
<p>Guile-CV provides useful accessors for kernel fields, however, if you
need them all, just like for accessing image fields, your best friend is
<code>(ice-9 match)</code>, here is an example:
</p>
<div class="example lisp">
<pre class="lisp">,use (cv)
(match kernel
  ((width height kdata)
   ... your code here ...))
</pre></div>

<p>Note that the <code>(cv)</code> module imports and re-exports, among may
others, the public interface of <code>(ice-9 match)</code>.
</p>
<p>Guile-CV defines a few useful kernels, see <a href="#kernel-variables">kernel variables</a> at
the end of this section, that you both may want to use and reuse: it
will be easier, if you need to do so, to define your own kernels reusing
an existing one, see the <code>(cv kdata)</code> module.
</p>

<span id="Procedures-3"></span><h4 class="subheading">Procedures</h4>

<span id="k_002dmake"></span><dl class="def">
<dt id="index-k_002dmake"><span class="category">Procedure: </span><span><strong>k-make</strong> <em>width height [values #f] [norm #f]</em><a href="#index-k_002dmake" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new kernel.
</p>
<p>The <code>kdata</code> value of this new kernel is an srfi-4 homogeneous
numeric vector of 64 bit floats, <code>f64vector</code>, composed of
<var>width</var> by <var>height</var> cells.
</p>
<p>The optional <var>values</var> argument can be:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>#f</code></span></dt>
<dd><p><code>kdata</code> is initialized to the ‘<samp>identity</samp>’ kernel (all zeros
except the center of the kernel, initialzed to 1)
</p>
</dd>
<dt><span><code>a single value</code></span></dt>
<dd><p>all <code>kdata</code> cells are initialized using that single value
</p>
</dd>
<dt><span><code>a list of values</code></span></dt>
<dd><p>a list of <var>width</var> by <var>height</var> values, used to initialzed
<code>kdata</code>, in the order they are given
</p></dd>
</dl>
</blockquote>

<p>The optional <var>norm</var> argument can be:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>#f</code></span></dt>
<dd><p>in this case, <code>kdata</code> is not normalized
</p>
</dd>
<dt><span><code>#t</code></span></dt>
<dd><p>unless <var>values</var> would be <code>#f</code>, <code>kdata</code> is normalized using
<code>(reduce + 0 values)</code>
</p>
</dd>
<dt><span><code>a single value</code></span></dt>
<dd><p>all <code>kdata</code> cells are normalized using that value, which must be a
number different from <code>0</code>
</p></dd>
</dl>
</blockquote>

<p>When both <var>values</var> and <var>norm</var> are passed - which is mandatory if
you want to pass <var>norm</var> (since these are optional arguments, as
opposed to keyword arguments) - <var>values</var> must precede <var>norm</var> on
the arguments list.
</p>
<p>As an example, here is how to define a <code>3 x 3</code> normalized mean
kernel:
</p>
<div class="example lisp">
<pre class="lisp">,use (cv)
(k-make 3 3 1 #t)
-|
$2 = (3 3 #f64(0.1111111111111111 0.1111111111111111  # # # # …))
(k-display $2)
-|

    0.11111    0.11111    0.11111
    0.11111    0.11111    0.11111
    0.11111    0.11111    0.11111
</pre></div>
</dd></dl>


<span id="k_002dmake_002dcircular_002dmask"></span><dl class="def">
<dt id="index-k_002dmake_002dcircular_002dmask"><span class="category">Procedure: </span><span><strong>k-make-circular-mask</strong> <em>radius [value 1] [norm #f]</em><a href="#index-k_002dmake_002dcircular_002dmask" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new <code>circular mask</code> kernel.
</p>
<p>The <code>kdata</code> value of this new kernel is an srfi-4 homogeneous
numeric vector of 64 bit floats, <code>f64vector</code>, composed of
<var>width</var> by <var>height</var> cells where <var>width</var> and <var>height</var> are
<code>equal</code> and <code>odd</code> values determined by the procedure.
</p>
<p>The mandatory <code>radius</code> argument must be a floating point number
satisfying the following predicate: <code>(float&gt;=? radius 0.5)</code>.
</p>
<p>The optional <var>norm</var> argument can be:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>#f</code></span></dt>
<dd><p>in this case, <code>kdata</code> is not normalized
</p>
</dd>
<dt><span><code>#t</code></span></dt>
<dd><p><code>kdata</code> values are normalized using <code>(* n value)</code>, where
<code>n</code> is the number of non zero elements of the circular kernel mask
being defined.
</p></dd>
</dl>
</blockquote>

<p>When both <var>value</var> and <var>norm</var> are passed - which is mandatory if
you want to pass <var>norm</var> (since these are optional arguments, as
opposed to optional keyword arguments) - <var>value</var> must precede
<var>norm</var> on the arguments list.
</p>
<p>To illustrate, here are the circular kernel masks of <var>radius 0.5</var>,
<code>1</code>, <code>1.5</code> respectively:
</p>
<div class="example lisp">
<pre class="lisp">...
(for-each (lambda (i)
            (k-display (k-make-circular-mask i)
                       #:proc float-&gt;int))
  '(0.5 1.0 1.5))
-|

  0  1  0
  1  1  1
  0  1  0


  1  1  1
  1  1  1
  1  1  1


  0  0  1  0  0
  0  1  1  1  0
  1  1  1  1  1
  0  1  1  1  0
  0  0  1  0  0
</pre></div>

<p>To better illustrate, let’s define a bigger circular kernel mask,
transform it to an image and <a href="#im_002dshow">im-show</a> it:
</p>
<div class="example lisp">
<pre class="lisp">...
(match (k-make-circular-mask 49)
  ((w h kdata) (list w h 1 (list (f64vector-&gt;f32vector kdata)))))
  -|
$6 = (99 99 1 (#f32(0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 # …)))
(im-show $6 'scale)
</pre></div>

<p>And you should see the following image<a id="DOCF9" href="#FOOT9"><sup>9</sup></a>
</p>
<blockquote class="indentedblock">
<img src="Guile-CV%20Reference%20Manual_files/circular-kernel-mask-49.png" alt="circular-kernel-mask-49">
</blockquote>
</dd></dl>


<span id="k_002dwidth"></span><span id="k_002dheight"></span><span id="k_002dsize"></span><span id="k_002dchannel"></span><dl class="def">
<dt id="index-k_002dwidth"><span class="category">Procedure: </span><span><strong>k-width</strong> <em>kernel</em><a href="#index-k_002dwidth" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-k_002dheight"><span class="category">Procedure: </span><span><strong>k-height</strong> <em>kernel</em><a href="#index-k_002dheight" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-k_002dsize"><span class="category">Procedure: </span><span><strong>k-size</strong> <em>kernel</em><a href="#index-k_002dsize" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-k_002dchannel"><span class="category">Procedure: </span><span><strong>k-channel</strong> <em>kernel</em><a href="#index-k_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns, respectively, the <var>width</var>, the <var>height</var>, the list of
<var>width</var> and <var>height</var> or the <var>kdata</var> for <var>kernel</var>.
</p></dd></dl>


<span id="kernel_003f"></span><dl class="def">
<dt id="index-kernel_003f"><span class="category">Procedure: </span><span><strong>kernel?</strong> <em>kernel</em><a href="#index-kernel_003f" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns <code>#t</code> if <var>kernel</var> is a Guile-CV kernel.
</p></dd></dl>


<span id="k_002dref"></span><span id="k_002dfast_002dref"></span><dl class="def">
<dt id="index-k_002dref"><span class="category">Procedure: </span><span><strong>k-ref</strong> <em>kernel i j</em><a href="#index-k_002dref" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-k_002dfast_002dref"><span class="category">Procedure: </span><span><strong>k-fast-ref</strong> <em>kernel i j</em><a href="#index-k_002dfast_002dref" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns the value stored at position <var>i</var> and <var>j</var> of the
<var>kernel</var>.
</p>
<p><var>k-fast-ref</var> does not check the validity of its arguments: use it
at your own risk.
</p></dd></dl>


<span id="k_002dset_0021"></span><span id="k_002dfast_002dset_0021"></span><dl class="def">
<dt id="index-k_002dset_0021"><span class="category">Procedure: </span><span><strong>k-set!</strong> <em>kernel i j value</em><a href="#index-k_002dset_0021" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-k_002dfast_002dset_0021"><span class="category">Procedure: </span><span><strong>k-fast-set!</strong> <em>kernel i j value</em><a href="#index-k_002dfast_002dset_0021" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns nothing.
</p>
<p>Sets the value stored at position <var>i</var> and <var>j</var> of the
<var>kernel</var> to <var>value</var>.
</p>
<p><var>k-fast-set!</var> does not check the validity of its arguments: use it
at your own risk.
</p></dd></dl>


<span id="k_002doffset"></span><span id="k_002dfast_002doffset"></span><dl class="def">
<dt id="index-k_002doffset"><span class="category">Procedure: </span><span><strong>k-offset</strong> <em>i j width height</em><a href="#index-k_002doffset" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-k_002dfast_002doffset"><span class="category">Procedure: </span><span><strong>k-fast-offset</strong> <em>i j width</em><a href="#index-k_002dfast_002doffset" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns the kernel offset for the <var>i</var> and <var>j</var> indices, based on
the <var>width</var> and <var>height</var> of the kernel.
</p>
<p>This procedure converts the matrix indices <var>i</var> and <var>j</var> to a
vector offset for a kernel of size <var>width</var> and <var>height</var>.
</p>
<p><var>k-fast-offset</var> does not check the validity of its arguments: use it
at your own risk.
</p></dd></dl>


<span id="k_002ddisplay"></span><dl class="def">
<dt id="index-k_002ddisplay"><span class="category">Procedure: </span><span><strong>k-display</strong> <em>image        [#:proc #f] [#:port (current-output-port)]</em><a href="#index-k_002ddisplay" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns nothing.
</p>
<p>Displays the content of <var>kernel</var> on <var>port</var>, applying <var>proc</var>
to each kernel value.
</p>
<div class="example lisp">
<pre class="lisp">,use (cv)
(k-display %k-laplacian)
-|
    0.37500    0.25000    0.37500
    0.25000   -2.50000    0.25000
    0.37500    0.25000    0.37500
</pre></div>
</dd></dl>

<span id="kernel-variables"></span><span id="Variables"></span><h4 class="subheading">Variables</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#g_t_0025k_002didentity">%k-identity</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dedge0">%k-edge0</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dedge1">%k-edge1</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dsharpen">%k-sharpen</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dmean">%k-mean</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dgaussian_002dblur0">%k-gaussian-blur0</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dgaussian_002dblur1">%k-gaussian-blur1</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dunsharp">%k-unsharp</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002demboss">%k-emboss</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dlaplacian">%k-laplacian</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dprewitt_002dy">%k-prewitt-y</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dprewitt_002dx">%k-prewitt-x</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dsobel_002dy">%k-sobel-y</a></code></span></dt>
<dt><span><code><a href="#g_t_0025k_002dsobel_002dx">%k-sobel-x</a></code></span></dt>
</dl>
</blockquote>

<p>Notes: (a) the following kernels are merely offered as ‘<samp>didactic</samp>’
examples, some of these were used ‘<samp>in the old days</samp>’, but in most
cases, you will find and prefer to use a ‘<samp>specific</samp>’ and
‘<samp>modern</samp>’ procedure that will give (much) better results, such as,
<a href="#im_002dgaussian_002dblur">im-gaussian-blur</a>, <a href="#im_002dgaussian_002dsharp">im-gaussian-sharp</a>, <a href="#im_002dsharpen">im-sharpen</a> (a
simple sharpening procedure), <a href="#im_002dcanny">im-canny</a> (edge detection) ... and
(b) in order to make these definitions easier to read, we’ve added some
spaces and newlines.
</p>

<span id="g_t_0025k_002didentity"></span><dl class="def">
<dt id="index-_0025k_002didentity"><span class="category">Variable: </span><span><strong>%k-identity</strong><a href="#index-_0025k_002didentity" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<div class="example lisp">
<pre class="lisp">(k-display %k-identity #:proc float-&gt;int)
-|
  0  0  0
  0  1  0
  0  0  0
</pre></div>
</dd></dl>


<span id="g_t_0025k_002dedge0"></span><dl class="def">
<dt id="index-_0025k_002dedge0"><span class="category">Variable: </span><span><strong>%k-edge0</strong><a href="#index-_0025k_002dedge0" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<div class="example lisp">
<pre class="lisp">(k-make 3 3
        '(  1  0 -1
            0  0  0
           -1  0  1  ))
</pre></div>
</dd></dl>


<span id="g_t_0025k_002dedge1"></span><dl class="def">
<dt id="index-_0025k_002dedge1"><span class="category">Variable: </span><span><strong>%k-edge1</strong><a href="#index-_0025k_002dedge1" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<div class="example lisp">
<pre class="lisp">(k-make 3 3
        '(  0  1  0
            1 -4  1
            0  1  0  ))
</pre></div>
</dd></dl>


<span id="g_t_0025k_002dsharpen"></span><dl class="def">
<dt id="index-_0025k_002dsharpen"><span class="category">Variable: </span><span><strong>%k-sharpen</strong><a href="#index-_0025k_002dsharpen" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<div class="example lisp">
<pre class="lisp">(k-make 3 3
        '( -1  -1  -1
           -1   9  -1
           -1  -1  -1  ))
</pre></div>
</dd></dl>


<span id="g_t_0025k_002dmean"></span><dl class="def">
<dt id="index-_0025k_002dmean"><span class="category">Variable: </span><span><strong>%k-mean</strong><a href="#index-_0025k_002dmean" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<div class="example lisp">
<pre class="lisp">(k-make 3 3
        '(  1  1  1
            1  1  1
            1  1  1  )
        9)
</pre></div>
</dd></dl>


<span id="g_t_0025k_002dgaussian_002dblur0"></span><dl class="def">
<dt id="index-_0025k_002dgaussian_002dblur0"><span class="category">Variable: </span><span><strong>%k-gaussian-blur0</strong><a href="#index-_0025k_002dgaussian_002dblur0" class="copiable-anchor"> ¶</a></span></dt>
<dd>

<div class="example lisp">
<pre class="lisp">(k-make 3 3
        '(  1  2  1
            2  4  2
            1  2  1  )
        16)
</pre></div>
</dd></dl>


<span id="g_t_0025k_002dgaussian_002dblur1"></span><dl class="def">
<dt id="index-_0025k_002dgaussian_002dblur1"><span class="category">Variable: </span><span><strong>%k-gaussian-blur1</strong><a href="#index-_0025k_002dgaussian_002dblur1" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<div class="example lisp">
<pre class="lisp">(k-make 5 5
        '(  1   4   6   4  1
            4  16  24  16  4
            6  24  36  24  6
            4  16  24  16  4
            1   4   6   4  1  )
        256)
</pre></div>
</dd></dl>


<span id="g_t_0025k_002dunsharp"></span><dl class="def">
<dt id="index-_0025k_002dunsharp"><span class="category">Variable: </span><span><strong>%k-unsharp</strong><a href="#index-_0025k_002dunsharp" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<div class="example lisp">
<pre class="lisp">(k-make 5 5
        '(  1   4    6   4  1
            4  16   24  16  4
            6  24 -476  24  6
            4  16   24  16  4
            1   4    6   4  1  )
        -256)
</pre></div>
</dd></dl>


<span id="g_t_0025k_002demboss"></span><dl class="def">
<dt id="index-_0025k_002demboss"><span class="category">Variable: </span><span><strong>%k-emboss</strong><a href="#index-_0025k_002demboss" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Also called <code>%k-compass</code> or <code>%k-directional</code>, this kind of
filter is useful to enhance edges in given directions. With a <code>3 x
3</code> kernel, one normally uses filters for <code>0</code>, <code>45</code>, <code>90</code>
and <code>135</code> degrees. The various angles are obtained ‘<samp>rotating</samp>’
the positive and negative values to ‘<samp>align</samp>’ with the various
directions.
</p>
<div class="example lisp">
<pre class="lisp">(k-make 3 3
        '(  -2  -2   0
            -2   6   0
             0   0   0  ))
</pre></div>
</dd></dl>


<span id="g_t_0025k_002dlaplacian"></span><dl class="def">
<dt id="index-_0025k_002dlaplacian"><span class="category">Variable: </span><span><strong>%k-laplacian</strong><a href="#index-_0025k_002dlaplacian" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>This is a variation of the more traditional Laplacian kernels, that are
meant to enhance edges, in this case in an isotropic fashion
(non-directional). This the implementation in the Vigra code and it
atributes large weights to the diagonal pixels of the
kernel. Nevertheless, the total weight is zero.
</p>
<div class="example lisp">
<pre class="lisp">(k-make 3 3
        '(  0.375   0.25  0.375
            0.25   -2.5   0.25
            0.375   0.25  0.375  ))
</pre></div>
</dd></dl>


<span id="Prewitt-filtering"></span><h4 class="subheading">Prewitt filtering</h4>

<span id="g_t_0025k_002dprewitt_002dy"></span><dl class="def">
<dt id="index-_0025k_002dprewitt_002dy"><span class="category">Variable: </span><span><strong>%k-prewitt-y</strong><a href="#index-_0025k_002dprewitt_002dy" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>A 3 x 3 kernel which emphasizes horizontal edges by approximating a
vertical gradient.
</p>
<div class="example lisp">
<pre class="lisp">(k-make 3 3
        '(  1   1   1
            0   0   0
           -1  -1  -1  ))
</pre></div>
</dd></dl>


<span id="g_t_0025k_002dprewitt_002dx"></span><dl class="def">
<dt id="index-_0025k_002dprewitt_002dx"><span class="category">Variable: </span><span><strong>%k-prewitt-x</strong><a href="#index-_0025k_002dprewitt_002dx" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>A 3 x 3 kernel which emphasizes vertical edges by approximating an
horizontal gradient.
</p>
<div class="example lisp">
<pre class="lisp">(k-make 3 3
        '(  1  0  -1
            1  0  -1
            1  0  -1  ))
</pre></div>
</dd></dl>

<span id="Sobel-filtering"></span><h4 class="subheading">Sobel filtering</h4>

<p>Filtering an image using a ‘<samp>Sobel filter</samp>’ requires a three steps
approach: (1) filtering the image using the ‘<samp>Sobel y filter</samp>’,
(2) dito using the ‘<samp>Sobel x filter</samp>’, and (3) combining the
results to obtain ‘<samp>Sobel magnitude</samp>’: <code>(sqrt (+ (sqrt sobel-y)
(sqrt sobel-x))</code>.
</p>

<span id="g_t_0025k_002dsobel_002dy"></span><dl class="def">
<dt id="index-_0025k_002dsobel_002dy"><span class="category">Variable: </span><span><strong>%k-sobel-y</strong><a href="#index-_0025k_002dsobel_002dy" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<div class="example lisp">
<pre class="lisp">(k-make 3 3
        '(  1   2   1
            0   0   0
           -1  -2  -1  ))
</pre></div>
</dd></dl>


<span id="g_t_0025k_002dsobel_002dx"></span><dl class="def">
<dt id="index-_0025k_002dsobel_002dx"><span class="category">Variable: </span><span><strong>%k-sobel-x</strong><a href="#index-_0025k_002dsobel_002dx" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<div class="example lisp">
<pre class="lisp">(k-make 3 3
        '(  1   0  -1
            2   0  -2
            1   0  -1  ))
</pre></div>
</dd></dl>


<hr>
</div>
<div class="subsection" id="Import-Export">
<div class="header">
<p>
Next: <a href="#Histogram" accesskey="n" rel="next">Histogram</a>, Previous: <a href="#Kernel-Structure-and-Accessors" accesskey="p" rel="prev">Kernel Structure and Accessors</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Import-Export-1"></span><h4 class="subsection">Import Export</h4>

<p>The Guile-CV procedures and methods to load, save and query file system
images.
</p>
<span id="Procedures-4"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002dload">im-load</a></code></span></dt>
<dt><span><code><a href="#im_002dsave">im-save</a></code></span></dt>
<dt><span><code><a href="#im_002dsize">im-size</a></code></span></dt>
<dt><span><code><a href="#im_002dwidth">im-width</a></code></span></dt>
<dt><span><code><a href="#im_002dheight">im-height</a></code></span></dt>
<dt><span><code><a href="#im_002dn_002dchannel">im-n-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dgray_003f">im-gray?</a></code></span></dt>
<dt><span><code><a href="#im_002drgb_003f">im-rgb?</a></code></span></dt>
</dl>
</blockquote>


<span id="im_002dload"></span><dl class="def">
<dt id="index-im_002dload"><span class="category">Procedure: </span><span><strong>im-load</strong> <em>filename</em><a href="#index-im_002dload" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a Guile-CV image.
</p>
<p>Loads the image pointed by <var>filename</var> and returns a Guile-CV image.
<var>filename</var> can either be a GRAY or an RGB image.
</p>
<p>At this point, Guile-CV supports the following file formats: GIF, TIFF,
JPEG, BMP, EXR, HDR, PNM (PBM, PGM, PPM), PNG, SunRaster, KHOROS-VIFF.
</p></dd></dl>


<span id="im_002dsave"></span><dl class="def">
<dt id="index-im_002dsave"><span class="category">Procedure: </span><span><strong>im-save</strong> <em>image filename [scale #f]</em><a href="#index-im_002dsave" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns #t.
</p>
<p>Saves <var>image</var> in <var>filename</var>.
</p>
<p>The optional <var>scale</var> argument can take the following values:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>#f</code></span></dt>
<dd><p>pixel values are ‘<samp>clipped</samp>’: values <code>&lt; 0</code> are saved as
<code>0</code>, values <code>&gt; 255</code> are saved as <code>255</code>, and otherwise are
saved unchanged
</p>
</dd>
<dt><span><code>#t</code></span></dt>
<dd><p>all pixel values are scaled<a id="DOCF10" href="#FOOT10"><sup>10</sup></a> to the <code>[0 255]</code> range
</p></dd>
</dl>
</blockquote>

<p>The type in which <var>image</var> is saved is determined by the
<var>filename</var> extension, as in the folowing example:
</p>
<div class="example lisp">
<pre class="lisp">(im-load "edx.png")
...
(im-save $4 "/tmp/edx.jpg")
</pre></div>

</dd></dl>


<span id="im_002dsize"></span><dl class="def">
<dt id="index-im_002dsize-1"><span class="category">Method: </span><span><strong>im-size</strong> <em>filename</em><a href="#index-im_002dsize-1" class="copiable-anchor"> ¶</a></span></dt>
<dd>

<p>Returns the list of <code>(<var>width</var> <var>height</var> <var>n-channel</var>)for
<var>filename</var></code>.
</p></dd></dl>


<span id="im_002dwidth"></span><span id="im_002dheight"></span><span id="im_002dn_002dchannel"></span><dl class="def">
<dt id="index-im_002dwidth-1"><span class="category">Method: </span><span><strong>im-width</strong> <em>filename</em><a href="#index-im_002dwidth-1" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dheight-1"><span class="category">Method: </span><span><strong>im-height</strong> <em>filename</em><a href="#index-im_002dheight-1" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dn_002dchannel-1"><span class="category">Method: </span><span><strong>im-n-channel</strong> <em>filename</em><a href="#index-im_002dn_002dchannel-1" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns, respectively the <var>width</var>, the <var>height</var> and the
<var>n-channel</var> for <var>filename</var>.
</p></dd></dl>


<span id="im_002dgray_003f"></span><span id="im_002drgb_003f"></span><dl class="def">
<dt id="index-im_002dgray_003f-1"><span class="category">Method: </span><span><strong>im-gray?</strong> <em>filename</em><a href="#index-im_002dgray_003f-1" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002drgb_003f-1"><span class="category">Method: </span><span><strong>im-rgb?</strong> <em>filename</em><a href="#index-im_002drgb_003f-1" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns <code>#t</code> if <var>filename</var> is respectively a GRAY scale or an
RGB image.
</p></dd></dl>


<hr>
</div>
<div class="subsection" id="Histogram">
<div class="header">
<p>
Next: <a href="#Texture" accesskey="n" rel="next">Texture</a>, Previous: <a href="#Import-Export" accesskey="p" rel="prev">Import Export</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Histogram-1"></span><h4 class="subsection">Histogram</h4>

<p>Other Guile-CV histogram procedures and methods.
</p>

<span id="Procedures-5"></span><h4 class="subheading">Procedures</h4>


<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002dhistogram">im-histogram</a></code></span></dt>
</dl>
</blockquote>


<span id="im_002dhistogram"></span><dl class="def">
<dt id="index-im_002dhistogram"><span class="category">Procedure: </span><span><strong>im-histogram</strong> <em>image        [#:subtitle “Untitled”]</em><a href="#index-im_002dhistogram" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns two values: (1) an image; (2) a list (or a list of list) of
significant values for <var>image</var>: one list if <var>image</var> is GRAY, a
list of list of values per channel if <var>image</var> is RGB.
</p>
<p>The returned image is composed of a header (title, <var>#:subtitle</var>),
either the GRAY or the RGB channel histogram(s) for <var>image</var> and a
footer, which is a table containg, for each channel, the following
values: <code>mean</code>, <code>standard deviation</code>, <code>minimum</code>,
<code>maximum</code>, the <code>mode</code><a id="DOCF11" href="#FOOT11"><sup>11</sup></a>
followed by its <code>value</code>.
</p>
<p>Here below, the call sequence and the histogram for the GRAY image
<samp>sinter.png</samp> given along with Guile-CV documentation and examples:
</p>
<div class="example lisp">
<pre class="lisp">scheme@(guile-user)&gt; (im-load "sinter.png")
$32 = (212 128 1 (#f32(25.0 39.0 50.0 52.0 51.0 45.0 # …)))
scheme@(guile-user)&gt; (im-histogram $32 #:subtitle "sinter.png")
$34 = (282 271 1 (#f32(255.0 255.0 255.0 255.0 255.0 # …)))
$35 = (27136 163.346 75.081 0 243 215 727)
</pre></div>

<blockquote class="indentedblock">
<img src="Guile-CV%20Reference%20Manual_files/sinter-histogram.png" alt="sinter-histogram">
</blockquote>

<p>Note that histogram images returned by <code>im-histogram</code> have no
borders, the above histogram has been padded - using <code>(im-padd $34
1 1 1 1 #:color '(96 96 96))</code> - for better readability, otherwise the
title above and the table below would look as if they were not
centered.
</p></dd></dl>


<hr>
</div>
<div class="subsection" id="Texture">
<div class="header">
<p>
Next: <a href="#Features" accesskey="n" rel="next">Features</a>, Previous: <a href="#Histogram" accesskey="p" rel="prev">Histogram</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Texture-1"></span><h4 class="subsection">Texture</h4>

<p>The Guile-CV procedures and methods related to image texture measures.
</p>

<span id="Procedures-6"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002dtexture">im-texture</a></code></span></dt>
<dt><span><code><a href="#im_002dglcp">im-glcp</a></code></span></dt>
<dt><span><code><a href="#im_002dglcm">im-glcm</a></code></span></dt>
</dl>
</blockquote>


<span id="Description-2"></span><h4 class="subheading">Description</h4>

<p>Although introduced a long time ago<a id="DOCF12" href="#FOOT12"><sup>12</sup></a>, image texture measures are still very
actual, with new research and practicle applications in many areas, as
described in this (highly recommended) document<a id="DOCF13" href="#FOOT13"><sup>13</sup></a>.
</p>
<p>Image texture measures are ‘<samp>descriptive statistics</samp>’, derived from
the ‘<samp>Gray Level Co-occurrence Matrices (GLCM)</samp>’ and its associated
set of ‘<samp>Gray Level Co-occurrence Probability (GLCP)</samp>’ matrices.
</p>
<p>Guile-CV <code>GLCM</code> and <code>GLCP</code> data structures are identical to
the one used for Guile-CV images (See <a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a>).
Although they are not images ‘<samp>per se</samp>’, they are composed of four
square matrices (four channels), of size <code>n-gl</code> (the number of gray
levels to consider), and upon which we (and users) need to run linear
algebra procedures, already defined and available in Guile-CV.
</p>
<p>Guile-CV offers the 11th first <code>texture measures</code>, out of the 14th
originally proposed by Haralick et al., which are the most commonly used
and adopted ones.
</p>
<p>This reference manual assumes you are familiar with the concepts,
terminology and mathematic formulas involved in the calculations of
<code>GLCM</code>s, <code>GLCP</code>s and <code>image texture measures</code>. If that is
not the case, consider carefully reading one or both of the documents
cited above (or any other tutorial or reference material of your choice
of course).
</p>

<span id="Procedures-7"></span><h4 class="subheading">Procedures</h4>

<span id="im_002dtexture"></span><dl class="def">
<dt id="index-im_002dtexture"><span class="category">Procedure: </span><span><strong>im-texture</strong> <em>image n-gl [#:dist 1] [#:p-max 255]        [#:use-log2 #f] [#:no-px-y0 #f]</em><a href="#index-im_002dtexture" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Image-Textures"></span>

<p>Returns a list.
</p>
<p>The procedure calls <a href="#im_002dglcp">im-glcp</a>, passing <var>image</var>, <var>n-gl</var> (the
number of gray levels to consider), <var>dist</var> (the distance between the
‘<samp>reference</samp>’ and the ‘<samp>neighbour</samp>’ pixels) and <var>p-max</var> (the
<var>image</var> (pixel) maximum value), then computes and returns a list of
the 11th first texture measures proposed by Haralick et al., which are:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>(h1) uniformity (angular second moment)</code></span></dt>
<dt><span><code>(h2) contrast</code></span></dt>
<dt><span><code>(h3) correlation</code></span></dt>
<dt><span><code>(h4) variance (sum of squares)</code></span></dt>
<dt><span><code>(h5) homogeneity (inverse difference moment)</code></span></dt>
<dt><span><code>(h6) sum average</code></span></dt>
<dt><span><code>(h7) sum variance</code></span></dt>
<dt><span><code>(h8) sum entropy</code></span></dt>
<dt><span><code>(h9) entropy</code></span></dt>
<dt><span><code>(h10) difference variance</code></span></dt>
<dt><span><code>(h11) difference entropy</code></span></dt>
</dl>
</blockquote>

<p>The <var>#:use-log2</var> optional keyword argument, which defaults to
<code>#f</code>, is passed to the internal procedures that calculate the
parameters <code>h8</code>, <code>h9</code> and <code>h11</code>. The original formulas
proposed by Haralck and al. use <code>log</code>, but I have seen a couple of
implementations using <code>log2</code><a id="DOCF14" href="#FOOT14"><sup>14</sup></a>.
</p>
<p>The <var>#:no-px-y0</var> optional keyword argument, which defaults to
<code>#f</code>, is passed to the internal procedure that calculate the
parameter <code>h10</code>.  For some obscure reason, and only with respect to
this parameter, I have seen some implementations eliminating the first
element of the so-called <code>Px-y</code>, an internediate <code>f32vector</code>
result, which holds, as its first element, the sum of the elements of
the main diagnal of the <code>GLCP</code><a id="DOCF15" href="#FOOT15"><sup>15</sup></a>.
</p></dd></dl>


<span id="im_002dglcp"></span><dl class="def">
<dt id="index-im_002dglcp"><span class="category">Procedure: </span><span><strong>im-glcp</strong> <em>image n-gl [#:dist 1] [#:p-max 255]</em><a href="#index-im_002dglcp" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Gray-Level-Co_002doccurence-Probability"></span>
<span id="index-GLCP"></span>

<p>Returns the <code>GLCP</code> for <var>image</var>.
</p>
<p>The procedure calls <a href="#im_002dglcm">im-glcm</a>, passing <var>image</var>, <var>n-gl</var> (the
number of gray levels to consider), <var>dist</var> (the distance between the
‘<samp>reference</samp>’ and the ‘<samp>neighbour</samp>’ pixels) and <var>p-max</var> (the
<var>image</var> (pixel) maximum value), adds <code>GLCM'</code> (the transposed
version of <code>GLCM</code>, so the result is symmetrical around the
diagonal), then computes and returns the <code>GLCP</code>.
</p>
<p>The returned <code>GLCP</code> is an ‘<samp>image</samp>’ composed four channels (four
square matrices of size <var>n-gl</var>), corresponding to the (symmetrical)
Gray Level Co-occurrences expressed as propabibilities, each calculated
at a specific ‘<samp>angle</samp>’, respectively <code>0º</code>, <code>45º</code>,
<code>90º</code>, and <code>135º</code>.
</p></dd></dl>


<span id="im_002dglcm"></span><dl class="def">
<dt id="index-im_002dglcm"><span class="category">Procedure: </span><span><strong>im-glcm</strong> <em>image n-gl [#:dist 1] [#:p-max 255]</em><a href="#index-im_002dglcm" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Gray-Level-Co_002doccurence-Matrix"></span>
<span id="index-GLCM"></span>

<p>Returns the <code>GLCM</code> for <var>image</var>.
</p>
<p>The procedure scales the original <var>image</var> (it brings its values in
the range <code>[0 (- n-gl 1)]</code>), then computes and returns the <code>GLCM</code>.
</p>
<p>The returned <code>GLCM</code> is an ‘<samp>image</samp>’ composed four channels (four
square matrices of size <var>n-gl</var>), corresponding to the Gray Level
Co-occurrences, each calculated at a specific ‘<samp>angle</samp>’, respectively
<code>0º</code>, <code>45º</code>, <code>90º</code>, and <code>135º</code>.
</p></dd></dl>


<hr>
</div>
<div class="subsection" id="Features">
<div class="header">
<p>
Next: <a href="#Particles" accesskey="n" rel="next">Particles</a>, Previous: <a href="#Texture" accesskey="p" rel="prev">Texture</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Features-1"></span><h4 class="subsection">Features</h4>

<p>The Guile-CV procedures and methods related to image features.
</p>

<span id="Procedures-8"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002dfeatures">im-features</a></code></span></dt>
</dl>
</blockquote>


<span id="im_002dfeatures"></span><dl class="def">
<dt id="index-im_002dfeatures"><span class="category">Procedure: </span><span><strong>im-features</strong> <em>image l-image [#:n-label #f]</em><a href="#index-im_002dfeatures" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Features"></span>

<p>Returns a list of features, one list for each labeled object - including
the backgroud - in ascending order.
</p>
<p>Notes: (a) <var>image</var> can either be an RGB or a GRAY image; (b)
<var>l-image</var> is the ‘<samp>corresponding</samp>’ labeled image; (c) when used,
the <var>#:n-label</var> optional keyword argument must be total number of
label values used in <var>l-image</var>, as returned by <a href="#im_002dlabel">im-label</a> and
<a href="#im_002dlabel_002dall">im-label-all</a>.
</p>
<p>The GRAY feature list values are:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>area</code></span></dt>
<dd><p>The labeled object area in pixel
</p>
</dd>
<dt><span><code>left top right bottom</code></span></dt>
<dd><p>The coordinates of the ‘<samp>bounding box</samp>’ labeled object<a id="DOCF16" href="#FOOT16"><sup>16</sup></a>
</p>
</dd>
<dt><span><code>mean-x mean-y</code></span></dt>
<dd><p>Also sometimes called the ‘<samp>centroid</samp>’, these are the average of the
x and y coordinates of all of the pixels in the labeled object. These
two coordinate values are floating points, representing the
‘<samp>mathematical position</samp>’ of the mean x and y values of the labeled
object
</p>
</dd>
<dt><span><code>min max mean std-dev</code></span></dt>
<dd><p>The minimum, maximum, mean and standard gray deviaton labeled object
values
</p>
</dd>
<dt><span><code>major-ev-x major-ev-y minor-ev-x minor-ev-y</code></span></dt>
<dd><p>Respectively the major and minor <a href="https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors">eigen vectors</a>
<code>x</code> and <code>y</code> normalized coordinates<a id="DOCF17" href="#FOOT17"><sup>17</sup></a>: <code>(= (sqrt (+ (expt x 2) (expt y 2))) 1)</code>
</p>
</dd>
<dt><span><code>major-axis minor-axis</code></span></dt>
<dd><p>Respectively the major and minor <a href="https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors">eigen values</a>,
optimized so that they actually correspond to major and minor
<code>radius</code> of the ellipse covering the same <code>area</code> as the
particle itself
</p>
</dd>
<dt><span><code>angle</code></span></dt>
<dd><p>The angle of the major eigen vector axis, in <code>degrees</code> in the
trigonometirc circle reference system
</p>
</dd>
<dt><span><code>center-mass-x center-mass-y</code></span></dt>
<dd><p>The center of mass <code>x</code> and <code>y</code> coordinates
</p>
</dd>
<dt><span><code>perimeter</code></span></dt>
<dd><p>The labeled object perimeter in pixels
</p>
</dd>
<dt><span><code>skewness kurtosis</code></span></dt>
<dd><p>Respectively the <a href="https://en.wikipedia.org/wiki/Skewness">skewness</a> and the
<a href="https://en.wikipedia.org/wiki/Kurtosis">kurtosis</a> of the labeled object
</p>
</dd>
<dt><span><code>circularity aspect-ratio roundness</code></span></dt>
<dd><p>Respectively the circularity <code>(/ (* 4 %pi area) (expt perimeter
2))</code>, the aspect ratio <code>(/ major-axis minor-axis)</code> and the
roundness <code>(/ minor-axis major-axis)</code> of the labeled object
</p></dd>
</dl>
</blockquote>


<p>The RGB feature list values are:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>area</code></span></dt>
<dd><p>The labeled object area in pixel
</p>
</dd>
<dt><span><code>left top right bottom</code></span></dt>
<dd><p>The coordinates of the labeled object (the corresponding GRAY
feature footnote applies here too of course)
</p>
</dd>
<dt><span><code>mean-x mean-y</code></span></dt>
<dd><p>Also sometimes called the ‘<samp>centroid</samp>’, these are the average of the
x and y coordinates of all of the (red green blue) pixels in the labeled
object. These two coordinate values are floating points, representing
the ‘<samp>mathematical position</samp>’ of the mean x and y values of tha
labeled object
</p>
</dd>
<dt><span><code>min-r min-g min-b max-r max-g max-b mean-r mean-g mean-b std-dev-r std-dev-g std-dev-b</code></span></dt>
<dd><p>The minimum, maximum, mean and standard deviaton labeled object values of
the red, green and blue channels
</p>
</dd>
<dt><span><code>major-axis minor-axis</code></span></dt>
<dd><p>Respectively the major and minor <a href="https://en.wikipedia.org/wiki/Eigenvalues_and_eigenvectors">eigen values</a>,
optimized so that they actually correspond to major and minor
<code>radius</code> of the ellipse covering the same <code>area</code> as the
particle itself
</p>
</dd>
<dt><span><code>angle</code></span></dt>
<dd><p>The angle of the major eigen vector axis, in <code>degrees</code> in the
trigonometirc circle reference system
</p>
</dd>
<dt><span><code>center-mass-x center-mass-y</code></span></dt>
<dd><p>The center of mass <code>x</code> and <code>y</code> coordinates
</p>
</dd>
<dt><span><code>perimeter</code></span></dt>
<dd><p>The labeled object perimeter in pixels
</p>
</dd>
<dt><span><code>skewness-r skewness-g skewness-b kurtosis-r kurtosis-g kurtosis-b</code></span></dt>
<dd><p>Respectively the <a href="https://en.wikipedia.org/wiki/Skewness">skewness</a> and the
<a href="https://en.wikipedia.org/wiki/Kurtosis">kurtosis</a> labeled object values of the red,
green and blue channels
</p>
</dd>
<dt><span><code>circularity aspect-ratio roundness</code></span></dt>
<dd><p>Respectively the circularity <code>(/ (* 4 %pi area) (expt perimeter
2))</code>, the aspect ratio <code>(/ major-axis minor-axis)</code> and the
roundness <code>(/ minor-axis major-axis)</code> of the labeled object
</p>
</dd>
</dl>
</blockquote>


<p>Though we did not make it public, Guile-CV has an internal feature
display procedure that you might be interested to (re)use, so here is an
example of a GRAY feature list display:
</p>
<div class="example lisp">
<pre class="lisp">scheme@(guile-user)&gt; ,use (cv)
scheme@(guile-user)&gt; (im-load "pp-17-bf.png")
$2 = (85 95 3 (#f32(0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 …) …))
scheme@(guile-user)&gt; (im-rgb-&gt;gray $2)
$3 = (85 95 1 (#f32(0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 # …)))
$4 = (0.0 251.0 128.3132714138286 8075)
scheme@(guile-user)&gt; (im-threshold $3 136)
$5 = (85 95 1 (#f32(0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 # …)))
scheme@(guile-user)&gt; (im-label $5)
$6 = (85 95 1 (#f32(0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 0.0 # …)))
$7 = 2
scheme@(guile-user)&gt; (im-features $2 $6)
$8 = ((3782 0 0 84 94 43.19196319580078 45.657588958740234 0.0 # …) …)
scheme@(guile-user)&gt; ((@@ (cv features) f-display) (match $8 ((bg a) a)))

                          area : 4293 (pixels)
         left top right bottom : 0 0 84 94
                 mean-x mean-y :  40.94992  48.18262
        min (red, green, blue) : 137.00000 136.00000 135.00000
        max (red, green, blue) : 255.00000 250.00000 250.00000
       mean (red, green, blue) : 236.13417 232.84999 232.84207
  std. dev. (red, green, blue) :  20.23275  19.41402  19.84854
                 major ev x, y :   0.22202   0.97504
                 minor ev x, y :   0.97504  -0.22202
             major, minor axis :  39.86419  34.27900 (radius)
                         angle :  77.17241 (degrees)
           center of mass x, y :  40.73749  48.28692
                     perimeter : 367.74725
   skewness (red, green, blue) :  -2.90164  -2.99066  -2.91777
   kurtosis (red, green, blue) :   8.53371   9.05482   8.61162
                   circularity :   0.39891
                  aspect ratio :   1.16293
                     roundness :   0.85989
</pre></div>

<p>As we mentioned above, <code>f-diplay</code> is defined in the <code>(cv
features)</code> module, but it is not exported: in Guile, calling none
exported procedure (which should not be ‘<samp>abused</samp>’) is done using the
syntax <code>@@ module-name binding-name</code>, which in this example
translates to <code>(@@ (cv features) f-display)</code>.
</p>
</dd></dl>


<hr>
</div>
<div class="subsection" id="Particles">
<div class="header">
<p>
Next: <a href="#Filter" accesskey="n" rel="next">Filter</a>, Previous: <a href="#Features" accesskey="p" rel="prev">Features</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Particles-1"></span><h4 class="subsection">Particles</h4>

<p>The Guile-CV procedures and methods to obtain and clean image particles.
</p>
<span id="Procedures-9"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002dparticles">im-particles</a></code></span></dt>
<dt><span><code><a href="#im_002dparticle_002dclean">im-particle-clean</a></code></span></dt>
</dl>
</blockquote>


<span id="im_002dparticles"></span><dl class="def">
<dt id="index-im_002dparticles"><span class="category">Procedure: </span><span><strong>im-particles</strong> <em>image features [#:clean #t]</em><a href="#index-im_002dparticles" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Image-Particles"></span>

<p>Returns two values, a list of images (the particles) and a list of their
bounding boxes in the original <var>image</var>.
</p>
<p>Each returned image is a ‘<samp>particle</samp>’, which is a subpart of
<var>image</var> determined by its bounding box, given by the <code>left</code>
<code>top</code> <code>right</code> <code>bottom</code> values of the corresponding
‘<samp>entry</samp>’ in <var>features</var> (see <a href="#im_002dfeatures">im-features</a> for a complete
description of a feature value list.
</p>
<p>When <var>#:clean</var> is <code>#t</code>, which is the default,
<a href="#im_002dparticle_002dclean">im-particle-clean</a> is called upon each particle (see below for a
description of the expected result).
</p></dd></dl>


<span id="im_002dparticle_002dclean"></span><dl class="def">
<dt id="index-im_002dparticle_002dclean"><span class="category">Procedure: </span><span><strong>im-particle-clean</strong> <em>particle</em><a href="#index-im_002dparticle_002dclean" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image.
</p>
<p>Cleaning a <var>particle</var> (which is an image) means detecting and
removing any object(s) that is(are) not connected to the
‘<samp>particle</samp>’ itself.
</p>
<p>This procedure is based on the property that in a ‘<samp>particle</samp>’, which
is an (sub)image resulting from a <a href="#im_002dcrop">im-crop</a> based on the bounding
box coordinates as returned by <code>im-features</code>, there precisely is
one object that, if you call <code>im-features</code> upon <var>particle</var>,
would have its bounding box coordinates being the entire
<var>particle</var>. In other words, if you call <code>im-particle-clean</code>
upon an image that is not a ‘<samp>particle</samp>’, the result will just be a
black image.
</p></dd></dl>


<hr>
</div>
<div class="subsection" id="Filter">
<div class="header">
<p>
Next: <a href="#Process" accesskey="n" rel="next">Process</a>, Previous: <a href="#Particles" accesskey="p" rel="prev">Particles</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Filter-1"></span><h4 class="subsection">Filter</h4>

<p>The Guile-CV procedures and methods to filter images.
</p>

<span id="Procedures-10"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002dgaussian_002dblur">im-gaussian-blur</a></code></span></dt>
<dt><span><code><a href="#im_002dgaussian_002dblur_002dchannel">im-gaussian-blur-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dgaussian_002dgradient">im-gaussian-gradient</a></code></span></dt>
<dt><span><code><a href="#im_002dgaussian_002dgradient_002dchannel">im-gaussian-gradient-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dgaussian_002dsharp">im-gaussian-sharp</a></code></span></dt>
<dt><span><code><a href="#im_002dgaussian_002dsharp_002dchannel">im-gaussian-sharp-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dsharpen">im-sharpen</a></code></span></dt>
<dt><span><code><a href="#im_002dsharpen_002dchannel">im-sharpen-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dmedian_002dfilter">im-median-filter</a></code></span></dt>
<dt><span><code><a href="#im_002dmedian_002dfilter_002dchannel">im-median-filter-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dconvolve">im-convolve</a></code></span></dt>
<dt><span><code><a href="#im_002dconvolve_002dchannel">im-convolve-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dnl_002dmeans">im-nl-means</a></code></span></dt>
<dt><span><code><a href="#im_002dnl_002dmeans_002dchannel">im-nl-means-channel</a></code></span></dt>
</dl>
</blockquote>


<span id="im_002dgaussian_002dblur"></span><span id="im_002dgaussian_002dblur_002dchannel"></span><dl class="def">
<dt id="index-im_002dgaussian_002dblur"><span class="category">Procedure: </span><span><strong>im-gaussian-blur</strong> <em>image sigma</em><a href="#index-im_002dgaussian_002dblur" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dgaussian_002dblur_002dchannel"><span class="category">Procedure: </span><span><strong>im-gaussian-blur-channel</strong> <em>channel width height sigma</em><a href="#index-im_002dgaussian_002dblur_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Gaussian-Blur"></span>
<span id="index-Gaussian-Smooth"></span>

<p>Returns a new image or channel.
</p>
<p>The new image or new channel is the result of the computation of the
Gaussian blurring, also known as the Gaussian smoothing, by means of a
convolution of <var>image</var> or <var>channel</var> with a 2D Gaussian function,
where <var>sigma</var> is the standard deviation of the Gaussian
distribution.
</p></dd></dl>


<span id="im_002dgaussian_002dgradient"></span><span id="im_002dgaussian_002dgradient_002dchannel"></span><dl class="def">
<dt id="index-im_002dgaussian_002dgradient"><span class="category">Procedure: </span><span><strong>im-gaussian-gradient</strong> <em>image sigma</em><a href="#index-im_002dgaussian_002dgradient" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dgaussian_002dgradient_002dchannel"><span class="category">Procedure: </span><span><strong>im-gaussian-gradient-channel</strong> <em>channel width height sigma</em><a href="#index-im_002dgaussian_002dgradient_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Gaussian-Gradient"></span>

<p>Returns a new image or channel.
</p>
<p>The new image or new channel is the result of the computation of the
strength of the first order partial derivatives by means of a
convolution of <var>image</var> or <var>channel</var> with the first order
derivative of a 2D Gaussian function, where <var>sigma</var> is the standard
deviation of the Gaussian distribution.
</p></dd></dl>


<span id="im_002dgaussian_002dsharp"></span><span id="im_002dgaussian_002dsharp_002dchannel"></span><dl class="def">
<dt id="index-im_002dgaussian_002dsharp"><span class="category">Procedure: </span><span><strong>im-gaussian-sharp</strong> <em>image factor scale</em><a href="#index-im_002dgaussian_002dsharp" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dgaussian_002dsharp_002dchannel"><span class="category">Procedure: </span><span><strong>im-gaussian-sharp-channel</strong> <em>channel width height factor scale</em><a href="#index-im_002dgaussian_002dsharp_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Gaussian-Sharp"></span>

<p>Returns a new image or channel.
</p>
<p>The new image or new channel is the result of the computation of the
Gaussian sharpening: the procedure does (a) perform a Gaussian smoothing
at the given <var>scale</var> to create a temporary image <code>smooth</code> and
(b) blends <var>image</var> and <code>smooth</code> according to the formula
<code>(- (* (+ factor 1) image) (* smooth factor))</code>.
</p></dd></dl>


<span id="im_002dsharpen"></span><span id="im_002dsharpen_002dchannel"></span><dl class="def">
<dt id="index-im_002dsharpen"><span class="category">Procedure: </span><span><strong>im-sharpen</strong> <em>image factor</em><a href="#index-im_002dsharpen" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dsharpen_002dchannel"><span class="category">Procedure: </span><span><strong>im-sharpen-channel</strong> <em>channel width height factor</em><a href="#index-im_002dsharpen_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>This procedure performs a ‘<samp>simple sharpening</samp>’ operation on
<var>image</var>. It actually calls <a href="#im_002dconvolve">im-convolve</a> with the following
kernel:
</p>
<div class="example lisp">
<pre class="lisp">            -1/16  -1/8  -1/16      0  0  0
( * factor  -1/8    3/4  -1/8  ) +  0  1  0
            -1/16  -1/8  -1/16      0  0  0
</pre></div>

<p>and uses <code>mirror</code> as the ‘<samp>out of bound strategy</samp>’.
</p></dd></dl>


<span id="im_002dmedian_002dfilter"></span><span id="im_002dmedian_002dfilter_002dchannel"></span><dl class="def">
<dt id="index-im_002dmedian_002dfilter"><span class="category">Procedure: </span><span><strong>im-median-filter</strong> <em>image w-width w-height [#:obs 'repeat]</em><a href="#index-im_002dmedian_002dfilter" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dmedian_002dfilter_002dchannel"><span class="category">Procedure: </span><span><strong>im-median-filter-channel</strong> <em>channel width height                   w-width w-height [#:obs 'repeat]</em><a href="#index-im_002dmedian_002dfilter_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Median-Filter"></span>

<p>Returns a new image or channel.
</p>
<p>In the new image or channel, each pixel value is the ‘<samp>median</samp>’ value
of neighboring entries.  The pattern of neighbors is called a
‘<samp>window</samp>’, the size of which is given by <code>w-width</code> and
<code>w-height</code> (see <a href="https://en.wikipedia.org/wiki/Median_filter">Median Filter</a> for
more information).  Both <var>w-width</var> and <var>w-height</var> must be
<code>odd</code> numbers, inferior to <var>width</var> and <var>height</var>
respectively.
</p>
<p>The optional keyword argument <var>#:obs</var> determines the
‘<samp>out-of-bound strategy</samp>’. Valid <var>#:obs</var> symbols are:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>avoid</code></span></dt>
<dd><p>do not operate on pixels upon which (centering) the kernel does not fit
in the image
</p>
</dd>
<dt><span><code>repeat</code></span></dt>
<dd><p>repeat the nearest pixels
</p></dd>
<dt><span><code>mirror</code></span></dt>
<dd><p>mirror the nearest pixels
</p></dd>
<dt><span><code>wrap</code></span></dt>
<dd><p>wrap image around (periodic boundary conditions)
</p></dd>
<dt><span><code>zero</code></span></dt>
<dd><p>out-of-bound pixel values to be <code>0.0</code>
</p></dd>
</dl>
</blockquote>

</dd></dl>


<span id="im_002dconvolve"></span><span id="im_002dconvolve_002dchannel"></span><dl class="def">
<dt id="index-im_002dconvolve"><span class="category">Procedure: </span><span><strong>im-convolve</strong> <em>image kernel [#:obs 'repeat]</em><a href="#index-im_002dconvolve" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dconvolve_002dchannel"><span class="category">Procedure: </span><span><strong>im-convolve-channel</strong> <em>channel width height                   kernel k-width k-height [#:obs 'repeat]</em><a href="#index-im_002dconvolve_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Image-Convolution"></span>

<p>Returns a new image or channel.
</p>
<p>The new image or new channel is the result of the
<a href="https://en.wikipedia.org/wiki/Kernel_(image_processing)#Convolution">convolution</a> of <var>image</var> using
<var>kernel</var>.  The <a href="https://en.wikipedia.org/wiki/Kernel_(image_processing)">kernel</a> <var>k-width</var> and
<var>k-height</var> values can be different, but they must be <code>odd</code>
numbers, inferior to <var>width</var> and <var>height</var> respectively.
</p>
<p>The optional keyword argument <var>#:obs</var> determines the
‘<samp>out-of-bound strategy</samp>’. Valid <var>#:obs</var> symbols are:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>avoid</code></span></dt>
<dd><p>do not operate on pixels upon which (centering) the kernel does not fit
in the image
</p></dd>
<dt><span><code>clip</code></span></dt>
<dd><p>clip the kernel when operating on pixels upon which (centering) the
kernel does not fit in the image (this is only useful if the kernel is
&gt;= 0 everywhere)
</p></dd>
<dt><span><code>repeat</code></span></dt>
<dd><p>repeat the nearest pixels
</p></dd>
<dt><span><code>mirror</code></span></dt>
<dd><p>mirror the nearest pixels
</p></dd>
<dt><span><code>wrap</code></span></dt>
<dd><p>wrap image around (periodic boundary conditions)
</p></dd>
<dt><span><code>zero</code></span></dt>
<dd><p>out-of-bound pixel values to be <code>0.0</code>
</p></dd>
</dl>
</blockquote>

<p>Kernel data structure, accessors, procedures and predefined kernels are
all described in this node of the Guile-CV manual:
<a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a>.
</p>
</dd></dl>


<span id="im_002dnl_002dmeans"></span><span id="im_002dnl_002dmeans_002dchannel"></span><dl class="def">
<dt id="index-im_002dnl_002dmeans"><span class="category">Procedure: </span><span><strong>im-nl-means</strong> <em>image arg...</em><a href="#index-im_002dnl_002dmeans" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dnl_002dmeans_002dchannel"><span class="category">Procedure: </span><span><strong>im-nl-means-channel</strong> <em>channel width height arg...</em><a href="#index-im_002dnl_002dmeans_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Non_002dLocal-Means-Denoising"></span>

<p>Returns a new image or channel.
</p>
<p>The new image or new channel is the result of a <a href="https://en.wikipedia.org/wiki/Non-local_means">non-local means</a> denoising as described here<a id="DOCF18" href="#FOOT18"><sup>18</sup></a>. The
following table lists the optional keyword arguments and their default
values:
</p>
<p>Policy arguments:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><samp>#:policy-type 1</samp></span></dt>
<dd><p>accepts 0 (ratio policy) or 1 (norm policy)
</p></dd>
<dt><span><samp>#:sigma 15.0</samp></span></dt>
<dd><p>default to 5.0 if the policy-type is 0
</p></dd>
<dt><span><samp>#:mean-ratio 5.0</samp></span></dt>
<dd><p>default to 0.95 if the policy-type is 0
</p></dd>
<dt><span><samp>#:variance-ratio 0.5</samp></span></dt>
<dt><span><samp>#:epsilon 1.0e-5</samp></span></dt>
</dl>
</blockquote>

<p>Filter arguments:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><samp>#:spatial-sigma 2.0</samp></span></dt>
<dt><span><samp>#:search-radius 3</samp></span></dt>
<dt><span><samp>#:patch-radius 1</samp></span></dt>
<dd><p>the patch-radius can be either 1 or 2
</p></dd>
<dt><span><samp>#:mean-sigma 1.0</samp></span></dt>
<dt><span><samp>#:step-size 2</samp></span></dt>
<dt><span><samp>#:n-iteration 1</samp></span></dt>
</dl>
</blockquote>

<p>The <code>im-nl-means-channel</code> procedure accepts one additional optional
keyword argument:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><samp>#:n-thread (- (current-processor-count) 1)</samp></span></dt>
</dl>
</blockquote>

<p>FIXME need to describe the parameters
</p></dd></dl>


<hr>
</div>
<div class="subsection" id="Process">
<div class="header">
<p>
Next: <a href="#Transform" accesskey="n" rel="next">Transform</a>, Previous: <a href="#Filter" accesskey="p" rel="prev">Filter</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Process-1"></span><h4 class="subsection">Process</h4>

<p>The Guile-CV procedures and methods to process images.
</p>
<span id="Procedures-11"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002dthreshold">im-threshold</a></code></span></dt>
<dt><span><code><a href="#im_002dscrap">im-scrap</a></code></span></dt>
<dt><span><code><a href="#im_002dadd">im-add</a></code></span></dt>
<dt><span><code><a href="#im_002dadd_002dchannel">im-add-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dsubtract">im-subtract</a></code></span></dt>
<dt><span><code><a href="#im_002dsubtract_002dchannel">im-subtract-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dmtimes">im-mtimes</a></code></span></dt>
<dt><span><code><a href="#im_002dmtimes_002dchannel">im-mtimes-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dtimes">im-times</a></code></span></dt>
<dt><span><code><a href="#im_002dtimes_002dchannel">im-times-channel</a></code></span></dt>
<dt><span><code><a href="#im_002ddivide">im-divide</a></code></span></dt>
<dt><span><code><a href="#im_002ddivide_002dchannel">im-divide-channel</a></code></span></dt>
<dt><span><code><a href="#im_002drange">im-range</a></code></span></dt>
<dt><span><code><a href="#im_002drange_002dchannel">im-range-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dmin">im-min</a></code></span></dt>
<dt><span><code><a href="#im_002dmin_002dchannel">im-min-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dmax">im-max</a></code></span></dt>
<dt><span><code><a href="#im_002dmax_002dchannel">im-max-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dmap">im-map</a></code></span></dt>
<dt><span><code><a href="#im_002dmap_002dchannel">im-map-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dreduce">im-reduce</a></code></span></dt>
<dt><span><code><a href="#im_002dreduce_002dchannel">im-reduce-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dnormalize">im-normalize</a></code></span></dt>
<dt><span><code><a href="#im_002dnormalize_002dchannel">im-normalize-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dand">im-and</a></code></span></dt>
<dt><span><code><a href="#im_002dand_002dchannel">im-and-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dor">im-or</a></code></span></dt>
<dt><span><code><a href="#im_002dor_002dchannel">im-or-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dxor">im-xor</a></code></span></dt>
<dt><span><code><a href="#im_002dxor_002dchannel">im-xor-channel</a></code></span></dt>
</dl>
</blockquote>


<span id="im_002dthreshold"></span><dl class="def">
<dt id="index-im_002dthreshold"><span class="category">Procedure: </span><span><strong>im-threshold</strong> <em>image threshold [#:bg 'black]</em><a href="#index-im_002dthreshold" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new BLACK and WHITE image.
</p>
<p>The <var>image</var> argument can either be a GRAY or an an RGB image, in
which case each pixel is converted to GRAY as it is processed. Valid
<var>#:bg</var> values are <code>black</code> (the default) and <code>white</code>.
</p>
<p>Pixels for which the original value is <code>&gt;=</code> <var>threshold</var> are set
to 255.0 if <var>#:bg</var> is <code>'black</code>, and set to 0.0 if <var>#:bg</var> is
<code>'white</code>. The other pixels are set to 0.0 or 255.0 respectively.
</p></dd></dl>


<span id="im_002dscrap"></span><dl class="def">
<dt id="index-im_002dscrap"><span class="category">Procedure: </span><span><strong>im-scrap</strong> <em>image size [#:pred &lt;] [#:con 8] [#:bg 'black]                  [#:exclude-on-edges #f]</em><a href="#index-im_002dscrap" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image.
</p>
<p>Scraping an image is the operation of removing objects depending on
their <var>size</var> (in pixels). When <var>exclude-on-edges</var> is #t, all
objects that are on any edges are also removed.
</p>
<p>The procedure first calls <a href="#im_002dlabel">im-label</a> using <var>con</var> and <var>bg</var>,
then calls <a href="#im_002dfeatures">im-features</a>.  The <code>area</code> feature of each object is
then compared to <var>size</var> using <var>pred</var> and the object is removed
if the result is #t.
</p>
<p>Note that <var>image</var> must be a binary image.
</p></dd></dl>


<span id="im_002dadd"></span><span id="im_002dadd_002dchannel"></span><dl class="def">
<dt id="index-im_002dadd"><span class="category">Method: </span><span><strong>im-add</strong> <em>image val</em><a href="#index-im_002dadd" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dadd-1"><span class="category">Method: </span><span><strong>im-add</strong> <em>i1 i2 i3 …</em><a href="#index-im_002dadd-1" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dadd_002dchannel"><span class="category">Method: </span><span><strong>im-add-channel</strong> <em>channel width height val</em><a href="#index-im_002dadd_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dadd_002dchannel-1"><span class="category">Method: </span><span><strong>im-add-channel</strong> <em>width height c1 c2 c3 …</em><a href="#index-im_002dadd_002dchannel-1" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>Performs the scalar addition of <var>image</var> with <var>val</var> or the matrix
addition of <var>i1 i2 i3</var> … or <var>c1 c2 c3</var> …
respectively.
</p></dd></dl>


<span id="im_002dsubtract"></span><span id="im_002dsubtract_002dchannel"></span><dl class="def">
<dt id="index-im_002dsubtract"><span class="category">Method: </span><span><strong>im-subtract</strong> <em>image val</em><a href="#index-im_002dsubtract" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dsubtract-1"><span class="category">Method: </span><span><strong>im-subtract</strong> <em>i1 i2 i3 …</em><a href="#index-im_002dsubtract-1" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dsubtract_002dchannel"><span class="category">Method: </span><span><strong>im-subtract-channel</strong> <em>channel width height val</em><a href="#index-im_002dsubtract_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dsubtract_002dchannel-1"><span class="category">Method: </span><span><strong>im-subtract-channel</strong> <em>width height c1 c2 c3 …</em><a href="#index-im_002dsubtract_002dchannel-1" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>Performs the scalar subtraction of <var>image</var> with <var>val</var> or the
matrix subtraction of <var>i1 i2 i3</var> … or <var>c1 c2 c3</var> …
respectively.
</p></dd></dl>


<span id="im_002dtimes"></span><span id="im_002dtimes_002dchannel"></span><dl class="def">
<dt id="index-im_002dtimes"><span class="category">Method: </span><span><strong>im-times</strong> <em>image val</em><a href="#index-im_002dtimes" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dtimes-1"><span class="category">Method: </span><span><strong>im-times</strong> <em>i1 i2 i3 …</em><a href="#index-im_002dtimes-1" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dtimes_002dchannel"><span class="category">Method: </span><span><strong>im-times-channel</strong> <em>channel width height val</em><a href="#index-im_002dtimes_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dtimes_002dchannel-1"><span class="category">Method: </span><span><strong>im-times-channel</strong> <em>c1 w1 h1 c2 w2 h2 c3 w3 h3 …</em><a href="#index-im_002dtimes_002dchannel-1" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>Performs the scalar multiplication of <var>image</var> with <var>val</var> or the
element by element multiplication of <var>i1 i2 i3</var> … or <var>c1
c2 c3</var> … respectively.
</p></dd></dl>


<span id="index-Matrix-Multiplication"></span>
<span id="im_002dmtimes"></span><span id="im_002dmtimes_002dchannel"></span><dl class="def">
<dt id="index-im_002dmtimes"><span class="category">Procedure: </span><span><strong>im-mtimes</strong> <em>i1 i2 i3 …</em><a href="#index-im_002dmtimes" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dmtimes_002dchannel"><span class="category">Procedure: </span><span><strong>im-mtimes-channel</strong> <em>width height c1 c2 c3 …</em><a href="#index-im_002dmtimes_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>Performs matrix multiplication of <var>i1 i2 i3</var> … or <var>c1 w1
h1 c2 w2 h2 c3 w3 h3</var> … recursively.  The number of lines of the
next image must equal the number of columns of the previous intermediate
result.
</p></dd></dl>


<span id="im_002ddivide"></span><span id="im_002ddivide_002dchannel"></span><dl class="def">
<dt id="index-im_002ddivide"><span class="category">Method: </span><span><strong>im-divide</strong> <em>image val</em><a href="#index-im_002ddivide" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002ddivide-1"><span class="category">Method: </span><span><strong>im-divide</strong> <em>i1 i2 i3 …</em><a href="#index-im_002ddivide-1" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002ddivide_002dchannel"><span class="category">Method: </span><span><strong>im-divide-channel</strong> <em>channel width height val</em><a href="#index-im_002ddivide_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002ddivide_002dchannel-1"><span class="category">Method: </span><span><strong>im-divide-channel</strong> <em>c1 w1 h1 c2 w2 h2 c3 w3 h3 …</em><a href="#index-im_002ddivide_002dchannel-1" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>Performs the scalar division of <var>image</var> with <var>val</var> or the
element by element division of <var>i1 i2 i3</var> … or <var>c1 c2 c3</var>
… respectively.
</p>
<p>It is the user responsibility to insure that none of the <var>c2 c3</var>
… values is <code>zero</code>.
</p></dd></dl>


<span id="index-Matrix-Division"></span>
<span id="im_002dmdivide"></span><span id="im_002dmdivide_002dchannel"></span><dl class="def">
<dt id="index-im_002dmdivide"><span class="category">Procedure: </span><span><strong>im-mdivide</strong> <em>i1 i2 i3 …</em><a href="#index-im_002dmdivide" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dmdivide_002dchannel"><span class="category">Procedure: </span><span><strong>im-mdivide-channel</strong> <em>width height c1 c2 c3 …</em><a href="#index-im_002dmdivide_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>Performs the matrix multiplication of <var>i1</var> or <var>c1</var> by the
inverse of <var>i2 i3</var> … or <var>c2 c3</var> … recursively.
The number of lines of the next image must equal the number of columns
of the previous intermediate result<a id="DOCF19" href="#FOOT19"><sup>19</sup></a>.
</p>
<p>It is the user responsibility to insure that none of the <var>c2 c3</var>
… values is <code>zero</code>.
</p></dd></dl>


<span id="im_002drange"></span><span id="im_002drange_002dchannel"></span><dl class="def">
<dt id="index-im_002drange"><span class="category">Procedure: </span><span><strong>im-range</strong> <em>image</em><a href="#index-im_002drange" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002drange_002dchannel"><span class="category">Procedure: </span><span><strong>im-range-channel</strong> <em>channel width</em><a href="#index-im_002drange_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a list of six values <code>(min row col max row col)</code> if
<var>image</var> is GRAY, and a list of list of these values if <var>image</var>
is RGB or for any <code>n-chan &gt; 1</code> images.
</p></dd></dl>


<span id="im_002dmin"></span><span id="im_002dmax"></span><span id="im_002dmin_002dchannel"></span><span id="im_002dmax_002dchannel"></span><dl class="def">
<dt id="index-im_002dmin"><span class="category">Procedure: </span><span><strong>im-min</strong> <em>image</em><a href="#index-im_002dmin" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dmax"><span class="category">Procedure: </span><span><strong>im-max</strong> <em>image</em><a href="#index-im_002dmax" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dmin_002dchannel"><span class="category">Procedure: </span><span><strong>im-min-channel</strong> <em>channel width</em><a href="#index-im_002dmin_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dmax_002dchannel"><span class="category">Procedure: </span><span><strong>im-max-channel</strong> <em>channel width</em><a href="#index-im_002dmax_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns three multiple values if <var>image</var> is GRAY: <code>min row col</code>
or <code>max row col</code> respectively.  If <var>image</var> is RGB or for any
<code>n-chan &gt; 1</code> images, it returns a list of list of these values.
</p></dd></dl>


<span id="im_002dmap"></span><span id="im_002dmap_002dchannel"></span><dl class="def">
<dt id="index-im_002dmap"><span class="category">Procedure: </span><span><strong>im-map</strong> <em>proc i1 i2 i3 …</em><a href="#index-im_002dmap" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dmap_002dchannel"><span class="category">Procedure: </span><span><strong>im-map-channel</strong> <em>proc width height c1 c2 c3 …</em><a href="#index-im_002dmap_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>Apply <var>proc</var> to each pixel value of each channel of <var>i1</var> (if
only two arguments are given), or to the corresponding pixel values of
each channels of i1 i2 i3 … (if more than two arguments are
given).
</p></dd></dl>


<span id="im_002dreduce"></span><span id="im_002dreduce_002dchannel"></span><dl class="def">
<dt id="index-im_002dreduce"><span class="category">Procedure: </span><span><strong>im-reduce</strong> <em>image proc default</em><a href="#index-im_002dreduce" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dreduce_002dchannel"><span class="category">Procedure: </span><span><strong>im-reduce-channel</strong> <em>channel proc default</em><a href="#index-im_002dreduce_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns one value if <var>image</var> is GRAY.  If <var>image</var> is RGB or for
any <code>n-chan &gt; 1</code>, it returns a list of values.
</p>
<p>If <var>image</var> is empty, <code>im-reduce</code> returns <var>default</var> (this is
the only use for default).  If <var>image</var> has only one pixel, then the
pixel value is what is returned.  Otherwise, <var>proc</var> is called on the
pixel values of <var>image</var>.
</p>
<p>Each <var>proc</var> call is <code>(proc elem prev)</code>, where <code>elem</code> is a
pixel value from the channel (the second and subsequent pixel values of
the channel), and <code>prev</code> is the returned value from the previous
call to <var>proc</var>. The first pixel value - for each channel - is the
<code>prev</code> for the first call to <code>proc</code>.
</p>
<p>For example:
</p>
<div class="example lisp">
<pre class="lisp">,use (cv)
(im-load "edx.png")
-|
$2 = (128 128 1 (#f32(4.0 26.0 102.0 97.0 58.0 10.0 9.0 21.0 # …)))
(im-reduce $2 + 0)
-|
$3 = 556197.0
</pre></div>

</dd></dl>


<span id="im_002dnormalize"></span><span id="im_002dnormalize_002dchannel"></span><dl class="def">
<dt id="index-im_002dnormalize"><span class="category">Procedure: </span><span><strong>im-normalize</strong> <em>image [#:value 255.0]</em><a href="#index-im_002dnormalize" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dnormalize_002dchannel"><span class="category">Procedure: </span><span><strong>im-normalize-channel</strong> <em>channel width height [#:value 255.0]</em><a href="#index-im_002dnormalize_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new normalized image or channel.
</p>
<p>Normalizing an <var>image</var> or a <var>channel</var> consist of dividing all
pixels by a value so they all fall in the <code>[0.0 -&gt; 1.0]</code> range. The
default <var>#:value</var> is <code>255.0</code>.
</p></dd></dl>


<span id="im_002dand"></span><span id="im_002dand_002dchannel"></span><span id="im_002dor"></span><span id="im_002dor_002dchannel"></span><span id="im_002dxor"></span><span id="im_002dxor_002dchannel"></span><dl class="def">
<dt id="index-im_002dand"><span class="category">Procedure: </span><span><strong>im-and</strong> <em>i1 i2 i3 …</em><a href="#index-im_002dand" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dand_002dchannel"><span class="category">Procedure: </span><span><strong>im-and-channel</strong> <em>width height c1 c2 c3 …</em><a href="#index-im_002dand_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dor"><span class="category">Procedure: </span><span><strong>im-or</strong> <em>i1 i2 i3 …</em><a href="#index-im_002dor" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dor_002dchannel"><span class="category">Procedure: </span><span><strong>im-or-channel</strong> <em>width height c1 c2 c3 …</em><a href="#index-im_002dor_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dxor"><span class="category">Procedure: </span><span><strong>im-xor</strong> <em>i1 i2 i3 …</em><a href="#index-im_002dxor" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dxor_002dchannel"><span class="category">Procedure: </span><span><strong>im-xor-channel</strong> <em>width height c1 c2 c3 …</em><a href="#index-im_002dxor_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns <var>image</var> if one argument only, otherwise, it returns a new
image or channel, as the result of computing the logical <code>AND</code>,
<code>OR</code> or <code>XOR</code> of all images or channels.
</p>
<p>In the case of <code>AND</code>, for all positive results, the pixel values
(of each channel) of the new image are set to the one obtained from
<var>i1</var> or <var>c1</var> respectively, and <code>0.0</code> otherwise.
</p>
<p>In the case of <code>OR</code>, the pixel values (of each channel) of the new
image are set to the one obtained from the first non zero <var>ii</var> or
<var>ci</var> respectively, otherwise it is set to <code>0.0</code>.
</p>
<p>In the case of <code>XOR</code>, the pixel values (of each channel) of the new
image are set to the value obtained from successively computing
<code>(logior (logand a (- 255 b)) (logand (- 255 a) b))</code> where <code>a</code>
would be the previous result and <code>b</code> the current <code>image</code> or
<code>channel</code> pixel value, until all images passed in arguments have
been processed<a id="DOCF20" href="#FOOT20"><sup>20</sup></a>.
</p>
<p>All images must have the same <code>width</code>, <code>height</code> and
<code>n-channel</code>.
</p>
<p>There are, of course, scientific use and examples of images logical
<code>XOR</code>, and that is why <a href="http://www.gnu.org/software/guile-cv">Guile-CV</a> is being
developed for, but let’s have a bit of fun here, and see if our
levitating GNU likes apples!
</p>
<img src="Guile-CV%20Reference%20Manual_files/emacs-1.png" alt="emacs-1">


</dd></dl>


<hr>
</div>
<div class="subsection" id="Transform">
<div class="header">
<p>
Next: <a href="#Morphology" accesskey="n" rel="next">Morphology</a>, Previous: <a href="#Process" accesskey="p" rel="prev">Process</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Transform-1"></span><h4 class="subsection">Transform</h4>

<p>The Guile-CV procedures and methods to transform images.
</p>
<span id="Procedures-12"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002drgba_002d_003ergb">im-rgba-&gt;rgb</a></code></span></dt>
<dt><span><code><a href="#im_002drgba_002d_003egray">im-rgba-&gt;gray</a></code></span></dt>
<dt><span><code><a href="#im_002drgb_002d_003egray">im-rgb-&gt;gray</a></code></span></dt>
<dt><span><code><a href="#im_002dresize">im-resize</a></code></span></dt>
<dt><span><code><a href="#im_002dresize_002dchannel">im-resize-channel</a></code></span></dt>
<dt><span><code><a href="#im_002drotate">im-rotate</a></code></span></dt>
<dt><span><code><a href="#im_002drotate_002dchannel">im-rotate-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dflip">im-flip</a></code></span></dt>
<dt><span><code><a href="#im_002dflip_002dchannel">im-flip-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dinvert">im-invert</a></code></span></dt>
<dt><span><code><a href="#im_002dinvert_002dchannel">im-invert-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dtranspose">im-transpose</a></code></span></dt>
<dt><span><code><a href="#im_002dtranspose_002dchannel">im-transpose-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dcomplement">im-complement</a></code></span></dt>
<dt><span><code><a href="#im_002dclip">im-clip</a></code></span></dt>
<dt><span><code><a href="#im_002dclip_002dchannel">im-clip-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dcrop">im-crop</a></code></span></dt>
<dt><span><code><a href="#im_002dcrop_002dchannel">im-crop-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dcrop_002dsize">im-crop-size</a></code></span></dt>
<dt><span><code><a href="#im_002dpadd">im-padd</a></code></span></dt>
<dt><span><code><a href="#im_002dpadd_002dchannel">im-padd-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dpadd_002dsize">im-padd-size</a></code></span></dt>
<dt><span><code><a href="#im_002dlocal_002dminima">im-local-minima</a></code></span></dt>
<dt><span><code><a href="#im_002dlocal_002dminima_002dchannel">im-local-minima-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dlocal_002dmaxima">im-local-maxima</a></code></span></dt>
<dt><span><code><a href="#im_002dlocal_002dmaxima_002dchannel">im-local-maxima-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dfft">im-fft</a></code></span></dt>
<dt><span><code><a href="#im_002dfft_002dchannel">im-fft-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dfft_002dinverse">im-fft-inverse</a></code></span></dt>
<dt><span><code><a href="#im_002dfft_002dinverse_002dchannel">im-fft-inverse-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dfcc">im-fcc</a></code></span></dt>
<dt><span><code><a href="#im_002dfcc_002dchannel">im-fcc-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dfncc">im-fncc</a></code></span></dt>
<dt><span><code><a href="#im_002dfncc_002dchannel">im-fncc-channel</a></code></span></dt>
</dl>
</blockquote>


<span id="im_002drgba_002d_003ergb"></span><span id="im_002drgba_002d_003egray"></span><span id="im_002drgb_002d_003egray"></span><dl class="def">
<dt id="index-im_002drgba_002d_003ergb"><span class="category">Procedure: </span><span><strong>im-rgba-&gt;rgb</strong> <em>image [#:bg '(0.0 0.0 0.0)]</em><a href="#index-im_002drgba_002d_003ergb" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002drgba_002d_003egray"><span class="category">Procedure: </span><span><strong>im-rgba-&gt;gray</strong> <em>image [#:bg '(0.0 0.0 0.0)]</em><a href="#index-im_002drgba_002d_003egray" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002drgb_002d_003egray"><span class="category">Procedure: </span><span><strong>im-rgb-&gt;gray</strong> <em>image</em><a href="#index-im_002drgb_002d_003egray" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new RGB or GRAY image.
</p>
<p>In the RGBA case, <var>image</var> channels are first normalized. The new RGB
channels are obtained by applying the following pseudo code algorithm:
</p>
<div class="example lisp">
<pre class="lisp">R = (((1 - Source.A) * BG.R) + (Source.A * Source.R)) * 255.0
G = (((1 - Source.A) * BG.G) + (Source.A * Source.G)) * 255.0
B = (((1 - Source.A) * BG.B) + (Source.A * Source.B)) * 255.0
</pre></div>
</dd></dl>


<span id="im_002dresize"></span><span id="im_002dresize_002dchannel"></span><dl class="def">
<dt id="index-im_002dresize"><span class="category">Procedure: </span><span><strong>im-resize</strong> <em>image new-width new-height        [#:i-mode 'bilinear]</em><a href="#index-im_002dresize" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dresize_002dchannel"><span class="category">Procedure: </span><span><strong>im-resize-channel</strong> <em>channel width height new-width new-height         [#:i-mode 'bilinear]</em><a href="#index-im_002dresize_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or chanbnel resized to <var>new-width</var>,
<var>new-height</var>.
</p>
<p>The interpolation mode <var>#:i-mode</var>, can be one of:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>none</code></span></dt>
<dt><span><code>bilinear</code></span></dt>
<dt><span><code>biquadratic</code></span></dt>
<dt><span><code>bicubic</code></span></dt>
<dt><span><code>? (fixme)</code></span></dt>
</dl>
</blockquote>
</dd></dl>


<span id="im_002drotate"></span><span id="im_002drotate_002dchannel"></span><dl class="def">
<dt id="index-im_002drotate"><span class="category">Procedure: </span><span><strong>im-rotate</strong> <em>image angle [#:i-mode 'bilinear]</em><a href="#index-im_002drotate" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002drotate_002dchannel"><span class="category">Procedure: </span><span><strong>im-rotate-channel</strong> <em>channel width height angle         [#:i-mode 'bilinear]</em><a href="#index-im_002drotate_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel rotated by <var>angle</var>.
</p>
<p>The <var>angle</var> is in degrees: <code>+/-[0.0 360.0]</code>.
</p>
<p>It is neccessary, for rotations other than multiples of 90°, to
recalculate the target coordinates, since after the rotation, they might
be floats.  The ’next neighbor’ interpolation possible modes,
<var>#:i-mode</var>, are:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>bilinear</code></span></dt>
<dt><span><code>biquadratic</code></span></dt>
<dt><span><code>bicubic</code></span></dt>
<dt><span><code>? (fixme)</code></span></dt>
</dl>
</blockquote>
</dd></dl>


<span id="im_002dflip"></span><span id="im_002dflip_002dchannel"></span><dl class="def">
<dt id="index-im_002dflip"><span class="category">Procedure: </span><span><strong>im-flip</strong> <em>image plane</em><a href="#index-im_002dflip" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dflip_002dchannel"><span class="category">Procedure: </span><span><strong>im-flip-channel</strong> <em>channel width height plane</em><a href="#index-im_002dflip_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel flipped according to the selected
<var>plane</var>.
</p>
<p>Valid flipping <var>plane</var> values are:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>hori horizontal</code></span></dt>
<dt><span><code>vert vertical</code></span></dt>
<dt><span><code>both</code></span></dt>
</dl>
</blockquote>
</dd></dl>


<span id="im_002dinvert"></span><span id="im_002dinvert_002dchannel"></span><dl class="def">
<dt id="index-im_002dinvert"><span class="category">Procedure: </span><span><strong>im-invert</strong> <em>image</em><a href="#index-im_002dinvert" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dinvert_002dchannel"><span class="category">Procedure: </span><span><strong>im-invert-channel</strong> <em>channel width height</em><a href="#index-im_002dinvert_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new inversed image or channel.
</p>
<p>Calculating the inverse of an <var>image</var> or a <var>channel</var> consist of
applying the exponent function, <code>expt</code>, to all pixel values,
raising them to the power of -1.
</p></dd></dl>


<span id="im_002dtranspose"></span><span id="im_002dtranspose_002dchannel"></span><dl class="def">
<dt id="index-im_002dtranspose"><span class="category">Procedure: </span><span><strong>im-transpose</strong> <em>image</em><a href="#index-im_002dtranspose" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dtranspose_002dchannel"><span class="category">Procedure: </span><span><strong>im-transpose-channel</strong> <em>channel width height</em><a href="#index-im_002dtranspose_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new tranposed image or channel.
</p>
<p>Transposing an <var>image</var> or a <var>channel</var> consist of flipping it
over its main diagonal.  In the transposed result, switched in size, row
values are the original column values and column values are the original
row values.
</p></dd></dl>


<span id="im_002dcomplement"></span><dl class="def">
<dt id="index-im_002dcomplement"><span class="category">Procedure: </span><span><strong>im-complement</strong> <em>image</em><a href="#index-im_002dcomplement" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image.
</p>
<p>This procedure computes the mathematical complement of <var>image</var>,
which for Guile-CV means that for each pixel of each channel, the new
value is <code>(- 255.0 pixel-value)</code>.
</p></dd></dl>


<span id="im_002dclip"></span><span id="im_002dclip_002dchannel"></span><dl class="def">
<dt id="index-im_002dclip"><span class="category">Procedure: </span><span><strong>im-clip</strong> <em>image [#:lower 0.0] [#:upper 255.0]</em><a href="#index-im_002dclip" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dclip_002dchannel"><span class="category">Procedure: </span><span><strong>im-clip-channel</strong> <em>channel width height [#:lower 0.0] [#:upper 255.0]</em><a href="#index-im_002dclip_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new clipped image or channel.
</p>
<p>Clipping an <var>image</var> or a <var>channel</var> consist of replacing all
pixel values below <code>lower</code> by the <code>lower</code> value and all pixel
values above <code>upper</code> by the <code>upper</code> value.
</p></dd></dl>


<span id="im_002dcrop"></span><span id="im_002dcrop_002dchannel"></span><dl class="def">
<dt id="index-im_002dcrop"><span class="category">Procedure: </span><span><strong>im-crop</strong> <em>image left top right bottom</em><a href="#index-im_002dcrop" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dcrop_002dchannel"><span class="category">Procedure: </span><span><strong>im-crop-channel</strong> <em>channel width height left top right bottom         [#:new-w #f] [#:new-h #f]</em><a href="#index-im_002dcrop_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image, resulting of the crop of <var>image</var> at <var>left</var>,
<var>top</var>, <var>right</var> and <var>bottom</var>.
</p></dd></dl>


<span id="im_002dcrop_002dsize"></span><dl class="def">
<dt id="index-im_002dcrop_002dsize"><span class="category">Procedure: </span><span><strong>im-crop-size</strong> <em>width height left top right bottom</em><a href="#index-im_002dcrop_002dsize" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a list, <code>(new-width new-height)</code>.
</p>
<p>Given the original image <var>width</var> and <var>height</var>, this procedure
checks that <var>left</var>, <var>top</var>, <var>right</var> and <var>bottom</var> are
valid and return a list, <code>(new-width new-height)</code>, otherwise, it
raises an error.
</p></dd></dl>


<span id="im_002dpadd"></span><span id="im_002dpadd_002dchannel"></span><dl class="def">
<dt id="index-im_002dpadd"><span class="category">Procedure: </span><span><strong>im-padd</strong> <em>image left top right bottom [#:color '(0.0 0.0 0.0)]</em><a href="#index-im_002dpadd" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dpadd_002dchannel"><span class="category">Procedure: </span><span><strong>im-padd-channel</strong> <em>channel width height left top right bottom         [#:new-w #f] [#:new-h #f] [#:value 0.0]</em><a href="#index-im_002dpadd_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel, respectively padding <var>image</var> or
<var>channel</var> by <var>left</var>, <var>top</var>, <var>right</var> and <var>bottom</var>
pixels initialized respectively to <var>color</var> or <var>value</var>. Note
that when <code>im-padd</code> is called upon a <code>GRAY</code> image,
<var>color</var> is reduced to its corresponding gray <var>value</var>:
</p>
<div class="example lisp">
<pre class="lisp"><code>(/ (reduce + 0 color) 3)</code>
</pre></div>
</dd></dl>


<span id="im_002dpadd_002dsize"></span><dl class="def">
<dt id="index-im_002dpadd_002dsize"><span class="category">Procedure: </span><span><strong>im-padd-size</strong> <em>width height left top right bottom</em><a href="#index-im_002dpadd_002dsize" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a list, <code>(new-width new-height)</code>.
</p>
<p>Given the original image <var>width</var> and <var>height</var>, this procedure
checks that <var>left</var>, <var>top</var>, <var>right</var> and <var>bottom</var> are
<code>&gt;= 0</code> and return a list, <code>(new-width new-height)</code>,
otherwise, it raises an error.
</p></dd></dl>


<span id="im_002dlocal_002dminima"></span><span id="im_002dlocal_002dmaxima"></span><span id="im_002dlocal_002dminima_002dchannel"></span><span id="im_002dlocal_002dmaxima_002dchannel"></span><dl class="def">
<dt id="index-im_002dlocal_002dminima"><span class="category">Procedure: </span><span><strong>im-local-minima</strong> <em>image [#:threshold +float-max+]</em><a href="#index-im_002dlocal_002dminima" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dlocal_002dmaxima"><span class="category">Procedure: </span><span><strong>im-local-maxima</strong> <em>image [#:threshold (- +float-max+)]</em><a href="#index-im_002dlocal_002dmaxima" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dlocal_002dminima_002dchannel"><span class="category">Procedure: </span><span><strong>im-local-minima-channel</strong> <em>channel width height                                           [#:threshold +float-max+]</em><a href="#index-im_002dlocal_002dminima_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dlocal_002dmaxima_002dchannel"><span class="category">Procedure: </span><span><strong>im-local-maxima-channel</strong> <em>channel width height                                           [#:threshold (- +float-max+)]</em><a href="#index-im_002dlocal_002dmaxima_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<blockquote class="indentedblock">
<p>All local mnima and maxima related procedures also accept the following
additional optional keyword arguments: [#:con 8] [#:marker 1.0]
[#:borders? #f] [#:plateaus?  #f] [#:epsilon 1.0e-4]
</p></blockquote>

<p>Returns a new image or channel.
</p>
<p>Finds the local minima or maxima in <var>image</var> or <var>channel</var>. Local
minima or maxima are defined as ‘<samp>points</samp>’ that are not on the
borders (unless <code>#:borders?</code> is <code>#t</code>), and whose values are
lower or higher, respectively, then the values of all direct neighbors.
In the result image or channel, these points are marked using the
<var>#:marker</var> value (all other pixels values will be set to <code>0</code>).
</p>
<p>By default, the algorithm uses 8-connectivity to define a neighborhood,
which can be changed passing the optional keyword argument <var>#:con</var>,
which can be either 4 or 8.
</p>
<p>The <var>#:threshold</var> optional keyword argument can be used to discard
minima and maxima whose (original pixel) value is not below or above the
threshold, respectively. Both default values depend on
<code>+float-max+</code>, which is defined (and so is <code>+float-min+</code>)
using the corresponding limit value as given by the C float.h header.
</p>
<p>The <var>#:plateaus?</var> optional keyword argument can be used to allow
regions of ‘<samp>constant</samp>’ (original pixel) value whose neighbors are
all higher (minima) or lower (maxima) than the value of the region. Tow
pixel values are considered part of the same region (representing the
same ‘<samp>constant</samp>’ value) if the absolute value of their difference is
<code>&lt;=</code> to <var>#:epsilon</var>.
</p>
<p><strong>Notes</strong>:
</p><ul>
<li> If you want to know how many minima or maxima
were found, use <a href="#im_002dreduce">im-reduce</a> upon the result;

</li><li> If you are interested by the original minima or maxima pixel
values, Use <a href="#im_002dtimes">im-times</a> between the original image and the result.
</li></ul>
</dd></dl>


<span id="im_002dfft"></span><span id="im_002dfft_002dchannel"></span><dl class="def">
<dt id="index-im_002dfft"><span class="category">Procedure: </span><span><strong>im-fft</strong> <em>image</em><a href="#index-im_002dfft" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dfft_002dchannel"><span class="category">Procedure: </span><span><strong>im-fft-channel</strong> <em>channel width height</em><a href="#index-im_002dfft_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Fast-Fourier-Transform"></span>

<p>Returns two images or channels.
</p>

<p>Computes and returns the Fast Fourier Transform<a id="DOCF21" href="#FOOT21"><sup>21</sup></a> of the <var>image</var>
or <var>channel</var>. It returns two values, images or channels: the first
contains the real part and the second the imaginary part of the
transformation.
</p></dd></dl>


<span id="im_002dfft_002dinverse"></span><span id="im_002dfft_002dinverse_002dchannel"></span><dl class="def">
<dt id="index-im_002dfft_002dinverse"><span class="category">Procedure: </span><span><strong>im-fft-inverse</strong> <em>real imaginary</em><a href="#index-im_002dfft_002dinverse" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dfft_002dinverse_002dchannel"><span class="category">Procedure: </span><span><strong>im-fft-inverse-channel</strong> <em>real-channel                     imaginary-channel width height</em><a href="#index-im_002dfft_002dinverse_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Fast-Fourier-Transform-Inverse"></span>

<p>Returns two images or channels.
</p>
<p>Computes and returns the inverse Fast Fourier Transform given its
<var>real</var> and <var>imaginary</var> or <var>real-channel</var> and
<var>imaginary-channel</var> parts. It returns two values, images or
channels: the first contains the real part and the second the imaginary
part of the inverse transformation.
</p></dd></dl>


<span id="im_002dfcc"></span><span id="im_002dfcc_002dchannel"></span><span id="im_002dfncc"></span><span id="im_002dfncc_002dchannel"></span><dl class="def">
<dt id="index-im_002dfcc"><span class="category">Procedure: </span><span><strong>im-fcc</strong> <em>image mask</em><a href="#index-im_002dfcc" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dfncc"><span class="category">Procedure: </span><span><strong>im-fncc</strong> <em>image mask</em><a href="#index-im_002dfncc" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dfcc_002dchannel"><span class="category">Procedure: </span><span><strong>im-fcc-channel</strong> <em>i-chan m-chan                   width height m-width m-height</em><a href="#index-im_002dfcc_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dfncc_002dchannel"><span class="category">Procedure: </span><span><strong>im-fncc-channel</strong> <em>i-chan m-chan                   width height m-width m-height</em><a href="#index-im_002dfncc_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Fast-Cross-Correlation"></span>
<span id="index-Fast-Normalized-Cross-Correlation"></span>

<p>Returns an image or a channel.
</p>
<p>Computes and returns the Fast Cross Correlation or Fast Normalized Cross
Correlation between <var>image</var> and a (usually smaller)
<var>mask</var><a id="DOCF22" href="#FOOT22"><sup>22</sup></a>, using the Fast Fourier Transform<a id="DOCF23" href="#FOOT23"><sup>23</sup></a>.
</p></dd></dl>


<hr>
</div>
<div class="subsection" id="Morphology">
<div class="header">
<p>
Next: <a href="#Segmentation" accesskey="n" rel="next">Segmentation</a>, Previous: <a href="#Transform" accesskey="p" rel="prev">Transform</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Morphology-1"></span><h4 class="subsection">Morphology</h4>

<p>The Guile-CV procedures and methods related to morphology.
</p>
<span id="Procedures-13"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002ddisc_002derode">im-disc-erode</a></code></span></dt>
<dt><span><code><a href="#im_002ddisc_002derode_002dchannel">im-disc-erode-channel</a></code></span></dt>
<dt><span><code><a href="#im_002ddisc_002ddilate">im-disc-dilate</a></code></span></dt>
<dt><span><code><a href="#im_002ddisc_002ddilate_002dchannel">im-disc-dilate-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dopen">im-open</a></code></span></dt>
<dt><span><code><a href="#im_002dopen_002dchannel">im-open-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dclose">im-close</a></code></span></dt>
<dt><span><code><a href="#im_002dclose_002dchannel">im-close-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dfill_002dholes">im-fill-holes</a></code></span></dt>
<dt><span><code><a href="#im_002dfill_002dholes_002dchannel">im-fill-holes-channel</a></code></span></dt>
<dt><span><code><a href="#im_002ddelineate">im-delineate</a></code></span></dt>
<dt><span><code><a href="#im_002ddelineate_002dchannel">im-delineate-channel</a></code></span></dt>
<dt><span><code><a href="#im_002ddistance_002dmap">im-distance-map</a></code></span></dt>
<dt><span><code><a href="#im_002ddistance_002dmap_002dchannel">im-distance-map-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dreconstruct">im-reconstruct</a></code></span></dt>
</dl>
</blockquote>


<span id="im_002ddisc_002derode"></span><span id="im_002ddisc_002derode_002dchannel"></span><dl class="def">
<dt id="index-im_002ddisc_002derode"><span class="category">Procedure: </span><span><strong>im-disc-erode</strong> <em>image radius</em><a href="#index-im_002ddisc_002derode" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002ddisc_002derode_002dchannel"><span class="category">Procedure: </span><span><strong>im-disc-erode-channel</strong> <em>channel width height radius</em><a href="#index-im_002ddisc_002derode_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>Performs the morpholgical erosion of <var>image</var> using a disc of a given
<var>radius</var>. Here is an example:
</p>
<div class="example lisp">
<pre class="lisp">(im-make 5 5 1 1.0)
-|
$2 = (5 5 1 (#f32(1.0 1.0 1.0 1.0 1.0 …)))
(im-set! $2 1 2 0.0)
(im-disc-erode $2 1)
-|
$3 = (5 5 1 (#f32(1.0 0.0 0.0 0.0 1.0 …)))
(im-display $2 #:proc inexact-&gt;exact)
-|
Channel 1
  1  1  1  1  1
  1  1  0  1  1
  1  1  1  1  1
  1  1  1  1  1
  1  1  1  1  1
(im-display $3 #:proc inexact-&gt;exact)
-|
Channel 1
  1  0  0  0  1
  1  0  0  0  1
  1  0  0  0  1
  1  1  1  1  1
  1  1  1  1  1
</pre></div>
</dd></dl>


<span id="im_002ddisc_002ddilate"></span><span id="im_002ddisc_002ddilate_002dchannel"></span><dl class="def">
<dt id="index-im_002ddisc_002ddilate"><span class="category">Procedure: </span><span><strong>im-disc-dilate</strong> <em>image radius</em><a href="#index-im_002ddisc_002ddilate" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002ddisc_002ddilate_002dchannel"><span class="category">Procedure: </span><span><strong>im-disc-dilate-channel</strong> <em>channel width height radius</em><a href="#index-im_002ddisc_002ddilate_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>Performs the morpholgical dilation of <var>image</var> using a disc of a
given <var>radius</var>. Here is an example:
</p>
<div class="example lisp">
<pre class="lisp">...
-|
$13 = (11 11 1 (#f32(0.0 0.0 0.0 0.0 0.0 …)))
(im-disc-dilate $13 1)
-|
$14 = (11 11 1 (#f32(1.0 1.0 1.0 1.0 1.0 …)))
(im-display $13 #:proc inexact-&gt;exact)
-|
Channel 1
  0  0  0  0  0  0  0  0  0  0  0
  0  1  1  1  1  0  0  1  1  1  0
  0  1  1  1  1  0  0  1  1  1  0
  0  1  1  1  1  1  1  1  1  1  0
  0  1  1  1  1  1  1  1  1  1  0
  0  1  1  0  0  0  1  1  1  1  0
  0  1  1  0  0  0  1  1  1  1  0
  0  1  1  0  0  0  1  1  1  1  0
  0  1  1  1  1  1  1  1  0  0  0
  0  1  1  1  1  1  1  1  0  0  0
  0  0  0  0  0  0  0  0  0  0  0
(im-display $14 #:proc inexact-&gt;exact)
-|
Channel 1
  1  1  1  1  1  1  1  1  1  1  1
  1  1  1  1  1  1  1  1  1  1  1
  1  1  1  1  1  1  1  1  1  1  1
  1  1  1  1  1  1  1  1  1  1  1
  1  1  1  1  1  1  1  1  1  1  1
  1  1  1  1  1  1  1  1  1  1  1
  1  1  1  1  0  1  1  1  1  1  1
  1  1  1  1  1  1  1  1  1  1  1
  1  1  1  1  1  1  1  1  1  1  1
  1  1  1  1  1  1  1  1  1  0  0
  1  1  1  1  1  1  1  1  1  0  0
</pre></div>
</dd></dl>


<span id="im_002dopen"></span><span id="im_002dopen_002dchannel"></span><dl class="def">
<dt id="index-im_002dopen"><span class="category">Procedure: </span><span><strong>im-open</strong> <em>image radius</em><a href="#index-im_002dopen" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dopen_002dchannel"><span class="category">Procedure: </span><span><strong>im-open-channel</strong> <em>channel width height radius</em><a href="#index-im_002dopen_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>Performs the dilation of the erosion of <var>image</var> using
<var>radius</var>. Opening removes small objects.
</p></dd></dl>


<span id="im_002dclose"></span><span id="im_002dclose_002dchannel"></span><dl class="def">
<dt id="index-im_002dclose"><span class="category">Procedure: </span><span><strong>im-close</strong> <em>image radius</em><a href="#index-im_002dclose" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dclose_002dchannel"><span class="category">Procedure: </span><span><strong>im-close-channel</strong> <em>channel width height radius</em><a href="#index-im_002dclose_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>Performs the erosion of the dilation of <var>image</var> using
<var>radius</var>. Closing removes small holes.
</p></dd></dl>


<span id="im_002dfill_002dholes"></span><span id="im_002dfill_002dholes_002dchannel"></span><dl class="def">
<dt id="index-im_002dfill_002dholes"><span class="category">Procedure: </span><span><strong>im-fill-holes</strong> <em>image</em><a href="#index-im_002dfill_002dholes" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dfill_002dholes_002dchannel"><span class="category">Procedure: </span><span><strong>im-fill-holes-channel</strong> <em>channel width height</em><a href="#index-im_002dfill_002dholes_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or channel.
</p>
<p>The argument must be a BINARY <var>image</var>. As its name indicate, this
procedure fill the holes of all and every objects in the image.
</p></dd></dl>


<span id="im_002ddelineate"></span><span id="im_002ddelineate_002dchannel"></span><dl class="def">
<dt id="index-im_002ddelineate"><span class="category">Procedure: </span><span><strong>im-delineate</strong> <em>image        [#:threshold 10] [#:radius 2]</em><a href="#index-im_002ddelineate" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002ddelineate_002dchannel"><span class="category">Procedure: </span><span><strong>im-delineate-channel</strong> <em>channel width height        [#:threshold 10] [#:radius 2]</em><a href="#index-im_002ddelineate_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Edge-Enhancement"></span>

<p>Returns a new image or channel.
</p>
<p>Both <var>threshold</var> and <var>radius</var> must be exact integers.
</p>
<p>Also known as ‘<samp>Edge Enhancement</samp>’, this procedure performs the
delineation of <var>image</var>, obtained by applying the following pseudo
code algorithm:
</p>
<div class="example lisp">
<pre class="lisp">;; with
;;   Min = (im-disc-erode image radius)
;;   Max = (im-disc-dilate image radius)
D = Max - Min
If D &lt; threshold
  ;; not an edge
  output pixel = input pixel
  ;; it is an edge
  If (pixel – Min) &lt; (Max – pixel)
    output pixel = Min
    output pixel = Max
</pre></div>

<img src="Guile-CV%20Reference%20Manual_files/sinter.png" alt="sinter">
<img src="Guile-CV%20Reference%20Manual_files/sinter-delin-t10-r2.png" alt="sinter-delin-t10-r2">
<img src="Guile-CV%20Reference%20Manual_files/sinter-delin-t25-r5.png" alt="sinter-delin-t25-r5">

<p>Here above, left being the original image - a small part of an optical
microscope capture of a sinter sample - you can see the difference
between <code>im-delineate</code> called with the default <var>threshold</var> and
<var>radius</var> values, then called using <code>#:threshold 25</code> and
<code>#:radius 5</code>.
</p></dd></dl>


<span id="im_002ddistance_002dmap"></span><span id="im_002ddistance_002dmap_002dchannel"></span><dl class="def">
<dt id="index-im_002ddistance_002dmap"><span class="category">Procedure: </span><span><strong>im-distance-map</strong> <em>image        [#:bg 'black] [#:mode 'euclidean]</em><a href="#index-im_002ddistance_002dmap" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002ddistance_002dmap_002dchannel"><span class="category">Procedure: </span><span><strong>im-distance-map-channel</strong> <em>channel width height        [#:bg 'black] [#:mode 'euclidean]</em><a href="#index-im_002ddistance_002dmap_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Distance-Transform"></span>
<span id="index-Distance-Map"></span>
<span id="index-Euclidean-Distance"></span>

<p>Returns a new image or channel.
</p>
<p>Also know as ‘<samp>Distance Tranform</samp>’, this procedure performs the
distance map of <var>image</var>, which consist of, for each background
pixel, calculating its distance to the nearest object or contour. In the
return new image or channel, all background pixels will be assigned the
their distance value, all other pixels will be assigned to 0. Distances
larger than 255 are labelled as 255.
</p>
<p>The default backgroung pixel value is <code>'black</code>, the optional
<var>#:bg</var> keyword argument also accepts <code>'white</code>.
</p>
<p>The default distance map mode is <a href="https://en.wikipedia.org/wiki/Euclidean_distance">’euclidean</a>. Other valid optional <var>#:mode</var> keyword argument are
<a href="https://en.wikipedia.org/wiki/Chessboard_distance">’chessboard</a> and <a href="https://en.wikipedia.org/wiki/Taxicab_geometry">’manhattan</a>.
</p>
<img src="Guile-CV%20Reference%20Manual_files/t-cells.png" alt="t-cells">
<img src="Guile-CV%20Reference%20Manual_files/t-cells-edm.png" alt="t-cells-edm">
<img src="Guile-CV%20Reference%20Manual_files/t-cells-mdm.png" alt="t-cells-mdm">
<img src="Guile-CV%20Reference%20Manual_files/t-cells-cdm.png" alt="t-cells-cdm">

<p>Here above, left being the original image - a few cells - you can see
the results obtained by calling <code>im-distance-map</code> using respectively
the <code>'euclidean</code>, <code>'manhattan</code> and <code>'chessboard</code> modes.
</p></dd></dl>


<span id="im_002dreconstruct"></span><dl class="def">
<dt id="index-im_002dreconstruct"><span class="category">Procedure: </span><span><strong>im-reconstruct</strong> <em>image seeds [#:con 8]</em><a href="#index-im_002dreconstruct" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Mathematical-Morphology"></span>
<span id="index-Morphological-Reconstruction"></span>
<span id="index-Geodesic-Operators"></span>

<p>Returns a new image.
</p>
<p>This procedure implements a ‘<samp>binary morphological reconstruction</samp>’
algorithm, which extracts the connected components of <var>image</var> that
are ‘<samp>marked</samp>’ by (any of) the connected components contained in
<var>seeds</var>.
</p>
<p>Morphological reconstruction is part of a set of image operators often
referred to as ‘<samp>geodesic</samp>’ (geodesic distance, geodesic dilation
…). Morphological (or geodesic) operations upon digital images
come from and use the <a href="https://en.wikipedia.org/wiki/Mathematical_morphology">Mathematical morphology
(MM)</a> theory and technique developed for the analysis and processing of
geometrical structures.
</p>
<p>First described here<a id="DOCF24" href="#FOOT24"><sup>24</sup></a>, this implementation is based on a
revision of the same article published in ‘<samp>the IEEE Transactions on
Image Processing, Vol.  2, No.  2, pp.  176-201, April 1993</samp>’, available
<a href="http://www.vincent-net.com/luc/papers/93ieeeip_recons.pdf">here</a>.
</p></dd></dl>


<hr>
</div>
<div class="subsection" id="Segmentation">
<div class="header">
<p>
Next: <a href="#Compose" accesskey="n" rel="next">Compose</a>, Previous: <a href="#Morphology" accesskey="p" rel="prev">Morphology</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Segmentation-1"></span><h4 class="subsection">Segmentation</h4>

<p>The Guile-CV procedures and methods related to segmentation.
</p>
<span id="Procedures-14"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002dlabel">im-label</a></code></span></dt>
<dt><span><code><a href="#im_002dlabel_002dchannel">im-label-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dlabel_002dall">im-label-all</a></code></span></dt>
<dt><span><code><a href="#im_002dlabel_002dall_002dchannel">im-label-all-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dcanny">im-canny</a></code></span></dt>
<dt><span><code><a href="#im_002dcanny_002dchannel">im-canny-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dcrack_002dedge">im-crack-edge</a></code></span></dt>
<dt><span><code><a href="#im_002dcrack_002dedge_002dchannel">im-crack-edge-channel</a></code></span></dt>
</dl>
</blockquote>


<span id="im_002dlabel"></span><span id="im_002dlabel_002dchannel"></span><span id="im_002dlabel_002dall"></span><span id="im_002dlabel_002dall_002dchannel"></span><dl class="def">
<dt id="index-im_002dlabel"><span class="category">Procedure: </span><span><strong>im-label</strong> <em>image [#:con 8] [#:bg 'black]</em><a href="#index-im_002dlabel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dlabel_002dchannel"><span class="category">Procedure: </span><span><strong>im-label-channel</strong> <em>channel width height                  [#:con 8] [#:bg 'black]</em><a href="#index-im_002dlabel_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dlabel_002dall"><span class="category">Procedure: </span><span><strong>im-label-all</strong> <em>image [#:con 8]</em><a href="#index-im_002dlabel_002dall" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dlabel_002dall_002dchannel"><span class="category">Procedure: </span><span><strong>im-label-all-channel</strong> <em>channel width height [#:con 8]</em><a href="#index-im_002dlabel_002dall_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns two values: a new GRAY image or channel, and the total number of
labels<a id="DOCF25" href="#FOOT25"><sup>25</sup></a>.
</p>
<p>The <code>im-label</code> and <code>im-label-channel</code> procedures label
foreground objects in the binary <var>image</var>.  In the new image or
channel, 0.0 indicates a background pixel, 1.0 indicates that the pixel
belongs to object number 1, 2.0 that the pixel belongs to object number
2, etc.
</p>
<p>The <code>im-label-all</code> and <code>im-label-all-channel</code> procedures label
all objects in the binary <var>image</var>, with no specific distinction for
any <em>background value</em>. As a result, these two procedures will
label not only the continuous background, if any, but also any
hole(s). As an example, they are used by <a href="#im_002dfill_002dholes">im-fill-holes</a>, defined in
the module <code>(cv morphology)</code>, which you may have a look at for a
better understanding of how it works.
</p>
<p>Two pixels belong to the same object if they are neighbors.  By default
the algorithm uses 8-connectivity to define a neighborhood, but this can
be changed through the keyword argument <var>#:con</var>, which can be either
4 or 8.
</p>
<img src="Guile-CV%20Reference%20Manual_files/pp-17-bf.png" alt="pp-17-bf">
<img src="Guile-CV%20Reference%20Manual_files/pp-17-label.png" alt="pp-17-bf-label">
<img src="Guile-CV%20Reference%20Manual_files/pp-17-label-all.png" alt="pp-17-bf-label-all">

<p>Here above, left being the original image, you can see the difference
between <code>im-label</code> (2 labels) and <code>im-label-all</code> (6 labels).
Note that we had to run <code>im-threshold</code> on the original image first
(all labeling procedures take a binary image (or channel) as their
mandatory argument), for the record, we used <code>128</code> as the threshold
value.
</p></dd></dl>





<span id="im_002dcanny"></span><span id="im_002dcanny_002dchannel"></span><dl class="def">
<dt id="index-im_002dcanny"><span class="category">Procedure: </span><span><strong>im-canny</strong> <em>image        [#:sigma 1.0] [#:threshold 0.0] [#:marker 255.0]</em><a href="#index-im_002dcanny" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dcanny_002dchannel"><span class="category">Procedure: </span><span><strong>im-canny-channel</strong> <em>channel width height        [#:sigma 1.0] [#:threshold 0.0] [#:marker 255.0]</em><a href="#index-im_002dcanny_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Edge-Detection"></span>

<p>Returns a new image or channel.
</p>
<p>Detect and mark edges using a <a href="https://en.wikipedia.org/wiki/Canny_edge_detector">Canny Edge
Detector</a> algorithm: (a) compute the <var>image</var> Gaussian gradient using
<var>sigma</var>, (b) remove edges whose strength is below <var>threshold</var>,
then for all remaining edges, (d) remove the non-local maxima
(<a href="https://en.wikipedia.org/wiki/Edge_detection#Edge_thinning">edge thinning</a>) and (e) set their
intensity using <var>marker</var>.
</p>
<img src="Guile-CV%20Reference%20Manual_files/edx.png" alt="edx">
<img src="Guile-CV%20Reference%20Manual_files/edx-canny-s1.0-t0.0-m255.0.png" alt="edx-canny-s1.0-t0.0-m255.0">
<img src="Guile-CV%20Reference%20Manual_files/edx-canny-s1.0-t8.0-m255.0.png" alt="edx-canny-s1.0-t8.0-m255.0">
<img src="Guile-CV%20Reference%20Manual_files/edx-canny-s1.5-t8.0-m255.0.png" alt="edx-canny-s1.5-t8.0-m255.0">
<img src="Guile-CV%20Reference%20Manual_files/edx-canny-s1.0-t8.0-m96.0.png" alt="edx-canny-s1.0-t8.0-m96.0">


<p>Here above, left being the original <code>tif</code> image<a id="DOCF26" href="#FOOT26"><sup>26</sup></a>, you can see the
difference between <code>im-canny</code> called using the default values, then
using <var>#:threshold 8</var>, and finally both <var>#:sigma 1.5</var> and
<var>#:threshold 8</var>. The last example is an illustration of the use of
<code>#:marker 96.0</code><a id="DOCF27" href="#FOOT27"><sup>27</sup></a>.
</p></dd></dl>


<span id="im_002dcrack_002dedge"></span><span id="im_002dcrack_002dedge_002dchannel"></span><dl class="def">
<dt id="index-im_002dcrack_002dedge"><span class="category">Procedure: </span><span><strong>im-crack-edge</strong> <em>image [#:marker 255.0]</em><a href="#index-im_002dcrack_002dedge" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dcrack_002dedge_002dchannel"><span class="category">Procedure: </span><span><strong>im-crack-edge-channel</strong> <em>channel width height [#:marker 255.0]</em><a href="#index-im_002dcrack_002dedge_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-Crack-Edge-Image"></span>

<p>Returns a new image or channel.
</p>
<p>Crack edges are marked ‘<samp>between</samp>’ the (different) pixels of
<var>image</var>.  In order to accommodate the cracks, the resulting image or
channel size must be (- (* width 2) 1) and (- (* height 2) 1)
respectively.
</p>
<p>Crack pixels are first inserted, then all crack pixels whose non-crack
neighbors have different values are crack edges and marked using
<var>marker</var>, while all other pixels (crack and non-crack) become region
pixels.  Here is a simple example, with two regions, <tt>a</tt> and
<tt>b</tt>, and using <tt>*</tt> as the crack edge marker:
</p>

<blockquote class="indentedblock">
<table>
<thead><tr><th width="30%">Original</th><th width="30%">Inserted Cracks</th><th width="30%">Final Result</th></tr></thead>
<tbody><tr><td width="30%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>a b b</tt> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>a a b</tt> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>a a a</tt></td><td width="30%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>a . b . b</tt>  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>. . . . .</tt>  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>a . a . b</tt>  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>. . . . .</tt>  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>a . a . a</tt></td><td width="30%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>a * b b b</tt>  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>a * * * b</tt>  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>a a a * b</tt>  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>a a a * *</tt>  <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tt>a a a a a</tt></td></tr>
</tbody></table>
</blockquote>


<img src="Guile-CV%20Reference%20Manual_files/pp-17-label-all-marked.png" alt="pp-17-label-all-marked">

<p>Here above is the result of <code>(im-crack-edge img #:marker 127)</code>,
with <code>img</code> being the 6 labels image displayed earlier.
</p>
<p>Crack Edge Images have the following properties:
</p>
<ul>
<li> Crack Edge Images have odd width and height.
</li><li> Crack pixels have at least one odd coordinate.
</li><li> Only crack pixels may be marked as crack edge pixels.
</li><li> Crack pixels with two odd coordinates must be marked as edge pixels
whenever any of their neighboring crack pixels was marked.
</li></ul>

<p>As a consequence of the last two properties, both edges and regions are
4-connected. Thus, 4-connectivity and 8-connectivity yield identical
connected components in Crack Edge Images (the so called
well-composedness).  This ensures that Crack Edge Images have nice
topological properties<a id="DOCF28" href="#FOOT28"><sup>28</sup></a>.
</p>
</dd></dl>


<hr>
</div>
<div class="subsection" id="Compose">
<div class="header">
<p>
Next: <a href="#Utilities" accesskey="n" rel="next">Utilities</a>, Previous: <a href="#Segmentation" accesskey="p" rel="prev">Segmentation</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Compose-1"></span><h4 class="subsection">Compose</h4>

<p>Other Guile-CV procedures and methods to compose images.
</p>

<span id="Procedures-15"></span><h4 class="subheading">Procedures</h4>


<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002dcompose">im-compose</a></code></span></dt>
<dt><span><code><a href="#im_002dcompose_002dchannels">im-compose-channels</a></code></span></dt>
</dl>
</blockquote>


<span id="im_002dcompose"></span><span id="im_002dcompose_002dchannels"></span><dl class="def">
<dt id="index-im_002dcompose"><span class="category">Procedure: </span><span><strong>im-compose</strong> <em>position alignment        [#:color '(0 0 0)] img-1 img-2 …</em><a href="#index-im_002dcompose" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dcompose_002dchannels"><span class="category">Procedure: </span><span><strong>im-compose-channels</strong> <em>position alignment channels widths heights                   [#:value '0.0]</em><a href="#index-im_002dcompose_002dchannels" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns a new image or a new channel.
</p>
<p>The valid <var>position</var> and <var>alignment</var> symbols are:
</p><blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>left right</code></span></dt>
<dd><p><code>top center bottom</code>
</p></dd>
<dt><span><code>above below</code></span></dt>
<dd><p><code>left center right</code>
</p></dd>
</dl>
</blockquote>

<p>When used, the optional <var>#:color</var> keyword argument must come after
the mandatory <var>alignment</var> argument and precede <var>img-1</var>,
otherwise Guile will raise an exception. For RGB images, it is the
color used to padd images passed in argument that are inferior, in
width or height (depending on the position), to the biggest of them. For
GRAY images, the <var>#:color</var> is reduced to its corresponding gray
<code>value</code>:
</p>
<div class="example lisp">
<pre class="lisp"><code>(/ (reduce + 0 color) 3)</code>
</pre></div>

<p>For the <code>im-compose-channels</code> procedure, the list of
<var>channels</var>, <var>widths</var> and <var>heights</var> must be of equal length
and equally ordered, so the <code>nth</code> element of <var>widths</var> and
<var>heights</var> are the <code>width</code> and <code>height</code> of the <code>nth</code>
element of <var>channels</var>. The optional <code>#:value</code> keyword argument
is used to padd <var>channels</var> that are inferior, in width or height
(depending on the position), to the biggest of them.
</p></dd></dl>


<hr>
</div>
<div class="subsection" id="Utilities">
<div class="header">
<p>
Previous: <a href="#Compose" accesskey="p" rel="prev">Compose</a>, Up: <a href="#Image-Processing" accesskey="u" rel="up">Image Processing</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Utilities-1"></span><h4 class="subsection">Utilities</h4>

<p>Other Guile-CV utility procedures, methods and variables.
</p>

<span id="Procedures-16"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#im_002ddisplay">im-display</a></code></span></dt>
<dt><span><code><a href="#im_002ddisplay_002dchannel">im-display-channel</a></code></span></dt>
<dt><span><code><a href="#im_002dshow">im-show</a></code></span></dt>
</dl>
</blockquote>


<span id="Variables-1"></span><h4 class="subheading">Variables</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#g_t_0025image_002dcache">%image-cache</a></code></span></dt>
<dt><span><code><a href="#g_t_0025image_002dcache_002dformat">%image-cache-format</a></code></span></dt>
</dl>
</blockquote>


<span id="Procedures-17"></span><h4 class="subheading">Procedures</h4>

<span id="im_002ddisplay"></span><span id="im_002ddisplay_002dchannel"></span><dl class="def">
<dt id="index-im_002ddisplay"><span class="category">Procedure: </span><span><strong>im-display</strong> <em>image        [#:proc #f] [#:port (current-output-port)]</em><a href="#index-im_002ddisplay" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002ddisplay_002dchannel"><span class="category">Procedure: </span><span><strong>im-display-channel</strong> <em>channel width height         [#:proc #f] [#:port (current-output-port)]</em><a href="#index-im_002ddisplay_002dchannel" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns nothing.
</p>
<p>Displays the content of <var>image</var> or <var>channel</var> on <var>port</var>.
</p>
<p>The optional <var>#:proc</var> keyword argument must either be <code>#f</code>, the
default, or a procedure that accepts a single (32 bits float)
argument. When <var>#:proc</var> is <code>#f</code>, <code>im-display</code> will use an
internally defined procedure which formats its argument ‘<samp>à la
octave</samp>’: nine positions, six decimals, all number aligned on the
dot. any value <code>&gt;= 1000</code> is converted to use the exponential float
notation.  Here is an ‘<samp>hand made</samp>’ example:
</p>
<div class="example lisp">
<pre class="lisp">...
$2 = (4 3 3 (#f32(0.0 1.0 2.0 3.0 4.0 5.0) ... ...)
scheme@(guile-user)&gt; (im-divide $2 99)
$3 = (4 3 3 (#f32(10.1010103225708 0.010101010091602802 …) …))
scheme@(guile-user)&gt; (im-set! $3 0 0 0 10000)
$4 = (4 3 3 (#f32(10000.0 0.010101010091602802 # # # # …) …))
scheme@(guile-user)&gt; (im-display $4)
-|

Channel 1

     1.0E+4    0.01010    0.02020    0.03030
    0.04040    0.05051    0.06061    0.07071
    0.08081    0.09091    0.10101    0.11111

Channel 2

    0.12121    0.13131    0.14141    0.15152
    0.16162    0.17172    0.18182    0.19192
    0.20202    0.21212    0.22222    0.23232

Channel 3

    0.24242    0.25253    0.26263    0.27273
    0.28283    0.29293    0.30303    0.31313
    0.32323    0.33333    0.34343    0.35354
</pre></div>

<p><strong>Caution:</strong> unless you specify <var>port</var>, both this and
<a href="#im_002ddisplay_002dchannel">im-display-channel</a> procedures are meant to be used on very small
and testing images, otherwise even on a small image, it might be ok in a
terminal, but it will definitely will kill your emacs.
</p></dd></dl>

<span id="im_002dshow"></span><dl class="def">
<dt id="index-im_002dshow"><span class="category">Method: </span><span><strong>im-show</strong> <em>filename</em><a href="#index-im_002dshow" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dshow-1"><span class="category">Method: </span><span><strong>im-show</strong> <em>image [scale #f]</em><a href="#index-im_002dshow-1" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-im_002dshow-2"><span class="category">Method: </span><span><strong>im-show</strong> <em>image name [scale #f]</em><a href="#index-im_002dshow-2" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns the string "#&lt;Image: …&gt;", where "…" is
either <var>filename</var> or a filename constructed by im-show, see below.
</p>
<p>The optional <var>scale</var> argument can take the following values:
</p>
<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code>#f</code></span></dt>
<dd><p>pixel values are ‘<samp>clipped</samp>’: values <code>&lt; 0</code> are saved as
<code>0</code>, values <code>&gt; 255</code> are saved as <code>255</code>, and otherwise are
saved unchanged
</p>
</dd>
<dt><span><code>#t</code></span></dt>
<dd><p>all pixel values are scaled<a id="DOCF29" href="#FOOT29"><sup>29</sup></a> to the <code>[0 255]</code> range
</p></dd>
</dl>
</blockquote>

<p>These three methods will also effectively dislay the image if you are
using <a href="http://www.nongnu.org/geiser">Geiser</a>, which analyzes Guile’s procedures
and methods returned values (through the use of its pattern matcher),
and when appropriate, triggers its image display mechanism.
</p>
<p>Geiser has two variables that allow you to choose either to inline
images in its <a href="https://www.gnu.org/software/emacs">Emacs</a> (Guile repl) buffer, or to
display them using externel viewer: <code>geiser-image-viewer</code> and
<code>geiser-repl-inline-images-p</code>.  You may choose to add these
variables in your <samp>.emacs</samp> file, for example:
</p>
<div class="example">
<pre class="example">(setq geiser-image-viewer "eog")
(setq geiser-repl-inline-images-p nil)
</pre></div>

<p>Note that <code>(setq geiser-repl-inline-images-p t)</code> will only work if
you are using a graphics-aware Emacs, and otherwise, will fall on the
external viewer approach, if the variable <code>geiser-image-viewer</code> has
been defined. When using Geiser in a non graphics-aware Emac, or when
using the external viewer approach, images will appear as buttons: press
return on them to invoke (or raise) the external viewer (window
containing that image).
</p>
<p>Except for the first <code>im-show</code> method, Guile-CV has to save the
<var>image</var> first, and does it in the location defined by the
<a href="#g_t_0025image_002dcache">%image-cache</a> variable. If you call <code>im-show</code> passing
<var>name</var>, the <var>image</var> is saved as
<samp>%image-cache/<var>name</var>.png</samp>, otherwise under a generated name,
the result of <code>(symbol-&gt;string (gensym "im-show-"))</code>.
</p>
<p>Note that if you do not specify <var>name</var>, a new external viewer window
is opened at each <code>im-show</code> invocation, even for identical
<var>image</var> calls: this because in Guile-CV, on purpose, images are just
list, with no (unique) identifier, and there is no way for
<code>im-show</code> to know ... Further to this point, when you pass
<var>name</var> as an argument, you are not ‘<samp>identifying</samp>’ <var>image</var>,
which may actually differ, but rather just ask to reuse the filename and
hence the external viewer window associated with it.
</p>
<p>Last note: many external viewers, such as Eog (the Gnome Eye Viewer),
will try to apply, per default, some sort of smoothing techniques,
especially on <code>zoom-in</code> and <code>zoom-out</code>: where this is fine for
viewing ‘<samp>lazer</samp>’ pictures, you probably want to check and disable
these options when working with Guile-CV.
</p></dd></dl>


<span id="Variables-2"></span><h4 class="subheading">Variables</h4>

<span id="g_t_0025image_002dcache"></span><dl class="def">
<dt id="index-_0025image_002dcache"><span class="category">Variable: </span><span><strong>%image-cache</strong><a href="#index-_0025image_002dcache" class="copiable-anchor"> ¶</a></span></dt>
<dd><span id="index-User-Configuration"></span>

<p>Specifies the location used by <a href="#im_002dshow">im-show</a> to save images. 
</p>
<p>The default value is <samp>/tmp/&lt;username&gt;/guile-cv</samp>, but you may
<code>set!</code> it.  If you’d like to reuse that location for future
guile-cv sessions, you may save it in guile-cv’s ‘<samp>per user</samp>’ config
file <samp>&lt;userdir&gt;/.config/guile-cv</samp> as an assoc pair, here is an
example:
</p>
<div class="example">
<pre class="example">cat ~/.config/guile-cv.conf
((image-cache . "~/tmp"))
</pre></div>

<p>Note that if used, the ‘<samp>~</samp>’ is expanded at load time, so in geiser,
it becomes:
</p>
<div class="example">
<pre class="example">scheme@(guile-user)&gt; ,use (cv)
scheme@(guile-user)&gt; %image-cache
-|
$2 = "/home/david/tmp"
</pre></div>
</dd></dl>


<span id="g_t_0025image_002dcache_002dformat"></span><dl class="def">
<dt id="index-_0025image_002dcache_002dformat"><span class="category">Variable: </span><span><strong>%image-cache-format</strong><a href="#index-_0025image_002dcache_002dformat" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Specifies the format used by <a href="#im_002dshow">im-show</a> to save images. 
</p>
<p>The default value is <code>"png"</code>, but you may <code>set!</code> it.  If you’d
like to reuse that format for future guile-cv sessions, you may save
it in guile-cv’s ‘<samp>per user</samp>’ config file
<samp>&lt;userdir&gt;/.config/guile-cv</samp>, as an assoc pair, here is an
example:
</p>
<div class="example">
<pre class="example">cat ~/.config/guile-cv.conf
((image-cache-format . "jpg"))
</pre></div>
</dd></dl>


<hr>
</div>
</div>
<div class="section" id="Support">
<div class="header">
<p>
Previous: <a href="#Image-Processing" accesskey="p" rel="prev">Image Processing</a>, Up: <a href="#Guile_002dCV-Core-Reference" accesskey="u" rel="up">III. Guile-CV Core Reference</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Support-1"></span><h3 class="section">Support</h3>



<p>Guile-CV uses a series of support modules, each documented in the
following subsections. You may either import them all, like this
<code>(use-modules (cv support))</code>, or individually, such as
<code>(use-modules (cv support modules))</code>, <code>(use-modules (cv
support goops))</code>, ...
</p>





<ul class="section-toc">
<li><a href="#Modules" accesskey="1">Modules</a></li>
<li><a href="#Goops" accesskey="2">Goops</a></li>
<li><a href="#Pi" accesskey="3">Pi</a></li>
<li><a href="#Utils" accesskey="4">Utils</a></li>
</ul>
<hr>
<div class="subsection" id="Modules">
<div class="header">
<p>
Next: <a href="#Goops" accesskey="n" rel="next">Goops</a>, Up: <a href="#Support" accesskey="u" rel="up">Support</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Modules-1"></span><h4 class="subsection">Modules</h4>


<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#re_002dexport_002dpublic_002dinterface">re-export-public-interface</a></code></span></dt>
</dl>
</blockquote>


<span id="re_002dexport_002dpublic_002dinterface"></span><dl class="def">
<dt id="index-re_002dexport_002dpublic_002dinterface"><span class="category">Syntax: </span><span><strong>re-export-public-interface</strong> <em>mod1 mod2 ...</em><a href="#index-re_002dexport_002dpublic_002dinterface" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Re-export the public interface of a <var>mod1</var> <var>mod2</var> …
</p>
<p>Invoked like <code>use-modules</code>, where each <var>mod1</var> <var>mod2</var>
… is a module name (a list of symbol(s)).
</p></dd></dl>


<hr>
</div>
<div class="subsection" id="Goops">
<div class="header">
<p>
Next: <a href="#Pi" accesskey="n" rel="next">Pi</a>, Previous: <a href="#Modules" accesskey="p" rel="prev">Modules</a>, Up: <a href="#Support" accesskey="u" rel="up">Support</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Goops-1"></span><h4 class="subsection">Goops</h4>




<hr>
</div>
<div class="subsection" id="Pi">
<div class="header">
<p>
Next: <a href="#Utils" accesskey="n" rel="next">Utils</a>, Previous: <a href="#Goops" accesskey="p" rel="prev">Goops</a>, Up: <a href="#Support" accesskey="u" rel="up">Support</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Pi-1"></span><h4 class="subsection">Pi</h4>

<span id="PI-procedures"></span><span id="Procedures-18"></span><h4 class="subheading">Procedures</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#radian_002d_003edegree">radian-&gt;degree</a></code></span></dt>
<dt><span><code><a href="#degree_002d_003eradian">degree-&gt;radian</a></code></span></dt>
</dl>
</blockquote>


<span id="radian_002d_003edegree"></span><span id="degree_002d_003eradian"></span><dl class="def">
<dt id="index-radian_002d_003edegree"><span class="category">Procedure: </span><span><strong>radian-&gt;degree</strong> <em>rad</em><a href="#index-radian_002d_003edegree" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-degree_002d_003eradian"><span class="category">Procedure: </span><span><strong>degree-&gt;radian</strong> <em>deg</em><a href="#index-degree_002d_003eradian" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Returns respectively a degree or a radian value.
</p></dd></dl>


<span id="PI-variables"></span><span id="Variables-3"></span><h4 class="subheading">Variables</h4>

<blockquote class="indentedblock">
<dl compact="compact">
<dt><span><code><a href="#g_t_0025pi">%pi</a></code></span></dt>
<dt><span><code><a href="#g_t_00252pi">%2pi</a></code></span></dt>
<dt><span><code><a href="#g_t_0025pi_002f2">%pi/2</a></code></span></dt>
</dl>
</blockquote>


<span id="g_t_0025pi"></span><span id="g_t_00252pi"></span><span id="g_t_0025pi_002f2"></span><dl class="def">
<dt id="index-_0025pi"><span class="category">Variable: </span><span><strong>%pi</strong><a href="#index-_0025pi" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-_00252pi"><span class="category">Variable: </span><span><strong>%2pi</strong><a href="#index-_00252pi" class="copiable-anchor"> ¶</a></span></dt>
<dt id="index-_0025pi_002f2"><span class="category">Variable: </span><span><strong>%pi/2</strong><a href="#index-_0025pi_002f2" class="copiable-anchor"> ¶</a></span></dt>
<dd>
<p>Respectively bound to <code>(acos -1)</code>, <code>(* 2 %pi)</code> and
<code>(/ %pi 2)</code>.
</p></dd></dl>


<hr>
</div>
<div class="subsection" id="Utils">
<div class="header">
<p>
Previous: <a href="#Pi" accesskey="p" rel="prev">Pi</a>, Up: <a href="#Support" accesskey="u" rel="up">Support</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Utils-1"></span><h4 class="subsection">Utils</h4>


<hr>
</div>
</div>
</div>
<div class="appendix" id="GNU-Free-Documentation-License">
<div class="header">
<p>
Next: <a href="#Concept-Index" accesskey="n" rel="next">Concept Index</a>, Previous: <a href="#Guile_002dCV-Core-Reference" accesskey="p" rel="prev">III. Guile-CV Core Reference</a>, Up: <a href="#Top" accesskey="u" rel="up">Guile-CV Reference Manual</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="GNU-Free-Documentation-License-1"></span><h2 class="appendix">Appendix A GNU Free Documentation License</h2>



<div class="display">
<pre class="display">Copyright © 2000, 2001, 2002, 2007, 2008 Free Software Foundation, Inc.
<a href="http://fsf.org/">http://fsf.org/</a>

Everyone is permitted to copy and distribute verbatim copies
of this license document, but changing it is not allowed.
</pre></div>

<ol start="0">
<li> PREAMBLE

<p>The purpose of this License is to make a manual, textbook, or other
functional and useful document <em>free</em> in the sense of freedom: to
assure everyone the effective freedom to copy and redistribute it,
with or without modifying it, either commercially or noncommercially.
Secondarily, this License preserves for the author and publisher a way
to get credit for their work, while not being considered responsible
for modifications made by others.
</p>
<p>This License is a kind of “copyleft”, which means that derivative
works of the document must themselves be free in the same sense.  It
complements the GNU General Public License, which is a copyleft
license designed for free software.
</p>
<p>We have designed this License in order to use it for manuals for free
software, because free software needs free documentation: a free
program should come with manuals providing the same freedoms that the
software does.  But this License is not limited to software manuals;
it can be used for any textual work, regardless of subject matter or
whether it is published as a printed book.  We recommend this License
principally for works whose purpose is instruction or reference.
</p>
</li><li> APPLICABILITY AND DEFINITIONS

<p>This License applies to any manual or other work, in any medium, that
contains a notice placed by the copyright holder saying it can be
distributed under the terms of this License.  Such a notice grants a
world-wide, royalty-free license, unlimited in duration, to use that
work under the conditions stated herein.  The “Document”, below,
refers to any such manual or work.  Any member of the public is a
licensee, and is addressed as “you”.  You accept the license if you
copy, modify or distribute the work in a way requiring permission
under copyright law.
</p>
<p>A “Modified Version” of the Document means any work containing the
Document or a portion of it, either copied verbatim, or with
modifications and/or translated into another language.
</p>
<p>A “Secondary Section” is a named appendix or a front-matter section
of the Document that deals exclusively with the relationship of the
publishers or authors of the Document to the Document’s overall
subject (or to related matters) and contains nothing that could fall
directly within that overall subject.  (Thus, if the Document is in
part a textbook of mathematics, a Secondary Section may not explain
any mathematics.)  The relationship could be a matter of historical
connection with the subject or with related matters, or of legal,
commercial, philosophical, ethical or political position regarding
them.
</p>
<p>The “Invariant Sections” are certain Secondary Sections whose titles
are designated, as being those of Invariant Sections, in the notice
that says that the Document is released under this License.  If a
section does not fit the above definition of Secondary then it is not
allowed to be designated as Invariant.  The Document may contain zero
Invariant Sections.  If the Document does not identify any Invariant
Sections then there are none.
</p>
<p>The “Cover Texts” are certain short passages of text that are listed,
as Front-Cover Texts or Back-Cover Texts, in the notice that says that
the Document is released under this License.  A Front-Cover Text may
be at most 5 words, and a Back-Cover Text may be at most 25 words.
</p>
<p>A “Transparent” copy of the Document means a machine-readable copy,
represented in a format whose specification is available to the
general public, that is suitable for revising the document
straightforwardly with generic text editors or (for images composed of
pixels) generic paint programs or (for drawings) some widely available
drawing editor, and that is suitable for input to text formatters or
for automatic translation to a variety of formats suitable for input
to text formatters.  A copy made in an otherwise Transparent file
format whose markup, or absence of markup, has been arranged to thwart
or discourage subsequent modification by readers is not Transparent.
An image format is not Transparent if used for any substantial amount
of text.  A copy that is not “Transparent” is called “Opaque”.
</p>
<p>Examples of suitable formats for Transparent copies include plain
<small>ASCII</small> without markup, Texinfo input format, LaTeX input
format, <acronym>SGML</acronym> or <acronym>XML</acronym> using a publicly available
<acronym>DTD</acronym>, and standard-conforming simple <acronym>HTML</acronym>,
PostScript or <acronym>PDF</acronym> designed for human modification.  Examples
of transparent image formats include <acronym>PNG</acronym>, <acronym>XCF</acronym> and
<acronym>JPG</acronym>.  Opaque formats include proprietary formats that can be
read and edited only by proprietary word processors, <acronym>SGML</acronym> or
<acronym>XML</acronym> for which the <acronym>DTD</acronym> and/or processing tools are
not generally available, and the machine-generated <acronym>HTML</acronym>,
PostScript or <acronym>PDF</acronym> produced by some word processors for
output purposes only.
</p>
<p>The “Title Page” means, for a printed book, the title page itself,
plus such following pages as are needed to hold, legibly, the material
this License requires to appear in the title page.  For works in
formats which do not have any title page as such, “Title Page” means
the text near the most prominent appearance of the work’s title,
preceding the beginning of the body of the text.
</p>
<p>The “publisher” means any person or entity that distributes copies
of the Document to the public.
</p>
<p>A section “Entitled XYZ” means a named subunit of the Document whose
title either is precisely XYZ or contains XYZ in parentheses following
text that translates XYZ in another language.  (Here XYZ stands for a
specific section name mentioned below, such as “Acknowledgements”,
“Dedications”, “Endorsements”, or “History”.)  To “Preserve the Title”
of such a section when you modify the Document means that it remains a
section “Entitled XYZ” according to this definition.
</p>
<p>The Document may include Warranty Disclaimers next to the notice which
states that this License applies to the Document.  These Warranty
Disclaimers are considered to be included by reference in this
License, but only as regards disclaiming warranties: any other
implication that these Warranty Disclaimers may have is void and has
no effect on the meaning of this License.
</p>
</li><li> VERBATIM COPYING

<p>You may copy and distribute the Document in any medium, either
commercially or noncommercially, provided that this License, the
copyright notices, and the license notice saying this License applies
to the Document are reproduced in all copies, and that you add no other
conditions whatsoever to those of this License.  You may not use
technical measures to obstruct or control the reading or further
copying of the copies you make or distribute.  However, you may accept
compensation in exchange for copies.  If you distribute a large enough
number of copies you must also follow the conditions in section 3.
</p>
<p>You may also lend copies, under the same conditions stated above, and
you may publicly display copies.
</p>
</li><li> COPYING IN QUANTITY

<p>If you publish printed copies (or copies in media that commonly have
printed covers) of the Document, numbering more than 100, and the
Document’s license notice requires Cover Texts, you must enclose the
copies in covers that carry, clearly and legibly, all these Cover
Texts: Front-Cover Texts on the front cover, and Back-Cover Texts on
the back cover.  Both covers must also clearly and legibly identify
you as the publisher of these copies.  The front cover must present
the full title with all words of the title equally prominent and
visible.  You may add other material on the covers in addition.
Copying with changes limited to the covers, as long as they preserve
the title of the Document and satisfy these conditions, can be treated
as verbatim copying in other respects.
</p>
<p>If the required texts for either cover are too voluminous to fit
legibly, you should put the first ones listed (as many as fit
reasonably) on the actual cover, and continue the rest onto adjacent
pages.
</p>
<p>If you publish or distribute Opaque copies of the Document numbering
more than 100, you must either include a machine-readable Transparent
copy along with each Opaque copy, or state in or with each Opaque copy
a computer-network location from which the general network-using
public has access to download using public-standard network protocols
a complete Transparent copy of the Document, free of added material.
If you use the latter option, you must take reasonably prudent steps,
when you begin distribution of Opaque copies in quantity, to ensure
that this Transparent copy will remain thus accessible at the stated
location until at least one year after the last time you distribute an
Opaque copy (directly or through your agents or retailers) of that
edition to the public.
</p>
<p>It is requested, but not required, that you contact the authors of the
Document well before redistributing any large number of copies, to give
them a chance to provide you with an updated version of the Document.
</p>
</li><li> MODIFICATIONS

<p>You may copy and distribute a Modified Version of the Document under
the conditions of sections 2 and 3 above, provided that you release
the Modified Version under precisely this License, with the Modified
Version filling the role of the Document, thus licensing distribution
and modification of the Modified Version to whoever possesses a copy
of it.  In addition, you must do these things in the Modified Version:
</p>
<ol type="A" start="1">
<li> Use in the Title Page (and on the covers, if any) a title distinct
from that of the Document, and from those of previous versions
(which should, if there were any, be listed in the History section
of the Document).  You may use the same title as a previous version
if the original publisher of that version gives permission.

</li><li> List on the Title Page, as authors, one or more persons or entities
responsible for authorship of the modifications in the Modified
Version, together with at least five of the principal authors of the
Document (all of its principal authors, if it has fewer than five),
unless they release you from this requirement.

</li><li> State on the Title page the name of the publisher of the
Modified Version, as the publisher.

</li><li> Preserve all the copyright notices of the Document.

</li><li> Add an appropriate copyright notice for your modifications
adjacent to the other copyright notices.

</li><li> Include, immediately after the copyright notices, a license notice
giving the public permission to use the Modified Version under the
terms of this License, in the form shown in the Addendum below.

</li><li> Preserve in that license notice the full lists of Invariant Sections
and required Cover Texts given in the Document’s license notice.

</li><li> Include an unaltered copy of this License.

</li><li> Preserve the section Entitled “History”, Preserve its Title, and add
to it an item stating at least the title, year, new authors, and
publisher of the Modified Version as given on the Title Page.  If
there is no section Entitled “History” in the Document, create one
stating the title, year, authors, and publisher of the Document as
given on its Title Page, then add an item describing the Modified
Version as stated in the previous sentence.

</li><li> Preserve the network location, if any, given in the Document for
public access to a Transparent copy of the Document, and likewise
the network locations given in the Document for previous versions
it was based on.  These may be placed in the “History” section.
You may omit a network location for a work that was published at
least four years before the Document itself, or if the original
publisher of the version it refers to gives permission.

</li><li> For any section Entitled “Acknowledgements” or “Dedications”, Preserve
the Title of the section, and preserve in the section all the
substance and tone of each of the contributor acknowledgements and/or
dedications given therein.

</li><li> Preserve all the Invariant Sections of the Document,
unaltered in their text and in their titles.  Section numbers
or the equivalent are not considered part of the section titles.

</li><li> Delete any section Entitled “Endorsements”.  Such a section
may not be included in the Modified Version.

</li><li> Do not retitle any existing section to be Entitled “Endorsements” or
to conflict in title with any Invariant Section.

</li><li> Preserve any Warranty Disclaimers.
</li></ol>

<p>If the Modified Version includes new front-matter sections or
appendices that qualify as Secondary Sections and contain no material
copied from the Document, you may at your option designate some or all
of these sections as invariant.  To do this, add their titles to the
list of Invariant Sections in the Modified Version’s license notice.
These titles must be distinct from any other section titles.
</p>
<p>You may add a section Entitled “Endorsements”, provided it contains
nothing but endorsements of your Modified Version by various
parties—for example, statements of peer review or that the text has
been approved by an organization as the authoritative definition of a
standard.
</p>
<p>You may add a passage of up to five words as a Front-Cover Text, and a
passage of up to 25 words as a Back-Cover Text, to the end of the list
of Cover Texts in the Modified Version.  Only one passage of
Front-Cover Text and one of Back-Cover Text may be added by (or
through arrangements made by) any one entity.  If the Document already
includes a cover text for the same cover, previously added by you or
by arrangement made by the same entity you are acting on behalf of,
you may not add another; but you may replace the old one, on explicit
permission from the previous publisher that added the old one.
</p>
<p>The author(s) and publisher(s) of the Document do not by this License
give permission to use their names for publicity for or to assert or
imply endorsement of any Modified Version.
</p>
</li><li> COMBINING DOCUMENTS

<p>You may combine the Document with other documents released under this
License, under the terms defined in section 4 above for modified
versions, provided that you include in the combination all of the
Invariant Sections of all of the original documents, unmodified, and
list them all as Invariant Sections of your combined work in its
license notice, and that you preserve all their Warranty Disclaimers.
</p>
<p>The combined work need only contain one copy of this License, and
multiple identical Invariant Sections may be replaced with a single
copy.  If there are multiple Invariant Sections with the same name but
different contents, make the title of each such section unique by
adding at the end of it, in parentheses, the name of the original
author or publisher of that section if known, or else a unique number.
Make the same adjustment to the section titles in the list of
Invariant Sections in the license notice of the combined work.
</p>
<p>In the combination, you must combine any sections Entitled “History”
in the various original documents, forming one section Entitled
“History”; likewise combine any sections Entitled “Acknowledgements”,
and any sections Entitled “Dedications”.  You must delete all
sections Entitled “Endorsements.”
</p>
</li><li> COLLECTIONS OF DOCUMENTS

<p>You may make a collection consisting of the Document and other documents
released under this License, and replace the individual copies of this
License in the various documents with a single copy that is included in
the collection, provided that you follow the rules of this License for
verbatim copying of each of the documents in all other respects.
</p>
<p>You may extract a single document from such a collection, and distribute
it individually under this License, provided you insert a copy of this
License into the extracted document, and follow this License in all
other respects regarding verbatim copying of that document.
</p>
</li><li> AGGREGATION WITH INDEPENDENT WORKS

<p>A compilation of the Document or its derivatives with other separate
and independent documents or works, in or on a volume of a storage or
distribution medium, is called an “aggregate” if the copyright
resulting from the compilation is not used to limit the legal rights
of the compilation’s users beyond what the individual works permit.
When the Document is included in an aggregate, this License does not
apply to the other works in the aggregate which are not themselves
derivative works of the Document.
</p>
<p>If the Cover Text requirement of section 3 is applicable to these
copies of the Document, then if the Document is less than one half of
the entire aggregate, the Document’s Cover Texts may be placed on
covers that bracket the Document within the aggregate, or the
electronic equivalent of covers if the Document is in electronic form.
Otherwise they must appear on printed covers that bracket the whole
aggregate.
</p>
</li><li> TRANSLATION

<p>Translation is considered a kind of modification, so you may
distribute translations of the Document under the terms of section 4.
Replacing Invariant Sections with translations requires special
permission from their copyright holders, but you may include
translations of some or all Invariant Sections in addition to the
original versions of these Invariant Sections.  You may include a
translation of this License, and all the license notices in the
Document, and any Warranty Disclaimers, provided that you also include
the original English version of this License and the original versions
of those notices and disclaimers.  In case of a disagreement between
the translation and the original version of this License or a notice
or disclaimer, the original version will prevail.
</p>
<p>If a section in the Document is Entitled “Acknowledgements”,
“Dedications”, or “History”, the requirement (section 4) to Preserve
its Title (section 1) will typically require changing the actual
title.
</p>
</li><li> TERMINATION

<p>You may not copy, modify, sublicense, or distribute the Document
except as expressly provided under this License.  Any attempt
otherwise to copy, modify, sublicense, or distribute it is void, and
will automatically terminate your rights under this License.
</p>
<p>However, if you cease all violation of this License, then your license
from a particular copyright holder is reinstated (a) provisionally,
unless and until the copyright holder explicitly and finally
terminates your license, and (b) permanently, if the copyright holder
fails to notify you of the violation by some reasonable means prior to
60 days after the cessation.
</p>
<p>Moreover, your license from a particular copyright holder is
reinstated permanently if the copyright holder notifies you of the
violation by some reasonable means, this is the first time you have
received notice of violation of this License (for any work) from that
copyright holder, and you cure the violation prior to 30 days after
your receipt of the notice.
</p>
<p>Termination of your rights under this section does not terminate the
licenses of parties who have received copies or rights from you under
this License.  If your rights have been terminated and not permanently
reinstated, receipt of a copy of some or all of the same material does
not give you any rights to use it.
</p>
</li><li> FUTURE REVISIONS OF THIS LICENSE

<p>The Free Software Foundation may publish new, revised versions
of the GNU Free Documentation License from time to time.  Such new
versions will be similar in spirit to the present version, but may
differ in detail to address new problems or concerns.  See
<a href="http://www.gnu.org/copyleft/">http://www.gnu.org/copyleft/</a>.
</p>
<p>Each version of the License is given a distinguishing version number.
If the Document specifies that a particular numbered version of this
License “or any later version” applies to it, you have the option of
following the terms and conditions either of that specified version or
of any later version that has been published (not as a draft) by the
Free Software Foundation.  If the Document does not specify a version
number of this License, you may choose any version ever published (not
as a draft) by the Free Software Foundation.  If the Document
specifies that a proxy can decide which future versions of this
License can be used, that proxy’s public statement of acceptance of a
version permanently authorizes you to choose that version for the
Document.
</p>
</li><li> RELICENSING

<p>“Massive Multiauthor Collaboration Site” (or “MMC Site”) means any
World Wide Web server that publishes copyrightable works and also
provides prominent facilities for anybody to edit those works.  A
public wiki that anybody can edit is an example of such a server.  A
“Massive Multiauthor Collaboration” (or “MMC”) contained in the
site means any set of copyrightable works thus published on the MMC
site.
</p>
<p>“CC-BY-SA” means the Creative Commons Attribution-Share Alike 3.0
license published by Creative Commons Corporation, a not-for-profit
corporation with a principal place of business in San Francisco,
California, as well as future copyleft versions of that license
published by that same organization.
</p>
<p>“Incorporate” means to publish or republish a Document, in whole or
in part, as part of another Document.
</p>
<p>An MMC is “eligible for relicensing” if it is licensed under this
License, and if all works that were first published under this License
somewhere other than this MMC, and subsequently incorporated in whole
or in part into the MMC, (1) had no cover texts or invariant sections,
and (2) were thus incorporated prior to November 1, 2008.
</p>
<p>The operator of an MMC Site may republish an MMC contained in the site
under CC-BY-SA on the same site at any time before August 1, 2009,
provided the MMC is eligible for relicensing.
</p>
</li></ol>

<span id="ADDENDUM_003a-How-to-use-this-License-for-your-documents"></span><h3 class="heading">ADDENDUM: How to use this License for your documents</h3>

<p>To use this License in a document you have written, include a copy of
the License in the document and put the following copyright and
license notices just after the title page:
</p>
<div class="example">
<pre class="example">  Copyright (C)  <var>year</var>  <var>your name</var>.
  Permission is granted to copy, distribute and/or modify this document
  under the terms of the GNU Free Documentation License, Version 1.3
  or any later version published by the Free Software Foundation;
  with no Invariant Sections, no Front-Cover Texts, and no Back-Cover
  Texts.  A copy of the license is included in the section entitled ``GNU
  Free Documentation License''.
</pre></div>

<p>If you have Invariant Sections, Front-Cover Texts and Back-Cover Texts,
replace the “with…Texts.” line with this:
</p>
<div class="example">
<pre class="example">    with the Invariant Sections being <var>list their titles</var>, with
    the Front-Cover Texts being <var>list</var>, and with the Back-Cover Texts
    being <var>list</var>.
</pre></div>

<p>If you have Invariant Sections without Cover Texts, or some other
combination of the three, merge those two alternatives to suit the
situation.
</p>
<p>If your document contains nontrivial examples of program code, we
recommend releasing these examples in parallel under your choice of
free software license, such as the GNU General Public License,
to permit their use in free software.
</p>




<hr>
</div>
<div class="unnumbered" id="Concept-Index">
<div class="header">
<p>
Next: <a href="#Procedure-Index" accesskey="n" rel="next">Procedure Index</a>, Previous: <a href="#GNU-Free-Documentation-License" accesskey="p" rel="prev">GNU Free Documentation License</a>, Up: <a href="#Top" accesskey="u" rel="up">Guile-CV Reference Manual</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Concept-Index-1"></span><h2 class="unnumbered">Concept Index</h2>

<p>This index contains concepts, keywords and non-Schemey names for several
features, to make it easier to locate the desired sections.
</p>
<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Concept-Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></tbody></table>
<table class="index-cp" border="0">
<tbody><tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-Index_cp_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Copying">Copying</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Guile_002dCV-License">Guile-CV License</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Crack-Edge-Image">Crack Edge Image</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Segmentation">Segmentation</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-Index_cp_letter-D">D</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Distance-Map">Distance Map</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Distance-Transform">Distance Transform</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-Index_cp_letter-E">E</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Edge-Detection">Edge Detection</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Segmentation">Segmentation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Edge-Enhancement">Edge Enhancement</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Euclidean-Distance">Euclidean Distance</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-Index_cp_letter-F">F</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Fast-Cross-Correlation">Fast Cross Correlation</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Fast-Fourier-Transform">Fast Fourier Transform</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Fast-Fourier-Transform-Inverse">Fast Fourier Transform Inverse</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Fast-Normalized-Cross-Correlation">Fast Normalized Cross Correlation</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Features">Features</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Features">Features</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-Index_cp_letter-G">G</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Gaussian-Blur">Gaussian Blur</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Gaussian-Gradient">Gaussian Gradient</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Gaussian-Sharp">Gaussian Sharp</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Gaussian-Smooth">Gaussian Smooth</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Geodesic-Operators">Geodesic Operators</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GLCM">GLCM</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texture">Texture</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GLCP">GLCP</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texture">Texture</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-GPL">GPL</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Guile_002dCV-License">Guile-CV License</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Gray-Level-Co_002doccurence-Matrix">Gray Level Co-occurence Matrix</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texture">Texture</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Gray-Level-Co_002doccurence-Probability">Gray Level Co-occurence Probability</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texture">Texture</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-Index_cp_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Image-Convolution">Image Convolution</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Image-Particles">Image Particles</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Particles">Particles</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Image-Textures">Image Textures</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texture">Texture</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-Index_cp_letter-L">L</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-License">License</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Guile_002dCV-License">Guile-CV License</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-Index_cp_letter-M">M</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Mathematical-Morphology">Mathematical Morphology</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Matrix-Division">Matrix Division</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Matrix-Multiplication">Matrix Multiplication</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Median-Filter">Median Filter</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-Morphological-Reconstruction">Morphological Reconstruction</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-Index_cp_letter-N">N</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-Non_002dLocal-Means-Denoising">Non-Local Means Denoising</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-Index_cp_letter-T">T</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-the-GNU-Project">the GNU Project</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Join-the-GNU-Project">Join the GNU Project</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Concept-Index_cp_letter-U">U</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-User-Configuration">User Configuration</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Utilities">Utilities</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</tbody></table>
<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Concept-Index_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-E"><b>E</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-F"><b>F</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-G"><b>G</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-L"><b>L</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-M"><b>M</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-N"><b>N</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter" href="#Concept-Index_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></tbody></table>


<hr>
</div>
<div class="unnumbered" id="Procedure-Index">
<div class="header">
<p>
Next: <a href="#Variable-Index" accesskey="n" rel="next">Variable Index</a>, Previous: <a href="#Concept-Index" accesskey="p" rel="prev">Concept Index</a>, Up: <a href="#Top" accesskey="u" rel="up">Guile-CV Reference Manual</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Procedure-Index-1"></span><h2 class="unnumbered">Procedure Index</h2>

<p>This is an alphabetical list of all the procedures, methods and macros
in Guile-CV.
</p>


<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Procedure-Index_fn_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Procedure-Index_fn_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Procedure-Index_fn_letter-K"><b>K</b></a>
 &nbsp; 
<a class="summary-letter" href="#Procedure-Index_fn_letter-R"><b>R</b></a>
 &nbsp; 
</td></tr></tbody></table>
<table class="index-fn" border="0">
<tbody><tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Procedure-Index_fn_letter-D">D</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-degree_002d_003eradian"><code>degree-&gt;radian</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pi">Pi</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Procedure-Index_fn_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002d_003d_002dchannel_003f"><code>im-=-channel?</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002d_003d_003f"><code>im-=?</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dadd"><code>im-add</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dadd-1"><code>im-add</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dadd_002dchannel"><code>im-add-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dadd_002dchannel-1"><code>im-add-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dand"><code>im-and</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dand_002dchannel"><code>im-and-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dbinary_002dchannel_003f"><code>im-binary-channel?</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dbinary_003f"><code>im-binary?</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcanny"><code>im-canny</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Segmentation">Segmentation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcanny_002dchannel"><code>im-canny-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Segmentation">Segmentation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dchannel"><code>im-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dchannel_002doffset"><code>im-channel-offset</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dchannel_002dref"><code>im-channel-ref</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dchannel_002dset_0021"><code>im-channel-set!</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dchannels"><code>im-channels</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dclip"><code>im-clip</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dclip_002dchannel"><code>im-clip-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dclose"><code>im-close</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dclose_002dchannel"><code>im-close-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcollect"><code>im-collect</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcomplement"><code>im-complement</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcompose"><code>im-compose</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Compose">Compose</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcompose_002dchannels"><code>im-compose-channels</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Compose">Compose</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dconvolve"><code>im-convolve</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dconvolve_002dchannel"><code>im-convolve-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcopy"><code>im-copy</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcopy_002dchannel"><code>im-copy-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcrack_002dedge"><code>im-crack-edge</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Segmentation">Segmentation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcrack_002dedge_002dchannel"><code>im-crack-edge-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Segmentation">Segmentation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcrop"><code>im-crop</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcrop_002dchannel"><code>im-crop-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dcrop_002dsize"><code>im-crop-size</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddelineate"><code>im-delineate</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddelineate_002dchannel"><code>im-delineate-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddisc_002ddilate"><code>im-disc-dilate</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddisc_002ddilate_002dchannel"><code>im-disc-dilate-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddisc_002derode"><code>im-disc-erode</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddisc_002derode_002dchannel"><code>im-disc-erode-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddisplay"><code>im-display</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Utilities">Utilities</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddisplay_002dchannel"><code>im-display-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Utilities">Utilities</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddistance_002dmap"><code>im-distance-map</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddistance_002dmap_002dchannel"><code>im-distance-map-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddivide"><code>im-divide</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddivide-1"><code>im-divide</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddivide_002dchannel"><code>im-divide-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002ddivide_002dchannel-1"><code>im-divide-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfast_002dchannel_002doffset"><code>im-fast-channel-offset</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfast_002dchannel_002dref"><code>im-fast-channel-ref</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfast_002dchannel_002dset_0021"><code>im-fast-channel-set!</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfast_002dref"><code>im-fast-ref</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfast_002dset_0021"><code>im-fast-set!</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfcc"><code>im-fcc</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfcc_002dchannel"><code>im-fcc-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfeatures"><code>im-features</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Features">Features</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfft"><code>im-fft</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfft_002dchannel"><code>im-fft-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfft_002dinverse"><code>im-fft-inverse</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfft_002dinverse_002dchannel"><code>im-fft-inverse-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfill_002dholes"><code>im-fill-holes</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfill_002dholes_002dchannel"><code>im-fill-holes-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dflip"><code>im-flip</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dflip_002dchannel"><code>im-flip-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfncc"><code>im-fncc</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dfncc_002dchannel"><code>im-fncc-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dgaussian_002dblur"><code>im-gaussian-blur</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dgaussian_002dblur_002dchannel"><code>im-gaussian-blur-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dgaussian_002dgradient"><code>im-gaussian-gradient</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dgaussian_002dgradient_002dchannel"><code>im-gaussian-gradient-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dgaussian_002dsharp"><code>im-gaussian-sharp</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dgaussian_002dsharp_002dchannel"><code>im-gaussian-sharp-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dglcm"><code>im-glcm</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texture">Texture</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dglcp"><code>im-glcp</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texture">Texture</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dgray_003f"><code>im-gray?</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dgray_003f-1"><code>im-gray?</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Import-Export">Import Export</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dheight"><code>im-height</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dheight-1"><code>im-height</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Import-Export">Import Export</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dhistogram"><code>im-histogram</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Histogram">Histogram</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dimage_003f"><code>im-image?</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dinvert"><code>im-invert</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dinvert_002dchannel"><code>im-invert-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dlabel"><code>im-label</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Segmentation">Segmentation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dlabel_002dall"><code>im-label-all</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Segmentation">Segmentation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dlabel_002dall_002dchannel"><code>im-label-all-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Segmentation">Segmentation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dlabel_002dchannel"><code>im-label-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Segmentation">Segmentation</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dload"><code>im-load</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Import-Export">Import Export</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dlocal_002dmaxima"><code>im-local-maxima</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dlocal_002dmaxima_002dchannel"><code>im-local-maxima-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dlocal_002dminima"><code>im-local-minima</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dlocal_002dminima_002dchannel"><code>im-local-minima-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmake"><code>im-make</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmake_002dchannel"><code>im-make-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmake_002dchannels"><code>im-make-channels</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmap"><code>im-map</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmap_002dchannel"><code>im-map-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmax"><code>im-max</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmax_002dchannel"><code>im-max-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmdivide"><code>im-mdivide</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmdivide_002dchannel"><code>im-mdivide-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmedian_002dfilter"><code>im-median-filter</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmedian_002dfilter_002dchannel"><code>im-median-filter-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmin"><code>im-min</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmin_002dchannel"><code>im-min-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmtimes"><code>im-mtimes</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dmtimes_002dchannel"><code>im-mtimes-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dn_002dchannel"><code>im-n-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dn_002dchannel-1"><code>im-n-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Import-Export">Import Export</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dnl_002dmeans"><code>im-nl-means</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dnl_002dmeans_002dchannel"><code>im-nl-means-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dnormalize"><code>im-normalize</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dnormalize_002dchannel"><code>im-normalize-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dopen"><code>im-open</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dopen_002dchannel"><code>im-open-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dor"><code>im-or</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dor_002dchannel"><code>im-or-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dpadd"><code>im-padd</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dpadd_002dchannel"><code>im-padd-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dpadd_002dsize"><code>im-padd-size</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dparticle_002dclean"><code>im-particle-clean</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Particles">Particles</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dparticles"><code>im-particles</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Particles">Particles</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002drange"><code>im-range</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002drange_002dchannel"><code>im-range-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dreconstruct"><code>im-reconstruct</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Morphology">Morphology</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dreduce"><code>im-reduce</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dreduce_002dchannel"><code>im-reduce-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dref"><code>im-ref</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dresize"><code>im-resize</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dresize_002dchannel"><code>im-resize-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002drgb_002d_003egray"><code>im-rgb-&gt;gray</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002drgb_003f"><code>im-rgb?</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002drgb_003f-1"><code>im-rgb?</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Import-Export">Import Export</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002drgba_002d_003egray"><code>im-rgba-&gt;gray</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002drgba_002d_003ergb"><code>im-rgba-&gt;rgb</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002drotate"><code>im-rotate</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002drotate_002dchannel"><code>im-rotate-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dsave"><code>im-save</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Import-Export">Import Export</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dscrap"><code>im-scrap</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dset_0021"><code>im-set!</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dsharpen"><code>im-sharpen</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dsharpen_002dchannel"><code>im-sharpen-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Filter">Filter</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dshow"><code>im-show</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Utilities">Utilities</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dshow-1"><code>im-show</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Utilities">Utilities</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dshow-2"><code>im-show</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Utilities">Utilities</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dsize"><code>im-size</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dsize-1"><code>im-size</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Import-Export">Import Export</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dsubtract"><code>im-subtract</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dsubtract-1"><code>im-subtract</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dsubtract_002dchannel"><code>im-subtract-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dsubtract_002dchannel-1"><code>im-subtract-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dtexture"><code>im-texture</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Texture">Texture</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dthreshold"><code>im-threshold</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dtimes"><code>im-times</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dtimes-1"><code>im-times</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dtimes_002dchannel"><code>im-times-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dtimes_002dchannel-1"><code>im-times-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dtranspose"><code>im-transpose</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dtranspose_002dchannel"><code>im-transpose-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Transform">Transform</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dwidth"><code>im-width</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Image-Structure-and-Accessors">Image Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dwidth-1"><code>im-width</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Import-Export">Import Export</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dxor"><code>im-xor</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-im_002dxor_002dchannel"><code>im-xor-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Process">Process</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Procedure-Index_fn_letter-K">K</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002dchannel"><code>k-channel</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002ddisplay"><code>k-display</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002dfast_002doffset"><code>k-fast-offset</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002dfast_002dref"><code>k-fast-ref</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002dfast_002dset_0021"><code>k-fast-set!</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002dheight"><code>k-height</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002dmake"><code>k-make</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002dmake_002dcircular_002dmask"><code>k-make-circular-mask</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002doffset"><code>k-offset</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002dref"><code>k-ref</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002dset_0021"><code>k-set!</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002dsize"><code>k-size</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-k_002dwidth"><code>k-width</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-kernel_003f"><code>kernel?</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Procedure-Index_fn_letter-R">R</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-radian_002d_003edegree"><code>radian-&gt;degree</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pi">Pi</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-re_002dexport_002dpublic_002dinterface"><code>re-export-public-interface</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Modules">Modules</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</tbody></table>
<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Procedure-Index_fn_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#Procedure-Index_fn_letter-I"><b>I</b></a>
 &nbsp; 
<a class="summary-letter" href="#Procedure-Index_fn_letter-K"><b>K</b></a>
 &nbsp; 
<a class="summary-letter" href="#Procedure-Index_fn_letter-R"><b>R</b></a>
 &nbsp; 
</td></tr></tbody></table>


<hr>
</div>
<div class="unnumbered" id="Variable-Index">
<div class="header">
<p>
Next: <a href="#Type-Index" accesskey="n" rel="next">Type Index</a>, Previous: <a href="#Procedure-Index" accesskey="p" rel="prev">Procedure Index</a>, Up: <a href="#Top" accesskey="u" rel="up">Guile-CV Reference Manual</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Variable-Index-1"></span><h2 class="unnumbered">Variable Index</h2>

<p>This is an alphabetical list of all the important variables and
constants in Guile-CV.
</p>
<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Variable-Index_vr_symbol-1"><b>%</b></a>
</td></tr></tbody></table>
<table class="index-vr" border="0">
<tbody><tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="Variable-Index_vr_symbol-1">%</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-_00252pi"><code>%2pi</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pi">Pi</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025image_002dcache"><code>%image-cache</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Utilities">Utilities</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025image_002dcache_002dformat"><code>%image-cache-format</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Utilities">Utilities</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dedge0"><code>%k-edge0</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dedge1"><code>%k-edge1</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002demboss"><code>%k-emboss</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dgaussian_002dblur0"><code>%k-gaussian-blur0</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dgaussian_002dblur1"><code>%k-gaussian-blur1</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002didentity"><code>%k-identity</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dlaplacian"><code>%k-laplacian</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dmean"><code>%k-mean</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dprewitt_002dx"><code>%k-prewitt-x</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dprewitt_002dy"><code>%k-prewitt-y</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dsharpen"><code>%k-sharpen</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dsobel_002dx"><code>%k-sobel-x</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dsobel_002dy"><code>%k-sobel-y</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025k_002dunsharp"><code>%k-unsharp</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Kernel-Structure-and-Accessors">Kernel Structure and Accessors</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025pi"><code>%pi</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pi">Pi</a></td></tr>
<tr><td></td><td valign="top"><a href="#index-_0025pi_002f2"><code>%pi/2</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Pi">Pi</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</tbody></table>
<table><tbody><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#Variable-Index_vr_symbol-1"><b>%</b></a>
</td></tr></tbody></table>


<hr>
</div>
<div class="unnumbered" id="Type-Index">
<div class="header">
<p>
Previous: <a href="#Variable-Index" accesskey="p" rel="prev">Variable Index</a>, Up: <a href="#Top" accesskey="u" rel="up">Guile-CV Reference Manual</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="#Concept-Index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Type-Index-1"></span><h2 class="unnumbered">Type Index</h2>

<p>This is an alphabetical list of all the important data types defined in
the Guile-CV Programmers Manual.
</p>


</div>
</div>
<div class="footnote">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>We do our best to check that the libvigra_c installed
library does contain the required Guile-CV functionalty though, and
these checks are listed as part of our <code>configure</code> steps</p>
<h5><a id="FOOT2" href="#DOCF2">(2)</a></h5>
<p>In this case, you may as well decide to either alter
your <samp>$HOME/.guile</samp> personal file, or, if you are working in a
mult-user environmet, you may also opt for a global configuration. In
this case, the file must be named <samp>init.scm</samp> and placed it here
(evaluate the following expression in a terminal): <code>guile -c
"(display (%global-site-dir))(newline)"</code>.</p>
<h5><a id="FOOT3" href="#DOCF3">(3)</a></h5>
<p>Contact your administrator
if you opt for the second solution but don’t have <code>write</code>
priviledges on your system.</p>
<h5><a id="FOOT4" href="#DOCF4">(4)</a></h5>
<p>Even for very small images, using write is inadequate,
in a terminal, and will definitely kill your Emacs/Geiser session.  Not
to mention it will raise your electricity bill :) - till you succeed to
delete its process, Emacs will use one core at more then 100%,
desperately trying to display hundreds of thousands of floating point
values, heating your laptop (if you have a laptop) up to the point
you’ll be able to cook an egg on it, and get its fans crasy... You’ve
been warned :).</p>
<h5><a id="FOOT5" href="#DOCF5">(5)</a></h5>
<p>The Guile global site directory location may be obtained by evaluating
the following expression in a terminal): <code>guile -c "(display
(%global-site-dir))(newline)"</code>. You need write privileges to add or
modify this file, contact your system administrator if you’re not in
charge of the system you are working on.</p>
<h5><a id="FOOT6" href="#DOCF6">(6)</a></h5>
<p>Special thanks to Daniel
Llorens, who proposed these changes, without which it would just be
impossible to work with Guile-CV - or for that matter, any work that
involves very large data structure manipulations.</p>
<h5><a id="FOOT7" href="#DOCF7">(7)</a></h5>
<p>You need write privileges to modify this module,
contact your admin if you’re not in charge of the system you are working
on.</p>
<h5><a id="FOOT8" href="#DOCF8">(8)</a></h5>
<p>Early versions of Guile-CV used to recommend an
<code>exception-format</code> setting based on <code>truncated-print</code>, which
works as expected if you are using Guile 2.0 or 2.2, but using Guile
3.0, a raised exception would lead to a series of ‘<samp>Unwind-only
stack overflow exception</samp>’ and exit Guile abruptly.</p>
<h5><a id="FOOT9" href="#DOCF9">(9)</a></h5>
<p>The <code>'scale</code>
optional argument passed to <a href="#im_002dshow">im-show</a>, as its name indicate, is so
that kernel values will be scaled, which in this case means that
<code>1.0</code> values will become <code>255.0</code> - otherwise, it would be
almost impossible for a human eye to actually see the shape of the
circle …</p>
<h5><a id="FOOT10" href="#DOCF10">(10)</a></h5>
<p>Note that in this particular
context, <code>scale</code> does not mean a change in dimension, but rather
bringing pixel values from the range they occupy in memory to the
<code>[0 255]</code> range</p>
<h5><a id="FOOT11" href="#DOCF11">(11)</a></h5>
<p>The mode is the integer
corresponding to the histogram entry that received the maximum of hits,
and the value displayed in parens precisely is the number of hits.</p>
<h5><a id="FOOT12" href="#DOCF12">(12)</a></h5>
<p>R. M. Haralick,
K. Shanmugam, and I. Dinstein, Textural Features of Image
Classification, IEEE Transactions on Systems, Man and Cybernetics,
vol. SMC-3, no. 6, Nov. 1973.</p>
<h5><a id="FOOT13" href="#DOCF13">(13)</a></h5>
<p>M. Hall-Beyer,
GLCM Texture: A Tutorial v. 3.0 March 2017</p>
<h5><a id="FOOT14" href="#DOCF14">(14)</a></h5>
<p>Since it is used as a
<code>factor</code> in all three formulas, the final result obtained using
<code>log2</code> is equivalent to the result obtained using <code>log</code>
multiplied by <code>1.4426950408889634</code></p>
<h5><a id="FOOT15" href="#DOCF15">(15)</a></h5>
<p>Guile-CV computes the
<code>difference average</code> using all elements of the <code>Px-y</code>, by
default, but offers this option as a courtesy, for users who would want
to use Guile-CV as an immediate substitute to compute image texture
measures for a (large) image set for which they would already have
trained a classifier. It is not recommended to use it otherwise.</p>
<h5><a id="FOOT16" href="#DOCF16">(16)</a></h5>
<p>Note
that when passed to <a href="#im_002dcrop">im-crop</a>, <code>right</code> and <code>bottom</code> must
be increased by 1: <code>(im-crop image left top (+ right 1) (+ bottom
1))</code>.</p>
<h5><a id="FOOT17" href="#DOCF17">(17)</a></h5>
<p>Note that Vigra
calculates and returns these values in the image coordinate system,
where the <code>y-axis</code> is ‘<samp>flipped</samp>’ compared to the trigonometric
circle ‘<samp>traditional</samp>’ representation. Guile-CV however transforms
and returns these values using the trigonometric circle reference
system.</p>
<h5><a id="FOOT18" href="#DOCF18">(18)</a></h5>
<p>P. Coupe, P. Yger,
S. Prima, P. Hellier, C. Kervrann, C. Barillot.  An Optimized Blockwise
Non Local Means Denoising Filter for 3D Magnetic Resonance Images . IEEE
Transactions on Medical Imaging, 27(4):425-441, Avril 2008.</p>
<h5><a id="FOOT19" href="#DOCF19">(19)</a></h5>
<p>Technically speaking, there
is no such thing as matrix division.  Dividing a matrix by another
matrix is an undefined function.  The closest equivalent is to multiply
the matrix by the inverse of the other matrix.</p>
<h5><a id="FOOT20" href="#DOCF20">(20)</a></h5>
<p>Note that there is no mathematically valid
<code>XOR</code> operation on floating points, hence as they are
‘<samp>accessed</samp>’, pixel values are converted to integer, using
<code>float-&gt;int</code>, defined in the <code>(cv support libguile-cv)</code>
module).</p>
<h5><a id="FOOT21" href="#DOCF21">(21)</a></h5>
<p>The <abbr title="Fast Fourier Transform">FFT</abbr> (Fast Fourier Transform) is simply a faster way to compute the Fourier
transform. All FFT related procedures, and their inverse, are obtained
by calling the <a href="http://www.fftw.org/">FFTW library</a>.</p>
<h5><a id="FOOT22" href="#DOCF22">(22)</a></h5>
<p>Also called a <em>template</em>, or a
<em>pattern</em>.</p>
<h5><a id="FOOT23" href="#DOCF23">(23)</a></h5>
<p>Hence the
names, <abbr title="Fast Cross Correlation">FCC</abbr> (Fast Cross Correlation) and <abbr title="Fast
Normalized Cross Correlation">FNCC</abbr> (Fast
Normalized Cross Correlation).</p>
<h5><a id="FOOT24" href="#DOCF24">(24)</a></h5>
<p>in Serra, Jean and Vincent, Luc (1992),
"An overview of morphological filtering", Circuits, Systems and Signal
Processing (Springer) 11 (1): 47-108</p>
<h5><a id="FOOT25" href="#DOCF25">(25)</a></h5>
<p>The number of labels correspond to the highest label
value + 1: earlier version of Guile-CV, prior to version 1.8.0, did
return the number of objects, which correspond to the highest label
value. This was less then optimal, since not only 0.0 is a label, but
other procedures, im-features for example, do consider and return and
element for the background as well.</p>
<h5><a id="FOOT26" href="#DOCF26">(26)</a></h5>
<p>Actually,
all images displayed in the documentation are <code>png</code> images, though
all described <code>im-canny</code> calls where performed on the original
<code>tif</code> image. This is because in Guile-CV, all images are 32bit
float images, and when saved as <code>tif</code>, all values are preserved (as
opposed to being normalized): however, most viewers do not handle
floating point pixel values (they don´t know how to scale the values,
which may be negative, fractional...). In order to show the results in
the documentation, even though all computations of this example were
made upon the original <code>tif</code> image, they were saved to <code>png</code>
(which normalize all pixel values to [0 255].).</p>
<h5><a id="FOOT27" href="#DOCF27">(27)</a></h5>
<p>Note that in order to show the result in
the documentation, we had to manually set one pixel of one of the edges
to 255.0: this is because, just as we explained in the previous
footnote, to be able to display the image in the documentation, we had
to save the image as <code>png</code>, which does normalize all values: if you
do not set one of the pixels of one edge to 255.0, all markers values
would be normalized to 255.0, there by loosing the original marker
value.</p>
<h5><a id="FOOT28" href="#DOCF28">(28)</a></h5>
<p>See L. J. Latecki: Well-Composed Sets,
Academic Press, 2000</p>
<h5><a id="FOOT29" href="#DOCF29">(29)</a></h5>
<p>Note that in this particular
context, <code>scale</code> does not mean a change in dimension, but rather
bringing pixel values from the range they occupy in memory to the
<code>[0 255]</code> range</p>
</div>





</body></html>