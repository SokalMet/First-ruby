require 'rails_helper'

describe Cart do
  context 'Relationships' do
    it { is_expected.to have_many(:line_items).dependent(:destroy) }
  end
end
