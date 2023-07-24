
; Scheme Procedure: make-object-property

;    Create and return an object property. An object property is a procedure-with-setter that can be called in two ways. (set! (property obj) val) sets obj’s property to val. (property obj) returns the current setting of obj’s property. 

;     A single object property created by make-object-property can associate distinct property values with all Scheme values that are distinguishable by eq? (ruling out numeric values).

;     Internally, object properties are implemented using a weak key hash table. This means that, as long as a Scheme value with property values is protected from garbage collection, its property values are also protected. When the Scheme value is collected, its entry in the property table is removed and so the (ex-) property values are no longer protected by the table.

;     Guile also implements a more traditional Lispy interface to properties, in which each object has an list of key-value pairs associated with it. Properties in that list are keyed by symbols. This is a legacy interface; you should use weak hash tables or object properties instead.


; Scheme Procedure: object-properties obj
; C Function: scm_object_properties (obj)

;    Return obj’s property list. 

(define object-properties '(scm_object_properties(obj)))

; Scheme Procedure: set-object-properties! obj alist
; C Function: scm_set_object_properties_x (obj, alist)
;    Set obj’s property list to alist.

(define set-object-properties! '(scm_set_object_properties_x(obj, alist)))



; Scheme Procedure: object-property obj key
; C Function: scm_object_property (obj, key)

(define object-property '(scm_object(obj, key)))

;    Return the property of obj with name key. 

; Scheme Procedure: set-object-property! obj key value
; C Function: scm_set_object_property_x (obj, key, value)

; In obj’s property list, set the property named key to value.

(define set-object-property! '(
      scm_set_object_property_x(obj, key, value)))
