class PagesController < ApplicationController
	def home
		@product = Product.find_by_sku("BLP1")
	end
end