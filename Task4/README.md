# Task 4
Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the sublists and their elements doesn’t matter. For example:
```Racket
> (sublsum (list 1 2 3 4 -5)) 
'((2 3 -5) (-5 1 4))
```
```Racket
> (sublsum (list 1 2 3 4 5)) 
'()
```

#### Combinations
Return a list of all combinations of elements in the input list (aka the powerset of lst). If size is given, limit results to combinations of size elements. Example:
```Racket
> (combinations '(1 2 3))
'(() (1) (2) (1 2) (3) (1 3) (2 3) (1 2 3))
```

#### apply
Applies a procedure using the content of a list. Example:
```Racket
> (apply + '(1 2 3))
6
```

#### filter
Returns a list with the elements of lst for which pred produces a true value. The pred procedure is applied to each element from first to last. Example:
```Racket
> (filter positive? '(1 -2 3 4 -5))
'(1 3 4)
```

## Step 1
Create a function called sublsum that takes in a list and return every combination of the list.
```Racket
(define (sublsum? l)
  (combinations l))

(sublsum? (list 1 2 3 4 -5))
```
output
```Racket
'(()
  (1)
  (2)
  (1 2)
  (3)
  (1 3)
  (2 3)
  (1 2 3)
  (4)
  (1 4)
  (2 4)
  (1 2 4)
  (3 4)
  (1 3 4)
  (2 3 4)
  (1 2 3 4)
  (-5)
  (1 -5)
  (2 -5)
  (1 2 -5)
  (3 -5)
  (1 3 -5)
  (2 3 -5)
  (1 2 3 -5)
  (4 -5)
  (1 4 -5)
  (2 4 -5)
  (1 2 4 -5)
  (3 4 -5)
  (1 3 4 -5)
  (2 3 4 -5)
  (1 2 3 4 -5))
```
## Step 2
Create another function to calculate the sum of elements in each sublist returned from conbinations
```Racket
(define (sum li)
  (if (null? li) ; if list = null then..
      '() ; return null, otherwise...
      ; 'apply' is a racket function used to calculate the sum of elements in a list
(equal? (apply + li) 0))) ; then check if sum is equal to 0 using 'equal' function
```

## Step 3 
We need to filter each combination from the list in order to output only the sublists with a sum equal to zero.

```Racket
(define (sublsum? l)
  ; Combinations is a built in racket function that returns every combination of elements in a list
  ; cdr is used to just return the 2nd element of the list pair due to the 1st element being null
  ; using filter, another racket func, to list out only the sublists that are true, in this case, equal to zero
(filter sum (cdr (combinations l))))
```

## Step 4
Put together the code and test it.
```Racket
(define (sublsum? l)
  ; Combinations is a built in racket function that returns every combination of elements in a list
  ; cdr is used to just return the 2nd element of the list pair due to the 1st element being null
  ; using filter, another racket func, to list out only the sublists that are true, in this case, equal to zero
  (filter sum (cdr (combinations l))))



; Function used to calculate sum of elements in each sublist returned from combinations
(define (sum li)
  (if (null? li) ; if list = null then..
      '() ; return null, otherwise...
      ; 'apply' is a racket function used to calculate the sum of elements in a list
      (equal? (apply + li) 0))) ; then check if sum is equal to 0 using 'equal' function

; Pass in the list into our function
(sublsum? (list 1 2 3 4 -5)) ; expected result: (2 3 -5) (1 4 -5)

;(sublsum? (list 1 2 3 4 5)) ; expected result: '(())
```
## References
- https://www.reddit.com/r/Racket/comments/7zzajd/take_a_list_and_output_sumlist_of_all_the/
- https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Fprivate%2Flist..rkt%29._filter%29%29