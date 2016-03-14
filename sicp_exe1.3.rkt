#lang racket
(define (squa x) (* x x))
(define (squa-sum x y) (+ (squa x) (squa y)))
(define (zweigt x y z)
    (cond
      ((and (<= x y) (<= x z)) (squa-sum y z))
      ((and (<= y x) (<= y z)) (squa-sum x z))
      ((and (<= z x) (<= z y)) (squa-sum x y))))