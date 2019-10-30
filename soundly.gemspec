# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'soundly/version'

Gem::Specification.new do |spec|
  spec.name          = "soundly"
  spec.version       = Soundly::VERSION
  spec.authors       = ["dwayne."]
  spec.email         = ["harmon.dwayne@gmail.com"]
  spec.licenses    = ['MIT']
  spec.summary       = %q{This gem will list songs from revolving playlists through the Spotify API}
  spec.description   = %q{okhai}
  spec.homepage      = "https://github.com/dwyn/soundly"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", '~> 2.0', '>= 2.0.2'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", '~> 0.12.2'
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_dependency "net-ping", '~> 2.0', '>= 2.0.6'
  spec.add_dependency "dotenv", '~> 2.7', '>= 2.7.5'
  spec.add_dependency	"rspotify", '~> 2.6'
  spec.add_dependency "rainbow", '~> 3.0'
end