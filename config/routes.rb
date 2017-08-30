Rails.application.routes.draw do



# get '/' => 'pages#welcome'
root 'pages#welcome'
get 'welcome' => 'pages#welcome'
get 'contest'=> 'pages#contest'
get 'kitten/:size' => 'pages#kitten', as: 'kitten'
get 'kittens/:size' => 'pages#kittens'
get 'secrets/:magic_word' => 'pages#secrets'







end
