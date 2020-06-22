(load "./1.22-1.23.scm")
(load "./1-24/fast-prime.scm")

(define (prime? n)
    (fast-prime? n 10))
(display (search-for-primes 100000))