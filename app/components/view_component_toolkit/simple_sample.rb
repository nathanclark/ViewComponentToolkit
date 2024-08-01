module ViewComponentToolkit
  class SimpleSample < ViewComponent::Base
    def initialize(attribute:)
      @attribute = attribute
    end
  end
end
