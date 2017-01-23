class ItemsController < ApplicationController

	def home
		@item = Item.find_by_sku("theCity")
	end
	
end
