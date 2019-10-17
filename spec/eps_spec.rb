require 'spec_helper'

RSpec.describe EPS do
  describe 'PERを計算' do
    before do
      eps = described_class.new(eps_value)
      stock_price = StockPrice.new(stock_price_value)
      @per = eps.per(stock_price)
    end

    let(:eps_value) { 23.11 }
    let(:stock_price_value) { 2620.0 }
    it { expect(@per.to_d).to be_within(0.01).of(113.37) }
  end
end
