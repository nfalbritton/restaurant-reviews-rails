class Restaurant < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true, numericality: true, length: { is: 5 }


  has_many :reviews
end
