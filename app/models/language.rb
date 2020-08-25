class Language < ApplicationRecord
  has_many :frameworks
  has_many :feature_languages
  has_many :user_languages
  has_many :project_languages
  validates :name, presence: true
  validates :name, uniqueness: true
end
