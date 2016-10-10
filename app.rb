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
	@name = ["Oscar","Amigo","Viking"].sample
	erb(:index)
end