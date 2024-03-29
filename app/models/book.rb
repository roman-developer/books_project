class Book < ApplicationRecord
	has_many :chapters, inverse_of: :book, dependent: :delete_all
  accepts_nested_attributes_for :chapters, reject_if: :all_blank, allow_destroy: true

  mount_uploader :image, ImageUploader

  translates :title, :description, fallbacks_for_empty_translations: true

	validates :title, presence: true
end
