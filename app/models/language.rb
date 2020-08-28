class Language < ApplicationRecord
  has_many :frameworks, dependent: :destroy
  has_many :feature_languages, dependent: :destroy
  has_many :user_languages, dependent: :destroy
  has_many :project_languages, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :name, uniqueness: true

  # def range
  #  SELECT * FROM language ORDER BY name ASC;
  # end
end

