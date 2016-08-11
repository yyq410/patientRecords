class AddIdnumberToPatients < ActiveRecord::Migration
  def change
      add_column :patients, :idnumber, :string
  end
end
