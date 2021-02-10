class Payment < ApplicationRecord
	belongs_to :cabin
	belongs_to :roll

	validates :real_ammount, :date, presence: true
	validates :real_ammount, numericality: true

	def self.filterdate(from, to)
		a = Array.new

		for x in Payment.all
			if (x.date >= from) and (x.date <= to)
				a.push(x)
			end
		end

		a
	end

	def total_ammount
		count = 0
		for x in Payment.all
			count =  count + x.real_ammount
		end
		count
	end
end
