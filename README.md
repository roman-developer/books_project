# Books project

This project is a website to manage the database of Books. It is a simple way to create, edit, delete or display books with their chapters.

## Getting Started

You can follow the instructions to run the project on your local machine for development and testing purposes.

### Prerequisites

* Ruby on Rails installed.

```
Ruby version: ruby 2.3.1p112 
Rails version: Rails 5.0.7.1
```

* Database

```
Sqlite version: 3.24.0 2018-06-04 
```
I had some issues in my local machine with compatibility sqlite versions and I could finally fixed usign this gem version: `gem 'sqlite3', '~> 1.3.6'`


### Installing

The first step is clonning the repository:
```
git clone https://github.com/roman-developer/books_project.git
```

Second, execute the gems:
```
bundle install
```

Next, create the database, run the migrations and create seeds:
```
rake db:create
rake db:migration
rake db:seed
```

Finally, run the server `rails server` and access to `localhost:3000`

### Running the tests

How to run the test suite

```
bundle exec rspec spec
```

## Authors

* **Jose Maria Roman** - *Initial work* - [roman-developer](https://github.com/roman-developer/)

* ...
# books_project
