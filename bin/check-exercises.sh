#!/usr/bin/env sh

for exercise in *; do
    if [ -d $exercise ]; then
        cd $exercise
        if [ -f $exercise-test.rkt ]; then
            echo Testing $exercise...
            cp example.rkt $exercise.rkt
            racket $exercise-test.rkt
            rm $exercise.rkt
        fi
        cd ..
    fi
done
