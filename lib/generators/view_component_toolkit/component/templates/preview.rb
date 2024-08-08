module ViewComponentToolkit
  class <%= class_name %>ComponentPreview < ViewComponent::Preview
    def default
      render(<%= class_name %>Component.new(<%= attributes.map { |a| "#{a.name}: 'Example #{a.name}'" }.join(", ") %>))
    end
  end
end
