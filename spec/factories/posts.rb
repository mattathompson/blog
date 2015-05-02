FactoryGirl.define do
  factory :post do
    title "MyString"
    created_at "2015-05-02 00:55:27"
    updated_at "2015-05-02 00:55:27"
    body "MyText"
    tags "MyString"
    pub_date 2.days.ago
  end

end
