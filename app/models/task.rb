class Task < ApplicationRecord
  validates :name, presence: true, length: {minimum: 6, maximum: 100}
  validates :period, presence: true
  validates :status, presence: true
  validates :deadline, presence: true
  enum status: [:to_do, :done]
  enum period: [:daily, :weekly, :yearly]
end
