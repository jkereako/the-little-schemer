; Removes the first occurrence of atom `a` from the list `lat`.

(define rember
	(lambda (a lat)
		(cond
		  ((null? lat) ())
			((eq? (car lat) a) (cdr lat))
			(else (cons (car lat) (rember a
			                              (cdr lat)))))))
		      	             

(rember 'bacon '(bacon lettuce and tomato))
(rember 'and '(bacon lettuce and tomato))
