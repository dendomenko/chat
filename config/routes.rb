Rails.application.routes.draw do
  resources :workers

	root to: 'rooms#show'

  resources :reviews do
  end

	mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
