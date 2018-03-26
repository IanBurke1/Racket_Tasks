# Task 10
Write a function lstq in Racket that takes as arguments two lists l and m of equal length and containing numbers. It should return d, the distance given by the sum of the square residuals between the numbers in the lists:

<p align="center"> 
<img src="https://user-images.githubusercontent.com/22341150/37830542-6a5adf44-2e9a-11e8-86a9-cb0185f10337.PNG">
</p>

This means take the ith element of m from the ith element of l and square the result for all i. Then add all of those to get d. For example:
```Racket
> (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8)) 

54.61
```

### Map
Applies procedure to the elements of the list(s) from the first elements to the last. The procedure arguement must accept the same number of arguments as the number of supplied lists, and all lists must have the same number of elements. The result is a list containing each result of procedure in order.

Example:
```Racket 
> (map (lambda (number)
         (+ 1 number))
       '(1 2 3 4))

'(2 3 4 5)
```

### Lambda expressions
A lambda expression creates a function. In the simplest case, a lambda expression has the form. Basically, instead of creating a total seperate function to use in another function, you can just use lambda as a shortcut to create a function to use it as an argument to another function (like for example map), without defining the function.

For Example:

If you want to add 10 to every number in a list you can do:
```Racket
(define (addten l) (+ l 42))
(map addten (list 1 2 3 4))
```
Instead of naming and defining the function that you only use once, you can use lambda as a shortcut:
```Racket
(map (lambda (l) (+ l 42)) (list 1 2 3 4))
> 
```

Here a very good examples and explainations of Lambda expressions:

https://stackoverflow.com/questions/25696063/lambda-in-racket-explained

https://stackoverflow.com/questions/2943072/whats-the-point-of-lambda-in-scheme

### Step 1
We will use the map function to map the two lists l and m along with a lambda expression to add a procedure such as subtraction. 
```Racket
(define (lstq l m)
  (map (lambda (l m) (- l m) ) l m))
```
### Step 2
The next step is to square the results from the subtractions. To do this, we need to create our own square function.
```Racket
(define (square x)(* x x))
```

### Step 3
Next we add in our square function and also apply function, a built in racket function, which applies a procedure such as addition to find the sum of the squared elements in the list.
```Racket
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
```

## Or another way using recursion
### Step 1
Create a function and check if the list is null. Recursively take the 2nd elements from both lists (pairs) using (lstq2 (cdr l)(cdr m)) and also take the 1st elements using (car l)(car m). Then subtract the corresponding elements and return the results in a new list.
```Racket
(define (lstq2 l m)
  (if (null? l) ; if list l is null then..
      0 ; return zero, otherwise...
      (list(- (car l)(car m)) (lstq2 (cdr l)(cdr m)))))

;  Expected result: '(3.4 5.19 0.10 4.0)
(lstq2 (list 4.5 5.1 6.2 7.8)(list 1.1 -0.1 6.1 3.8))
```

### Step 2
Add our square function from above to square each result from the subtraction.
```Racket
(define (lstq2 l m)
  (if (null? l) ; if list l is null then..
      0 ; return zero, otherwise...
      
      (list (square (- (car l)(car m))) (lstq2 (cdr l)(cdr m)))))

;  Expected result: '(11.56 27.04 0.01 16.0)
(lstq2 (list 4.5 5.1 6.2 7.8)(list 1.1 -0.1 6.1 3.8))
```

### Step 3
Create a funtion to calculate the sum of elements in a list.
```Racket
(define (sumlst x)
  (if (null? x) ; if list is null the..
      0 ; return 0, otherwise...
      ; take the 2nd element of the pair (list) using (cdr x)..
      ; then take the 1st element of that pair using (car x) and repeat until cdr x hits null (end of list)..
      ; add each 1st element until the recursion is finished to get our sum.
      (+ (car x)(sumlst (cdr x)))))
```

### Step 4
Add sumlst function to get the sum of the squared results.
```Racket
(define (lstq2 l m)
  (if (null? l) ; if list l is null then..
      0 ; return zero, otherwise...
      ; using recursion, take the 2nd elements in both pairs (cdr l)(cdr m)..
      ;  then take the 1st element (car l)(car m) from l and m and subtract each other..
      ;   the result is then squared using the square function above.
      ;    the squared results are put into a list.
      ;     sumlst function then adds each squared result in the list and returns the sum.
      (sumlst (list (square (- (car l)(car m))) (lstq2 (cdr l)(cdr m))))))

; Pass in 2 lists
(lstq2 (list 4.5 5.1 6.2 7.8)(list 1.1 -0.1 6.1 3.8)) ; Expected result: 54.61
```

## References
- https://stackoverflow.com/questions/22560573/how-to-do-square-in-racket
- https://docs.racket-lang.org/reference/pairs.html#%28def._%28%28lib._racket%2Fprivate%2Fmap..rkt%29._map%29%29