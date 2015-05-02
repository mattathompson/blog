require 'rails_helper'

RSpec.describe Post, type: :model do
  %w(title pub_date body tags).each do |field|
    it "is not valid without a #{field}" do
      p = FactoryGirl.build :post, field.to_sym => nil
      expect(p.valid?).to eq false
    end
  end
end
