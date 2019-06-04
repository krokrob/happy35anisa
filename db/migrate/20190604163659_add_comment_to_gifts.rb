class AddCommentToGifts < ActiveRecord::Migration[5.2]
  def change
    add_column :gifts, :comment, :text
  end
end
