# spec/components/previews/your_gem_name/button_component_preview.rb
module ViewComponentToolkit
  class ButtonComponentPreview < Lookbook::Preview
    # @param text text
    # @param theme select [default, bootstrap, tailwind]
    def default(text: 'Click me', theme: :default)
      render ButtonComponent.new(text: text) do
        ViewComponentToolkit.with_temporary_config(theme: theme.to_sym) do
          render ButtonComponent.new(text: text)
        end
      end
    end

    # Add more preview methods for different states/variations
  end
end
