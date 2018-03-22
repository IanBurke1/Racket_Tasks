# Task 9
Write a function sod2 in Racket that takes three lists x, y and z of equal length and containingonly0’sand1’s. Itshouldreturnalistcontaininga1wherethenumberof 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise. 
For example:
```Racket
> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) 
'(0 1 1 0 1 0 0 1)
```