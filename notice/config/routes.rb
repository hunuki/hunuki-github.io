Rails.application.routes.draw do
  resources :posts do
    resources :replies
  end
end
