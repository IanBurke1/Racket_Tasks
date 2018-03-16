#lang racket
; Define our collatz-list function.
(define (collatz-list n)
  ; Using cond as there are a few conditions..
  (cond ((= n 1) ; if n = 1 then..
         '(1)) ; return 1, otherwise...
        ((odd? n) ; if number is odd then..
         ; cons returns a pair (list) of results with the last element being 1
         (cons n(collatz-list (+ 1(* 3 n))))) ; multiply by 3 and add 1.
        (else ; otherwise, if number is even then..
         (cons n (collatz-list (/ n 2)))))) ; divide by 2         
  

(collatz-list 5) ; odd number
(collatz-list 10) ; even number
