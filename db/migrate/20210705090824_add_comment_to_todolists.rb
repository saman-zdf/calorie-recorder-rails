class AddCommentToTodolists < ActiveRecord::Migration[6.0]
  def change
    add_column :todolists, :comment, :text
  end
end
