# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gryfxcrmod"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Edmund Highcock"]
  s.date = "2013-08-09"
  s.description = "This is a customised subclass of the CodeRunner::Run  class which allows CodeRunner to run and analyse the gyrofluid GPU turbulent transport solver Gryfx."
  s.email = "edmundhighcock@users.sourceforge.net"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "gryfxcrmod.gemspec",
    "lib/gryfxcrmod.rb",
    "lib/gryfxcrmod/gryfx.rb",
    "lib/gryfxcrmod/namelists.rb",
    "test/helper.rb",
    "test/test_gryfxcrmod.rb"
  ]
  s.homepage = "http://github.com/edmundhighcock/gryfxcrmod"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "CodeRunner module for the Gryfx Gyrofluid Transport Solver"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<coderunner>, [">= 0.13.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, [">= 1.8.4"])
    else
      s.add_dependency(%q<coderunner>, [">= 0.13.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, [">= 1.8.4"])
    end
  else
    s.add_dependency(%q<coderunner>, [">= 0.13.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, [">= 1.8.4"])
  end
end
