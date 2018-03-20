#lang racket

(define chse x y z)

; pass in 3 lists
(chse (list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 0 1 0 1 0 1 0 1)) ; Expected result: '(0 1 0 1 0 0 1 1)