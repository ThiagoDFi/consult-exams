require 'sinatra'
require 'rack/handler/puma'
require 'csv'

get '/' do
  File.read(File.join('public', 'index.html'))
end

get '/hello' do
  'Hello world!'
end

Rack::Handler::Puma.run(
  Sinatra::Application,
  Port: 4000,
  Host: '0.0.0.0'
)
