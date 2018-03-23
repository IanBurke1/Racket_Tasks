#lang racket

; lstq function that takes in 2 lists l and m, subtract the corresponding element in m from l and square the result.
(define (lstq l m)
  (if (or (null? l)(null? m)) ; if l or m are null then...
      '() ; return null, otherwise...
      (if (not(= (length l)(length m))) ; if l and m are not equal in length then..
          '() ; return null, otherwise....
          #t))) ; return true

; Pass in 2 lists
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8)) ; Expected result: 54.61