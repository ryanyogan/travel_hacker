TravelHacker::Application.routes.draw do
  get "content/standard"

  get "content/plus"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => { :registrations => 'registrations' }
  resources :users
end
