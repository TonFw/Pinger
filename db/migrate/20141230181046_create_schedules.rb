class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :hour
      t.belongs_to :target, index: true

      t.timestamps
    end
  end
end
