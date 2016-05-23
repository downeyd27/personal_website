Rails.application.routes.draw do
  get 'messages/reply'

  root 'static_pages#index'

  resources :projects

  resource :messages do
    collection do
      post 'reply'
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
