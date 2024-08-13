module ViewComponentToolkit
  module Generators
    class OverrideGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('templates', __dir__)

      def create_override_file
        template 'override_component.rb', File.join('app/components/view_component_toolkit', "#{file_name}_component.rb")
      end

      def create_override_template
        template 'override_component.html.erb', File.join('app/components/view_component_toolkit', "#{file_name}_component.html.erb")
      end

      private

      def original_component_path
        ViewComponentToolkit::Engine.root.join('app', 'components', 'view_component_toolkit', "#{file_name}_component.rb")
      end

      def original_component_content
        File.read(original_component_path)
      end
    end
  end
end
