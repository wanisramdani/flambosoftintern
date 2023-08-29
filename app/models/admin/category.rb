class Admin::Category < ApplicationRecord
  has_many :cat_prods
  has_many :products, through: :cat_prods
end
