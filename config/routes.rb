Rails.application.routes.draw do

  # remove commented out code
  root to: 'recipes#index'
  resources :recipes do
    # since you dpn't have a show method you should uncomment the comment below
    resources :ingredients #, except: [:index, :show]
    resources :comments

  end

end
