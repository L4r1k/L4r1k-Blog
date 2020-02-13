FactoryBot.define do
  factory :article do
    title { 'factoryArticle' }
    description { 'This is a factory article' }
    tags { 'factoryBot, article' }

    trait :published do
      status { :published }
    end

    trait :unpublished do
      status { :unpublished }
    end

    trait :in_the_future do
      published_at { 2.days.from_now }
    end

    trait :in_the_past do
      published_at { 2.days.ago }
    end
  end

  factory :category do
    title { 'factoryCategory' }
    description { 'This is a factory category' }
    tags { 'factoryBot, category '}
  end
end