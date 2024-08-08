module ViewComponentToolkit
  class HeroComponentPreview < ViewComponent::Preview
    def default
      render(HeroComponent.new(title: "Welcome to Our Site", subtitle: "Discover amazing things")) do
        tag.button "Learn More", class: "btn btn-primary"
      end
    end

    def with_background
      render(HeroComponent.new(
        title: "Explore the World",
        subtitle: "Adventure awaits",
        background_image: "https://example.com/path/to/image.jpg"
      ))
    end
  end
end
