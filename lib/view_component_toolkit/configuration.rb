module ViewComponentToolkit
  class Configuration
    attr_accessor :theme, :custom_themes

    def initialize
      @theme = :default
      @custom_themes = {}
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
