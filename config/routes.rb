Rails.application.routes.draw do

  # Define homepage
  get 'default/home'
  # Must display home.html.erb linked to default controller
  root 'default#home'
  # Defines new page linked to Default controller with a view called contact
  get 'contact' => 'default#contact'

  # INDEX ARTICLE PAGE
  get 'display' => 'articles#index'

  # SHOW ARTICLE PAGE
  get 'show/:id' => 'articles#show'
  # ADDING ARTICLE PAGE
  get 'adding' => 'articles#add'
  post 'adding' => 'articles#add'



  # MODIFY ARTICLE PAGE

  get 'modify/:id' => 'articles#update'
  patch 'modify/:id' => 'articles#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
