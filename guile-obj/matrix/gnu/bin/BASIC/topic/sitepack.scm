; 4.7 Installing Site Packages

; At some  point, you will probably  want to share your  code with other
; people.  To do  so effectively,  it is  important to  follow a  set of
; common conventions,  to make it easy  for the user to  install and use
; your package.  The  first thing to do is to  install your Scheme files
; where Guile can find  them. When Guile goes to find  a Scheme file, it
; will search a load  path to find the file: first  in Guile’s own path,
; then in  paths for site  packages. A site  package is any  Scheme code
; that is  installed and not  part of  Guile itself. See  Section 6.16.8
; [Load Paths],  page 393, for  more on  load paths.  There  are several
; site paths, for historical reasons,  but the one that should generally
; be  used can  be obtained  by  invoking the  %site-dir procedure.  See
; Section 6.23.1 [Build Config], page 460.  If Guile 3.0 is installed on
; your    system     in    /usr/,     then    (%site-dir)     will    be
; /usr/share/guile/site/3.0. Scheme  files should be  installed there.58
; Guile Reference Manual If you do not install compiled .go files, Guile
; will compile your  modules and programs when they are  first used, and
; cache  them  in   the  user’s  home  directory.   See  Section  6.16.6
; [Compilation], page 389, for more  on auto-compilation. However, it is
; better to  compile the files  before they  are installed, and  to just
; copy the files  to a place that  Guile can find them.   As with Scheme
; files, Guile  searches a path to  find compiled .go files,  the %load-
; compiled-path.  By default,  this path  has  two entries:  a path  for
; Guile’s files, and  a path for site packages. You  should install your
; .go  files into  the  latter  directory, whose  value  is returned  by
; invoking the  %site-ccache-dir procedure. As in  the previous example,
; if   Guile  3.0   is  installed   on  your   system  in   /usr/,  then
; (%site-ccache-dir)         site        packages         will        be
; /usr/lib/guile/3.0/site-ccache.   Note that  a .go  file will  only be
; loaded in preference to  a .scm file if it is  newer. For that reason,
; you should  install your Scheme  files first, and your  compiled files
; second. See  Section 6.16.8 [Load  Paths], page  393, for more  on the
; loading process.  Finally, although this section is only about Scheme,
; sometimes  you need  to  install C  extensions  too. Shared  libraries
; should be installed in the extensions  dir. This value can be had from
; the  build  config (see  Section  6.23.1  [Build Config],  page  460).
; Again, if  Guile 3.0 is  installed on your  system in /usr/,  then the
; extensions dir will be /usr/lib/guile/3.0/extensions.

