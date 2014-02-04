class Goal < ActiveRecord::Base
	belongs_to :charity
	belongs_to :tool
	belongs_to :user
  belongs_to :goal_type #new

  def format_date date
    regex = /^(\d{4})-(\d{2})-(\d{1,2})$/
    matches = date.to_s.match(regex)
    date_array  = matches.captures
    month = date.to_s.gsub(regex, Date::MONTHNAMES[$2.to_i])
    " " + month + " " + date_array[2] + ", " + date_array[0]
  end
end