module ViewComponentToolkit
  class FooterCreditToRepoComponent < ViewComponent::Base
    def initialize()

    end

    private

    def current_theme
      case ViewComponentToolkit.configuration.theme
      when :bootstrap
        Themes::Bootstrap.new
      when :tailwind
        Themes::Tailwind.new
      when :default
        Themes::Default.new
      else
        ViewComponentToolkit.configuration.theme.new
      end
    end
  end
end
