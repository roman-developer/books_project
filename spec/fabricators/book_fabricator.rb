Fabricator(:book) do
  title { Faker::Book.title }
  description {Faker::Lorem.sentence}
end