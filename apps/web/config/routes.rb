get '/',         to: 'home#index'
get '/about',    to: 'home#about'
get '/archieve', to: 'home#archieve'

post '/messages',  to: 'messages#create'
get '/repress',    to: 'messages#repress'

# Configure your routes here
# See: http://www.rubydoc.info/gems/hanami-router/#Usage
