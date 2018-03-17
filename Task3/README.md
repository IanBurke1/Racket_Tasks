# Task 3
Write, from scratch, two functions in Racket. The ﬁrst is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right. 

For example: 
```Racket
> (lcycle (list 1 2 3 4 5)) 
'(2 3 4 5 1) 
```
```Racket
> (rcycle (list 1 2 3 4 5)) 
'(5 1 2 3 4)
```
## Pairs and Lists
A [pair](https://docs.racket-lang.org/reference/pairs.html) combines exactly two values. The first value is accessed with the car procedure, and the second value is accessed with the cdr procedure. Pairs are not mutable.

A [list](https://docs.racket-lang.org/reference/pairs.html) is recursively defined: it is either the constant null, or it is a pair whose second value is a list.

#### *(cons a d)*
Returns a newly allocated pair whose first element is 'a' and second element is 'd'

#### *(car p)*
Returns the first element of the pair 'p'.

#### *(cdr p)*
Returns the second element of the pair 'p'.

## Left cycle
### Step 1
Create a function that takes in a list and check if the list is not null.
```Racket
; Take in a list and move the 1st element of the list to the end.
(define (lcycle l) ; define our procedure and pass in list
  (if (null? l) ; if list = null then..
      '() ; output null
	  (display l)))
```

### Step 2
Without using Racket's append function, we have to create our own function to move the 1st element to the end of the list.
```Racket
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

```
### Step 3
Now we need to fix up our lcycle function. When we take in a list (pair) we need to use 'cdr' to take the 2nd element(s) of the pair in the list and pass it into appendFunc as the 1st arguement. Then we use 'car' to take the 1st element of the pair and pass it as the 2nd arguement in appendFunc to carry out the procedure.
```Racket
; Take in a list and move the 1st element of the list to the end.
(define (lcycle l) ; define our procedure and pass in a list
  (if (null? l) ; if list = null then..
      '() ; output null, otherwise...
      (appendFunc (cdr l )(car l)))) ; using our appendFunc shown below, cut 1st element from list and append it to end of the list
```

### Step 4
Put it all together
```Racket
; Take in a list and move the 1st element of the list to the end.
(define (lcycle l) ; define our procedure and pass in a list
  (if (null? l) ; if list = null then..
      '() ; output null, otherwise...
      (appendFunc (cdr l )(car l)))) ; using our appendFunc shown below, cut 1st element from list and append it to end of the list

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
```
## Right cycle
### Step 1
In order to shift the last element of the list to the start we need to remove it. So we need to create a recursive function to do that.
So in this function we will remove the last element.
```Racket
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
  
;Testing remove-last
(remove-last (list 1 2 3 4 5)) ;expected output: '(1 2 3 4)
```

### Step 2
Once we have the remove-last function working, we need to create our rcycle function and implement the remove-last function.
```Racket
; Take in a list and move the last element to the start of the list.
(define (rcycle l)
  (if (null? l) ; if list = null then..
      '() ; output null
      ; Otherwise, Using remove-last to remove last element of list and return the remaining list of elements...
      ; and then using 'last' racket function to take the last element of list...
      ; to create a new list with last element at the start using cons 
      (cons (last l)(remove-last l)))) 

```

### step 3
Put it all together
```Racket
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

(rcycle(list 1 2 3 4 5)) ; expected output: '(5 1 2 3 4)
```
## References
- https://docs.racket-lang.org/reference/pairs.html
- https://stackoverflow.com/questions/22947366/scheme-how-do-you-append-a-list-with-a-single-item