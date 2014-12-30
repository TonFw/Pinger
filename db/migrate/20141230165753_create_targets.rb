class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :url
      t.belongs_to :user, index: true

      t.timestamps
    end

    # attrs as unique
    add_index :targets, :url, unique: true
  end
end
