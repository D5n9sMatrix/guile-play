; 4.4.4.1 Help Commands

; When Guile starts interactively, it notifies the user that help can be
; had by typing ‘,help’.  Indeed, help  is a command, and a particularly
; useful  one,  as it  allows  the  user to  discover  the  rest of  the
; commands.

help [all | group | [-c] command]

; [REPL Command]
; Show help.

; With one  argument, tries  to look  up the argument  as a  group name,
; giving help  on that group if  successful. Otherwise tries to  look up
; the argument as a command, giving help on the command.

; If there  is a command whose  name is also  a group name, use  the ‘-c
; command  ’ form  to give  help on  the command  instead of  the group.
; Without any argument,  a list of help commands and  command groups are
; displayed.

; show [topic]

; [REPL Command]

; Gives information  about Guile.   With one argument,  tries to  show a
; particular  piece of  information;  currently sup-  ported topics  are
; ‘warranty’  (or ‘w’),  ‘copying’  (or ‘c’),  and  ‘version’ (or  ‘v’).
; Without any argument,  a list of topics is  displayed.  apropos regexp
; Find  bindings/modules/packages.[REPL   Command]  describe   obj  Show
; description/documentation.

