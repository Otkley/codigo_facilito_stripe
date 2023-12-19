require 'stripe'

# Rails.env("STRIPE_SECRET_KEY")
Stripe.api_key = ENV["STRIPE_SECRET_KEY"]

# En consola tenemos los siguientes comandos:

# Stripe::Product.create({name: "Mi producto"})
# Stripe::Price.create({product: producto.id, unit_amount: 1000, currency: "usd"}), 
# Stripe::Customer.create({email: "demo@admin.com"}