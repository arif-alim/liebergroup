Rails.application.routes.draw do
  resources :construction, only: [:index] do
  	collection do
  		get :general_contracting
      get :construction_management
      get :design_build
  	end
  end
  resources :mechanical, only: [:index]  do
    collection do 
      get :plumbing
      get :hvac
      get :efficiency
      get :hydronics
    end
  end
  resources :electrical, only: [:index] do
    collection do
      get :maintenance
      get :construction_projects
      get :electric_vehicle_charging_stations
      get :solar_panel_systems
      get :lighting_retrofits
      get :gas_detection_and_calibration
    end
  end

  resources :fireproofing, only: [:index] do
    collection do
      get :firestopping
      get :intumescent_fireproofing
      get :cementitious_fireproofing
    end
  end
  resources :about, only: :index
  resources :media, only: :index
  resources :contact, only: :index
  
  resources :international, only: [:index] do
    collection do
      get 'newyork'
      get 'dubai'
      get 'london'
      get 'australia'
      get 'turkey'
    end
  end

  root to: 'home#index'
  get 'sitemap.xml', :to => 'sitemap#index', :defaults => {:format => 'xml'}
  get '/:page' => 'home#index'
  post "home/contact" => "home#contact", :as=> :contact
end
