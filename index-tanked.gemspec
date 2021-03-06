# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'index-tanked/version'

Gem::Specification.new do |s|
  s.name         = "index-tanked"
  s.version      = IndexTanked::GEM_VERSION
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["Adam Kittelson", "Brandon Arbini"]
  s.email        = ["adam@zencoder.com", "brandon@zencoder.com"]
  s.homepage     = "http://github.com/zencoder/index-tanked"
  s.summary      = "Index Tank <http://indextank.com> integration library."
  s.description  = "Provides methods for indexing objects to Index Tank. Extra convenience methods included for Active Record objects."
  s.add_dependency "indextank", '~>1.0.9'
  s.add_dependency "will_paginate", '>= 3.0.pre2'
  s.add_development_dependency "shoulda"
  s.add_development_dependency "mocha"
  s.add_development_dependency "webmock"
  s.add_development_dependency "activerecord", "~>3"
  s.add_development_dependency "sqlite3"
  s.files        = Dir.glob("lib/**/*") + Dir.glob("generators/**/*") + Dir.glob("tasks/**/*") + %w(LICENSE README.markdown Rakefile)
  s.require_path = "lib"
end
