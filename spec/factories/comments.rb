FactoryBot.define do
  factory :comment do
    author { "Sasha" }
    sequence(:body) { |n| "Comment body #{n}" }
  end
end