class Framework < ApplicationRecord
  belongs_to :language
  validates :name, presence: true
end
