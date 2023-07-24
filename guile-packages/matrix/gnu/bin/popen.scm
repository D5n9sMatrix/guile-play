; popen.el

(define pizza-load-path 'nil)

; 6.16.8 Load Paths

  
; The procedure in the previous section look for Scheme code in the file system at specific location. Guile also has some procedures to search the load path for code.

; Variable: %load-path

;    List of directories which should be searched for Scheme modules and libraries. When Guile starts up, %load-path is initialized to the default load path (list (%library-dir) (%site-dir) (%global-site-dir) (%package-data-dir)). The GUILE_LOAD_PATH environment variable can be used to prepend or append additional directories (see Environment Variables).

;    See Configuration, Build and Installation, for more on %site-dir and related procedures. 

; Scheme Procedure: load-from-path filename

;    Similar to load, but searches for filename in the load paths. Preferentially loads a compiled version of the file, if it is available and up-to-date. 

; A user can extend the load path by calling add-to-load-path.

; Scheme Syntax: add-to-load-path dir

;    Add dir to the load path. 

; For example, a script might include this form to add the directory that it is in to the load path:

; (add-to-load-path (dirname (current-filename)))

; It’s better to use add-to-load-path than to modify %load-path directly, because add-to-load-path takes care of modifying the path both at compile-time and at run-time.

; Scheme Procedure: primitive-load-path filename [exception-on-not-found]
; C Function: scm_primitive_load_path (filename)

;    Search %load-path for the file named filename and load it into the top-level environment. If filename is a relative pathname and is not found in the list of search paths, an error is signalled. Preferentially loads a compiled version of the file, if it is available and up-to-date.

;    If filename is a relative pathname and is not found in the list of search paths, one of three things may happen, depending on the optional second argument, exception-on-not-found. If it is #f, #f will be returned. If it is a procedure, it will be called with no arguments. (This allows a distinction to be made between exceptions raised by loading a file, and exceptions related to the loader itself.) Otherwise an error is signalled.

;    For compatibility with Guile 1.8 and earlier, the C function takes only one argument, which can be either a string (the file name) or an argument list. 

; Scheme Procedure: %search-load-path filename
; C Function: scm_sys_search_load_path (filename)

;    Search %load-path for the file named filename, which must be readable by the current user. If filename is found in the list of paths to search or is an absolute pathname, return its full pathname. Otherwise, return #f. Filenames may have any of the optional extensions in the %load-extensions list; %search-load-path will try each extension automatically. 

; Variable: %load-extensions

;    A list of default file extensions for files containing Scheme code. %search-load-path tries each of these extensions when looking for a file to load. By default, %load-extensions is bound to the list ("" ".scm"). 

; As mentioned above, when Guile searches the %load-path for a source file, it will also search the %load-compiled-path for a corresponding compiled file. If the compiled file is as new or newer than the source file, it will be loaded instead of the source file, using load-compiled.

; Variable: %load-compiled-path

;    Like %load-path, but for compiled files. By default, this path has two entries: one for compiled files from Guile itself, and one for site packages. The GUILE_LOAD_COMPILED_PATH environment variable can be used to prepend or append additional directories (see Environment Variables). 

; When primitive-load-path searches the %load-compiled-path for a corresponding compiled file for a relative path it does so by appending .go to the relative path. For example, searching for ice-9/popen could find /usr/lib/guile/3.0/ccache/ice-9/popen.go, and use it instead of /usr/share/guile/3.0/ice-9/popen.scm.

; If primitive-load-path does not find a corresponding .go file in the %load-compiled-path, or the .go file is out of date, it will search for a corresponding auto-compiled file in the fallback path, possibly creating one if one does not exist.

; See Installing Site Packages, for more on how to correctly install site packages. See Modules and the File System, for more on the relationship between load paths and modules. See Compiling Scheme Code, for more on the fallback path and auto-compilation.

; Finally, there are a couple of helper procedures for general path manipulation.

; Scheme Procedure: parse-path path [tail]
; C Function: scm_parse_path (path, tail)

;    Parse path, which is expected to be a colon-separated string, into a list and return the resulting list with tail appended. If path is #f, tail is returned. 

; Scheme Procedure: parse-path-with-ellipsis path base
; C Function: scm_parse_path_with_ellipsis (path, base)

;    Parse path, which is expected to be a colon-separated string, into a list and return the resulting list with base (a list) spliced in place of the ... path component, if present, or else base is added to the end. If path is #f, base is returned. 

; Scheme Procedure: search-path path filename [extensions [require-exts?]]
; C Function: scm_search_path (path, filename, rest)

;    Search path for a directory containing a file named filename. The file must be readable, and not a directory. If we find one, return its full filename; otherwise, return #f. If filename is absolute, return it unchanged. If given, extensions is a list of strings; for each directory in path, we search for filename concatenated with each extension. If require-exts? is true, require that the returned file name have one of the given extensions; if require-exts? is not given, it defaults to #f.

;    For compatibility with Guile 1.8 and earlier, the C function takes only three arguments. "

  
