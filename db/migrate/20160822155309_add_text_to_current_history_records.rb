class AddTextToCurrentHistoryRecords < ActiveRecord::Migration
  def change
      add_column :current_history_records, :pissAddText, :string
      add_column :current_history_records, :smileBigText, :string
  end
end
