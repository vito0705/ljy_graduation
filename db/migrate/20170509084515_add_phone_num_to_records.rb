class AddPhoneNumToRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :phone_num, :string
  end
end
