# Micro-Reddit

This project is meant to be a solid introduction to `Models` and `Migrations` in `Ruby on Rails`. There are no views, controllers, or routes in this project. But you can use the `rails console` to play with model creation and investigate associations.

# Built With
 - Ruby on Rails 6

## Installation

- Clone repo and run `bundle install`. 

## Model Tests

I decided to implement specs early on during the creation of each `Model`.

- Run `rails test:models` in the console to verify that tests pass. 

## Model Design

- The site can have users. 
- Users can make posts. 
- Users can make comments. 
- Posts can be commented on. 
- Comments cannot be further commented on (no nested comments / 1-level)

Before beginning the project, I planned the models:

### User

- has_many :posts
  - associated posts must be destroyed when a user is destroyed
- has_many :comments
  - associated comments must be destroyed when a user is destroyed
- has a username 
  - represented by a string 
  - must be present  
  - must be no more than 50 chars
  - must be unique (case insensitive)
- has an email 
  - represented by a string 
  - must be present  
  - must be no more than 255 chars
  - must be unique (case insensitive)
  - must comply valid email format

### Post
- belongs_to :user
- has_many: comments
  - associated comments must be destroyed when a post is destroyed
- has a title
  - represented by a string
  - must be present
  - must not be more than 255 chars
  - must be unique (case insensitive)
- has body 
  - represented by text
  - must be present
- has user_id
  - represented by integer
  - must be present

### Comment
- belongs_to :user
- belongs_to :post
- has content
  - represented by text 
  - must be present
- has user_id
  - represented by integer 
  - must be present
- has post_id 
  - represented by integer 
  - must be present 

# Author
Saintaze [@saintaze](https://github.com/saintaze/)
