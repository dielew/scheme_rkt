#lang racket 
(define (double x)
  (* x 2))
(define (halve x)
  (cond
    [(even? x) (/ x 2)]
    [else "Invalid Input: ARG is not an even!"]
  )
)
(define (fast-mul a n)
  (cond
    [(equal? n 0) 0]
    [(equal? n 1) a]
    [(< n 0) "unexpected value: 2nd ARG shouble be Zero or Positive value"]
    [(even? n) (double (fast-mul a (halve n)))]
    [else (+ a (fast-mul a (- n 1)))]
  )
)

