Rails.application.routes.draw do

  root 'dockeri#index'

  # Main Dockeri routes
  get 'settings' => 'dockeri#settings'
  post 'settings' => 'dockeri#save_settings'
  patch 'settings' => 'dockeri#save_settings'

  # Image routes
  get 'images' => 'images#index'
  get 'images/:id' => 'images#show'
  delete 'images/:id' => 'images#destroy'
  get 'images/:id/start' => 'images#start'

  # Container routes
  get 'containers' => 'containers#index'
  get 'containers/new' => 'containers#new'
  get 'containers/:id' => 'containers#show'
  delete 'containers/:id' => 'containers#destroy'
  get 'containers/:id/stop' => 'containers#stop'
  get 'containers/:id/start' => 'containers#start'

end
