
ViewComponentToolkit::Engine.routes.draw do
 # config/routes.rb
if Rails.env.development?
  mount Lookbook::Engine, at: '/lookbook'
end
end
