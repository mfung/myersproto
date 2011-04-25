# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{refinerycms-core}
  s.version = "0.9.9.17"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Resolve Digital", "Philip Arndt", "David Jones", "Steven Heidel"]
  s.date = %q{2011-04-15}
  s.description = %q{The core of Refinery CMS. This handles the common functionality and is required by most engines}
  s.email = %q{info@refinerycms.com}
  s.homepage = %q{http://refinerycms.com}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{refinerycms}
  s.rubygems_version = %q{1.6.0}
  s.summary = %q{Core engine for Refinery CMS}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-base>, ["= 0.9.9.17"])
      s.add_runtime_dependency(%q<refinerycms-settings>, ["= 0.9.9.17"])
      s.add_runtime_dependency(%q<refinerycms-generators>, ["~> 1.0"])
      s.add_runtime_dependency(%q<acts_as_indexed>, ["~> 0.7"])
      s.add_runtime_dependency(%q<friendly_id_globalize3>, ["~> 3.2.1"])
      s.add_runtime_dependency(%q<globalize3>, [">= 0.1.0.beta"])
      s.add_runtime_dependency(%q<moretea-awesome_nested_set>, ["~> 1.4"])
      s.add_runtime_dependency(%q<rails>, ["~> 3.0.7.rc1"])
      s.add_runtime_dependency(%q<rdoc>, [">= 2.5.11"])
      s.add_runtime_dependency(%q<truncate_html>, ["~> 0.5"])
      s.add_runtime_dependency(%q<will_paginate>, ["~> 3.0.pre"])
    else
      s.add_dependency(%q<refinerycms-base>, ["= 0.9.9.17"])
      s.add_dependency(%q<refinerycms-settings>, ["= 0.9.9.17"])
      s.add_dependency(%q<refinerycms-generators>, ["~> 1.0"])
      s.add_dependency(%q<acts_as_indexed>, ["~> 0.7"])
      s.add_dependency(%q<friendly_id_globalize3>, ["~> 3.2.1"])
      s.add_dependency(%q<globalize3>, [">= 0.1.0.beta"])
      s.add_dependency(%q<moretea-awesome_nested_set>, ["~> 1.4"])
      s.add_dependency(%q<rails>, ["~> 3.0.7.rc1"])
      s.add_dependency(%q<rdoc>, [">= 2.5.11"])
      s.add_dependency(%q<truncate_html>, ["~> 0.5"])
      s.add_dependency(%q<will_paginate>, ["~> 3.0.pre"])
    end
  else
    s.add_dependency(%q<refinerycms-base>, ["= 0.9.9.17"])
    s.add_dependency(%q<refinerycms-settings>, ["= 0.9.9.17"])
    s.add_dependency(%q<refinerycms-generators>, ["~> 1.0"])
    s.add_dependency(%q<acts_as_indexed>, ["~> 0.7"])
    s.add_dependency(%q<friendly_id_globalize3>, ["~> 3.2.1"])
    s.add_dependency(%q<globalize3>, [">= 0.1.0.beta"])
    s.add_dependency(%q<moretea-awesome_nested_set>, ["~> 1.4"])
    s.add_dependency(%q<rails>, ["~> 3.0.7.rc1"])
    s.add_dependency(%q<rdoc>, [">= 2.5.11"])
    s.add_dependency(%q<truncate_html>, ["~> 0.5"])
    s.add_dependency(%q<will_paginate>, ["~> 3.0.pre"])
  end
end
