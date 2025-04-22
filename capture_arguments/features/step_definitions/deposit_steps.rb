Given(/^the (\w+) account has a balance of \$(\d+)$/) do |account,balance|
    @s_balance = balance
end

And(/^my (\w+) account has a balance of \$(\d+)$/) do |account,balance|
    @c_balance = balance
end

When(/^I deposit \$(\d+) to my savings account$/) do |credit|
  @credit = credit
end

Then(/^\$(\d+) should be credited to my (\w+) account$/) do |amount_credited,account|
  expect(@credit).to eq amount_credited
  expect(account).to eq 'savings'
end

And(/^the new balance in my (\w+) account should be \$(\d+)$/) do |account,new_balance|
  expect(@s_balance.to_i + @credit.to_i).to eq new_balance.to_i
  expect(account).to eq 'savings'
end

And(/^the balance in my (\w+) account should be \$(\d+)$/) do |account,balance|
  expect(@c_balance.to_i).to eq balance.to_i
  expect(account).to eq 'chequing'
end
  