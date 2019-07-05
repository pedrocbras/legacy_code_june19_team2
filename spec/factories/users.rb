FactoryBot.define do
  factory :user do
    # name { "MyString" }
    # email { "MyString" }
    # password { "MyString" }
    password {'mypassword'}
    sequence(:name) { |n| "user#{n}" }
    sequence(:email) { |n| "email#{n}@.com" }
  end
end
