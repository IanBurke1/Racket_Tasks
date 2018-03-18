#lang racket

(define (maj x y z))


; Passing in 3 lists
(maj (list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 0 1 0 1 0 1 0 1)) ; Expected result: '(0 0 0 1 0 1 1 1)
