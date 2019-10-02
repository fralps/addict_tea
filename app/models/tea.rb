# frozen_string_literal: true

class Tea < ApplicationRecord
  # Validations
  validates :name, presence: true, length: { minimum: 2 }
  validates :fermentation, presence: true
  validates :infusion_time, presence: true
  validates :location, presence: true
  validates :brand, presence: true, length: { minimum: 1 }
  validates :description, presence: true, length: { in: 20..2000 }
  validates :grade, presence: true
  validates :user_id, presence: true

  # Relations
  belongs_to :user
end
