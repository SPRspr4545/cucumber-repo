require 'httparty'



# note that this step is a domain-specific step defintion
# now we'll write the json data from the scenario to the file
Given(/^the api has these products to list:$/) do |widgets|
  File.open('widgets.json', 'w') do |io|
    io.write(widgets.hashes.to_json)
  end
end


# these steps are more general REST operation step defintions
# this time, we're using httparty to make the get request for us and store the response
# in an instance variable @last_response. We also need the full url this time
When(/^the client requests GET (.*)$/) do |path|
  @last_response = HTTParty.get('http://localhost:4567' + path)
end

# we're interested in the body of the response - that's where we should expect the web app
# to write the JSON. We also need to strip the whitespace out of both sides - this is necessary 
# because in our features file, we want to be descriptive, and document what we're doing in a
# non-technical, business-facing manner (so, that means a lot of whitespace)
Then(/^the response should be JSON:$/) do |json|
  expect(JSON.parse(@last_response.body)).to eq JSON.parse(json)
end