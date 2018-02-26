# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here
puts find(5)
pp ordered_by_qualifications(@candidates)
##binding.pry
# @candidates.each do |c|
#   puts Time.now
#   puts c[:date_applied]
# end
# pp @candidates