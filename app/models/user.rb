class User < ApplicationRecord
	# Associations
	has_many :posts

	# Validations
	validates :name, presence: true, length: { in: 8..16 },
									 uniqueness: true
	validates :email, presence: { message: "cannot be blank" },
										length: { maximum: 200 },
										uniqueness: true
end
