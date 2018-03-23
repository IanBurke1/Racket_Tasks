#lang racket

; ======== USING LAMBDA EXPRESSION ============================================================
; lstq function that takes in 2 lists l and m, subtract the corresponding element in m from l and square the result.
(define (lstq l m)
  (apply + (map (lambda (l m) (sqrt (- m l) )) l m)))

(define (sqrt x)
  (* x x))

; Pass in 2 lists
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8)) ; Expected result: 54.61

; ======== USING RECURSION =====================================================================

(define (lstq2 l m)
  (if (null? l)
      '()
      (cons (- (car l)(car m)) (lstq (cdr l)(cdr m)))))
      

; Pass in 2 lists
(lstq2 (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8)) ; Expected result: 54.61

