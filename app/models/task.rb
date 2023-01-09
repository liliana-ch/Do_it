class Task < ApplicationRecord
  validates :title, presence: true, length: {minimum: 6, maximum: 100}
  enum status: [:done, :to_do]
  enum period: [:daily, :weekly, :yearly]
end
