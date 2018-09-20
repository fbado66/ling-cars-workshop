require 'active_record'
require 'pg'
require_relative 'models'

set :database, 'postgresql:ling'

class User < ActiveRecord::Base
  has_one :ling
end

class Ling < ActiveRecord::Base
  has_one :user
end