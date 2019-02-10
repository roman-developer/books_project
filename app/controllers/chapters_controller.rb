class ChaptersController < ApplicationController
	def index
		@chapters = Chapter.where(book_id: params[:book_id]) 
	end
end