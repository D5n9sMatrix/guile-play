<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><!-- Created by GNU Texinfo 6.8, https://www.gnu.org/software/texinfo/ --><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Top (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="Top (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="Top (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div id="content" class="inner">

<h1 class="top">Emacs Lisp</h1>

<p>The GNU Emacs website is at
<a href="https://www.gnu.org/software/emacs/">https://www.gnu.org/software/emacs/</a>.<br>
For information on using Emacs, refer to the
<a href="https://www.gnu.org/software/emacs/manual/emacs.html">Emacs Manual</a>.<br>
To view this manual in other formats, click
<a href="https://www.gnu.org/software/emacs/manual/elisp.html">here</a>.

</p><p>This is the <cite>GNU Emacs Lisp Reference Manual</cite>
corresponding to Emacs version 28.2.
</p>
<p>Copyright © 1990–1996, 1998–2022 Free Software Foundation,
Inc.
</p>
<blockquote>
<p>Permission is granted to copy, distribute and/or modify this document
under the terms of the GNU Free Documentation License, Version 1.3 or
any later version published by the Free Software Foundation; with the
Invariant Sections being “GNU General Public License,” with the
Front-Cover Texts being “A GNU Manual,” and with the Back-Cover
Texts as in (a) below.  A copy of the license is included in the
section entitled “GNU Free Documentation License.”
</p>
<p>(a) The FSF’s Back-Cover Text is: “You have the freedom to copy and
modify this GNU manual.  Buying copies from the FSF supports it in
developing GNU and promoting software freedom.”
</p></blockquote>
</div>




<div class="Contents_element" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="no-bullet">
  <li><a id="toc-Introduction-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Introduction.html">1 Introduction</a>
  <ul class="no-bullet">
    <li><a id="toc-Caveats-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Caveats.html">1.1 Caveats</a></li>
    <li><a id="toc-Lisp-History-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lisp-History.html">1.2 Lisp History</a></li>
    <li><a id="toc-Conventions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Conventions.html">1.3 Conventions</a>
    <ul class="no-bullet">
      <li><a id="toc-Some-Terms-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Some-Terms.html">1.3.1 Some Terms</a></li>
      <li><a id="toc-nil-and-t-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/nil-and-t.html">1.3.2 <code>nil</code> and <code>t</code></a></li>
      <li><a id="toc-Evaluation-Notation-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Evaluation-Notation.html">1.3.3 Evaluation Notation</a></li>
      <li><a id="toc-Printing-Notation-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Printing-Notation.html">1.3.4 Printing Notation</a></li>
      <li><a id="toc-Error-Messages-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Error-Messages.html">1.3.5 Error Messages</a></li>
      <li><a id="toc-Buffer-Text-Notation-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Text-Notation.html">1.3.6 Buffer Text Notation</a></li>
      <li><a id="toc-Format-of-Descriptions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Format-of-Descriptions.html">1.3.7 Format of Descriptions</a>
      <ul class="no-bullet">
        <li><a id="toc-A-Sample-Function-Description-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/A-Sample-Function-Description.html">1.3.7.1 A Sample Function Description</a></li>
        <li><a id="toc-A-Sample-Variable-Description-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/A-Sample-Variable-Description.html">1.3.7.2 A Sample Variable Description</a></li>
      </ul></li>
    </ul></li>
    <li><a id="toc-Version-Information" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Version-Info.html">1.4 Version Information</a></li>
    <li><a id="toc-Acknowledgments-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Acknowledgments.html">1.5 Acknowledgments</a></li>
  </ul></li>
  <li><a id="toc-Lisp-Data-Types-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lisp-Data-Types.html">2 Lisp Data Types</a>
  <ul class="no-bullet">
    <li><a id="toc-Printed-Representation-and-Read-Syntax" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Printed-Representation.html">2.1 Printed Representation and Read Syntax</a></li>
    <li><a id="toc-Special-Read-Syntax-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Special-Read-Syntax.html">2.2 Special Read Syntax</a></li>
    <li><a id="toc-Comments-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Comments.html">2.3 Comments</a></li>
    <li><a id="toc-Programming-Types-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Programming-Types.html">2.4 Programming Types</a>
    <ul class="no-bullet">
      <li><a id="toc-Integer-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Integer-Type.html">2.4.1 Integer Type</a></li>
      <li><a id="toc-Floating_002dPoint-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Floating_002dPoint-Type.html">2.4.2 Floating-Point Type</a></li>
      <li><a id="toc-Character-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Character-Type.html">2.4.3 Character Type</a>
      <ul class="no-bullet">
        <li><a id="toc-Basic-Char-Syntax-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Basic-Char-Syntax.html">2.4.3.1 Basic Char Syntax</a></li>
        <li><a id="toc-General-Escape-Syntax-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/General-Escape-Syntax.html">2.4.3.2 General Escape Syntax</a></li>
        <li><a id="toc-Control_002dCharacter-Syntax" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Ctl_002dChar-Syntax.html">2.4.3.3 Control-Character Syntax</a></li>
        <li><a id="toc-Meta_002dCharacter-Syntax" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Meta_002dChar-Syntax.html">2.4.3.4 Meta-Character Syntax</a></li>
        <li><a id="toc-Other-Character-Modifier-Bits" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Other-Char-Bits.html">2.4.3.5 Other Character Modifier Bits</a></li>
      </ul></li>
      <li><a id="toc-Symbol-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Symbol-Type.html">2.4.4 Symbol Type</a></li>
      <li><a id="toc-Sequence-Types" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sequence-Type.html">2.4.5 Sequence Types</a></li>
      <li><a id="toc-Cons-Cell-and-List-Types" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cons-Cell-Type.html">2.4.6 Cons Cell and List Types</a>
      <ul class="no-bullet">
        <li><a id="toc-Drawing-Lists-as-Box-Diagrams" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Box-Diagrams.html">2.4.6.1 Drawing Lists as Box Diagrams</a></li>
        <li><a id="toc-Dotted-Pair-Notation-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Dotted-Pair-Notation.html">2.4.6.2 Dotted Pair Notation</a></li>
        <li><a id="toc-Association-List-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Association-List-Type.html">2.4.6.3 Association List Type</a></li>
      </ul></li>
      <li><a id="toc-Array-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Array-Type.html">2.4.7 Array Type</a></li>
      <li><a id="toc-String-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/String-Type.html">2.4.8 String Type</a>
      <ul class="no-bullet">
        <li><a id="toc-Syntax-for-Strings-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-for-Strings.html">2.4.8.1 Syntax for Strings</a></li>
        <li><a id="toc-Non_002dASCII-Characters-in-Strings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Non_002dASCII-in-Strings.html">2.4.8.2 Non-<acronym>ASCII</acronym> Characters in Strings</a></li>
        <li><a id="toc-Nonprinting-Characters-in-Strings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Nonprinting-Characters.html">2.4.8.3 Nonprinting Characters in Strings</a></li>
        <li><a id="toc-Text-Properties-in-Strings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Text-Props-and-Strings.html">2.4.8.4 Text Properties in Strings</a></li>
      </ul></li>
      <li><a id="toc-Vector-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Vector-Type.html">2.4.9 Vector Type</a></li>
      <li><a id="toc-Char_002dTable-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Char_002dTable-Type.html">2.4.10 Char-Table Type</a></li>
      <li><a id="toc-Bool_002dVector-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Bool_002dVector-Type.html">2.4.11 Bool-Vector Type</a></li>
      <li><a id="toc-Hash-Table-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Hash-Table-Type.html">2.4.12 Hash Table Type</a></li>
      <li><a id="toc-Function-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Function-Type.html">2.4.13 Function Type</a></li>
      <li><a id="toc-Macro-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Macro-Type.html">2.4.14 Macro Type</a></li>
      <li><a id="toc-Primitive-Function-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Primitive-Function-Type.html">2.4.15 Primitive Function Type</a></li>
      <li><a id="toc-Byte_002dCode-Function-Type" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Byte_002dCode-Type.html">2.4.16 Byte-Code Function Type</a></li>
      <li><a id="toc-Record-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Record-Type.html">2.4.17 Record Type</a></li>
      <li><a id="toc-Type-Descriptors-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Type-Descriptors.html">2.4.18 Type Descriptors</a></li>
      <li><a id="toc-Autoload-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Autoload-Type.html">2.4.19 Autoload Type</a></li>
      <li><a id="toc-Finalizer-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Finalizer-Type.html">2.4.20 Finalizer Type</a></li>
    </ul></li>
    <li><a id="toc-Editing-Types-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Editing-Types.html">2.5 Editing Types</a>
    <ul class="no-bullet">
      <li><a id="toc-Buffer-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Type.html">2.5.1 Buffer Type</a></li>
      <li><a id="toc-Marker-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Marker-Type.html">2.5.2 Marker Type</a></li>
      <li><a id="toc-Window-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Type.html">2.5.3 Window Type</a></li>
      <li><a id="toc-Frame-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Type.html">2.5.4 Frame Type</a></li>
      <li><a id="toc-Terminal-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Terminal-Type.html">2.5.5 Terminal Type</a></li>
      <li><a id="toc-Window-Configuration-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Configuration-Type.html">2.5.6 Window Configuration Type</a></li>
      <li><a id="toc-Frame-Configuration-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Configuration-Type.html">2.5.7 Frame Configuration Type</a></li>
      <li><a id="toc-Process-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Process-Type.html">2.5.8 Process Type</a></li>
      <li><a id="toc-Thread-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Thread-Type.html">2.5.9 Thread Type</a></li>
      <li><a id="toc-Mutex-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mutex-Type.html">2.5.10 Mutex Type</a></li>
      <li><a id="toc-Condition-Variable-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Condition-Variable-Type.html">2.5.11 Condition Variable Type</a></li>
      <li><a id="toc-Stream-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Stream-Type.html">2.5.12 Stream Type</a></li>
      <li><a id="toc-Keymap-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Keymap-Type.html">2.5.13 Keymap Type</a></li>
      <li><a id="toc-Overlay-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Overlay-Type.html">2.5.14 Overlay Type</a></li>
      <li><a id="toc-Font-Type-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Font-Type.html">2.5.15 Font Type</a></li>
    </ul></li>
    <li><a id="toc-Read-Syntax-for-Circular-Objects" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Circular-Objects.html">2.6 Read Syntax for Circular Objects</a></li>
    <li><a id="toc-Type-Predicates-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Type-Predicates.html">2.7 Type Predicates</a></li>
    <li><a id="toc-Equality-Predicates-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Equality-Predicates.html">2.8 Equality Predicates</a></li>
    <li><a id="toc-Mutability-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mutability.html">2.9 Mutability</a></li>
  </ul></li>
  <li><a id="toc-Numbers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Numbers.html">3 Numbers</a>
  <ul class="no-bullet">
    <li><a id="toc-Integer-Basics-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Integer-Basics.html">3.1 Integer Basics</a></li>
    <li><a id="toc-Floating_002dPoint-Basics" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Float-Basics.html">3.2 Floating-Point Basics</a></li>
    <li><a id="toc-Type-Predicates-for-Numbers" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Predicates-on-Numbers.html">3.3 Type Predicates for Numbers</a></li>
    <li><a id="toc-Comparison-of-Numbers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Comparison-of-Numbers.html">3.4 Comparison of Numbers</a></li>
    <li><a id="toc-Numeric-Conversions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Numeric-Conversions.html">3.5 Numeric Conversions</a></li>
    <li><a id="toc-Arithmetic-Operations-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Arithmetic-Operations.html">3.6 Arithmetic Operations</a></li>
    <li><a id="toc-Rounding-Operations-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Rounding-Operations.html">3.7 Rounding Operations</a></li>
    <li><a id="toc-Bitwise-Operations-on-Integers" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Bitwise-Operations.html">3.8 Bitwise Operations on Integers</a></li>
    <li><a id="toc-Standard-Mathematical-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Math-Functions.html">3.9 Standard Mathematical Functions</a></li>
    <li><a id="toc-Random-Numbers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Random-Numbers.html">3.10 Random Numbers</a></li>
  </ul></li>
  <li><a id="toc-Strings-and-Characters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Strings-and-Characters.html">4 Strings and Characters</a>
  <ul class="no-bullet">
    <li><a id="toc-String-and-Character-Basics" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/String-Basics.html">4.1 String and Character Basics</a></li>
    <li><a id="toc-Predicates-for-Strings-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Predicates-for-Strings.html">4.2 Predicates for Strings</a></li>
    <li><a id="toc-Creating-Strings-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Strings.html">4.3 Creating Strings</a></li>
    <li><a id="toc-Modifying-Strings-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Modifying-Strings.html">4.4 Modifying Strings</a></li>
    <li><a id="toc-Comparison-of-Characters-and-Strings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Text-Comparison.html">4.5 Comparison of Characters and Strings</a></li>
    <li><a id="toc-Conversion-of-Characters-and-Strings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/String-Conversion.html">4.6 Conversion of Characters and Strings</a></li>
    <li><a id="toc-Formatting-Strings-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Formatting-Strings.html">4.7 Formatting Strings</a></li>
    <li><a id="toc-Custom-Format-Strings-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Custom-Format-Strings.html">4.8 Custom Format Strings</a></li>
    <li><a id="toc-Case-Conversion-in-Lisp" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Case-Conversion.html">4.9 Case Conversion in Lisp</a></li>
    <li><a id="toc-The-Case-Table" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Case-Tables.html">4.10 The Case Table</a></li>
  </ul></li>
  <li><a id="toc-Lists-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lists.html">5 Lists</a>
  <ul class="no-bullet">
    <li><a id="toc-Lists-and-Cons-Cells" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cons-Cells.html">5.1 Lists and Cons Cells</a></li>
    <li><a id="toc-Predicates-on-Lists" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List_002drelated-Predicates.html">5.2 Predicates on Lists</a></li>
    <li><a id="toc-Accessing-Elements-of-Lists" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Elements.html">5.3 Accessing Elements of Lists</a></li>
    <li><a id="toc-Building-Cons-Cells-and-Lists" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Building-Lists.html">5.4 Building Cons Cells and Lists</a></li>
    <li><a id="toc-Modifying-List-Variables" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Variables.html">5.5 Modifying List Variables</a></li>
    <li><a id="toc-Modifying-Existing-List-Structure" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Modifying-Lists.html">5.6 Modifying Existing List Structure</a>
    <ul class="no-bullet">
      <li><a id="toc-Altering-List-Elements-with-setcar" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Setcar.html">5.6.1 Altering List Elements with <code>setcar</code></a></li>
      <li><a id="toc-Altering-the-CDR-of-a-List" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Setcdr.html">5.6.2 Altering the CDR of a List</a></li>
      <li><a id="toc-Functions-that-Rearrange-Lists" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Rearrangement.html">5.6.3 Functions that Rearrange Lists</a></li>
    </ul></li>
    <li><a id="toc-Using-Lists-as-Sets" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sets-And-Lists.html">5.7 Using Lists as Sets</a></li>
    <li><a id="toc-Association-Lists-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Association-Lists.html">5.8 Association Lists</a></li>
    <li><a id="toc-Property-Lists-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Property-Lists.html">5.9 Property Lists</a>
    <ul class="no-bullet">
      <li><a id="toc-Property-Lists-and-Association-Lists" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Plists-and-Alists.html">5.9.1 Property Lists and Association Lists</a></li>
      <li><a id="toc-Property-Lists-Outside-Symbols" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Plist-Access.html">5.9.2 Property Lists Outside Symbols</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-Sequences_002c-Arrays_002c-and-Vectors" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sequences-Arrays-Vectors.html">6 Sequences, Arrays, and Vectors</a>
  <ul class="no-bullet">
    <li><a id="toc-Sequences" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sequence-Functions.html">6.1 Sequences</a></li>
    <li><a id="toc-Arrays-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Arrays.html">6.2 Arrays</a></li>
    <li><a id="toc-Functions-that-Operate-on-Arrays" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Array-Functions.html">6.3 Functions that Operate on Arrays</a></li>
    <li><a id="toc-Vectors-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Vectors.html">6.4 Vectors</a></li>
    <li><a id="toc-Functions-for-Vectors" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Vector-Functions.html">6.5 Functions for Vectors</a></li>
    <li><a id="toc-Char_002dTables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Char_002dTables.html">6.6 Char-Tables</a></li>
    <li><a id="toc-Bool_002dvectors" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Bool_002dVectors.html">6.7 Bool-vectors</a></li>
    <li><a id="toc-Managing-a-Fixed_002dSize-Ring-of-Objects" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Rings.html">6.8 Managing a Fixed-Size Ring of Objects</a></li>
  </ul></li>
  <li><a id="toc-Records-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Records.html">7 Records</a>
  <ul class="no-bullet">
    <li><a id="toc-Record-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Record-Functions.html">7.1 Record Functions</a></li>
    <li><a id="toc-Backward-Compatibility-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Backward-Compatibility.html">7.2 Backward Compatibility</a></li>
  </ul></li>
  <li><a id="toc-Hash-Tables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Hash-Tables.html">8 Hash Tables</a>
  <ul class="no-bullet">
    <li><a id="toc-Creating-Hash-Tables" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Hash.html">8.1 Creating Hash Tables</a></li>
    <li><a id="toc-Hash-Table-Access" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Hash-Access.html">8.2 Hash Table Access</a></li>
    <li><a id="toc-Defining-Hash-Comparisons" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Hash.html">8.3 Defining Hash Comparisons</a></li>
    <li><a id="toc-Other-Hash-Table-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Other-Hash.html">8.4 Other Hash Table Functions</a></li>
  </ul></li>
  <li><a id="toc-Symbols-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Symbols.html">9 Symbols</a>
  <ul class="no-bullet">
    <li><a id="toc-Symbol-Components-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Symbol-Components.html">9.1 Symbol Components</a></li>
    <li><a id="toc-Defining-Symbols" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Definitions.html">9.2 Defining Symbols</a></li>
    <li><a id="toc-Creating-and-Interning-Symbols" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Symbols.html">9.3 Creating and Interning Symbols</a></li>
    <li><a id="toc-Symbol-Properties-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Symbol-Properties.html">9.4 Symbol Properties</a>
    <ul class="no-bullet">
      <li><a id="toc-Accessing-Symbol-Properties" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Symbol-Plists.html">9.4.1 Accessing Symbol Properties</a></li>
      <li><a id="toc-Standard-Symbol-Properties" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Standard-Properties.html">9.4.2 Standard Symbol Properties</a></li>
    </ul></li>
    <li><a id="toc-Shorthands-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Shorthands.html">9.5 Shorthands</a>
    <ul class="no-bullet">
      <li><a id="toc-Exceptions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Shorthands.html#Exceptions">9.5.1 Exceptions</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-Evaluation-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Evaluation.html">10 Evaluation</a>
  <ul class="no-bullet">
    <li><a id="toc-Introduction-to-Evaluation" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Intro-Eval.html">10.1 Introduction to Evaluation</a></li>
    <li><a id="toc-Kinds-of-Forms" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Forms.html">10.2 Kinds of Forms</a>
    <ul class="no-bullet">
      <li><a id="toc-Self_002dEvaluating-Forms-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Self_002dEvaluating-Forms.html">10.2.1 Self-Evaluating Forms</a></li>
      <li><a id="toc-Symbol-Forms-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Symbol-Forms.html">10.2.2 Symbol Forms</a></li>
      <li><a id="toc-Classification-of-List-Forms" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Classifying-Lists.html">10.2.3 Classification of List Forms</a></li>
      <li><a id="toc-Symbol-Function-Indirection" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Function-Indirection.html">10.2.4 Symbol Function Indirection</a></li>
      <li><a id="toc-Evaluation-of-Function-Forms" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Function-Forms.html">10.2.5 Evaluation of Function Forms</a></li>
      <li><a id="toc-Lisp-Macro-Evaluation" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Macro-Forms.html">10.2.6 Lisp Macro Evaluation</a></li>
      <li><a id="toc-Special-Forms-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Special-Forms.html">10.2.7 Special Forms</a></li>
      <li><a id="toc-Autoloading-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Autoloading.html">10.2.8 Autoloading</a></li>
    </ul></li>
    <li><a id="toc-Quoting-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Quoting.html">10.3 Quoting</a></li>
    <li><a id="toc-Backquote-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Backquote.html">10.4 Backquote</a></li>
    <li><a id="toc-Eval-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Eval.html">10.5 Eval</a></li>
    <li><a id="toc-Deferred-and-Lazy-Evaluation" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Deferred-Eval.html">10.6 Deferred and Lazy Evaluation</a></li>
  </ul></li>
  <li><a id="toc-Control-Structures-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Control-Structures.html">11 Control Structures</a>
  <ul class="no-bullet">
    <li><a id="toc-Sequencing-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sequencing.html">11.1 Sequencing</a></li>
    <li><a id="toc-Conditionals-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Conditionals.html">11.2 Conditionals</a></li>
    <li><a id="toc-Constructs-for-Combining-Conditions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Combining-Conditions.html">11.3 Constructs for Combining Conditions</a></li>
    <li><a id="toc-Pattern_002dMatching-Conditional-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Pattern_002dMatching-Conditional.html">11.4 Pattern-Matching Conditional</a>
    <ul class="no-bullet">
      <li><a id="toc-The-pcase-macro" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/pcase-Macro.html">11.4.1 The <code>pcase</code> macro</a></li>
      <li><a id="toc-Extending-pcase-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Extending-pcase.html">11.4.2 Extending <code>pcase</code></a></li>
      <li><a id="toc-Backquote_002dStyle-Patterns" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Backquote-Patterns.html">11.4.3 Backquote-Style Patterns</a></li>
      <li><a id="toc-Destructuring-with-pcase-Patterns-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Destructuring-with-pcase-Patterns.html">11.4.4 Destructuring with <code>pcase</code> Patterns</a></li>
    </ul></li>
    <li><a id="toc-Iteration-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Iteration.html">11.5 Iteration</a></li>
    <li><a id="toc-Generators-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Generators.html">11.6 Generators</a></li>
    <li><a id="toc-Nonlocal-Exits-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Nonlocal-Exits.html">11.7 Nonlocal Exits</a>
    <ul class="no-bullet">
      <li><a id="toc-Explicit-Nonlocal-Exits_003a-catch-and-throw" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Catch-and-Throw.html">11.7.1 Explicit Nonlocal Exits: <code>catch</code> and <code>throw</code></a></li>
      <li><a id="toc-Examples-of-catch-and-throw" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Examples-of-Catch.html">11.7.2 Examples of <code>catch</code> and <code>throw</code></a></li>
      <li><a id="toc-Errors-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Errors.html">11.7.3 Errors</a>
      <ul class="no-bullet">
        <li><a id="toc-How-to-Signal-an-Error" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Signaling-Errors.html">11.7.3.1 How to Signal an Error</a></li>
        <li><a id="toc-How-Emacs-Processes-Errors" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Processing-of-Errors.html">11.7.3.2 How Emacs Processes Errors</a></li>
        <li><a id="toc-Writing-Code-to-Handle-Errors" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Handling-Errors.html">11.7.3.3 Writing Code to Handle Errors</a></li>
        <li><a id="toc-Error-Symbols-and-Condition-Names" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Error-Symbols.html">11.7.3.4 Error Symbols and Condition Names</a></li>
      </ul></li>
      <li><a id="toc-Cleaning-Up-from-Nonlocal-Exits" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cleanups.html">11.7.4 Cleaning Up from Nonlocal Exits</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variables.html">12 Variables</a>
  <ul class="no-bullet">
    <li><a id="toc-Global-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Global-Variables.html">12.1 Global Variables</a></li>
    <li><a id="toc-Variables-that-Never-Change" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Constant-Variables.html">12.2 Variables that Never Change</a></li>
    <li><a id="toc-Local-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Local-Variables.html">12.3 Local Variables</a></li>
    <li><a id="toc-When-a-Variable-is-Void" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Void-Variables.html">12.4 When a Variable is Void</a></li>
    <li><a id="toc-Defining-Global-Variables" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Variables.html">12.5 Defining Global Variables</a></li>
    <li><a id="toc-Tips-for-Defining-Variables-Robustly" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Tips-for-Defining.html">12.6 Tips for Defining Variables Robustly</a></li>
    <li><a id="toc-Accessing-Variable-Values" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Accessing-Variables.html">12.7 Accessing Variable Values</a></li>
    <li><a id="toc-Setting-Variable-Values" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Setting-Variables.html">12.8 Setting Variable Values</a></li>
    <li><a id="toc-Running-a-function-when-a-variable-is-changed_002e" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Watching-Variables.html">12.9 Running a function when a variable is changed.</a>
    <ul class="no-bullet">
      <li><a id="toc-Limitations" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Watching-Variables.html#Limitations">12.9.1 Limitations</a></li>
    </ul></li>
    <li><a id="toc-Scoping-Rules-for-Variable-Bindings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variable-Scoping.html">12.10 Scoping Rules for Variable Bindings</a>
    <ul class="no-bullet">
      <li><a id="toc-Dynamic-Binding-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Dynamic-Binding.html">12.10.1 Dynamic Binding</a></li>
      <li><a id="toc-Proper-Use-of-Dynamic-Binding" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Dynamic-Binding-Tips.html">12.10.2 Proper Use of Dynamic Binding</a></li>
      <li><a id="toc-Lexical-Binding-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lexical-Binding.html">12.10.3 Lexical Binding</a></li>
      <li><a id="toc-Using-Lexical-Binding-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Using-Lexical-Binding.html">12.10.4 Using Lexical Binding</a></li>
      <li><a id="toc-Converting-to-Lexical-Binding-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Converting-to-Lexical-Binding.html">12.10.5 Converting to Lexical Binding</a></li>
    </ul></li>
    <li><a id="toc-Buffer_002dLocal-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer_002dLocal-Variables.html">12.11 Buffer-Local Variables</a>
    <ul class="no-bullet">
      <li><a id="toc-Introduction-to-Buffer_002dLocal-Variables" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Intro-to-Buffer_002dLocal.html">12.11.1 Introduction to Buffer-Local Variables</a></li>
      <li><a id="toc-Creating-and-Deleting-Buffer_002dLocal-Bindings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Buffer_002dLocal.html">12.11.2 Creating and Deleting Buffer-Local Bindings</a></li>
      <li><a id="toc-The-Default-Value-of-a-Buffer_002dLocal-Variable" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Default-Value.html">12.11.3 The Default Value of a Buffer-Local Variable</a></li>
    </ul></li>
    <li><a id="toc-File-Local-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/File-Local-Variables.html">12.12 File Local Variables</a></li>
    <li><a id="toc-Directory-Local-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Directory-Local-Variables.html">12.13 Directory Local Variables</a></li>
    <li><a id="toc-Connection-Local-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Connection-Local-Variables.html">12.14 Connection Local Variables</a></li>
    <li><a id="toc-Variable-Aliases-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variable-Aliases.html">12.15 Variable Aliases</a></li>
    <li><a id="toc-Variables-with-Restricted-Values-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variables-with-Restricted-Values.html">12.16 Variables with Restricted Values</a></li>
    <li><a id="toc-Generalized-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Generalized-Variables.html">12.17 Generalized Variables</a>
    <ul class="no-bullet">
      <li><a id="toc-The-setf-Macro" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Setting-Generalized-Variables.html">12.17.1 The <code>setf</code> Macro</a></li>
      <li><a id="toc-Defining-new-setf-forms" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Adding-Generalized-Variables.html">12.17.2 Defining new <code>setf</code> forms</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Functions.html">13 Functions</a>
  <ul class="no-bullet">
    <li><a id="toc-What-Is-a-Function_003f" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/What-Is-a-Function.html">13.1 What Is a Function?</a></li>
    <li><a id="toc-Lambda-Expressions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lambda-Expressions.html">13.2 Lambda Expressions</a>
    <ul class="no-bullet">
      <li><a id="toc-Components-of-a-Lambda-Expression" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lambda-Components.html">13.2.1 Components of a Lambda Expression</a></li>
      <li><a id="toc-A-Simple-Lambda-Expression-Example" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Simple-Lambda.html">13.2.2 A Simple Lambda Expression Example</a></li>
      <li><a id="toc-Features-of-Argument-Lists" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Argument-List.html">13.2.3 Features of Argument Lists</a></li>
      <li><a id="toc-Documentation-Strings-of-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Function-Documentation.html">13.2.4 Documentation Strings of Functions</a></li>
    </ul></li>
    <li><a id="toc-Naming-a-Function" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Function-Names.html">13.3 Naming a Function</a></li>
    <li><a id="toc-Defining-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Functions.html">13.4 Defining Functions</a></li>
    <li><a id="toc-Calling-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Calling-Functions.html">13.5 Calling Functions</a></li>
    <li><a id="toc-Mapping-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mapping-Functions.html">13.6 Mapping Functions</a></li>
    <li><a id="toc-Anonymous-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Anonymous-Functions.html">13.7 Anonymous Functions</a></li>
    <li><a id="toc-Generic-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Generic-Functions.html">13.8 Generic Functions</a></li>
    <li><a id="toc-Accessing-Function-Cell-Contents" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Function-Cells.html">13.9 Accessing Function Cell Contents</a></li>
    <li><a id="toc-Closures-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Closures.html">13.10 Closures</a></li>
    <li><a id="toc-Advising-Emacs-Lisp-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Advising-Functions.html">13.11 Advising Emacs Lisp Functions</a>
    <ul class="no-bullet">
      <li><a id="toc-Primitives-to-manipulate-advices" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Core-Advising-Primitives.html">13.11.1 Primitives to manipulate advices</a></li>
      <li><a id="toc-Advising-Named-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Advising-Named-Functions.html">13.11.2 Advising Named Functions</a></li>
      <li><a id="toc-Ways-to-compose-advice" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Advice-Combinators.html">13.11.3 Ways to compose advice</a></li>
      <li><a id="toc-Adapting-code-using-the-old-defadvice" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Porting-Old-Advice.html">13.11.4 Adapting code using the old defadvice</a></li>
    </ul></li>
    <li><a id="toc-Declaring-Functions-Obsolete" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Obsolete-Functions.html">13.12 Declaring Functions Obsolete</a></li>
    <li><a id="toc-Inline-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Inline-Functions.html">13.13 Inline Functions</a></li>
    <li><a id="toc-The-declare-Form" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Declare-Form.html">13.14 The <code>declare</code> Form</a></li>
    <li><a id="toc-Telling-the-Compiler-that-a-Function-is-Defined" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Declaring-Functions.html">13.15 Telling the Compiler that a Function is Defined</a></li>
    <li><a id="toc-Determining-whether-a-Function-is-Safe-to-Call" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Function-Safety.html">13.16 Determining whether a Function is Safe to Call</a></li>
    <li><a id="toc-Other-Topics-Related-to-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Related-Topics.html">13.17 Other Topics Related to Functions</a></li>
  </ul></li>
  <li><a id="toc-Macros-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Macros.html">14 Macros</a>
  <ul class="no-bullet">
    <li><a id="toc-A-Simple-Example-of-a-Macro" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Simple-Macro.html">14.1 A Simple Example of a Macro</a></li>
    <li><a id="toc-Expansion-of-a-Macro-Call" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Expansion.html">14.2 Expansion of a Macro Call</a></li>
    <li><a id="toc-Macros-and-Byte-Compilation" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Compiling-Macros.html">14.3 Macros and Byte Compilation</a></li>
    <li><a id="toc-Defining-Macros-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Macros.html">14.4 Defining Macros</a></li>
    <li><a id="toc-Common-Problems-Using-Macros" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Problems-with-Macros.html">14.5 Common Problems Using Macros</a>
    <ul class="no-bullet">
      <li><a id="toc-Wrong-Time-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Wrong-Time.html">14.5.1 Wrong Time</a></li>
      <li><a id="toc-Evaluating-Macro-Arguments-Repeatedly" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Argument-Evaluation.html">14.5.2 Evaluating Macro Arguments Repeatedly</a></li>
      <li><a id="toc-Local-Variables-in-Macro-Expansions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Surprising-Local-Vars.html">14.5.3 Local Variables in Macro Expansions</a></li>
      <li><a id="toc-Evaluating-Macro-Arguments-in-Expansion" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Eval-During-Expansion.html">14.5.4 Evaluating Macro Arguments in Expansion</a></li>
      <li><a id="toc-How-Many-Times-is-the-Macro-Expanded_003f" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Repeated-Expansion.html">14.5.5 How Many Times is the Macro Expanded?</a></li>
    </ul></li>
    <li><a id="toc-Indenting-Macros-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Indenting-Macros.html">14.6 Indenting Macros</a></li>
  </ul></li>
  <li><a id="toc-Customization-Settings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Customization.html">15 Customization Settings</a>
  <ul class="no-bullet">
    <li><a id="toc-Common-Item-Keywords" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Common-Keywords.html">15.1 Common Item Keywords</a></li>
    <li><a id="toc-Defining-Customization-Groups" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Group-Definitions.html">15.2 Defining Customization Groups</a></li>
    <li><a id="toc-Defining-Customization-Variables" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variable-Definitions.html">15.3 Defining Customization Variables</a></li>
    <li><a id="toc-Customization-Types-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Customization-Types.html">15.4 Customization Types</a>
    <ul class="no-bullet">
      <li><a id="toc-Simple-Types-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Simple-Types.html">15.4.1 Simple Types</a></li>
      <li><a id="toc-Composite-Types-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Composite-Types.html">15.4.2 Composite Types</a></li>
      <li><a id="toc-Splicing-into-Lists-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Splicing-into-Lists.html">15.4.3 Splicing into Lists</a></li>
      <li><a id="toc-Type-Keywords-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Type-Keywords.html">15.4.4 Type Keywords</a></li>
      <li><a id="toc-Defining-New-Types-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-New-Types.html">15.4.5 Defining New Types</a></li>
    </ul></li>
    <li><a id="toc-Applying-Customizations-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Applying-Customizations.html">15.5 Applying Customizations</a></li>
    <li><a id="toc-Custom-Themes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Custom-Themes.html">15.6 Custom Themes</a></li>
  </ul></li>
  <li><a id="toc-Loading-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Loading.html">16 Loading</a>
  <ul class="no-bullet">
    <li><a id="toc-How-Programs-Do-Loading-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/How-Programs-Do-Loading.html">16.1 How Programs Do Loading</a></li>
    <li><a id="toc-Load-Suffixes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Load-Suffixes.html">16.2 Load Suffixes</a></li>
    <li><a id="toc-Library-Search-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Library-Search.html">16.3 Library Search</a></li>
    <li><a id="toc-Loading-Non_002dASCII-Characters" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Loading-Non_002dASCII.html">16.4 Loading Non-<acronym>ASCII</acronym> Characters</a></li>
    <li><a id="toc-Autoload-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Autoload.html">16.5 Autoload</a>
    <ul class="no-bullet">
      <li><a id="toc-Autoload-by-Prefix-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Autoload-by-Prefix.html">16.5.1 Autoload by Prefix</a></li>
      <li><a id="toc-When-to-Use-Autoload" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/When-to-Autoload.html">16.5.2 When to Use Autoload</a></li>
    </ul></li>
    <li><a id="toc-Repeated-Loading-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Repeated-Loading.html">16.6 Repeated Loading</a></li>
    <li><a id="toc-Features" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Named-Features.html">16.7 Features</a></li>
    <li><a id="toc-Which-File-Defined-a-Certain-Symbol" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Where-Defined.html">16.8 Which File Defined a Certain Symbol</a></li>
    <li><a id="toc-Unloading-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Unloading.html">16.9 Unloading</a></li>
    <li><a id="toc-Hooks-for-Loading-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Hooks-for-Loading.html">16.10 Hooks for Loading</a></li>
    <li><a id="toc-Emacs-Dynamic-Modules" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Dynamic-Modules.html">16.11 Emacs Dynamic Modules</a></li>
  </ul></li>
  <li><a id="toc-Byte-Compilation-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Byte-Compilation.html">17 Byte Compilation</a>
  <ul class="no-bullet">
    <li><a id="toc-Performance-of-Byte_002dCompiled-Code" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Speed-of-Byte_002dCode.html">17.1 Performance of Byte-Compiled Code</a></li>
    <li><a id="toc-Byte_002dCompilation-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Compilation-Functions.html">17.2 Byte-Compilation Functions</a></li>
    <li><a id="toc-Documentation-Strings-and-Compilation" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Docs-and-Compilation.html">17.3 Documentation Strings and Compilation</a></li>
    <li><a id="toc-Dynamic-Loading-of-Individual-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Dynamic-Loading.html">17.4 Dynamic Loading of Individual Functions</a></li>
    <li><a id="toc-Evaluation-During-Compilation" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Eval-During-Compile.html">17.5 Evaluation During Compilation</a></li>
    <li><a id="toc-Compiler-Errors-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Compiler-Errors.html">17.6 Compiler Errors</a></li>
    <li><a id="toc-Byte_002dCode-Function-Objects" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Byte_002dCode-Objects.html">17.7 Byte-Code Function Objects</a></li>
    <li><a id="toc-Disassembled-Byte_002dCode" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Disassembly.html">17.8 Disassembled Byte-Code</a></li>
  </ul></li>
  <li><a id="toc-Compilation-of-Lisp-to-Native-Code" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Native-Compilation.html">18 Compilation of Lisp to Native Code</a>
  <ul class="no-bullet">
    <li><a id="toc-Native_002dCompilation-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Native_002dCompilation-Functions.html">18.1 Native-Compilation Functions</a></li>
    <li><a id="toc-Native_002dCompilation-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Native_002dCompilation-Variables.html">18.2 Native-Compilation Variables</a></li>
  </ul></li>
  <li><a id="toc-Debugging-Lisp-Programs" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Debugging.html">19 Debugging Lisp Programs</a>
  <ul class="no-bullet">
    <li><a id="toc-The-Lisp-Debugger" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Debugger.html">19.1 The Lisp Debugger</a>
    <ul class="no-bullet">
      <li><a id="toc-Entering-the-Debugger-on-an-Error" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Error-Debugging.html">19.1.1 Entering the Debugger on an Error</a></li>
      <li><a id="toc-Debugging-Infinite-Loops" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Infinite-Loops.html">19.1.2 Debugging Infinite Loops</a></li>
      <li><a id="toc-Entering-the-Debugger-on-a-Function-Call" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Function-Debugging.html">19.1.3 Entering the Debugger on a Function Call</a></li>
      <li><a id="toc-Entering-the-debugger-when-a-variable-is-modified" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variable-Debugging.html">19.1.4 Entering the debugger when a variable is modified</a></li>
      <li><a id="toc-Explicit-Entry-to-the-Debugger" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Explicit-Debug.html">19.1.5 Explicit Entry to the Debugger</a></li>
      <li><a id="toc-Using-the-Debugger" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Using-Debugger.html">19.1.6 Using the Debugger</a></li>
      <li><a id="toc-Backtraces-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Backtraces.html">19.1.7 Backtraces</a></li>
      <li><a id="toc-Debugger-Commands-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Debugger-Commands.html">19.1.8 Debugger Commands</a></li>
      <li><a id="toc-Invoking-the-Debugger-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Invoking-the-Debugger.html">19.1.9 Invoking the Debugger</a></li>
      <li><a id="toc-Internals-of-the-Debugger" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Internals-of-Debugger.html">19.1.10 Internals of the Debugger</a></li>
    </ul></li>
    <li><a id="toc-Edebug-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Edebug.html">19.2 Edebug</a>
    <ul class="no-bullet">
      <li><a id="toc-Using-Edebug-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Using-Edebug.html">19.2.1 Using Edebug</a></li>
      <li><a id="toc-Instrumenting-for-Edebug" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Instrumenting.html">19.2.2 Instrumenting for Edebug</a></li>
      <li><a id="toc-Edebug-Execution-Modes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Edebug-Execution-Modes.html">19.2.3 Edebug Execution Modes</a></li>
      <li><a id="toc-Jumping-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Jumping.html">19.2.4 Jumping</a></li>
      <li><a id="toc-Miscellaneous-Edebug-Commands" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Edebug-Misc.html">19.2.5 Miscellaneous Edebug Commands</a></li>
      <li><a id="toc-Breaks-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Breaks.html">19.2.6 Breaks</a>
      <ul class="no-bullet">
        <li><a id="toc-Edebug-Breakpoints" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Breakpoints.html">19.2.6.1 Edebug Breakpoints</a></li>
        <li><a id="toc-Global-Break-Condition-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Global-Break-Condition.html">19.2.6.2 Global Break Condition</a></li>
        <li><a id="toc-Source-Breakpoints-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Source-Breakpoints.html">19.2.6.3 Source Breakpoints</a></li>
      </ul></li>
      <li><a id="toc-Trapping-Errors-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Trapping-Errors.html">19.2.7 Trapping Errors</a></li>
      <li><a id="toc-Edebug-Views-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Edebug-Views.html">19.2.8 Edebug Views</a></li>
      <li><a id="toc-Evaluation-2" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Edebug-Eval.html">19.2.9 Evaluation</a></li>
      <li><a id="toc-Evaluation-List-Buffer" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Eval-List.html">19.2.10 Evaluation List Buffer</a></li>
      <li><a id="toc-Printing-in-Edebug-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Printing-in-Edebug.html">19.2.11 Printing in Edebug</a></li>
      <li><a id="toc-Trace-Buffer-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Trace-Buffer.html">19.2.12 Trace Buffer</a></li>
      <li><a id="toc-Coverage-Testing-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Coverage-Testing.html">19.2.13 Coverage Testing</a></li>
      <li><a id="toc-The-Outside-Context-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/The-Outside-Context.html">19.2.14 The Outside Context</a>
      <ul class="no-bullet">
        <li><a id="toc-Checking-Whether-to-Stop-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Checking-Whether-to-Stop.html">19.2.14.1 Checking Whether to Stop</a></li>
        <li><a id="toc-Edebug-Display-Update-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Edebug-Display-Update.html">19.2.14.2 Edebug Display Update</a></li>
        <li><a id="toc-Edebug-Recursive-Edit-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Edebug-Recursive-Edit.html">19.2.14.3 Edebug Recursive Edit</a></li>
      </ul></li>
      <li><a id="toc-Edebug-and-Macros-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Edebug-and-Macros.html">19.2.15 Edebug and Macros</a>
      <ul class="no-bullet">
        <li><a id="toc-Instrumenting-Macro-Calls-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Instrumenting-Macro-Calls.html">19.2.15.1 Instrumenting Macro Calls</a></li>
        <li><a id="toc-Specification-List-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Specification-List.html">19.2.15.2 Specification List</a></li>
        <li><a id="toc-Backtracking-in-Specifications" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Backtracking.html">19.2.15.3 Backtracking in Specifications</a></li>
        <li><a id="toc-Specification-Examples-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Specification-Examples.html">19.2.15.4 Specification Examples</a></li>
      </ul></li>
      <li><a id="toc-Edebug-Options-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Edebug-Options.html">19.2.16 Edebug Options</a></li>
    </ul></li>
    <li><a id="toc-Debugging-Invalid-Lisp-Syntax" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-Errors.html">19.3 Debugging Invalid Lisp Syntax</a>
    <ul class="no-bullet">
      <li><a id="toc-Excess-Open-Parentheses" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Excess-Open.html">19.3.1 Excess Open Parentheses</a></li>
      <li><a id="toc-Excess-Close-Parentheses" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Excess-Close.html">19.3.2 Excess Close Parentheses</a></li>
    </ul></li>
    <li><a id="toc-Test-Coverage-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Test-Coverage.html">19.4 Test Coverage</a></li>
    <li><a id="toc-Profiling-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Profiling.html">19.5 Profiling</a></li>
  </ul></li>
  <li><a id="toc-Reading-and-Printing-Lisp-Objects" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Read-and-Print.html">20 Reading and Printing Lisp Objects</a>
  <ul class="no-bullet">
    <li><a id="toc-Introduction-to-Reading-and-Printing" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Streams-Intro.html">20.1 Introduction to Reading and Printing</a></li>
    <li><a id="toc-Input-Streams-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Input-Streams.html">20.2 Input Streams</a></li>
    <li><a id="toc-Input-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Input-Functions.html">20.3 Input Functions</a></li>
    <li><a id="toc-Output-Streams-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Output-Streams.html">20.4 Output Streams</a></li>
    <li><a id="toc-Output-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Output-Functions.html">20.5 Output Functions</a></li>
    <li><a id="toc-Variables-Affecting-Output" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Output-Variables.html">20.6 Variables Affecting Output</a></li>
  </ul></li>
  <li><a id="toc-Minibuffers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Minibuffers.html">21 Minibuffers</a>
  <ul class="no-bullet">
    <li><a id="toc-Introduction-to-Minibuffers" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Intro-to-Minibuffers.html">21.1 Introduction to Minibuffers</a></li>
    <li><a id="toc-Reading-Text-Strings-with-the-Minibuffer" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Text-from-Minibuffer.html">21.2 Reading Text Strings with the Minibuffer</a></li>
    <li><a id="toc-Reading-Lisp-Objects-with-the-Minibuffer" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Object-from-Minibuffer.html">21.3 Reading Lisp Objects with the Minibuffer</a></li>
    <li><a id="toc-Minibuffer-History-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Minibuffer-History.html">21.4 Minibuffer History</a></li>
    <li><a id="toc-Initial-Input-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Initial-Input.html">21.5 Initial Input</a></li>
    <li><a id="toc-Completion-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Completion.html">21.6 Completion</a>
    <ul class="no-bullet">
      <li><a id="toc-Basic-Completion-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Basic-Completion.html">21.6.1 Basic Completion Functions</a></li>
      <li><a id="toc-Completion-and-the-Minibuffer" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Minibuffer-Completion.html">21.6.2 Completion and the Minibuffer</a></li>
      <li><a id="toc-Minibuffer-Commands-that-Do-Completion" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Completion-Commands.html">21.6.3 Minibuffer Commands that Do Completion</a></li>
      <li><a id="toc-High_002dLevel-Completion-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/High_002dLevel-Completion.html">21.6.4 High-Level Completion Functions</a></li>
      <li><a id="toc-Reading-File-Names-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Reading-File-Names.html">21.6.5 Reading File Names</a></li>
      <li><a id="toc-Completion-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Completion-Variables.html">21.6.6 Completion Variables</a></li>
      <li><a id="toc-Programmed-Completion-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Programmed-Completion.html">21.6.7 Programmed Completion</a></li>
      <li><a id="toc-Completion-in-Ordinary-Buffers" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Completion-in-Buffers.html">21.6.8 Completion in Ordinary Buffers</a></li>
    </ul></li>
    <li><a id="toc-Yes_002dor_002dNo-Queries-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Yes_002dor_002dNo-Queries.html">21.7 Yes-or-No Queries</a></li>
    <li><a id="toc-Asking-Multiple_002dChoice-Questions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Multiple-Queries.html">21.8 Asking Multiple-Choice Questions</a></li>
    <li><a id="toc-Reading-a-Password-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Reading-a-Password.html">21.9 Reading a Password</a></li>
    <li><a id="toc-Minibuffer-Commands-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Minibuffer-Commands.html">21.10 Minibuffer Commands</a></li>
    <li><a id="toc-Minibuffer-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Minibuffer-Windows.html">21.11 Minibuffer Windows</a></li>
    <li><a id="toc-Minibuffer-Contents-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Minibuffer-Contents.html">21.12 Minibuffer Contents</a></li>
    <li><a id="toc-Recursive-Minibuffers" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Recursive-Mini.html">21.13 Recursive Minibuffers</a></li>
    <li><a id="toc-Inhibiting-Interaction-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Inhibiting-Interaction.html">21.14 Inhibiting Interaction</a></li>
    <li><a id="toc-Minibuffer-Miscellany" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Minibuffer-Misc.html">21.15 Minibuffer Miscellany</a></li>
  </ul></li>
  <li><a id="toc-Command-Loop-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Command-Loop.html">22 Command Loop</a>
  <ul class="no-bullet">
    <li><a id="toc-Command-Loop-Overview" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Command-Overview.html">22.1 Command Loop Overview</a></li>
    <li><a id="toc-Defining-Commands-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Commands.html">22.2 Defining Commands</a>
    <ul class="no-bullet">
      <li><a id="toc-Using-interactive" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Using-Interactive.html">22.2.1 Using <code>interactive</code></a></li>
      <li><a id="toc-Code-Characters-for-interactive" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Interactive-Codes.html">22.2.2 Code Characters for <code>interactive</code></a></li>
      <li><a id="toc-Examples-of-Using-interactive" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Interactive-Examples.html">22.2.3 Examples of Using <code>interactive</code></a></li>
      <li><a id="toc-Specifying-Modes-For-Commands" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Command-Modes.html">22.2.4 Specifying Modes For Commands</a></li>
      <li><a id="toc-Select-among-Command-Alternatives" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Generic-Commands.html">22.2.5 Select among Command Alternatives</a></li>
    </ul></li>
    <li><a id="toc-Interactive-Call-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Interactive-Call.html">22.3 Interactive Call</a></li>
    <li><a id="toc-Distinguish-Interactive-Calls" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Distinguish-Interactive.html">22.4 Distinguish Interactive Calls</a></li>
    <li><a id="toc-Information-from-the-Command-Loop" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Command-Loop-Info.html">22.5 Information from the Command Loop</a></li>
    <li><a id="toc-Adjusting-Point-After-Commands" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Adjusting-Point.html">22.6 Adjusting Point After Commands</a></li>
    <li><a id="toc-Input-Events-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Input-Events.html">22.7 Input Events</a>
    <ul class="no-bullet">
      <li><a id="toc-Keyboard-Events-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Keyboard-Events.html">22.7.1 Keyboard Events</a></li>
      <li><a id="toc-Function-Keys-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Function-Keys.html">22.7.2 Function Keys</a></li>
      <li><a id="toc-Mouse-Events-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mouse-Events.html">22.7.3 Mouse Events</a></li>
      <li><a id="toc-Click-Events-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Click-Events.html">22.7.4 Click Events</a></li>
      <li><a id="toc-Drag-Events-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Drag-Events.html">22.7.5 Drag Events</a></li>
      <li><a id="toc-Button_002dDown-Events-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Button_002dDown-Events.html">22.7.6 Button-Down Events</a></li>
      <li><a id="toc-Repeat-Events-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Repeat-Events.html">22.7.7 Repeat Events</a></li>
      <li><a id="toc-Motion-Events-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Motion-Events.html">22.7.8 Motion Events</a></li>
      <li><a id="toc-Focus-Events-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Focus-Events.html">22.7.9 Focus Events</a></li>
      <li><a id="toc-Miscellaneous-System-Events" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Misc-Events.html">22.7.10 Miscellaneous System Events</a></li>
      <li><a id="toc-Event-Examples-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Event-Examples.html">22.7.11 Event Examples</a></li>
      <li><a id="toc-Classifying-Events-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Classifying-Events.html">22.7.12 Classifying Events</a></li>
      <li><a id="toc-Accessing-Mouse-Events" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Accessing-Mouse.html">22.7.13 Accessing Mouse Events</a></li>
      <li><a id="toc-Accessing-Scroll-Bar-Events" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Accessing-Scroll.html">22.7.14 Accessing Scroll Bar Events</a></li>
      <li><a id="toc-Putting-Keyboard-Events-in-Strings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Strings-of-Events.html">22.7.15 Putting Keyboard Events in Strings</a></li>
    </ul></li>
    <li><a id="toc-Reading-Input-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Reading-Input.html">22.8 Reading Input</a>
    <ul class="no-bullet">
      <li><a id="toc-Key-Sequence-Input-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Sequence-Input.html">22.8.1 Key Sequence Input</a></li>
      <li><a id="toc-Reading-One-Event-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Reading-One-Event.html">22.8.2 Reading One Event</a></li>
      <li><a id="toc-Modifying-and-Translating-Input-Events" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Event-Mod.html">22.8.3 Modifying and Translating Input Events</a></li>
      <li><a id="toc-Invoking-the-Input-Method-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Invoking-the-Input-Method.html">22.8.4 Invoking the Input Method</a></li>
      <li><a id="toc-Quoted-Character-Input-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Quoted-Character-Input.html">22.8.5 Quoted Character Input</a></li>
      <li><a id="toc-Miscellaneous-Event-Input-Features" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Event-Input-Misc.html">22.8.6 Miscellaneous Event Input Features</a></li>
    </ul></li>
    <li><a id="toc-Special-Events-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Special-Events.html">22.9 Special Events</a></li>
    <li><a id="toc-Waiting-for-Elapsed-Time-or-Input" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Waiting.html">22.10 Waiting for Elapsed Time or Input</a></li>
    <li><a id="toc-Quitting-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Quitting.html">22.11 Quitting</a></li>
    <li><a id="toc-Prefix-Command-Arguments-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Prefix-Command-Arguments.html">22.12 Prefix Command Arguments</a></li>
    <li><a id="toc-Recursive-Editing-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Recursive-Editing.html">22.13 Recursive Editing</a></li>
    <li><a id="toc-Disabling-Commands-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Disabling-Commands.html">22.14 Disabling Commands</a></li>
    <li><a id="toc-Command-History-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Command-History.html">22.15 Command History</a></li>
    <li><a id="toc-Keyboard-Macros-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Keyboard-Macros.html">22.16 Keyboard Macros</a></li>
  </ul></li>
  <li><a id="toc-Keymaps-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Keymaps.html">23 Keymaps</a>
  <ul class="no-bullet">
    <li><a id="toc-Key-Sequences-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Sequences.html">23.1 Key Sequences</a></li>
    <li><a id="toc-Keymap-Basics-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Keymap-Basics.html">23.2 Keymap Basics</a></li>
    <li><a id="toc-Format-of-Keymaps-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Format-of-Keymaps.html">23.3 Format of Keymaps</a></li>
    <li><a id="toc-Creating-Keymaps-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Keymaps.html">23.4 Creating Keymaps</a></li>
    <li><a id="toc-Inheritance-and-Keymaps-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Inheritance-and-Keymaps.html">23.5 Inheritance and Keymaps</a></li>
    <li><a id="toc-Prefix-Keys-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Prefix-Keys.html">23.6 Prefix Keys</a></li>
    <li><a id="toc-Active-Keymaps-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Active-Keymaps.html">23.7 Active Keymaps</a></li>
    <li><a id="toc-Searching-the-Active-Keymaps" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Searching-Keymaps.html">23.8 Searching the Active Keymaps</a></li>
    <li><a id="toc-Controlling-the-Active-Keymaps" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Controlling-Active-Maps.html">23.9 Controlling the Active Keymaps</a></li>
    <li><a id="toc-Key-Lookup-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Lookup.html">23.10 Key Lookup</a></li>
    <li><a id="toc-Functions-for-Key-Lookup-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Functions-for-Key-Lookup.html">23.11 Functions for Key Lookup</a></li>
    <li><a id="toc-Changing-Key-Bindings-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Changing-Key-Bindings.html">23.12 Changing Key Bindings</a></li>
    <li><a id="toc-Remapping-Commands-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Remapping-Commands.html">23.13 Remapping Commands</a></li>
    <li><a id="toc-Keymaps-for-Translating-Sequences-of-Events" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Translation-Keymaps.html">23.14 Keymaps for Translating Sequences of Events</a>
    <ul class="no-bullet">
      <li><a id="toc-Interaction-with-normal-keymaps" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Translation-Keymaps.html#Interaction-with-normal-keymaps">23.14.1 Interaction with normal keymaps</a></li>
    </ul></li>
    <li><a id="toc-Commands-for-Binding-Keys" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Commands.html">23.15 Commands for Binding Keys</a></li>
    <li><a id="toc-Scanning-Keymaps-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Scanning-Keymaps.html">23.16 Scanning Keymaps</a></li>
    <li><a id="toc-Menu-Keymaps-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Menu-Keymaps.html">23.17 Menu Keymaps</a>
    <ul class="no-bullet">
      <li><a id="toc-Defining-Menus-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Menus.html">23.17.1 Defining Menus</a>
      <ul class="no-bullet">
        <li><a id="toc-Simple-Menu-Items-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Simple-Menu-Items.html">23.17.1.1 Simple Menu Items</a></li>
        <li><a id="toc-Extended-Menu-Items-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Extended-Menu-Items.html">23.17.1.2 Extended Menu Items</a></li>
        <li><a id="toc-Menu-Separators-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Menu-Separators.html">23.17.1.3 Menu Separators</a></li>
        <li><a id="toc-Alias-Menu-Items-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Alias-Menu-Items.html">23.17.1.4 Alias Menu Items</a></li>
      </ul></li>
      <li><a id="toc-Menus-and-the-Mouse" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mouse-Menus.html">23.17.2 Menus and the Mouse</a></li>
      <li><a id="toc-Menus-and-the-Keyboard" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Keyboard-Menus.html">23.17.3 Menus and the Keyboard</a></li>
      <li><a id="toc-Menu-Example-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Menu-Example.html">23.17.4 Menu Example</a></li>
      <li><a id="toc-The-Menu-Bar" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Menu-Bar.html">23.17.5 The Menu Bar</a></li>
      <li><a id="toc-Tool-bars" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Tool-Bar.html">23.17.6 Tool bars</a></li>
      <li><a id="toc-Modifying-Menus-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Modifying-Menus.html">23.17.7 Modifying Menus</a></li>
      <li><a id="toc-Easy-Menu-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Easy-Menu.html">23.17.8 Easy Menu</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-Major-and-Minor-Modes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Modes.html">24 Major and Minor Modes</a>
  <ul class="no-bullet">
    <li><a id="toc-Hooks-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Hooks.html">24.1 Hooks</a>
    <ul class="no-bullet">
      <li><a id="toc-Running-Hooks-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Running-Hooks.html">24.1.1 Running Hooks</a></li>
      <li><a id="toc-Setting-Hooks-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Setting-Hooks.html">24.1.2 Setting Hooks</a></li>
    </ul></li>
    <li><a id="toc-Major-Modes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Major-Modes.html">24.2 Major Modes</a>
    <ul class="no-bullet">
      <li><a id="toc-Major-Mode-Conventions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Major-Mode-Conventions.html">24.2.1 Major Mode Conventions</a></li>
      <li><a id="toc-How-Emacs-Chooses-a-Major-Mode" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Auto-Major-Mode.html">24.2.2 How Emacs Chooses a Major Mode</a></li>
      <li><a id="toc-Getting-Help-about-a-Major-Mode" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mode-Help.html">24.2.3 Getting Help about a Major Mode</a></li>
      <li><a id="toc-Defining-Derived-Modes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Derived-Modes.html">24.2.4 Defining Derived Modes</a></li>
      <li><a id="toc-Basic-Major-Modes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Basic-Major-Modes.html">24.2.5 Basic Major Modes</a></li>
      <li><a id="toc-Mode-Hooks-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mode-Hooks.html">24.2.6 Mode Hooks</a></li>
      <li><a id="toc-Tabulated-List-mode" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Tabulated-List-Mode.html">24.2.7 Tabulated List mode</a></li>
      <li><a id="toc-Generic-Modes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Generic-Modes.html">24.2.8 Generic Modes</a></li>
      <li><a id="toc-Major-Mode-Examples" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Example-Major-Modes.html">24.2.9 Major Mode Examples</a></li>
    </ul></li>
    <li><a id="toc-Minor-Modes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Minor-Modes.html">24.3 Minor Modes</a>
    <ul class="no-bullet">
      <li><a id="toc-Conventions-for-Writing-Minor-Modes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Minor-Mode-Conventions.html">24.3.1 Conventions for Writing Minor Modes</a></li>
      <li><a id="toc-Keymaps-and-Minor-Modes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Keymaps-and-Minor-Modes.html">24.3.2 Keymaps and Minor Modes</a></li>
      <li><a id="toc-Defining-Minor-Modes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Minor-Modes.html">24.3.3 Defining Minor Modes</a></li>
    </ul></li>
    <li><a id="toc-Mode-Line-Format-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mode-Line-Format.html">24.4 Mode Line Format</a>
    <ul class="no-bullet">
      <li><a id="toc-Mode-Line-Basics-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mode-Line-Basics.html">24.4.1 Mode Line Basics</a></li>
      <li><a id="toc-The-Data-Structure-of-the-Mode-Line" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mode-Line-Data.html">24.4.2 The Data Structure of the Mode Line</a></li>
      <li><a id="toc-The-Top-Level-of-Mode-Line-Control" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mode-Line-Top.html">24.4.3 The Top Level of Mode Line Control</a></li>
      <li><a id="toc-Variables-Used-in-the-Mode-Line" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mode-Line-Variables.html">24.4.4 Variables Used in the Mode Line</a></li>
      <li><a id="toc-_0025_002dConstructs-in-the-Mode-Line" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/_0025_002dConstructs.html">24.4.5 <code>%</code>-Constructs in the Mode Line</a></li>
      <li><a id="toc-Properties-in-the-Mode-Line" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Properties-in-Mode.html">24.4.6 Properties in the Mode Line</a></li>
      <li><a id="toc-Window-Header-Lines" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Header-Lines.html">24.4.7 Window Header Lines</a></li>
      <li><a id="toc-Emulating-Mode-Line-Formatting" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Emulating-Mode-Line.html">24.4.8 Emulating Mode Line Formatting</a></li>
    </ul></li>
    <li><a id="toc-Imenu-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Imenu.html">24.5 Imenu</a></li>
    <li><a id="toc-Font-Lock-Mode-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Font-Lock-Mode.html">24.6 Font Lock Mode</a>
    <ul class="no-bullet">
      <li><a id="toc-Font-Lock-Basics-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Font-Lock-Basics.html">24.6.1 Font Lock Basics</a></li>
      <li><a id="toc-Search_002dbased-Fontification-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Search_002dbased-Fontification.html">24.6.2 Search-based Fontification</a></li>
      <li><a id="toc-Customizing-Search_002dBased-Fontification" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Customizing-Keywords.html">24.6.3 Customizing Search-Based Fontification</a></li>
      <li><a id="toc-Other-Font-Lock-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Other-Font-Lock-Variables.html">24.6.4 Other Font Lock Variables</a></li>
      <li><a id="toc-Levels-of-Font-Lock-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Levels-of-Font-Lock.html">24.6.5 Levels of Font Lock</a></li>
      <li><a id="toc-Precalculated-Fontification-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Precalculated-Fontification.html">24.6.6 Precalculated Fontification</a></li>
      <li><a id="toc-Faces-for-Font-Lock-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Faces-for-Font-Lock.html">24.6.7 Faces for Font Lock</a></li>
      <li><a id="toc-Syntactic-Font-Lock-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntactic-Font-Lock.html">24.6.8 Syntactic Font Lock</a></li>
      <li><a id="toc-Multiline-Font-Lock-Constructs" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Multiline-Font-Lock.html">24.6.9 Multiline Font Lock Constructs</a>
      <ul class="no-bullet">
        <li><a id="toc-Font-Lock-Multiline-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Font-Lock-Multiline.html">24.6.9.1 Font Lock Multiline</a></li>
        <li><a id="toc-Region-to-Fontify-after-a-Buffer-Change" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Region-to-Refontify.html">24.6.9.2 Region to Fontify after a Buffer Change</a></li>
      </ul></li>
    </ul></li>
    <li><a id="toc-Automatic-Indentation-of-code" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Auto_002dIndentation.html">24.7 Automatic Indentation of code</a>
    <ul class="no-bullet">
      <li><a id="toc-Simple-Minded-Indentation-Engine" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/SMIE.html">24.7.1 Simple Minded Indentation Engine</a>
      <ul class="no-bullet">
        <li><a id="toc-SMIE-Setup-and-Features" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/SMIE-setup.html">24.7.1.1 SMIE Setup and Features</a></li>
        <li><a id="toc-Operator-Precedence-Grammars-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Operator-Precedence-Grammars.html">24.7.1.2 Operator Precedence Grammars</a></li>
        <li><a id="toc-Defining-the-Grammar-of-a-Language" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/SMIE-Grammar.html">24.7.1.3 Defining the Grammar of a Language</a></li>
        <li><a id="toc-Defining-Tokens" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/SMIE-Lexer.html">24.7.1.4 Defining Tokens</a></li>
        <li><a id="toc-Living-With-a-Weak-Parser" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/SMIE-Tricks.html">24.7.1.5 Living With a Weak Parser</a></li>
        <li><a id="toc-Specifying-Indentation-Rules" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/SMIE-Indentation.html">24.7.1.6 Specifying Indentation Rules</a></li>
        <li><a id="toc-Helper-Functions-for-Indentation-Rules" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/SMIE-Indentation-Helpers.html">24.7.1.7 Helper Functions for Indentation Rules</a></li>
        <li><a id="toc-Sample-Indentation-Rules" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/SMIE-Indentation-Example.html">24.7.1.8 Sample Indentation Rules</a></li>
        <li><a id="toc-Customizing-Indentation" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/SMIE-Customization.html">24.7.1.9 Customizing Indentation</a></li>
      </ul></li>
    </ul></li>
    <li><a id="toc-Desktop-Save-Mode-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Desktop-Save-Mode.html">24.8 Desktop Save Mode</a></li>
  </ul></li>
  <li><a id="toc-Documentation-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Documentation.html">25 Documentation</a>
  <ul class="no-bullet">
    <li><a id="toc-Documentation-Basics-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Documentation-Basics.html">25.1 Documentation Basics</a></li>
    <li><a id="toc-Access-to-Documentation-Strings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Accessing-Documentation.html">25.2 Access to Documentation Strings</a></li>
    <li><a id="toc-Substituting-Key-Bindings-in-Documentation" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Keys-in-Documentation.html">25.3 Substituting Key Bindings in Documentation</a></li>
    <li><a id="toc-Text-Quoting-Style-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Text-Quoting-Style.html">25.4 Text Quoting Style</a></li>
    <li><a id="toc-Describing-Characters-for-Help-Messages" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Describing-Characters.html">25.5 Describing Characters for Help Messages</a></li>
    <li><a id="toc-Help-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Help-Functions.html">25.6 Help Functions</a></li>
    <li><a id="toc-Documentation-Groups-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Documentation-Groups.html">25.7 Documentation Groups</a></li>
  </ul></li>
  <li><a id="toc-Files-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Files.html">26 Files</a>
  <ul class="no-bullet">
    <li><a id="toc-Visiting-Files-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Visiting-Files.html">26.1 Visiting Files</a>
    <ul class="no-bullet">
      <li><a id="toc-Functions-for-Visiting-Files" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Visiting-Functions.html">26.1.1 Functions for Visiting Files</a></li>
      <li><a id="toc-Subroutines-of-Visiting-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Subroutines-of-Visiting.html">26.1.2 Subroutines of Visiting</a></li>
    </ul></li>
    <li><a id="toc-Saving-Buffers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Saving-Buffers.html">26.2 Saving Buffers</a></li>
    <li><a id="toc-Reading-from-Files-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Reading-from-Files.html">26.3 Reading from Files</a></li>
    <li><a id="toc-Writing-to-Files-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Writing-to-Files.html">26.4 Writing to Files</a></li>
    <li><a id="toc-File-Locks-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/File-Locks.html">26.5 File Locks</a></li>
    <li><a id="toc-Information-about-Files-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Information-about-Files.html">26.6 Information about Files</a>
    <ul class="no-bullet">
      <li><a id="toc-Testing-Accessibility-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Testing-Accessibility.html">26.6.1 Testing Accessibility</a></li>
      <li><a id="toc-Distinguishing-Kinds-of-Files" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Kinds-of-Files.html">26.6.2 Distinguishing Kinds of Files</a></li>
      <li><a id="toc-Truenames-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Truenames.html">26.6.3 Truenames</a></li>
      <li><a id="toc-File-Attributes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/File-Attributes.html">26.6.4 File Attributes</a></li>
      <li><a id="toc-Extended-File-Attributes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Extended-Attributes.html">26.6.5 Extended File Attributes</a></li>
      <li><a id="toc-Locating-Files-in-Standard-Places" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Locating-Files.html">26.6.6 Locating Files in Standard Places</a></li>
    </ul></li>
    <li><a id="toc-Changing-File-Names-and-Attributes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Changing-Files.html">26.7 Changing File Names and Attributes</a></li>
    <li><a id="toc-Files-and-Secondary-Storage" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Files-and-Storage.html">26.8 Files and Secondary Storage</a></li>
    <li><a id="toc-File-Names-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/File-Names.html">26.9 File Names</a>
    <ul class="no-bullet">
      <li><a id="toc-File-Name-Components-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/File-Name-Components.html">26.9.1 File Name Components</a></li>
      <li><a id="toc-Absolute-and-Relative-File-Names" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Relative-File-Names.html">26.9.2 Absolute and Relative File Names</a></li>
      <li><a id="toc-Directory-Names-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Directory-Names.html">26.9.3 Directory Names</a></li>
      <li><a id="toc-Functions-that-Expand-Filenames" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/File-Name-Expansion.html">26.9.4 Functions that Expand Filenames</a></li>
      <li><a id="toc-Generating-Unique-File-Names" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Unique-File-Names.html">26.9.5 Generating Unique File Names</a></li>
      <li><a id="toc-File-Name-Completion-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/File-Name-Completion.html">26.9.6 File Name Completion</a></li>
      <li><a id="toc-Standard-File-Names-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Standard-File-Names.html">26.9.7 Standard File Names</a></li>
    </ul></li>
    <li><a id="toc-Contents-of-Directories-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Contents-of-Directories.html">26.10 Contents of Directories</a></li>
    <li><a id="toc-Creating_002c-Copying-and-Deleting-Directories" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Create_002fDelete-Dirs.html">26.11 Creating, Copying and Deleting Directories</a></li>
    <li><a id="toc-Making-Certain-File-Names-_0060_0060Magic_0027_0027" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Magic-File-Names.html">26.12 Making Certain File Names “Magic”</a></li>
    <li><a id="toc-File-Format-Conversion" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Format-Conversion.html">26.13 File Format Conversion</a>
    <ul class="no-bullet">
      <li><a id="toc-Overview" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Format-Conversion-Overview.html">26.13.1 Overview</a></li>
      <li><a id="toc-Round_002dTrip-Specification" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Format-Conversion-Round_002dTrip.html">26.13.2 Round-Trip Specification</a></li>
      <li><a id="toc-Piecemeal-Specification" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Format-Conversion-Piecemeal.html">26.13.3 Piecemeal Specification</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-Backups-and-Auto_002dSaving-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Backups-and-Auto_002dSaving.html">27 Backups and Auto-Saving</a>
  <ul class="no-bullet">
    <li><a id="toc-Backup-Files-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Backup-Files.html">27.1 Backup Files</a>
    <ul class="no-bullet">
      <li><a id="toc-Making-Backup-Files" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Making-Backups.html">27.1.1 Making Backup Files</a></li>
      <li><a id="toc-Backup-by-Renaming-or-by-Copying_003f" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Rename-or-Copy.html">27.1.2 Backup by Renaming or by Copying?</a></li>
      <li><a id="toc-Making-and-Deleting-Numbered-Backup-Files" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Numbered-Backups.html">27.1.3 Making and Deleting Numbered Backup Files</a></li>
      <li><a id="toc-Naming-Backup-Files" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Backup-Names.html">27.1.4 Naming Backup Files</a></li>
    </ul></li>
    <li><a id="toc-Auto_002dSaving-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Auto_002dSaving.html">27.2 Auto-Saving</a></li>
    <li><a id="toc-Reverting-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Reverting.html">27.3 Reverting</a></li>
  </ul></li>
  <li><a id="toc-Buffers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffers.html">28 Buffers</a>
  <ul class="no-bullet">
    <li><a id="toc-Buffer-Basics-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Basics.html">28.1 Buffer Basics</a></li>
    <li><a id="toc-The-Current-Buffer" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Current-Buffer.html">28.2 The Current Buffer</a></li>
    <li><a id="toc-Buffer-Names-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Names.html">28.3 Buffer Names</a></li>
    <li><a id="toc-Buffer-File-Name-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-File-Name.html">28.4 Buffer File Name</a></li>
    <li><a id="toc-Buffer-Modification-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Modification.html">28.5 Buffer Modification</a></li>
    <li><a id="toc-Buffer-Modification-Time" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Modification-Time.html">28.6 Buffer Modification Time</a></li>
    <li><a id="toc-Read_002dOnly-Buffers" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Read-Only-Buffers.html">28.7 Read-Only Buffers</a></li>
    <li><a id="toc-The-Buffer-List" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-List.html">28.8 The Buffer List</a></li>
    <li><a id="toc-Creating-Buffers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Buffers.html">28.9 Creating Buffers</a></li>
    <li><a id="toc-Killing-Buffers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Killing-Buffers.html">28.10 Killing Buffers</a></li>
    <li><a id="toc-Indirect-Buffers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Indirect-Buffers.html">28.11 Indirect Buffers</a></li>
    <li><a id="toc-Swapping-Text-Between-Two-Buffers" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Swapping-Text.html">28.12 Swapping Text Between Two Buffers</a></li>
    <li><a id="toc-The-Buffer-Gap" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Gap.html">28.13 The Buffer Gap</a></li>
  </ul></li>
  <li><a id="toc-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Windows.html">29 Windows</a>
  <ul class="no-bullet">
    <li><a id="toc-Basic-Concepts-of-Emacs-Windows" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Basic-Windows.html">29.1 Basic Concepts of Emacs Windows</a></li>
    <li><a id="toc-Windows-and-Frames-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Windows-and-Frames.html">29.2 Windows and Frames</a></li>
    <li><a id="toc-Selecting-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Selecting-Windows.html">29.3 Selecting Windows</a></li>
    <li><a id="toc-Window-Sizes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Sizes.html">29.4 Window Sizes</a></li>
    <li><a id="toc-Resizing-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Resizing-Windows.html">29.5 Resizing Windows</a></li>
    <li><a id="toc-Preserving-Window-Sizes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Preserving-Window-Sizes.html">29.6 Preserving Window Sizes</a></li>
    <li><a id="toc-Splitting-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Splitting-Windows.html">29.7 Splitting Windows</a></li>
    <li><a id="toc-Deleting-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Deleting-Windows.html">29.8 Deleting Windows</a></li>
    <li><a id="toc-Recombining-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Recombining-Windows.html">29.9 Recombining Windows</a></li>
    <li><a id="toc-Cyclic-Ordering-of-Windows" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cyclic-Window-Ordering.html">29.10 Cyclic Ordering of Windows</a></li>
    <li><a id="toc-Buffers-and-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffers-and-Windows.html">29.11 Buffers and Windows</a></li>
    <li><a id="toc-Switching-to-a-Buffer-in-a-Window" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Switching-Buffers.html">29.12 Switching to a Buffer in a Window</a></li>
    <li><a id="toc-Displaying-a-Buffer-in-a-Suitable-Window" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Displaying-Buffers.html">29.13 Displaying a Buffer in a Suitable Window</a>
    <ul class="no-bullet">
      <li><a id="toc-Choosing-a-Window-for-Displaying-a-Buffer" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Choosing-Window.html">29.13.1 Choosing a Window for Displaying a Buffer</a></li>
      <li><a id="toc-Action-Functions-for-Buffer-Display" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Display-Action-Functions.html">29.13.2 Action Functions for Buffer Display</a></li>
      <li><a id="toc-Action-Alists-for-Buffer-Display" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Display-Action-Alists.html">29.13.3 Action Alists for Buffer Display</a></li>
      <li><a id="toc-Additional-Options-for-Displaying-Buffers" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Choosing-Window-Options.html">29.13.4 Additional Options for Displaying Buffers</a></li>
      <li><a id="toc-Precedence-of-Action-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Precedence-of-Action-Functions.html">29.13.5 Precedence of Action Functions</a></li>
      <li><a id="toc-The-Zen-of-Buffer-Display-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/The-Zen-of-Buffer-Display.html">29.13.6 The Zen of Buffer Display</a></li>
    </ul></li>
    <li><a id="toc-Window-History-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-History.html">29.14 Window History</a></li>
    <li><a id="toc-Dedicated-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Dedicated-Windows.html">29.15 Dedicated Windows</a></li>
    <li><a id="toc-Quitting-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Quitting-Windows.html">29.16 Quitting Windows</a></li>
    <li><a id="toc-Side-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Side-Windows.html">29.17 Side Windows</a>
    <ul class="no-bullet">
      <li><a id="toc-Displaying-Buffers-in-Side-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Displaying-Buffers-in-Side-Windows.html">29.17.1 Displaying Buffers in Side Windows</a></li>
      <li><a id="toc-Side-Window-Options-and-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Side-Window-Options-and-Functions.html">29.17.2 Side Window Options and Functions</a></li>
      <li><a id="toc-Frame-Layouts-with-Side-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Layouts-with-Side-Windows.html">29.17.3 Frame Layouts with Side Windows</a></li>
    </ul></li>
    <li><a id="toc-Atomic-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Atomic-Windows.html">29.18 Atomic Windows</a></li>
    <li><a id="toc-Windows-and-Point" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Point.html">29.19 Windows and Point</a></li>
    <li><a id="toc-The-Window-Start-and-End-Positions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Start-and-End.html">29.20 The Window Start and End Positions</a></li>
    <li><a id="toc-Textual-Scrolling-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Textual-Scrolling.html">29.21 Textual Scrolling</a></li>
    <li><a id="toc-Vertical-Fractional-Scrolling" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Vertical-Scrolling.html">29.22 Vertical Fractional Scrolling</a></li>
    <li><a id="toc-Horizontal-Scrolling-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Horizontal-Scrolling.html">29.23 Horizontal Scrolling</a></li>
    <li><a id="toc-Coordinates-and-Windows-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Coordinates-and-Windows.html">29.24 Coordinates and Windows</a></li>
    <li><a id="toc-Mouse-Window-Auto_002dselection-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mouse-Window-Auto_002dselection.html">29.25 Mouse Window Auto-selection</a></li>
    <li><a id="toc-Window-Configurations-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Configurations.html">29.26 Window Configurations</a></li>
    <li><a id="toc-Window-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Parameters.html">29.27 Window Parameters</a></li>
    <li><a id="toc-Hooks-for-Window-Scrolling-and-Changes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Hooks.html">29.28 Hooks for Window Scrolling and Changes</a></li>
  </ul></li>
  <li><a id="toc-Frames-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frames.html">30 Frames</a>
  <ul class="no-bullet">
    <li><a id="toc-Creating-Frames-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Frames.html">30.1 Creating Frames</a></li>
    <li><a id="toc-Multiple-Terminals-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Multiple-Terminals.html">30.2 Multiple Terminals</a></li>
    <li><a id="toc-Frame-Geometry-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Geometry.html">30.3 Frame Geometry</a>
    <ul class="no-bullet">
      <li><a id="toc-Frame-Layout-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Layout.html">30.3.1 Frame Layout</a></li>
      <li><a id="toc-Frame-Font-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Font.html">30.3.2 Frame Font</a></li>
      <li><a id="toc-Frame-Position-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Position.html">30.3.3 Frame Position</a></li>
      <li><a id="toc-Frame-Size-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Size.html">30.3.4 Frame Size</a></li>
      <li><a id="toc-Implied-Frame-Resizing-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Implied-Frame-Resizing.html">30.3.5 Implied Frame Resizing</a></li>
    </ul></li>
    <li><a id="toc-Frame-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Parameters.html">30.4 Frame Parameters</a>
    <ul class="no-bullet">
      <li><a id="toc-Access-to-Frame-Parameters" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Parameter-Access.html">30.4.1 Access to Frame Parameters</a></li>
      <li><a id="toc-Initial-Frame-Parameters" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Initial-Parameters.html">30.4.2 Initial Frame Parameters</a></li>
      <li><a id="toc-Window-Frame-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Frame-Parameters.html">30.4.3 Window Frame Parameters</a>
      <ul class="no-bullet">
        <li><a id="toc-Basic-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Basic-Parameters.html">30.4.3.1 Basic Parameters</a></li>
        <li><a id="toc-Position-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Position-Parameters.html">30.4.3.2 Position Parameters</a></li>
        <li><a id="toc-Size-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Size-Parameters.html">30.4.3.3 Size Parameters</a></li>
        <li><a id="toc-Layout-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Layout-Parameters.html">30.4.3.4 Layout Parameters</a></li>
        <li><a id="toc-Buffer-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Parameters.html">30.4.3.5 Buffer Parameters</a></li>
        <li><a id="toc-Frame-Interaction-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Interaction-Parameters.html">30.4.3.6 Frame Interaction Parameters</a></li>
        <li><a id="toc-Mouse-Dragging-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mouse-Dragging-Parameters.html">30.4.3.7 Mouse Dragging Parameters</a></li>
        <li><a id="toc-Window-Management-Parameters" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Management-Parameters.html">30.4.3.8 Window Management Parameters</a></li>
        <li><a id="toc-Cursor-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Cursor-Parameters.html">30.4.3.9 Cursor Parameters</a></li>
        <li><a id="toc-Font-and-Color-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Font-and-Color-Parameters.html">30.4.3.10 Font and Color Parameters</a></li>
      </ul></li>
      <li><a id="toc-Geometry-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Geometry.html">30.4.4 Geometry</a></li>
    </ul></li>
    <li><a id="toc-Terminal-Parameters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Terminal-Parameters.html">30.5 Terminal Parameters</a></li>
    <li><a id="toc-Frame-Titles-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Titles.html">30.6 Frame Titles</a></li>
    <li><a id="toc-Deleting-Frames-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Deleting-Frames.html">30.7 Deleting Frames</a></li>
    <li><a id="toc-Finding-All-Frames-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Finding-All-Frames.html">30.8 Finding All Frames</a></li>
    <li><a id="toc-Minibuffers-and-Frames-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Minibuffers-and-Frames.html">30.9 Minibuffers and Frames</a></li>
    <li><a id="toc-Input-Focus-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Input-Focus.html">30.10 Input Focus</a></li>
    <li><a id="toc-Visibility-of-Frames-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Visibility-of-Frames.html">30.11 Visibility of Frames</a></li>
    <li><a id="toc-Raising_002c-Lowering-and-Restacking-Frames" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Raising-and-Lowering.html">30.12 Raising, Lowering and Restacking Frames</a></li>
    <li><a id="toc-Frame-Configurations-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Frame-Configurations.html">30.13 Frame Configurations</a></li>
    <li><a id="toc-Child-Frames-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Child-Frames.html">30.14 Child Frames</a></li>
    <li><a id="toc-Mouse-Tracking-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mouse-Tracking.html">30.15 Mouse Tracking</a></li>
    <li><a id="toc-Mouse-Position-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mouse-Position.html">30.16 Mouse Position</a></li>
    <li><a id="toc-Pop_002dUp-Menus-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Pop_002dUp-Menus.html">30.17 Pop-Up Menus</a></li>
    <li><a id="toc-Dialog-Boxes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Dialog-Boxes.html">30.18 Dialog Boxes</a></li>
    <li><a id="toc-Pointer-Shape-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Pointer-Shape.html">30.19 Pointer Shape</a></li>
    <li><a id="toc-Window-System-Selections-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-System-Selections.html">30.20 Window System Selections</a></li>
    <li><a id="toc-Drag-and-Drop-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Drag-and-Drop.html">30.21 Drag and Drop</a></li>
    <li><a id="toc-Color-Names-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Color-Names.html">30.22 Color Names</a></li>
    <li><a id="toc-Text-Terminal-Colors-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Text-Terminal-Colors.html">30.23 Text Terminal Colors</a></li>
    <li><a id="toc-X-Resources" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Resources.html">30.24 X Resources</a></li>
    <li><a id="toc-Display-Feature-Testing-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Display-Feature-Testing.html">30.25 Display Feature Testing</a></li>
  </ul></li>
  <li><a id="toc-Positions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Positions.html">31 Positions</a>
  <ul class="no-bullet">
    <li><a id="toc-Point-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Point.html">31.1 Point</a></li>
    <li><a id="toc-Motion-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Motion.html">31.2 Motion</a>
    <ul class="no-bullet">
      <li><a id="toc-Motion-by-Characters" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Character-Motion.html">31.2.1 Motion by Characters</a></li>
      <li><a id="toc-Motion-by-Words" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Word-Motion.html">31.2.2 Motion by Words</a></li>
      <li><a id="toc-Motion-to-an-End-of-the-Buffer" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-End-Motion.html">31.2.3 Motion to an End of the Buffer</a></li>
      <li><a id="toc-Motion-by-Text-Lines" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Text-Lines.html">31.2.4 Motion by Text Lines</a></li>
      <li><a id="toc-Motion-by-Screen-Lines" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Screen-Lines.html">31.2.5 Motion by Screen Lines</a></li>
      <li><a id="toc-Moving-over-Balanced-Expressions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/List-Motion.html">31.2.6 Moving over Balanced Expressions</a></li>
      <li><a id="toc-Skipping-Characters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Skipping-Characters.html">31.2.7 Skipping Characters</a></li>
    </ul></li>
    <li><a id="toc-Excursions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Excursions.html">31.3 Excursions</a></li>
    <li><a id="toc-Narrowing-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Narrowing.html">31.4 Narrowing</a></li>
  </ul></li>
  <li><a id="toc-Markers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Markers.html">32 Markers</a>
  <ul class="no-bullet">
    <li><a id="toc-Overview-of-Markers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Overview-of-Markers.html">32.1 Overview of Markers</a></li>
    <li><a id="toc-Predicates-on-Markers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Predicates-on-Markers.html">32.2 Predicates on Markers</a></li>
    <li><a id="toc-Functions-that-Create-Markers" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Creating-Markers.html">32.3 Functions that Create Markers</a></li>
    <li><a id="toc-Information-from-Markers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Information-from-Markers.html">32.4 Information from Markers</a></li>
    <li><a id="toc-Marker-Insertion-Types-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Marker-Insertion-Types.html">32.5 Marker Insertion Types</a></li>
    <li><a id="toc-Moving-Marker-Positions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Moving-Markers.html">32.6 Moving Marker Positions</a></li>
    <li><a id="toc-The-Mark-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/The-Mark.html">32.7 The Mark</a></li>
    <li><a id="toc-The-Region-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/The-Region.html">32.8 The Region</a></li>
  </ul></li>
  <li><a id="toc-Text-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Text.html">33 Text</a>
  <ul class="no-bullet">
    <li><a id="toc-Examining-Text-Near-Point" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Near-Point.html">33.1 Examining Text Near Point</a></li>
    <li><a id="toc-Examining-Buffer-Contents" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Contents.html">33.2 Examining Buffer Contents</a></li>
    <li><a id="toc-Comparing-Text-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Comparing-Text.html">33.3 Comparing Text</a></li>
    <li><a id="toc-Inserting-Text" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Insertion.html">33.4 Inserting Text</a></li>
    <li><a id="toc-User_002dLevel-Insertion-Commands" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Commands-for-Insertion.html">33.5 User-Level Insertion Commands</a></li>
    <li><a id="toc-Deleting-Text" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Deletion.html">33.6 Deleting Text</a></li>
    <li><a id="toc-User_002dLevel-Deletion-Commands" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/User_002dLevel-Deletion.html">33.7 User-Level Deletion Commands</a></li>
    <li><a id="toc-The-Kill-Ring-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/The-Kill-Ring.html">33.8 The Kill Ring</a>
    <ul class="no-bullet">
      <li><a id="toc-Kill-Ring-Concepts-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Kill-Ring-Concepts.html">33.8.1 Kill Ring Concepts</a></li>
      <li><a id="toc-Functions-for-Killing" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Kill-Functions.html">33.8.2 Functions for Killing</a></li>
      <li><a id="toc-Yanking-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Yanking.html">33.8.3 Yanking</a></li>
      <li><a id="toc-Functions-for-Yanking" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Yank-Commands.html">33.8.4 Functions for Yanking</a></li>
      <li><a id="toc-Low_002dLevel-Kill-Ring-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Low_002dLevel-Kill-Ring.html">33.8.5 Low-Level Kill Ring</a></li>
      <li><a id="toc-Internals-of-the-Kill-Ring" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Internals-of-Kill-Ring.html">33.8.6 Internals of the Kill Ring</a></li>
    </ul></li>
    <li><a id="toc-Undo-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Undo.html">33.9 Undo</a></li>
    <li><a id="toc-Maintaining-Undo-Lists" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Maintaining-Undo.html">33.10 Maintaining Undo Lists</a></li>
    <li><a id="toc-Filling-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Filling.html">33.11 Filling</a></li>
    <li><a id="toc-Margins-for-Filling" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Margins.html">33.12 Margins for Filling</a></li>
    <li><a id="toc-Adaptive-Fill-Mode" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Adaptive-Fill.html">33.13 Adaptive Fill Mode</a></li>
    <li><a id="toc-Auto-Filling-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Auto-Filling.html">33.14 Auto Filling</a></li>
    <li><a id="toc-Sorting-Text" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sorting.html">33.15 Sorting Text</a></li>
    <li><a id="toc-Counting-Columns" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Columns.html">33.16 Counting Columns</a></li>
    <li><a id="toc-Indentation-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Indentation.html">33.17 Indentation</a>
    <ul class="no-bullet">
      <li><a id="toc-Indentation-Primitives" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Primitive-Indent.html">33.17.1 Indentation Primitives</a></li>
      <li><a id="toc-Indentation-Controlled-by-Major-Mode" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mode_002dSpecific-Indent.html">33.17.2 Indentation Controlled by Major Mode</a></li>
      <li><a id="toc-Indenting-an-Entire-Region" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Region-Indent.html">33.17.3 Indenting an Entire Region</a></li>
      <li><a id="toc-Indentation-Relative-to-Previous-Lines" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Relative-Indent.html">33.17.4 Indentation Relative to Previous Lines</a></li>
      <li><a id="toc-Adjustable-Tab-Stops" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Indent-Tabs.html">33.17.5 Adjustable Tab Stops</a></li>
      <li><a id="toc-Indentation_002dBased-Motion-Commands" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Motion-by-Indent.html">33.17.6 Indentation-Based Motion Commands</a></li>
    </ul></li>
    <li><a id="toc-Case-Changes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Case-Changes.html">33.18 Case Changes</a></li>
    <li><a id="toc-Text-Properties-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Text-Properties.html">33.19 Text Properties</a>
    <ul class="no-bullet">
      <li><a id="toc-Examining-Text-Properties" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Examining-Properties.html">33.19.1 Examining Text Properties</a></li>
      <li><a id="toc-Changing-Text-Properties" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Changing-Properties.html">33.19.2 Changing Text Properties</a></li>
      <li><a id="toc-Text-Property-Search-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Property-Search.html">33.19.3 Text Property Search Functions</a></li>
      <li><a id="toc-Properties-with-Special-Meanings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Special-Properties.html">33.19.4 Properties with Special Meanings</a></li>
      <li><a id="toc-Formatted-Text-Properties" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Format-Properties.html">33.19.5 Formatted Text Properties</a></li>
      <li><a id="toc-Stickiness-of-Text-Properties" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sticky-Properties.html">33.19.6 Stickiness of Text Properties</a></li>
      <li><a id="toc-Lazy-Computation-of-Text-Properties" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lazy-Properties.html">33.19.7 Lazy Computation of Text Properties</a></li>
      <li><a id="toc-Defining-Clickable-Text" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Clickable-Text.html">33.19.8 Defining Clickable Text</a></li>
      <li><a id="toc-Defining-and-Using-Fields" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Fields.html">33.19.9 Defining and Using Fields</a></li>
      <li><a id="toc-Why-Text-Properties-are-not-Intervals" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Not-Intervals.html">33.19.10 Why Text Properties are not Intervals</a></li>
    </ul></li>
    <li><a id="toc-Substituting-for-a-Character-Code" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Substitution.html">33.20 Substituting for a Character Code</a></li>
    <li><a id="toc-Registers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Registers.html">33.21 Registers</a></li>
    <li><a id="toc-Transposition-of-Text" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Transposition.html">33.22 Transposition of Text</a></li>
    <li><a id="toc-Replacing-Buffer-Text" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Replacing.html">33.23 Replacing Buffer Text</a></li>
    <li><a id="toc-Dealing-With-Compressed-Data" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Decompression.html">33.24 Dealing With Compressed Data</a></li>
    <li><a id="toc-Base-64-Encoding" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Base-64.html">33.25 Base 64 Encoding</a></li>
    <li><a id="toc-Checksum_002fHash-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Checksum_002fHash.html">33.26 Checksum/Hash</a></li>
    <li><a id="toc-GnuTLS-Cryptography-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/GnuTLS-Cryptography.html">33.27 GnuTLS Cryptography</a>
    <ul class="no-bullet">
      <li><a id="toc-Format-of-GnuTLS-Cryptography-Inputs-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Format-of-GnuTLS-Cryptography-Inputs.html">33.27.1 Format of GnuTLS Cryptography Inputs</a></li>
      <li><a id="toc-GnuTLS-Cryptographic-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/GnuTLS-Cryptographic-Functions.html">33.27.2 GnuTLS Cryptographic Functions</a></li>
    </ul></li>
    <li><a id="toc-Parsing-HTML-and-XML" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Parsing-HTML_002fXML.html">33.28 Parsing HTML and XML</a>
    <ul class="no-bullet">
      <li><a id="toc-Document-Object-Model-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Document-Object-Model.html">33.28.1 Document Object Model</a></li>
    </ul></li>
    <li><a id="toc-Parsing-and-generating-JSON-values" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Parsing-JSON.html">33.29 Parsing and generating JSON values</a></li>
    <li><a id="toc-JSONRPC-communication" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/JSONRPC.html">33.30 JSONRPC communication</a>
    <ul class="no-bullet">
      <li><a id="toc-Overview-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/JSONRPC-Overview.html">33.30.1 Overview</a></li>
      <li><a id="toc-Process_002dbased-JSONRPC-connections-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Process_002dbased-JSONRPC-connections.html">33.30.2 Process-based JSONRPC connections</a></li>
      <li><a id="toc-JSONRPC-JSON-object-format-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/JSONRPC-JSON-object-format.html">33.30.3 JSONRPC JSON object format</a></li>
      <li><a id="toc-Deferred-JSONRPC-requests" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/JSONRPC-deferred-requests.html">33.30.4 Deferred JSONRPC requests</a></li>
    </ul></li>
    <li><a id="toc-Atomic-Change-Groups" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Atomic-Changes.html">33.31 Atomic Change Groups</a></li>
    <li><a id="toc-Change-Hooks-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Change-Hooks.html">33.32 Change Hooks</a></li>
  </ul></li>
  <li><a id="toc-Non_002dASCII-Characters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Non_002dASCII-Characters.html">34 Non-<acronym>ASCII</acronym> Characters</a>
  <ul class="no-bullet">
    <li><a id="toc-Text-Representations-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Text-Representations.html">34.1 Text Representations</a></li>
    <li><a id="toc-Disabling-Multibyte-Characters" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Disabling-Multibyte.html">34.2 Disabling Multibyte Characters</a></li>
    <li><a id="toc-Converting-Text-Representations" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Converting-Representations.html">34.3 Converting Text Representations</a></li>
    <li><a id="toc-Selecting-a-Representation-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Selecting-a-Representation.html">34.4 Selecting a Representation</a></li>
    <li><a id="toc-Character-Codes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Character-Codes.html">34.5 Character Codes</a></li>
    <li><a id="toc-Character-Properties-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Character-Properties.html">34.6 Character Properties</a></li>
    <li><a id="toc-Character-Sets-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Character-Sets.html">34.7 Character Sets</a></li>
    <li><a id="toc-Scanning-for-Character-Sets" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Scanning-Charsets.html">34.8 Scanning for Character Sets</a></li>
    <li><a id="toc-Translation-of-Characters-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Translation-of-Characters.html">34.9 Translation of Characters</a></li>
    <li><a id="toc-Coding-Systems-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Coding-Systems.html">34.10 Coding Systems</a>
    <ul class="no-bullet">
      <li><a id="toc-Basic-Concepts-of-Coding-Systems" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Coding-System-Basics.html">34.10.1 Basic Concepts of Coding Systems</a></li>
      <li><a id="toc-Encoding-and-I_002fO-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Encoding-and-I_002fO.html">34.10.2 Encoding and I/O</a></li>
      <li><a id="toc-Coding-Systems-in-Lisp" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Lisp-and-Coding-Systems.html">34.10.3 Coding Systems in Lisp</a></li>
      <li><a id="toc-User_002dChosen-Coding-Systems-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/User_002dChosen-Coding-Systems.html">34.10.4 User-Chosen Coding Systems</a></li>
      <li><a id="toc-Default-Coding-Systems-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Default-Coding-Systems.html">34.10.5 Default Coding Systems</a></li>
      <li><a id="toc-Specifying-a-Coding-System-for-One-Operation" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Specifying-Coding-Systems.html">34.10.6 Specifying a Coding System for One Operation</a></li>
      <li><a id="toc-Explicit-Encoding-and-Decoding" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Explicit-Encoding.html">34.10.7 Explicit Encoding and Decoding</a></li>
      <li><a id="toc-Terminal-I_002fO-Encoding-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Terminal-I_002fO-Encoding.html">34.10.8 Terminal I/O Encoding</a></li>
    </ul></li>
    <li><a id="toc-Input-Methods-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Input-Methods.html">34.11 Input Methods</a></li>
    <li><a id="toc-Locales-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Locales.html">34.12 Locales</a></li>
  </ul></li>
  <li><a id="toc-Searching-and-Matching-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Searching-and-Matching.html">35 Searching and Matching</a>
  <ul class="no-bullet">
    <li><a id="toc-Searching-for-Strings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/String-Search.html">35.1 Searching for Strings</a></li>
    <li><a id="toc-Searching-and-Case-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Searching-and-Case.html">35.2 Searching and Case</a></li>
    <li><a id="toc-Regular-Expressions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Regular-Expressions.html">35.3 Regular Expressions</a>
    <ul class="no-bullet">
      <li><a id="toc-Syntax-of-Regular-Expressions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-of-Regexps.html">35.3.1 Syntax of Regular Expressions</a>
      <ul class="no-bullet">
        <li><a id="toc-Special-Characters-in-Regular-Expressions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Regexp-Special.html">35.3.1.1 Special Characters in Regular Expressions</a></li>
        <li><a id="toc-Character-Classes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Char-Classes.html">35.3.1.2 Character Classes</a></li>
        <li><a id="toc-Backslash-Constructs-in-Regular-Expressions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Regexp-Backslash.html">35.3.1.3 Backslash Constructs in Regular Expressions</a></li>
      </ul></li>
      <li><a id="toc-Complex-Regexp-Example" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Regexp-Example.html">35.3.2 Complex Regexp Example</a></li>
      <li><a id="toc-The-rx-Structured-Regexp-Notation" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Rx-Notation.html">35.3.3 The <code>rx</code> Structured Regexp Notation</a>
      <ul class="no-bullet">
        <li><a id="toc-Constructs-in-rx-regexps" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Rx-Constructs.html">35.3.3.1 Constructs in <code>rx</code> regexps</a></li>
        <li><a id="toc-Functions-and-macros-using-rx-regexps" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Rx-Functions.html">35.3.3.2 Functions and macros using <code>rx</code> regexps</a></li>
        <li><a id="toc-Defining-new-rx-forms" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Extending-Rx.html">35.3.3.3 Defining new <code>rx</code> forms</a></li>
      </ul></li>
      <li><a id="toc-Regular-Expression-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Regexp-Functions.html">35.3.4 Regular Expression Functions</a></li>
      <li><a id="toc-Problems-with-Regular-Expressions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Regexp-Problems.html">35.3.5 Problems with Regular Expressions</a></li>
    </ul></li>
    <li><a id="toc-Regular-Expression-Searching" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Regexp-Search.html">35.4 Regular Expression Searching</a></li>
    <li><a id="toc-POSIX-Regular-Expression-Searching" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/POSIX-Regexps.html">35.5 POSIX Regular Expression Searching</a></li>
    <li><a id="toc-The-Match-Data" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Match-Data.html">35.6 The Match Data</a>
    <ul class="no-bullet">
      <li><a id="toc-Replacing-the-Text-that-Matched" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Replacing-Match.html">35.6.1 Replacing the Text that Matched</a></li>
      <li><a id="toc-Simple-Match-Data-Access" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Simple-Match-Data.html">35.6.2 Simple Match Data Access</a></li>
      <li><a id="toc-Accessing-the-Entire-Match-Data" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Entire-Match-Data.html">35.6.3 Accessing the Entire Match Data</a></li>
      <li><a id="toc-Saving-and-Restoring-the-Match-Data" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Saving-Match-Data.html">35.6.4 Saving and Restoring the Match Data</a></li>
    </ul></li>
    <li><a id="toc-Search-and-Replace-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Search-and-Replace.html">35.7 Search and Replace</a></li>
    <li><a id="toc-Standard-Regular-Expressions-Used-in-Editing" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Standard-Regexps.html">35.8 Standard Regular Expressions Used in Editing</a></li>
  </ul></li>
  <li><a id="toc-Syntax-Tables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-Tables.html">36 Syntax Tables</a>
  <ul class="no-bullet">
    <li><a id="toc-Syntax-Table-Concepts" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-Basics.html">36.1 Syntax Table Concepts</a></li>
    <li><a id="toc-Syntax-Descriptors-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-Descriptors.html">36.2 Syntax Descriptors</a>
    <ul class="no-bullet">
      <li><a id="toc-Table-of-Syntax-Classes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-Class-Table.html">36.2.1 Table of Syntax Classes</a></li>
      <li><a id="toc-Syntax-Flags-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-Flags.html">36.2.2 Syntax Flags</a></li>
    </ul></li>
    <li><a id="toc-Syntax-Table-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-Table-Functions.html">36.3 Syntax Table Functions</a></li>
    <li><a id="toc-Syntax-Properties-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-Properties.html">36.4 Syntax Properties</a></li>
    <li><a id="toc-Motion-and-Syntax-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Motion-and-Syntax.html">36.5 Motion and Syntax</a></li>
    <li><a id="toc-Parsing-Expressions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Parsing-Expressions.html">36.6 Parsing Expressions</a>
    <ul class="no-bullet">
      <li><a id="toc-Motion-Commands-Based-on-Parsing" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Motion-via-Parsing.html">36.6.1 Motion Commands Based on Parsing</a></li>
      <li><a id="toc-Finding-the-Parse-State-for-a-Position" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Position-Parse.html">36.6.2 Finding the Parse State for a Position</a></li>
      <li><a id="toc-Parser-State-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Parser-State.html">36.6.3 Parser State</a></li>
      <li><a id="toc-Low_002dLevel-Parsing-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Low_002dLevel-Parsing.html">36.6.4 Low-Level Parsing</a></li>
      <li><a id="toc-Parameters-to-Control-Parsing" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Control-Parsing.html">36.6.5 Parameters to Control Parsing</a></li>
    </ul></li>
    <li><a id="toc-Syntax-Table-Internals-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Syntax-Table-Internals.html">36.7 Syntax Table Internals</a></li>
    <li><a id="toc-Categories-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Categories.html">36.8 Categories</a></li>
  </ul></li>
  <li><a id="toc-Abbrevs-and-Abbrev-Expansion" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Abbrevs.html">37 Abbrevs and Abbrev Expansion</a>
  <ul class="no-bullet">
    <li><a id="toc-Abbrev-Tables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Abbrev-Tables.html">37.1 Abbrev Tables</a></li>
    <li><a id="toc-Defining-Abbrevs-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Abbrevs.html">37.2 Defining Abbrevs</a></li>
    <li><a id="toc-Saving-Abbrevs-in-Files" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Abbrev-Files.html">37.3 Saving Abbrevs in Files</a></li>
    <li><a id="toc-Looking-Up-and-Expanding-Abbreviations" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Abbrev-Expansion.html">37.4 Looking Up and Expanding Abbreviations</a></li>
    <li><a id="toc-Standard-Abbrev-Tables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Standard-Abbrev-Tables.html">37.5 Standard Abbrev Tables</a></li>
    <li><a id="toc-Abbrev-Properties-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Abbrev-Properties.html">37.6 Abbrev Properties</a></li>
    <li><a id="toc-Abbrev-Table-Properties-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Abbrev-Table-Properties.html">37.7 Abbrev Table Properties</a></li>
  </ul></li>
  <li><a id="toc-Threads-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Threads.html">38 Threads</a>
  <ul class="no-bullet">
    <li><a id="toc-Basic-Thread-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Basic-Thread-Functions.html">38.1 Basic Thread Functions</a></li>
    <li><a id="toc-Mutexes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Mutexes.html">38.2 Mutexes</a></li>
    <li><a id="toc-Condition-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Condition-Variables.html">38.3 Condition Variables</a></li>
    <li><a id="toc-The-Thread-List-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/The-Thread-List.html">38.4 The Thread List</a></li>
  </ul></li>
  <li><a id="toc-Processes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Processes.html">39 Processes</a>
  <ul class="no-bullet">
    <li><a id="toc-Functions-that-Create-Subprocesses" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Subprocess-Creation.html">39.1 Functions that Create Subprocesses</a></li>
    <li><a id="toc-Shell-Arguments-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Shell-Arguments.html">39.2 Shell Arguments</a></li>
    <li><a id="toc-Creating-a-Synchronous-Process" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Synchronous-Processes.html">39.3 Creating a Synchronous Process</a></li>
    <li><a id="toc-Creating-an-Asynchronous-Process" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Asynchronous-Processes.html">39.4 Creating an Asynchronous Process</a></li>
    <li><a id="toc-Deleting-Processes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Deleting-Processes.html">39.5 Deleting Processes</a></li>
    <li><a id="toc-Process-Information-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Process-Information.html">39.6 Process Information</a></li>
    <li><a id="toc-Sending-Input-to-Processes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Input-to-Processes.html">39.7 Sending Input to Processes</a></li>
    <li><a id="toc-Sending-Signals-to-Processes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Signals-to-Processes.html">39.8 Sending Signals to Processes</a></li>
    <li><a id="toc-Receiving-Output-from-Processes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Output-from-Processes.html">39.9 Receiving Output from Processes</a>
    <ul class="no-bullet">
      <li><a id="toc-Process-Buffers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Process-Buffers.html">39.9.1 Process Buffers</a></li>
      <li><a id="toc-Process-Filter-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Filter-Functions.html">39.9.2 Process Filter Functions</a></li>
      <li><a id="toc-Decoding-Process-Output" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Decoding-Output.html">39.9.3 Decoding Process Output</a></li>
      <li><a id="toc-Accepting-Output-from-Processes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Accepting-Output.html">39.9.4 Accepting Output from Processes</a></li>
      <li><a id="toc-Processes-and-Threads-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Processes-and-Threads.html">39.9.5 Processes and Threads</a></li>
    </ul></li>
    <li><a id="toc-Sentinels_003a-Detecting-Process-Status-Changes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sentinels.html">39.10 Sentinels: Detecting Process Status Changes</a></li>
    <li><a id="toc-Querying-Before-Exit" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Query-Before-Exit.html">39.11 Querying Before Exit</a></li>
    <li><a id="toc-Accessing-Other-Processes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/System-Processes.html">39.12 Accessing Other Processes</a></li>
    <li><a id="toc-Transaction-Queues-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Transaction-Queues.html">39.13 Transaction Queues</a></li>
    <li><a id="toc-Network-Connections" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Network.html">39.14 Network Connections</a></li>
    <li><a id="toc-Network-Servers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Network-Servers.html">39.15 Network Servers</a></li>
    <li><a id="toc-Datagrams-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Datagrams.html">39.16 Datagrams</a></li>
    <li><a id="toc-Low_002dLevel-Network-Access" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Low_002dLevel-Network.html">39.17 Low-Level Network Access</a>
    <ul class="no-bullet">
      <li><a id="toc-make_002dnetwork_002dprocess" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Network-Processes.html">39.17.1 <code>make-network-process</code></a></li>
      <li><a id="toc-Network-Options-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Network-Options.html">39.17.2 Network Options</a></li>
      <li><a id="toc-Testing-Availability-of-Network-Features" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Network-Feature-Testing.html">39.17.3 Testing Availability of Network Features</a></li>
    </ul></li>
    <li><a id="toc-Misc-Network-Facilities" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Misc-Network.html">39.18 Misc Network Facilities</a></li>
    <li><a id="toc-Communicating-with-Serial-Ports" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Serial-Ports.html">39.19 Communicating with Serial Ports</a></li>
    <li><a id="toc-Packing-and-Unpacking-Byte-Arrays" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Byte-Packing.html">39.20 Packing and Unpacking Byte Arrays</a>
    <ul class="no-bullet">
      <li><a id="toc-Describing-Data-Layout" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Bindat-Types.html">39.20.1 Describing Data Layout</a></li>
      <li><a id="toc-Functions-to-Unpack-and-Pack-Bytes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Bindat-Functions.html">39.20.2 Functions to Unpack and Pack Bytes</a></li>
      <li><a id="toc-Advanced-data-layout-specifications" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Bindat-Computed-Types.html">39.20.3 Advanced data layout specifications</a></li>
    </ul></li>
  </ul></li>
  <li><a id="toc-Emacs-Display" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Display.html">40 Emacs Display</a>
  <ul class="no-bullet">
    <li><a id="toc-Refreshing-the-Screen" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Refresh-Screen.html">40.1 Refreshing the Screen</a></li>
    <li><a id="toc-Forcing-Redisplay-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Forcing-Redisplay.html">40.2 Forcing Redisplay</a></li>
    <li><a id="toc-Truncation-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Truncation.html">40.3 Truncation</a></li>
    <li><a id="toc-The-Echo-Area-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/The-Echo-Area.html">40.4 The Echo Area</a>
    <ul class="no-bullet">
      <li><a id="toc-Displaying-Messages-in-the-Echo-Area" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Displaying-Messages.html">40.4.1 Displaying Messages in the Echo Area</a></li>
      <li><a id="toc-Reporting-Operation-Progress" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Progress.html">40.4.2 Reporting Operation Progress</a></li>
      <li><a id="toc-Logging-Messages-in-_002aMessages_002a" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Logging-Messages.html">40.4.3 Logging Messages in <samp>*Messages*</samp></a></li>
      <li><a id="toc-Echo-Area-Customization-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Echo-Area-Customization.html">40.4.4 Echo Area Customization</a></li>
    </ul></li>
    <li><a id="toc-Reporting-Warnings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Warnings.html">40.5 Reporting Warnings</a>
    <ul class="no-bullet">
      <li><a id="toc-Warning-Basics-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Warning-Basics.html">40.5.1 Warning Basics</a></li>
      <li><a id="toc-Warning-Variables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Warning-Variables.html">40.5.2 Warning Variables</a></li>
      <li><a id="toc-Warning-Options-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Warning-Options.html">40.5.3 Warning Options</a></li>
      <li><a id="toc-Delayed-Warnings-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Delayed-Warnings.html">40.5.4 Delayed Warnings</a></li>
    </ul></li>
    <li><a id="toc-Invisible-Text-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Invisible-Text.html">40.6 Invisible Text</a></li>
    <li><a id="toc-Selective-Display-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Selective-Display.html">40.7 Selective Display</a></li>
    <li><a id="toc-Temporary-Displays-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Temporary-Displays.html">40.8 Temporary Displays</a></li>
    <li><a id="toc-Overlays-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Overlays.html">40.9 Overlays</a>
    <ul class="no-bullet">
      <li><a id="toc-Managing-Overlays-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Managing-Overlays.html">40.9.1 Managing Overlays</a></li>
      <li><a id="toc-Overlay-Properties-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Overlay-Properties.html">40.9.2 Overlay Properties</a></li>
      <li><a id="toc-Searching-for-Overlays" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Finding-Overlays.html">40.9.3 Searching for Overlays</a></li>
    </ul></li>
    <li><a id="toc-Size-of-Displayed-Text-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Size-of-Displayed-Text.html">40.10 Size of Displayed Text</a></li>
    <li><a id="toc-Line-Height-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Line-Height.html">40.11 Line Height</a></li>
    <li><a id="toc-Faces-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Faces.html">40.12 Faces</a>
    <ul class="no-bullet">
      <li><a id="toc-Face-Attributes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Face-Attributes.html">40.12.1 Face Attributes</a></li>
      <li><a id="toc-Defining-Faces-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Faces.html">40.12.2 Defining Faces</a></li>
      <li><a id="toc-Face-Attribute-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Attribute-Functions.html">40.12.3 Face Attribute Functions</a></li>
      <li><a id="toc-Displaying-Faces-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Displaying-Faces.html">40.12.4 Displaying Faces</a></li>
      <li><a id="toc-Face-Remapping-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Face-Remapping.html">40.12.5 Face Remapping</a></li>
      <li><a id="toc-Functions-for-Working-with-Faces" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Face-Functions.html">40.12.6 Functions for Working with Faces</a></li>
      <li><a id="toc-Automatic-Face-Assignment" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Auto-Faces.html">40.12.7 Automatic Face Assignment</a></li>
      <li><a id="toc-Basic-Faces-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Basic-Faces.html">40.12.8 Basic Faces</a></li>
      <li><a id="toc-Font-Selection-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Font-Selection.html">40.12.9 Font Selection</a></li>
      <li><a id="toc-Looking-Up-Fonts" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Font-Lookup.html">40.12.10 Looking Up Fonts</a></li>
      <li><a id="toc-Fontsets-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Fontsets.html">40.12.11 Fontsets</a></li>
      <li><a id="toc-Low_002dLevel-Font-Representation" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Low_002dLevel-Font.html">40.12.12 Low-Level Font Representation</a></li>
    </ul></li>
    <li><a id="toc-Fringes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Fringes.html">40.13 Fringes</a>
    <ul class="no-bullet">
      <li><a id="toc-Fringe-Size-and-Position" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Fringe-Size_002fPos.html">40.13.1 Fringe Size and Position</a></li>
      <li><a id="toc-Fringe-Indicators-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Fringe-Indicators.html">40.13.2 Fringe Indicators</a></li>
      <li><a id="toc-Fringe-Cursors-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Fringe-Cursors.html">40.13.3 Fringe Cursors</a></li>
      <li><a id="toc-Fringe-Bitmaps-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Fringe-Bitmaps.html">40.13.4 Fringe Bitmaps</a></li>
      <li><a id="toc-Customizing-Fringe-Bitmaps" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Customizing-Bitmaps.html">40.13.5 Customizing Fringe Bitmaps</a></li>
      <li><a id="toc-The-Overlay-Arrow" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Overlay-Arrow.html">40.13.6 The Overlay Arrow</a></li>
    </ul></li>
    <li><a id="toc-Scroll-Bars-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Scroll-Bars.html">40.14 Scroll Bars</a></li>
    <li><a id="toc-Window-Dividers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Dividers.html">40.15 Window Dividers</a></li>
    <li><a id="toc-The-display-Property" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Display-Property.html">40.16 The <code>display</code> Property</a>
    <ul class="no-bullet">
      <li><a id="toc-Display-Specs-That-Replace-The-Text" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Replacing-Specs.html">40.16.1 Display Specs That Replace The Text</a></li>
      <li><a id="toc-Specified-Spaces" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Specified-Space.html">40.16.2 Specified Spaces</a></li>
      <li><a id="toc-Pixel-Specification-for-Spaces" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Pixel-Specification.html">40.16.3 Pixel Specification for Spaces</a></li>
      <li><a id="toc-Other-Display-Specifications" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Other-Display-Specs.html">40.16.4 Other Display Specifications</a></li>
      <li><a id="toc-Displaying-in-the-Margins" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Display-Margins.html">40.16.5 Displaying in the Margins</a></li>
    </ul></li>
    <li><a id="toc-Images-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Images.html">40.17 Images</a>
    <ul class="no-bullet">
      <li><a id="toc-Image-Formats-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Image-Formats.html">40.17.1 Image Formats</a></li>
      <li><a id="toc-Image-Descriptors-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Image-Descriptors.html">40.17.2 Image Descriptors</a></li>
      <li><a id="toc-XBM-Images-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/XBM-Images.html">40.17.3 XBM Images</a></li>
      <li><a id="toc-XPM-Images-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/XPM-Images.html">40.17.4 XPM Images</a></li>
      <li><a id="toc-ImageMagick-Images-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/ImageMagick-Images.html">40.17.5 ImageMagick Images</a></li>
      <li><a id="toc-SVG-Images-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/SVG-Images.html">40.17.6 SVG Images</a></li>
      <li><a id="toc-Other-Image-Types-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Other-Image-Types.html">40.17.7 Other Image Types</a></li>
      <li><a id="toc-Defining-Images-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Defining-Images.html">40.17.8 Defining Images</a></li>
      <li><a id="toc-Showing-Images-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Showing-Images.html">40.17.9 Showing Images</a></li>
      <li><a id="toc-Multi_002dFrame-Images-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Multi_002dFrame-Images.html">40.17.10 Multi-Frame Images</a></li>
      <li><a id="toc-Image-Cache-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Image-Cache.html">40.17.11 Image Cache</a></li>
    </ul></li>
    <li><a id="toc-Embedded-Native-Widgets" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Xwidgets.html">40.18 Embedded Native Widgets</a></li>
    <li><a id="toc-Buttons-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buttons.html">40.19 Buttons</a>
    <ul class="no-bullet">
      <li><a id="toc-Button-Properties-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Button-Properties.html">40.19.1 Button Properties</a></li>
      <li><a id="toc-Button-Types-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Button-Types.html">40.19.2 Button Types</a></li>
      <li><a id="toc-Making-Buttons-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Making-Buttons.html">40.19.3 Making Buttons</a></li>
      <li><a id="toc-Manipulating-Buttons-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Manipulating-Buttons.html">40.19.4 Manipulating Buttons</a></li>
      <li><a id="toc-Button-Buffer-Commands-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Button-Buffer-Commands.html">40.19.5 Button Buffer Commands</a></li>
    </ul></li>
    <li><a id="toc-Abstract-Display-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Abstract-Display.html">40.20 Abstract Display</a>
    <ul class="no-bullet">
      <li><a id="toc-Abstract-Display-Functions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Abstract-Display-Functions.html">40.20.1 Abstract Display Functions</a></li>
      <li><a id="toc-Abstract-Display-Example-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Abstract-Display-Example.html">40.20.2 Abstract Display Example</a></li>
    </ul></li>
    <li><a id="toc-Blinking-Parentheses" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Blinking.html">40.21 Blinking Parentheses</a></li>
    <li><a id="toc-Character-Display-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Character-Display.html">40.22 Character Display</a>
    <ul class="no-bullet">
      <li><a id="toc-Usual-Display-Conventions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Usual-Display.html">40.22.1 Usual Display Conventions</a></li>
      <li><a id="toc-Display-Tables-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Display-Tables.html">40.22.2 Display Tables</a></li>
      <li><a id="toc-Active-Display-Table-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Active-Display-Table.html">40.22.3 Active Display Table</a></li>
      <li><a id="toc-Glyphs-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Glyphs.html">40.22.4 Glyphs</a></li>
      <li><a id="toc-Glyphless-Character-Display" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Glyphless-Chars.html">40.22.5 Glyphless Character Display</a></li>
    </ul></li>
    <li><a id="toc-Beeping-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Beeping.html">40.23 Beeping</a></li>
    <li><a id="toc-Window-Systems-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Systems.html">40.24 Window Systems</a></li>
    <li><a id="toc-Tooltips-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Tooltips.html">40.25 Tooltips</a></li>
    <li><a id="toc-Bidirectional-Display-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Bidirectional-Display.html">40.26 Bidirectional Display</a></li>
  </ul></li>
  <li><a id="toc-Operating-System-Interface" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/System-Interface.html">41 Operating System Interface</a>
  <ul class="no-bullet">
    <li><a id="toc-Starting-Up-Emacs" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Starting-Up.html">41.1 Starting Up Emacs</a>
    <ul class="no-bullet">
      <li><a id="toc-Summary_003a-Sequence-of-Actions-at-Startup" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Startup-Summary.html">41.1.1 Summary: Sequence of Actions at Startup</a></li>
      <li><a id="toc-The-Init-File" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Init-File.html">41.1.2 The Init File</a></li>
      <li><a id="toc-Terminal_002dSpecific-Initialization" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Terminal_002dSpecific.html">41.1.3 Terminal-Specific Initialization</a></li>
      <li><a id="toc-Command_002dLine-Arguments-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Command_002dLine-Arguments.html">41.1.4 Command-Line Arguments</a></li>
    </ul></li>
    <li><a id="toc-Getting-Out-of-Emacs" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Getting-Out.html">41.2 Getting Out of Emacs</a>
    <ul class="no-bullet">
      <li><a id="toc-Killing-Emacs-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Killing-Emacs.html">41.2.1 Killing Emacs</a></li>
      <li><a id="toc-Suspending-Emacs-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Suspending-Emacs.html">41.2.2 Suspending Emacs</a></li>
    </ul></li>
    <li><a id="toc-Operating-System-Environment" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/System-Environment.html">41.3 Operating System Environment</a></li>
    <li><a id="toc-User-Identification-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/User-Identification.html">41.4 User Identification</a></li>
    <li><a id="toc-Time-of-Day-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Time-of-Day.html">41.5 Time of Day</a></li>
    <li><a id="toc-Time-Zone-Rules-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Time-Zone-Rules.html">41.6 Time Zone Rules</a></li>
    <li><a id="toc-Time-Conversion-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Time-Conversion.html">41.7 Time Conversion</a></li>
    <li><a id="toc-Parsing-and-Formatting-Times" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Time-Parsing.html">41.8 Parsing and Formatting Times</a></li>
    <li><a id="toc-Processor-Run-time" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Processor-Run-Time.html">41.9 Processor Run time</a></li>
    <li><a id="toc-Time-Calculations-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Time-Calculations.html">41.10 Time Calculations</a></li>
    <li><a id="toc-Timers-for-Delayed-Execution" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Timers.html">41.11 Timers for Delayed Execution</a></li>
    <li><a id="toc-Idle-Timers-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Idle-Timers.html">41.12 Idle Timers</a></li>
    <li><a id="toc-Terminal-Input-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Terminal-Input.html">41.13 Terminal Input</a>
    <ul class="no-bullet">
      <li><a id="toc-Input-Modes-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Input-Modes.html">41.13.1 Input Modes</a></li>
      <li><a id="toc-Recording-Input-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Recording-Input.html">41.13.2 Recording Input</a></li>
    </ul></li>
    <li><a id="toc-Terminal-Output-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Terminal-Output.html">41.14 Terminal Output</a></li>
    <li><a id="toc-Sound-Output-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Sound-Output.html">41.15 Sound Output</a></li>
    <li><a id="toc-Operating-on-X11-Keysyms" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/X11-Keysyms.html">41.16 Operating on X11 Keysyms</a></li>
    <li><a id="toc-Batch-Mode-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Batch-Mode.html">41.17 Batch Mode</a></li>
    <li><a id="toc-Session-Management-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Session-Management.html">41.18 Session Management</a></li>
    <li><a id="toc-Desktop-Notifications-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Desktop-Notifications.html">41.19 Desktop Notifications</a></li>
    <li><a id="toc-Notifications-on-File-Changes" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/File-Notifications.html">41.20 Notifications on File Changes</a></li>
    <li><a id="toc-Dynamically-Loaded-Libraries" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Dynamic-Libraries.html">41.21 Dynamically Loaded Libraries</a></li>
    <li><a id="toc-Security-Considerations-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Security-Considerations.html">41.22 Security Considerations</a></li>
  </ul></li>
  <li><a id="toc-Preparing-Lisp-code-for-distribution" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Packaging.html">42 Preparing Lisp code for distribution</a>
  <ul class="no-bullet">
    <li><a id="toc-Packaging-Basics-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Packaging-Basics.html">42.1 Packaging Basics</a></li>
    <li><a id="toc-Simple-Packages-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Simple-Packages.html">42.2 Simple Packages</a></li>
    <li><a id="toc-Multi_002dfile-Packages-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Multi_002dfile-Packages.html">42.3 Multi-file Packages</a></li>
    <li><a id="toc-Creating-and-Maintaining-Package-Archives" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Package-Archives.html">42.4 Creating and Maintaining Package Archives</a></li>
    <li><a id="toc-Interfacing-to-an-archive-web-server" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Archive-Web-Server.html">42.5 Interfacing to an archive web server</a></li>
  </ul></li>
  <li><a id="toc-Emacs-27-Antinews" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Antinews.html">Appendix A Emacs 27 Antinews</a></li>
  <li><a id="toc-GNU-Free-Documentation-License-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/GNU-Free-Documentation-License.html">Appendix B GNU Free Documentation License</a></li>
  <li><a id="toc-GNU-General-Public-License" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/GPL.html">Appendix C GNU General Public License</a></li>
  <li><a id="toc-Tips-and-Conventions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Tips.html">Appendix D Tips and Conventions</a>
  <ul class="no-bullet">
    <li><a id="toc-Emacs-Lisp-Coding-Conventions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Coding-Conventions.html">D.1 Emacs Lisp Coding Conventions</a></li>
    <li><a id="toc-Key-Binding-Conventions-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Key-Binding-Conventions.html">D.2 Key Binding Conventions</a></li>
    <li><a id="toc-Emacs-Programming-Tips" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Programming-Tips.html">D.3 Emacs Programming Tips</a></li>
    <li><a id="toc-Tips-for-Making-Compiled-Code-Fast" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Compilation-Tips.html">D.4 Tips for Making Compiled Code Fast</a></li>
    <li><a id="toc-Tips-for-Avoiding-Compiler-Warnings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Warning-Tips.html">D.5 Tips for Avoiding Compiler Warnings</a></li>
    <li><a id="toc-Tips-for-Documentation-Strings" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Documentation-Tips.html">D.6 Tips for Documentation Strings</a></li>
    <li><a id="toc-Tips-on-Writing-Comments" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Comment-Tips.html">D.7 Tips on Writing Comments</a></li>
    <li><a id="toc-Conventional-Headers-for-Emacs-Libraries" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Library-Headers.html">D.8 Conventional Headers for Emacs Libraries</a></li>
  </ul></li>
  <li><a id="toc-GNU-Emacs-Internals-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/GNU-Emacs-Internals.html">Appendix E GNU Emacs Internals</a>
  <ul class="no-bullet">
    <li><a id="toc-Building-Emacs-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Building-Emacs.html">E.1 Building Emacs</a></li>
    <li><a id="toc-Pure-Storage-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Pure-Storage.html">E.2 Pure Storage</a></li>
    <li><a id="toc-Garbage-Collection-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Garbage-Collection.html">E.3 Garbage Collection</a></li>
    <li><a id="toc-Stack_002dallocated-Objects-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Stack_002dallocated-Objects.html">E.4 Stack-allocated Objects</a></li>
    <li><a id="toc-Memory-Usage-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Memory-Usage.html">E.5 Memory Usage</a></li>
    <li><a id="toc-C-Dialect-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/C-Dialect.html">E.6 C Dialect</a></li>
    <li><a id="toc-Writing-Emacs-Primitives-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Writing-Emacs-Primitives.html">E.7 Writing Emacs Primitives</a></li>
    <li><a id="toc-Writing-Dynamically_002dLoaded-Modules" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Writing-Dynamic-Modules.html">E.8 Writing Dynamically-Loaded Modules</a>
    <ul class="no-bullet">
      <li><a id="toc-Module-Initialization-Code" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Module-Initialization.html">E.8.1 Module Initialization Code</a></li>
      <li><a id="toc-Writing-Module-Functions" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Module-Functions.html">E.8.2 Writing Module Functions</a></li>
      <li><a id="toc-Conversion-Between-Lisp-and-Module-Values" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Module-Values.html">E.8.3 Conversion Between Lisp and Module Values</a></li>
      <li><a id="toc-Miscellaneous-Convenience-Functions-for-Modules" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Module-Misc.html">E.8.4 Miscellaneous Convenience Functions for Modules</a></li>
      <li><a id="toc-Nonlocal-Exits-in-Modules" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Module-Nonlocal.html">E.8.5 Nonlocal Exits in Modules</a></li>
    </ul></li>
    <li><a id="toc-Object-Internals-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Object-Internals.html">E.9 Object Internals</a>
    <ul class="no-bullet">
      <li><a id="toc-Buffer-Internals-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Buffer-Internals.html">E.9.1 Buffer Internals</a></li>
      <li><a id="toc-Window-Internals-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Window-Internals.html">E.9.2 Window Internals</a></li>
      <li><a id="toc-Process-Internals-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Process-Internals.html">E.9.3 Process Internals</a></li>
    </ul></li>
    <li><a id="toc-C-Integer-Types-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/C-Integer-Types.html">E.10 C Integer Types</a></li>
  </ul></li>
  <li><a id="toc-Standard-Errors-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Standard-Errors.html">Appendix F Standard Errors</a></li>
  <li><a id="toc-Standard-Keymaps-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Standard-Keymaps.html">Appendix G Standard Keymaps</a></li>
  <li><a id="toc-Standard-Hooks-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Standard-Hooks.html">Appendix H Standard Hooks</a></li>
  <li><a id="toc-Index-1" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" rel="index">Index</a></li>
</ul>
</div>
</div>
<div class="Overview_element" id="SEC_Overview">
<h2 class="shortcontents-heading">Short Table of Contents</h2>

<div class="shortcontents">
<ul class="no-bullet">
<li><a id="stoc-Introduction-1" href="#toc-Introduction-1">1 Introduction</a></li>
<li><a id="stoc-Lisp-Data-Types-1" href="#toc-Lisp-Data-Types-1">2 Lisp Data Types</a></li>
<li><a id="stoc-Numbers-1" href="#toc-Numbers-1">3 Numbers</a></li>
<li><a id="stoc-Strings-and-Characters-1" href="#toc-Strings-and-Characters-1">4 Strings and Characters</a></li>
<li><a id="stoc-Lists-1" href="#toc-Lists-1">5 Lists</a></li>
<li><a id="stoc-Sequences_002c-Arrays_002c-and-Vectors" href="#toc-Sequences_002c-Arrays_002c-and-Vectors">6 Sequences, Arrays, and Vectors</a></li>
<li><a id="stoc-Records-1" href="#toc-Records-1">7 Records</a></li>
<li><a id="stoc-Hash-Tables-1" href="#toc-Hash-Tables-1">8 Hash Tables</a></li>
<li><a id="stoc-Symbols-1" href="#toc-Symbols-1">9 Symbols</a></li>
<li><a id="stoc-Evaluation-1" href="#toc-Evaluation-1">10 Evaluation</a></li>
<li><a id="stoc-Control-Structures-1" href="#toc-Control-Structures-1">11 Control Structures</a></li>
<li><a id="stoc-Variables-1" href="#toc-Variables-1">12 Variables</a></li>
<li><a id="stoc-Functions-1" href="#toc-Functions-1">13 Functions</a></li>
<li><a id="stoc-Macros-1" href="#toc-Macros-1">14 Macros</a></li>
<li><a id="stoc-Customization-Settings" href="#toc-Customization-Settings">15 Customization Settings</a></li>
<li><a id="stoc-Loading-1" href="#toc-Loading-1">16 Loading</a></li>
<li><a id="stoc-Byte-Compilation-1" href="#toc-Byte-Compilation-1">17 Byte Compilation</a></li>
<li><a id="stoc-Compilation-of-Lisp-to-Native-Code" href="#toc-Compilation-of-Lisp-to-Native-Code">18 Compilation of Lisp to Native Code</a></li>
<li><a id="stoc-Debugging-Lisp-Programs" href="#toc-Debugging-Lisp-Programs">19 Debugging Lisp Programs</a></li>
<li><a id="stoc-Reading-and-Printing-Lisp-Objects" href="#toc-Reading-and-Printing-Lisp-Objects">20 Reading and Printing Lisp Objects</a></li>
<li><a id="stoc-Minibuffers-1" href="#toc-Minibuffers-1">21 Minibuffers</a></li>
<li><a id="stoc-Command-Loop-1" href="#toc-Command-Loop-1">22 Command Loop</a></li>
<li><a id="stoc-Keymaps-1" href="#toc-Keymaps-1">23 Keymaps</a></li>
<li><a id="stoc-Major-and-Minor-Modes" href="#toc-Major-and-Minor-Modes">24 Major and Minor Modes</a></li>
<li><a id="stoc-Documentation-1" href="#toc-Documentation-1">25 Documentation</a></li>
<li><a id="stoc-Files-1" href="#toc-Files-1">26 Files</a></li>
<li><a id="stoc-Backups-and-Auto_002dSaving-1" href="#toc-Backups-and-Auto_002dSaving-1">27 Backups and Auto-Saving</a></li>
<li><a id="stoc-Buffers-1" href="#toc-Buffers-1">28 Buffers</a></li>
<li><a id="stoc-Windows-1" href="#toc-Windows-1">29 Windows</a></li>
<li><a id="stoc-Frames-1" href="#toc-Frames-1">30 Frames</a></li>
<li><a id="stoc-Positions-1" href="#toc-Positions-1">31 Positions</a></li>
<li><a id="stoc-Markers-1" href="#toc-Markers-1">32 Markers</a></li>
<li><a id="stoc-Text-1" href="#toc-Text-1">33 Text</a></li>
<li><a id="stoc-Non_002dASCII-Characters-1" href="#toc-Non_002dASCII-Characters-1">34 Non-<acronym>ASCII</acronym> Characters</a></li>
<li><a id="stoc-Searching-and-Matching-1" href="#toc-Searching-and-Matching-1">35 Searching and Matching</a></li>
<li><a id="stoc-Syntax-Tables-1" href="#toc-Syntax-Tables-1">36 Syntax Tables</a></li>
<li><a id="stoc-Abbrevs-and-Abbrev-Expansion" href="#toc-Abbrevs-and-Abbrev-Expansion">37 Abbrevs and Abbrev Expansion</a></li>
<li><a id="stoc-Threads-1" href="#toc-Threads-1">38 Threads</a></li>
<li><a id="stoc-Processes-1" href="#toc-Processes-1">39 Processes</a></li>
<li><a id="stoc-Emacs-Display" href="#toc-Emacs-Display">40 Emacs Display</a></li>
<li><a id="stoc-Operating-System-Interface" href="#toc-Operating-System-Interface">41 Operating System Interface</a></li>
<li><a id="stoc-Preparing-Lisp-code-for-distribution" href="#toc-Preparing-Lisp-code-for-distribution">42 Preparing Lisp code for distribution</a></li>
<li><a id="stoc-Emacs-27-Antinews" href="#toc-Emacs-27-Antinews">Appendix A Emacs 27 Antinews</a></li>
<li><a id="stoc-GNU-Free-Documentation-License-1" href="#toc-GNU-Free-Documentation-License-1">Appendix B GNU Free Documentation License</a></li>
<li><a id="stoc-GNU-General-Public-License" href="#toc-GNU-General-Public-License">Appendix C GNU General Public License</a></li>
<li><a id="stoc-Tips-and-Conventions" href="#toc-Tips-and-Conventions">Appendix D Tips and Conventions</a></li>
<li><a id="stoc-GNU-Emacs-Internals-1" href="#toc-GNU-Emacs-Internals-1">Appendix E GNU Emacs Internals</a></li>
<li><a id="stoc-Standard-Errors-1" href="#toc-Standard-Errors-1">Appendix F Standard Errors</a></li>
<li><a id="stoc-Standard-Keymaps-1" href="#toc-Standard-Keymaps-1">Appendix G Standard Keymaps</a></li>
<li><a id="stoc-Standard-Hooks-1" href="#toc-Standard-Hooks-1">Appendix H Standard Hooks</a></li>
<li><a id="stoc-Index-1" href="#toc-Index-1" rel="index">Index</a></li>
</ul>
</div>
</div>

<hr>
<div class="header">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Introduction.html" accesskey="n" rel="next">Introduction</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>





</body></html>