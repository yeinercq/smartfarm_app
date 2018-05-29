Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/help', 			to: 'static_pages#help'			#estas configuraciones de routes (controller#action) 
  get '/about', 		to: 'static_pages#about'		#permite tener a disposicion una ruta llamada _path o _url
  get '/contact',		to: 'static_pages#contact'
  get '/signup',		to: 'users#new'

end
