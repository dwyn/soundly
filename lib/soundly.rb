#Environment
require 'pry'
require 'rainbow'
require 'net/ping'
require 'rspotify'
require 'dotenv/load'

module Soundly
  require_relative "./soundly/version.rb"
  require_relative "./soundly/cli.rb"
  require_relative "soundly/tracks.rb"
end