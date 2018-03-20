#lang racket

; Maj function used to compare the elements of 3 lists and place the majority of elements in a new list
(define (maj x y z)
  (if (null? x) (null? y) (null? z)) ;if the 3 lists are null then..
      '() ; output null, otherwise..
      (+ (car x)(car y)(car z)))
  
      
  


; Passing in 3 lists
(maj (list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 0 1 0 1 0 1 0 1)) ; Expected result: '(0 0 0 1 0 1 1 1)
