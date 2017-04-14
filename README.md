# Rails 5 API + JSON API Sample App

A simple Rails 5 + JSON API sample app to demonstrate how to implement Active Model Serializers with the JSON API adapter.

Learn more by checking out [my blog post](http://www.thegreatcodeadventure.com/building-a-super-simple-rails-api-json-api-edition-2/)

We are using PostgreSQL. Which can be download [here](http://postgresapp.com/).

The instructions below are intended to be used along with the my React + Redux front-end API ([GitHub](https://github.com/SophieDeBenedetto/catbook-redux/tree/blog-post), [Blog](http://www.thegreatcodeadventure.com/building-a-simple-crud-app-with-react-redux-part-1/#table-of-contents)). The React app is running on port 3000 and is pointing to this Rails app's API at http://localhost:5000/api/v1/...

```
  $ bundle install
  $ rails db:create db:migrate db:seed
  $ rails s -p 5000
```