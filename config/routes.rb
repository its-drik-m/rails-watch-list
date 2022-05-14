Rails.application.routes.draw do
  root to: 'lists#index'

  get 'lists/index'
  get 'lists/new'
  get 'lists/show'
  get 'lists/create'

  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'

  resources :lists do
    resources :lists, except: %i[edit update]

    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks do
    resources :bookmarks, only: %i[destroy]
  end
end
