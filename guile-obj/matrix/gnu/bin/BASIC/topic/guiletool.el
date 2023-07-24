; 4.6 Using Guile Tools

; Guile also  comes with a  growing number of command-line  utilities: a
; compiler, a disassem- bler, some module inspectors, and in the future,
; a system to install Guile packages  from the internet. These tools may
; be invoked using the guild program.  $ guild compile -o foo.go foo.scm
; wrote ‘foo.go’ This program used to  be called guile-tools up to Guile
; version 2.0.1, and  for backward compatibility it still  may be called
; as such. However we changed the name  to guild, not only because it is
; pleasantly shorter and easier to read, but also because this tool will
; serve to  bind Guile  wizards together, by  allowing hackers  to share
; code with  each other  using a CPAN-like  system.  See  Section 6.16.6
; [Compilation], page 389,  for more on guild compile.   A complete list
; of guild scripts can be had by invoking guild list, or simply guild.

