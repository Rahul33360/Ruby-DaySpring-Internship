Rails.application.routes.draw do


  # Day15 required for Action_Mailer
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # Day 29
  draw :admin     # segregating huge route file in seprate file
  #  get route_name to controller_name index
  # get "payment_modes", to: "payments#payment_modes"   # this has no view (working)
  root "product1s#index"    # put root at start of applicaiton always
  get 'payment_modes',to:"payments#payment_modes" 
  # get 'payment_modes',to:"payments#payment_modes", as: "payment_related"
  # get '/data_analytics', to: 'reports#index', constraints: {format: "json"}
  get '/product1s_json', to:'product1s#index', constraints:{format:"json"}
  # match '/login', to: 'product1s#new', via: [:get,:post]   # at last
  # for match we will write logic in controller. different logic for get and diff logic for post using conditionals

  # Day 29 Task
  get 'payment_listing', to:'payments#index', as: 'listing'


  
  # Day 29
  # when you write resource all default 7 routes will be generated
  # if we write ... then only one rooute will be generated


  resources :orders  # allow all the endpoints in controller, all 7 routes will create
  # resource :orders    # only 6 routes will create, this will skip index route
  # resources :orders do
  #   collection do
  #     get "index"
  #   end
  # end

  # resources :customer1s
  # resources :product1s 
  
  # resources :products, except: [:show]  # in place except of skip for rails version below 8
  # resources :product1s, only: [:new, :edit, :create, :update]
  # resources :product1s, only: [:new, :edit]

  #  resources :product1s, except: [:show] do
  #   collection do 
  #     get "out_of_stock"
  #   end
  # end


  resources :product1s do   # example with only also
  # Day 29
      member do
      get "analytics"
    end 
      collection do
      get "out_of_stock"
    end
  end

  # Day 29
  # namespace :product1s do   # for achieving relation between two model
  #   resources :categories
  # end
  # Day 29
  namespace :admin do     # namespace consider as folder. 
    resources :dashboard
  end
  # Day 29
  scope module: :admin do   # this will help to hide the admin from url
    resources :reports 
  end

  # Day 29
  scope "/people" do  # http://127.0.0.1:3000/people/customer1s/blacklisted_customers
    resources :customer1s do
      collection do
        get "blacklisted_customers"
      end
    end
  end



  # resources :customer1s do
  #   collection do
  #     get "blacklisted_customers"
  #   end
  # end

  # resources :products
  resources :students
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  # Day 29
  # get '*path', to: redirect("/")   # slash "/" means root, '*path' means include all the non-directing path other than we defined. it helps in hiding your routes also



end
