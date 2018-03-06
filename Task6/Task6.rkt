#lang racket

; hamming-distance function used to calculate the hamming distance between 2 lists
(define (hamming-distance l li)
  ; if the length of l is equal to length of li then..
  (if (= (length l)(length li))
      #t 
      #f))

; Passing in our 2 lists
(hamming-distance (list 1 0 1 0 1 1 1 0)(list 1 1 1 1 0 0 0 0))