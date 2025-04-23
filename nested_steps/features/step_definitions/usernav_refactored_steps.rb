Given(/^a user (\w+) has authenticated with the correct credentials$/) do |user|
  steps %{
    Given #{user} has navigated to the login screen
    Given #{user} enters the correct username
    Given #{user} enters the correct password
    }
    @username = user
    @message = "Login Successful"
end

Given(/^(\w+) has navigated to the login screen$/) do |user|
   @theuser = user
   puts "I have navigated to the login screen"
end

Given(/^(\w+) enters the correct username$/) do |user|
   @theuser = user
   puts "I have entered the correct username"
end

Given(/^(\w+) enters the correct password$/) do |user|
   @theuser = user
   puts "I have entered the correct password"
end

When(/^(\w+) clicks the (\w+) button$/) do |user, action|
  # placeholder for some other action here
  @action = action
end

Then(/^personal data associated with (\w+) should be displayed$/) do |authenticated_user|
  expect(@username).to eq authenticated_user
end

And(/^the user (\w+) should see the message "([^"]*)"$/) do |user,message|
  expect(@message).to eq message
end