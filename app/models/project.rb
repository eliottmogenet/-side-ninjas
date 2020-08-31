class Project < ApplicationRecord
  belongs_to :user
  has_many :participations, dependent: :destroy
  has_many :users, through: :participations
  has_many :project_languages, dependent: :destroy
  has_many :features, dependent: :destroy
  has_many :languages, through: :project_languages
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :description, length: { minimum: 10 }
  has_many_attached :photos
  after_save :add_creator_to_participants
  accepts_nested_attributes_for :features, reject_if: :all_blank

  def admin_users
    admin_participations = participations.where(admin: true)
    admin_participations.map { |participation| participation.user }
  end

  def add_creator_to_participants
    Participation.create(
      accepted: true,
      motivation: "Project Owner",
      work_time: "Project Owner",
      admin: true,
      user: self.user,
      project: self
    )
  end
end
