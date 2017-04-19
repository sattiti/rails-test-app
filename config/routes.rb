Rails.application.routes.draw do
  # root
  root 'static_pages#home'

  # staticPages
  get '/home', to: 'static_pages#home', as: 'static_pages_home'
  get '/about', to: 'static_pages#about', as: 'static_pages_about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
