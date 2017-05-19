Rails.application.routes.draw do
  root 'dinosaurs#index'


# ORDER OF THE ROUTES MATTERS: WHY????
  get '/dinosaurs', to: 'dinosaurs#index'
  # get "dinosaurs" => "dinosaurs#index" ////Alternate
  get "dinosaurs/new" => "dinosaurs#new", as: :new_dinosaur
  get "dinosaurs/:id" => "dinosaurs#show", as: :dinosaur

  post "dinosaurs" => "dinosaurs#create"
end
