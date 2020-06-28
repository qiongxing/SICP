(define (subsets s)
    (if (null? s)
        (list '())
        (let ((rest (subsets (cdr s))))
            (append rest 
                (map 
                (lambda (tmp) 
                    (cons (car s) tmp)
                )
            rest))
        )
    )    
)