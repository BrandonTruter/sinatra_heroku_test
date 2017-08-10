require 'sinatra'

get '/' do
  "Hello, world"
end

get '/search' do
  "SEARCH ~ Email Predictions"
end


get '/advisors' do
  "All existing advisor predictions"
end
