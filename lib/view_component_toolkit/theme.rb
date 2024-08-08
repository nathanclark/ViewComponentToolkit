module ViewComponentToolkit
  class Theme
    DEFAULT_THEMES = {
      default: {
        button: 'btn',
        card: 'card',
        hero: 'hero-section',
        hero_title: 'hero-title',
        hero_subtitle: 'hero-subtitle'
        # ... other component classes ...
      },
      bootstrap: {
        button: 'btn btn-primary',
        card: 'card',
        hero: 'jumbotron',
        hero_title: 'display-4',
        hero_subtitle: 'lead',
        # ... other component classes ...
      },
      tailwind: {
        button: 'px-4 py-2 bg-blue-500 text-white rounded',
        card: 'bg-white shadow-lg rounded-lg p-6',
        hero: 'relative bg-cover bg-center py-24',
        hero_title: 'text-4xl font-bold mb-4 text-white',
        hero_subtitle: 'text-xl mb-8 text-white',
        # ... other component classes ...
      }
    }

    def self.get_class(component, theme = ViewComponentToolkit.configuration.theme)
      custom_themes = ViewComponentToolkit.configuration.custom_themes
      theme_hash = custom_themes[theme] || DEFAULT_THEMES[theme] || DEFAULT_THEMES[:default]
      theme_hash[component] || DEFAULT_THEMES[:default][component]
    end
  end
end
