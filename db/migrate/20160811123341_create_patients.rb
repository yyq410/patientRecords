class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.boolean :gender
      t.integer :age
      t.string :work
      t.string :education

      t.timestamps null: false
    end
  end
end
