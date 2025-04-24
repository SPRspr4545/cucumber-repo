require 'sinatra'
require 'json'

class WidgetApp < Sinatra::Base
  set :data, ''
  get '/widgets' do
    content_type :json
    WidgetApp.data.to_json
  end
end