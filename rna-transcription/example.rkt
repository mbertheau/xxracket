#lang racket

(define (to-rna sequence)
  (list->string
    (for/list ([c (in-string sequence)])
      (case c
        [(#\G) #\C]
        [(#\C) #\G]
        [(#\T) #\A]
        [(#\A) #\U]))))

(provide to-rna)
