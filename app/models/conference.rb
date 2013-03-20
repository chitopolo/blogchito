class Conference < ActiveRecord::Base
	has_and_belongs_to_many :registrations
  attr_accessible :category, :date, :name, :obligatory, :speaker, :time, :conference_ids
end
