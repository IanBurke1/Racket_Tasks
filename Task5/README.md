# Task 5
Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero elements in it. For example:
```Racket
> (hamming-weight (list 1 0 1 0 1 1 1 0)) 
5 
```

## Hamming weight
The Hamming weight of a string is the number of symbols that are different from the zero-symbol of the alphabet used. It is thus equivalent to the Hamming distance from the all-zero string of the same length. For the most typical case, a string of bits, this is the number of 1's in the string. In this binary case, it is also called the population count, popcount, or sideways sum.

Hamming weight is used in several disciplines including information theory, coding theory, and cryptography.

### Step 1
Create the hamming-weight function.
```Racket
; hamming-weight function takes in a list and returns the number of non-zero elements in it. 
(define (hamming-weight? l))

; passing in a list
(hamming-weight? (list 1 0 1 0 1 1 1 0)) ; expected result: 
```


### Step 2
Added a filter function to filter out the positive numbers not equal to zero.
```Racket
; hamming-weight function takes in a list and returns the number of non-zero elements in it. 
(define (hamming-weight? l)
    (filter positive? l))

; passing in a list
(hamming-weight? (list 1 0 1 0 1 1 1 0)) ; expected result: 11111
```

### Step 3
Added apply function to sum the content in the list after being filtered.
```Racket
; hamming-weight function takes in a list and returns the number of non-zero elements in it. 
(define (hamming-weight? l)
  ; using apply function to sum the elements remaining in the list after being filtered.
  (apply +(filter positive? l))) ; Using racket's filter function to filter the list to return a list of positive numbers not equal to zero

; passing in a list
(hamming-weight? (list 1 0 1 0 1 1 1 0)) ; expected result: 5
```

### References
- https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Fprivate%2Flist..rkt%29._filter%29%29
- https://docs.racket-lang.org/reference/procedures.html
- https://ipfs.io/ipfs/QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/wiki/Hamming_weight.html