#lang racket

(require math/number-theory)

(define (leap-year? year)
  (or (and (divides? 4 year)
           (not (divides? 100 year)))
      (divides? 400 year)))

(provide leap-year?)
