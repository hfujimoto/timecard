class Work::Record < ApplicationRecord
  belongs_to :person
  before_save :clean_up

  def clean_up
    self[:ot] = self[:end1_time] - self[:start1_time]
    self[:nt] = self[:end2_time] - self[:start2_time]
  end

end
