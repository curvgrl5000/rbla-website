Wondergem::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users

  mount Blogit::Engine => "/blog"

  match '/cheat', to:  "static_pages#cheat"   #All About Git
  match '/cheatsheet_install_git', to:  "static_pages#cheatsheet_install_git"  # HOW TO INSTALL GIT
  match '/cheatsheet_repository', to:  "static_pages#cheatsheet_repository"   # HOW TO CREATE  A GIT REPOSITORY
  match '/cheatsheet_clone_a_repository', to:  "static_pages#cheatsheet_clone_a_repository" # HOW TO CLONE A GIT REPOSITORY
  match '/cheatsheet_merge_a_repository', to:  "static_pages#cheatsheet_merge_a_repository"  # CREATE AND MERGE A GIT REPOSITORY 
  match '/cheatsheet_rollback_a_repository', to:  "static_pages#cheatsheet_rollback_a_repository"  # HOW TO ROLLBACK A RESPOSITORY
  match '/cheatsheet_scaffolding', to:  "static_pages#cheatsheet_scaffolding" # SCAFFOLDING BASICS
  match '/cheatsheet_basic_ruby', to:  "static_pages#cheatsheet_basic_ruby" #RUBY BASICS
  match '/cheatsheet_deploying_to_heroku', to:  "static_pages#cheatsheet_deploying_to_heroku"  #DEPLOYING TO HEROKU 
  match '/cheatsheet_rvm_ruby_version_control', to:  "static_pages#cheatsheet_rvm_ruby_version_control"  #RVM: RUBY VERSION CONTROL
  match '/cheatsheet_command_line_basics', to:  "static_pages#cheatsheet_command_line_basics"  #COMMAND LINE BASICS
  match '/cheatsheet_basic_overview_of_testing', to:  "static_pages#cheatsheet_basic_overview_of_testing"  #OVERVIEW OF TESTING  
  
  match '/cheatsheet_smalltalk', to:  "static_pages#cheatsheet_smalltalk"
  
  get "static_pages/help"


  # The priority is based upon order of creation:
  # first created -> highest priority.                                       

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
