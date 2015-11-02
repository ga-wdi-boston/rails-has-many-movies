Rails.application.routes.draw do
  # Default root for '/' in this application
  root 'movies#index'

  # Creates/Generates a set of routes for the movie resource
  # the except option will prevent routes being generated for the 
  # new and edit actions
  resources :movies, except: [:new, :edit]
end
