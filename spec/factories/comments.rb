FactoryBot.define do
  factory :comment do
    user
    content { Faker::Ipsum.paragraph }
  end
end
