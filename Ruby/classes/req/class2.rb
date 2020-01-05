# The require_relative keyword allows us to 
# access other files within our file directory 
# so we can use the classes from different files

# Use the require or require_relative keywords to 
# use separate files for the previously given
# assignment. See below for how to use each example.

# Note that if you use require_relative with 
# the filename that both files should be in
# the same folder location.

# ABSOLUTE PATH
# require '~/Adaleg_Web/Ruby/classes/req/class1.rb'
# RELATIVE PATH
require_relative 'class1.rb'
# Gives us access to class A

slime = A.new(true)
puts slime.sloppy
wax = A.new(false)
puts wax.sloppy