class Review < ActiveRecord::Base
  belongs_to :product

  validates :name, :presence => true
  validates :comment, :presence => true
  validates :rating, :presence => true


  scope :most_recent, -> { order(created_at: :asc) }
  scope :oldest, -> { order(created_at: :desc) }
  scope :best_review, -> { order(rating: :asc).limit(2) }
end
