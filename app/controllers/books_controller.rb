class BooksController < ApplicationController
	before_action :load_book, :load_chapters, only: [:show, :edit, :update, :destroy]

	def index
		@books = Book.page(params[:page]).per(5)
	end

	def show ; end

	def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    # @book.user = current_user
    if @book.save
      redirect_to books_path, notice: I18n.t('messages.created')
    else
      flash[:alert] =  @book.errors.full_messages
      render :new
    end
  end

  def edit ; end

  def update
    if @book.update_attributes(book_params)
      redirect_to book_path(@book), notice: I18n.t('general.messages.updated')
    else
      flash[:alert] =  @book.errors.full_messages
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path, notice: I18n.t('general.messages.deleted')
  end

	private
  def book_params
		params.require(:book).permit(:title, :description, :image, chapters_attributes: [:id, :title, :content, :_destroy])
	end

  def load_book
    @book = Book.find(params[:id])
  end

  def load_chapters
  	@chapters = @book.chapters
  end
end