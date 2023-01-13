#!/usr/env/bin ruby

# Lambda functions in ruby

a = lambda {|x| puts x*x}

a.call(5)