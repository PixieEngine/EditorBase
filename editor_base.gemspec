# -*- encoding: utf-8 -*-
require File.expand_path('../lib/editor_base/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel X. Moore"]
  gem.email         = ["yahivin@gmail.com"]
  gem.description   = %q{Base components for Pixie Editors}
  gem.summary       = %q{Base components for Pixie Editors}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "editor_base"
  gem.require_paths = ["lib"]
  gem.version       = EditorBase::VERSION

  gem.add_development_dependency "middleman", "3.0.1"

  %w[
    compass
    backbone-source
    bootstrap-sass
    coffee-filter
    cornerstone-source
    haml_coffee_assets
    jquery-source
    underscore-source
  ].each do |name|
    gem.add_dependency name
  end
end
