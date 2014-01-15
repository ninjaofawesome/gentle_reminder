class ChangePlColumnDatatype < ActiveRecord::Migration
  def change
  	change_column :tools, :tool_description, :string
  	change_column :goals, :programming_language, :string
  end
end
