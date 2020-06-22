; 未完成
(load "./scheme.helper.scm")
(define (expt base n)
    (if (= n 0)
        1
        ((repeated (lambda (x) (* base x)) n) 1)
    )
)
(define (average-damp-n-times f n)
    (repeated f n))
(display (expt 3 3))