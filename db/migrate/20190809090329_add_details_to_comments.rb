class AddDetailsToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :body, :text
    add_column :comments, :user_id, :integer
    add_column :comments, :post_id, :integer
  end
end
