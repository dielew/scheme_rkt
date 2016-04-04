#lang racket
(define (square x)
  (* x x))
(define (ft b n)
  (fast 1 b n))
(define (fast a b n)
  (cond
    [(equal? n 0) a]
    [(even? n) (fast a (square b) (/ n 2))]
    [else (fast (* a b) b (- n 1))]
    )
  )