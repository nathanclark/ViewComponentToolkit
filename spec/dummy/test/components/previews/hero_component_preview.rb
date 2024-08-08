module ViewComponentToolkit
  class HeroComponentPreview < ViewComponent::Preview
    def default
      render(HeroComponent.new(title: 'Example title', subtitle: 'Example subtitle', background_image: 'Example background_image'))
    end
  end
end
