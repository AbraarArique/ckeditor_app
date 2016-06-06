# CKEditor App

## Introduction

CKEditor App is a simple and straightforward Ruby on Rails web application for blogging. It has CKEditor integrated which makes it easy to create rich-style formatting content for blog posts.

This app is built using:

  - Ruby 2 (managed by RVM)
  - Ruby on Rails 4
  - CKEditor
  - PostgreSQL
  - HTML5 (ERB)
  - CSS3 (Sass)
  - JavaScript/CoffeeScript
  - jQuery
  - Bootstrap
  - Heroku

## Installation Instructions:

  - Make sure you have Ruby and Ruby on Rails installed
  - Clone this repository into your local machine:

    ```
    $ git clone https://github.com/AbraarAriquePro/ckeditor_app
    ```
  - Then change to the directory you just cloned:

    ```
    $ cd ckeditor_app
    ```
  - Install all the Gems and their dependencies

    ```
    $ bundle install
    ```
  - Edit `database.yml` and add your own PostgreSQL username, password and other configurations
  - Edit `secrets.yml` and add your own secrets key. You can generate Rails secrets keys by running `rake secret`
  - Setup and migrate the database:

    ```
    $ rake db:setup
    ```
  - Precompile the assets:

    ```
    $ rake assets:precompile
    ```
  - Finally, fire up the WEBrick server

    ```
    $ rails server
    ```

Once the server is up and ready to receive connections, visit [http://localhost:3000/](http://localhost:3000) in your browser and you'll see the app up and running.

## Contributing:
This app is open for community contributions. Please follow the rules bellow to contribute:

  - Fork this project
  - Clone the forked project into your local machine
  - Create a new branch, give it a name that reflects the feature you're working on
  - Do work and commit the changes
  - Push the changes up to your forked repository
  - Open a Pull Request from the master branch
