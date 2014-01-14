class Tools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.integer :tool_description
      t.timestamps
    end
  end
end
