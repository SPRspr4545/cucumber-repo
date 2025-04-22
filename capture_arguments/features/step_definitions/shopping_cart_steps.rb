Given(/^there are (\d+) books? in my shopping cart$/) do |numbooks|
    @numbooks = numbooks.to_i
end

When(/^I add (\d+) books? to my shopping cart$/) do |addbooks|
  @addbooks = addbooks.to_i
end

Then(/^I should have (\d+) books? in my shopping cart$/) do |finalbooks|
  expect(@numbooks + @addbooks).to eq finalbooks.to_i
end