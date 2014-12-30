class Schedule < ActiveRecord::Base
  # Associations
  belongs_to :target
  has_many :pings

  # Rails validations
  validates :hour, presence: true, numericality: {greater_than:0, less_than:24}, on: [:create, :update]

  # Association validations
  validates_presence_of :target_id, on: [:create, :update]
end
