Rails.application.routes.draw do
  root to: 'static_pages#welcome'
     devise_for :users, controllers: {
       sessions: 'users/sessions',
       registrations: 'users/registrations',
       password: 'users/passwords'
     }
     devise_for :airports, controllers: {

      }

     resources:cities
   end
