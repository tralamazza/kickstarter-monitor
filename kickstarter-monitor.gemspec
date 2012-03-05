# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "kickstarter-monitor/version"

Gem::Specification.new do |s|
  s.name        = "kickstarter-monitor"
  s.version     = Kickstarter::Monitor::VERSION
  s.authors     = ["Daniel Tralamazza"]
  s.email       = ["tralamazza@gmail.com"]
  s.homepage    = "https://github.com/tralamazza/kickstarter-monitor"
  s.summary     = %q{A simple mongodb powered kickstarter.com scraper}
  s.description = %q{This gem collects kickstarter projects and fills a mongodb collection}

  s.rubyforge_project = "kickstarter-monitor"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "bson_ext"
  s.add_runtime_dependency "mongo"
  s.add_runtime_dependency "kickstarter"
end
