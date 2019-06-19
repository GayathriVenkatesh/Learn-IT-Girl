class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products
  acts_as_follower
  acts_as_followable
  acts_as_liker
  has_many :likes, dependent: :destroy
end
