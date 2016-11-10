$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "predicator/admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "predicator"
  s.version     = Predicator::Admin::VERSION
  s.authors     = ["JohnnyT"]
  s.email       = ["ubergeek3141@gmail.com"]
  s.homepage    = "https://github.com/johnnyt/predicator-admin"
  s.summary     = "Admin GUI for Predicator"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
end
