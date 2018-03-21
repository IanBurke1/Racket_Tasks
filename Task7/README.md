# Task 7
Write a function maj in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a 1 where two or more of x, y and z contain 1’s, and 0 otherwise. For example: 
```Racket
> (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) 
'(0 0 0 1 0 1 1 1)
```

## Majority
Find the majority of 0's and 1's in the first elements, second elements, third elements and so on in the three lists.

## Map
Applies procedure to the elements of the list(s) from the first elements to the last. The procedure arguement must accept the same number of arguments as the number of supplied lists, and all lists must have the same number of elements. The result is a list containing each result of procedure in order.

Example:
```Racket 
> (map (lambda (number)
         (+ 1 number))
       '(1 2 3 4))

'(2 3 4 5)
```

## Lambda
A lambda expression creates a function. In the simplest case, a lambda expression has the form. Basically, instead of creating a total seperate function, you can just use lambda as a shortcut to pass in a one shot function as a parameter without defining it first.

Very good examples and explainations of Lambda expressions:
https://stackoverflow.com/questions/25696063/lambda-in-racket-explained

https://stackoverflow.com/questions/2943072/whats-the-point-of-lambda-in-scheme


### Step 1

```Racket

```

### Step 2

```Racket

```

## References