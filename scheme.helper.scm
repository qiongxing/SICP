(define (cube x)
    (* x x x))
(define (square x)
    (* x x))
(define (repeated f n)
    (if (= n 1) f
        (lambda (x) 
            (let ((fs (repeated f (- n 1))))
                (f (fs x))
            )
        )
    )
)
; 最大公约数
(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))
; (display (gcd 10 15))