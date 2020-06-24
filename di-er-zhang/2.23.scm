(define (for-each process lst)
    (if (not (null? lst))
        (begin 
            (process (car lst))
            (for-each process (cdr lst))
        )
    )
)
(for-each (lambda (x) (newline) (display x)) (list 57 321 88))