require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "active_resource/railtie"

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module KucharynaApi
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true
    config.assets.enabled = false

    config.generators do |g|
      g.fixture_replacement :fabrication
      config.generators.stylesheets = false
      config.generators.javascripts = false
    end
  end
end
