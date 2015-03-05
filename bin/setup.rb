require 'bundler/setup'
require 'amazon/ecs'
require 'ostruct'
require 'yaml'
require 'mongo_mapper'
require 'pry'

Dir['lib/initializers/*.rb'].each { |file| require_relative '../' + file   }
Dir['lib/amazon/*.rb'].each { |file| require_relative '../' + file   }
Dir['lib/*.rb'].each { |file| require_relative '../' + file   }
