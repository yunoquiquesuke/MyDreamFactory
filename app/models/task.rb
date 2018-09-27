class Task < ApplicationRecord
  belongs_to :project

  # attr_accessor :project_id, :name, :due, :is_done
  validates :project_id, :name, presence: true

  # include ActiveModel::Model
  # include ActiveModel::Conversion

  # def persisted? ; false ; end
end
