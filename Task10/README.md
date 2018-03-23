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