require 'sinatra'
require 'sinatra/reloader'
require './caesar_cipher'


get '/' do
	  erb :index
end

 post '/' do
     @message = caesar_cipher(params[:text],params[:key].to_i)
     erb :index
 end

