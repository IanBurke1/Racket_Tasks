#lang racket

; chse function used to check if an element in x is equal to 1 then take the corresponding element in y and add it to a
; new list otherwise if an element in x is equal to zero then take the corresponding element in z and add it to new list.
(define (chse x y z)
  (if (null? x)(null? y)(null? z)) ; If each list is null then..
  '() ; return null, otherwise..
  (if (not (= (length x)(length y)(length z))) ; if length of the lists are not equal then..
      (display "Lists's are not equal in length ") ; display message, otherwise..
      ; Map through the 3 lists and
      ; check if elements in x is equal to 1 then..
      ; add the corresponding element in y to a new list
      ; otherwise if not equal to 1 (in this case equal to 0) then..
      ; add the corresponding element in z to that new list.
      (map (lambda (x y z)
             (if (= x 1) y z)) x y z)))

; pass in 3 lists
(chse (list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 0 1 0 1 0 1 0 1)) ; Expected result: '(0 1 0 1 0 0 1 1)
(chse (list 1 1 0 0 1 0 0 1)(list 1 0 0 1 0 0 1 1)(list 1 1 0 1 0 1 0 1)) ; Expected result: '(1 0 0 1 0 1 0 1) 