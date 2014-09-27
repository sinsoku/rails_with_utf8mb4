require 'rails_helper'

RSpec.describe User, :type => :model do
  describe '#create' do
    context 'with utf8mb4 string' do
      it { expect { User.create name: '😃' }.to_not raise_error }
    end
  end
end
