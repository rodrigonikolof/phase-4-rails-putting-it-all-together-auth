class User < ApplicationRecord
    validates :username, uniqueness: true, presence: true
    has_many :recipes
    has_secure_password
end
