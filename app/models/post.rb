class Post < ApplicationRecord
	# Associations
	belongs_to :user

	# Validations
	validates :title, presence: true,
										length: { maximum: 300 }
end

