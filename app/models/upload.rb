class Upload
	@@gross_revenue = 0
	def self.import(file)
		CSV.foreach(file.path, headers: true, col_sep:"\t") do |row|
			u = User.where(name: row[0]).first_or_initialize
			u.save

			p = Product.where(description: row[1], price: row[2]).first_or_initialize
			p.save

			m = Merchant.where(name: row[5], address: row[4]).first_or_initialize
			m.save

			o = Order.create(user: u, product: p, merchant: m, quantity: row[3])

			@@gross_revenue += o.total_revenue
		end
	end

	def self.gross_revenue
		@@gross_revenue
	end
end