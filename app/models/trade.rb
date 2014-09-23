class Trade < ActiveRecord::Base
  attr_accessible :price, :quantity, :stock_id, :trader_id

  belongs_to :trader
  belongs_to :stock
 
  validates :price, :numericality => {:greater_than => 0, message: "must be greater than zero"}
  validates :quantity, numericality: {only_integer: true, message: "must be an integer"}
  validate :quantity_is_not_null


  validates :stock_id, presence: true, numericality: { only_integer: true }
  validates :trader_id, presence: true, numericality: { only_integer: true }

  validate :validate_stock_id
  validate :validate_trader_id

  def trader_name
    (trader_id.present?) ? Trader.find(trader_id).name : ""
  end
  def stock_name
    (stock_id.present?) ? Stock.find(stock_id).name : ""
  end

  private
  
  def quantity_is_not_null
    if quantity == 0
      errors.add(:quantity, "cannot be null") 
    end 
  end
  
  def validate_stock_id
    self.errors.messages.delete(:stock_id)
    errors.add(:stock_name, "is invalid") unless Stock.exists?(self.stock_id)
  end
  
  def validate_trader_id
    self.errors.messages.delete(:trader_id)
    errors.add(:trader_name, "is invalid") unless Trader.exists?(self.trader_id)
  end

end
