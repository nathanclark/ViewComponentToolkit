module ViewComponentToolkit
  class Configuration
    attr_accessor :theme

    def initialize
      @theme = :default
    end
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
