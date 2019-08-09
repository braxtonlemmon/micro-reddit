class Post < ApplicationRecord
	# Associations
	belongs_to :user
	has_many :comments

	# Validations
	validates :title, presence: true,
										length: { maximum: 300 }
end

