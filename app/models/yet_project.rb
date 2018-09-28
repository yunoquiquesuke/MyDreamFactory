class YetProject < ApplicationRecord
  belongs_to :yet_dream
  has_many :yet_tasks
  validates :name, :yet_dream_id, :due, :is_done, presence: true
end
