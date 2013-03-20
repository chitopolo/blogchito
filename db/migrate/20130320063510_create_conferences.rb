class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.string :name
      t.time :time
      t.date :date
      t.string :category
      t.string :speaker
      t.boolean :obligatory

      t.timestamps
    end
  end
end
