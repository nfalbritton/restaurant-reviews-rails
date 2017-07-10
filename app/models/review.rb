class Review < ActiveRecord:: Base
  validates :body, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 1..5 }

  belongs_to :restaurant
end 
