class Goals < ActiveRecord::Migration
  def change 
    create_table :goals do |t|
      t.string :programming_language
      t.timestamps
    end
  end
end
