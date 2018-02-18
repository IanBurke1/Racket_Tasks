# Task 3
Write, from scratch, two functions in Racket. The ﬁrst is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right. 

For example: 
```Racket
> (lcycle (list 1 2 3 4 5)) '(2 3 4 5 1) 
```
```Racket
> (rcycle (list 1 2 3 4 5)) '(5 1 2 3 4)
```

## List

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
Shift the first element of the list to the end by cutting the 1st pair and appending it to the 2nd pair.
```Racket
; Take in a list and move the 1st element of the list to the end.
(define (lcycle l) ; define our procedure and pass in list
  (if (null? l) ; if list = null then..
      '() ; output null
(append (cdr l) (list (car l))))) ; otherwise, take 1st element and append it to list

```

### Step 3
In order to shift the last element of the list to the start we need to remove it first.
So in this function we will remove the last element.
```Racket
; remove-last function to remove last element from list
(define (remove-last l)
  (if (null? (cdr l)) ; if 2nd element pair = null then..
        '() ;output null
(cons (car l) (remove-last (cdr l))))) ; newly allocated list

```

### Step 4
Add our rcycle function to append the last element to the start of the list.
```Racket
; Take in a list and move the last element to the start of the list.
(define (rcycle l)
  (if (null? l) ; if list = null then..
      '() ; output null
      (append (cons (last l)(remove-last l))))) ; otherwise call the remove-last function to remove last element and append list to it
```