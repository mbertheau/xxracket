#lang racket

(define (string-only-upper s)
  (and (not (equal? (string-downcase s) s))
       (equal? (string-upcase s) s)))

(define (hey what)
  (let ([what (string-trim what)])
    (cond [(zero? (string-length what)) "Fine. Be that way!"]
          [(string-only-upper what) "Whoa, chill out!"]
          [(equal? (last (string->list what)) #\?) "Sure."]
          [else "Whatever."])))

(provide hey)
