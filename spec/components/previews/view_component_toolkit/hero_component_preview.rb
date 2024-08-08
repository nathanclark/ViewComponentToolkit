module ViewComponentToolkit
  class HeroComponentPreview < ViewComponent::Preview
    def default
      render(HeroComponent.new(title: 'Example title', summary: 'Example summary', body: 'Example body'))
    end
  end
end
