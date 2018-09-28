class YetTask < ApplicationRecord
  belongs_to :yet_project
  validates :name, :yet_project_id, :due, :is_done, presence: true
end
