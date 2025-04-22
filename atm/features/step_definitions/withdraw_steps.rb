Given(/^the bank account has a balance of \$(\d+)$/) do |balance|
    @balance = balance
end

When(/^I withdraw \$(\d+)$/) do |debit|
  @debit = debit
end

Then(/^\$(\d+) should be dispensed$/) do |amount_dispensed|
  expect(@debit).to eq amount_dispensed
end