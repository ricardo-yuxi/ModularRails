$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dwl/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dwl_core"                   # Rename core to dwl_core
  s.version     = Dwl::Core::VERSION           # Add namespace
  s.authors     = ["Ricardo Rojas"]
  s.email       = ["reddrum7@gmail.com"]
  s.homepage    = ""
  s.summary     = "Core features of DWL"
  s.description = "Core features of DWL"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_dependency 'sass-rails', "~> 5.0.1"
  s.add_dependency 'bootstrap-sass', "~> 3.3.3"
  s.add_dependency 'autoprefixer-rails', "~> 5.1.5"

  s.add_development_dependency "sqlite3"
end
