class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :first
      t.string :last
      t.string :last2
      t.string :career
      t.string :level
      t.string :email
      t.string :ci
      t.string :city
      t.string :direction
      t.string :zona
      t.string :telephone
      t.string :cellphone
      t.string :other
      t.text :health
      t.string :apoderado
      t.string :parentesco
      t.string :telephoneapoderado
      t.string :directionapoderado

      t.timestamps
    end
  end
end
