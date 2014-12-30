class Target < ActiveRecord::Base
  # Associations
  belongs_to :user
  has_many :schedules

  # Rails validations
  validates :url, presence: true, length: { in: 10..255 }, on: [:create, :update]

  # Associations validations
  validates_presence_of :user_id, on: [:create, :update]
end
