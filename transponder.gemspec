# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'transponder/version'

Gem::Specification.new do |gem|
  gem.name          = "transponder"
  gem.version       = Transponder::VERSION
  gem.authors       = ["Zack Siri"]
  gem.email         = ["zack@artellectual.com"]
  gem.description   = %q{A Cleaner way of working with rails frontend code}
  gem.summary       = %q{This library gives you more control over rails ujs, it compliments turbolinks, and any other library you use. It is opinionated and helps you clean up your client side code in many ways.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end