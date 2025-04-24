########## Before and After hooks
#Before do
#  puts "I'm called before the scenario runs!"
#end

#After do
#  puts "I'm called after the scenario runs!"
#end

########## tagged hooks
#Before('@test1002') do
#  puts "I'm called before the scenario runs!"
#end

########## accessing the scenario object
#Before do |scenario|
#  puts "Beginning scenario: #{scenario.name}"
#end

#After do |scenario|
#  puts "Something has gone wrong!" if scenario.failed?
#end

########## around hooks with a block.call
#Around('@test1002') do |scenario, block|
#  Timeout.timeout(0.0001) do
#    block.call
#  end
#end
