Rails.application.routes.draw do

  post 'services/addressAPI', to: 'configuracao#busca_cep'

  namespace :site do
    get 'welcome/index'
  end

  namespace :admins_backoffice do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    namespace :welcome do
      post 'services/zapi', to: 'mensagem#envia_mensagem'
      get 'configuracao/index'
      get 'plano/index'
      get 'mensagem/index'
      get 'anamnese/index'
      get 'consulta/index'
      get 'paciente/index'
    end
    get 'welcome/index'
  end


  devise_for :admins
  devise_for :users


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root 'site/welcome#index'
end
