# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dragonfly}
  s.version = "0.8.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mark Evans"]
  s.date = %q{2011-01-10}
  s.email = %q{mark@new-bamboo.co.uk}
  s.files = ["spec/argument_matchers.rb", "spec/dragonfly/active_model_extensions/active_model_setup.rb", "spec/dragonfly/active_model_extensions/active_record_setup.rb", "spec/dragonfly/active_model_extensions/model_spec.rb", "spec/dragonfly/active_model_extensions/spec_helper.rb", "spec/dragonfly/analyser_spec.rb", "spec/dragonfly/analysis/file_command_analyser_spec.rb", "spec/dragonfly/analysis/image_magick_analyser_spec.rb", "spec/dragonfly/analysis/r_magick_analyser_spec.rb", "spec/dragonfly/analysis/shared_analyser_spec.rb", "spec/dragonfly/app_spec.rb", "spec/dragonfly/config/r_magick_spec.rb", "spec/dragonfly/configurable_spec.rb", "spec/dragonfly/core_ext/array_spec.rb", "spec/dragonfly/core_ext/hash_spec.rb", "spec/dragonfly/core_ext/string_spec.rb", "spec/dragonfly/core_ext/symbol_spec.rb", "spec/dragonfly/data_storage/data_store_spec.rb", "spec/dragonfly/data_storage/file_data_store_spec.rb", "spec/dragonfly/data_storage/mongo_data_store_spec.rb", "spec/dragonfly/data_storage/s3_data_store_spec.rb", "spec/dragonfly/encoding/image_magick_encoder_spec.rb", "spec/dragonfly/encoding/r_magick_encoder_spec.rb", "spec/dragonfly/function_manager_spec.rb", "spec/dragonfly/generation/hash_with_css_style_keys_spec.rb", "spec/dragonfly/generation/image_magick_generator_spec.rb", "spec/dragonfly/generation/r_magick_generator_spec.rb", "spec/dragonfly/generation/shared_generator_spec.rb", "spec/dragonfly/image_magick_utils_spec.rb", "spec/dragonfly/job_builder_spec.rb", "spec/dragonfly/job_definitions_spec.rb", "spec/dragonfly/job_endpoint_spec.rb", "spec/dragonfly/job_spec.rb", "spec/dragonfly/loggable_spec.rb", "spec/dragonfly/middleware_spec.rb", "spec/dragonfly/processing/image_magick_processor_spec.rb", "spec/dragonfly/processing/r_magick_processor_spec.rb", "spec/dragonfly/processing/shared_processing_spec.rb", "spec/dragonfly/routed_endpoint_spec.rb", "spec/dragonfly/serializer_spec.rb", "spec/dragonfly/simple_cache_spec.rb", "spec/dragonfly/simple_endpoint_spec.rb", "spec/dragonfly/temp_object_spec.rb", "spec/image_matchers.rb", "spec/simple_matchers.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/markevans/dragonfly}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.0}
  s.summary = %q{Dragonfly is an on-the-fly Rack-based image handling framework. It is suitable for use with Rails, Sinatra and other web frameworks. Although it's mainly used for images, it can handle any content type.}
  s.test_files = ["spec/argument_matchers.rb", "spec/dragonfly/active_model_extensions/active_model_setup.rb", "spec/dragonfly/active_model_extensions/active_record_setup.rb", "spec/dragonfly/active_model_extensions/model_spec.rb", "spec/dragonfly/active_model_extensions/spec_helper.rb", "spec/dragonfly/analyser_spec.rb", "spec/dragonfly/analysis/file_command_analyser_spec.rb", "spec/dragonfly/analysis/image_magick_analyser_spec.rb", "spec/dragonfly/analysis/r_magick_analyser_spec.rb", "spec/dragonfly/analysis/shared_analyser_spec.rb", "spec/dragonfly/app_spec.rb", "spec/dragonfly/config/r_magick_spec.rb", "spec/dragonfly/configurable_spec.rb", "spec/dragonfly/core_ext/array_spec.rb", "spec/dragonfly/core_ext/hash_spec.rb", "spec/dragonfly/core_ext/string_spec.rb", "spec/dragonfly/core_ext/symbol_spec.rb", "spec/dragonfly/data_storage/data_store_spec.rb", "spec/dragonfly/data_storage/file_data_store_spec.rb", "spec/dragonfly/data_storage/mongo_data_store_spec.rb", "spec/dragonfly/data_storage/s3_data_store_spec.rb", "spec/dragonfly/encoding/image_magick_encoder_spec.rb", "spec/dragonfly/encoding/r_magick_encoder_spec.rb", "spec/dragonfly/function_manager_spec.rb", "spec/dragonfly/generation/hash_with_css_style_keys_spec.rb", "spec/dragonfly/generation/image_magick_generator_spec.rb", "spec/dragonfly/generation/r_magick_generator_spec.rb", "spec/dragonfly/generation/shared_generator_spec.rb", "spec/dragonfly/image_magick_utils_spec.rb", "spec/dragonfly/job_builder_spec.rb", "spec/dragonfly/job_definitions_spec.rb", "spec/dragonfly/job_endpoint_spec.rb", "spec/dragonfly/job_spec.rb", "spec/dragonfly/loggable_spec.rb", "spec/dragonfly/middleware_spec.rb", "spec/dragonfly/processing/image_magick_processor_spec.rb", "spec/dragonfly/processing/r_magick_processor_spec.rb", "spec/dragonfly/processing/shared_processing_spec.rb", "spec/dragonfly/routed_endpoint_spec.rb", "spec/dragonfly/serializer_spec.rb", "spec/dragonfly/simple_cache_spec.rb", "spec/dragonfly/simple_endpoint_spec.rb", "spec/dragonfly/temp_object_spec.rb", "spec/image_matchers.rb", "spec/simple_matchers.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<aws-s3>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, ["= 0.8.5"])
      s.add_development_dependency(%q<cucumber-rails>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0.5.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.4"])
      s.add_development_dependency(%q<gherkin>, ["= 2.1.4"])
      s.add_development_dependency(%q<mongo>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, ["= 1.5.0.beta.2"])
      s.add_development_dependency(%q<rack>, ["~> 1.1"])
      s.add_development_dependency(%q<rack-cache>, [">= 0"])
      s.add_development_dependency(%q<rails>, ["= 3.0.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<bson_ext>, [">= 0"])
      s.add_development_dependency(%q<rmagick>, ["= 2.12.2"])
      s.add_development_dependency(%q<sqlite3-ruby>, ["= 1.3.0"])
      s.add_runtime_dependency(%q<rack>, [">= 0"])
    else
      s.add_dependency(%q<aws-s3>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<cucumber>, ["= 0.8.5"])
      s.add_dependency(%q<cucumber-rails>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0.5.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.4"])
      s.add_dependency(%q<gherkin>, ["= 2.1.4"])
      s.add_dependency(%q<mongo>, [">= 0"])
      s.add_dependency(%q<nokogiri>, ["= 1.5.0.beta.2"])
      s.add_dependency(%q<rack>, ["~> 1.1"])
      s.add_dependency(%q<rack-cache>, [">= 0"])
      s.add_dependency(%q<rails>, ["= 3.0.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 1.3"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<bson_ext>, [">= 0"])
      s.add_dependency(%q<rmagick>, ["= 2.12.2"])
      s.add_dependency(%q<sqlite3-ruby>, ["= 1.3.0"])
      s.add_dependency(%q<rack>, [">= 0"])
    end
  else
    s.add_dependency(%q<aws-s3>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<cucumber>, ["= 0.8.5"])
    s.add_dependency(%q<cucumber-rails>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0.5.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.4"])
    s.add_dependency(%q<gherkin>, ["= 2.1.4"])
    s.add_dependency(%q<mongo>, [">= 0"])
    s.add_dependency(%q<nokogiri>, ["= 1.5.0.beta.2"])
    s.add_dependency(%q<rack>, ["~> 1.1"])
    s.add_dependency(%q<rack-cache>, [">= 0"])
    s.add_dependency(%q<rails>, ["= 3.0.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 1.3"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<bson_ext>, [">= 0"])
    s.add_dependency(%q<rmagick>, ["= 2.12.2"])
    s.add_dependency(%q<sqlite3-ruby>, ["= 1.3.0"])
    s.add_dependency(%q<rack>, [">= 0"])
  end
end
