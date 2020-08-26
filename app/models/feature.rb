class Feature < ApplicationRecord
  belongs_to :project
  has_many :feature_languages, dependent: :destroy
end
