(define (cons1 x y)
    (lambda (m) (m x y))    
)
(define (car1 z)
    (z (lambda (p q) p))    
)



(display (car1 (cons1 5 9)))
(car1 (lambda (m) (m 5 9)))

((lambda (m) (m 5 9)) (lambda (p q) p))    



(
    (lambda (z) (z (lambda (p q) p)))  ; 展开 car ，代换 z
    (lambda (m) (m 5 9))
)
(
    (lambda (m) (m 5 9))               ; 代换 m
    (lambda (p q) p)
)
(
    (lambda (b p) (
        b
    ) 5 9)
)