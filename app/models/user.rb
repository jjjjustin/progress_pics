class User < ActiveRecord::Base
  has_many :pictures
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_uniqueness_of :user_name
  validates_presence_of :user_name, :email
end
