class ChangeDataTypeForColumn < ActiveRecord::Migration
	def change
		change_column :trades, :price, :decimal#, precision: 8, scale: 2 #min: 0.00, max: 999999.00
	end
end
