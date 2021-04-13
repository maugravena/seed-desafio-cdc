FactoryBot.define do
  factory :author do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email  }
    description { Faker::Lorem.paragraph_by_chars(number: 200)  }
  end
end
