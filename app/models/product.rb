class  Product < ApplicationRecord
  has_many :cat_prods
  has_many :categories, :class_name => 'Admin::Category', through: :cat_prods
  accepts_nested_attributes_for :categories

end
