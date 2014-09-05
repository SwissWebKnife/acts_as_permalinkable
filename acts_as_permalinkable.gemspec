$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_permalinkable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_permalinkable"
  s.version     = ActsAsPermalinkable::VERSION
  s.authors     = ["Jian Weihang"]
  s.email       = ["tonytonyjan@gmail.com"]
  s.homepage    = "tonytonyjan.net"
  s.summary     = "A Rails plugin to genrate permalink automatically."
  s.description = "A Rails plugin to genrate, validates permalink automatically."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
