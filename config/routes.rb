Rails.application.routes.draw do
  resources :detected_obstacles
  root 'detected_obstacles#index'
end
