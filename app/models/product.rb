class Product < ApplicationRecord

    # what validations should a product have?
    # max price of 100
    # minimum price of 1
  validates :price, numericality: {less_than_or_equal_to: 10000, greater_than_or_equal_to: 1}
    # name unique
  validates :name, uniqueness: true
    # description minimum 10 characters
  validates :department, length: {minimum: 4}

  def supplier
    Supplier.find_by(id: supplier_id)
  end 

  def is_discounted?
    !(price<100)
  end
end



