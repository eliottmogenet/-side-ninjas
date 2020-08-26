class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects
  has_many :participations, dependent: :destroy
  has_many :projects, through: :participations
<<<<<<< HEAD
  has_many :user_languages, dependent: :destroy
  validates :first_name, :last_name, :batch_number, :city, :bootcamp_year, presence: true
=======
  has_many :user_languages
  has_one_attached :photo
  validates :first_name, :last_name, :batch_number, :city, :pays, :bootcamp_year, presence: true
>>>>>>> master
end
