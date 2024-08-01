require 'rails'
require 'view_component'

require_relative 'view_component_toolkit/version'
require_relative '../app/components/view_component_toolkit/simple_sample'
module ViewComponentToolkit
  class Engine < ::Rails::Engine
    config.autoload_paths << File.expand_path("../app/components", __dir__)
  end
  class Error < StandardError; end
end
