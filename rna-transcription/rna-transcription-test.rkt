#lang racket

(require rackunit
         rackunit/text-ui
        "rna-transcription.rkt")

(define suite
  (test-suite
    "Tests for the rna-transcription exercise"
    (check-equal? (to-rna "G") "C" "transcribes guanine to cytosine")
    (check-equal? (to-rna "C") "G" "transcribes cytosine to guanine")
    (check-equal? (to-rna "T") "A" "transcribes thymine to adenine")
    (check-equal? (to-rna "A") "U" "transcribes adenine to uracil")
    (check-equal? (to-rna "ACGTGGTCTTAA") "UGCACCAGAAUU" "transcribes all occurences")))

(exit (if (zero? (run-tests suite)) 0 1))
