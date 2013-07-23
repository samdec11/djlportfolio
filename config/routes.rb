Prototype1::Application.routes.draw do
  get '/' => 'home#index'

  get '/about' => 'home#about'
  
  get '/contact' => 'home#contact'
  
  post '/login' => 'session#create'
  
  delete '/login' => 'session#destroy'
  
  get '/admin' => 'home#admin'
  
  resources :users, :only => [:update] do
    member do
      get 'edit_bio', :as => 'edit_bio'
      get 'edit_contact', :as => 'edit_contact'
      put 'change_password', :as => 'change_password'
    end
  end
  
  resources :paintings, :papers, :links
  
  resources :schools, :teaching_positions, :except => [:index]
  
  resources :exhibitions, :except => [:index, :new] do
    new do
      get 'solo'
      get 'group'
    end
  end
 
 root :to => 'home#index'
end
