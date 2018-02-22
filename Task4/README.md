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

## Step 1
Create a function called sublsum that takes in a list and return every combination of the list.
```Racket
(define (sublsum? l)
  (combinations l))

(sublsum? (list 1 2 3 4 -5))
```