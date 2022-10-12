class User < ApplicationRecord
  acts_as_token_authenticatable
  
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         :confirmable

  has_many :accounts, foreign_key: :owner_id
end
