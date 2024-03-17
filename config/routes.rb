# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Define the routes for the user authentication system
  devise_for :users, path_names: {sign_in: "login", sign_up: "create-account"}

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

  # Define the routes for the application.
  # Routes inside the "teamable_scope" block will be prefixed with /team/<team_id> if
  # the user is signed in to a team account.
  teamable "team", {accounts_controller: "accounts"} do
    get :dashboard, to: "dashboard#show"
  end

  root "welcome#show"
end
