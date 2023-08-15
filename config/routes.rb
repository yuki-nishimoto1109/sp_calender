Rails.application.routes.draw do

  devise_for :users

  root to: 'homes#top'
  get "/plans/calender" => "plans#calender"
  resources :plans, only: [:index, :new, :edit, :update, :destroy, :create]

end
