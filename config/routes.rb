Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :universities, only: [:show, :index]
      resources :students , only: [:show, :index, :create]
      resources :universitystudents, only:[:show]
    end
  end
end
