require 'rack/test'
require 'rspec'
require './spec_helper'

ENV['RACK_ENV'] = 'test'

def app
  Sinatra::Application
end

RSpec.describe 'Station API' do

  describe 'GET /promises' do
    let(:response) { get "/premises" }

    it 'return status code 200' do
      expect(response.status).to eq 200
    end
  end

  describe 'POST /promises' do
    let(:response) { post "/premises", { "name" => "Teste", "address" => "Location test" }.to_json }

    it 'returns status code 200' do
      expect(response.status).to eq 200
    end

  end

  describe 'POST /v1/stations' do
    let(:response) { post "/v1/stations", { "serial" => "#{rand(100000)}", "name" => "Maquina", "premise_id" => 1 }.to_json }

    it 'returns status code 200' do
      expect(response.status).to eq 200
    end
  end

  describe 'GET /premises/:id/stations' do
    let(:premise) { Premise.all.sample }
    let(:premise_station) { premise.id.stations }
    let(:response) { get "/premises/#{premise.id}/stations" }

    it 'return status code 200' do
      expect(response.status).to eq 200
    end
  end

end
