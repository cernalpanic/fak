FAK::Application.routes.draw do
  resources :presses

  resources :artists

  resources :links

  resources :shows

  get 'ticket', to: 'shows#ticket'

  resources :calendar

  resources :venues

  resources :songs

  resources :albums

  authenticated :user do
    root :to => 'calendar#index'
  end

  root :to => "calendar#index"

  devise_for :users
  resources :users
end
