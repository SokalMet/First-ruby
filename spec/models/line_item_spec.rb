require 'rails_helper'

describe LineItem do
  context 'Relationships' do
    it { is_expected.to belong_to(:product) }
    it { is_expected.to belong_to(:cart) }
  end
end
