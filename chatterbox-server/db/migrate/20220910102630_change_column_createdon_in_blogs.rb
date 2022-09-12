class ChangeColumnCreatedonInBlogs < ActiveRecord::Migration[6.1]
  def change
    change_column :blogs, :createdOn, :timestamp
  end
end
