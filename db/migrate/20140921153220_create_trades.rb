class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :quantity, :null => false
      t.integer :price
      t.integer :trader_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
