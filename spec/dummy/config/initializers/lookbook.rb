if defined?(Lookbook)
  Lookbook.configure do |config|
    config.preview_paths << ViewComponentToolkit::Engine.root.join("spec/components/previews")
    config.preview_layout = "lookbook_preview"
  end
end
