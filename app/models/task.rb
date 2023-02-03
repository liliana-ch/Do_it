class Task < ApplicationRecord
  validates :name, presence: true, length: { minimum: 6, maximum: 100 }
  validates :period, presence: true
  validates :status, presence: true
  validates :deadline, presence: true
  enum status: { to_do: 0, done: 1 }
  enum period: { daily: 0, weekly: 1, yearly: 2 }
  validate :check_deadline_possibility, if: :deadline_changed?

    def check_deadline_possibility
      return if deadline >= Time.zone.today
      errors.add(:deadline, 'must not be before today')
    end

end
