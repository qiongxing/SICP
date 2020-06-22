(define (cont-frac N D k)

    (define (cf i)
        (if (= k i)
            (/ (N k) (D k))
            (/ (N i)
               (+ (D i) (cf (+ i 1))))))

    (cf 1))

(define (request-e i)
    (define (N i)
        1)
    (define (D i)
        (if (= 0 (remainder (+ i 1) 3))
            (* (/ (+ i 1) 3) 2)
            1
        )
    )
    (+ 2.0 (cont-frac N D i))
)

(display (request-e 1000))
(exit)