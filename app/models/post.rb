class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy


  # user_id validation
  validates :user_id, presence: true

  # title validation
  validates :title, presence: true, 
                    length: {maximum: 255},
                    uniqueness: {case_sensitive: false}
  
  # body validation
  validates :body, presence: true              
end
