; `car` accepts 1 list as parameter and returns the first S-expression of said
; list. It is defined only for non-empty lists
(car '(hotdogs and pickle relish))
; > hotdogs

; `cdr` also accepts 1 list as a parameter. It returns the list of S-expressions
; sans the first S-expression (i.e. "the rest of the list"). It too is defined
; only for non-empty lists.
(cdr '(peanut butter and jelly))
; > (butter and jelly)

; `cons` accepts 2 parameters; the first is an S-expression and the second must
; be a list. It returns a new list.
(cons 'peanut '(butter and jelly))
; > (peanut butter and jelly)

(cons '(banana and) '(peanut butter and jelly))
; > ((banana and) peanut butter and jelly)

(cons () ())
; (())

;`null?` accepts 1 list as a parameter. It is true if the list is empty.
(null? ())
; > #t

(null? '(swing low sweet cherry oat))
; > #f

; `eq?` accepts 2 atoms as parameters. It is true if both atoms are equal
(eq? 'a 'b)
; > #f

