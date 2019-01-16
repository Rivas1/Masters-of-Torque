class Vehicle < ApplicationRecord
	include Filterable
	belongs_to :user
	# scope :year, -> (year) { where year: year }
	scope :year, 	-> (year) 	{ where("year = ?", year ) }
  scope :make, 	-> (make) 	{ where("make like?", "#{make}%" ) }
  scope :model, -> (model) 	{ where("model like?", "#{model}%" ) }
  validates :year, presence: true, length: {minimum: 4}
  validates :make, presence: true, length: {minimum: 3}
  validates :model, presence: true, length: {minimum: 2}

end
