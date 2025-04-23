Given(/^the input ([^"]*)$/) do |input|
  @input = input
end

When(/^we add the integer values$/) do
  @result = `ruby test.rb #{@input}`
  raise('Oops, something bad happened') unless $?.success?
end
  
Then(/^the result should be ([^"]*)$/) do |expected_output|
  expect(@result).to eq expected_output
end