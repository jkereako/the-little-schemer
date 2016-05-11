(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))

; Adds 2 numbers... fun!
(define add
  (lambda (n m)
    (cond ((zero? n) m)
          (else (add1 (add m (sub1 n)))))))

; Subtracts `n` from `m`.
(define sub
  (lambda (n m)
    (cond ((zero? m) n)
          (else (sub1 (sub n (sub1 m)))))))

(define mult
  (lambda (n m)
    (cond ((zero? n) 0)
          (else (add m (mult (sub1 n) m))))))

