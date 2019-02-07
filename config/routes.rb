Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :courses
      resources :lessons
      resources :students 
      resources :units
      resources :teachers
      resources :lesson_comments
    end
  end
end
