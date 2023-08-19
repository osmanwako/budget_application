# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
str = "A transaction is a completed agreement between a buyer and a seller."
users = User.all
users.each do |author|
  for s in 1..3
    category = Category.create({ name: "category #{rand(1000)}", user: author })
    transaction1 = Transactionz.create({ name: "Transaction #{rand(1000)}", amount: rand(1000), category:, description: str, author: })
    transaction2 = Transactionz.create({ name: "Transaction #{rand(1000)}", amount: rand(1000), category:, description: str, author: })
    transaction3 = Transactionz.create({ name: "Transaction #{rand(1000)}", amount: rand(1000), category:, description: str, author: })
  end
end
