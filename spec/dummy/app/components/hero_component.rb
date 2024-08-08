module ViewComponentToolkit
  class HeroComponent < ViewComponentToolkit::BaseComponent
    def initialize(title:, subtitle:, background_image:)
      @title = title
      @subtitle = subtitle
      @background_image = background_image
    end

    def call
      content_tag :div, class: Theme.get_class(:hero) do
        #
      end
    end
  end
end
