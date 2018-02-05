#lang racket

(define (collats-list n)
  (if (even? n) ; if number is even then..
      (/ n 2) ; divide by 2
      (+ 1 (* 3 n)))) ; if odd, multiply by 3 and then add 1.

(collats-list 5)
