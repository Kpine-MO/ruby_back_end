class AddBlogsToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :blogs, :string
  end
end
