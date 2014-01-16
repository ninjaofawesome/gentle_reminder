class ProgrammingLanguage < ActiveRecord::Base
  has_many :goals
  has_many :tools
end