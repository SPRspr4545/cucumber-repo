# transform string-based integers from regex to integers
CAPTURE_NUMBERS = Transform(/^(\d+)$/) do |number|
  number.to_i
end

Given(/^I have a balance of \$(#{CAPTURE_NUMBERS}) in my account$/) do |balance|
  @balance = balance
end

When(/^I choose to withdraw \$(#{CAPTURE_NUMBERS})$/) do |withdraw|
  @withdraw = withdraw
end

Then(/^the new balance in my account should be \$(#{CAPTURE_NUMBERS})$/) do |amt|
  expect(amt).to eq (@balance - @withdraw)
end