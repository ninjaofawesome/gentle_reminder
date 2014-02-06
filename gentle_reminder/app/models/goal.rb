class Goal < ActiveRecord::Base
	belongs_to :charity
	belongs_to :tool
	belongs_to :user
  belongs_to :goal_type 

  def format_date date
    regex = /^(\d{4})-(\d{2})-(\d{1,2})$/
    matches = date.to_s.match(regex)
    month = date.to_s.gsub(regex, Date::MONTHNAMES[$2.to_i])
    " " + month + " " + $3 + ", " + $1
  end

  def remove_whitespace
    regex = /(?<=\s)(\w+)(?=\s*)/
    match = self.repo.match(regex)
    if match.nil? 
      return self.repo
    else
      return $1
    end
  end

end