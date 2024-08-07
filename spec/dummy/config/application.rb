require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "action_controller/railtie"
require "action_view/railtie"
# require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
require "view_component_toolkit"

module Dummy
  class Application < Rails::Application
    config.load_defaults 7.1
    # Configuration for the application, engines, and railties goes here.
    # ...

    # Disable asset pipeline
    #config.assets.enabled = false
  end
end
