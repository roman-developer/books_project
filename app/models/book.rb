class Book < ApplicationRecord
	has_many :chapters, dependent: :delete_all

	validates :title, presence: true
end
