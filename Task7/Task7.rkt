#lang racket

; Maj function used to compare the elements of 3 lists and place the majority of elements in a new list
(define (maj x y z)
  (if (null? x)(null? y)(null? z)) ;if the 3 lists are null then..
      '() ; output null, otherwise..
  ; if the length of the 3 lists are NOT equal then..
      (if (not(= (length x)(length y)(length z)))
          '() ; output null, otherwise...
          ; Iterate through the 3 lists and add the elements by mapping the..
          ; 1st element in each list together, then add the 2nd elements, 3rd elements and so on until end.
          ; if the sum of the elements is greater than 1 then return 1 (majority is 1's) otherwise 0 (majority is 0's)..
          ; in a new list containing the majority of 1's and 0's
          (map (lambda (x y z)
                 (if (> (+ x y z) 1) 1 0)) x y z)))
          ; map is a built in racket function that iterates through the 3 lists (x y z) and maps a procedure to each corresponding element in the 3 lists using lambda as a..
          ; shortcut to pass in and evaluate each list.

      
  


; Passing in 3 lists
(maj (list 0 0 0 0 1 1 1 1)(list 0 0 1 1 0 0 1 1)(list 0 1 0 1 0 1 0 1)) ; Expected result: '(0 0 0 1 0 1 1 1)

(maj (list 0 1 0 1 1 1 1 1)(list 0 0 0 0 0 1 0 0)(list 0 1 1 1 0 0 1 0)) ; Expected result: '(0 1 0 1 0 1 1 0)
