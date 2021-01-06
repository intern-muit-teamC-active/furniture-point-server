Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  post "reviewlist" => "review#index"
  post "review" => "review#create"
  post "show" => "product#show"
  post "login" => "user#login"
  post "getpoint" => "user#getpoint"
  post "search" => "products#search"
  post "product/list" => "products#indexproduct"
  post "product/getposition" => "products#location"
  post "qr" => "qr#read"


end
