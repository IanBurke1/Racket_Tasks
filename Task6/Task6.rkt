#lang racket

; hamming-distance function used to calculate the hamming distance between 2 lists
(define (hamming-distance l li)
  (if (null? l) ; if list1 = null then..
      0 ; output 0
      (if (null? li) ; if list2 = null then..
          0 ; output 0, otherwise..
          (if (= (car l)(car li)) ; if the 1st element of list1 and list2 are equal then..
              (hamming-distance (cdr l) (cdr li)) ; take the 2nd elements of the pair from both lists recursively
              (+ 1 (hamming-distance (cdr l) (cdr li))))))) ; otherwise if not equal then add 1 until the end of the lists.
; For Example:
; If 1st element in list1 is 1 and in list2 is 1, both are equal, so.. +1 (add 1 to counter)
; If 2nd element in list1 is 0 and in list2 is 1, they are NOT equal, so.. Dont count it and continue the recursion (repeat the process) until end of both lists

; Passing in our 2 lists
(hamming-distance (list 1 0 1 0 1 1 1 0)(list 1 1 1 1 0 0 0 0)) ; Expected result: 5
(hamming-distance (list 1 1 1 0 0 0 1 0)(list 0 0 0 1 1 1 0 0)) ; Expected result: 7