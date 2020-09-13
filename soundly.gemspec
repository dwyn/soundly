# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'soundly/version'

Gem::Specification.new do |s|
  s.name          = "soundly"
  s.version       = Soundly::VERSION
  s.summary       = %q{This gem will list songs from revolving playlists through the Spotify API}
  s.description   = %q{This gem will list songs from revolving playlists through the Spotify API}

  s.authors       = ["Dwayne Harmon"]
  s.email         = ["harmon.dwayne@gmail.com"]
  s.homepage      = "https://github.com/dwyn/soundly"
  
  s.license    = "MIT"
  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  s.executables   = ["soundly"]
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", '~> 2.0', '>= 2.0.2'
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "pry", '~> 0.12.2'
  s.add_development_dependency "rs", "~> 3.2"
  
  s.add_dependency "net-ping", '~> 2.0', '>= 2.0.6'
  s.add_dependency "dotenv", '~> 2.7', '>= 2.7.5'
  s.add_dependency	"rspotify", '~> 2.6'
  s.add_dependency "rainbow", '~> 3.0'
end