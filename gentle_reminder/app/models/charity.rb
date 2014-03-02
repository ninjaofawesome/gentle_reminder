class Charity < ActiveRecord::Base
  has_one :goal
	has_many :users, through: :goals

end