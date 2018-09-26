class Dream < ApplicationRecord
  has_many :projects
  validates :name, :due, presence: true
  validates :is_done, numericality: true, presence: true
end
