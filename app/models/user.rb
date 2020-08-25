class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects
  has_many :participations
  has_many :projects, through: :participations
  has_many :user_languages
  validates :first_name, :last_name, :batch_number, presence: true
end
