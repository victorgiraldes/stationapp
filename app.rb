require 'sinatra'
require 'sinatra/activerecord'
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

post '/v1/stations' do
  new_station = JSON.parse(request.body.read)
  station = Station.create(new_station)
  { :entries => station }.to_json
end

get '/premises/:id/stations' do
  premise = Premise.find_by_id(params[:id])
  premise_stations = premise.stations
  { :entries => premise_stations }.to_json
end
