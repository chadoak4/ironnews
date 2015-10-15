require 'rubygems'
require 'sqlite3'
require 'active_record'


ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: File.dirname(__FILE__) + "/ironnews.sqlite3"
)

require 'sinatra'
require 'sinatra/reloader' if development?
set :port, 3000

require 'erb'
Tilt.register Tilt::ERBTemplate, 'html.erb'

get '/' do
  erb :index
end