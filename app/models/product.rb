class Product < ActiveRecord::Base
	def full_description
		"#{self.title} xxx #{self.subtitle}"
	end
	def price_in_pence
		(self.price * 100).to_i
	end
end
