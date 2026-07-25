# frozen_string_literal: true

require_relative "lib/jekyll-stepper/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-stepper"
  spec.version       = Jekyll::Stepper::VERSION
  spec.authors       = ["Jean-Francois Morin"]
  spec.email         = ["jfm@example.com"]

  spec.summary       = "A Jekyll plugin for step-by-step tutorial accordions"
  spec.description   = "Converts fenced code blocks with the 'stepper' language identifier into interactive accordion components with navigation for step-by-step tutorials."
  spec.homepage      = "https://github.com/jeanfrancois-morin/jekyll-stepper"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.7.0"

  spec.files = `git ls-files -z`.split("\x0").reject { |f|
    f.match(%r!^(test|spec|features|\.github)/!)
  }
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", ">= 3.9"
  spec.add_dependency "kramdown-parser-gfm", ">= 1.0"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
    spec.metadata["rubygems_mfa_required"] = "true"
  end
end
