FactoryBot.define do
  factory :order do
    listing { nil }
    buyer { nil }
    seller { nil }
    receipt_url { "MyString" }
    payment_id { "MyString" }
  end
end
