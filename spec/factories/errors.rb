# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :error do
    exception_class "MyString"
    message "MyString"
    url "MyString"
    session "MyText"
    env "MyText"
    params "MyText"
    backtrace "MyText"
    generated_at DateTime.now
  end
end
