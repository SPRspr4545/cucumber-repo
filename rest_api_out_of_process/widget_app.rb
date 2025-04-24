require 'sinatra'
require 'json'

class WidgetApp < Sinatra::Base
  # we'll read the data from a file on the local file system
  set :data do
    JSON.parse(File.read('widgets.json'))
  end
  
  get '/widgets' do
    content_type :json
    WidgetApp.data.to_json
  end
end