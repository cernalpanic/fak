FAK::Application.routes.draw do
  resources :links


  resources :bands


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
