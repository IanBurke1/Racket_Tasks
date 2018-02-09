#lang racket

(define (lcycle l)
  (if (null? l)
      '()
      (append (cdr l) (list (car l)))))

(define (rcycle l)
  (if (null? l)
      '()
      (append (cons (last l)(remove-last l)))))

(define (remove-last l)
  (if (null? (cdr l))
        '()
        (cons (car l) (remove-last (cdr l)))))
  



(lcycle(list 1 2 3 4 5)) ; expected output: '(2 3 4 5 1)

(rcycle(list 1 2 3 4 5)) ; expected output: '(5 1 2 3 4)