# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pressar/version"

Gem::Specification.new do |s|
  s.name        = 'pressar'
  s.version     = Pressar::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ["MIT"]
  s.summary     = "pressar"
  s.description = "ActiveRecord models for the Wordpress database schema"
  s.authors     = ["Billy Fowks"]
  s.email       = 'bf@billyfowks.com'
  s.homepage    =
    'http://rubygems.org/gems/pressar'
  s.rubyforge_project = "pressar"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency('', '')
end
