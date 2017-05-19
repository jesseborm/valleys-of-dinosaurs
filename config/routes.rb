Rails.application.routes.draw do
  root 'dinosaurs#index'

  get '/dinosaurs', to: 'dinosaurs#index'
  # get "dinosaurs" => "dinosaurs#index" ////Alternate

end
