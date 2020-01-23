Rails.application.routes.draw do
  
  resources :construction, only: :index
  
  resources :mechanical, only: :index
  resources :electrical, only: :index
  resources :fireproofing, only: :index

  root to: 'home#index'
  get 'sitemap.xml', :to => 'sitemap#index', :defaults => {:format => 'xml'}
  get '/:page' => 'home#index'
  post "home/contact" => "home#contact", :as=> :contact
end
