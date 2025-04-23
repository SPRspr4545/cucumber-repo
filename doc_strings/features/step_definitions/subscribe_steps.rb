Given(/^a user with username (\w+) has clicked (\w+)$/) do |user,action|
  @username = user
  # placeholder for new data in user database
end

Then(/^they should receive a message containing:$/) do |string|
  @message = string
  @compare_message = "Hey,\n\nYou have successfully signed up for our blog!\n\nHappy blogging!"
  expect(@message).to eq @compare_message
end

And(/^the new account for the user (\w+) should be created$/) do |new_user|
  expect(new_user).to eq @username
end