(load "./scheme.helper.scm")
(define (compose f g)
    (lambda (x) (f (g x)))    
)
(display ((compose square 1+) 6))