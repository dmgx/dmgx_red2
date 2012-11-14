class Punch < ActiveRecord::Base
  attr_accessible :date, :time, :punch_type_id, :user_id, :notes
  belongs_to :issue
  belongs_to :project
  belongs_to :punch_type
  belongs_to :user
end
