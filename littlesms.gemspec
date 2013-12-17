# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "littlesms/version"

Gem::Specification.new do |s|
  s.name        = "littlesms"
  s.version     = LittleSms::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Alexey Naumov"]
  s.email       = ["alexsnaumov@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{LittleSms adapter}
  s.description = %q{Rails adapter for littlesms api.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end