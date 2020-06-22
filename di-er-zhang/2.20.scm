(define (same-parity x . y)
    (let ((isOdd (odd? x)))
        (iter (cons x y) '() isOdd) 
    )
)
; 顺序是反的，可以使用2.18的倒序
(define (iter lst result isOdd)
     (cond ((null? lst) result)
           (
              (if (eqv? (odd? (car lst)) isOdd) (iter (cdr lst) (cons (car lst) result) isOdd)
                (iter (cdr lst) result isOdd)
              ) 
            )
     )   
)


; (define (same-parity sample . others)
;     (filter (if (even? sample)
;                 even?
;                 odd?)
;             (cons sample others)))  
; (filter zero? (list 1 0 2 0 3 0))
(display (same-parity 2 34 43 2 5))