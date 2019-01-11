require 'sinatra'
require 'sinatra/reloader'

get "/" do
  @files = Dir.glob("public/*")
  @files.reverse! if params['reverse'] == 'true'
  erb :home
end

get "/public/*" do
  @file = "../" + params['splat'].first + ".jpg"
  erb :files
end