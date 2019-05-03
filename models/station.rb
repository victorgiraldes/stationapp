require 'sinatra/activerecord'

class Station < ActiveRecord::Base
  self.primary_key = :serial
  belongs_to :premise
end
