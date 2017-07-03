class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :style, :presence => true
  validates :price, :presence => true
  validates :from, :presence => true

  scope :most_recent, -> { order(created_at: :asc).limit(5) }
  scope :highest_ppu, -> { order(price: :desc).limit(10) }
  scope :lowest_ppu, -> { order(price: :asc).limit(10) }
  scope :is_food, -> { where(style: "Food") }
  scope :is_bev, -> { where(style: "Beverage") }
  scope :is_spice, -> { where(style: "Spice") }
  scope :is_gift, -> { where(style: "Gift") }
  scope :is_sub, -> { where(style: "Subscription") }
  scope :is_usa, -> { where(from: "USA") }
  scope :is_china, -> { where(from: "China") }
  scope :is_brasil, -> { where(from: "Brasil") }
  scope :is_india, -> { where(from: "India") }
  scope :is_france, -> { where(from: "France") }

  scope :most_reviews, -> {(
  select("products.id, products.name, products.style, products.from, count(reviews.id) as reviews_count")
  .joins(:reviews)
  .group("products.id")
  .order("reviews_count DESC")
  .limit(8)
  )}
end
