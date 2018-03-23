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
; For example:
;  1st element in list x = (1 ....) list y = (1 ...) list z = (1 ...) => 1 + 1 + 1 = 3 which is a odd number...
;   Therefore, add a 1 in a new list => (1)
;  2nd element in list z (1 0 ...) list y = (1 0 ...) list z = (1 0 ...) => 0 + 0 + 0 = 0 which is a even number...
;   Therefore, add a 0 in the new list => (1 0) ..and so on with the rest of the elements in x y z until the end of the lists.

; Pass in 3 lists containing only 1's and 0's
(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) ; Expected result: '(0 1 1 0 1 0 0 1)
(sod2 (list 1 0 0 0 1 0 0 1) (list 1 0 1 1 1 0 1 1) (list 1 0 0 1 1 1 0 1)) ; Expected result: '(1 0 1 0 1 1 1 1)
