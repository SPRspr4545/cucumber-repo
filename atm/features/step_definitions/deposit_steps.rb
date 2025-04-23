# Use a Transform for the integer number arguments
INTEGER_VAL = Transform(/^(\d+)$/) do |value|
  value.to_i
end

#Given(/^there is a balance of \$(\d+) in my bank account$/) do |balance|
#    @balance = balance
#end

Given(/^there is a balance of \$(#{INTEGER_VAL}) in my bank account$/) do |balance|
    @balance = balance
end

#When(/^I deposit \$(\d+)$/) do |credit|
#  @credit = credit
#end

When(/^I deposit \$(#{INTEGER_VAL})$/) do |credit|
  @credit = credit
end

#Then(/^\$(\d+) should be credited to my account$/) do |amount_credited|
#  expect(@credit).to eq amount_credited
#end

Then(/^\$(#{INTEGER_VAL}) should be credited to my account$/) do |amount_credited|
  expect(@credit).to eq amount_credited
end

#And(/^the new balance should be \$(\d+)$/) do |new_balance|
#  expect(@balance.to_i + @credit.to_i).to eq new_balance.to_i
#end

And(/^the new balance should be \$(#{INTEGER_VAL})$/) do |new_balance|
  expect(@balance + @credit).to eq new_balance
end


  