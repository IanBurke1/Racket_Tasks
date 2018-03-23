#lang racket

; sod2 function used to return a new list containing a 1 where the number..
;  of corresponding 1's in the lists x y z is odd no. of 1's otherwise 0.
(define (sod2 x y z )
  (if (null? x)(null? y)(null? z)) ; if lists x y z are null then..
      '() ; return null, otherwise..
      (if (not (= (length x)(length y)(length z))) ; if lists x y z are not equal in length then..
          '() ; return null, otherwise..
          ; Map through the 3 lists and apply the following procedure using lambda expression..
          ;  add the corresponding elements in x y z and if sum is odd then..
          ;   return a new list containing a 1 otherwise if sum is even then put in a zero in that position
          (map (lambda (x y z)
                 (if (odd? (+ x y z) ) 1 0)) x y z)))

; Passing in 3 lists containing only 1's and 0's
(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) ; Expected result: '(0 1 1 0 1 0 0 1)
(sod2 (list 1 0 0 0 1 0 0 1) (list 1 0 1 1 1 0 1 1) (list 1 0 0 1 1 1 0 1)) ; Expected result: '(1 0 1 0 1 1 1 1)
