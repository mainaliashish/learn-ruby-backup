new_lambda = -> { puts "Hello, world!" }

new_lambda.call
new_lambda.()
new_lambda[]
new_lambda.===

# passing the values to lambdas
new_lambda_one = ->(x) { puts "Hello, world! #{x*x}" }
puts new_lambda_one.call(3)


a = lambda { |x| x*x }
puts a.call(4)


