; Tests whether atom `a` is a member of list `lat`
(define member?
  (lambda (a lat)
    (cond ((null? lat) #f)
          ((eq? a (car lat)) #t)
          (else
            (member? a (cdr lat))))))

(member? 'peach '(apple peach pear peach plum apple lemon peach))

; Tests whether list `lat` is  a set
(define set?
  (lambda (lat)
    (cond ((null? lat) #t)
          ((member? (car lat) (cdr lat)) #f)
          (else
            (set? (cdr lat))))))

(set? '(apple peach pear peach plum apple lemon peach))

; Creates a set from a list
(define makeset
  (lambda (lat)
    (cond ((null? lat) ())
          ((member? (car lat) (cdr lat)) (makeset (cdr lat)))
          (else
            (cons (car lat) (makeset (cdr lat)))))))

(makeset '(apple peach pear peach plum apple lemon peach))

(define subset?
  (lambda (set1 set2)
    (cond ((null? set1) #t)
          (else
            (and (member? (car set1) set2) (subset? (cdr set1) set2))))))

(define eqset?
  (lambda (set1 set2)
    (cond (and (subset? set1 set2) (subset? set2 set1)))))

(define intersect?
  (lambda (set1 set2)
    (cond ((null? set1) #f)
          (else
            (or (member? (car set1) set2) (intersect? (cdr set1) set2))))))

           
