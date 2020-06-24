
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "by_crawler/version"

Gem::Specification.new do |spec|
  spec.name          = "by_crawler"
  spec.version       = ByCrawler::VERSION
  spec.authors       = ["Bryce"]
  spec.email         = ["zhaosi@yunjiglobal.com"]

  spec.summary       = %q{a demo for study ruby}
  spec.description   = %q{a demo for study ruby}
  spec.homepage      = "https://github.com/YaoJuan/by_crawler.git"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
