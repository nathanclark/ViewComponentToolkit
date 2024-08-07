module ViewComponentToolkit
  module Themes
    class Base
      def button_class
        raise NotImplementedError
      end

      def card_class
        raise NotImplementedError
      end

      # Add more component-specific classes as needed
    end
  end
end
