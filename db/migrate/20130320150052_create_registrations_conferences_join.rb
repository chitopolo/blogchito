class CreateRegistrationsConferencesJoin < ActiveRecord::Migration
  def up
  	create_table :conferences_registrations, :id => false do |t|
  		t.integer "registration_id"
  		t.integer "conference_id"
  	end
  	add_index :conferences_registrations, ["registration_id", "conference_id"], :name => 'by_registration_conference'
  end

  def down
  	drop_table :conferences_registrations
  end
end
