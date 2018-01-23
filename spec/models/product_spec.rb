require 'rails_helper'

describe Product do
  let(:product) { FactoryGirl.create :product }

  context 'Relationships' do
    it { is_expected.to have_many(:line_items) }
  end

  context 'Validations' do
    it { expect(product).to validate_presence_of(:title) }
    it { expect(product).to validate_presence_of(:description) }
    it { expect(product).to validate_presence_of(:price) }
    it { expect(product).to validate_length_of(:title).is_at_least(5).with_message('minimum 5 letters') }
    it { expect(product).to validate_numericality_of(:price).is_greater_than_or_equal_to(0.01) }
    it { expect(product).to validate_uniqueness_of(:title) }
  end

  context 'Callbacks' do
    it { expect(product).to callback(:prepare_description).before(:save) }
    it { expect(product).to callback(:ensure_not_referenced_by_any_line_item).before(:destroy) }
  end
end

