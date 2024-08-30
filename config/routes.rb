Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  namespace :api do
    namespace :v1 do
      resources :characters, only: [ :index, :create, :destroy, :update, :show ] do
        member do
          get "aura_extras"
          post "aura_extras", to: "characters#create_aura_extra"
          put "aura_extras/:aura_extra_id", to: "characters#update_aura_extra", as: :update_aura_extra
          get "items"
          post "items", to: "characters#create_item"
          put "items/:item_id", to: "characters#update_item", as: :update_item
        end
      end
    end
  end
end
