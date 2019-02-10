class Chapter < ApplicationRecord
	belongs_to :book

	translates :title, :content, fallbacks_for_empty_translations: true

	validates :title, :content, presence: true
end
