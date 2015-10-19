require 'rubygems'
require 'sqlite3'
require 'active_record'


ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: File.dirname(__FILE__) + "/ironnews.sqlite3"
)

require 'sinatra'
require 'sinatra/reloader' if development?


require 'erb'
Tilt.register Tilt::ERBTemplate, 'html.erb'

require_relative 'topic'

get '/' do
  erb :index
end

get '/new' do
  erb :new
end

post '/save' do

  title = params["title"]
  links = params["links"]
  email = params["email"]
  new_entry = Topic.create(title: title, links: links, email: email)

  redirect to '/'
end
