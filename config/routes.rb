Rails.application.routes.draw do
  # get 'worker/show'
  #
  # get 'worker/new'
  #
  # get 'worker/create'
  #
  # get 'worker/index'

  resources :workers

	root to: 'rooms#show'
 # get 'rooms/show'
	mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
