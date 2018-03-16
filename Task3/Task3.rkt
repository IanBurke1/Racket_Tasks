#lang racket

; ============== LCYCLE ===========================================
; Take in a list and move the 1st element of the list to the end.
(define (lcycle l) ; define our procedure and pass in a list
  (if (null? l) ; if list = null then..
      '() ; output null, otherwise...
      ; Using appendFunc as shown below...
      ; Take the first element (car) of the pair and pass it into appendFunc as x
      ; Take the 2nd elements (cdr) of the pair and pass them into appendFunc as lst 
      (appendFunc (cdr l )(car l)))) 


; Since we are not allowed to use Racket's append function, I had to find another way around this problem
; Ref: https://stackoverflow.com/questions/22947366/scheme-how-do-you-append-a-list-with-a-single-item
; Takes in 2 args, a list and an interger
(define (appendFunc lst x)
  (cond ; condition-clause..
    ((null? lst) ; if the list is null
     (cons x '())) ;then return x as null list
    ; otherwise/else, using recursion (appendFunc ... cut the 2nd pair (cdr lst) in the list along with x and...
    ; cut the 1st pair (car lst)..
    ; then create an overall list using cons 
    (else (cons (car lst) (appendFunc (cdr lst) x)))))


; ================ RCYCLE ==========================================
; Take in a list and move the last element to the start of the list.
(define (rcycle l)
  (if (null? l) ; if list = null then..
      '() ; output null
      ; Otherwise, Using remove-last to remove last element of list and return the remaining list of elements...
      ; and then using 'last' racket function to take the last element of list...
      ; to create a new list with last element at the start using cons 
      (cons (last l)(remove-last l)))) 

; Creating a remove-last function to remove last element from list
(define (remove-last l)
  (if (null? (cdr l)) ; if 2nd element of pair = null then..
        '() ;output null, otherwise...
        ; using recursion, take 2nd elements (cdr l)..
        ; and take the first element (car l) from that pair each time.. 
        ; Then using cons to create a list of remaining elements
        (cons (car l) (remove-last (cdr l))))) ; newly allocated list
; so during recursion, when it comes to (car l) = 5 then (cdr l) = null since 5 is the last element in the list..
; therefore it returns null and the remaining 1 2 3 4 elements are kept and returned above ^
  



(lcycle(list 1 2 3 4 5)) ; expected output: '(2 3 4 5 1)

(rcycle(list 1 2 3 4 5)) ; expected output: '(5 1 2 3 4)

;Testing appendFunc 
;(appendFunc (list 2 3 4 5) 1) ;expected output: '(2 3 4 5 1)

;Testing remove-last
;(remove-last (list 1 2 3 4 5)) ;expected output: '(1 2 3 4)