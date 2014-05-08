class Product < ActiveRecord::Base
  has_many :order_details

  validates :price, presence: true, numericality: { greater_than_or_equal_to: 100 }
  validates :name, length: { minimum: 2, maximum: 100 }
end
