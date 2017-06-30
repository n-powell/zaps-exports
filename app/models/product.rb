class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :style, :presence => true
  validates :price, :presence => true

  scope :most_recent, -> { order(created_at: :asc).limit(5) }

  scope :most_reviews, -> {(
  select("products.id, products.name, products.style, count(reviews.id) as reviews_count")
  .joins(:reviews)
  .group("products.id")
  .order("reviews_count DESC")
  .limit(3)
  )}
end
