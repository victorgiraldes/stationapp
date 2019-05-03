require 'sinatra/activerecord'

class Station < ActiveRecord::Base
  belongs_to :premise
end
