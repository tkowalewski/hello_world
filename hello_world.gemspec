require_relative "lib/hello_world/version"

Gem::Specification.new do |spec|
  spec.name        = "hello_world"
  spec.version     = HelloWorld::VERSION
  spec.authors     = ["Tomasz Kowalewski"]
  spec.email       = ["me@tkowalewski.pl"]
  spec.homepage    = "https://hello-world.com"
  spec.summary     = "Summary of HelloWorld."
  spec.description = "Description of HelloWorld."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tkowalewski/hello_world"
  spec.metadata["changelog_uri"] = "https://github.com/tkowalewski/hello_world/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.2"
  spec.add_dependency "importmap-rails", "~> 1.2", ">= 1.2.3"
  spec.add_dependency "stimulus-rails", "~> 1.3"
  spec.add_dependency "tailwindcss-rails", "~> 2.0", ">= 2.0.33"
end