class Target < ActiveRecord::Base
  # Associations
  belongs_to :user
  has_many :schedules

  # Rails validations
  validates :url, presence: true, length: { in: 10..255 }, on: [:create, :update]

  # Associations validations
  validates_presence_of :user_id, on: [:create, :update]

  # Return it name
  def name
    # Base vars
    aux_name = self.url
    http_index = aux_name.index('http://')
    https_index = aux_name.index('https://') if http_index.nil?

    # SetUp if http or https
    if !http_index.nil?
      protocol = 'http://'
      protocol_index = http_index
    else
      protocol = 'https://'
      protocol_index = https_index
    end

    aux_name[protocol_index+protocol.length..url.index('.')-1]
  end
end
