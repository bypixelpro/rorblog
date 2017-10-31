Rails.application.routes.draw do
  resources :posts
  resources :pages
  


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

=begin
  #Cuando http get pages, devuelve controlador pages, método index
  get '/pages', to: 'pages#index'
  #Al ser un post, no hay problema en que se confunda
  post '/pages', to: 'pages#create'
  
  #Creamos una nueva ruta para crear páginas
  get '/pages/new', to: 'pages#new', as: 'new_page'
  #Manejamos los id dinámicos en el en rutador y vinculamos a un controlador
  get '/pages/:id', to: 'pages#show', as: 'page'

  #Edit al final, para evitar tener rutas duplicadas
  get 'pages/:id/edit', to: 'pages#edit', as: 'edit_page'

  #Manejamos la petición Patch con el método upodate
  patch 'pages/:id/', to: 'pages#update'

  #Eliminar páginas
  delete 'pages/:id', to: 'pages#destroy'
=end
