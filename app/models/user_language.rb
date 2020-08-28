class UserLanguage < ApplicationRecord
  LEVELS = ["🐥 Beginner", "🚀 Medium", "💪 Proficient", "🏎 Expert"]
  belongs_to :user
  belongs_to :language
end
