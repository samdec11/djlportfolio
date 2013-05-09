Prototype1::Application.routes.draw do
  get '/' => 'home#index'
  get '/about' => 'home#about'
  get '/contact' => 'home#contact'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/admin' => 'home#admin'
  resources :paintings, :papers, :links
 root :to => 'home#index'
end
