module ViewComponentToolkit
  module Generators
    class ComponentGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('templates', __dir__)

      argument :attributes, type: :array, default: [], banner: "attribute attribute"

      def create_component_file
        template 'component.rb', File.join('app/components', class_path, "#{file_name}_component.rb")
      end

      def create_template_file
        template 'component.html.erb', File.join('app/components', class_path, "#{file_name}_component.html.erb")
      end

      def create_test_file
        template 'component_test.rb', File.join('test/components', class_path, "#{file_name}_component_test.rb")
      end

      def create_preview_file
        template 'preview.rb', File.join('test/components/previews', class_path, "#{file_name}_component_preview.rb")
      end
    end
  end
end
