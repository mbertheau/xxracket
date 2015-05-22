#lang racket

(require rackunit
         rackunit/text-ui
         "leap.rkt")

(define suite
  (test-suite
    "Tests for the leap exercise"
    (check-true (leap-year? 1996) "leap year")
    (check-false (leap-year? 1997) "non-leap year")
    (check-false (leap-year? 1998) "non-leap even year")
    (check-false (leap-year? 1900) "century")
    (check-true (leap-year? 2400) "exceptional century")))

(exit (if (zero? (run-tests suite)) 0 1))
