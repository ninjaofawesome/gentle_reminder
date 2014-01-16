class ProgrammingLanguage < ApplicationController
  has_many :tools
  belongs_to :goal
end