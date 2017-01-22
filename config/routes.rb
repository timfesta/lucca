Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
	get 'signup' => 'users#new'
	get 'profile' => 'users#show'
	get 'posters' => 'users#index'
	resources :users

	get 'login' => 'sessions#new'
	get 'logout' => 'sessions#destroy'
	resources :sessions 

	resources :recipes
	resources :microposts
	resources :npos
	resources :tasks
	
	resources :products do
		collection { post :import }
	end

	resources :charges
	resources :purchases

  	root 'static_pages#home'


end
