class User < ApplicationRecord
  before_save {self.username = username.downcase}

  validates :username, presence: true, length: {minimum: 6}, uniqueness: {case_sensitive: false}
  validates :name, presence: true
  validates :password, presence: true, length: {minimum: 6}

  has_secure_password
end
