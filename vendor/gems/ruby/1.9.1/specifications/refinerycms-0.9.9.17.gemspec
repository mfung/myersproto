# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{refinerycms}
  s.version = "0.9.9.17"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Resolve Digital", "Philip Arndt", "David Jones", "Steven Heidel"]
  s.date = %q{2011-04-15}
  s.default_executable = %q{refinerycms}
  s.description = %q{A Ruby on Rails CMS that supports Rails 3. It's easy to extend and sticks to 'the Rails way' where possible.}
  s.email = %q{info@refinerycms.com}
  s.executables = ["refinerycms"]
  s.files = ["bin/refinerycms"]
  s.homepage = %q{http://refinerycms.com}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{refinerycms}
  s.rubygems_version = %q{1.6.0}
  s.summary = %q{A Ruby on Rails CMS that supports Rails 3}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, ["~> 1.0"])
      s.add_runtime_dependency(%q<refinerycms-authentication>, ["= 0.9.9.17"])
      s.add_runtime_dependency(%q<refinerycms-base>, ["= 0.9.9.17"])
      s.add_runtime_dependency(%q<refinerycms-core>, ["= 0.9.9.17"])
      s.add_runtime_dependency(%q<refinerycms-dashboard>, ["= 0.9.9.17"])
      s.add_runtime_dependency(%q<refinerycms-images>, ["= 0.9.9.17"])
      s.add_runtime_dependency(%q<refinerycms-pages>, ["= 0.9.9.17"])
      s.add_runtime_dependency(%q<refinerycms-resources>, ["= 0.9.9.17"])
      s.add_runtime_dependency(%q<refinerycms-settings>, ["= 0.9.9.17"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<refinerycms-authentication>, ["= 0.9.9.17"])
      s.add_dependency(%q<refinerycms-base>, ["= 0.9.9.17"])
      s.add_dependency(%q<refinerycms-core>, ["= 0.9.9.17"])
      s.add_dependency(%q<refinerycms-dashboard>, ["= 0.9.9.17"])
      s.add_dependency(%q<refinerycms-images>, ["= 0.9.9.17"])
      s.add_dependency(%q<refinerycms-pages>, ["= 0.9.9.17"])
      s.add_dependency(%q<refinerycms-resources>, ["= 0.9.9.17"])
      s.add_dependency(%q<refinerycms-settings>, ["= 0.9.9.17"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<refinerycms-authentication>, ["= 0.9.9.17"])
    s.add_dependency(%q<refinerycms-base>, ["= 0.9.9.17"])
    s.add_dependency(%q<refinerycms-core>, ["= 0.9.9.17"])
    s.add_dependency(%q<refinerycms-dashboard>, ["= 0.9.9.17"])
    s.add_dependency(%q<refinerycms-images>, ["= 0.9.9.17"])
    s.add_dependency(%q<refinerycms-pages>, ["= 0.9.9.17"])
    s.add_dependency(%q<refinerycms-resources>, ["= 0.9.9.17"])
    s.add_dependency(%q<refinerycms-settings>, ["= 0.9.9.17"])
  end
end