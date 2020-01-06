require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "hey, this is secret"
end

get '/something' do
  "hey there again"
end

get '/kitten' do
  "<div>
    <div style='border: 3px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
  </div>
  "
end
