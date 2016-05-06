(define atom?
  (lambda (a)
    (and (not (pair? a)) (not (null? a)))))

(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))

(lat? '(bacon (and eggs))

