class Product < ActiveRecord::Base
  has_many :order_details
  has_many :orders, through: :order_details

  validates :price, presence: true, numericality: { greater_than_or_equal_to: 100 }
  validates :name, length: { minimum: 2, maximum: 100 }

  
  def sales_count
    order_details.sum(:count)
  end

  class << self
    def sales_ranking(limit = 10)
      all.sort_by{|re| -(re.price * re.sales_count) }.take(limit)
    end
  end
end
