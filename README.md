# Virtual Monster Manual

A web-based browser for the D&D 5e Monster Manual.

## Setup

Copy `config/database.yml.template` to `config/database.yml` and fill in your
database credentials. If you have your MySQL username and password exported to
environment variables `MYSQL_USER` and `MYSQL_PASS` you don't need to do
anything more than copy the template.

Then run
```sh
bundler install
rails db:create
rails db:schema:load
```
To install gems and to create and migrate the database.

TODO: This stuff

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
