Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root "welcome#home"

  resources :users, :only => [:show] do
		resources :rides
  end

    resources :rides do
		resources :ride_users
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
