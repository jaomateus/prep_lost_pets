class Pet < ApplicationRecord
  SPECIES = %w[dog cat bird fish]

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    return nil unless found_on
    (Date.today - found_on).to_i
  end
end
