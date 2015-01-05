class Ping < ActiveRecord::Base
  # Associations
  belongs_to :target
  belongs_to :schedule

  # Rails validations
  validates :http_code, numericality: {}
  validates_inclusion_of :http_code, in: HttpConst.codes.values, on: [:create, :update]

  # Association validations
  validates_presence_of :target_id
  validates_presence_of :schedule_id
end
