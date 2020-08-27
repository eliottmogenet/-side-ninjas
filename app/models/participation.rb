class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :project
  #validates :motivation, :work_time, presence: true
  #validates :motivation, length: { minimum: 150 }

  def admin_users
    admin_participations = Participation.where(admin: true)
    admin_participations.map { |participation| participation.user }
  end
end
