# app/components/view_component_toolkit/button_component.rb
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
      ViewComponentToolkit.configuration.theme
    end
  end
end
