class Work::Record < ApplicationRecord
  belongs_to :person
  belongs_to :work_category_shift_type, :class_name => "Work::Category::ShiftType"
  before_save :clean_up

  def clean_up
    self[:wt1] = self[:end1_time] - self[:start1_time]
    self[:wt2] = self[:end2_time] - self[:start2_time]
  end

end
