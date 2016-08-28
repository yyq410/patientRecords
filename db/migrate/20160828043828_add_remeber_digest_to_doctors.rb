class AddRemeberDigestToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :remember_digest, :string
  end
end
