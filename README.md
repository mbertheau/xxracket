# xRacket

[![Build Status](https://travis-ci.org/mbertheau/xxracket.svg?branch=master)](https://travis-ci.org/mbertheau/xxracket)

This is the preparation work for an official Racket track for exercism.io. When it's official it
will be at https://github.com/exercism/xracket.

# About exercism.io

[exercism.io](http://exercism.io) lets people upload solutions to simple programming problems in a
language that they are learning and get feedback/nitpicks from experienced language users about
coding style and idiomacy.

The problems come with automated tests. The learner writes a module, using the automated tests to
check his implementation for completeness. He then uploads it to [exercism.io](http://exercism.io),
where other people can comment on the learners code. The learner can upload improved revisions of
his code in response to feedback. He can also look at other peoples solutions for inspiration and
insight.

Note that the automatic tests are never run against the learner's solution automatically.

# Status and a request for review

I'm currently implementing tests for the various exercises (https://github.com/exercism/x-common).
Since I'm a Racket learner myself, I need experienced Racketeers to review the interfaces the
automated tests assume. Please look at the pull requests in this repo and give a thumbs up or a
suggestion what can be improved.

Every problem also includes an example solution. However, the solution is only there to check that
the automated tests work correctly. The learner doesn't see the solution.

So while you're welcome to comment on the example solution as well, keep in mind that it'll
immediately benefit only me. The primary focus of the review is the data structures that the tests
require as the interface.

In the end we will also have to decide on the order in which the problems are 
