class Inventory
  def receive(amt)
    @in_stock = amt
  end

  def in_stock
    @in_stock
  end
end

class Customer
  def initialize(shopping_bag)
    @shopping_bag = shopping_bag
  end
  
  def pack(inventory, amt)
    @shopping_bag.add(amt)
  end
end

class ShoppingBag
  def contents
    @contents or raise("Nothing in here")
  end

  def add(amt)
    @contents = amt
  end
end

# transform string-based integers from regex to integers
CAPTURE_NUMBERS = Transform(/^(\d+)$/) do |number|
  number.to_i
end

# using ||= means thast the new instance is created only once, then stored in an instance variable
module KnowsMyDomain
  def inventory
    @inventory ||= Inventory.new
  end

  def shopping_bag
    @shopping_bag ||= ShoppingBag.new
  end
  
  def customer
    @customer ||= Customer.new(shopping_bag)
  end
end

World(KnowsMyDomain)

#Given(/^we have added (#{CAPTURE_NUMBERS}) widgets to inventory$/) do |amt|
#  @inventory = amt
#end

#When(/^we sell (#{CAPTURE_NUMBERS}) widgets$/) do |amt|
  #puts self
#  @sell = amt
#  @inventory -= amt
#end

Given(/^we have added (#{CAPTURE_NUMBERS}) widgets to inventory$/) do |amt|
  inventory.receive(amt)
  expect(inventory.in_stock).to eq amt
end

When(/^we sell (#{CAPTURE_NUMBERS}) widgets$/) do |amt|
  #puts self
  customer.pack(shopping_bag, amt)
end

Then(/^(#{CAPTURE_NUMBERS}) widgets should be removed from inventory$/) do |amt|
  expect(shopping_bag.contents).to eq(amt)
end