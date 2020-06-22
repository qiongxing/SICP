(define (product term a next b)
    (if (> a b)
        1
        (* (term a) (product term (next a) next b) )
    ))

(define (product-change term a next b)
    (define (iter a result)
        (if (> a b) result
            (iter (+ a 1) (* (term a) result)
        )   
    )
    )
    (iter a 1)
)

(define (factorial n)
    (product-change (lambda (x) x)
             1
             (lambda (i) (+ i 1))
             n))

; (display (factorial 3))

; 求pi的近似值
(define (molecule k)
    (if (odd? k) (+ k 1) (+ k 2)))
(define (denominator k)
    (if (odd? k) (+ k 2) (+ k 1)))
(define (pi n)
    (* 4 (exact->inexact (/ (product molecule 1 (lambda (i) (+ i 1)) n)
            (product denominator 1 (lambda (i) (+ i 1)) n))
        )))
(display (pi 100))
(exit)