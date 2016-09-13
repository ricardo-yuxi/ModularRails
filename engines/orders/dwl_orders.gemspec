$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dwl/orders/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dwl_orders"
  s.version     = Dwl::Orders::VERSION
  s.authors     = ["Ricardo Rojas"]
  s.email       = ["reddrum7@gmail.com"]
  s.homepage    = ""
  s.summary     = "Order feature for Dwl"
  s.description = "Order feature for Dwl"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.0.0.1"

  s.add_dependency "dwl_core"
  s.add_dependency "deface", '~> 1.0.1'

  s.add_development_dependency "sqlite3"
end
