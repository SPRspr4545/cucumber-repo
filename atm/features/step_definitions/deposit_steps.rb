Given(/^there is a balance of \$(\d+) in my bank account$/) do |balance|
    @balance = balance
end

When(/^I deposit \$(\d+)$/) do |credit|
  @credit = credit
end

Then(/^\$(\d+) should be credited to my account$/) do |amount_credited|
  expect(@credit).to eq amount_credited
end

And(/^the new balance should be \$(\d+)$/) do |new_balance|
  expect(@balance.to_i + @credit.to_i).to eq new_balance.to_i
end
  