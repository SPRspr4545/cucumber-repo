Given(/^a vehicle with these attributes:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @vehicle = table.raw
  puts "Before:"
  puts @vehicle
  @vehicle.push(['Category', 'truck'])
  puts "\nAfter:"
  puts @vehicle
end

Then(/^the vehicle should be classified as a (\w+)$/) do |category|
  expect(category).to eq 'truck'
end

And(/^the new table should look like this:$/) do |table|
  @new_table = table.raw
  #puts @new_table
  expect(table.diff!(@vehicle))
end