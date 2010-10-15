require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "google_url_signatures"
    gem.summary = %Q{Sign your urls for Google's Places and Maps V3 APIs}
    gem.description = %Q{Lets you create a signature for accessing Google's Places API and Maps V3 API}
    gem.email = "gitcommit@6brand.com"
    gem.homepage = "http://github.com/JackDanger/google_url_signatures"
    gem.authors = ["Jack Danger Canty"]
    gem.add_dependency "ruby-hmac", ">= 0"
    gem.add_development_dependency "shoulda", ">= 0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :test => :check_dependencies

task :default => :test
