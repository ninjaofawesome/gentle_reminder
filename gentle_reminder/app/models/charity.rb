class Charity < ActiveRecord::Base

	has_many :users, through: :goals

end