get '/messages/new', to: 'messages#new'
post '/messages', to: 'messages#create'

get '/home', to: 'home#index'
get '/', to: 'home#index'
# Configure your routes here
# See: http://www.rubydoc.info/gems/hanami-router/#Usage
