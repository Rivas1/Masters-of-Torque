class Vehicle < ApplicationRecord
	validates :year, presence: true, length: {minimum: 4}
  validates :make, presence: true, length: {minimum: 3}
  validates :model, presence: true, length: {minimum: 2}
end
