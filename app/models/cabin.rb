class Cabin < ApplicationRecord
	has_many :payments

	validates :number, presence: true
	validates :number, numericality: true
end
