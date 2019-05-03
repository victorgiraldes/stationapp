require 'sinatra/activerecord'
require 'sinatra'
require 'json'
require './models/premise'
require './models/station'

set :database, {adapter: "sqlite3", database: "stationapp"}

before do
  content_type :json
end

post '/premises' do
  new_premise = JSON.parse(request.body.read)
  premise = Premise.create(new_premise)
  { :entries => premise }.to_json
end

get '/premises' do
  premises = Premise.all
  { :entries => premises }.to_json
end
