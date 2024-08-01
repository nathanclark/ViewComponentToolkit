require 'action_controller/railtie'
require 'action_view/railtie'

module Dummy
  class Application < Rails::Application
    config.eager_load = false
    config.active_support.deprecation = :log
  end
end

Dummy::Application.initialize!
