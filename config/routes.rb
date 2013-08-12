FAK::Application.routes.draw do
  resources :presses

  resources :artists

  resources :links

  resources :shows
  get 'ticket', to: 'shows#ticket'

  resources :venues


  resources :songs


  resources :albums


  authenticated :user do
    root :to => 'shows#ticket'
  end
  root :to => "shows#ticket"
  devise_for :users
  resources :users
end
