require 'stripe'

# Rails.env("STRIPE_SECRET_KEY")
Stripe.api_key = ENV["STRIPE_SECRET_KEY"]

# En consola tenemos los siguientes comandos:

# Stripe::Product.create({name: "Mi producto"})
# Stripe::Price.create({product: producto.id, unit_amount: 1000, currency: "usd"}), 
# Stripe::Customer.create({email: "demo@admin.com"}

# Pasos a seguir para realizar estas acciones en codigo:

# Agregar precio a la tabla de Articles
# Editar el metodo new y create en ArticlesController
# Crear un formulario para crear articulos
# Agregar 2 atributos mas a nuestra tabla Articles: "stripe_pricing_id", "stripe_product_id"
# Enviar información del articulo creado a Stripe y guardar en nuestra base de datos los IDs del producto y el precio
