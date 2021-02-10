class Roll < ApplicationRecord
	has_many :vehicles
	has_many :payments

	validates :name, presence: true

	def actual_price
		count = 0
		for v in Vehicle.all
			puts "Hola 1"
		 	if v.roll == self
		 		puts "Hola 2"
		 		for r in Rate.all
		 			puts "Hola 3"
		 			if (r.vehicle == v) and (Date.today < r.to) and (Date.today > r.from)
		 				puts "Hola 4"
		 				count = r.price
		 			end
		 		end
		 	end
		end
		count
	end
end
