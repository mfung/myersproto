# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{refinerycms-i18n}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt"]
  s.date = %q{2011-04-13}
  s.description = %q{i18n logic extracted from RefineryCMS, for Refinery CMS.}
  s.email = %q{parndt@gmail.com}
  s.files = ["test/i18n_js_test.rb", "test/test_helper.rb"]
  s.homepage = %q{http://philiparndt.name}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.0}
  s.summary = %q{i18n logic for Refinery CMS.}
  s.test_files = ["test/i18n_js_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, [">= 0.9.9.12"])
      s.add_runtime_dependency(%q<routing-filter>, [">= 0.2.3"])
    else
      s.add_dependency(%q<refinerycms-core>, [">= 0.9.9.12"])
      s.add_dependency(%q<routing-filter>, [">= 0.2.3"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, [">= 0.9.9.12"])
    s.add_dependency(%q<routing-filter>, [">= 0.2.3"])
  end
end
