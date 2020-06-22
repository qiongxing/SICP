
; 用cond定义一个新的if
; (define (new-if chaxuntiaojian then-result else-result)
;     (cond (chaxuntiaojian then-result)
;            (else else-result)))

; (define (sqrt-iter guess x)
;     (if (good-enough? guess (improve guess x))
;         guess
;         (sqrt-iter (improve guess x) x)))

; ; 求商,待求值与猜测值求商，再取平均值改善猜测值
; (define (improve guess x)
;     (average guess (/ x guess)))

; (define (average x y)
;     (/ (+ x y) 2))
; (define (square x)
;     (* x x))
; ; (define (good-enough? guess y)
; ;     (< (abs (- (square guess) y)) 0.00001)
; ;     )
; (define (good-enough? old-guess new-guess)
;     (> 0.01 (/ (abs (- old-guess new-guess) ) old-guess)))
; (define (sqrt x)
;     (sqrt-iter 1.0 x))

; (display(new-if (= 2 3) 0 5))
; (newline)
; (display(sqrt 9838928392839))

; (exit)



; 求立方根
(define (cube-iter guess x)
    (if (good-enough? guess (improve guess x))
        guess
        (cube-iter (improve guess x) x)))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3)
    )

(define (square x)
    (* x x))

(define (good-enough? old-guess new-guess)
    (> 0.00001 (/ (abs (- old-guess new-guess) ) old-guess)))

(define (cube x)
    (cube-iter 1.0 x))
(display(cube 27))
