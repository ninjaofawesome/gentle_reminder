class CreateTableProgrammingLanguages < ActiveRecord::Migration
  def change
    create_table :programming_languages do |t|
      t.string :name
      t.integer :goal_id
      t.timestamps
    end
  end
end
