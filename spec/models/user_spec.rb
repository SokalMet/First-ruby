require 'rails_helper'

describe User do

  context 'Relationships' do
    it { is_expected.to have_one(:cart).dependent(:destroy) }
  end

  context 'Callbacks' do
    it { is_expected.to callback(:downcase_email!).before(:save) }
  end
end
