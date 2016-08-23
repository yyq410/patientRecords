class AddAgeToCurrentHistoryRecord < ActiveRecord::Migration
  def change
      add_column :current_history_records, :recordAge, :integer
      add_column :current_history_records, :recordProcess, :string
  end
end
