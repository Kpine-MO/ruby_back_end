class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title 
      t.string :content
      t.string :category
      t.integer :user_id
      t.string :author
      t.string :createdOn
    end
  end
end
