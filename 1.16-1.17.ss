;迭代求冥等
; (define (fast-expt b n)
;     (expt-iter b n 1))

; (define (expt-iter b n a)
;     (cond 
;         ((= n 0)
;         a)
;         ((even? n) (expt-iter (square b) (/ n 2) a) )
;         ((odd? n) (expt-iter b (- n 1) (* b a)) )
;     ))
; (define (square n)
;     (* n n))
; (display(fast-expt 2 3))

;求乘积
(define (fast-expt a b)
    (cond ((= b 0) 0)
        ((even? b) (double (fast-expt a (halve b))))
        ((odd? b) (+ a (fast-expt a (- b 1))))
        ))
(define (double n)
    (* n 2))
(define (halve n)
    (/ n 2))
(display(fast-expt 5 5))
(exit)

