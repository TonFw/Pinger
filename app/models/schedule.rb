class Schedule < ActiveRecord::Base
  # Associations
  belongs_to :target
  has_many :pings

  # Check it for each target
  before_validation :check_uniqueness

  # Rails validations
  validates :hour, presence: true, numericality: {greater_than:0, less_than:24}, on: [:create, :update]

  # Association validations
  validates_presence_of :target_id, on: [:create, :update]

  def check_uniqueness
    similar_schedule = Schedule.where.not(id:self.id).where(target_id: self.target_id, hour: self.hour).take
    if similar_schedule
      self.errors.add('hour', 'it schedule hour is duplicated to it target')
      raise ActiveRecord::Rollback
    end
  end
end
