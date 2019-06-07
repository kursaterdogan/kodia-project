Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :universities 
      resources :students
    end
  end
end
