class CreateWorkCategoryShiftTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :work_category_shift_types do |t|
      t.string :name
      t.integer :start_hour
      t.integer :end_hour
      t.timestamps
    end
  end
end
