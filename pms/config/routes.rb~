Pms3::Application.routes.draw do


  devise_for :users
  resources :users
  resources :projects do
    resources :milestones
  end
  
  resources :milestones do
    resources :tasks do
 
    end
  end     
match 'create_task_using_mail' =>'tasks#create_task_using_mail', :as=>"create_task_using_mail",:method=>:post
match 'task_list/(:id)' => 'tasks#index' ,:as=>'task_list' 

  root :to => "home#index"
end
