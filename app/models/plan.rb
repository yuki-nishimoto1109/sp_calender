class Plan < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :month, presence: true
  validates :date,  presence: true
  validate  :judge_date

private
  def judge_date
    case month
    when 4,6,9,11
      errors.add(:date, ": 無効な日にちです")if date > 30
    when 2
      errors.add(:date, ": 無効な日にちです")if date > 29
    end
  end

end
