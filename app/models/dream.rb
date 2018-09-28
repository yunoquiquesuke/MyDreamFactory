class Dream < ApplicationRecord
  has_many :projects
  validates :name, :due, presence: true
  validates :is_done, numericality: true, presence: true

  scope :projects_due_by, ->(date) { eager_load(:projects).where(projects: { due: date }) }

end
