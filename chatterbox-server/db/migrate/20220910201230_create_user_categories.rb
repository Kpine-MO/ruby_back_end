class CreateUserCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :user_categories do |t|
t.string :userName
t.string :categoryName
t.integer :user_id
t.integer :category_id
    end
  end
end
