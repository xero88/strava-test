Rails.application.routes.draw do
  get '/webhook', to: 'strava#webhook'
  post '/webhook', to: 'strava#webhookpost'
end
