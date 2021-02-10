class Vehicle < ApplicationRecord
	belongs_to :roll
	has_many :rates

	validates :patent, presence: true
end
