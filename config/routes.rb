Rails.application.routes.draw do
  
  get 'static_pages/home'

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
	
  	root 'microposts#index'

end
