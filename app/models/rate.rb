class Rate < ApplicationRecord
	belongs_to :vehicle

	validates :price, :from, :to, presence: true
	validates :price, numericality: true
end
