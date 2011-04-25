# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{truncate_html}
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Harold A. Gimenez"]
  s.date = %q{2011-04-07}
  s.description = %q{Truncates html so you don't have to}
  s.email = %q{harold.gimenez@gmail.com}
  s.files = ["spec/helpers/truncate_html_helper_spec.rb", "spec/rails_root/app/controllers/application_controller.rb", "spec/rails_root/app/helpers/application_helper.rb", "spec/rails_root/config/application.rb", "spec/rails_root/config/boot.rb", "spec/rails_root/config/environment.rb", "spec/rails_root/config/environments/development.rb", "spec/rails_root/config/environments/production.rb", "spec/rails_root/config/environments/test.rb", "spec/rails_root/config/initializers/backtrace_silencers.rb", "spec/rails_root/config/initializers/inflections.rb", "spec/rails_root/config/initializers/mime_types.rb", "spec/rails_root/config/initializers/new_rails_defaults.rb", "spec/rails_root/config/initializers/session_store.rb", "spec/rails_root/config/routes.rb", "spec/rails_root/init.rb", "spec/rails_root/lib/app/helpers/truncate_html_helper.rb", "spec/spec_helper.rb", "spec/truncate_html/configuration_spec.rb", "spec/truncate_html/html_string_spec.rb", "spec/truncate_html/html_truncator_spec.rb"]
  s.homepage = %q{http://github.com/hgimenez/truncate_html}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.0}
  s.summary = %q{Uses an API similar to Rails' truncate helper to truncate HTML and close any lingering open tags.}
  s.test_files = ["spec/helpers/truncate_html_helper_spec.rb", "spec/rails_root/app/controllers/application_controller.rb", "spec/rails_root/app/helpers/application_helper.rb", "spec/rails_root/config/application.rb", "spec/rails_root/config/boot.rb", "spec/rails_root/config/environment.rb", "spec/rails_root/config/environments/development.rb", "spec/rails_root/config/environments/production.rb", "spec/rails_root/config/environments/test.rb", "spec/rails_root/config/initializers/backtrace_silencers.rb", "spec/rails_root/config/initializers/inflections.rb", "spec/rails_root/config/initializers/mime_types.rb", "spec/rails_root/config/initializers/new_rails_defaults.rb", "spec/rails_root/config/initializers/session_store.rb", "spec/rails_root/config/routes.rb", "spec/rails_root/init.rb", "spec/rails_root/lib/app/helpers/truncate_html_helper.rb", "spec/spec_helper.rb", "spec/truncate_html/configuration_spec.rb", "spec/truncate_html/html_string_spec.rb", "spec/truncate_html/html_truncator_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rails>, ["= 3.0.3"])
      s.add_development_dependency(%q<rspec-rails>, ["= 2.3"])
    else
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rails>, ["= 3.0.3"])
      s.add_dependency(%q<rspec-rails>, ["= 2.3"])
    end
  else
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rails>, ["= 3.0.3"])
    s.add_dependency(%q<rspec-rails>, ["= 2.3"])
  end
end
