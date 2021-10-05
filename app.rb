require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello Everyone"
end

get '/secret' do
  "THIS IS A SECRET"
end

get '/new' do
  "NEW PATH HERE"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
end

post '/named-cat' do
  puts(params)
  @name = params[:name]
  erb :index
end

get '/form' do
  erb :index
end

get '/visitor' do
  erb "Hi there, Visitor <%= 2 + 2%>"
end
