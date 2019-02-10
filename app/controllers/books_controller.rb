class BooksController < ApplicationController
	before_action :load_book, :load_chapters, only: [:show, :edit, :update, :destroy]

	def index
		@books = Book.all
	end

	def show ; end

	def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    # @book.user = current_user
    if @book.save
      redirect_to books_path, notice: I18n.t('messages.created_book')
    else
      flash[:alert] =  @book.errors.full_messages
      render :new
    end
  end

  def edit ; end

  def update
    if @book.update_attributes(book_params)
      redirect_to book_path(@book), notice: I18n.t('messages.updated_book')
    else
      flash[:alert] =  @book.errors.full_messages
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path, notice: I18n.t('messages.deleted_book')
  end

	private
  def book_params
		params.require(:book).permit(:title, :description, :image)
	end

  def load_book
    @book = Book.find(params[:id])
  end

  def load_chapters
  	@chapters = @book.chapters
  end
end