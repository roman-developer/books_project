require 'rails_helper'

RSpec.describe Chapter, type: :model do
  
	it "is valid with valid attributes" do
  	chapter = Chapter.new(title: 'test', content: 'content test')
  	expect(chapter).to be_valid
  end
  it "is not valid without a title" do
  	chapter = Chapter.new(title: nil, content: 'content test')
  	expect(chapter).to_not be_valid
  end
  it "is not valid without a content" do
  	chapter = Chapter.new(title: 'Test', content: nil)
  	expect(chapter).to_not be_valid
  end

end
