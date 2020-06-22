(define (pasc x y)
    (cond
        ((> y x)
            ("unvalid col value"))
        ((or (= y 1) (= x y)) 1)
        (else (+ (pasc (- x 1) (- y 1)) (pasc (- x 1) (y))))
    )
    
)
(display(pasc 2 2))
(exit)