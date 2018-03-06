#lang racket

; hamming-weight function takes in a list and returns the number of non-zero elements in it. 
(define (hamming-weight? l)
  ; using apply function to sum the elements remaining in the list after being filtered.
  (apply +(filter positive? l))) ; Using racket's filter function to filter the list to return a list of positive numbers not equal to zero

; passing in a list
(hamming-weight? (list 1 0 1 0 1 1 1 0)) ; expected result: 5