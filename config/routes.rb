Rails.application.routes.draw do

  resources :many_complaints do
    collection do
      post :confirm
    end
  end
end

