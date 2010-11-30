Rails.application.routes.draw do
  namespace :admin do
    resources :galleries do
      resources :gallery_items
    end
    resources :gallery_items
  end

  resources :galleries, :only => [:index, :show] do
    resources :gallery_items, :only => [:index]
  end
  resources :gallery_items, :only => [:show]
end
