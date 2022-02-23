class CreateWorkRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :work_records do |t|
      t.references :person, null: false, foreign_key: true
      t.date :record_date
      t.time :start1_time
      t.time :end1_time
      t.time :start2_time
      t.time :end2_time
      t.integer :ot
      t.integer :nt

      t.timestamps
    end
  end
end
