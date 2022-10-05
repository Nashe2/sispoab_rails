Rails.application.routes.draw do
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "articles#index"

  #get 'material/index'
  #To Indica el controlador y la acción (index) que va a dar respuesta a esta petición (recurso bienvenida)
  #nombre del controlador se separa de la acción utilizando un gato
  get "/bienvenida", to: "dashboard#index"
  resources :materials
    
end
