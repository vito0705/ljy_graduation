class CreateBadAuthRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :bad_auth_records do |t|
      t.string :phone_num
      t.string :information

      t.timestamps
    end
  end
end
