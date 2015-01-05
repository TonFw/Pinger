class Target < ActiveRecord::Base
  # Associations
  belongs_to :user
  has_many :schedules
  has_many :pings

  # Rails validations
  validates :url, presence: true, length: { in: 10..255 }, on: [:create, :update]

  # Associations validations
  validates_presence_of :user_id, on: [:create, :update]

  # Return it name
  def name
    # Base vars
    aux_name = self.url
    str_before_name = '//'
    name_starts_at = aux_name.index(str_before_name)+str_before_name.length
    aux_name[name_starts_at..url.index('.')-1]
  end
end
