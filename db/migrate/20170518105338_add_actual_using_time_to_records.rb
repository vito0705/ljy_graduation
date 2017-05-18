class AddActualUsingTimeToRecords < ActiveRecord::Migration[5.0]
  def change

      add_column :records, :actual_using_time, :string

  end
end
