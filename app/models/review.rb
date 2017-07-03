class Review < ActiveRecord::Base
  belongs_to :product

  validates :name, :presence => true
  validates :comment, :presence => true, length: { in: 50..250 }
  validates :rating, :presence => true, :inclusion => { :in => 1..5 }



  scope :most_recent, -> { order(created_at: :desc) }
  scope :first_review, -> { order(created_at: :asc).limit(1) }
  scope :best_reviews, -> { order(rating: :desc).limit(2) }
  scope :worst_reviews, -> { order(rating: :asc).limit(2) }
end
