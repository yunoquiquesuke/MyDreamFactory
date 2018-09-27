class Project < ApplicationRecord
  has_many :tasks
  belongs_to :dream

  # attr_accessor :name, :dream_id, :project_level, :due, :is_done
  validates :dream_id, :name, :due, :project_level, presence: true

    # include ActiveModel::Model
    # include ActiveModel::Conversion

    # def persisted? ; false ; end
end
