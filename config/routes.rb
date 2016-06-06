Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'blog_posts#index'
  resources :blog_posts
end
