require 'sinatra'
set :session_secret, 'super secret'

get '/' do
	"Hello World"
end

get '/secret' do
	"Secret Message"
end

get '/third' do
	"third message"
end

get '/cat' do
	erb(:index)
end