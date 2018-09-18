class User < ApplicationRecord
  has_secure_password
    validates :email, presence: true, uniqueness: true

  has_many :contacts  
  belongs_to :group
end
