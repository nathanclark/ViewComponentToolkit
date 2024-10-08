require 'rails'
require 'view_component'
require 'view_component_toolkit/engine'
require 'rake'
require_relative 'view_component_toolkit/version'
require_relative '../app/components/view_component_toolkit/simple_sample'
require 'view_component_toolkit/configuration'
require 'view_component_toolkit/theme'
require "view_component_toolkit/themeable"
require "view_component_toolkit/base_component"
require 'view_component_toolkit/themes/base'
require 'view_component_toolkit/themes/default'
require 'generators/view_component_toolkit/component/component_generator'
require "generators/view_component_toolkit/override/override_generator"

if defined?(Rails)
  require 'generators/view_component_toolkit/component/component_generator'
end

module ViewComponentToolkit
  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end

  class Configuration
    attr_accessor :theme, :custom_themes

    def initialize
      @theme = :default
      @custom_themes = {}
    end
  end
  class Engine < ::Rails::Engine
    config.autoload_paths << File.expand_path('../app/components', __dir__)

    rake_tasks do
      Dir[File.join(File.dirname(__FILE__), 'tasks/**/*.rake')].each { |f| load f }
    end
  end
  class Error < StandardError; end

  def self.with_temporary_config(temporary_config)
    original_config = configuration.dup
    configure do |config|
      temporary_config.each do |key, value|
        config.public_send("#{key}=", value)
      end
    end
    yield
  ensure
    @configuration = original_config
  end
end
