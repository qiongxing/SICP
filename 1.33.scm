(load "./1.22-1.23.scm")
(define (filtered-accumulate combine null-value term a next b valid?)
    (if (> a b)
        null-value
        (let ((rest-terms (filtered-accumulate combine
                                               null-value
                                               term
                                               (next a)
                                               next
                                               b
                                               valid?)))
            (if (valid? a)
                (combine (term a) rest-terms)
                rest-terms))))

(define (prime-sum a b)
    (filtered-accumulate + 0 (lambda (x) x) a (lambda (x) (+ x 1)) b prime?)
)
(display (prime-sum 1 4))

; (define (f g)
;     (g 3))
; (display (f f))
(exit)

