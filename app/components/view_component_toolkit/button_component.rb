module ViewComponentToolkit
  class ButtonComponent < ViewComponentToolkit::BaseComponent
    component :button

    attr_reader :text, :classes

    def initialize(text:, classes: '')
      @text = text
      @classes = classes
    end

    def call
      content_tag :button, @text, class: "#{theme_classes} #{@classes}"
    end
  end
end
