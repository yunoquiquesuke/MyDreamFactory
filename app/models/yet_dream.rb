class YetDream < ApplicationRecord
  has_many :yet_projects
  validates :name, presence: true
end
