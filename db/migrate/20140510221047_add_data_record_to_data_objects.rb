class AddDataRecordToDataObjects < ActiveRecord::Migration
  def change
    add_column :data_objects, :data_record, :text
  end
end
