Rails.application.routes.draw do
  get '/register',to: 'phones#register'

  get '/auth',to: 'phones#auth'

  get '/record',to: 'phones#get_record'
  get '/warning',to: 'phones#get_bad_record'
  get '/phones',to: 'phones#get_phones'

  get '/stop', to: 'phones#stop_time'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
