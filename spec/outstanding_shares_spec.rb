require 'spec_helper'

RSpec.describe OutstandingShares do
  describe '想定外の値' do
    it { expect { described_class.new(0) }.to raise_error(TypeError) }
  end
end
