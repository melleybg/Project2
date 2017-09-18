Rails.application.routes.draw do
  # get 'recipes/index'
  #
  # get 'recipes/edit'
  #
  # get 'recipes/new'
  #
  # get 'recipes/show'
  #
  # get 'ingredients/index'
  #
  # get 'ingredients/edit'
  #
  # get 'ingredients/new'
  #
  # get 'ingredients/show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users
   root to: 'ingredients#index'

    resources :recipes do
      resources :ingredients #except: [:index, :show]
    end

    #  resources :recipes do #only: [:index, :show] do
    #   member do
    #     post 'add_favorite'
    #     delete 'remove_favorite'
    #   end
    # end
  end
