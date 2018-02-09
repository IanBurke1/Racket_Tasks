#lang racket

(define (lcycle l)
  (if (null? l)
      '()
      (append (cdr l) (list (car l)))))

(define (rcycle l)
  (if (null? l)
      '()
      (append (car l) (list (cdr l)))))



(lcycle(list 1 2 3 4 5))

(rcycle(list 1 2 3 4 5))