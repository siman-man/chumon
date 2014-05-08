class Product < ActiveRecord::Base
  validates :price, presence: true, numericality: { greater_than: 100 }
  validates :name, length: { minimum: 2, maximum: 100 }
end
