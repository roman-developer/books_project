require 'faker'

# Creating test data for books and chapters
# 5 fakes books
# 3 fakes chapters per book

unless Book.any?
	ary_books = []
	5.times do
		ary_books << {title: Faker::Book.unique.title, description: Faker::Lorem.sentence}
	end

	books = Book.create(ary_books)

	if books.any? && Chapter.all.blank?
		books.each do|book|
			ary_chapters = []
			3.times do
				ary_chapters << {title: Faker::Lorem.unique.word, content: Faker::Lorem.paragraph, book_id: book.id}
			end
			Chapter.create(ary_chapters)
		end
	end
end
