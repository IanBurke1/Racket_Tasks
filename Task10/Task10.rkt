#lang racket

; ======== USING LAMBDA EXPRESSION ============================================================
; lstq function that takes in 2 lists l and m, subtract the corresponding element in m from l and square the result.
(define (lstq l m)
  (apply + (map (lambda (l m) (square (- m l) )) l m)))
; Using map to map through the lists l m and using lambda expression, apply two procedures (- and square) to....
;  corresponding elements in the lists.
;   Subtract a given element in m from the corresponding element in l and..
;    square the result using the square function below..
;     then using (apply +) which is a racket function to add each squared result in the list to find the sum.

; square function created to square a number passed in
(define (square x)(* x x))

; Pass in 2 lists
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8)) ; Expected result: 54.61
(display "\n") ; Line break

; ======== USING RECURSION =====================================================================
(define (lstq2 l m)
  (if (null? l) ; if list l is null then..
      0 ; return zero, otherwise...
      ; using recursion, take the 2nd elements in both pairs (cdr l)(cdr m)..
      ;  then take the 1st element (car l)(car m) from l and m and subtract each other..
      ;   the result is then squared using the square function above.
      ;    the squared results are put into a list.
      ;     sumlst function then adds each squared result in the list and returns the sum.
      (sumlst (list (square (- (car l)(car m))) (lstq2 (cdr l)(cdr m))))))

; sumlst function used to add each element in a list
(define (sumlst x)
  (if (null? x) ; if list is null the..
      0 ; return 0, otherwise...
      ; take the 2nd element of the pair (list) using (cdr x)..
      ; then take the 1st element of that pair using (car x) and repeat until cdr x hits null (end of list)..
      ; add each 1st element until the recursion is finished to get our sum.
      (+ (car x)(sumlst (cdr x)))))

;For example:
;  After the results from the subtractions are squared, using the lists below, we should have..
; '(11.56 27.04 0.01 16.0)
;  to add each element in that list to get the sum we need to take that list and split the 1st element from the rest.
;  (car x) takes the 1st element => (11.56) and..
;  (cdr x) takes the rest => (27.04 0.01 16.0)
;  using recursion, this process is repeated.. (car x)(sumlst (cdr x) and the 1st element is taken from that sublist after each iteration.
;  until the sublist hits null and the recursion stops and returns the sum of all the 1st elements.


; Pass in 2 lists
(lstq2 (list 4.5 5.1 6.2 7.8)(list 1.1 -0.1 6.1 3.8)) ; Expected result: 54.61

