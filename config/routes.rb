Rails.application.routes.draw do
  resources :valleys
  root 'dinosaurs#index'
  resources :dinosaurs

  # get '/dinosaurs', to: 'dinosaurs#index'
  # # get "dinosaurs" => "dinosaurs#index" ////Alternate
  # get 'dinosaurs/new' => 'dinosaurs#new', as: :new_dinosaur
  # get 'dinosaurs/:id' => 'dinosaurs#show', as: :dinosaur
  # post 'dinosaurs' => 'dinosaurs#create'
  # get 'dinosaurs/:id/edit' => 'dinosaurs#edit', as: :edit_dinosaur
  # patch 'dinosaurs/:id' => 'dinosaurs#update'
  # delete 'dinosaurs/:id' => 'dinosaurs#destroy'
end
