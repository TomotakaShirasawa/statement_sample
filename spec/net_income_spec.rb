require 'spec_helper'

RSpec.describe NetIncome do
  describe 'EPSを計算' do
    before do
      net_income = described_class.new(net_income_value)
      outstanding_shares = OutstandingShares.new(outstanding_shares_value)
      @eps = net_income.eps(outstanding_shares)
    end

    context '純資産がプラスの場合(Softbank:9984)' do
      let(:net_income_value) { 1_411_199 }
      let(:outstanding_shares_value) { 1_100_660_365 }
      it { expect(@eps.to_d).to be_within(0.01).of(1282.13) }
    end

    context '純資産がマイナスの場合(住石HD:1514)' do
      let(:net_income_value) { -3806 }
      let(:outstanding_shares_value) { 76_629_000 }
      it { expect(@eps.to_d).to be_within(0.01).of(-49.66) }
    end

    context '純資産が0の場合(新内外綿:3125)' do
      let(:net_income_value) { 0 }
      let(:outstanding_shares_value) { 1_955_569 }
      it { expect(@eps.to_d).to be_zero }
    end
  end

  describe 'EPSを計算(想定外)' do
    context '発行済み株式数オブジェクトでない場合' do
      before do
        @net_income = described_class.new(1)
        @dummy_outstanding_shares = BigDecimal('1')
      end

      it { expect { @net_income.eps(@dummy_outstanding_shares) }.to raise_error(TypeError) }
    end
  end
end
