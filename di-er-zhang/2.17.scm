(define (reverse list1)
    (cond 
        ((null? list1) (display "error"))
        ((null? (cdr list1)) list1)
        (else (reverse (cdr list1)))
    )
)
(display (reverse (list 1 2 5)))
