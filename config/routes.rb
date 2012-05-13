Recobook::Application.routes.draw do
  root :to => 'books#index'

  resources :books do
    post :preview, :on => :collection, :as => :preview
  end
end
