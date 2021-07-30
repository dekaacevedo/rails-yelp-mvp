Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Llamamos todas las rutas para restaurants
  resources :restaurants, only: %i[index show create new] do
    # Hacemos nested (review de 1 restaurant) de la rutas new y create de review
    resources :reviews, only: %i[new create]
  end
  # Llamamos por fuera del nested, porque no necesitamos que dependa del restaurant para eliminar
  # resources :reviews, only: %i[destroy]
end
