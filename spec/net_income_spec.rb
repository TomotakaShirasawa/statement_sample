require 'spec_helper'

RSpec.describe NetIncome do
  describe 'EPSを計算' do
    before do
      # Softbankの例
      @net_income = described_class.new(1_411_199)
      @outstanding_shares = OutstandingShares.new(1_100_660_365)
    end

    it do
      eps = @net_income.eps(@outstanding_shares)
      expect(eps.to_d).to be_within(0.01).of(1282.13)
    end
  end

  describe '想定外の値' do
    it { expect { described_class.new(0) }.to raise_error(TypeError) }
  end
end
