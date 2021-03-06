Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    resources :todos, only: [:index, :create, :update, :destroy] do
      resources :steps, only: [:create, :index]
    end

    resources :todos, only: [:update, :destroy]
  end

  root to: "static_pages#root"

end
