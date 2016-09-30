Rails.application.routes.draw do
	resources :prayers do
		resources :comments
	end

	root 'prayers#index'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
