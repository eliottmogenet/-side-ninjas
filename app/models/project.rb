class Project < ApplicationRecord
  belongs_to :user
  has_many :users, through: :participations
  has_many :project_languages, dependent: :destroy
  has_many :participations, dependent: :destroy
  has_many :features, dependent: :destroy
  has_many :languages, through: :project_languages

  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :description, length: { minimum: 200 }

  accepts_nested_attributes_for :features, reject_if: :all_blank

  def admin_users
    admin_participations = participations.where(admin: true)
    admin_participations.map { |participation| participation.user }
  end
end
