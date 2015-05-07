Rails.application.routes.draw do
  root to: 'tutors#index'
  resources :subjects, only: ['index']
  resources :testimonials, only: ['index']
  resources :contacts, only: ['new', 'create']
end