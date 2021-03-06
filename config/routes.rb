Rails.application.routes.draw do
  root 'static_pages#index'

  get  '/fun_page' => 'static_pages#fun_page'
  get  '/googleef3be4909b8502a4.html', to: redirect('/public/googleef3be4909b8502a4.html')
  
  resources :projects
  resource :messages do
    collection do
      post 'reply'
      get 'reply'
    end
  end

  if Rails.env.production?
    offline = Rack::Offline.configure :cache_interval => 120 do
      cache ActionController::Base.helpers.asset_path("application.css")
      cache ActionController::Base.helpers.asset_path("application.js")
      # cache other assets
      network "/"
    end
    get "/application.manifest" => offline
  end
end
