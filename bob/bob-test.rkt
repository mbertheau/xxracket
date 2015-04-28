#lang racket

(require rackunit
         "bob.rkt")

(check-equal? (hey "Tom-ay-to, tom-aaaah-to.")
              "Whatever." "stating something")

(check-equal? (hey "WATCH OUT!")
              "Whoa, chill out!" "shouting")

(check-equal? (hey "Does this cryogenic chamber make me look fat?")
              "Sure." "asking a question")

(check-equal? (hey "You are, what, like 15?")
              "Sure." "asking a numeric question")

(check-equal? (hey "Let's go make out behind the gym!")
              "Whatever." "talking forcefully")

(check-equal? (hey "It's OK if you don't want to go to the DMV.")
              "Whatever." "using acronyms in regular speech")

(check-equal? (hey "WHAT THE HELL WERE YOU THINKING?")
              "Whoa, chill out!" "forceful questions")

(check-equal? (hey "1, 2, 3 GO!")
              "Whoa, chill out!" "shouting numbers")

(check-equal? (hey "1, 2, 3")
              "Whatever." "only numbers")

(check-equal? (hey "4?")
              "Sure." "question with only numbers")

(check-equal? (hey "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!")
              "Whoa, chill out!" "shouting with special characters")

(check-equal? (hey "ÜMLÄÜTS!")
              "Whoa, chill out!" "shouting with umlauts")

(check-equal? (hey "ÜMLäÜTS!")
              "Whatever." "calmly speaking with umlauts")

(check-equal? (hey "I HATE YOU")
              "Whoa, chill out!" "shouting with no exclamation mark")

(check-equal? (hey "Ending with ? means a question.")
              "Whatever." "statement containing question mark")

(check-equal? (hey "Wait! Hang on. Are you going to be OK?")
              "Sure." "prattling on")

(check-equal? (hey "")
              "Fine. Be that way!" "silence")

(check-equal? (hey "    \t")
              "Fine. Be that way!" "prolonged silence")

(check-equal? (hey "         hmmmmmmm...")
              "Whatever." "starts with whitespace")

(check-equal? (hey "What if we end with whitespace?   ")
              "Sure." "ends with whitespace")
