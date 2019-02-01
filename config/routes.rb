Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :courses
      resources :lessons
      resources :students 
      resources :units
    end
  end
end
