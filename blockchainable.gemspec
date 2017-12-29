lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blockchainable/version'

Gem::Specification.new do |spec|
  spec.name          = 'blockchainable'
  spec.version       = Blockchainable::VERSION
  spec.authors       = ['Mikola Péter']
  spec.email         = ['mikopet@gmail.com']

  spec.summary       = 'This gem is usable for making blockchains from database through models.'
  spec.homepage      = 'https://github.com/Mikopet/blockchainable'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin/'
  spec.executables   = spec.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activemodel', '>= 4.2'
  spec.add_dependency 'activesupport', '>= 4.2'

  spec.add_development_dependency 'bundler', '>= 1.15'
  spec.add_development_dependency 'pry', '>= 0.10'
  spec.add_development_dependency 'rake', '>= 10'
  spec.add_development_dependency 'rspec', '>= 3'
end
