; 4.8 Distributing Guile Code

; There’s a  tool that doesn’t  come bundled with  Guile and yet  can be
; very useful in your day to day  experience with it. This tool is Hall.
; Hall helps you create, manage, and package your Guile projects through
; a simple  command-line interface. When  you start a new  project, Hall
; creates  a  folder containing  a  scaffold  of  your new  project.  It
; contains  a directory  for your  tests, for  your libraries,  for your
; scripts and  for your documentation.  This means you  immediately know
; where to put the files you  are hacking on.  In addition, the scaffold
; will include your  basic “Autotools” setup, so you don’t  have to take
; care of that yourself (see Section “The GNU Build System” in Autoconf:
; Creating Automatic Configuration Scripts,  for more information on the
; GNU “Autotools”). Having Autotools set  up with your project means you
; can immediately start  hacking on your project  without worrying about
; whether your code will work on other people’s computers. Hall can also
; generate package definitions for the  GNU Guix package manager, making
; it easy for Guix users to install it.

