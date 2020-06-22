(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime))
    )
(define (start-prime-test n start-time)
    (if (prime? n)
        (report-prime (- (runtime) start-time))    
    ))

(define (report-prime elapsed-time)
    (display "***")
    (display elapsed-time)
    )
; 生成下一个奇数
(define (next-odd n)
    (if (odd? n)
        (+ n 2)
        (+ 1 n)
    )
)
; (display (next-odd 3))
; (exit)
(define (smallest-divisor n)
    (find-divisor n 2))
(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n)
            n)
          ((divides? test-divisor n)
            test-divisor)
          (else
            ; (find-divisor n (+ test-divisor 1))
            ; 定义一个next，当不能被2整除时，过滤4,6,8等等
            (find-divisor n (next test-divisor))
        )))
(define (next divisor)
    (cond ((= divisor 2) 3)
        (else (+ divisor 2)))
    )

; 求余
(define (divides? a b)
    (= (remainder b a) 0))
; 平方
(define (square n)
    (* n n))
; 检验是否素数
(define (prime? n)
    (= n (smallest-divisor n)))

(define (coutinue-primes n count)
    (cond ((= count 0) (display "are primes"))
        ((prime? n) 
          (display n) 
            (newline)
            (coutinue-primes (next-odd n) (- count 1))
        )
        (else (coutinue-primes (next-odd n) count))
        ))

(define (search-for-primes n)
    (time (coutinue-primes n 3)))


; (display (search-for-primes 100000))
; (exit)