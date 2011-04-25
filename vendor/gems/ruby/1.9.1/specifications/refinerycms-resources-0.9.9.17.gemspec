# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{refinerycms-resources}
  s.version = "0.9.9.17"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Resolve Digital", "Philip Arndt", "David Jones", "Steven Heidel"]
  s.date = %q{2011-04-15}
  s.description = %q{Handles all file upload and processing functionality in Refinery CMS.}
  s.email = %q{info@refinerycms.com}
  s.homepage = %q{http://refinerycms.com}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{refinerycms}
  s.rubygems_version = %q{1.6.0}
  s.summary = %q{Resources engine for Refinery CMS}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, ["= 0.9.9.17"])
      s.add_runtime_dependency(%q<dragonfly>, ["~> 0.8.2"])
      s.add_runtime_dependency(%q<rack-cache>, [">= 0.5.3"])
    else
      s.add_dependency(%q<refinerycms-core>, ["= 0.9.9.17"])
      s.add_dependency(%q<dragonfly>, ["~> 0.8.2"])
      s.add_dependency(%q<rack-cache>, [">= 0.5.3"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, ["= 0.9.9.17"])
    s.add_dependency(%q<dragonfly>, ["~> 0.8.2"])
    s.add_dependency(%q<rack-cache>, [">= 0.5.3"])
  end
end
