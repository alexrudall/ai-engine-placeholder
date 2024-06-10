# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ai/engine/version'

Gem::Specification.new do |spec|
  spec.name          = "ai-engine"
  spec.version       = Ai::Engine::VERSION
  spec.authors       = ["Alex Rudall"]
  spec.email         = ["alex@insertrobot.com"]

  spec.summary       = %q{Placeholder for the official ai-engine gem}
  spec.description   = %q{You're probably looking for the real ai-engine gem at https://insertrobot.com}
  spec.homepage      = "https://github.com/alexrudall/ai-engine-placeholder"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.post_install_message = "/!\\ ಠ‿ಠ Watch out ! This is not the real ai-engine gem - get the real one from insertrobot.com! /!\\"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.5"
  spec.add_development_dependency "rake", "~> 13.2"
end
