class Goals < ActiveRecord::Migration
  def change 
    create_table :goals do |t|
      t.integer :programming_language
      t.timestamps
    end
  end
end
