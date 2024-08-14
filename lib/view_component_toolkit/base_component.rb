module ViewComponentToolkit
  class BaseComponent < ViewComponent::Base
    include ViewComponentToolkit::Themeable

    def theme_classes
      Theme.get_class(self.class.component_name)
    end
  end
end
