Rails.application.routes.draw do
  # resources :heroes, format: :json, only: %i[index show edit update] do
  resources :heroes, format: :json do
    collection do
      get :index
    end

    member do
      get :show
      get :profile
      patch :profile, to: 'heroes#patch_profile'
    end
  end
end
