DhakadsCom::Application.routes.draw do
  resources :feedback, :only => [:new, :create]
# resources :people
end
