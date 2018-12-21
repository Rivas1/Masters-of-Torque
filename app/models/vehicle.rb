class Vehicle < ApplicationRecord
	validates :year, :make, :model, presence: true,
									length: {minimum: 4}
				
end
