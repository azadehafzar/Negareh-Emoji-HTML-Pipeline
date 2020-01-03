# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "html/pipeline/negarmoji-pipeline/version"

Gem::Specification.new do |spec|
  spec.name = "html-pipeline-negarmoji"
  spec.version = Html::Pipeline::NegarMojiHtmlPipeline::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Mohammad Mahdi Baghbani Pourvahid"]
  spec.email = "MahdiBaghbani@protonmail.com"
  spec.homepage = "https://gitlab.com/Azadeh-Afzar/Web-Development/Negareh-Emoji-HTML-Pipeline"
  spec.description = "Negareh emoji library is an emoji filter plugin for html pipeline,
                      this package is more flexible and customizable then the default
                      emoji filter in html/pipeline."
  spec.summary = "Negareh emoji html pipeline"
  spec.licenses = "GPL-3.0"

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r!^bin/!) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r!^test/!)
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_dependency "html-pipeline", "~> 2.12"
  spec.add_dependency "negarmoji", "~> 0.1.6"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop-jekyll", "~> 0.10"
  spec.add_development_dependency "simplecov", "~> 0.17.0"
end
