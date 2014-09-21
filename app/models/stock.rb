class Stock < ActiveRecord::Base
  attr_accessible :name

  has_many :trades, dependent: :destroy
  has_many :traders, through: :trades

  validates :name, uniqueness: true
  validates :name, presence: true
end
