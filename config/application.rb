require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module AndrewMcBurney
  class Application < Rails::Application
    config.load_defaults 5.1
    config.sass.preferred_syntax = :sass

    config.generators do |g|
      g.template_engine :slim
      g.test_framework :rspec
    end
  end
end