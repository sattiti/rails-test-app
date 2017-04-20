class User < ApplicationRecord
  validates :name,
    presence: true,
    length: {maximum: 99}

  validates :email,
    presence: true,
    length: {maximum: 255},
    uniqueness: {case_sensitive: false},
    format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}

  validates :password,
    presence: true,
    length: {minimum: 5}

  has_secure_password
end
