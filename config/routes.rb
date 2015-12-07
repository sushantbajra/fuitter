Rails.application.routes.draw do
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', as: 'signin'
  get '/signout' => 'sessions#destroy', as: 'signout'
  get '/auth/failure' => 'sessions#failure'

  namespace :client do
    get 'dashboard' => 'dashboard#index', as: 'dashboard'
    get 'templates/:page_id' => 'template#index', as: 'templates'
    get 'templates/:page_id/preview/:template_name' => 'template#preview', as: 'template_preview'

    get 'template/:page_id/:template_name/home' => 'design#home', as: 'design_home'
    get 'template/:page_id/:template_name/about' => 'design#about', as: 'design_about'
    get 'template/:page_id/:template_name/contact' => 'design#contact', as: 'design_contact'
    get 'template/:page_id/:template_name/events' => 'design#events', as: 'design_events'
    get 'template/:page_id/:template_name/gallery' => 'design#gallery', as: 'design_gallery'
    get 'template/:page_id/:template_name/news' => 'design#news', as: 'design_news'

    get 'continue/:page_id/:template_name' => 'continue#index', as: 'continue'
  end
end
