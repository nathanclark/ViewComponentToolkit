module ViewComponentToolkit
  class HeroComponent < ViewComponent::Base

    attr_reader :title,:subtitle,:background_image


    def initialize(title:, subtitle:, background_image:)
      @title = title
      @subtitle = subtitle
      @background_image = background_image
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
