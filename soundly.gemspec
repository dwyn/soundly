# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'soundly/version'

Gem::Specification.new do |spec|
  spec.name          = "soundly"
  spec.version       = Soundly::VERSION
  spec.authors       = ["<dwyn>"]
  spec.email         = ["<dwayne.harmon@gmail.com>"]

  spec.summary       = %q{This gem will play songs from a revolving playlist through the Spotify API}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/dwyn/soundly"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "net-ping"
  spec.add_dependency "dotenv"
  spec.add_dependency	"rspotify"
  spec.add_dependency "rainbow"
end

  # spec.add_dependency "rspec", "~> 3.0"
	# spec.add_dependency "spotify-client"
	# spec.add_dependency "omniauth-spotify"