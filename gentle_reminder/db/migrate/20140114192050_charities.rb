class Charities < ActiveRecord::Migration
  def change
  	create_table :charities do |t|
  		t.string :name
  		t.timestamps
  	end
  end
end
