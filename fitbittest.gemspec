# frozen_string_literal: true

require_relative "lib/fitbittest/version"

Gem::Specification.new do |spec|
  spec.name = "fitbittest"
  spec.version = Fitbittest::VERSION
  spec.authors = ["shreya"]
  spec.email = ["shreya@appsimpact.com"]

  spec.summary = "Write a short summary, because RubyGems requires one."
  spec.description = "Write a longer description or delete this line."
  spec.homepage = "https://github.com/kanchanappsimpact/fitbittest.git"
  spec.license = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\n").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib/fitbittest.rb", "code"]
end
