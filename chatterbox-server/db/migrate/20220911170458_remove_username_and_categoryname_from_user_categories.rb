class RemoveUsernameAndCategorynameFromUserCategories < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_categories, :categoryName, :string
    remove_column :user_categories, :userName, :string
  end
end
