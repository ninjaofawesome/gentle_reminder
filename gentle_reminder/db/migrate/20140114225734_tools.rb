class Tools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :tool_description
      t.timestamps
    end
  end
end
