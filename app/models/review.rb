class Review < ActiveRecord::Base
  belongs_to :product

  validates :name, :presence => true
  validates :comment, :presence => true, length: { in: 50..250 }
  validates :rating, :presence => true, :inclusion => { :in => 1..5 }



  scope :most_recent, -> { order(created_at: :asc).limit(5) }
  scope :oldest, -> { order(created_at: :desc) }
  scope :best_review, -> { order(rating: :asc).limit(2) }
end
