# encoding: utf-8
$:.unshift File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "kaminari-nobrainer"
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nicolas Viennot"]
  s.email       = ["nicolas@viennot.biz"]
  s.homepage    = "http://github.com/nviennot/kaminari-nobrainer"
  s.summary     = "NoBrainer adapter for Kaminari"
  s.license     = "MIT"

  s.add_dependency "kaminari", ">= 0.16.1"
  s.add_dependency "nobrainer", ">= 0.20.0"

  s.files        = Dir["lib/**/*"] + ['README.md']
  s.require_path = 'lib'
  s.has_rdoc     = false
end
