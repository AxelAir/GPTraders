class Trade < ActiveRecord::Base
  attr_accessible :price, :quantity, :stock_id, :trader_id

  belongs_to :trader
  belongs_to :stock
 
  validates :price, numericality: {greater_than_or_equal_to: 0, message: "must be greater than zero"}
  validates :quantity, numericality: {only_integer: true}
  validate :quantity_is_not_null

  private
  
  def quantity_is_not_null
    if quantity == 0
      errors.add(:quantity, "cannot be null") 
    end 
  end
end
