FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    resume { "MyText" }
    summary { "MyText" }
    price { "20.0" }
    page_number { 100 }
    isbn { "MyString" }
    publication_date { "2021-04-15" }
    association :author
    association :category
  end
end
