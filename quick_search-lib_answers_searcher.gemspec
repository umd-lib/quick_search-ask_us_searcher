$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "quick_search/lib_answers_searcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quick_search-lib_answers_searcher"
  s.version     = QuickSearch::LibAnswersSearcher::VERSION
  s.authors     = ["Samir Lalvani"]
  s.email       = ["samirmlalvani@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of QuickSearch::LibAnswersSearcher."
  s.description = "TODO: Description of QuickSearch::LibAnswersSearcher."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.5"

  s.add_development_dependency "sqlite3"
end
