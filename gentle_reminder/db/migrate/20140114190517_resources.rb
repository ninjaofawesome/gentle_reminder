class Resources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :resource_description
      t.timestamps
    end
  end
end
