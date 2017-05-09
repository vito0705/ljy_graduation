class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.integer :phone_id
      t.string :mac_add
      t.integer :time_consuming
      t.string :time_start

      t.timestamps
    end
  end
end
