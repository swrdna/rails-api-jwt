User.create(username: "admin", fullname: "Admin", email: "admin@email.com", password: ENV["USER_ADMIN_PASSWORD"], password_confirmation: ENV["USER_ADMIN_PASSWORD"], role: 1, jti: SecureRandom.uuid)

Product.create(code: SecureRandom.hex(3), name: "XBOX Series S", sale_price: 3800000, purchase_price: 3700000, created_by: 1)
