class Upload
	def self.import(file)
		CSV.foreach(file.path, headers: true, col_sep:"\t") do |row|
			u = User.new
				u.name = row[0]
			u.save

			p = Product.new
				p.description = row[1]
				p.price = row[2]
			p.save

			
		end
	end
end