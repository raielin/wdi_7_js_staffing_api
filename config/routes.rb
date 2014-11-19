Rails.application.routes.draw do
  resources :staffing_requests, except: [:new, :edit]

  resources :allocations, except: [:new, :edit]

  resources :projects, except: [:new, :edit]

  resources :skills, except: [:new, :edit]

  # Skills is a nested resource under users only for put and delete
  resources :users, except: [:new, :edit] do
  	# resources :skills, except: [:index, :show, :create, :new, :edit]
    resources :skills, except: [:show, :create, :new, :edit]
  end

  resources :titles, except: [:new, :edit]
end
