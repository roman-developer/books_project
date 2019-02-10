require 'rails_helper'

RSpec.describe BooksController, type: :controller do

	let!(:book) { Fabricate(:book, title: 'Rails book') }

	describe "GET index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET #new' do
    it 'assigns a new book to @books' do
      get :new
      expect(response).to be_success
      expect(Book.count).to be(1)
    end
  end

  describe 'GET #show' do
		it 'access to book show' do
      get :show, id: book.id
      expect(response).to be_success
    end
  end

end
