# Task 8
Write a function chse in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing the elements of y in the positions where x is 1 and the elements of z otherwise. For example:
```Racket
> (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) 
'(0 1 0 1 0 0 1 1)
```




### Step 1
Create our chse function, check that the 3 lists are not null and they are equal in length.
```Racket
(define (chse x y z)
  (if (null? x)(null? y)(null? z))
  '()
  (if (not (= (length x)(length y)(length z)))
      '()
      #t))
```

### Step 2
```Racket

```

## References


