# telling Cucumber to load our widget_app, remember, it's 2 folders
# higher on our file system (in rest_api_in_process/features/support)
require File.join(File.dirname(__FILE__), '..', '..', 'widget_app')
require 'rack/test'

module AppHelper
  # the app method needs to return a Rack application
  def app
    WidgetApp
  end
end

# we need to add the module Rack::Test::Methods along with the AppHelper helper that's
# defined above to Cucumber's World object (this is how we can use rack-test's get method)
World(Rack::Test::Methods, AppHelper)