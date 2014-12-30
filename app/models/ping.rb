class Ping < ActiveRecord::Base
  belongs_to :scheduled
  belongs_to :target
end
