Given(/^I have a subtotal of \$(\d+) in my shopping cart$/) do |subtotal|
  @subtotal = subtotal
end

When(/^I choose to an item costing \$(\d+)$/) do |price|
  @price = price
end

Then(/^the new total in my cart should be \$(\d+)$/) do |total|
  expect(total.to_i).to eq (@subtotal.to_i + @price.to_i)
end