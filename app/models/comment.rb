class Comment < ApplicationRecord
	# Associations
	belongs_to :post
	belongs_to :user
	
	# Validations
	validates :body, presence: true,
									 length: { maximum: 10000 }
	validates :user_id, presence: true
	validates :post_id, presence: true
end
