# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-antisocial"
  spec.version       = "0.1.0"
  spec.authors       = ["Michael Kropat"]
  spec.email         = ["mail@michael.kropat.name"]

  spec.summary       = "A Medium-inspired theme for Jekyll and GitHub Pages."
  spec.homepage      = "https://github.com/mkropat/jekyll-theme-antisocial"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.5"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
  spec.add_development_dependency "bundler", "~> 1.15"
end
