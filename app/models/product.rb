class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :style, :presence => true
  validates :price, :presence => true
end
