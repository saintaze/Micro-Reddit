# Rails - Micro-Reddit

This [Project](https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-with-active-record-ruby-on-rails) is meant to be a solid introduction to models and migrations using active record. There are no views, controllers, or routes in this project, but you can use the rails console to play with model creation and investigate associations.

### Installation

- Pull down the repo and run `bundle install`. 

### RSpec Tests

I decided to implement specs early on during the creation of each model. I used RSpec-rails and database cleaner to accomplish the TDD of this project.

- Run `rspec spec/models` to verify the tests pass. 

## Model Design

The site must have users. Users must be able to submit posts and comment on links. Posts must be able to be commented on. Comments do not need to be able to be commented on, for now.

Before beginning the project, I planned the models:

User:
- has_many :posts
- has_many :comments
- has a username, represented by a string, which is required to be present, and must be between 6 and 16 chars
- has an email, represented by a string, which is required to be present, and must be in the correct format

Post:
- belongs_to :user
- has_many: comments
- has a title, represented by a string, which is required to be present
- has content, represented by text, also required to be present
- must have a user_id

Comment:
- belongs_to :user
- belongs_to :post
- has content, represented by text, required to be present
- must have a user_id and a post_id to prevent the comment from being orphaned

## Author

Ayaz Ahmed