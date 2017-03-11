Rails.application.routes.draw do

  get 'page/contact',as: "contact"

  get 'page/about',as: "about"

  get 'page/privacy'

  resources :controlsites
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  mount Ckeditor::Engine => '/ckeditor'
  get 'tags/:tag', to: 'posts#index', as: :tag
  resources :sitemap, only: :index
  get 'sitemap.xml', controller: "sitemap", action: "xml"

  get "posts/:id", to: redirect("/%{id}")
  resources :posts, path: '',except: [:new, :index, :create]
  resources :categories
  resources :users
  root 'posts#index'
end



