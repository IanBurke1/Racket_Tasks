#lang racket

(define (collatz-list n)
  (cond ((= n 1) ; condition, if n = 1 then..
         '(1)) 
        ((odd? n) ; if number is odd then..
         (cons n(collatz-list (+ 1(* 3 n))))) ; multiply by 3 and add 1.
        (else ; otherwise
         (cons n (collatz-list (/ n 2)))))) ; divide by 2         
  

(collatz-list 5) ; odd number
(collatz-list 10) ; even number
