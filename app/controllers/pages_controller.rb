class PagesController < ApplicationController
	def home
		@product = Product.find_by_sku("BLP2")
	end
end