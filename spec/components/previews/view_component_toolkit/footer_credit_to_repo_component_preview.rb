module ViewComponentToolkit
  class FooterCreditToRepoComponentPreview < ViewComponent::Preview
    def default
      render(FooterCreditToRepoComponent.new())
    end
  end
end
