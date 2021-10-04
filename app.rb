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

get '/cat' do
  erb(:index)
end

get '/visitor' do
  erb "Hi there, Visitor <%= 2 + 2%>"
end