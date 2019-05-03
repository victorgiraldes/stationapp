require 'sinatra/activerecord'

class Premise < ActiveRecord::Base
  has_many :stations
end
