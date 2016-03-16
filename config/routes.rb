Spree::Core::Engine.routes.draw do
  Spree::Core::Engine.add_routes do
    namespace :admin do
      resource :rotator_settings
    end
  end
end
