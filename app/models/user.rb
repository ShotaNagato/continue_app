class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
              format: { with: VALID_EMAIL_REGEX }
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,32}+\z/i  
  #アルファベットと数字を含む6から32
  validates :password, presence: true, length: {minimum:6, maximum: 32}, 
              format: { with: VALID_PASSWORD_REGEX }
  
  has_secure_password
end
