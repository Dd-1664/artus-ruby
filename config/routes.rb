Rails.application.routes.draw do

  # Define homepage
  get 'default/home'
  # Must display home.html.erb linked to default controller
  root 'default#home'
  # Defines new page linked to Default controller with a view called contact
  get 'contact' => 'default#contact'

  
  get 'display' => 'articles#index'
  post 'display' => 'articles#add'
  get 'show/:id' => 'articles#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end