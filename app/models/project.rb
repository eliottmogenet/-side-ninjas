class Project < ApplicationRecord
  belongs_to :user
  has_many :users, through: :participations
  has_many :project_languages
  has_many :participations
  validates :title, :description, :tag_line, presence: true
  validates :title, uniqueness: true
  validates :description, length: { minimum: 200 }
end

