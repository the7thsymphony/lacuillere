class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [0,1,2,3,4,5]}, numericality: :only_integer
  validates :restaurant_id, presence: true
end

