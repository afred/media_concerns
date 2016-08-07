$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "media_concerns/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "media_concerns"
  s.version     = MediaConcerns::VERSION
  s.authors     = ["Andrew Myers"]
  s.email       = ["afredmyers@gmail.com"]
  s.summary     = "Summary of MediaConcerns."
  s.description = "Description of MediaConcerns."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.2.7"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "engine_cart"
end
