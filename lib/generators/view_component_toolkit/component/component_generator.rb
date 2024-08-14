module ViewComponentToolkit
  module Generators
    class ComponentGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('templates', __dir__)

      class_option :gem_component, type: :boolean, default: false,
                   desc: "Move generated files to gem's component directory"

      argument :attributes, type: :array, default: [], banner: "attribute attribute"

      def create_component_file
        template 'component.rb', component_path('component.rb')
      end

      def create_template_file
        template 'component.html.erb', component_path('component.html.erb')
      end

      def create_test_file
        template 'component_test.rb', test_path('component_test.rb')
      end

      def create_preview_file
        template 'preview.rb', preview_path('preview.rb')
      end

      def move_to_gem_if_requested
        return unless options[:gem_component]

        gem_components_path = ViewComponentToolkit::Engine.root.join('app/components/view_component_toolkit')
        gem_test_path = ViewComponentToolkit::Engine.root.join('test/components')
        gem_preview_path = ViewComponentToolkit::Engine.root.join('test/components/previews')

        FileUtils.mkdir_p(gem_components_path)
        FileUtils.mkdir_p(gem_test_path)
        FileUtils.mkdir_p(gem_preview_path)

        FileUtils.mv(component_path('component.rb'), gem_components_path.join("#{file_name}_component.rb"))
        FileUtils.mv(component_path('component.html.erb'), gem_components_path.join("#{file_name}_component.html.erb"))
        FileUtils.mv(test_path('component_test.rb'), gem_test_path.join("#{file_name}_component_test.rb"))
        FileUtils.mv(preview_path('preview.rb'), gem_preview_path.join("#{file_name}_component_preview.rb"))

        say "Files moved to gem's component directory", :green
      end

      private

      def component_path(file)
        File.join('app/components', class_path, "#{file_name}_#{file}")
      end

      def test_path(file)
        File.join('test/components', class_path, "#{file_name}_#{file}")
      end

      def preview_path(file)
        File.join('test/components/previews', class_path, "#{file_name}_component_#{file}")
      end
    end
  end
end
