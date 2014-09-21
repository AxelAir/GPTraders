class Trader < ActiveRecord::Base
  attr_accessible :name

  has_many :trades, dependent: :destroy #When we delete a trader, we also delete his trades
  has_many :stocks, through: :trades

  validates :name, uniqueness: true
  validates :name, presence: true

end
