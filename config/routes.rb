Rails.application.routes.draw do
  
  get '/' =>'static_pages#home'

  get 'static_pages/help'

	get 'signup' => 'users#new'
	get 'profile' => 'users#show'
	get 'posters' => 'users#index'
	resources :users

	get 'login' => 'sessions#new'
	get 'logout' => 'sessions#destroy'
	resources :sessions 

	resources :recipes
	resources :microposts
	
	resources :products do
		collection { post :import }
	end

  	root 'static_pages#home'


end
