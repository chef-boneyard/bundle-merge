$LOAD_PATH << File.expand_path(File.join(File.dirname( __FILE__ ), "lib"))

require 'bundler'
require 'rubygems/package_task'

Bundler::GemHelper.install_tasks name: "bundle-merge"

begin
  require "rspec/core/rake_task"
  RSpec::Core::RakeTask.new(:spec)

rescue LoadErrror
  puts "rspec is not available"
end

begin
  require "chefstyle"
  require "rubocop/rake_task"

  desc "Run Ruby style checks"
  RuboCop::RakeTask.new(:style)
rescue LoadError
  puts "chefstyle is not available"
end
