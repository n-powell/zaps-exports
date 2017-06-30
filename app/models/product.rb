class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :style, :presence => true
  validates :price, :presence => true

  scope :most_recent, -> { order(created_at: :asc) }
end
