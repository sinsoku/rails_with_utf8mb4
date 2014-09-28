class AddIndexToUser < ActiveRecord::Migration
  def change
    execute 'ALTER TABLE users ROW_FORMAT=DYNAMIC'
    add_index :users, :name, name: 'a' * 64, unique: true
  end
end
