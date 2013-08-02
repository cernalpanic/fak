FAK::Application.routes.draw do
  resources :presses


  resources :artists


  resources :links


  resources :shows


  resources :venues


  resources :songs


  resources :albums


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "shows#index"
  devise_for :users
  resources :users
end
