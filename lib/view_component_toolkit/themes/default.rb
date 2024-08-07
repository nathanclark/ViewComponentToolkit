module ViewComponentToolkit
  module Themes
    class Default < Base
      def button_class
        "px-4 py-2 bg-blue-500 text-white rounded"
      end

      def card_class
        "bg-white shadow rounded p-4"
      end
    end
  end
end

module ViewComponentToolkit
  module Themes
    class Bootstrap < Base
      def button_class
        "btn btn-primary"
      end

      def card_class
        "card"
      end
    end
  end
end

module ViewComponentToolkit
  module Themes
    class Tailwind < Base
      def button_class
        "px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600"
      end

      def card_class
        "bg-white shadow-md rounded-lg p-6"
      end
    end
  end
end
