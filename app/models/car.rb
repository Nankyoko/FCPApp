class Car < ApplicationRecord
	has_many :jobs
	validates :year, presence: true, length: {minimum: 2, maximum: 4}
	validates :make, presence: true
	validates :model, presence: true
end
