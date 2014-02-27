# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    user_id 1
    title "MyString"
    description "MyText"
    goal 1
    startdate "2014-02-26 19:55:43"
    enddate "2014-02-26 19:55:43"
  end
end
