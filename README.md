# Bookmark Manager Challenge
### [Makers Academy] (http://www.makersacademy.com) - Week 4 Pair Programming Project

## Index
* [Gems Used] (#GEMS)
* [Installtion] (#Install)
* [User Stories] (#US)
* [Usage] (#Usage)
* [Database Schema] (#Database)
* [Screen Shots] (#Shots)
* [Use live on Heroku] (#Heroku)

## <a name="GEMS">Gems Used</a>
```ruby
gem 'data_mapper'
gem 'dm-postgres-adapter'
gem 'sinatra'
gem 'sinatra-partial'
gem 'rake'
gem 'bcrypt'
gem 'sinatra-flash'
gem 'timecop'
gem 'mailgun-ruby'

group :test do
  gem 'byebug'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'rspec'
  gem 'rspec-sinatra'
  gem 'selenium-webdriver'
end
```

## <a name="Install">Installation</a>
The Bookmark Manager Challenge is ran on Ruby version : 2.3.3

* To clone and change Ruby versions
```shell
$ git clone https://github.com/adrianeyre/rps-challenge
$ cd rps-challenge
$ rvm 2.3.3
```
* To install Ruby 2.3.3
```shell
$ rvm install ruby-2.3.3
```
* To install Gems
```shell
$ gem install bundle
$ bundle
```

## <a name="US">User Stories</a>
```
As a user
So that I can see all links saved
I want to be able to list the links in the database


As a user
So that I can save a link
I want to be able to add a new link to database

As a user
So that I can recognise the links I saved
I want to be able to add tags to links

As a user
So that I can see only links I am interested in
I want to able to filter the links by their tag
```

## <a name="Usage">Usage</a>
To load Sinatra web server
```shell
$ ruby app.rb
```
type `http://localhost:4567` into your web browser

## <a name="Heroku">Use live on Heroku</a>

[Bookmark Manager] (https://adrianeyre-bookmarkmanager.herokuapp.com/)

## <a name="Database">Database Schema</a>
[![Schema](https://raw.githubusercontent.com/adrianeyre/bookmark-manager/master/images/schema1.png)](https://raw.githubusercontent.com/adrianeyre/bookmark-manager/master/images/schema1.png "Schema 1")

[![Schema](https://raw.githubusercontent.com/adrianeyre/bookmark-manager/master/images/schema2.png)](https://raw.githubusercontent.com/adrianeyre/bookmark-manager/master/images/schema2.png "Schema 2")

## <a name="Shots">Screen Shots</a>

### Links Page
[![ScreenShot](https://raw.githubusercontent.com/adrianeyre/bookmark-manager/master/images/links.png)](https://raw.githubusercontent.com/adrianeyre/bookmark-manager/master/images/links.png "Schema 2")
