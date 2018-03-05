#lang racket

(define (sublsum? l)
  ; Combinations is a built in racket function that returns every combination of elements in a list
  ; using filter, another racket func, to list out only the sublists that are true, in this case, equal to zero
  (filter sum (combinations l)))



; Function used to calculate sum of a list
(define (sum li)
  (if (null? li) ; if list = null then..
      '() ; return null, otherwise...
      ; 'apply' is a racket function used to calculate the sum of elements in a list
      (equal? (apply + li) 0))) ; then check if sum is = to 0 using 'equal' function

; Pass in the list into our function
(sublsum? (list 1 2 3 4 -5)) ; expected result: (2 3 -5) (1 4 -5)

;(sublsum? (list 1 2 3 4 5)) ; expected result: '(())