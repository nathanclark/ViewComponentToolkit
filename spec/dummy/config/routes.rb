Rails.application.routes.draw do
  mount ViewComponentToolkit::Engine => "/view_component_toolkit"

  if defined?(Lookbook)
    mount Lookbook::Engine, at: '/lookbook'
  end
end
