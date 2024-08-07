module ViewComponentToolkit
  class Engine < ::Rails::Engine
    isolate_namespace ViewComponentToolkit

    config.autoload_paths << root.join('app', 'components')

    initializer "view_component_toolkit.lookbook", after: "lookbook.setup" do |app|
      if defined?(Lookbook) && Rails.env.development?
        Lookbook.configure do |config|
          config.component_paths << root.join("app/components")
          config.preview_paths << root.join("spec/components/previews")
        end
      end
    end
  end
end
