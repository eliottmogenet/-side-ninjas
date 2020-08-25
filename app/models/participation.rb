class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :project
  #validates :motivation, :work_time, presence: true
  #validates :motivation, length: { minimum: 150 }
end
