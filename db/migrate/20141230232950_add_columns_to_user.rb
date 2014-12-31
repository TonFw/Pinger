class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, limit: 55, after: :id
    add_column :users, :username, :string, limit: 45, after: :name
    add_column :users, :locale, :string, limit: 5, after: :email
  end
end