#lang racket

(define (sublsum? l)
  (cdr (combinations (cdr l))))

(sublsum? (list 1 2 3 4 -5))

(display "Sum: ")

(define (sum li)
  (if (null? li)
      '()
      (apply + li)))
(sum (list 1 2 3 4))
  