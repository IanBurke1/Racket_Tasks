#lang racket

(define (hamming-distance l li)
  (if (= (length l)(length li))
      #t
      #f))

(hamming-distance (list 1 0 1 0 1 1 1 0)(list 1 1 1 1 0 0 0 0))