#lang racket

(define (sublsum? l)
  (combinations l))

(sublsum? (list 1 2 3 4 -5))



; Function used to calculate sum of a list
(define (sum li)
  (if (null? li) ; if list = null then..
      '() ; return null, otherwise...
      ; 'apply' is a racket func used to calculate the sum of elements in a list
      (equal? (apply + li) 0))) ; then check if sum is = to 0 using 'equal' function

(sum (list 1 2 3 4))
