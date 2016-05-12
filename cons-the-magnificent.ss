; Removes the first occurrence of atom `a` from the list `lat`.
(define rember
  (lambda (a lat)
    (cond ((null? lat) ())
          ((eq? (car lat) a) (cdr lat))
          (else
            (cons (car lat) (rember a (cdr lat)))))))


(rember 'bacon '(bacon lettuce and tomato))
(rember 'and '(bacon lettuce and tomato))

(define multirember
  (lambda (a lat)
    (cond ((null? lat) ())
          ((eq? a (car lat)) (multirember a (cdr lat)))
          (else
            (cons (car lat) (multirember a (cdr lat)))))))

; Return the first atom from a list of lists
(define firsts
  (lambda (l)
    (cond ((null? l) ())
      (else
        (cons (car (car l)) (firsts (cdr l)))))))

(firsts '((a b) (c d) (e f)))

; Insert an atom `new` to the right of atom `old` in `lat`
(define insertR
  (lambda (new old lat)
    (cond ((null? lat) ())
      (else
        (cond ((eq? (car lat) old)
               (cons old (cons new (cdr lat))))
              (else
                (cons (car lat) (insertR new old (cdr lat)))))))))

(insertR 'topping 'fudge '(ice cream with fudge for dessert))

(define multiinsertR
  (lambda (new old lat)
    (cond ((null? lat) ())
          ((eq? old (car lat))
                (cons (car lat) (cons new (multiinsertR new old (cdr lat)))))
          (else
            (cons (car lat) (multiinsertR new old (cdr lat)))))))



; Same as above but insert to the left
(define insertL
  (lambda (new old lat)
    (cond ((null? lat) ())
      (else
        (cond ((eq? (car lat) old)
               (cons new (cons old (cdr lat))))
              (else
                (cons (car lat) (insertL new old  (cdr lat))))))))) 
(insertL 'chocolate 'fudge '(ice cream with fudge for dessert))

(define subst
  (lambda (new old lat)
    (cond ((null? lat) ())
          (else
            (cond ((eq? (car lat) old)
                   (cons new (cdr lat)))
                  (else
                    (cons (car lat) (subst new old (cdr lat)))))))))

(subst 'topping 'fudge '(ice cream with fudge for dessert))

