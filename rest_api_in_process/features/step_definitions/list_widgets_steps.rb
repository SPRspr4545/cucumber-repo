# note that this step is a domain-specific step defintion
Given(/^the api has these products to list:$/) do |widgets|
  # table is a Cucumber::MultilineArgument::DataTable
  WidgetApp.data = widgets.hashes
end


# these steps are more general REST operation step defintions 
When(/^the client requests GET (.*)$/) do |path|
  get(path)
end

# we're interested in the body of the response - that's where we should expect the web app
# to write the JSON. We also need to strip the whitespace out of both sides - this is necessary 
# because in our features file, we want to be descriptive, and document what we're doing in a
# non-technical, business-facing manner (so, that means a lot of whitespace)
Then(/^the response should be JSON:$/) do |json|
  #expect(last_response.body).to eq json
  expect(JSON.parse(last_response.body)).to eq JSON.parse(json)
end