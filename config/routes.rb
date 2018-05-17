Rails.application.routes.draw do
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'
  namespace :app_proxy do
    # root :to => 'home#index'
    # get 'index'
    get 'home/index' => 'home/index', :as => :index
    get 'information/get' => 'information/get', :as => :get
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
