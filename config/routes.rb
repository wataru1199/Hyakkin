Rails.application.routes.draw do
  devise_for :admins
  devise_for :members

  scope module: :public do
    root :to => "homes#top"
    get 'homes/about'
    resources :reviews, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  end
  
  namespace :admin do
    resources :reviews, only: [:index, :show, :destroy]
  end

end
