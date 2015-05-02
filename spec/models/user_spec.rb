require 'rails_helper'

RSpec.describe User, type: :model do
  %w(email first_name last_name).each do |field|
    it "is not valid without a #{field}" do
      p = FactoryGirl.build :user, field.to_sym => nil
      expect(p.valid?).to eq false
    end
  end
end
