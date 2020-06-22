; 递归计算
(define (isTo3 n)
    (cond 
        ((< n 3) n)
        (else (+ (isTo3 (- n 1)) (* 2 (isTo3 (- n 2))) (* 3 (isTo3 (- n 3)))))
    ))

(display (isTo3 3))
(display (isTo3 4))
; 迭代计算
(define (iterateIsTo3 n)
    (f-iter 2 1 0 0 n))

(define (f-iter a b c i n)
    (if (= i n) c
        (f-iter (+ a (* 2 b) (* 3 c)) a b (+ i 1) n))
)
(display (iterateIsTo3 3))
(exit)