class CreatePings < ActiveRecord::Migration
  def change
    create_table :pings do |t|
      t.integer :http_code
      t.belongs_to :scheduled, index: true
      t.belongs_to :target, index: true

      t.timestamps
    end
  end
end
