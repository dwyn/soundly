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
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency	"rspotify"
	spec.add_development_dependency "spotify-client"
	spec.add_development_dependency "omniauth-spotify"
  spec.add_development_dependency "pry"
end
