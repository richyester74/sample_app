 # You can have the root of your site routed with "root"
  # root 'welcome#index'
SampleApp::Application.routes.draw do
   get "users/new"

  root  'static_pages#home'
   match'/signup', to: 'users#new',    via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
 get "static_pages/home"
end
