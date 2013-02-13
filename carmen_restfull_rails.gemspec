# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "carmen_restfull_rails"
  s.version = YAML.load_file("VERSION.yml").values.join('.')
  s.platform = Gem::Platform::RUBY
  s.authors = ["VANDENBOGAERDE Nicolas"]
  s.email = ["nicolas.vandenbogaerde@gmail.com"]
  s.homepage = "https://github.com/nicolasva/carmen_restfull_rails"
  s.summary = "Simple ownership solution for Rails."
  s.description = "Insert CarmenRestfullRails description."
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end
