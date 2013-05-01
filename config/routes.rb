Prototype1::Application.routes.draw do
  get '/' => 'home#index'
  get '/about' => 'home#about'
  get '/art' => 'home#art'
  get '/contact' => 'home#contact'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  get '/admin' => 'home#admin'
  resources :paintings
 root :to => 'home#index'
end
