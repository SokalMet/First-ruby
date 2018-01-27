require 'rails_helper'

# Use https://github.com/thoughtbot/shoulda-matchers/blob/master/lib/shoulda/matchers/active_record/association_matcher.rb
describe LineItem do
  context 'Relationships' do
    it { is_expected.to belong_to(:product) }
    it { is_expected.to belong_to(:cart) }
  end
end
