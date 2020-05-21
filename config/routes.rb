Rails.application.routes.draw do
  root to: "many_complaints#top"
  resources :many_complaints do
    collection do
      post :confirm
    end
  end
end

