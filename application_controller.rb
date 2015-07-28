require 'bundler'
require_relative 'models/unicorn_latinize.rb'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/about' do
    erb :about
  end
  post '/result' do
    #puts "This is #{params}"
    phrase = params[:input_string]
    @final_phrase = to_unicorn_latin(phrase)
    erb :result
  end

end