ViewComponentToolkit::Engine.routes.draw do

  mount Lookbook::Engine, at: '/lookbook' if Rails.env.development?
end
