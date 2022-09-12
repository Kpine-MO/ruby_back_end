class User < ActiveRecord::Base
 has_many :userCategories
 has_many :categories, through: :userCategories
end