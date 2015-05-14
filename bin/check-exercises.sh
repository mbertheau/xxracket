#!/usr/bin/env sh

for exercise in *; do
    if [ -d $exercise ]; then
        cd $exercise
        if [ -f $exercise-test.rkt ]; then
            echo Testing $exercise...
            mv example.rkt $exercise.rkt
            racket $exercise-test.rkt
            mv $exercise.rkt example.rkt
        fi
        cd ..
    fi
done
