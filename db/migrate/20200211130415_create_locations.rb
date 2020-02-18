class CreateLocations < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    create_table :locations do |t|
      t.text :title
      t.float :latitude
      t.float :longitude

      t.timestamps
    end

    add_index :locations, %i[latitude longitude], algorithm: :concurrently
  end
end
