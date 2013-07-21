Prototype1::Application.routes.draw do
  get '/' => 'home#index'

  get '/about' => 'home#about'
  
  get '/contact' => 'home#contact'
  
  post '/login' => 'session#create'
  
  delete '/login' => 'session#destroy'
  
  get '/admin' => 'home#admin'
  
  resources :users, :only => [:edit, :update]
  
  resources :paintings, :papers, :links
  
  resources :schools, :teaching_positions, :except => [:index]
  
  resources :exhibitions, :except => [:index] do
    new do
      get 'solo'
      get 'group'
    end
  end
 
 root :to => 'home#index'
end
