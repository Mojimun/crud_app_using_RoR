Rails.application.routes.draw do
  # root to: 'user#view'
  root to: 'user#index'
  get'create', to:'user#create'
  get 'edit', to:'user#edit'
  get 'user/delete'
  post "create_user", to:'user#user_create'
  put "edit_user", to:'user#edit_user'
  delete "delete_user", to:'user#delete_user' 
  get 'all_user', to:'user#user_all'
  get 'user_details', to:'user#user_details'
  get 'entreprise', to:'user#get_entreprise'
  get 'department', to:'user#select_department'
  get 'team', to: 'user#get_team'
  get 'designation', to: 'user#get_designation'
  get 'role', to:'user#select_role'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
