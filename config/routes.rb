Rails.application.routes.draw do
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', as: 'signin'
  get '/signout' => 'sessions#destroy', as: 'signout'
  get '/auth/failure' => 'sessions#failure'

  get '/sites/:page_id' => 'site#home', as: 'site_home'
  get '/sites/:page_id/about' => 'site#about', as: 'site_about'
  get '/sites/:page_id/contact' => 'site#contact', as: 'site_contact'
  get '/sites/:page_id/events' => 'site#events', as: 'site_events'
  get '/sites/:page_id/gallery' => 'site#gallery', as: 'site_gallery'
  get '/sites/:page_id/news' => 'site#news', as: 'site_news'

  namespace :client do
    get 'dashboard' => 'dashboard#index', as: 'dashboard'
    get 'templates/:page_id' => 'template#index', as: 'templates'
    get 'templates/:page_id/preview/:template_name' => 'template#preview', as: 'template_preview'

    # get 'template/:page_id/:template_name/home' => 'design#home', as: 'design_home'
    # get 'template/:page_id/:template_name/about' => 'design#about', as: 'design_about'
    # get 'template/:page_id/:template_name/contact' => 'design#contact', as: 'design_contact'
    # get 'template/:page_id/:template_name/events' => 'design#events', as: 'design_events'
    # get 'template/:page_id/:template_name/gallery' => 'design#gallery', as: 'design_gallery'
    # get 'template/:page_id/:template_name/news' => 'design#news', as: 'design_news'

    get 'continue/:page_id/:template_name' => 'continue#index', as: 'continue'

    get 'continue/:page_id/:template_name/create/account/free' => 'freeaccount#save', as: 'create_freeaccount'

    post 'continue/:page_id/:template_name/domain/check' => 'continue#check', as: 'check_domain'

    get 'continue/:page_id/:template_name/total' => 'checkout#index', as: 'checkout_total'
  end
end
