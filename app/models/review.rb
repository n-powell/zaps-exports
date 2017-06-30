class Review < ActiveRecord::Base
  belongs_to :product

  validates :name, :presence => true
  validates :comment, :presence => true
  validates :rating, :presence => true
end
