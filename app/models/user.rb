class User < ApplicationRecord
	# Associations
	has_many :posts
	has_many :comments

	# Validations
	validates :name, presence: true, length: { in: 3..16 },
									 uniqueness: true
	validates :email, presence: { message: "cannot be blank" },
										length: { maximum: 200 },
										uniqueness: true
end
