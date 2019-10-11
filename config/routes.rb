Rails.application.routes.draw do
	root 'aurthors#welcome'
	resources :aurthors
	resources :books
	get '/index', to: 'aurthors#index'
	get '/indexb', to: 'books#indexb'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
