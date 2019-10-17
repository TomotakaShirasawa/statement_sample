require 'spec_helper'

RSpec.describe EPS do
  describe 'PERを計算' do
    it do
      eps = described_class.new(23.11)
      stock_price = StockPrice.new(2620.0)
      per = eps.per(stock_price)
      expect(per.to_d).to be_within(0.01).of(113.37)
    end
  end
end
