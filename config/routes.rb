Rails.application.routes.draw do
  #source https://www.youtube.com/watch?v=kBdZ9_yGLjg
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    devise_for :personnes
    resources :welcome
    resources :shifts
    resources :rapports
    resources :personnes
    resources :devise
    resources :missions
    resources :festivals
  end
  match "*path" => "application#check_local", via: [:get, :post, :put, :patch, :delete]

  root 'welcome#index'
end
