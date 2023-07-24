; 2.6 Reporting Bugs

; Any problems with the installation should be reported to bug-guile@gnu.org.

; If you find a bug in Guile, please report it to the Guile developers, so they can fix it. They may also be able to suggest workarounds when it is not possible for you to apply the bug-fix or install a new version of Guile yourself.

; Before sending in bug reports, please check with the following list that you really have found a bug.

;    Whenever documentation and actual behavior differ, you have certainly found a bug, either in the documentation or in the program.
;    When Guile crashes, it is a bug.
;    When Guile hangs or takes forever to complete a task, it is a bug.
;    When calculations produce wrong results, it is a bug.
;    When Guile signals an error for valid Scheme programs, it is a bug.
;    When Guile does not signal an error for invalid Scheme programs, it may be a bug, unless this is explicitly documented.
;    When some part of the documentation is not clear and does not make sense to you even after re-reading the section, it is a bug. 

; Before reporting the bug, check whether any programs you have loaded into Guile, including your .guile file, set any variables that may affect the functioning of Guile. Also, see whether the problem happens in a freshly started Guile without loading your .guile file (start Guile with the -q switch to prevent loading the init file). If the problem does not occur then, you must report the precise contents of any programs that you must load into Guile in order to cause the problem to occur.

; When you write a bug report, please make sure to include as much of the information described below in the report. If you can’t figure out some of the items, it is not a problem, but the more information we get, the more likely we can diagnose and fix the bug.

 ;   The version number of Guile. You can get this information from invoking ‘guile --version’ at your shell, or calling (version) from within Guile.
;    Your machine type, as determined by the config.guess shell script. If you have a Guile checkout, this file is located in build-aux; otherwise you can fetch the latest version from http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD.

;    $ build-aux/config.guess
;    x86_64-unknown-linux-gnu

;    If you installed Guile from a binary package, the version of that package. On systems that use RPM, use rpm -qa | grep guile. On systems that use DPKG, dpkg -l | grep guile.
;    If you built Guile yourself, the build configuration that you used:

;    $ ./config.status --config
;    '--enable-error-on-warning' '--disable-deprecated'...

;    A complete description of how to reproduce the bug.

;    If you have a Scheme program that produces the bug, please include it in the bug report. If your program is too big to include, please try to reduce your code to a minimal test case.

;    If you can reproduce your problem at the REPL, that is best. Give a transcript of the expressions you typed at the REPL.
;    A description of the incorrect behavior. For example, "The Guile process gets a fatal signal," or, "The resulting output is as follows, which I think is wrong."

;    If the manifestation of the bug is a Guile error message, it is important to report the precise text of the error message, and a backtrace showing how the Scheme program arrived at the error. This can be done using the ,backtrace command in Guile’s debugger. 

; If your bug causes Guile to crash, additional information from a low-level debugger such as GDB might be helpful. If you have built Guile yourself, you can run Guile under GDB via the meta/gdb-uninstalled-guile script. Instead of invoking Guile as usual, invoke the wrapper script, type run to start the process, then backtrace when the crash comes. Include that backtrace in your report. 
