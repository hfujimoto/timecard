class CreateWorkRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :work_records do |t|
      t.references :person, null: false, foreign_key: true
      t.date :record_date
      t.time :start1_time
      t.time :end1_time
      t.time :start2_time
      t.time :end2_time
      t.integer :work_category_shift_type_id
      t.integer :wt1
      t.integer :ot1
      t.integer :nt1
      t.integer :wt2
      t.integer :ot2
      t.integer :nt2
      t.integer :wt
      t.integer :ot
      t.integer :nt
      t.timestamps
    end
  end
end
