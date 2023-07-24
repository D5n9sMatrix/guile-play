; 4.4.5 Error Handling

; When code being evaluated from the  REPL hits an error, Guile enters
; a new  prompt, allowing  you to  inspect the  context of  the error.
; scheme@(guile-user)>  (map  string-append  ’("a"  "b")  ’("c"  #\d))
; ERROR:In  procedure  string-append:  ERROR:  Wrong  type  (expecting
; string): #\d  Entering a new prompt.  Type ‘,bt’ for a  backtrace or
; ‘,q’  to continue.   scheme@(guile-user)  [1]> The  new prompt  runs
; inside the old  one, in the dynamic  context of the error.   It is a
; recursive  REPL,  augmented with  a  reified  representation of  the
; stack, ready  for debugging.  ,backtrace (abbreviated  ,bt) displays
; the  Scheme  call stack  at  the  point  where the  error  occurred:
; scheme@(guile-user)  [1]> ,bt  1 (map  #<procedure string-append  _>
; ("a" "b") ("c" #\d)) 0 (string-append "b" #\d) In the above example,
; the  backtrace doesn’t  have  much source  information,  as map  and
; string-append  are both  primitives. But  in the  general case,  the
; space on the left of the  backtrace indicates the line and column in
; which a  given procedure  calls another.  You  can exit  a recursive
; REPL in the  same way that you exit any  REPL: via ‘(quit)’, ‘,quit’
; (abbreviated ‘,q’), or C-d, among other options.
