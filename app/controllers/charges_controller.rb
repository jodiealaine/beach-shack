class ChargesController < ApplicationController
	def create
		product = Product.find_by_sku("BLP1")

	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => product.price_in_pence,
	    :description => product.full_description,
	    :currency    => 'gbp'
	  )

	  purchase = Purchase.create(email: params[:stripeEmail], card: params[:stripeToken], 
    amount: product.price_in_pence, description: charge.description, currency: charge.currency,
    customer_id: customer.id, product_id: product.id, uuid: SecureRandom.uuid)

		redirect_to purchase

		rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
		end
end