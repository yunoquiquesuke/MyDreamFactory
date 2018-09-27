class Project < ApplicationRecord
  has_many :tasks
  belongs_to :dream

  attr_accessor :dream_id, :name, :due, :level
  validates :dream_id, :name, :due, :level, presence: true

    # include ActiveModel::Model
    # include ActiveModel::Conversion

    # def persisted? ; false ; end
end
