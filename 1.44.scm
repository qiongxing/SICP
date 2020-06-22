(load "./scheme.helper.scm")
(load "./1.43.scm")
(define dx 0.00001)
(define (smooth f)
    (lambda (x) (/ 
                    (+ 
                        (f (- x dx))
                        (f x) 
                        (f (+ x dx))) 
                    3
                )    
    )
)
; (display ((smooth square) 5))
; (newline)
(display ((repeated smooth 3) 5))