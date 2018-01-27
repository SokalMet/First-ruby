require 'rails_helper'

# Use https://github.com/thoughtbot/shoulda-matchers/blob/master/lib/shoulda/matchers/active_record/association_matcher.rb
describe Cart do
  context 'Relationships' do
    it { is_expected.to have_many(:line_items).dependent(:destroy) }
  end
end
