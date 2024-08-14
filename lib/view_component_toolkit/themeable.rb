module ViewComponentToolkit
  module Themeable
    extend ActiveSupport::Concern

    included do
      class_attribute :component_name
    end

    class_methods do
      def component(name)
        self.component_name = name
      end
    end

    def theme_classes
      Theme.get_class(self.class.component_name)
    end
  end
end
