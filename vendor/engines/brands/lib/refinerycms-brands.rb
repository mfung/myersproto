require 'refinerycms-base'

module Refinery
  module Brands
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "brands"
          plugin.activity = {
            :class => Brand,
            :title => 'name'
          }
        end
      end
    end
  end
end
