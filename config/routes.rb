Rails.application.routes.draw do
  root to:"entries#index"
  resources :entries do
    get :show_unapproved, on: :collection
  end
end
