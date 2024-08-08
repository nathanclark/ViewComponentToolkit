# spec/components/previews/your_gem_name/button_component_preview.rb
module ViewComponentToolkit
  class ButtonSimpleComponentPreview < Lookbook::Preview
    # @param text text
    # @param theme select [default, bootstrap, tailwind]
    def default(text: 'Click me', theme: :default)
      render ButtonSimpleComponent.new(text: text) do
        ViewComponentToolkit.with_temporary_config(theme: theme.to_sym) do
          render ButtonSimpleComponent.new(text: text)
        end
      end
    end

    # Add more preview methods for different states/variations
  end
end
