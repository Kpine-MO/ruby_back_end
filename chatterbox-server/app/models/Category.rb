class Category < ActiveRecord::Base
  has_many :userCategories
  has_many :users, through: :userCategories
    
end