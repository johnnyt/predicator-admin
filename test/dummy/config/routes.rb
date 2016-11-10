Rails.application.routes.draw do
  mount Predicator::Engine => "/predicator"
end
