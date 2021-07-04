class AddUserIdToFoodlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :foodlogs, :user_id, :integer
    add_index :foodlogs, :user_id
  end
end
