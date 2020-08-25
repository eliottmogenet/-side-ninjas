class Project < ApplicationRecord
  belongs_to :user
  has_many :users, through: :participations
  has_many :project_languages
  has_many :participations
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :description, length: { minimum: 200 }

  def admin_users
    admin_participations = participations.where(admin: true)
    admin_participations.map { |participation| participation.user}
  end
end


