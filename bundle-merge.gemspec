lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundle_merge/version'

Gem::Specification.new do |s|
  s.name             = 'bundle-merge'
  s.version          = BundleMerge::VERSION
  s.extra_rdoc_files = ["README.md", "LICENSE" ]
  s.license          = "Apache-2.0"
  s.summary          = "Utility for transitive Gemfile.lock generation"
  s.description      = s.summary
  s.author           = "Lamont Granquist"
  s.email            = "lamont@chef.io"
  s.homepage         = "https://github.com/chef/bundle-merge"

  s.required_ruby_version = ">= 2.3"

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec", "~> 3.6"
  s.add_development_dependency "chefstyle"

  s.bindir       = "bin"
  s.executables  = %w{ bundle-merge }
  s.require_path = 'lib'
  s.files        = %w{ Rakefile LICENSE README.md } +
    Dir.glob( "{lib,spec}/**/*", File::FNM_DOTMATCH ).reject { |f| File.directory?(f) }
end
