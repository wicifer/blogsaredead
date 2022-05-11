class User < ApplicationRecord
   before_save { self.email = email.downcase }
   has_many :articles
   validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximun: 25 }
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
   validates :email, presence: true, uniqueness:  { case_sensitive: false }, length: { minimum: 5, maximun: 105 }, format: { with: VALID_EMAIL_REGEX }
   has_secure_password
end