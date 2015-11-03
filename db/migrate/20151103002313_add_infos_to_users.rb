class AddInfosToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :twitter_name, :string
  end
end
