require 'bundler/setup'
require 'amazon/ecs'
require 'ostruct'
require 'yaml'
require 'mongo_mapper'
require 'pry'

Dir['lib/**/*.rb'].each { |file| require_relative '../' + file  }
