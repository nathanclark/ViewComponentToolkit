module ViewComponentToolkit
  class ButtonComponent < ViewComponent::Base
    def initialize(text:)
      @text = text
    end

    def call
      content_tag :button, @text, class: current_theme.button_class
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
