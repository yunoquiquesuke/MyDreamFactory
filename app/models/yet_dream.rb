class YetDream < ApplicationRecord
  has_many :yet_projects
  validates :name, presence: true

  scope :yet_projects_due_by, ->(date) { eager_load(:yet_projects).where(yet_projects: { due: date }) }
end
