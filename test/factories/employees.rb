# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    first_name "Rich"
    last_name "Hickey"
    email "bossman@clojure.org"
  end
end
