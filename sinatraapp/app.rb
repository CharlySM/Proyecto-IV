require 'rubygems'
require 'sinatra'
require 'nokogiri'
require 'open-uri'
require 'sinatra'
require 'json'

set :bind, "0.0.0.0"

class Aplicacion < Sinatra::Base

  set :port, 80

  get '/' do
    erb :index
  end

  #get '/status' do
  #  {'status' => 'OK'}.to_json
  #end
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
