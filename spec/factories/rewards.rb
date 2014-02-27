# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :reward do
    project_id 1
    quantity 1
    description "MyText"
    value 1
  end
end
