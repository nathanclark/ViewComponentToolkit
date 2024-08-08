module ViewComponentToolkit
  class HeroComponent < ViewComponent::Base

    attr_reader :title

    attr_reader :summary

    attr_reader :body


    def initialize(title:, summary:, body:)

      @title = title

      @summary = summary

      @body = body

    end

    private

    def current_theme
      case ViewComponentToolkit.configuration.theme
      when :bootstrap
        Themes::Bootstrap.new
      when :tailwind
        Themes::Tailwind.new
      when :default
        Themes::Default.new
      else
        ViewComponentToolkit.configuration.theme.new
      end
    end
  end
end
