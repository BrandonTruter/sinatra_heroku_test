
## Example Heroku Sinatra test-app



$ heroku login



$ bundle install --without production


git add -A

git commit -m "search route for predictions"

git push heroku master
  
git remote -v
  
  
$ heroku run rake db:migrate



'/'
'/search'
'/advisors'



------

============= sqlite

production:
  <<: *default
  database: db/production.sqlite3
  
gem 'sqlite3'

============= postgresql
  
production:
  <<: *default
  adapter: postgresql
  database: db/production.sqlite3

gem 'sqlite3', group: :development
gem 'pg', '0.18.1', group: :production


------

PUMA as App Server

https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server


------


$ heroku login


1. choose db above

  $ bundle install
  
  $ bundle install --without production
    
    to not install PostgreSQL locally
    

2. commit / push changes

  $ git add -A
  $ git commit -m "gems for Heroku"
  $ git push heroku master
  
  $ git remote -v


3. Setup DB

  $ heroku run rake db:migrate

  $ heroku run rake db:seed


4. Open in browser

  $ heroku apps:info

  In the output, copy the address in the Web URL field. Open a new tab in your browser, and visit your app.




