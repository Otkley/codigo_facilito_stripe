require 'stripe'

# Rails.env("STRIPE_SECRET_KEY")
Stripe.api_key = ENV["STRIPE_SECRET_KEY"]