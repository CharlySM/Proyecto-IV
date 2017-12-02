require 'rubygems'
require 'sinatra'
require 'nokogiri'
require 'open-uri'
require 'sinatra'
require 'json'

set :bind, "0.0.0.0"

class Aplicacion < Sinatra::Base

get '/' do
  content_type :json
  {:status => 'ok'}.to_json
end

get '/equipos' do
  erb :equipos
end

get '/clasificacion' do
  erb :clasificacion
end

get '/jornada' do
  erb :jornada
end
end
