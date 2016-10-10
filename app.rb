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

get '/random-cat' do
	@name = ["Oscar","Amigo","Viking"].sample
	erb(:index)
end

get '/named-cat' do
	p params
	@name = params[:name]
	erb(:index)
end